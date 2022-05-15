; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0d6", ROMX[$4000], BANK[$d6]

    db $d6

    nop                                           ; $4001: $00
    ld bc, $00d7                                  ; $4002: $01 $d7 $00
    ld b, b                                       ; $4005: $40
    rst $38                                       ; $4006: $ff
    ld bc, $fe40                                  ; $4007: $01 $40 $fe
    cp $f9                                        ; $400a: $fe $f9
    ld hl, sp-$02                                 ; $400c: $f8 $fe
    cp $00                                        ; $400e: $fe $00

Call_0d6_4010:
    db $fd                                        ; $4010: $fd
    db $fc                                        ; $4011: $fc
    ld a, [c]                                     ; $4012: $f2
    ldh a, [$ec]                                  ; $4013: $f0 $ec
    ldh [$d0], a                                  ; $4015: $e0 $d0
    ret nz                                        ; $4017: $c0

    nop                                           ; $4018: $00
    jr z, jr_0d6_401c                             ; $4019: $28 $01

    ret nc                                        ; $401b: $d0

jr_0d6_401c:
    ld bc, $0520                                  ; $401c: $01 $20 $05
    ld h, e                                       ; $401f: $63
    ld h, e                                       ; $4020: $63
    nop                                           ; $4021: $00
    add e                                         ; $4022: $83
    dec bc                                        ; $4023: $0b
    rlca                                          ; $4024: $07
    ld d, a                                       ; $4025: $57
    rlca                                          ; $4026: $07
    daa                                           ; $4027: $27
    dec bc                                        ; $4028: $0b
    jp $0402                                      ; $4029: $c3 $02 $04


    db $10                                        ; $402c: $10
    dec bc                                        ; $402d: $0b
    jr nz, jr_0d6_403c                            ; $402e: $20 $0c

    add b                                         ; $4030: $80

jr_0d6_4031:
    jr nc, jr_0d6_407b                            ; $4031: $30 $48

    ld a, a                                       ; $4033: $7f
    nop                                           ; $4034: $00
    ld a, a                                       ; $4035: $7f
    sbc a                                         ; $4036: $9f
    rra                                           ; $4037: $1f
    or $f0                                        ; $4038: $f6 $f0
    add sp, -$1f                                  ; $403a: $e8 $e1

jr_0d6_403c:
    ret nc                                        ; $403c: $d0

    nop                                           ; $403d: $00
    jp nz, $88a0                                  ; $403e: $c2 $a0 $88

    ld d, b                                       ; $4041: $50
    inc b                                         ; $4042: $04
    ld d, b                                       ; $4043: $50
    ld [$005e], sp                                ; $4044: $08 $5e $00
    ld bc, $015e                                  ; $4047: $01 $5e $01
    ret nz                                        ; $404a: $c0

    ld [$3000], sp                                ; $404b: $08 $00 $30
    nop                                           ; $404e: $00
    stop                                          ; $404f: $10 $00
    nop                                           ; $4051: $00
    rrca                                          ; $4052: $0f
    inc b                                         ; $4053: $04
    nop                                           ; $4054: $00
    nop                                           ; $4055: $00
    nop                                           ; $4056: $00
    ld a, a                                       ; $4057: $7f
    inc b                                         ; $4058: $04
    nop                                           ; $4059: $00
    ld c, b                                       ; $405a: $48
    rrca                                          ; $405b: $0f
    jr nz, jr_0d6_4065                            ; $405c: $20 $07

    ld [$2600], sp                                ; $405e: $08 $00 $26
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    ldh [rP1], a                                  ; $4063: $e0 $00

jr_0d6_4065:
    sub h                                         ; $4065: $94
    inc b                                         ; $4066: $04
    ld a, [de]                                    ; $4067: $1a
    adc d                                         ; $4068: $8a
    ld d, h                                       ; $4069: $54
    ld h, d                                       ; $406a: $62
    nop                                           ; $406b: $00
    adc c                                         ; $406c: $89
    ld l, a                                       ; $406d: $6f
    rrca                                          ; $406e: $0f
    sub a                                         ; $406f: $97
    rlca                                          ; $4070: $07
    dec hl                                        ; $4071: $2b
    jp Jump_000_0005                              ; $4072: $c3 $05 $00


    ld de, $000a                                  ; $4075: $11 $0a $00
    ld a, [$7a00]                                 ; $4078: $fa $00 $7a

jr_0d6_407b:
    add b                                         ; $407b: $80
    ld a, [$0010]                                 ; $407c: $fa $10 $00
    xor a                                         ; $407f: $af
    add b                                         ; $4080: $80
    ld [bc], a                                    ; $4081: $02
    ld [$c0d7], sp                                ; $4082: $08 $d7 $c0
    call nc, $00c3                                ; $4085: $d4 $c3 $00
    ret nc                                        ; $4088: $d0

    add $e8                                       ; $4089: $c6 $e8
    pop hl                                        ; $408b: $e1
    add sp, -$20                                  ; $408c: $e8 $e0
    inc b                                         ; $408e: $04
    ld c, b                                       ; $408f: $48
    nop                                           ; $4090: $00
    inc b                                         ; $4091: $04
    ld a, e                                       ; $4092: $7b
    cpl                                           ; $4093: $2f
    sub b                                         ; $4094: $90
    and e                                         ; $4095: $a3
    inc e                                         ; $4096: $1c
    cpl                                           ; $4097: $2f
    ret nz                                        ; $4098: $c0

    nop                                           ; $4099: $00
    jr nz, jr_0d6_409e                            ; $409a: $20 $02

    inc b                                         ; $409c: $04
    dec sp                                        ; $409d: $3b

jr_0d6_409e:
    ld bc, $6054                                  ; $409e: $01 $54 $60
    adc [hl]                                      ; $40a1: $8e
    nop                                           ; $40a2: $00
    db $e4                                        ; $40a3: $e4
    add hl, bc                                    ; $40a4: $09
    ldh [rNR24], a                                ; $40a5: $e0 $19
    ret nc                                        ; $40a7: $d0

    ld a, [bc]                                    ; $40a8: $0a
    ld d, b                                       ; $40a9: $50
    and c                                         ; $40aa: $a1
    nop                                           ; $40ab: $00
    ld h, b                                       ; $40ac: $60
    sub b                                         ; $40ad: $90
    ret nz                                        ; $40ae: $c0

    jr nz, jr_0d6_4031                            ; $40af: $20 $80

    ld b, l                                       ; $40b1: $45
    push af                                       ; $40b2: $f5
    ld bc, $d500                                  ; $40b3: $01 $00 $d5
    ld hl, $9165                                  ; $40b6: $21 $65 $91
    dec hl                                        ; $40b9: $2b
    ld b, e                                       ; $40ba: $43
    dec hl                                        ; $40bb: $2b

jr_0d6_40bc:
    ld b, e                                       ; $40bc: $43
    nop                                           ; $40bd: $00
    dec bc                                        ; $40be: $0b
    ld h, e                                       ; $40bf: $63
    rla                                           ; $40c0: $17
    add a                                         ; $40c1: $87
    rla                                           ; $40c2: $17
    rlca                                          ; $40c3: $07
    add sp, -$20                                  ; $40c4: $e8 $e0
    jr nz, jr_0d6_40bc                            ; $40c6: $20 $f4

    pop af                                        ; $40c8: $f1
    ld [bc], a                                    ; $40c9: $02
    ld [$f8fa], sp                                ; $40ca: $08 $fa $f8
    ld a, [$fbf8]                                 ; $40cd: $fa $f8 $fb
    nop                                           ; $40d0: $00
    ld hl, sp-$04                                 ; $40d1: $f8 $fc
    db $fc                                        ; $40d3: $fc
    dec de                                        ; $40d4: $1b
    call nz, $900f                                ; $40d5: $c4 $0f $90
    nop                                           ; $40d8: $00
    nop                                           ; $40d9: $00
    add $00                                       ; $40da: $c6 $00
    ld b, b                                       ; $40dc: $40
    nop                                           ; $40dd: $00
    ret                                           ; $40de: $c9


    nop                                           ; $40df: $00
    nop                                           ; $40e0: $00
    rst $38                                       ; $40e1: $ff
    add h                                         ; $40e2: $84
    adc c                                         ; $40e3: $89
    nop                                           ; $40e4: $00
    add b                                         ; $40e5: $80
    ld bc, $8900                                  ; $40e6: $01 $00 $89
    sub b                                         ; $40e9: $90
    nop                                           ; $40ea: $00

jr_0d6_40eb:
    ld a, [bc]                                    ; $40eb: $0a
    nop                                           ; $40ec: $00
    ld b, d                                       ; $40ed: $42
    sub d                                         ; $40ee: $92
    db $10                                        ; $40ef: $10
    jr jr_0d6_4109                                ; $40f0: $18 $17

    rlca                                          ; $40f2: $07
    cpl                                           ; $40f3: $2f
    rrca                                          ; $40f4: $0f
    ld [bc], a                                    ; $40f5: $02
    ld [$005f], sp                                ; $40f6: $08 $5f $00
    rra                                           ; $40f9: $1f
    ld e, a                                       ; $40fa: $5f
    rra                                           ; $40fb: $1f
    rst $18                                       ; $40fc: $df
    rra                                           ; $40fd: $1f
    ccf                                           ; $40fe: $3f
    ccf                                           ; $40ff: $3f
    nop                                           ; $4100: $00
    ld bc, $00e1                                  ; $4101: $01 $e1 $00
    ld d, b                                       ; $4104: $50

Call_0d6_4105:
    rst $38                                       ; $4105: $ff
    ld bc, $fe30                                  ; $4106: $01 $30 $fe

jr_0d6_4109:
    ld bc, $f800                                  ; $4109: $01 $00 $f8
    ld hl, sp-$02                                 ; $410c: $f8 $fe
    cp $00                                        ; $410e: $fe $00
    db $fd                                        ; $4110: $fd
    db $fc                                        ; $4111: $fc
    jp nc, $8cd0                                  ; $4112: $d2 $d0 $8c

    and c                                         ; $4115: $a1
    jr nz, jr_0d6_415b                            ; $4116: $20 $43

    nop                                           ; $4118: $00
    ld h, b                                       ; $4119: $60
    adc a                                         ; $411a: $8f
    jr nz, jr_0d6_40eb                            ; $411b: $20 $ce

    and c                                         ; $411d: $a1
    inc c                                         ; $411e: $0c
    ld a, c                                       ; $411f: $79
    ld a, c                                       ; $4120: $79
    nop                                           ; $4121: $00
    or l                                          ; $4122: $b5
    ld sp, $0145                                  ; $4123: $31 $45 $01
    dec e                                         ; $4126: $1d
    add c                                         ; $4127: $81
    inc d                                         ; $4128: $14
    and d                                         ; $4129: $a2
    ld [bc], a                                    ; $412a: $02
    ld h, d                                       ; $412b: $62
    nop                                           ; $412c: $00
    inc c                                         ; $412d: $0c
    nop                                           ; $412e: $00
    ld c, b                                       ; $412f: $48
    or d                                          ; $4130: $b2
    jr nc, @+$3a                                  ; $4131: $30 $38

    rst $38                                       ; $4133: $ff
    nop                                           ; $4134: $00
    rst $38                                       ; $4135: $ff
    ld a, a                                       ; $4136: $7f
    ld a, a                                       ; $4137: $7f
    sbc a                                         ; $4138: $9f
    rra                                           ; $4139: $1f
    or $f0                                        ; $413a: $f6 $f0
    add sp, $01                                   ; $413c: $e8 $01
    ldh [$d0], a                                  ; $413e: $e0 $d0
    add $a0                                       ; $4140: $c6 $a0
    adc [hl]                                      ; $4142: $8e
    ld b, b                                       ; $4143: $40
    ld e, $02                                     ; $4144: $1e $02
    nop                                           ; $4146: $00
    nop                                           ; $4147: $00
    dec e                                         ; $4148: $1d
    ld b, c                                       ; $4149: $41
    inc e                                         ; $414a: $1c
    add b                                         ; $414b: $80
    jr z, @-$7e                                   ; $414c: $28 $80

    inc d                                         ; $414e: $14
    add h                                         ; $414f: $84
    nop                                           ; $4150: $00
    inc de                                        ; $4151: $13
    add l                                         ; $4152: $85
    ld a, [hl+]                                   ; $4153: $2a
    add d                                         ; $4154: $82
    dec l                                         ; $4155: $2d
    add c                                         ; $4156: $81
    ld [hl], $80                                  ; $4157: $36 $80
    nop                                           ; $4159: $00
    ld a, [hl-]                                   ; $415a: $3a

jr_0d6_415b:
    nop                                           ; $415b: $00
    or h                                          ; $415c: $b4
    inc b                                         ; $415d: $04
    jp $1900                                      ; $415e: $c3 $00 $19


    cp h                                          ; $4161: $bc
    nop                                           ; $4162: $00
    ld [bc], a                                    ; $4163: $02
    inc d                                         ; $4164: $14
    add c                                         ; $4165: $81
    ld bc, $7c54                                  ; $4166: $01 $54 $7c
    ld bc, $0044                                  ; $4169: $01 $44 $00
    ld de, $4028                                  ; $416c: $11 $28 $40
    ld l, a                                       ; $416f: $6f
    rrca                                          ; $4170: $0f
    rla                                           ; $4171: $17
    rlca                                          ; $4172: $07
    dec bc                                        ; $4173: $0b
    ld bc, $0563                                  ; $4174: $01 $63 $05
    ld [hl], c                                    ; $4177: $71
    ld [bc], a                                    ; $4178: $02
    ld h, b                                       ; $4179: $60
    ld [de], a                                    ; $417a: $12
    ld b, b                                       ; $417b: $40
    ld [bc], a                                    ; $417c: $02
    nop                                           ; $417d: $00
    nop                                           ; $417e: $00
    add b                                         ; $417f: $80
    and c                                         ; $4180: $a1
    adc h                                         ; $4181: $8c
    and c                                         ; $4182: $a1
    adc h                                         ; $4183: $8c
    and b                                         ; $4184: $a0
    adc l                                         ; $4185: $8d
    ret nc                                        ; $4186: $d0

    nop                                           ; $4187: $00
    push bc                                       ; $4188: $c5
    ret nc                                        ; $4189: $d0

    ret nz                                        ; $418a: $c0

    pop de                                        ; $418b: $d1
    jp nz, $e0eb                                  ; $418c: $c2 $eb $e0

    db $eb                                        ; $418f: $eb
    nop                                           ; $4190: $00
    ldh [rDIV], a                                 ; $4191: $e0 $04
    ld b, d                                       ; $4193: $42
    ld [bc], a                                    ; $4194: $02
    ld d, l                                       ; $4195: $55
    ld de, $0802                                  ; $4196: $11 $02 $08
    nop                                           ; $4199: $00
    ld de, $0008                                  ; $419a: $11 $08 $00
    ld b, h                                       ; $419d: $44
    ld [$4004], sp                                ; $419e: $08 $04 $40
    add d                                         ; $41a1: $82
    nop                                           ; $41a2: $00
    inc b                                         ; $41a3: $04
    nop                                           ; $41a4: $00
    inc bc                                        ; $41a5: $03
    ld [hl], b                                    ; $41a6: $70
    ld bc, $0cb2                                  ; $41a7: $01 $b2 $0c
    ld d, d                                       ; $41aa: $52
    nop                                           ; $41ab: $00
    adc c                                         ; $41ac: $89
    ld hl, $290a                                  ; $41ad: $21 $0a $29
    ld d, [hl]                                    ; $41b0: $56
    add hl, hl                                    ; $41b1: $29
    ld d, h                                       ; $41b2: $54
    ld bc, $2800                                  ; $41b3: $01 $00 $28
    ld b, l                                       ; $41b6: $45
    ld hl, $4115                                  ; $41b7: $21 $15 $41
    ld h, l                                       ; $41ba: $65
    ld de, $402b                                  ; $41bb: $11 $2b $40
    inc bc                                        ; $41be: $03
    ld [bc], a                                    ; $41bf: $02
    ld [$0757], sp                                ; $41c0: $08 $57 $07
    ld d, a                                       ; $41c3: $57
    rlca                                          ; $41c4: $07
    db $eb                                        ; $41c5: $eb
    ldh [rP1], a                                  ; $41c6: $e0 $00
    push af                                       ; $41c8: $f5
    ldh a, [$f4]                                  ; $41c9: $f0 $f4
    pop af                                        ; $41cb: $f1
    db $f4                                        ; $41cc: $f4
    pop af                                        ; $41cd: $f1
    ld a, [$00f8]                                 ; $41ce: $fa $f8 $00
    ld a, [$fbf8]                                 ; $41d1: $fa $f8 $fb
    ld hl, sp-$04                                 ; $41d4: $f8 $fc
    db $fc                                        ; $41d6: $fc
    ld [bc], a                                    ; $41d7: $02
    add b                                         ; $41d8: $80
    nop                                           ; $41d9: $00
    ld [bc], a                                    ; $41da: $02
    nop                                           ; $41db: $00
    ld [bc], a                                    ; $41dc: $02
    ld b, b                                       ; $41dd: $40
    ld [hl+], a                                   ; $41de: $22
    ld b, b                                       ; $41df: $40
    jr nz, jr_0d6_4224                            ; $41e0: $20 $42

    nop                                           ; $41e2: $00
    nop                                           ; $41e3: $00
    nop                                           ; $41e4: $00
    rst $38                                       ; $41e5: $ff
    nop                                           ; $41e6: $00
    nop                                           ; $41e7: $00
    nop                                           ; $41e8: $00
    ld de, $0028                                  ; $41e9: $11 $28 $00
    ld de, $0128                                  ; $41ec: $11 $28 $01
    jr z, jr_0d6_421a                             ; $41ef: $28 $29

    ld d, h                                       ; $41f1: $54
    jr z, jr_0d6_4249                             ; $41f2: $28 $55

    add b                                         ; $41f4: $80
    db $10                                        ; $41f5: $10
    jr jr_0d6_424f                                ; $41f6: $18 $57

    rlca                                          ; $41f8: $07
    cpl                                           ; $41f9: $2f
    rrca                                          ; $41fa: $0f
    cpl                                           ; $41fb: $2f
    adc a                                         ; $41fc: $8f
    cpl                                           ; $41fd: $2f
    nop                                           ; $41fe: $00
    adc a                                         ; $41ff: $8f
    ld e, a                                       ; $4200: $5f
    rra                                           ; $4201: $1f
    ld e, a                                       ; $4202: $5f
    rra                                           ; $4203: $1f
    rst $18                                       ; $4204: $df
    rra                                           ; $4205: $1f
    ccf                                           ; $4206: $3f
    nop                                           ; $4207: $00
    ccf                                           ; $4208: $3f
    nop                                           ; $4209: $00
    ld bc, $00f1                                  ; $420a: $01 $f1 $00
    nop                                           ; $420d: $00
    rst $38                                       ; $420e: $ff
    rst $38                                       ; $420f: $ff
    ldh a, [$f0]                                  ; $4210: $f0 $f0
    ldh [$ed], a                                  ; $4212: $e0 $ed
    ret nz                                        ; $4214: $c0

    ret c                                         ; $4215: $d8

    nop                                           ; $4216: $00
    sub b                                         ; $4217: $90
    xor e                                         ; $4218: $ab
    and b                                         ; $4219: $a0

jr_0d6_421a:
    sub h                                         ; $421a: $94
    and b                                         ; $421b: $a0
    sbc h                                         ; $421c: $9c
    and c                                         ; $421d: $a1
    adc h                                         ; $421e: $8c
    nop                                           ; $421f: $00
    ld [bc], a                                    ; $4220: $02

Jump_0d6_4221:
    ld [bc], a                                    ; $4221: $02
    add hl, bc                                    ; $4222: $09
    db $f4                                        ; $4223: $f4

jr_0d6_4224:
    inc c                                         ; $4224: $0c
    jp nz, $8378                                  ; $4225: $c2 $78 $83

    nop                                           ; $4228: $00
    nop                                           ; $4229: $00
    dec a                                         ; $422a: $3d
    nop                                           ; $422b: $00
    ld b, b                                       ; $422c: $40
    db $10                                        ; $422d: $10
    and h                                         ; $422e: $a4
    jr nz, jr_0d6_4277                            ; $422f: $20 $46

    nop                                           ; $4231: $00
    ld a, a                                       ; $4232: $7f
    ld a, a                                       ; $4233: $7f
    cp a                                          ; $4234: $bf
    ccf                                           ; $4235: $3f
    rrca                                          ; $4236: $0f
    rrca                                          ; $4237: $0f
    ld b, a                                       ; $4238: $47
    rlca                                          ; $4239: $07
    nop                                           ; $423a: $00
    and e                                         ; $423b: $a3
    inc de                                        ; $423c: $13
    inc b                                         ; $423d: $04
    ld [hl], b                                    ; $423e: $70
    ld b, e                                       ; $423f: $43

jr_0d6_4240:
    sub b                                         ; $4240: $90
    nop                                           ; $4241: $00
    ld e, b                                       ; $4242: $58
    ld b, b                                       ; $4243: $40
    rst $38                                       ; $4244: $ff
    ld bc, $5f40                                  ; $4245: $01 $40 $5f
    ld e, a                                       ; $4248: $5f

jr_0d6_4249:
    daa                                           ; $4249: $27
    rlca                                          ; $424a: $07
    add b                                         ; $424b: $80
    xor h                                         ; $424c: $ac
    nop                                           ; $424d: $00
    add d                                         ; $424e: $82

jr_0d6_424f:
    sub b                                         ; $424f: $90
    pop bc                                        ; $4250: $c1
    ret nz                                        ; $4251: $c0

    and b                                         ; $4252: $a0
    adc d                                         ; $4253: $8a
    ld b, b                                       ; $4254: $40
    dec d                                         ; $4255: $15
    nop                                           ; $4256: $00
    ld b, b                                       ; $4257: $40
    dec c                                         ; $4258: $0d
    ld b, b                                       ; $4259: $40
    dec c                                         ; $425a: $0d
    ld b, h                                       ; $425b: $44
    add hl, bc                                    ; $425c: $09
    inc c                                         ; $425d: $0c
    ld b, d                                       ; $425e: $42
    nop                                           ; $425f: $00
    db $fc                                        ; $4260: $fc
    ld [bc], a                                    ; $4261: $02
    inc a                                         ; $4262: $3c
    ld b, d                                       ; $4263: $42
    ld hl, sp+$04                                 ; $4264: $f8 $04
    ld d, b                                       ; $4266: $50
    ld a, [bc]                                    ; $4267: $0a
    nop                                           ; $4268: $00
    ld [bc], a                                    ; $4269: $02
    or l                                          ; $426a: $b5
    add [hl]                                      ; $426b: $86
    add hl, bc                                    ; $426c: $09
    add [hl]                                      ; $426d: $86
    add hl, hl                                    ; $426e: $29
    inc c                                         ; $426f: $0c
    inc de                                        ; $4270: $13
    nop                                           ; $4271: $00
    nop                                           ; $4272: $00
    ld c, a                                       ; $4273: $4f
    jr nz, jr_0d6_42bd                            ; $4274: $20 $47

    db $10                                        ; $4276: $10

jr_0d6_4277:
    xor b                                         ; $4277: $a8
    ld [$0077], sp                                ; $4278: $08 $77 $00
    nop                                           ; $427b: $00
    nop                                           ; $427c: $00
    ld [bc], a                                    ; $427d: $02
    ld [hl], b                                    ; $427e: $70
    ld b, h                                       ; $427f: $44
    inc sp                                        ; $4280: $33
    rst $30                                       ; $4281: $f7
    rlca                                          ; $4282: $07
    nop                                           ; $4283: $00
    rlca                                          ; $4284: $07
    rst $30                                       ; $4285: $f7
    inc bc                                        ; $4286: $03
    or e                                          ; $4287: $b3
    dec b                                         ; $4288: $05
    pop hl                                        ; $4289: $e1
    ld [bc], a                                    ; $428a: $02
    ld [$6200], sp                                ; $428b: $08 $00 $62
    db $10                                        ; $428e: $10
    ld [de], a                                    ; $428f: $12
    xor b                                         ; $4290: $a8
    ld b, d                                       ; $4291: $42
    jr jr_0d6_4240                                ; $4292: $18 $ac

    add e                                         ; $4294: $83
    nop                                           ; $4295: $00
    xor b                                         ; $4296: $a8
    add [hl]                                      ; $4297: $86
    xor b                                         ; $4298: $a8
    add l                                         ; $4299: $85
    ret nc                                        ; $429a: $d0

    push bc                                       ; $429b: $c5
    ret nc                                        ; $429c: $d0

    call nz, $d000                                ; $429d: $c4 $00 $d0
    pop bc                                        ; $42a0: $c1
    add sp, -$1f                                  ; $42a1: $e8 $e1
    add sp, -$1f                                  ; $42a3: $e8 $e1

jr_0d6_42a5:
    ld b, $68                                     ; $42a5: $06 $68
    nop                                           ; $42a7: $00
    dec b                                         ; $42a8: $05
    ret nc                                        ; $42a9: $d0

    dec hl                                        ; $42aa: $2b
    add b                                         ; $42ab: $80
    rla                                           ; $42ac: $17
    xor b                                         ; $42ad: $a8
    nop                                           ; $42ae: $00
    cp b                                          ; $42af: $b8
    nop                                           ; $42b0: $00
    ld bc, $00c6                                  ; $42b1: $01 $c6 $00
    ld a, a                                       ; $42b4: $7f
    nop                                           ; $42b5: $00
    ld e, l                                       ; $42b6: $5d
    add sp, $06                                   ; $42b7: $e8 $06
    nop                                           ; $42b9: $00
    ret nc                                        ; $42ba: $d0

    inc c                                         ; $42bb: $0c
    and b                                         ; $42bc: $a0

jr_0d6_42bd:
    dec de                                        ; $42bd: $1b
    ld hl, $4192                                  ; $42be: $21 $92 $41
    ld [hl-], a                                   ; $42c1: $32
    nop                                           ; $42c2: $00
    ld bc, $01fa                                  ; $42c3: $01 $fa $01
    ld a, [c]                                     ; $42c6: $f2
    ld bc, $21fa                                  ; $42c7: $01 $fa $21
    ld c, c                                       ; $42ca: $49
    nop                                           ; $42cb: $00
    ld hl, $1111                                  ; $42cc: $21 $11 $11
    xor c                                         ; $42cf: $a9
    inc de                                        ; $42d0: $13
    xor e                                         ; $42d1: $ab
    inc bc                                        ; $42d2: $03
    cp e                                          ; $42d3: $bb
    nop                                           ; $42d4: $00
    inc bc                                        ; $42d5: $03
    or e                                          ; $42d6: $b3
    rlca                                          ; $42d7: $07
    or a                                          ; $42d8: $b7
    add a                                         ; $42d9: $87
    scf                                           ; $42da: $37
    add sp, -$1e                                  ; $42db: $e8 $e2
    nop                                           ; $42dd: $00
    ldh a, [$f1]                                  ; $42de: $f0 $f1
    push af                                       ; $42e0: $f5
    ldh a, [$f5]                                  ; $42e1: $f0 $f5
    ldh a, [$fa]                                  ; $42e3: $f0 $fa
    ld hl, sp+$00                                 ; $42e5: $f8 $00
    ld a, [$fbf8]                                 ; $42e7: $fa $f8 $fb
    ld hl, sp-$04                                 ; $42ea: $f8 $fc
    db $fc                                        ; $42ec: $fc
    nop                                           ; $42ed: $00
    sub [hl]                                      ; $42ee: $96
    nop                                           ; $42ef: $00
    nop                                           ; $42f0: $00
    dec [hl]                                      ; $42f1: $35
    nop                                           ; $42f2: $00
    inc l                                         ; $42f3: $2c
    ld b, c                                       ; $42f4: $41
    db $10                                        ; $42f5: $10
    ld c, a                                       ; $42f6: $4f
    stop                                          ; $42f7: $10 $00
    nop                                           ; $42f9: $00
    nop                                           ; $42fa: $00
    rst $38                                       ; $42fb: $ff
    nop                                           ; $42fc: $00
    nop                                           ; $42fd: $00
    nop                                           ; $42fe: $00
    ld bc, $00ba                                  ; $42ff: $01 $ba $00
    ld bc, $0152                                  ; $4302: $01 $52 $01
    ld c, d                                       ; $4305: $4a
    add hl, de                                    ; $4306: $19
    add d                                         ; $4307: $82
    pop af                                        ; $4308: $f1
    ld [bc], a                                    ; $4309: $02
    add b                                         ; $430a: $80
    db $10                                        ; $430b: $10
    jr jr_0d6_42a5                                ; $430c: $18 $97

    rlca                                          ; $430e: $07
    sub a                                         ; $430f: $97
    rlca                                          ; $4310: $07
    add a                                         ; $4311: $87
    scf                                           ; $4312: $37
    adc a                                         ; $4313: $8f
    nop                                           ; $4314: $00
    cpl                                           ; $4315: $2f
    sbc a                                         ; $4316: $9f
    rra                                           ; $4317: $1f

jr_0d6_4318:
    ld e, a                                       ; $4318: $5f
    rra                                           ; $4319: $1f
    rst $18                                       ; $431a: $df
    rra                                           ; $431b: $1f
    ccf                                           ; $431c: $3f
    nop                                           ; $431d: $00
    ccf                                           ; $431e: $3f
    nop                                           ; $431f: $00
    ld bc, $00e5                                  ; $4320: $01 $e5 $00
    ld b, b                                       ; $4323: $40
    rst $38                                       ; $4324: $ff
    ld bc, $fe30                                  ; $4325: $01 $30 $fe
    cp $fc                                        ; $4328: $fe $fc
    db $fd                                        ; $432a: $fd
    ld hl, sp-$07                                 ; $432b: $f8 $f9
    nop                                           ; $432d: $00
    cp $fe                                        ; $432e: $fe $fe

Call_0d6_4330:
    db $fd                                        ; $4330: $fd
    db $fc                                        ; $4331: $fc
    ld a, [c]                                     ; $4332: $f2
    ldh a, [$84]                                  ; $4333: $f0 $84
    add c                                         ; $4335: $81
    nop                                           ; $4336: $00
    nop                                           ; $4337: $00
    ld a, e                                       ; $4338: $7b
    jr nz, jr_0d6_4318                            ; $4339: $20 $dd

    ld [$80f5], sp                                ; $433b: $08 $f5 $80
    ld l, d                                       ; $433e: $6a
    nop                                           ; $433f: $00
    ld a, a                                       ; $4340: $7f
    ld a, a                                       ; $4341: $7f
    cp a                                          ; $4342: $bf
    ccf                                           ; $4343: $3f
    ld c, a                                       ; $4344: $4f
    rrca                                          ; $4345: $0f
    scf                                           ; $4346: $37
    add a                                         ; $4347: $87
    nop                                           ; $4348: $00
    dec bc                                        ; $4349: $0b
    jp $f004                                      ; $434a: $c3 $04 $f0


    ld bc, $00f8                                  ; $434d: $01 $f8 $00
    db $fd                                        ; $4350: $fd
    add b                                         ; $4351: $80
    jr nc, jr_0d6_438c                            ; $4352: $30 $38

    ld a, a                                       ; $4354: $7f
    ld a, a                                       ; $4355: $7f
    ccf                                           ; $4356: $3f
    cp a                                          ; $4357: $bf
    sbc a                                         ; $4358: $9f
    ld e, a                                       ; $4359: $5f
    ldh a, [rP1]                                  ; $435a: $f0 $00
    di                                            ; $435c: $f3
    add sp, -$1d                                  ; $435d: $e8 $e3
    ret nc                                        ; $435f: $d0

    jp nz, $8aa0                                  ; $4360: $c2 $a0 $8a

    ld b, b                                       ; $4363: $40
    nop                                           ; $4364: $00
    dec de                                        ; $4365: $1b
    ld b, c                                       ; $4366: $41
    ld a, [de]                                    ; $4367: $1a
    ld b, b                                       ; $4368: $40
    ld a, [de]                                    ; $4369: $1a
    ld b, b                                       ; $436a: $40
    add hl, de                                    ; $436b: $19
    inc e                                         ; $436c: $1c
    nop                                           ; $436d: $00
    and c                                         ; $436e: $a1
    ld [hl], b                                    ; $436f: $70
    add hl, bc                                    ; $4370: $09
    ret z                                         ; $4371: $c8

    nop                                           ; $4372: $00
    adc $01                                       ; $4373: $ce $01
    ld [hl], c                                    ; $4375: $71
    nop                                           ; $4376: $00
    adc d                                         ; $4377: $8a
    add h                                         ; $4378: $84
    ld c, d                                       ; $4379: $4a
    ld d, b                                       ; $437a: $50
    add hl, hl                                    ; $437b: $29

jr_0d6_437c:
    cpl                                           ; $437c: $2f
    ld d, b                                       ; $437d: $50
    nop                                           ; $437e: $00
    nop                                           ; $437f: $00
    ld sp, hl                                     ; $4380: $f9
    dec b                                         ; $4381: $05
    ld a, [c]                                     ; $4382: $f2
    rlca                                          ; $4383: $07
    jr nc, @-$38                                  ; $4384: $30 $c6

    ld de, $0006                                  ; $4386: $11 $06 $00
    sub b                                         ; $4389: $90
    ld b, d                                       ; $438a: $42
    sub h                                         ; $438b: $94

jr_0d6_438c:
    ret nz                                        ; $438c: $c0

    db $10                                        ; $438d: $10
    push bc                                       ; $438e: $c5
    ld a, [hl+]                                   ; $438f: $2a
    xor a                                         ; $4390: $af
    nop                                           ; $4391: $00
    rrca                                          ; $4392: $0f
    sub a                                         ; $4393: $97
    rlca                                          ; $4394: $07
    dec bc                                        ; $4395: $0b
    and e                                         ; $4396: $a3
    dec b                                         ; $4397: $05
    ld [hl], c                                    ; $4398: $71
    ld [bc], a                                    ; $4399: $02
    nop                                           ; $439a: $00
    ld hl, sp+$02                                 ; $439b: $f8 $02
    jr c, @-$7c                                   ; $439d: $38 $82

    ld e, b                                       ; $439f: $58
    ld [bc], a                                    ; $43a0: $02
    cp b                                          ; $43a1: $b8
    and b                                         ; $43a2: $a0
    nop                                           ; $43a3: $00
    adc l                                         ; $43a4: $8d
    and b                                         ; $43a5: $a0
    adc a                                         ; $43a6: $8f
    and b                                         ; $43a7: $a0
    adc d                                         ; $43a8: $8a
    ret nc                                        ; $43a9: $d0

    push bc                                       ; $43aa: $c5
    ret nc                                        ; $43ab: $d0

    nop                                           ; $43ac: $00
    jp nz, $c1d0                                  ; $43ad: $c2 $d0 $c1

    jp hl                                         ; $43b0: $e9


    ld [c], a                                     ; $43b1: $e2
    db $eb                                        ; $43b2: $eb
    ldh [$03], a                                  ; $43b3: $e0 $03
    nop                                           ; $43b5: $00
    ld a, h                                       ; $43b6: $7c
    ld bc, $0822                                  ; $43b7: $01 $22 $08
    sub h                                         ; $43ba: $94
    ld bc, $706e                                  ; $43bb: $01 $6e $70
    nop                                           ; $43be: $00
    add a                                         ; $43bf: $87
    ldh a, [$08]                                  ; $43c0: $f0 $08
    add b                                         ; $43c2: $80
    ld b, a                                       ; $43c3: $47
    ld b, h                                       ; $43c4: $44
    cp d                                          ; $43c5: $ba
    adc [hl]                                      ; $43c6: $8e
    nop                                           ; $43c7: $00
    ld d, c                                       ; $43c8: $51
    inc c                                         ; $43c9: $0c
    and d                                         ; $43ca: $a2
    add hl, bc                                    ; $43cb: $09
    ld b, h                                       ; $43cc: $44
    adc d                                         ; $43cd: $8a
    ld bc, $0032                                  ; $43ce: $01 $32 $00
    add c                                         ; $43d1: $81
    dec a                                         ; $43d2: $3d
    ld b, b                                       ; $43d3: $40
    jr c, @-$79                                   ; $43d4: $38 $85

jr_0d6_43d6:
    jr jr_0d6_437c                                ; $43d6: $18 $a4

    dec b                                         ; $43d8: $05
    nop                                           ; $43d9: $00
    ld d, c                                       ; $43da: $51
    dec b                                         ; $43db: $05
    ld [hl], c                                    ; $43dc: $71
    dec b                                         ; $43dd: $05
    ld hl, $030b                                  ; $43de: $21 $0b $03
    dec bc                                        ; $43e1: $0b
    nop                                           ; $43e2: $00
    inc hl                                        ; $43e3: $23
    dec bc                                        ; $43e4: $0b
    ld b, e                                       ; $43e5: $43
    rla                                           ; $43e6: $17
    rlca                                          ; $43e7: $07
    rla                                           ; $43e8: $17
    ld b, a                                       ; $43e9: $47

jr_0d6_43ea:
    ld [$e100], a                                 ; $43ea: $ea $00 $e1
    push af                                       ; $43ed: $f5
    ldh a, [$f4]                                  ; $43ee: $f0 $f4
    pop af                                        ; $43f0: $f1
    push af                                       ; $43f1: $f5
    ldh a, [$fa]                                  ; $43f2: $f0 $fa
    nop                                           ; $43f4: $00
    ld hl, sp-$06                                 ; $43f5: $f8 $fa
    ld hl, sp-$05                                 ; $43f7: $f8 $fb
    ld hl, sp-$04                                 ; $43f9: $f8 $fc
    db $fc                                        ; $43fb: $fc
    adc d                                         ; $43fc: $8a
    nop                                           ; $43fd: $00
    ld d, h                                       ; $43fe: $54
    inc d                                         ; $43ff: $14
    ld [$54aa], a                                 ; $4400: $ea $aa $54
    ld d, h                                       ; $4403: $54
    xor d                                         ; $4404: $aa
    xor b                                         ; $4405: $a8
    inc b                                         ; $4406: $04
    ld d, l                                       ; $4407: $55
    nop                                           ; $4408: $00
    nop                                           ; $4409: $00
    rst $38                                       ; $440a: $ff
    nop                                           ; $440b: $00
    ld bc, $c200                                  ; $440c: $01 $00 $c2
    nop                                           ; $440f: $00
    ld bc, $10d1                                  ; $4410: $01 $d1 $10
    ret z                                         ; $4413: $c8

    jr jr_0d6_43d6                                ; $4414: $18 $c0

    jr @-$5a                                      ; $4416: $18 $a4

    db $10                                        ; $4418: $10
    jr jr_0d6_4423                                ; $4419: $18 $08

    rla                                           ; $441b: $17
    rlca                                          ; $441c: $07
    cpl                                           ; $441d: $2f
    rrca                                          ; $441e: $0f
    ld [bc], a                                    ; $441f: $02
    ld [$1f5f], sp                                ; $4420: $08 $5f $1f

jr_0d6_4423:
    ld e, a                                       ; $4423: $5f
    nop                                           ; $4424: $00
    rra                                           ; $4425: $1f
    rst $18                                       ; $4426: $df
    rra                                           ; $4427: $1f
    ccf                                           ; $4428: $3f
    ccf                                           ; $4429: $3f
    nop                                           ; $442a: $00
    ld bc, $00e4                                  ; $442b: $01 $e4 $00
    ld d, b                                       ; $442e: $50
    rst $38                                       ; $442f: $ff
    ld bc, $fe10                                  ; $4430: $01 $10 $fe
    ld bc, $fc00                                  ; $4433: $01 $00 $fc
    db $fd                                        ; $4436: $fd
    db $fc                                        ; $4437: $fc
    db $fd                                        ; $4438: $fd
    nop                                           ; $4439: $00
    ld hl, sp-$08                                 ; $443a: $f8 $f8
    cp $fe                                        ; $443c: $fe $fe
    db $fd                                        ; $443e: $fd
    db $fc                                        ; $443f: $fc
    ld [bc], a                                    ; $4440: $02
    nop                                           ; $4441: $00
    nop                                           ; $4442: $00
    cp b                                          ; $4443: $b8
    ld b, l                                       ; $4444: $45
    ld e, $a0                                     ; $4445: $1e $a0
    inc de                                        ; $4447: $13
    inc l                                         ; $4448: $2c
    jr nz, jr_0d6_43ea                            ; $4449: $20 $9f

    nop                                           ; $444b: $00
    ld d, $88                                     ; $444c: $16 $88
    ld a, a                                       ; $444e: $7f
    ld a, a                                       ; $444f: $7f
    cp a                                          ; $4450: $bf
    ccf                                           ; $4451: $3f
    ld c, a                                       ; $4452: $4f
    rrca                                          ; $4453: $0f

jr_0d6_4454:
    nop                                           ; $4454: $00
    scf                                           ; $4455: $37
    add a                                         ; $4456: $87
    inc bc                                        ; $4457: $03
    add e                                         ; $4458: $83
    ld a, b                                       ; $4459: $78
    inc b                                         ; $445a: $04
    ld a, a                                       ; $445b: $7f
    nop                                           ; $445c: $00
    jr nc, jr_0d6_4476                            ; $445d: $30 $17

    xor b                                         ; $445f: $a8
    jr nc, jr_0d6_447a                            ; $4460: $30 $18

    ld [hl], $08                                  ; $4462: $36 $08
    ld a, a                                       ; $4464: $7f
    ld a, a                                       ; $4465: $7f
    rra                                           ; $4466: $1f
    sbc a                                         ; $4467: $9f
    nop                                           ; $4468: $00
    rst $08                                       ; $4469: $cf
    cpl                                           ; $446a: $2f
    push af                                       ; $446b: $f5
    ldh a, [$eb]                                  ; $446c: $f0 $eb
    ldh [$d3], a                                  ; $446e: $e0 $d3
    ret nz                                        ; $4470: $c0

    nop                                           ; $4471: $00
    and [hl]                                      ; $4472: $a6
    add c                                         ; $4473: $81
    ld b, h                                       ; $4474: $44
    ld [de], a                                    ; $4475: $12

jr_0d6_4476:
    ld b, h                                       ; $4476: $44
    ld de, $1340                                  ; $4477: $11 $40 $13

jr_0d6_447a:
    nop                                           ; $447a: $00

jr_0d6_447b:
    ld b, b                                       ; $447b: $40
    rla                                           ; $447c: $17
    ld b, [hl]                                    ; $447d: $46
    add hl, de                                    ; $447e: $19
    adc b                                         ; $447f: $88
    ld d, d                                       ; $4480: $52
    ld bc, $0084                                  ; $4481: $01 $84 $00
    ld [bc], a                                    ; $4484: $02
    ld l, b                                       ; $4485: $68
    inc b                                         ; $4486: $04
    ldh [rSC], a                                  ; $4487: $e0 $02
    pop bc                                        ; $4489: $c1
    ld bc, $0080                                  ; $448a: $01 $80 $00
    ld b, b                                       ; $448d: $40
    nop                                           ; $448e: $00
    ld b, d                                       ; $448f: $42
    dec b                                         ; $4490: $05
    ldh [rP1], a                                  ; $4491: $e0 $00
    inc [hl]                                      ; $4493: $34
    ld bc, $a000                                  ; $4494: $01 $00 $a0
    inc b                                         ; $4497: $04
    call nc, $9402                                ; $4498: $d4 $02 $94
    ld [bc], a                                    ; $449b: $02
    ld [bc], a                                    ; $449c: $02
    ld [hl], h                                    ; $449d: $74

jr_0d6_449e:
    nop                                           ; $449e: $00
    ld [bc], a                                    ; $449f: $02
    db $ec                                        ; $44a0: $ec
    rst $20                                       ; $44a1: $e7
    rla                                           ; $44a2: $17
    inc sp                                        ; $44a3: $33
    ld c, e                                       ; $44a4: $4b
    dec bc                                        ; $44a5: $0b
    sub e                                         ; $44a6: $93
    nop                                           ; $44a7: $00
    dec b                                         ; $44a8: $05
    pop hl                                        ; $44a9: $e1
    ld [bc], a                                    ; $44aa: $02
    ld a, b                                       ; $44ab: $78
    add d                                         ; $44ac: $82
    inc a                                         ; $44ad: $3c
    add d                                         ; $44ae: $82
    jr c, jr_0d6_44b9                             ; $44af: $38 $08

    add d                                         ; $44b1: $82
    jr jr_0d6_4454                                ; $44b2: $18 $a0

    adc [hl]                                      ; $44b4: $8e
    ld [bc], a                                    ; $44b5: $02
    nop                                           ; $44b6: $00
    adc h                                         ; $44b7: $8c
    ret nc                                        ; $44b8: $d0

jr_0d6_44b9:
    call nz, $d000                                ; $44b9: $c4 $00 $d0
    ret nz                                        ; $44bc: $c0

    ret nc                                        ; $44bd: $d0

    pop bc                                        ; $44be: $c1
    add sp, -$1d                                  ; $44bf: $e8 $e3
    db $eb                                        ; $44c1: $eb
    ldh [rP1], a                                  ; $44c2: $e0 $00
    call nz, Call_000_0001                        ; $44c4: $c4 $01 $00
    inc bc                                        ; $44c7: $03
    inc b                                         ; $44c8: $04
    inc bc                                        ; $44c9: $03
    inc c                                         ; $44ca: $0c
    inc bc                                        ; $44cb: $03
    nop                                           ; $44cc: $00
    ld [$0037], sp                                ; $44cd: $08 $37 $00
    cp $00                                        ; $44d0: $fe $00
    db $fc                                        ; $44d2: $fc
    jr nc, jr_0d6_449e                            ; $44d3: $30 $c9

    nop                                           ; $44d5: $00
    ld b, b                                       ; $44d6: $40
    xor l                                         ; $44d7: $ad
    ld bc, $05dc                                  ; $44d8: $01 $dc $05
    sbc b                                         ; $44db: $98
    jr nz, jr_0d6_447b                            ; $44dc: $20 $9d

    nop                                           ; $44de: $00
    nop                                           ; $44df: $00
    add hl, sp                                    ; $44e0: $39
    ld b, b                                       ; $44e1: $40
    dec sp                                        ; $44e2: $3b
    ret                                           ; $44e3: $c9


    ld [hl-], a                                   ; $44e4: $32
    db $10                                        ; $44e5: $10
    db $e3                                        ; $44e6: $e3
    nop                                           ; $44e7: $00
    dec b                                         ; $44e8: $05
    and c                                         ; $44e9: $a1
    dec h                                         ; $44ea: $25
    add c                                         ; $44eb: $81
    dec [hl]                                      ; $44ec: $35
    add c                                         ; $44ed: $81
    dec bc                                        ; $44ee: $0b
    add e                                         ; $44ef: $83
    add b                                         ; $44f0: $80
    ld [bc], a                                    ; $44f1: $02
    nop                                           ; $44f2: $00
    and e                                         ; $44f3: $a3
    rla                                           ; $44f4: $17
    rlca                                          ; $44f5: $07
    rla                                           ; $44f6: $17
    rlca                                          ; $44f7: $07
    ld [$00e1], a                                 ; $44f8: $ea $e1 $00
    db $f4                                        ; $44fb: $f4
    pop af                                        ; $44fc: $f1
    push af                                       ; $44fd: $f5
    ldh a, [$f4]                                  ; $44fe: $f0 $f4
    ldh a, [$fa]                                  ; $4500: $f0 $fa
    ld hl, sp+$00                                 ; $4502: $f8 $00
    ld a, [$fbf8]                                 ; $4504: $fa $f8 $fb
    ld hl, sp-$04                                 ; $4507: $f8 $fc
    db $fc                                        ; $4509: $fc
    jr nz, @-$3b                                  ; $450a: $20 $c3

    nop                                           ; $450c: $00
    nop                                           ; $450d: $00
    add a                                         ; $450e: $87
    add hl, bc                                    ; $450f: $09
    ld b, $01                                     ; $4510: $06 $01
    ld e, $00                                     ; $4512: $1e $00
    ccf                                           ; $4514: $3f
    ld [$0000], sp                                ; $4515: $08 $00 $00
    rst $38                                       ; $4518: $ff
    nop                                           ; $4519: $00
    ld bc, $f700                                  ; $451a: $01 $00 $f7
    nop                                           ; $451d: $00
    and $06                                       ; $451e: $e6 $06
    nop                                           ; $4520: $00
    add $80                                       ; $4521: $c6 $80
    inc c                                         ; $4523: $0c
    ld [$000c], sp                                ; $4524: $08 $0c $00
    db $10                                        ; $4527: $10
    ld [$1017], sp                                ; $4528: $08 $17 $10
    rlca                                          ; $452b: $07
    cpl                                           ; $452c: $2f
    rrca                                          ; $452d: $0f
    ld [bc], a                                    ; $452e: $02
    ld [$1f5f], sp                                ; $452f: $08 $5f $1f
    ld e, a                                       ; $4532: $5f
    rra                                           ; $4533: $1f
    nop                                           ; $4534: $00
    rst $18                                       ; $4535: $df
    rra                                           ; $4536: $1f
    ccf                                           ; $4537: $3f
    ccf                                           ; $4538: $3f
    nop                                           ; $4539: $00
    ld bc, $00e4                                  ; $453a: $01 $e4 $00
    ld b, b                                       ; $453d: $40
    rst $38                                       ; $453e: $ff
    ld bc, $fe40                                  ; $453f: $01 $40 $fe
    cp $f9                                        ; $4542: $fe $f9
    ld hl, sp-$02                                 ; $4544: $f8 $fe
    cp $00                                        ; $4546: $fe $00
    db $fd                                        ; $4548: $fd
    db $fc                                        ; $4549: $fc
    ld a, [c]                                     ; $454a: $f2
    ldh a, [$ec]                                  ; $454b: $f0 $ec
    pop hl                                        ; $454d: $e1
    ret nc                                        ; $454e: $d0

    ret nz                                        ; $454f: $c0

    nop                                           ; $4550: $00
    inc l                                         ; $4551: $2c
    inc bc                                        ; $4552: $03
    ret nc                                        ; $4553: $d0

    rrca                                          ; $4554: $0f
    daa                                           ; $4555: $27
    jr jr_0d6_45d7                                ; $4556: $18 $7f

    ld a, a                                       ; $4558: $7f
    nop                                           ; $4559: $00
    cp a                                          ; $455a: $bf
    ccf                                           ; $455b: $3f
    ld c, a                                       ; $455c: $4f
    rrca                                          ; $455d: $0f
    scf                                           ; $455e: $37
    add a                                         ; $455f: $87
    dec bc                                        ; $4560: $0b
    ld b, e                                       ; $4561: $43
    ld [bc], a                                    ; $4562: $02
    add b                                         ; $4563: $80
    jr nz, jr_0d6_45a7                            ; $4564: $20 $41

    sbc h                                         ; $4566: $9c
    inc l                                         ; $4567: $2c
    jp nz, Jump_0d6_4830                          ; $4568: $c2 $30 $48

    ld a, a                                       ; $456b: $7f
    nop                                           ; $456c: $00
    ld a, a                                       ; $456d: $7f
    sbc a                                         ; $456e: $9f
    rra                                           ; $456f: $1f
    or $f0                                        ; $4570: $f6 $f0
    add sp, -$1f                                  ; $4572: $e8 $e1
    ret nc                                        ; $4574: $d0

    nop                                           ; $4575: $00
    add $a1                                       ; $4576: $c6 $a1
    adc h                                         ; $4578: $8c
    ld b, b                                       ; $4579: $40
    inc de                                        ; $457a: $13
    ld b, [hl]                                    ; $457b: $46
    ld [$004f], sp                                ; $457c: $08 $4f $00
    db $10                                        ; $457f: $10
    ld c, a                                       ; $4580: $4f
    stop                                          ; $4581: $10 $00
    add b                                         ; $4583: $80
    scf                                           ; $4584: $37
    ld b, b                                       ; $4585: $40
    and d                                         ; $4586: $a2
    nop                                           ; $4587: $00
    dec d                                         ; $4588: $15
    sub d                                         ; $4589: $92
    jr nz, jr_0d6_45e9                            ; $458a: $20 $5d

    add b                                         ; $458c: $80
    rla                                           ; $458d: $17
    nop                                           ; $458e: $00
    adc b                                         ; $458f: $88
    nop                                           ; $4590: $00
    ld d, b                                       ; $4591: $50
    ld h, a                                       ; $4592: $67
    ld [$010e], sp                                ; $4593: $08 $0e $01
    ld l, h                                       ; $4596: $6c
    ld [de], a                                    ; $4597: $12
    ld c, c                                       ; $4598: $49
    nop                                           ; $4599: $00
    inc h                                         ; $459a: $24
    ld h, e                                       ; $459b: $63
    ld [$28c3], sp                                ; $459c: $08 $c3 $28
    ld b, d                                       ; $459f: $42
    inc c                                         ; $45a0: $0c
    add c                                         ; $45a1: $81
    nop                                           ; $45a2: $00
    ld d, d                                       ; $45a3: $52
    inc hl                                        ; $45a4: $23
    sbc b                                         ; $45a5: $98
    ld l, a                                       ; $45a6: $6f

jr_0d6_45a7:
    rrca                                          ; $45a7: $0f
    rla                                           ; $45a8: $17
    add a                                         ; $45a9: $87
    adc e                                         ; $45aa: $8b
    nop                                           ; $45ab: $00
    ld b, e                                       ; $45ac: $43
    push bc                                       ; $45ad: $c5
    ld de, $28c2                                  ; $45ae: $11 $c2 $28
    ld h, d                                       ; $45b1: $62
    ld [$00a2], sp                                ; $45b2: $08 $a2 $00
    nop                                           ; $45b5: $00
    ld [c], a                                     ; $45b6: $e2
    ld [$80af], sp                                ; $45b7: $08 $af $80
    xor a                                         ; $45ba: $af
    add b                                         ; $45bb: $80
    and [hl]                                      ; $45bc: $a6
    nop                                           ; $45bd: $00
    adc c                                         ; $45be: $89
    rst $10                                       ; $45bf: $d7
    ret nz                                        ; $45c0: $c0

    rst $10                                       ; $45c1: $d7
    ret nz                                        ; $45c2: $c0

    db $d3                                        ; $45c3: $d3
    call nz, Call_000_00eb                        ; $45c4: $c4 $eb $00
    ldh [$e8], a                                  ; $45c7: $e0 $e8
    pop hl                                        ; $45c9: $e1
    jr nz, @-$7e                                  ; $45ca: $20 $80

    add b                                         ; $45cc: $80
    ld d, h                                       ; $45cd: $54
    ld [hl], b                                    ; $45ce: $70
    nop                                           ; $45cf: $00
    ld [bc], a                                    ; $45d0: $02
    db $10                                        ; $45d1: $10
    and l                                         ; $45d2: $a5
    and [hl]                                      ; $45d3: $a6
    ld [$10cf], sp                                ; $45d4: $08 $cf $10

jr_0d6_45d7:
    rst $08                                       ; $45d7: $cf
    nop                                           ; $45d8: $00
    db $10                                        ; $45d9: $10
    rra                                           ; $45da: $1f
    jr nz, jr_0d6_45e0                            ; $45db: $20 $03

    ld e, b                                       ; $45dd: $58
    inc bc                                        ; $45de: $03
    db $f4                                        ; $45df: $f4

jr_0d6_45e0:
    inc bc                                        ; $45e0: $03
    nop                                           ; $45e1: $00
    ld h, b                                       ; $45e2: $60
    inc de                                        ; $45e3: $13
    ld [$8639], sp                                ; $45e4: $08 $39 $86
    jr c, jr_0d6_462a                             ; $45e7: $38 $41

jr_0d6_45e9:
    cp b                                          ; $45e9: $b8
    nop                                           ; $45ea: $00
    ld b, h                                       ; $45eb: $44
    db $ec                                        ; $45ec: $ec
    ld bc, $01e5                                  ; $45ed: $01 $e5 $01
    push bc                                       ; $45f0: $c5
    ld hl, $00a5                                  ; $45f1: $21 $a5 $00
    ld b, c                                       ; $45f4: $41
    ld c, e                                       ; $45f5: $4b
    add e                                         ; $45f6: $83
    rlc e                                         ; $45f7: $cb $03
    adc e                                         ; $45f9: $8b
    inc hl                                        ; $45fa: $23
    rla                                           ; $45fb: $17
    nop                                           ; $45fc: $00
    ld b, a                                       ; $45fd: $47
    rla                                           ; $45fe: $17
    rst $00                                       ; $45ff: $c7
    add sp, -$1e                                  ; $4600: $e8 $e2
    push af                                       ; $4602: $f5
    ldh a, [$f5]                                  ; $4603: $f0 $f5
    nop                                           ; $4605: $00
    ldh a, [$f4]                                  ; $4606: $f0 $f4
    ldh a, [$fa]                                  ; $4608: $f0 $fa
    ld hl, sp-$06                                 ; $460a: $f8 $fa
    ld hl, sp-$05                                 ; $460c: $f8 $fb
    nop                                           ; $460e: $00
    ld hl, sp-$04                                 ; $460f: $f8 $fc
    db $fc                                        ; $4611: $fc
    rrca                                          ; $4612: $0f
    ld h, b                                       ; $4613: $60
    ld [hl], b                                    ; $4614: $70
    nop                                           ; $4615: $00
    rlca                                          ; $4616: $07
    nop                                           ; $4617: $00
    jr jr_0d6_465a                                ; $4618: $18 $40

    inc hl                                        ; $461a: $23
    add b                                         ; $461b: $80
    ld d, b                                       ; $461c: $50
    nop                                           ; $461d: $00
    nop                                           ; $461e: $00
    rst $38                                       ; $461f: $ff
    nop                                           ; $4620: $00
    nop                                           ; $4621: $00
    nop                                           ; $4622: $00
    nop                                           ; $4623: $00
    ret z                                         ; $4624: $c8

    dec d                                         ; $4625: $15
    ldh a, [$09]                                  ; $4626: $f0 $09
    and $04                                       ; $4628: $e6 $04

jr_0d6_462a:
    db $10                                        ; $462a: $10
    ld bc, $24c6                                  ; $462b: $01 $c6 $24
    add hl, de                                    ; $462e: $19
    db $10                                        ; $462f: $10
    jr jr_0d6_4649                                ; $4630: $18 $17

    rst $00                                       ; $4632: $c7
    jr nz, jr_0d6_4664                            ; $4633: $20 $2f

    adc a                                         ; $4635: $8f
    ld [bc], a                                    ; $4636: $02
    nop                                           ; $4637: $00
    rrca                                          ; $4638: $0f
    ld e, a                                       ; $4639: $5f
    rra                                           ; $463a: $1f
    ld e, a                                       ; $463b: $5f
    rra                                           ; $463c: $1f
    nop                                           ; $463d: $00
    rst $18                                       ; $463e: $df
    rra                                           ; $463f: $1f
    ccf                                           ; $4640: $3f
    ccf                                           ; $4641: $3f
    nop                                           ; $4642: $00
    ld bc, $00f8                                  ; $4643: $01 $f8 $00
    nop                                           ; $4646: $00
    db $fc                                        ; $4647: $fc
    db $fc                                        ; $4648: $fc

jr_0d6_4649:
    ld sp, hl                                     ; $4649: $f9
    ld a, [$f4f3]                                 ; $464a: $fa $f3 $f4
    or $f0                                        ; $464d: $f6 $f0
    nop                                           ; $464f: $00
    or $f1                                        ; $4650: $f6 $f1
    ld a, [c]                                     ; $4652: $f2
    push af                                       ; $4653: $f5
    ld hl, sp-$08                                 ; $4654: $f8 $f8
    ld sp, hl                                     ; $4656: $f9
    ld a, [$0000]                                 ; $4657: $fa $00 $00

jr_0d6_465a:
    ld [bc], a                                    ; $465a: $02
    ld a, [c]                                     ; $465b: $f2
    add hl, bc                                    ; $465c: $09
    inc bc                                        ; $465d: $03
    jr c, jr_0d6_4692                             ; $465e: $38 $32

    pop bc                                        ; $4660: $c1
    nop                                           ; $4661: $00
    ld [hl-], a                                   ; $4662: $32
    pop bc                                        ; $4663: $c1

jr_0d6_4664:
    inc b                                         ; $4664: $04
    jp nz, Jump_000_0500                          ; $4665: $c2 $00 $05

    db $10                                        ; $4668: $10
    xor h                                         ; $4669: $ac
    nop                                           ; $466a: $00
    ld a, a                                       ; $466b: $7f
    ld a, a                                       ; $466c: $7f
    ccf                                           ; $466d: $3f
    ccf                                           ; $466e: $3f
    rrca                                          ; $466f: $0f
    rrca                                          ; $4670: $0f
    ld b, $06                                     ; $4671: $06 $06
    nop                                           ; $4673: $00
    ld bc, $4260                                  ; $4674: $01 $60 $42
    or c                                          ; $4677: $b1
    and h                                         ; $4678: $a4
    ld e, d                                       ; $4679: $5a
    ret                                           ; $467a: $c9


    inc [hl]                                      ; $467b: $34
    nop                                           ; $467c: $00
    di                                            ; $467d: $f3
    di                                            ; $467e: $f3
    add e                                         ; $467f: $83
    adc e                                         ; $4680: $8b
    rla                                           ; $4681: $17
    ld b, a                                       ; $4682: $47
    rst $20                                       ; $4683: $e7
    rlca                                          ; $4684: $07
    nop                                           ; $4685: $00
    dec de                                        ; $4686: $1b
    add e                                         ; $4687: $83
    ld h, a                                       ; $4688: $67
    rla                                           ; $4689: $17
    adc a                                         ; $468a: $8f
    ld l, a                                       ; $468b: $6f
    rra                                           ; $468c: $1f
    sbc a                                         ; $468d: $9f
    nop                                           ; $468e: $00
    ld a, [c]                                     ; $468f: $f2
    ldh a, [$e4]                                  ; $4690: $f0 $e4

jr_0d6_4692:
    pop hl                                        ; $4692: $e1
    push de                                       ; $4693: $d5
    ret nz                                        ; $4694: $c0

    and h                                         ; $4695: $a4
    add c                                         ; $4696: $81
    nop                                           ; $4697: $00
    ld b, b                                       ; $4698: $40
    inc d                                         ; $4699: $14
    ld b, d                                       ; $469a: $42
    jr @+$54                                      ; $469b: $18 $52

    ld [$1248], sp                                ; $469d: $08 $48 $12
    nop                                           ; $46a0: $00
    ld c, b                                       ; $46a1: $48
    add d                                         ; $46a2: $82
    db $f4                                        ; $46a3: $f4
    ld bc, $b04a                                  ; $46a4: $01 $4a $b0
    ld b, d                                       ; $46a7: $42
    add hl, bc                                    ; $46a8: $09
    nop                                           ; $46a9: $00
    ld c, c                                       ; $46aa: $49
    sub h                                         ; $46ab: $94
    ld c, l                                       ; $46ac: $4d
    nop                                           ; $46ad: $00
    inc a                                         ; $46ae: $3c
    add c                                         ; $46af: $81
    sbc h                                         ; $46b0: $9c
    ld [hl+], a                                   ; $46b1: $22
    nop                                           ; $46b2: $00
    jp nc, Jump_000_1429                          ; $46b3: $d2 $29 $14

    ld [bc], a                                    ; $46b6: $02
    ret nz                                        ; $46b7: $c0

    jr nz, jr_0d6_46fa                            ; $46b8: $20 $40

    stop                                          ; $46ba: $10 $00
    ld b, b                                       ; $46bc: $40
    xor c                                         ; $46bd: $a9
    add c                                         ; $46be: $81
    ld [hl-], a                                   ; $46bf: $32
    add b                                         ; $46c0: $80
    ld d, e                                       ; $46c1: $53
    pop bc                                        ; $46c2: $c1
    ld a, [hl+]                                   ; $46c3: $2a
    nop                                           ; $46c4: $00
    ld l, a                                       ; $46c5: $6f
    rrca                                          ; $46c6: $0f
    rla                                           ; $46c7: $17
    rlca                                          ; $46c8: $07
    dec hl                                        ; $46c9: $2b
    ld b, e                                       ; $46ca: $43
    ld d, l                                       ; $46cb: $55
    and c                                         ; $46cc: $a1
    ld [$50aa], sp                                ; $46cd: $08 $aa $50
    ld d, d                                       ; $46d0: $52
    xor b                                         ; $46d1: $a8
    inc b                                         ; $46d2: $04
    ld [$8da0], sp                                ; $46d3: $08 $a0 $8d
    xor b                                         ; $46d6: $a8
    nop                                           ; $46d7: $00
    add l                                         ; $46d8: $85
    and h                                         ; $46d9: $a4
    adc d                                         ; $46da: $8a
    ret nc                                        ; $46db: $d0

    add $d4                                       ; $46dc: $c6 $d4
    ret nz                                        ; $46de: $c0

    ret nc                                        ; $46df: $d0

    nop                                           ; $46e0: $00
    ret nz                                        ; $46e1: $c0

    and $e8                                       ; $46e2: $e6 $e8
    db $ec                                        ; $46e4: $ec
    ld [c], a                                     ; $46e5: $e2
    inc a                                         ; $46e6: $3c
    ld b, d                                       ; $46e7: $42
    ld c, h                                       ; $46e8: $4c
    nop                                           ; $46e9: $00
    ld [de], a                                    ; $46ea: $12
    inc c                                         ; $46eb: $0c
    and d                                         ; $46ec: $a2
    add hl, de                                    ; $46ed: $19
    call nz, $8102                                ; $46ee: $c4 $02 $81
    ld c, $00                                     ; $46f1: $0e $00
    ld d, c                                       ; $46f3: $51
    ld c, $91                                     ; $46f4: $0e $91
    ld e, $20                                     ; $46f6: $1e $20
    ret nz                                        ; $46f8: $c0

    add hl, hl                                    ; $46f9: $29

jr_0d6_46fa:
    ld h, b                                       ; $46fa: $60
    nop                                           ; $46fb: $00
    adc l                                         ; $46fc: $8d
    ld h, b                                       ; $46fd: $60
    adc h                                         ; $46fe: $8c
    ld h, b                                       ; $46ff: $60
    ld d, $40                                     ; $4700: $16 $40
    dec hl                                        ; $4702: $2b
    ld b, b                                       ; $4703: $40
    nop                                           ; $4704: $00
    ld a, [de]                                    ; $4705: $1a
    ld b, b                                       ; $4706: $40
    add hl, de                                    ; $4707: $19
    jp nz, $a524                                  ; $4708: $c2 $24 $a5

    ld d, c                                       ; $470b: $51
    ld d, l                                       ; $470c: $55
    nop                                           ; $470d: $00
    and c                                         ; $470e: $a1
    and l                                         ; $470f: $a5
    ld d, c                                       ; $4710: $51
    dec bc                                        ; $4711: $0b
    ld h, e                                       ; $4712: $63
    dec bc                                        ; $4713: $0b
    inc bc                                        ; $4714: $03
    ld c, e                                       ; $4715: $4b
    nop                                           ; $4716: $00
    and e                                         ; $4717: $a3
    rst $20                                       ; $4718: $e7
    rla                                           ; $4719: $17
    ld [hl], a                                    ; $471a: $77
    add a                                         ; $471b: $87
    add sp, -$1a                                  ; $471c: $e8 $e6
    add sp, $00                                   ; $471e: $e8 $00
    push hl                                       ; $4720: $e5
    ldh [$ec], a                                  ; $4721: $e0 $ec
    ldh a, [$f0]                                  ; $4723: $f0 $f0
    ld a, [$faf8]                                 ; $4725: $fa $f8 $fa
    nop                                           ; $4728: $00
    ld hl, sp-$05                                 ; $4729: $f8 $fb
    ld hl, sp-$04                                 ; $472b: $f8 $fc
    db $fc                                        ; $472d: $fc
    inc e                                         ; $472e: $1c
    add d                                         ; $472f: $82
    add hl, de                                    ; $4730: $19
    nop                                           ; $4731: $00
    ld b, b                                       ; $4732: $40
    ld hl, $4244                                  ; $4733: $21 $44 $42
    sbc c                                         ; $4736: $99
    ld [bc], a                                    ; $4737: $02
    ld sp, hl                                     ; $4738: $f9
    nop                                           ; $4739: $00
    nop                                           ; $473a: $00
    nop                                           ; $473b: $00
    rst $38                                       ; $473c: $ff
    nop                                           ; $473d: $00
    nop                                           ; $473e: $00
    nop                                           ; $473f: $00
    adc a                                         ; $4740: $8f
    ld d, b                                       ; $4741: $50
    ld [bc], a                                    ; $4742: $02
    ld bc, $30a5                                  ; $4743: $01 $a5 $30
    ld c, e                                       ; $4746: $4b
    ld h, b                                       ; $4747: $60
    dec de                                        ; $4748: $1b
    nop                                           ; $4749: $00
    or c                                          ; $474a: $b1
    db $10                                        ; $474b: $10
    jr jr_0d6_474e                                ; $474c: $18 $00

jr_0d6_474e:
    daa                                           ; $474e: $27
    ld d, a                                       ; $474f: $57
    add a                                         ; $4750: $87
    scf                                           ; $4751: $37
    rlca                                          ; $4752: $07
    and a                                         ; $4753: $a7
    rrca                                          ; $4754: $0f
    adc a                                         ; $4755: $8f
    nop                                           ; $4756: $00
    rra                                           ; $4757: $1f
    rra                                           ; $4758: $1f
    ld e, a                                       ; $4759: $5f
    rra                                           ; $475a: $1f
    rst $18                                       ; $475b: $df
    rra                                           ; $475c: $1f
    ccf                                           ; $475d: $3f
    ccf                                           ; $475e: $3f
    nop                                           ; $475f: $00
    ld bc, $00f4                                  ; $4760: $01 $f4 $00
    ld b, b                                       ; $4763: $40
    rst $38                                       ; $4764: $ff
    ld bc, $fc00                                  ; $4765: $01 $00 $fc
    db $fc                                        ; $4768: $fc
    ld sp, hl                                     ; $4769: $f9
    ld a, [$f5f2]                                 ; $476a: $fa $f2 $f5
    nop                                           ; $476d: $00
    db $e4                                        ; $476e: $e4
    db $eb                                        ; $476f: $eb
    ret                                           ; $4770: $c9


    jp nc, $d4c2                                  ; $4771: $d2 $c2 $d4

    ldh [$e0], a                                  ; $4774: $e0 $e0
    nop                                           ; $4776: $00
    ld [$4616], sp                                ; $4777: $08 $16 $46
    and c                                         ; $477a: $a1
    pop af                                        ; $477b: $f1
    ld a, [bc]                                    ; $477c: $0a
    inc e                                         ; $477d: $1c
    ld hl, $f600                                  ; $477e: $21 $00 $f6
    ld [$1a01], sp                                ; $4781: $08 $01 $1a
    ld a, b                                       ; $4784: $78
    add l                                         ; $4785: $85
    ld a, a                                       ; $4786: $7f
    ld a, a                                       ; $4787: $7f
    nop                                           ; $4788: $00
    rra                                           ; $4789: $1f
    rra                                           ; $478a: $1f
    ld bc, $9861                                  ; $478b: $01 $61 $98
    inc h                                         ; $478e: $24
    rst $08                                       ; $478f: $cf
    jr nc, jr_0d6_4794                            ; $4790: $30 $02

jr_0d6_4792:
    inc b                                         ; $4792: $04
    db $d3                                        ; $4793: $d3

jr_0d6_4794:
    ld b, b                                       ; $4794: $40
    ld [hl], $05                                  ; $4795: $36 $05
    ld b, d                                       ; $4797: $42
    jr nc, jr_0d6_47a2                            ; $4798: $30 $08

    rst $38                                       ; $479a: $ff
    nop                                           ; $479b: $00
    rst $38                                       ; $479c: $ff
    ld a, a                                       ; $479d: $7f
    ld a, a                                       ; $479e: $7f
    ccf                                           ; $479f: $3f
    cp a                                          ; $47a0: $bf
    sbc a                                         ; $47a1: $9f

jr_0d6_47a2:
    ld e, a                                       ; $47a2: $5f
    ld c, a                                       ; $47a3: $4f
    nop                                           ; $47a4: $00
    cpl                                           ; $47a5: $2f
    daa                                           ; $47a6: $27
    rla                                           ; $47a7: $17
    ret nz                                        ; $47a8: $c0

jr_0d6_47a9:
    push de                                       ; $47a9: $d5
    add b                                         ; $47aa: $80
    add b                                         ; $47ab: $80
    dec sp                                        ; $47ac: $3b
    nop                                           ; $47ad: $00
    ld b, h                                       ; $47ae: $44
    add c                                         ; $47af: $81
    add [hl]                                      ; $47b0: $86
    ld b, b                                       ; $47b1: $40
    add hl, de                                    ; $47b2: $19
    ld c, b                                       ; $47b3: $48
    inc b                                         ; $47b4: $04
    ld c, b                                       ; $47b5: $48
    nop                                           ; $47b6: $00
    inc bc                                        ; $47b7: $03
    ld b, d                                       ; $47b8: $42
    dec d                                         ; $47b9: $15
    call nz, Call_000_082a                        ; $47ba: $c4 $2a $08
    ld sp, $0080                                  ; $47bd: $31 $80 $00
    ld c, d                                       ; $47c0: $4a
    ret nz                                        ; $47c1: $c0

    inc h                                         ; $47c2: $24
    ld h, b                                       ; $47c3: $60
    sub b                                         ; $47c4: $90
    jr nc, @+$0a                                  ; $47c5: $30 $08

    jr jr_0d6_47c9                                ; $47c7: $18 $00

jr_0d6_47c9:
    nop                                           ; $47c9: $00
    inc h                                         ; $47ca: $24
    adc b                                         ; $47cb: $88
    db $10                                        ; $47cc: $10
    add hl, hl                                    ; $47cd: $29
    jr nz, jr_0d6_4810                            ; $47ce: $20 $40

    ld d, b                                       ; $47d0: $50
    nop                                           ; $47d1: $00
    add l                                         ; $47d2: $85
    ld b, h                                       ; $47d3: $44
    jr z, jr_0d6_4792                             ; $47d4: $28 $bc

    ld [bc], a                                    ; $47d6: $02
    ld d, h                                       ; $47d7: $54
    adc d                                         ; $47d8: $8a
    ld [hl], h                                    ; $47d9: $74
    nop                                           ; $47da: $00
    ld [bc], a                                    ; $47db: $02
    inc h                                         ; $47dc: $24
    ld c, d                                       ; $47dd: $4a
    adc e                                         ; $47de: $8b
    ld d, e                                       ; $47df: $53
    ld l, e                                       ; $47e0: $6b
    add e                                         ; $47e1: $83
    inc hl                                        ; $47e2: $23
    nop                                           ; $47e3: $00
    ld e, e                                       ; $47e4: $5b
    ld de, $12a1                                  ; $47e5: $11 $a1 $12
    ld c, b                                       ; $47e8: $48
    ld [de], a                                    ; $47e9: $12
    adc b                                         ; $47ea: $88
    ld [de], a                                    ; $47eb: $12
    nop                                           ; $47ec: $00
    ld l, b                                       ; $47ed: $68
    ld [hl-], a                                   ; $47ee: $32
    adc b                                         ; $47ef: $88
    and d                                         ; $47f0: $a2
    add h                                         ; $47f1: $84
    and b                                         ; $47f2: $a0
    add l                                         ; $47f3: $85
    ld bc, $4200                                  ; $47f4: $01 $00 $42
    inc bc                                        ; $47f7: $03
    and b                                         ; $47f8: $a0
    ld [de], a                                    ; $47f9: $12
    add c                                         ; $47fa: $81
    sub d                                         ; $47fb: $92
    nop                                           ; $47fc: $00
    xor d                                         ; $47fd: $aa
    nop                                           ; $47fe: $00
    jr nz, jr_0d6_47a9                            ; $47ff: $20 $a8

    inc hl                                        ; $4801: $23
    ld [hl+], a                                   ; $4802: $22
    ld d, h                                       ; $4803: $54
    ld bc, $100a                                  ; $4804: $01 $0a $10
    nop                                           ; $4807: $00
    dec h                                         ; $4808: $25
    ld [$0452], sp                                ; $4809: $08 $52 $04
    ld l, c                                       ; $480c: $69
    ld [bc], a                                    ; $480d: $02
    inc [hl]                                      ; $480e: $34
    nop                                           ; $480f: $00

jr_0d6_4810:
    nop                                           ; $4810: $00
    ld a, [de]                                    ; $4811: $1a
    nop                                           ; $4812: $00
    dec l                                         ; $4813: $2d
    ld [$0014], sp                                ; $4814: $08 $14 $00
    nop                                           ; $4817: $00
    nop                                           ; $4818: $00
    nop                                           ; $4819: $00
    jr z, jr_0d6_481c                             ; $481a: $28 $00

jr_0d6_481c:
    ld de, $2800                                  ; $481c: $11 $00 $28
    dec b                                         ; $481f: $05
    ld [de], a                                    ; $4820: $12
    ld c, d                                       ; $4821: $4a
    nop                                           ; $4822: $00
    dec b                                         ; $4823: $05
    jr nz, jr_0d6_4876                            ; $4824: $20 $50

    ld hl, $6559                                  ; $4826: $21 $59 $65

jr_0d6_4829:
    ld de, $0045                                  ; $4829: $11 $45 $00
    and c                                         ; $482c: $a1
    adc e                                         ; $482d: $8b
    ld b, e                                       ; $482e: $43
    dec bc                                        ; $482f: $0b

Call_0d6_4830:
Jump_0d6_4830:
    inc bc                                        ; $4830: $03
    ld c, e                                       ; $4831: $4b
    and e                                         ; $4832: $a3
    rlca                                          ; $4833: $07
    nop                                           ; $4834: $00
    rlca                                          ; $4835: $07
    ld d, a                                       ; $4836: $57
    add a                                         ; $4837: $87
    ld [hl+], a                                   ; $4838: $22
    and l                                         ; $4839: $a5
    ld b, h                                       ; $483a: $44
    adc d                                         ; $483b: $8a
    jr z, jr_0d6_483e                             ; $483c: $28 $00

jr_0d6_483e:
    ld d, h                                       ; $483e: $54
    add b                                         ; $483f: $80

jr_0d6_4840:
    cp c                                          ; $4840: $b9
    jp nz, $fac0                                  ; $4841: $c2 $c0 $fa

    ld hl, sp-$05                                 ; $4844: $f8 $fb
    nop                                           ; $4846: $00
    ld hl, sp-$04                                 ; $4847: $f8 $fc
    db $fc                                        ; $4849: $fc
    nop                                           ; $484a: $00
    dec d                                         ; $484b: $15
    ld bc, $010c                                  ; $484c: $01 $0c $01
    nop                                           ; $484f: $00
    sub h                                         ; $4850: $94
    nop                                           ; $4851: $00
    add hl, bc                                    ; $4852: $09
    nop                                           ; $4853: $00
    add l                                         ; $4854: $85
    nop                                           ; $4855: $00
    nop                                           ; $4856: $00
    rst $38                                       ; $4857: $ff
    add b                                         ; $4858: $80
    dec sp                                        ; $4859: $3b
    nop                                           ; $485a: $00
    rlca                                          ; $485b: $07
    ld [$423d], sp                                ; $485c: $08 $3d $42
    jr c, jr_0d6_4861                             ; $485f: $38 $00

jr_0d6_4861:
    jr nc, jr_0d6_4873                            ; $4861: $30 $10

    ld c, d                                       ; $4863: $4a
    jr c, jr_0d6_4867                             ; $4864: $38 $01

    db $10                                        ; $4866: $10

jr_0d6_4867:
    jr jr_0d6_4840                                ; $4867: $18 $d7

    rlca                                          ; $4869: $07
    adc a                                         ; $486a: $8f
    ld c, a                                       ; $486b: $4f
    nop                                           ; $486c: $00
    xor a                                         ; $486d: $af
    rrca                                          ; $486e: $0f
    cpl                                           ; $486f: $2f
    adc a                                         ; $4870: $8f
    sbc a                                         ; $4871: $9f
    rra                                           ; $4872: $1f

jr_0d6_4873:
    ld e, a                                       ; $4873: $5f
    rra                                           ; $4874: $1f
    nop                                           ; $4875: $00

jr_0d6_4876:
    rst $18                                       ; $4876: $df
    rra                                           ; $4877: $1f
    ccf                                           ; $4878: $3f
    ccf                                           ; $4879: $3f
    nop                                           ; $487a: $00
    ld bc, $00e0                                  ; $487b: $01 $e0 $00
    ld b, b                                       ; $487e: $40
    rst $38                                       ; $487f: $ff
    ld bc, $fe40                                  ; $4880: $01 $40 $fe
    cp $f9                                        ; $4883: $fe $f9
    ld hl, sp-$02                                 ; $4885: $f8 $fe
    cp $00                                        ; $4887: $fe $00
    db $fd                                        ; $4889: $fd
    db $fc                                        ; $488a: $fc
    or b                                          ; $488b: $b0
    or c                                          ; $488c: $b1
    adc h                                         ; $488d: $8c
    add b                                         ; $488e: $80
    pop de                                        ; $488f: $d1
    ret nz                                        ; $4890: $c0

    nop                                           ; $4891: $00
    jr nz, jr_0d6_489f                            ; $4892: $20 $0b

    jp Jump_000_0208                              ; $4894: $c3 $08 $02


    ld sp, $7f7f                                  ; $4897: $31 $7f $7f
    nop                                           ; $489a: $00
    cp a                                          ; $489b: $bf
    ccf                                           ; $489c: $3f
    ld c, e                                       ; $489d: $4b
    dec bc                                        ; $489e: $0b

jr_0d6_489f:
    inc sp                                        ; $489f: $33
    inc bc                                        ; $48a0: $03
    inc bc                                        ; $48a1: $03
    ld b, e                                       ; $48a2: $43
    ld [bc], a                                    ; $48a3: $02
    inc b                                         ; $48a4: $04
    or b                                          ; $48a5: $b0
    add e                                         ; $48a6: $83
    jr nz, jr_0d6_4829                            ; $48a7: $20 $80

    inc e                                         ; $48a9: $1c
    jr nc, jr_0d6_48f4                            ; $48aa: $30 $48

    ld a, a                                       ; $48ac: $7f
    nop                                           ; $48ad: $00
    ld a, a                                       ; $48ae: $7f
    sbc a                                         ; $48af: $9f
    rra                                           ; $48b0: $1f
    or $f0                                        ; $48b1: $f6 $f0
    ldh [$e1], a                                  ; $48b3: $e0 $e1
    sub b                                         ; $48b5: $90
    nop                                           ; $48b6: $00
    adc e                                         ; $48b7: $8b
    ld h, b                                       ; $48b8: $60
    rlca                                          ; $48b9: $07
    jr nz, jr_0d6_4913                            ; $48ba: $20 $57

    jr nc, jr_0d6_48c9                            ; $48bc: $30 $0b

    ld e, h                                       ; $48be: $5c
    nop                                           ; $48bf: $00
    ld bc, $0440                                  ; $48c0: $01 $40 $04
    add hl, bc                                    ; $48c3: $09
    jp nz, $8018                                  ; $48c4: $c2 $18 $80

    jr nz, jr_0d6_48c9                            ; $48c7: $20 $00

jr_0d6_48c9:
    rst $00                                       ; $48c9: $c7
    add hl, bc                                    ; $48ca: $09
    ret nc                                        ; $48cb: $d0

    dec de                                        ; $48cc: $1b
    ret nz                                        ; $48cd: $c0

    ld c, $d1                                     ; $48ce: $0e $d1
    dec b                                         ; $48d0: $05
    nop                                           ; $48d1: $00
    add sp, $00                                   ; $48d2: $e8 $00
    ld [hl], h                                    ; $48d4: $74
    jr nz, @-$77                                  ; $48d5: $20 $87

    jr nc, jr_0d6_48dc                            ; $48d7: $30 $03

    ld [$c700], sp                                ; $48d9: $08 $00 $c7

jr_0d6_48dc:
    jr nz, jr_0d6_48f5                            ; $48dc: $20 $17

    or b                                          ; $48de: $b0
    rlca                                          ; $48df: $07
    ldh [rNR22], a                                ; $48e0: $e0 $17
    ld b, b                                       ; $48e2: $40
    nop                                           ; $48e3: $00
    cpl                                           ; $48e4: $2f
    nop                                           ; $48e5: $00
    ld e, h                                       ; $48e6: $5c
    ld l, a                                       ; $48e7: $6f
    rrca                                          ; $48e8: $0f
    rlca                                          ; $48e9: $07
    add a                                         ; $48ea: $87
    inc de                                        ; $48eb: $13
    nop                                           ; $48ec: $00
    and e                                         ; $48ed: $a3
    dec c                                         ; $48ee: $0d
    pop bc                                        ; $48ef: $c1
    ld [$1ad4], sp                                ; $48f0: $08 $d4 $1a
    and b                                         ; $48f3: $a0

jr_0d6_48f4:
    ld [hl], d                                    ; $48f4: $72

jr_0d6_48f5:
    nop                                           ; $48f5: $00
    nop                                           ; $48f6: $00
    ld [bc], a                                    ; $48f7: $02
    ld b, b                                       ; $48f8: $40
    add b                                         ; $48f9: $80
    adc d                                         ; $48fa: $8a
    add c                                         ; $48fb: $81
    sbc d                                         ; $48fc: $9a
    add c                                         ; $48fd: $81
    nop                                           ; $48fe: $00
    sbc d                                         ; $48ff: $9a
    and b                                         ; $4900: $a0
    sbc h                                         ; $4901: $9c
    and h                                         ; $4902: $a4
    sbc b                                         ; $4903: $98
    sbc b                                         ; $4904: $98
    and h                                         ; $4905: $a4
    ret nz                                        ; $4906: $c0

    nop                                           ; $4907: $00
    jp $e2e0                                      ; $4908: $c3 $e0 $e2


    add e                                         ; $490b: $83
    nop                                           ; $490c: $00
    sbc h                                         ; $490d: $9c
    nop                                           ; $490e: $00
    sbc c                                         ; $490f: $99
    nop                                           ; $4910: $00
    ld [bc], a                                    ; $4911: $02
    ld h, l                                       ; $4912: $65

jr_0d6_4913:
    ld [bc], a                                    ; $4913: $02
    ld h, [hl]                                    ; $4914: $66
    ld bc, $0118                                  ; $4915: $01 $18 $01
    add hl, de                                    ; $4918: $19
    nop                                           ; $4919: $00
    nop                                           ; $491a: $00
    ld c, h                                       ; $491b: $4c
    ld bc, $0082                                  ; $491c: $01 $82 $00
    ld [hl], e                                    ; $491f: $73
    nop                                           ; $4920: $00
    inc sp                                        ; $4921: $33
    nop                                           ; $4922: $00
    add b                                         ; $4923: $80
    ld c, h                                       ; $4924: $4c

jr_0d6_4925:
    add b                                         ; $4925: $80
    call z, Call_000_3000                         ; $4926: $cc $00 $30
    nop                                           ; $4929: $00
    jr nc, jr_0d6_492c                            ; $492a: $30 $00

jr_0d6_492c:
    ld bc, $0064                                  ; $492c: $01 $64 $00
    dec b                                         ; $492f: $05
    and c                                         ; $4930: $a1
    dec b                                         ; $4931: $05
    or c                                          ; $4932: $b1
    ld bc, $b100                                  ; $4933: $01 $00 $b1
    ld c, e                                       ; $4936: $4b
    inc sp                                        ; $4937: $33
    ld c, e                                       ; $4938: $4b
    inc sp                                        ; $4939: $33
    inc sp                                        ; $493a: $33
    ld c, e                                       ; $493b: $4b
    rlca                                          ; $493c: $07
    nop                                           ; $493d: $00
    add a                                         ; $493e: $87
    rlca                                          ; $493f: $07
    rst $00                                       ; $4940: $c7
    add sp, -$20                                  ; $4941: $e8 $e0
    push af                                       ; $4943: $f5
    ldh a, [$f5]                                  ; $4944: $f0 $f5
    nop                                           ; $4946: $00
    ldh a, [$f4]                                  ; $4947: $f0 $f4
    ldh a, [$fa]                                  ; $4949: $f0 $fa
    ld hl, sp-$06                                 ; $494b: $f8 $fa
    ld hl, sp-$05                                 ; $494d: $f8 $fb
    nop                                           ; $494f: $00
    ld hl, sp-$04                                 ; $4950: $f8 $fc
    db $fc                                        ; $4952: $fc
    call z, $b001                                 ; $4953: $cc $01 $b0
    nop                                           ; $4956: $00
    ld sp, $0000                                  ; $4957: $31 $00 $00
    ld b, $01                                     ; $495a: $06 $01
    add $00                                       ; $495c: $c6 $00
    nop                                           ; $495e: $00
    nop                                           ; $495f: $00
    rst $38                                       ; $4960: $ff
    add b                                         ; $4961: $80
    inc b                                         ; $4962: $04
    nop                                           ; $4963: $00
    ld h, [hl]                                    ; $4964: $66
    nop                                           ; $4965: $00
    dec de                                        ; $4966: $1b
    nop                                           ; $4967: $00
    add hl, de                                    ; $4968: $19
    nop                                           ; $4969: $00
    ret nz                                        ; $496a: $c0

    ld b, d                                       ; $496b: $42
    nop                                           ; $496c: $00
    db $10                                        ; $496d: $10
    jr z, @+$19                                   ; $496e: $28 $17

    ld b, a                                       ; $4970: $47
    cpl                                           ; $4971: $2f
    rrca                                          ; $4972: $0f
    ld [bc], a                                    ; $4973: $02
    nop                                           ; $4974: $00
    adc a                                         ; $4975: $8f
    nop                                           ; $4976: $00
    ld e, a                                       ; $4977: $5f
    rra                                           ; $4978: $1f
    ld e, a                                       ; $4979: $5f
    rra                                           ; $497a: $1f
    rst $18                                       ; $497b: $df
    rra                                           ; $497c: $1f
    ccf                                           ; $497d: $3f
    ccf                                           ; $497e: $3f
    nop                                           ; $497f: $00
    ld bc, $00e1                                  ; $4980: $01 $e1 $00
    ld b, b                                       ; $4983: $40
    rst $38                                       ; $4984: $ff
    ld bc, $fe40                                  ; $4985: $01 $40 $fe
    cp $f8                                        ; $4988: $fe $f8
    ld hl, sp-$20                                 ; $498a: $f8 $e0
    ldh [rP1], a                                  ; $498c: $e0 $00
    jp nz, $84d9                                  ; $498e: $c2 $d9 $84

    and e                                         ; $4991: $a3
    add b                                         ; $4992: $80
    sbc l                                         ; $4993: $9d
    nop                                           ; $4994: $00
    ld l, e                                       ; $4995: $6b
    nop                                           ; $4996: $00
    db $10                                        ; $4997: $10
    ld h, l                                       ; $4998: $65
    jr nz, jr_0d6_4925                            ; $4999: $20 $8a

    nop                                           ; $499b: $00
    cp h                                          ; $499c: $bc
    inc bc                                        ; $499d: $03
    inc bc                                        ; $499e: $03
    nop                                           ; $499f: $00
    ld bc, $04d9                                  ; $49a0: $01 $d9 $04
    or d                                          ; $49a3: $b2
    ld [bc], a                                    ; $49a4: $02
    ld l, c                                       ; $49a5: $69
    nop                                           ; $49a6: $00
    push de                                       ; $49a7: $d5
    ld [bc], a                                    ; $49a8: $02
    inc b                                         ; $49a9: $04
    ld a, [bc]                                    ; $49aa: $0a
    ld [bc], a                                    ; $49ab: $02
    ld d, h                                       ; $49ac: $54
    ld [$30c2], sp                                ; $49ad: $08 $c2 $30
    ld [$807f], sp                                ; $49b0: $08 $7f $80
    ld bc, $3f00                                  ; $49b3: $01 $00 $3f
    cp a                                          ; $49b6: $bf
    sbc a                                         ; $49b7: $9f
    ld e, a                                       ; $49b8: $5f
    rra                                           ; $49b9: $1f
    ld e, a                                       ; $49ba: $5f
    rra                                           ; $49bb: $1f
    nop                                           ; $49bc: $00
    rst $18                                       ; $49bd: $df
    or $f0                                        ; $49be: $f6 $f0
    add sp, -$20                                  ; $49c0: $e8 $e0
    ret nc                                        ; $49c2: $d0

    call nz, Call_000_00a0                        ; $49c3: $c4 $a0 $00
    adc d                                         ; $49c6: $8a
    ld b, b                                       ; $49c7: $40
    dec d                                         ; $49c8: $15
    ld b, b                                       ; $49c9: $40
    ld c, $40                                     ; $49ca: $0e $40
    dec de                                        ; $49cc: $1b
    ld b, b                                       ; $49cd: $40
    nop                                           ; $49ce: $00
    rra                                           ; $49cf: $1f
    ld b, b                                       ; $49d0: $40
    xor l                                         ; $49d1: $ad
    add c                                         ; $49d2: $81
    ld b, b                                       ; $49d3: $40
    nop                                           ; $49d4: $00
    or d                                          ; $49d5: $b2
    jr nz, jr_0d6_49d8                            ; $49d6: $20 $00

jr_0d6_49d8:
    rla                                           ; $49d8: $17
    inc hl                                        ; $49d9: $23
    inc c                                         ; $49da: $0c
    rla                                           ; $49db: $17
    xor b                                         ; $49dc: $a8
    rlca                                          ; $49dd: $07
    sbc b                                         ; $49de: $98
    inc bc                                        ; $49df: $03
    ld [bc], a                                    ; $49e0: $02
    call z, Call_000_0890                         ; $49e1: $cc $90 $08
    ld [bc], a                                    ; $49e4: $02
    ret nz                                        ; $49e5: $c0

    inc [hl]                                      ; $49e6: $34
    ccf                                           ; $49e7: $3f
    nop                                           ; $49e8: $00
    ld c, d                                       ; $49e9: $4a
    nop                                           ; $49ea: $00
    jr nz, jr_0d6_4a1d                            ; $49eb: $20 $30

    add d                                         ; $49ed: $82
    add l                                         ; $49ee: $85
    ld c, b                                       ; $49ef: $48
    ld hl, sp+$04                                 ; $49f0: $f8 $04
    adc a                                         ; $49f2: $8f
    nop                                           ; $49f3: $00
    rrca                                          ; $49f4: $0f
    rla                                           ; $49f5: $17
    rst $00                                       ; $49f6: $c7
    dec bc                                        ; $49f7: $0b
    add e                                         ; $49f8: $83
    dec b                                         ; $49f9: $05
    ld hl, $0002                                  ; $49fa: $21 $02 $00
    sub b                                         ; $49fd: $90
    ld [bc], a                                    ; $49fe: $02
    cp b                                          ; $49ff: $b8
    ld [bc], a                                    ; $4a00: $02
    ld l, b                                       ; $4a01: $68
    ld [bc], a                                    ; $4a02: $02
    ld hl, sp-$5c                                 ; $4a03: $f8 $a4
    nop                                           ; $4a05: $00
    adc e                                         ; $4a06: $8b
    and d                                         ; $4a07: $a2
    adc l                                         ; $4a08: $8d
    and l                                         ; $4a09: $a5
    adc d                                         ; $4a0a: $8a
    jp nc, $d4c4                                  ; $4a0b: $d2 $c4 $d4

    nop                                           ; $4a0e: $00
    ret nz                                        ; $4a0f: $c0

    ret nc                                        ; $4a10: $d0

    pop bc                                        ; $4a11: $c1
    add sp, -$1d                                  ; $4a12: $e8 $e3
    add sp, -$1f                                  ; $4a14: $e8 $e1
    add c                                         ; $4a16: $81
    nop                                           ; $4a17: $00
    ld h, [hl]                                    ; $4a18: $66
    nop                                           ; $4a19: $00
    jp $8500                                      ; $4a1a: $c3 $00 $85


jr_0d6_4a1d:
    ld [bc], a                                    ; $4a1d: $02
    inc [hl]                                      ; $4a1e: $34
    ld de, $2a00                                  ; $4a1f: $11 $00 $2a
    jr jr_0d6_4a49                                ; $4a22: $18 $25

    sbc h                                         ; $4a24: $9c
    ld [bc], a                                    ; $4a25: $02
    ld c, [hl]                                    ; $4a26: $4e
    sub c                                         ; $4a27: $91
    ldh a, [rP1]                                  ; $4a28: $f0 $00
    ld [bc], a                                    ; $4a2a: $02
    ret z                                         ; $4a2b: $c8

    dec d                                         ; $4a2c: $15
    ld h, c                                       ; $4a2d: $61
    add b                                         ; $4a2e: $80
    ld [de], a                                    ; $4a2f: $12
    jp hl                                         ; $4a30: $e9


    dec b                                         ; $4a31: $05
    nop                                           ; $4a32: $00
    ld [hl], d                                    ; $4a33: $72
    add d                                         ; $4a34: $82
    dec b                                         ; $4a35: $05
    ld bc, $1092                                  ; $4a36: $01 $92 $10
    ld hl, $0055                                  ; $4a39: $21 $55 $00
    and c                                         ; $4a3c: $a1
    add l                                         ; $4a3d: $85
    ld [hl], c                                    ; $4a3e: $71
    ld d, l                                       ; $4a3f: $55
    and c                                         ; $4a40: $a1
    xor e                                         ; $4a41: $ab
    ld b, e                                       ; $4a42: $43
    ld c, e                                       ; $4a43: $4b
    nop                                           ; $4a44: $00
    and e                                         ; $4a45: $a3
    adc e                                         ; $4a46: $8b
    ld h, e                                       ; $4a47: $63
    ld d, a                                       ; $4a48: $57

jr_0d6_4a49:
    add a                                         ; $4a49: $87
    sub a                                         ; $4a4a: $97
    ld b, a                                       ; $4a4b: $47
    add sp, $00                                   ; $4a4c: $e8 $00
    pop hl                                        ; $4a4e: $e1
    db $f4                                        ; $4a4f: $f4
    pop af                                        ; $4a50: $f1
    db $f4                                        ; $4a51: $f4
    ldh a, [$f4]                                  ; $4a52: $f0 $f4
    ldh a, [$fa]                                  ; $4a54: $f0 $fa
    nop                                           ; $4a56: $00
    ld hl, sp-$06                                 ; $4a57: $f8 $fa
    ld hl, sp-$05                                 ; $4a59: $f8 $fb
    ld hl, sp-$04                                 ; $4a5b: $f8 $fc
    db $fc                                        ; $4a5d: $fc
    inc b                                         ; $4a5e: $04
    nop                                           ; $4a5f: $00
    rlc b                                         ; $4a60: $cb $00
    ld h, [hl]                                    ; $4a62: $66
    nop                                           ; $4a63: $00
    or d                                          ; $4a64: $b2
    nop                                           ; $4a65: $00
    ld a, b                                       ; $4a66: $78
    nop                                           ; $4a67: $00
    inc b                                         ; $4a68: $04
    dec e                                         ; $4a69: $1d
    nop                                           ; $4a6a: $00
    nop                                           ; $4a6b: $00
    rst $38                                       ; $4a6c: $ff
    nop                                           ; $4a6d: $00
    ld bc, $3400                                  ; $4a6e: $01 $00 $34
    ld b, b                                       ; $4a71: $40
    ld bc, $0096                                  ; $4a72: $01 $96 $00
    push bc                                       ; $4a75: $c5
    nop                                           ; $4a76: $00
    ld b, [hl]                                    ; $4a77: $46

jr_0d6_4a78:
    ret nz                                        ; $4a78: $c0

    dec l                                         ; $4a79: $2d
    db $10                                        ; $4a7a: $10
    jr jr_0d6_4a89                                ; $4a7b: $18 $0c

    ld d, a                                       ; $4a7d: $57
    add a                                         ; $4a7e: $87
    cpl                                           ; $4a7f: $2f
    rrca                                          ; $4a80: $0f
    ld [bc], a                                    ; $4a81: $02
    ld [$10bd], sp                                ; $4a82: $08 $bd $10
    rra                                           ; $4a85: $1f
    ccf                                           ; $4a86: $3f
    nop                                           ; $4a87: $00
    ccf                                           ; $4a88: $3f

jr_0d6_4a89:
    nop                                           ; $4a89: $00
    ld bc, $00f6                                  ; $4a8a: $01 $f6 $00
    nop                                           ; $4a8d: $00
    db $e3                                        ; $4a8e: $e3
    db $e3                                        ; $4a8f: $e3
    push de                                       ; $4a90: $d5
    ret                                           ; $4a91: $c9


    jp z, $92d4                                   ; $4a92: $ca $d4 $92

    and b                                         ; $4a95: $a0
    nop                                           ; $4a96: $00
    xor l                                         ; $4a97: $ad
    sbc h                                         ; $4a98: $9c
    sbc l                                         ; $4a99: $9d
    xor h                                         ; $4a9a: $ac
    xor [hl]                                      ; $4a9b: $ae
    sbc [hl]                                      ; $4a9c: $9e
    sbc b                                         ; $4a9d: $98
    xor b                                         ; $4a9e: $a8
    nop                                           ; $4a9f: $00
    cp $fe                                        ; $4aa0: $fe $fe
    db $fd                                        ; $4aa2: $fd
    db $fc                                        ; $4aa3: $fc
    ld a, [c]                                     ; $4aa4: $f2
    ldh a, [$ec]                                  ; $4aa5: $f0 $ec
    ldh [rP1], a                                  ; $4aa7: $e0 $00
    ld d, b                                       ; $4aa9: $50
    ld b, d                                       ; $4aaa: $42
    jr nz, jr_0d6_4aae                            ; $4aab: $20 $01

    or b                                          ; $4aad: $b0

jr_0d6_4aae:
    ld [$028c], sp                                ; $4aae: $08 $8c $02
    nop                                           ; $4ab1: $00
    ld a, a                                       ; $4ab2: $7f
    ld a, a                                       ; $4ab3: $7f
    cp a                                          ; $4ab4: $bf
    ccf                                           ; $4ab5: $3f
    ld c, e                                       ; $4ab6: $4b
    dec bc                                        ; $4ab7: $0b
    ld sp, $0001                                  ; $4ab8: $31 $01 $00
    ld [bc], a                                    ; $4abb: $02
    ld [$3482], sp                                ; $4abc: $08 $82 $34
    adc [hl]                                      ; $4abf: $8e
    nop                                           ; $4ac0: $00
    inc [hl]                                      ; $4ac1: $34
    ld b, b                                       ; $4ac2: $40
    ld [bc], a                                    ; $4ac3: $02
    rst $18                                       ; $4ac4: $df
    rst $18                                       ; $4ac5: $df
    rst $08                                       ; $4ac6: $cf
    rst $08                                       ; $4ac7: $cf
    rst $10                                       ; $4ac8: $d7
    rst $00                                       ; $4ac9: $c7
    ld [bc], a                                    ; $4aca: $02
    jr jr_0d6_4b24                                ; $4acb: $18 $57

    nop                                           ; $4acd: $00
    ld b, a                                       ; $4ace: $47
    and a                                         ; $4acf: $a7
    rlca                                          ; $4ad0: $07
    and [hl]                                      ; $4ad1: $a6
    sub b                                         ; $4ad2: $90
    sub b                                         ; $4ad3: $90
    and b                                         ; $4ad4: $a0
    and b                                         ; $4ad5: $a0
    nop                                           ; $4ad6: $00
    sub c                                         ; $4ad7: $91
    sub c                                         ; $4ad8: $91
    and b                                         ; $4ad9: $a0
    ld d, b                                       ; $4ada: $50
    nop                                           ; $4adb: $00
    ld d, b                                       ; $4adc: $50
    ld [$0048], sp                                ; $4add: $08 $48 $00
    db $10                                        ; $4ae0: $10
    ld c, b                                       ; $4ae1: $48
    inc b                                         ; $4ae2: $04
    ld [bc], a                                    ; $4ae3: $02
    jr nc, jr_0d6_4b5e                            ; $4ae4: $30 $78

    add h                                         ; $4ae6: $84
    call z, $0300                                 ; $4ae7: $cc $00 $03
    ld [bc], a                                    ; $4aea: $02
    ld sp, $4439                                  ; $4aeb: $31 $39 $44
    ld c, h                                       ; $4aee: $4c
    add d                                         ; $4aef: $82
    add [hl]                                      ; $4af0: $86
    nop                                           ; $4af1: $00
    nop                                           ; $4af2: $00
    nop                                           ; $4af3: $00
    ld [bc], a                                    ; $4af4: $02
    jr z, jr_0d6_4a78                             ; $4af5: $28 $81

    inc l                                         ; $4af7: $2c
    add d                                         ; $4af8: $82
    add hl, bc                                    ; $4af9: $09
    nop                                           ; $4afa: $00
    ld [hl], b                                    ; $4afb: $70
    ld d, h                                       ; $4afc: $54
    nop                                           ; $4afd: $00
    ld [hl], d                                    ; $4afe: $72
    ld [$6005], sp                                ; $4aff: $08 $05 $60
    ld [hl-], a                                   ; $4b02: $32
    nop                                           ; $4b03: $00
    add hl, bc                                    ; $4b04: $09
    inc h                                         ; $4b05: $24
    sub d                                         ; $4b06: $92
    ld d, a                                       ; $4b07: $57
    rlca                                          ; $4b08: $07
    sub a                                         ; $4b09: $97
    rlca                                          ; $4b0a: $07
    inc hl                                        ; $4b0b: $23
    nop                                           ; $4b0c: $00
    inc de                                        ; $4b0d: $13
    ld b, l                                       ; $4b0e: $45
    ld hl, $5082                                  ; $4b0f: $21 $82 $50
    ld [bc], a                                    ; $4b12: $02
    and b                                         ; $4b13: $a0
    ld [bc], a                                    ; $4b14: $02
    nop                                           ; $4b15: $00
    ld b, b                                       ; $4b16: $40
    ld [bc], a                                    ; $4b17: $02
    add b                                         ; $4b18: $80
    xor h                                         ; $4b19: $ac
    add b                                         ; $4b1a: $80
    and h                                         ; $4b1b: $a4

jr_0d6_4b1c:
    adc d                                         ; $4b1c: $8a
    and [hl]                                      ; $4b1d: $a6
    nop                                           ; $4b1e: $00
    add c                                         ; $4b1f: $81
    db $d3                                        ; $4b20: $d3
    call nz, $c2d1                                ; $4b21: $c4 $d1 $c2

jr_0d6_4b24:
    ret nc                                        ; $4b24: $d0

    pop bc                                        ; $4b25: $c1
    add sp, $00                                   ; $4b26: $e8 $00
    ldh [$e9], a                                  ; $4b28: $e0 $e9
    ldh [rP1], a                                  ; $4b2a: $e0 $00
    add hl, bc                                    ; $4b2c: $09
    nop                                           ; $4b2d: $00
    ld de, $0000                                  ; $4b2e: $11 $00 $00
    inc l                                         ; $4b31: $2c
    nop                                           ; $4b32: $00
    xor d                                         ; $4b33: $aa
    ret z                                         ; $4b34: $c8

    ld [hl-], a                                   ; $4b35: $32
    sbc b                                         ; $4b36: $98
    ld h, b                                       ; $4b37: $60
    jr jr_0d6_4b3a                                ; $4b38: $18 $00

jr_0d6_4b3a:
    ld [hl+], a                                   ; $4b3a: $22
    ret c                                         ; $4b3b: $d8

    nop                                           ; $4b3c: $00
    ld [$42a4], sp                                ; $4b3d: $08 $a4 $42
    ld de, $004c                                  ; $4b40: $11 $4c $00
    ld [hl+], a                                   ; $4b43: $22
    db $10                                        ; $4b44: $10
    ld c, [hl]                                    ; $4b45: $4e
    or b                                          ; $4b46: $b0
    dec c                                         ; $4b47: $0d
    ld hl, $4094                                  ; $4b48: $21 $94 $40
    nop                                           ; $4b4b: $00
    dec bc                                        ; $4b4c: $0b
    di                                            ; $4b4d: $f3
    ld [$8105], sp                                ; $4b4e: $08 $05 $81
    ld bc, $5171                                  ; $4b51: $01 $71 $51
    nop                                           ; $4b54: $00
    xor l                                         ; $4b55: $ad
    ld hl, $a1cd                                  ; $4b56: $21 $cd $a1
    ld c, l                                       ; $4b59: $4d
    inc bc                                        ; $4b5a: $03
    res 1, e                                      ; $4b5b: $cb $8b
    nop                                           ; $4b5d: $00

jr_0d6_4b5e:
    ld [hl], e                                    ; $4b5e: $73
    dec bc                                        ; $4b5f: $0b
    or e                                          ; $4b60: $b3
    db $eb                                        ; $4b61: $eb
    ldh [$f5], a                                  ; $4b62: $e0 $f5
    ldh a, [$f4]                                  ; $4b64: $f0 $f4
    nop                                           ; $4b66: $00
    ldh a, [$f4]                                  ; $4b67: $f0 $f4
    pop af                                        ; $4b69: $f1
    ld a, [$faf8]                                 ; $4b6a: $fa $f8 $fa
    ld hl, sp-$05                                 ; $4b6d: $f8 $fb
    nop                                           ; $4b6f: $00
    ld hl, sp-$04                                 ; $4b70: $f8 $fc
    db $fc                                        ; $4b72: $fc
    ld d, c                                       ; $4b73: $51
    inc c                                         ; $4b74: $0c
    add e                                         ; $4b75: $83
    jr c, jr_0d6_4b7a                             ; $4b76: $38 $02

    nop                                           ; $4b78: $00
    ld [hl], c                                    ; $4b79: $71

jr_0d6_4b7a:
    nop                                           ; $4b7a: $00
    xor d                                         ; $4b7b: $aa
    nop                                           ; $4b7c: $00
    sub h                                         ; $4b7d: $94
    nop                                           ; $4b7e: $00
    nop                                           ; $4b7f: $00
    rst $38                                       ; $4b80: $ff
    nop                                           ; $4b81: $00
    nop                                           ; $4b82: $00
    nop                                           ; $4b83: $00
    nop                                           ; $4b84: $00
    and d                                         ; $4b85: $a2
    ld d, c                                       ; $4b86: $51
    inc bc                                        ; $4b87: $03
    and h                                         ; $4b88: $a4
    ld [bc], a                                    ; $4b89: $02
    inc b                                         ; $4b8a: $04
    ld b, c                                       ; $4b8b: $41
    ld bc, $0084                                  ; $4b8c: $01 $84 $00
    ld a, [hl+]                                   ; $4b8f: $2a
    db $10                                        ; $4b90: $10
    jr jr_0d6_4b1c                                ; $4b91: $18 $89

    ld [hl], l                                    ; $4b93: $75
    nop                                           ; $4b94: $00
    ld d, c                                       ; $4b95: $51
    and l                                         ; $4b96: $a5
    and c                                         ; $4b97: $a1
    ld c, c                                       ; $4b98: $49
    ld bc, $03d5                                  ; $4b99: $01 $d5 $03
    xor e                                         ; $4b9c: $ab
    nop                                           ; $4b9d: $00
    rlca                                          ; $4b9e: $07
    ld b, a                                       ; $4b9f: $47
    adc a                                         ; $4ba0: $8f
    rrca                                          ; $4ba1: $0f
    ccf                                           ; $4ba2: $3f
    ccf                                           ; $4ba3: $3f
    nop                                           ; $4ba4: $00
    ld bc, $00e3                                  ; $4ba5: $01 $e3 $00
    ld b, b                                       ; $4ba8: $40
    rst $38                                       ; $4ba9: $ff
    ld bc, $fe40                                  ; $4baa: $01 $40 $fe
    cp $f9                                        ; $4bad: $fe $f9
    ld hl, sp-$02                                 ; $4baf: $f8 $fe
    cp $00                                        ; $4bb1: $fe $00
    db $fc                                        ; $4bb3: $fc
    db $fc                                        ; $4bb4: $fc
    pop af                                        ; $4bb5: $f1
    ldh a, [$ec]                                  ; $4bb6: $f0 $ec
    pop hl                                        ; $4bb8: $e1
    jp nc, Jump_000_00c0                          ; $4bb9: $d2 $c0 $00

    ld hl, $c002                                  ; $4bbc: $21 $02 $c0
    ld d, $10                                     ; $4bbf: $16 $10
    jr nz, jr_0d6_4c02                            ; $4bc1: $20 $3f

    ccf                                           ; $4bc3: $3f
    nop                                           ; $4bc4: $00
    sbc a                                         ; $4bc5: $9f
    ld e, a                                       ; $4bc6: $5f
    rrca                                          ; $4bc7: $0f
    rst $08                                       ; $4bc8: $cf
    rlca                                          ; $4bc9: $07
    add a                                         ; $4bca: $87
    inc hl                                        ; $4bcb: $23
    ld b, e                                       ; $4bcc: $43
    ld [bc], a                                    ; $4bcd: $02
    sub h                                         ; $4bce: $94
    ld h, b                                       ; $4bcf: $60
    inc bc                                        ; $4bd0: $03
    ldh a, [rP1]                                  ; $4bd1: $f0 $00
    ld h, h                                       ; $4bd3: $64
    jr nc, jr_0d6_4c1e                            ; $4bd4: $30 $48

    ld a, a                                       ; $4bd6: $7f
    nop                                           ; $4bd7: $00
    ld a, a                                       ; $4bd8: $7f
    sbc a                                         ; $4bd9: $9f
    rra                                           ; $4bda: $1f
    or $f0                                        ; $4bdb: $f6 $f0
    jp hl                                         ; $4bdd: $e9


    ldh [$d0], a                                  ; $4bde: $e0 $d0
    nop                                           ; $4be0: $00
    push bc                                       ; $4be1: $c5
    and l                                         ; $4be2: $a5
    adc d                                         ; $4be3: $8a
    ld b, b                                       ; $4be4: $40
    dec d                                         ; $4be5: $15
    ld d, l                                       ; $4be6: $55
    ld a, [bc]                                    ; $4be7: $0a
    ld b, b                                       ; $4be8: $40
    nop                                           ; $4be9: $00
    db $10                                        ; $4bea: $10
    ld c, a                                       ; $4beb: $4f
    nop                                           ; $4bec: $00
    nop                                           ; $4bed: $00
    ld b, l                                       ; $4bee: $45
    ld c, h                                       ; $4bef: $4c
    and c                                         ; $4bf0: $a1
    ld bc, $4000                                  ; $4bf1: $01 $00 $40
    ld b, h                                       ; $4bf4: $44
    adc b                                         ; $4bf5: $88
    add hl, bc                                    ; $4bf6: $09
    db $10                                        ; $4bf7: $10
    inc b                                         ; $4bf8: $04
    ld [hl+], a                                   ; $4bf9: $22
    ld [bc], a                                    ; $4bfa: $02
    nop                                           ; $4bfb: $00
    inc c                                         ; $4bfc: $0c
    call nz, Call_000_000a                        ; $4bfd: $c4 $0a $00
    ld [bc], a                                    ; $4c00: $02
    ld [bc], a                                    ; $4c01: $02

jr_0d6_4c02:
    or l                                          ; $4c02: $b5
    or b                                          ; $4c03: $b0
    nop                                           ; $4c04: $00
    ld [bc], a                                    ; $4c05: $02
    ld [bc], a                                    ; $4c06: $02
    ld bc, $1800                                  ; $4c07: $01 $00 $18
    jr z, jr_0d6_4c50                             ; $4c0a: $28 $44

    inc d                                         ; $4c0c: $14
    nop                                           ; $4c0d: $00
    add b                                         ; $4c0e: $80
    pop bc                                        ; $4c0f: $c1
    inc h                                         ; $4c10: $24
    ld l, a                                       ; $4c11: $6f
    rrca                                          ; $4c12: $0f
    sub a                                         ; $4c13: $97
    rlca                                          ; $4c14: $07
    dec bc                                        ; $4c15: $0b
    nop                                           ; $4c16: $00
    and e                                         ; $4c17: $a3
    and l                                         ; $4c18: $a5
    ld d, c                                       ; $4c19: $51
    ld [bc], a                                    ; $4c1a: $02
    xor b                                         ; $4c1b: $a8
    xor d                                         ; $4c1c: $aa
    ld d, b                                       ; $4c1d: $50

jr_0d6_4c1e:
    ld [bc], a                                    ; $4c1e: $02
    nop                                           ; $4c1f: $00
    nop                                           ; $4c20: $00
    ld hl, sp+$00                                 ; $4c21: $f8 $00
    sbc b                                         ; $4c23: $98
    add e                                         ; $4c24: $83
    and a                                         ; $4c25: $a7
    adc b                                         ; $4c26: $88
    and b                                         ; $4c27: $a0
    nop                                           ; $4c28: $00
    add b                                         ; $4c29: $80
    ret nc                                        ; $4c2a: $d0

    pop bc                                        ; $4c2b: $c1
    ret nc                                        ; $4c2c: $d0

    jp nz, $c1d0                                  ; $4c2d: $c2 $d0 $c1

    add sp, $00                                   ; $4c30: $e8 $00
    ld [c], a                                     ; $4c32: $e2
    add sp, -$20                                  ; $4c33: $e8 $e0
    ld [$c086], sp                                ; $4c35: $08 $86 $c0
    ld a, [bc]                                    ; $4c38: $0a
    ld [bc], a                                    ; $4c39: $02
    nop                                           ; $4c3a: $00
    ld [$5a00], sp                                ; $4c3b: $08 $00 $5a
    ld [$0092], sp                                ; $4c3e: $08 $92 $00
    ld a, $00                                     ; $4c41: $3e $00
    nop                                           ; $4c43: $00
    jr z, jr_0d6_4c47                             ; $4c44: $28 $01

    ld l, b                                       ; $4c46: $68

jr_0d6_4c47:
    nop                                           ; $4c47: $00
    and h                                         ; $4c48: $a4
    pop af                                        ; $4c49: $f1
    inc b                                         ; $4c4a: $04
    add b                                         ; $4c4b: $80
    nop                                           ; $4c4c: $00
    ld [hl], h                                    ; $4c4d: $74
    nop                                           ; $4c4e: $00
    add h                                         ; $4c4f: $84

jr_0d6_4c50:
    ld h, b                                       ; $4c50: $60
    sub [hl]                                      ; $4c51: $96
    nop                                           ; $4c52: $00
    ld [bc], a                                    ; $4c53: $02
    jp z, Jump_000_1100                           ; $4c54: $ca $00 $11

    sbc c                                         ; $4c57: $99
    ld b, b                                       ; $4c58: $40
    dec c                                         ; $4c59: $0d
    pop hl                                        ; $4c5a: $e1
    pop af                                        ; $4c5b: $f1
    add hl, bc                                    ; $4c5c: $09
    dec b                                         ; $4c5d: $05
    nop                                           ; $4c5e: $00
    ld bc, $430b                                  ; $4c5f: $01 $0b $43
    dec bc                                        ; $4c62: $0b
    add e                                         ; $4c63: $83
    dec bc                                        ; $4c64: $0b
    ld b, e                                       ; $4c65: $43
    rla                                           ; $4c66: $17
    nop                                           ; $4c67: $00
    rlca                                          ; $4c68: $07
    rla                                           ; $4c69: $17
    ld b, a                                       ; $4c6a: $47
    add sp, -$1e                                  ; $4c6b: $e8 $e2
    db $f4                                        ; $4c6d: $f4
    ldh a, [$f4]                                  ; $4c6e: $f0 $f4
    nop                                           ; $4c70: $00
    pop af                                        ; $4c71: $f1
    db $f4                                        ; $4c72: $f4
    pop af                                        ; $4c73: $f1
    ld a, [$faf8]                                 ; $4c74: $fa $f8 $fa
    ld hl, sp-$05                                 ; $4c77: $f8 $fb
    nop                                           ; $4c79: $00
    ld hl, sp-$04                                 ; $4c7a: $f8 $fc
    db $fc                                        ; $4c7c: $fc
    ld hl, $41d4                                  ; $4c7d: $21 $d4 $41
    xor h                                         ; $4c80: $ac
    ld bc, $d800                                  ; $4c81: $01 $00 $d8
    inc bc                                        ; $4c84: $03
    or b                                          ; $4c85: $b0
    ld b, $b1                                     ; $4c86: $06 $b1
    nop                                           ; $4c88: $00
    nop                                           ; $4c89: $00
    rst $38                                       ; $4c8a: $ff
    nop                                           ; $4c8b: $00
    nop                                           ; $4c8c: $00
    nop                                           ; $4c8d: $00
    nop                                           ; $4c8e: $00
    call z, $8c11                                 ; $4c8f: $cc $11 $8c
    ld hl, $0484                                  ; $4c92: $21 $84 $04
    ld [$8006], sp                                ; $4c95: $08 $06 $80
    ld [bc], a                                    ; $4c98: $02
    inc b                                         ; $4c99: $04
    db $10                                        ; $4c9a: $10
    jr @+$19                                      ; $4c9b: $18 $17

    rlca                                          ; $4c9d: $07
    jr nz, @+$31                                  ; $4c9e: $20 $2f

    rrca                                          ; $4ca0: $0f
    ld [bc], a                                    ; $4ca1: $02
    ld [$1f5f], sp                                ; $4ca2: $08 $5f $1f
    ld e, a                                       ; $4ca5: $5f
    rra                                           ; $4ca6: $1f
    rst $18                                       ; $4ca7: $df
    nop                                           ; $4ca8: $00
    rra                                           ; $4ca9: $1f
    ccf                                           ; $4caa: $3f
    ccf                                           ; $4cab: $3f
    nop                                           ; $4cac: $00
    ld bc, $00ed                                  ; $4cad: $01 $ed $00
    nop                                           ; $4cb0: $00
    rst $38                                       ; $4cb1: $ff
    rst $38                                       ; $4cb2: $ff
    ldh a, [$f0]                                  ; $4cb3: $f0 $f0
    db $e3                                        ; $4cb5: $e3
    db $e4                                        ; $4cb6: $e4
    ld a, [c]                                     ; $4cb7: $f2
    pop af                                        ; $4cb8: $f1
    nop                                           ; $4cb9: $00
    db $fc                                        ; $4cba: $fc
    db $fc                                        ; $4cbb: $fc
    rst $38                                       ; $4cbc: $ff
    rst $38                                       ; $4cbd: $ff
    ld hl, sp-$08                                 ; $4cbe: $f8 $f8
    ld [c], a                                     ; $4cc0: $e2
    pop hl                                        ; $4cc1: $e1
    nop                                           ; $4cc2: $00
    db $fc                                        ; $4cc3: $fc
    db $fc                                        ; $4cc4: $fc
    dec a                                         ; $4cc5: $3d
    inc a                                         ; $4cc6: $3c
    add b                                         ; $4cc7: $80
    nop                                           ; $4cc8: $00
    ld h, h                                       ; $4cc9: $64
    add b                                         ; $4cca: $80
    nop                                           ; $4ccb: $00
    ld d, b                                       ; $4ccc: $50
    inc hl                                        ; $4ccd: $23
    ld [$9032], sp                                ; $4cce: $08 $32 $90
    ld c, b                                       ; $4cd1: $48
    ld b, b                                       ; $4cd2: $40
    xor l                                         ; $4cd3: $ad
    nop                                           ; $4cd4: $00
    rra                                           ; $4cd5: $1f
    rra                                           ; $4cd6: $1f

jr_0d6_4cd7:
    ld c, a                                       ; $4cd7: $4f
    adc a                                         ; $4cd8: $8f
    daa                                           ; $4cd9: $27
    add a                                         ; $4cda: $87
    ld d, e                                       ; $4cdb: $53
    inc hl                                        ; $4cdc: $23
    nop                                           ; $4cdd: $00
    add hl, bc                                    ; $4cde: $09
    ld hl, $0814                                  ; $4cdf: $21 $14 $08
    ld b, c                                       ; $4ce2: $41
    xor b                                         ; $4ce3: $a8
    and b                                         ; $4ce4: $a0
    ld d, h                                       ; $4ce5: $54
    ld b, b                                       ; $4ce6: $40
    rst $38                                       ; $4ce7: $ff
    ld bc, $7f40                                  ; $4ce8: $01 $40 $7f
    ld a, a                                       ; $4ceb: $7f
    sbc a                                         ; $4cec: $9f
    rra                                           ; $4ced: $1f
    ret z                                         ; $4cee: $c8

    add $00                                       ; $4cef: $c6 $00
    and h                                         ; $4cf1: $a4
    sbc c                                         ; $4cf2: $99
    sub b                                         ; $4cf3: $90
    and e                                         ; $4cf4: $a3
    add b                                         ; $4cf5: $80
    adc [hl]                                      ; $4cf6: $8e
    nop                                           ; $4cf7: $00
    ld e, $00                                     ; $4cf8: $1e $00
    ld b, b                                       ; $4cfa: $40
    ld e, $40                                     ; $4cfb: $1e $40
    rra                                           ; $4cfd: $1f
    ld b, b                                       ; $4cfe: $40
    ld e, $01                                     ; $4cff: $1e $01
    ld b, b                                       ; $4d01: $40
    nop                                           ; $4d02: $00
    jr nz, jr_0d6_4d1e                            ; $4d03: $20 $19

    ld b, h                                       ; $4d05: $44
    ld [hl+], a                                   ; $4d06: $22
    add d                                         ; $4d07: $82
    ld d, h                                       ; $4d08: $54
    inc b                                         ; $4d09: $04
    or d                                          ; $4d0a: $b2
    nop                                           ; $4d0b: $00
    ld [bc], a                                    ; $4d0c: $02
    ld h, h                                       ; $4d0d: $64
    nop                                           ; $4d0e: $00
    sbc c                                         ; $4d0f: $99
    inc b                                         ; $4d10: $04
    ld [hl], d                                    ; $4d11: $72
    nop                                           ; $4d12: $00
    sbc c                                         ; $4d13: $99
    nop                                           ; $4d14: $00
    nop                                           ; $4d15: $00
    ld [hl+], a                                   ; $4d16: $22
    ld [hl+], a                                   ; $4d17: $22
    ld d, b                                       ; $4d18: $50
    ld [hl+], a                                   ; $4d19: $22
    adc b                                         ; $4d1a: $88
    xor b                                         ; $4d1b: $a8
    ld [bc], a                                    ; $4d1c: $02
    nop                                           ; $4d1d: $00

jr_0d6_4d1e:
    ld a, b                                       ; $4d1e: $78

jr_0d6_4d1f:
    add d                                         ; $4d1f: $82
    pop de                                        ; $4d20: $d1
    ld b, $20                                     ; $4d21: $06 $20
    ld d, h                                       ; $4d23: $54
    ld l, a                                       ; $4d24: $6f
    rrca                                          ; $4d25: $0f
    nop                                           ; $4d26: $00
    rla                                           ; $4d27: $17
    add a                                         ; $4d28: $87
    dec bc                                        ; $4d29: $0b
    db $e3                                        ; $4d2a: $e3
    dec b                                         ; $4d2b: $05
    pop af                                        ; $4d2c: $f1
    ld [bc], a                                    ; $4d2d: $02
    ld hl, sp-$80                                 ; $4d2e: $f8 $80
    ld [bc], a                                    ; $4d30: $02
    nop                                           ; $4d31: $00
    ld a, b                                       ; $4d32: $78
    add d                                         ; $4d33: $82
    jr c, jr_0d6_4cd7                             ; $4d34: $38 $a1

    adc h                                         ; $4d36: $8c
    and b                                         ; $4d37: $a0
    adc b                                         ; $4d38: $88
    nop                                           ; $4d39: $00
    and h                                         ; $4d3a: $a4
    add d                                         ; $4d3b: $82
    ret nc                                        ; $4d3c: $d0

    push bc                                       ; $4d3d: $c5
    ret nc                                        ; $4d3e: $d0

    add $d2                                       ; $4d3f: $c6 $d2
    call nz, $e900                                ; $4d41: $c4 $00 $e9
    ldh [$e8], a                                  ; $4d44: $e0 $e8
    ld [c], a                                     ; $4d46: $e2
    jr nz, jr_0d6_4d1f                            ; $4d47: $20 $d6

    ld b, b                                       ; $4d49: $40
    adc d                                         ; $4d4a: $8a
    nop                                           ; $4d4b: $00
    nop                                           ; $4d4c: $00
    ld [hl-], a                                   ; $4d4d: $32
    inc c                                         ; $4d4e: $0c
    ld [bc], a                                    ; $4d4f: $02
    ld [hl], h                                    ; $4d50: $74
    add d                                         ; $4d51: $82
    db $e4                                        ; $4d52: $e4
    ld a, [bc]                                    ; $4d53: $0a
    nop                                           ; $4d54: $00
    ld h, c                                       ; $4d55: $61
    nop                                           ; $4d56: $00
    cp a                                          ; $4d57: $bf
    nop                                           ; $4d58: $00
    ld bc, $c08e                                  ; $4d59: $01 $8e $c0
    jr nz, jr_0d6_4d5e                            ; $4d5c: $20 $00

jr_0d6_4d5e:
    ld l, d                                       ; $4d5e: $6a
    add h                                         ; $4d5f: $84
    ld l, c                                       ; $4d60: $69
    add d                                         ; $4d61: $82
    ld l, c                                       ; $4d62: $69
    add h                                         ; $4d63: $84
    push af                                       ; $4d64: $f5
    nop                                           ; $4d65: $00
    nop                                           ; $4d66: $00
    sub c                                         ; $4d67: $91
    ld a, [bc]                                    ; $4d68: $0a
    ld c, $60                                     ; $4d69: $0e $60
    ld b, l                                       ; $4d6b: $45
    sub c                                         ; $4d6c: $91
    add l                                         ; $4d6d: $85
    ld d, c                                       ; $4d6e: $51
    nop                                           ; $4d6f: $00
    dec b                                         ; $4d70: $05
    ld de, $438b                                  ; $4d71: $11 $8b $43
    ld c, e                                       ; $4d74: $4b
    inc hl                                        ; $4d75: $23
    dec bc                                        ; $4d76: $0b
    ld h, e                                       ; $4d77: $63
    nop                                           ; $4d78: $00
    rla                                           ; $4d79: $17
    ld b, a                                       ; $4d7a: $47
    rla                                           ; $4d7b: $17
    rlca                                          ; $4d7c: $07
    add sp, -$1d                                  ; $4d7d: $e8 $e3
    push af                                       ; $4d7f: $f5
    ldh a, [rP1]                                  ; $4d80: $f0 $00
    db $f4                                        ; $4d82: $f4
    ldh a, [$f4]                                  ; $4d83: $f0 $f4
    pop af                                        ; $4d85: $f1
    ld a, [$faf8]                                 ; $4d86: $fa $f8 $fa
    ld hl, sp+$00                                 ; $4d89: $f8 $00
    ei                                            ; $4d8b: $fb
    ld hl, sp-$04                                 ; $4d8c: $f8 $fc
    db $fc                                        ; $4d8e: $fc
    nop                                           ; $4d8f: $00
    ld b, b                                       ; $4d90: $40
    nop                                           ; $4d91: $00
    xor a                                         ; $4d92: $af
    nop                                           ; $4d93: $00
    adc b                                         ; $4d94: $88
    ld d, d                                       ; $4d95: $52
    db $10                                        ; $4d96: $10
    ld h, l                                       ; $4d97: $65
    nop                                           ; $4d98: $00
    push af                                       ; $4d99: $f5
    nop                                           ; $4d9a: $00
    nop                                           ; $4d9b: $00
    jr nz, @+$01                                  ; $4d9c: $20 $ff

    nop                                           ; $4d9e: $00
    ld bc, $9100                                  ; $4d9f: $01 $00 $91
    nop                                           ; $4da2: $00
    ld l, a                                       ; $4da3: $6f
    inc b                                         ; $4da4: $04
    sub c                                         ; $4da5: $91
    ld [$9802], sp                                ; $4da6: $08 $02 $98
    nop                                           ; $4da9: $00
    ld l, d                                       ; $4daa: $6a
    db $10                                        ; $4dab: $10
    jr @+$19                                      ; $4dac: $18 $17

    ld b, a                                       ; $4dae: $47
    cpl                                           ; $4daf: $2f
    nop                                           ; $4db0: $00
    rrca                                          ; $4db1: $0f
    cpl                                           ; $4db2: $2f
    adc a                                         ; $4db3: $8f
    cpl                                           ; $4db4: $2f
    adc a                                         ; $4db5: $8f
    ld e, a                                       ; $4db6: $5f
    rra                                           ; $4db7: $1f
    ld e, a                                       ; $4db8: $5f
    nop                                           ; $4db9: $00
    rra                                           ; $4dba: $1f
    rst $18                                       ; $4dbb: $df
    rra                                           ; $4dbc: $1f
    ccf                                           ; $4dbd: $3f
    ccf                                           ; $4dbe: $3f

    db $00, $01, $e2, $00, $44, $ff, $01, $40, $fe, $fe, $f8, $01, $00, $e4, $e0, $00
    db $d8, $c4, $84, $91, $90, $a0, $00, $0c, $00, $c0, $1c, $00, $33, $79, $79, $b2
    db $34, $00, $44, $02, $0d, $00, $46, $09, $e4, $00, $08, $00, $08, $00, $f4, $30
    db $18, $77, $77, $6b, $00, $63, $d3, $c3, $0b, $33, $13, $2b, $f2, $00, $f0, $e5
    db $e2, $c4, $c1, $a2, $80, $54, $08, $00, $5e, $00, $5f, $02, $00, $01, $42, $10
    db $00, $8a, $14, $42, $84, $12, $80, $16, $a0, $00, $10, $26, $00, $42, $24, $e0
    db $18, $1a, $00, $00, $e2, $00, $3a, $00, $60, $82, $f0, $00, $02, $f0, $00, $96
    db $00, $0b, $03, $93, $00, $0b, $c3, $03, $75, $01, $3a, $00, $ba, $01, $00, $b2
    db $00, $a2, $00, $af, $80, $02, $08, $00, $d0, $c0, $d6, $c0, $d4, $c3, $e8, $e2
    db $00, $e8, $e2, $40, $28, $00, $22, $10, $02, $00, $c8, $10, $04, $0a, $02, $35
    db $01, $0a, $00, $c2, $11, $62, $84, $01, $00, $c1, $18, $00, $c1, $0c, $40, $0a
    db $10, $05, $00, $90, $00, $b6, $00, $91, $09, $15, $a1, $69, $11, $00, $23, $43
    db $8b, $03, $6b, $03, $17, $07, $02, $17, $87, $e8, $e2, $f4, $f1, $02, $08, $fa
    db $00, $f8, $fa, $f8, $fb, $f8, $fc, $fc, $41, $00, $88, $00, $04, $02, $68, $03
    db $64, $00, $00, $a8, $00, $00, $ff, $00, $00, $00, $42, $00, $a4, $a0, $40, $00
    db $02, $00, $74, $00, $40, $f2, $10, $18, $17, $87, $af, $0f, $af, $0f, $00, $2f
    db $0f, $5f, $1f, $5f, $1f, $df, $1f, $00, $3f, $3f, $00, $01, $f4, $00, $30, $ff
    db $fc, $02, $00, $01, $00, $f8, $e0, $ff, $e7, $00, $fe, $fe, $f8, $f8, $7f, $7f
    db $9c, $9c, $00, $80, $80, $21, $2a, $cd, $d2, $06, $21, $00, $20, $40, $43, $94
    db $3f, $27, $3e, $26, $00, $49, $89, $07, $67, $41, $a9, $2c, $52, $00, $16, $29
    db $82, $45, $ff, $ff, $7f, $1f, $20, $ff, $9f, $32, $08, $1f, $07, $7f, $67, $1f
    db $00, $1f, $f6, $f0, $e0, $e0, $d0, $c2, $a0, $00, $8c, $40, $1c, $4c, $12, $4c
    db $12, $40, $00, $1e, $c1, $32, $81, $54, $85, $30, $24, $00, $51, $43, $a4, $10
    db $24, $23, $14, $80, $00, $48, $c5, $22, $24, $08, $00, $4c, $c4, $00, $2a, $ea
    db $01, $42, $a9, $82, $48, $02, $00, $04, $2f, $8f, $97, $07, $8b, $03, $05, $00
    db $81, $02, $30, $62, $10, $62, $18, $02, $00, $78, $a0, $80, $a2, $84, $a6, $88
    db $d4, $00, $c2, $d6, $c0, $d2, $c5, $e9, $e2, $ea, $00, $e1, $03, $18, $8c, $13
    db $40, $ac, $c0, $00, $21, $60, $84, $20, $58, $0c, $b2, $00, $00, $0d, $44, $a2
    db $86, $48, $0d, $10, $fa, $00, $01, $31, $ca, $00, $19, $00, $4c, $04, $00, $23
    db $05, $71, $05, $b1, $05, $31, $8b, $00, $23, $8b, $43, $4b, $03, $17, $87, $17
    db $00, $07, $e9, $e2, $f4, $f1, $f4, $f0, $f4, $00, $f0, $fa, $f8, $fa, $f8, $fb
    db $f8, $fc, $00, $fc, $00, $20, $20, $52, $42, $a5, $00, $00, $4a, $00, $90, $00
    db $00, $ff, $00, $00, $00, $00, $06, $08, $04, $4a, $0c, $22, $0c, $10, $50, $08
    db $94, $10, $18, $17, $47, $af, $0f, $00, $2f, $8f, $2f, $8f, $5f, $1f, $5f, $1f
    db $00, $df, $1f, $3f, $3f

    nop                                           ; $4fe4: $00
    ld bc, $00e9                                  ; $4fe5: $01 $e9 $00
    ld b, b                                       ; $4fe8: $40
    rst $38                                       ; $4fe9: $ff
    ld bc, $fe40                                  ; $4fea: $01 $40 $fe
    cp $f8                                        ; $4fed: $fe $f8
    ld sp, hl                                     ; $4fef: $f9
    ld hl, sp-$08                                 ; $4ff0: $f8 $f8
    nop                                           ; $4ff2: $00
    di                                            ; $4ff3: $f3
    db $f4                                        ; $4ff4: $f4
    ldh [$e0], a                                  ; $4ff5: $e0 $e0
    ld [c], a                                     ; $4ff7: $e2
    db $ed                                        ; $4ff8: $ed
    add a                                         ; $4ff9: $87
    add b                                         ; $4ffa: $80
    nop                                           ; $4ffb: $00
    ld a, [hl+]                                   ; $4ffc: $2a

jr_0d6_4ffd:
    nop                                           ; $4ffd: $00
    ld b, d                                       ; $4ffe: $42
    and h                                         ; $4fff: $a4
    adc c                                         ; $5000: $89
    ld b, b                                       ; $5001: $40
    ld a, [de]                                    ; $5002: $1a
    add hl, de                                    ; $5003: $19
    nop                                           ; $5004: $00
    add b                                         ; $5005: $80
    ld h, d                                       ; $5006: $62
    nop                                           ; $5007: $00
    jr @+$03                                      ; $5008: $18 $01

    ldh [rSC], a                                  ; $500a: $e0 $02
    ld sp, $4900                                  ; $500c: $31 $00 $49
    add h                                         ; $500f: $84
    dec b                                         ; $5010: $05
    jr nz, jr_0d6_4ffd                            ; $5011: $20 $ea

    ld bc, $7f7f                                  ; $5013: $01 $7f $7f
    nop                                           ; $5016: $00
    rst $38                                       ; $5017: $ff
    rst $38                                       ; $5018: $ff
    ld a, a                                       ; $5019: $7f
    ld a, a                                       ; $501a: $7f
    cp a                                          ; $501b: $bf
    ccf                                           ; $501c: $3f
    ld a, a                                       ; $501d: $7f
    ld a, a                                       ; $501e: $7f
    nop                                           ; $501f: $00
    ccf                                           ; $5020: $3f
    cp a                                          ; $5021: $bf
    rra                                           ; $5022: $1f
    ld e, a                                       ; $5023: $5f
    adc a                                         ; $5024: $8f
    cpl                                           ; $5025: $2f
    push af                                       ; $5026: $f5
    ldh a, [rP1]                                  ; $5027: $f0 $00
    jp hl                                         ; $5029: $e9


    ldh [$d0], a                                  ; $502a: $e0 $d0
    push bc                                       ; $502c: $c5
    and h                                         ; $502d: $a4
    adc b                                         ; $502e: $88
    ld c, d                                       ; $502f: $4a
    dec d                                         ; $5030: $15
    nop                                           ; $5031: $00
    ld d, l                                       ; $5032: $55
    ld a, [bc]                                    ; $5033: $0a
    ld c, d                                       ; $5034: $4a
    dec d                                         ; $5035: $15
    ld d, b                                       ; $5036: $50
    ld [$8229], sp                                ; $5037: $08 $29 $82
    nop                                           ; $503a: $00
    ld c, a                                       ; $503b: $4f
    and b                                         ; $503c: $a0
    ld b, b                                       ; $503d: $40
    jr z, jr_0d6_5080                             ; $503e: $28 $40

    rla                                           ; $5040: $17
    inc de                                        ; $5041: $13
    inc h                                         ; $5042: $24
    nop                                           ; $5043: $00
    jr nz, jr_0d6_5096                            ; $5044: $20 $50

    ld de, $086a                                  ; $5046: $11 $6a $08
    dec b                                         ; $5049: $05
    ld [c], a                                     ; $504a: $e2
    inc b                                         ; $504b: $04
    nop                                           ; $504c: $00
    push hl                                       ; $504d: $e5
    ld [bc], a                                    ; $504e: $02
    push bc                                       ; $504f: $c5
    ld [hl+], a                                   ; $5050: $22
    add c                                         ; $5051: $81
    ld b, d                                       ; $5052: $42
    ld bc, $0084                                  ; $5053: $01 $84 $00
    inc b                                         ; $5056: $04
    ld [bc], a                                    ; $5057: $02
    call nz, $e422                                ; $5058: $c4 $22 $e4
    ld [de], a                                    ; $505b: $12
    cpl                                           ; $505c: $2f
    adc a                                         ; $505d: $8f
    nop                                           ; $505e: $00
    rla                                           ; $505f: $17
    add a                                         ; $5060: $87
    inc bc                                        ; $5061: $03
    add e                                         ; $5062: $83
    dec h                                         ; $5063: $25
    ld de, $2852                                  ; $5064: $11 $52 $28
    nop                                           ; $5067: $00
    ld a, [hl+]                                   ; $5068: $2a
    ld d, b                                       ; $5069: $50
    ld d, d                                       ; $506a: $52
    xor b                                         ; $506b: $a8
    ld a, [hl+]                                   ; $506c: $2a
    db $10                                        ; $506d: $10
    and e                                         ; $506e: $a3
    add b                                         ; $506f: $80
    ld [bc], a                                    ; $5070: $02
    and b                                         ; $5071: $a0
    add a                                         ; $5072: $87
    and b                                         ; $5073: $a0
    adc h                                         ; $5074: $8c
    ret nc                                        ; $5075: $d0

    ret nz                                        ; $5076: $c0

    ld [bc], a                                    ; $5077: $02
    nop                                           ; $5078: $00
    pop bc                                        ; $5079: $c1
    nop                                           ; $507a: $00
    add sp, -$1f                                  ; $507b: $e8 $e1
    jp hl                                         ; $507d: $e9


    ld [c], a                                     ; $507e: $e2
    db $f4                                        ; $507f: $f4

jr_0d6_5080:
    ld [bc], a                                    ; $5080: $02
    ld a, [bc]                                    ; $5081: $0a
    pop af                                        ; $5082: $f1
    nop                                           ; $5083: $00
    nop                                           ; $5084: $00
    dec e                                         ; $5085: $1d
    ld [bc], a                                    ; $5086: $02
    ld [$c002], sp                                ; $5087: $08 $02 $c0
    add d                                         ; $508a: $82
    ld h, h                                       ; $508b: $64
    nop                                           ; $508c: $00
    add d                                         ; $508d: $82
    ld h, h                                       ; $508e: $64
    inc bc                                        ; $508f: $03
    db $e4                                        ; $5090: $e4
    ld h, h                                       ; $5091: $64
    sub e                                         ; $5092: $93
    jr z, jr_0d6_50da                             ; $5093: $28 $45

    nop                                           ; $5095: $00

jr_0d6_5096:
    ld [$00a0], sp                                ; $5096: $08 $a0 $00
    ret z                                         ; $5099: $c8

    nop                                           ; $509a: $00
    ld h, c                                       ; $509b: $61
    add hl, bc                                    ; $509c: $09
    add d                                         ; $509d: $82
    nop                                           ; $509e: $00
    add hl, sp                                    ; $509f: $39
    ld [bc], a                                    ; $50a0: $02
    nop                                           ; $50a1: $00
    inc bc                                        ; $50a2: $03
    dec b                                         ; $50a3: $05
    add c                                         ; $50a4: $81
    dec d                                         ; $50a5: $15
    pop bc                                        ; $50a6: $c1
    nop                                           ; $50a7: $00
    dec d                                         ; $50a8: $15
    ld bc, $c30b                                  ; $50a9: $01 $0b $c3
    ld l, e                                       ; $50ac: $6b
    add e                                         ; $50ad: $83
    db $eb                                        ; $50ae: $eb
    inc bc                                        ; $50af: $03
    nop                                           ; $50b0: $00
    rst $10                                       ; $50b1: $d7
    rlca                                          ; $50b2: $07
    rst $10                                       ; $50b3: $d7
    rlca                                          ; $50b4: $07
    add sp, -$1d                                  ; $50b5: $e8 $e3
    db $f4                                        ; $50b7: $f4
    pop af                                        ; $50b8: $f1
    add b                                         ; $50b9: $80
    ld [bc], a                                    ; $50ba: $02
    nop                                           ; $50bb: $00
    ldh a, [$fa]                                  ; $50bc: $f0 $fa
    ld hl, sp-$06                                 ; $50be: $f8 $fa
    ld hl, sp-$05                                 ; $50c0: $f8 $fb
    ld hl, sp+$00                                 ; $50c2: $f8 $00
    db $fc                                        ; $50c4: $fc
    db $fc                                        ; $50c5: $fc
    rrca                                          ; $50c6: $0f
    ret nz                                        ; $50c7: $c0

    rrca                                          ; $50c8: $0f
    ret nc                                        ; $50c9: $d0

    rrca                                          ; $50ca: $0f
    sub b                                         ; $50cb: $90
    nop                                           ; $50cc: $00
    rra                                           ; $50cd: $1f
    jr nz, jr_0d6_510e                            ; $50ce: $20 $3e

    pop bc                                        ; $50d0: $c1
    nop                                           ; $50d1: $00
    nop                                           ; $50d2: $00
    rst $38                                       ; $50d3: $ff
    nop                                           ; $50d4: $00
    add b                                         ; $50d5: $80
    ld bc, $9100                                  ; $50d6: $01 $00 $91
    inc b                                         ; $50d9: $04

jr_0d6_50da:
    and b                                         ; $50da: $a0
    inc e                                         ; $50db: $1c
    add b                                         ; $50dc: $80
    nop                                           ; $50dd: $00
    add d                                         ; $50de: $82
    ld hl, $3e00                                  ; $50df: $21 $00 $3e
    db $10                                        ; $50e2: $10
    jr jr_0d6_513c                                ; $50e3: $18 $57

    add a                                         ; $50e5: $87
    cpl                                           ; $50e6: $2f
    adc a                                         ; $50e7: $8f
    ld [bc], a                                    ; $50e8: $02
    nop                                           ; $50e9: $00
    nop                                           ; $50ea: $00
    rrca                                          ; $50eb: $0f
    ld e, a                                       ; $50ec: $5f
    rra                                           ; $50ed: $1f
    ld e, a                                       ; $50ee: $5f
    rra                                           ; $50ef: $1f
    rst $18                                       ; $50f0: $df
    rra                                           ; $50f1: $1f
    ccf                                           ; $50f2: $3f
    nop                                           ; $50f3: $00
    ccf                                           ; $50f4: $3f
    nop                                           ; $50f5: $00
    ld bc, $00e8                                  ; $50f6: $01 $e8 $00
    ld b, b                                       ; $50f9: $40
    rst $38                                       ; $50fa: $ff
    ld bc, $fe40                                  ; $50fb: $01 $40 $fe
    cp $f9                                        ; $50fe: $fe $f9
    ld hl, sp-$02                                 ; $5100: $f8 $fe
    cp $00                                        ; $5102: $fe $00
    db $fd                                        ; $5104: $fd
    db $fc                                        ; $5105: $fc
    ld a, [c]                                     ; $5106: $f2
    ldh a, [$ec]                                  ; $5107: $f0 $ec
    pop hl                                        ; $5109: $e1
    ret nz                                        ; $510a: $c0

    jp Jump_000_2000                              ; $510b: $c3 $00 $20


jr_0d6_510e:
    ld bc, $08c0                                  ; $510e: $01 $c0 $08
    ld [$7f07], sp                                ; $5111: $08 $07 $7f
    ld a, a                                       ; $5114: $7f
    nop                                           ; $5115: $00
    cp a                                          ; $5116: $bf
    ccf                                           ; $5117: $3f
    ld c, a                                       ; $5118: $4f
    rrca                                          ; $5119: $0f
    ld [hl], $86                                  ; $511a: $36 $86
    add hl, bc                                    ; $511c: $09
    ret nz                                        ; $511d: $c0

    ld [bc], a                                    ; $511e: $02
    inc b                                         ; $511f: $04
    or b                                          ; $5120: $b0
    ld b, c                                       ; $5121: $41
    ld a, [de]                                    ; $5122: $1a

jr_0d6_5123:
    nop                                           ; $5123: $00
    ld bc, $0830                                  ; $5124: $01 $30 $08
    ld a, a                                       ; $5127: $7f
    nop                                           ; $5128: $00
    ld a, a                                       ; $5129: $7f
    sbc a                                         ; $512a: $9f
    rra                                           ; $512b: $1f
    ld b, a                                       ; $512c: $47
    daa                                           ; $512d: $27
    rst $00                                       ; $512e: $c7
    rla                                           ; $512f: $17
    ld h, a                                       ; $5130: $67
    nop                                           ; $5131: $00
    rla                                           ; $5132: $17
    rst $08                                       ; $5133: $cf
    cpl                                           ; $5134: $2f
    or $f0                                        ; $5135: $f6 $f0
    add sp, -$20                                  ; $5137: $e8 $e0
    ret nc                                        ; $5139: $d0

    inc b                                         ; $513a: $04
    rst $00                                       ; $513b: $c7

jr_0d6_513c:
    and b                                         ; $513c: $a0
    adc [hl]                                      ; $513d: $8e
    ld b, b                                       ; $513e: $40
    rra                                           ; $513f: $1f
    ld [bc], a                                    ; $5140: $02
    nop                                           ; $5141: $00
    ld b, $00                                     ; $5142: $06 $00
    nop                                           ; $5144: $00
    add hl, bc                                    ; $5145: $09
    nop                                           ; $5146: $00
    ld [$1083], sp                                ; $5147: $08 $83 $10
    inc b                                         ; $514a: $04
    ld [hl+], a                                   ; $514b: $22
    ld [$0100], sp                                ; $514c: $08 $00 $01
    ld [hl+], a                                   ; $514f: $22
    sub l                                         ; $5150: $95
    dec b                                         ; $5151: $05
    or b                                          ; $5152: $b0
    ld [de], a                                    ; $5153: $12
    dec h                                         ; $5154: $25
    jr nz, jr_0d6_5157                            ; $5155: $20 $00

jr_0d6_5157:
    ld b, a                                       ; $5157: $47
    nop                                           ; $5158: $00
    ld [$39c4], sp                                ; $5159: $08 $c4 $39
    nop                                           ; $515c: $00
    dec b                                         ; $515d: $05
    ld b, b                                       ; $515e: $40
    nop                                           ; $515f: $00
    xor b                                         ; $5160: $a8
    and d                                         ; $5161: $a2
    nop                                           ; $5162: $00
    ld b, b                                       ; $5163: $40
    dec l                                         ; $5164: $2d
    nop                                           ; $5165: $00
    xor d                                         ; $5166: $aa
    call nz, Call_000_2000                        ; $5167: $c4 $00 $20
    rrca                                          ; $516a: $0f
    rst $08                                       ; $516b: $cf
    rla                                           ; $516c: $17
    ld b, a                                       ; $516d: $47
    dec hl                                        ; $516e: $2b
    ld b, e                                       ; $516f: $43
    dec h                                         ; $5170: $25
    db $10                                        ; $5171: $10
    sub c                                         ; $5172: $91
    ld [hl+], a                                   ; $5173: $22
    sub b                                         ; $5174: $90
    ld [bc], a                                    ; $5175: $02
    nop                                           ; $5176: $00
    db $10                                        ; $5177: $10
    ld b, d                                       ; $5178: $42
    jr nc, jr_0d6_5123                            ; $5179: $30 $a8

    nop                                           ; $517b: $00
    add b                                         ; $517c: $80
    sbc h                                         ; $517d: $9c
    add c                                         ; $517e: $81
    ld d, h                                       ; $517f: $54
    ld bc, $85b8                                  ; $5180: $01 $b8 $85
    adc b                                         ; $5183: $88
    nop                                           ; $5184: $00
    and e                                         ; $5185: $a3
    call nz, $e6c8                                ; $5186: $c4 $c8 $e6
    ldh [$e3], a                                  ; $5189: $e0 $e3
    ldh [rP1], a                                  ; $518b: $e0 $00
    nop                                           ; $518d: $00
    sub e                                         ; $518e: $93
    nop                                           ; $518f: $00
    inc e                                         ; $5190: $1c
    nop                                           ; $5191: $00
    ldh a, [rSC]                                  ; $5192: $f0 $02
    call nz, Call_000_0005                        ; $5194: $c4 $05 $00
    jp nc, $8902                                  ; $5197: $d2 $02 $89

    nop                                           ; $519a: $00
    inc h                                         ; $519b: $24
    jr nz, @+$4c                                  ; $519c: $20 $4a

    ld c, d                                       ; $519e: $4a
    nop                                           ; $519f: $00
    inc h                                         ; $51a0: $24
    dec b                                         ; $51a1: $05
    ld [bc], a                                    ; $51a2: $02
    ld b, d                                       ; $51a3: $42
    and h                                         ; $51a4: $a4
    dec h                                         ; $51a5: $25
    ld d, d                                       ; $51a6: $52
    ld [de], a                                    ; $51a7: $12
    nop                                           ; $51a8: $00
    inc h                                         ; $51a9: $24
    add b                                         ; $51aa: $80
    ld [de], a                                    ; $51ab: $12
    ld b, d                                       ; $51ac: $42
    xor b                                         ; $51ad: $a8
    jr nz, @+$44                                  ; $51ae: $20 $42

    dec b                                         ; $51b0: $05
    nop                                           ; $51b1: $00
    and c                                         ; $51b2: $a1
    ld b, l                                       ; $51b3: $45
    ld bc, $2105                                  ; $51b4: $01 $05 $21
    dec bc                                        ; $51b7: $0b
    inc hl                                        ; $51b8: $23
    dec bc                                        ; $51b9: $0b
    nop                                           ; $51ba: $00
    ld b, e                                       ; $51bb: $43
    dec bc                                        ; $51bc: $0b
    add e                                         ; $51bd: $83
    rla                                           ; $51be: $17
    rlca                                          ; $51bf: $07
    rla                                           ; $51c0: $17
    add a                                         ; $51c1: $87
    jp hl                                         ; $51c2: $e9


    nop                                           ; $51c3: $00
    ld [c], a                                     ; $51c4: $e2
    ldh a, [$f1]                                  ; $51c5: $f0 $f1
    db $f4                                        ; $51c7: $f4
    ldh a, [$f4]                                  ; $51c8: $f0 $f4
    pop af                                        ; $51ca: $f1
    ld a, [$f800]                                 ; $51cb: $fa $00 $f8
    ld a, [$fbf8]                                 ; $51ce: $fa $f8 $fb
    ld hl, sp-$04                                 ; $51d1: $f8 $fc
    db $fc                                        ; $51d3: $fc
    ld b, b                                       ; $51d4: $40
    ld bc, $8025                                  ; $51d5: $01 $25 $80
    ld b, d                                       ; $51d8: $42
    nop                                           ; $51d9: $00
    add hl, de                                    ; $51da: $19
    nop                                           ; $51db: $00
    db $fc                                        ; $51dc: $fc
    ld [bc], a                                    ; $51dd: $02
    nop                                           ; $51de: $00
    nop                                           ; $51df: $00
    nop                                           ; $51e0: $00
    rst $38                                       ; $51e1: $ff
    nop                                           ; $51e2: $00
    nop                                           ; $51e3: $00
    nop                                           ; $51e4: $00
    db $10                                        ; $51e5: $10
    ld bc, $0100                                  ; $51e6: $01 $00 $01
    and d                                         ; $51e9: $a2
    nop                                           ; $51ea: $00
    ld b, c                                       ; $51eb: $41
    nop                                           ; $51ec: $00
    xor d                                         ; $51ed: $aa
    nop                                           ; $51ee: $00
    ld d, c                                       ; $51ef: $51
    db $10                                        ; $51f0: $10
    jr jr_0d6_51f3                                ; $51f1: $18 $00

jr_0d6_51f3:
    rla                                           ; $51f3: $17
    rlca                                          ; $51f4: $07
    cpl                                           ; $51f5: $2f
    adc a                                         ; $51f6: $8f
    cpl                                           ; $51f7: $2f
    rrca                                          ; $51f8: $0f
    cpl                                           ; $51f9: $2f
    rrca                                          ; $51fa: $0f
    nop                                           ; $51fb: $00
    ld e, a                                       ; $51fc: $5f
    rra                                           ; $51fd: $1f
    ld e, a                                       ; $51fe: $5f
    rra                                           ; $51ff: $1f
    rst $18                                       ; $5200: $df
    rra                                           ; $5201: $1f
    ccf                                           ; $5202: $3f
    ccf                                           ; $5203: $3f
    nop                                           ; $5204: $00
    ld bc, $00de                                  ; $5205: $01 $de $00
    ld b, b                                       ; $5208: $40
    rst $38                                       ; $5209: $ff
    ld bc, $fe40                                  ; $520a: $01 $40 $fe
    cp $f9                                        ; $520d: $fe $f9
    ld hl, sp-$02                                 ; $520f: $f8 $fe
    cp $00                                        ; $5211: $fe $00
    db $fd                                        ; $5213: $fd
    db $fc                                        ; $5214: $fc
    ldh [$e0], a                                  ; $5215: $e0 $e0
    db $db                                        ; $5217: $db
    ret nz                                        ; $5218: $c0

    sbc e                                         ; $5219: $9b
    and h                                         ; $521a: $a4
    nop                                           ; $521b: $00
    nop                                           ; $521c: $00
    ld l, d                                       ; $521d: $6a
    db $10                                        ; $521e: $10
    ld b, c                                       ; $521f: $41
    ld a, $41                                     ; $5220: $3e $41
    ld a, a                                       ; $5222: $7f
    ld a, a                                       ; $5223: $7f
    nop                                           ; $5224: $00
    cp a                                          ; $5225: $bf
    ccf                                           ; $5226: $3f
    ld c, a                                       ; $5227: $4f

Jump_0d6_5228:
    rrca                                          ; $5228: $0f
    or a                                          ; $5229: $b7
    rlca                                          ; $522a: $07
    adc e                                         ; $522b: $8b
    inc bc                                        ; $522c: $03
    ld [bc], a                                    ; $522d: $02
    call nz, Call_0d6_4330                        ; $522e: $c4 $30 $43
    jr jr_0d6_5273                                ; $5231: $18 $40

    adc h                                         ; $5233: $8c
    jr nc, jr_0d6_527e                            ; $5234: $30 $48

    ld a, a                                       ; $5236: $7f
    nop                                           ; $5237: $00
    ld a, a                                       ; $5238: $7f
    sbc a                                         ; $5239: $9f
    rra                                           ; $523a: $1f
    or $f0                                        ; $523b: $f6 $f0
    add sp, -$1f                                  ; $523d: $e8 $e1
    jp nc, $c404                                  ; $523f: $d2 $04 $c4

    and h                                         ; $5242: $a4
    adc e                                         ; $5243: $8b
    ld c, b                                       ; $5244: $48
    dec d                                         ; $5245: $15
    ld e, $00                                     ; $5246: $1e $00
    ld [de], a                                    ; $5248: $12
    ld b, h                                       ; $5249: $44
    nop                                           ; $524a: $00
    ld de, $12a4                                  ; $524b: $11 $a4 $12
    and h                                         ; $524e: $a4
    nop                                           ; $524f: $00
    ccf                                           ; $5250: $3f
    nop                                           ; $5251: $00
    scf                                           ; $5252: $37
    nop                                           ; $5253: $00
    add b                                         ; $5254: $80
    sub b                                         ; $5255: $90
    ld a, [hl+]                                   ; $5256: $2a
    inc c                                         ; $5257: $0c
    ld bc, $9060                                  ; $5258: $01 $60 $90
    rst $38                                       ; $525b: $ff
    nop                                           ; $525c: $00
    nop                                           ; $525d: $00
    inc b                                         ; $525e: $04
    ld de, $0255                                  ; $525f: $11 $55 $02
    ld d, e                                       ; $5262: $53
    inc b                                         ; $5263: $04
    dec d                                         ; $5264: $15
    nop                                           ; $5265: $00
    ld b, d                                       ; $5266: $42
    ld sp, $2684                                  ; $5267: $31 $84 $26
    sub c                                         ; $526a: $91
    inc b                                         ; $526b: $04
    ld a, [bc]                                    ; $526c: $0a
    ld b, b                                       ; $526d: $40
    nop                                           ; $526e: $00
    adc a                                         ; $526f: $8f
    xor a                                         ; $5270: $af
    rrca                                          ; $5271: $0f
    rst $10                                       ; $5272: $d7

jr_0d6_5273:
    rlca                                          ; $5273: $07
    sla e                                         ; $5274: $cb $23
    push bc                                       ; $5276: $c5
    nop                                           ; $5277: $00
    ld de, $28d2                                  ; $5278: $11 $d2 $28
    and d                                         ; $527b: $a2
    jr @-$6c                                      ; $527c: $18 $92

jr_0d6_527e:
    ld l, b                                       ; $527e: $68
    ld [bc], a                                    ; $527f: $02
    nop                                           ; $5280: $00
    ld hl, sp-$5f                                 ; $5281: $f8 $a1
    add h                                         ; $5283: $84
    xor c                                         ; $5284: $a9
    add d                                         ; $5285: $82
    and c                                         ; $5286: $a1
    add d                                         ; $5287: $82
    pop de                                        ; $5288: $d1

Jump_0d6_5289:
    nop                                           ; $5289: $00
    call nz, $c4d1                                ; $528a: $c4 $d1 $c4
    ret nc                                        ; $528d: $d0

    pop bc                                        ; $528e: $c1
    add sp, -$1f                                  ; $528f: $e8 $e1
    add sp, $00                                   ; $5291: $e8 $00
    ld [c], a                                     ; $5293: $e2
    rst $38                                       ; $5294: $ff
    nop                                           ; $5295: $00
    rst $38                                       ; $5296: $ff
    nop                                           ; $5297: $00
    add b                                         ; $5298: $80
    ld h, [hl]                                    ; $5299: $66
    ret nc                                        ; $529a: $d0

    nop                                           ; $529b: $00
    inc l                                         ; $529c: $2c
    db $fc                                        ; $529d: $fc
    ld [bc], a                                    ; $529e: $02
    rst $38                                       ; $529f: $ff
    nop                                           ; $52a0: $00
    cp $01                                        ; $52a1: $fe $01
    ld [hl], h                                    ; $52a3: $74
    nop                                           ; $52a4: $00
    adc d                                         ; $52a5: $8a
    ld b, b                                       ; $52a6: $40
    and b                                         ; $52a7: $a0
    rra                                           ; $52a8: $1f
    ld b, b                                       ; $52a9: $40
    ld c, $d1                                     ; $52aa: $0e $d1
    nop                                           ; $52ac: $00
    nop                                           ; $52ad: $00
    add b                                         ; $52ae: $80
    jr nc, jr_0d6_52bc                            ; $52af: $30 $0b

    jr nc, jr_0d6_52fa                            ; $52b1: $30 $47

    ld [hl], b                                    ; $52b3: $70
    rlca                                          ; $52b4: $07
    ld [hl], b                                    ; $52b5: $70
    ld [$0587], sp                                ; $52b6: $08 $87 $05
    ld bc, $02f5                                  ; $52b9: $01 $f5 $02

jr_0d6_52bc:
    nop                                           ; $52bc: $00
    dec bc                                        ; $52bd: $0b
    inc bc                                        ; $52be: $03
    dec bc                                        ; $52bf: $0b
    nop                                           ; $52c0: $00
    db $e3                                        ; $52c1: $e3
    dec bc                                        ; $52c2: $0b
    jp $8717                                      ; $52c3: $c3 $17 $87


    rla                                           ; $52c6: $17
    add a                                         ; $52c7: $87
    add sp, $00                                   ; $52c8: $e8 $00
    db $e3                                        ; $52ca: $e3
    db $f4                                        ; $52cb: $f4
    pop af                                        ; $52cc: $f1
    db $f4                                        ; $52cd: $f4
    pop af                                        ; $52ce: $f1
    push af                                       ; $52cf: $f5
    ldh a, [$fa]                                  ; $52d0: $f0 $fa
    nop                                           ; $52d2: $00
    ld hl, sp-$06                                 ; $52d3: $f8 $fa
    ld hl, sp-$05                                 ; $52d5: $f8 $fb
    ld hl, sp-$04                                 ; $52d7: $f8 $fc
    db $fc                                        ; $52d9: $fc
    inc c                                         ; $52da: $0c
    nop                                           ; $52db: $00
    ld d, d                                       ; $52dc: $52
    ld e, $a0                                     ; $52dd: $1e $a0
    inc e                                         ; $52df: $1c
    ret nz                                        ; $52e0: $c0

    ld bc, $82ca                                  ; $52e1: $01 $ca $82
    jr nz, jr_0d6_535b                            ; $52e4: $20 $75

    nop                                           ; $52e6: $00
    ld c, d                                       ; $52e7: $4a
    nop                                           ; $52e8: $00
    nop                                           ; $52e9: $00
    nop                                           ; $52ea: $00

jr_0d6_52eb:
    jr nc, @-$33                                  ; $52eb: $30 $cb

    db $10                                        ; $52ed: $10
    ld bc, $10eb                                  ; $52ee: $01 $eb $10
    ld c, d                                       ; $52f1: $4a
    ld sp, $2184                                  ; $52f2: $31 $84 $21
    ld d, h                                       ; $52f5: $54
    db $10                                        ; $52f6: $10
    jr jr_0d6_52fd                                ; $52f7: $18 $04

    ld d, a                                       ; $52f9: $57

jr_0d6_52fa:
    rlca                                          ; $52fa: $07
    cpl                                           ; $52fb: $2f
    rrca                                          ; $52fc: $0f

jr_0d6_52fd:
    xor a                                         ; $52fd: $af
    ld [bc], a                                    ; $52fe: $02
    nop                                           ; $52ff: $00
    ld e, a                                       ; $5300: $5f
    rra                                           ; $5301: $1f
    nop                                           ; $5302: $00
    ld e, a                                       ; $5303: $5f
    rra                                           ; $5304: $1f
    rst $18                                       ; $5305: $df
    rra                                           ; $5306: $1f
    ccf                                           ; $5307: $3f
    ccf                                           ; $5308: $3f
    nop                                           ; $5309: $00
    ld bc, $00e9                                  ; $530a: $01 $e9 $00
    ld b, b                                       ; $530d: $40
    rst $38                                       ; $530e: $ff
    ld bc, $fc10                                  ; $530f: $01 $10 $fc
    db $fc                                        ; $5312: $fc
    di                                            ; $5313: $f3
    ldh a, [$ec]                                  ; $5314: $f0 $ec
    ldh [rP1], a                                  ; $5316: $e0 $00
    ret nc                                        ; $5318: $d0

    jp $e3e8                                      ; $5319: $c3 $e8 $e3


    ld hl, sp-$08                                 ; $531c: $f8 $f8
    jp Jump_000_00c0                              ; $531e: $c3 $c0 $00


    jr c, jr_0d6_5325                             ; $5321: $38 $02

    ret nz                                        ; $5323: $c0

    inc bc                                        ; $5324: $03

jr_0d6_5325:
    nop                                           ; $5325: $00
    dec l                                         ; $5326: $2d
    nop                                           ; $5327: $00
    add sp, $00                                   ; $5328: $e8 $00
    nop                                           ; $532a: $00
    ldh [rTAC], a                                 ; $532b: $e0 $07
    add sp, $1f                                   ; $532d: $e8 $1f
    rra                                           ; $532f: $1f
    rst $00                                       ; $5330: $c7
    rlca                                          ; $5331: $07
    nop                                           ; $5332: $00
    sbc c                                         ; $5333: $99
    ld b, c                                       ; $5334: $41
    ld b, $00                                     ; $5335: $06 $00
    ld b, c                                       ; $5337: $41
    sbc b                                         ; $5338: $98
    ld h, b                                       ; $5339: $60
    adc [hl]                                      ; $533a: $8e
    ld [$4720], sp                                ; $533b: $08 $20 $47
    ld [$3093], sp                                ; $533e: $08 $93 $30
    jr @+$81                                      ; $5341: $18 $7f

    ld a, a                                       ; $5343: $7f
    cp a                                          ; $5344: $bf
    nop                                           ; $5345: $00
    ccf                                           ; $5346: $3f
    ld e, a                                       ; $5347: $5f
    rra                                           ; $5348: $1f
    cpl                                           ; $5349: $2f
    adc a                                         ; $534a: $8f
    rla                                           ; $534b: $17
    rst $00                                       ; $534c: $c7
    db $f4                                        ; $534d: $f4
    nop                                           ; $534e: $00
    pop af                                        ; $534f: $f1
    ld [c], a                                     ; $5350: $e2
    ldh [$d1], a                                  ; $5351: $e0 $d1
    ret nz                                        ; $5353: $c0

    and b                                         ; $5354: $a0
    adc h                                         ; $5355: $8c
    ld b, b                                       ; $5356: $40
    db $10                                        ; $5357: $10
    ld e, $40                                     ; $5358: $1e $40
    rra                                           ; $535a: $1f

jr_0d6_535b:
    ld [bc], a                                    ; $535b: $02
    nop                                           ; $535c: $00
    nop                                           ; $535d: $00
    ld [$00d7], sp                                ; $535e: $08 $d7 $00
    nop                                           ; $5361: $00
    ret nc                                        ; $5362: $d0

    nop                                           ; $5363: $00
    ld l, h                                       ; $5364: $6c
    add h                                         ; $5365: $84
    jr nz, jr_0d6_52eb                            ; $5366: $20 $83

    ld [$0041], sp                                ; $5368: $08 $41 $00
    inc e                                         ; $536b: $1c
    nop                                           ; $536c: $00
    ld a, [hl-]                                   ; $536d: $3a
    nop                                           ; $536e: $00
    ld de, $0bf0                                  ; $536f: $11 $f0 $0b
    nop                                           ; $5372: $00
    nop                                           ; $5373: $00
    rlca                                          ; $5374: $07
    nop                                           ; $5375: $00
    call nc, $8053                                ; $5376: $d4 $53 $80
    or h                                          ; $5379: $b4
    ld b, b                                       ; $537a: $40
    jr nz, jr_0d6_537d                            ; $537b: $20 $00

jr_0d6_537d:
    nop                                           ; $537d: $00
    ret nz                                        ; $537e: $c0

    add hl, bc                                    ; $537f: $09
    nop                                           ; $5380: $00
    ld d, h                                       ; $5381: $54
    cpl                                           ; $5382: $2f
    adc a                                         ; $5383: $8f
    ld b, a                                       ; $5384: $47
    nop                                           ; $5385: $00
    rlca                                          ; $5386: $07
    adc e                                         ; $5387: $8b
    inc bc                                        ; $5388: $03
    dec b                                         ; $5389: $05
    ld sp, $7802                                  ; $538a: $31 $02 $78
    ld [bc], a                                    ; $538d: $02
    ld b, b                                       ; $538e: $40
    ld hl, sp+$02                                 ; $538f: $f8 $02
    nop                                           ; $5391: $00
    jr c, @-$77                                   ; $5392: $38 $87

    adc b                                         ; $5394: $88
    sbc a                                         ; $5395: $9f
    and b                                         ; $5396: $a0
    jr c, jr_0d6_5399                             ; $5397: $38 $00

jr_0d6_5399:
    ld b, [hl]                                    ; $5399: $46
    nop                                           ; $539a: $00
    ld [hl], h                                    ; $539b: $74
    add b                                         ; $539c: $80
    add b                                         ; $539d: $80
    ret nc                                        ; $539e: $d0

    call nz, Call_000_00e8                        ; $539f: $c4 $e8 $00
    ld [c], a                                     ; $53a2: $e2
    add sp, -$1e                                  ; $53a3: $e8 $e2
    ret nz                                        ; $53a5: $c0

    inc hl                                        ; $53a6: $23
    nop                                           ; $53a7: $00
    rst $00                                       ; $53a8: $c7
    jr c, jr_0d6_53ab                             ; $53a9: $38 $00

jr_0d6_53ab:
    add d                                         ; $53ab: $82
    ld [$4200], sp                                ; $53ac: $08 $00 $42
    ld sp, $4001                                  ; $53af: $31 $01 $40
    nop                                           ; $53b2: $00
    nop                                           ; $53b3: $00
    inc bc                                        ; $53b4: $03
    ld [hl], b                                    ; $53b5: $70
    add e                                         ; $53b6: $83
    ld bc, $01b8                                  ; $53b7: $01 $b8 $01
    ld [de], a                                    ; $53ba: $12
    nop                                           ; $53bb: $00
    ld bc, $0089                                  ; $53bc: $01 $89 $00
    nop                                           ; $53bf: $00
    inc de                                        ; $53c0: $13
    ld [$0130], sp                                ; $53c1: $08 $30 $01
    ld [$0000], sp                                ; $53c4: $08 $00 $00
    jr jr_0d6_53ce                                ; $53c7: $18 $05

    pop bc                                        ; $53c9: $c1
    push hl                                       ; $53ca: $e5
    ld de, $8175                                  ; $53cb: $11 $75 $81

jr_0d6_53ce:
    dec bc                                        ; $53ce: $0b
    nop                                           ; $53cf: $00
    ld h, e                                       ; $53d0: $63
    dec bc                                        ; $53d1: $0b
    inc bc                                        ; $53d2: $03
    dec bc                                        ; $53d3: $0b
    add e                                         ; $53d4: $83
    rla                                           ; $53d5: $17
    add a                                         ; $53d6: $87
    rla                                           ; $53d7: $17
    inc b                                         ; $53d8: $04
    rlca                                          ; $53d9: $07
    add sp, -$1e                                  ; $53da: $e8 $e2
    db $f4                                        ; $53dc: $f4
    ldh a, [rSC]                                  ; $53dd: $f0 $02
    ld [$f8fa], sp                                ; $53df: $08 $fa $f8
    nop                                           ; $53e2: $00
    ld a, [$fbf8]                                 ; $53e3: $fa $f8 $fb
    ld hl, sp-$04                                 ; $53e6: $f8 $fc
    db $fc                                        ; $53e8: $fc
    ld h, b                                       ; $53e9: $60
    stop                                          ; $53ea: $10 $00
    rlca                                          ; $53ec: $07
    adc b                                         ; $53ed: $88
    ld b, $c9                                     ; $53ee: $06 $c9
    nop                                           ; $53f0: $00
    ldh [rP1], a                                  ; $53f1: $e0 $00
    ld h, e                                       ; $53f3: $63
    nop                                           ; $53f4: $00
    nop                                           ; $53f5: $00
    nop                                           ; $53f6: $00
    rst $38                                       ; $53f7: $ff
    nop                                           ; $53f8: $00
    nop                                           ; $53f9: $00
    nop                                           ; $53fa: $00
    ld bc, $0002                                  ; $53fb: $01 $02 $00
    dec sp                                        ; $53fe: $3b
    ld b, b                                       ; $53ff: $40
    jr nc, jr_0d6_544a                            ; $5400: $30 $48

    nop                                           ; $5402: $00
    ld bc, $9c00                                  ; $5403: $01 $00 $9c
    add b                                         ; $5406: $80
    db $10                                        ; $5407: $10
    jr @-$67                                      ; $5408: $18 $97

    rlca                                          ; $540a: $07
    xor a                                         ; $540b: $af
    rrca                                          ; $540c: $0f
    cpl                                           ; $540d: $2f
    rrca                                          ; $540e: $0f
    cpl                                           ; $540f: $2f
    nop                                           ; $5410: $00
    adc a                                         ; $5411: $8f
    ld e, a                                       ; $5412: $5f
    rra                                           ; $5413: $1f
    ld e, a                                       ; $5414: $5f
    rra                                           ; $5415: $1f
    rst $18                                       ; $5416: $df
    rra                                           ; $5417: $1f
    ccf                                           ; $5418: $3f
    nop                                           ; $5419: $00
    ccf                                           ; $541a: $3f
    nop                                           ; $541b: $00
    ld bc, $00e3                                  ; $541c: $01 $e3 $00
    ld b, b                                       ; $541f: $40
    rst $38                                       ; $5420: $ff
    ld bc, $fe40                                  ; $5421: $01 $40 $fe
    cp $f9                                        ; $5424: $fe $f9
    ld hl, sp-$02                                 ; $5426: $f8 $fe
    cp $00                                        ; $5428: $fe $00
    db $fd                                        ; $542a: $fd
    db $fc                                        ; $542b: $fc
    ldh a, [$f0]                                  ; $542c: $f0 $f0
    db $e3                                        ; $542e: $e3
    db $e4                                        ; $542f: $e4
    sub $c1                                       ; $5430: $d6 $c1
    nop                                           ; $5432: $00
    inc h                                         ; $5433: $24
    inc bc                                        ; $5434: $03
    add $11                                       ; $5435: $c6 $11
    inc b                                         ; $5437: $04
    jr nz, @+$81                                  ; $5438: $20 $7f

    ld a, a                                       ; $543a: $7f

jr_0d6_543b:
    nop                                           ; $543b: $00
    cp a                                          ; $543c: $bf
    ccf                                           ; $543d: $3f
    ld c, a                                       ; $543e: $4f
    rrca                                          ; $543f: $0f
    sub a                                         ; $5440: $97
    rlca                                          ; $5441: $07
    ld b, e                                       ; $5442: $43
    add e                                         ; $5443: $83
    ld [bc], a                                    ; $5444: $02
    ld [$11f0], sp                                ; $5445: $08 $f0 $11
    ldh [rNR10], a                                ; $5448: $e0 $10

jr_0d6_544a:
    inc b                                         ; $544a: $04
    jr nc, jr_0d6_5495                            ; $544b: $30 $48

    ld a, a                                       ; $544d: $7f
    nop                                           ; $544e: $00
    ld a, a                                       ; $544f: $7f
    sbc a                                         ; $5450: $9f
    rra                                           ; $5451: $1f
    or $f0                                        ; $5452: $f6 $f0
    add sp, -$1f                                  ; $5454: $e8 $e1
    ret nc                                        ; $5456: $d0

    nop                                           ; $5457: $00
    call nz, $88a3                                ; $5458: $c4 $a3 $88
    ld b, d                                       ; $545b: $42
    jr jr_0d6_549e                                ; $545c: $18 $40

    add hl, de                                    ; $545e: $19
    ld b, e                                       ; $545f: $43
    nop                                           ; $5460: $00
    jr @+$44                                      ; $5461: $18 $42

    add hl, de                                    ; $5463: $19
    dec de                                        ; $5464: $1b
    ret nz                                        ; $5465: $c0

    inc d                                         ; $5466: $14
    ret z                                         ; $5467: $c8

    add h                                         ; $5468: $84
    nop                                           ; $5469: $00
    ld h, c                                       ; $546a: $61
    ld e, e                                       ; $546b: $5b
    inc b                                         ; $546c: $04
    or d                                          ; $546d: $b2
    ld [$218a], sp                                ; $546e: $08 $8a $21
    add c                                         ; $5471: $81
    nop                                           ; $5472: $00
    jr nz, jr_0d6_5485                            ; $5473: $20 $10

    ld [$0ae4], sp                                ; $5475: $08 $e4 $0a
    sub b                                         ; $5478: $90
    inc b                                         ; $5479: $04
    sbc b                                         ; $547a: $98
    nop                                           ; $547b: $00
    ld b, c                                       ; $547c: $41
    ld a, [c]                                     ; $547d: $f2
    ld [$00b5], sp                                ; $547e: $08 $b5 $00
    ld [hl+], a                                   ; $5481: $22
    ld d, h                                       ; $5482: $54
    pop bc                                        ; $5483: $c1
    nop                                           ; $5484: $00

jr_0d6_5485:
    ld h, $01                                     ; $5485: $26 $01
    sub d                                         ; $5487: $92
    cpl                                           ; $5488: $2f
    rrca                                          ; $5489: $0f
    rst $00                                       ; $548a: $c7
    rlca                                          ; $548b: $07
    db $eb                                        ; $548c: $eb
    nop                                           ; $548d: $00
    inc bc                                        ; $548e: $03

jr_0d6_548f:
    dec b                                         ; $548f: $05
    ld h, c                                       ; $5490: $61
    add d                                         ; $5491: $82
    ld [$9842], sp                                ; $5492: $08 $42 $98

jr_0d6_5495:
    ld [hl+], a                                   ; $5495: $22
    nop                                           ; $5496: $00
    ld c, b                                       ; $5497: $48
    sub d                                         ; $5498: $92
    jr nz, jr_0d6_543b                            ; $5499: $20 $a0

    adc h                                         ; $549b: $8c
    and b                                         ; $549c: $a0
    adc a                                         ; $549d: $8f

jr_0d6_549e:
    and b                                         ; $549e: $a0
    db $10                                        ; $549f: $10
    adc [hl]                                      ; $54a0: $8e
    ret nc                                        ; $54a1: $d0

    add $02                                       ; $54a2: $c6 $02
    ld [$e0e8], sp                                ; $54a4: $08 $e8 $e0
    ld [$00e1], a                                 ; $54a7: $ea $e1 $00
    ld [hl+], a                                   ; $54aa: $22
    adc c                                         ; $54ab: $89
    ld sp, $5844                                  ; $54ac: $31 $44 $58
    add d                                         ; $54af: $82
    cp c                                          ; $54b0: $b9
    ld [bc], a                                    ; $54b1: $02
    nop                                           ; $54b2: $00
    ld c, b                                       ; $54b3: $48
    ld bc, $2096                                  ; $54b4: $01 $96 $20
    ld de, $10c6                                  ; $54b7: $11 $c6 $10
    ld b, a                                       ; $54ba: $47
    nop                                           ; $54bb: $00
    jr nc, jr_0d6_5503                            ; $54bc: $30 $45

    ret nz                                        ; $54be: $c0

    ld [bc], a                                    ; $54bf: $02
    jr jr_0d6_54e7                                ; $54c0: $18 $25

    ld a, h                                       ; $54c2: $7c
    add b                                         ; $54c3: $80
    nop                                           ; $54c4: $00
    cp h                                          ; $54c5: $bc
    ld b, d                                       ; $54c6: $42
    ld e, h                                       ; $54c7: $5c
    and d                                         ; $54c8: $a2
    add hl, bc                                    ; $54c9: $09
    ld h, h                                       ; $54ca: $64
    adc d                                         ; $54cb: $8a
    ld bc, $c500                                  ; $54cc: $01 $00 $c5
    ld de, $8165                                  ; $54cf: $11 $65 $81
    dec [hl]                                      ; $54d2: $35
    ld b, c                                       ; $54d3: $41
    dec bc                                        ; $54d4: $0b
    and e                                         ; $54d5: $a3
    nop                                           ; $54d6: $00
    ld c, e                                       ; $54d7: $4b
    inc bc                                        ; $54d8: $03
    adc e                                         ; $54d9: $8b
    ld b, e                                       ; $54da: $43
    rla                                           ; $54db: $17
    ld b, a                                       ; $54dc: $47
    rla                                           ; $54dd: $17
    add a                                         ; $54de: $87
    nop                                           ; $54df: $00
    db $eb                                        ; $54e0: $eb
    ldh [$f5], a                                  ; $54e1: $e0 $f5
    ldh a, [$f4]                                  ; $54e3: $f0 $f4
    pop af                                        ; $54e5: $f1
    db $f4                                        ; $54e6: $f4

jr_0d6_54e7:
    pop af                                        ; $54e7: $f1
    nop                                           ; $54e8: $00
    ld a, [$faf8]                                 ; $54e9: $fa $f8 $fa
    ld hl, sp-$05                                 ; $54ec: $f8 $fb
    ld hl, sp-$04                                 ; $54ee: $f8 $fc
    db $fc                                        ; $54f0: $fc
    nop                                           ; $54f1: $00
    db $10                                        ; $54f2: $10
    and b                                         ; $54f3: $a0
    scf                                           ; $54f4: $37
    add b                                         ; $54f5: $80
    jr nz, jr_0d6_548f                            ; $54f6: $20 $97

    ld l, b                                       ; $54f8: $68
    nop                                           ; $54f9: $00
    nop                                           ; $54fa: $00
    ld h, b                                       ; $54fb: $60
    rrca                                          ; $54fc: $0f
    nop                                           ; $54fd: $00
    nop                                           ; $54fe: $00
    rst $38                                       ; $54ff: $ff
    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    nop                                           ; $5502: $00

jr_0d6_5503:
    nop                                           ; $5503: $00
    ld b, c                                       ; $5504: $41
    ld [$2082], sp                                ; $5505: $08 $82 $20
    jr nz, jr_0d6_5513                            ; $5508: $20 $09

    ld b, b                                       ; $550a: $40
    adc l                                         ; $550b: $8d
    jr nz, @-$5e                                  ; $550c: $20 $a0

    dec c                                         ; $550e: $0d
    db $10                                        ; $550f: $10
    jr jr_0d6_5569                                ; $5510: $18 $57

    add a                                         ; $5512: $87

jr_0d6_5513:
    xor a                                         ; $5513: $af
    rrca                                          ; $5514: $0f
    cpl                                           ; $5515: $2f
    nop                                           ; $5516: $00
    rrca                                          ; $5517: $0f
    cpl                                           ; $5518: $2f
    adc a                                         ; $5519: $8f
    ld e, a                                       ; $551a: $5f
    rra                                           ; $551b: $1f
    ld e, a                                       ; $551c: $5f
    rra                                           ; $551d: $1f
    rst $18                                       ; $551e: $df
    nop                                           ; $551f: $00
    rra                                           ; $5520: $1f
    ccf                                           ; $5521: $3f
    ccf                                           ; $5522: $3f
    nop                                           ; $5523: $00
    ld bc, $00e7                                  ; $5524: $01 $e7 $00
    ld b, b                                       ; $5527: $40
    rst $38                                       ; $5528: $ff
    ld bc, $f120                                  ; $5529: $01 $20 $f1
    pop af                                        ; $552c: $f1
    push hl                                       ; $552d: $e5
    push hl                                       ; $552e: $e5
    and $e6                                       ; $552f: $e6 $e6
    nop                                           ; $5531: $00
    pop hl                                        ; $5532: $e1
    ldh [$fe], a                                  ; $5533: $e0 $fe
    cp $fd                                        ; $5535: $fe $fd
    db $fc                                        ; $5537: $fc
    ld a, [c]                                     ; $5538: $f2
    ldh a, [rP1]                                  ; $5539: $f0 $00
    db $ec                                        ; $553b: $ec
    ldh [$d0], a                                  ; $553c: $e0 $d0
    pop bc                                        ; $553e: $c1
    jr nz, @+$04                                  ; $553f: $20 $02

    jp nz, RST_10                                 ; $5541: $c2 $10 $00

    nop                                           ; $5544: $00
    dec l                                         ; $5545: $2d
    ld a, a                                       ; $5546: $7f
    ld a, a                                       ; $5547: $7f
    cp a                                          ; $5548: $bf
    ccf                                           ; $5549: $3f
    ld c, a                                       ; $554a: $4f
    rrca                                          ; $554b: $0f
    nop                                           ; $554c: $00
    rla                                           ; $554d: $17
    rlca                                          ; $554e: $07
    dec hl                                        ; $554f: $2b
    inc bc                                        ; $5550: $03
    add h                                         ; $5551: $84
    ld d, b                                       ; $5552: $50
    inc bc                                        ; $5553: $03
    jr z, jr_0d6_5576                             ; $5554: $28 $20

    add b                                         ; $5556: $80
    ld c, b                                       ; $5557: $48
    jr nc, jr_0d6_5582                            ; $5558: $30 $28

    sbc a                                         ; $555a: $9f
    sbc a                                         ; $555b: $9f
    rst $08                                       ; $555c: $cf
    rst $08                                       ; $555d: $cf
    ld c, a                                       ; $555e: $4f
    ld [bc], a                                    ; $555f: $02
    ld c, a                                       ; $5560: $4f
    adc a                                         ; $5561: $8f
    rrca                                          ; $5562: $0f
    db $f4                                        ; $5563: $f4
    ldh a, [$e2]                                  ; $5564: $f0 $e2

jr_0d6_5566:
    inc l                                         ; $5566: $2c
    nop                                           ; $5567: $00
    and b                                         ; $5568: $a0

jr_0d6_5569:
    nop                                           ; $5569: $00
    adc h                                         ; $556a: $8c
    ld b, b                                       ; $556b: $40
    db $10                                        ; $556c: $10
    ld b, a                                       ; $556d: $47
    ld [$033c], sp                                ; $556e: $08 $3c $03
    ld b, b                                       ; $5571: $40
    nop                                           ; $5572: $00
    ld hl, $e00b                                  ; $5573: $21 $0b $e0

jr_0d6_5576:
    ld a, [bc]                                    ; $5576: $0a
    ld h, c                                       ; $5577: $61
    add d                                         ; $5578: $82
    ld [$0069], sp                                ; $5579: $08 $69 $00
    add d                                         ; $557c: $82
    inc b                                         ; $557d: $04
    ld h, b                                       ; $557e: $60
    ld a, [bc]                                    ; $557f: $0a
    dec b                                         ; $5580: $05
    inc d                                         ; $5581: $14

jr_0d6_5582:
    adc b                                         ; $5582: $88
    ld [$9500], sp                                ; $5583: $08 $00 $95
    ldh [rNR13], a                                ; $5586: $e0 $13

jr_0d6_5588:
    ld d, b                                       ; $5588: $50
    ld b, $41                                     ; $5589: $06 $41
    nop                                           ; $558b: $00
    sub [hl]                                      ; $558c: $96
    nop                                           ; $558d: $00
    ld b, b                                       ; $558e: $40
    ld b, b                                       ; $558f: $40
    and h                                         ; $5590: $a4
    ld b, b                                       ; $5591: $40
    ld de, $0aa1                                  ; $5592: $11 $a1 $0a
    ld c, b                                       ; $5595: $48
    nop                                           ; $5596: $00
    and c                                         ; $5597: $a1
    rrca                                          ; $5598: $0f
    rrca                                          ; $5599: $0f
    sub a                                         ; $559a: $97
    rlca                                          ; $559b: $07
    dec bc                                        ; $559c: $0b
    inc hl                                        ; $559d: $23
    dec b                                         ; $559e: $05
    nop                                           ; $559f: $00
    ld [hl], c                                    ; $55a0: $71
    add d                                         ; $55a1: $82
    jr c, jr_0d6_5566                             ; $55a2: $38 $c2

    jr jr_0d6_5588                                ; $55a4: $18 $e2

    ld [$0032], sp                                ; $55a6: $08 $32 $00
    ret nz                                        ; $55a9: $c0

    nop                                           ; $55aa: $00
    inc c                                         ; $55ab: $0c
    and b                                         ; $55ac: $a0
    adc c                                         ; $55ad: $89
    and b                                         ; $55ae: $a0
    adc c                                         ; $55af: $89
    ret nc                                        ; $55b0: $d0

    nop                                           ; $55b1: $00
    jp nz, $c4d2                                  ; $55b2: $c2 $d2 $c4

    jp nc, $eac4                                  ; $55b5: $d2 $c4 $ea

    ldh [$e8], a                                  ; $55b8: $e0 $e8
    nop                                           ; $55ba: $00
    ld [c], a                                     ; $55bb: $e2
    inc b                                         ; $55bc: $04
    ld a, [bc]                                    ; $55bd: $0a
    ld [hl+], a                                   ; $55be: $22
    add h                                         ; $55bf: $84
    db $10                                        ; $55c0: $10
    ld b, b                                       ; $55c1: $40
    stop                                          ; $55c2: $10 $00
    and b                                         ; $55c4: $a0
    ld b, $69                                     ; $55c5: $06 $69
    add hl, bc                                    ; $55c7: $09
    sub b                                         ; $55c8: $90
    or [hl]                                       ; $55c9: $b6
    nop                                           ; $55ca: $00
    add [hl]                                      ; $55cb: $86
    nop                                           ; $55cc: $00
    ld d, b                                       ; $55cd: $50
    sub b                                         ; $55ce: $90
    ld c, b                                       ; $55cf: $48
    ld b, $11                                     ; $55d0: $06 $11
    ld c, b                                       ; $55d2: $48
    add e                                         ; $55d3: $83
    stop                                          ; $55d4: $10 $00
    ld b, h                                       ; $55d6: $44
    jr nz, jr_0d6_55f1                            ; $55d7: $20 $18

    nop                                           ; $55d9: $00
    sub d                                         ; $55da: $92
    jp nz, $0604                                  ; $55db: $c2 $04 $06

    nop                                           ; $55de: $00
    adc b                                         ; $55df: $88
    add hl, bc                                    ; $55e0: $09
    ld de, $a905                                  ; $55e1: $11 $05 $a9
    ld bc, $0931                                  ; $55e4: $01 $31 $09
    nop                                           ; $55e7: $00
    ld h, c                                       ; $55e8: $61
    ld c, e                                       ; $55e9: $4b
    add e                                         ; $55ea: $83
    ld c, e                                       ; $55eb: $4b
    add e                                         ; $55ec: $83
    ld d, a                                       ; $55ed: $57
    add a                                         ; $55ee: $87
    rla                                           ; $55ef: $17
    inc b                                         ; $55f0: $04

jr_0d6_55f1:
    rst $00                                       ; $55f1: $c7
    add sp, -$1f                                  ; $55f2: $e8 $e1
    push af                                       ; $55f4: $f5
    ldh a, [rSC]                                  ; $55f5: $f0 $02
    ld [$f8fa], sp                                ; $55f7: $08 $fa $f8
    nop                                           ; $55fa: $00
    ld a, [$fbf8]                                 ; $55fb: $fa $f8 $fb
    ld hl, sp-$04                                 ; $55fe: $f8 $fc
    db $fc                                        ; $5600: $fc
    ret nz                                        ; $5601: $c0

    add hl, bc                                    ; $5602: $09
    nop                                           ; $5603: $00
    add b                                         ; $5604: $80
    ld b, [hl]                                    ; $5605: $46
    nop                                           ; $5606: $00
    sub [hl]                                      ; $5607: $96
    db $10                                        ; $5608: $10
    xor b                                         ; $5609: $a8
    jr jr_0d6_5630                                ; $560a: $18 $24

    nop                                           ; $560c: $00
    nop                                           ; $560d: $00
    nop                                           ; $560e: $00
    rst $38                                       ; $560f: $ff
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    ld [bc], a                                    ; $5613: $02
    inc c                                         ; $5614: $0c
    nop                                           ; $5615: $00
    ld b, $49                                     ; $5616: $06 $49
    ld b, e                                       ; $5618: $43
    and h                                         ; $5619: $a4
    ld h, c                                       ; $561a: $61
    adc [hl]                                      ; $561b: $8e
    ld b, d                                       ; $561c: $42
    or l                                          ; $561d: $b5
    add h                                         ; $561e: $84
    db $10                                        ; $561f: $10
    jr @+$19                                      ; $5620: $18 $17

    ld b, a                                       ; $5622: $47
    cpl                                           ; $5623: $2f
    rrca                                          ; $5624: $0f
    ld [bc], a                                    ; $5625: $02
    nop                                           ; $5626: $00
    adc a                                         ; $5627: $8f
    ld e, a                                       ; $5628: $5f
    nop                                           ; $5629: $00
    rra                                           ; $562a: $1f
    ld e, a                                       ; $562b: $5f
    rra                                           ; $562c: $1f
    rst $18                                       ; $562d: $df
    rra                                           ; $562e: $1f
    ccf                                           ; $562f: $3f

jr_0d6_5630:
    ccf                                           ; $5630: $3f
    nop                                           ; $5631: $00
    ld bc, $00f6                                  ; $5632: $01 $f6 $00
    ld b, b                                       ; $5635: $40
    rst $38                                       ; $5636: $ff
    ld bc, $f810                                  ; $5637: $01 $10 $f8
    ld hl, sp-$1d                                 ; $563a: $f8 $e3
    db $e4                                        ; $563c: $e4
    jp c, Jump_000_00c1                           ; $563d: $da $c1 $00

    and c                                         ; $5640: $a1
    sub [hl]                                      ; $5641: $96
    ld bc, $fe50                                  ; $5642: $01 $50 $fe
    cp $fc                                        ; $5645: $fe $fc
    db $fd                                        ; $5647: $fd
    nop                                           ; $5648: $00
    ldh [$e3], a                                  ; $5649: $e0 $e3
    rrca                                          ; $564b: $0f
    db $10                                        ; $564c: $10
    ld a, [$1405]                                 ; $564d: $fa $05 $14
    ld l, d                                       ; $5650: $6a
    nop                                           ; $5651: $00
    ld b, [hl]                                    ; $5652: $46
    and c                                         ; $5653: $a1
    ld hl, sp+$04                                 ; $5654: $f8 $04
    ld h, e                                       ; $5656: $63
    inc bc                                        ; $5657: $03
    add b                                         ; $5658: $80
    ld e, h                                       ; $5659: $5c
    nop                                           ; $565a: $00
    inc bc                                        ; $565b: $03
    inc hl                                        ; $565c: $23
    ld e, a                                       ; $565d: $5f
    and b                                         ; $565e: $a0
    nop                                           ; $565f: $00
    dec d                                         ; $5660: $15
    ld a, a                                       ; $5661: $7f
    add b                                         ; $5662: $80
    nop                                           ; $5663: $00
    nop                                           ; $5664: $00
    nop                                           ; $5665: $00
    nop                                           ; $5666: $00
    db $fc                                        ; $5667: $fc
    ld a, a                                       ; $5668: $7f
    ld a, a                                       ; $5669: $7f
    rst $28                                       ; $566a: $ef
    rst $08                                       ; $566b: $cf
    nop                                           ; $566c: $00
    rst $18                                       ; $566d: $df
    rra                                           ; $566e: $1f
    dec sp                                        ; $566f: $3b
    inc sp                                        ; $5670: $33
    rst $20                                       ; $5671: $e7
    rlca                                          ; $5672: $07
    rra                                           ; $5673: $1f
    rra                                           ; $5674: $1f
    nop                                           ; $5675: $00
    ld a, a                                       ; $5676: $7f
    ld a, a                                       ; $5677: $7f
    rra                                           ; $5678: $1f
    rra                                           ; $5679: $1f
    ld c, $20                                     ; $567a: $0e $20
    inc [hl]                                      ; $567c: $34
    ld b, b                                       ; $567d: $40
    nop                                           ; $567e: $00
    inc d                                         ; $567f: $14
    ld b, b                                       ; $5680: $40
    ld c, $10                                     ; $5681: $0e $10
    inc b                                         ; $5683: $04
    ld l, d                                       ; $5684: $6a
    jr nz, jr_0d6_5697                            ; $5685: $20 $10

    nop                                           ; $5687: $00
    ld b, e                                       ; $5688: $43
    ld [$1000], sp                                ; $5689: $08 $00 $10
    nop                                           ; $568c: $00
    db $e3                                        ; $568d: $e3
    nop                                           ; $568e: $00
    rrca                                          ; $568f: $0f
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    inc e                                         ; $5692: $1c
    nop                                           ; $5693: $00
    jr z, jr_0d6_569a                             ; $5694: $28 $04

    db $10                                        ; $5696: $10

jr_0d6_5697:
    ld [$0004], sp                                ; $5697: $08 $04 $00

jr_0d6_569a:
    sub b                                         ; $569a: $90
    add hl, bc                                    ; $569b: $09
    nop                                           ; $569c: $00
    add b                                         ; $569d: $80
    nop                                           ; $569e: $00
    rst $00                                       ; $569f: $c7
    jr nc, @+$05                                  ; $56a0: $30 $03

    nop                                           ; $56a2: $00
    ret nz                                        ; $56a3: $c0

    ld hl, $9d00                                  ; $56a4: $21 $00 $9d
    nop                                           ; $56a7: $00
    ld a, [hl]                                    ; $56a8: $7e
    add b                                         ; $56a9: $80
    nop                                           ; $56aa: $00
    nop                                           ; $56ab: $00
    adc $00                                       ; $56ac: $ce $00
    nop                                           ; $56ae: $00
    ld [$0767], sp                                ; $56af: $08 $67 $07
    rla                                           ; $56b2: $17
    add a                                         ; $56b3: $87
    nop                                           ; $56b4: $00
    dec bc                                        ; $56b5: $0b
    add e                                         ; $56b6: $83
    dec b                                         ; $56b7: $05
    ld hl, $1082                                  ; $56b8: $21 $82 $10
    ld [bc], a                                    ; $56bb: $02
    jr z, jr_0d6_56be                             ; $56bc: $28 $00

jr_0d6_56be:
    ld [bc], a                                    ; $56be: $02
    ld d, b                                       ; $56bf: $50
    ld [bc], a                                    ; $56c0: $02
    xor b                                         ; $56c1: $a8
    add [hl]                                      ; $56c2: $86
    sbc c                                         ; $56c3: $99
    ld a, [bc]                                    ; $56c4: $0a
    inc [hl]                                      ; $56c5: $34
    nop                                           ; $56c6: $00
    inc bc                                        ; $56c7: $03
    inc e                                         ; $56c8: $1c
    ld bc, $802a                                  ; $56c9: $01 $2a $80
    sbc l                                         ; $56cc: $9d
    ret nz                                        ; $56cd: $c0

    adc $00                                       ; $56ce: $ce $00
    pop bc                                        ; $56d0: $c1
    add $c0                                       ; $56d1: $c6 $c0
    rlc b                                         ; $56d3: $cb $00
    ld bc, $a040                                  ; $56d5: $01 $40 $a0
    nop                                           ; $56d8: $00
    jr nz, jr_0d6_572b                            ; $56d9: $20 $50

    sub l                                         ; $56db: $95
    ld [hl+], a                                   ; $56dc: $22
    jp nz, $e105                                  ; $56dd: $c2 $05 $e1

    ld [bc], a                                    ; $56e0: $02
    nop                                           ; $56e1: $00
    ld h, b                                       ; $56e2: $60
    sub c                                         ; $56e3: $91
    or b                                          ; $56e4: $b0
    ld c, b                                       ; $56e5: $48
    nop                                           ; $56e6: $00
    dec b                                         ; $56e7: $05
    nop                                           ; $56e8: $00
    xor b                                         ; $56e9: $a8
    nop                                           ; $56ea: $00
    inc bc                                        ; $56eb: $03
    ld b, b                                       ; $56ec: $40
    adc d                                         ; $56ed: $8a
    ld bc, $8872                                  ; $56ee: $01 $72 $88
    ld [bc], a                                    ; $56f1: $02
    adc b                                         ; $56f2: $88
    nop                                           ; $56f3: $00
    add c                                         ; $56f4: $81
    ld b, b                                       ; $56f5: $40
    ld b, c                                       ; $56f6: $41
    and b                                         ; $56f7: $a0
    dec b                                         ; $56f8: $05
    ld d, c                                       ; $56f9: $51
    dec b                                         ; $56fa: $05
    ld bc, $0500                                  ; $56fb: $01 $00 $05
    sub c                                         ; $56fe: $91
    dec bc                                        ; $56ff: $0b
    inc hl                                        ; $5700: $23
    dec bc                                        ; $5701: $0b
    ld b, e                                       ; $5702: $43
    dec bc                                        ; $5703: $0b
    inc hl                                        ; $5704: $23
    nop                                           ; $5705: $00
    rla                                           ; $5706: $17
    rlca                                          ; $5707: $07
    rla                                           ; $5708: $17
    rlca                                          ; $5709: $07
    ldh [$e5], a                                  ; $570a: $e0 $e5
    ldh [$e2], a                                  ; $570c: $e0 $e2
    ld b, b                                       ; $570e: $40
    ldh a, [rSB]                                  ; $570f: $f0 $01
    nop                                           ; $5711: $00
    ld hl, sp-$08                                 ; $5712: $f8 $f8
    ld hl, sp-$05                                 ; $5714: $f8 $fb
    ld hl, sp-$07                                 ; $5716: $f8 $f9
    nop                                           ; $5718: $00
    ld hl, sp-$08                                 ; $5719: $f8 $f8
    ld e, b                                       ; $571b: $58
    add h                                         ; $571c: $84
    ld [$00e3], sp                                ; $571d: $08 $e3 $00
    ld b, c                                       ; $5720: $41
    ld bc, $320c                                  ; $5721: $01 $0c $32
    ld a, b                                       ; $5724: $78
    add [hl]                                      ; $5725: $86
    ret z                                         ; $5726: $c8

    jr nc, jr_0d6_572c                            ; $5727: $30 $03

    or c                                          ; $5729: $b1
    nop                                           ; $572a: $00

jr_0d6_572b:
    nop                                           ; $572b: $00

jr_0d6_572c:
    jr nz, jr_0d6_5780                            ; $572c: $20 $52

    ld [de], a                                    ; $572e: $12
    inc h                                         ; $572f: $24
    ld a, [bc]                                    ; $5730: $0a
    sub b                                         ; $5731: $90
    ld a, [bc]                                    ; $5732: $0a
    ret nc                                        ; $5733: $d0

    inc b                                         ; $5734: $04
    dec b                                         ; $5735: $05
    ld b, b                                       ; $5736: $40
    ld [bc], a                                    ; $5737: $02
    nop                                           ; $5738: $00
    pop af                                        ; $5739: $f1
    pop bc                                        ; $573a: $c1
    nop                                           ; $573b: $00
    rla                                           ; $573c: $17
    rlca                                          ; $573d: $07
    nop                                           ; $573e: $00
    cpl                                           ; $573f: $2f
    adc a                                         ; $5740: $8f

jr_0d6_5741:
    cpl                                           ; $5741: $2f
    rrca                                          ; $5742: $0f
    cpl                                           ; $5743: $2f
    rrca                                          ; $5744: $0f
    ld e, a                                       ; $5745: $5f
    rra                                           ; $5746: $1f
    nop                                           ; $5747: $00
    ld e, a                                       ; $5748: $5f
    rra                                           ; $5749: $1f
    rst $18                                       ; $574a: $df
    rra                                           ; $574b: $1f
    ccf                                           ; $574c: $3f
    ccf                                           ; $574d: $3f
    nop                                           ; $574e: $00
    ld bc, $00f3                                  ; $574f: $01 $f3 $00
    nop                                           ; $5752: $00
    db $fc                                        ; $5753: $fc
    db $fc                                        ; $5754: $fc
    ld sp, hl                                     ; $5755: $f9
    ld a, [$f8fa]                                 ; $5756: $fa $fa $f8
    ld hl, sp-$06                                 ; $5759: $f8 $fa
    nop                                           ; $575b: $00
    db $fc                                        ; $575c: $fc
    db $fd                                        ; $575d: $fd
    db $fc                                        ; $575e: $fc
    db $fc                                        ; $575f: $fc
    db $fc                                        ; $5760: $fc
    db $fd                                        ; $5761: $fd
    ld hl, sp-$07                                 ; $5762: $f8 $f9
    nop                                           ; $5764: $00
    ld a, h                                       ; $5765: $7c
    ld a, h                                       ; $5766: $7c
    cp c                                          ; $5767: $b9
    ld a, [hl-]                                   ; $5768: $3a
    ld d, [hl]                                    ; $5769: $56
    sub c                                         ; $576a: $91
    jr nz, jr_0d6_57af                            ; $576b: $20 $42

    nop                                           ; $576d: $00
    db $10                                        ; $576e: $10
    dec h                                         ; $576f: $25
    ld [bc], a                                    ; $5770: $02
    sbc b                                         ; $5771: $98
    ld b, b                                       ; $5772: $40
    ld bc, $0e80                                  ; $5773: $01 $80 $0e
    nop                                           ; $5776: $00
    ld a, $3e                                     ; $5777: $3e $3e
    ld e, l                                       ; $5779: $5d
    sbc h                                         ; $577a: $9c
    ld [bc], a                                    ; $577b: $02
    ld b, c                                       ; $577c: $41
    inc c                                         ; $577d: $0c
    or d                                          ; $577e: $b2
    nop                                           ; $577f: $00

jr_0d6_5780:
    sbc b                                         ; $5780: $98
    ld b, h                                       ; $5781: $44
    nop                                           ; $5782: $00
    inc bc                                        ; $5783: $03
    nop                                           ; $5784: $00
    or [hl]                                       ; $5785: $b6
    nop                                           ; $5786: $00
    jr z, jr_0d6_5799                             ; $5787: $28 $10

    rst $08                                       ; $5789: $cf
    rrca                                          ; $578a: $0f
    cpl                                           ; $578b: $2f
    inc bc                                        ; $578c: $03
    nop                                           ; $578d: $00
    rrca                                          ; $578e: $0f
    ld c, a                                       ; $578f: $4f
    rlca                                          ; $5790: $07
    add a                                         ; $5791: $87
    nop                                           ; $5792: $00
    rlca                                          ; $5793: $07
    scf                                           ; $5794: $37
    rlca                                          ; $5795: $07
    ld d, a                                       ; $5796: $57
    rla                                           ; $5797: $17
    rst $20                                       ; $5798: $e7

jr_0d6_5799:
    push af                                       ; $5799: $f5
    ldh a, [rP1]                                  ; $579a: $f0 $00
    add sp, -$1f                                  ; $579c: $e8 $e1
    pop de                                        ; $579e: $d1
    call nz, $8ba0                                ; $579f: $c4 $a0 $8b
    ld b, e                                       ; $57a2: $43
    inc d                                         ; $57a3: $14
    nop                                           ; $57a4: $00
    ld b, [hl]                                    ; $57a5: $46
    ld de, HeaderDestinationCode                  ; $57a6: $11 $4a $01
    ld d, h                                       ; $57a9: $54
    ld [bc], a                                    ; $57aa: $02
    rrca                                          ; $57ab: $0f
    stop                                          ; $57ac: $10 $00
    inc b                                         ; $57ae: $04

jr_0d6_57af:
    ld b, b                                       ; $57af: $40
    inc d                                         ; $57b0: $14
    ld c, e                                       ; $57b1: $4b
    inc de                                        ; $57b2: $13
    adc b                                         ; $57b3: $88
    ld a, [bc]                                    ; $57b4: $0a
    sub h                                         ; $57b5: $94
    nop                                           ; $57b6: $00
    add c                                         ; $57b7: $81
    ld h, b                                       ; $57b8: $60
    ld b, [hl]                                    ; $57b9: $46
    ld sp, $0080                                  ; $57ba: $31 $80 $00
    jr jr_0d6_5741                                ; $57bd: $18 $82

    nop                                           ; $57bf: $00
    ld [de], a                                    ; $57c0: $12
    adc b                                         ; $57c1: $88
    db $10                                        ; $57c2: $10
    jp nz, $9d02                                  ; $57c3: $c2 $02 $9d

    add [hl]                                      ; $57c6: $86
    ld de, $0400                                  ; $57c7: $11 $00 $04
    xor d                                         ; $57ca: $aa
    ld b, $19                                     ; $57cb: $06 $19
    inc b                                         ; $57cd: $04
    dec bc                                        ; $57ce: $0b
    rst $10                                       ; $57cf: $d7
    rlca                                          ; $57d0: $07
    nop                                           ; $57d1: $00
    ld b, a                                       ; $57d2: $47
    sub a                                         ; $57d3: $97
    ld d, e                                       ; $57d4: $53
    add e                                         ; $57d5: $83
    pop de                                        ; $57d6: $d1
    add hl, bc                                    ; $57d7: $09
    sub d                                         ; $57d8: $92
    ld l, b                                       ; $57d9: $68
    nop                                           ; $57da: $00
    sbc d                                         ; $57db: $9a
    ld b, b                                       ; $57dc: $40
    jp nc, Jump_0d6_5228                          ; $57dd: $d2 $28 $52

    adc b                                         ; $57e0: $88
    xor c                                         ; $57e1: $a9
    add h                                         ; $57e2: $84
    nop                                           ; $57e3: $00
    and d                                         ; $57e4: $a2
    adc b                                         ; $57e5: $88
    and h                                         ; $57e6: $a4
    add c                                         ; $57e7: $81
    ret nc                                        ; $57e8: $d0

    push bc                                       ; $57e9: $c5
    ret nc                                        ; $57ea: $d0

    jp $d000                                      ; $57eb: $c3 $00 $d0


    jp $e2e8                                      ; $57ee: $c3 $e8 $e2


    add sp, -$20                                  ; $57f1: $e8 $e0
    jp nz, $0025                                  ; $57f3: $c2 $25 $00

    inc bc                                        ; $57f6: $03
    call nc, $a512                                ; $57f7: $d4 $12 $a5
    db $10                                        ; $57fa: $10
    jr nz, jr_0d6_580c                            ; $57fb: $20 $0f

    stop                                          ; $57fd: $10 $00
    ld b, b                                       ; $57ff: $40
    inc hl                                        ; $5800: $23
    ld h, e                                       ; $5801: $63
    add h                                         ; $5802: $84
    rst $20                                       ; $5803: $e7
    ld [$4000], sp                                ; $5804: $08 $00 $40
    nop                                           ; $5807: $00
    ld b, c                                       ; $5808: $41
    ld a, [bc]                                    ; $5809: $0a
    ld c, h                                       ; $580a: $4c
    inc de                                        ; $580b: $13

jr_0d6_580c:
    add b                                         ; $580c: $80
    ld d, [hl]                                    ; $580d: $56
    ld [$00a2], sp                                ; $580e: $08 $a2 $00
    add hl, bc                                    ; $5811: $09
    ld [de], a                                    ; $5812: $12
    ld de, $918a                                  ; $5813: $11 $8a $91
    ld c, d                                       ; $5816: $4a
    ld d, l                                       ; $5817: $55
    and c                                         ; $5818: $a1
    nop                                           ; $5819: $00
    dec [hl]                                      ; $581a: $35
    ld b, c                                       ; $581b: $41
    sub l                                         ; $581c: $95
    ld hl, $834b                                  ; $581d: $21 $4b $83
    ld c, e                                       ; $5820: $4b
    inc bc                                        ; $5821: $03
    nop                                           ; $5822: $00
    dec bc                                        ; $5823: $0b
    ld b, e                                       ; $5824: $43
    rla                                           ; $5825: $17
    rlca                                          ; $5826: $07
    rla                                           ; $5827: $17
    rlca                                          ; $5828: $07
    add sp, -$1f                                  ; $5829: $e8 $e1
    nop                                           ; $582b: $00
    db $f4                                        ; $582c: $f4
    ldh a, [$f5]                                  ; $582d: $f0 $f5
    ldh a, [$f4]                                  ; $582f: $f0 $f4
    pop af                                        ; $5831: $f1
    ld a, [$00f8]                                 ; $5832: $fa $f8 $00
    ld a, [$fbf8]                                 ; $5835: $fa $f8 $fb
    ld hl, sp-$04                                 ; $5838: $f8 $fc
    db $fc                                        ; $583a: $fc
    ld b, a                                       ; $583b: $47
    cp b                                          ; $583c: $b8
    jr nz, jr_0d6_5842                            ; $583d: $20 $03

    db $ec                                        ; $583f: $ec
    xor d                                         ; $5840: $aa
    nop                                           ; $5841: $00

jr_0d6_5842:
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    ccf                                           ; $5844: $3f
    nop                                           ; $5845: $00
    nop                                           ; $5846: $00
    ld b, b                                       ; $5847: $40
    rst $38                                       ; $5848: $ff
    rlca                                          ; $5849: $07
    nop                                           ; $584a: $00
    sub c                                         ; $584b: $91
    ld c, d                                       ; $584c: $4a
    nop                                           ; $584d: $00
    rlc b                                         ; $584e: $cb $00
    add c                                         ; $5850: $81
    ld [$5200], sp                                ; $5851: $08 $00 $52
    ld a, [bc]                                    ; $5854: $0a
    call nc, Call_000_1810                        ; $5855: $d4 $10 $18
    rla                                           ; $5858: $17
    add a                                         ; $5859: $87
    cpl                                           ; $585a: $2f
    jr nz, @-$6f                                  ; $585b: $20 $8f

    cpl                                           ; $585d: $2f
    pop bc                                        ; $585e: $c1
    nop                                           ; $585f: $00
    ld e, a                                       ; $5860: $5f
    rra                                           ; $5861: $1f
    ld e, a                                       ; $5862: $5f
    rra                                           ; $5863: $1f
    rst $18                                       ; $5864: $df
    nop                                           ; $5865: $00
    rra                                           ; $5866: $1f
    ccf                                           ; $5867: $3f
    ccf                                           ; $5868: $3f
    nop                                           ; $5869: $00
    ld bc, $00df                                  ; $586a: $01 $df $00
    ld b, b                                       ; $586d: $40
    rst $38                                       ; $586e: $ff
    ld bc, $fe40                                  ; $586f: $01 $40 $fe
    cp $f9                                        ; $5872: $fe $f9
    ld hl, sp-$03                                 ; $5874: $f8 $fd
    db $fc                                        ; $5876: $fc
    nop                                           ; $5877: $00
    ei                                            ; $5878: $fb
    ld hl, sp-$0e                                 ; $5879: $f8 $f2
    pop af                                        ; $587b: $f1
    ldh [$e7], a                                  ; $587c: $e0 $e7
    ret nc                                        ; $587e: $d0

    ret nz                                        ; $587f: $c0

    nop                                           ; $5880: $00
    ld hl, $880c                                  ; $5881: $21 $0c $88
    inc de                                        ; $5884: $13
    ld [$7f11], sp                                ; $5885: $08 $11 $7f
    ld a, a                                       ; $5888: $7f
    nop                                           ; $5889: $00
    ccf                                           ; $588a: $3f
    cp a                                          ; $588b: $bf
    rrca                                          ; $588c: $0f
    adc a                                         ; $588d: $8f
    rla                                           ; $588e: $17
    rlca                                          ; $588f: $07
    dec bc                                        ; $5890: $0b
    inc bc                                        ; $5891: $03
    ld [bc], a                                    ; $5892: $02
    inc b                                         ; $5893: $04
    ld b, b                                       ; $5894: $40
    add e                                         ; $5895: $83
    jr nc, @+$22                                  ; $5896: $30 $20

    ld d, b                                       ; $5898: $50
    jr nc, jr_0d6_58e3                            ; $5899: $30 $48

    ld a, a                                       ; $589b: $7f
    nop                                           ; $589c: $00
    ld a, a                                       ; $589d: $7f
    sbc a                                         ; $589e: $9f
    rra                                           ; $589f: $1f
    ldh a, [$f0]                                  ; $58a0: $f0 $f0
    jp $bcc4                                      ; $58a2: $c3 $c4 $bc


    nop                                           ; $58a5: $00
    add d                                         ; $58a6: $82
    ld b, b                                       ; $58a7: $40
    jr nz, jr_0d6_58aa                            ; $58a8: $20 $00

jr_0d6_58aa:
    inc d                                         ; $58aa: $14
    nop                                           ; $58ab: $00
    ld bc, $0140                                  ; $58ac: $01 $40 $01
    rrca                                          ; $58af: $0f
    ld b, b                                       ; $58b0: $40
    ld d, $00                                     ; $58b1: $16 $00
    nop                                           ; $58b3: $00
    rst $38                                       ; $58b4: $ff
    nop                                           ; $58b5: $00
    ld bc, $0000                                  ; $58b6: $01 $00 $00
    adc e                                         ; $58b9: $8b
    dec bc                                        ; $58ba: $0b
    nop                                           ; $58bb: $00
    rrca                                          ; $58bc: $0f
    jr nz, @+$09                                  ; $58bd: $20 $07

    ld l, b                                       ; $58bf: $68
    ld b, b                                       ; $58c0: $40
    nop                                           ; $58c1: $00
    xor b                                         ; $58c2: $a8
    nop                                           ; $58c3: $00
    ld bc, $02fc                                  ; $58c4: $01 $fc $02
    inc bc                                        ; $58c7: $03
    inc b                                         ; $58c8: $04
    stop                                          ; $58c9: $10 $00
    ld b, c                                       ; $58cb: $41
    ld d, b                                       ; $58cc: $50
    nop                                           ; $58cd: $00
    ldh [$15], a                                  ; $58ce: $e0 $15
    ld b, b                                       ; $58d0: $40
    and a                                         ; $58d1: $a7
    add l                                         ; $58d2: $85
    nop                                           ; $58d3: $00
    ld c, d                                       ; $58d4: $4a
    ld l, a                                       ; $58d5: $6f
    rrca                                          ; $58d6: $0f
    rla                                           ; $58d7: $17
    add a                                         ; $58d8: $87
    dec bc                                        ; $58d9: $0b
    inc bc                                        ; $58da: $03
    add l                                         ; $58db: $85
    nop                                           ; $58dc: $00
    ld b, c                                       ; $58dd: $41
    ld h, d                                       ; $58de: $62
    db $10                                        ; $58df: $10
    db $10                                        ; $58e0: $10
    jr z, jr_0d6_58e3                             ; $58e1: $28 $00

jr_0d6_58e3:
    add h                                         ; $58e3: $84
    nop                                           ; $58e4: $00
    nop                                           ; $58e5: $00
    and b                                         ; $58e6: $a0
    and b                                         ; $58e7: $a0
    adc d                                         ; $58e8: $8a
    and b                                         ; $58e9: $a0
    add h                                         ; $58ea: $84
    and b                                         ; $58eb: $a0
    adc c                                         ; $58ec: $89
    ret nc                                        ; $58ed: $d0

    nop                                           ; $58ee: $00
    jp $c6c1                                      ; $58ef: $c3 $c1 $c6


    jp nz, $e5cd                                  ; $58f2: $c2 $cd $e5

    ld [$00e2], a                                 ; $58f5: $ea $e2 $00
    push hl                                       ; $58f8: $e5
    ld sp, $1844                                  ; $58f9: $31 $44 $18
    inc bc                                        ; $58fc: $03
    ld [$2024], sp                                ; $58fd: $08 $24 $20
    nop                                           ; $5900: $00
    ld d, l                                       ; $5901: $55
    jr nc, jr_0d6_590e                            ; $5902: $30 $0a

    add b                                         ; $5904: $80
    inc c                                         ; $5905: $0c
    db $10                                        ; $5906: $10
    and c                                         ; $5907: $a1
    add sp, $00                                   ; $5908: $e8 $00
    db $10                                        ; $590a: $10
    ld [$1894], sp                                ; $590b: $08 $94 $18

jr_0d6_590e:
    jr nz, jr_0d6_5940                            ; $590e: $20 $30

    ld c, d                                       ; $5910: $4a
    ld [hl+], a                                   ; $5911: $22
    nop                                           ; $5912: $00
    ld d, h                                       ; $5913: $54
    ld b, $28                                     ; $5914: $06 $28
    nop                                           ; $5916: $00
    add c                                         ; $5917: $81
    ld bc, $02ca                                  ; $5918: $01 $ca $02
    nop                                           ; $591b: $00
    sub h                                         ; $591c: $94
    dec b                                         ; $591d: $05
    ld d, c                                       ; $591e: $51
    dec b                                         ; $591f: $05
    ld hl, $2155                                  ; $5920: $21 $55 $21
    adc e                                         ; $5923: $8b
    nop                                           ; $5924: $00
    ld b, e                                       ; $5925: $43
    ld c, e                                       ; $5926: $4b
    add e                                         ; $5927: $83
    adc e                                         ; $5928: $8b
    inc bc                                        ; $5929: $03
    rla                                           ; $592a: $17
    rlca                                          ; $592b: $07
    rla                                           ; $592c: $17
    nop                                           ; $592d: $00
    ld b, a                                       ; $592e: $47
    pop hl                                        ; $592f: $e1
    ld [c], a                                     ; $5930: $e2
    ldh a, [$f1]                                  ; $5931: $f0 $f1
    db $f4                                        ; $5933: $f4
    ldh a, [$f4]                                  ; $5934: $f0 $f4
    nop                                           ; $5936: $00
    ldh a, [$fa]                                  ; $5937: $f0 $fa
    ld hl, sp-$06                                 ; $5939: $f8 $fa
    ld hl, sp-$05                                 ; $593b: $f8 $fb
    ld hl, sp-$04                                 ; $593d: $f8 $fc
    nop                                           ; $593f: $00

jr_0d6_5940:
    db $fc                                        ; $5940: $fc
    ldh a, [$0c]                                  ; $5941: $f0 $0c
    and b                                         ; $5943: $a0
    ld d, c                                       ; $5944: $51
    ld bc, $0100                                  ; $5945: $01 $00 $01
    db $10                                        ; $5948: $10
    or h                                          ; $5949: $b4
    db $10                                        ; $594a: $10
    xor c                                         ; $594b: $a9
    adc d                                         ; $594c: $8a
    jr jr_0d6_5953                                ; $594d: $18 $04

    ld [$4080], sp                                ; $594f: $08 $80 $40
    ld [bc], a                                    ; $5952: $02

jr_0d6_5953:
    ld b, b                                       ; $5953: $40
    ld a, [bc]                                    ; $5954: $0a
    ld b, h                                       ; $5955: $44
    sub d                                         ; $5956: $92
    add h                                         ; $5957: $84
    ld c, d                                       ; $5958: $4a
    sbc d                                         ; $5959: $9a
    jr jr_0d6_59b3                                ; $595a: $18 $57

    nop                                           ; $595c: $00
    add a                                         ; $595d: $87
    rrca                                          ; $595e: $0f
    xor a                                         ; $595f: $af
    cpl                                           ; $5960: $2f
    adc a                                         ; $5961: $8f
    cpl                                           ; $5962: $2f
    adc a                                         ; $5963: $8f
    ld e, a                                       ; $5964: $5f
    nop                                           ; $5965: $00
    rra                                           ; $5966: $1f
    ld e, a                                       ; $5967: $5f
    rra                                           ; $5968: $1f
    rst $18                                       ; $5969: $df
    rra                                           ; $596a: $1f
    ccf                                           ; $596b: $3f
    ccf                                           ; $596c: $3f
    nop                                           ; $596d: $00
    ld bc, $00e1                                  ; $596e: $01 $e1 $00
    ld b, b                                       ; $5971: $40
    rst $38                                       ; $5972: $ff
    ld bc, $fe40                                  ; $5973: $01 $40 $fe
    cp $f9                                        ; $5976: $fe $f9
    ld hl, sp-$20                                 ; $5978: $f8 $e0
    ldh [rP1], a                                  ; $597a: $e0 $00
    add c                                         ; $597c: $81
    sbc h                                         ; $597d: $9c
    ld b, b                                       ; $597e: $40
    inc hl                                        ; $597f: $23
    nop                                           ; $5980: $00
    ld e, h                                       ; $5981: $5c
    ld a, [hl+]                                   ; $5982: $2a
    nop                                           ; $5983: $00
    nop                                           ; $5984: $00
    ld a, [hl+]                                   ; $5985: $2a
    nop                                           ; $5986: $00
    inc e                                         ; $5987: $1c
    ld b, b                                       ; $5988: $40
    nop                                           ; $5989: $00
    inc hl                                        ; $598a: $23
    ld a, a                                       ; $598b: $7f
    ld a, a                                       ; $598c: $7f
    nop                                           ; $598d: $00
    ccf                                           ; $598e: $3f
    ccf                                           ; $598f: $3f
    adc a                                         ; $5990: $8f
    rrca                                          ; $5991: $0f
    rla                                           ; $5992: $17
    ld b, a                                       ; $5993: $47
    dec bc                                        ; $5994: $0b
    and e                                         ; $5995: $a3
    ld [bc], a                                    ; $5996: $02
    inc b                                         ; $5997: $04
    sub b                                         ; $5998: $90
    inc bc                                        ; $5999: $03
    ld b, b                                       ; $599a: $40
    db $10                                        ; $599b: $10
    ld c, b                                       ; $599c: $48
    jr nc, jr_0d6_59e7                            ; $599d: $30 $48

    ld a, a                                       ; $599f: $7f
    nop                                           ; $59a0: $00
    ld a, a                                       ; $59a1: $7f
    sbc a                                         ; $59a2: $9f
    rra                                           ; $59a3: $1f
    or $f0                                        ; $59a4: $f6 $f0
    jp hl                                         ; $59a6: $e9


    ldh [$d6], a                                  ; $59a7: $e0 $d6
    nop                                           ; $59a9: $00
    ret nz                                        ; $59aa: $c0

    xor b                                         ; $59ab: $a8
    add b                                         ; $59ac: $80
    ld e, d                                       ; $59ad: $5a
    ld bc, $0250                                  ; $59ae: $01 $50 $02
    ld d, h                                       ; $59b1: $54
    nop                                           ; $59b2: $00

jr_0d6_59b3:
    ld [bc], a                                    ; $59b3: $02
    ld d, b                                       ; $59b4: $50
    inc b                                         ; $59b5: $04
    sub h                                         ; $59b6: $94
    ld [$04a2], sp                                ; $59b7: $08 $a2 $04
    ld bc, $1800                                  ; $59ba: $01 $00 $18
    ld b, d                                       ; $59bd: $42
    add c                                         ; $59be: $81
    nop                                           ; $59bf: $00
    rlca                                          ; $59c0: $07
    stop                                          ; $59c1: $10 $00
    sub b                                         ; $59c3: $90
    nop                                           ; $59c4: $00
    ld h, $a2                                     ; $59c5: $26 $a2
    dec c                                         ; $59c7: $0d
    nop                                           ; $59c8: $00
    ld d, d                                       ; $59c9: $52
    add c                                         ; $59ca: $81
    ld d, b                                       ; $59cb: $50
    jr nz, jr_0d6_59ce                            ; $59cc: $20 $00

jr_0d6_59ce:
    sbc c                                         ; $59ce: $99
    ld [$00a5], sp                                ; $59cf: $08 $a5 $00

jr_0d6_59d2:
    dec c                                         ; $59d2: $0d
    jr nz, jr_0d6_59f1                            ; $59d3: $20 $1c

    nop                                           ; $59d5: $00
    nop                                           ; $59d6: $00
    ld c, h                                       ; $59d7: $4c
    nop                                           ; $59d8: $00
    inc a                                         ; $59d9: $3c
    ld l, a                                       ; $59da: $6f
    rrca                                          ; $59db: $0f
    rla                                           ; $59dc: $17
    rlca                                          ; $59dd: $07
    xor e                                         ; $59de: $ab
    nop                                           ; $59df: $00
    inc bc                                        ; $59e0: $03
    dec [hl]                                      ; $59e1: $35
    ld bc, $001a                                  ; $59e2: $01 $1a $00
    nop                                           ; $59e5: $00
    ld b, b                                       ; $59e6: $40

jr_0d6_59e7:
    cp h                                          ; $59e7: $bc
    nop                                           ; $59e8: $00
    nop                                           ; $59e9: $00
    and b                                         ; $59ea: $a0
    ld e, b                                       ; $59eb: $58
    and b                                         ; $59ec: $a0
    add l                                         ; $59ed: $85
    and b                                         ; $59ee: $a0
    add l                                         ; $59ef: $85
    and c                                         ; $59f0: $a1

jr_0d6_59f1:
    nop                                           ; $59f1: $00
    add h                                         ; $59f2: $84
    pop de                                        ; $59f3: $d1
    ret nz                                        ; $59f4: $c0

    ret nc                                        ; $59f5: $d0

    pop bc                                        ; $59f6: $c1
    ret nc                                        ; $59f7: $d0

    pop bc                                        ; $59f8: $c1
    jp hl                                         ; $59f9: $e9


    nop                                           ; $59fa: $00
    ldh [$e9], a                                  ; $59fb: $e0 $e9
    ldh [$03], a                                  ; $59fd: $e0 $03
    inc l                                         ; $59ff: $2c
    dec b                                         ; $5a00: $05
    ld [$0022], a                                 ; $5a01: $ea $22 $00
    ld c, l                                       ; $5a04: $4d
    inc hl                                        ; $5a05: $23
    ld c, h                                       ; $5a06: $4c
    dec b                                         ; $5a07: $05
    ld a, [hl+]                                   ; $5a08: $2a
    inc bc                                        ; $5a09: $03
    db $ec                                        ; $5a0a: $ec
    ld hl, $4e00                                  ; $5a0b: $21 $00 $4e
    jr nz, @+$49                                  ; $5a0e: $20 $47

    nop                                           ; $5a10: $00
    cp h                                          ; $5a11: $bc
    and b                                         ; $5a12: $a0
    ld e, [hl]                                    ; $5a13: $5e
    ret nc                                        ; $5a14: $d0

    nop                                           ; $5a15: $00
    ld a, [hl+]                                   ; $5a16: $2a
    and b                                         ; $5a17: $a0
    ld e, d                                       ; $5a18: $5a
    ld b, b                                       ; $5a19: $40
    or [hl]                                       ; $5a1a: $b6
    and b                                         ; $5a1b: $a0
    ld d, e                                       ; $5a1c: $53
    ld b, b                                       ; $5a1d: $40
    nop                                           ; $5a1e: $00
    cp e                                          ; $5a1f: $bb
    nop                                           ; $5a20: $00
    ei                                            ; $5a21: $fb
    ld de, $1149                                  ; $5a22: $11 $49 $11
    add c                                         ; $5a25: $81
    ld b, c                                       ; $5a26: $41
    nop                                           ; $5a27: $00
    ld de, $d303                                  ; $5a28: $11 $03 $d3
    inc hl                                        ; $5a2b: $23
    ld c, e                                       ; $5a2c: $4b
    inc de                                        ; $5a2d: $13
    dec bc                                        ; $5a2e: $0b
    rla                                           ; $5a2f: $17
    nop                                           ; $5a30: $00
    ld h, a                                       ; $5a31: $67
    rlca                                          ; $5a32: $07
    scf                                           ; $5a33: $37
    add sp, -$1f                                  ; $5a34: $e8 $e1
    db $f4                                        ; $5a36: $f4
    pop af                                        ; $5a37: $f1
    push af                                       ; $5a38: $f5
    nop                                           ; $5a39: $00
    ldh a, [$f5]                                  ; $5a3a: $f0 $f5
    ldh a, [$fa]                                  ; $5a3c: $f0 $fa
    ld hl, sp-$06                                 ; $5a3e: $f8 $fa
    ld hl, sp-$05                                 ; $5a40: $f8 $fb
    nop                                           ; $5a42: $00
    ld hl, sp-$04                                 ; $5a43: $f8 $fc
    db $fc                                        ; $5a45: $fc
    nop                                           ; $5a46: $00
    daa                                           ; $5a47: $27
    nop                                           ; $5a48: $00
    rst $20                                       ; $5a49: $e7
    jr nz, jr_0d6_5a4c                            ; $5a4a: $20 $00

jr_0d6_5a4c:
    rlca                                          ; $5a4c: $07
    jr nz, jr_0d6_59d2                            ; $5a4d: $20 $83

    nop                                           ; $5a4f: $00
    or b                                          ; $5a50: $b0
    nop                                           ; $5a51: $00
    nop                                           ; $5a52: $00
    rst $38                                       ; $5a53: $ff
    ld b, b                                       ; $5a54: $40
    nop                                           ; $5a55: $00
    ld bc, $fb00                                  ; $5a56: $01 $00 $fb
    nop                                           ; $5a59: $00
    ld sp, hl                                     ; $5a5a: $f9
    nop                                           ; $5a5b: $00
    pop af                                        ; $5a5c: $f1
    nop                                           ; $5a5d: $00
    db $10                                        ; $5a5e: $10
    add b                                         ; $5a5f: $80
    nop                                           ; $5a60: $00
    ld bc, $1810                                  ; $5a61: $01 $10 $18
    daa                                           ; $5a64: $27

jr_0d6_5a65:
    add a                                         ; $5a65: $87
    cpl                                           ; $5a66: $2f
    adc a                                         ; $5a67: $8f
    add b                                         ; $5a68: $80
    ld [bc], a                                    ; $5a69: $02
    ld [$1f5f], sp                                ; $5a6a: $08 $5f $1f
    ld e, a                                       ; $5a6d: $5f
    rra                                           ; $5a6e: $1f
    rst $18                                       ; $5a6f: $df
    rra                                           ; $5a70: $1f
    ccf                                           ; $5a71: $3f
    nop                                           ; $5a72: $00
    ccf                                           ; $5a73: $3f
    nop                                           ; $5a74: $00
    ld bc, $00e1                                  ; $5a75: $01 $e1 $00
    ld b, b                                       ; $5a78: $40
    rst $38                                       ; $5a79: $ff
    ld bc, $fe40                                  ; $5a7a: $01 $40 $fe
    cp $f9                                        ; $5a7d: $fe $f9
    ld hl, sp-$02                                 ; $5a7f: $f8 $fe
    cp $00                                        ; $5a81: $fe $00
    db $fc                                        ; $5a83: $fc
    db $fc                                        ; $5a84: $fc
    pop af                                        ; $5a85: $f1
    ld a, [c]                                     ; $5a86: $f2
    db $eb                                        ; $5a87: $eb
    ldh [$d3], a                                  ; $5a88: $e0 $d3
    call nz, $2600                                ; $5a8a: $c4 $00 $26
    ld bc, $00c7                                  ; $5a8d: $01 $c7 $00
    ld [bc], a                                    ; $5a90: $02
    dec h                                         ; $5a91: $25
    ld a, a                                       ; $5a92: $7f
    ld a, a                                       ; $5a93: $7f
    nop                                           ; $5a94: $00
    ccf                                           ; $5a95: $3f
    ccf                                           ; $5a96: $3f
    adc a                                         ; $5a97: $8f
    ld c, a                                       ; $5a98: $4f
    db $e3                                        ; $5a99: $e3
    inc de                                        ; $5a9a: $13
    ld a, c                                       ; $5a9b: $79
    add l                                         ; $5a9c: $85
    ld [bc], a                                    ; $5a9d: $02
    xor h                                         ; $5a9e: $ac
    ld d, d                                       ; $5a9f: $52
    ld d, [hl]                                    ; $5aa0: $56
    xor b                                         ; $5aa1: $a8
    ld [hl+], a                                   ; $5aa2: $22
    call nc, Call_0d6_4830                        ; $5aa3: $d4 $30 $48
    ld a, a                                       ; $5aa6: $7f
    nop                                           ; $5aa7: $00
    ld a, a                                       ; $5aa8: $7f
    sbc a                                         ; $5aa9: $9f
    rra                                           ; $5aaa: $1f
    or $f0                                        ; $5aab: $f6 $f0
    add sp, -$1f                                  ; $5aad: $e8 $e1
    ret nc                                        ; $5aaf: $d0

    nop                                           ; $5ab0: $00
    rst $00                                       ; $5ab1: $c7
    and b                                         ; $5ab2: $a0
    adc a                                         ; $5ab3: $8f
    ld b, b                                       ; $5ab4: $40
    rra                                           ; $5ab5: $1f
    ld b, b                                       ; $5ab6: $40
    add hl, de                                    ; $5ab7: $19
    ld b, h                                       ; $5ab8: $44
    nop                                           ; $5ab9: $00

jr_0d6_5aba:
    ld [de], a                                    ; $5aba: $12
    ld b, a                                       ; $5abb: $47
    db $10                                        ; $5abc: $10
    db $10                                        ; $5abd: $10
    rst $00                                       ; $5abe: $c7
    jr nz, @-$33                                  ; $5abf: $20 $cb

    nop                                           ; $5ac1: $00
    nop                                           ; $5ac2: $00
    ld a, [$c004]                                 ; $5ac3: $fa $04 $c0
    dec de                                        ; $5ac6: $1b
    and b                                         ; $5ac7: $a0
    jr nz, jr_0d6_5a65                            ; $5ac8: $20 $9b

    nop                                           ; $5aca: $00
    nop                                           ; $5acb: $00
    dec l                                         ; $5acc: $2d
    nop                                           ; $5acd: $00
    add b                                         ; $5ace: $80
    ld [bc], a                                    ; $5acf: $02

jr_0d6_5ad0:
    pop hl                                        ; $5ad0: $e1
    inc bc                                        ; $5ad1: $03
    ld b, h                                       ; $5ad2: $44
    dec b                                         ; $5ad3: $05
    nop                                           ; $5ad4: $00
    adc d                                         ; $5ad5: $8a
    ld [bc], a                                    ; $5ad6: $02
    inc e                                         ; $5ad7: $1c
    add c                                         ; $5ad8: $81
    ld e, [hl]                                    ; $5ad9: $5e

jr_0d6_5ada:
    jp nz, Jump_0d6_6129                          ; $5ada: $c2 $29 $61

    nop                                           ; $5add: $00
    adc h                                         ; $5ade: $8c
    ld bc, $6ff4                                  ; $5adf: $01 $f4 $6f
    rrca                                          ; $5ae2: $0f
    rla                                           ; $5ae3: $17
    ld h, a                                       ; $5ae4: $67
    ld l, e                                       ; $5ae5: $6b
    nop                                           ; $5ae6: $00

jr_0d6_5ae7:
    inc bc                                        ; $5ae7: $03
    add l                                         ; $5ae8: $85
    ld de, $b802                                  ; $5ae9: $11 $02 $b8
    add d                                         ; $5aec: $82
    ld e, b                                       ; $5aed: $58
    ld b, d                                       ; $5aee: $42
    nop                                           ; $5aef: $00
    sbc b                                         ; $5af0: $98
    ld b, d                                       ; $5af1: $42
    sbc b                                         ; $5af2: $98
    and l                                         ; $5af3: $a5
    add d                                         ; $5af4: $82
    and c                                         ; $5af5: $a1
    add h                                         ; $5af6: $84
    and c                                         ; $5af7: $a1
    db $10                                        ; $5af8: $10
    add h                                         ; $5af9: $84
    ret nc                                        ; $5afa: $d0

    jp nz, $0002                                  ; $5afb: $c2 $02 $00

    jp $e1e8                                      ; $5afe: $c3 $e8 $e1


    add sp, $00                                   ; $5b01: $e8 $00
    pop hl                                        ; $5b03: $e1
    sbc e                                         ; $5b04: $9b
    jr nz, @+$0f                                  ; $5b05: $20 $0d

    and b                                         ; $5b07: $a0
    adc b                                         ; $5b08: $88
    ld b, b                                       ; $5b09: $40
    sbc a                                         ; $5b0a: $9f
    nop                                           ; $5b0b: $00
    ld b, b                                       ; $5b0c: $40
    rl b                                          ; $5b0d: $cb $10
    ld b, [hl]                                    ; $5b0f: $46
    jr nz, jr_0d6_5b52                            ; $5b10: $20 $40

    ld hl, $0000                                  ; $5b12: $21 $00 $00
    sub $00                                       ; $5b15: $d6 $00
    jr nc, jr_0d6_5aba                            ; $5b17: $30 $a1

    ld d, b                                       ; $5b19: $50
    and [hl]                                      ; $5b1a: $a6
    db $10                                        ; $5b1b: $10
    add b                                         ; $5b1c: $80
    nop                                           ; $5b1d: $00
    dec d                                         ; $5b1e: $15
    nop                                           ; $5b1f: $00
    ld [hl], l                                    ; $5b20: $75
    pop bc                                        ; $5b21: $c1
    ld a, [hl+]                                   ; $5b22: $2a
    add l                                         ; $5b23: $85
    ld d, d                                       ; $5b24: $52
    inc bc                                        ; $5b25: $03
    nop                                           ; $5b26: $00
    xor h                                         ; $5b27: $ac
    dec b                                         ; $5b28: $05
    ld de, $21c5                                  ; $5b29: $11 $c5 $21
    ld h, l                                       ; $5b2c: $65
    add c                                         ; $5b2d: $81
    ld h, l                                       ; $5b2e: $65
    nop                                           ; $5b2f: $00
    sub c                                         ; $5b30: $91
    jp $c123                                      ; $5b31: $c3 $23 $c1


    ld hl, $5280                                  ; $5b34: $21 $80 $52
    dec b                                         ; $5b37: $05
    inc b                                         ; $5b38: $04
    sub c                                         ; $5b39: $91
    add sp, -$20                                  ; $5b3a: $e8 $e0
    db $f4                                        ; $5b3c: $f4
    ldh a, [rSC]                                  ; $5b3d: $f0 $02
    ld [$f8fa], sp                                ; $5b3f: $08 $fa $f8
    nop                                           ; $5b42: $00
    ld a, [$fbf8]                                 ; $5b43: $fa $f8 $fb
    ld hl, sp-$04                                 ; $5b46: $f8 $fc
    db $fc                                        ; $5b48: $fc
    ld c, $a0                                     ; $5b49: $0e $a0
    nop                                           ; $5b4b: $00
    inc d                                         ; $5b4c: $14
    ld b, b                                       ; $5b4d: $40
    jr nc, jr_0d6_5ad0                            ; $5b4e: $30 $80

    jr nz, jr_0d6_5ada                            ; $5b50: $20 $88

jr_0d6_5b52:
    nop                                           ; $5b52: $00
    ld e, b                                       ; $5b53: $58
    nop                                           ; $5b54: $00
    nop                                           ; $5b55: $00
    nop                                           ; $5b56: $00
    rst $38                                       ; $5b57: $ff
    nop                                           ; $5b58: $00
    nop                                           ; $5b59: $00
    nop                                           ; $5b5a: $00
    ld b, [hl]                                    ; $5b5b: $46
    add hl, de                                    ; $5b5c: $19
    nop                                           ; $5b5d: $00
    inc b                                         ; $5b5e: $04
    or d                                          ; $5b5f: $b2
    adc b                                         ; $5b60: $88
    ld h, d                                       ; $5b61: $62
    sub b                                         ; $5b62: $90
    ld h, l                                       ; $5b63: $65
    ld d, b                                       ; $5b64: $50
    jr nz, jr_0d6_5ae7                            ; $5b65: $20 $80

    db $10                                        ; $5b67: $10
    jr jr_0d6_5b75                                ; $5b68: $18 $0b

    add e                                         ; $5b6a: $83
    ld b, a                                       ; $5b6b: $47
    rlca                                          ; $5b6c: $07
    ld c, a                                       ; $5b6d: $4f
    adc a                                         ; $5b6e: $8f
    cpl                                           ; $5b6f: $2f
    nop                                           ; $5b70: $00
    ld c, a                                       ; $5b71: $4f
    rla                                           ; $5b72: $17
    daa                                           ; $5b73: $27
    ld c, a                                       ; $5b74: $4f

jr_0d6_5b75:
    rrca                                          ; $5b75: $0f
    rst $18                                       ; $5b76: $df
    rra                                           ; $5b77: $1f
    ccf                                           ; $5b78: $3f
    nop                                           ; $5b79: $00
    ccf                                           ; $5b7a: $3f
    nop                                           ; $5b7b: $00
    ld bc, $00e6                                  ; $5b7c: $01 $e6 $00
    ld b, b                                       ; $5b7f: $40
    rst $38                                       ; $5b80: $ff
    ld bc, $fe40                                  ; $5b81: $01 $40 $fe
    cp $f9                                        ; $5b84: $fe $f9
    ld hl, sp-$10                                 ; $5b86: $f8 $f0
    ldh a, [rP1]                                  ; $5b88: $f0 $00
    add sp, -$19                                  ; $5b8a: $e8 $e7

jr_0d6_5b8c:
    sub b                                         ; $5b8c: $90
    adc h                                         ; $5b8d: $8c
    and b                                         ; $5b8e: $a0
    sbc b                                         ; $5b8f: $98
    add b                                         ; $5b90: $80
    and e                                         ; $5b91: $a3
    nop                                           ; $5b92: $00
    inc bc                                        ; $5b93: $03
    inc a                                         ; $5b94: $3c
    ret nz                                        ; $5b95: $c0

    nop                                           ; $5b96: $00
    ld hl, $3f12                                  ; $5b97: $21 $12 $3f
    ccf                                           ; $5b9a: $3f
    nop                                           ; $5b9b: $00
    ld e, a                                       ; $5b9c: $5f
    sbc a                                         ; $5b9d: $9f
    dec h                                         ; $5b9e: $25
    push bc                                       ; $5b9f: $c5
    ld [de], a                                    ; $5ba0: $12
    ld h, b                                       ; $5ba1: $60
    add hl, bc                                    ; $5ba2: $09
    sub d                                         ; $5ba3: $92
    ld [bc], a                                    ; $5ba4: $02
    ldh [rIF], a                                  ; $5ba5: $e0 $0f
    nop                                           ; $5ba7: $00
    nop                                           ; $5ba8: $00
    call nz, $3008                                ; $5ba9: $c4 $08 $30
    jr z, jr_0d6_5c2d                             ; $5bac: $28 $7f

    add b                                         ; $5bae: $80
    ld bc, $9f10                                  ; $5baf: $01 $10 $9f
    rra                                           ; $5bb2: $1f
    or $f0                                        ; $5bb3: $f6 $f0
    add sp, -$20                                  ; $5bb5: $e8 $e0
    pop de                                        ; $5bb7: $d1
    nop                                           ; $5bb8: $00
    call nz, $89a2                                ; $5bb9: $c4 $a2 $89
    ld b, h                                       ; $5bbc: $44
    ld [de], a                                    ; $5bbd: $12
    ld b, c                                       ; $5bbe: $41
    inc d                                         ; $5bbf: $14
    ld b, b                                       ; $5bc0: $40
    nop                                           ; $5bc1: $00
    ld de, HeaderNewLicenseeCode                  ; $5bc2: $11 $44 $01
    ld d, h                                       ; $5bc5: $54
    inc hl                                        ; $5bc6: $23
    and b                                         ; $5bc7: $a0
    ld d, h                                       ; $5bc8: $54
    ld b, b                                       ; $5bc9: $40
    nop                                           ; $5bca: $00
    and e                                         ; $5bcb: $a3
    add l                                         ; $5bcc: $85
    nop                                           ; $5bcd: $00
    ld b, d                                       ; $5bce: $42
    jr z, jr_0d6_5b75                             ; $5bcf: $28 $a4

    ld b, b                                       ; $5bd1: $40
    and d                                         ; $5bd2: $a2
    nop                                           ; $5bd3: $00
    ld c, h                                       ; $5bd4: $4c
    push bc                                       ; $5bd5: $c5
    ld [hl+], a                                   ; $5bd6: $22
    adc d                                         ; $5bd7: $8a
    ld h, h                                       ; $5bd8: $64
    add l                                         ; $5bd9: $85
    ld a, [bc]                                    ; $5bda: $0a
    ld [bc], a                                    ; $5bdb: $02
    nop                                           ; $5bdc: $00
    push hl                                       ; $5bdd: $e5
    ld d, b                                       ; $5bde: $50
    nop                                           ; $5bdf: $00
    and a                                         ; $5be0: $a7
    nop                                           ; $5be1: $00
    sub c                                         ; $5be2: $91
    ld [bc], a                                    ; $5be3: $02
    ld a, [hl+]                                   ; $5be4: $2a
    nop                                           ; $5be5: $00
    ld de, $4033                                  ; $5be6: $11 $33 $40
    ld l, a                                       ; $5be9: $6f
    rrca                                          ; $5bea: $0f
    rla                                           ; $5beb: $17
    rlca                                          ; $5bec: $07
    adc e                                         ; $5bed: $8b
    nop                                           ; $5bee: $00
    inc hl                                        ; $5bef: $23
    ld b, l                                       ; $5bf0: $45
    sub c                                         ; $5bf1: $91
    ld [bc], a                                    ; $5bf2: $02
    ld e, b                                       ; $5bf3: $58
    add d                                         ; $5bf4: $82
    ld [$0082], sp                                ; $5bf5: $08 $82 $00
    jr nc, jr_0d6_5b8c                            ; $5bf8: $30 $92

    nop                                           ; $5bfa: $00
    and c                                         ; $5bfb: $a1
    add h                                         ; $5bfc: $84
    xor b                                         ; $5bfd: $a8
    add d                                         ; $5bfe: $82
    and d                                         ; $5bff: $a2
    nop                                           ; $5c00: $00
    adc b                                         ; $5c01: $88
    call nc, $d0c0                                ; $5c02: $d4 $c0 $d0
    push bc                                       ; $5c05: $c5
    jp nc, $e8c0                                  ; $5c06: $d2 $c0 $e8

    nop                                           ; $5c09: $00
    ld [c], a                                     ; $5c0a: $e2
    jp hl                                         ; $5c0b: $e9


    ldh [$a6], a                                  ; $5c0c: $e0 $a6
    ld c, b                                       ; $5c0e: $48
    add h                                         ; $5c0f: $84
    ld h, e                                       ; $5c10: $63
    ld h, d                                       ; $5c11: $62
    nop                                           ; $5c12: $00
    adc b                                         ; $5c13: $88
    pop de                                        ; $5c14: $d1
    ld h, $12                                     ; $5c15: $26 $12
    ld h, b                                       ; $5c17: $60
    ld [hl], c                                    ; $5c18: $71
    inc b                                         ; $5c19: $04
    jr z, jr_0d6_5c1c                             ; $5c1a: $28 $00

jr_0d6_5c1c:
    sub e                                         ; $5c1c: $93
    ld bc, $aa58                                  ; $5c1d: $01 $58 $aa
    ld de, $4295                                  ; $5c20: $11 $95 $42
    and d                                         ; $5c23: $a2
    nop                                           ; $5c24: $00
    dec b                                         ; $5c25: $05
    ld d, a                                       ; $5c26: $57
    add b                                         ; $5c27: $80
    xor b                                         ; $5c28: $a8
    ld b, $0e                                     ; $5c29: $06 $0e
    ret nz                                        ; $5c2b: $c0

    sub h                                         ; $5c2c: $94

jr_0d6_5c2d:
    nop                                           ; $5c2d: $00
    ld a, [bc]                                    ; $5c2e: $0a
    inc [hl]                                      ; $5c2f: $34
    add hl, bc                                    ; $5c30: $09
    dec b                                         ; $5c31: $05
    ld hl, $4125                                  ; $5c32: $21 $25 $41
    dec b                                         ; $5c35: $05
    nop                                           ; $5c36: $00
    ld d, c                                       ; $5c37: $51
    ld c, e                                       ; $5c38: $4b
    inc bc                                        ; $5c39: $03
    dec bc                                        ; $5c3a: $0b
    and e                                         ; $5c3b: $a3
    dec hl                                        ; $5c3c: $2b
    add e                                         ; $5c3d: $83
    rla                                           ; $5c3e: $17
    nop                                           ; $5c3f: $00
    ld b, a                                       ; $5c40: $47
    ld d, a                                       ; $5c41: $57
    rlca                                          ; $5c42: $07
    add sp, -$1f                                  ; $5c43: $e8 $e1
    db $f4                                        ; $5c45: $f4
    ldh a, [$f4]                                  ; $5c46: $f0 $f4
    nop                                           ; $5c48: $00
    ldh a, [$f5]                                  ; $5c49: $f0 $f5
    ldh a, [$fa]                                  ; $5c4b: $f0 $fa
    ld hl, sp-$06                                 ; $5c4d: $f8 $fa
    ld hl, sp-$05                                 ; $5c4f: $f8 $fb
    nop                                           ; $5c51: $00
    ld hl, sp-$04                                 ; $5c52: $f8 $fc
    db $fc                                        ; $5c54: $fc
    ld e, c                                       ; $5c55: $59
    ld [bc], a                                    ; $5c56: $02
    nop                                           ; $5c57: $00
    xor l                                         ; $5c58: $ad
    and h                                         ; $5c59: $a4
    nop                                           ; $5c5a: $00
    add hl, bc                                    ; $5c5b: $09
    inc d                                         ; $5c5c: $14
    ld b, b                                       ; $5c5d: $40
    ld b, c                                       ; $5c5e: $41
    jr jr_0d6_5c61                                ; $5c5f: $18 $00

jr_0d6_5c61:
    nop                                           ; $5c61: $00
    rst $38                                       ; $5c62: $ff
    nop                                           ; $5c63: $00
    nop                                           ; $5c64: $00
    nop                                           ; $5c65: $00
    nop                                           ; $5c66: $00
    xor d                                         ; $5c67: $aa
    db $10                                        ; $5c68: $10
    db $10                                        ; $5c69: $10
    inc h                                         ; $5c6a: $24
    inc h                                         ; $5c6b: $24
    inc b                                         ; $5c6c: $04
    ld c, c                                       ; $5c6d: $49
    adc b                                         ; $5c6e: $88
    ld [bc], a                                    ; $5c6f: $02
    ld [hl+], a                                   ; $5c70: $22
    ld c, b                                       ; $5c71: $48
    db $10                                        ; $5c72: $10
    jr jr_0d6_5c8c                                ; $5c73: $18 $17

    rst $00                                       ; $5c75: $c7
    nop                                           ; $5c76: $00
    xor a                                         ; $5c77: $af
    rrca                                          ; $5c78: $0f

jr_0d6_5c79:
    cpl                                           ; $5c79: $2f
    adc a                                         ; $5c7a: $8f
    xor a                                         ; $5c7b: $af
    rrca                                          ; $5c7c: $0f
    ld e, a                                       ; $5c7d: $5f
    rra                                           ; $5c7e: $1f
    nop                                           ; $5c7f: $00
    ld e, a                                       ; $5c80: $5f
    rra                                           ; $5c81: $1f
    rst $18                                       ; $5c82: $df
    rra                                           ; $5c83: $1f
    ccf                                           ; $5c84: $3f
    ccf                                           ; $5c85: $3f
    nop                                           ; $5c86: $00
    ld bc, $00e3                                  ; $5c87: $01 $e3 $00
    ld b, b                                       ; $5c8a: $40
    rst $38                                       ; $5c8b: $ff

jr_0d6_5c8c:
    ld bc, $fe40                                  ; $5c8c: $01 $40 $fe
    cp $f8                                        ; $5c8f: $fe $f8
    ld sp, hl                                     ; $5c91: $f9
    ldh a, [$f0]                                  ; $5c92: $f0 $f0
    nop                                           ; $5c94: $00
    db $e4                                        ; $5c95: $e4
    db $eb                                        ; $5c96: $eb
    add sp, -$1f                                  ; $5c97: $e8 $e1
    ldh [$e2], a                                  ; $5c99: $e0 $e2
    rst $00                                       ; $5c9b: $c7
    ret z                                         ; $5c9c: $c8

    nop                                           ; $5c9d: $00
    jr nz, jr_0d6_5ca0                            ; $5c9e: $20 $00

jr_0d6_5ca0:
    nop                                           ; $5ca0: $00
    db $10                                        ; $5ca1: $10
    jr nz, jr_0d6_5ce9                            ; $5ca2: $20 $45

    rrca                                          ; $5ca4: $0f
    rrca                                          ; $5ca5: $0f
    nop                                           ; $5ca6: $00
    rst $00                                       ; $5ca7: $c7
    scf                                           ; $5ca8: $37
    daa                                           ; $5ca9: $27
    ld d, a                                       ; $5caa: $57
    rlca                                          ; $5cab: $07
    add a                                         ; $5cac: $87
    adc e                                         ; $5cad: $8b
    ld b, e                                       ; $5cae: $43
    ld [bc], a                                    ; $5caf: $02
    inc b                                         ; $5cb0: $04
    nop                                           ; $5cb1: $00
    inc bc                                        ; $5cb2: $03
    jr nz, jr_0d6_5c79                            ; $5cb3: $20 $c4

    jr c, @+$32                                   ; $5cb5: $38 $30

    ld c, b                                       ; $5cb7: $48
    ld a, a                                       ; $5cb8: $7f
    nop                                           ; $5cb9: $00
    ld a, a                                       ; $5cba: $7f
    sbc a                                         ; $5cbb: $9f
    rra                                           ; $5cbc: $1f
    di                                            ; $5cbd: $f3
    db $f4                                        ; $5cbe: $f4
    and $e1                                       ; $5cbf: $e6 $e1
    call nc, $c200                                ; $5cc1: $d4 $00 $c2
    and b                                         ; $5cc4: $a0
    add l                                         ; $5cc5: $85
    ld b, c                                       ; $5cc6: $41
    nop                                           ; $5cc7: $00
    ld b, c                                       ; $5cc8: $41
    ld [bc], a                                    ; $5cc9: $02
    ld b, d                                       ; $5cca: $42
    nop                                           ; $5ccb: $00
    nop                                           ; $5ccc: $00
    ld b, l                                       ; $5ccd: $45
    ld [bc], a                                    ; $5cce: $02
    ld b, $20                                     ; $5ccf: $06 $20
    ld [bc], a                                    ; $5cd1: $02
    dec b                                         ; $5cd2: $05
    ld b, c                                       ; $5cd3: $41
    nop                                           ; $5cd4: $00
    and d                                         ; $5cd5: $a2
    ldh [rNR10], a                                ; $5cd6: $e0 $10
    ldh [rNR12], a                                ; $5cd8: $e0 $12
    ldh [rNR10], a                                ; $5cda: $e0 $10
    jp nz, Jump_000_2400                          ; $5cdc: $c2 $00 $24

    jp nz, $cc04                                  ; $5cdf: $c2 $04 $cc

    db $10                                        ; $5ce2: $10
    adc b                                         ; $5ce3: $88
    ld d, h                                       ; $5ce4: $54
    ld [$a000], sp                                ; $5ce5: $08 $00 $a0
    inc b                                         ; $5ce8: $04

jr_0d6_5ce9:
    ld b, b                                       ; $5ce9: $40
    inc b                                         ; $5cea: $04
    or b                                          ; $5ceb: $b0
    ld [hl], $40                                  ; $5cec: $36 $40
    ld h, [hl]                                    ; $5cee: $66
    nop                                           ; $5cef: $00
    sub b                                         ; $5cf0: $90
    push bc                                       ; $5cf1: $c5
    jr z, @+$6b                                   ; $5cf2: $28 $69

    add hl, bc                                    ; $5cf4: $09
    inc d                                         ; $5cf5: $14
    nop                                           ; $5cf6: $00
    nop                                           ; $5cf7: $00
    nop                                           ; $5cf8: $00
    ld b, d                                       ; $5cf9: $42
    ld b, d                                       ; $5cfa: $42
    inc h                                         ; $5cfb: $24
    ld h, l                                       ; $5cfc: $65
    jr @+$34                                      ; $5cfd: $18 $32

    ld c, c                                       ; $5cff: $49
    jr c, jr_0d6_5d02                             ; $5d00: $38 $00

jr_0d6_5d02:
    ld b, h                                       ; $5d02: $44
    ld [hl-], a                                   ; $5d03: $32
    adc b                                         ; $5d04: $88
    and a                                         ; $5d05: $a7
    adc b                                         ; $5d06: $88
    xor h                                         ; $5d07: $ac
    add b                                         ; $5d08: $80
    xor b                                         ; $5d09: $a8
    nop                                           ; $5d0a: $00
    add a                                         ; $5d0b: $87
    rst $08                                       ; $5d0c: $cf
    ret nz                                        ; $5d0d: $c0

    rst $00                                       ; $5d0e: $c7
    ret z                                         ; $5d0f: $c8

    ret nc                                        ; $5d10: $d0

    pop bc                                        ; $5d11: $c1
    add sp, $00                                   ; $5d12: $e8 $00
    ldh [$d0], a                                  ; $5d14: $e0 $d0
    rst $00                                       ; $5d16: $c7
    add h                                         ; $5d17: $84
    ld c, c                                       ; $5d18: $49
    add hl, bc                                    ; $5d19: $09
    sub d                                         ; $5d1a: $92
    ld bc, $3600                                  ; $5d1b: $01 $00 $36
    add b                                         ; $5d1e: $80
    ld b, d                                       ; $5d1f: $42
    db $fc                                        ; $5d20: $fc
    ld bc, $8679                                  ; $5d21: $01 $79 $86
    ld a, [de]                                    ; $5d24: $1a
    nop                                           ; $5d25: $00
    dec h                                         ; $5d26: $25
    dec b                                         ; $5d27: $05
    adc d                                         ; $5d28: $8a
    jp nz, $8429                                  ; $5d29: $c2 $29 $84

    ld d, d                                       ; $5d2c: $52
    adc b                                         ; $5d2d: $88
    nop                                           ; $5d2e: $00
    ld b, l                                       ; $5d2f: $45
    ld sp, $430a                                  ; $5d30: $31 $0a $43
    inc h                                         ; $5d33: $24
    dec bc                                        ; $5d34: $0b
    db $10                                        ; $5d35: $10
    ld [$6300], sp                                ; $5d36: $08 $00 $63
    ld [$2540], sp                                ; $5d39: $08 $40 $25
    ld b, c                                       ; $5d3c: $41
    ld b, l                                       ; $5d3d: $45
    and c                                         ; $5d3e: $a1
    push bc                                       ; $5d3f: $c5
    nop                                           ; $5d40: $00
    ld bc, $438b                                  ; $5d41: $01 $8b $43
    adc e                                         ; $5d44: $8b
    inc bc                                        ; $5d45: $03
    dec bc                                        ; $5d46: $0b
    add e                                         ; $5d47: $83
    rla                                           ; $5d48: $17
    nop                                           ; $5d49: $00
    rlca                                          ; $5d4a: $07
    rla                                           ; $5d4b: $17
    rlca                                          ; $5d4c: $07
    push de                                       ; $5d4d: $d5
    jp nz, $c0d6                                  ; $5d4e: $c2 $d6 $c0

    db $d3                                        ; $5d51: $d3
    nop                                           ; $5d52: $00
    ret nz                                        ; $5d53: $c0

    ret nc                                        ; $5d54: $d0

    call nz, $e2e8                                ; $5d55: $c4 $e8 $e2
    ldh a, [$f0]                                  ; $5d58: $f0 $f0
    ei                                            ; $5d5a: $fb
    nop                                           ; $5d5b: $00
    ld hl, sp-$04                                 ; $5d5c: $f8 $fc
    db $fc                                        ; $5d5e: $fc
    add d                                         ; $5d5f: $82
    inc h                                         ; $5d60: $24
    nop                                           ; $5d61: $00
    ld [hl], b                                    ; $5d62: $70
    nop                                           ; $5d63: $00
    nop                                           ; $5d64: $00
    adc $03                                       ; $5d65: $ce $03
    ld b, b                                       ; $5d67: $40
    inc c                                         ; $5d68: $0c
    ld [hl], b                                    ; $5d69: $70
    nop                                           ; $5d6a: $00
    nop                                           ; $5d6b: $00
    rst $38                                       ; $5d6c: $ff
    nop                                           ; $5d6d: $00
    nop                                           ; $5d6e: $00
    nop                                           ; $5d6f: $00
    nop                                           ; $5d70: $00
    jr nc, jr_0d6_5d73                            ; $5d71: $30 $00

jr_0d6_5d73:
    ld b, b                                       ; $5d73: $40
    nop                                           ; $5d74: $00
    adc b                                         ; $5d75: $88
    inc b                                         ; $5d76: $04
    db $10                                        ; $5d77: $10
    db $10                                        ; $5d78: $10
    inc h                                         ; $5d79: $24
    nop                                           ; $5d7a: $00
    ld l, [hl]                                    ; $5d7b: $6e
    db $10                                        ; $5d7c: $10
    jr @+$19                                      ; $5d7d: $18 $17

    rlca                                          ; $5d7f: $07
    jr nz, jr_0d6_5db1                            ; $5d80: $20 $2f

    rrca                                          ; $5d82: $0f
    ld [bc], a                                    ; $5d83: $02
    ld [$1f5f], sp                                ; $5d84: $08 $5f $1f
    ld e, a                                       ; $5d87: $5f
    rra                                           ; $5d88: $1f
    rst $18                                       ; $5d89: $df
    nop                                           ; $5d8a: $00
    rra                                           ; $5d8b: $1f
    ccf                                           ; $5d8c: $3f
    ccf                                           ; $5d8d: $3f
    nop                                           ; $5d8e: $00
    ld bc, $00ea                                  ; $5d8f: $01 $ea $00
    ld b, b                                       ; $5d92: $40
    rst $38                                       ; $5d93: $ff
    ld bc, $fe20                                  ; $5d94: $01 $20 $fe
    cp $f8                                        ; $5d97: $fe $f8
    ld sp, hl                                     ; $5d99: $f9
    di                                            ; $5d9a: $f3
    db $f4                                        ; $5d9b: $f4
    nop                                           ; $5d9c: $00
    xor $e1                                       ; $5d9d: $ee $e1
    cp $fe                                        ; $5d9f: $fe $fe
    ld sp, hl                                     ; $5da1: $f9
    ld hl, sp-$1c                                 ; $5da2: $f8 $e4
    ld [c], a                                     ; $5da4: $e2
    nop                                           ; $5da5: $00
    ret z                                         ; $5da6: $c8

    call nc, Call_000_0830                        ; $5da7: $d4 $30 $08
    pop hl                                        ; $5daa: $e1
    db $10                                        ; $5dab: $10
    add b                                         ; $5dac: $80
    ld l, b                                       ; $5dad: $68
    nop                                           ; $5dae: $00
    ld [bc], a                                    ; $5daf: $02
    db $10                                        ; $5db0: $10

jr_0d6_5db1:
    sbc a                                         ; $5db1: $9f
    rra                                           ; $5db2: $1f
    rra                                           ; $5db3: $1f
    ld e, a                                       ; $5db4: $5f
    rrca                                          ; $5db5: $0f
    ld c, a                                       ; $5db6: $4f
    nop                                           ; $5db7: $00
    cpl                                           ; $5db8: $2f
    adc a                                         ; $5db9: $8f
    add a                                         ; $5dba: $87
    ld b, a                                       ; $5dbb: $47
    ld b, b                                       ; $5dbc: $40
    db $10                                        ; $5dbd: $10
    inc de                                        ; $5dbe: $13
    xor b                                         ; $5dbf: $a8
    jr nc, jr_0d6_5de2                            ; $5dc0: $30 $20

    nop                                           ; $5dc2: $00
    jr nc, jr_0d6_5ded                            ; $5dc3: $30 $28

    jr c, @+$0a                                   ; $5dc5: $38 $08

    ld a, a                                       ; $5dc7: $7f
    ld a, a                                       ; $5dc8: $7f
    sbc a                                         ; $5dc9: $9f
    rra                                           ; $5dca: $1f
    nop                                           ; $5dcb: $00
    add sp, -$1a                                  ; $5dcc: $e8 $e6
    ldh [$e0], a                                  ; $5dce: $e0 $e0
    ret nc                                        ; $5dd0: $d0

    push bc                                       ; $5dd1: $c5
    add b                                         ; $5dd2: $80
    add d                                         ; $5dd3: $82
    nop                                           ; $5dd4: $00
    jr jr_0d6_5dfc                                ; $5dd5: $18 $25

    ld a, $00                                     ; $5dd7: $3e $00
    daa                                           ; $5dd9: $27
    jr jr_0d6_5dfd                                ; $5dda: $18 $21

    ld e, $00                                     ; $5ddc: $1e $00
    ld [$4161], sp                                ; $5dde: $08 $61 $41
    ld [de], a                                    ; $5de1: $12

jr_0d6_5de2:
    ld d, e                                       ; $5de2: $53
    nop                                           ; $5de3: $00
    ld d, d                                       ; $5de4: $52
    ld bc, $4200                                  ; $5de5: $01 $00 $42
    jr @+$4a                                      ; $5de8: $18 $48

    ld [de], a                                    ; $5dea: $12
    ld b, b                                       ; $5deb: $40
    ld a, [bc]                                    ; $5dec: $0a

jr_0d6_5ded:
    ld b, b                                       ; $5ded: $40
    ld [bc], a                                    ; $5dee: $02
    nop                                           ; $5def: $00
    add $08                                       ; $5df0: $c6 $08
    add e                                         ; $5df2: $83
    ld l, h                                       ; $5df3: $6c
    ld bc, $7082                                  ; $5df4: $01 $82 $70
    ld a, [bc]                                    ; $5df7: $0a
    nop                                           ; $5df8: $00
    sub b                                         ; $5df9: $90
    ld [hl+], a                                   ; $5dfa: $22

jr_0d6_5dfb:
    sub b                                         ; $5dfb: $90

jr_0d6_5dfc:
    ld [hl+], a                                   ; $5dfc: $22

jr_0d6_5dfd:
    ld hl, sp+$00                                 ; $5dfd: $f8 $00
    ld b, b                                       ; $5dff: $40
    and b                                         ; $5e00: $a0
    nop                                           ; $5e01: $00
    ld l, a                                       ; $5e02: $6f
    rrca                                          ; $5e03: $0f
    rla                                           ; $5e04: $17
    rlca                                          ; $5e05: $07
    dec bc                                        ; $5e06: $0b
    inc bc                                        ; $5e07: $03
    ld b, l                                       ; $5e08: $45
    and c                                         ; $5e09: $a1
    nop                                           ; $5e0a: $00
    ld [c], a                                     ; $5e0b: $e2
    ld [$8062], sp                                ; $5e0c: $08 $62 $80
    ld [hl+], a                                   ; $5e0f: $22
    ld c, b                                       ; $5e10: $48
    ld [hl+], a                                   ; $5e11: $22
    ld b, b                                       ; $5e12: $40
    nop                                           ; $5e13: $00
    add b                                         ; $5e14: $80
    or e                                          ; $5e15: $b3
    sub b                                         ; $5e16: $90
    add b                                         ; $5e17: $80
    add b                                         ; $5e18: $80
    sbc b                                         ; $5e19: $98
    ret z                                         ; $5e1a: $c8

    push bc                                       ; $5e1b: $c5
    nop                                           ; $5e1c: $00
    call nz, $d4c8                                ; $5e1d: $c4 $c8 $d4
    jp nz, $e0ea                                  ; $5e20: $c2 $ea $e0

    add sp, -$20                                  ; $5e23: $e8 $e0
    nop                                           ; $5e25: $00
    ld b, b                                       ; $5e26: $40
    ld [bc], a                                    ; $5e27: $02
    ld d, b                                       ; $5e28: $50
    inc bc                                        ; $5e29: $03
    ld c, b                                       ; $5e2a: $48
    ld de, $4824                                  ; $5e2b: $11 $24 $48
    nop                                           ; $5e2e: $00
    ld [hl+], a                                   ; $5e2f: $22
    add h                                         ; $5e30: $84
    ld hl, $200a                                  ; $5e31: $21 $0a $20
    add l                                         ; $5e34: $85
    and b                                         ; $5e35: $a0
    ld [$3800], sp                                ; $5e36: $08 $00 $38
    ld b, c                                       ; $5e39: $41
    db $10                                        ; $5e3a: $10
    add hl, hl                                    ; $5e3b: $29
    nop                                           ; $5e3c: $00
    dec b                                         ; $5e3d: $05
    add b                                         ; $5e3e: $80
    add hl, hl                                    ; $5e3f: $29
    nop                                           ; $5e40: $00
    ld h, b                                       ; $5e41: $60
    sub c                                         ; $5e42: $91
    ld [hl], b                                    ; $5e43: $70
    nop                                           ; $5e44: $00
    and b                                         ; $5e45: $a0
    ld a, [de]                                    ; $5e46: $1a
    ld b, b                                       ; $5e47: $40
    add d                                         ; $5e48: $82
    nop                                           ; $5e49: $00
    dec h                                         ; $5e4a: $25
    ld b, c                                       ; $5e4b: $41
    ld h, l                                       ; $5e4c: $65
    ld bc, $4125                                  ; $5e4d: $01 $25 $41
    ld l, e                                       ; $5e50: $6b
    inc bc                                        ; $5e51: $03
    nop                                           ; $5e52: $00
    ld c, e                                       ; $5e53: $4b
    inc bc                                        ; $5e54: $03
    ld c, e                                       ; $5e55: $4b
    add e                                         ; $5e56: $83
    sub a                                         ; $5e57: $97
    rlca                                          ; $5e58: $07
    sub a                                         ; $5e59: $97
    rlca                                          ; $5e5a: $07
    nop                                           ; $5e5b: $00
    add sp, -$1e                                  ; $5e5c: $e8 $e2
    push af                                       ; $5e5e: $f5
    ldh a, [$f5]                                  ; $5e5f: $f0 $f5
    ldh a, [$f4]                                  ; $5e61: $f0 $f4
    pop af                                        ; $5e63: $f1
    nop                                           ; $5e64: $00
    ld a, [$faf8]                                 ; $5e65: $fa $f8 $fa
    ld hl, sp-$05                                 ; $5e68: $f8 $fb
    ld hl, sp-$04                                 ; $5e6a: $f8 $fc
    db $fc                                        ; $5e6c: $fc
    nop                                           ; $5e6d: $00
    jr nz, jr_0d6_5dfb                            ; $5e6e: $20 $8b

    inc bc                                        ; $5e70: $03
    inc d                                         ; $5e71: $14
    ld sp, $284a                                  ; $5e72: $31 $4a $28
    ld d, c                                       ; $5e75: $51
    nop                                           ; $5e76: $00
    jr nz, jr_0d6_5ec1                            ; $5e77: $20 $48

    nop                                           ; $5e79: $00
    nop                                           ; $5e7a: $00
    rst $38                                       ; $5e7b: $ff
    nop                                           ; $5e7c: $00
    nop                                           ; $5e7d: $00
    nop                                           ; $5e7e: $00
    nop                                           ; $5e7f: $00
    ld b, c                                       ; $5e80: $41
    inc d                                         ; $5e81: $14
    ld [hl+], a                                   ; $5e82: $22
    adc b                                         ; $5e83: $88
    sub h                                         ; $5e84: $94
    ld b, c                                       ; $5e85: $41
    ld [$c082], sp                                ; $5e86: $08 $82 $c0
    dec bc                                        ; $5e89: $0b
    nop                                           ; $5e8a: $00
    db $10                                        ; $5e8b: $10
    db $10                                        ; $5e8c: $10
    rla                                           ; $5e8d: $17
    ld b, a                                       ; $5e8e: $47
    cpl                                           ; $5e8f: $2f
    adc a                                         ; $5e90: $8f
    cpl                                           ; $5e91: $2f
    rrca                                          ; $5e92: $0f
    nop                                           ; $5e93: $00
    cpl                                           ; $5e94: $2f
    rrca                                          ; $5e95: $0f
    ld e, a                                       ; $5e96: $5f
    rra                                           ; $5e97: $1f
    ld e, a                                       ; $5e98: $5f
    rra                                           ; $5e99: $1f
    rst $18                                       ; $5e9a: $df
    rra                                           ; $5e9b: $1f
    nop                                           ; $5e9c: $00
    ccf                                           ; $5e9d: $3f
    ccf                                           ; $5e9e: $3f
    nop                                           ; $5e9f: $00
    ld bc, $00ee                                  ; $5ea0: $01 $ee $00
    nop                                           ; $5ea3: $00
    rst $38                                       ; $5ea4: $ff
    rst $38                                       ; $5ea5: $ff
    cp $fe                                        ; $5ea6: $fe $fe

jr_0d6_5ea8:
    db $fc                                        ; $5ea8: $fc
    db $fc                                        ; $5ea9: $fc
    ld a, [$00f8]                                 ; $5eaa: $fa $f8 $00
    push af                                       ; $5ead: $f5
    ldh a, [$f5]                                  ; $5eae: $f0 $f5
    ldh a, [$e4]                                  ; $5eb0: $f0 $e4
    pop hl                                        ; $5eb2: $e1
    and $e0                                       ; $5eb3: $e6 $e0
    nop                                           ; $5eb5: $00
    nop                                           ; $5eb6: $00
    nop                                           ; $5eb7: $00
    or $00                                        ; $5eb8: $f6 $00
    ei                                            ; $5eba: $fb
    nop                                           ; $5ebb: $00
    jp $0038                                      ; $5ebc: $c3 $38 $00


    add c                                         ; $5ebf: $81
    ld a, d                                       ; $5ec0: $7a

jr_0d6_5ec1:
    nop                                           ; $5ec1: $00
    di                                            ; $5ec2: $f3
    nop                                           ; $5ec3: $00
    jp $8300                                      ; $5ec4: $c3 $00 $83


    nop                                           ; $5ec7: $00
    ld a, a                                       ; $5ec8: $7f
    ld a, a                                       ; $5ec9: $7f
    rra                                           ; $5eca: $1f
    rra                                           ; $5ecb: $1f
    ld c, a                                       ; $5ecc: $4f
    rrca                                          ; $5ecd: $0f
    ld d, e                                       ; $5ece: $53
    inc bc                                        ; $5ecf: $03
    nop                                           ; $5ed0: $00
    add hl, bc                                    ; $5ed1: $09
    ld bc, $4014                                  ; $5ed2: $01 $14 $40
    inc de                                        ; $5ed5: $13
    ld b, b                                       ; $5ed6: $40
    ld c, c                                       ; $5ed7: $49
    db $10                                        ; $5ed8: $10
    ld b, b                                       ; $5ed9: $40
    rst $38                                       ; $5eda: $ff
    ld bc, $7f30                                  ; $5edb: $01 $30 $7f
    ld a, a                                       ; $5ede: $7f
    cp a                                          ; $5edf: $bf
    ccf                                           ; $5ee0: $3f
    rra                                           ; $5ee1: $1f
    rra                                           ; $5ee2: $1f
    nop                                           ; $5ee3: $00
    ld [$ebe0], a                                 ; $5ee4: $ea $e0 $eb
    ldh [$c1], a                                  ; $5ee7: $e0 $c1
    call z, $84a0                                 ; $5ee9: $cc $a0 $84
    nop                                           ; $5eec: $00
    ld b, b                                       ; $5eed: $40
    jr jr_0d6_5f30                                ; $5eee: $18 $40

    inc e                                         ; $5ef0: $1c
    ld b, b                                       ; $5ef1: $40
    ld e, $40                                     ; $5ef2: $1e $40
    rra                                           ; $5ef4: $1f
    nop                                           ; $5ef5: $00
    nop                                           ; $5ef6: $00
    ld [bc], a                                    ; $5ef7: $02
    nop                                           ; $5ef8: $00
    nop                                           ; $5ef9: $00
    nop                                           ; $5efa: $00
    ld e, $00                                     ; $5efb: $1e $00
    and [hl]                                      ; $5efd: $a6
    nop                                           ; $5efe: $00
    add hl, de                                    ; $5eff: $19
    and b                                         ; $5f00: $a0
    ld [$00a4], sp                                ; $5f01: $08 $a4 $00
    ccf                                           ; $5f04: $3f
    nop                                           ; $5f05: $00
    sbc d                                         ; $5f06: $9a
    nop                                           ; $5f07: $00
    ld b, c                                       ; $5f08: $41
    jr jr_0d6_5f0b                                ; $5f09: $18 $00

jr_0d6_5f0b:
    ld e, d                                       ; $5f0b: $5a
    nop                                           ; $5f0c: $00
    ld c, e                                       ; $5f0d: $4b
    ld b, b                                       ; $5f0e: $40
    ld b, $00                                     ; $5f0f: $06 $00
    nop                                           ; $5f11: $00
    ld c, $00                                     ; $5f12: $0e $00
    ld c, [hl]                                    ; $5f14: $4e
    nop                                           ; $5f15: $00
    ld e, [hl]                                    ; $5f16: $5e
    nop                                           ; $5f17: $00
    ld b, c                                       ; $5f18: $41
    nop                                           ; $5f19: $00
    xor a                                         ; $5f1a: $af
    rrca                                          ; $5f1b: $0f
    rla                                           ; $5f1c: $17
    rlca                                          ; $5f1d: $07
    dec bc                                        ; $5f1e: $0b
    db $e3                                        ; $5f1f: $e3
    dec b                                         ; $5f20: $05
    ld sp, $0200                                  ; $5f21: $31 $00 $02
    cp b                                          ; $5f24: $b8
    add b                                         ; $5f25: $80
    jr nc, jr_0d6_5ea8                            ; $5f26: $30 $80

    inc [hl]                                      ; $5f28: $34
    inc b                                         ; $5f29: $04
    ld [hl], b                                    ; $5f2a: $70
    nop                                           ; $5f2b: $00
    and b                                         ; $5f2c: $a0
    adc [hl]                                      ; $5f2d: $8e
    and c                                         ; $5f2e: $a1
    adc h                                         ; $5f2f: $8c

jr_0d6_5f30:
    and d                                         ; $5f30: $a2
    adc c                                         ; $5f31: $89
    ret nc                                        ; $5f32: $d0

    jp nz, $d100                                  ; $5f33: $c2 $00 $d1

    ret nz                                        ; $5f36: $c0

    ret nc                                        ; $5f37: $d0

    pop bc                                        ; $5f38: $c1
    add sp, -$20                                  ; $5f39: $e8 $e0
    add sp, -$20                                  ; $5f3b: $e8 $e0
    nop                                           ; $5f3d: $00
    dec b                                         ; $5f3e: $05
    nop                                           ; $5f3f: $00
    ret nz                                        ; $5f40: $c0

    ld de, $de00                                  ; $5f41: $11 $00 $de
    nop                                           ; $5f44: $00
    inc b                                         ; $5f45: $04
    nop                                           ; $5f46: $00
    ret z                                         ; $5f47: $c8

    inc de                                        ; $5f48: $13
    ret z                                         ; $5f49: $c8

    ld d, $41                                     ; $5f4a: $16 $41
    sbc h                                         ; $5f4c: $9c
    ld bc, $001c                                  ; $5f4d: $01 $1c $00
    ld b, b                                       ; $5f50: $40
    inc e                                         ; $5f51: $1c
    ld b, c                                       ; $5f52: $41
    inc e                                         ; $5f53: $1c
    ld b, d                                       ; $5f54: $42
    ld [$4210], sp                                ; $5f55: $08 $10 $42
    nop                                           ; $5f58: $00
    inc d                                         ; $5f59: $14
    ld b, c                                       ; $5f5a: $41
    nop                                           ; $5f5b: $00
    dec bc                                        ; $5f5c: $0b
    ld c, b                                       ; $5f5d: $48

jr_0d6_5f5e:
    inc bc                                        ; $5f5e: $03
    db $10                                        ; $5f5f: $10
    ld b, b                                       ; $5f60: $40
    nop                                           ; $5f61: $00
    add hl, bc                                    ; $5f62: $09
    ld bc, $6109                                  ; $5f63: $01 $09 $61
    dec b                                         ; $5f66: $05
    pop de                                        ; $5f67: $d1
    inc de                                        ; $5f68: $13
    jp Jump_000_2b00                              ; $5f69: $c3 $00 $2b


    add e                                         ; $5f6c: $83
    dec l                                         ; $5f6d: $2d
    add c                                         ; $5f6e: $81
    ld d, $40                                     ; $5f6f: $16 $40
    sub [hl]                                      ; $5f71: $96
    nop                                           ; $5f72: $00
    jr nz, jr_0d6_5f5e                            ; $5f73: $20 $e9

    ldh [$ba], a                                  ; $5f75: $e0 $ba
    ld [$f0f4], sp                                ; $5f77: $08 $f4 $f0
    ld a, [$faf8]                                 ; $5f7a: $fa $f8 $fa
    nop                                           ; $5f7d: $00
    ld hl, sp-$05                                 ; $5f7e: $f8 $fb
    ld hl, sp-$04                                 ; $5f80: $f8 $fc
    db $fc                                        ; $5f82: $fc
    ret nz                                        ; $5f83: $c0

    dec c                                         ; $5f84: $0d
    add b                                         ; $5f85: $80
    nop                                           ; $5f86: $00
    ld b, l                                       ; $5f87: $45
    db $10                                        ; $5f88: $10
    add e                                         ; $5f89: $83
    jr nc, jr_0d6_5f8d                            ; $5f8a: $30 $01

    inc e                                         ; $5f8c: $1c

jr_0d6_5f8d:
    jr nz, jr_0d6_5f8f                            ; $5f8d: $20 $00

jr_0d6_5f8f:
    jr nz, jr_0d6_5f91                            ; $5f8f: $20 $00

jr_0d6_5f91:
    rst $38                                       ; $5f91: $ff
    adc e                                         ; $5f92: $8b
    nop                                           ; $5f93: $00
    ld d, c                                       ; $5f94: $51
    nop                                           ; $5f95: $00
    ld d, b                                       ; $5f96: $50
    ld [bc], a                                    ; $5f97: $02
    ld b, $04                                     ; $5f98: $06 $04
    nop                                           ; $5f9a: $00
    ld h, h                                       ; $5f9b: $64
    ld bc, $e310                                  ; $5f9c: $01 $10 $e3
    db $10                                        ; $5f9f: $10
    jr jr_0d6_5fb2                                ; $5fa0: $18 $10

    ld b, b                                       ; $5fa2: $40
    nop                                           ; $5fa3: $00
    cpl                                           ; $5fa4: $2f
    rrca                                          ; $5fa5: $0f
    cpl                                           ; $5fa6: $2f
    adc a                                         ; $5fa7: $8f
    cpl                                           ; $5fa8: $2f
    adc a                                         ; $5fa9: $8f
    ld e, a                                       ; $5faa: $5f
    rra                                           ; $5fab: $1f
    nop                                           ; $5fac: $00
    ld e, a                                       ; $5fad: $5f
    rra                                           ; $5fae: $1f
    rst $18                                       ; $5faf: $df
    rra                                           ; $5fb0: $1f
    ccf                                           ; $5fb1: $3f

jr_0d6_5fb2:
    ccf                                           ; $5fb2: $3f
    nop                                           ; $5fb3: $00
    ld bc, $00e4                                  ; $5fb4: $01 $e4 $00
    ld b, b                                       ; $5fb7: $40
    rst $38                                       ; $5fb8: $ff
    ld bc, $fe30                                  ; $5fb9: $01 $30 $fe
    cp $fc                                        ; $5fbc: $fe $fc
    db $fc                                        ; $5fbe: $fc
    ld hl, sp-$08                                 ; $5fbf: $f8 $f8
    nop                                           ; $5fc1: $00
    cp $fe                                        ; $5fc2: $fe $fe
    db $fd                                        ; $5fc4: $fd
    db $fc                                        ; $5fc5: $fc
    ld a, [c]                                     ; $5fc6: $f2
    ldh a, [$e0]                                  ; $5fc7: $f0 $e0
    ldh [rP1], a                                  ; $5fc9: $e0 $00
    adc h                                         ; $5fcb: $8c
    sub d                                         ; $5fcc: $92
    rra                                           ; $5fcd: $1f
    jr nz, jr_0d6_6030                            ; $5fce: $20 $60

    sub l                                         ; $5fd0: $95
    ret c                                         ; $5fd1: $d8

    ld h, $00                                     ; $5fd2: $26 $00
    ld a, a                                       ; $5fd4: $7f
    ld a, a                                       ; $5fd5: $7f
    cp a                                          ; $5fd6: $bf
    ccf                                           ; $5fd7: $3f
    ld c, a                                       ; $5fd8: $4f
    rrca                                          ; $5fd9: $0f
    ld [hl], $86                                  ; $5fda: $36 $86
    nop                                           ; $5fdc: $00
    add hl, bc                                    ; $5fdd: $09
    ld b, b                                       ; $5fde: $40
    nop                                           ; $5fdf: $00
    sub e                                         ; $5fe0: $93
    adc b                                         ; $5fe1: $88
    ld b, h                                       ; $5fe2: $44
    inc c                                         ; $5fe3: $0c
    ld d, b                                       ; $5fe4: $50
    and b                                         ; $5fe5: $a0
    jr nc, jr_0d6_6010                            ; $5fe6: $30 $28

    ld a, a                                       ; $5fe8: $7f
    ld bc, $9f10                                  ; $5fe9: $01 $10 $9f
    rra                                           ; $5fec: $1f
    ld a, [c]                                     ; $5fed: $f2
    pop af                                        ; $5fee: $f1

jr_0d6_5fef:
    db $e4                                        ; $5fef: $e4
    nop                                           ; $5ff0: $00
    ld [c], a                                     ; $5ff1: $e2
    ret nc                                        ; $5ff2: $d0

    pop bc                                        ; $5ff3: $c1
    and c                                         ; $5ff4: $a1
    adc d                                         ; $5ff5: $8a
    ld b, c                                       ; $5ff6: $41
    ld [de], a                                    ; $5ff7: $12
    ld b, b                                       ; $5ff8: $40
    nop                                           ; $5ff9: $00
    inc b                                         ; $5ffa: $04
    ld b, b                                       ; $5ffb: $40
    ld c, $40                                     ; $5ffc: $0e $40
    ld [$9048], sp                                ; $5ffe: $08 $48 $90
    jp Jump_000_2400                              ; $6001: $c3 $00 $24


    add h                                         ; $6004: $84
    ld c, b                                       ; $6005: $48
    adc c                                         ; $6006: $89
    ld [de], a                                    ; $6007: $12
    ld bc, $05d4                                  ; $6008: $01 $d4 $05
    nop                                           ; $600b: $00
    nop                                           ; $600c: $00
    nop                                           ; $600d: $00
    and e                                         ; $600e: $a3
    nop                                           ; $600f: $00

jr_0d6_6010:
    ld de, $1204                                  ; $6010: $11 $04 $12
    add d                                         ; $6013: $82
    nop                                           ; $6014: $00
    ld c, c                                       ; $6015: $49
    ret nz                                        ; $6016: $c0

    nop                                           ; $6017: $00
    call z, $c621                                 ; $6018: $cc $21 $c6
    jr nz, jr_0d6_603d                            ; $601b: $20 $20

    nop                                           ; $601d: $00
    adc b                                         ; $601e: $88
    jr nz, jr_0d6_606f                            ; $601f: $20 $4e

    ld h, b                                       ; $6021: $60
    add d                                         ; $6022: $82
    ld l, a                                       ; $6023: $6f
    rrca                                          ; $6024: $0f
    rla                                           ; $6025: $17
    nop                                           ; $6026: $00
    rlca                                          ; $6027: $07
    dec bc                                        ; $6028: $0b
    ld b, e                                       ; $6029: $43
    push bc                                       ; $602a: $c5
    ld bc, $10c2                                  ; $602b: $01 $c2 $10
    ld b, d                                       ; $602e: $42
    nop                                           ; $602f: $00

jr_0d6_6030:
    adc b                                         ; $6030: $88
    ld [bc], a                                    ; $6031: $02
    db $10                                        ; $6032: $10
    ld [bc], a                                    ; $6033: $02
    adc b                                         ; $6034: $88
    add b                                         ; $6035: $80
    sub c                                         ; $6036: $91
    add c                                         ; $6037: $81
    nop                                           ; $6038: $00
    sub d                                         ; $6039: $92
    sub e                                         ; $603a: $93
    add b                                         ; $603b: $80
    db $d3                                        ; $603c: $d3

jr_0d6_603d:
    call nz, $c5d2                                ; $603d: $c4 $d2 $c5
    pop de                                        ; $6040: $d1
    nop                                           ; $6041: $00
    jp nz, $c1d0                                  ; $6042: $c2 $d0 $c1

    ret nz                                        ; $6045: $c0

    call nc, $a800                                ; $6046: $d4 $00 $a8
    add b                                         ; $6049: $80
    nop                                           ; $604a: $00
    ld c, b                                       ; $604b: $48
    db $e3                                        ; $604c: $e3
    inc d                                         ; $604d: $14
    ld b, $89                                     ; $604e: $06 $89
    inc b                                         ; $6050: $04
    adc d                                         ; $6051: $8a
    rst $00                                       ; $6052: $c7
    nop                                           ; $6053: $00
    jr z, jr_0d6_605c                             ; $6054: $28 $06

    pop bc                                        ; $6056: $c1
    ld [de], a                                    ; $6057: $12
    dec h                                         ; $6058: $25
    inc b                                         ; $6059: $04
    ret nz                                        ; $605a: $c0

Call_0d6_605b:
    ld [bc], a                                    ; $605b: $02

jr_0d6_605c:
    nop                                           ; $605c: $00
    jr c, jr_0d6_5fef                             ; $605d: $38 $90

    ld l, h                                       ; $605f: $6c
    inc b                                         ; $6060: $04
    ld [de], a                                    ; $6061: $12
    nop                                           ; $6062: $00
    dec b                                         ; $6063: $05
    and b                                         ; $6064: $a0
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    inc e                                         ; $6068: $1c
    ld hl, $8542                                  ; $6069: $21 $42 $85
    ld d, c                                       ; $606c: $51
    ld b, l                                       ; $606d: $45
    nop                                           ; $606e: $00

jr_0d6_606f:
    and c                                         ; $606f: $a1
    dec h                                         ; $6070: $25
    pop bc                                        ; $6071: $c1
    ld c, e                                       ; $6072: $4b
    and e                                         ; $6073: $a3
    dec hl                                        ; $6074: $2b
    ld b, e                                       ; $6075: $43
    dec bc                                        ; $6076: $0b
    nop                                           ; $6077: $00
    ld h, e                                       ; $6078: $63
    rla                                           ; $6079: $17
    ld b, a                                       ; $607a: $47
    ld d, a                                       ; $607b: $57
    add a                                         ; $607c: $87
    ret nz                                        ; $607d: $c0

    jp z, Jump_000_02e8                           ; $607e: $ca $e8 $02

    rst $20                                       ; $6081: $e7
    rst $30                                       ; $6082: $f7
    ldh a, [$f8]                                  ; $6083: $f0 $f8
    ld hl, sp-$06                                 ; $6085: $f8 $fa
    ld [bc], a                                    ; $6087: $02
    nop                                           ; $6088: $00
    ei                                            ; $6089: $fb
    nop                                           ; $608a: $00
    ld hl, sp-$04                                 ; $608b: $f8 $fc
    db $fc                                        ; $608d: $fc
    inc hl                                        ; $608e: $23
    ld d, b                                       ; $608f: $50
    ld b, c                                       ; $6090: $41
    and d                                         ; $6091: $a2
    add c                                         ; $6092: $81
    nop                                           ; $6093: $00
    inc b                                         ; $6094: $04
    nop                                           ; $6095: $00
    dec c                                         ; $6096: $0d
    nop                                           ; $6097: $00
    sbc b                                         ; $6098: $98
    nop                                           ; $6099: $00
    nop                                           ; $609a: $00
    rst $38                                       ; $609b: $ff
    nop                                           ; $609c: $00
    nop                                           ; $609d: $00
    nop                                           ; $609e: $00
    nop                                           ; $609f: $00
    jr @+$25                                      ; $60a0: $18 $23

    ld [$8494], sp                                ; $60a2: $08 $94 $84
    inc b                                         ; $60a5: $04
    ld e, b                                       ; $60a6: $58
    add b                                         ; $60a7: $80
    ld b, $38                                     ; $60a8: $06 $38
    ld [bc], a                                    ; $60aa: $02
    db $10                                        ; $60ab: $10
    jr @+$19                                      ; $60ac: $18 $17

jr_0d6_60ae:
    rst $00                                       ; $60ae: $c7
    jr nz, jr_0d6_60e0                            ; $60af: $20 $2f

    adc a                                         ; $60b1: $8f
    ld [bc], a                                    ; $60b2: $02
    nop                                           ; $60b3: $00
    rrca                                          ; $60b4: $0f
    ld e, a                                       ; $60b5: $5f
    rra                                           ; $60b6: $1f
    ld e, a                                       ; $60b7: $5f
    rra                                           ; $60b8: $1f
    nop                                           ; $60b9: $00
    rst $18                                       ; $60ba: $df
    rra                                           ; $60bb: $1f
    ccf                                           ; $60bc: $3f
    ccf                                           ; $60bd: $3f
    nop                                           ; $60be: $00
    ld bc, $00e1                                  ; $60bf: $01 $e1 $00
    ld b, b                                       ; $60c2: $40
    rst $38                                       ; $60c3: $ff
    ld bc, $fe40                                  ; $60c4: $01 $40 $fe
    cp $f9                                        ; $60c7: $fe $f9
    ld hl, sp-$02                                 ; $60c9: $f8 $fe
    cp $00                                        ; $60cb: $fe $00
    db $fd                                        ; $60cd: $fd
    db $fc                                        ; $60ce: $fc
    ld a, [c]                                     ; $60cf: $f2
    ldh a, [$ec]                                  ; $60d0: $f0 $ec
    pop hl                                        ; $60d2: $e1
    ret nc                                        ; $60d3: $d0

    jp Jump_000_2000                              ; $60d4: $c3 $00 $20


    inc c                                         ; $60d7: $0c
    jp RST_18                                     ; $60d8: $c3 $18 $00


    ld [hl-], a                                   ; $60db: $32
    ld a, a                                       ; $60dc: $7f
    ld a, a                                       ; $60dd: $7f
    nop                                           ; $60de: $00
    cp a                                          ; $60df: $bf

jr_0d6_60e0:
    ccf                                           ; $60e0: $3f
    ld c, a                                       ; $60e1: $4f
    rrca                                          ; $60e2: $0f
    scf                                           ; $60e3: $37
    add a                                         ; $60e4: $87
    dec bc                                        ; $60e5: $0b
    jp $0402                                      ; $60e6: $c3 $02 $04


    jr nc, jr_0d6_60ae                            ; $60e9: $30 $c3

    jr @+$26                                      ; $60eb: $18 $24

    nop                                           ; $60ed: $00
    jr nc, jr_0d6_6138                            ; $60ee: $30 $48

    ld a, a                                       ; $60f0: $7f
    ld [bc], a                                    ; $60f1: $02
    ld a, a                                       ; $60f2: $7f
    sbc a                                         ; $60f3: $9f
    rra                                           ; $60f4: $1f
    or $f0                                        ; $60f5: $f6 $f0
    add sp, $2c                                   ; $60f7: $e8 $2c
    nop                                           ; $60f9: $00
    and h                                         ; $60fa: $a4
    nop                                           ; $60fb: $00
    add b                                         ; $60fc: $80
    ld c, [hl]                                    ; $60fd: $4e
    db $10                                        ; $60fe: $10
    ld b, h                                       ; $60ff: $44
    jr c, jr_0d6_6143                             ; $6100: $38 $41

    jr nc, jr_0d6_6145                            ; $6102: $30 $41

    nop                                           ; $6104: $00
    inc h                                         ; $6105: $24
    ld bc, $c2fc                                  ; $6106: $01 $fc $c2
    add hl, de                                    ; $6109: $19
    add h                                         ; $610a: $84
    ld d, d                                       ; $610b: $52
    ld bc, $1400                                  ; $610c: $01 $00 $14
    ld [bc], a                                    ; $610f: $02

Call_0d6_6110:
    ld hl, sp+$21                                 ; $6110: $f8 $21
    call z, Call_000_0803                         ; $6112: $cc $03 $08

Jump_0d6_6115:
    add d                                         ; $6115: $82
    nop                                           ; $6116: $00
    add hl, sp                                    ; $6117: $39
    ld a, [de]                                    ; $6118: $1a
    pop hl                                        ; $6119: $e1
    ld c, c                                       ; $611a: $49
    sub d                                         ; $611b: $92
    add d                                         ; $611c: $82
    ld a, h                                       ; $611d: $7c
    ld [bc], a                                    ; $611e: $02
    nop                                           ; $611f: $00
    ld b, c                                       ; $6120: $41
    cp h                                          ; $6121: $bc
    nop                                           ; $6122: $00
    ld [hl], c                                    ; $6123: $71
    ld b, $01                                     ; $6124: $06 $01
    and d                                         ; $6126: $a2
    ld e, $00                                     ; $6127: $1e $00

Jump_0d6_6129:
    nop                                           ; $6129: $00
    ld l, a                                       ; $612a: $6f
    rrca                                          ; $612b: $0f
    sub a                                         ; $612c: $97
    rlca                                          ; $612d: $07
    ld c, e                                       ; $612e: $4b
    and e                                         ; $612f: $a3
    and l                                         ; $6130: $a5
    nop                                           ; $6131: $00
    ld d, c                                       ; $6132: $51
    ld [de], a                                    ; $6133: $12
    xor b                                         ; $6134: $a8
    ld e, d                                       ; $6135: $5a
    add b                                         ; $6136: $80
    ld a, [bc]                                    ; $6137: $0a

jr_0d6_6138:
    ret nc                                        ; $6138: $d0

    ld c, d                                       ; $6139: $4a
    nop                                           ; $613a: $00
    sub b                                         ; $613b: $90
    add b                                         ; $613c: $80
    adc [hl]                                      ; $613d: $8e
    add b                                         ; $613e: $80
    add a                                         ; $613f: $87
    ret nz                                        ; $6140: $c0

    inc bc                                        ; $6141: $03
    add b                                         ; $6142: $80

jr_0d6_6143:
    nop                                           ; $6143: $00
    ld d, c                                       ; $6144: $51

jr_0d6_6145:
    db $10                                        ; $6145: $10
    ld [$c0d4], sp                                ; $6146: $08 $d4 $c0
    ld [c], a                                     ; $6149: $e2
    pop hl                                        ; $614a: $e1
    add sp, $00                                   ; $614b: $e8 $00
    pop hl                                        ; $614d: $e1
    jp z, Jump_0d6_6210                           ; $614e: $ca $10 $62

    ld bc, $8922                                  ; $6151: $01 $22 $89
    ld bc, $dc00                                  ; $6154: $01 $00 $dc
    ld bc, $21dc                                  ; $6157: $01 $dc $21
    inc c                                         ; $615a: $0c
    db $10                                        ; $615b: $10
    and [hl]                                      ; $615c: $a6
    ld [$d100], sp                                ; $615d: $08 $00 $d1
    ld [hl], d                                    ; $6160: $72
    adc b                                         ; $6161: $88
    ld [hl+], a                                   ; $6162: $22
    add b                                         ; $6163: $80
    inc e                                         ; $6164: $1c
    ld b, c                                       ; $6165: $41
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    ld h, b                                       ; $6168: $60
    inc e                                         ; $6169: $1c
    add b                                         ; $616a: $80
    ld [hl-], a                                   ; $616b: $32
    ld c, b                                       ; $616c: $48
    inc bc                                        ; $616d: $03
    ld c, b                                       ; $616e: $48
    ld bc, $b200                                  ; $616f: $01 $00 $b2
    ld b, l                                       ; $6172: $45
    sub c                                         ; $6173: $91
    dec b                                         ; $6174: $05
    or c                                          ; $6175: $b1
    dec b                                         ; $6176: $05
    ld h, c                                       ; $6177: $61
    ld c, e                                       ; $6178: $4b
    nop                                           ; $6179: $00
    and e                                         ; $617a: $a3
    ld c, e                                       ; $617b: $4b
    inc hl                                        ; $617c: $23
    ld c, e                                       ; $617d: $4b
    inc hl                                        ; $617e: $23
    rla                                           ; $617f: $17
    ld b, a                                       ; $6180: $47
    rla                                           ; $6181: $17
    inc b                                         ; $6182: $04
    ld b, a                                       ; $6183: $47
    add sp, -$1d                                  ; $6184: $e8 $e3
    db $f4                                        ; $6186: $f4
    pop af                                        ; $6187: $f1
    ld [bc], a                                    ; $6188: $02
    ld [$f8fa], sp                                ; $6189: $08 $fa $f8
    nop                                           ; $618c: $00
    ld a, [$fbf8]                                 ; $618d: $fa $f8 $fb
    ld hl, sp-$04                                 ; $6190: $f8 $fc
    db $fc                                        ; $6192: $fc
    ld [bc], a                                    ; $6193: $02
    add sp, $00                                   ; $6194: $e8 $00
    ld [bc], a                                    ; $6196: $02
    db $e4                                        ; $6197: $e4
    ld b, $e8                                     ; $6198: $06 $e8
    inc bc                                        ; $619a: $03
    db $e4                                        ; $619b: $e4
    ld bc, $00fa                                  ; $619c: $01 $fa $00
    nop                                           ; $619f: $00
    nop                                           ; $61a0: $00
    rst $38                                       ; $61a1: $ff
    nop                                           ; $61a2: $00
    nop                                           ; $61a3: $00
    nop                                           ; $61a4: $00
    ld bc, $01aa                                  ; $61a5: $01 $aa $01
    nop                                           ; $61a8: $00
    sub c                                         ; $61a9: $91

jr_0d6_61aa:
    nop                                           ; $61aa: $00
    xor l                                         ; $61ab: $ad
    ld [$fc15], sp                                ; $61ac: $08 $15 $fc
    inc c                                         ; $61af: $0c
    nop                                           ; $61b0: $00
    add b                                         ; $61b1: $80
    db $10                                        ; $61b2: $10
    ld [$4717], sp                                ; $61b3: $08 $17 $47
    cpl                                           ; $61b6: $2f
    adc a                                         ; $61b7: $8f
    cpl                                           ; $61b8: $2f
    rrca                                          ; $61b9: $0f
    cpl                                           ; $61ba: $2f

jr_0d6_61bb:
    nop                                           ; $61bb: $00
    rrca                                          ; $61bc: $0f
    ld e, a                                       ; $61bd: $5f
    rra                                           ; $61be: $1f
    ld e, a                                       ; $61bf: $5f
    rra                                           ; $61c0: $1f
    rst $18                                       ; $61c1: $df
    rra                                           ; $61c2: $1f
    ccf                                           ; $61c3: $3f
    nop                                           ; $61c4: $00
    ccf                                           ; $61c5: $3f
    nop                                           ; $61c6: $00
    ld bc, $00e0                                  ; $61c7: $01 $e0 $00

Call_0d6_61ca:
    ld b, b                                       ; $61ca: $40
    rst $38                                       ; $61cb: $ff
    ld bc, $fe40                                  ; $61cc: $01 $40 $fe
    cp $f8                                        ; $61cf: $fe $f8
    ld hl, sp-$02                                 ; $61d1: $f8 $fe
    cp $00                                        ; $61d3: $fe $00
    db $fd                                        ; $61d5: $fd
    db $fc                                        ; $61d6: $fc
    ldh a, [$f0]                                  ; $61d7: $f0 $f0
    rst $28                                       ; $61d9: $ef
    ldh [$d0], a                                  ; $61da: $e0 $d0
    add $00                                       ; $61dc: $c6 $00
    ld hl, $450c                                  ; $61de: $21 $0c $45
    jr nz, jr_0d6_61bb                            ; $61e1: $20 $d8

    ld bc, $7f7f                                  ; $61e3: $01 $7f $7f
    nop                                           ; $61e6: $00
    cp a                                          ; $61e7: $bf

jr_0d6_61e8:
    ccf                                           ; $61e8: $3f
    rrca                                          ; $61e9: $0f
    rrca                                          ; $61ea: $0f

jr_0d6_61eb:
    rst $00                                       ; $61eb: $c7
    rlca                                          ; $61ec: $07

jr_0d6_61ed:
    inc bc                                        ; $61ed: $03
    inc bc                                        ; $61ee: $03
    ld [bc], a                                    ; $61ef: $02
    sbc b                                         ; $61f0: $98
    ld b, b                                       ; $61f1: $40
    reti                                          ; $61f2: $d9


jr_0d6_61f3:
    inc b                                         ; $61f3: $04
    add b                                         ; $61f4: $80
    ld e, b                                       ; $61f5: $58
    jr nc, jr_0d6_6240                            ; $61f6: $30 $48

    ld a, a                                       ; $61f8: $7f

jr_0d6_61f9:
    nop                                           ; $61f9: $00
    ld a, a                                       ; $61fa: $7f
    sbc a                                         ; $61fb: $9f
    rra                                           ; $61fc: $1f
    push af                                       ; $61fd: $f5
    ldh a, [$eb]                                  ; $61fe: $f0 $eb
    ldh [$d2], a                                  ; $6200: $e0 $d2
    nop                                           ; $6202: $00
    pop bc                                        ; $6203: $c1
    and d                                         ; $6204: $a2
    adc c                                         ; $6205: $89
    ld b, d                                       ; $6206: $42
    jr jr_0d6_624b                                ; $6207: $18 $42

    jr jr_0d6_624b                                ; $6209: $18 $40

    nop                                           ; $620b: $00
    add hl, de                                    ; $620c: $19
    ld b, h                                       ; $620d: $44
    jr jr_0d6_61aa                                ; $620e: $18 $9a

Jump_0d6_6210:
    ld b, h                                       ; $6210: $44
    ld bc, $009c                                  ; $6211: $01 $9c $00
    nop                                           ; $6214: $00
    ld l, c                                       ; $6215: $69
    inc d                                         ; $6216: $14
    ld b, b                                       ; $6217: $40
    rlca                                          ; $6218: $07
    ret nc                                        ; $6219: $d0

    inc bc                                        ; $621a: $03
    ret nz                                        ; $621b: $c0

    dec d                                         ; $621c: $15
    nop                                           ; $621d: $00
    ret nz                                        ; $621e: $c0

    jr z, @-$78                                   ; $621f: $28 $86

    inc b                                         ; $6221: $04
    ld bc, $08a6                                  ; $6222: $01 $a6 $08

jr_0d6_6225:
    sub b                                         ; $6225: $90
    nop                                           ; $6226: $00
    ld h, $90                                     ; $6227: $26 $90
    ld bc, $07f0                                  ; $6229: $01 $f0 $07
    ldh a, [$03]                                  ; $622c: $f0 $03
    inc h                                         ; $622e: $24
    nop                                           ; $622f: $00
    db $10                                        ; $6230: $10
    ld bc, $6f0c                                  ; $6231: $01 $0c $6f
    rrca                                          ; $6234: $0f
    rla                                           ; $6235: $17
    add a                                         ; $6236: $87
    dec bc                                        ; $6237: $0b
    inc b                                         ; $6238: $04
    db $e3                                        ; $6239: $e3
    dec b                                         ; $623a: $05
    pop af                                        ; $623b: $f1
    ld [bc], a                                    ; $623c: $02
    ld hl, sp+$02                                 ; $623d: $f8 $02
    nop                                           ; $623f: $00

jr_0d6_6240:
    ld a, b                                       ; $6240: $78
    add d                                         ; $6241: $82
    nop                                           ; $6242: $00
    jr jr_0d6_61f3                                ; $6243: $18 $ae

    add c                                         ; $6245: $81
    xor a                                         ; $6246: $af
    add b                                         ; $6247: $80
    and [hl]                                      ; $6248: $a6
    add b                                         ; $6249: $80
    ret nc                                        ; $624a: $d0

jr_0d6_624b:
    nop                                           ; $624b: $00
    pop bc                                        ; $624c: $c1
    ret nc                                        ; $624d: $d0

    rst $00                                       ; $624e: $c7
    pop de                                        ; $624f: $d1
    add $ea                                       ; $6250: $c6 $ea
    ldh [$e9], a                                  ; $6252: $e0 $e9
    ld [$49e0], sp                                ; $6254: $08 $e0 $49
    inc h                                         ; $6257: $24
    sub d                                         ; $6258: $92
    inc bc                                        ; $6259: $03
    nop                                           ; $625a: $00
    ld hl, $2690                                  ; $625b: $21 $90 $26
    nop                                           ; $625e: $00
    nop                                           ; $625f: $00
    ld c, h                                       ; $6260: $4c
    jr nz, jr_0d6_61eb                            ; $6261: $20 $88

    ld [bc], a                                    ; $6263: $02
    jr c, jr_0d6_61e8                             ; $6264: $38 $82

    jr nz, jr_0d6_6268                            ; $6266: $20 $00

jr_0d6_6268:
    sbc b                                         ; $6268: $98
    ld c, a                                       ; $6269: $4f
    jr nc, jr_0d6_61ed                            ; $626a: $30 $81

    ld l, $80                                     ; $626c: $2e $80
    inc bc                                        ; $626e: $03
    ld [$e500], sp                                ; $626f: $08 $00 $e5
    adc h                                         ; $6272: $8c
    ld hl, $8110                                  ; $6273: $21 $10 $81
    jr jr_0d6_61f9                                ; $6276: $18 $81

    ld h, l                                       ; $6278: $65
    nop                                           ; $6279: $00
    add c                                         ; $627a: $81
    dec h                                         ; $627b: $25
    ld b, c                                       ; $627c: $41
    dec d                                         ; $627d: $15
    ld h, c                                       ; $627e: $61
    sbc e                                         ; $627f: $9b
    inc hl                                        ; $6280: $23
    adc e                                         ; $6281: $8b
    nop                                           ; $6282: $00
    inc hl                                        ; $6283: $23
    dec bc                                        ; $6284: $0b
    and e                                         ; $6285: $a3
    rla                                           ; $6286: $17
    ld b, a                                       ; $6287: $47
    rla                                           ; $6288: $17
    ld b, a                                       ; $6289: $47
    add sp, $08                                   ; $628a: $e8 $08
    pop hl                                        ; $628c: $e1
    db $f4                                        ; $628d: $f4
    ldh a, [$f5]                                  ; $628e: $f0 $f5
    ld [bc], a                                    ; $6290: $02
    nop                                           ; $6291: $00
    ld a, [$faf8]                                 ; $6292: $fa $f8 $fa
    nop                                           ; $6295: $00
    ld hl, sp-$05                                 ; $6296: $f8 $fb
    ld hl, sp-$04                                 ; $6298: $f8 $fc
    db $fc                                        ; $629a: $fc
    jr nc, jr_0d6_62a3                            ; $629b: $30 $06

    ldh [rP1], a                                  ; $629d: $e0 $00
    inc c                                         ; $629f: $0c
    jp $c218                                      ; $62a0: $c3 $18 $c2


jr_0d6_62a3:
    jr jr_0d6_6225                                ; $62a3: $18 $80

    dec e                                         ; $62a5: $1d
    nop                                           ; $62a6: $00
    nop                                           ; $62a7: $00
    nop                                           ; $62a8: $00
    rst $38                                       ; $62a9: $ff
    nop                                           ; $62aa: $00
    nop                                           ; $62ab: $00
    nop                                           ; $62ac: $00
    inc l                                         ; $62ad: $2c
    add c                                         ; $62ae: $81
    ld e, b                                       ; $62af: $58

jr_0d6_62b0:
    ld bc, $d001                                  ; $62b0: $01 $01 $d0
    nop                                           ; $62b3: $00
    xor b                                         ; $62b4: $a8
    inc bc                                        ; $62b5: $03
    inc b                                         ; $62b6: $04
    ld c, e                                       ; $62b7: $4b
    db $10                                        ; $62b8: $10
    jr jr_0d6_62bb                                ; $62b9: $18 $00

jr_0d6_62bb:
    rla                                           ; $62bb: $17
    ld b, a                                       ; $62bc: $47
    cpl                                           ; $62bd: $2f
    rrca                                          ; $62be: $0f
    cpl                                           ; $62bf: $2f
    adc a                                         ; $62c0: $8f
    cpl                                           ; $62c1: $2f
    adc a                                         ; $62c2: $8f
    nop                                           ; $62c3: $00
    ld e, a                                       ; $62c4: $5f
    rra                                           ; $62c5: $1f
    ld e, a                                       ; $62c6: $5f
    rra                                           ; $62c7: $1f
    rst $18                                       ; $62c8: $df
    rra                                           ; $62c9: $1f
    ccf                                           ; $62ca: $3f
    ccf                                           ; $62cb: $3f
    nop                                           ; $62cc: $00
    ld bc, $00da                                  ; $62cd: $01 $da $00
    ld b, b                                       ; $62d0: $40
    rst $38                                       ; $62d1: $ff
    ld bc, $fe40                                  ; $62d2: $01 $40 $fe
    cp $f1                                        ; $62d5: $fe $f1
    ldh a, [$fe]                                  ; $62d7: $f0 $fe
    cp $00                                        ; $62d9: $fe $00
    db $fc                                        ; $62db: $fc
    db $fc                                        ; $62dc: $fc
    di                                            ; $62dd: $f3
    ldh a, [$e7]                                  ; $62de: $f0 $e7
    ldh [$c9], a                                  ; $62e0: $e0 $c9
    add $00                                       ; $62e2: $c6 $00
    db $10                                        ; $62e4: $10
    dec bc                                        ; $62e5: $0b
    jr nz, jr_0d6_62f9                            ; $62e6: $20 $11

    ret nz                                        ; $62e8: $c0

    jr nz, jr_0d6_636a                            ; $62e9: $20 $7f

    ld a, a                                       ; $62eb: $7f
    nop                                           ; $62ec: $00
    cp a                                          ; $62ed: $bf
    ccf                                           ; $62ee: $3f
    ld c, a                                       ; $62ef: $4f
    rrca                                          ; $62f0: $0f
    or a                                          ; $62f1: $b7
    rlca                                          ; $62f2: $07
    adc e                                         ; $62f3: $8b
    inc bc                                        ; $62f4: $03
    ld [bc], a                                    ; $62f5: $02
    add h                                         ; $62f6: $84
    jr nc, jr_0d6_62fc                            ; $62f7: $30 $03

jr_0d6_62f9:
    ret nc                                        ; $62f9: $d0

    nop                                           ; $62fa: $00
    inc e                                         ; $62fb: $1c

jr_0d6_62fc:
    jr nc, jr_0d6_6346                            ; $62fc: $30 $48

    ld a, a                                       ; $62fe: $7f
    nop                                           ; $62ff: $00
    ld a, a                                       ; $6300: $7f
    sbc a                                         ; $6301: $9f
    rra                                           ; $6302: $1f
    add $c1                                       ; $6303: $c6 $c1
    cp b                                          ; $6305: $b8
    add h                                         ; $6306: $84
    pop bc                                        ; $6307: $c1
    nop                                           ; $6308: $00
    ret nz                                        ; $6309: $c0

    and e                                         ; $630a: $a3
    adc b                                         ; $630b: $88
    ld b, [hl]                                    ; $630c: $46
    ld de, $1640                                  ; $630d: $11 $40 $16
    ld b, b                                       ; $6310: $40
    nop                                           ; $6311: $00
    ld d, $42                                     ; $6312: $16 $42
    ld [$0802], sp                                ; $6314: $08 $02 $08
    ld a, [bc]                                    ; $6317: $0a
    ld h, b                                       ; $6318: $60
    ld h, d                                       ; $6319: $62
    nop                                           ; $631a: $00
    dec b                                         ; $631b: $05
    ld h, b                                       ; $631c: $60
    ld [$0f60], sp                                ; $631d: $08 $60 $0f
    ld h, b                                       ; $6320: $60
    rrca                                          ; $6321: $0f
    add b                                         ; $6322: $80
    nop                                           ; $6323: $00
    scf                                           ; $6324: $37
    add b                                         ; $6325: $80
    scf                                           ; $6326: $37
    jr nz, jr_0d6_62b0                            ; $6327: $20 $87

    sbc b                                         ; $6329: $98
    ld hl, $0006                                  ; $632a: $21 $06 $00
    ld c, b                                       ; $632d: $48
    ld bc, $00d2                                  ; $632e: $01 $d2 $00
    push de                                       ; $6331: $d5
    nop                                           ; $6332: $00
    jp nc, RST_10                                 ; $6333: $d2 $10 $00

    push bc                                       ; $6336: $c5
    db $10                                        ; $6337: $10
    jp nz, Jump_000_0f6f                          ; $6338: $c2 $6f $0f

    rla                                           ; $633b: $17
    add a                                         ; $633c: $87
    dec bc                                        ; $633d: $0b
    nop                                           ; $633e: $00
    jp $7105                                      ; $633f: $c3 $05 $71


    add d                                         ; $6342: $82
    db $10                                        ; $6343: $10
    ld [bc], a                                    ; $6344: $02
    ld a, b                                       ; $6345: $78

jr_0d6_6346:
    ld [bc], a                                    ; $6346: $02
    nop                                           ; $6347: $00
    ret nc                                        ; $6348: $d0

    ld [hl+], a                                   ; $6349: $22
    adc b                                         ; $634a: $88
    and d                                         ; $634b: $a2
    adc b                                         ; $634c: $88
    and b                                         ; $634d: $a0
    add e                                         ; $634e: $83
    and b                                         ; $634f: $a0
    nop                                           ; $6350: $00
    adc e                                         ; $6351: $8b
    ret nc                                        ; $6352: $d0

    ret nz                                        ; $6353: $c0

    jp $c2c0                                      ; $6354: $c3 $c0 $c2


    call z, Call_000_00c1                         ; $6357: $cc $c1 $00
    call c, $d8c1                                 ; $635a: $dc $c1 $d8
    add b                                         ; $635d: $80
    dec sp                                        ; $635e: $3b
    ld e, h                                       ; $635f: $5c
    nop                                           ; $6360: $00
    ld e, [hl]                                    ; $6361: $5e
    nop                                           ; $6362: $00
    nop                                           ; $6363: $00
    ld c, [hl]                                    ; $6364: $4e
    nop                                           ; $6365: $00
    ld b, h                                       ; $6366: $44
    ld [bc], a                                    ; $6367: $02
    ld d, b                                       ; $6368: $50
    rlca                                          ; $6369: $07

jr_0d6_636a:
    add b                                         ; $636a: $80
    db $10                                        ; $636b: $10
    dec de                                        ; $636c: $1b
    ret nz                                        ; $636d: $c0

    dec de                                        ; $636e: $1b
    inc [hl]                                      ; $636f: $34
    ld [$d900], sp                                ; $6370: $08 $00 $d9
    nop                                           ; $6373: $00
    call c, RST_00                                ; $6374: $dc $00 $00
    ld e, h                                       ; $6377: $5c
    dec de                                        ; $6378: $1b
    ld b, b                                       ; $6379: $40
    jr @+$45                                      ; $637a: $18 $43

    jr nc, jr_0d6_6381                            ; $637c: $30 $03

    jr nz, @+$27                                  ; $637e: $20 $25

    add c                                         ; $6380: $81

jr_0d6_6381:
    ld [bc], a                                    ; $6381: $02
    ld [$832b], sp                                ; $6382: $08 $2b $83
    ld c, e                                       ; $6385: $4b
    inc bc                                        ; $6386: $03
    ld c, e                                       ; $6387: $4b
    nop                                           ; $6388: $00
    inc bc                                        ; $6389: $03
    rlca                                          ; $638a: $07
    rlca                                          ; $638b: $07
    ld h, a                                       ; $638c: $67
    rlca                                          ; $638d: $07
    reti                                          ; $638e: $d9


    ret nz                                        ; $638f: $c0

    add b                                         ; $6390: $80
    nop                                           ; $6391: $00
    sbc a                                         ; $6392: $9f
    and [hl]                                      ; $6393: $a6
    add b                                         ; $6394: $80
    add b                                         ; $6395: $80
    sbc a                                         ; $6396: $9f
    add b                                         ; $6397: $80
    add b                                         ; $6398: $80
    ld a, [$f800]                                 ; $6399: $fa $00 $f8
    ei                                            ; $639c: $fb
    ld hl, sp-$04                                 ; $639d: $f8 $fc
    db $fc                                        ; $639f: $fc
    sbc e                                         ; $63a0: $9b
    nop                                           ; $63a1: $00
    inc bc                                        ; $63a2: $03
    ld [bc], a                                    ; $63a3: $02
    ld hl, sp+$65                                 ; $63a4: $f8 $65
    nop                                           ; $63a6: $00
    ld bc, $00f8                                  ; $63a7: $01 $f8 $00
    ld bc, $ff00                                  ; $63aa: $01 $00 $ff
    add b                                         ; $63ad: $80
    dec b                                         ; $63ae: $05
    nop                                           ; $63af: $00
    ld b, $30                                     ; $63b0: $06 $30
    add b                                         ; $63b2: $80
    rla                                           ; $63b3: $17
    and [hl]                                      ; $63b4: $a6
    nop                                           ; $63b5: $00
    nop                                           ; $63b6: $00
    ld b, b                                       ; $63b7: $40
    sbc a                                         ; $63b8: $9f
    db $10                                        ; $63b9: $10
    jr z, @-$37                                   ; $63ba: $28 $c7

    rlca                                          ; $63bc: $07
    ld bc, $65f1                                  ; $63bd: $01 $f1 $65
    ld bc, $0300                                  ; $63c0: $01 $00 $03
    ei                                            ; $63c3: $fb
    rlca                                          ; $63c4: $07
    rlca                                          ; $63c5: $07
    ld e, a                                       ; $63c6: $5f
    rra                                           ; $63c7: $1f
    rst $18                                       ; $63c8: $df
    rra                                           ; $63c9: $1f
    nop                                           ; $63ca: $00
    ccf                                           ; $63cb: $3f
    ccf                                           ; $63cc: $3f
    nop                                           ; $63cd: $00
    ld bc, $00e4                                  ; $63ce: $01 $e4 $00
    ld b, b                                       ; $63d1: $40
    rst $38                                       ; $63d2: $ff
    ld bc, $fe40                                  ; $63d3: $01 $40 $fe
    cp $f9                                        ; $63d6: $fe $f9
    ld hl, sp-$02                                 ; $63d8: $f8 $fe
    cp $00                                        ; $63da: $fe $00
    db $fd                                        ; $63dc: $fd
    db $fc                                        ; $63dd: $fc
    ld a, [c]                                     ; $63de: $f2
    ldh a, [$ec]                                  ; $63df: $f0 $ec
    pop hl                                        ; $63e1: $e1
    ret nc                                        ; $63e2: $d0

    ret nz                                        ; $63e3: $c0

    nop                                           ; $63e4: $00
    rrca                                          ; $63e5: $0f
    nop                                           ; $63e6: $00
    or b                                          ; $63e7: $b0
    rrca                                          ; $63e8: $0f
    ld b, b                                       ; $63e9: $40
    jr c, jr_0d6_646b                             ; $63ea: $38 $7f

    ld a, a                                       ; $63ec: $7f
    nop                                           ; $63ed: $00
    cp a                                          ; $63ee: $bf
    ccf                                           ; $63ef: $3f
    ld b, b                                       ; $63f0: $40
    nop                                           ; $63f1: $00
    inc l                                         ; $63f2: $2c
    add e                                         ; $63f3: $83
    ld a, [de]                                    ; $63f4: $1a
    dec b                                         ; $63f5: $05
    ld [bc], a                                    ; $63f6: $02
    ldh [$03], a                                  ; $63f7: $e0 $03
    inc e                                         ; $63f9: $1c
    ldh [$03], a                                  ; $63fa: $e0 $03
    inc a                                         ; $63fc: $3c
    jr nc, jr_0d6_6417                            ; $63fd: $30 $18

    ld a, a                                       ; $63ff: $7f
    db $10                                        ; $6400: $10
    ld a, a                                       ; $6401: $7f
    ccf                                           ; $6402: $3f
    cp a                                          ; $6403: $bf
    ld [bc], a                                    ; $6404: $02

jr_0d6_6405:
    ld [$1f1f], sp                                ; $6405: $08 $1f $1f
    or $f0                                        ; $6408: $f6 $f0
    nop                                           ; $640a: $00
    add sp, -$20                                  ; $640b: $e8 $e0
    ret nc                                        ; $640d: $d0

    rst $00                                       ; $640e: $c7
    and b                                         ; $640f: $a0
    adc e                                         ; $6410: $8b
    ld b, d                                       ; $6411: $42
    inc b                                         ; $6412: $04
    nop                                           ; $6413: $00
    ld b, b                                       ; $6414: $40
    add hl, de                                    ; $6415: $19
    ld b, b                                       ; $6416: $40

jr_0d6_6417:
    inc d                                         ; $6417: $14
    ld b, [hl]                                    ; $6418: $46
    ld de, $7483                                  ; $6419: $11 $83 $74
    nop                                           ; $641c: $00
    ld bc, $0036                                  ; $641d: $01 $36 $00
    ld [$8002], sp                                ; $6420: $08 $02 $80
    ld [bc], a                                    ; $6423: $02
    ldh [rP1], a                                  ; $6424: $e0 $00
    add e                                         ; $6426: $83
    jr nc, jr_0d6_646a                            ; $6427: $30 $41

    ld [bc], a                                    ; $6429: $02
    db $10                                        ; $642a: $10
    jr z, jr_0d6_642d                             ; $642b: $28 $00

jr_0d6_642d:
    rst $00                                       ; $642d: $c7
    nop                                           ; $642e: $00
    add b                                         ; $642f: $80
    add hl, de                                    ; $6430: $19
    inc c                                         ; $6431: $0c
    ld [hl], b                                    ; $6432: $70
    ld b, [hl]                                    ; $6433: $46
    jr nz, @+$12                                  ; $6434: $20 $10

    ld b, e                                       ; $6436: $43
    nop                                           ; $6437: $00
    ld [hl], d                                    ; $6438: $72
    add c                                         ; $6439: $81
    ld a, $c1                                     ; $643a: $3e $c1
    inc b                                         ; $643c: $04
    ld [bc], a                                    ; $643d: $02
    xor a                                         ; $643e: $af
    rrca                                          ; $643f: $0f
    nop                                           ; $6440: $00
    ld d, a                                       ; $6441: $57
    add a                                         ; $6442: $87
    dec hl                                        ; $6443: $2b
    jp Jump_0d6_6115                              ; $6444: $c3 $15 $61


    ld [bc], a                                    ; $6447: $02
    jr c, jr_0d6_644a                             ; $6448: $38 $00

jr_0d6_644a:
    add d                                         ; $644a: $82
    ld d, b                                       ; $644b: $50
    add d                                         ; $644c: $82
    ld b, b                                       ; $644d: $40
    add d                                         ; $644e: $82
    nop                                           ; $644f: $00
    and a                                         ; $6450: $a7
    adc b                                         ; $6451: $88
    ld [bc], a                                    ; $6452: $02
    xor h                                         ; $6453: $ac
    add d                                         ; $6454: $82
    xor h                                         ; $6455: $ac
    add c                                         ; $6456: $81
    call nc, $02c1                                ; $6457: $d4 $c1 $02
    ld [$00e8], sp                                ; $645a: $08 $e8 $00
    pop hl                                        ; $645d: $e1
    add sp, -$1f                                  ; $645e: $e8 $e1
    sbc b                                         ; $6460: $98
    ld hl, $2a10                                  ; $6461: $21 $10 $2a
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00
    rst $00                                       ; $6466: $c7
    nop                                           ; $6467: $00
    rst $38                                       ; $6468: $ff
    nop                                           ; $6469: $00

jr_0d6_646a:
    db $fc                                        ; $646a: $fc

jr_0d6_646b:
    inc bc                                        ; $646b: $03
    ld hl, sp+$04                                 ; $646c: $f8 $04
    nop                                           ; $646e: $00
    ret nz                                        ; $646f: $c0

    ld de, $e422                                  ; $6470: $11 $22 $e4
    ld a, [bc]                                    ; $6473: $0a
    ld [$0010], sp                                ; $6474: $08 $10 $00
    nop                                           ; $6477: $00
    add b                                         ; $6478: $80
    jr nc, jr_0d6_6405                            ; $6479: $30 $8a

    ld [$1832], sp                                ; $647b: $08 $32 $18
    pop bc                                        ; $647e: $c1
    nop                                           ; $647f: $00
    nop                                           ; $6480: $00
    jr nz, jr_0d6_648b                            ; $6481: $20 $08

    sub h                                         ; $6483: $94
    add c                                         ; $6484: $81
    ld bc, $8105                                  ; $6485: $01 $05 $81
    dec b                                         ; $6488: $05
    nop                                           ; $6489: $00
    or c                                          ; $648a: $b1

jr_0d6_648b:
    dec bc                                        ; $648b: $0b
    ld h, e                                       ; $648c: $63
    dec bc                                        ; $648d: $0b
    db $e3                                        ; $648e: $e3
    dec bc                                        ; $648f: $0b
    db $e3                                        ; $6490: $e3
    rla                                           ; $6491: $17
    nop                                           ; $6492: $00
    rst $00                                       ; $6493: $c7
    rla                                           ; $6494: $17
    rst $00                                       ; $6495: $c7
    ld [$f4e0], a                                 ; $6496: $ea $e0 $f4
    pop af                                        ; $6499: $f1
    push af                                       ; $649a: $f5
    nop                                           ; $649b: $00
    ldh a, [$f4]                                  ; $649c: $f0 $f4
    pop af                                        ; $649e: $f1
    ld a, [$faf8]                                 ; $649f: $fa $f8 $fa
    ld hl, sp-$05                                 ; $64a2: $f8 $fb
    nop                                           ; $64a4: $00
    ld hl, sp-$04                                 ; $64a5: $f8 $fc
    db $fc                                        ; $64a7: $fc
    ld h, e                                       ; $64a8: $63
    sub h                                         ; $64a9: $94
    jp $0724                                      ; $64aa: $c3 $24 $07


    ld [bc], a                                    ; $64ad: $02
    sub b                                         ; $64ae: $90
    rla                                           ; $64af: $17
    jr nz, jr_0d6_64b9                            ; $64b0: $20 $07

    xor b                                         ; $64b2: $a8
    nop                                           ; $64b3: $00
    ld b, l                                       ; $64b4: $45
    nop                                           ; $64b5: $00
    nop                                           ; $64b6: $00
    nop                                           ; $64b7: $00
    nop                                           ; $64b8: $00

jr_0d6_64b9:
    add b                                         ; $64b9: $80
    ld b, b                                       ; $64ba: $40
    add d                                         ; $64bb: $82
    ld b, h                                       ; $64bc: $44
    inc bc                                        ; $64bd: $03
    ret nz                                        ; $64be: $c0

    ld [bc], a                                    ; $64bf: $02
    db $10                                        ; $64c0: $10
    add l                                         ; $64c1: $85
    rrca                                          ; $64c2: $0f
    add b                                         ; $64c3: $80
    db $10                                        ; $64c4: $10
    jr jr_0d6_64de                                ; $64c5: $18 $17

    rst $00                                       ; $64c7: $c7
    cpl                                           ; $64c8: $2f
    adc a                                         ; $64c9: $8f
    nop                                           ; $64ca: $00
    cpl                                           ; $64cb: $2f
    rrca                                          ; $64cc: $0f
    cpl                                           ; $64cd: $2f
    rrca                                          ; $64ce: $0f
    ld e, a                                       ; $64cf: $5f
    rra                                           ; $64d0: $1f
    ld e, a                                       ; $64d1: $5f
    rra                                           ; $64d2: $1f
    nop                                           ; $64d3: $00
    rst $18                                       ; $64d4: $df
    rra                                           ; $64d5: $1f
    ccf                                           ; $64d6: $3f
    ccf                                           ; $64d7: $3f

jr_0d6_64d8:
    nop                                           ; $64d8: $00
    ld bc, $00e2                                  ; $64d9: $01 $e2 $00
    ld b, b                                       ; $64dc: $40
    rst $38                                       ; $64dd: $ff

jr_0d6_64de:
    ld bc, $f930                                  ; $64de: $01 $30 $f9
    ld sp, hl                                     ; $64e1: $f9
    ldh [$e0], a                                  ; $64e2: $e0 $e0
    call nz, Call_000_00db                        ; $64e4: $c4 $db $00
    ldh a, [$f9]                                  ; $64e7: $f0 $f9
    ldh a, [$f8]                                  ; $64e9: $f0 $f8
    ret nc                                        ; $64eb: $d0

    db $e4                                        ; $64ec: $e4
    add sp, -$0e                                  ; $64ed: $e8 $f2
    nop                                           ; $64ef: $00
    call nc, Call_000_20c8                        ; $64f0: $d4 $c8 $20
    nop                                           ; $64f3: $00
    ret nz                                        ; $64f4: $c0

    nop                                           ; $64f5: $00
    nop                                           ; $64f6: $00
    inc c                                         ; $64f7: $0c
    nop                                           ; $64f8: $00
    ccf                                           ; $64f9: $3f
    ld a, a                                       ; $64fa: $7f
    sbc a                                         ; $64fb: $9f
    ccf                                           ; $64fc: $3f
    ld c, a                                       ; $64fd: $4f
    sbc a                                         ; $64fe: $9f
    scf                                           ; $64ff: $37
    ld b, a                                       ; $6500: $47
    nop                                           ; $6501: $00
    ld bc, $6401                                  ; $6502: $01 $01 $64
    add b                                         ; $6505: $80
    ld d, e                                       ; $6506: $53
    and b                                         ; $6507: $a0
    add b                                         ; $6508: $80
    ld d, h                                       ; $6509: $54
    add b                                         ; $650a: $80
    jr nc, jr_0d6_6545                            ; $650b: $30 $38

    rst $38                                       ; $650d: $ff
    rst $38                                       ; $650e: $ff
    ld a, a                                       ; $650f: $7f
    ld a, a                                       ; $6510: $7f
    rra                                           ; $6511: $1f
    rra                                           ; $6512: $1f
    add d                                         ; $6513: $82
    nop                                           ; $6514: $00
    add l                                         ; $6515: $85
    db $ed                                        ; $6516: $ed
    ld [c], a                                     ; $6517: $e2
    ret nc                                        ; $6518: $d0

    call $9ba0                                    ; $6519: $cd $a0 $9b
    inc h                                         ; $651c: $24
    nop                                           ; $651d: $00
    ld [de], a                                    ; $651e: $12
    dec l                                         ; $651f: $2d
    db $10                                        ; $6520: $10
    jr z, jr_0d6_6537                             ; $6521: $28 $14

    ld c, b                                       ; $6523: $48
    inc b                                         ; $6524: $04
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    and h                                         ; $6527: $a4
    nop                                           ; $6528: $00
    db $e4                                        ; $6529: $e4
    ldh [$0d], a                                  ; $652a: $e0 $0d
    ld [$8833], sp                                ; $652c: $08 $33 $88
    nop                                           ; $652f: $00
    ld b, $a0                                     ; $6530: $06 $a0
    rla                                           ; $6532: $17
    jr nz, jr_0d6_6585                            ; $6533: $20 $50

    ld c, h                                       ; $6535: $4c
    and b                                         ; $6536: $a0

jr_0d6_6537:
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    ld b, $00                                     ; $6539: $06 $00
    ld [hl+], a                                   ; $653b: $22
    nop                                           ; $653c: $00
    ld d, $10                                     ; $653d: $16 $10
    ld [$0008], sp                                ; $653f: $08 $08 $00
    ld bc, $0805                                  ; $6542: $01 $05 $08

jr_0d6_6545:
    nop                                           ; $6545: $00
    add [hl]                                      ; $6546: $86
    add d                                         ; $6547: $82
    ld e, b                                       ; $6548: $58
    cpl                                           ; $6549: $2f
    nop                                           ; $654a: $00
    adc a                                         ; $654b: $8f
    ld d, a                                       ; $654c: $57
    add a                                         ; $654d: $87
    dec hl                                        ; $654e: $2b
    ld b, e                                       ; $654f: $43
    dec h                                         ; $6550: $25
    add c                                         ; $6551: $81
    add d                                         ; $6552: $82
    db $10                                        ; $6553: $10
    jr nz, jr_0d6_64d8                            ; $6554: $20 $82

    ld b, b                                       ; $6556: $40
    ld [bc], a                                    ; $6557: $02
    ld [$8688], sp                                ; $6558: $08 $88 $86
    adc h                                         ; $655b: $8c
    sub d                                         ; $655c: $92
    nop                                           ; $655d: $00
    add h                                         ; $655e: $84
    or d                                          ; $655f: $b2
    add b                                         ; $6560: $80
    add e                                         ; $6561: $83
    pop de                                        ; $6562: $d1
    ret nz                                        ; $6563: $c0

    pop de                                        ; $6564: $d1
    jp nz, $e100                                  ; $6565: $c2 $00 $e1

    db $e4                                        ; $6568: $e4
    add sp, -$20                                  ; $6569: $e8 $e0
    ret nc                                        ; $656b: $d0

    add hl, bc                                    ; $656c: $09
    ld h, h                                       ; $656d: $64
    ld bc, $1c00                                  ; $656e: $01 $00 $1c
    ld bc, $4080                                  ; $6571: $01 $80 $40
    ld [$0da5], sp                                ; $6574: $08 $a5 $0d

jr_0d6_6577:
    ld [hl+], a                                   ; $6577: $22
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    ld b, b                                       ; $657a: $40
    nop                                           ; $657b: $00
    ld c, a                                       ; $657c: $4f
    ld e, b                                       ; $657d: $58
    inc bc                                        ; $657e: $03
    add hl, bc                                    ; $657f: $09
    sub h                                         ; $6580: $94
    nop                                           ; $6581: $00
    inc c                                         ; $6582: $0c
    ld b, c                                       ; $6583: $41
    nop                                           ; $6584: $00

jr_0d6_6585:
    and [hl]                                      ; $6585: $a6
    ld bc, $5050                                  ; $6586: $01 $50 $50
    and b                                         ; $6589: $a0
    nop                                           ; $658a: $00
    ld b, $00                                     ; $658b: $06 $00
    inc bc                                        ; $658d: $03
    call nz, Call_0d6_4105                        ; $658e: $c4 $05 $41
    ld b, l                                       ; $6591: $45
    ld sp, $3100                                  ; $6592: $31 $00 $31
    adc c                                         ; $6595: $89
    add hl, sp                                    ; $6596: $39
    dec b                                         ; $6597: $05
    ld c, c                                       ; $6598: $49
    add l                                         ; $6599: $85
    xor c                                         ; $659a: $a9
    ld b, l                                       ; $659b: $45
    nop                                           ; $659c: $00
    dec bc                                        ; $659d: $0b
    ld h, e                                       ; $659e: $63
    inc de                                        ; $659f: $13
    dec bc                                        ; $65a0: $0b
    add sp, -$20                                  ; $65a1: $e8 $e0
    db $f4                                        ; $65a3: $f4
    ldh a, [$80]                                  ; $65a4: $f0 $80
    ld [bc], a                                    ; $65a6: $02
    ld [$f8fa], sp                                ; $65a7: $08 $fa $f8
    ld a, [$fbf8]                                 ; $65aa: $fa $f8 $fb
    ld hl, sp-$04                                 ; $65ad: $f8 $fc
    nop                                           ; $65af: $00
    db $fc                                        ; $65b0: $fc
    rlca                                          ; $65b1: $07
    jr jr_0d6_65b4                                ; $65b2: $18 $00

jr_0d6_65b4:
    ld sp, $3608                                  ; $65b4: $31 $08 $36
    inc b                                         ; $65b7: $04
    ld b, b                                       ; $65b8: $40
    dec de                                        ; $65b9: $1b
    ld [$0000], sp                                ; $65ba: $08 $00 $00
    rst $38                                       ; $65bd: $ff
    nop                                           ; $65be: $00
    nop                                           ; $65bf: $00
    nop                                           ; $65c0: $00
    add hl, bc                                    ; $65c1: $09
    nop                                           ; $65c2: $00
    ld [c], a                                     ; $65c3: $e2
    ret z                                         ; $65c4: $c8

    inc h                                         ; $65c5: $24
    inc b                                         ; $65c6: $04
    jp nz, Jump_000_1b00                          ; $65c7: $c2 $00 $1b

    nop                                           ; $65ca: $00
    ld b, b                                       ; $65cb: $40
    adc b                                         ; $65cc: $88

jr_0d6_65cd:
    db $10                                        ; $65cd: $10
    jr jr_0d6_6577                                ; $65ce: $18 $a7

    rla                                           ; $65d0: $17
    adc a                                         ; $65d1: $8f
    rrca                                          ; $65d2: $0f
    xor a                                         ; $65d3: $af
    rrca                                          ; $65d4: $0f
    nop                                           ; $65d5: $00
    cpl                                           ; $65d6: $2f
    adc a                                         ; $65d7: $8f
    ld e, a                                       ; $65d8: $5f
    rra                                           ; $65d9: $1f
    ld e, a                                       ; $65da: $5f
    rra                                           ; $65db: $1f
    rst $18                                       ; $65dc: $df
    rra                                           ; $65dd: $1f
    nop                                           ; $65de: $00
    ccf                                           ; $65df: $3f
    ccf                                           ; $65e0: $3f
    nop                                           ; $65e1: $00
    ld bc, $00ed                                  ; $65e2: $01 $ed $00
    ld b, b                                       ; $65e5: $40
    rst $38                                       ; $65e6: $ff
    ld bc, $fe40                                  ; $65e7: $01 $40 $fe
    cp $f9                                        ; $65ea: $fe $f9
    ld hl, sp-$02                                 ; $65ec: $f8 $fe
    cp $00                                        ; $65ee: $fe $00
    db $fd                                        ; $65f0: $fd
    db $fc                                        ; $65f1: $fc
    ld a, [c]                                     ; $65f2: $f2
    ldh a, [$ec]                                  ; $65f3: $f0 $ec
    pop hl                                        ; $65f5: $e1
    ret nc                                        ; $65f6: $d0

    jp Jump_000_2000                              ; $65f7: $c3 $00 $20


    rrca                                          ; $65fa: $0f
    ret nc                                        ; $65fb: $d0

    ld bc, $0804                                  ; $65fc: $01 $04 $08
    ld a, [hl]                                    ; $65ff: $7e
    ld a, [hl]                                    ; $6600: $7e
    nop                                           ; $6601: $00
    cp h                                          ; $6602: $bc
    inc a                                         ; $6603: $3c
    ld c, h                                       ; $6604: $4c
    dec c                                         ; $6605: $0d
    ld [hl-], a                                   ; $6606: $32
    add c                                         ; $6607: $81

jr_0d6_6608:
    ld bc, $00c4                                  ; $6608: $01 $c4 $00
    jr jr_0d6_65cd                                ; $660b: $18 $c0

    jr @-$3e                                      ; $660d: $18 $c0

    inc bc                                        ; $660f: $03
    add b                                         ; $6610: $80
    rra                                           ; $6611: $1f
    rra                                           ; $6612: $1f
    nop                                           ; $6613: $00
    ld b, e                                       ; $6614: $43
    and e                                         ; $6615: $a3
    add e                                         ; $6616: $83
    ld c, e                                       ; $6617: $4b
    ld c, c                                       ; $6618: $49
    ld hl, $b501                                  ; $6619: $21 $01 $b5
    nop                                           ; $661c: $00
    dec h                                         ; $661d: $25
    ld d, c                                       ; $661e: $51
    ld hl, $0351                                  ; $661f: $21 $51 $03
    dec hl                                        ; $6622: $2b
    or $f0                                        ; $6623: $f6 $f0
    nop                                           ; $6625: $00
    add sp, -$1f                                  ; $6626: $e8 $e1
    ret nc                                        ; $6628: $d0

    add $a0                                       ; $6629: $c6 $a0
    adc [hl]                                      ; $662b: $8e
    ld b, b                                       ; $662c: $40
    ld e, $80                                     ; $662d: $1e $80
    ld [bc], a                                    ; $662f: $02
    nop                                           ; $6630: $00
    rra                                           ; $6631: $1f
    ld b, b                                       ; $6632: $40
    rra                                           ; $6633: $1f
    inc c                                         ; $6634: $0c
    and c                                         ; $6635: $a1
    ld l, c                                       ; $6636: $69
    inc b                                         ; $6637: $04
    nop                                           ; $6638: $00
    ld b, l                                       ; $6639: $45

jr_0d6_663a:
    jr z, jr_0d6_663c                             ; $663a: $28 $00

jr_0d6_663c:
    call $9000                                    ; $663c: $cd $00 $90
    jr nc, jr_0d6_668a                            ; $663f: $30 $49

    nop                                           ; $6641: $00
    ld h, b                                       ; $6642: $60
    inc e                                         ; $6643: $1c
    jr nc, jr_0d6_668e                            ; $6644: $30 $48

    inc bc                                        ; $6646: $03
    ld e, b                                       ; $6647: $58
    inc e                                         ; $6648: $1c
    add b                                         ; $6649: $80
    nop                                           ; $664a: $00
    sub e                                         ; $664b: $93
    inc b                                         ; $664c: $04
    ld [de], a                                    ; $664d: $12
    ld bc, $124c                                  ; $664e: $01 $4c $12
    ld b, c                                       ; $6651: $41
    jr nz, jr_0d6_6654                            ; $6652: $20 $00

jr_0d6_6654:
    ld b, b                                       ; $6654: $40
    dec sp                                        ; $6655: $3b
    add b                                         ; $6656: $80
    jr z, @+$25                                   ; $6657: $28 $23

    dec bc                                        ; $6659: $0b
    daa                                           ; $665a: $27
    add a                                         ; $665b: $87
    nop                                           ; $665c: $00
    inc bc                                        ; $665d: $03
    add e                                         ; $665e: $83
    ld bc, $4c11                                  ; $665f: $01 $11 $4c
    jr nz, jr_0d6_6608                            ; $6662: $20 $a4

    ld c, b                                       ; $6664: $48
    nop                                           ; $6665: $00
    jr nz, jr_0d6_663a                            ; $6666: $20 $d2

    db $10                                        ; $6668: $10
    xor b                                         ; $6669: $a8
    and b                                         ; $666a: $a0
    adc d                                         ; $666b: $8a
    and b                                         ; $666c: $a0
    add l                                         ; $666d: $85
    nop                                           ; $666e: $00
    and b                                         ; $666f: $a0
    adc d                                         ; $6670: $8a
    ret nc                                        ; $6671: $d0

    pop bc                                        ; $6672: $c1
    pop de                                        ; $6673: $d1
    jp nz, $c4c3                                  ; $6674: $c2 $c3 $c4

    nop                                           ; $6677: $00
    and $e9                                       ; $6678: $e6 $e9
    call nz, Call_0d6_61ca                        ; $667a: $c4 $ca $61
    jr @+$27                                      ; $667d: $18 $25

    ld e, b                                       ; $667f: $58
    nop                                           ; $6680: $00
    ld [bc], a                                    ; $6681: $02
    inc c                                         ; $6682: $0c
    ldh a, [rTMA]                                 ; $6683: $f0 $06
    ldh [rNR24], a                                ; $6685: $e0 $19
    nop                                           ; $6687: $00
    inc b                                         ; $6688: $04
    nop                                           ; $6689: $00

jr_0d6_668a:
    db $10                                        ; $668a: $10
    ld h, $32                                     ; $668b: $26 $32
    ld c, b                                       ; $668d: $48

jr_0d6_668e:
    add [hl]                                      ; $668e: $86
    ld de, $020c                                  ; $668f: $11 $0c $02
    nop                                           ; $6692: $00
    jr jr_0d6_66d9                                ; $6693: $18 $44

    ld hl, $0498                                  ; $6695: $21 $98 $04
    ld h, d                                       ; $6698: $62
    db $10                                        ; $6699: $10
    add hl, bc                                    ; $669a: $09
    nop                                           ; $669b: $00
    ld b, h                                       ; $669c: $44
    ld hl, $8a00                                  ; $669d: $21 $00 $8a
    inc b                                         ; $66a0: $04
    ld b, d                                       ; $66a1: $42
    ld de, $0089                                  ; $66a2: $11 $89 $00
    ld b, c                                       ; $66a5: $41
    dec h                                         ; $66a6: $25
    ld bc, $7395                                  ; $66a7: $01 $95 $73
    inc bc                                        ; $66aa: $03
    and c                                         ; $66ab: $a1
    ld d, l                                       ; $66ac: $55
    nop                                           ; $66ad: $00
    ld b, c                                       ; $66ae: $41
    or l                                          ; $66af: $b5
    ld hl, $d045                                  ; $66b0: $21 $45 $d0
    call nz, $c8d0                                ; $66b3: $c4 $d0 $c8
    nop                                           ; $66b6: $00
    db $ed                                        ; $66b7: $ed
    ldh [$f4], a                                  ; $66b8: $e0 $f4
    ldh a, [$f8]                                  ; $66ba: $f0 $f8
    ld hl, sp-$06                                 ; $66bc: $f8 $fa
    ld hl, sp+$00                                 ; $66be: $f8 $00
    ei                                            ; $66c0: $fb
    ld hl, sp-$04                                 ; $66c1: $f8 $fc
    db $fc                                        ; $66c3: $fc
    ld a, [hl-]                                   ; $66c4: $3a
    ld b, b                                       ; $66c5: $40
    jr z, @+$04                                   ; $66c6: $28 $02

    ld [$a800], sp                                ; $66c8: $08 $00 $a8
    nop                                           ; $66cb: $00
    ld bc, $0002                                  ; $66cc: $01 $02 $00
    nop                                           ; $66cf: $00
    rst $38                                       ; $66d0: $ff
    nop                                           ; $66d1: $00
    nop                                           ; $66d2: $00
    nop                                           ; $66d3: $00
    nop                                           ; $66d4: $00
    ld [$0062], sp                                ; $66d5: $08 $62 $00
    dec d                                         ; $66d8: $15

jr_0d6_66d9:
    db $10                                        ; $66d9: $10
    push bc                                       ; $66da: $c5
    ld [$c410], sp                                ; $66db: $08 $10 $c4
    nop                                           ; $66de: $00
    xor a                                         ; $66df: $af
    db $10                                        ; $66e0: $10
    jr jr_0d6_6724                                ; $66e1: $18 $41

    add hl, hl                                    ; $66e3: $29
    inc bc                                        ; $66e4: $03
    nop                                           ; $66e5: $00
    adc e                                         ; $66e6: $8b
    inc bc                                        ; $66e7: $03
    and e                                         ; $66e8: $a3
    rrca                                          ; $66e9: $0f
    rrca                                          ; $66ea: $0f
    rra                                           ; $66eb: $1f
    ld e, a                                       ; $66ec: $5f
    ld e, a                                       ; $66ed: $5f
    nop                                           ; $66ee: $00
    rra                                           ; $66ef: $1f
    rst $18                                       ; $66f0: $df
    rra                                           ; $66f1: $1f
    ccf                                           ; $66f2: $3f
    ccf                                           ; $66f3: $3f
    nop                                           ; $66f4: $00
    ld bc, $00e0                                  ; $66f5: $01 $e0 $00
    ld b, b                                       ; $66f8: $40
    rst $38                                       ; $66f9: $ff
    ld bc, $fe40                                  ; $66fa: $01 $40 $fe
    cp $f9                                        ; $66fd: $fe $f9
    ld hl, sp-$04                                 ; $66ff: $f8 $fc
    db $fc                                        ; $6701: $fc
    nop                                           ; $6702: $00
    ld sp, hl                                     ; $6703: $f9
    ld a, [$e3e4]                                 ; $6704: $fa $e4 $e3
    set 0, b                                      ; $6707: $cb $c0
    sub h                                         ; $6709: $94
    add d                                         ; $670a: $82
    nop                                           ; $670b: $00
    jr nz, jr_0d6_6716                            ; $670c: $20 $08

    jr nz, jr_0d6_6761                            ; $670e: $20 $51

    ld b, c                                       ; $6710: $41
    ld [hl+], a                                   ; $6711: $22
    rra                                           ; $6712: $1f
    rra                                           ; $6713: $1f
    nop                                           ; $6714: $00
    rst $20                                       ; $6715: $e7

jr_0d6_6716:
    rlca                                          ; $6716: $07
    add hl, bc                                    ; $6717: $09
    ld de, $08e4                                  ; $6718: $11 $e4 $08
    ld [bc], a                                    ; $671b: $02
    jr jr_0d6_6720                                ; $671c: $18 $02

    ld [bc], a                                    ; $671e: $02
    dec b                                         ; $671f: $05

jr_0d6_6720:
    pop hl                                        ; $6720: $e1
    ld [de], a                                    ; $6721: $12
    pop af                                        ; $6722: $f1
    nop                                           ; $6723: $00

jr_0d6_6724:
    jr nc, jr_0d6_674e                            ; $6724: $30 $28

    ld a, a                                       ; $6726: $7f
    add b                                         ; $6727: $80
    ld bc, $1f10                                  ; $6728: $01 $10 $1f
    rra                                           ; $672b: $1f
    or $f0                                        ; $672c: $f6 $f0
    add sp, -$1f                                  ; $672e: $e8 $e1
    ret nc                                        ; $6730: $d0

    nop                                           ; $6731: $00
    jp nz, $84a0                                  ; $6732: $c2 $a0 $84

    ld b, b                                       ; $6735: $40
    ld a, [bc]                                    ; $6736: $0a
    ld b, b                                       ; $6737: $40
    inc d                                         ; $6738: $14
    ld b, b                                       ; $6739: $40
    nop                                           ; $673a: $00
    ld [$1140], sp                                ; $673b: $08 $40 $11
    ld b, d                                       ; $673e: $42
    jr nz, jr_0d6_67a4                            ; $673f: $20 $63

    inc b                                         ; $6741: $04
    inc hl                                        ; $6742: $23
    nop                                           ; $6743: $00
    ld b, h                                       ; $6744: $44
    ld hl, $0046                                  ; $6745: $21 $46 $00
    ld h, a                                       ; $6748: $67
    jr nz, jr_0d6_678e                            ; $6749: $20 $43

    ld [hl], b                                    ; $674b: $70
    nop                                           ; $674c: $00
    add h                                         ; $674d: $84

jr_0d6_674e:
    adc b                                         ; $674e: $88

jr_0d6_674f:
    ld h, c                                       ; $674f: $61
    ld b, c                                       ; $6750: $41
    ld [bc], a                                    ; $6751: $02
    ld d, d                                       ; $6752: $52
    nop                                           ; $6753: $00
    ld a, [c]                                     ; $6754: $f2
    nop                                           ; $6755: $00
    ld bc, $12e1                                  ; $6756: $01 $e1 $12
    ld bc, $0222                                  ; $6759: $01 $22 $02
    pop bc                                        ; $675c: $c1
    inc b                                         ; $675d: $04
    nop                                           ; $675e: $00
    ld a, [bc]                                    ; $675f: $0a
    nop                                           ; $6760: $00

jr_0d6_6761:
    jp nz, Jump_000_0f6f                          ; $6761: $c2 $6f $0f

    rla                                           ; $6764: $17
    rlca                                          ; $6765: $07
    dec bc                                        ; $6766: $0b
    nop                                           ; $6767: $00
    inc bc                                        ; $6768: $03
    dec b                                         ; $6769: $05
    and c                                         ; $676a: $a1
    ld [bc], a                                    ; $676b: $02
    sub b                                         ; $676c: $90
    ld [bc], a                                    ; $676d: $02
    jr z, jr_0d6_6772                             ; $676e: $28 $02

    nop                                           ; $6770: $00
    ld d, b                                       ; $6771: $50

jr_0d6_6772:
    ld [bc], a                                    ; $6772: $02
    jr z, jr_0d6_6716                             ; $6773: $28 $a1

    add d                                         ; $6775: $82
    and d                                         ; $6776: $a2
    add h                                         ; $6777: $84
    and h                                         ; $6778: $a4
    nop                                           ; $6779: $00
    adc c                                         ; $677a: $89
    call nc, $d0c1                                ; $677b: $d4 $c1 $d0
    call nz, $c6d0                                ; $677e: $c4 $d0 $c6
    add sp, $00                                   ; $6781: $e8 $00
    ld [c], a                                     ; $6783: $e2
    add sp, -$1e                                  ; $6784: $e8 $e2
    inc b                                         ; $6786: $04
    ld de, $a042                                  ; $6787: $11 $42 $a0
    ld [c], a                                     ; $678a: $e2
    nop                                           ; $678b: $00
    db $10                                        ; $678c: $10
    ld [c], a                                     ; $678d: $e2

jr_0d6_678e:
    stop                                          ; $678e: $10 $00
    db $ec                                        ; $6790: $ec
    rrca                                          ; $6791: $0f
    ld b, b                                       ; $6792: $40
    inc b                                         ; $6793: $04
    nop                                           ; $6794: $00
    ld [$1403], sp                                ; $6795: $08 $03 $14
    call nz, $8009                                ; $6798: $c4 $09 $80
    db $10                                        ; $679b: $10
    add d                                         ; $679c: $82
    nop                                           ; $679d: $00
    dec [hl]                                      ; $679e: $35
    add a                                         ; $679f: $87
    nop                                           ; $67a0: $00
    ld [bc], a                                    ; $67a1: $02
    dec d                                         ; $67a2: $15
    nop                                           ; $67a3: $00

jr_0d6_67a4:
    or d                                          ; $67a4: $b2
    jr nz, jr_0d6_67a7                            ; $67a5: $20 $00

jr_0d6_67a7:
    ld d, b                                       ; $67a7: $50
    ret nz                                        ; $67a8: $c0

    ld h, $05                                     ; $67a9: $26 $05
    ld de, $0185                                  ; $67ab: $11 $85 $01
    ld b, l                                       ; $67ae: $45
    ld [$2b21], sp                                ; $67af: $08 $21 $2b
    inc bc                                        ; $67b2: $03
    ld c, e                                       ; $67b3: $4b
    ld [bc], a                                    ; $67b4: $02
    nop                                           ; $67b5: $00
    rla                                           ; $67b6: $17
    ld b, a                                       ; $67b7: $47
    rla                                           ; $67b8: $17
    inc b                                         ; $67b9: $04
    rst $00                                       ; $67ba: $c7
    add sp, -$1e                                  ; $67bb: $e8 $e2
    db $f4                                        ; $67bd: $f4
    ldh a, [rSC]                                  ; $67be: $f0 $02
    nop                                           ; $67c0: $00
    pop af                                        ; $67c1: $f1
    ld a, [$f808]                                 ; $67c2: $fa $08 $f8
    ld a, [$fbf8]                                 ; $67c5: $fa $f8 $fb
    cp [hl]                                       ; $67c8: $be
    nop                                           ; $67c9: $00
    jr nz, jr_0d6_674f                            ; $67ca: $20 $83

    and b                                         ; $67cc: $a0
    nop                                           ; $67cd: $00
    db $10                                        ; $67ce: $10
    and b                                         ; $67cf: $a0
    add hl, bc                                    ; $67d0: $09
    add b                                         ; $67d1: $80
    dec hl                                        ; $67d2: $2b
    add b                                         ; $67d3: $80
    ld a, [hl+]                                   ; $67d4: $2a
    nop                                           ; $67d5: $00
    nop                                           ; $67d6: $00
    nop                                           ; $67d7: $00
    rst $38                                       ; $67d8: $ff
    nop                                           ; $67d9: $00
    nop                                           ; $67da: $00
    nop                                           ; $67db: $00
    dec b                                         ; $67dc: $05
    ret nz                                        ; $67dd: $c0

    dec b                                         ; $67de: $05
    ld bc, $0110                                  ; $67df: $01 $10 $01
    ld h, h                                       ; $67e2: $64
    ld bc, $0034                                  ; $67e3: $01 $34 $00
    ld [hl], l                                    ; $67e6: $75
    db $10                                        ; $67e7: $10
    jr jr_0d6_67ea                                ; $67e8: $18 $00

jr_0d6_67ea:
    rla                                           ; $67ea: $17
    ld b, a                                       ; $67eb: $47
    cpl                                           ; $67ec: $2f
    rrca                                          ; $67ed: $0f
    cpl                                           ; $67ee: $2f
    adc a                                         ; $67ef: $8f
    cpl                                           ; $67f0: $2f
    adc a                                         ; $67f1: $8f
    nop                                           ; $67f2: $00
    ld e, a                                       ; $67f3: $5f
    rra                                           ; $67f4: $1f
    ld e, a                                       ; $67f5: $5f
    rra                                           ; $67f6: $1f
    rst $18                                       ; $67f7: $df
    rra                                           ; $67f8: $1f
    ccf                                           ; $67f9: $3f
    ccf                                           ; $67fa: $3f
    nop                                           ; $67fb: $00
    ld bc, $00e4                                  ; $67fc: $01 $e4 $00
    ld e, b                                       ; $67ff: $58
    rst $38                                       ; $6800: $ff
    ld bc, $fe00                                  ; $6801: $01 $00 $fe
    ld bc, $0810                                  ; $6804: $01 $10 $08
    ld [$e0e0], sp                                ; $6807: $08 $e0 $e0
    cp $00                                        ; $680a: $fe $00
    cp $1d                                        ; $680c: $fe $1d
    inc e                                         ; $680e: $1c
    ld h, d                                       ; $680f: $62
    add b                                         ; $6810: $80
    call z, $0121                                 ; $6811: $cc $21 $01
    nop                                           ; $6814: $00
    ld [c], a                                     ; $6815: $e2
    inc bc                                        ; $6816: $03
    ld [$19c2], sp                                ; $6817: $08 $c2 $19
    nop                                           ; $681a: $00
    dec a                                         ; $681b: $3d
    ld a, a                                       ; $681c: $7f
    nop                                           ; $681d: $00
    ld a, a                                       ; $681e: $7f
    cp a                                          ; $681f: $bf
    ccf                                           ; $6820: $3f
    ld c, a                                       ; $6821: $4f
    rrca                                          ; $6822: $0f
    inc bc                                        ; $6823: $03
    sub e                                         ; $6824: $93
    pop hl                                        ; $6825: $e1
    ld bc, $dc0d                                  ; $6826: $01 $0d $dc
    ld [hl+], a                                   ; $6829: $22
    ld e, $40                                     ; $682a: $1e $40
    inc c                                         ; $682c: $0c
    ld [de], a                                    ; $682d: $12
    jr nc, @+$0a                                  ; $682e: $30 $08

    add b                                         ; $6830: $80
    inc b                                         ; $6831: $04
    jr z, jr_0d6_68b3                             ; $6832: $28 $7f

    ld a, a                                       ; $6834: $7f
    sbc a                                         ; $6835: $9f
    rra                                           ; $6836: $1f
    add $d9                                       ; $6837: $c6 $d9
    adc a                                         ; $6839: $8f
    nop                                           ; $683a: $00
    sub b                                         ; $683b: $90
    add e                                         ; $683c: $83
    cp h                                          ; $683d: $bc
    add a                                         ; $683e: $87
    sbc b                                         ; $683f: $98
    ld [bc], a                                    ; $6840: $02
    dec l                                         ; $6841: $2d
    nop                                           ; $6842: $00
    nop                                           ; $6843: $00
    ld [hl], $00                                  ; $6844: $36 $00
    ld sp, $0040                                  ; $6846: $31 $40 $00
    nop                                           ; $6849: $00
    jr c, jr_0d6_684c                             ; $684a: $38 $00

jr_0d6_684c:
    nop                                           ; $684c: $00
    or h                                          ; $684d: $b4
    add h                                         ; $684e: $84
    nop                                           ; $684f: $00
    inc b                                         ; $6850: $04
    add c                                         ; $6851: $81
    inc b                                         ; $6852: $04
    ld b, d                                       ; $6853: $42
    nop                                           ; $6854: $00
    nop                                           ; $6855: $00
    adc e                                         ; $6856: $8b
    nop                                           ; $6857: $00
    inc c                                         ; $6858: $0c
    nop                                           ; $6859: $00
    ld c, d                                       ; $685a: $4a
    ld b, b                                       ; $685b: $40
    xor d                                         ; $685c: $aa
    or d                                          ; $685d: $b2
    nop                                           ; $685e: $00
    inc b                                         ; $685f: $04
    or h                                          ; $6860: $b4
    ld [bc], a                                    ; $6861: $02
    ld [$cb05], a                                 ; $6862: $ea $05 $cb
    db $10                                        ; $6865: $10
    ld bc, $0600                                  ; $6866: $01 $00 $06
    ld b, b                                       ; $6869: $40
    ld hl, $000c                                  ; $686a: $21 $0c $00
    ld l, a                                       ; $686d: $6f
    rrca                                          ; $686e: $0f
    rla                                           ; $686f: $17
    nop                                           ; $6870: $00
    rlca                                          ; $6871: $07
    dec bc                                        ; $6872: $0b
    inc hl                                        ; $6873: $23
    dec b                                         ; $6874: $05
    sub c                                         ; $6875: $91
    ld b, d                                       ; $6876: $42
    xor b                                         ; $6877: $a8
    and d                                         ; $6878: $a2
    nop                                           ; $6879: $00
    ld c, b                                       ; $687a: $48
    jp nz, $0228                                  ; $687b: $c2 $28 $02

    db $10                                        ; $687e: $10
    and b                                         ; $687f: $a0
    add b                                         ; $6880: $80
    and b                                         ; $6881: $a0
    inc b                                         ; $6882: $04
    adc a                                         ; $6883: $8f
    and b                                         ; $6884: $a0
    adc a                                         ; $6885: $8f
    ret nc                                        ; $6886: $d0

    rst $00                                       ; $6887: $c7
    ld [bc], a                                    ; $6888: $02
    nop                                           ; $6889: $00
    add $e9                                       ; $688a: $c6 $e9
    nop                                           ; $688c: $00
    ldh [$e8], a                                  ; $688d: $e0 $e8
    pop hl                                        ; $688f: $e1
    ld bc, $00dc                                  ; $6890: $01 $dc $00
    sbc c                                         ; $6893: $99
    ld b, $00                                     ; $6894: $06 $00
    sub b                                         ; $6896: $90
    inc b                                         ; $6897: $04
    or d                                          ; $6898: $b2
    nop                                           ; $6899: $00
    or [hl]                                       ; $689a: $b6
    nop                                           ; $689b: $00
    inc c                                         ; $689c: $0c
    sbc b                                         ; $689d: $98
    nop                                           ; $689e: $00
    ld hl, $8b30                                  ; $689f: $21 $30 $8b
    ld h, h                                       ; $68a2: $64
    ld [$6400], sp                                ; $68a3: $08 $00 $64
    inc bc                                        ; $68a6: $03
    nop                                           ; $68a7: $00
    inc b                                         ; $68a8: $04
    and c                                         ; $68a9: $a1
    ld b, d                                       ; $68aa: $42
    ld b, b                                       ; $68ab: $40
    and d                                         ; $68ac: $a2
    ld [hl+], a                                   ; $68ad: $22
    ld c, b                                       ; $68ae: $48
    ld b, d                                       ; $68af: $42
    nop                                           ; $68b0: $00
    add hl, hl                                    ; $68b1: $29
    ld [bc], a                                    ; $68b2: $02

jr_0d6_68b3:
    ld bc, $b105                                  ; $68b3: $01 $05 $b1
    dec b                                         ; $68b6: $05
    ld [hl], c                                    ; $68b7: $71
    dec b                                         ; $68b8: $05
    nop                                           ; $68b9: $00
    and c                                         ; $68ba: $a1
    dec bc                                        ; $68bb: $0b
    ld h, e                                       ; $68bc: $63
    dec bc                                        ; $68bd: $0b

jr_0d6_68be:
    inc hl                                        ; $68be: $23
    dec bc                                        ; $68bf: $0b
    ld b, e                                       ; $68c0: $43
    rla                                           ; $68c1: $17
    nop                                           ; $68c2: $00
    rlca                                          ; $68c3: $07
    rlca                                          ; $68c4: $07
    ld h, a                                       ; $68c5: $67
    jp hl                                         ; $68c6: $e9


    ldh [$f0], a                                  ; $68c7: $e0 $f0
    ldh a, [$f1]                                  ; $68c9: $f0 $f1
    ld [bc], a                                    ; $68cb: $02
    ld a, [c]                                     ; $68cc: $f2
    ld [c], a                                     ; $68cd: $e2
    push hl                                       ; $68ce: $e5
    call $eec2                                    ; $68cf: $cd $c2 $ee
    ld a, [bc]                                    ; $68d2: $0a
    nop                                           ; $68d3: $00
    db $fc                                        ; $68d4: $fc
    nop                                           ; $68d5: $00
    db $fc                                        ; $68d6: $fc
    nop                                           ; $68d7: $00
    sbc b                                         ; $68d8: $98
    nop                                           ; $68d9: $00
    sub b                                         ; $68da: $90
    nop                                           ; $68db: $00
    inc d                                         ; $68dc: $14
    add b                                         ; $68dd: $80
    nop                                           ; $68de: $00
    ld [$1400], sp                                ; $68df: $08 $00 $14
    nop                                           ; $68e2: $00
    nop                                           ; $68e3: $00
    rst $38                                       ; $68e4: $ff
    nop                                           ; $68e5: $00
    nop                                           ; $68e6: $00
    nop                                           ; $68e7: $00
    nop                                           ; $68e8: $00
    and b                                         ; $68e9: $a0
    ld a, [bc]                                    ; $68ea: $0a
    and b                                         ; $68eb: $a0
    add hl, bc                                    ; $68ec: $09
    ld [bc], a                                    ; $68ed: $02
    and b                                         ; $68ee: $a0
    nop                                           ; $68ef: $00
    db $10                                        ; $68f0: $10
    add l                                         ; $68f1: $85
    ld bc, $1004                                  ; $68f2: $01 $04 $10
    jr jr_0d6_68be                                ; $68f5: $18 $c7

    daa                                           ; $68f7: $27
    rrca                                          ; $68f8: $0f
    rrca                                          ; $68f9: $0f
    nop                                           ; $68fa: $00
    rrca                                          ; $68fb: $0f
    adc a                                         ; $68fc: $8f
    adc a                                         ; $68fd: $8f
    ld c, a                                       ; $68fe: $4f
    sbc a                                         ; $68ff: $9f

jr_0d6_6900:
    rra                                           ; $6900: $1f
    ld e, a                                       ; $6901: $5f
    rra                                           ; $6902: $1f
    nop                                           ; $6903: $00
    rst $18                                       ; $6904: $df
    rra                                           ; $6905: $1f
    ccf                                           ; $6906: $3f
    ccf                                           ; $6907: $3f
    nop                                           ; $6908: $00
    ld bc, $00e5                                  ; $6909: $01 $e5 $00
    ld b, b                                       ; $690c: $40
    rst $38                                       ; $690d: $ff
    ld bc, $fe40                                  ; $690e: $01 $40 $fe
    cp $f9                                        ; $6911: $fe $f9
    ld hl, sp-$02                                 ; $6913: $f8 $fe
    cp $00                                        ; $6915: $fe $00
    sbc l                                         ; $6917: $9d
    sbc h                                         ; $6918: $9c
    and d                                         ; $6919: $a2
    add b                                         ; $691a: $80
    sub h                                         ; $691b: $94
    and c                                         ; $691c: $a1
    adc b                                         ; $691d: $88
    sub e                                         ; $691e: $93
    nop                                           ; $691f: $00
    inc h                                         ; $6920: $24
    ld [$04d3], sp                                ; $6921: $08 $d3 $04
    ld [$7f12], sp                                ; $6924: $08 $12 $7f
    ld a, a                                       ; $6927: $7f
    nop                                           ; $6928: $00
    cp l                                          ; $6929: $bd
    dec a                                         ; $692a: $3d
    ld c, d                                       ; $692b: $4a
    ld [$8002], sp                                ; $692c: $08 $02 $80
    inc [hl]                                      ; $692f: $34
    nop                                           ; $6930: $00
    ld [bc], a                                    ; $6931: $02
    ld b, b                                       ; $6932: $40
    dec l                                         ; $6933: $2d
    ld e, b                                       ; $6934: $58
    inc bc                                        ; $6935: $03
    ld d, c                                       ; $6936: $51
    adc d                                         ; $6937: $8a
    jr nc, jr_0d6_6962                            ; $6938: $30 $28

    ccf                                           ; $693a: $3f
    nop                                           ; $693b: $00
    ccf                                           ; $693c: $3f
    sbc a                                         ; $693d: $9f
    ld e, a                                       ; $693e: $5f
    cp a                                          ; $693f: $bf
    ccf                                           ; $6940: $3f
    rra                                           ; $6941: $1f
    rra                                           ; $6942: $1f
    or $00                                        ; $6943: $f6 $00
    ldh a, [$e8]                                  ; $6945: $f0 $e8
    pop hl                                        ; $6947: $e1
    ret nc                                        ; $6948: $d0

    rst $00                                       ; $6949: $c7
    and b                                         ; $694a: $a0
    adc h                                         ; $694b: $8c
    ld b, b                                       ; $694c: $40
    nop                                           ; $694d: $00
    add hl, de                                    ; $694e: $19
    ld b, e                                       ; $694f: $43
    db $10                                        ; $6950: $10
    ld b, [hl]                                    ; $6951: $46
    nop                                           ; $6952: $00
    ld b, h                                       ; $6953: $44
    ld a, [bc]                                    ; $6954: $0a
    inc b                                         ; $6955: $04
    nop                                           ; $6956: $00
    ld [$c401], a                                 ; $6957: $ea $01 $c4
    ld a, [bc]                                    ; $695a: $0a
    nop                                           ; $695b: $00
    ld a, h                                       ; $695c: $7c
    ld [bc], a                                    ; $695d: $02
    sbc b                                         ; $695e: $98
    nop                                           ; $695f: $00
    ld b, l                                       ; $6960: $45
    ld [hl-], a                                   ; $6961: $32

jr_0d6_6962:
    add hl, bc                                    ; $6962: $09
    ld h, b                                       ; $6963: $60
    sub d                                         ; $6964: $92
    ret nz                                        ; $6965: $c0

    ld hl, $0091                                  ; $6966: $21 $91 $00
    ld [hl+], a                                   ; $6969: $22
    jr z, jr_0d6_69b1                             ; $696a: $28 $45

    ld d, h                                       ; $696c: $54
    add b                                         ; $696d: $80
    add b                                         ; $696e: $80
    inc h                                         ; $696f: $24
    cp d                                          ; $6970: $ba
    nop                                           ; $6971: $00
    inc b                                         ; $6972: $04
    inc l                                         ; $6973: $2c
    sub d                                         ; $6974: $92
    db $10                                        ; $6975: $10
    jr z, jr_0d6_6900                             ; $6976: $28 $88

    ld d, h                                       ; $6978: $54
    adc a                                         ; $6979: $8f
    nop                                           ; $697a: $00
    ld c, a                                       ; $697b: $4f
    sub a                                         ; $697c: $97
    rlca                                          ; $697d: $07
    dec hl                                        ; $697e: $2b
    ld b, e                                       ; $697f: $43
    sub l                                         ; $6980: $95
    ld hl, $005a                                  ; $6981: $21 $5a $00
    add b                                         ; $6984: $80
    ld c, h                                       ; $6985: $4c
    db $10                                        ; $6986: $10
    inc b                                         ; $6987: $04
    ld a, [bc]                                    ; $6988: $0a
    ld [hl], h                                    ; $6989: $74
    ld [bc], a                                    ; $698a: $02
    and h                                         ; $698b: $a4
    nop                                           ; $698c: $00
    adc c                                         ; $698d: $89
    xor l                                         ; $698e: $ad
    add b                                         ; $698f: $80
    xor [hl]                                      ; $6990: $ae
    add c                                         ; $6991: $81
    add $c8                                       ; $6992: $c6 $c8
    call z, $c200                                 ; $6994: $cc $00 $c2
    call nz, $e3ca                                ; $6997: $c4 $ca $e3
    db $ec                                        ; $699a: $ec
    ld [c], a                                     ; $699b: $e2
    db $e4                                        ; $699c: $e4
    add d                                         ; $699d: $82
    nop                                           ; $699e: $00
    ld b, h                                       ; $699f: $44
    ld b, $99                                     ; $69a0: $06 $99
    add hl, hl                                    ; $69a2: $29
    ld b, [hl]                                    ; $69a3: $46
    ld b, b                                       ; $69a4: $40
    and e                                         ; $69a5: $a3
    add h                                         ; $69a6: $84
    nop                                           ; $69a7: $00
    ld l, c                                       ; $69a8: $69
    ld [$8014], sp                                ; $69a9: $08 $14 $80
    add hl, hl                                    ; $69ac: $29
    ld b, c                                       ; $69ad: $41
    ld [de], a                                    ; $69ae: $12
    ret nz                                        ; $69af: $c0

    nop                                           ; $69b0: $00

jr_0d6_69b1:
    ld hl, $7500                                  ; $69b1: $21 $00 $75
    nop                                           ; $69b4: $00
    add l                                         ; $69b5: $85
    ld [hl-], a                                   ; $69b6: $32
    adc c                                         ; $69b7: $89
    add hl, bc                                    ; $69b8: $09
    nop                                           ; $69b9: $00
    ld [hl-], a                                   ; $69ba: $32
    nop                                           ; $69bb: $00
    ccf                                           ; $69bc: $3f
    add b                                         ; $69bd: $80
    inc c                                         ; $69be: $0c
    nop                                           ; $69bf: $00
    add b                                         ; $69c0: $80
    ld hl, $5500                                  ; $69c1: $21 $00 $55
    ld bc, $7905                                  ; $69c4: $01 $05 $79
    ld bc, $4b33                                  ; $69c7: $01 $33 $4b
    dec b                                         ; $69ca: $05
    db $10                                        ; $69cb: $10
    ld bc, $0571                                  ; $69cc: $01 $71 $05
    inc c                                         ; $69cf: $0c
    nop                                           ; $69d0: $00
    add hl, bc                                    ; $69d1: $09
    add sp, -$1e                                  ; $69d2: $e8 $e2
    db $f4                                        ; $69d4: $f4
    ld b, b                                       ; $69d5: $40
    ldh a, [rSC]                                  ; $69d6: $f0 $02
    ld [$f8fa], sp                                ; $69d8: $08 $fa $f8
    ld a, [$fbf8]                                 ; $69db: $fa $f8 $fb
    ld hl, sp+$00                                 ; $69de: $f8 $00
    db $fc                                        ; $69e0: $fc
    db $fc                                        ; $69e1: $fc
    ld [hl+], a                                   ; $69e2: $22
    add hl, bc                                    ; $69e3: $09
    db $10                                        ; $69e4: $10
    ret nz                                        ; $69e5: $c0

    ld b, b                                       ; $69e6: $40
    and b                                         ; $69e7: $a0
    nop                                           ; $69e8: $00
    ld h, b                                       ; $69e9: $60
    add h                                         ; $69ea: $84
    ld h, b                                       ; $69eb: $60
    add l                                         ; $69ec: $85
    nop                                           ; $69ed: $00
    nop                                           ; $69ee: $00
    rst $38                                       ; $69ef: $ff
    nop                                           ; $69f0: $00
    nop                                           ; $69f1: $00
    nop                                           ; $69f2: $00
    nop                                           ; $69f3: $00
    inc c                                         ; $69f4: $0c
    ld [hl], b                                    ; $69f5: $70
    ld h, d                                       ; $69f6: $62
    add h                                         ; $69f7: $84
    db $10                                        ; $69f8: $10
    adc b                                         ; $69f9: $88
    ld [$4930], sp                                ; $69fa: $08 $30 $49
    ldh [rNR13], a                                ; $69fd: $e0 $13
    db $10                                        ; $69ff: $10
    jr jr_0d6_6a09                                ; $6a00: $18 $07

    rla                                           ; $6a02: $17

jr_0d6_6a03:
    daa                                           ; $6a03: $27
    nop                                           ; $6a04: $00
    add a                                         ; $6a05: $87
    cpl                                           ; $6a06: $2f
    adc a                                         ; $6a07: $8f
    cpl                                           ; $6a08: $2f

jr_0d6_6a09:
    adc a                                         ; $6a09: $8f
    ld e, a                                       ; $6a0a: $5f

jr_0d6_6a0b:
    rra                                           ; $6a0b: $1f
    ld e, a                                       ; $6a0c: $5f
    nop                                           ; $6a0d: $00
    rra                                           ; $6a0e: $1f
    rst $18                                       ; $6a0f: $df
    rra                                           ; $6a10: $1f
    ccf                                           ; $6a11: $3f
    ccf                                           ; $6a12: $3f
    nop                                           ; $6a13: $00
    ld bc, $00ea                                  ; $6a14: $01 $ea $00
    nop                                           ; $6a17: $00
    rst $38                                       ; $6a18: $ff
    rst $38                                       ; $6a19: $ff
    ld hl, sp-$08                                 ; $6a1a: $f8 $f8
    rst $30                                       ; $6a1c: $f7
    ldh a, [$f0]                                  ; $6a1d: $f0 $f0
    db $f4                                        ; $6a1f: $f4
    add b                                         ; $6a20: $80
    ld [bc], a                                    ; $6a21: $02
    nop                                           ; $6a22: $00
    or $f0                                        ; $6a23: $f6 $f0
    di                                            ; $6a25: $f3
    ldh a, [$f0]                                  ; $6a26: $f0 $f0
    cp $fe                                        ; $6a28: $fe $fe
    nop                                           ; $6a2a: $00
    db $fd                                        ; $6a2b: $fd
    db $fc                                        ; $6a2c: $fc
    ld [hl-], a                                   ; $6a2d: $32
    jr nc, @-$32                                  ; $6a2e: $30 $cc

    ld bc, $0320                                  ; $6a30: $01 $20 $03
    nop                                           ; $6a33: $00
    jr jr_0d6_6a39                                ; $6a34: $18 $03

    inc b                                         ; $6a36: $04
    nop                                           ; $6a37: $00
    inc bc                                        ; $6a38: $03

jr_0d6_6a39:
    ld b, b                                       ; $6a39: $40
    ld a, a                                       ; $6a3a: $7f
    ld a, a                                       ; $6a3b: $7f
    nop                                           ; $6a3c: $00
    cp a                                          ; $6a3d: $bf
    ccf                                           ; $6a3e: $3f
    ld c, a                                       ; $6a3f: $4f
    rrca                                          ; $6a40: $0f
    scf                                           ; $6a41: $37
    add a                                         ; $6a42: $87
    dec bc                                        ; $6a43: $0b
    jp Jump_000_0401                              ; $6a44: $c3 $01 $04


    jr nc, jr_0d6_6a8c                            ; $6a47: $30 $43

    add b                                         ; $6a49: $80
    jr nz, jr_0d6_6aa8                            ; $6a4a: $20 $5c

    rst $38                                       ; $6a4c: $ff
    ld bc, $0040                                  ; $6a4d: $01 $40 $00
    ld a, a                                       ; $6a50: $7f
    ld a, a                                       ; $6a51: $7f
    sbc a                                         ; $6a52: $9f
    rra                                           ; $6a53: $1f
    di                                            ; $6a54: $f3
    ldh a, [$e4]                                  ; $6a55: $f0 $e4
    ldh [rSB], a                                  ; $6a57: $e0 $01
    push de                                       ; $6a59: $d5
    ret nz                                        ; $6a5a: $c0

    and h                                         ; $6a5b: $a4
    add d                                         ; $6a5c: $82
    ld c, d                                       ; $6a5d: $4a
    nop                                           ; $6a5e: $00
    ld d, d                                       ; $6a5f: $52
    ld [bc], a                                    ; $6a60: $02
    nop                                           ; $6a61: $00
    nop                                           ; $6a62: $00
    ld c, b                                       ; $6a63: $48
    dec b                                         ; $6a64: $05
    add b                                         ; $6a65: $80
    jr nz, jr_0d6_6aae                            ; $6a66: $20 $46

    nop                                           ; $6a68: $00
    and c                                         ; $6a69: $a1
    ld [$6300], sp                                ; $6a6a: $08 $00 $63
    inc b                                         ; $6a6d: $04
    nop                                           ; $6a6e: $00
    sbc e                                         ; $6a6f: $9b
    inc hl                                        ; $6a70: $23
    add h                                         ; $6a71: $84
    nop                                           ; $6a72: $00
    rst $08                                       ; $6a73: $cf
    nop                                           ; $6a74: $00
    nop                                           ; $6a75: $00
    ret nz                                        ; $6a76: $c0

    add d                                         ; $6a77: $82
    jr z, @+$43                                   ; $6a78: $28 $41

    inc d                                         ; $6a7a: $14
    jr nz, jr_0d6_6a0b                            ; $6a7b: $20 $8e

    nop                                           ; $6a7d: $00
    db $10                                        ; $6a7e: $10
    add e                                         ; $6a7f: $83
    jr z, jr_0d6_6a03                             ; $6a80: $28 $81

    inc h                                         ; $6a82: $24
    ld d, b                                       ; $6a83: $50
    ld b, d                                       ; $6a84: $42
    jr z, jr_0d6_6a87                             ; $6a85: $28 $00

jr_0d6_6a87:
    ld bc, $67f8                                  ; $6a87: $01 $f8 $67
    rlca                                          ; $6a8a: $07
    dec bc                                        ; $6a8b: $0b

jr_0d6_6a8c:
    inc bc                                        ; $6a8c: $03
    dec bc                                        ; $6a8d: $0b
    and e                                         ; $6a8e: $a3
    nop                                           ; $6a8f: $00
    add hl, bc                                    ; $6a90: $09
    and c                                         ; $6a91: $a1
    ld c, d                                       ; $6a92: $4a
    add b                                         ; $6a93: $80
    ld a, [hl+]                                   ; $6a94: $2a
    ret nz                                        ; $6a95: $c0

    ld a, [hl+]                                   ; $6a96: $2a
    ld b, b                                       ; $6a97: $40
    nop                                           ; $6a98: $00
    ld a, [hl+]                                   ; $6a99: $2a
    ld b, b                                       ; $6a9a: $40
    and b                                         ; $6a9b: $a0
    add e                                         ; $6a9c: $83
    and b                                         ; $6a9d: $a0
    adc h                                         ; $6a9e: $8c
    and c                                         ; $6a9f: $a1
    adc d                                         ; $6aa0: $8a
    nop                                           ; $6aa1: $00
    jp nc, $d4c5                                  ; $6aa2: $d2 $c5 $d4

    jp nz, $c4d0                                  ; $6aa5: $c2 $d0 $c4

jr_0d6_6aa8:
    add sp, -$20                                  ; $6aa8: $e8 $e0
    nop                                           ; $6aaa: $00
    add sp, -$20                                  ; $6aab: $e8 $e0
    inc c                                         ; $6aad: $0c

jr_0d6_6aae:
    ld [hl-], a                                   ; $6aae: $32
    ld b, $19                                     ; $6aaf: $06 $19
    add e                                         ; $6ab1: $83
    ld c, h                                       ; $6ab2: $4c
    nop                                           ; $6ab3: $00
    pop bc                                        ; $6ab4: $c1
    ld h, $20                                     ; $6ab5: $26 $20
    ld d, e                                       ; $6ab7: $53
    db $10                                        ; $6ab8: $10
    add hl, hl                                    ; $6ab9: $29

jr_0d6_6aba:
    ld [$0034], sp                                ; $6aba: $08 $34 $00
    inc b                                         ; $6abd: $04
    ld a, [bc]                                    ; $6abe: $0a
    ld bc, $0138                                  ; $6abf: $01 $38 $01
    ld [hl], h                                    ; $6ac2: $74
    ld bc, $000c                                  ; $6ac3: $01 $0c $00
    ld [bc], a                                    ; $6ac6: $02
    ld c, h                                       ; $6ac7: $4c
    ld [bc], a                                    ; $6ac8: $02
    ld l, h                                       ; $6ac9: $6c
    nop                                           ; $6aca: $00
    ld e, b                                       ; $6acb: $58
    nop                                           ; $6acc: $00
    ld d, b                                       ; $6acd: $50
    nop                                           ; $6ace: $00
    ld bc, $0958                                  ; $6acf: $01 $58 $09
    ld h, c                                       ; $6ad2: $61
    add hl, bc                                    ; $6ad3: $09
    ld h, c                                       ; $6ad4: $61
    add hl, de                                    ; $6ad5: $19
    ld b, c                                       ; $6ad6: $41
    nop                                           ; $6ad7: $00
    inc de                                        ; $6ad8: $13

jr_0d6_6ad9:
    ld b, e                                       ; $6ad9: $43

jr_0d6_6ada:
    inc de                                        ; $6ada: $13
    jp $8313                                      ; $6adb: $c3 $13 $83


    rla                                           ; $6ade: $17
    rlca                                          ; $6adf: $07
    ld [bc], a                                    ; $6ae0: $02
    rla                                           ; $6ae1: $17
    rlca                                          ; $6ae2: $07
    add sp, -$20                                  ; $6ae3: $e8 $e0
    db $f4                                        ; $6ae5: $f4
    pop af                                        ; $6ae6: $f1
    ld [bc], a                                    ; $6ae7: $02
    ld [$00fa], sp                                ; $6ae8: $08 $fa $00
    ld hl, sp-$06                                 ; $6aeb: $f8 $fa
    ld hl, sp-$05                                 ; $6aed: $f8 $fb
    ld hl, sp-$04                                 ; $6aef: $f8 $fc
    db $fc                                        ; $6af1: $fc
    ld [bc], a                                    ; $6af2: $02
    nop                                           ; $6af3: $00
    ld h, l                                       ; $6af4: $65
    ld bc, $31f2                                  ; $6af5: $01 $f2 $31
    ret z                                         ; $6af8: $c8

    ld a, b                                       ; $6af9: $78
    add l                                         ; $6afa: $85
    ld hl, sp+$00                                 ; $6afb: $f8 $00
    inc b                                         ; $6afd: $04
    nop                                           ; $6afe: $00
    nop                                           ; $6aff: $00
    rst $38                                       ; $6b00: $ff
    nop                                           ; $6b01: $00
    nop                                           ; $6b02: $00
    nop                                           ; $6b03: $00
    ld bc, $1800                                  ; $6b04: $01 $00 $18
    ld bc, $8188                                  ; $6b07: $01 $88 $81
    ld b, d                                       ; $6b0a: $42
    jp nz, Jump_0d6_4221                          ; $6b0b: $c2 $21 $42

    ld b, b                                       ; $6b0e: $40
    and c                                         ; $6b0f: $a1
    db $10                                        ; $6b10: $10
    jr jr_0d6_6aba                                ; $6b11: $18 $a7

    rlca                                          ; $6b13: $07
    xor a                                         ; $6b14: $af
    rrca                                          ; $6b15: $0f
    ld l, a                                       ; $6b16: $6f
    rrca                                          ; $6b17: $0f
    nop                                           ; $6b18: $00
    ld c, a                                       ; $6b19: $4f
    rrca                                          ; $6b1a: $0f
    ld e, a                                       ; $6b1b: $5f
    rra                                           ; $6b1c: $1f
    ld e, a                                       ; $6b1d: $5f
    rra                                           ; $6b1e: $1f
    rst $18                                       ; $6b1f: $df
    rra                                           ; $6b20: $1f
    nop                                           ; $6b21: $00
    ccf                                           ; $6b22: $3f
    ccf                                           ; $6b23: $3f
    nop                                           ; $6b24: $00
    ld bc, $00e7                                  ; $6b25: $01 $e7 $00
    nop                                           ; $6b28: $00
    rst $38                                       ; $6b29: $ff
    rst $38                                       ; $6b2a: $ff
    and a                                         ; $6b2b: $a7
    and a                                         ; $6b2c: $a7
    jp z, $80c2                                   ; $6b2d: $ca $c2 $80

    xor b                                         ; $6b30: $a8
    nop                                           ; $6b31: $00
    ld [hl+], a                                   ; $6b32: $22
    inc d                                         ; $6b33: $14
    ld de, $4849                                  ; $6b34: $11 $49 $48
    jr nz, jr_0d6_6ada                            ; $6b37: $20 $a1

    sub h                                         ; $6b39: $94
    nop                                           ; $6b3a: $00
    cp $fe                                        ; $6b3b: $fe $fe
    db $fd                                        ; $6b3d: $fd
    db $fc                                        ; $6b3e: $fc
    ld a, [c]                                     ; $6b3f: $f2
    ldh a, [$ec]                                  ; $6b40: $f0 $ec
    pop hl                                        ; $6b42: $e1
    nop                                           ; $6b43: $00
    ret nc                                        ; $6b44: $d0

    jp nz, $0820                                  ; $6b45: $c2 $20 $08

    ret nz                                        ; $6b48: $c0

    rla                                           ; $6b49: $17
    nop                                           ; $6b4a: $00
    ld l, $00                                     ; $6b4b: $2e $00
    ld h, [hl]                                    ; $6b4d: $66
    ld h, [hl]                                    ; $6b4e: $66
    ld bc, $1009                                  ; $6b4f: $01 $09 $10
    inc b                                         ; $6b52: $04
    jr z, jr_0d6_6ad9                             ; $6b53: $28 $84

    nop                                           ; $6b55: $00
    add hl, bc                                    ; $6b56: $09
    ld [bc], a                                    ; $6b57: $02
    inc c                                         ; $6b58: $0c
    ldh [rTIMA], a                                ; $6b59: $e0 $05
    jr nc, jr_0d6_6b9d                            ; $6b5b: $30 $40

    nop                                           ; $6b5d: $00
    ld d, b                                       ; $6b5e: $50
    rst $38                                       ; $6b5f: $ff
    ld bc, $7f00                                  ; $6b60: $01 $00 $7f
    ld bc, $1f30                                  ; $6b63: $01 $30 $1f
    rra                                           ; $6b66: $1f
    ret nz                                        ; $6b67: $c0

    adc $00                                       ; $6b68: $ce $00
    ldh [$e8], a                                  ; $6b6a: $e0 $e8
    jp nz, $aac4                                  ; $6b6c: $c2 $c4 $aa

    add l                                         ; $6b6f: $85
    ld b, l                                       ; $6b70: $45
    ld [de], a                                    ; $6b71: $12
    nop                                           ; $6b72: $00
    ld b, l                                       ; $6b73: $45
    ld [de], a                                    ; $6b74: $12
    ld b, d                                       ; $6b75: $42
    jr @+$42                                      ; $6b76: $18 $40

    add hl, de                                    ; $6b78: $19
    ld bc, $00dc                                  ; $6b79: $01 $dc $00
    inc c                                         ; $6b7c: $0c
    ret nc                                        ; $6b7d: $d0

    ld a, [bc]                                    ; $6b7e: $0a
    ret nc                                        ; $6b7f: $d0

    dec bc                                        ; $6b80: $0b
    ld d, b                                       ; $6b81: $50
    inc bc                                        ; $6b82: $03
    ld e, b                                       ; $6b83: $58
    nop                                           ; $6b84: $00
    ld bc, $0452                                  ; $6b85: $01 $52 $04
    ld c, c                                       ; $6b88: $49
    ld [hl+], a                                   ; $6b89: $22
    inc c                                         ; $6b8a: $0c
    ldh a, [rTAC]                                 ; $6b8b: $f0 $07
    nop                                           ; $6b8d: $00
    ld b, b                                       ; $6b8e: $40
    inc bc                                        ; $6b8f: $03
    ldh [$08], a                                  ; $6b90: $e0 $08
    and d                                         ; $6b92: $a2
    add hl, bc                                    ; $6b93: $09
    pop hl                                        ; $6b94: $e1
    ld a, [bc]                                    ; $6b95: $0a
    nop                                           ; $6b96: $00
    add b                                         ; $6b97: $80
    dec c                                         ; $6b98: $0d
    ldh [$0c], a                                  ; $6b99: $e0 $0c
    nop                                           ; $6b9b: $00
    ld h, [hl]                                    ; $6b9c: $66

jr_0d6_6b9d:
    ld l, a                                       ; $6b9d: $6f
    rrca                                          ; $6b9e: $0f
    nop                                           ; $6b9f: $00
    rla                                           ; $6ba0: $17
    rlca                                          ; $6ba1: $07
    dec bc                                        ; $6ba2: $0b
    ld h, e                                       ; $6ba3: $63
    add l                                         ; $6ba4: $85
    ld sp, $b802                                  ; $6ba5: $31 $02 $b8
    nop                                           ; $6ba8: $00
    add d                                         ; $6ba9: $82
    jr c, jr_0d6_6bae                             ; $6baa: $38 $02

    jr c, jr_0d6_6bb0                             ; $6bac: $38 $02

jr_0d6_6bae:
    ret c                                         ; $6bae: $d8

    and b                                         ; $6baf: $a0

jr_0d6_6bb0:
    adc e                                         ; $6bb0: $8b
    ld [bc], a                                    ; $6bb1: $02
    and b                                         ; $6bb2: $a0
    adc b                                         ; $6bb3: $88
    and e                                         ; $6bb4: $a3
    adc b                                         ; $6bb5: $88
    ret nc                                        ; $6bb6: $d0

    call nz, $0002                                ; $6bb7: $c4 $02 $00
    add $00                                       ; $6bba: $c6 $00
    add sp, -$1e                                  ; $6bbc: $e8 $e2
    add sp, -$1e                                  ; $6bbe: $e8 $e2
    ld sp, $9802                                  ; $6bc0: $31 $02 $98
    nop                                           ; $6bc3: $00
    nop                                           ; $6bc4: $00
    rrca                                          ; $6bc5: $0f
    nop                                           ; $6bc6: $00
    add b                                         ; $6bc7: $80
    nop                                           ; $6bc8: $00
    ret nz                                        ; $6bc9: $c0

    ld e, $c1                                     ; $6bca: $1e $c1
    inc e                                         ; $6bcc: $1c
    nop                                           ; $6bcd: $00
    ld b, c                                       ; $6bce: $41
    inc b                                         ; $6bcf: $04
    inc de                                        ; $6bd0: $13
    nop                                           ; $6bd1: $00
    add b                                         ; $6bd2: $80
    ld [bc], a                                    ; $6bd3: $02
    inc c                                         ; $6bd4: $0c
    ld h, b                                       ; $6bd5: $60
    nop                                           ; $6bd6: $00
    adc h                                         ; $6bd7: $8c
    jr nz, jr_0d6_6bda                            ; $6bd8: $20 $00

jr_0d6_6bda:
    inc bc                                        ; $6bda: $03
    jr nz, @+$11                                  ; $6bdb: $20 $0f

    or b                                          ; $6bdd: $b0
    ld b, $00                                     ; $6bde: $06 $00
    jr jr_0d6_6c25                                ; $6be0: $18 $43

    ld [$0563], sp                                ; $6be2: $08 $63 $05
    pop de                                        ; $6be5: $d1
    dec h                                         ; $6be6: $25
    ld bc, $e500                                  ; $6be7: $01 $00 $e5
    ld bc, $034b                                  ; $6bea: $01 $4b $03
    dec bc                                        ; $6bed: $0b
    and e                                         ; $6bee: $a3
    dec bc                                        ; $6bef: $0b
    and e                                         ; $6bf0: $a3
    nop                                           ; $6bf1: $00
    rla                                           ; $6bf2: $17
    rlca                                          ; $6bf3: $07
    rla                                           ; $6bf4: $17
    add a                                         ; $6bf5: $87
    add sp, -$1f                                  ; $6bf6: $e8 $e1
    push af                                       ; $6bf8: $f5
    ldh a, [rP1]                                  ; $6bf9: $f0 $00
    push af                                       ; $6bfb: $f5
    ldh a, [$f4]                                  ; $6bfc: $f0 $f4
    pop af                                        ; $6bfe: $f1
    ld a, [$faf8]                                 ; $6bff: $fa $f8 $fa
    ld hl, sp+$00                                 ; $6c02: $f8 $00
    ei                                            ; $6c04: $fb
    ld hl, sp-$04                                 ; $6c05: $f8 $fc
    db $fc                                        ; $6c07: $fc
    add d                                         ; $6c08: $82
    ld l, b                                       ; $6c09: $68
    ret nz                                        ; $6c0a: $c0

    ld de, $6000                                  ; $6c0b: $11 $00 $60
    add a                                         ; $6c0e: $87
    ld [hl], b                                    ; $6c0f: $70
    add a                                         ; $6c10: $87
    ld h, b                                       ; $6c11: $60
    sub a                                         ; $6c12: $97
    nop                                           ; $6c13: $00
    nop                                           ; $6c14: $00
    nop                                           ; $6c15: $00
    rst $38                                       ; $6c16: $ff
    nop                                           ; $6c17: $00
    nop                                           ; $6c18: $00
    nop                                           ; $6c19: $00
    inc c                                         ; $6c1a: $0c
    pop hl                                        ; $6c1b: $e1
    inc b                                         ; $6c1c: $04
    jp hl                                         ; $6c1d: $e9


    jp nz, Jump_000_1802                          ; $6c1e: $c2 $02 $18

    db $10                                        ; $6c21: $10
    jr jr_0d6_6c3b                                ; $6c22: $18 $17

    add a                                         ; $6c24: $87

jr_0d6_6c25:
    cpl                                           ; $6c25: $2f
    adc a                                         ; $6c26: $8f
    ld [bc], a                                    ; $6c27: $02
    ld [$005f], sp                                ; $6c28: $08 $5f $00
    rra                                           ; $6c2b: $1f
    ld e, a                                       ; $6c2c: $5f
    rra                                           ; $6c2d: $1f
    rst $18                                       ; $6c2e: $df
    rra                                           ; $6c2f: $1f
    ccf                                           ; $6c30: $3f
    ccf                                           ; $6c31: $3f
    nop                                           ; $6c32: $00
    ld bc, $00e1                                  ; $6c33: $01 $e1 $00
    ld b, b                                       ; $6c36: $40
    rst $38                                       ; $6c37: $ff
    ld bc, $fd30                                  ; $6c38: $01 $30 $fd

jr_0d6_6c3b:
    db $fd                                        ; $6c3b: $fd
    ld a, [$c3f8]                                 ; $6c3c: $fa $f8 $c3
    ret nz                                        ; $6c3f: $c0

    nop                                           ; $6c40: $00
    cp $fe                                        ; $6c41: $fe $fe
    db $fd                                        ; $6c43: $fd
    db $fc                                        ; $6c44: $fc
    ld [c], a                                     ; $6c45: $e2
    ldh [$d8], a                                  ; $6c46: $e0 $d8
    ret nz                                        ; $6c48: $c0

    nop                                           ; $6c49: $00
    ret nc                                        ; $6c4a: $d0

    rlc b                                         ; $6c4b: $cb $00
    inc bc                                        ; $6c4d: $03
    ldh a, [rTMA]                                 ; $6c4e: $f0 $06
    add b                                         ; $6c50: $80
    ld a, e                                       ; $6c51: $7b
    nop                                           ; $6c52: $00
    ld a, a                                       ; $6c53: $7f
    ld a, a                                       ; $6c54: $7f
    ccf                                           ; $6c55: $3f
    ccf                                           ; $6c56: $3f
    rst $08                                       ; $6c57: $cf
    rrca                                          ; $6c58: $0f
    sub [hl]                                      ; $6c59: $96
    ld b, [hl]                                    ; $6c5a: $46
    nop                                           ; $6c5b: $00
    add hl, bc                                    ; $6c5c: $09
    nop                                           ; $6c5d: $00
    inc bc                                        ; $6c5e: $03
    ld [hl], b                                    ; $6c5f: $70
    add e                                         ; $6c60: $83
    jr c, @+$05                                   ; $6c61: $38 $03

    ld a, b                                       ; $6c63: $78
    add b                                         ; $6c64: $80
    jr nc, jr_0d6_6c7f                            ; $6c65: $30 $18

    rra                                           ; $6c67: $1f
    rra                                           ; $6c68: $1f
    rst $28                                       ; $6c69: $ef

jr_0d6_6c6a:
    rrca                                          ; $6c6a: $0f
    rst $30                                       ; $6c6b: $f7
    rlca                                          ; $6c6c: $07
    rst $20                                       ; $6c6d: $e7
    nop                                           ; $6c6e: $00
    rla                                           ; $6c6f: $17
    rst $00                                       ; $6c70: $c7
    scf                                           ; $6c71: $37
    or [hl]                                       ; $6c72: $b6
    add b                                         ; $6c73: $80
    or [hl]                                       ; $6c74: $b6
    add b                                         ; $6c75: $80
    and h                                         ; $6c76: $a4
    inc b                                         ; $6c77: $04
    sub d                                         ; $6c78: $92
    add b                                         ; $6c79: $80
    add d                                         ; $6c7a: $82
    ld b, b                                       ; $6c7b: $40
    ld a, [de]                                    ; $6c7c: $1a
    ld [bc], a                                    ; $6c7d: $02
    nop                                           ; $6c7e: $00

jr_0d6_6c7f:
    jr jr_0d6_6cc1                                ; $6c7f: $18 $40

    nop                                           ; $6c81: $00
    ld a, [bc]                                    ; $6c82: $0a
    nop                                           ; $6c83: $00
    ld l, l                                       ; $6c84: $6d
    sub b                                         ; $6c85: $90
    ld b, $c8                                     ; $6c86: $06 $c8
    nop                                           ; $6c88: $00
    inc c                                         ; $6c89: $0c
    nop                                           ; $6c8a: $00
    db $10                                        ; $6c8b: $10
    ld [hl], $40                                  ; $6c8c: $36 $40
    xor $00                                       ; $6c8e: $ee $00
    ld d, h                                       ; $6c90: $54
    ld bc, $0029                                  ; $6c91: $01 $29 $00
    add d                                         ; $6c94: $82
    ld bc, $20da                                  ; $6c95: $01 $da $20
    adc l                                         ; $6c98: $8d
    nop                                           ; $6c99: $00
    sbc $00                                       ; $6c9a: $de $00
    nop                                           ; $6c9c: $00
    rst $38                                       ; $6c9d: $ff
    nop                                           ; $6c9e: $00
    ldh a, [rTAC]                                 ; $6c9f: $f0 $07
    ld b, b                                       ; $6ca1: $40
    jr jr_0d6_6ca7                                ; $6ca2: $18 $03

    cp b                                          ; $6ca4: $b8
    nop                                           ; $6ca5: $00
    ld b, b                                       ; $6ca6: $40

jr_0d6_6ca7:
    add a                                         ; $6ca7: $87
    ld [hl], a                                    ; $6ca8: $77
    rlca                                          ; $6ca9: $07
    rst $20                                       ; $6caa: $e7
    dec bc                                        ; $6cab: $0b
    inc bc                                        ; $6cac: $03
    dec b                                         ; $6cad: $05
    nop                                           ; $6cae: $00
    pop de                                        ; $6caf: $d1
    ld [hl+], a                                   ; $6cb0: $22
    adc b                                         ; $6cb1: $88
    ld [hl+], a                                   ; $6cb2: $22
    ld [$1882], sp                                ; $6cb3: $08 $82 $18
    ld [bc], a                                    ; $6cb6: $02
    nop                                           ; $6cb7: $00
    jr c, jr_0d6_6c6a                             ; $6cb8: $38 $b0

    add a                                         ; $6cba: $87
    sbc b                                         ; $6cbb: $98
    add e                                         ; $6cbc: $83
    adc b                                         ; $6cbd: $88
    add d                                         ; $6cbe: $82
    ret nz                                        ; $6cbf: $c0

    nop                                           ; $6cc0: $00

jr_0d6_6cc1:
    jp z, $c4c0                                   ; $6cc1: $ca $c0 $c4

    call nc, $e0c2                                ; $6cc4: $d4 $c2 $e0
    ld [c], a                                     ; $6cc7: $e2
    ld [$e000], a                                 ; $6cc8: $ea $00 $e0
    inc bc                                        ; $6ccb: $03
    call nz, Call_000_1807                        ; $6ccc: $c4 $07 $18
    adc a                                         ; $6ccf: $8f
    ld d, b                                       ; $6cd0: $50
    sbc [hl]                                      ; $6cd1: $9e
    nop                                           ; $6cd2: $00
    ld b, b                                       ; $6cd3: $40
    ccf                                           ; $6cd4: $3f
    add b                                         ; $6cd5: $80
    rst $30                                       ; $6cd6: $f7
    nop                                           ; $6cd7: $00
    or e                                          ; $6cd8: $b3
    inc b                                         ; $6cd9: $04
    cp c                                          ; $6cda: $b9
    nop                                           ; $6cdb: $00
    ld [bc], a                                    ; $6cdc: $02
    ld sp, hl                                     ; $6cdd: $f9
    ld b, $b9                                     ; $6cde: $06 $b9
    ld b, $2f                                     ; $6ce0: $06 $2f
    ld d, b                                       ; $6ce2: $50
    ld h, a                                       ; $6ce3: $67
    nop                                           ; $6ce4: $00
    sub b                                         ; $6ce5: $90
    db $e3                                        ; $6ce6: $e3
    inc d                                         ; $6ce7: $14
    db $e3                                        ; $6ce8: $e3
    inc d                                         ; $6ce9: $14
    pop hl                                        ; $6cea: $e1
    ld a, [de]                                    ; $6ceb: $1a
    ret nz                                        ; $6cec: $c0

    nop                                           ; $6ced: $00
    dec sp                                        ; $6cee: $3b
    add l                                         ; $6cef: $85
    ld de, $01c5                                  ; $6cf0: $11 $c5 $01
    push hl                                       ; $6cf3: $e5
    ld bc, $006b                                  ; $6cf4: $01 $6b $00
    inc bc                                        ; $6cf7: $03
    dec hl                                        ; $6cf8: $2b
    add e                                         ; $6cf9: $83
    xor e                                         ; $6cfa: $ab
    inc bc                                        ; $6cfb: $03
    rst $10                                       ; $6cfc: $d7
    rlca                                          ; $6cfd: $07
    rst $10                                       ; $6cfe: $d7
    inc b                                         ; $6cff: $04
    rlca                                          ; $6d00: $07
    add sp, -$20                                  ; $6d01: $e8 $e0
    db $f4                                        ; $6d03: $f4
    ldh a, [rSC]                                  ; $6d04: $f0 $02
    ld [$f8fa], sp                                ; $6d06: $08 $fa $f8
    nop                                           ; $6d09: $00
    ld a, [$fbf8]                                 ; $6d0a: $fa $f8 $fb
    ld hl, sp-$04                                 ; $6d0d: $f8 $fc
    db $fc                                        ; $6d0f: $fc
    sbc b                                         ; $6d10: $98
    inc hl                                        ; $6d11: $23
    nop                                           ; $6d12: $00
    jr jr_0d6_6d3b                                ; $6d13: $18 $26

    nop                                           ; $6d15: $00
    ld e, e                                       ; $6d16: $5b
    ld [bc], a                                    ; $6d17: $02
    ld b, l                                       ; $6d18: $45
    ld b, $58                                     ; $6d19: $06 $58
    ld l, b                                       ; $6d1b: $68
    nop                                           ; $6d1c: $00
    ld [hl], l                                    ; $6d1d: $75
    nop                                           ; $6d1e: $00
    ld bc, $f100                                  ; $6d1f: $01 $00 $f1
    dec b                                         ; $6d22: $05
    nop                                           ; $6d23: $00
    ld hl, sp-$40                                 ; $6d24: $f8 $c0
    inc a                                         ; $6d26: $3c
    ld hl, $1ce0                                  ; $6d27: $21 $e0 $1c
    db $10                                        ; $6d2a: $10
    jr @+$19                                      ; $6d2b: $18 $17

    rst $00                                       ; $6d2d: $c7
    cpl                                           ; $6d2e: $2f
    adc a                                         ; $6d2f: $8f
    ld [bc], a                                    ; $6d30: $02
    nop                                           ; $6d31: $00
    nop                                           ; $6d32: $00
    rrca                                          ; $6d33: $0f
    ld e, e                                       ; $6d34: $5b
    dec de                                        ; $6d35: $1b
    ld d, l                                       ; $6d36: $55
    ld de, $1bdb                                  ; $6d37: $11 $db $1b
    ccf                                           ; $6d3a: $3f

jr_0d6_6d3b:
    nop                                           ; $6d3b: $00
    ccf                                           ; $6d3c: $3f
    nop                                           ; $6d3d: $00
    ld bc, $00e2                                  ; $6d3e: $01 $e2 $00
    ld b, b                                       ; $6d41: $40
    rst $38                                       ; $6d42: $ff
    ld bc, $fe40                                  ; $6d43: $01 $40 $fe
    cp $f9                                        ; $6d46: $fe $f9
    ld hl, sp-$02                                 ; $6d48: $f8 $fe
    cp $00                                        ; $6d4a: $fe $00
    db $fd                                        ; $6d4c: $fd
    db $fc                                        ; $6d4d: $fc
    ld a, [c]                                     ; $6d4e: $f2
    ldh a, [$ec]                                  ; $6d4f: $f0 $ec
    pop hl                                        ; $6d51: $e1
    ret nc                                        ; $6d52: $d0

    jp Jump_000_2000                              ; $6d53: $c3 $00 $20


    rlca                                          ; $6d56: $07
    ret nz                                        ; $6d57: $c0

    rlca                                          ; $6d58: $07
    nop                                           ; $6d59: $00
    rla                                           ; $6d5a: $17
    ld a, a                                       ; $6d5b: $7f
    ld a, a                                       ; $6d5c: $7f
    nop                                           ; $6d5d: $00

jr_0d6_6d5e:
    cp a                                          ; $6d5e: $bf
    ccf                                           ; $6d5f: $3f
    ld c, a                                       ; $6d60: $4f
    rrca                                          ; $6d61: $0f
    scf                                           ; $6d62: $37
    add a                                         ; $6d63: $87
    inc bc                                        ; $6d64: $03
    jp $0802                                      ; $6d65: $c3 $02 $08


    ret nc                                        ; $6d68: $d0

    add hl, de                                    ; $6d69: $19
    and b                                         ; $6d6a: $a0
    jr jr_0d6_6d6d                                ; $6d6b: $18 $00

jr_0d6_6d6d:
    jr nc, jr_0d6_6db7                            ; $6d6d: $30 $48

    ld a, a                                       ; $6d6f: $7f
    nop                                           ; $6d70: $00
    ld a, a                                       ; $6d71: $7f
    sbc a                                         ; $6d72: $9f
    rra                                           ; $6d73: $1f
    or $f0                                        ; $6d74: $f6 $f0
    jp hl                                         ; $6d76: $e9


    ldh [$d6], a                                  ; $6d77: $e0 $d6
    nop                                           ; $6d79: $00
    pop bc                                        ; $6d7a: $c1
    xor c                                         ; $6d7b: $a9
    add d                                         ; $6d7c: $82
    ld b, h                                       ; $6d7d: $44
    jr jr_0d6_6dc3                                ; $6d7e: $18 $43

    inc b                                         ; $6d80: $04
    ld b, b                                       ; $6d81: $40
    nop                                           ; $6d82: $00
    inc de                                        ; $6d83: $13
    ld b, b                                       ; $6d84: $40
    ld [$9260], sp                                ; $6d85: $08 $60 $92
    or b                                          ; $6d88: $b0
    ld c, c                                       ; $6d89: $49
    ret c                                         ; $6d8a: $d8

    nop                                           ; $6d8b: $00
    dec b                                         ; $6d8c: $05
    ld h, b                                       ; $6d8d: $60
    add b                                         ; $6d8e: $80
    adc b                                         ; $6d8f: $88
    ld h, h                                       ; $6d90: $64
    inc c                                         ; $6d91: $0c
    ld d, d                                       ; $6d92: $52
    jr jr_0d6_6d95                                ; $6d93: $18 $00

jr_0d6_6d95:
    ld b, l                                       ; $6d95: $45
    ld de, $4828                                  ; $6d96: $11 $28 $48
    sub c                                         ; $6d99: $91
    ret c                                         ; $6d9a: $d8

    ld [bc], a                                    ; $6d9b: $02
    ld [$b300], sp                                ; $6d9c: $08 $00 $b3
    db $10                                        ; $6d9f: $10
    ld hl, $800c                                  ; $6da0: $21 $0c $80
    sub d                                         ; $6da3: $92
    ld c, b                                       ; $6da4: $48
    add l                                         ; $6da5: $85
    nop                                           ; $6da6: $00
    ld d, b                                       ; $6da7: $50
    add l                                         ; $6da8: $85
    db $10                                        ; $6da9: $10
    ld l, a                                       ; $6daa: $6f
    rrca                                          ; $6dab: $0f
    rlca                                          ; $6dac: $07
    add a                                         ; $6dad: $87
    inc de                                        ; $6dae: $13
    nop                                           ; $6daf: $00
    ld b, e                                       ; $6db0: $43
    dec b                                         ; $6db1: $05
    sub c                                         ; $6db2: $91
    inc b                                         ; $6db3: $04
    ld [$06a0], sp                                ; $6db4: $08 $a0 $06

jr_0d6_6db7:
    ld [c], a                                     ; $6db7: $e2
    nop                                           ; $6db8: $00
    nop                                           ; $6db9: $00
    and d                                         ; $6dba: $a2
    inc b                                         ; $6dbb: $04
    and b                                         ; $6dbc: $a0
    add d                                         ; $6dbd: $82
    and b                                         ; $6dbe: $a0
    adc l                                         ; $6dbf: $8d
    and b                                         ; $6dc0: $a0
    nop                                           ; $6dc1: $00
    add [hl]                                      ; $6dc2: $86

jr_0d6_6dc3:
    ret nc                                        ; $6dc3: $d0

    jp nz, $c0d0                                  ; $6dc4: $c2 $d0 $c0

    ret nc                                        ; $6dc7: $d0

    push bc                                       ; $6dc8: $c5
    jp hl                                         ; $6dc9: $e9


    nop                                           ; $6dca: $00

jr_0d6_6dcb:
    ld [c], a                                     ; $6dcb: $e2
    db $eb                                        ; $6dcc: $eb
    ldh [$30], a                                  ; $6dcd: $e0 $30
    dec b                                         ; $6dcf: $05
    jr nz, jr_0d6_6e1a                            ; $6dd0: $20 $48

    ld h, [hl]                                    ; $6dd2: $66
    nop                                           ; $6dd3: $00
    add b                                         ; $6dd4: $80
    ret nz                                        ; $6dd5: $c0

    jr jr_0d6_6dda                                ; $6dd6: $18 $02

    inc b                                         ; $6dd8: $04
    add [hl]                                      ; $6dd9: $86

jr_0d6_6dda:
    jr z, jr_0d6_6d5e                             ; $6dda: $28 $82

    nop                                           ; $6ddc: $00
    ld c, l                                       ; $6ddd: $4d
    pop de                                        ; $6dde: $d1
    ld b, $02                                     ; $6ddf: $06 $02
    ld h, h                                       ; $6de1: $64
    ld h, c                                       ; $6de2: $61
    ld [bc], a                                    ; $6de3: $02
    ldh a, [rP1]                                  ; $6de4: $f0 $00
    nop                                           ; $6de6: $00
    add b                                         ; $6de7: $80
    ld [hl], b                                    ; $6de8: $70
    nop                                           ; $6de9: $00
    ld a, [bc]                                    ; $6dea: $0a
    ld h, b                                       ; $6deb: $60
    add l                                         ; $6dec: $85
    ld [$3000], sp                                ; $6ded: $08 $00 $30
    ld [bc], a                                    ; $6df0: $02
    adc h                                         ; $6df1: $8c
    sub h                                         ; $6df2: $94
    ld a, [bc]                                    ; $6df3: $0a
    ret nc                                        ; $6df4: $d0

    ld c, $11                                     ; $6df5: $0e $11
    nop                                           ; $6df7: $00
    ld hl, $1323                                  ; $6df8: $21 $23 $13
    dec bc                                        ; $6dfb: $0b
    inc hl                                        ; $6dfc: $23
    dec bc                                        ; $6dfd: $0b
    inc bc                                        ; $6dfe: $03
    rla                                           ; $6dff: $17
    nop                                           ; $6e00: $00
    ld b, a                                       ; $6e01: $47
    rla                                           ; $6e02: $17
    ld b, a                                       ; $6e03: $47
    db $eb                                        ; $6e04: $eb
    ldh [$f3], a                                  ; $6e05: $e0 $f3
    ldh a, [$f1]                                  ; $6e07: $f0 $f1
    nop                                           ; $6e09: $00
    ld a, [c]                                     ; $6e0a: $f2
    db $f4                                        ; $6e0b: $f4
    pop af                                        ; $6e0c: $f1
    ld a, [$faf8]                                 ; $6e0d: $fa $f8 $fa
    ld hl, sp-$05                                 ; $6e10: $f8 $fb
    nop                                           ; $6e12: $00
    ld hl, sp-$04                                 ; $6e13: $f8 $fc
    db $fc                                        ; $6e15: $fc
    ld e, b                                       ; $6e16: $58
    add b                                         ; $6e17: $80
    jr jr_0d6_6e5b                                ; $6e18: $18 $41

jr_0d6_6e1a:
    stop                                          ; $6e1a: $10 $00
    dec hl                                        ; $6e1c: $2b
    nop                                           ; $6e1d: $00
    ld [hl], l                                    ; $6e1e: $75
    nop                                           ; $6e1f: $00
    ld a, [bc]                                    ; $6e20: $0a
    nop                                           ; $6e21: $00
    nop                                           ; $6e22: $00
    rst $38                                       ; $6e23: $ff
    ld b, h                                       ; $6e24: $44
    nop                                           ; $6e25: $00
    ld bc, $7300                                  ; $6e26: $01 $00 $73
    nop                                           ; $6e29: $00
    ld d, h                                       ; $6e2a: $54
    add hl, bc                                    ; $6e2b: $09
    nop                                           ; $6e2c: $00
    ld d, l                                       ; $6e2d: $55
    nop                                           ; $6e2e: $00
    ld b, b                                       ; $6e2f: $40
    xor d                                         ; $6e30: $aa
    db $10                                        ; $6e31: $10
    jr jr_0d6_6dcb                                ; $6e32: $18 $97

    rlca                                          ; $6e34: $07
    cpl                                           ; $6e35: $2f
    rst $08                                       ; $6e36: $cf
    rla                                           ; $6e37: $17
    daa                                           ; $6e38: $27
    nop                                           ; $6e39: $00
    rlca                                          ; $6e3a: $07
    rlca                                          ; $6e3b: $07
    ld e, a                                       ; $6e3c: $5f
    rra                                           ; $6e3d: $1f
    ld e, a                                       ; $6e3e: $5f
    rra                                           ; $6e3f: $1f
    rst $18                                       ; $6e40: $df
    rra                                           ; $6e41: $1f
    nop                                           ; $6e42: $00
    ccf                                           ; $6e43: $3f
    ccf                                           ; $6e44: $3f
    nop                                           ; $6e45: $00
    ld bc, $00f0                                  ; $6e46: $01 $f0 $00
    nop                                           ; $6e49: $00
    db $fd                                        ; $6e4a: $fd
    db $fc                                        ; $6e4b: $fc
    cp $fe                                        ; $6e4c: $fe $fe
    add b                                         ; $6e4e: $80
    add b                                         ; $6e4f: $80
    sbc b                                         ; $6e50: $98
    add a                                         ; $6e51: $87
    nop                                           ; $6e52: $00
    ldh [$e0], a                                  ; $6e53: $e0 $e0
    db $e3                                        ; $6e55: $e3
    add sp, -$20                                  ; $6e56: $e8 $e0
    db $ec                                        ; $6e58: $ec
    ldh [$e3], a                                  ; $6e59: $e0 $e3

jr_0d6_6e5b:
    nop                                           ; $6e5b: $00
    ld [hl], b                                    ; $6e5c: $70
    ld [hl], b                                    ; $6e5d: $70
    adc d                                         ; $6e5e: $8a
    nop                                           ; $6e5f: $00
    add hl, hl                                    ; $6e60: $29
    ld b, b                                       ; $6e61: $40
    add b                                         ; $6e62: $80
    add hl, bc                                    ; $6e63: $09
    nop                                           ; $6e64: $00
    ld b, b                                       ; $6e65: $40
    adc d                                         ; $6e66: $8a
    jr nz, jr_0d6_6eac                            ; $6e67: $20 $43

    db $10                                        ; $6e69: $10
    jr nz, jr_0d6_6eb4                            ; $6e6a: $20 $48

    stop                                          ; $6e6c: $10 $00
    ld a, a                                       ; $6e6e: $7f
    ld a, a                                       ; $6e6f: $7f
    cp a                                          ; $6e70: $bf
    ccf                                           ; $6e71: $3f
    ld c, [hl]                                    ; $6e72: $4e
    ld c, $35                                     ; $6e73: $0e $35
    inc b                                         ; $6e75: $04
    nop                                           ; $6e76: $00
    add hl, bc                                    ; $6e77: $09
    nop                                           ; $6e78: $00
    ld b, e                                       ; $6e79: $43
    add b                                         ; $6e7a: $80
    ld h, $d1                                     ; $6e7b: $26 $d1
    inc c                                         ; $6e7d: $0c
    inc bc                                        ; $6e7e: $03
    ld b, b                                       ; $6e7f: $40
    rst $38                                       ; $6e80: $ff
    ld bc, $7f10                                  ; $6e81: $01 $10 $7f
    ld a, a                                       ; $6e84: $7f
    ccf                                           ; $6e85: $3f
    ccf                                           ; $6e86: $3f
    ccf                                           ; $6e87: $3f
    cp a                                          ; $6e88: $bf
    nop                                           ; $6e89: $00
    ccf                                           ; $6e8a: $3f
    cp a                                          ; $6e8b: $bf
    rra                                           ; $6e8c: $1f
    rra                                           ; $6e8d: $1f
    db $e3                                        ; $6e8e: $e3
    db $e4                                        ; $6e8f: $e4
    and $e8                                       ; $6e90: $e6 $e8
    nop                                           ; $6e92: $00
    ret z                                         ; $6e93: $c8

    ret nc                                        ; $6e94: $d0

    sub b                                         ; $6e95: $90
    add a                                         ; $6e96: $87
    jr nz, jr_0d6_6ea8                            ; $6e97: $20 $0f

    ld b, b                                       ; $6e99: $40
    stop                                          ; $6e9a: $10 $00
    ld b, h                                       ; $6e9c: $44
    ld [$1241], sp                                ; $6e9d: $08 $41 $12
    ld bc, $8a60                                  ; $6ea0: $01 $60 $8a
    inc b                                         ; $6ea3: $04
    nop                                           ; $6ea4: $00
    ld a, [hl+]                                   ; $6ea5: $2a
    ld b, b                                       ; $6ea6: $40
    ld b, b                                       ; $6ea7: $40

jr_0d6_6ea8:
    ld a, [hl+]                                   ; $6ea8: $2a
    inc b                                         ; $6ea9: $04
    nop                                           ; $6eaa: $00
    ld h, b                                       ; $6eab: $60

jr_0d6_6eac:
    ld de, $c900                                  ; $6eac: $11 $00 $c9
    inc h                                         ; $6eaf: $24
    ld d, c                                       ; $6eb0: $51
    inc c                                         ; $6eb1: $0c
    jr nc, jr_0d6_6ec0                            ; $6eb2: $30 $0c

jr_0d6_6eb4:
    jp nz, RST_20                                 ; $6eb4: $c2 $20 $00

    rlca                                          ; $6eb7: $07
    add b                                         ; $6eb8: $80
    ld de, $1420                                  ; $6eb9: $11 $20 $14
    ld a, [hl+]                                   ; $6ebc: $2a
    add c                                         ; $6ebd: $81
    ld [bc], a                                    ; $6ebe: $02
    nop                                           ; $6ebf: $00

jr_0d6_6ec0:
    add c                                         ; $6ec0: $81
    inc h                                         ; $6ec1: $24
    ret nz                                        ; $6ec2: $c0

    ld c, $6f                                     ; $6ec3: $0e $6f
    rrca                                          ; $6ec5: $0f
    rla                                           ; $6ec6: $17
    add a                                         ; $6ec7: $87
    nop                                           ; $6ec8: $00
    dec bc                                        ; $6ec9: $0b
    ld h, e                                       ; $6eca: $63
    add l                                         ; $6ecb: $85
    ld sp, $18c2                                  ; $6ecc: $31 $c2 $18
    ld [bc], a                                    ; $6ecf: $02
    jr jr_0d6_6ed4                                ; $6ed0: $18 $02

    ld b, d                                       ; $6ed2: $42
    sbc b                                         ; $6ed3: $98

jr_0d6_6ed4:
    ld b, d                                       ; $6ed4: $42
    sbc b                                         ; $6ed5: $98
    and b                                         ; $6ed6: $a0
    adc c                                         ; $6ed7: $89
    ld [bc], a                                    ; $6ed8: $02
    nop                                           ; $6ed9: $00
    adc b                                         ; $6eda: $88
    nop                                           ; $6edb: $00
    ret nc                                        ; $6edc: $d0

    ret nz                                        ; $6edd: $c0

    pop de                                        ; $6ede: $d1
    jp nz, $c1d2                                  ; $6edf: $c2 $d2 $c1

    add sp, -$20                                  ; $6ee2: $e8 $e0
    nop                                           ; $6ee4: $00
    add sp, -$20                                  ; $6ee5: $e8 $e0
    add c                                         ; $6ee7: $81
    inc e                                         ; $6ee8: $1c
    nop                                           ; $6ee9: $00
    xor $00                                       ; $6eea: $ee $00
    nop                                           ; $6eec: $00
    nop                                           ; $6eed: $00
    nop                                           ; $6eee: $00
    ld sp, hl                                     ; $6eef: $f9
    db $fc                                        ; $6ef0: $fc
    ld [bc], a                                    ; $6ef1: $02
    ld [bc], a                                    ; $6ef2: $02
    dec c                                         ; $6ef3: $0d
    ld bc, $0002                                  ; $6ef4: $01 $02 $00
    nop                                           ; $6ef7: $00
    add hl, de                                    ; $6ef8: $19
    ldh a, [rTAC]                                 ; $6ef9: $f0 $07
    pop bc                                        ; $6efb: $c1
    ld l, $41                                     ; $6efc: $2e $41
    ld [bc], a                                    ; $6efe: $02
    nop                                           ; $6eff: $00
    add c                                         ; $6f00: $81
    ld b, $23                                     ; $6f01: $06 $23
    ld c, h                                       ; $6f03: $4c
    ld bc, $120e                                  ; $6f04: $01 $0e $12
    add h                                         ; $6f07: $84
    nop                                           ; $6f08: $00
    add d                                         ; $6f09: $82
    ld d, h                                       ; $6f0a: $54
    ld b, l                                       ; $6f0b: $45
    ld hl, $a105                                  ; $6f0c: $21 $05 $a1
    dec b                                         ; $6f0f: $05
    and c                                         ; $6f10: $a1
    nop                                           ; $6f11: $00
    dec bc                                        ; $6f12: $0b
    ld b, e                                       ; $6f13: $43
    dec bc                                        ; $6f14: $0b
    inc hl                                        ; $6f15: $23
    dec bc                                        ; $6f16: $0b
    add e                                         ; $6f17: $83
    daa                                           ; $6f18: $27
    add a                                         ; $6f19: $87
    ld [bc], a                                    ; $6f1a: $02
    daa                                           ; $6f1b: $27
    rlca                                          ; $6f1c: $07
    add sp, -$20                                  ; $6f1d: $e8 $e0
    db $f4                                        ; $6f1f: $f4
    ldh a, [rSC]                                  ; $6f20: $f0 $02
    nop                                           ; $6f22: $00
    pop af                                        ; $6f23: $f1
    nop                                           ; $6f24: $00
    ld a, [$faf8]                                 ; $6f25: $fa $f8 $fa
    ld hl, sp-$05                                 ; $6f28: $f8 $fb
    ld hl, sp-$04                                 ; $6f2a: $f8 $fc
    db $fc                                        ; $6f2c: $fc
    nop                                           ; $6f2d: $00
    jr jr_0d6_6f94                                ; $6f2e: $18 $64

    inc [hl]                                      ; $6f30: $34
    jp z, $bc42                                   ; $6f31: $ca $42 $bc

    nop                                           ; $6f34: $00
    cp $10                                        ; $6f35: $fe $10
    nop                                           ; $6f37: $00
    rst $38                                       ; $6f38: $ff
    nop                                           ; $6f39: $00
    inc bc                                        ; $6f3a: $03
    ld [$8a00], sp                                ; $6f3b: $08 $00 $8a
    ld b, b                                       ; $6f3e: $40
    ld b, d                                       ; $6f3f: $42
    ld bc, $40a8                                  ; $6f40: $01 $a8 $40
    ld a, [hl+]                                   ; $6f43: $2a
    jr nz, @+$44                                  ; $6f44: $20 $42

    jr nz, @+$44                                  ; $6f46: $20 $42

    db $10                                        ; $6f48: $10
    jr jr_0d6_6f4b                                ; $6f49: $18 $00

jr_0d6_6f4b:
    and a                                         ; $6f4b: $a7
    rlca                                          ; $6f4c: $07
    xor a                                         ; $6f4d: $af
    rrca                                          ; $6f4e: $0f
    rst $08                                       ; $6f4f: $cf
    cpl                                           ; $6f50: $2f
    adc a                                         ; $6f51: $8f
    ld c, a                                       ; $6f52: $4f
    nop                                           ; $6f53: $00
    rra                                           ; $6f54: $1f
    sbc a                                         ; $6f55: $9f
    ld e, a                                       ; $6f56: $5f
    rra                                           ; $6f57: $1f
    rst $18                                       ; $6f58: $df
    rra                                           ; $6f59: $1f
    ccf                                           ; $6f5a: $3f
    ccf                                           ; $6f5b: $3f
    nop                                           ; $6f5c: $00
    ld bc, $00ea                                  ; $6f5d: $01 $ea $00
    nop                                           ; $6f60: $00
    rst $38                                       ; $6f61: $ff
    rst $38                                       ; $6f62: $ff
    ld hl, sp-$08                                 ; $6f63: $f8 $f8
    pop af                                        ; $6f65: $f1
    ldh a, [$f5]                                  ; $6f66: $f0 $f5
    ld a, [c]                                     ; $6f68: $f2
    nop                                           ; $6f69: $00
    and $e0                                       ; $6f6a: $e6 $e0
    ld [c], a                                     ; $6f6c: $e2
    ldh [$f4], a                                  ; $6f6d: $e0 $f4
    pop af                                        ; $6f6f: $f1
    db $f4                                        ; $6f70: $f4
    pop af                                        ; $6f71: $f1
    nop                                           ; $6f72: $00
    ld c, [hl]                                    ; $6f73: $4e
    ld c, [hl]                                    ; $6f74: $4e
    nop                                           ; $6f75: $00
    add b                                         ; $6f76: $80
    ld d, b                                       ; $6f77: $50
    add b                                         ; $6f78: $80
    ld [$0043], sp                                ; $6f79: $08 $43 $00
    nop                                           ; $6f7c: $00
    or h                                          ; $6f7d: $b4
    nop                                           ; $6f7e: $00
    add e                                         ; $6f7f: $83
    nop                                           ; $6f80: $00
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00
    stop                                          ; $6f83: $10 $00
    ld a, [hl]                                    ; $6f85: $7e
    ld a, [hl]                                    ; $6f86: $7e
    jr jr_0d6_6fa1                                ; $6f87: $18 $18

    ld bc, $0062                                  ; $6f89: $01 $62 $00
    adc l                                         ; $6f8c: $8d
    nop                                           ; $6f8d: $00
    ld bc, $0004                                  ; $6f8e: $01 $04 $00
    add d                                         ; $6f91: $82
    nop                                           ; $6f92: $00
    add hl, hl                                    ; $6f93: $29

jr_0d6_6f94:
    jr nz, @+$4a                                  ; $6f94: $20 $48

    nop                                           ; $6f96: $00
    ld a, a                                       ; $6f97: $7f
    ld a, a                                       ; $6f98: $7f
    rra                                           ; $6f99: $1f
    rra                                           ; $6f9a: $1f
    rrca                                          ; $6f9b: $0f
    ld l, a                                       ; $6f9c: $6f
    ld b, a                                       ; $6f9d: $47
    rlca                                          ; $6f9e: $07
    nop                                           ; $6f9f: $00
    and a                                         ; $6fa0: $a7

jr_0d6_6fa1:
    ld b, a                                       ; $6fa1: $47
    inc de                                        ; $6fa2: $13
    xor e                                         ; $6fa3: $ab
    inc hl                                        ; $6fa4: $23
    ld d, e                                       ; $6fa5: $53
    ld de, $4081                                  ; $6fa6: $11 $81 $40
    ldh [rSB], a                                  ; $6fa9: $e0 $01
    nop                                           ; $6fab: $00
    pop bc                                        ; $6fac: $c1
    ret nz                                        ; $6fad: $c0

    add d                                         ; $6fae: $82
    adc l                                         ; $6faf: $8d
    ld b, b                                       ; $6fb0: $40
    dec b                                         ; $6fb1: $05
    nop                                           ; $6fb2: $00
    ld b, h                                       ; $6fb3: $44
    add hl, bc                                    ; $6fb4: $09
    add hl, bc                                    ; $6fb5: $09
    ld [hl-], a                                   ; $6fb6: $32
    nop                                           ; $6fb7: $00
    ld [bc], a                                    ; $6fb8: $02
    inc b                                         ; $6fb9: $04
    ld [hl], b                                    ; $6fba: $70
    nop                                           ; $6fbb: $00
    ld [bc], a                                    ; $6fbc: $02
    inc [hl]                                      ; $6fbd: $34
    ld [bc], a                                    ; $6fbe: $02
    db $f4                                        ; $6fbf: $f4
    inc b                                         ; $6fc0: $04
    or b                                          ; $6fc1: $b0
    ld [$0040], sp                                ; $6fc2: $08 $40 $00
    add h                                         ; $6fc5: $84
    ld d, c                                       ; $6fc6: $51
    dec b                                         ; $6fc7: $05
    nop                                           ; $6fc8: $00
    rla                                           ; $6fc9: $17
    nop                                           ; $6fca: $00
    ld b, h                                       ; $6fcb: $44
    add d                                         ; $6fcc: $82
    nop                                           ; $6fcd: $00
    ld [$00f5], sp                                ; $6fce: $08 $f5 $00
    ldh [rNR10], a                                ; $6fd1: $e0 $10
    xor $08                                       ; $6fd3: $ee $08
    stop                                          ; $6fd5: $10 $00
    jr nz, @+$4a                                  ; $6fd7: $20 $48

    ldh [rNR14], a                                ; $6fd9: $e0 $14
    ret nz                                        ; $6fdb: $c0

    db $10                                        ; $6fdc: $10
    ld bc, $0059                                  ; $6fdd: $01 $59 $00
    inc bc                                        ; $6fe0: $03
    inc hl                                        ; $6fe1: $23
    inc bc                                        ; $6fe2: $03
    sub e                                         ; $6fe3: $93
    dec b                                         ; $6fe4: $05
    ld bc, $200a                                  ; $6fe5: $01 $0a $20
    ld [hl+], a                                   ; $6fe8: $22
    ld a, [bc]                                    ; $6fe9: $0a
    and b                                         ; $6fea: $a0
    ld [bc], a                                    ; $6feb: $02
    ld [$80a8], sp                                ; $6fec: $08 $a8 $80
    xor d                                         ; $6fef: $aa
    ld [bc], a                                    ; $6ff0: $02
    nop                                           ; $6ff1: $00
    jp nz, $c000                                  ; $6ff2: $c2 $00 $c0

    ret nc                                        ; $6ff5: $d0

    ret nz                                        ; $6ff6: $c0

    ret nz                                        ; $6ff7: $c0

    call nz, $e0ec                                ; $6ff8: $c4 $ec $e0
    jp nz, $cc00                                  ; $6ffb: $c2 $00 $cc

    inc b                                         ; $6ffe: $04
    nop                                           ; $6fff: $00
    nop                                           ; $7000: $00
    ld [de], a                                    ; $7001: $12
    nop                                           ; $7002: $00
    ld e, $01                                     ; $7003: $1e $01
    ld bc, $000c                                  ; $7005: $01 $0c $00
    ld l, h                                       ; $7008: $6c
    nop                                           ; $7009: $00
    ld d, a                                       ; $700a: $57
    nop                                           ; $700b: $00
    ld c, d                                       ; $700c: $4a
    ld [bc], a                                    ; $700d: $02
    nop                                           ; $700e: $00
    nop                                           ; $700f: $00
    db $10                                        ; $7010: $10
    ld b, b                                       ; $7011: $40
    and b                                         ; $7012: $a0
    add b                                         ; $7013: $80
    ld b, b                                       ; $7014: $40
    ret nz                                        ; $7015: $c0

    ld [hl+], a                                   ; $7016: $22
    nop                                           ; $7017: $00
    nop                                           ; $7018: $00
    ld b, [hl]                                    ; $7019: $46
    nop                                           ; $701a: $00
    adc [hl]                                      ; $701b: $8e
    nop                                           ; $701c: $00
    adc d                                         ; $701d: $8a
    nop                                           ; $701e: $00
    add d                                         ; $701f: $82
    ld bc, $a100                                  ; $7020: $01 $00 $a1
    add hl, bc                                    ; $7023: $09

jr_0d6_7024:
    ld b, l                                       ; $7024: $45
    dec d                                         ; $7025: $15
    ld hl, $0105                                  ; $7026: $21 $05 $01
    dec c                                         ; $7029: $0d
    nop                                           ; $702a: $00
    add c                                         ; $702b: $81
    add hl, bc                                    ; $702c: $09
    ld b, c                                       ; $702d: $41
    add hl, de                                    ; $702e: $19
    ld bc, $2511                                  ; $702f: $01 $11 $25
    rlc b                                         ; $7032: $cb $00
    ret nz                                        ; $7034: $c0

    set 0, b                                      ; $7035: $cb $c0
    ret                                           ; $7037: $c9


    jp nz, $e0ed                                  ; $7038: $c2 $ed $e0

    rst $20                                       ; $703b: $e7
    ld bc, $f0e0                                  ; $703c: $01 $e0 $f0
    ldh a, [$fb]                                  ; $703f: $f0 $fb
    ld hl, sp-$04                                 ; $7041: $f8 $fc
    db $fc                                        ; $7043: $fc
    inc [hl]                                      ; $7044: $34
    nop                                           ; $7045: $00
    ld b, b                                       ; $7046: $40
    ld b, d                                       ; $7047: $42
    ld [bc], a                                    ; $7048: $02
    nop                                           ; $7049: $00
    ld h, [hl]                                    ; $704a: $66
    add b                                         ; $704b: $80
    inc a                                         ; $704c: $3c
    nop                                           ; $704d: $00
    nop                                           ; $704e: $00
    rst $38                                       ; $704f: $ff
    ret nz                                        ; $7050: $c0

    pop bc                                        ; $7051: $c1
    nop                                           ; $7052: $00
    or [hl]                                       ; $7053: $b6
    nop                                           ; $7054: $00
    add l                                         ; $7055: $85
    ld bc, $01cc                                  ; $7056: $01 $cc $01
    ld hl, sp+$02                                 ; $7059: $f8 $02
    ld b, b                                       ; $705b: $40
    ld [hl], b                                    ; $705c: $70
    db $10                                        ; $705d: $10
    jr jr_0d6_7091                                ; $705e: $18 $31

    ld b, l                                       ; $7060: $45
    ld h, l                                       ; $7061: $65
    adc c                                         ; $7062: $89
    ret                                           ; $7063: $c9


    ld bc, $1b00                                  ; $7064: $01 $00 $1b
    inc hl                                        ; $7067: $23
    inc sp                                        ; $7068: $33
    ld b, e                                       ; $7069: $43
    rlca                                          ; $706a: $07
    rlca                                          ; $706b: $07
    rst $18                                       ; $706c: $df
    rra                                           ; $706d: $1f
    nop                                           ; $706e: $00
    ccf                                           ; $706f: $3f
    ccf                                           ; $7070: $3f
    nop                                           ; $7071: $00
    ld bc, $00e3                                  ; $7072: $01 $e3 $00
    ld b, b                                       ; $7075: $40
    rst $38                                       ; $7076: $ff
    ld bc, $fb30                                  ; $7077: $01 $30 $fb
    ei                                            ; $707a: $fb
    db $f4                                        ; $707b: $f4
    ldh a, [$f2]                                  ; $707c: $f0 $f2
    ldh a, [rP1]                                  ; $707e: $f0 $00
    cp $fe                                        ; $7080: $fe $fe
    db $fd                                        ; $7082: $fd
    db $fc                                        ; $7083: $fc
    ld a, [c]                                     ; $7084: $f2
    ldh a, [$cc]                                  ; $7085: $f0 $cc
    ret nz                                        ; $7087: $c0

    nop                                           ; $7088: $00
    and c                                         ; $7089: $a1
    add b                                         ; $708a: $80
    jr nz, jr_0d6_7095                            ; $708b: $20 $08

    ld b, h                                       ; $708d: $44
    db $10                                        ; $708e: $10
    ld b, a                                       ; $708f: $47
    nop                                           ; $7090: $00

jr_0d6_7091:
    nop                                           ; $7091: $00
    ld a, a                                       ; $7092: $7f
    ld a, a                                       ; $7093: $7f
    cp a                                          ; $7094: $bf

jr_0d6_7095:
    ccf                                           ; $7095: $3f
    rrca                                          ; $7096: $0f
    rrca                                          ; $7097: $0f
    rst $20                                       ; $7098: $e7
    rlca                                          ; $7099: $07
    nop                                           ; $709a: $00
    dec de                                        ; $709b: $1b
    add e                                         ; $709c: $83
    ld [$0360], sp                                ; $709d: $08 $60 $03
    ldh a, [rP1]                                  ; $70a0: $f0 $00
    jr c, jr_0d6_7024                             ; $70a2: $38 $80

    jr nc, jr_0d6_70de                            ; $70a4: $30 $38

    rst $38                                       ; $70a6: $ff
    rst $38                                       ; $70a7: $ff
    ld a, a                                       ; $70a8: $7f
    ld a, a                                       ; $70a9: $7f
    sbc a                                         ; $70aa: $9f
    rra                                           ; $70ab: $1f
    rst $28                                       ; $70ac: $ef
    nop                                           ; $70ad: $00
    ldh [$e8], a                                  ; $70ae: $e0 $e8
    db $e4                                        ; $70b0: $e4
    ret nz                                        ; $70b1: $c0

    jp z, $84a2                                   ; $70b2: $ca $a2 $84

    ld b, b                                       ; $70b5: $40
    nop                                           ; $70b6: $00
    db $10                                        ; $70b7: $10
    ld b, b                                       ; $70b8: $40
    ld d, $40                                     ; $70b9: $16 $40
    inc e                                         ; $70bb: $1c
    ld b, e                                       ; $70bc: $43
    jr jr_0d6_710f                                ; $70bd: $18 $50

    nop                                           ; $70bf: $00
    nop                                           ; $70c0: $00
    jp nz, $801c                                  ; $70c1: $c2 $1c $80

    ld bc, $0884                                  ; $70c4: $01 $84 $08
    adc b                                         ; $70c7: $88
    nop                                           ; $70c8: $00
    nop                                           ; $70c9: $00
    adc c                                         ; $70ca: $89
    jr nz, jr_0d6_70d0                            ; $70cb: $20 $03

    jr nz, jr_0d6_70d0                            ; $70cd: $20 $01

    inc l                                         ; $70cf: $2c

jr_0d6_70d0:
    ret nz                                        ; $70d0: $c0

    nop                                           ; $70d1: $00
    ld [$0032], sp                                ; $70d2: $08 $32 $00
    ld c, h                                       ; $70d5: $4c
    add c                                         ; $70d6: $81
    nop                                           ; $70d7: $00
    add hl, sp                                    ; $70d8: $39
    nop                                           ; $70d9: $00
    nop                                           ; $70da: $00
    ld b, $80                                     ; $70db: $06 $80
    inc bc                                        ; $70dd: $03

jr_0d6_70de:
    inc d                                         ; $70de: $14
    nop                                           ; $70df: $00
    pop de                                        ; $70e0: $d1
    jr nz, @+$71                                  ; $70e1: $20 $6f

    nop                                           ; $70e3: $00
    rrca                                          ; $70e4: $0f
    rla                                           ; $70e5: $17
    add a                                         ; $70e6: $87
    dec bc                                        ; $70e7: $0b
    db $e3                                        ; $70e8: $e3
    dec b                                         ; $70e9: $05
    pop af                                        ; $70ea: $f1
    ld [bc], a                                    ; $70eb: $02
    nop                                           ; $70ec: $00
    ld hl, sp+$02                                 ; $70ed: $f8 $02
    jr c, jr_0d6_7133                             ; $70ef: $38 $42

    sbc b                                         ; $70f1: $98
    ld [hl+], a                                   ; $70f2: $22
    ld b, b                                       ; $70f3: $40
    and d                                         ; $70f4: $a2
    nop                                           ; $70f5: $00
    add h                                         ; $70f6: $84
    and d                                         ; $70f7: $a2
    add h                                         ; $70f8: $84
    and c                                         ; $70f9: $a1
    add [hl]                                      ; $70fa: $86
    ret nc                                        ; $70fb: $d0

    jp Jump_000_00d0                              ; $70fc: $c3 $d0 $00


    call nz, $c4d1                                ; $70ff: $c4 $d1 $c4
    add sp, -$1e                                  ; $7102: $e8 $e2
    add sp, -$1e                                  ; $7104: $e8 $e2
    ld b, b                                       ; $7106: $40
    nop                                           ; $7107: $00
    ld c, $c0                                     ; $7108: $0e $c0
    rlca                                          ; $710a: $07
    sub b                                         ; $710b: $90
    ld b, e                                       ; $710c: $43
    db $10                                        ; $710d: $10
    add e                                         ; $710e: $83

jr_0d6_710f:
    jr c, jr_0d6_7111                             ; $710f: $38 $00

jr_0d6_7111:
    ld bc, $9228                                  ; $7111: $01 $28 $92
    xor c                                         ; $7114: $a9
    ld [de], a                                    ; $7115: $12
    ld [$8032], sp                                ; $7116: $08 $32 $80
    nop                                           ; $7119: $00
    ld b, b                                       ; $711a: $40
    inc bc                                        ; $711b: $03
    db $10                                        ; $711c: $10
    ret nz                                        ; $711d: $c0

    ld sp, $f006                                  ; $711e: $31 $06 $f0
    inc bc                                        ; $7121: $03
    nop                                           ; $7122: $00
    add h                                         ; $7123: $84
    ld [$4453], sp                                ; $7124: $08 $53 $44
    jr z, jr_0d6_718b                             ; $7127: $28 $62

    inc c                                         ; $7129: $0c
    sub c                                         ; $712a: $91
    nop                                           ; $712b: $00
    ld hl, $5189                                  ; $712c: $21 $89 $51
    dec b                                         ; $712f: $05
    reti                                          ; $7130: $d9


    ld [bc], a                                    ; $7131: $02
    nop                                           ; $7132: $00

jr_0d6_7133:
    ld c, $00                                     ; $7133: $0e $00
    ld h, b                                       ; $7135: $60
    inc c                                         ; $7136: $0c
    ld h, d                                       ; $7137: $62
    ld bc, $0945                                  ; $7138: $01 $45 $09
    pop bc                                        ; $713b: $c1
    add sp, $00                                   ; $713c: $e8 $00
    ld [c], a                                     ; $713e: $e2
    ldh a, [$f2]                                  ; $713f: $f0 $f2
    db $f4                                        ; $7141: $f4
    ldh a, [$f4]                                  ; $7142: $f0 $f4
    ldh a, [$fa]                                  ; $7144: $f0 $fa
    nop                                           ; $7146: $00
    ld hl, sp-$06                                 ; $7147: $f8 $fa
    ld hl, sp-$05                                 ; $7149: $f8 $fb
    ld hl, sp-$04                                 ; $714b: $f8 $fc
    db $fc                                        ; $714d: $fc
    add hl, bc                                    ; $714e: $09
    inc b                                         ; $714f: $04
    ld [hl], d                                    ; $7150: $72
    ld bc, $017a                                  ; $7151: $01 $7a $01
    ld a, [c]                                     ; $7154: $f2
    ld [bc], a                                    ; $7155: $02
    nop                                           ; $7156: $00
    ld [hl], d                                    ; $7157: $72
    nop                                           ; $7158: $00
    nop                                           ; $7159: $00
    nop                                           ; $715a: $00
    rst $38                                       ; $715b: $ff
    nop                                           ; $715c: $00
    nop                                           ; $715d: $00
    nop                                           ; $715e: $00
    ld h, d                                       ; $715f: $62
    sub h                                         ; $7160: $94
    ld h, b                                       ; $7161: $60
    inc c                                         ; $7162: $0c
    sub [hl]                                      ; $7163: $96
    jr nz, jr_0d6_717c                            ; $7164: $20 $16

    jr nz, jr_0d6_716c                            ; $7166: $20 $04

jr_0d6_7168:
    nop                                           ; $7168: $00
    db $10                                        ; $7169: $10
    jr jr_0d6_717f                                ; $716a: $18 $13

jr_0d6_716c:
    jp Jump_000_2f20                              ; $716c: $c3 $20 $2f


    adc a                                         ; $716f: $8f
    ld [bc], a                                    ; $7170: $02
    ld [$1f5f], sp                                ; $7171: $08 $5f $1f
    ld e, a                                       ; $7174: $5f
    rra                                           ; $7175: $1f
    rst $18                                       ; $7176: $df
    nop                                           ; $7177: $00
    rra                                           ; $7178: $1f
    ccf                                           ; $7179: $3f
    ccf                                           ; $717a: $3f
    nop                                           ; $717b: $00

jr_0d6_717c:
    ld bc, $00da                                  ; $717c: $01 $da $00

jr_0d6_717f:
    ld b, b                                       ; $717f: $40
    rst $38                                       ; $7180: $ff
    ld bc, $fc40                                  ; $7181: $01 $40 $fc
    db $fc                                        ; $7184: $fc
    ld [c], a                                     ; $7185: $e2
    ldh [$fe], a                                  ; $7186: $e0 $fe
    cp $00                                        ; $7188: $fe $00
    db $fc                                        ; $718a: $fc

jr_0d6_718b:
    db $fc                                        ; $718b: $fc
    pop af                                        ; $718c: $f1
    ldh a, [$e0]                                  ; $718d: $f0 $e0
    ldh [$c4], a                                  ; $718f: $e0 $c4
    pop de                                        ; $7191: $d1
    nop                                           ; $7192: $00
    inc h                                         ; $7193: $24
    ld de, $11a4                                  ; $7194: $11 $a4 $11
    inc h                                         ; $7197: $24
    ld de, $7f7f                                  ; $7198: $11 $7f $7f
    nop                                           ; $719b: $00
    cp a                                          ; $719c: $bf
    ccf                                           ; $719d: $3f
    ld c, a                                       ; $719e: $4f
    rrca                                          ; $719f: $0f
    rlca                                          ; $71a0: $07
    rlca                                          ; $71a1: $07
    ld b, e                                       ; $71a2: $43
    inc de                                        ; $71a3: $13
    ld [bc], a                                    ; $71a4: $02
    ld c, b                                       ; $71a5: $48
    db $10                                        ; $71a6: $10
    ld c, e                                       ; $71a7: $4b
    db $10                                        ; $71a8: $10
    ld c, b                                       ; $71a9: $48
    db $10                                        ; $71aa: $10
    jr nc, @+$4a                                  ; $71ab: $30 $48

    ld a, a                                       ; $71ad: $7f
    nop                                           ; $71ae: $00
    ld a, a                                       ; $71af: $7f
    sbc a                                         ; $71b0: $9f
    rra                                           ; $71b1: $1f
    ld [$c9e1], a                                 ; $71b2: $ea $e1 $c9
    jp nc, $00b0                                  ; $71b5: $d2 $b0 $00

    adc c                                         ; $71b8: $89
    add h                                         ; $71b9: $84
    add d                                         ; $71ba: $82
    ld c, b                                       ; $71bb: $48
    inc b                                         ; $71bc: $04
    ld d, b                                       ; $71bd: $50
    add hl, bc                                    ; $71be: $09
    ld b, c                                       ; $71bf: $41
    nop                                           ; $71c0: $00
    ld [bc], a                                    ; $71c1: $02
    ld b, c                                       ; $71c2: $41
    ld a, [de]                                    ; $71c3: $1a
    jr nc, jr_0d6_71c6                            ; $71c4: $30 $00

jr_0d6_71c6:
    ld sp, $a004                                  ; $71c6: $31 $04 $a0
    nop                                           ; $71c9: $00
    dec d                                         ; $71ca: $15
    add b                                         ; $71cb: $80
    ld b, c                                       ; $71cc: $41
    jp $c124                                      ; $71cd: $c3 $24 $c1


    inc h                                         ; $71d0: $24
    and e                                         ; $71d1: $a3
    nop                                           ; $71d2: $00
    inc d                                         ; $71d3: $14
    jr nz, jr_0d6_7168                            ; $71d4: $20 $92

    jr @+$05                                      ; $71d6: $18 $03

    jr jr_0d6_721d                                ; $71d8: $18 $43

    ld [$5200], sp                                ; $71da: $08 $00 $52
    ld [$8800], sp                                ; $71dd: $08 $00 $88
    ld b, d                                       ; $71e0: $42
    nop                                           ; $71e1: $00
    ld b, [hl]                                    ; $71e2: $46
    add b                                         ; $71e3: $80
    nop                                           ; $71e4: $00
    ld c, h                                       ; $71e5: $4c
    nop                                           ; $71e6: $00
    sub c                                         ; $71e7: $91
    ld l, a                                       ; $71e8: $6f
    rrca                                          ; $71e9: $0f
    rla                                           ; $71ea: $17
    rlca                                          ; $71eb: $07
    adc e                                         ; $71ec: $8b
    nop                                           ; $71ed: $00
    inc hl                                        ; $71ee: $23
    add c                                         ; $71ef: $81
    ld de, $408a                                  ; $71f0: $11 $8a $40
    sub b                                         ; $71f3: $90
    ld [$02a4], sp                                ; $71f4: $08 $a4 $02
    ld [de], a                                    ; $71f7: $12
    add sp, $04                                   ; $71f8: $e8 $04
    and c                                         ; $71fa: $a1
    adc d                                         ; $71fb: $8a
    and b                                         ; $71fc: $a0
    ld [bc], a                                    ; $71fd: $02
    nop                                           ; $71fe: $00
    ret nc                                        ; $71ff: $d0

    nop                                           ; $7200: $00
    jp $c2d1                                      ; $7201: $c3 $d1 $c2


    ret nc                                        ; $7204: $d0

    pop bc                                        ; $7205: $c1
    add sp, -$1f                                  ; $7206: $e8 $e1
    add sp, $00                                   ; $7208: $e8 $00
    ldh [rNR42], a                                ; $720a: $e0 $21
    stop                                          ; $720c: $10 $00
    db $10                                        ; $720e: $10
    inc bc                                        ; $720f: $03
    inc d                                         ; $7210: $14
    nop                                           ; $7211: $00
    nop                                           ; $7212: $00
    rla                                           ; $7213: $17
    jr nz, jr_0d6_7226                            ; $7214: $20 $10

    ret nz                                        ; $7216: $c0

    inc [hl]                                      ; $7217: $34
    nop                                           ; $7218: $00
    rst $20                                       ; $7219: $e7
    nop                                           ; $721a: $00
    nop                                           ; $721b: $00
    inc b                                         ; $721c: $04

jr_0d6_721d:
    rrca                                          ; $721d: $0f
    nop                                           ; $721e: $00
    inc bc                                        ; $721f: $03
    inc d                                         ; $7220: $14
    add b                                         ; $7221: $80
    ld e, b                                       ; $7222: $58
    nop                                           ; $7223: $00
    nop                                           ; $7224: $00
    ret c                                         ; $7225: $d8

jr_0d6_7226:
    nop                                           ; $7226: $00
    inc e                                         ; $7227: $1c
    inc b                                         ; $7228: $04
    ld c, b                                       ; $7229: $48
    add d                                         ; $722a: $82
    ld c, h                                       ; $722b: $4c
    sub c                                         ; $722c: $91
    nop                                           ; $722d: $00
    ld b, [hl]                                    ; $722e: $46
    pop af                                        ; $722f: $f1
    add hl, bc                                    ; $7230: $09
    ld bc, $05a1                                  ; $7231: $01 $a1 $05
    ld bc, $400b                                  ; $7234: $01 $0b $40
    inc hl                                        ; $7237: $23
    ld [bc], a                                    ; $7238: $02
    ld [$2747], sp                                ; $7239: $08 $47 $27
    add a                                         ; $723c: $87
    ld b, a                                       ; $723d: $47
    add sp, -$1d                                  ; $723e: $e8 $e3
    jr nz, @-$0a                                  ; $7240: $20 $f4

    pop af                                        ; $7242: $f1
    ld [bc], a                                    ; $7243: $02
    ld [$f8fa], sp                                ; $7244: $08 $fa $f8
    ld a, [$fbf8]                                 ; $7247: $fa $f8 $fb
    nop                                           ; $724a: $00
    ld hl, sp-$04                                 ; $724b: $f8 $fc
    db $fc                                        ; $724d: $fc
    db $10                                        ; $724e: $10
    rlca                                          ; $724f: $07
    db $10                                        ; $7250: $10
    call nz, Call_0d6_4010                        ; $7251: $c4 $10 $40
    rst $00                                       ; $7254: $c7
    inc b                                         ; $7255: $04
    nop                                           ; $7256: $00
    call nz, RST_00                               ; $7257: $c4 $00 $00
    rst $38                                       ; $725a: $ff
    nop                                           ; $725b: $00
    nop                                           ; $725c: $00
    ld bc, $1800                                  ; $725d: $01 $00 $18
    ld bc, $4090                                  ; $7260: $01 $90 $40
    sub b                                         ; $7263: $90
    ld b, a                                       ; $7264: $47
    ld d, $00                                     ; $7265: $16 $00
    ld b, b                                       ; $7267: $40
    rlca                                          ; $7268: $07
    db $10                                        ; $7269: $10
    jr jr_0d6_7283                                ; $726a: $18 $17

    add a                                         ; $726c: $87
    cpl                                           ; $726d: $2f
    rrca                                          ; $726e: $0f
    cpl                                           ; $726f: $2f
    adc a                                         ; $7270: $8f
    nop                                           ; $7271: $00
    cpl                                           ; $7272: $2f
    adc a                                         ; $7273: $8f
    ld e, a                                       ; $7274: $5f
    rra                                           ; $7275: $1f
    ld e, a                                       ; $7276: $5f
    rra                                           ; $7277: $1f
    rst $18                                       ; $7278: $df
    rra                                           ; $7279: $1f
    nop                                           ; $727a: $00
    ccf                                           ; $727b: $3f
    ccf                                           ; $727c: $3f
    nop                                           ; $727d: $00
    ld bc, $00eb                                  ; $727e: $01 $eb $00
    ld b, b                                       ; $7281: $40
    rst $38                                       ; $7282: $ff

jr_0d6_7283:
    ld bc, $e700                                  ; $7283: $01 $00 $e7
    rst $20                                       ; $7286: $e7
    set 2, e                                      ; $7287: $cb $d3
    db $db                                        ; $7289: $db
    rst $20                                       ; $728a: $e7
    nop                                           ; $728b: $00
    db $d3                                        ; $728c: $d3
    set 4, d                                      ; $728d: $cb $e2
    ld [c], a                                     ; $728f: $e2
    db $fc                                        ; $7290: $fc
    db $fd                                        ; $7291: $fd
    cp $fe                                        ; $7292: $fe $fe
    nop                                           ; $7294: $00
    db $fd                                        ; $7295: $fd
    db $fc                                        ; $7296: $fc
    ld a, [c]                                     ; $7297: $f2
    ldh a, [$ec]                                  ; $7298: $f0 $ec
    pop hl                                        ; $729a: $e1
    ret nc                                        ; $729b: $d0

    jp Jump_000_2000                              ; $729c: $c3 $00 $20


    ld c, $41                                     ; $729f: $0e $41
    inc e                                         ; $72a1: $1c
    add b                                         ; $72a2: $80
    ld a, [hl-]                                   ; $72a3: $3a
    ld a, a                                       ; $72a4: $7f
    ld a, a                                       ; $72a5: $7f
    nop                                           ; $72a6: $00
    cp a                                          ; $72a7: $bf
    ccf                                           ; $72a8: $3f
    ld c, a                                       ; $72a9: $4f
    rrca                                          ; $72aa: $0f
    scf                                           ; $72ab: $37
    add a                                         ; $72ac: $87
    dec bc                                        ; $72ad: $0b
    jp $0403                                      ; $72ae: $c3 $03 $04


    nop                                           ; $72b1: $00
    db $e3                                        ; $72b2: $e3
    db $10                                        ; $72b3: $10
    ld d, b                                       ; $72b4: $50
    jr z, jr_0d6_72e7                             ; $72b5: $28 $30

    ld [$2804], sp                                ; $72b7: $08 $04 $28
    nop                                           ; $72ba: $00
    ld a, a                                       ; $72bb: $7f
    ld a, a                                       ; $72bc: $7f
    sbc a                                         ; $72bd: $9f
    rra                                           ; $72be: $1f
    pop af                                        ; $72bf: $f1
    ld a, [c]                                     ; $72c0: $f2
    set 0, b                                      ; $72c1: $cb $c0
    nop                                           ; $72c3: $00
    sub c                                         ; $72c4: $91
    and h                                         ; $72c5: $a4
    or b                                          ; $72c6: $b0
    adc $20                                       ; $72c7: $ce $20
    rla                                           ; $72c9: $17
    ld b, b                                       ; $72ca: $40
    rrca                                          ; $72cb: $0f
    nop                                           ; $72cc: $00
    ld b, [hl]                                    ; $72cd: $46
    add hl, de                                    ; $72ce: $19
    ld b, [hl]                                    ; $72cf: $46
    ld de, $18c0                                  ; $72d0: $11 $c0 $18
    ld b, h                                       ; $72d3: $44
    add d                                         ; $72d4: $82
    nop                                           ; $72d5: $00
    add b                                         ; $72d6: $80
    nop                                           ; $72d7: $00
    ld a, [hl+]                                   ; $72d8: $2a
    ld b, l                                       ; $72d9: $45
    ld c, d                                       ; $72da: $4a
    add b                                         ; $72db: $80

jr_0d6_72dc:
    ld c, a                                       ; $72dc: $4f
    stop                                          ; $72dd: $10 $00
    ld [de], a                                    ; $72df: $12
    jr nz, jr_0d6_72e2                            ; $72e0: $20 $00

jr_0d6_72e2:
    ld b, a                                       ; $72e2: $47
    jr @-$5b                                      ; $72e3: $18 $a3

    inc b                                         ; $72e5: $04
    jp hl                                         ; $72e6: $e9


jr_0d6_72e7:
    nop                                           ; $72e7: $00
    jr nc, jr_0d6_72f7                            ; $72e8: $30 $0d

    sub d                                         ; $72ea: $92
    inc h                                         ; $72eb: $24
    ld [de], a                                    ; $72ec: $12
    and h                                         ; $72ed: $a4
    ret                                           ; $72ee: $c9


    ld [de], a                                    ; $72ef: $12
    nop                                           ; $72f0: $00
    call nz, Call_0d6_6110                        ; $72f1: $c4 $10 $61
    ld a, [bc]                                    ; $72f4: $0a
    ld l, a                                       ; $72f5: $6f
    rrca                                          ; $72f6: $0f

jr_0d6_72f7:
    rla                                           ; $72f7: $17
    add a                                         ; $72f8: $87
    nop                                           ; $72f9: $00
    dec bc                                        ; $72fa: $0b
    db $e3                                        ; $72fb: $e3
    dec b                                         ; $72fc: $05
    pop af                                        ; $72fd: $f1
    ld [bc], a                                    ; $72fe: $02
    ld hl, sp+$02                                 ; $72ff: $f8 $02
    ld a, b                                       ; $7301: $78
    nop                                           ; $7302: $00
    add d                                         ; $7303: $82
    jr c, @+$44                                   ; $7304: $38 $42

    jr @-$56                                      ; $7306: $18 $a8

    add b                                         ; $7308: $80
    and b                                         ; $7309: $a0
    add h                                         ; $730a: $84
    nop                                           ; $730b: $00
    and b                                         ; $730c: $a0
    adc [hl]                                      ; $730d: $8e
    ret nc                                        ; $730e: $d0

    call nz, $c5d0                                ; $730f: $c4 $d0 $c5
    ret nc                                        ; $7312: $d0

    jp nz, $e800                                  ; $7313: $c2 $00 $e8

    ldh [$e8], a                                  ; $7316: $e0 $e8
    pop hl                                        ; $7318: $e1
    inc e                                         ; $7319: $1c
    add b                                         ; $731a: $80
    rlca                                          ; $731b: $07
    ld [$3500], sp                                ; $731c: $08 $00 $35
    adc d                                         ; $731f: $8a
    ld bc, $0186                                  ; $7320: $01 $86 $01
    ld [$400d], sp                                ; $7323: $08 $0d $40
    nop                                           ; $7326: $00
    db $10                                        ; $7327: $10
    add c                                         ; $7328: $81
    inc b                                         ; $7329: $04
    jr z, jr_0d6_72dc                             ; $732a: $28 $b0

    dec b                                         ; $732c: $05
    ret c                                         ; $732d: $d8

    jr nz, jr_0d6_7330                            ; $732e: $20 $00

jr_0d6_7330:
    ld l, h                                       ; $7330: $6c
    sub d                                         ; $7331: $92
    xor c                                         ; $7332: $a9
    ld b, h                                       ; $7333: $44
    xor e                                         ; $7334: $ab
    nop                                           ; $7335: $00
    nop                                           ; $7336: $00
    add c                                         ; $7337: $81
    nop                                           ; $7338: $00
    inc c                                         ; $7339: $0c
    ld bc, $0c62                                  ; $733a: $01 $62 $0c
    add l                                         ; $733d: $85
    ld de, $3105                                  ; $733e: $11 $05 $31
    nop                                           ; $7341: $00
    add l                                         ; $7342: $85
    ld sp, $03cb                                  ; $7343: $31 $cb $03
    dec hl                                        ; $7346: $2b
    jp $e30b                                      ; $7347: $c3 $0b $e3


    nop                                           ; $734a: $00
    rla                                           ; $734b: $17
    rst $00                                       ; $734c: $c7
    rla                                           ; $734d: $17
    rst $00                                       ; $734e: $c7
    add sp, -$20                                  ; $734f: $e8 $e0
    db $f4                                        ; $7351: $f4
    pop af                                        ; $7352: $f1
    nop                                           ; $7353: $00
    db $f4                                        ; $7354: $f4
    ldh a, [$f4]                                  ; $7355: $f0 $f4
    ldh a, [$fa]                                  ; $7357: $f0 $fa
    ld hl, sp-$06                                 ; $7359: $f8 $fa
    ld hl, sp+$00                                 ; $735b: $f8 $00
    ei                                            ; $735d: $fb
    ld hl, sp-$04                                 ; $735e: $f8 $fc
    db $fc                                        ; $7360: $fc
    dec hl                                        ; $7361: $2b
    add b                                         ; $7362: $80
    add hl, bc                                    ; $7363: $09
    ld d, d                                       ; $7364: $52
    nop                                           ; $7365: $00
    ld c, b                                       ; $7366: $48
    inc de                                        ; $7367: $13
    ld e, b                                       ; $7368: $58
    and e                                         ; $7369: $a3
    ret c                                         ; $736a: $d8

    inc bc                                        ; $736b: $03
    nop                                           ; $736c: $00
    nop                                           ; $736d: $00
    nop                                           ; $736e: $00
    rst $38                                       ; $736f: $ff
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    ld hl, HeaderGlobalChecksum                   ; $7373: $21 $4e $01
    ld l, [hl]                                    ; $7376: $6e
    inc c                                         ; $7377: $0c
    db $10                                        ; $7378: $10
    ld h, a                                       ; $7379: $67
    nop                                           ; $737a: $00
    ld [hl], a                                    ; $737b: $77
    ld [bc], a                                    ; $737c: $02
    nop                                           ; $737d: $00
    db $10                                        ; $737e: $10
    db $10                                        ; $737f: $10
    rla                                           ; $7380: $17
    ld b, a                                       ; $7381: $47
    jr nz, jr_0d6_73b3                            ; $7382: $20 $2f

    rrca                                          ; $7384: $0f
    ld [bc], a                                    ; $7385: $02
    ld [$1f5f], sp                                ; $7386: $08 $5f $1f
    ld e, a                                       ; $7389: $5f
    rra                                           ; $738a: $1f
    rst $18                                       ; $738b: $df
    nop                                           ; $738c: $00
    rra                                           ; $738d: $1f
    ccf                                           ; $738e: $3f
    ccf                                           ; $738f: $3f

jr_0d6_7390:
    nop                                           ; $7390: $00
    ld bc, $00e4                                  ; $7391: $01 $e4 $00
    ld b, b                                       ; $7394: $40
    rst $38                                       ; $7395: $ff
    ld bc, $fe40                                  ; $7396: $01 $40 $fe
    cp $f9                                        ; $7399: $fe $f9
    ld hl, sp-$02                                 ; $739b: $f8 $fe
    cp $00                                        ; $739d: $fe $00
    db $fd                                        ; $739f: $fd
    db $fc                                        ; $73a0: $fc
    ld a, [c]                                     ; $73a1: $f2
    ldh a, [$ec]                                  ; $73a2: $f0 $ec
    pop hl                                        ; $73a4: $e1
    ret nc                                        ; $73a5: $d0

    jp nz, Jump_000_2100                          ; $73a6: $c2 $00 $21

    inc c                                         ; $73a9: $0c
    pop bc                                        ; $73aa: $c1
    db $10                                        ; $73ab: $10
    ld b, $29                                     ; $73ac: $06 $29
    ld a, a                                       ; $73ae: $7f
    ld a, a                                       ; $73af: $7f
    nop                                           ; $73b0: $00
    cp a                                          ; $73b1: $bf
    ccf                                           ; $73b2: $3f

jr_0d6_73b3:
    ld c, a                                       ; $73b3: $4f
    rrca                                          ; $73b4: $0f
    scf                                           ; $73b5: $37
    rlca                                          ; $73b6: $07
    jp Jump_000_022b                              ; $73b7: $c3 $2b $02


    adc b                                         ; $73ba: $88
    ld b, b                                       ; $73bb: $40
    ld a, [bc]                                    ; $73bc: $0a
    sub b                                         ; $73bd: $90
    inc d                                         ; $73be: $14
    ld [hl+], a                                   ; $73bf: $22
    jr nc, jr_0d6_740a                            ; $73c0: $30 $48

    ld a, a                                       ; $73c2: $7f
    nop                                           ; $73c3: $00
    ld a, a                                       ; $73c4: $7f
    sbc a                                         ; $73c5: $9f
    rra                                           ; $73c6: $1f
    or $f0                                        ; $73c7: $f6 $f0
    add sp, -$1f                                  ; $73c9: $e8 $e1
    ret nc                                        ; $73cb: $d0

    nop                                           ; $73cc: $00
    rst $00                                       ; $73cd: $c7
    and b                                         ; $73ce: $a0
    adc d                                         ; $73cf: $8a
    ld b, b                                       ; $73d0: $40
    dec d                                         ; $73d1: $15
    ld b, b                                       ; $73d2: $40
    ld [$0043], sp                                ; $73d3: $08 $43 $00
    inc b                                         ; $73d6: $04
    ld b, $31                                     ; $73d7: $06 $31
    add hl, de                                    ; $73d9: $19
    jp nz, $d408                                  ; $73da: $c2 $08 $d4

    nop                                           ; $73dd: $00
    nop                                           ; $73de: $00
    ld b, c                                       ; $73df: $41
    ld bc, $03a4                                  ; $73e0: $01 $a4 $03
    ld b, h                                       ; $73e3: $44
    nop                                           ; $73e4: $00
    add h                                         ; $73e5: $84
    ld bc, $b200                                  ; $73e6: $01 $00 $b2
    nop                                           ; $73e9: $00
    jr z, jr_0d6_73ec                             ; $73ea: $28 $00

jr_0d6_73ec:
    call c, $0100                                 ; $73ec: $dc $00 $01
    ld [$4200], sp                                ; $73ef: $08 $00 $42
    ld b, h                                       ; $73f2: $44
    ld de, $10c4                                  ; $73f3: $11 $c4 $10
    add b                                         ; $73f6: $80
    ld c, e                                       ; $73f7: $4b
    nop                                           ; $73f8: $00
    nop                                           ; $73f9: $00
    add h                                         ; $73fa: $84
    nop                                           ; $73fb: $00
    db $10                                        ; $73fc: $10
    ld l, a                                       ; $73fd: $6f
    rrca                                          ; $73fe: $0f
    rla                                           ; $73ff: $17
    rlca                                          ; $7400: $07
    dec bc                                        ; $7401: $0b
    nop                                           ; $7402: $00
    and e                                         ; $7403: $a3
    dec b                                         ; $7404: $05
    ld bc, $9060                                  ; $7405: $01 $60 $90
    jr nc, jr_0d6_7450                            ; $7408: $30 $46

jr_0d6_740a:
    nop                                           ; $740a: $00
    nop                                           ; $740b: $00
    nop                                           ; $740c: $00
    ld [bc], a                                    ; $740d: $02
    jr z, jr_0d6_7390                             ; $740e: $28 $80

    add c                                         ; $7410: $81
    and c                                         ; $7411: $a1
    adc h                                         ; $7412: $8c
    xor c                                         ; $7413: $a9
    nop                                           ; $7414: $00
    add h                                         ; $7415: $84
    ret c                                         ; $7416: $d8

    push bc                                       ; $7417: $c5
    ret nc                                        ; $7418: $d0

    ret z                                         ; $7419: $c8

    ret nz                                        ; $741a: $c0

    ret z                                         ; $741b: $c8

    ldh [rP1], a                                  ; $741c: $e0 $00
    pop hl                                        ; $741e: $e1

jr_0d6_741f:
    pop hl                                        ; $741f: $e1
    ldh [rP1], a                                  ; $7420: $e0 $00
    ld d, d                                       ; $7422: $52
    db $10                                        ; $7423: $10
    add c                                         ; $7424: $81
    xor b                                         ; $7425: $a8
    nop                                           ; $7426: $00
    nop                                           ; $7427: $00
    add c                                         ; $7428: $81
    ld a, [hl+]                                   ; $7429: $2a
    inc hl                                        ; $742a: $23
    add h                                         ; $742b: $84
    ld b, $61                                     ; $742c: $06 $61
    ld [hl+], a                                   ; $742e: $22
    nop                                           ; $742f: $00
    inc b                                         ; $7430: $04
    jr nz, jr_0d6_7435                            ; $7431: $20 $02

    nop                                           ; $7433: $00
    and e                                         ; $7434: $a3

jr_0d6_7435:
    inc b                                         ; $7435: $04
    ld b, d                                       ; $7436: $42
    jr nz, jr_0d6_7439                            ; $7437: $20 $00

jr_0d6_7439:
    inc d                                         ; $7439: $14
    add h                                         ; $743a: $84
    ld sp, $c805                                  ; $743b: $31 $05 $c8
    add hl, bc                                    ; $743e: $09
    ld b, h                                       ; $743f: $44
    ld bc, $8800                                  ; $7440: $01 $00 $88
    ld [bc], a                                    ; $7443: $02
    add hl, hl                                    ; $7444: $29
    dec b                                         ; $7445: $05
    ld b, c                                       ; $7446: $41
    ld b, l                                       ; $7447: $45
    ld hl, $0065                                  ; $7448: $21 $65 $00
    ld bc, $234b                                  ; $744b: $01 $4b $23
    dec bc                                        ; $744e: $0b
    ld b, e                                       ; $744f: $43

jr_0d6_7450:
    dec bc                                        ; $7450: $0b
    add e                                         ; $7451: $83
    rla                                           ; $7452: $17
    ld bc, $1787                                  ; $7453: $01 $87 $17
    add a                                         ; $7456: $87
    add sp, -$1f                                  ; $7457: $e8 $e1
    db $f4                                        ; $7459: $f4
    ldh a, [rSC]                                  ; $745a: $f0 $02
    nop                                           ; $745c: $00
    nop                                           ; $745d: $00
    pop af                                        ; $745e: $f1
    ld a, [$faf8]                                 ; $745f: $fa $f8 $fa
    ld hl, sp-$05                                 ; $7462: $f8 $fb
    ld hl, sp-$04                                 ; $7464: $f8 $fc
    nop                                           ; $7466: $00
    db $fc                                        ; $7467: $fc
    nop                                           ; $7468: $00
    ld l, b                                       ; $7469: $68
    and b                                         ; $746a: $a0
    ld c, l                                       ; $746b: $4d
    inc b                                         ; $746c: $04
    xor c                                         ; $746d: $a9
    add hl, bc                                    ; $746e: $09
    nop                                           ; $746f: $00
    inc h                                         ; $7470: $24
    add hl, bc                                    ; $7471: $09
    sub b                                         ; $7472: $90
    nop                                           ; $7473: $00
    nop                                           ; $7474: $00
    rst $38                                       ; $7475: $ff
    nop                                           ; $7476: $00
    nop                                           ; $7477: $00
    nop                                           ; $7478: $00
    nop                                           ; $7479: $00
    ld [hl+], a                                   ; $747a: $22
    ld b, b                                       ; $747b: $40
    and h                                         ; $747c: $a4
    ld [bc], a                                    ; $747d: $02

jr_0d6_747e:
    and h                                         ; $747e: $a4
    db $10                                        ; $747f: $10
    db $10                                        ; $7480: $10
    db $10                                        ; $7481: $10
    and h                                         ; $7482: $a4
    nop                                           ; $7483: $00
    sub l                                         ; $7484: $95
    db $10                                        ; $7485: $10
    jr jr_0d6_741f                                ; $7486: $18 $97

    rlca                                          ; $7488: $07
    cpl                                           ; $7489: $2f
    adc a                                         ; $748a: $8f
    nop                                           ; $748b: $00
    cpl                                           ; $748c: $2f
    rrca                                          ; $748d: $0f
    cpl                                           ; $748e: $2f
    rrca                                          ; $748f: $0f
    ld e, a                                       ; $7490: $5f
    rra                                           ; $7491: $1f
    ld e, a                                       ; $7492: $5f
    rra                                           ; $7493: $1f
    nop                                           ; $7494: $00
    rst $18                                       ; $7495: $df
    rra                                           ; $7496: $1f
    ccf                                           ; $7497: $3f
    ccf                                           ; $7498: $3f
    nop                                           ; $7499: $00
    ld bc, $00ea                                  ; $749a: $01 $ea $00
    ld b, b                                       ; $749d: $40
    rst $38                                       ; $749e: $ff
    ld bc, $fe40                                  ; $749f: $01 $40 $fe
    cp $f9                                        ; $74a2: $fe $f9
    ld hl, sp-$06                                 ; $74a4: $f8 $fa
    ld a, [$f400]                                 ; $74a6: $fa $00 $f4
    ldh a, [$c2]                                  ; $74a9: $f0 $c2
    push bc                                       ; $74ab: $c5
    add b                                         ; $74ac: $80
    and b                                         ; $74ad: $a0
    and c                                         ; $74ae: $a1
    sub h                                         ; $74af: $94
    nop                                           ; $74b0: $00
    ld de, $b00e                                  ; $74b1: $11 $0e $b0
    ld [bc], a                                    ; $74b4: $02
    inc c                                         ; $74b5: $0c
    nop                                           ; $74b6: $00
    inc sp                                        ; $74b7: $33
    inc sp                                        ; $74b8: $33
    nop                                           ; $74b9: $00
    ld b, l                                       ; $74ba: $45
    add hl, bc                                    ; $74bb: $09
    ld c, b                                       ; $74bc: $48
    add h                                         ; $74bd: $84
    sub c                                         ; $74be: $91
    ld [bc], a                                    ; $74bf: $02
    pop af                                        ; $74c0: $f1
    inc c                                         ; $74c1: $0c
    ld [bc], a                                    ; $74c2: $02
    ld c, $00                                     ; $74c3: $0e $00
    ld h, c                                       ; $74c5: $61
    sub d                                         ; $74c6: $92
    ld [hl+], a                                   ; $74c7: $22
    ld bc, $0830                                  ; $74c8: $01 $30 $08
    ld a, a                                       ; $74cb: $7f
    ld [$bf7f], sp                                ; $74cc: $08 $7f $bf
    ccf                                           ; $74cf: $3f
    ld a, a                                       ; $74d0: $7f
    ld bc, $1f10                                  ; $74d1: $01 $10 $1f
    rra                                           ; $74d4: $1f
    ld a, [c]                                     ; $74d5: $f2
    nop                                           ; $74d6: $00
    db $f4                                        ; $74d7: $f4
    cp b                                          ; $74d8: $b8
    call nz, $90ec                                ; $74d9: $c4 $ec $90
    ret nz                                        ; $74dc: $c0

    nop                                           ; $74dd: $00
    sub b                                         ; $74de: $90
    nop                                           ; $74df: $00
    ld c, $26                                     ; $74e0: $0e $26
    sbc b                                         ; $74e2: $98
    ld a, [bc]                                    ; $74e3: $0a
    jr nc, @-$3c                                  ; $74e4: $30 $c2

    add hl, de                                    ; $74e6: $19
    ret                                           ; $74e7: $c9


    nop                                           ; $74e8: $00
    ld [bc], a                                    ; $74e9: $02
    adc b                                         ; $74ea: $88
    ld [bc], a                                    ; $74eb: $02
    and e                                         ; $74ec: $a3
    ld b, h                                       ; $74ed: $44
    ld h, e                                       ; $74ee: $63
    add h                                         ; $74ef: $84
    ld de, $0200                                  ; $74f0: $11 $00 $02
    add b                                         ; $74f3: $80
    ld bc, $0ca0                                  ; $74f4: $01 $a0 $0c
    ld [hl-], a                                   ; $74f7: $32
    dec b                                         ; $74f8: $05
    or b                                          ; $74f9: $b0
    nop                                           ; $74fa: $00
    ld a, [bc]                                    ; $74fb: $0a
    jr z, jr_0d6_747e                             ; $74fc: $28 $80

    pop hl                                        ; $74fe: $e1
    jr @-$2d                                      ; $74ff: $18 $d1

    jr nz, jr_0d6_7508                            ; $7501: $20 $05

    nop                                           ; $7503: $00
    jr z, @+$4c                                   ; $7504: $28 $4a

    sub b                                         ; $7506: $90
    inc d                                         ; $7507: $14

jr_0d6_7508:
    and d                                         ; $7508: $a2
    jr z, jr_0d6_750f                             ; $7509: $28 $04

    ld l, a                                       ; $750b: $6f
    nop                                           ; $750c: $00
    rrca                                          ; $750d: $0f
    rla                                           ; $750e: $17

jr_0d6_750f:
    rlca                                          ; $750f: $07
    adc e                                         ; $7510: $8b
    inc hl                                        ; $7511: $23
    add l                                         ; $7512: $85
    ld sp, $0002                                  ; $7513: $31 $02 $00
    jr @+$44                                      ; $7516: $18 $42

    jr z, @+$24                                   ; $7518: $28 $22

    ld [$2802], sp                                ; $751a: $08 $02 $28
    and $00                                       ; $751d: $e6 $00
    add c                                         ; $751f: $81
    cp e                                          ; $7520: $bb
    add b                                         ; $7521: $80
    or c                                          ; $7522: $b1
    add h                                         ; $7523: $84
    pop de                                        ; $7524: $d1
    call nz, Call_000_00d0                        ; $7525: $c4 $d0 $00
    push bc                                       ; $7528: $c5
    ret nc                                        ; $7529: $d0

    push bc                                       ; $752a: $c5
    add sp, -$1f                                  ; $752b: $e8 $e1
    add sp, -$1e                                  ; $752d: $e8 $e2
    add hl, hl                                    ; $752f: $29
    nop                                           ; $7530: $00
    ld [bc], a                                    ; $7531: $02
    inc b                                         ; $7532: $04
    or c                                          ; $7533: $b1
    inc d                                         ; $7534: $14
    adc b                                         ; $7535: $88
    sbc c                                         ; $7536: $99
    ld b, b                                       ; $7537: $40
    add c                                         ; $7538: $81
    nop                                           ; $7539: $00
    ld d, b                                       ; $753a: $50
    call nz, $d401                                ; $753b: $c4 $01 $d4
    nop                                           ; $753e: $00
    dec sp                                        ; $753f: $3b
    add b                                         ; $7540: $80
    ld de, $8800                                  ; $7541: $11 $00 $88
    ld [bc], a                                    ; $7544: $02
    sub b                                         ; $7545: $90
    inc b                                         ; $7546: $04
    ld bc, $02e9                                  ; $7547: $01 $e9 $02
    ld a, [de]                                    ; $754a: $1a
    nop                                           ; $754b: $00
    add c                                         ; $754c: $81
    ld h, $00                                     ; $754d: $26 $00
    jr z, jr_0d6_7554                             ; $754f: $28 $03

    xor l                                         ; $7551: $ad

jr_0d6_7552:
    nop                                           ; $7552: $00
    add l                                         ; $7553: $85

jr_0d6_7554:
    nop                                           ; $7554: $00
    ld hl, $2115                                  ; $7555: $21 $15 $21
    add l                                         ; $7558: $85
    ld de, $a30b                                  ; $7559: $11 $0b $a3
    dec bc                                        ; $755c: $0b
    nop                                           ; $755d: $00
    inc hl                                        ; $755e: $23
    dec bc                                        ; $755f: $0b
    inc bc                                        ; $7560: $03
    rla                                           ; $7561: $17
    rlca                                          ; $7562: $07
    rla                                           ; $7563: $17
    rlca                                          ; $7564: $07
    add sp, $00                                   ; $7565: $e8 $00
    ld [c], a                                     ; $7567: $e2
    db $f4                                        ; $7568: $f4
    ldh a, [$f4]                                  ; $7569: $f0 $f4
    pop af                                        ; $756b: $f1
    db $f4                                        ; $756c: $f4
    pop af                                        ; $756d: $f1
    ld a, [$f800]                                 ; $756e: $fa $00 $f8
    ld a, [$fbf8]                                 ; $7571: $fa $f8 $fb
    ld hl, sp-$04                                 ; $7574: $f8 $fc
    db $fc                                        ; $7576: $fc
    scf                                           ; $7577: $37
    nop                                           ; $7578: $00
    add b                                         ; $7579: $80
    dec [hl]                                      ; $757a: $35
    add b                                         ; $757b: $80
    dec d                                         ; $757c: $15
    jr nz, jr_0d6_7584                            ; $757d: $20 $05

    sub b                                         ; $757f: $90

jr_0d6_7580:
    inc bc                                        ; $7580: $03
    nop                                           ; $7581: $00
    ret z                                         ; $7582: $c8

    nop                                           ; $7583: $00

jr_0d6_7584:
    nop                                           ; $7584: $00
    rst $38                                       ; $7585: $ff
    nop                                           ; $7586: $00
    nop                                           ; $7587: $00
    nop                                           ; $7588: $00
    sbc $00                                       ; $7589: $de $00
    nop                                           ; $758b: $00
    ld e, h                                       ; $758c: $5c
    ld [bc], a                                    ; $758d: $02
    ld e, l                                       ; $758e: $5d
    nop                                           ; $758f: $00
    ld e, c                                       ; $7590: $59
    inc b                                         ; $7591: $04
    or d                                          ; $7592: $b2
    ld b, b                                       ; $7593: $40
    ld [$1810], sp                                ; $7594: $08 $10 $18
    sub a                                         ; $7597: $97
    rlca                                          ; $7598: $07
    xor a                                         ; $7599: $af
    rrca                                          ; $759a: $0f
    xor a                                         ; $759b: $af
    rrca                                          ; $759c: $0f
    nop                                           ; $759d: $00
    cpl                                           ; $759e: $2f
    adc a                                         ; $759f: $8f
    ld e, a                                       ; $75a0: $5f
    rra                                           ; $75a1: $1f
    ld e, a                                       ; $75a2: $5f
    rra                                           ; $75a3: $1f
    rst $18                                       ; $75a4: $df
    rra                                           ; $75a5: $1f
    nop                                           ; $75a6: $00
    ccf                                           ; $75a7: $3f
    ccf                                           ; $75a8: $3f
    nop                                           ; $75a9: $00
    ld bc, $00e0                                  ; $75aa: $01 $e0 $00
    ld b, b                                       ; $75ad: $40
    rst $38                                       ; $75ae: $ff
    ld bc, $fe40                                  ; $75af: $01 $40 $fe
    cp $f8                                        ; $75b2: $fe $f8
    ld hl, sp-$02                                 ; $75b4: $f8 $fe
    cp $00                                        ; $75b6: $fe $00
    db $fd                                        ; $75b8: $fd
    db $fc                                        ; $75b9: $fc
    ldh a, [$f0]                                  ; $75ba: $f0 $f0
    add h                                         ; $75bc: $84
    add d                                         ; $75bd: $82
    adc b                                         ; $75be: $88

jr_0d6_75bf:
    add h                                         ; $75bf: $84
    nop                                           ; $75c0: $00
    ld hl, $4700                                  ; $75c1: $21 $00 $47
    jr z, jr_0d6_7552                             ; $75c4: $28 $8c

    ld h, d                                       ; $75c6: $62
    ld a, a                                       ; $75c7: $7f
    ld a, a                                       ; $75c8: $7f
    nop                                           ; $75c9: $00
    cp a                                          ; $75ca: $bf
    ccf                                           ; $75cb: $3f
    rrca                                          ; $75cc: $0f
    rrca                                          ; $75cd: $0f
    ld b, a                                       ; $75ce: $47
    add a                                         ; $75cf: $87
    inc hl                                        ; $75d0: $23
    ld b, e                                       ; $75d1: $43
    ld [bc], a                                    ; $75d2: $02
    ld [$8400], sp                                ; $75d3: $08 $00 $84
    ld c, b                                       ; $75d6: $48
    jp nz, Jump_000_3004                          ; $75d7: $c2 $04 $30

    ld c, b                                       ; $75da: $48
    ld a, a                                       ; $75db: $7f
    nop                                           ; $75dc: $00
    ld a, a                                       ; $75dd: $7f
    rra                                           ; $75de: $1f
    rra                                           ; $75df: $1f
    pop af                                        ; $75e0: $f1
    ldh a, [$e8]                                  ; $75e1: $f0 $e8
    ldh [$d2], a                                  ; $75e3: $e0 $d2
    nop                                           ; $75e5: $00
    pop bc                                        ; $75e6: $c1
    and h                                         ; $75e7: $a4
    add e                                         ; $75e8: $83
    ld c, b                                       ; $75e9: $48
    rlca                                          ; $75ea: $07
    db $10                                        ; $75eb: $10
    ld [$0020], sp                                ; $75ec: $08 $20 $00
    ld de, $0720                                  ; $75ef: $11 $20 $07
    ld [$12c0], sp                                ; $75f2: $08 $c0 $12
    dec b                                         ; $75f5: $05
    inc d                                         ; $75f6: $14
    nop                                           ; $75f7: $00
    ld [hl+], a                                   ; $75f8: $22
    jr z, jr_0d6_7580                             ; $75f9: $28 $85

    inc sp                                        ; $75fb: $33
    ld [$2010], sp                                ; $75fc: $08 $10 $20
    ld de, $8a00                                  ; $75ff: $11 $00 $8a
    add hl, bc                                    ; $7602: $09
    add d                                         ; $7603: $82
    ld e, c                                       ; $7604: $59
    add d                                         ; $7605: $82
    jr jr_0d6_760a                                ; $7606: $18 $02

    jr jr_0d6_760a                                ; $7608: $18 $00

jr_0d6_760a:
    ret nz                                        ; $760a: $c0

    sub b                                         ; $760b: $90
    ld b, c                                       ; $760c: $41
    call nz, $8c21                                ; $760d: $c4 $21 $8c
    nop                                           ; $7610: $00
    adc b                                         ; $7611: $88
    nop                                           ; $7612: $00
    ld [hl+], a                                   ; $7613: $22
    inc c                                         ; $7614: $0c
    jr nz, jr_0d6_7646                            ; $7615: $20 $2f

    rrca                                          ; $7617: $0f
    rla                                           ; $7618: $17
    rlca                                          ; $7619: $07
    adc e                                         ; $761a: $8b
    nop                                           ; $761b: $00
    inc bc                                        ; $761c: $03
    ld b, l                                       ; $761d: $45
    sub c                                         ; $761e: $91
    ld [hl+], a                                   ; $761f: $22
    ret z                                         ; $7620: $c8

    ld [de], a                                    ; $7621: $12
    ldh [rNR12], a                                ; $7622: $e0 $12
    nop                                           ; $7624: $00
    ld h, b                                       ; $7625: $60
    ld a, [bc]                                    ; $7626: $0a
    db $10                                        ; $7627: $10
    adc b                                         ; $7628: $88
    add a                                         ; $7629: $87
    and h                                         ; $762a: $a4
    add e                                         ; $762b: $83
    and h                                         ; $762c: $a4
    nop                                           ; $762d: $00
    add e                                         ; $762e: $83
    jp nc, $d0c1                                  ; $762f: $d2 $c1 $d0

    ret nz                                        ; $7632: $c0

    ret nc                                        ; $7633: $d0

    call nz, Call_000_00e8                        ; $7634: $c4 $e8 $00
    ldh [$e8], a                                  ; $7637: $e0 $e8
    pop hl                                        ; $7639: $e1
    jr jr_0d6_75bf                                ; $763a: $18 $83

    db $10                                        ; $763c: $10
    add b                                         ; $763d: $80
    ld a, [hl+]                                   ; $763e: $2a
    nop                                           ; $763f: $00
    add c                                         ; $7640: $81
    ld hl, $480a                                  ; $7641: $21 $0a $48
    dec h                                         ; $7644: $25
    add l                                         ; $7645: $85

jr_0d6_7646:
    ld a, [hl+]                                   ; $7646: $2a
    ld [bc], a                                    ; $7647: $02
    nop                                           ; $7648: $00
    dec h                                         ; $7649: $25
    ld b, b                                       ; $764a: $40
    db $10                                        ; $764b: $10
    ret z                                         ; $764c: $c8

    ld bc, $8300                                  ; $764d: $01 $00 $83
    stop                                          ; $7650: $10 $00
    ld b, e                                       ; $7652: $43
    ret z                                         ; $7653: $c8

    inc de                                        ; $7654: $13
    add b                                         ; $7655: $80
    add hl, bc                                    ; $7656: $09
    ld h, h                                       ; $7657: $64
    ld [$0021], sp                                ; $7658: $08 $21 $00
    ld b, d                                       ; $765b: $42
    inc b                                         ; $765c: $04
    sub c                                         ; $765d: $91
    ld bc, $11c1                                  ; $765e: $01 $c1 $11
    pop hl                                        ; $7661: $e1
    dec h                                         ; $7662: $25
    nop                                           ; $7663: $00
    pop bc                                        ; $7664: $c1
    ld c, e                                       ; $7665: $4b
    add e                                         ; $7666: $83
    adc e                                         ; $7667: $8b
    inc bc                                        ; $7668: $03
    dec bc                                        ; $7669: $0b
    inc hl                                        ; $766a: $23
    rla                                           ; $766b: $17
    ld bc, $9707                                  ; $766c: $01 $07 $97
    rlca                                          ; $766f: $07
    add sp, -$1e                                  ; $7670: $e8 $e2
    db $f4                                        ; $7672: $f4
    ldh a, [rSC]                                  ; $7673: $f0 $02
    ld [$fa00], sp                                ; $7675: $08 $00 $fa
    ld hl, sp-$06                                 ; $7678: $f8 $fa
    ld hl, sp-$05                                 ; $767a: $f8 $fb
    ld hl, sp-$04                                 ; $767c: $f8 $fc
    db $fc                                        ; $767e: $fc
    nop                                           ; $767f: $00
    add [hl]                                      ; $7680: $86
    db $10                                        ; $7681: $10
    and d                                         ; $7682: $a2
    inc d                                         ; $7683: $14
    and b                                         ; $7684: $a0
    ld de, $3285                                  ; $7685: $11 $85 $32
    nop                                           ; $7688: $00
    add d                                         ; $7689: $82
    dec [hl]                                      ; $768a: $35
    nop                                           ; $768b: $00
    nop                                           ; $768c: $00
    rst $38                                       ; $768d: $ff
    nop                                           ; $768e: $00
    nop                                           ; $768f: $00
    nop                                           ; $7690: $00
    nop                                           ; $7691: $00
    sub d                                         ; $7692: $92
    ld b, b                                       ; $7693: $40
    ld c, d                                       ; $7694: $4a
    sub b                                         ; $7695: $90
    ld [bc], a                                    ; $7696: $02
    ld [$006a], sp                                ; $7697: $08 $6a $00
    ld hl, $4822                                  ; $769a: $21 $22 $48
    db $10                                        ; $769d: $10
    jr jr_0d6_76b7                                ; $769e: $18 $17

    rst $00                                       ; $76a0: $c7
    cpl                                           ; $76a1: $2f
    adc a                                         ; $76a2: $8f
    ld [bc], a                                    ; $76a3: $02
    ld [$5f00], sp                                ; $76a4: $08 $00 $5f
    sbc a                                         ; $76a7: $9f
    ld e, a                                       ; $76a8: $5f
    rra                                           ; $76a9: $1f
    rst $18                                       ; $76aa: $df
    rra                                           ; $76ab: $1f
    ccf                                           ; $76ac: $3f
    ccf                                           ; $76ad: $3f
    nop                                           ; $76ae: $00
    ld bc, $00e4                                  ; $76af: $01 $e4 $00
    ld b, b                                       ; $76b2: $40
    rst $38                                       ; $76b3: $ff
    ld bc, $fe40                                  ; $76b4: $01 $40 $fe

jr_0d6_76b7:
    cp $f9                                        ; $76b7: $fe $f9
    ld hl, sp-$10                                 ; $76b9: $f8 $f0
    ldh a, [rP1]                                  ; $76bb: $f0 $00
    ldh [$ef], a                                  ; $76bd: $e0 $ef
    ldh a, [$f7]                                  ; $76bf: $f0 $f7
    push hl                                       ; $76c1: $e5
    ldh [$c9], a                                  ; $76c2: $e0 $c9
    jp nc, $0800                                  ; $76c4: $d2 $00 $08

    inc h                                         ; $76c7: $24
    add b                                         ; $76c8: $80
    inc bc                                        ; $76c9: $03
    nop                                           ; $76ca: $00
    jr nz, jr_0d6_774c                            ; $76cb: $20 $7f

    ld a, a                                       ; $76cd: $7f
    nop                                           ; $76ce: $00
    ccf                                           ; $76cf: $3f
    ccf                                           ; $76d0: $3f
    rrca                                          ; $76d1: $0f
    rst $08                                       ; $76d2: $cf
    ld b, a                                       ; $76d3: $47
    rlca                                          ; $76d4: $07
    dec hl                                        ; $76d5: $2b
    jp $0002                                      ; $76d6: $c3 $02 $00


    nop                                           ; $76d9: $00
    ld [hl], c                                    ; $76da: $71
    adc d                                         ; $76db: $8a
    ld b, $c8                                     ; $76dc: $06 $c8
    jr nc, @+$4a                                  ; $76de: $30 $48

    ld a, a                                       ; $76e0: $7f
    nop                                           ; $76e1: $00
    ld a, a                                       ; $76e2: $7f
    rra                                           ; $76e3: $1f
    rra                                           ; $76e4: $1f
    or $f0                                        ; $76e5: $f6 $f0
    add sp, -$20                                  ; $76e7: $e8 $e0
    ret nc                                        ; $76e9: $d0

    inc b                                         ; $76ea: $04
    ret nz                                        ; $76eb: $c0

    and b                                         ; $76ec: $a0
    add b                                         ; $76ed: $80
    ld b, b                                       ; $76ee: $40
    db $10                                        ; $76ef: $10
    ld [bc], a                                    ; $76f0: $02
    nop                                           ; $76f1: $00
    ld [$0040], sp                                ; $76f2: $08 $40 $00
    rla                                           ; $76f5: $17
    ld [bc], a                                    ; $76f6: $02
    ld [hl], l                                    ; $76f7: $75
    dec h                                         ; $76f8: $25
    ld c, b                                       ; $76f9: $48
    dec h                                         ; $76fa: $25
    jr jr_0d6_7724                                ; $76fb: $18 $27

    nop                                           ; $76fd: $00
    stop                                          ; $76fe: $10 $00
    ld c, c                                       ; $7700: $49
    nop                                           ; $7701: $00
    daa                                           ; $7702: $27
    dec b                                         ; $7703: $05
    ld a, [bc]                                    ; $7704: $0a
    inc bc                                        ; $7705: $03
    nop                                           ; $7706: $00
    and b                                         ; $7707: $a0
    inc e                                         ; $7708: $1c
    inc bc                                        ; $7709: $03
    nop                                           ; $770a: $00
    add b                                         ; $770b: $80
    sub b                                         ; $770c: $90
    ld c, b                                       ; $770d: $48
    ld [hl], b                                    ; $770e: $70
    nop                                           ; $770f: $00
    adc b                                         ; $7710: $88
    nop                                           ; $7711: $00
    ld h, e                                       ; $7712: $63
    nop                                           ; $7713: $00
    ld d, b                                       ; $7714: $50
    ccf                                           ; $7715: $3f
    add b                                         ; $7716: $80
    ld bc, $6000                                  ; $7717: $01 $00 $60
    rrca                                          ; $771a: $0f
    adc a                                         ; $771b: $8f
    rla                                           ; $771c: $17
    rlca                                          ; $771d: $07
    dec bc                                        ; $771e: $0b
    inc hl                                        ; $771f: $23
    dec b                                         ; $7720: $05
    nop                                           ; $7721: $00
    ld [hl], c                                    ; $7722: $71
    ld [bc], a                                    ; $7723: $02

jr_0d6_7724:
    xor b                                         ; $7724: $a8
    ld [bc], a                                    ; $7725: $02
    db $10                                        ; $7726: $10
    jp nz, Jump_000_3228                          ; $7727: $c2 $28 $32

    nop                                           ; $772a: $00
    nop                                           ; $772b: $00
    and b                                         ; $772c: $a0
    adc d                                         ; $772d: $8a
    and b                                         ; $772e: $a0
    add l                                         ; $772f: $85
    and b                                         ; $7730: $a0
    adc c                                         ; $7731: $89
    ret nc                                        ; $7732: $d0

    nop                                           ; $7733: $00
    jp $c0d0                                      ; $7734: $c3 $d0 $c0


    adc $c1                                       ; $7737: $ce $c1
    pop de                                        ; $7739: $d1
    adc $c0                                       ; $773a: $ce $c0
    nop                                           ; $773c: $00
    pop bc                                        ; $773d: $c1
    ld b, c                                       ; $773e: $41
    ld [de], a                                    ; $773f: $12
    jr nz, @+$4b                                  ; $7740: $20 $49

    sub b                                         ; $7742: $90
    inc h                                         ; $7743: $24
    ld c, b                                       ; $7744: $48
    nop                                           ; $7745: $00
    sub d                                         ; $7746: $92
    inc b                                         ; $7747: $04
    ret z                                         ; $7748: $c8

    inc b                                         ; $7749: $04
    ld [hl+], a                                   ; $774a: $22
    add d                                         ; $774b: $82

jr_0d6_774c:
    ld b, h                                       ; $774c: $44
    ld b, b                                       ; $774d: $40
    nop                                           ; $774e: $00
    and [hl]                                      ; $774f: $a6
    nop                                           ; $7750: $00
    ret nc                                        ; $7751: $d0

    add b                                         ; $7752: $80
    dec h                                         ; $7753: $25
    inc b                                         ; $7754: $04
    ld bc, $0000                                  ; $7755: $01 $00 $00
    inc h                                         ; $7758: $24
    inc b                                         ; $7759: $04
    ld c, c                                       ; $775a: $49
    ld [$08e4], sp                                ; $775b: $08 $e4 $08
    dec b                                         ; $775e: $05
    ld b, c                                       ; $775f: $41
    nop                                           ; $7760: $00
    xor b                                         ; $7761: $a8
    adc l                                         ; $7762: $8d
    ld b, c                                       ; $7763: $41
    ld b, l                                       ; $7764: $45
    ld hl, $9125                                  ; $7765: $21 $25 $91
    ld a, [de]                                    ; $7768: $1a
    nop                                           ; $7769: $00
    ld b, b                                       ; $776a: $40
    ld a, [bc]                                    ; $776b: $0a
    db $10                                        ; $776c: $10
    ld bc, $97a9                                  ; $776d: $01 $a9 $97
    ld b, a                                       ; $7770: $47
    ld d, a                                       ; $7771: $57
    nop                                           ; $7772: $00
    add a                                         ; $7773: $87
    ret nz                                        ; $7774: $c0

    jp c, $ccc3                                   ; $7775: $da $c3 $cc

    ldh [$e0], a                                  ; $7778: $e0 $e0
    db $e3                                        ; $777a: $e3
    nop                                           ; $777b: $00
    db $e4                                        ; $777c: $e4
    ldh a, [$f0]                                  ; $777d: $f0 $f0
    ld a, [$fbf8]                                 ; $777f: $fa $f8 $fb
    ld hl, sp-$04                                 ; $7782: $f8 $fc
    nop                                           ; $7784: $00
    db $fc                                        ; $7785: $fc
    ld [bc], a                                    ; $7786: $02
    ld d, h                                       ; $7787: $54
    ret nz                                        ; $7788: $c0

    ld a, [hl-]                                   ; $7789: $3a
    ld de, $8022                                  ; $778a: $11 $22 $80
    nop                                           ; $778d: $00
    ld b, c                                       ; $778e: $41
    ret nz                                        ; $778f: $c0

    ld [bc], a                                    ; $7790: $02
    nop                                           ; $7791: $00
    nop                                           ; $7792: $00
    rst $38                                       ; $7793: $ff
    nop                                           ; $7794: $00
    nop                                           ; $7795: $00
    nop                                           ; $7796: $00
    nop                                           ; $7797: $00
    ld [$4001], sp                                ; $7798: $08 $01 $40
    xor b                                         ; $779b: $a8
    db $10                                        ; $779c: $10
    ld c, b                                       ; $779d: $48
    and b                                         ; $779e: $a0
    db $10                                        ; $779f: $10
    db $10                                        ; $77a0: $10
    add b                                         ; $77a1: $80
    jr z, jr_0d6_77b4                             ; $77a2: $28 $10

    jr jr_0d6_77bd                                ; $77a4: $18 $17

    add a                                         ; $77a6: $87
    cpl                                           ; $77a7: $2f
    rrca                                          ; $77a8: $0f
    nop                                           ; $77a9: $00
    cpl                                           ; $77aa: $2f
    adc a                                         ; $77ab: $8f
    xor a                                         ; $77ac: $af
    rrca                                          ; $77ad: $0f
    sbc a                                         ; $77ae: $9f
    rra                                           ; $77af: $1f
    ld e, a                                       ; $77b0: $5f
    rra                                           ; $77b1: $1f
    nop                                           ; $77b2: $00
    rst $18                                       ; $77b3: $df

jr_0d6_77b4:
    rra                                           ; $77b4: $1f
    ccf                                           ; $77b5: $3f
    ccf                                           ; $77b6: $3f
    nop                                           ; $77b7: $00
    ld bc, $00e6                                  ; $77b8: $01 $e6 $00
    ld d, b                                       ; $77bb: $50
    rst $38                                       ; $77bc: $ff

jr_0d6_77bd:
    ld bc, $fe20                                  ; $77bd: $01 $20 $fe
    ld bc, $f200                                  ; $77c0: $01 $00 $f2
    ld a, [c]                                     ; $77c3: $f2
    db $ec                                        ; $77c4: $ec
    ldh [rP1], a                                  ; $77c5: $e0 $00
    cp $fe                                        ; $77c7: $fe $fe
    pop bc                                        ; $77c9: $c1
    ret nz                                        ; $77ca: $c0

    or d                                          ; $77cb: $b2
    adc c                                         ; $77cc: $89
    ld h, b                                       ; $77cd: $60
    ld [de], a                                    ; $77ce: $12
    nop                                           ; $77cf: $00
    ld b, b                                       ; $77d0: $40
    sub b                                         ; $77d1: $90
    pop bc                                        ; $77d2: $c1
    ld a, [hl+]                                   ; $77d3: $2a
    adc h                                         ; $77d4: $8c
    ld b, d                                       ; $77d5: $42
    inc b                                         ; $77d6: $04
    add b                                         ; $77d7: $80
    nop                                           ; $77d8: $00
    ccf                                           ; $77d9: $3f
    ccf                                           ; $77da: $3f
    ld e, a                                       ; $77db: $5f

jr_0d6_77dc:
    sbc a                                         ; $77dc: $9f
    xor a                                         ; $77dd: $af
    ld c, a                                       ; $77de: $4f
    ld [hl], a                                    ; $77df: $77
    add a                                         ; $77e0: $87
    nop                                           ; $77e1: $00
    dec de                                        ; $77e2: $1b
    inc hl                                        ; $77e3: $23
    sub b                                         ; $77e4: $90
    ld c, b                                       ; $77e5: $48
    dec bc                                        ; $77e6: $0b
    db $10                                        ; $77e7: $10
    ld c, h                                       ; $77e8: $4c
    sub b                                         ; $77e9: $90
    ret nz                                        ; $77ea: $c0

    jr nc, jr_0d6_7815                            ; $77eb: $30 $28

    jr c, jr_0d6_77f7                             ; $77ed: $38 $08

    ld a, a                                       ; $77ef: $7f
    ld a, a                                       ; $77f0: $7f
    sbc a                                         ; $77f1: $9f
    rra                                           ; $77f2: $1f
    ret nc                                        ; $77f3: $d0

jr_0d6_77f4:
    jp z, $d000                                   ; $77f4: $ca $00 $d0

jr_0d6_77f7:
    ret nz                                        ; $77f7: $c0

    call $90d2                                    ; $77f8: $cd $d2 $90
    and b                                         ; $77fb: $a0
    jr nz, jr_0d6_77fe                            ; $77fc: $20 $00

jr_0d6_77fe:
    nop                                           ; $77fe: $00
    jr nz, jr_0d6_7805                            ; $77ff: $20 $04

    ld bc, $432a                                  ; $7801: $01 $2a $43
    inc b                                         ; $7804: $04

jr_0d6_7805:
    add a                                         ; $7805: $87
    ld b, b                                       ; $7806: $40
    nop                                           ; $7807: $00
    rlca                                          ; $7808: $07
    ld [$01c0], sp                                ; $7809: $08 $c0 $01
    inc l                                         ; $780c: $2c
    jp nc, $0100                                  ; $780d: $d2 $00 $01

    nop                                           ; $7810: $00
    inc c                                         ; $7811: $0c
    ld [de], a                                    ; $7812: $12
    nop                                           ; $7813: $00
    xor c                                         ; $7814: $a9

jr_0d6_7815:
    ret nz                                        ; $7815: $c0

    ld h, $c6                                     ; $7816: $26 $c6
    ld [$8200], sp                                ; $7818: $08 $00 $82
    ld d, l                                       ; $781b: $55
    dec b                                         ; $781c: $05
    adc d                                         ; $781d: $8a
    ld [bc], a                                    ; $781e: $02
    dec d                                         ; $781f: $15
    add b                                         ; $7820: $80
    ld b, b                                       ; $7821: $40
    nop                                           ; $7822: $00
    jr nc, jr_0d6_782d                            ; $7823: $30 $08

    ld bc, $0102                                  ; $7825: $01 $02 $01
    adc b                                         ; $7828: $88
    ld l, a                                       ; $7829: $6f
    rrca                                          ; $782a: $0f
    nop                                           ; $782b: $00
    rla                                           ; $782c: $17

jr_0d6_782d:
    rlca                                          ; $782d: $07
    dec bc                                        ; $782e: $0b
    and e                                         ; $782f: $a3
    add l                                         ; $7830: $85
    ld d, c                                       ; $7831: $51
    ld b, d                                       ; $7832: $42
    xor b                                         ; $7833: $a8
    nop                                           ; $7834: $00
    ld [hl+], a                                   ; $7835: $22
    ld d, b                                       ; $7836: $50
    ld [hl-], a                                   ; $7837: $32
    ld b, b                                       ; $7838: $40
    sub d                                         ; $7839: $92
    jr nz, jr_0d6_77dc                            ; $783a: $20 $a0

    add d                                         ; $783c: $82
    nop                                           ; $783d: $00
    and b                                         ; $783e: $a0
    add l                                         ; $783f: $85
    and b                                         ; $7840: $a0
    add c                                         ; $7841: $81
    ret nc                                        ; $7842: $d0

    jp nz, $c0d0                                  ; $7843: $c2 $d0 $c0

    nop                                           ; $7846: $00
    ret nc                                        ; $7847: $d0

    pop bc                                        ; $7848: $c1
    add sp, -$20                                  ; $7849: $e8 $e0
    add sp, -$20                                  ; $784b: $e8 $e0
    ld b, d                                       ; $784d: $42
    dec h                                         ; $784e: $25
    nop                                           ; $784f: $00
    add e                                         ; $7850: $83
    inc b                                         ; $7851: $04
    pop hl                                        ; $7852: $e1
    ld [de], a                                    ; $7853: $12
    nop                                           ; $7854: $00
    inc de                                        ; $7855: $13
    ld l, c                                       ; $7856: $69
    sub b                                         ; $7857: $90
    nop                                           ; $7858: $00
    ret nz                                        ; $7859: $c0

    dec b                                         ; $785a: $05
    sbc b                                         ; $785b: $98
    jr nz, jr_0d6_788f                            ; $785c: $20 $31

    jp z, Jump_0d6_5289                           ; $785e: $ca $89 $52

    nop                                           ; $7861: $00
    ld de, $138a                                  ; $7862: $11 $8a $13
    jr nz, jr_0d6_7889                            ; $7865: $20 $22

    ld d, l                                       ; $7867: $55
    ld b, [hl]                                    ; $7868: $46
    adc b                                         ; $7869: $88
    nop                                           ; $786a: $00
    adc l                                         ; $786b: $8d
    ld b, b                                       ; $786c: $40
    jr jr_0d6_77f4                                ; $786d: $18 $85

    jr c, jr_0d6_77f4                             ; $786f: $38 $83

    add l                                         ; $7871: $85
    ld d, c                                       ; $7872: $51
    nop                                           ; $7873: $00
    add l                                         ; $7874: $85
    ld d, c                                       ; $7875: $51
    dec b                                         ; $7876: $05
    and c                                         ; $7877: $a1
    dec hl                                        ; $7878: $2b
    inc bc                                        ; $7879: $03
    dec bc                                        ; $787a: $0b

jr_0d6_787b:
    add e                                         ; $787b: $83
    nop                                           ; $787c: $00
    dec bc                                        ; $787d: $0b
    ld b, e                                       ; $787e: $43
    rla                                           ; $787f: $17
    ld b, a                                       ; $7880: $47
    sub a                                         ; $7881: $97
    rlca                                          ; $7882: $07
    add sp, -$1f                                  ; $7883: $e8 $e1
    jr nz, jr_0d6_787b                            ; $7885: $20 $f4

    ldh a, [rSC]                                  ; $7887: $f0 $02

jr_0d6_7889:
    ld [$f8fa], sp                                ; $7889: $08 $fa $f8
    ld a, [$fbf8]                                 ; $788c: $fa $f8 $fb

jr_0d6_788f:
    nop                                           ; $788f: $00
    ld hl, sp-$04                                 ; $7890: $f8 $fc
    db $fc                                        ; $7892: $fc
    ld [hl+], a                                   ; $7893: $22
    ld d, h                                       ; $7894: $54
    inc b                                         ; $7895: $04
    jr c, jr_0d6_78a0                             ; $7896: $38 $08

    nop                                           ; $7898: $00
    dec b                                         ; $7899: $05
    nop                                           ; $789a: $00
    db $fd                                        ; $789b: $fd
    nop                                           ; $789c: $00
    jr nz, jr_0d6_789f                            ; $789d: $20 $00

jr_0d6_789f:
    nop                                           ; $789f: $00

jr_0d6_78a0:
    rst $38                                       ; $78a0: $ff
    nop                                           ; $78a1: $00
    nop                                           ; $78a2: $00
    nop                                           ; $78a3: $00
    nop                                           ; $78a4: $00
    ld [hl], d                                    ; $78a5: $72
    ld [$10e2], sp                                ; $78a6: $08 $e2 $10
    ret nz                                        ; $78a9: $c0

    inc b                                         ; $78aa: $04
    inc hl                                        ; $78ab: $23
    ld [$08c1], sp                                ; $78ac: $08 $c1 $08
    ld de, $1810                                  ; $78af: $11 $10 $18
    sub a                                         ; $78b2: $97
    rlca                                          ; $78b3: $07
    nop                                           ; $78b4: $00
    cpl                                           ; $78b5: $2f
    adc a                                         ; $78b6: $8f
    cpl                                           ; $78b7: $2f
    rrca                                          ; $78b8: $0f
    cpl                                           ; $78b9: $2f
    rrca                                          ; $78ba: $0f
    ld e, a                                       ; $78bb: $5f
    rra                                           ; $78bc: $1f
    nop                                           ; $78bd: $00
    ld e, a                                       ; $78be: $5f
    rra                                           ; $78bf: $1f
    rst $18                                       ; $78c0: $df
    rra                                           ; $78c1: $1f
    ccf                                           ; $78c2: $3f
    ccf                                           ; $78c3: $3f

    db $00, $01, $a2, $00, $40, $ff, $01, $40, $fe, $fe, $f9, $f8, $fe, $fe, $00, $fd
    db $fc, $f2, $f0, $ec, $e1, $d0, $c3, $00, $20, $0f, $c0, $1f, $00, $3f, $7f, $7f
    db $00, $bf, $3f, $4f, $0f, $37, $87, $0b, $c3, $02, $04, $f0, $03, $f8, $00, $fc
    db $30, $48, $7f, $00, $7f, $9f, $1f, $f6, $f0, $e8, $e1, $d0, $04, $c7, $a0, $8f
    db $40, $1f, $02, $18, $00, $ff, $00, $00, $f8, $01, $f2, $04, $eb, $08, $c7, $a0
    db $02, $10, $f7, $10, $00, $3f, $80, $4f, $00, $e7, $08, $00, $f3, $02, $f1, $02
    db $00, $e5, $6f, $0f, $00, $17, $87, $0b, $e3, $05, $f1, $02, $f8, $92, $02, $18
    db $a0, $8f, $02, $08, $d0, $c7, $02, $08, $e8, $05, $e3, $e8, $e3, $00, $fe, $02
    db $00, $ff, $02, $10, $00, $fc, $00, $fc, $01, $fe, $0c, $03, $78, $04, $87, $40
    db $3f, $40, $bf, $58, $00, $7f, $40, $04, $3f, $c0, $3f, $05, $f1, $02, $08, $0b
    db $e3, $89, $02, $08, $17, $c7, $17, $34, $00, $f4, $f1, $02, $08, $00, $fa, $f8
    db $fa, $f8, $fb, $f8, $fc, $fc, $f8, $3c, $20, $42, $08, $03, $08, $05, $08, $10
    db $50, $17, $c7, $2f, $40, $8f, $02, $08, $5f, $1f, $5f, $1f, $df, $1f, $00, $3f
    db $3f

    rst $38                                       ; $7995: $ff
    ld a, a                                       ; $7996: $7f
    add b                                         ; $7997: $80
    inc b                                         ; $7998: $04
    and a                                         ; $7999: $a7
    dec e                                         ; $799a: $1d
    inc sp                                        ; $799b: $33
    inc sp                                        ; $799c: $33
    rra                                           ; $799d: $1f
    ld a, h                                       ; $799e: $7c
    ld b, c                                       ; $799f: $41
    inc c                                         ; $79a0: $0c
    adc e                                         ; $79a1: $8b
    dec [hl]                                      ; $79a2: $35
    call nc, $e062                                ; $79a3: $d4 $62 $e0
    inc bc                                        ; $79a6: $03
    rst $38                                       ; $79a7: $ff
    ld a, a                                       ; $79a8: $7f
    sub $5e                                       ; $79a9: $d6 $5e
    call Call_000_313d                            ; $79ab: $cd $3d $31
    ld b, [hl]                                    ; $79ae: $46
    ld sp, $3146                                  ; $79af: $31 $46 $31
    ld b, [hl]                                    ; $79b2: $46
    ld sp, $3146                                  ; $79b3: $31 $46 $31
    ld b, [hl]                                    ; $79b6: $46
    ld sp, $3146                                  ; $79b7: $31 $46 $31
    ld b, [hl]                                    ; $79ba: $46
    ld sp, $3146                                  ; $79bb: $31 $46 $31
    ld b, [hl]                                    ; $79be: $46
    ld sp, $3146                                  ; $79bf: $31 $46 $31
    ld b, [hl]                                    ; $79c2: $46
    ld sp, $3146                                  ; $79c3: $31 $46 $31
    ld b, [hl]                                    ; $79c6: $46
    adc h                                         ; $79c7: $8c
    ld sp, $318c                                  ; $79c8: $31 $8c $31
    adc h                                         ; $79cb: $8c
    ld sp, $318c                                  ; $79cc: $31 $8c $31
    adc h                                         ; $79cf: $8c
    ld sp, $318c                                  ; $79d0: $31 $8c $31
    adc h                                         ; $79d3: $8c
    ld sp, $7c1f                                  ; $79d4: $31 $1f $7c
    rst $38                                       ; $79d7: $ff
    ld a, a                                       ; $79d8: $7f
    rst $38                                       ; $79d9: $ff
    dec d                                         ; $79da: $15
    ld [$1f00], sp                                ; $79db: $08 $00 $1f
    ld a, h                                       ; $79de: $7c
    rst $38                                       ; $79df: $ff
    ld c, [hl]                                    ; $79e0: $4e
    ld l, e                                       ; $79e1: $6b
    dec l                                         ; $79e2: $2d
    nop                                           ; $79e3: $00
    nop                                           ; $79e4: $00
    rra                                           ; $79e5: $1f
    ld a, h                                       ; $79e6: $7c
    dec de                                        ; $79e7: $1b
    nop                                           ; $79e8: $00
    ld [hl], $22                                  ; $79e9: $36 $22
    nop                                           ; $79eb: $00
    nop                                           ; $79ec: $00
    rra                                           ; $79ed: $1f
    ld a, h                                       ; $79ee: $7c
    rra                                           ; $79ef: $1f
    ld a, h                                       ; $79f0: $7c
    rra                                           ; $79f1: $1f
    ld a, h                                       ; $79f2: $7c
    rra                                           ; $79f3: $1f
    ld a, h                                       ; $79f4: $7c
    rra                                           ; $79f5: $1f
    ld a, h                                       ; $79f6: $7c
    rra                                           ; $79f7: $1f
    ld a, h                                       ; $79f8: $7c
    rra                                           ; $79f9: $1f
    ld a, h                                       ; $79fa: $7c
    rra                                           ; $79fb: $1f
    ld a, h                                       ; $79fc: $7c
    rra                                           ; $79fd: $1f
    ld a, h                                       ; $79fe: $7c
    rra                                           ; $79ff: $1f
    ld a, h                                       ; $7a00: $7c
    rra                                           ; $7a01: $1f
    ld a, h                                       ; $7a02: $7c
    rra                                           ; $7a03: $1f
    ld a, h                                       ; $7a04: $7c
    rra                                           ; $7a05: $1f
    ld a, h                                       ; $7a06: $7c
    rra                                           ; $7a07: $1f
    ld a, h                                       ; $7a08: $7c
    rra                                           ; $7a09: $1f
    ld a, h                                       ; $7a0a: $7c
    rra                                           ; $7a0b: $1f
    ld a, h                                       ; $7a0c: $7c
    rra                                           ; $7a0d: $1f
    ld a, h                                       ; $7a0e: $7c
    rra                                           ; $7a0f: $1f
    ld a, h                                       ; $7a10: $7c
    rra                                           ; $7a11: $1f
    ld a, h                                       ; $7a12: $7c
    rra                                           ; $7a13: $1f
    ld a, h                                       ; $7a14: $7c

    db $ef, $3f, $ff, $7f, $bf, $01, $0b, $00, $b5, $56, $9f, $57, $3d, $01, $09, $00
    db $b5, $56, $3f, $2b, $9a, $00, $08, $00, $b5, $56, $df, $02, $18, $00, $06, $00
    db $b5, $56, $9f, $02, $15, $00, $05, $00, $b5, $56, $3f, $02, $12, $00, $03, $00
    db $b5, $56, $df, $01, $10, $00, $02, $00, $b5, $56, $7f, $01, $2d, $00, $00, $00

    nop                                           ; $7a55: $00
    nop                                           ; $7a56: $00
    inc bc                                        ; $7a57: $03
    ld [hl], a                                    ; $7a58: $77
    adc a                                         ; $7a59: $8f
    ld a, a                                       ; $7a5a: $7f
    rst $38                                       ; $7a5b: $ff
    ld a, a                                       ; $7a5c: $7f
    nop                                           ; $7a5d: $00
    nop                                           ; $7a5e: $00
    ld b, b                                       ; $7a5f: $40
    ld a, c                                       ; $7a60: $79
    add b                                         ; $7a61: $80
    ld a, [hl]                                    ; $7a62: $7e
    reti                                          ; $7a63: $d9


    ld a, a                                       ; $7a64: $7f
    nop                                           ; $7a65: $00
    nop                                           ; $7a66: $00
    nop                                           ; $7a67: $00
    nop                                           ; $7a68: $00
    nop                                           ; $7a69: $00
    nop                                           ; $7a6a: $00
    nop                                           ; $7a6b: $00
    nop                                           ; $7a6c: $00
    nop                                           ; $7a6d: $00
    nop                                           ; $7a6e: $00
    nop                                           ; $7a6f: $00
    nop                                           ; $7a70: $00
    nop                                           ; $7a71: $00
    nop                                           ; $7a72: $00
    nop                                           ; $7a73: $00
    nop                                           ; $7a74: $00
    nop                                           ; $7a75: $00
    nop                                           ; $7a76: $00
    nop                                           ; $7a77: $00
    nop                                           ; $7a78: $00
    nop                                           ; $7a79: $00
    nop                                           ; $7a7a: $00
    nop                                           ; $7a7b: $00
    nop                                           ; $7a7c: $00
    nop                                           ; $7a7d: $00
    nop                                           ; $7a7e: $00
    nop                                           ; $7a7f: $00
    nop                                           ; $7a80: $00
    nop                                           ; $7a81: $00
    nop                                           ; $7a82: $00
    nop                                           ; $7a83: $00
    nop                                           ; $7a84: $00
    nop                                           ; $7a85: $00
    nop                                           ; $7a86: $00
    nop                                           ; $7a87: $00
    nop                                           ; $7a88: $00
    nop                                           ; $7a89: $00
    nop                                           ; $7a8a: $00
    nop                                           ; $7a8b: $00
    nop                                           ; $7a8c: $00
    nop                                           ; $7a8d: $00
    nop                                           ; $7a8e: $00
    nop                                           ; $7a8f: $00
    nop                                           ; $7a90: $00
    nop                                           ; $7a91: $00
    nop                                           ; $7a92: $00
    nop                                           ; $7a93: $00
    nop                                           ; $7a94: $00
    add h                                         ; $7a95: $84
    inc c                                         ; $7a96: $0c
    ld e, $4f                                     ; $7a97: $1e $4f
    inc e                                         ; $7a99: $1c
    ld a, [hl+]                                   ; $7a9a: $2a
    or l                                          ; $7a9b: $b5
    ld hl, $7c1f                                  ; $7a9c: $21 $1f $7c
    rra                                           ; $7a9f: $1f
    ld a, h                                       ; $7aa0: $7c
    rra                                           ; $7aa1: $1f
    ld a, h                                       ; $7aa2: $7c
    rra                                           ; $7aa3: $1f
    ld a, h                                       ; $7aa4: $7c
    rra                                           ; $7aa5: $1f
    ld a, h                                       ; $7aa6: $7c
    rra                                           ; $7aa7: $1f
    ld a, h                                       ; $7aa8: $7c
    rra                                           ; $7aa9: $1f
    ld a, h                                       ; $7aaa: $7c
    rra                                           ; $7aab: $1f
    ld a, h                                       ; $7aac: $7c
    rra                                           ; $7aad: $1f
    ld a, h                                       ; $7aae: $7c
    rra                                           ; $7aaf: $1f
    ld a, h                                       ; $7ab0: $7c
    rra                                           ; $7ab1: $1f
    ld a, h                                       ; $7ab2: $7c
    rra                                           ; $7ab3: $1f
    ld a, h                                       ; $7ab4: $7c
    rra                                           ; $7ab5: $1f
    ld a, h                                       ; $7ab6: $7c
    rra                                           ; $7ab7: $1f
    ld a, h                                       ; $7ab8: $7c
    rra                                           ; $7ab9: $1f
    ld a, h                                       ; $7aba: $7c
    rra                                           ; $7abb: $1f
    ld a, h                                       ; $7abc: $7c
    rra                                           ; $7abd: $1f
    ld a, h                                       ; $7abe: $7c
    rra                                           ; $7abf: $1f
    ld a, h                                       ; $7ac0: $7c
    rra                                           ; $7ac1: $1f
    ld a, h                                       ; $7ac2: $7c
    rra                                           ; $7ac3: $1f
    ld a, h                                       ; $7ac4: $7c
    rra                                           ; $7ac5: $1f
    ld a, h                                       ; $7ac6: $7c
    rra                                           ; $7ac7: $1f
    ld a, h                                       ; $7ac8: $7c
    rra                                           ; $7ac9: $1f
    ld a, h                                       ; $7aca: $7c
    rra                                           ; $7acb: $1f
    ld a, h                                       ; $7acc: $7c
    rra                                           ; $7acd: $1f
    ld a, h                                       ; $7ace: $7c
    rra                                           ; $7acf: $1f
    ld a, h                                       ; $7ad0: $7c
    rra                                           ; $7ad1: $1f
    ld a, h                                       ; $7ad2: $7c
    rra                                           ; $7ad3: $1f
    ld a, h                                       ; $7ad4: $7c
    sub h                                         ; $7ad5: $94
    ld d, d                                       ; $7ad6: $52
    sbc [hl]                                      ; $7ad7: $9e
    inc bc                                        ; $7ad8: $03
    ld a, $0e                                     ; $7ad9: $3e $0e
    rla                                           ; $7adb: $17
    add hl, bc                                    ; $7adc: $09
    rra                                           ; $7add: $1f
    ld a, h                                       ; $7ade: $7c
    rra                                           ; $7adf: $1f
    ld a, h                                       ; $7ae0: $7c
    rra                                           ; $7ae1: $1f
    ld a, h                                       ; $7ae2: $7c
    rra                                           ; $7ae3: $1f
    ld a, h                                       ; $7ae4: $7c
    rra                                           ; $7ae5: $1f
    ld a, h                                       ; $7ae6: $7c
    rra                                           ; $7ae7: $1f
    ld a, h                                       ; $7ae8: $7c
    rra                                           ; $7ae9: $1f
    ld a, h                                       ; $7aea: $7c
    rra                                           ; $7aeb: $1f
    ld a, h                                       ; $7aec: $7c
    rra                                           ; $7aed: $1f
    ld a, h                                       ; $7aee: $7c
    rra                                           ; $7aef: $1f
    ld a, h                                       ; $7af0: $7c
    rra                                           ; $7af1: $1f
    ld a, h                                       ; $7af2: $7c
    rra                                           ; $7af3: $1f
    ld a, h                                       ; $7af4: $7c
    rra                                           ; $7af5: $1f
    ld a, h                                       ; $7af6: $7c
    rra                                           ; $7af7: $1f
    ld a, h                                       ; $7af8: $7c
    rra                                           ; $7af9: $1f
    ld a, h                                       ; $7afa: $7c
    rra                                           ; $7afb: $1f
    ld a, h                                       ; $7afc: $7c
    rra                                           ; $7afd: $1f
    ld a, h                                       ; $7afe: $7c
    rra                                           ; $7aff: $1f
    ld a, h                                       ; $7b00: $7c
    rra                                           ; $7b01: $1f
    ld a, h                                       ; $7b02: $7c
    rra                                           ; $7b03: $1f
    ld a, h                                       ; $7b04: $7c
    rra                                           ; $7b05: $1f
    ld a, h                                       ; $7b06: $7c
    rra                                           ; $7b07: $1f
    ld a, h                                       ; $7b08: $7c
    rra                                           ; $7b09: $1f
    ld a, h                                       ; $7b0a: $7c
    rra                                           ; $7b0b: $1f
    ld a, h                                       ; $7b0c: $7c
    rra                                           ; $7b0d: $1f
    ld a, h                                       ; $7b0e: $7c
    rra                                           ; $7b0f: $1f
    ld a, h                                       ; $7b10: $7c
    rra                                           ; $7b11: $1f
    ld a, h                                       ; $7b12: $7c
    rra                                           ; $7b13: $1f
    ld a, h                                       ; $7b14: $7c
    ld h, b                                       ; $7b15: $60
    ld [bc], a                                    ; $7b16: $02
    rst $38                                       ; $7b17: $ff
    ld c, c                                       ; $7b18: $49
    ld c, d                                       ; $7b19: $4a
    add hl, hl                                    ; $7b1a: $29
    nop                                           ; $7b1b: $00
    nop                                           ; $7b1c: $00
    ld h, b                                       ; $7b1d: $60
    ld [bc], a                                    ; $7b1e: $02
    ld e, [hl]                                    ; $7b1f: $5e
    ld a, [hl-]                                   ; $7b20: $3a
    ld c, d                                       ; $7b21: $4a
    add hl, hl                                    ; $7b22: $29
    nop                                           ; $7b23: $00
    nop                                           ; $7b24: $00
    ld h, b                                       ; $7b25: $60
    ld [bc], a                                    ; $7b26: $02
    ld a, a                                       ; $7b27: $7f
    ld c, [hl]                                    ; $7b28: $4e
    sbc b                                         ; $7b29: $98
    ld d, $00                                     ; $7b2a: $16 $00
    nop                                           ; $7b2c: $00
    ld h, b                                       ; $7b2d: $60
    ld [bc], a                                    ; $7b2e: $02
    nop                                           ; $7b2f: $00
    nop                                           ; $7b30: $00
    inc d                                         ; $7b31: $14
    ld [de], a                                    ; $7b32: $12
    call c, Call_0d6_605b                         ; $7b33: $dc $5b $60
    ld [bc], a                                    ; $7b36: $02
    ld de, $ca7e                                  ; $7b37: $11 $7e $ca
    ld h, b                                       ; $7b3a: $60
    nop                                           ; $7b3b: $00
    nop                                           ; $7b3c: $00
    ld h, b                                       ; $7b3d: $60
    ld [bc], a                                    ; $7b3e: $02
    rst $38                                       ; $7b3f: $ff
    ld a, a                                       ; $7b40: $7f
    db $10                                        ; $7b41: $10
    inc c                                         ; $7b42: $0c
    nop                                           ; $7b43: $00
    nop                                           ; $7b44: $00
    ld c, e                                       ; $7b45: $4b
    add hl, hl                                    ; $7b46: $29
    ld c, [hl]                                    ; $7b47: $4e
    ld h, d                                       ; $7b48: $62
    ld b, l                                       ; $7b49: $45
    dec a                                         ; $7b4a: $3d
    ld b, d                                       ; $7b4b: $42
    ld [$0260], sp                                ; $7b4c: $08 $60 $02
    rst $38                                       ; $7b4f: $ff
    ld a, a                                       ; $7b50: $7f
    cp b                                          ; $7b51: $b8
    ld [bc], a                                    ; $7b52: $02
    and a                                         ; $7b53: $a7
    nop                                           ; $7b54: $00
    ld h, b                                       ; $7b55: $60
    ld [bc], a                                    ; $7b56: $02
    rst $38                                       ; $7b57: $ff
    ld c, c                                       ; $7b58: $49
    ld c, d                                       ; $7b59: $4a
    add hl, hl                                    ; $7b5a: $29
    nop                                           ; $7b5b: $00
    nop                                           ; $7b5c: $00
    ld h, b                                       ; $7b5d: $60
    ld [bc], a                                    ; $7b5e: $02
    ld e, [hl]                                    ; $7b5f: $5e
    ld a, [hl-]                                   ; $7b60: $3a
    ld c, d                                       ; $7b61: $4a
    add hl, hl                                    ; $7b62: $29
    nop                                           ; $7b63: $00
    nop                                           ; $7b64: $00
    ld h, b                                       ; $7b65: $60
    ld [bc], a                                    ; $7b66: $02
    ld a, a                                       ; $7b67: $7f
    ld c, [hl]                                    ; $7b68: $4e
    sbc b                                         ; $7b69: $98
    ld d, $00                                     ; $7b6a: $16 $00
    nop                                           ; $7b6c: $00
    ld h, b                                       ; $7b6d: $60
    ld [bc], a                                    ; $7b6e: $02
    nop                                           ; $7b6f: $00
    nop                                           ; $7b70: $00
    nop                                           ; $7b71: $00
    nop                                           ; $7b72: $00

jr_0d6_7b73:
    nop                                           ; $7b73: $00
    nop                                           ; $7b74: $00
    ld h, b                                       ; $7b75: $60
    ld [bc], a                                    ; $7b76: $02
    nop                                           ; $7b77: $00
    nop                                           ; $7b78: $00
    nop                                           ; $7b79: $00
    nop                                           ; $7b7a: $00
    nop                                           ; $7b7b: $00
    nop                                           ; $7b7c: $00
    ld h, b                                       ; $7b7d: $60
    ld [bc], a                                    ; $7b7e: $02
    nop                                           ; $7b7f: $00
    nop                                           ; $7b80: $00
    nop                                           ; $7b81: $00
    nop                                           ; $7b82: $00
    nop                                           ; $7b83: $00
    nop                                           ; $7b84: $00
    ld c, e                                       ; $7b85: $4b
    add hl, hl                                    ; $7b86: $29
    ld [c], a                                     ; $7b87: $e2
    inc e                                         ; $7b88: $1c
    ldh [rNR11], a                                ; $7b89: $e0 $11
    ldh [rSC], a                                  ; $7b8b: $e0 $02
    ld c, e                                       ; $7b8d: $4b
    add hl, hl                                    ; $7b8e: $29
    adc b                                         ; $7b8f: $88
    inc b                                         ; $7b90: $04
    ldh [rSB], a                                  ; $7b91: $e0 $01
    ldh [$03], a                                  ; $7b93: $e0 $03
    inc b                                         ; $7b95: $04
    jr jr_0d6_7b73                                ; $7b96: $18 $db

    ld b, l                                       ; $7b98: $45
    add hl, hl                                    ; $7b99: $29
    ld sp, $0000                                  ; $7b9a: $31 $00 $00
    inc b                                         ; $7b9d: $04
    jr @+$6e                                      ; $7b9e: $18 $6c

    ld b, l                                       ; $7ba0: $45
    jr nz, jr_0d6_7bbc                            ; $7ba1: $20 $19

    nop                                           ; $7ba3: $00
    nop                                           ; $7ba4: $00
    rra                                           ; $7ba5: $1f
    ld a, h                                       ; $7ba6: $7c
    rst $38                                       ; $7ba7: $ff
    ld h, e                                       ; $7ba8: $63
    cp a                                          ; $7ba9: $bf
    ld [bc], a                                    ; $7baa: $02
    ld e, b                                       ; $7bab: $58
    ld de, $7cbf                                  ; $7bac: $11 $bf $7c
    cp a                                          ; $7baf: $bf
    ld a, h                                       ; $7bb0: $7c
    cp a                                          ; $7bb1: $bf
    ld a, h                                       ; $7bb2: $7c
    cp a                                          ; $7bb3: $bf
    ld a, h                                       ; $7bb4: $7c
    rst $38                                       ; $7bb5: $ff
    ld a, h                                       ; $7bb6: $7c
    rst $38                                       ; $7bb7: $ff
    ld a, h                                       ; $7bb8: $7c
    rst $38                                       ; $7bb9: $ff
    ld a, h                                       ; $7bba: $7c
    rst $38                                       ; $7bbb: $ff

jr_0d6_7bbc:
    ld a, h                                       ; $7bbc: $7c
    ccf                                           ; $7bbd: $3f
    ld a, l                                       ; $7bbe: $7d
    ccf                                           ; $7bbf: $3f
    ld a, l                                       ; $7bc0: $7d
    ccf                                           ; $7bc1: $3f
    ld a, l                                       ; $7bc2: $7d
    ccf                                           ; $7bc3: $3f
    ld a, l                                       ; $7bc4: $7d
    ld a, a                                       ; $7bc5: $7f
    ld a, l                                       ; $7bc6: $7d
    ld a, a                                       ; $7bc7: $7f
    ld a, l                                       ; $7bc8: $7d
    ld a, a                                       ; $7bc9: $7f
    ld a, l                                       ; $7bca: $7d
    ld a, a                                       ; $7bcb: $7f
    ld a, l                                       ; $7bcc: $7d
    cp a                                          ; $7bcd: $bf
    ld a, l                                       ; $7bce: $7d
    cp a                                          ; $7bcf: $bf
    ld a, l                                       ; $7bd0: $7d
    cp a                                          ; $7bd1: $bf
    ld a, l                                       ; $7bd2: $7d
    cp a                                          ; $7bd3: $bf
    ld a, l                                       ; $7bd4: $7d

    db $1f, $7c, $7f, $63, $b1, $11, $85, $04, $17, $5c, $ff, $7f, $ff, $03, $1a, $1a
    db $9f, $7d, $ff, $7f, $d1, $45, $a8, $20, $15, $00, $ff, $03, $38, $02, $91, $00
    db $15, $00, $3f, $02, $96, $00, $0a, $00, $15, $00, $5f, $7e, $36, $5d, $09, $40
    db $15, $00, $ff, $7f, $d1, $45, $a8, $20, $15, $00, $f8, $03, $8c, $02, $20, $01

    ld sp, $ff51                                  ; $7c15: $31 $51 $ff
    ld c, c                                       ; $7c18: $49
    ld c, d                                       ; $7c19: $4a
    add hl, hl                                    ; $7c1a: $29
    nop                                           ; $7c1b: $00
    nop                                           ; $7c1c: $00
    ld sp, $1f51                                  ; $7c1d: $31 $51 $1f
    nop                                           ; $7c20: $00
    ld c, a                                       ; $7c21: $4f
    dec c                                         ; $7c22: $0d
    sbc d                                         ; $7c23: $9a
    ld bc, $5131                                  ; $7c24: $01 $31 $51
    rst $38                                       ; $7c27: $ff
    ld a, a                                       ; $7c28: $7f
    rst $38                                       ; $7c29: $ff
    dec b                                         ; $7c2a: $05
    rrca                                          ; $7c2b: $0f
    nop                                           ; $7c2c: $00
    ld sp, $1f51                                  ; $7c2d: $31 $51 $1f
    ld a, h                                       ; $7c30: $7c
    rra                                           ; $7c31: $1f
    ld a, h                                       ; $7c32: $7c
    nop                                           ; $7c33: $00
    nop                                           ; $7c34: $00
    ld sp, $ff51                                  ; $7c35: $31 $51 $ff
    ld a, a                                       ; $7c38: $7f
    add b                                         ; $7c39: $80
    ld a, l                                       ; $7c3a: $7d
    nop                                           ; $7c3b: $00
    nop                                           ; $7c3c: $00
    ld sp, $ff51                                  ; $7c3d: $31 $51 $ff
    ld c, c                                       ; $7c40: $49
    and l                                         ; $7c41: $a5
    jr c, jr_0d6_7c44                             ; $7c42: $38 $00

jr_0d6_7c44:
    nop                                           ; $7c44: $00
    ld sp, $3f51                                  ; $7c45: $31 $51 $3f
    ld a, $0f                                     ; $7c48: $3e $0f
    ld c, h                                       ; $7c4a: $4c
    nop                                           ; $7c4b: $00
    nop                                           ; $7c4c: $00
    ld sp, $3b51                                  ; $7c4d: $31 $51 $3b
    ld [hl], $ea                                  ; $7c50: $36 $ea
    inc c                                         ; $7c52: $0c
    nop                                           ; $7c53: $00
    nop                                           ; $7c54: $00
    ld sp, $ff51                                  ; $7c55: $31 $51 $ff
    ld c, c                                       ; $7c58: $49
    ld c, d                                       ; $7c59: $4a
    add hl, hl                                    ; $7c5a: $29
    nop                                           ; $7c5b: $00
    nop                                           ; $7c5c: $00
    ld sp, $1f51                                  ; $7c5d: $31 $51 $1f
    nop                                           ; $7c60: $00
    ld c, a                                       ; $7c61: $4f
    dec c                                         ; $7c62: $0d
    sbc d                                         ; $7c63: $9a
    ld bc, $5131                                  ; $7c64: $01 $31 $51
    rst $38                                       ; $7c67: $ff
    inc bc                                        ; $7c68: $03
    ld a, [de]                                    ; $7c69: $1a
    nop                                           ; $7c6a: $00
    nop                                           ; $7c6b: $00
    nop                                           ; $7c6c: $00
    ld sp, $ff51                                  ; $7c6d: $31 $51 $ff
    ld [bc], a                                    ; $7c70: $02
    ld a, [de]                                    ; $7c71: $1a
    nop                                           ; $7c72: $00
    nop                                           ; $7c73: $00
    nop                                           ; $7c74: $00
    ld sp, $ff51                                  ; $7c75: $31 $51 $ff
    ld bc, $001a                                  ; $7c78: $01 $1a $00
    nop                                           ; $7c7b: $00
    nop                                           ; $7c7c: $00
    ld sp, $ff51                                  ; $7c7d: $31 $51 $ff
    nop                                           ; $7c80: $00
    ld a, [de]                                    ; $7c81: $1a
    nop                                           ; $7c82: $00
    nop                                           ; $7c83: $00
    nop                                           ; $7c84: $00
    ld sp, $3151                                  ; $7c85: $31 $51 $31
    ld d, c                                       ; $7c88: $51
    ld sp, $3151                                  ; $7c89: $31 $51 $31
    ld d, c                                       ; $7c8c: $51
    ld sp, $3151                                  ; $7c8d: $31 $51 $31
    ld d, c                                       ; $7c90: $51
    ld sp, $3151                                  ; $7c91: $31 $51 $31
    ld d, c                                       ; $7c94: $51
    db $eb                                        ; $7c95: $eb
    dec a                                         ; $7c96: $3d
    ld a, a                                       ; $7c97: $7f
    ld c, [hl]                                    ; $7c98: $4e
    ld c, d                                       ; $7c99: $4a
    add hl, hl                                    ; $7c9a: $29
    nop                                           ; $7c9b: $00
    nop                                           ; $7c9c: $00
    inc d                                         ; $7c9d: $14
    ld l, $1f                                     ; $7c9e: $2e $1f
    nop                                           ; $7ca0: $00
    rst $38                                       ; $7ca1: $ff
    inc bc                                        ; $7ca2: $03
    dec b                                         ; $7ca3: $05
    nop                                           ; $7ca4: $00
    ccf                                           ; $7ca5: $3f
    ld a, h                                       ; $7ca6: $7c
    rst $18                                       ; $7ca7: $df
    ld a, a                                       ; $7ca8: $7f
    ld bc, $c02c                                  ; $7ca9: $01 $2c $c0
    ld bc, $03e0                                  ; $7cac: $01 $e0 $03
    sbc a                                         ; $7caf: $9f
    ld h, e                                       ; $7cb0: $63
    sub a                                         ; $7cb1: $97
    dec b                                         ; $7cb2: $05
    ld h, l                                       ; $7cb3: $65
    inc b                                         ; $7cb4: $04
    ldh [$7f], a                                  ; $7cb5: $e0 $7f
    rra                                           ; $7cb7: $1f
    rlca                                          ; $7cb8: $07
    add hl, de                                    ; $7cb9: $19
    nop                                           ; $7cba: $00
    ld b, [hl]                                    ; $7cbb: $46
    nop                                           ; $7cbc: $00
    rst $38                                       ; $7cbd: $ff
    ld a, h                                       ; $7cbe: $7c
    rst $38                                       ; $7cbf: $ff
    ld a, h                                       ; $7cc0: $7c
    rst $38                                       ; $7cc1: $ff
    ld a, h                                       ; $7cc2: $7c
    rst $38                                       ; $7cc3: $ff
    ld a, h                                       ; $7cc4: $7c
    ccf                                           ; $7cc5: $3f
    ld a, l                                       ; $7cc6: $7d
    ccf                                           ; $7cc7: $3f
    ld a, l                                       ; $7cc8: $7d
    ccf                                           ; $7cc9: $3f
    ld a, l                                       ; $7cca: $7d
    ccf                                           ; $7ccb: $3f
    ld a, l                                       ; $7ccc: $7d
    ld a, a                                       ; $7ccd: $7f
    ld a, l                                       ; $7cce: $7d
    ld a, a                                       ; $7ccf: $7f
    ld a, l                                       ; $7cd0: $7d
    ld a, a                                       ; $7cd1: $7f
    ld a, l                                       ; $7cd2: $7d
    sbc a                                         ; $7cd3: $9f
    ld a, l                                       ; $7cd4: $7d

    db $ef, $3d, $ff, $49, $4a, $29, $01, $00, $1f, $7c, $1f, $30, $ff, $0b, $67, $7c
    db $e0, $03, $ff, $7f, $76, $5f, $ef, $3d, $ff, $7d, $bd, $77, $f7, $5e, $52, $4e
    db $00, $7c, $de, $7b, $ca, $45, $20, $14, $ef, $3d, $b9, $7f, $05, $66, $a1, $14
    db $ef, $3d, $ff, $0b, $ef, $3d, $ef, $3d, $ef, $3d, $67, $7c, $ef, $3d, $ef, $3d
    db $1f, $7c, $ff, $49, $6b, $2d, $00, $00, $1f, $7c, $ff, $45, $4b, $0a, $00, $00
    db $1f, $7c, $3f, $3e, $0b, $2c, $00, $00, $1f, $7c, $1b, $00, $36, $22, $00, $00
    db $1f, $7c, $7f, $4a, $20, $79, $00, $00, $1f, $7c, $7f, $5a, $18, $44, $00, $00
    db $1f, $7c, $5e, $4e, $0e, $50, $00, $00, $1f, $7c, $3b, $36, $ea, $0c, $00, $00

    ret nz                                        ; $7d55: $c0

    jr nc, @+$01                                  ; $7d56: $30 $ff

    ld c, c                                       ; $7d58: $49
    ld l, e                                       ; $7d59: $6b
    dec l                                         ; $7d5a: $2d
    nop                                           ; $7d5b: $00
    nop                                           ; $7d5c: $00
    ret nz                                        ; $7d5d: $c0

    jr nc, @-$63                                  ; $7d5e: $30 $9b

    ld a, $26                                     ; $7d60: $3e $26
    dec [hl]                                      ; $7d62: $35
    nop                                           ; $7d63: $00
    nop                                           ; $7d64: $00
    rra                                           ; $7d65: $1f
    ld a, h                                       ; $7d66: $7c
    rra                                           ; $7d67: $1f
    ld a, h                                       ; $7d68: $7c
    rra                                           ; $7d69: $1f
    ld a, h                                       ; $7d6a: $7c
    rra                                           ; $7d6b: $1f
    ld a, h                                       ; $7d6c: $7c
    ret nz                                        ; $7d6d: $c0

    jr nc, jr_0d6_7d8b                            ; $7d6e: $30 $1b

    nop                                           ; $7d70: $00
    ld [hl], $22                                  ; $7d71: $36 $22
    nop                                           ; $7d73: $00
    nop                                           ; $7d74: $00
    rra                                           ; $7d75: $1f
    ld a, h                                       ; $7d76: $7c
    rra                                           ; $7d77: $1f
    ld a, h                                       ; $7d78: $7c
    rra                                           ; $7d79: $1f
    ld a, h                                       ; $7d7a: $7c

jr_0d6_7d7b:
    rra                                           ; $7d7b: $1f
    ld a, h                                       ; $7d7c: $7c
    rra                                           ; $7d7d: $1f
    ld a, h                                       ; $7d7e: $7c
    rra                                           ; $7d7f: $1f
    ld a, h                                       ; $7d80: $7c
    rra                                           ; $7d81: $1f
    ld a, h                                       ; $7d82: $7c
    rra                                           ; $7d83: $1f
    ld a, h                                       ; $7d84: $7c
    rra                                           ; $7d85: $1f
    ld a, h                                       ; $7d86: $7c
    rra                                           ; $7d87: $1f
    ld a, h                                       ; $7d88: $7c
    rra                                           ; $7d89: $1f
    ld a, h                                       ; $7d8a: $7c

jr_0d6_7d8b:
    rra                                           ; $7d8b: $1f
    ld a, h                                       ; $7d8c: $7c
    rra                                           ; $7d8d: $1f
    ld a, h                                       ; $7d8e: $7c
    rra                                           ; $7d8f: $1f
    ld a, h                                       ; $7d90: $7c
    rra                                           ; $7d91: $1f
    ld a, h                                       ; $7d92: $7c
    rra                                           ; $7d93: $1f
    ld a, h                                       ; $7d94: $7c
    ret nz                                        ; $7d95: $c0

    jr nc, @+$01                                  ; $7d96: $30 $ff

    ld c, c                                       ; $7d98: $49
    ld l, e                                       ; $7d99: $6b
    dec l                                         ; $7d9a: $2d
    nop                                           ; $7d9b: $00
    nop                                           ; $7d9c: $00
    ret nz                                        ; $7d9d: $c0

    jr nc, jr_0d6_7db6                            ; $7d9e: $30 $16

    cpl                                           ; $7da0: $2f
    xor e                                         ; $7da1: $ab
    ld c, l                                       ; $7da2: $4d
    nop                                           ; $7da3: $00
    nop                                           ; $7da4: $00
    rra                                           ; $7da5: $1f
    ld a, h                                       ; $7da6: $7c
    rra                                           ; $7da7: $1f
    ld a, h                                       ; $7da8: $7c
    rra                                           ; $7da9: $1f
    ld a, h                                       ; $7daa: $7c
    rra                                           ; $7dab: $1f
    ld a, h                                       ; $7dac: $7c
    ret nz                                        ; $7dad: $c0

    jr nc, jr_0d6_7dcb                            ; $7dae: $30 $1b

    nop                                           ; $7db0: $00
    ld [hl], $22                                  ; $7db1: $36 $22
    nop                                           ; $7db3: $00
    nop                                           ; $7db4: $00
    rra                                           ; $7db5: $1f

jr_0d6_7db6:
    ld a, h                                       ; $7db6: $7c
    rra                                           ; $7db7: $1f
    ld a, h                                       ; $7db8: $7c
    rra                                           ; $7db9: $1f
    ld a, h                                       ; $7dba: $7c
    rra                                           ; $7dbb: $1f
    ld a, h                                       ; $7dbc: $7c
    rra                                           ; $7dbd: $1f
    ld a, h                                       ; $7dbe: $7c
    rra                                           ; $7dbf: $1f
    ld a, h                                       ; $7dc0: $7c
    rra                                           ; $7dc1: $1f
    ld a, h                                       ; $7dc2: $7c
    rra                                           ; $7dc3: $1f
    ld a, h                                       ; $7dc4: $7c
    rra                                           ; $7dc5: $1f
    ld a, h                                       ; $7dc6: $7c
    rra                                           ; $7dc7: $1f
    ld a, h                                       ; $7dc8: $7c
    rra                                           ; $7dc9: $1f
    ld a, h                                       ; $7dca: $7c

jr_0d6_7dcb:
    rra                                           ; $7dcb: $1f
    ld a, h                                       ; $7dcc: $7c
    rra                                           ; $7dcd: $1f
    ld a, h                                       ; $7dce: $7c
    rra                                           ; $7dcf: $1f
    ld a, h                                       ; $7dd0: $7c
    rra                                           ; $7dd1: $1f
    ld a, h                                       ; $7dd2: $7c
    rra                                           ; $7dd3: $1f
    ld a, h                                       ; $7dd4: $7c
    ret nz                                        ; $7dd5: $c0

    jr nc, @+$01                                  ; $7dd6: $30 $ff

    ld c, c                                       ; $7dd8: $49
    ld l, e                                       ; $7dd9: $6b
    dec l                                         ; $7dda: $2d
    nop                                           ; $7ddb: $00
    nop                                           ; $7ddc: $00
    ret nz                                        ; $7ddd: $c0

    jr nc, jr_0d6_7d7b                            ; $7dde: $30 $9b

    ld h, $4d                                     ; $7de0: $26 $4d
    ld sp, $0000                                  ; $7de2: $31 $00 $00
    rra                                           ; $7de5: $1f
    ld a, h                                       ; $7de6: $7c
    rra                                           ; $7de7: $1f
    ld a, h                                       ; $7de8: $7c
    rra                                           ; $7de9: $1f
    ld a, h                                       ; $7dea: $7c
    rra                                           ; $7deb: $1f
    ld a, h                                       ; $7dec: $7c
    ret nz                                        ; $7ded: $c0

    jr nc, jr_0d6_7e0b                            ; $7dee: $30 $1b

    nop                                           ; $7df0: $00
    ld [hl], $22                                  ; $7df1: $36 $22
    nop                                           ; $7df3: $00
    nop                                           ; $7df4: $00
    rra                                           ; $7df5: $1f
    ld a, h                                       ; $7df6: $7c
    rra                                           ; $7df7: $1f
    ld a, h                                       ; $7df8: $7c
    rra                                           ; $7df9: $1f

jr_0d6_7dfa:
    ld a, h                                       ; $7dfa: $7c
    rra                                           ; $7dfb: $1f
    ld a, h                                       ; $7dfc: $7c
    rra                                           ; $7dfd: $1f
    ld a, h                                       ; $7dfe: $7c
    rra                                           ; $7dff: $1f
    ld a, h                                       ; $7e00: $7c
    rra                                           ; $7e01: $1f
    ld a, h                                       ; $7e02: $7c
    rra                                           ; $7e03: $1f
    ld a, h                                       ; $7e04: $7c
    rra                                           ; $7e05: $1f
    ld a, h                                       ; $7e06: $7c
    rra                                           ; $7e07: $1f
    ld a, h                                       ; $7e08: $7c
    rra                                           ; $7e09: $1f
    ld a, h                                       ; $7e0a: $7c

jr_0d6_7e0b:
    rra                                           ; $7e0b: $1f
    ld a, h                                       ; $7e0c: $7c
    rra                                           ; $7e0d: $1f
    ld a, h                                       ; $7e0e: $7c
    rra                                           ; $7e0f: $1f
    ld a, h                                       ; $7e10: $7c
    rra                                           ; $7e11: $1f
    ld a, h                                       ; $7e12: $7c
    rra                                           ; $7e13: $1f
    ld a, h                                       ; $7e14: $7c

    db $c0, $30, $ff, $49, $6b, $2d, $00, $00, $c0, $30, $db, $4a, $b1, $4c, $00, $00
    db $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c, $c0, $30, $1b, $00, $36, $22, $df, $02
    db $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c
    db $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c, $1f, $7c, $3b, $36, $ea, $0c, $00, $00

    ret nz                                        ; $7e55: $c0

    jr nc, @+$01                                  ; $7e56: $30 $ff

    ld c, c                                       ; $7e58: $49
    ld l, e                                       ; $7e59: $6b
    dec l                                         ; $7e5a: $2d
    nop                                           ; $7e5b: $00
    nop                                           ; $7e5c: $00
    ret nz                                        ; $7e5d: $c0

    jr nc, jr_0d6_7dfa                            ; $7e5e: $30 $9a

    ld c, d                                       ; $7e60: $4a
    ld h, b                                       ; $7e61: $60
    ld [hl-], a                                   ; $7e62: $32
    nop                                           ; $7e63: $00
    nop                                           ; $7e64: $00
    rra                                           ; $7e65: $1f
    ld a, h                                       ; $7e66: $7c
    rra                                           ; $7e67: $1f
    ld a, h                                       ; $7e68: $7c
    rra                                           ; $7e69: $1f
    ld a, h                                       ; $7e6a: $7c
    rra                                           ; $7e6b: $1f
    ld a, h                                       ; $7e6c: $7c
    ret nz                                        ; $7e6d: $c0

    jr nc, jr_0d6_7e8b                            ; $7e6e: $30 $1b

    nop                                           ; $7e70: $00
    ld [hl], $22                                  ; $7e71: $36 $22
    nop                                           ; $7e73: $00
    nop                                           ; $7e74: $00
    rra                                           ; $7e75: $1f
    ld a, h                                       ; $7e76: $7c
    rra                                           ; $7e77: $1f
    ld a, h                                       ; $7e78: $7c
    rra                                           ; $7e79: $1f
    ld a, h                                       ; $7e7a: $7c
    rra                                           ; $7e7b: $1f
    ld a, h                                       ; $7e7c: $7c
    rra                                           ; $7e7d: $1f
    ld a, h                                       ; $7e7e: $7c
    rra                                           ; $7e7f: $1f
    ld a, h                                       ; $7e80: $7c
    rra                                           ; $7e81: $1f
    ld a, h                                       ; $7e82: $7c
    rra                                           ; $7e83: $1f
    ld a, h                                       ; $7e84: $7c
    rra                                           ; $7e85: $1f
    ld a, h                                       ; $7e86: $7c
    rra                                           ; $7e87: $1f
    ld a, h                                       ; $7e88: $7c
    rra                                           ; $7e89: $1f
    ld a, h                                       ; $7e8a: $7c

jr_0d6_7e8b:
    rra                                           ; $7e8b: $1f
    ld a, h                                       ; $7e8c: $7c
    rra                                           ; $7e8d: $1f
    ld a, h                                       ; $7e8e: $7c
    rra                                           ; $7e8f: $1f
    ld a, h                                       ; $7e90: $7c
    rra                                           ; $7e91: $1f
    ld a, h                                       ; $7e92: $7c
    rra                                           ; $7e93: $1f
    ld a, h                                       ; $7e94: $7c
    ret nz                                        ; $7e95: $c0

    jr nc, @+$01                                  ; $7e96: $30 $ff

    ld c, c                                       ; $7e98: $49
    ld l, e                                       ; $7e99: $6b
    dec l                                         ; $7e9a: $2d
    nop                                           ; $7e9b: $00
    nop                                           ; $7e9c: $00
    ret nz                                        ; $7e9d: $c0

    jr nc, jr_0d6_7edc                            ; $7e9e: $30 $3c

    ld a, $15                                     ; $7ea0: $3e $15
    inc [hl]                                      ; $7ea2: $34
    nop                                           ; $7ea3: $00
    nop                                           ; $7ea4: $00
    ret nz                                        ; $7ea5: $c0

    jr nc, @+$81                                  ; $7ea6: $30 $7f

    ld c, [hl]                                    ; $7ea8: $4e
    sbc b                                         ; $7ea9: $98
    ld d, $00                                     ; $7eaa: $16 $00
    nop                                           ; $7eac: $00
    ret nz                                        ; $7ead: $c0

    jr nc, jr_0d6_7ecb                            ; $7eae: $30 $1b

    nop                                           ; $7eb0: $00
    ld [hl], $22                                  ; $7eb1: $36 $22
    nop                                           ; $7eb3: $00
    nop                                           ; $7eb4: $00
    ret nz                                        ; $7eb5: $c0

    jr nc, @+$01                                  ; $7eb6: $30 $ff

    ld a, a                                       ; $7eb8: $7f
    add b                                         ; $7eb9: $80
    ld [bc], a                                    ; $7eba: $02
    ld h, b                                       ; $7ebb: $60
    ld c, l                                       ; $7ebc: $4d
    rra                                           ; $7ebd: $1f
    ld a, h                                       ; $7ebe: $7c
    rra                                           ; $7ebf: $1f
    ld a, h                                       ; $7ec0: $7c
    rra                                           ; $7ec1: $1f
    ld a, h                                       ; $7ec2: $7c
    rra                                           ; $7ec3: $1f
    ld a, h                                       ; $7ec4: $7c
    rra                                           ; $7ec5: $1f
    ld a, h                                       ; $7ec6: $7c
    rra                                           ; $7ec7: $1f
    ld a, h                                       ; $7ec8: $7c
    rra                                           ; $7ec9: $1f
    ld a, h                                       ; $7eca: $7c

jr_0d6_7ecb:
    rra                                           ; $7ecb: $1f
    ld a, h                                       ; $7ecc: $7c
    rra                                           ; $7ecd: $1f
    ld a, h                                       ; $7ece: $7c
    rra                                           ; $7ecf: $1f
    ld a, h                                       ; $7ed0: $7c
    rra                                           ; $7ed1: $1f
    ld a, h                                       ; $7ed2: $7c
    rra                                           ; $7ed3: $1f
    ld a, h                                       ; $7ed4: $7c
    ret nz                                        ; $7ed5: $c0

    jr nc, @+$01                                  ; $7ed6: $30 $ff

    ld c, c                                       ; $7ed8: $49
    ld l, e                                       ; $7ed9: $6b
    dec l                                         ; $7eda: $2d
    nop                                           ; $7edb: $00

jr_0d6_7edc:
    nop                                           ; $7edc: $00
    ret nz                                        ; $7edd: $c0

    jr nc, @+$41                                  ; $7ede: $30 $3f

    ld a, $11                                     ; $7ee0: $3e $11
    ld d, b                                       ; $7ee2: $50
    nop                                           ; $7ee3: $00
    nop                                           ; $7ee4: $00
    rra                                           ; $7ee5: $1f
    ld a, h                                       ; $7ee6: $7c
    rra                                           ; $7ee7: $1f
    ld a, h                                       ; $7ee8: $7c
    rra                                           ; $7ee9: $1f
    ld a, h                                       ; $7eea: $7c
    rra                                           ; $7eeb: $1f
    ld a, h                                       ; $7eec: $7c
    ret nz                                        ; $7eed: $c0

    jr nc, jr_0d6_7f0b                            ; $7eee: $30 $1b

    nop                                           ; $7ef0: $00
    ld [hl], $22                                  ; $7ef1: $36 $22
    nop                                           ; $7ef3: $00
    nop                                           ; $7ef4: $00
    rra                                           ; $7ef5: $1f
    ld a, h                                       ; $7ef6: $7c
    rra                                           ; $7ef7: $1f
    ld a, h                                       ; $7ef8: $7c
    rra                                           ; $7ef9: $1f
    ld a, h                                       ; $7efa: $7c
    rra                                           ; $7efb: $1f
    ld a, h                                       ; $7efc: $7c
    rra                                           ; $7efd: $1f
    ld a, h                                       ; $7efe: $7c
    rra                                           ; $7eff: $1f
    ld a, h                                       ; $7f00: $7c
    rra                                           ; $7f01: $1f
    ld a, h                                       ; $7f02: $7c
    rra                                           ; $7f03: $1f
    ld a, h                                       ; $7f04: $7c
    rra                                           ; $7f05: $1f
    ld a, h                                       ; $7f06: $7c
    rra                                           ; $7f07: $1f
    ld a, h                                       ; $7f08: $7c
    rra                                           ; $7f09: $1f
    ld a, h                                       ; $7f0a: $7c

jr_0d6_7f0b:
    rra                                           ; $7f0b: $1f
    ld a, h                                       ; $7f0c: $7c
    rra                                           ; $7f0d: $1f
    ld a, h                                       ; $7f0e: $7c
    rra                                           ; $7f0f: $1f
    ld a, h                                       ; $7f10: $7c
    rra                                           ; $7f11: $1f
    ld a, h                                       ; $7f12: $7c
    rra                                           ; $7f13: $1f
    ld a, h                                       ; $7f14: $7c

    db $f4, $61, $ff, $49, $4a, $29, $00, $00, $f4, $61, $1f, $2e, $15, $00, $00, $00
    db $f4, $61, $3f, $3a, $0b, $2c, $00, $00, $f4, $61, $1b, $00, $36, $22, $00, $00
    db $f4, $61, $ff, $05, $45, $51, $00, $00, $f4, $61, $1f, $2e, $8c, $31, $00, $00
    db $f4, $61, $1f, $2e, $e0, $01, $00, $00, $f4, $61, $3b, $36, $ea, $0c, $00, $00
    db $eb, $2c, $d9, $45, $29, $31, $00, $00, $eb, $2c, $97, $15, $0e, $04, $00, $00
    db $eb, $2c, $ff, $7f, $ff, $05, $0f, $00, $eb, $2c, $0f, $08, $d1, $19, $00, $00
    db $eb, $2c, $ff, $7f, $80, $7d, $00, $00, $eb, $2c, $1f, $7c, $1f, $7c, $1f, $7c
    db $eb, $2c, $1f, $7c, $1f, $7c, $1f, $7c, $eb, $2c, $16, $32, $87, $00, $00, $00

    or e                                          ; $7f95: $b3
    ld c, b                                       ; $7f96: $48
    add b                                         ; $7f97: $80
    inc h                                         ; $7f98: $24
    ret nz                                        ; $7f99: $c0

    ld h, c                                       ; $7f9a: $61
    ld a, [bc]                                    ; $7f9b: $0a
    ld a, e                                       ; $7f9c: $7b
    or e                                          ; $7f9d: $b3
    ld d, b                                       ; $7f9e: $50
    add b                                         ; $7f9f: $80
    jr jr_0d6_7fc2                                ; $7fa0: $18 $20

    dec h                                         ; $7fa2: $25
    ld h, b                                       ; $7fa3: $60
    ld d, e                                       ; $7fa4: $53
    or e                                          ; $7fa5: $b3
    ld d, b                                       ; $7fa6: $50
    ld [hl], l                                    ; $7fa7: $75
    ld c, $4f                                     ; $7fa8: $0e $4f
    ld bc, $00a7                                  ; $7faa: $01 $a7 $00
    or e                                          ; $7fad: $b3
    ld d, b                                       ; $7fae: $50
    db $db                                        ; $7faf: $db
    ld a, [bc]                                    ; $7fb0: $0a
    ld l, c                                       ; $7fb1: $69
    ld c, c                                       ; $7fb2: $49
    nop                                           ; $7fb3: $00
    inc c                                         ; $7fb4: $0c
    or e                                          ; $7fb5: $b3
    ld d, b                                       ; $7fb6: $50
    ld b, $0c                                     ; $7fb7: $06 $0c
    rrca                                          ; $7fb9: $0f
    jr jr_0d6_7fd3                                ; $7fba: $18 $17

    ld b, b                                       ; $7fbc: $40
    or e                                          ; $7fbd: $b3
    ld d, b                                       ; $7fbe: $50
    ldh [rP1], a                                  ; $7fbf: $e0 $00
    nop                                           ; $7fc1: $00

jr_0d6_7fc2:
    ld [bc], a                                    ; $7fc2: $02
    ld a, c                                       ; $7fc3: $79
    inc bc                                        ; $7fc4: $03
    or e                                          ; $7fc5: $b3
    ld d, b                                       ; $7fc6: $50
    rst $38                                       ; $7fc7: $ff
    ld c, c                                       ; $7fc8: $49
    ld l, e                                       ; $7fc9: $6b
    dec l                                         ; $7fca: $2d
    nop                                           ; $7fcb: $00
    nop                                           ; $7fcc: $00
    or e                                          ; $7fcd: $b3
    ld d, b                                       ; $7fce: $50
    dec sp                                        ; $7fcf: $3b
    ld [hl], $ea                                  ; $7fd0: $36 $ea
    inc c                                         ; $7fd2: $0c

jr_0d6_7fd3:
    nop                                           ; $7fd3: $00
    nop                                           ; $7fd4: $00
    di                                            ; $7fd5: $f3
    ld a, a                                       ; $7fd6: $7f
    rst $38                                       ; $7fd7: $ff
    ld a, a                                       ; $7fd8: $7f
    ld l, $52                                     ; $7fd9: $2e $52
    ld h, [hl]                                    ; $7fdb: $66
    db $30                                        ; $7fdc: $30

    db $ff, $7f, $ff, $4b, $00, $7e, $bf, $01

    rst $38                                       ; $7fe5: $ff
    ld a, a                                       ; $7fe6: $7f
    push af                                       ; $7fe7: $f5
    ld a, a                                       ; $7fe8: $7f
    ld d, b                                       ; $7fe9: $50
    ld [hl], e                                    ; $7fea: $73
    ld h, h                                       ; $7feb: $64
    inc l                                         ; $7fec: $2c

    db $ff, $7f, $b8, $7f, $ea, $51, $01, $24, $80, $02, $d7, $5a, $11, $42, $4c, $29

    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
