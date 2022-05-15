; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $09d", ROMX[$4000], BANK[$9d]

    sbc l                                         ; $4000: $9d
    db $10                                        ; $4001: $10

Call_09d_4002:
    rla                                           ; $4002: $17
    call nc, Call_09d_420c                        ; $4003: $d4 $0c $42
    rst $38                                       ; $4006: $ff
    ld bc, $8360                                  ; $4007: $01 $60 $83
    rst $38                                       ; $400a: $ff
    pop bc                                        ; $400b: $c1
    cp a                                          ; $400c: $bf
    inc b                                         ; $400d: $04
    ld c, b                                       ; $400e: $48
    ld l, d                                       ; $400f: $6a
    nop                                           ; $4010: $00
    sub l                                         ; $4011: $95
    rst $18                                       ; $4012: $df
    nop                                           ; $4013: $00
    db $fd                                        ; $4014: $fd
    nop                                           ; $4015: $00
    and a                                         ; $4016: $a7
    nop                                           ; $4017: $00

jr_09d_4018:
    ld b, b                                       ; $4018: $40
    inc b                                         ; $4019: $04
    nop                                           ; $401a: $00
    adc c                                         ; $401b: $89
    nop                                           ; $401c: $00
    ld [de], a                                    ; $401d: $12
    nop                                           ; $401e: $00
    ld bc, $2058                                  ; $401f: $01 $58 $20
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00
    add d                                         ; $4024: $82
    nop                                           ; $4025: $00
    ld d, h                                       ; $4026: $54
    nop                                           ; $4027: $00
    db $eb                                        ; $4028: $eb
    nop                                           ; $4029: $00
    or [hl]                                       ; $402a: $b6
    nop                                           ; $402b: $00
    add b                                         ; $402c: $80
    inc h                                         ; $402d: $24
    nop                                           ; $402e: $00
    ld [bc], a                                    ; $402f: $02
    ld a, a                                       ; $4030: $7f
    add b                                         ; $4031: $80
    xor d                                         ; $4032: $aa
    ld d, l                                       ; $4033: $55
    inc d                                         ; $4034: $14
    db $eb                                        ; $4035: $eb
    nop                                           ; $4036: $00
    jr nz, jr_09d_4018                            ; $4037: $20 $df

    nop                                           ; $4039: $00
    rst $38                                       ; $403a: $ff
    ld bc, $0aff                                  ; $403b: $01 $ff $0a
    rst $38                                       ; $403e: $ff
    inc b                                         ; $403f: $04
    or l                                          ; $4040: $b5
    rst $38                                       ; $4041: $ff
    ld c, e                                       ; $4042: $4b
    rst $38                                       ; $4043: $ff
    or a                                          ; $4044: $b7
    ld e, l                                       ; $4045: $5d
    nop                                           ; $4046: $00
    ld a, [$0005]                                 ; $4047: $fa $05 $00

jr_09d_404a:
    db $fd                                        ; $404a: $fd
    ld [bc], a                                    ; $404b: $02
    rst $38                                       ; $404c: $ff
    ld bc, $016e                                  ; $404d: $01 $6e $01
    sbc [hl]                                      ; $4050: $9e
    ld bc, $2600                                  ; $4051: $01 $00 $26
    ld bc, $0316                                  ; $4054: $01 $16 $03
    inc c                                         ; $4057: $0c
    rlca                                          ; $4058: $07
    or l                                          ; $4059: $b5
    ld c, d                                       ; $405a: $4a
    jr nz, jr_09d_40dc                            ; $405b: $20 $7f

    add b                                         ; $405d: $80
    inc hl                                        ; $405e: $23
    nop                                           ; $405f: $00
    add b                                         ; $4060: $80
    di                                            ; $4061: $f3
    add b                                         ; $4062: $80
    jp hl                                         ; $4063: $e9


    add b                                         ; $4064: $80
    nop                                           ; $4065: $00
    ld a, [c]                                     ; $4066: $f2
    ret nz                                        ; $4067: $c0

    jr nc, jr_09d_404a                            ; $4068: $30 $e0

    db $eb                                        ; $406a: $eb
    inc d                                         ; $406b: $14
    cp $00                                        ; $406c: $fe $00
    nop                                           ; $406e: $00
    rst $38                                       ; $406f: $ff
    nop                                           ; $4070: $00
    ld a, h                                       ; $4071: $7c
    nop                                           ; $4072: $00
    xor c                                         ; $4073: $a9
    nop                                           ; $4074: $00
    ld d, d                                       ; $4075: $52
    nop                                           ; $4076: $00
    ld b, b                                       ; $4077: $40
    add b                                         ; $4078: $80
    ld h, b                                       ; $4079: $60
    nop                                           ; $407a: $00
    push de                                       ; $407b: $d5
    ld a, [hl+]                                   ; $407c: $2a
    ei                                            ; $407d: $fb
    inc b                                         ; $407e: $04
    rst $28                                       ; $407f: $ef
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    or a                                          ; $4082: $b7
    nop                                           ; $4083: $00
    ld e, l                                       ; $4084: $5d
    nop                                           ; $4085: $00
    dec hl                                        ; $4086: $2b
    nop                                           ; $4087: $00
    sub l                                         ; $4088: $95
    nop                                           ; $4089: $00
    nop                                           ; $408a: $00
    add hl, bc                                    ; $408b: $09
    nop                                           ; $408c: $00
    inc de                                        ; $408d: $13
    rrca                                          ; $408e: $0f
    dec b                                         ; $408f: $05
    jr @+$2d                                      ; $4090: $18 $2b

    stop                                          ; $4092: $10 $00
    ld hl, $2b30                                  ; $4094: $21 $30 $2b
    jr nc, jr_09d_40ce                            ; $4097: $30 $35

    jr @+$61                                      ; $4099: $18 $5f

    rrca                                          ; $409b: $0f
    nop                                           ; $409c: $00
    ld d, $00                                     ; $409d: $16 $00
    ret c                                         ; $409f: $d8

    ldh a, [rOBP0]                                ; $40a0: $f0 $48
    cp b                                          ; $40a2: $b8
    xor h                                         ; $40a3: $ac
    ld e, b                                       ; $40a4: $58
    nop                                           ; $40a5: $00
    call nz, $e43c                                ; $40a6: $c4 $3c $e4
    inc e                                         ; $40a9: $1c
    call z, $f938                                 ; $40aa: $cc $38 $f9
    ldh a, [$d0]                                  ; $40ad: $f0 $d0
    ld [hl-], a                                   ; $40af: $32
    ld [$2895], sp                                ; $40b0: $08 $95 $28
    ld [bc], a                                    ; $40b3: $02
    sub b                                         ; $40b4: $90
    nop                                           ; $40b5: $00
    stop                                          ; $40b6: $10 $00
    ld bc, $2800                                  ; $40b8: $01 $00 $28
    nop                                           ; $40bb: $00
    ld bc, $1804                                  ; $40bc: $01 $04 $18
    inc b                                         ; $40bf: $04
    ld [$c800], sp                                ; $40c0: $08 $00 $c8
    ld bc, $20ad                                  ; $40c3: $01 $ad $20
    nop                                           ; $40c6: $00
    ld [hl], a                                    ; $40c7: $77
    ld h, b                                       ; $40c8: $60
    nop                                           ; $40c9: $00
    push af                                       ; $40ca: $f5
    ld a, [bc]                                    ; $40cb: $0a
    xor c                                         ; $40cc: $a9
    ld d, [hl]                                    ; $40cd: $56

jr_09d_40ce:
    ld d, e                                       ; $40ce: $53
    nop                                           ; $40cf: $00
    xor h                                         ; $40d0: $ac
    add l                                         ; $40d1: $85
    ld a, d                                       ; $40d2: $7a
    ld a, [bc]                                    ; $40d3: $0a
    push af                                       ; $40d4: $f5
    push af                                       ; $40d5: $f5
    nop                                           ; $40d6: $00
    cp [hl]                                       ; $40d7: $be
    add b                                         ; $40d8: $80
    xor [hl]                                      ; $40d9: $ae
    nop                                           ; $40da: $00
    rst $30                                       ; $40db: $f7

jr_09d_40dc:
    ld [$817e], sp                                ; $40dc: $08 $7e $81
    sbc l                                         ; $40df: $9d
    ld h, d                                       ; $40e0: $62
    ld a, [hl+]                                   ; $40e1: $2a
    ld [$40d5], sp                                ; $40e2: $08 $d5 $40
    cp a                                          ; $40e5: $bf
    add l                                         ; $40e6: $85
    ret nz                                        ; $40e7: $c0

    nop                                           ; $40e8: $00
    rst $18                                       ; $40e9: $df
    nop                                           ; $40ea: $00
    ei                                            ; $40eb: $fb
    nop                                           ; $40ec: $00
    inc b                                         ; $40ed: $04
    cp a                                          ; $40ee: $bf
    ld b, b                                       ; $40ef: $40
    dec e                                         ; $40f0: $1d
    ld [c], a                                     ; $40f1: $e2
    daa                                           ; $40f2: $27
    ret c                                         ; $40f3: $d8

    ld c, d                                       ; $40f4: $4a
    nop                                           ; $40f5: $00
    or l                                          ; $40f6: $b5
    and d                                         ; $40f7: $a2
    ld bc, $01dc                                  ; $40f8: $01 $dc $01
    ld a, e                                       ; $40fb: $7b
    ld bc, $00ee                                  ; $40fc: $01 $ee $00

Jump_09d_40ff:
    ld bc, $01ff                                  ; $40ff: $01 $ff $01
    call c, $eb23                                 ; $4102: $dc $23 $eb
    dec d                                         ; $4105: $15
    sub b                                         ; $4106: $90
    nop                                           ; $4107: $00
    ld l, a                                       ; $4108: $6f
    db $10                                        ; $4109: $10
    rst $28                                       ; $410a: $ef
    nop                                           ; $410b: $00
    rst $38                                       ; $410c: $ff
    ld [$a0ff], sp                                ; $410d: $08 $ff $a0
    ld [bc], a                                    ; $4110: $02
    rst $38                                       ; $4111: $ff
    ld b, c                                       ; $4112: $41
    rst $38                                       ; $4113: $ff
    xor d                                         ; $4114: $aa
    rst $38                                       ; $4115: $ff
    rst $30                                       ; $4116: $f7
    dec l                                         ; $4117: $2d
    ld bc, $0010                                  ; $4118: $01 $10 $00
    rst $28                                       ; $411b: $ef
    ld [$10ff], sp                                ; $411c: $08 $ff $10
    rst $38                                       ; $411f: $ff
    add hl, hl                                    ; $4120: $29
    rst $38                                       ; $4121: $ff
    ld d, h                                       ; $4122: $54
    ld [$aeff], sp                                ; $4123: $08 $ff $ae
    rst $38                                       ; $4126: $ff
    db $dd                                        ; $4127: $dd
    dec a                                         ; $4128: $3d
    ld bc, $6e91                                  ; $4129: $01 $91 $6e
    ld [bc], a                                    ; $412c: $02
    nop                                           ; $412d: $00
    db $fd                                        ; $412e: $fd
    ld b, b                                       ; $412f: $40
    rst $38                                       ; $4130: $ff
    nop                                           ; $4131: $00
    rst $38                                       ; $4132: $ff
    ld b, b                                       ; $4133: $40
    rst $38                                       ; $4134: $ff
    add c                                         ; $4135: $81
    add [hl]                                      ; $4136: $86
    or $00                                        ; $4137: $f6 $00
    rst $10                                       ; $4139: $d7
    rst $38                                       ; $413a: $ff
    inc bc                                        ; $413b: $03
    db $fd                                        ; $413c: $fd
    dec sp                                        ; $413d: $3b
    nop                                           ; $413e: $00
    ld l, $00                                     ; $413f: $2e $00
    inc hl                                        ; $4141: $23
    ld [$55ff], sp                                ; $4142: $08 $ff $55
    rst $38                                       ; $4145: $ff
    db $eb                                        ; $4146: $eb
    ld e, l                                       ; $4147: $5d
    ld bc, $fb84                                  ; $4148: $01 $84 $fb
    add h                                         ; $414b: $84
    nop                                           ; $414c: $00
    di                                            ; $414d: $f3
    add h                                         ; $414e: $84
    jp z, $e0ff                                   ; $414f: $ca $ff $e0

    xor d                                         ; $4152: $aa
    push de                                       ; $4153: $d5
    add b                                         ; $4154: $80
    ld b, b                                       ; $4155: $40
    rst $38                                       ; $4156: $ff
    ld [bc], a                                    ; $4157: $02
    nop                                           ; $4158: $00
    ld [$35ca], a                                 ; $4159: $ea $ca $35
    add d                                         ; $415c: $82
    ld a, a                                       ; $415d: $7f
    add e                                         ; $415e: $83
    nop                                           ; $415f: $00
    db $db                                        ; $4160: $db
    add e                                         ; $4161: $83
    xor $fe                                       ; $4162: $ee $fe
    pop hl                                        ; $4164: $e1
    add d                                         ; $4165: $82
    ld a, a                                       ; $4166: $7f
    add d                                         ; $4167: $82
    nop                                           ; $4168: $00
    ei                                            ; $4169: $fb
    add e                                         ; $416a: $83
    ld d, [hl]                                    ; $416b: $56
    ld b, b                                       ; $416c: $40
    xor l                                         ; $416d: $ad
    ld b, e                                       ; $416e: $43
    inc d                                         ; $416f: $14
    cp $00                                        ; $4170: $fe $00
    sbc c                                         ; $4172: $99
    ld c, d                                       ; $4173: $4a
    or l                                          ; $4174: $b5
    rrca                                          ; $4175: $0f
    di                                            ; $4176: $f3
    inc c                                         ; $4177: $0c
    ld a, e                                       ; $4178: $7b
    ld [$ad00], sp                                ; $4179: $08 $00 $ad
    rst $38                                       ; $417c: $ff
    sbc b                                         ; $417d: $98
    ld hl, $ff57                                  ; $417e: $21 $57 $ff
    ld h, e                                       ; $4181: $63
    dec hl                                        ; $4182: $2b
    nop                                           ; $4183: $00
    push de                                       ; $4184: $d5
    ld hl, $e15f                                  ; $4185: $21 $5f $e1
    ccf                                           ; $4188: $3f
    and c                                         ; $4189: $a1
    ld c, e                                       ; $418a: $4b
    ld hl, $f100                                  ; $418b: $21 $00 $f1
    ccf                                           ; $418e: $3f
    push hl                                       ; $418f: $e5
    add b                                         ; $4190: $80
    push bc                                       ; $4191: $c5
    rst $38                                       ; $4192: $ff
    pop af                                        ; $4193: $f1
    adc h                                         ; $4194: $8c
    nop                                           ; $4195: $00
    di                                            ; $4196: $f3
    adc b                                         ; $4197: $88
    rst $30                                       ; $4198: $f7
    adc b                                         ; $4199: $88
    and $88                                       ; $419a: $e6 $88
    pop de                                        ; $419c: $d1
    rst $38                                       ; $419d: $ff
    ld bc, $84a6                                  ; $419e: $01 $a6 $84
    ei                                            ; $41a1: $fb
    cp $41                                        ; $41a2: $fe $41
    xor c                                         ; $41a4: $a9
    sub $4a                                       ; $41a5: $d6 $4a
    nop                                           ; $41a7: $00
    nop                                           ; $41a8: $00
    ld d, [hl]                                    ; $41a9: $56
    add b                                         ; $41aa: $80
    dec l                                         ; $41ab: $2d
    rst $38                                       ; $41ac: $ff
    and c                                         ; $41ad: $a1
    sub [hl]                                      ; $41ae: $96
    ld l, l                                       ; $41af: $6d
    inc b                                         ; $41b0: $04
    inc b                                         ; $41b1: $04
    ei                                            ; $41b2: $fb
    push de                                       ; $41b3: $d5
    ld a, [hl+]                                   ; $41b4: $2a
    add c                                         ; $41b5: $81
    ld a, a                                       ; $41b6: $7f
    ld [bc], a                                    ; $41b7: $02
    nop                                           ; $41b8: $00
    xor e                                         ; $41b9: $ab
    add c                                         ; $41ba: $81
    nop                                           ; $41bb: $00
    ld d, $ff                                     ; $41bc: $16 $ff
    push bc                                       ; $41be: $c5
    dec hl                                        ; $41bf: $2b
    call nc, $ff01                                ; $41c0: $d4 $01 $ff
    dec hl                                        ; $41c3: $2b
    nop                                           ; $41c4: $00
    push af                                       ; $41c5: $f5
    ld hl, $f94f                                  ; $41c6: $21 $4f $f9
    ld b, a                                       ; $41c9: $47
    ld e, c                                       ; $41ca: $59
    and a                                         ; $41cb: $a7
    add hl, bc                                    ; $41cc: $09
    ld b, b                                       ; $41cd: $40
    rst $30                                       ; $41ce: $f7
    ld [bc], a                                    ; $41cf: $02
    nop                                           ; $41d0: $00
    ld d, e                                       ; $41d1: $53
    add hl, bc                                    ; $41d2: $09
    add l                                         ; $41d3: $85
    rst $38                                       ; $41d4: $ff
    add b                                         ; $41d5: $80
    add b                                         ; $41d6: $80
    ld de, $ffff                                  ; $41d7: $11 $ff $ff
    push de                                       ; $41da: $d5
    ld a, e                                       ; $41db: $7b
    nop                                           ; $41dc: $00
    rst $38                                       ; $41dd: $ff
    push de                                       ; $41de: $d5
    xor d                                         ; $41df: $aa
    add d                                         ; $41e0: $82
    nop                                           ; $41e1: $00
    ld b, $fe                                     ; $41e2: $06 $fe
    rst $38                                       ; $41e4: $ff
    nop                                           ; $41e5: $00
    nop                                           ; $41e6: $00
    rst $38                                       ; $41e7: $ff
    sbc e                                         ; $41e8: $9b

jr_09d_41e9:
    nop                                           ; $41e9: $00
    dec b                                         ; $41ea: $05
    ld [$08aa], sp                                ; $41eb: $08 $aa $08
    rrca                                          ; $41ee: $0f
    ret nc                                        ; $41ef: $d0

    nop                                           ; $41f0: $00
    and l                                         ; $41f1: $a5
    db $10                                        ; $41f2: $10
    ld c, b                                       ; $41f3: $48
    add b                                         ; $41f4: $80
    ld d, a                                       ; $41f5: $57
    nop                                           ; $41f6: $00
    inc c                                         ; $41f7: $0c
    xor l                                         ; $41f8: $ad
    rst $38                                       ; $41f9: $ff
    ld bc, $2001                                  ; $41fa: $01 $01 $20
    ld [$0805], sp                                ; $41fd: $08 $05 $08
    xor e                                         ; $4200: $ab
    ccf                                           ; $4201: $3f
    nop                                           ; $4202: $00
    rst $10                                       ; $4203: $d7
    ld bc, $907f                                  ; $4204: $01 $7f $90
    db $ed                                        ; $4207: $ed
    sub c                                         ; $4208: $91
    xor a                                         ; $4209: $af
    ld sp, hl                                     ; $420a: $f9
    nop                                           ; $420b: $00

Call_09d_420c:
    push hl                                       ; $420c: $e5
    add c                                         ; $420d: $81
    rst $38                                       ; $420e: $ff
    add c                                         ; $420f: $81
    db $ed                                        ; $4210: $ed
    pop af                                        ; $4211: $f1
    adc e                                         ; $4212: $8b
    add c                                         ; $4213: $81
    nop                                           ; $4214: $00
    db $fd                                        ; $4215: $fd
    db $fd                                        ; $4216: $fd
    di                                            ; $4217: $f3
    ld de, $91ab                                  ; $4218: $11 $ab $91
    db $ed                                        ; $421b: $ed
    adc a                                         ; $421c: $8f
    nop                                           ; $421d: $00
    or l                                          ; $421e: $b5
    add c                                         ; $421f: $81
    sub a                                         ; $4220: $97
    add c                                         ; $4221: $81
    cp e                                          ; $4222: $bb
    adc a                                         ; $4223: $8f
    rst $10                                       ; $4224: $d7
    add c                                         ; $4225: $81
    db $10                                        ; $4226: $10
    cp a                                          ; $4227: $bf
    adc c                                         ; $4228: $89
    rst $30                                       ; $4229: $f7
    or b                                          ; $422a: $b0

Call_09d_422b:
    add hl, hl                                    ; $422b: $29
    call c, $aa00                                 ; $422c: $dc $00 $aa
    nop                                           ; $422f: $00
    ld a, [bc]                                    ; $4230: $0a
    sub h                                         ; $4231: $94
    nop                                           ; $4232: $00
    adc b                                         ; $4233: $88
    nop                                           ; $4234: $00
    jr nc, jr_09d_4261                            ; $4235: $30 $2a

    ld b, c                                       ; $4237: $41
    jr nc, jr_09d_423c                            ; $4238: $30 $02

    inc de                                        ; $423a: $13
    add l                                         ; $423b: $85

jr_09d_423c:
    adc [hl]                                      ; $423c: $8e
    ld bc, $9fb0                                  ; $423d: $01 $b0 $9f
    cp d                                          ; $4240: $ba
    sbc a                                         ; $4241: $9f
    inc b                                         ; $4242: $04
    ld [$08b5], sp                                ; $4243: $08 $b5 $08
    nop                                           ; $4246: $00
    ld e, b                                       ; $4247: $58
    cp a                                          ; $4248: $bf
    inc c                                         ; $4249: $0c
    nop                                           ; $424a: $00
    nop                                           ; $424b: $00
    ld c, b                                       ; $424c: $48
    ld bc, $0804                                  ; $424d: $01 $04 $08
    ld d, a                                       ; $4250: $57
    rst $38                                       ; $4251: $ff
    xor b                                         ; $4252: $a8
    inc bc                                        ; $4253: $03
    ld hl, sp-$0a                                 ; $4254: $f8 $f6
    ldh a, [$ad]                                  ; $4256: $f0 $ad
    ldh [$80], a                                  ; $4258: $e0 $80
    or $01                                        ; $425a: $f6 $01
    ld hl, sp+$01                                 ; $425c: $f8 $01
    nop                                           ; $425e: $00
    add b                                         ; $425f: $80
    add b                                         ; $4260: $80

jr_09d_4261:
    nop                                           ; $4261: $00
    ld b, h                                       ; $4262: $44
    add b                                         ; $4263: $80
    ret nz                                        ; $4264: $c0

    nop                                           ; $4265: $00
    ld c, b                                       ; $4266: $48
    jr nc, jr_09d_41e9                            ; $4267: $30 $80

    ld bc, $01c2                                  ; $4269: $01 $c2 $01
    inc b                                         ; $426c: $04
    jr z, jr_09d_4290                             ; $426d: $28 $21

    nop                                           ; $426f: $00
    add e                                         ; $4270: $83
    nop                                           ; $4271: $00
    ld b, b                                       ; $4272: $40
    cp a                                          ; $4273: $bf
    ld [hl], $00                                  ; $4274: $36 $00
    cp h                                          ; $4276: $bc
    sbc h                                         ; $4277: $9c
    cp e                                          ; $4278: $bb

jr_09d_4279:
    sbc b                                         ; $4279: $98
    or [hl]                                       ; $427a: $b6
    sub b                                         ; $427b: $90
    nop                                           ; $427c: $00
    or l                                          ; $427d: $b5
    sub b                                         ; $427e: $90
    or d                                          ; $427f: $b2
    sub b                                         ; $4280: $90
    or b                                          ; $4281: $b0
    sub b                                         ; $4282: $90
    ld [$00e0], a                                 ; $4283: $ea $e0 $00
    db $e4                                        ; $4286: $e4
    ldh [rNR41], a                                ; $4287: $e0 $20
    jr nz, jr_09d_429e                            ; $4289: $20 $13

    inc de                                        ; $428b: $13
    adc h                                         ; $428c: $8c
    inc e                                         ; $428d: $1c
    nop                                           ; $428e: $00
    dec bc                                        ; $428f: $0b

jr_09d_4290:
    jr jr_09d_42a8                                ; $4290: $18 $16

    db $10                                        ; $4292: $10
    dec d                                         ; $4293: $15
    jr nc, jr_09d_4279                            ; $4294: $30 $e3

    nop                                           ; $4296: $00
    nop                                           ; $4297: $00
    ld e, l                                       ; $4298: $5d
    add b                                         ; $4299: $80
    ld a, e                                       ; $429a: $7b
    add b                                         ; $429b: $80
    ld l, a                                       ; $429c: $6f
    add b                                         ; $429d: $80

jr_09d_429e:
    ld a, a                                       ; $429e: $7f
    add b                                         ; $429f: $80
    ld bc, $a2dd                                  ; $42a0: $01 $dd $a2
    ld l, d                                       ; $42a3: $6a
    sub l                                         ; $42a4: $95
    sub c                                         ; $42a5: $91
    xor $55                                       ; $42a6: $ee $55

jr_09d_42a8:
    sub b                                         ; $42a8: $90
    ld [bc], a                                    ; $42a9: $02
    ld b, [hl]                                    ; $42aa: $46
    or a                                          ; $42ab: $b7
    sub b                                         ; $42ac: $90

jr_09d_42ad:
    ld b, d                                       ; $42ad: $42
    cp b                                          ; $42ae: $b8
    sbc b                                         ; $42af: $98
    cp h                                          ; $42b0: $bc
    ld a, b                                       ; $42b1: $78
    nop                                           ; $42b2: $00
    ld [bc], a                                    ; $42b3: $02
    db $10                                        ; $42b4: $10
    add b                                         ; $42b5: $80
    add b                                         ; $42b6: $80
    dec bc                                        ; $42b7: $0b
    add hl, bc                                    ; $42b8: $09
    ld [de], a                                    ; $42b9: $12
    ld [hl], b                                    ; $42ba: $70
    jr nc, jr_09d_42ad                            ; $42bb: $30 $f0

    ld hl, sp-$08                                 ; $42bd: $f8 $f8
    db $fc                                        ; $42bf: $fc
    pop bc                                        ; $42c0: $c1
    rst $30                                       ; $42c1: $f7
    ld a, [bc]                                    ; $42c2: $0a
    adc $02                                       ; $42c3: $ce $02
    rst $38                                       ; $42c5: $ff
    rst $38                                       ; $42c6: $ff
    add d                                         ; $42c7: $82
    db $fd                                        ; $42c8: $fd
    ret nz                                        ; $42c9: $c0

    sbc b                                         ; $42ca: $98
    ld bc, $c01e                                  ; $42cb: $01 $1e $c0
    rst $38                                       ; $42ce: $ff
    and d                                         ; $42cf: $a2
    dec h                                         ; $42d0: $25
    ld bc, $09b0                                  ; $42d1: $01 $b0 $09
    rla                                           ; $42d4: $17
    nop                                           ; $42d5: $00
    ldh a, [rHDMA1]                               ; $42d6: $f0 $51

jr_09d_42d8:
    rst $38                                       ; $42d8: $ff
    ret nc                                        ; $42d9: $d0

    cp $01                                        ; $42da: $fe $01
    ldh a, [rOBP1]                                ; $42dc: $f0 $49
    xor d                                         ; $42de: $aa
    ld b, b                                       ; $42df: $40
    ld bc, $ff3e                                  ; $42e0: $01 $3e $ff
    ld [hl+], a                                   ; $42e3: $22
    rst $18                                       ; $42e4: $df
    add b                                         ; $42e5: $80
    ld [bc], a                                    ; $42e6: $02
    ld [$c33e], sp                                ; $42e7: $08 $3e $c3
    nop                                           ; $42ea: $00
    rst $38                                       ; $42eb: $ff
    ld d, l                                       ; $42ec: $55
    jr c, jr_09d_42f6                             ; $42ed: $38 $07

    nop                                           ; $42ef: $00
    ld a, [$58b7]                                 ; $42f0: $fa $b7 $58
    ld h, d                                       ; $42f3: $62
    rst $38                                       ; $42f4: $ff
    add [hl]                                      ; $42f5: $86

jr_09d_42f6:
    nop                                           ; $42f6: $00
    ld d, l                                       ; $42f7: $55
    nop                                           ; $42f8: $00
    ld [$40b0], sp                                ; $42f9: $08 $b0 $40
    xor h                                         ; $42fc: $ac
    inc bc                                        ; $42fd: $03
    push de                                       ; $42fe: $d5
    ld [$00ae], sp                                ; $42ff: $08 $ae $00
    nop                                           ; $4302: $00
    dec hl                                        ; $4303: $2b
    call nc, $ff26                                ; $4304: $d4 $26 $ff
    push de                                       ; $4307: $d5
    nop                                           ; $4308: $00
    ld l, e                                       ; $4309: $6b
    nop                                           ; $430a: $00
    nop                                           ; $430b: $00
    ld [c], a                                     ; $430c: $e2
    dec e                                         ; $430d: $1d
    ld c, a                                       ; $430e: $4f
    nop                                           ; $430f: $00
    ld d, [hl]                                    ; $4310: $56
    xor c                                         ; $4311: $a9
    rst $38                                       ; $4312: $ff
    add b                                         ; $4313: $80
    jr @+$03                                      ; $4314: $18 $01

    ldh [rIE], a                                  ; $4316: $e0 $ff
    push de                                       ; $4318: $d5
    ld a, [hl+]                                   ; $4319: $2a
    ld [$5500], a                                 ; $431a: $ea $00 $55
    nop                                           ; $431d: $00
    xor b                                         ; $431e: $a8
    sub $00                                       ; $431f: $d6 $00
    ld d, h                                       ; $4321: $54
    ld [$04aa], sp                                ; $4322: $08 $aa $04
    sub $00                                       ; $4325: $d6 $00
    add hl, hl                                    ; $4327: $29
    adc d                                         ; $4328: $8a
    rst $38                                       ; $4329: $ff
    or l                                          ; $432a: $b5
    ld [$1a67], sp                                ; $432b: $08 $67 $1a
    rst $20                                       ; $432e: $e7

jr_09d_432f:
    nop                                           ; $432f: $00
    jr jr_09d_42d8                                ; $4330: $18 $a6

    ld e, d                                       ; $4332: $5a
    ld e, d                                       ; $4333: $5a
    ld bc, $40b6                                  ; $4334: $01 $b6 $40
    call nc, Call_000_2b40                        ; $4337: $d4 $40 $2b
    jr nz, jr_09d_4344                            ; $433a: $20 $08

    ld c, $00                                     ; $433c: $0e $00
    xor e                                         ; $433e: $ab
    ld d, h                                       ; $433f: $54
    pop de                                        ; $4340: $d1
    nop                                           ; $4341: $00
    inc d                                         ; $4342: $14
    sbc e                                         ; $4343: $9b

jr_09d_4344:
    nop                                           ; $4344: $00
    ld [$028c], a                                 ; $4345: $ea $8c $02
    ld d, h                                       ; $4348: $54
    ld b, b                                       ; $4349: $40
    jr nc, @+$57                                  ; $434a: $30 $55

    xor b                                         ; $434c: $a8
    inc b                                         ; $434d: $04
    adc d                                         ; $434e: $8a
    nop                                           ; $434f: $00
    cp e                                          ; $4350: $bb
    ld b, h                                       ; $4351: $44
    sub l                                         ; $4352: $95
    xor [hl]                                      ; $4353: $ae
    nop                                           ; $4354: $00
    add hl, de                                    ; $4355: $19

jr_09d_4356:
    nop                                           ; $4356: $00
    nop                                           ; $4357: $00
    sub $29                                       ; $4358: $d6 $29
    ld c, [hl]                                    ; $435a: $4e
    nop                                           ; $435b: $00
    and l                                         ; $435c: $a5
    jr jr_09d_4356                                ; $435d: $18 $f7

    ld a, [de]                                    ; $435f: $1a
    db $10                                        ; $4360: $10
    and a                                         ; $4361: $a7
    ld e, b                                       ; $4362: $58
    and d                                         ; $4363: $a2
    db $10                                        ; $4364: $10
    jr nc, jr_09d_43d5                            ; $4365: $30 $6e

    sub c                                         ; $4367: $91
    and l                                         ; $4368: $a5
    nop                                           ; $4369: $00
    nop                                           ; $436a: $00
    ld c, [hl]                                    ; $436b: $4e
    or b                                          ; $436c: $b0
    adc d                                         ; $436d: $8a
    rst $38                                       ; $436e: $ff
    ld b, d                                       ; $436f: $42
    nop                                           ; $4370: $00
    ld l, e                                       ; $4371: $6b
    sub h                                         ; $4372: $94
    db $10                                        ; $4373: $10
    or l                                          ; $4374: $b5
    ld b, b                                       ; $4375: $40
    xor [hl]                                      ; $4376: $ae
    ld [hl], b                                    ; $4377: $70
    jr nc, jr_09d_432f                            ; $4378: $30 $b5

    nop                                           ; $437a: $00
    db $dd                                        ; $437b: $dd
    ld [hl+], a                                   ; $437c: $22
    nop                                           ; $437d: $00
    ld [hl], d                                    ; $437e: $72
    dec c                                         ; $437f: $0d
    xor e                                         ; $4380: $ab
    nop                                           ; $4381: $00
    ld a, [hl]                                    ; $4382: $7e
    add c                                         ; $4383: $81
    db $eb                                        ; $4384: $eb
    nop                                           ; $4385: $00
    nop                                           ; $4386: $00
    ld h, l                                       ; $4387: $65
    ld a, [de]                                    ; $4388: $1a
    ld d, h                                       ; $4389: $54
    rst $38                                       ; $438a: $ff
    ld [$5700], a                                 ; $438b: $ea $00 $57
    nop                                           ; $438e: $00
    inc d                                         ; $438f: $14
    adc l                                         ; $4390: $8d
    ld [hl], d                                    ; $4391: $72
    sbc e                                         ; $4392: $9b
    db $10                                        ; $4393: $10
    jr nc, @-$68                                  ; $4394: $30 $96

    cp b                                          ; $4396: $b8
    inc bc                                        ; $4397: $03
    sub h                                         ; $4398: $94
    ld h, e                                       ; $4399: $63
    nop                                           ; $439a: $00
    sbc l                                         ; $439b: $9d
    nop                                           ; $439c: $00
    or l                                          ; $439d: $b5
    ld c, d                                       ; $439e: $4a
    jp nc, $bf01                                  ; $439f: $d2 $01 $bf

    ld b, b                                       ; $43a2: $40
    ld d, b                                       ; $43a3: $50
    sub l                                         ; $43a4: $95
    ret nz                                        ; $43a5: $c0

    jr nc, @+$01                                  ; $43a6: $30 $ff

    cp [hl]                                       ; $43a8: $be
    nop                                           ; $43a9: $00
    rlc b                                         ; $43aa: $cb $00
    add l                                         ; $43ac: $85
    rst $38                                       ; $43ad: $ff
    nop                                           ; $43ae: $00
    or l                                          ; $43af: $b5
    ld a, [bc]                                    ; $43b0: $0a
    ld h, d                                       ; $43b1: $62
    rra                                           ; $43b2: $1f
    push hl                                       ; $43b3: $e5
    ld a, [de]                                    ; $43b4: $1a
    and d                                         ; $43b5: $a2
    ld e, a                                       ; $43b6: $5f
    nop                                           ; $43b7: $00
    ld h, [hl]                                    ; $43b8: $66
    sbc c                                         ; $43b9: $99
    db $ed                                        ; $43ba: $ed
    nop                                           ; $43bb: $00
    ld a, [hl]                                    ; $43bc: $7e
    ld bc, $ff26                                  ; $43bd: $01 $26 $ff
    nop                                           ; $43c0: $00
    sub l                                         ; $43c1: $95
    ld l, d                                       ; $43c2: $6a
    nop                                           ; $43c3: $00
    rst $38                                       ; $43c4: $ff
    ld c, l                                       ; $43c5: $4d
    or b                                          ; $43c6: $b0
    ld [bc], a                                    ; $43c7: $02
    db $fd                                        ; $43c8: $fd
    nop                                           ; $43c9: $00
    add c                                         ; $43ca: $81
    ei                                            ; $43cb: $fb
    add c                                         ; $43cc: $81
    db $dd                                        ; $43cd: $dd
    ld sp, hl                                     ; $43ce: $f9
    push de                                       ; $43cf: $d5
    add c                                         ; $43d0: $81
    db $eb                                        ; $43d1: $eb
    nop                                           ; $43d2: $00

jr_09d_43d3:
    add c                                         ; $43d3: $81
    db $dd                                        ; $43d4: $dd

jr_09d_43d5:
    pop af                                        ; $43d5: $f1
    rst $08                                       ; $43d6: $cf
    add c                                         ; $43d7: $81
    rst $38                                       ; $43d8: $ff
    xor e                                         ; $43d9: $ab
    push de                                       ; $43da: $d5
    nop                                           ; $43db: $00
    adc c                                         ; $43dc: $89
    or a                                          ; $43dd: $b7
    adc c                                         ; $43de: $89
    rst $30                                       ; $43df: $f7
    sbc l                                         ; $43e0: $9d
    and e                                         ; $43e1: $a3
    add c                                         ; $43e2: $81
    rst $10                                       ; $43e3: $d7
    nop                                           ; $43e4: $00
    add c                                         ; $43e5: $81
    ei                                            ; $43e6: $fb
    adc a                                         ; $43e7: $8f
    or c                                          ; $43e8: $b1
    add c                                         ; $43e9: $81
    rst $38                                       ; $43ea: $ff
    push de                                       ; $43eb: $d5
    xor e                                         ; $43ec: $ab
    nop                                           ; $43ed: $00
    add b                                         ; $43ee: $80
    ld l, h                                       ; $43ef: $6c
    adc b                                         ; $43f0: $88
    ld [hl], a                                    ; $43f1: $77
    or b                                          ; $43f2: $b0
    ld c, e                                       ; $43f3: $4b
    add b                                         ; $43f4: $80
    ld l, l                                       ; $43f5: $6d
    ret nz                                        ; $43f6: $c0

    ld [hl], h                                    ; $43f7: $74
    ld [de], a                                    ; $43f8: $12
    ld a, e                                       ; $43f9: $7b
    ld [bc], a                                    ; $43fa: $02
    nop                                           ; $43fb: $00
    xor b                                         ; $43fc: $a8
    nop                                           ; $43fd: $00
    ld d, l                                       ; $43fe: $55
    rra                                           ; $43ff: $1f
    and b                                         ; $4400: $a0
    jr nc, jr_09d_4405                            ; $4401: $30 $02

    push de                                       ; $4403: $d5
    ld [hl], h                                    ; $4404: $74

jr_09d_4405:
    ld [de], a                                    ; $4405: $12
    ld a, e                                       ; $4406: $7b
    ld [bc], a                                    ; $4407: $02
    nop                                           ; $4408: $00
    and d                                         ; $4409: $a2
    nop                                           ; $440a: $00
    push de                                       ; $440b: $d5
    ld [$7b80], sp                                ; $440c: $08 $80 $7b
    nop                                           ; $440f: $00
    or [hl]                                       ; $4410: $b6
    db $10                                        ; $4411: $10
    jr z, jr_09d_4415                             ; $4412: $28 $01

    xor [hl]                                      ; $4414: $ae

jr_09d_4415:
    add hl, bc                                    ; $4415: $09
    rlca                                          ; $4416: $07
    halt                                          ; $4417: $76
    add hl, sp                                    ; $4418: $39
    call nz, $fa01                                ; $4419: $c4 $01 $fa
    ld [hl], h                                    ; $441c: $74
    ld [de], a                                    ; $441d: $12
    ld a, e                                       ; $441e: $7b
    ld [bc], a                                    ; $441f: $02
    sub b                                         ; $4420: $90
    jr z, jr_09d_4423                             ; $4421: $28 $00

jr_09d_4423:
    dec [hl]                                      ; $4423: $35
    ld [$9a67], sp                                ; $4424: $08 $67 $9a
    and a                                         ; $4427: $a7
    ld e, b                                       ; $4428: $58
    daa                                           ; $4429: $27
    ld a, [de]                                    ; $442a: $1a
    add b                                         ; $442b: $80
    sub b                                         ; $442c: $90
    jr z, jr_09d_4449                             ; $442d: $28 $1a

    db $e4                                        ; $442f: $e4
    xor l                                         ; $4430: $ad
    nop                                           ; $4431: $00
    ld de, $360e                                  ; $4432: $11 $0e $36
    ld d, b                                       ; $4435: $50
    ret nz                                        ; $4436: $c0

    sub b                                         ; $4437: $90
    jr z, jr_09d_43d3                             ; $4438: $28 $99

    ret c                                         ; $443a: $d8

    inc bc                                        ; $443b: $03
    ld d, d                                       ; $443c: $52
    adc h                                         ; $443d: $8c
    or c                                          ; $443e: $b1
    nop                                           ; $443f: $00
    ld [$18e5], sp                                ; $4440: $08 $e5 $18
    rst $10                                       ; $4443: $d7
    ld a, [hl-]                                   ; $4444: $3a
    db $10                                        ; $4445: $10
    add hl, bc                                    ; $4446: $09
    ld d, $01                                     ; $4447: $16 $01

jr_09d_4449:
    xor [hl]                                      ; $4449: $ae
    inc b                                         ; $444a: $04
    nop                                           ; $444b: $00
    rst $00                                       ; $444c: $c7
    nop                                           ; $444d: $00
    sub h                                         ; $444e: $94

jr_09d_444f:
    ld l, b                                       ; $444f: $68
    db $10                                        ; $4450: $10
    jr z, jr_09d_446c                             ; $4451: $28 $19

    and $88                                       ; $4453: $e6 $88
    sbc h                                         ; $4455: $9c
    ld bc, $c28a                                  ; $4456: $01 $8a $c2
    dec a                                         ; $4459: $3d

jr_09d_445a:
    ld [hl], b                                    ; $445a: $70
    add hl, hl                                    ; $445b: $29
    xor d                                         ; $445c: $aa
    ld d, l                                       ; $445d: $55
    ld d, $04                                     ; $445e: $16 $04
    add sp, -$38                                  ; $4460: $e8 $c8
    scf                                           ; $4462: $37
    and l                                         ; $4463: $a5
    ld b, d                                       ; $4464: $42
    ld [hl], b                                    ; $4465: $70
    add hl, hl                                    ; $4466: $29
    nop                                           ; $4467: $00
    rst $38                                       ; $4468: $ff
    ld [bc], a                                    ; $4469: $02
    xor h                                         ; $446a: $ac
    inc de                                        ; $446b: $13

jr_09d_446c:
    ld d, b                                       ; $446c: $50
    adc a                                         ; $446d: $8f
    jr nz, jr_09d_444f                            ; $446e: $20 $df

    ld [hl], b                                    ; $4470: $70
    add hl, hl                                    ; $4471: $29
    ld [bc], a                                    ; $4472: $02
    ld [bc], a                                    ; $4473: $02
    db $fd                                        ; $4474: $fd
    and h                                         ; $4475: $a4
    ld e, e                                       ; $4476: $5b
    ld d, c                                       ; $4477: $51
    xor [hl]                                      ; $4478: $ae
    nop                                           ; $4479: $00
    jr c, jr_09d_447c                             ; $447a: $38 $00

jr_09d_447c:
    ret nz                                        ; $447c: $c0

Call_09d_447d:
    ld [$8a3f], sp                                ; $447d: $08 $3f $8a
    ld [hl], c                                    ; $4480: $71
    ld b, d                                       ; $4481: $42
    ld [hl], b                                    ; $4482: $70
    jr nc, jr_09d_44cd                            ; $4483: $30 $48

    scf                                           ; $4485: $37
    and l                                         ; $4486: $a5
    ld [$025a], sp                                ; $4487: $08 $5a $02
    db $fd                                        ; $448a: $fd
    ld c, l                                       ; $448b: $4d
    ld [hl], b                                    ; $448c: $70
    jr nc, jr_09d_445a                            ; $448d: $30 $cb

    jr nc, @+$16                                  ; $448f: $30 $14

    ld [$68eb], sp                                ; $4491: $08 $eb $68
    sub a                                         ; $4494: $97
    ld c, d                                       ; $4495: $4a
    ld [hl], b                                    ; $4496: $70

jr_09d_4497:
    jr nc, jr_09d_44df                            ; $4497: $30 $46

    cp c                                          ; $4499: $b9
    ld [$f70f], sp                                ; $449a: $08 $0f $f7
    jp nz, $d33d                                  ; $449d: $c2 $3d $d3

    ldh [$71], a                                  ; $44a0: $e0 $71
    ldh a, [$29]                                  ; $44a2: $f0 $29
    ldh [$29], a                                  ; $44a4: $e0 $29
    ld [hl], b                                    ; $44a6: $70
    add hl, hl                                    ; $44a7: $29
    ld hl, sp-$20                                 ; $44a8: $f8 $e0
    add hl, hl                                    ; $44aa: $29
    jr nc, jr_09d_44d7                            ; $44ab: $30 $2a

    ldh [$29], a                                  ; $44ad: $e0 $29
    db $10                                        ; $44af: $10
    ld a, [hl+]                                   ; $44b0: $2a
    ldh a, [$29]                                  ; $44b1: $f0 $29
    and b                                         ; $44b3: $a0
    ld e, a                                       ; $44b4: $5f
    ld d, d                                       ; $44b5: $52
    nop                                           ; $44b6: $00
    adc l                                         ; $44b7: $8d
    ld hl, $00de                                  ; $44b8: $21 $de $00
    rst $38                                       ; $44bb: $ff
    ld l, d                                       ; $44bc: $6a
    db $10                                        ; $44bd: $10
    or c                                          ; $44be: $b1
    nop                                           ; $44bf: $00
    ld b, b                                       ; $44c0: $40
    db $dd                                        ; $44c1: $dd
    ld [hl+], a                                   ; $44c2: $22
    add l                                         ; $44c3: $85
    rst $38                                       ; $44c4: $ff
    dec b                                         ; $44c5: $05
    ld hl, sp-$69                                 ; $44c6: $f8 $97
    rlca                                          ; $44c8: $07
    ld a, d                                       ; $44c9: $7a
    ld b, a                                       ; $44ca: $47
    cp b                                          ; $44cb: $b8
    rla                                           ; $44cc: $17

jr_09d_44cd:
    ld a, [$2a60]                                 ; $44cd: $fa $60 $2a
    db $10                                        ; $44d0: $10
    add hl, hl                                    ; $44d1: $29
    db $10                                        ; $44d2: $10
    ld a, [hl+]                                   ; $44d3: $2a
    ldh [rNR10], a                                ; $44d4: $e0 $10
    add hl, hl                                    ; $44d6: $29

jr_09d_44d7:
    ld d, b                                       ; $44d7: $50
    jr nc, jr_09d_44da                            ; $44d8: $30 $00

jr_09d_44da:
    ld [hl+], a                                   ; $44da: $22
    and l                                         ; $44db: $a5
    ld a, [de]                                    ; $44dc: $1a
    ld a, [c]                                     ; $44dd: $f2
    rra                                           ; $44de: $1f

jr_09d_44df:
    and h                                         ; $44df: $a4
    ccf                                           ; $44e0: $3f
    ld e, e                                       ; $44e1: $5b
    and a                                         ; $44e2: $a7
    jr nz, @+$34                                  ; $44e3: $20 $32

    ldh a, [$29]                                  ; $44e5: $f0 $29
    ld d, b                                       ; $44e7: $50
    jr z, jr_09d_454a                             ; $44e8: $28 $60

    jr z, @+$22                                   ; $44ea: $28 $20

    ld a, [hl+]                                   ; $44ec: $2a
    ret nz                                        ; $44ed: $c0

    ld a, [hl+]                                   ; $44ee: $2a
    sbc b                                         ; $44ef: $98
    add b                                         ; $44f0: $80
    add hl, de                                    ; $44f1: $19
    ld h, $1a                                     ; $44f2: $26 $1a
    ld b, b                                       ; $44f4: $40
    jr z, jr_09d_4497                             ; $44f5: $28 $a0

    ld a, [hl+]                                   ; $44f7: $2a
    xor b                                         ; $44f8: $a8
    ld b, a                                       ; $44f9: $47
    ld de, $ee0f                                  ; $44fa: $11 $0f $ee
    db $e4                                        ; $44fd: $e4
    dec de                                        ; $44fe: $1b

Call_09d_44ff:
    ld e, l                                       ; $44ff: $5d
    ldh [$32], a                                  ; $4500: $e0 $32
    add b                                         ; $4502: $80
    ld a, [hl+]                                   ; $4503: $2a
    ld h, b                                       ; $4504: $60
    add hl, hl                                    ; $4505: $29
    ldh a, [$2a]                                  ; $4506: $f0 $2a
    rst $38                                       ; $4508: $ff
    ld h, b                                       ; $4509: $60
    add hl, hl                                    ; $450a: $29
    jr nc, jr_09d_4535                            ; $450b: $30 $28

    sub b                                         ; $450d: $90
    ld a, [hl+]                                   ; $450e: $2a
    ld h, b                                       ; $450f: $60
    add hl, hl                                    ; $4510: $29
    sub b                                         ; $4511: $90
    ld a, [hl+]                                   ; $4512: $2a
    ld h, b                                       ; $4513: $60
    add hl, hl                                    ; $4514: $29
    ld [hl], b                                    ; $4515: $70
    jr z, jr_09d_454f                             ; $4516: $28 $37

    ld a, [de]                                    ; $4518: $1a
    ld [bc], a                                    ; $4519: $02
    sbc a                                         ; $451a: $9f
    ldh [$9f], a                                  ; $451b: $e0 $9f
    ldh [$98], a                                  ; $451d: $e0 $98
    rst $20                                       ; $451f: $e7
    ld [bc], a                                    ; $4520: $02
    ld [$1800], sp                                ; $4521: $08 $00 $18
    jr nc, jr_09d_459e                            ; $4524: $30 $78

    ld c, b                                       ; $4526: $48
    ld [bc], a                                    ; $4527: $02
    ld c, b                                       ; $4528: $48
    sub b                                         ; $4529: $90
    ld a, [de]                                    ; $452a: $1a
    xor [hl]                                      ; $452b: $ae
    ld d, a                                       ; $452c: $57
    cp c                                          ; $452d: $b9
    add a                                         ; $452e: $87
    ret c                                         ; $452f: $d8

    dec b                                         ; $4530: $05
    jp nc, $b50c                                  ; $4531: $d2 $0c $b5

    nop                                           ; $4534: $00

jr_09d_4535:
    ld h, $18                                     ; $4535: $26 $18
    ld b, $38                                     ; $4537: $06 $38
    ret nz                                        ; $4539: $c0

Jump_09d_453a:
    add hl, hl                                    ; $453a: $29
    rst $38                                       ; $453b: $ff
    jr nc, @+$2d                                  ; $453c: $30 $2b

    ret nz                                        ; $453e: $c0

    add hl, hl                                    ; $453f: $29
    jr nz, jr_09d_456d                            ; $4540: $20 $2b

    ret nz                                        ; $4542: $c0

    add hl, hl                                    ; $4543: $29
    jr nz, jr_09d_4571                            ; $4544: $20 $2b

    ret nz                                        ; $4546: $c0

    add hl, hl                                    ; $4547: $29
    jr nz, jr_09d_45b5                            ; $4548: $20 $6b

jr_09d_454a:
    db $10                                        ; $454a: $10
    ld a, [hl+]                                   ; $454b: $2a
    rst $38                                       ; $454c: $ff
    jr nz, jr_09d_457a                            ; $454d: $20 $2b

jr_09d_454f:
    sub b                                         ; $454f: $90
    add hl, hl                                    ; $4550: $29
    jr nz, @+$2d                                  ; $4551: $20 $2b

    sub b                                         ; $4553: $90
    add hl, hl                                    ; $4554: $29
    jr nz, jr_09d_4582                            ; $4555: $20 $2b

    and b                                         ; $4557: $a0
    ld a, [hl+]                                   ; $4558: $2a
    rst $20                                       ; $4559: $e7
    ld a, [hl+]                                   ; $455a: $2a
    ld l, b                                       ; $455b: $68
    dec c                                         ; $455c: $0d
    ret nz                                        ; $455d: $c0

    pop af                                        ; $455e: $f1
    ld a, [bc]                                    ; $455f: $0a
    rst $10                                       ; $4560: $d7
    ld a, [de]                                    ; $4561: $1a
    ld sp, hl                                     ; $4562: $f9
    rlca                                          ; $4563: $07
    ld sp, hl                                     ; $4564: $f9
    rlca                                          ; $4565: $07
    add hl, de                                    ; $4566: $19
    rst $20                                       ; $4567: $e7
    ld hl, sp+$02                                 ; $4568: $f8 $02
    ld [$3400], sp                                ; $456a: $08 $00 $34

jr_09d_456d:
    and b                                         ; $456d: $a0
    inc hl                                        ; $456e: $23
    ld h, $18                                     ; $456f: $26 $18

jr_09d_4571:
    ld b, $48                                     ; $4571: $06 $48
    jr c, @+$01                                   ; $4573: $38 $ff

    inc h                                         ; $4575: $24
    nop                                           ; $4576: $00
    rst $20                                       ; $4577: $e7
    ld [hl+], a                                   ; $4578: $22
    di                                            ; $4579: $f3

jr_09d_457a:
    ld de, $10f5                                  ; $457a: $11 $f5 $10
    ld a, [$1808]                                 ; $457d: $fa $08 $18
    ld sp, hl                                     ; $4580: $f9
    inc b                                         ; $4581: $04

jr_09d_4582:
    db $fc                                        ; $4582: $fc
    ld [hl], $18                                  ; $4583: $36 $18
    inc a                                         ; $4585: $3c
    ld [$e799], sp                                ; $4586: $08 $99 $e7
    ld a, [hl]                                    ; $4589: $7e
    jr jr_09d_45cd                                ; $458a: $18 $41

    rst $10                                       ; $458c: $d7
    ld l, c                                       ; $458d: $69
    and b                                         ; $458e: $a0
    dec hl                                        ; $458f: $2b
    sub b                                         ; $4590: $90
    dec hl                                        ; $4591: $2b
    ld sp, $04ce                                  ; $4592: $31 $ce $04
    rrca                                          ; $4595: $0f
    ei                                            ; $4596: $fb
    ret nz                                        ; $4597: $c0

    ccf                                           ; $4598: $3f
    ld d, [hl]                                    ; $4599: $56
    or b                                          ; $459a: $b0
    ld sp, $2c90                                  ; $459b: $31 $90 $2c

jr_09d_459e:
    ld d, b                                       ; $459e: $50
    inc l                                         ; $459f: $2c
    sub b                                         ; $45a0: $90
    ld [hl-], a                                   ; $45a1: $32
    cp $90                                        ; $45a2: $fe $90
    inc h                                         ; $45a4: $24
    ld [hl], b                                    ; $45a5: $70
    inc l                                         ; $45a6: $2c
    ld d, b                                       ; $45a7: $50
    inc l                                         ; $45a8: $2c
    ld b, b                                       ; $45a9: $40
    dec hl                                        ; $45aa: $2b
    ld d, b                                       ; $45ab: $50
    dec hl                                        ; $45ac: $2b
    ld d, b                                       ; $45ad: $50
    inc l                                         ; $45ae: $2c
    ld d, b                                       ; $45af: $50
    dec hl                                        ; $45b0: $2b
    ld e, e                                       ; $45b1: $5b
    nop                                           ; $45b2: $00
    nop                                           ; $45b3: $00
    or [hl]                                       ; $45b4: $b6

jr_09d_45b5:
    ld b, b                                       ; $45b5: $40
    push de                                       ; $45b6: $d5
    ld a, [hl+]                                   ; $45b7: $2a
    ld [c], a                                     ; $45b8: $e2
    db $fd                                        ; $45b9: $fd
    db $eb                                        ; $45ba: $eb
    add b                                         ; $45bb: $80
    ld b, b                                       ; $45bc: $40
    inc b                                         ; $45bd: $04
    adc a                                         ; $45be: $8f
    ld [hl], b                                    ; $45bf: $70
    sbc e                                         ; $45c0: $9b
    nop                                           ; $45c1: $00
    nop                                           ; $45c2: $00
    inc b                                         ; $45c3: $04
    ld c, $7e                                     ; $45c4: $0e $7e
    ld a, [bc]                                    ; $45c6: $0a
    ld [bc], a                                    ; $45c7: $02
    ld c, b                                       ; $45c8: $48
    and b                                         ; $45c9: $a0
    inc l                                         ; $45ca: $2c
    ret nz                                        ; $45cb: $c0

    inc l                                         ; $45cc: $2c

jr_09d_45cd:
    or b                                          ; $45cd: $b0
    ld a, [hl+]                                   ; $45ce: $2a
    nop                                           ; $45cf: $00
    dec l                                         ; $45d0: $2d
    and c                                         ; $45d1: $a1
    daa                                           ; $45d2: $27
    ld a, a                                       ; $45d3: $7f
    nop                                           ; $45d4: $00
    rst $30                                       ; $45d5: $f7
    adc b                                         ; $45d6: $88
    push de                                       ; $45d7: $d5
    xor d                                         ; $45d8: $aa
    xor d                                         ; $45d9: $aa
    db $dd                                        ; $45da: $dd
    adc b                                         ; $45db: $88
    rst $38                                       ; $45dc: $ff
    add b                                         ; $45dd: $80
    ld a, $08                                     ; $45de: $3e $08
    ld a, [bc]                                    ; $45e0: $0a
    ld c, $0e                                     ; $45e1: $0e $0e
    cp $7a                                        ; $45e3: $fe $7a
    adc [hl]                                      ; $45e5: $8e
    ld e, [hl]                                    ; $45e6: $5e
    rlca                                          ; $45e7: $07
    xor [hl]                                      ; $45e8: $ae
    xor d                                         ; $45e9: $aa
    sbc $8e                                       ; $45ea: $de $8e
    cp $c0                                        ; $45ec: $fe $c0
    inc l                                         ; $45ee: $2c
    sub b                                         ; $45ef: $90
    dec hl                                        ; $45f0: $2b
    jr nc, jr_09d_4620                            ; $45f1: $30 $2d

    pop bc                                        ; $45f3: $c1
    sub b                                         ; $45f4: $90
    dec hl                                        ; $45f5: $2b
    cp $11                                        ; $45f6: $fe $11
    ld c, a                                       ; $45f8: $4f
    ld a, c                                       ; $45f9: $79
    ld c, [hl]                                    ; $45fa: $4e
    ld a, a                                       ; $45fb: $7f
    ld c, a                                       ; $45fc: $4f
    rlca                                          ; $45fd: $07
    ld a, [bc]                                    ; $45fe: $0a
    jr nz, @+$6a                                  ; $45ff: $20 $68

    ld a, b                                       ; $4601: $78
    pop af                                        ; $4602: $f1
    rla                                           ; $4603: $17
    ld hl, sp+$54                                 ; $4604: $f8 $54
    xor h                                         ; $4606: $ac
    ld a, [$c0fe]                                 ; $4607: $fa $fe $c0
    add a                                         ; $460a: $87
    jr @+$28                                      ; $460b: $18 $26

    ld a, [bc]                                    ; $460d: $0a
    sbc d                                         ; $460e: $9a
    rst $20                                       ; $460f: $e7
    sbc b                                         ; $4610: $98
    and $9a                                       ; $4611: $e6 $9a
    and $80                                       ; $4613: $e6 $80
    inc b                                         ; $4615: $04
    jr jr_09d_4670                                ; $4616: $18 $58

    ld a, a                                       ; $4618: $7f
    ld l, a                                       ; $4619: $6f
    ld a, b                                       ; $461a: $78
    ld e, a                                       ; $461b: $5f
    ld a, b                                       ; $461c: $78
    ld l, d                                       ; $461d: $6a
    db $10                                        ; $461e: $10
    ld a, l                                       ; $461f: $7d

jr_09d_4620:
    ld e, a                                       ; $4620: $5f
    ld a, b                                       ; $4621: $78
    ld [$6808], sp                                ; $4622: $08 $08 $68
    ld a, a                                       ; $4625: $7f
    rrca                                          ; $4626: $0f
    rst $38                                       ; $4627: $ff
    nop                                           ; $4628: $00
    ld hl, sp+$07                                 ; $4629: $f8 $07
    cp b                                          ; $462b: $b8
    ld b, a                                       ; $462c: $47
    ld c, e                                       ; $462d: $4b
    rst $30                                       ; $462e: $f7
    cp b                                          ; $462f: $b8
    ld b, a                                       ; $4630: $47
    sub h                                         ; $4631: $94
    ld [$0b08], sp                                ; $4632: $08 $08 $0b
    rst $38                                       ; $4635: $ff
    jr z, jr_09d_4660                             ; $4636: $28 $28

    sbc e                                         ; $4638: $9b
    ld e, [hl]                                    ; $4639: $5e
    ld [de], a                                    ; $463a: $12
    sbc c                                         ; $463b: $99
    rst $20                                       ; $463c: $e7
    nop                                           ; $463d: $00
    ld e, c                                       ; $463e: $59
    ld a, [hl]                                    ; $463f: $7e
    ld a, a                                       ; $4640: $7f
    ld a, a                                       ; $4641: $7f
    ld e, a                                       ; $4642: $5f
    ld a, b                                       ; $4643: $78
    ld a, d                                       ; $4644: $7a
    ld a, l                                       ; $4645: $7d
    ld [$787f], sp                                ; $4646: $08 $7f $78
    ld e, d                                       ; $4649: $5a
    ld a, a                                       ; $464a: $7f
    ld bc, $5408                                  ; $464b: $01 $08 $54
    xor a                                         ; $464e: $af
    ld a, [$ff0a]                                 ; $464f: $fa $0a $ff
    cp d                                          ; $4652: $ba
    ld c, a                                       ; $4653: $4f
    ld c, e                                       ; $4654: $4b
    inc b                                         ; $4655: $04
    nop                                           ; $4656: $00
    ld a, [bc]                                    ; $4657: $0a
    ld c, $16                                     ; $4658: $0e $16
    sbc d                                         ; $465a: $9a
    inc bc                                        ; $465b: $03
    rst $20                                       ; $465c: $e7
    sbc d                                         ; $465d: $9a
    and $9a                                       ; $465e: $e6 $9a

jr_09d_4660:
    rst $20                                       ; $4660: $e7
    sbc e                                         ; $4661: $9b
    ld h, b                                       ; $4662: $60
    nop                                           ; $4663: $00
    ld [bc], a                                    ; $4664: $02
    ld [$9b0a], sp                                ; $4665: $08 $0a $9b
    and $ff                                       ; $4668: $e6 $ff
    ld a, b                                       ; $466a: $78
    ld [bc], a                                    ; $466b: $02
    ld h, b                                       ; $466c: $60
    inc bc                                        ; $466d: $03
    ld [bc], a                                    ; $466e: $02
    ld e, b                                       ; $466f: $58

jr_09d_4670:
    sbc e                                         ; $4670: $9b
    ld a, $e6                                     ; $4671: $3e $e6
    sbc c                                         ; $4673: $99
    cp b                                          ; $4674: $b8
    ld [bc], a                                    ; $4675: $02
    ret nz                                        ; $4676: $c0

    ld a, [bc]                                    ; $4677: $0a
    ldh a, [rNR22]                                ; $4678: $f0 $17
    push af                                       ; $467a: $f5
    inc d                                         ; $467b: $14
    ld a, [c]                                     ; $467c: $f2
    ld b, $00                                     ; $467d: $06 $00
    nop                                           ; $467f: $00
    nop                                           ; $4680: $00
    ld d, d                                       ; $4681: $52
    nop                                           ; $4682: $00
    ld a, [bc]                                    ; $4683: $0a
    nop                                           ; $4684: $00
    ld c, d                                       ; $4685: $4a
    nop                                           ; $4686: $00
    ld b, b                                       ; $4687: $40
    nop                                           ; $4688: $00
    ld [bc], a                                    ; $4689: $02
    cp $01                                        ; $468a: $fe $01
    rst $38                                       ; $468c: $ff
    or b                                          ; $468d: $b0
    rst $38                                       ; $468e: $ff
    db $10                                        ; $468f: $10
    rra                                           ; $4690: $1f
    ld [$5f10], sp                                ; $4691: $08 $10 $5f
    db $10                                        ; $4694: $10
    sbc a                                         ; $4695: $9f
    ld b, $00                                     ; $4696: $06 $00
    sbc a                                         ; $4698: $9f
    ld c, d                                       ; $4699: $4a
    ld [hl], l                                    ; $469a: $75
    nop                                           ; $469b: $00
    ld d, a                                       ; $469c: $57
    ld l, c                                       ; $469d: $69
    adc d                                         ; $469e: $8a
    or l                                          ; $469f: $b5
    or a                                          ; $46a0: $b7
    xor c                                         ; $46a1: $a9
    ld [$03f5], a                                 ; $46a2: $ea $f5 $03
    rst $10                                       ; $46a5: $d7
    xor c                                         ; $46a6: $a9
    xor d                                         ; $46a7: $aa
    push de                                       ; $46a8: $d5
    rst $10                                       ; $46a9: $d7
    xor c                                         ; $46aa: $a9
    ld h, b                                       ; $46ab: $60
    dec hl                                        ; $46ac: $2b
    nop                                           ; $46ad: $00
    dec l                                         ; $46ae: $2d
    nop                                           ; $46af: $00
    nop                                           ; $46b0: $00
    ld a, [bc]                                    ; $46b1: $0a
    ld b, b                                       ; $46b2: $40
    ld c, b                                       ; $46b3: $48
    and b                                         ; $46b4: $a0
    and b                                         ; $46b5: $a0
    ldh [$e0], a                                  ; $46b6: $e0 $e0
    ld e, b                                       ; $46b8: $58
    cp a                                          ; $46b9: $bf
    sub h                                         ; $46ba: $94
    ld b, $a0                                     ; $46bb: $06 $a0
    adc d                                         ; $46bd: $8a
    ld b, $36                                     ; $46be: $06 $36
    jr jr_09d_46d2                                ; $46c0: $18 $10

    rra                                           ; $46c2: $1f
    ldh a, [$e1]                                  ; $46c3: $f0 $e1
    jr c, jr_09d_46e9                             ; $46c5: $38 $22

    inc [hl]                                      ; $46c7: $34
    ld [$1804], sp                                ; $46c8: $08 $04 $18
    rst $38                                       ; $46cb: $ff
    rst $38                                       ; $46cc: $ff
    add c                                         ; $46cd: $81
    add c                                         ; $46ce: $81
    xor [hl]                                      ; $46cf: $ae
    ld b, $00                                     ; $46d0: $06 $00

jr_09d_46d2:
    ld a, a                                       ; $46d2: $7f
    ld [$a8ff], sp                                ; $46d3: $08 $ff $a8
    ld e, a                                       ; $46d6: $5f
    ld c, b                                       ; $46d7: $48
    cp a                                          ; $46d8: $bf
    add sp, $21                                   ; $46d9: $e8 $21
    rra                                           ; $46db: $1f
    ld l, b                                       ; $46dc: $68
    ld [bc], a                                    ; $46dd: $02
    db $10                                        ; $46de: $10
    add sp, $1f                                   ; $46df: $e8 $1f
    ret nc                                        ; $46e1: $d0

    ccf                                           ; $46e2: $3f
    xor $09                                       ; $46e3: $ee $09
    db $fc                                        ; $46e5: $fc
    sub b                                         ; $46e6: $90
    ld a, [hl+]                                   ; $46e7: $2a
    sub [hl]                                      ; $46e8: $96

jr_09d_46e9:
    ld a, [de]                                    ; $46e9: $1a
    and b                                         ; $46ea: $a0
    ld a, [hl-]                                   ; $46eb: $3a
    sub [hl]                                      ; $46ec: $96
    ld a, [de]                                    ; $46ed: $1a
    and b                                         ; $46ee: $a0
    ld a, [bc]                                    ; $46ef: $0a
    ld a, a                                       ; $46f0: $7f
    dec c                                         ; $46f1: $0d
    ld bc, $ccff                                  ; $46f2: $01 $ff $cc
    xor b                                         ; $46f5: $a8
    add hl, hl                                    ; $46f6: $29
    or b                                          ; $46f7: $b0
    add hl, de                                    ; $46f8: $19
    rst $38                                       ; $46f9: $ff
    rst $38                                       ; $46fa: $ff
    xor b                                         ; $46fb: $a8
    add hl, hl                                    ; $46fc: $29
    or b                                          ; $46fd: $b0
    add hl, de                                    ; $46fe: $19
    cp $fe                                        ; $46ff: $fe $fe
    and e                                         ; $4701: $a3
    add hl, sp                                    ; $4702: $39
    rlca                                          ; $4703: $07
    ldh [rSC], a                                  ; $4704: $e0 $02
    ld d, b                                       ; $4706: $50
    cp $ff                                        ; $4707: $fe $ff
    ld c, $02                                     ; $4709: $0e $02
    ld c, b                                       ; $470b: $48
    or b                                          ; $470c: $b0
    inc c                                         ; $470d: $0c
    nop                                           ; $470e: $00
    rst $18                                       ; $470f: $df
    jr nz, @-$79                                  ; $4710: $20 $85

    ld a, [$f00d]                                 ; $4712: $fa $0d $f0
    sub a                                         ; $4715: $97
    ld l, b                                       ; $4716: $68
    nop                                           ; $4717: $00
    ld c, a                                       ; $4718: $4f
    or b                                          ; $4719: $b0
    rla                                           ; $471a: $17
    add sp, $0d                                   ; $471b: $e8 $0d
    ld sp, hl                                     ; $471d: $f9
    xor l                                         ; $471e: $ad
    ld sp, hl                                     ; $471f: $f9
    add b                                         ; $4720: $80
    inc b                                         ; $4721: $04
    ld [$f9dd], sp                                ; $4722: $08 $dd $f9
    ld l, l                                       ; $4725: $6d
    ld a, c                                       ; $4726: $79
    dec a                                         ; $4727: $3d
    add hl, sp                                    ; $4728: $39
    dec e                                         ; $4729: $1d
    adc b                                         ; $472a: $88
    ld [bc], a                                    ; $472b: $02
    jr jr_09d_47a7                                ; $472c: $18 $79

    db $fd                                        ; $472e: $fd
    ld sp, hl                                     ; $472f: $f9
    inc c                                         ; $4730: $0c
    nop                                           ; $4731: $00
    add hl, de                                    ; $4732: $19
    adc l                                         ; $4733: $8d
    add hl, de                                    ; $4734: $19
    inc [hl]                                      ; $4735: $34
    dec c                                         ; $4736: $0d
    add hl, de                                    ; $4737: $19
    cp $0f                                        ; $4738: $fe $0f
    inc b                                         ; $473a: $04
    jr @-$7a                                      ; $473b: $18 $84

    ld a, [bc]                                    ; $473d: $0a
    nop                                           ; $473e: $00
    ret z                                         ; $473f: $c8

    nop                                           ; $4740: $00
    db $10                                        ; $4741: $10
    dec c                                         ; $4742: $0d
    add hl, de                                    ; $4743: $19
    dec c                                         ; $4744: $0d
    jr nz, jr_09d_4747                            ; $4745: $20 $00

jr_09d_4747:
    dec a                                         ; $4747: $3d
    ld sp, hl                                     ; $4748: $f9
    db $fd                                        ; $4749: $fd
    ld sp, hl                                     ; $474a: $f9
    db $10                                        ; $474b: $10
    db $fd                                        ; $474c: $fd
    ld bc, $1001                                  ; $474d: $01 $01 $10
    ld b, $a3                                     ; $4750: $06 $a3
    nop                                           ; $4752: $00
    db $dd                                        ; $4753: $dd
    nop                                           ; $4754: $00
    db $10                                        ; $4755: $10

jr_09d_4756:
    ei                                            ; $4756: $fb
    nop                                           ; $4757: $00
    rst $28                                       ; $4758: $ef
    inc a                                         ; $4759: $3c
    ld b, $dd                                     ; $475a: $06 $dd
    ld [hl+], a                                   ; $475c: $22
    ld [$1415], a                                 ; $475d: $ea $15 $14
    sub c                                         ; $4760: $91
    ld l, [hl]                                    ; $4761: $6e
    rst $38                                       ; $4762: $ff
    xor d                                         ; $4763: $aa
    dec b                                         ; $4764: $05
    ld b, b                                       ; $4765: $40
    and h                                         ; $4766: $a4
    rlca                                          ; $4767: $07
    ld b, b                                       ; $4768: $40
    rst $38                                       ; $4769: $ff
    ld b, $81                                     ; $476a: $06 $81
    rst $38                                       ; $476c: $ff
    ld a, [bc]                                    ; $476d: $0a
    rst $38                                       ; $476e: $ff
    rst $10                                       ; $476f: $d7
    cp b                                          ; $4770: $b8
    dec b                                         ; $4771: $05
    ld d, a                                       ; $4772: $57
    ld c, $40                                     ; $4773: $0e $40
    ccf                                           ; $4775: $3f
    rst $38                                       ; $4776: $ff
    ld [hl+], a                                   ; $4777: $22
    ld h, c                                       ; $4778: $61
    ld b, $c0                                     ; $4779: $06 $c0
    rrca                                          ; $477b: $0f
    db $10                                        ; $477c: $10
    dec hl                                        ; $477d: $2b

jr_09d_477e:
    ldh [$2e], a                                  ; $477e: $e0 $2e
    sub b                                         ; $4780: $90
    ld [hl-], a                                   ; $4781: $32
    ld h, b                                       ; $4782: $60
    daa                                           ; $4783: $27
    ld c, $81                                     ; $4784: $0e $81
    rst $38                                       ; $4786: $ff
    ret nz                                        ; $4787: $c0

    cp a                                          ; $4788: $bf
    ldh a, [rTAC]                                 ; $4789: $f0 $07
    inc b                                         ; $478b: $04
    jr nz, jr_09d_477e                            ; $478c: $20 $f0

    rra                                           ; $478e: $1f
    xor d                                         ; $478f: $aa
    ld b, b                                       ; $4790: $40
    ld d, l                                       ; $4791: $55
    jr jr_09d_47c5                                ; $4792: $18 $31

    rst $38                                       ; $4794: $ff
    ld [$5f95], a                                 ; $4795: $ea $95 $5f
    add b                                         ; $4798: $80
    db $fd                                        ; $4799: $fd
    nop                                           ; $479a: $00
    add b                                         ; $479b: $80
    daa                                           ; $479c: $27
    add b                                         ; $479d: $80
    ld b, b                                       ; $479e: $40
    add b                                         ; $479f: $80
    adc c                                         ; $47a0: $89
    nop                                           ; $47a1: $00
    ld [de], a                                    ; $47a2: $12
    ld hl, $8080                                  ; $47a3: $21 $80 $80
    and d                                         ; $47a6: $a2

jr_09d_47a7:
    ld c, $ff                                     ; $47a7: $0e $ff
    add e                                         ; $47a9: $83
    ld a, a                                       ; $47aa: $7f
    ld bc, $01e7                                  ; $47ab: $01 $e7 $01
    add b                                         ; $47ae: $80
    inc b                                         ; $47af: $04
    ld [$bfc1], sp                                ; $47b0: $08 $c1 $bf
    push de                                       ; $47b3: $d5
    ld a, [hl+]                                   ; $47b4: $2a
    ei                                            ; $47b5: $fb
    inc b                                         ; $47b6: $04
    rst $28                                       ; $47b7: $ef
    ld [bc], a                                    ; $47b8: $02
    nop                                           ; $47b9: $00
    or a                                          ; $47ba: $b7
    nop                                           ; $47bb: $00
    ld e, h                                       ; $47bc: $5c
    nop                                           ; $47bd: $00
    ld a, [hl+]                                   ; $47be: $2a
    ret c                                         ; $47bf: $d8

    rlca                                          ; $47c0: $07
    ld [$b0fe], sp                                ; $47c1: $08 $fe $b0
    scf                                           ; $47c4: $37

jr_09d_47c5:
    add b                                         ; $47c5: $80
    cpl                                           ; $47c6: $2f
    and b                                         ; $47c7: $a0
    dec l                                         ; $47c8: $2d
    or b                                          ; $47c9: $b0
    cpl                                           ; $47ca: $2f
    add b                                         ; $47cb: $80
    cpl                                           ; $47cc: $2f
    ret nc                                        ; $47cd: $d0

    dec l                                         ; $47ce: $2d
    ldh a, [$38]                                  ; $47cf: $f0 $38
    add b                                         ; $47d1: $80
    nop                                           ; $47d2: $00
    nop                                           ; $47d3: $00
    jr nz, jr_09d_4756                            ; $47d4: $20 $80

    add d                                         ; $47d6: $82
    nop                                           ; $47d7: $00
    ld d, h                                       ; $47d8: $54
    add b                                         ; $47d9: $80
    ld l, e                                       ; $47da: $6b
    db $10                                        ; $47db: $10
    add b                                         ; $47dc: $80
    ld [hl], $80                                  ; $47dd: $36 $80
    ld [hl], h                                    ; $47df: $74
    nop                                           ; $47e0: $00
    add d                                         ; $47e1: $82
    ld a, a                                       ; $47e2: $7f
    add b                                         ; $47e3: $80
    xor d                                         ; $47e4: $aa
    inc bc                                        ; $47e5: $03
    push de                                       ; $47e6: $d5
    sub h                                         ; $47e7: $94
    db $eb                                        ; $47e8: $eb
    and b                                         ; $47e9: $a0
    rst $18                                       ; $47ea: $df
    add b                                         ; $47eb: $80
    jp c, Jump_000_2000                           ; $47ec: $da $00 $20

    inc b                                         ; $47ef: $04
    ld [$cbff], sp                                ; $47f0: $08 $ff $cb
    rst $38                                       ; $47f3: $ff
    or a                                          ; $47f4: $b7
    add d                                         ; $47f5: $82
    ld [bc], a                                    ; $47f6: $02
    xor d                                         ; $47f7: $aa
    add b                                         ; $47f8: $80
    add b                                         ; $47f9: $80
    inc b                                         ; $47fa: $04
    rst $38                                       ; $47fb: $ff
    cp [hl]                                       ; $47fc: $be
    rst $38                                       ; $47fd: $ff
    and d                                         ; $47fe: $a2
    rst $18                                       ; $47ff: $df
    ld [bc], a                                    ; $4800: $02
    ld [$c3be], sp                                ; $4801: $08 $be $c3
    ret nc                                        ; $4804: $d0

    ld d, b                                       ; $4805: $50
    ld [bc], a                                    ; $4806: $02
    ld bc, $0430                                  ; $4807: $01 $30 $04
    ld e, h                                       ; $480a: $5c
    inc bc                                        ; $480b: $03
    ret z                                         ; $480c: $c8

    nop                                           ; $480d: $00
    rst $00                                       ; $480e: $c7
    rst $38                                       ; $480f: $ff
    scf                                           ; $4810: $37
    db $e3                                        ; $4811: $e3
    rst $18                                       ; $4812: $df
    inc b                                         ; $4813: $04
    ld c, b                                       ; $4814: $48
    jr nc, @+$0b                                  ; $4815: $30 $09

    ld a, e                                       ; $4817: $7b
    jr nc, jr_09d_485b                            ; $4818: $30 $41

    ld b, b                                       ; $481a: $40
    ld l, $a0                                     ; $481b: $2e $a0
    ld l, b                                       ; $481d: $68
    or e                                          ; $481e: $b3
    jr nz, jr_09d_484f                            ; $481f: $20 $2e

    rst $38                                       ; $4821: $ff
    and a                                         ; $4822: $a7
    rla                                           ; $4823: $17
    inc d                                         ; $4824: $14
    add hl, hl                                    ; $4825: $29
    pop bc                                        ; $4826: $c1
    cp a                                          ; $4827: $bf
    jr nc, jr_09d_4858                            ; $4828: $30 $2e

    db $10                                        ; $482a: $10
    ld l, $30                                     ; $482b: $2e $30
    rst $38                                       ; $482d: $ff
    rla                                           ; $482e: $17
    cp a                                          ; $482f: $bf
    ld [bc], a                                    ; $4830: $02
    inc b                                         ; $4831: $04
    ld b, b                                       ; $4832: $40
    add e                                         ; $4833: $83
    rst $38                                       ; $4834: $ff
    ld b, c                                       ; $4835: $41
    cp a                                          ; $4836: $bf
    or b                                          ; $4837: $b0
    db $10                                        ; $4838: $10
    add hl, sp                                    ; $4839: $39
    rst $38                                       ; $483a: $ff
    rst $20                                       ; $483b: $e7
    rlca                                          ; $483c: $07
    ld b, d                                       ; $483d: $42
    jr @-$69                                      ; $483e: $18 $95

    ld [$c0bf], a                                 ; $4840: $ea $bf $c0
    db $10                                        ; $4843: $10
    rst $38                                       ; $4844: $ff
    rst $38                                       ; $4845: $ff
    reti                                          ; $4846: $d9


    ld [bc], a                                    ; $4847: $02
    nop                                           ; $4848: $00
    db $fd                                        ; $4849: $fd
    db $db                                        ; $484a: $db
    reti                                          ; $484b: $d9


    rst $38                                       ; $484c: $ff
    nop                                           ; $484d: $00
    ei                                            ; $484e: $fb

jr_09d_484f:
    db $dd                                        ; $484f: $dd
    db $dd                                        ; $4850: $dd
    ei                                            ; $4851: $fb
    ld [$d5d5], a                                 ; $4852: $ea $d5 $d5
    ld [$ff37], a                                 ; $4855: $ea $37 $ff

jr_09d_4858:
    rst $38                                       ; $4858: $ff
    jr nz, jr_09d_4889                            ; $4859: $20 $2e

jr_09d_485b:
    jr nz, jr_09d_488c                            ; $485b: $20 $2f

    ld d, l                                       ; $485d: $55
    ld [hl], d                                    ; $485e: $72
    ld de, $079c                                  ; $485f: $11 $9c $07
    dec d                                         ; $4862: $15
    inc bc                                        ; $4863: $03
    jr @+$01                                      ; $4864: $18 $ff

    rst $38                                       ; $4866: $ff
    sbc c                                         ; $4867: $99
    rst $30                                       ; $4868: $f7
    rlca                                          ; $4869: $07
    ld h, d                                       ; $486a: $62
    add hl, bc                                    ; $486b: $09
    ld bc, $55ff                                  ; $486c: $01 $ff $55
    jr z, @-$53                                   ; $486f: $28 $ab

    db $fd                                        ; $4871: $fd
    ld c, a                                       ; $4872: $4f
    nop                                           ; $4873: $00
    sbc e                                         ; $4874: $9b
    ld [de], a                                    ; $4875: $12
    nop                                           ; $4876: $00
    db $dd                                        ; $4877: $dd
    cp e                                          ; $4878: $bb
    sbc c                                         ; $4879: $99
    ld bc, $bbff                                  ; $487a: $01 $ff $bb
    db $dd                                        ; $487d: $dd
    db $dd                                        ; $487e: $dd
    cp e                                          ; $487f: $bb
    xor d                                         ; $4880: $aa
    ld d, l                                       ; $4881: $55
    inc h                                         ; $4882: $24
    nop                                           ; $4883: $00
    add b                                         ; $4884: $80
    ld [de], a                                    ; $4885: $12
    nop                                           ; $4886: $00
    rst $18                                       ; $4887: $df
    cp e                                          ; $4888: $bb

jr_09d_4889:
    sbc e                                         ; $4889: $9b
    rst $38                                       ; $488a: $ff
    cp e                                          ; $488b: $bb

jr_09d_488c:
    rst $18                                       ; $488c: $df
    rst $18                                       ; $488d: $df
    ld bc, $abbb                                  ; $488e: $01 $bb $ab
    ld d, a                                       ; $4891: $57
    ld d, a                                       ; $4892: $57
    xor e                                         ; $4893: $ab
    rst $38                                       ; $4894: $ff
    rst $38                                       ; $4895: $ff
    ld h, b                                       ; $4896: $60
    ld l, $f0                                     ; $4897: $2e $f0
    ld d, b                                       ; $4899: $50
    cpl                                           ; $489a: $2f
    or b                                          ; $489b: $b0
    dec l                                         ; $489c: $2d
    ld d, b                                       ; $489d: $50
    cpl                                           ; $489e: $2f
    ldh [$2e], a                                  ; $489f: $e0 $2e
    or l                                          ; $48a1: $b5
    ld a, [bc]                                    ; $48a2: $0a
    ld h, d                                       ; $48a3: $62
    rra                                           ; $48a4: $1f
    ld c, $e5                                     ; $48a5: $0e $e5
    ld a, [de]                                    ; $48a7: $1a
    and d                                         ; $48a8: $a2
    ld e, a                                       ; $48a9: $5f
    ldh a, [$2f]                                  ; $48aa: $f0 $2f
    ldh [$2e], a                                  ; $48ac: $e0 $2e
    or b                                          ; $48ae: $b0
    dec l                                         ; $48af: $2d
    add hl, de                                    ; $48b0: $19
    ld b, [hl]                                    ; $48b1: $46
    and $9c                                       ; $48b2: $e6 $9c
    dec b                                         ; $48b4: $05
    adc d                                         ; $48b5: $8a
    jp nz, $003d                                  ; $48b6: $c2 $3d $00

    dec l                                         ; $48b9: $2d
    ret nz                                        ; $48ba: $c0

    ld l, $53                                     ; $48bb: $2e $53
    nop                                           ; $48bd: $00
    db $fd                                        ; $48be: $fd
    and a                                         ; $48bf: $a7
    ld sp, hl                                     ; $48c0: $f9
    ld c, [hl]                                    ; $48c1: $4e
    pop af                                        ; $48c2: $f1
    and e                                         ; $48c3: $a3
    db $fd                                        ; $48c4: $fd
    ld b, h                                       ; $48c5: $44
    ld [$61fb], sp                                ; $48c6: $08 $fb $61
    rst $38                                       ; $48c9: $ff
    ld a, [c]                                     ; $48ca: $f2
    ld [bc], a                                    ; $48cb: $02
    inc b                                         ; $48cc: $04
    xor a                                         ; $48cd: $af
    rst $38                                       ; $48ce: $ff
    ld d, $05                                     ; $48cf: $16 $05
    rst $38                                       ; $48d1: $ff
    adc a                                         ; $48d2: $8f
    rst $38                                       ; $48d3: $ff
    ld d, [hl]                                    ; $48d4: $56
    cp a                                          ; $48d5: $bf
    inc b                                         ; $48d6: $04
    ld [$088d], sp                                ; $48d7: $08 $8d $08
    nop                                           ; $48da: $00
    ld c, b                                       ; $48db: $48
    adc h                                         ; $48dc: $8c
    inc c                                         ; $48dd: $0c
    nop                                           ; $48de: $00
    ld c, h                                       ; $48df: $4c
    cp a                                          ; $48e0: $bf
    inc b                                         ; $48e1: $04
    ld [$bf54], sp                                ; $48e2: $08 $54 $bf
    ret z                                         ; $48e5: $c8

    ld a, [bc]                                    ; $48e6: $0a
    ccf                                           ; $48e7: $3f
    ld d, h                                       ; $48e8: $54
    cp a                                          ; $48e9: $bf
    call z, Call_000_0004                         ; $48ea: $cc $04 $00
    adc $04                                       ; $48ed: $ce $04
    jr nc, jr_09d_4946                            ; $48ef: $30 $55

    nop                                           ; $48f1: $00
    cp a                                          ; $48f2: $bf
    ld bc, $54ff                                  ; $48f3: $01 $ff $54
    cp e                                          ; $48f6: $bb
    ld b, h                                       ; $48f7: $44
    cp e                                          ; $48f8: $bb
    ld a, [c]                                     ; $48f9: $f2
    ld [bc], a                                    ; $48fa: $02
    dec e                                         ; $48fb: $1d
    and $19                                       ; $48fc: $e6 $19
    sub c                                         ; $48fe: $91

Jump_09d_48ff:
    ld a, a                                       ; $48ff: $7f
    rlca                                          ; $4900: $07
    ld b, d                                       ; $4901: $42
    inc b                                         ; $4902: $04
    ld d, c                                       ; $4903: $51
    nop                                           ; $4904: $00
    rst $38                                       ; $4905: $ff
    sub b                                         ; $4906: $90
    rst $28                                       ; $4907: $ef
    ld d, h                                       ; $4908: $54
    rst $28                                       ; $4909: $ef
    sbc b                                         ; $490a: $98
    rst $20                                       ; $490b: $e7
    call nc, $ef08                                ; $490c: $d4 $08 $ef
    ret                                           ; $490f: $c9


    rst $38                                       ; $4910: $ff
    rst $20                                       ; $4911: $e7
    ld d, d                                       ; $4912: $52
    inc b                                         ; $4913: $04
    call nc, $a2ff                                ; $4914: $d4 $ff $a2
    nop                                           ; $4917: $00
    db $fd                                        ; $4918: $fd
    sub h                                         ; $4919: $94
    db $eb                                        ; $491a: $eb
    dec hl                                        ; $491b: $2b
    call c, $ed92                                 ; $491c: $dc $92 $ed
    adc d                                         ; $491f: $8a
    ld b, b                                       ; $4920: $40
    db $fd                                        ; $4921: $fd
    add [hl]                                      ; $4922: $86
    dec b                                         ; $4923: $05
    rst $38                                       ; $4924: $ff
    ld c, c                                       ; $4925: $49
    rst $38                                       ; $4926: $ff
    sub [hl]                                      ; $4927: $96
    jp hl                                         ; $4928: $e9


    ld [hl+], a                                   ; $4929: $22
    nop                                           ; $492a: $00
    db $dd                                        ; $492b: $dd
    ld c, h                                       ; $492c: $4c
    ei                                            ; $492d: $fb
    ld l, d                                       ; $492e: $6a
    db $dd                                        ; $492f: $dd
    call z, $e8fb                                 ; $4930: $cc $fb $e8
    add b                                         ; $4933: $80
    ld [hl], d                                    ; $4934: $72
    inc b                                         ; $4935: $04
    ld d, a                                       ; $4936: $57
    rst $28                                       ; $4937: $ef
    add d                                         ; $4938: $82
    rst $38                                       ; $4939: $ff
    rla                                           ; $493a: $17
    rst $28                                       ; $493b: $ef
    ld [de], a                                    ; $493c: $12
    ld [bc], a                                    ; $493d: $02
    rst $28                                       ; $493e: $ef
    scf                                           ; $493f: $37
    rst $08                                       ; $4940: $cf
    ld [de], a                                    ; $4941: $12
    rst $28                                       ; $4942: $ef
    dec [hl]                                      ; $4943: $35
    inc b                                         ; $4944: $04
    nop                                           ; $4945: $00

jr_09d_4946:
    ld d, a                                       ; $4946: $57
    nop                                           ; $4947: $00
    rst $38                                       ; $4948: $ff
    adc e                                         ; $4949: $8b
    rst $38                                       ; $494a: $ff
    daa                                           ; $494b: $27
    rst $18                                       ; $494c: $df
    and e                                         ; $494d: $a3
    rst $18                                       ; $494e: $df
    scf                                           ; $494f: $37
    nop                                           ; $4950: $00
    rst $08                                       ; $4951: $cf
    inc hl                                        ; $4952: $23
    rst $18                                       ; $4953: $df
    inc sp                                        ; $4954: $33
    rst $08                                       ; $4955: $cf
    ld h, c                                       ; $4956: $61
    sbc a                                         ; $4957: $9f
    pop hl                                        ; $4958: $e1
    ld [$c4ff], sp                                ; $4959: $08 $ff $c4
    ei                                            ; $495c: $fb
    and c                                         ; $495d: $a1
    inc b                                         ; $495e: $04
    nop                                           ; $495f: $00
    and l                                         ; $4960: $a5
    ei                                            ; $4961: $fb
    call nz, $fb00                                ; $4962: $c4 $00 $fb
    add a                                         ; $4965: $87
    ld sp, hl                                     ; $4966: $f9
    call nz, $f7fb                                ; $4967: $c4 $fb $f7
    rst $38                                       ; $496a: $ff
    jp hl                                         ; $496b: $e9


    nop                                           ; $496c: $00
    rst $38                                       ; $496d: $ff
    di                                            ; $496e: $f3
    rst $38                                       ; $496f: $ff
    pop hl                                        ; $4970: $e1
    rst $38                                       ; $4971: $ff
    rst $30                                       ; $4972: $f7
    ei                                            ; $4973: $fb
    pop hl                                        ; $4974: $e1
    jr nc, @+$01                                  ; $4975: $30 $ff

    or $04                                        ; $4977: $f6 $04
    nop                                           ; $4979: $00
    inc [hl]                                      ; $497a: $34
    ld [$cf37], sp                                ; $497b: $08 $37 $cf
    ld [hl-], a                                   ; $497e: $32
    rst $08                                       ; $497f: $cf
    nop                                           ; $4980: $00
    ld [hl], $cf                                  ; $4981: $36 $cf
    ld [hl], e                                    ; $4983: $73
    adc a                                         ; $4984: $8f
    ld [hl-], a                                   ; $4985: $32
    rst $08                                       ; $4986: $cf
    ld [hl], l                                    ; $4987: $75
    adc a                                         ; $4988: $8f
    ret nz                                        ; $4989: $c0

    inc [hl]                                      ; $498a: $34
    ld [$2804], sp                                ; $498b: $08 $04 $28
    scf                                           ; $498e: $37
    bit 4, c                                      ; $498f: $cb $61
    sbc a                                         ; $4991: $9f
    add a                                         ; $4992: $87
    ld sp, hl                                     ; $4993: $f9
    ld a, [bc]                                    ; $4994: $0a
    ld b, h                                       ; $4995: $44

jr_09d_4996:
    ei                                            ; $4996: $fb
    adc [hl]                                      ; $4997: $8e
    pop af                                        ; $4998: $f1
    inc b                                         ; $4999: $04
    ld [$0804], sp                                ; $499a: $08 $04 $08
    db $10                                        ; $499d: $10
    push af                                       ; $499e: $f5
    jr nz, @-$03                                  ; $499f: $20 $fb

    push hl                                       ; $49a1: $e5
    ld [bc], a                                    ; $49a2: $02
    nop                                           ; $49a3: $00
    db $ec                                        ; $49a4: $ec
    di                                            ; $49a5: $f3
    push hl                                       ; $49a6: $e5
    ei                                            ; $49a7: $fb
    ld l, h                                       ; $49a8: $6c
    nop                                           ; $49a9: $00
    di                                            ; $49aa: $f3
    db $e4                                        ; $49ab: $e4
    ei                                            ; $49ac: $fb
    ld c, l                                       ; $49ad: $4d
    di                                            ; $49ae: $f3
    ld [hl-], a                                   ; $49af: $32
    rst $08                                       ; $49b0: $cf
    ld [hl], a                                    ; $49b1: $77
    push hl                                       ; $49b2: $e5
    jr c, jr_09d_49b5                             ; $49b3: $38 $00

jr_09d_49b5:
    inc b                                         ; $49b5: $04
    jr c, jr_09d_49ec                             ; $49b6: $38 $34

    ld [$8b75], sp                                ; $49b8: $08 $75 $8b
    inc b                                         ; $49bb: $04
    ld [$0460], sp                                ; $49bc: $08 $60 $04
    db $10                                        ; $49bf: $10
    add hl, bc                                    ; $49c0: $09
    adc [hl]                                      ; $49c1: $8e
    pop af                                        ; $49c2: $f1
    add $f9                                       ; $49c3: $c6 $f9
    inc b                                         ; $49c5: $04
    jr jr_09d_4996                                ; $49c6: $18 $ce

    pop af                                        ; $49c8: $f1
    inc b                                         ; $49c9: $04
    ld [$e510], sp                                ; $49ca: $08 $10 $e5
    ei                                            ; $49cd: $fb
    ld c, h                                       ; $49ce: $4c
    inc a                                         ; $49cf: $3c
    nop                                           ; $49d0: $00
    ld c, h                                       ; $49d1: $4c
    di                                            ; $49d2: $f3
    db $ed                                        ; $49d3: $ed
    di                                            ; $49d4: $f3
    db $10                                        ; $49d5: $10
    ld c, h                                       ; $49d6: $4c
    di                                            ; $49d7: $f3
    call Call_000_0004                            ; $49d8: $cd $04 $00
    adc [hl]                                      ; $49db: $8e
    ld a, a                                       ; $49dc: $7f
    ld d, l                                       ; $49dd: $55
    cp a                                          ; $49de: $bf
    nop                                           ; $49df: $00
    adc [hl]                                      ; $49e0: $8e
    ld a, a                                       ; $49e1: $7f
    inc c                                         ; $49e2: $0c
    inc e                                         ; $49e3: $1c
    ld c, $6e                                     ; $49e4: $0e $6e
    ld e, l                                       ; $49e6: $5d
    cp a                                          ; $49e7: $bf
    ld d, e                                       ; $49e8: $53
    ld l, $42                                     ; $49e9: $2e $42
    dec d                                         ; $49eb: $15

jr_09d_49ec:
    ld d, l                                       ; $49ec: $55

jr_09d_49ed:
    nop                                           ; $49ed: $00
    dec b                                         ; $49ee: $05
    ld d, l                                       ; $49ef: $55
    xor d                                         ; $49f0: $aa

jr_09d_49f1:
    inc b                                         ; $49f1: $04
    jr nz, jr_09d_49f1                            ; $49f2: $20 $fd

    add hl, de                                    ; $49f4: $19
    adc b                                         ; $49f5: $88
    push af                                       ; $49f6: $f5
    ld b, [hl]                                    ; $49f7: $46
    ld [hl-], a                                   ; $49f8: $32
    rst $08                                       ; $49f9: $cf
    ld [hl], c                                    ; $49fa: $71
    xor b                                         ; $49fb: $a8
    nop                                           ; $49fc: $00
    ld h, d                                       ; $49fd: $62
    add d                                         ; $49fe: $82
    ld b, $01                                     ; $49ff: $06 $01
    rrca                                          ; $4a01: $0f
    ld d, a                                       ; $4a02: $57
    xor a                                         ; $4a03: $af
    and a                                         ; $4a04: $a7
    rst $18                                       ; $4a05: $df
    rst $38                                       ; $4a06: $ff
    rst $38                                       ; $4a07: $ff
    ld l, b                                       ; $4a08: $68
    jr jr_09d_4a0b                                ; $4a09: $18 $00

jr_09d_4a0b:
    jr nz, @-$21                                  ; $4a0b: $20 $dd

    ld bc, $0501                                  ; $4a0d: $01 $01 $05
    adc e                                         ; $4a10: $8b
    dec hl                                        ; $4a11: $2b
    rst $10                                       ; $4a12: $d7
    db $10                                        ; $4a13: $10
    sub a                                         ; $4a14: $97
    rst $28                                       ; $4a15: $ef
    xor [hl]                                      ; $4a16: $ae
    ld l, b                                       ; $4a17: $68
    nop                                           ; $4a18: $00
    xor [hl]                                      ; $4a19: $ae
    pop af                                        ; $4a1a: $f1
    adc [hl]                                      ; $4a1b: $8e
    sub b                                         ; $4a1c: $90
    nop                                           ; $4a1d: $00
    add b                                         ; $4a1e: $80
    pop bc                                        ; $4a1f: $c1
    adc $f1                                       ; $4a20: $ce $f1
    add sp, -$09                                  ; $4a22: $e8 $f7
    rst $10                                       ; $4a24: $d7
    rst $38                                       ; $4a25: $ff
    db $10                                        ; $4a26: $10
    call Call_09d_6df3                            ; $4a27: $cd $f3 $6d
    ld l, b                                       ; $4a2a: $68
    nop                                           ; $4a2b: $00
    add hl, hl                                    ; $4a2c: $29
    ld [hl], c                                    ; $4a2d: $71
    ld b, c                                       ; $4a2e: $41
    jp Jump_09d_4b10                              ; $4a2f: $c3 $10 $4b


    rst $30                                       ; $4a32: $f7
    rst $30                                       ; $4a33: $f7
    ld h, b                                       ; $4a34: $60
    jr nz, @-$5b                                  ; $4a35: $20 $a3

    rst $38                                       ; $4a37: $ff
    ld d, l                                       ; $4a38: $55
    xor a                                         ; $4a39: $af
    nop                                           ; $4a3a: $00
    xor e                                         ; $4a3b: $ab
    rst $30                                       ; $4a3c: $f7
    ld d, l                                       ; $4a3d: $55
    cp a                                          ; $4a3e: $bf

Call_09d_4a3f:
    xor e                                         ; $4a3f: $ab
    rst $10                                       ; $4a40: $d7
    ld d, l                                       ; $4a41: $55
    rst $38                                       ; $4a42: $ff
    and a                                         ; $4a43: $a7
    ld e, a                                       ; $4a44: $5f
    dec b                                         ; $4a45: $05
    ld bc, $3804                                  ; $4a46: $01 $04 $38
    push af                                       ; $4a49: $f5
    rra                                           ; $4a4a: $1f
    inc d                                         ; $4a4b: $14
    ld [$4804], sp                                ; $4a4c: $08 $04 $48
    add h                                         ; $4a4f: $84
    ld [$8ec0], sp                                ; $4a50: $08 $c0 $8e
    jr jr_09d_49ed                                ; $4a53: $18 $98

    ld [$ffff], sp                                ; $4a55: $08 $ff $ff
    jp $bfff                                      ; $4a58: $c3 $ff $bf


    pop bc                                        ; $4a5b: $c1
    db $10                                        ; $4a5c: $10
    ld e, [hl]                                    ; $4a5d: $5e
    and c                                         ; $4a5e: $a1
    ld a, $04                                     ; $4a5f: $3e $04
    add b                                         ; $4a61: $80
    ld a, [de]                                    ; $4a62: $1a
    db $fd                                        ; $4a63: $fd
    ld e, [hl]                                    ; $4a64: $5e
    db $e3                                        ; $4a65: $e3
    add b                                         ; $4a66: $80
    inc e                                         ; $4a67: $1c
    ld a, b                                       ; $4a68: $78
    cp d                                          ; $4a69: $ba
    ldh a, [$50]                                  ; $4a6a: $f0 $50
    ldh a, [rRP]                                  ; $4a6c: $f0 $56
    or b                                          ; $4a6e: $b0
    or [hl]                                       ; $4a6f: $b6
    ld [bc], a                                    ; $4a70: $02
    ldh a, [$50]                                  ; $4a71: $f0 $50
    or b                                          ; $4a73: $b0
    ld e, d                                       ; $4a74: $5a
    ldh a, [$b0]                                  ; $4a75: $f0 $b0
    jr nz, @+$0c                                  ; $4a77: $20 $0a

    rlca                                          ; $4a79: $07
    ld [de], a                                    ; $4a7a: $12
    dec b                                         ; $4a7b: $05
    rlca                                          ; $4a7c: $07
    rlca                                          ; $4a7d: $07
    inc b                                         ; $4a7e: $04
    db $10                                        ; $4a7f: $10
    xor l                                         ; $4a80: $ad
    rlca                                          ; $4a81: $07
    ldh a, [$09]                                  ; $4a82: $f0 $09
    rst $38                                       ; $4a84: $ff
    dec b                                         ; $4a85: $05
    rst $38                                       ; $4a86: $ff
    add [hl]                                      ; $4a87: $86
    ld sp, hl                                     ; $4a88: $f9
    dec bc                                        ; $4a89: $0b
    push af                                       ; $4a8a: $f5
    inc b                                         ; $4a8b: $04
    jr c, jr_09d_4ace                             ; $4a8c: $38 $40

    jp z, $2806                                   ; $4a8e: $ca $06 $28

    ld e, a                                       ; $4a91: $5f
    and b                                         ; $4a92: $a0
    and $0f                                       ; $4a93: $e6 $0f
    ld d, a                                       ; $4a95: $57
    ld l, h                                       ; $4a96: $6c
    inc d                                         ; $4a97: $14
    rla                                           ; $4a98: $17
    rst $38                                       ; $4a99: $ff
    push af                                       ; $4a9a: $f5
    ld [$400a], sp                                ; $4a9b: $08 $0a $40
    cp a                                          ; $4a9e: $bf
    dec b                                         ; $4a9f: $05
    ld e, b                                       ; $4aa0: $58
    ld [bc], a                                    ; $4aa1: $02
    db $fd                                        ; $4aa2: $fd
    rst $38                                       ; $4aa3: $ff
    ret nc                                        ; $4aa4: $d0

    ld [$0bff], sp                                ; $4aa5: $08 $ff $0b
    db $f4                                        ; $4aa8: $f4
    db $f4                                        ; $4aa9: $f4
    cp $07                                        ; $4aaa: $fe $07
    ld bc, $5eff                                  ; $4aac: $01 $ff $5e
    and h                                         ; $4aaf: $a4
    ld l, h                                       ; $4ab0: $6c
    ld b, $41                                     ; $4ab1: $06 $41
    cp $07                                        ; $4ab3: $fe $07
    db $fd                                        ; $4ab5: $fd
    ld [bc], a                                    ; $4ab6: $02
    inc a                                         ; $4ab7: $3c
    ld [$fd83], sp                                ; $4ab8: $08 $83 $fd
    ld [bc], a                                    ; $4abb: $02
    add d                                         ; $4abc: $82
    db $fd                                        ; $4abd: $fd
    add a                                         ; $4abe: $87
    ld sp, hl                                     ; $4abf: $f9
    adc d                                         ; $4ac0: $8a
    push af                                       ; $4ac1: $f5
    inc b                                         ; $4ac2: $04
    ld [$0005], sp                                ; $4ac3: $08 $05 $00
    ld a, [$40bf]                                 ; $4ac6: $fa $bf $40
    ld a, [bc]                                    ; $4ac9: $0a
    push af                                       ; $4aca: $f5
    nop                                           ; $4acb: $00
    rst $38                                       ; $4acc: $ff
    ld [bc], a                                    ; $4acd: $02

jr_09d_4ace:
    jr nz, @+$01                                  ; $4ace: $20 $ff

    ld e, a                                       ; $4ad0: $5f
    ld l, e                                       ; $4ad1: $6b
    dec b                                         ; $4ad2: $05
    and c                                         ; $4ad3: $a1
    cp $fe                                        ; $4ad4: $fe $fe
    ld bc, $50a8                                  ; $4ad6: $01 $a8 $50
    ld d, a                                       ; $4ad9: $57
    ld d, h                                       ; $4ada: $54
    ld e, $d5                                     ; $4adb: $1e $d5
    inc [hl]                                      ; $4add: $34
    rlca                                          ; $4ade: $07
    ld a, [bc]                                    ; $4adf: $0a
    push af                                       ; $4ae0: $f5
    add d                                         ; $4ae1: $82
    ld a, l                                       ; $4ae2: $7d
    adc b                                         ; $4ae3: $88
    ld h, d                                       ; $4ae4: $62
    ld c, $05                                     ; $4ae5: $0e $05
    rst $38                                       ; $4ae7: $ff
    cp a                                          ; $4ae8: $bf
    ld c, b                                       ; $4ae9: $48
    dec bc                                        ; $4aea: $0b
    cp $af                                        ; $4aeb: $fe $af
    ld d, b                                       ; $4aed: $50
    add d                                         ; $4aee: $82
    jr c, jr_09d_4b09                             ; $4aef: $38 $18

    add d                                         ; $4af1: $82
    db $fd                                        ; $4af2: $fd
    add e                                         ; $4af3: $83
    db $fd                                        ; $4af4: $fd
    ld b, $48                                     ; $4af5: $06 $48
    nop                                           ; $4af7: $00
    ld b, $02                                     ; $4af8: $06 $02
    ld sp, hl                                     ; $4afa: $f9
    ld a, [hl-]                                   ; $4afb: $3a
    push bc                                       ; $4afc: $c5
    ret nc                                        ; $4afd: $d0

    cpl                                           ; $4afe: $2f
    nop                                           ; $4aff: $00
    add $02                                       ; $4b00: $c6 $02
    dec d                                         ; $4b02: $15
    adc h                                         ; $4b03: $8c
    adc d                                         ; $4b04: $8a
    ld d, $a0                                     ; $4b05: $16 $a0
    rst $38                                       ; $4b07: $ff
    ld d, h                                       ; $4b08: $54

jr_09d_4b09:
    di                                            ; $4b09: $f3
    inc bc                                        ; $4b0a: $03
    sub d                                         ; $4b0b: $92
    ld c, $ff                                     ; $4b0c: $0e $ff
    rst $38                                       ; $4b0e: $ff
    ld e, b                                       ; $4b0f: $58

Jump_09d_4b10:
    xor e                                         ; $4b10: $ab
    ld a, d                                       ; $4b11: $7a
    ld [$8cfe], sp                                ; $4b12: $08 $fe $8c
    inc de                                        ; $4b15: $13
    and $02                                       ; $4b16: $e6 $02
    rst $38                                       ; $4b18: $ff
    rst $38                                       ; $4b19: $ff
    db $f4                                        ; $4b1a: $f4
    ldh [$74], a                                  ; $4b1b: $e0 $74
    rlca                                          ; $4b1d: $07
    ld d, $01                                     ; $4b1e: $16 $01
    sub b                                         ; $4b20: $90
    dec b                                         ; $4b21: $05
    dec b                                         ; $4b22: $05
    nop                                           ; $4b23: $00
    adc a                                         ; $4b24: $8f
    dec b                                         ; $4b25: $05
    adc d                                         ; $4b26: $8a
    nop                                           ; $4b27: $00
    rrca                                          ; $4b28: $0f
    sub l                                         ; $4b29: $95
    rra                                           ; $4b2a: $1f
    dec bc                                        ; $4b2b: $0b
    rrca                                          ; $4b2c: $0f
    add a                                         ; $4b2d: $87
    rrca                                          ; $4b2e: $0f
    ld d, l                                       ; $4b2f: $55
    inc bc                                        ; $4b30: $03
    nop                                           ; $4b31: $00
    xor d                                         ; $4b32: $aa
    nop                                           ; $4b33: $00
    ld d, b                                       ; $4b34: $50
    nop                                           ; $4b35: $00
    ld [hl], l                                    ; $4b36: $75
    or a                                          ; $4b37: $b7
    dec bc                                        ; $4b38: $0b
    db $10                                        ; $4b39: $10
    rlca                                          ; $4b3a: $07
    ld a, [de]                                    ; $4b3b: $1a
    db $fd                                        ; $4b3c: $fd
    rst $38                                       ; $4b3d: $ff
    dec bc                                        ; $4b3e: $0b
    xor h                                         ; $4b3f: $ac
    dec bc                                        ; $4b40: $0b
    ld a, [hl]                                    ; $4b41: $7e
    db $10                                        ; $4b42: $10
    ld a, [hl]                                    ; $4b43: $7e
    add [hl]                                      ; $4b44: $86
    dec c                                         ; $4b45: $0d
    cp a                                          ; $4b46: $bf
    nop                                           ; $4b47: $00
    ld e, e                                       ; $4b48: $5b
    rrca                                          ; $4b49: $0f
    and a                                         ; $4b4a: $a7
    rrca                                          ; $4b4b: $0f
    ld e, a                                       ; $4b4c: $5f
    rrca                                          ; $4b4d: $0f
    rst $20                                       ; $4b4e: $e7
    rrca                                          ; $4b4f: $0f
    nop                                           ; $4b50: $00
    ld c, a                                       ; $4b51: $4f
    rrca                                          ; $4b52: $0f
    sub a                                         ; $4b53: $97
    rra                                           ; $4b54: $1f
    ld c, a                                       ; $4b55: $4f
    rrca                                          ; $4b56: $0f
    sbc a                                         ; $4b57: $9f
    rra                                           ; $4b58: $1f
    ld d, b                                       ; $4b59: $50
    rst $38                                       ; $4b5a: $ff
    ld de, $f706                                  ; $4b5b: $11 $06 $f7
    dec d                                         ; $4b5e: $15
    ld b, $fd                                     ; $4b5f: $06 $fd
    rst $38                                       ; $4b61: $ff
    ld [$6aff], a                                 ; $4b62: $ea $ff $6a
    push af                                       ; $4b65: $f5
    inc b                                         ; $4b66: $04
    nop                                           ; $4b67: $00
    ld e, b                                       ; $4b68: $58
    ld c, $0b                                     ; $4b69: $0e $0b
    and $13                                       ; $4b6b: $e6 $13
    jp hl                                         ; $4b6d: $e9


    call c, $a101                                 ; $4b6e: $dc $01 $a1
    inc l                                         ; $4b71: $2c
    ld e, a                                       ; $4b72: $5f
    rrca                                          ; $4b73: $0f
    inc h                                         ; $4b74: $24
    nop                                           ; $4b75: $00
    adc a                                         ; $4b76: $8f
    jr z, jr_09d_4b79                             ; $4b77: $28 $00

jr_09d_4b79:
    ld [$1f08], sp                                ; $4b79: $08 $08 $1f
    rrca                                          ; $4b7c: $0f
    db $10                                        ; $4b7d: $10
    xor [hl]                                      ; $4b7e: $ae
    rrca                                          ; $4b7f: $0f
    or l                                          ; $4b80: $b5
    jr z, jr_09d_4b83                             ; $4b81: $28 $00

jr_09d_4b83:
    call nc, $a9fe                                ; $4b83: $d4 $fe $a9
    ld hl, sp+$00                                 ; $4b86: $f8 $00
    ld b, d                                       ; $4b88: $42
    ldh [$94], a                                  ; $4b89: $e0 $94
    ret nz                                        ; $4b8b: $c0

    ld b, c                                       ; $4b8c: $41
    jp $c382                                      ; $4b8d: $c3 $82 $c3


    inc d                                         ; $4b90: $14
    nop                                           ; $4b91: $00
    rst $38                                       ; $4b92: $ff
    dec h                                         ; $4b93: $25
    ld [$f500], a                                 ; $4b94: $ea $00 $f5
    ldh [rTIMA], a                                ; $4b97: $e0 $05
    dec d                                         ; $4b99: $15
    db $eb                                        ; $4b9a: $eb
    ld a, [de]                                    ; $4b9b: $1a
    and b                                         ; $4b9c: $a0
    ld e, a                                       ; $4b9d: $5f
    nop                                           ; $4b9e: $00
    ret nc                                        ; $4b9f: $d0

    dec [hl]                                      ; $4ba0: $35
    ld d, b                                       ; $4ba1: $50
    dec l                                         ; $4ba2: $2d
    ld e, l                                       ; $4ba3: $5d
    inc [hl]                                      ; $4ba4: $34
    nop                                           ; $4ba5: $00
    ld e, a                                       ; $4ba6: $5f
    nop                                           ; $4ba7: $00
    rra                                           ; $4ba8: $1f
    adc [hl]                                      ; $4ba9: $8e
    rrca                                          ; $4baa: $0f
    dec e                                         ; $4bab: $1d
    rrca                                          ; $4bac: $0f
    adc [hl]                                      ; $4bad: $8e
    rrca                                          ; $4bae: $0f
    dec de                                        ; $4baf: $1b
    call nz, VBlankInterrupt                      ; $4bb0: $c4 $40 $00
    inc [hl]                                      ; $4bb3: $34
    ld [$e765], sp                                ; $4bb4: $08 $65 $e7
    cp d                                          ; $4bb7: $ba
    ld h, [hl]                                    ; $4bb8: $66
    ld [de], a                                    ; $4bb9: $12
    ld d, b                                       ; $4bba: $50
    ld hl, sp+$10                                 ; $4bbb: $f8 $10
    and b                                         ; $4bbd: $a0
    ldh a, [rHDMA5]                               ; $4bbe: $f0 $55
    ld h, a                                       ; $4bc0: $67
    rlca                                          ; $4bc1: $07
    ld bc, $5200                                  ; $4bc2: $01 $00 $52
    ld d, b                                       ; $4bc5: $50
    nop                                           ; $4bc6: $00
    ret nc                                        ; $4bc7: $d0

    rst $38                                       ; $4bc8: $ff
    ld l, b                                       ; $4bc9: $68
    rst $38                                       ; $4bca: $ff
    pop de                                        ; $4bcb: $d1
    rst $38                                       ; $4bcc: $ff
    ld [c], a                                     ; $4bcd: $e2
    rst $38                                       ; $4bce: $ff
    nop                                           ; $4bcf: $00
    ld a, a                                       ; $4bd0: $7f
    nop                                           ; $4bd1: $00
    add sp, $00                                   ; $4bd2: $e8 $00
    ld [hl], b                                    ; $4bd4: $70
    nop                                           ; $4bd5: $00
    xor c                                         ; $4bd6: $a9
    ld bc, $5f48                                  ; $4bd7: $01 $48 $5f
    ld [hl+], a                                   ; $4bda: $22
    ld de, $ffbf                                  ; $4bdb: $11 $bf $ff
    jr nz, jr_09d_4be8                            ; $4bde: $20 $08

    nop                                           ; $4be0: $00
    nop                                           ; $4be1: $00
    ld d, l                                       ; $4be2: $55
    ld a, [bc]                                    ; $4be3: $0a
    ld d, l                                       ; $4be4: $55
    ld d, c                                       ; $4be5: $51
    rst $38                                       ; $4be6: $ff
    and d                                         ; $4be7: $a2

jr_09d_4be8:
    cp h                                          ; $4be8: $bc
    inc b                                         ; $4be9: $04
    and d                                         ; $4bea: $a2
    stop                                          ; $4beb: $10 $00
    xor d                                         ; $4bed: $aa
    inc b                                         ; $4bee: $04
    nop                                           ; $4bef: $00
    ld d, h                                       ; $4bf0: $54
    nop                                           ; $4bf1: $00
    ld l, d                                       ; $4bf2: $6a
    ld b, b                                       ; $4bf3: $40
    jr nz, jr_09d_4c0e                            ; $4bf4: $20 $18

    db $e3                                        ; $4bf6: $e3
    rst $20                                       ; $4bf7: $e7
    or b                                          ; $4bf8: $b0
    ld c, [hl]                                    ; $4bf9: $4e
    ld a, [bc]                                    ; $4bfa: $0a
    ld b, l                                       ; $4bfb: $45
    add b                                         ; $4bfc: $80
    dec b                                         ; $4bfd: $05
    inc d                                         ; $4bfe: $14
    add hl, bc                                    ; $4bff: $09
    ld d, l                                       ; $4c00: $55
    rst $38                                       ; $4c01: $ff
    xor h                                         ; $4c02: $ac
    db $fc                                        ; $4c03: $fc

jr_09d_4c04:
    jr @+$01                                      ; $4c04: $18 $ff

    rst $38                                       ; $4c06: $ff
    ld a, a                                       ; $4c07: $7f
    ei                                            ; $4c08: $fb
    jr jr_09d_4c04                                ; $4c09: $18 $f9

    ld b, $2a                                     ; $4c0b: $06 $2a
    nop                                           ; $4c0d: $00

jr_09d_4c0e:
    dec d                                         ; $4c0e: $15
    ld a, [hl+]                                   ; $4c0f: $2a
    nop                                           ; $4c10: $00
    push de                                       ; $4c11: $d5
    ld h, [hl]                                    ; $4c12: $66
    ld b, $d5                                     ; $4c13: $06 $d5
    inc a                                         ; $4c15: $3c
    ld bc, $1ad7                                  ; $4c16: $01 $d7 $1a
    inc b                                         ; $4c19: $04
    rst $10                                       ; $4c1a: $d7
    nop                                           ; $4c1b: $00
    rst $38                                       ; $4c1c: $ff
    ld d, b                                       ; $4c1d: $50
    nop                                           ; $4c1e: $00
    ret nz                                        ; $4c1f: $c0

    pop hl                                        ; $4c20: $e1
    ldh [$f0], a                                  ; $4c21: $e0 $f0
    ldh a, [rLCDC]                                ; $4c23: $f0 $40
    ld hl, sp+$01                                 ; $4c25: $f8 $01
    nop                                           ; $4c27: $00
    ld sp, hl                                     ; $4c28: $f9
    pop af                                        ; $4c29: $f1
    di                                            ; $4c2a: $f3
    add e                                         ; $4c2b: $83
    rst $00                                       ; $4c2c: $c7
    rlca                                          ; $4c2d: $07
    nop                                           ; $4c2e: $00
    rra                                           ; $4c2f: $1f
    ld e, c                                       ; $4c30: $59
    ld hl, sp-$6c                                 ; $4c31: $f8 $94
    ret nz                                        ; $4c33: $c0

    jr nz, jr_09d_4c36                            ; $4c34: $20 $00

jr_09d_4c36:
    ld b, b                                       ; $4c36: $40
    jr nz, jr_09d_4c39                            ; $4c37: $20 $00

jr_09d_4c39:
    ld [bc], a                                    ; $4c39: $02
    add [hl]                                      ; $4c3a: $86
    nop                                           ; $4c3b: $00
    add d                                         ; $4c3c: $82
    ret nz                                        ; $4c3d: $c0

    push bc                                       ; $4c3e: $c5
    ldh [$2a], a                                  ; $4c3f: $e0 $2a
    nop                                           ; $4c41: $00
    nop                                           ; $4c42: $00
    ld d, [hl]                                    ; $4c43: $56
    inc bc                                        ; $4c44: $03
    cp l                                          ; $4c45: $bd
    rlca                                          ; $4c46: $07
    ld [hl], h                                    ; $4c47: $74
    ld bc, $80ea                                  ; $4c48: $01 $ea $80
    ld b, [hl]                                    ; $4c4b: $46
    ld bc, $00e9                                  ; $4c4c: $01 $e9 $00
    ret nc                                        ; $4c4f: $d0

    nop                                           ; $4c50: $00
    add c                                         ; $4c51: $81
    rlca                                          ; $4c52: $07
    xor a                                         ; $4c53: $af
    pop bc                                        ; $4c54: $c1
    jp z, Jump_000_0401                           ; $4c55: $ca $01 $04

    ld [$7f3f], sp                                ; $4c58: $08 $3f $7f
    rra                                           ; $4c5b: $1f
    ccf                                           ; $4c5c: $3f
    and a                                         ; $4c5d: $a7
    inc sp                                        ; $4c5e: $33
    ld a, [de]                                    ; $4c5f: $1a
    add b                                         ; $4c60: $80
    adc b                                         ; $4c61: $88
    ld d, $f9                                     ; $4c62: $16 $f9
    db $fc                                        ; $4c64: $fc
    ld a, [c]                                     ; $4c65: $f2
    ldh a, [$f8]                                  ; $4c66: $f0 $f8
    db $fc                                        ; $4c68: $fc
    ld b, e                                       ; $4c69: $43
    ld bc, $87c0                                  ; $4c6a: $01 $c0 $87
    ret nz                                        ; $4c6d: $c0

    ld a, [bc]                                    ; $4c6e: $0a
    add b                                         ; $4c6f: $80
    sub l                                         ; $4c70: $95
    add b                                         ; $4c71: $80
    ld l, h                                       ; $4c72: $6c
    ld [$2755], sp                                ; $4c73: $08 $55 $27
    ld [$a800], a                                 ; $4c76: $ea $00 $a8
    ld c, h                                       ; $4c79: $4c
    nop                                           ; $4c7a: $00
    sub b                                         ; $4c7b: $90
    ld d, b                                       ; $4c7c: $50
    nop                                           ; $4c7d: $00
    xor b                                         ; $4c7e: $a8
    add [hl]                                      ; $4c7f: $86
    ld bc, $aa04                                  ; $4c80: $01 $04 $aa
    ret nz                                        ; $4c83: $c0

    ldh a, [$f8]                                  ; $4c84: $f0 $f8
    ld d, h                                       ; $4c86: $54
    ld [hl], h                                    ; $4c87: $74
    ld b, $01                                     ; $4c88: $06 $01
    inc bc                                        ; $4c8a: $03
    nop                                           ; $4c8b: $00
    ld [bc], a                                    ; $4c8c: $02
    inc bc                                        ; $4c8d: $03
    ld [bc], a                                    ; $4c8e: $02
    ld b, $04                                     ; $4c8f: $06 $04
    ld b, $04                                     ; $4c91: $06 $04
    ld c, $00                                     ; $4c93: $0e $00
    inc b                                         ; $4c95: $04
    inc b                                         ; $4c96: $04
    inc l                                         ; $4c97: $2c
    ld b, $56                                     ; $4c98: $06 $56
    inc bc                                        ; $4c9a: $03
    dec hl                                        ; $4c9b: $2b
    ld bc, $5d00                                  ; $4c9c: $01 $00 $5d
    ld bc, $013b                                  ; $4c9f: $01 $3b $01
    ld d, [hl]                                    ; $4ca2: $56
    inc bc                                        ; $4ca3: $03
    xor d                                         ; $4ca4: $aa
    ld [bc], a                                    ; $4ca5: $02
    nop                                           ; $4ca6: $00
    ld [hl], h                                    ; $4ca7: $74
    ld b, $54                                     ; $4ca8: $06 $54
    rst $38                                       ; $4caa: $ff
    xor c                                         ; $4cab: $a9
    sub $28                                       ; $4cac: $d6 $28
    rst $38                                       ; $4cae: $ff
    nop                                           ; $4caf: $00
    sub d                                         ; $4cb0: $92
    db $ed                                        ; $4cb1: $ed
    dec c                                         ; $4cb2: $0d
    ld a, [c]                                     ; $4cb3: $f2
    add b                                         ; $4cb4: $80
    rst $38                                       ; $4cb5: $ff
    ld a, [hl+]                                   ; $4cb6: $2a
    push de                                       ; $4cb7: $d5
    adc b                                         ; $4cb8: $88
    db $e4                                        ; $4cb9: $e4
    add hl, bc                                    ; $4cba: $09
    sub l                                         ; $4cbb: $95
    ld l, d                                       ; $4cbc: $6a
    cp l                                          ; $4cbd: $bd
    rst $38                                       ; $4cbe: $ff
    rlca                                          ; $4cbf: $07
    db $ec                                        ; $4cc0: $ec
    inc de                                        ; $4cc1: $13
    ld d, l                                       ; $4cc2: $55
    nop                                           ; $4cc3: $00
    rst $38                                       ; $4cc4: $ff
    ld b, d                                       ; $4cc5: $42
    cp a                                          ; $4cc6: $bf
    sub d                                         ; $4cc7: $92
    db $ed                                        ; $4cc8: $ed
    dec h                                         ; $4cc9: $25
    rst $38                                       ; $4cca: $ff
    ret                                           ; $4ccb: $c9


    ld b, b                                       ; $4ccc: $40
    ld [hl], $2c                                  ; $4ccd: $36 $2c
    rlca                                          ; $4ccf: $07
    xor e                                         ; $4cd0: $ab
    xor a                                         ; $4cd1: $af
    ld d, b                                       ; $4cd2: $50
    ld d, h                                       ; $4cd3: $54
    rst $38                                       ; $4cd4: $ff
    add l                                         ; $4cd5: $85
    nop                                           ; $4cd6: $00
    ld a, [$5da2]                                 ; $4cd7: $fa $a2 $5d
    dec b                                         ; $4cda: $05
    rst $38                                       ; $4cdb: $ff
    xor d                                         ; $4cdc: $aa
    push de                                       ; $4cdd: $d5
    ld bc, $fe40                                  ; $4cde: $01 $40 $fe
    inc c                                         ; $4ce1: $0c

jr_09d_4ce2:
    ld a, [bc]                                    ; $4ce2: $0a
    cp c                                          ; $4ce3: $b9
    add $12                                       ; $4ce4: $c6 $12
    db $ed                                        ; $4ce6: $ed
    add l                                         ; $4ce7: $85
    rst $38                                       ; $4ce8: $ff
    nop                                           ; $4ce9: $00
    ld d, b                                       ; $4cea: $50
    rst $38                                       ; $4ceb: $ff
    add l                                         ; $4cec: $85
    ld a, d                                       ; $4ced: $7a
    ld d, e                                       ; $4cee: $53
    xor a                                         ; $4cef: $af
    nop                                           ; $4cf0: $00
    rst $38                                       ; $4cf1: $ff
    ld bc, $ad52                                  ; $4cf2: $01 $52 $ad
    xor c                                         ; $4cf5: $a9
    ld d, [hl]                                    ; $4cf6: $56
    sub h                                         ; $4cf7: $94
    db $eb                                        ; $4cf8: $eb
    ld b, h                                       ; $4cf9: $44
    ld h, h                                       ; $4cfa: $64
    rlca                                          ; $4cfb: $07
    nop                                           ; $4cfc: $00
    inc sp                                        ; $4cfd: $33
    call z, $ff2a                                 ; $4cfe: $cc $2a $ff
    add l                                         ; $4d01: $85
    rst $38                                       ; $4d02: $ff
    ld [de], a                                    ; $4d03: $12
    db $ed                                        ; $4d04: $ed
    inc b                                         ; $4d05: $04
    sub $3f                                       ; $4d06: $d6 $3f
    ld d, $e9                                     ; $4d08: $16 $e9
    and b                                         ; $4d0a: $a0
    ld a, b                                       ; $4d0b: $78
    rlca                                          ; $4d0c: $07
    ld c, l                                       ; $4d0d: $4d
    or e                                          ; $4d0e: $b3
    ld b, b                                       ; $4d0f: $40
    ld l, b                                       ; $4d10: $68
    inc d                                         ; $4d11: $14
    rlca                                          ; $4d12: $07
    ld e, b                                       ; $4d13: $58
    and a                                         ; $4d14: $a7
    ld h, c                                       ; $4d15: $61
    rst $38                                       ; $4d16: $ff
    ld c, h                                       ; $4d17: $4c
    cp a                                          ; $4d18: $bf
    ld bc, $6b95                                  ; $4d19: $01 $95 $6b
    ld d, b                                       ; $4d1c: $50
    rst $38                                       ; $4d1d: $ff
    ld d, c                                       ; $4d1e: $51
    xor a                                         ; $4d1f: $af
    ldh [$5e], a                                  ; $4d20: $e0 $5e
    ld [bc], a                                    ; $4d22: $02
    inc e                                         ; $4d23: $1c
    ret c                                         ; $4d24: $d8

    daa                                           ; $4d25: $27
    ld d, c                                       ; $4d26: $51
    db $e4                                        ; $4d27: $e4
    ld b, $b1                                     ; $4d28: $06 $b1
    rlca                                          ; $4d2a: $07
    ld d, h                                       ; $4d2b: $54
    rrca                                          ; $4d2c: $0f
    ret nz                                        ; $4d2d: $c0

    rst $08                                       ; $4d2e: $cf
    jr nc, @-$0e                                  ; $4d2f: $30 $f0

    pop bc                                        ; $4d31: $c1
    ld [bc], a                                    ; $4d32: $02
    jr nz, jr_09d_4d98                            ; $4d33: $20 $63

    daa                                           ; $4d35: $27
    nop                                           ; $4d36: $00
    rst $38                                       ; $4d37: $ff
    jr c, @+$01                                   ; $4d38: $38 $ff

    inc b                                         ; $4d3a: $04
    jr c, jr_09d_4d7c                             ; $4d3b: $38 $3f

    ld hl, sp+$3f                                 ; $4d3d: $f8 $3f
    ld hl, sp+$73                                 ; $4d3f: $f8 $73
    rra                                           ; $4d41: $1f
    sbc h                                         ; $4d42: $9c
    ld h, a                                       ; $4d43: $67
    jr jr_09d_4ce2                                ; $4d44: $18 $9c

    ld h, a                                       ; $4d46: $67
    add h                                         ; $4d47: $84
    ld [bc], a                                    ; $4d48: $02
    db $10                                        ; $4d49: $10
    jr z, jr_09d_4d9c                             ; $4d4a: $28 $50

    ret nz                                        ; $4d4c: $c0

    ld sp, hl                                     ; $4d4d: $f9
    ret nz                                        ; $4d4e: $c0

    ret                                           ; $4d4f: $c9


    inc h                                         ; $4d50: $24
    ld [$3828], sp                                ; $4d51: $08 $28 $38
    rst $38                                       ; $4d54: $ff

jr_09d_4d55:
    nop                                           ; $4d55: $00
    ld h, $18                                     ; $4d56: $26 $18
    add h                                         ; $4d58: $84
    ld h, a                                       ; $4d59: $67
    ld c, b                                       ; $4d5a: $48
    jr z, jr_09d_4d65                             ; $4d5b: $28 $08

    ld sp, hl                                     ; $4d5d: $f9

jr_09d_4d5e:
    pop bc                                        ; $4d5e: $c1
    pop bc                                        ; $4d5f: $c1
    ret                                           ; $4d60: $c9


    ld [bc], a                                    ; $4d61: $02
    ld c, b                                       ; $4d62: $48
    rra                                           ; $4d63: $1f
    db $e3                                        ; $4d64: $e3

jr_09d_4d65:
    rra                                           ; $4d65: $1f
    db $10                                        ; $4d66: $10
    db $e3                                        ; $4d67: $e3
    inc de                                        ; $4d68: $13
    rst $28                                       ; $4d69: $ef
    ld [bc], a                                    ; $4d6a: $02

jr_09d_4d6b:
    jr c, jr_09d_4d5e                             ; $4d6b: $38 $f1

jr_09d_4d6d:
    add b                                         ; $4d6d: $80
    ldh a, [$81]                                  ; $4d6e: $f0 $81
    ldh [rSC], a                                  ; $4d70: $e0 $02
    ld c, b                                       ; $4d72: $48
    ld l, $18                                     ; $4d73: $2e $18
    jp hl                                         ; $4d75: $e9


    rrca                                          ; $4d76: $0f
    adc $c1                                       ; $4d77: $ce $c1
    adc $c1                                       ; $4d79: $ce $c1
    ret nz                                        ; $4d7b: $c0

jr_09d_4d7c:
    ld h, b                                       ; $4d7c: $60
    ret                                           ; $4d7d: $c9


    inc l                                         ; $4d7e: $2c
    jr @-$05                                      ; $4d7f: $18 $f9

    rrca                                          ; $4d81: $0f
    jr c, jr_09d_4d6b                             ; $4d82: $38 $e7

    jr c, jr_09d_4d6d                             ; $4d84: $38 $e7

    jr nz, jr_09d_4df4                            ; $4d86: $20 $6c

    rst $20                                       ; $4d88: $e7
    ld l, $18                                     ; $4d89: $2e $18
    and [hl]                                      ; $4d8b: $a6
    jr nz, jr_09d_4daa                            ; $4d8c: $20 $1c

    ld [bc], a                                    ; $4d8e: $02
    nop                                           ; $4d8f: $00
    or h                                          ; $4d90: $b4
    inc c                                         ; $4d91: $0c
    inc bc                                        ; $4d92: $03
    ld [hl], e                                    ; $4d93: $73
    rlca                                          ; $4d94: $07
    add e                                         ; $4d95: $83
    ld [hl], e                                    ; $4d96: $73
    add e                                         ; $4d97: $83

jr_09d_4d98:
    inc bc                                        ; $4d98: $03
    sub e                                         ; $4d99: $93
    ld [bc], a                                    ; $4d9a: $02
    ld c, b                                       ; $4d9b: $48

jr_09d_4d9c:
    rrc h                                         ; $4d9c: $cb $0c
    ld l, e                                       ; $4d9e: $6b
    nop                                           ; $4d9f: $00
    sbc b                                         ; $4da0: $98
    ld l, a                                       ; $4da1: $6f
    nop                                           ; $4da2: $00
    inc hl                                        ; $4da3: $23
    rst $38                                       ; $4da4: $ff
    ld [bc], a                                    ; $4da5: $02
    ld a, b                                       ; $4da6: $78
    jp hl                                         ; $4da7: $e9


    inc c                                         ; $4da8: $0c
    di                                            ; $4da9: $f3

jr_09d_4daa:
    rrca                                          ; $4daa: $0f
    add e                                         ; $4dab: $83
    sbc e                                         ; $4dac: $9b
    ld [bc], a                                    ; $4dad: $02
    nop                                           ; $4dae: $00
    ret nz                                        ; $4daf: $c0

    ret                                           ; $4db0: $c9


    ld [bc], a                                    ; $4db1: $02
    jr c, @+$01                                   ; $4db2: $38 $ff

    inc c                                         ; $4db4: $0c
    jr nz, jr_09d_4e1b                            ; $4db5: $20 $64

    nop                                           ; $4db7: $00
    inc b                                         ; $4db8: $04
    jr z, jr_09d_4d55                             ; $4db9: $28 $9a

    rrca                                          ; $4dbb: $0f
    dec c                                         ; $4dbc: $0d
    db $fc                                        ; $4dbd: $fc
    rra                                           ; $4dbe: $1f
    ld [bc], a                                    ; $4dbf: $02
    jr c, jr_09d_4de1                             ; $4dc0: $38 $1f

    dec c                                         ; $4dc2: $0d
    call nc, $01b0                                ; $4dc3: $d4 $b0 $01
    xor b                                         ; $4dc6: $a8
    xor a                                         ; $4dc7: $af
    or b                                          ; $4dc8: $b0
    ld bc, $b08d                                  ; $4dc9: $01 $8d $b0
    ld bc, $b0aa                                  ; $4dcc: $01 $aa $b0
    ld bc, $0844                                  ; $4dcf: $01 $44 $08
    inc b                                         ; $4dd2: $04
    jr z, jr_09d_4e13                             ; $4dd3: $28 $3e

    dec d                                         ; $4dd5: $15
    add b                                         ; $4dd6: $80
    ld [$8917], a                                 ; $4dd7: $ea $17 $89
    ld bc, $fffd                                  ; $4dda: $01 $fd $ff
    jp c, $edff                                   ; $4ddd: $da $ff $ed

    ld [bc], a                                    ; $4de0: $02

jr_09d_4de1:
    rst $38                                       ; $4de1: $ff
    ld a, [$57ff]                                 ; $4de2: $fa $ff $57
    nop                                           ; $4de5: $00
    adc e                                         ; $4de6: $8b
    and b                                         ; $4de7: $a0
    inc bc                                        ; $4de8: $03
    ld c, d                                       ; $4de9: $4a
    add hl, hl                                    ; $4dea: $29
    ld b, b                                       ; $4deb: $40
    dec b                                         ; $4dec: $05
    and h                                         ; $4ded: $a4
    ld [bc], a                                    ; $4dee: $02
    dec d                                         ; $4def: $15
    xor b                                         ; $4df0: $a8
    ld a, [bc]                                    ; $4df1: $0a
    nop                                           ; $4df2: $00
    and d                                         ; $4df3: $a2

jr_09d_4df4:
    ldh a, [rSC]                                  ; $4df4: $f0 $02
    nop                                           ; $4df6: $00
    ld d, b                                       ; $4df7: $50
    ld d, b                                       ; $4df8: $50
    ld l, c                                       ; $4df9: $69
    ld hl, sp-$30                                 ; $4dfa: $f8 $d0
    ldh a, [$e9]                                  ; $4dfc: $f0 $e9
    ld hl, sp+$00                                 ; $4dfe: $f8 $00
    ld a, [c]                                     ; $4e00: $f2
    ldh a, [$f5]                                  ; $4e01: $f0 $f5
    rst $38                                       ; $4e03: $ff
    ld e, d                                       ; $4e04: $5a
    rst $38                                       ; $4e05: $ff
    ld [hl], l                                    ; $4e06: $75
    ld a, a                                       ; $4e07: $7f
    ld h, d                                       ; $4e08: $62
    ld e, d                                       ; $4e09: $5a
    adc $03                                       ; $4e0a: $ce $03
    add b                                         ; $4e0c: $80
    dec de                                        ; $4e0d: $1b
    dec d                                         ; $4e0e: $15
    rst $38                                       ; $4e0f: $ff
    dec hl                                        ; $4e10: $2b
    ld a, d                                       ; $4e11: $7a
    inc b                                         ; $4e12: $04

jr_09d_4e13:
    ld a, [hl+]                                   ; $4e13: $2a
    or b                                          ; $4e14: $b0
    ld a, [hl]                                    ; $4e15: $7e
    inc b                                         ; $4e16: $04
    xor e                                         ; $4e17: $ab
    ld a, b                                       ; $4e18: $78
    ld [de], a                                    ; $4e19: $12
    inc h                                         ; $4e1a: $24

jr_09d_4e1b:
    ld [$f86d], sp                                ; $4e1b: $08 $6d $f8
    ld a, [$00f0]                                 ; $4e1e: $fa $f0 $00
    db $fd                                        ; $4e21: $fd
    ld hl, sp-$05                                 ; $4e22: $f8 $fb
    ldh a, [$fd]                                  ; $4e24: $f0 $fd
    ldh a, [$f8]                                  ; $4e26: $f0 $f8
    ldh a, [rP1]                                  ; $4e28: $f0 $00
    push de                                       ; $4e2a: $d5
    rst $38                                       ; $4e2b: $ff
    ld l, d                                       ; $4e2c: $6a
    rst $38                                       ; $4e2d: $ff
    pop bc                                        ; $4e2e: $c1
    pop hl                                        ; $4e2f: $e1
    sub h                                         ; $4e30: $94
    add b                                         ; $4e31: $80
    nop                                           ; $4e32: $00
    ld [hl+], a                                   ; $4e33: $22
    nop                                           ; $4e34: $00
    ld b, c                                       ; $4e35: $41
    nop                                           ; $4e36: $00
    add d                                         ; $4e37: $82
    jr nz, jr_09d_4e43                            ; $4e38: $20 $09

    ld b, b                                       ; $4e3a: $40
    db $10                                        ; $4e3b: $10
    ld e, e                                       ; $4e3c: $5b
    rst $38                                       ; $4e3d: $ff
    or a                                          ; $4e3e: $b7
    ld l, d                                       ; $4e3f: $6a
    inc b                                         ; $4e40: $04
    ld e, a                                       ; $4e41: $5f
    rra                                           ; $4e42: $1f

jr_09d_4e43:
    xor a                                         ; $4e43: $af
    rrca                                          ; $4e44: $0f
    ld bc, $0777                                  ; $4e45: $01 $77 $07
    db $eb                                        ; $4e48: $eb
    inc bc                                        ; $4e49: $03
    push de                                       ; $4e4a: $d5
    ld bc, $24f5                                  ; $4e4b: $01 $f5 $24
    nop                                           ; $4e4e: $00
    ld d, b                                       ; $4e4f: $50
    pop af                                        ; $4e50: $f1
    inc b                                         ; $4e51: $04
    jr @-$06                                      ; $4e52: $18 $f8

    inc b                                         ; $4e54: $04
    ld [$8002], sp                                ; $4e55: $08 $02 $80
    dec b                                         ; $4e58: $05
    ld b, e                                       ; $4e59: $43
    nop                                           ; $4e5a: $00
    ld b, $8e                                     ; $4e5b: $06 $8e
    add hl, de                                    ; $4e5d: $19
    inc e                                         ; $4e5e: $1c
    ld l, $20                                     ; $4e5f: $2e $20
    dec d                                         ; $4e61: $15
    ld b, b                                       ; $4e62: $40
    nop                                           ; $4e63: $00
    ld c, d                                       ; $4e64: $4a
    ld b, b                                       ; $4e65: $40
    ld d, l                                       ; $4e66: $55
    ret nz                                        ; $4e67: $c0

    xor b                                         ; $4e68: $a8
    ld bc, $e0f4                                  ; $4e69: $01 $f4 $e0
    nop                                           ; $4e6c: $00
    sbc b                                         ; $4e6d: $98
    jr nc, @+$12                                  ; $4e6e: $30 $10

    db $10                                        ; $4e70: $10
    adc b                                         ; $4e71: $88
    add hl, de                                    ; $4e72: $19
    add hl, bc                                    ; $4e73: $09
    dec c                                         ; $4e74: $0d
    ld bc, $0d05                                  ; $4e75: $01 $05 $0d
    dec h                                         ; $4e78: $25
    dec h                                         ; $4e79: $25
    pop af                                        ; $4e7a: $f1

jr_09d_4e7b:
    ldh a, [$fa]                                  ; $4e7b: $f0 $fa
    jr z, jr_09d_4e7f                             ; $4e7d: $28 $00

jr_09d_4e7f:
    ld de, $f8fa                                  ; $4e7f: $11 $fa $f8
    push af                                       ; $4e82: $f5
    inc b                                         ; $4e83: $04
    db $10                                        ; $4e84: $10
    ei                                            ; $4e85: $fb
    ldh a, [$85]                                  ; $4e86: $f0 $85
    ld h, b                                       ; $4e88: $60
    ld [bc], a                                    ; $4e89: $02
    ld d, [hl]                                    ; $4e8a: $56
    add c                                         ; $4e8b: $81
    ld h, b                                       ; $4e8c: $60
    ld [bc], a                                    ; $4e8d: $02
    add b                                         ; $4e8e: $80
    ld h, b                                       ; $4e8f: $60
    ld [bc], a                                    ; $4e90: $02
    sub d                                         ; $4e91: $92
    ld h, b                                       ; $4e92: $60
    ld [bc], a                                    ; $4e93: $02
    sub b                                         ; $4e94: $90
    ld a, [hl-]                                   ; $4e95: $3a
    ld d, h                                       ; $4e96: $54
    inc b                                         ; $4e97: $04
    rst $38                                       ; $4e98: $ff
    ld b, c                                       ; $4e99: $41
    cp [hl]                                       ; $4e9a: $be
    sub b                                         ; $4e9b: $90
    xor $90                                       ; $4e9c: $ee $90
    ld a, [hl+]                                   ; $4e9e: $2a
    ld l, a                                       ; $4e9f: $6f
    ret nc                                        ; $4ea0: $d0

    nop                                           ; $4ea1: $00
    ld d, h                                       ; $4ea2: $54
    ld e, a                                       ; $4ea3: $5f
    dec d                                         ; $4ea4: $15
    ld a, [de]                                    ; $4ea5: $1a
    sub d                                         ; $4ea6: $92
    dec a                                         ; $4ea7: $3d
    ld d, b                                       ; $4ea8: $50
    cp $00                                        ; $4ea9: $fe $00
    add h                                         ; $4eab: $84
    ld a, d                                       ; $4eac: $7a
    ld d, d                                       ; $4ead: $52
    xor [hl]                                      ; $4eae: $ae
    ld b, $fe                                     ; $4eaf: $06 $fe
    ld d, a                                       ; $4eb1: $57
    xor [hl]                                      ; $4eb2: $ae
    nop                                           ; $4eb3: $00
    xor [hl]                                      ; $4eb4: $ae
    ld d, a                                       ; $4eb5: $57
    sub a                                         ; $4eb6: $97
    db $eb                                        ; $4eb7: $eb
    ld b, l                                       ; $4eb8: $45
    rst $38                                       ; $4eb9: $ff
    ld a, [hl-]                                   ; $4eba: $3a
    rra                                           ; $4ebb: $1f
    nop                                           ; $4ebc: $00
    inc sp                                        ; $4ebd: $33
    inc e                                         ; $4ebe: $1c
    ld a, [hl-]                                   ; $4ebf: $3a
    rra                                           ; $4ec0: $1f
    dec a                                         ; $4ec1: $3d
    rra                                           ; $4ec2: $1f
    ld a, [hl-]                                   ; $4ec3: $3a
    dec e                                         ; $4ec4: $1d
    ld a, [bc]                                    ; $4ec5: $0a
    xor [hl]                                      ; $4ec6: $ae
    ccf                                           ; $4ec7: $3f
    sub [hl]                                      ; $4ec8: $96
    ld sp, hl                                     ; $4ec9: $f9
    ld [hl-], a                                   ; $4eca: $32
    rrca                                          ; $4ecb: $0f
    rst $38                                       ; $4ecc: $ff
    inc e                                         ; $4ecd: $1c
    inc b                                         ; $4ece: $04
    ld a, a                                       ; $4ecf: $7f
    ld bc, $f7ff                                  ; $4ed0: $01 $ff $f7
    inc e                                         ; $4ed3: $1c
    ld a, $1c                                     ; $4ed4: $3e $1c
    or a                                          ; $4ed6: $b7
    ld e, h                                       ; $4ed7: $5c
    or b                                          ; $4ed8: $b0
    add hl, de                                    ; $4ed9: $19
    ld b, b                                       ; $4eda: $40
    nop                                           ; $4edb: $00
    xor b                                         ; $4edc: $a8
    rlca                                          ; $4edd: $07
    push de                                       ; $4ede: $d5
    nop                                           ; $4edf: $00
    ld l, e                                       ; $4ee0: $6b
    nop                                           ; $4ee1: $00
    ld [c], a                                     ; $4ee2: $e2
    dec e                                         ; $4ee3: $1d
    ld a, b                                       ; $4ee4: $78
    ld c, a                                       ; $4ee5: $4f
    dec bc                                        ; $4ee6: $0b
    ld [$1010], sp                                ; $4ee7: $08 $10 $10
    jr nc, jr_09d_4f18                            ; $4eea: $30 $2c

    rst $08                                       ; $4eec: $cf
    ld de, $fefe                                  ; $4eed: $11 $fe $fe
    rst $38                                       ; $4ef0: $ff
    nop                                           ; $4ef1: $00
    ld l, [hl]                                    ; $4ef2: $6e
    jr c, jr_09d_4f74                             ; $4ef3: $38 $7f

    cp b                                          ; $4ef5: $b8
    db $ed                                        ; $4ef6: $ed

jr_09d_4ef7:
    jr c, jr_09d_4ef7                             ; $4ef7: $38 $fe

    jr c, jr_09d_4e7b                             ; $4ef9: $38 $80

    ldh [rKEY1], a                                ; $4efb: $e0 $4d
    ld b, d                                       ; $4efd: $42
    rst $38                                       ; $4efe: $ff
    add c                                         ; $4eff: $81
    rst $38                                       ; $4f00: $ff
    adc e                                         ; $4f01: $8b
    push af                                       ; $4f02: $f5
    ld b, $6a                                     ; $4f03: $06 $6a
    ld sp, hl                                     ; $4f05: $f9
    inc b                                         ; $4f06: $04
    jr jr_09d_4f81                                ; $4f07: $18 $78

    dec c                                         ; $4f09: $0d
    ret nz                                        ; $4f0a: $c0

    or h                                          ; $4f0b: $b4
    inc b                                         ; $4f0c: $04
    xor b                                         ; $4f0d: $a8
    ld d, b                                       ; $4f0e: $50
    dec c                                         ; $4f0f: $0d
    cp $00                                        ; $4f10: $fe $00
    jr @+$01                                      ; $4f12: $18 $ff

    ld h, [hl]                                    ; $4f14: $66
    rst $38                                       ; $4f15: $ff
    ld hl, sp-$01                                 ; $4f16: $f8 $ff

jr_09d_4f18:
    pop bc                                        ; $4f18: $c1
    rst $38                                       ; $4f19: $ff
    ld b, e                                       ; $4f1a: $43
    ld c, d                                       ; $4f1b: $4a
    ld a, h                                       ; $4f1c: $7c
    dec b                                         ; $4f1d: $05
    dec b                                         ; $4f1e: $05
    ld a, [$a05f]                                 ; $4f1f: $fa $5f $a0
    add hl, de                                    ; $4f22: $19
    dec b                                         ; $4f23: $05
    cp e                                          ; $4f24: $bb
    ld b, $40                                     ; $4f25: $06 $40
    ld d, [hl]                                    ; $4f27: $56
    db $e4                                        ; $4f28: $e4
    ld [bc], a                                    ; $4f29: $02
    ld a, [bc]                                    ; $4f2a: $0a
    push af                                       ; $4f2b: $f5
    db $fd                                        ; $4f2c: $fd
    ld [bc], a                                    ; $4f2d: $02
    ld d, b                                       ; $4f2e: $50
    xor a                                         ; $4f2f: $af
    ld [hl+], a                                   ; $4f30: $22
    add b                                         ; $4f31: $80
    ld a, a                                       ; $4f32: $7f
    ld d, b                                       ; $4f33: $50
    dec e                                         ; $4f34: $1d
    rst $38                                       ; $4f35: $ff
    rst $38                                       ; $4f36: $ff
    cp [hl]                                       ; $4f37: $be
    inc b                                         ; $4f38: $04
    ld b, b                                       ; $4f39: $40
    rst $38                                       ; $4f3a: $ff
    pop af                                        ; $4f3b: $f1
    or $04                                        ; $4f3c: $f6 $04
    ld a, [hl+]                                   ; $4f3e: $2a
    dec e                                         ; $4f3f: $1d
    sbc h                                         ; $4f40: $9c
    ld c, $a0                                     ; $4f41: $0e $a0
    ld c, $ef                                     ; $4f43: $0e $ef
    rst $38                                       ; $4f45: $ff
    rst $18                                       ; $4f46: $df
    inc b                                         ; $4f47: $04
    jr nz, @-$76                                  ; $4f48: $20 $88

    inc c                                         ; $4f4a: $0c
    ld [$ffff], sp                                ; $4f4b: $08 $ff $ff
    db $dd                                        ; $4f4e: $dd
    ld [de], a                                    ; $4f4f: $12
    nop                                           ; $4f50: $00
    sbc $ff                                       ; $4f51: $de $ff
    xor $a0                                       ; $4f53: $ee $a0
    ld d, $00                                     ; $4f55: $16 $00
    cp $04                                        ; $4f57: $fe $04
    db $10                                        ; $4f59: $10
    dec d                                         ; $4f5a: $15
    db $eb                                        ; $4f5b: $eb
    xor b                                         ; $4f5c: $a8
    ld d, a                                       ; $4f5d: $57
    ld hl, $ff00                                  ; $4f5e: $21 $00 $ff
    db $10                                        ; $4f61: $10
    rst $38                                       ; $4f62: $ff
    ld l, l                                       ; $4f63: $6d
    rst $38                                       ; $4f64: $ff
    rra                                           ; $4f65: $1f
    rst $38                                       ; $4f66: $ff
    rlca                                          ; $4f67: $07
    nop                                           ; $4f68: $00
    rst $38                                       ; $4f69: $ff
    inc bc                                        ; $4f6a: $03
    rst $38                                       ; $4f6b: $ff
    ld [hl], l                                    ; $4f6c: $75
    rrca                                          ; $4f6d: $0f
    xor d                                         ; $4f6e: $aa
    rrca                                          ; $4f6f: $0f
    db $dd                                        ; $4f70: $dd
    ld a, [bc]                                    ; $4f71: $0a
    rra                                           ; $4f72: $1f
    adc d                                         ; $4f73: $8a

jr_09d_4f74:
    rrca                                          ; $4f74: $0f
    push de                                       ; $4f75: $d5
    inc b                                         ; $4f76: $04
    nop                                           ; $4f77: $00
    call nc, RST_08                               ; $4f78: $d4 $08 $00
    ld b, b                                       ; $4f7b: $40
    nop                                           ; $4f7c: $00
    ldh [rNR42], a                                ; $4f7d: $e0 $21

jr_09d_4f7f:
    pop hl                                        ; $4f7f: $e1
    ld b, d                                       ; $4f80: $42

jr_09d_4f81:
    db $e3                                        ; $4f81: $e3

jr_09d_4f82:
    ld hl, $43e3                                  ; $4f82: $21 $e3 $43
    ld [bc], a                                    ; $4f85: $02
    db $e3                                        ; $4f86: $e3
    and [hl]                                      ; $4f87: $a6
    rst $20                                       ; $4f88: $e7
    ld e, a                                       ; $4f89: $5f
    rst $38                                       ; $4f8a: $ff
    xor l                                         ; $4f8b: $ad
    ld c, [hl]                                    ; $4f8c: $4e
    rlca                                          ; $4f8d: $07
    db $eb                                        ; $4f8e: $eb
    and b                                         ; $4f8f: $a0
    ld c, d                                       ; $4f90: $4a
    jr nz, jr_09d_4f82                            ; $4f91: $20 $ef

    ld d, h                                       ; $4f93: $54
    db $10                                        ; $4f94: $10
    inc d                                         ; $4f95: $14
    rrca                                          ; $4f96: $0f
    xor b                                         ; $4f97: $a8
    rrca                                          ; $4f98: $0f
    ld d, l                                       ; $4f99: $55
    nop                                           ; $4f9a: $00
    rrca                                          ; $4f9b: $0f
    cp b                                          ; $4f9c: $b8
    rrca                                          ; $4f9d: $0f
    ld [hl], c                                    ; $4f9e: $71
    rrca                                          ; $4f9f: $0f
    and d                                         ; $4fa0: $a2
    rrca                                          ; $4fa1: $0f
    ld d, c                                       ; $4fa2: $51
    inc c                                         ; $4fa3: $0c
    rrca                                          ; $4fa4: $0f
    and b                                         ; $4fa5: $a0
    rrca                                          ; $4fa6: $0f
    ld d, a                                       ; $4fa7: $57
    ld e, d                                       ; $4fa8: $5a
    ld b, $04                                     ; $4fa9: $06 $04
    ld [$ff5d], sp                                ; $4fab: $08 $5d $ff
    ld d, l                                       ; $4fae: $55
    cp e                                          ; $4faf: $bb
    ld l, b                                       ; $4fb0: $68
    inc d                                         ; $4fb1: $14
    cp a                                          ; $4fb2: $bf
    cp a                                          ; $4fb3: $bf
    inc [hl]                                      ; $4fb4: $34
    db $fd                                        ; $4fb5: $fd
    adc [hl]                                      ; $4fb6: $8e
    rla                                           ; $4fb7: $17
    ld e, a                                       ; $4fb8: $5f
    sbc b                                         ; $4fb9: $98
    dec b                                         ; $4fba: $05
    ret nc                                        ; $4fbb: $d0

    db $f4                                        ; $4fbc: $f4
    add hl, bc                                    ; $4fbd: $09
    call nz, $d50c                                ; $4fbe: $c4 $0c $d5
    sbc d                                         ; $4fc1: $9a
    rlca                                          ; $4fc2: $07
    inc b                                         ; $4fc3: $04
    xor h                                         ; $4fc4: $ac
    add l                                         ; $4fc5: $85
    call nc, $c600                                ; $4fc6: $d4 $00 $c6
    db $ec                                        ; $4fc9: $ec
    push hl                                       ; $4fca: $e5
    db $f4                                        ; $4fcb: $f4
    or $fc                                        ; $4fcc: $f6 $fc
    db $fd                                        ; $4fce: $fd
    db $fc                                        ; $4fcf: $fc
    nop                                           ; $4fd0: $00
    ld a, e                                       ; $4fd1: $7b
    ld hl, sp-$03                                 ; $4fd2: $f8 $fd
    ld hl, sp-$14                                 ; $4fd4: $f8 $ec
    inc b                                         ; $4fd6: $04
    ld e, b                                       ; $4fd7: $58
    inc c                                         ; $4fd8: $0c
    nop                                           ; $4fd9: $00
    or b                                          ; $4fda: $b0
    jr @-$2e                                      ; $4fdb: $18 $d0

    jr jr_09d_4f7f                                ; $4fdd: $18 $a0

    jr nc, jr_09d_5042                            ; $4fdf: $30 $61

    add hl, hl                                    ; $4fe1: $29
    dec bc                                        ; $4fe2: $0b
    and l                                         ; $4fe3: $a5
    ld sp, $6842                                  ; $4fe4: $31 $42 $68
    jr c, jr_09d_5001                             ; $4fe7: $38 $18

    ld a, [$06ae]                                 ; $4fe9: $fa $ae $06
    call nc, Call_09d_550d                        ; $4fec: $d4 $0d $55
    ld a, [$051c]                                 ; $4fef: $fa $1c $05
    xor e                                         ; $4ff2: $ab
    jr nz, jr_09d_4ffa                            ; $4ff3: $20 $05

    adc e                                         ; $4ff5: $8b
    ret z                                         ; $4ff6: $c8

    ld b, $8b                                     ; $4ff7: $06 $8b
    ld d, h                                       ; $4ff9: $54

jr_09d_4ffa:
    ld b, $16                                     ; $4ffa: $06 $16
    dec bc                                        ; $4ffc: $0b
    rst $38                                       ; $4ffd: $ff
    ld a, [$0034]                                 ; $4ffe: $fa $34 $00

jr_09d_5001:
    ld a, d                                       ; $5001: $7a
    jr c, jr_09d_5004                             ; $5002: $38 $00

jr_09d_5004:
    ld a, d                                       ; $5004: $7a
    ld [bc], a                                    ; $5005: $02
    ldh a, [rLCDC]                                ; $5006: $f0 $40
    ld a, [$0004]                                 ; $5008: $fa $04 $00
    pop bc                                        ; $500b: $c1
    ld [hl], b                                    ; $500c: $70
    ld [hl], b                                    ; $500d: $70
    ld a, b                                       ; $500e: $78
    db $fc                                        ; $500f: $fc
    ld a, h                                       ; $5010: $7c
    ldh [rNR50], a                                ; $5011: $e0 $24
    dec c                                         ; $5013: $0d
    ret c                                         ; $5014: $d8

    dec b                                         ; $5015: $05
    ld c, h                                       ; $5016: $4c
    ld bc, $4048                                  ; $5017: $01 $48 $40
    ld d, [hl]                                    ; $501a: $56
    add $26                                       ; $501b: $c6 $26
    inc b                                         ; $501d: $04
    ld h, a                                       ; $501e: $67
    ld [hl], e                                    ; $501f: $73
    rst $20                                       ; $5020: $e7
    push de                                       ; $5021: $d5
    rst $30                                       ; $5022: $f7
    cp $0f                                        ; $5023: $fe $0f
    xor d                                         ; $5025: $aa
    rst $38                                       ; $5026: $ff
    nop                                           ; $5027: $00
    ld h, a                                       ; $5028: $67
    ld h, a                                       ; $5029: $67
    ld b, a                                       ; $502a: $47
    ld c, a                                       ; $502b: $4f
    rrca                                          ; $502c: $0f
    rrca                                          ; $502d: $0f
    rrca                                          ; $502e: $0f
    rra                                           ; $502f: $1f
    ld [$1f1f], sp                                ; $5030: $08 $1f $1f
    ccf                                           ; $5033: $3f
    ccf                                           ; $5034: $3f
    sub b                                         ; $5035: $90
    dec c                                         ; $5036: $0d
    push af                                       ; $5037: $f5
    ldh a, [$f9]                                  ; $5038: $f0 $f9
    xor b                                         ; $503a: $a8
    ld a, [hl-]                                   ; $503b: $3a
    nop                                           ; $503c: $00
    jp hl                                         ; $503d: $e9


    ld h, h                                       ; $503e: $64
    ld [bc], a                                    ; $503f: $02
    add sp, $04                                   ; $5040: $e8 $04

jr_09d_5042:
    ld [$55f8], sp                                ; $5042: $08 $f8 $55
    ld a, a                                       ; $5045: $7f
    nop                                           ; $5046: $00
    adc e                                         ; $5047: $8b
    rra                                           ; $5048: $1f
    ld d, l                                       ; $5049: $55
    ld bc, $0000                                  ; $504a: $01 $00 $00
    ld b, b                                       ; $504d: $40
    ret nz                                        ; $504e: $c0

    dec [hl]                                      ; $504f: $35
    or b                                          ; $5050: $b0
    ldh a, [$b8]                                  ; $5051: $f0 $b8
    ld a, [bc]                                    ; $5053: $0a
    add b                                         ; $5054: $80
    dec l                                         ; $5055: $2d
    cp $56                                        ; $5056: $fe $56
    ld hl, $24d1                                  ; $5058: $21 $d1 $24
    nop                                           ; $505b: $00
    ld de, $f0d1                                  ; $505c: $11 $d1 $f0
    ld l, c                                       ; $505f: $69
    inc b                                         ; $5060: $04
    nop                                           ; $5061: $00
    xor b                                         ; $5062: $a8
    ld hl, sp+$51                                 ; $5063: $f8 $51
    inc b                                         ; $5065: $04
    nop                                           ; $5066: $00
    nop                                           ; $5067: $00
    halt                                          ; $5068: $76
    sbc l                                         ; $5069: $9d
    or a                                          ; $506a: $b7
    inc e                                         ; $506b: $1c
    halt                                          ; $506c: $76
    sbc h                                         ; $506d: $9c
    cp [hl]                                       ; $506e: $be
    push de                                       ; $506f: $d5
    nop                                           ; $5070: $00
    rst $30                                       ; $5071: $f7
    inc e                                         ; $5072: $1c
    xor $54                                       ; $5073: $ee $54
    ld d, a                                       ; $5075: $57
    call z, Call_000_38fe                         ; $5076: $cc $fe $38
    nop                                           ; $5079: $00
    ld h, b                                       ; $507a: $60
    ld a, a                                       ; $507b: $7f
    cp a                                          ; $507c: $bf
    ret nz                                        ; $507d: $c0

    ccf                                           ; $507e: $3f
    ld b, b                                       ; $507f: $40
    cp c                                          ; $5080: $b9
    rst $00                                       ; $5081: $c7
    nop                                           ; $5082: $00
    inc [hl]                                      ; $5083: $34
    ld c, a                                       ; $5084: $4f
    xor d                                         ; $5085: $aa
    db $dd                                        ; $5086: $dd
    dec h                                         ; $5087: $25
    ld e, d                                       ; $5088: $5a
    cp e                                          ; $5089: $bb
    call nc, $3700                                ; $508a: $d4 $00 $37
    ld e, b                                       ; $508d: $58
    cp a                                          ; $508e: $bf
    ret nc                                        ; $508f: $d0

    ccf                                           ; $5090: $3f
    ld d, b                                       ; $5091: $50
    cp [hl]                                       ; $5092: $be
    pop de                                        ; $5093: $d1
    nop                                           ; $5094: $00
    ccf                                           ; $5095: $3f
    ld d, c                                       ; $5096: $51
    cp [hl]                                       ; $5097: $be
    pop de                                        ; $5098: $d1
    cpl                                           ; $5099: $2f
    ld d, b                                       ; $509a: $50
    or a                                          ; $509b: $b7
    ret z                                         ; $509c: $c8

    ret nz                                        ; $509d: $c0

    and d                                         ; $509e: $a2
    inc b                                         ; $509f: $04
    adc l                                         ; $50a0: $8d
    rlca                                          ; $50a1: $07
    rst $08                                       ; $50a2: $cf
    ldh a, [rNR22]                                ; $50a3: $f0 $17
    ld hl, sp-$55                                 ; $50a5: $f8 $ab
    ld d, h                                       ; $50a7: $54
    nop                                           ; $50a8: $00
    ld d, c                                       ; $50a9: $51
    cp [hl]                                       ; $50aa: $be
    xor $31                                       ; $50ab: $ee $31
    db $ed                                        ; $50ad: $ed
    ld a, $c1                                     ; $50ae: $3e $c1
    ld [bc], a                                    ; $50b0: $02
    nop                                           ; $50b1: $00
    db $f4                                        ; $50b2: $f4
    rrca                                          ; $50b3: $0f
    and a                                         ; $50b4: $a7
    rst $18                                       ; $50b5: $df
    rst $20                                       ; $50b6: $e7
    call c, $d4af                                 ; $50b7: $dc $af $d4
    nop                                           ; $50ba: $00
    ei                                            ; $50bb: $fb
    inc b                                         ; $50bc: $04
    rst $30                                       ; $50bd: $f7
    ld [$0ac0], sp                                ; $50be: $08 $c0 $0a
    cp d                                          ; $50c1: $ba
    dec b                                         ; $50c2: $05
    ld b, e                                       ; $50c3: $43
    rst $38                                       ; $50c4: $ff
    ld bc, $8360                                  ; $50c5: $01 $60 $83
    rst $38                                       ; $50c8: $ff
    pop bc                                        ; $50c9: $c1
    cp a                                          ; $50ca: $bf
    inc b                                         ; $50cb: $04
    ld c, b                                       ; $50cc: $48
    jr nz, jr_09d_50e7                            ; $50cd: $20 $18

    ld b, c                                       ; $50cf: $41
    ei                                            ; $50d0: $fb
    daa                                           ; $50d1: $27
    nop                                           ; $50d2: $00
    db $ed                                        ; $50d3: $ed
    rst $38                                       ; $50d4: $ff
    jp c, $f4ff                                   ; $50d5: $da $ff $f4

    cpl                                           ; $50d8: $2f
    nop                                           ; $50d9: $00
    nop                                           ; $50da: $00
    db $fd                                        ; $50db: $fd
    rst $38                                       ; $50dc: $ff
    ld l, d                                       ; $50dd: $6a
    rst $38                                       ; $50de: $ff
    call nc, $a0ff                                ; $50df: $d4 $ff $a0
    rst $38                                       ; $50e2: $ff
    ld bc, $ff48                                  ; $50e3: $01 $48 $ff
    sub b                                         ; $50e6: $90

jr_09d_50e7:
    rst $38                                       ; $50e7: $ff
    ld [bc], a                                    ; $50e8: $02
    db $fd                                        ; $50e9: $fd
    jp hl                                         ; $50ea: $e9


    inc c                                         ; $50eb: $0c
    stop                                          ; $50ec: $10 $00
    pop bc                                        ; $50ee: $c1
    cp $a0                                        ; $50ef: $fe $a0
    rst $38                                       ; $50f1: $ff
    ld b, d                                       ; $50f2: $42

jr_09d_50f3:
    db $fd                                        ; $50f3: $fd
    sub a                                         ; $50f4: $97
    add sp, $00                                   ; $50f5: $e8 $00
    rst $38                                       ; $50f7: $ff
    rst $38                                       ; $50f8: $ff
    add hl, bc                                    ; $50f9: $09
    or $22                                        ; $50fa: $f6 $22
    db $dd                                        ; $50fc: $dd
    dec b                                         ; $50fd: $05
    ld a, [$2b00]                                 ; $50fe: $fa $00 $2b
    call nc, $a857                                ; $5101: $d4 $57 $a8
    cp a                                          ; $5104: $bf
    ld b, b                                       ; $5105: $40
    xor d                                         ; $5106: $aa
    nop                                           ; $5107: $00
    nop                                           ; $5108: $00
    rst $38                                       ; $5109: $ff
    rst $38                                       ; $510a: $ff
    nop                                           ; $510b: $00
    nop                                           ; $510c: $00
    ld a, a                                       ; $510d: $7f
    ld a, a                                       ; $510e: $7f
    ld a, a                                       ; $510f: $7f
    ld c, a                                       ; $5110: $4f
    ld [de], a                                    ; $5111: $12
    ld a, a                                       ; $5112: $7f
    ld c, a                                       ; $5113: $4f
    ld [hl], e                                    ; $5114: $73
    ld [bc], a                                    ; $5115: $02
    jr jr_09d_5164                                ; $5116: $18 $4c

    nop                                           ; $5118: $00
    inc d                                         ; $5119: $14
    nop                                           ; $511a: $00
    rst $38                                       ; $511b: $ff
    inc h                                         ; $511c: $24

jr_09d_511d:
    rst $38                                       ; $511d: $ff
    adc a                                         ; $511e: $8f
    ld [bc], a                                    ; $511f: $02
    nop                                           ; $5120: $00
    add c                                         ; $5121: $81
    rst $30                                       ; $5122: $f7
    ld [bc], a                                    ; $5123: $02
    nop                                           ; $5124: $00
    ld [hl], a                                    ; $5125: $77
    ld [hl], e                                    ; $5126: $73
    ld b, h                                       ; $5127: $44
    ld c, h                                       ; $5128: $4c
    ld [bc], a                                    ; $5129: $02
    jr z, jr_09d_51ab                             ; $512a: $28 $7f

    ld a, a                                       ; $512c: $7f
    nop                                           ; $512d: $00
    ld bc, $8100                                  ; $512e: $01 $00 $81
    ld [hl], a                                    ; $5131: $77
    ldh [rSC], a                                  ; $5132: $e0 $02
    jr z, jr_09d_5172                             ; $5134: $28 $3c

    ld [$082e], sp                                ; $5136: $08 $2e $08
    ld d, c                                       ; $5139: $51
    rst $38                                       ; $513a: $ff
    add c                                         ; $513b: $81
    rst $38                                       ; $513c: $ff
    ld bc, $ff00                                  ; $513d: $01 $00 $ff
    dec b                                         ; $5140: $05
    ei                                            ; $5141: $fb
    ld b, e                                       ; $5142: $43
    cp l                                          ; $5143: $bd
    sub a                                         ; $5144: $97
    ld l, c                                       ; $5145: $69
    cpl                                           ; $5146: $2f
    ld [de], a                                    ; $5147: $12
    pop de                                        ; $5148: $d1
    ldh a, [rIE]                                  ; $5149: $f0 $ff
    ld [bc], a                                    ; $514b: $02
    jr jr_09d_50f3                                ; $514c: $18 $a5

    ld a, [$0804]                                 ; $514e: $fa $04 $08
    ld e, d                                       ; $5151: $5a
    ld [bc], a                                    ; $5152: $02
    push af                                       ; $5153: $f5
    ld a, a                                       ; $5154: $7f
    cp a                                          ; $5155: $bf
    ld a, e                                       ; $5156: $7b
    cp a                                          ; $5157: $bf
    ld a, a                                       ; $5158: $7f
    ld [bc], a                                    ; $5159: $02
    nop                                           ; $515a: $00
    ld a, d                                       ; $515b: $7a
    jr z, jr_09d_511d                             ; $515c: $28 $bf

    ld a, l                                       ; $515e: $7d
    ld a, [bc]                                    ; $515f: $0a
    nop                                           ; $5160: $00
    ld [hl], l                                    ; $5161: $75
    or b                                          ; $5162: $b0
    nop                                           ; $5163: $00

jr_09d_5164:
    ld a, a                                       ; $5164: $7f
    rst $38                                       ; $5165: $ff
    cp [hl]                                       ; $5166: $be
    nop                                           ; $5167: $00
    rst $38                                       ; $5168: $ff
    db $fc                                        ; $5169: $fc
    db $fc                                        ; $516a: $fc
    pop af                                        ; $516b: $f1
    ei                                            ; $516c: $fb
    rst $28                                       ; $516d: $ef
    rst $30                                       ; $516e: $f7
    rst $38                                       ; $516f: $ff
    nop                                           ; $5170: $00
    rst $28                                       ; $5171: $ef

jr_09d_5172:
    rst $08                                       ; $5172: $cf
    rst $28                                       ; $5173: $ef
    ld e, a                                       ; $5174: $5f
    and c                                         ; $5175: $a1
    cp a                                          ; $5176: $bf
    ld b, c                                       ; $5177: $41
    ld a, a                                       ; $5178: $7f
    call nz, Call_000_0841                        ; $5179: $c4 $41 $08
    ld [bc], a                                    ; $517c: $02
    nop                                           ; $517d: $00
    xor e                                         ; $517e: $ab
    ld bc, $38ff                                  ; $517f: $01 $ff $38
    nop                                           ; $5182: $00
    rrca                                          ; $5183: $0f
    ldh a, [$c6]                                  ; $5184: $f0 $c6
    inc b                                         ; $5186: $04
    ld [$2802], sp                                ; $5187: $08 $02 $28
    ld a, e                                       ; $518a: $7b
    cp a                                          ; $518b: $bf
    ld a, [hl]                                    ; $518c: $7e
    ld b, b                                       ; $518d: $40
    db $10                                        ; $518e: $10
    inc b                                         ; $518f: $04
    jr nz, @-$40                                  ; $5190: $20 $be

    nop                                           ; $5192: $00
    rst $20                                       ; $5193: $e7
    rst $28                                       ; $5194: $ef
    db $db                                        ; $5195: $db
    rst $28                                       ; $5196: $ef
    rst $28                                       ; $5197: $ef
    rst $28                                       ; $5198: $ef
    rst $20                                       ; $5199: $e7
    rst $30                                       ; $519a: $f7
    nop                                           ; $519b: $00
    cp a                                          ; $519c: $bf
    rst $30                                       ; $519d: $f7
    pop af                                        ; $519e: $f1
    ei                                            ; $519f: $fb
    db $fd                                        ; $51a0: $fd
    db $fd                                        ; $51a1: $fd
    ld a, a                                       ; $51a2: $7f
    cp $00                                        ; $51a3: $fe $00
    ld bc, $fd01                                  ; $51a5: $01 $01 $fd
    db $fd                                        ; $51a8: $fd
    push hl                                       ; $51a9: $e5
    db $fd                                        ; $51aa: $fd

jr_09d_51ab:
    dec b                                         ; $51ab: $05
    dec e                                         ; $51ac: $1d
    ret                                           ; $51ad: $c9


Call_09d_51ae:
    ld [bc], a                                    ; $51ae: $02
    jr z, @+$3c                                   ; $51af: $28 $3a

    ld [$50a5], sp                                ; $51b1: $08 $a5 $50
    inc b                                         ; $51b4: $04
    ld [$a05a], sp                                ; $51b5: $08 $5a $a0
    inc b                                         ; $51b8: $04
    ld [$7f00], sp                                ; $51b9: $08 $00 $7f
    cp a                                          ; $51bc: $bf
    ld l, a                                       ; $51bd: $6f
    cp a                                          ; $51be: $bf
    ld a, l                                       ; $51bf: $7d
    cp [hl]                                       ; $51c0: $be
    ld a, a                                       ; $51c1: $7f
    cp a                                          ; $51c2: $bf
    ld h, b                                       ; $51c3: $60
    ld e, a                                       ; $51c4: $5f
    ld [$0400], sp                                ; $51c5: $08 $00 $04
    ld [$6f7d], sp                                ; $51c8: $08 $7d $6f
    adc a                                         ; $51cb: $8f
    xor a                                         ; $51cc: $af
    rrca                                          ; $51cd: $0f
    nop                                           ; $51ce: $00
    rrca                                          ; $51cf: $0f
    and a                                         ; $51d0: $a7
    or e                                          ; $51d1: $b3
    db $fd                                        ; $51d2: $fd
    ld a, l                                       ; $51d3: $7d
    ld a, d                                       ; $51d4: $7a
    cp $fd                                        ; $51d5: $fe $fd
    ld de, $feff                                  ; $51d7: $11 $ff $fe
    rst $38                                       ; $51da: $ff

jr_09d_51db:
    ld a, [hl-]                                   ; $51db: $3a

jr_09d_51dc:
    jr c, jr_09d_51db                             ; $51dc: $38 $fd

    db $fd                                        ; $51de: $fd
    ld bc, $0001                                  ; $51df: $01 $01 $00
    inc bc                                        ; $51e2: $03
    ldh a, [rP1]                                  ; $51e3: $f0 $00
    ld e, d                                       ; $51e5: $5a
    and b                                         ; $51e6: $a0
    ldh a, [rP1]                                  ; $51e7: $f0 $00
    ld [bc], a                                    ; $51e9: $02
    jr c, @-$46                                   ; $51ea: $38 $b8

    ld [$c084], sp                                ; $51ec: $08 $84 $c0
    ld [$b878], sp                                ; $51ef: $08 $78 $b8
    nop                                           ; $51f2: $00
    ld hl, sp+$2d                                 ; $51f3: $f8 $2d
    ld bc, $efff                                  ; $51f5: $01 $ff $ef
    jr nz, @+$01                                  ; $51f8: $20 $ff

    or a                                          ; $51fa: $b7
    inc b                                         ; $51fb: $04
    nop                                           ; $51fc: $00
    rst $38                                       ; $51fd: $ff
    rst $38                                       ; $51fe: $ff
    rra                                           ; $51ff: $1f
    rra                                           ; $5200: $1f
    nop                                           ; $5201: $00
    ld h, c                                       ; $5202: $61
    rra                                           ; $5203: $1f
    db $10                                        ; $5204: $10
    ld [$09a0], sp                                ; $5205: $08 $a0 $09
    ld b, l                                       ; $5208: $45
    inc bc                                        ; $5209: $03
    cp $fc                                        ; $520a: $fe $fc
    add l                                         ; $520c: $85
    add hl, bc                                    ; $520d: $09
    ld a, [bc]                                    ; $520e: $0a
    ei                                            ; $520f: $fb
    db $db                                        ; $5210: $db
    db $db                                        ; $5211: $db
    sbc c                                         ; $5212: $99
    or b                                          ; $5213: $b0
    add hl, bc                                    ; $5214: $09
    ld a, a                                       ; $5215: $7f
    or l                                          ; $5216: $b5
    ld bc, $085f                                  ; $5217: $01 $5f $08
    ld a, a                                       ; $521a: $7f
    cp l                                          ; $521b: $bd
    cp [hl]                                       ; $521c: $be
    rst $18                                       ; $521d: $df
    ld bc, $f500                                  ; $521e: $01 $00 $f5
    rst $38                                       ; $5221: $ff
    xor e                                         ; $5222: $ab
    inc l                                         ; $5223: $2c
    rst $38                                       ; $5224: $ff
    ld e, a                                       ; $5225: $5f
    push bc                                       ; $5226: $c5
    ld de, $2d53                                  ; $5227: $11 $53 $2d
    jr jr_09d_51dc                                ; $522a: $18 $b0

    add hl, de                                    ; $522c: $19
    ei                                            ; $522d: $fb
    rst $30                                       ; $522e: $f7
    nop                                           ; $522f: $00
    or l                                          ; $5230: $b5
    dec e                                         ; $5231: $1d
    sub l                                         ; $5232: $95
    xor [hl]                                      ; $5233: $ae
    adc h                                         ; $5234: $8c
    or l                                          ; $5235: $b5
    or l                                          ; $5236: $b5
    sbc c                                         ; $5237: $99
    add b                                         ; $5238: $80
    ld [hl-], a                                   ; $5239: $32
    nop                                           ; $523a: $00
    db $eb                                        ; $523b: $eb
    rst $38                                       ; $523c: $ff
    push af                                       ; $523d: $f5
    rst $38                                       ; $523e: $ff
    ld a, [$cfff]                                 ; $523f: $fa $ff $cf
    nop                                           ; $5242: $00
    adc a                                         ; $5243: $8f
    ld a, b                                       ; $5244: $78
    ldh a, [$ef]                                  ; $5245: $f0 $ef
    halt                                          ; $5247: $76
    rst $28                                       ; $5248: $ef
    rst $18                                       ; $5249: $df
    or c                                          ; $524a: $b1
    nop                                           ; $524b: $00
    jp $fdf5                                      ; $524c: $c3 $f5 $fd


    db $fc                                        ; $524f: $fc
    db $fd                                        ; $5250: $fd
    rst $38                                       ; $5251: $ff
    cp l                                          ; $5252: $bd
    add a                                         ; $5253: $87
    inc b                                         ; $5254: $04
    inc bc                                        ; $5255: $03
    rst $38                                       ; $5256: $ff
    cp a                                          ; $5257: $bf
    ld a, l                                       ; $5258: $7d
    sbc $00                                       ; $5259: $de $00
    ld e, d                                       ; $525b: $5a
    sub h                                         ; $525c: $94
    nop                                           ; $525d: $00
    ld b, b                                       ; $525e: $40
    or l                                          ; $525f: $b5
    ld de, $c342                                  ; $5260: $11 $42 $c3
    pop hl                                        ; $5263: $e1
    or $36                                        ; $5264: $f6 $36
    jp Jump_000_0087                              ; $5266: $c3 $87 $00


    ld de, $eeeb                                  ; $5269: $11 $eb $ee
    add sp, -$53                                  ; $526c: $e8 $ad
    rst $28                                       ; $526e: $ef
    rst $18                                       ; $526f: $df
    rst $28                                       ; $5270: $ef
    nop                                           ; $5271: $00
    ld l, [hl]                                    ; $5272: $6e
    rst $18                                       ; $5273: $df
    add hl, de                                    ; $5274: $19
    ld e, h                                       ; $5275: $5c
    push bc                                       ; $5276: $c5

Jump_09d_5277:
    sub e                                         ; $5277: $93
    ccf                                           ; $5278: $3f
    ld l, a                                       ; $5279: $6f
    nop                                           ; $527a: $00
    ld e, a                                       ; $527b: $5f
    sbc a                                         ; $527c: $9f
    scf                                           ; $527d: $37
    ld [hl], a                                    ; $527e: $77
    rst $30                                       ; $527f: $f7
    rst $28                                       ; $5280: $ef
    and e                                         ; $5281: $a3
    ret nz                                        ; $5282: $c0

    ld c, $67                                     ; $5283: $0e $67
    scf                                           ; $5285: $37
    cp e                                          ; $5286: $bb
    ei                                            ; $5287: $fb
    and l                                         ; $5288: $a5
    ld bc, $1212                                  ; $5289: $01 $12 $12
    ld [hl+], a                                   ; $528c: $22
    ld a, [bc]                                    ; $528d: $0a
    cp $82                                        ; $528e: $fe $82
    ld [hl+], a                                   ; $5290: $22
    ld [bc], a                                    ; $5291: $02
    ld a, [c]                                     ; $5292: $f2
    rst $38                                       ; $5293: $ff
    or $f7                                        ; $5294: $f6 $f7
    rst $30                                       ; $5296: $f7
    ld d, e                                       ; $5297: $53
    ld [bc], a                                    ; $5298: $02
    cp $a0                                        ; $5299: $fe $a0
    add [hl]                                      ; $529b: $86
    ld bc, $08b7                                  ; $529c: $01 $b7 $08
    db $10                                        ; $529f: $10
    adc a                                         ; $52a0: $8f
    rst $08                                       ; $52a1: $cf
    ld l, a                                       ; $52a2: $6f

jr_09d_52a3:
    rst $18                                       ; $52a3: $df
    cp a                                          ; $52a4: $bf
    ld b, $df                                     ; $52a5: $06 $df
    rra                                           ; $52a7: $1f
    cp a                                          ; $52a8: $bf
    rst $28                                       ; $52a9: $ef
    cp a                                          ; $52aa: $bf
    dec c                                         ; $52ab: $0d
    ld [de], a                                    ; $52ac: $12
    ld c, h                                       ; $52ad: $4c
    ld [de], a                                    ; $52ae: $12
    rst $30                                       ; $52af: $f7
    sub a                                         ; $52b0: $97
    ld c, h                                       ; $52b1: $4c
    ld [bc], a                                    ; $52b2: $02
    cp e                                          ; $52b3: $bb
    rst $38                                       ; $52b4: $ff
    db $10                                        ; $52b5: $10
    jr jr_09d_52a3                                ; $52b6: $18 $eb

    add c                                         ; $52b8: $81
    ld [bc], a                                    ; $52b9: $02
    ldh a, [$08]                                  ; $52ba: $f0 $08
    ld a, [hl+]                                   ; $52bc: $2a
    ld [bc], a                                    ; $52bd: $02
    reti                                          ; $52be: $d9


    jr nz, jr_09d_52e1                            ; $52bf: $20 $20

    ld [hl], e                                    ; $52c1: $73
    ld a, [de]                                    ; $52c2: $1a
    ldh a, [rNR51]                                ; $52c3: $f0 $25
    ld bc, $0910                                  ; $52c5: $01 $10 $09
    cp $fd                                        ; $52c8: $fe $fd
    ld [bc], a                                    ; $52ca: $02
    jr jr_09d_52cd                                ; $52cb: $18 $00

jr_09d_52cd:
    ld a, [hl]                                    ; $52cd: $7e
    ld a, l                                       ; $52ce: $7d
    ld l, [hl]                                    ; $52cf: $6e
    ld l, l                                       ; $52d0: $6d

jr_09d_52d1:
    cp $7d                                        ; $52d1: $fe $7d
    cp [hl]                                       ; $52d3: $be
    cp l                                          ; $52d4: $bd
    sbc b                                         ; $52d5: $98
    nop                                           ; $52d6: $00
    ld e, d                                       ; $52d7: $5a
    jp c, $20f5                                   ; $52d8: $da $f5 $20

    jr z, jr_09d_5305                             ; $52db: $28 $28

    ld [$2d6e], sp                                ; $52dd: $08 $6e $2d
    cp [hl]                                       ; $52e0: $be

jr_09d_52e1:
    add hl, bc                                    ; $52e1: $09
    xor l                                         ; $52e2: $ad
    and l                                         ; $52e3: $a5
    ld a, [$e08f]                                 ; $52e4: $fa $8f $e0
    ld bc, $f08f                                  ; $52e7: $01 $8f $f0
    ld [bc], a                                    ; $52ea: $02
    jr z, @+$13                                   ; $52eb: $28 $11

    ld l, [hl]                                    ; $52ed: $6e
    dec l                                         ; $52ee: $2d
    ld l, $42                                     ; $52ef: $2e $42
    jr nz, jr_09d_52d1                            ; $52f1: $20 $de

    db $fd                                        ; $52f3: $fd
    cp [hl]                                       ; $52f4: $be
    inc b                                         ; $52f5: $04
    nop                                           ; $52f6: $00
    sub d                                         ; $52f7: $92
    ld a, [de]                                    ; $52f8: $1a
    ld [$d025], sp                                ; $52f9: $08 $25 $d0
    inc b                                         ; $52fc: $04
    ld [$a0da], sp                                ; $52fd: $08 $da $a0
    inc b                                         ; $5300: $04
    ld [$08b6], sp                                ; $5301: $08 $b6 $08
    db $fd                                        ; $5304: $fd

jr_09d_5305:
    xor $fd                                       ; $5305: $ee $fd
    or $64                                        ; $5307: $f6 $64
    nop                                           ; $5309: $00
    ld a, $3d                                     ; $530a: $3e $3d
    nop                                           ; $530c: $00
    ld b, b                                       ; $530d: $40

jr_09d_530e:
    ccf                                           ; $530e: $3f
    add b                                         ; $530f: $80
    add hl, bc                                    ; $5310: $09
    ld [hl], b                                    ; $5311: $70
    add b                                         ; $5312: $80
    jp c, $70a0                                   ; $5313: $da $a0 $70

    add b                                         ; $5316: $80
    add c                                         ; $5317: $81
    ld [bc], a                                    ; $5318: $02
    jr c, jr_09d_5393                             ; $5319: $38 $78

    ld a, a                                       ; $531b: $7f
    ld a, b                                       ; $531c: $78
    ld a, a                                       ; $531d: $7f
    ld b, b                                       ; $531e: $40
    ld [hl], a                                    ; $531f: $77
    ld [bc], a                                    ; $5320: $02
    jr c, jr_09d_5325                             ; $5321: $38 $02

    db $fc                                        ; $5323: $fc
    rst $38                                       ; $5324: $ff

jr_09d_5325:
    db $fc                                        ; $5325: $fc
    di                                            ; $5326: $f3
    inc e                                         ; $5327: $1c
    inc de                                        ; $5328: $13
    ld [bc], a                                    ; $5329: $02
    jr c, jr_09d_536c                             ; $532a: $38 $40

    ld h, b                                       ; $532c: $60
    ld [hl], a                                    ; $532d: $77
    cp b                                          ; $532e: $b8
    ld a, [de]                                    ; $532f: $1a

jr_09d_5330:
    and $02                                       ; $5330: $e6 $02
    ld h, e                                       ; $5332: $63
    ld e, h                                       ; $5333: $5c
    ld h, b                                       ; $5334: $60
    ld e, h                                       ; $5335: $5c
    ld h, b                                       ; $5336: $60
    jr nz, jr_09d_5355                            ; $5337: $20 $1c

    inc de                                        ; $5339: $13
    cp b                                          ; $533a: $b8
    ld a, [de]                                    ; $533b: $1a
    rst $08                                       ; $533c: $cf
    rst $38                                       ; $533d: $ff
    rst $08                                       ; $533e: $cf
    rst $38                                       ; $533f: $ff
    ld c, a                                       ; $5340: $4f
    inc e                                         ; $5341: $1c
    ld [hl], c                                    ; $5342: $71
    ld c, a                                       ; $5343: $4f
    ld [hl], c                                    ; $5344: $71
    inc d                                         ; $5345: $14
    ld [$1804], sp                                ; $5346: $08 $04 $18
    ldh [$0a], a                                  ; $5349: $e0 $0a
    ld d, l                                       ; $534b: $55
    ld d, l                                       ; $534c: $55
    ldh [rNR14], a                                ; $534d: $e0 $14
    ld [$1804], sp                                ; $534f: $08 $04 $18
    inc e                                         ; $5352: $1c
    dec bc                                        ; $5353: $0b
    ld d, l                                       ; $5354: $55

jr_09d_5355:
    ld d, l                                       ; $5355: $55
    ld d, l                                       ; $5356: $55
    xor d                                         ; $5357: $aa
    xor d                                         ; $5358: $aa
    add l                                         ; $5359: $85
    inc b                                         ; $535a: $04
    ld d, b                                       ; $535b: $50
    ld c, a                                       ; $535c: $4f
    or b                                          ; $535d: $b0
    xor a                                         ; $535e: $af
    ld d, b                                       ; $535f: $50
    inc b                                         ; $5360: $04
    jr jr_09d_530e                                ; $5361: $18 $ab

    inc b                                         ; $5363: $04
    db $10                                        ; $5364: $10
    dec e                                         ; $5365: $1d
    ld a, l                                       ; $5366: $7d
    push af                                       ; $5367: $f5
    ld c, l                                       ; $5368: $4d
    ld [bc], a                                    ; $5369: $02
    ld d, b                                       ; $536a: $50
    inc a                                         ; $536b: $3c

jr_09d_536c:
    ld c, d                                       ; $536c: $4a
    ld c, h                                       ; $536d: $4c
    ld a, [bc]                                    ; $536e: $0a
    rrca                                          ; $536f: $0f
    add hl, hl                                    ; $5370: $29
    add hl, bc                                    ; $5371: $09
    sbc a                                         ; $5372: $9f
    db $10                                        ; $5373: $10
    ld b, b                                       ; $5374: $40
    ld c, l                                       ; $5375: $4d
    push af                                       ; $5376: $f5
    ld l, b                                       ; $5377: $68
    ld a, [de]                                    ; $5378: $1a
    or l                                          ; $5379: $b5
    ld [bc], a                                    ; $537a: $02
    ld [bc], a                                    ; $537b: $02
    db $10                                        ; $537c: $10
    ld h, a                                       ; $537d: $67
    ld bc, $5002                                  ; $537e: $01 $02 $50
    ld [$1af5], sp                                ; $5381: $08 $f5 $1a
    ld [c], a                                     ; $5384: $e2
    dec e                                         ; $5385: $1d
    inc b                                         ; $5386: $04
    ld c, b                                       ; $5387: $48
    db $fd                                        ; $5388: $fd
    push hl                                       ; $5389: $e5
    dec a                                         ; $538a: $3d
    ld [hl], b                                    ; $538b: $70
    dec h                                         ; $538c: $25
    ld [bc], a                                    ; $538d: $02
    jr jr_09d_5330                                ; $538e: $18 $a0

    ld a, [bc]                                    ; $5390: $0a
    and b                                         ; $5391: $a0
    nop                                           ; $5392: $00

jr_09d_5393:
    or b                                          ; $5393: $b0
    add sp, $10                                   ; $5394: $e8 $10
    ld b, a                                       ; $5396: $47
    rlca                                          ; $5397: $07
    cp b                                          ; $5398: $b8
    and b                                         ; $5399: $a0
    rst $38                                       ; $539a: $ff
    push de                                       ; $539b: $d5
    ld a, [hl-]                                   ; $539c: $3a
    jr z, jr_09d_53b7                             ; $539d: $28 $18

    add l                                         ; $539f: $85
    dec bc                                        ; $53a0: $0b
    sbc b                                         ; $53a1: $98
    ld a, [bc]                                    ; $53a2: $0a
    add b                                         ; $53a3: $80
    xor b                                         ; $53a4: $a8
    jr z, @-$07                                   ; $53a5: $28 $f7

    jr @+$25                                      ; $53a7: $18 $23

jr_09d_53a9:
    inc e                                         ; $53a9: $1c
    pop de                                        ; $53aa: $d1
    ld a, $0a                                     ; $53ab: $3e $0a
    db $10                                        ; $53ad: $10
    rst $38                                       ; $53ae: $ff
    ld b, a                                       ; $53af: $47
    cp b                                          ; $53b0: $b8
    xor b                                         ; $53b1: $a8
    jr jr_09d_5409                                ; $53b2: $18 $55

    xor d                                         ; $53b4: $aa
    rst $38                                       ; $53b5: $ff
    nop                                           ; $53b6: $00

jr_09d_53b7:
    db $e4                                        ; $53b7: $e4
    call nz, $bf00                                ; $53b8: $c4 $00 $bf
    add hl, bc                                    ; $53bb: $09
    ld l, d                                       ; $53bc: $6a
    db $10                                        ; $53bd: $10
    ld [hl], b                                    ; $53be: $70
    add b                                         ; $53bf: $80
    and b                                         ; $53c0: $a0
    ld e, b                                       ; $53c1: $58
    and b                                         ; $53c2: $a0
    and b                                         ; $53c3: $a0
    nop                                           ; $53c4: $00
    ld b, a                                       ; $53c5: $47
    ld b, b                                       ; $53c6: $40
    ld [$1007], sp                                ; $53c7: $08 $07 $10
    rrca                                          ; $53ca: $0f
    jr nc, jr_09d_53fc                            ; $53cb: $30 $2f

    ld bc, $4778                                  ; $53cd: $01 $78 $47
    ld a, h                                       ; $53d0: $7c
    ld b, e                                       ; $53d1: $43
    ld a, h                                       ; $53d2: $7c
    inc bc                                        ; $53d3: $03
    ld hl, sp-$70                                 ; $53d4: $f8 $90
    nop                                           ; $53d6: $00
    nop                                           ; $53d7: $00
    jr nc, jr_09d_53a9                            ; $53d8: $30 $cf

    inc bc                                        ; $53da: $03
    db $fc                                        ; $53db: $fc
    rra                                           ; $53dc: $1f
    ldh [$1f], a                                  ; $53dd: $e0 $1f
    ldh [rP1], a                                  ; $53df: $e0 $00
    ld d, a                                       ; $53e1: $57
    xor b                                         ; $53e2: $a8
    ld [hl], a                                    ; $53e3: $77
    adc b                                         ; $53e4: $88
    ld a, [bc]                                    ; $53e5: $0a
    ld a, [bc]                                    ; $53e6: $0a
    dec b                                         ; $53e7: $05
    dec b                                         ; $53e8: $05
    nop                                           ; $53e9: $00
    adc d                                         ; $53ea: $8a
    ld a, [bc]                                    ; $53eb: $0a
    push bc                                       ; $53ec: $c5
    dec b                                         ; $53ed: $05
    ld [c], a                                     ; $53ee: $e2
    ld [bc], a                                    ; $53ef: $02
    pop af                                        ; $53f0: $f1
    ld bc, $f200                                  ; $53f1: $01 $00 $f2

jr_09d_53f4:
    ld [bc], a                                    ; $53f4: $02
    ldh a, [rP1]                                  ; $53f5: $f0 $00
    ld hl, sp-$39                                 ; $53f7: $f8 $c7
    ret z                                         ; $53f9: $c8

    or a                                          ; $53fa: $b7
    nop                                           ; $53fb: $00

jr_09d_53fc:
    ldh [$df], a                                  ; $53fc: $e0 $df
    ldh [$bf], a                                  ; $53fe: $e0 $bf
    ldh [$df], a                                  ; $5400: $e0 $df
    ld [hl], b                                    ; $5402: $70
    ld l, a                                       ; $5403: $6f
    nop                                           ; $5404: $00
    ld a, b                                       ; $5405: $78
    ld d, a                                       ; $5406: $57
    ld a, l                                       ; $5407: $7d
    ld l, d                                       ; $5408: $6a

jr_09d_5409:
    ld a, h                                       ; $5409: $7c
    add e                                         ; $540a: $83
    jr jr_09d_53f4                                ; $540b: $18 $e7

    jr nc, @+$11                                  ; $540d: $30 $0f

    ldh a, [$2e]                                  ; $540f: $f0 $2e
    ld [$0832], sp                                ; $5411: $08 $32 $08

jr_09d_5414:
    rrca                                          ; $5414: $0f
    ldh a, [$f8]                                  ; $5415: $f0 $f8
    nop                                           ; $5417: $00
    jr nz, @-$06                                  ; $5418: $20 $f8

    ld [$1004], sp                                ; $541a: $08 $04 $10
    ld [$10f0], sp                                ; $541d: $08 $f0 $10
    ldh a, [$30]                                  ; $5420: $f0 $30
    jr z, jr_09d_5414                             ; $5422: $28 $f0

    ld d, b                                       ; $5424: $50
    sub b                                         ; $5425: $90
    jr jr_09d_5462                                ; $5426: $18 $3a

    sub b                                         ; $5428: $90
    jr nc, jr_09d_5455                            ; $5429: $30 $2a

    push de                                       ; $542b: $d5
    ld a, a                                       ; $542c: $7f
    ld c, h                                       ; $542d: $4c
    add b                                         ; $542e: $80
    ld [bc], a                                    ; $542f: $02
    ld c, b                                       ; $5430: $48
    xor d                                         ; $5431: $aa
    ld d, l                                       ; $5432: $55
    ld [bc], a                                    ; $5433: $02
    ld e, c                                       ; $5434: $59
    ld e, $58                                     ; $5435: $1e $58
    ld a, a                                       ; $5437: $7f
    add b                                         ; $5438: $80
    nop                                           ; $5439: $00
    cp a                                          ; $543a: $bf
    ld a, a                                       ; $543b: $7f
    ld a, a                                       ; $543c: $7f
    rst $38                                       ; $543d: $ff
    xor $ff                                       ; $543e: $ee $ff
    call nc, $11ef                                ; $5440: $d4 $ef $11
    push hl                                       ; $5443: $e5
    sbc $d4                                       ; $5444: $de $d4
    add a                                         ; $5446: $87
    ld [de], a                                    ; $5447: $12

jr_09d_5448:
    db $fd                                        ; $5448: $fd
    cp $fe                                        ; $5449: $fe $fe
    add d                                         ; $544b: $82
    inc bc                                        ; $544c: $03
    ld b, $ab                                     ; $544d: $06 $ab
    ld [hl], a                                    ; $544f: $77
    daa                                           ; $5450: $27
    ei                                            ; $5451: $fb
    xor e                                         ; $5452: $ab
    db $dd                                        ; $5453: $dd
    ld [de], a                                    ; $5454: $12

jr_09d_5455:
    ld a, [de]                                    ; $5455: $1a
    jr @-$11                                      ; $5456: $18 $ed

    nop                                           ; $5458: $00
    rst $38                                       ; $5459: $ff
    cp a                                          ; $545a: $bf
    ld a, a                                       ; $545b: $7f

jr_09d_545c:
    ld l, d                                       ; $545c: $6a
    ccf                                           ; $545d: $3f
    ld a, a                                       ; $545e: $7f
    ccf                                           ; $545f: $3f
    ccf                                           ; $5460: $3f
    ld d, b                                       ; $5461: $50

jr_09d_5462:
    ld a, a                                       ; $5462: $7f
    ld a, [de]                                    ; $5463: $1a
    jr jr_09d_54dd                                ; $5464: $18 $77

    jr z, jr_09d_5468                             ; $5466: $28 $00

jr_09d_5468:
    xor d                                         ; $5468: $aa
    db $fc                                        ; $5469: $fc

jr_09d_546a:
    cp $fc                                        ; $546a: $fe $fc
    jr nc, jr_09d_546a                            ; $546c: $30 $fc

    cp $60                                        ; $546e: $fe $60
    jr c, jr_09d_5448                             ; $5470: $38 $d6

    dec bc                                        ; $5472: $0b
    jr nc, jr_09d_5475                            ; $5473: $30 $00

jr_09d_5475:
    xor d                                         ; $5475: $aa
    ld d, l                                       ; $5476: $55
    add hl, hl                                    ; $5477: $29
    cp $01                                        ; $5478: $fe $01
    ld [bc], a                                    ; $547a: $02
    jr @+$08                                      ; $547b: $18 $06

    ld [bc], a                                    ; $547d: $02
    db $10                                        ; $547e: $10
    cp $00                                        ; $547f: $fe $00
    ld [bc], a                                    ; $5481: $02
    ld [$fc67], sp                                ; $5482: $08 $67 $fc
    ld [bc], a                                    ; $5485: $02
    db $10                                        ; $5486: $10
    cp h                                          ; $5487: $bc
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    db $10                                        ; $548a: $10
    ld [bc], a                                    ; $548b: $02
    ld h, b                                       ; $548c: $60
    ld h, $18                                     ; $548d: $26 $18
    ld b, $38                                     ; $548f: $06 $38
    nop                                           ; $5491: $00
    ld a, $35                                     ; $5492: $3e $35
    rra                                           ; $5494: $1f
    ld a, [de]                                    ; $5495: $1a
    rrca                                          ; $5496: $0f
    dec c                                         ; $5497: $0d
    rlca                                          ; $5498: $07
    rlca                                          ; $5499: $07
    nop                                           ; $549a: $00
    and c                                         ; $549b: $a1
    and c                                         ; $549c: $a1
    ld d, b                                       ; $549d: $50
    ld d, b                                       ; $549e: $50
    and b                                         ; $549f: $a0
    and b                                         ; $54a0: $a0
    ld d, b                                       ; $54a1: $50
    ld d, b                                       ; $54a2: $50
    nop                                           ; $54a3: $00
    and e                                         ; $54a4: $a3
    ld e, h                                       ; $54a5: $5c
    ld d, a                                       ; $54a6: $57
    xor c                                         ; $54a7: $a9
    rst $38                                       ; $54a8: $ff
    ld d, a                                       ; $54a9: $57
    rst $38                                       ; $54aa: $ff
    xor a                                         ; $54ab: $af
    nop                                           ; $54ac: $00
    db $fc                                        ; $54ad: $fc
    db $fc                                        ; $54ae: $fc
    jr nc, jr_09d_54e1                            ; $54af: $30 $30

    db $fc                                        ; $54b1: $fc
    call c, $7878                                 ; $54b2: $dc $78 $78
    nop                                           ; $54b5: $00
    ldh [$a0], a                                  ; $54b6: $e0 $a0

jr_09d_54b8:
    ret nz                                        ; $54b8: $c0

    ld b, b                                       ; $54b9: $40
    add b                                         ; $54ba: $80
    add b                                         ; $54bb: $80
    nop                                           ; $54bc: $00
    nop                                           ; $54bd: $00
    inc c                                         ; $54be: $0c
    ld [bc], a                                    ; $54bf: $02
    ld [bc], a                                    ; $54c0: $02
    dec b                                         ; $54c1: $05
    dec b                                         ; $54c2: $05
    inc a                                         ; $54c3: $3c
    add hl, bc                                    ; $54c4: $09
    xor $58                                       ; $54c5: $ee $58
    ld d, l                                       ; $54c7: $55
    add b                                         ; $54c8: $80
    add c                                         ; $54c9: $81
    ldh a, [$59]                                  ; $54ca: $f0 $59
    ld d, l                                       ; $54cc: $55
    nop                                           ; $54cd: $00
    ccf                                           ; $54ce: $3f
    ret nz                                        ; $54cf: $c0

    add b                                         ; $54d0: $80
    rst $38                                       ; $54d1: $ff
    ld [bc], a                                    ; $54d2: $02
    ld c, b                                       ; $54d3: $48
    sub c                                         ; $54d4: $91
    ld h, h                                       ; $54d5: $64
    inc c                                         ; $54d6: $0c
    jr nz, jr_09d_54b8                            ; $54d7: $20 $df

    inc b                                         ; $54d9: $04
    jr c, jr_09d_545c                             ; $54da: $38 $80

    rst $38                                       ; $54dc: $ff

jr_09d_54dd:
    xor d                                         ; $54dd: $aa
    inc b                                         ; $54de: $04
    db $10                                        ; $54df: $10
    ld b, b                                       ; $54e0: $40

jr_09d_54e1:
    push de                                       ; $54e1: $d5
    add hl, bc                                    ; $54e2: $09
    ld b, $f8                                     ; $54e3: $06 $f8
    rst $38                                       ; $54e5: $ff
    push af                                       ; $54e6: $f5
    ld a, [$df20]                                 ; $54e7: $fa $20 $df
    ld b, h                                       ; $54ea: $44
    adc d                                         ; $54eb: $8a
    jr nz, jr_09d_54ee                            ; $54ec: $20 $00

jr_09d_54ee:
    xor d                                         ; $54ee: $aa
    rst $38                                       ; $54ef: $ff
    ld d, l                                       ; $54f0: $55
    sub d                                         ; $54f1: $92
    inc de                                        ; $54f2: $13
    ld d, l                                       ; $54f3: $55
    xor d                                         ; $54f4: $aa
    adc b                                         ; $54f5: $88
    ld [hl], b                                    ; $54f6: $70

jr_09d_54f7:
    ld bc, $fe06                                  ; $54f7: $01 $06 $fe
    ld bc, $3850                                  ; $54fa: $01 $50 $38
    db $10                                        ; $54fd: $10
    rrca                                          ; $54fe: $0f
    inc bc                                        ; $54ff: $03
    ld bc, $0300                                  ; $5500: $01 $00 $03
    add h                                         ; $5503: $84
    add a                                         ; $5504: $87
    ld h, b                                       ; $5505: $60
    rst $20                                       ; $5506: $e7
    jr jr_09d_5569                                ; $5507: $18 $60

    jr jr_09d_5542                                ; $5509: $18 $37

    ld b, $f9                                     ; $550b: $06 $f9

Call_09d_550d:
    ldh a, [$28]                                  ; $550d: $f0 $28
    ld hl, sp+$08                                 ; $550f: $f8 $08
    ld d, [hl]                                    ; $5511: $56
    ld a, [hl+]                                   ; $5512: $2a
    nop                                           ; $5513: $00
    ld [hl], c                                    ; $5514: $71
    ld h, d                                       ; $5515: $62
    ld h, b                                       ; $5516: $60
    nop                                           ; $5517: $00
    jp $0804                                      ; $5518: $c3 $04 $08


    ld d, b                                       ; $551b: $50
    jr z, jr_09d_5522                             ; $551c: $28 $04

    ei                                            ; $551e: $fb
    xor d                                         ; $551f: $aa
    rst $38                                       ; $5520: $ff
    inc b                                         ; $5521: $04

jr_09d_5522:
    ld [$2860], sp                                ; $5522: $08 $60 $28
    ld [hl], b                                    ; $5525: $70
    ld bc, $04c0                                  ; $5526: $01 $c0 $04
    inc b                                         ; $5529: $04
    ld [$0870], sp                                ; $552a: $08 $70 $08
    rra                                           ; $552d: $1f
    rst $38                                       ; $552e: $ff
    ld c, a                                       ; $552f: $4f
    cp a                                          ; $5530: $bf
    ld a, d                                       ; $5531: $7a
    ld d, l                                       ; $5532: $55
    sub d                                         ; $5533: $92
    db $10                                        ; $5534: $10
    ld [bc], a                                    ; $5535: $02
    jr c, jr_09d_54f7                             ; $5536: $38 $bf

    add hl, bc                                    ; $5538: $09
    db $10                                        ; $5539: $10
    ld c, b                                       ; $553a: $48
    ld d, [hl]                                    ; $553b: $56
    inc c                                         ; $553c: $0c
    ld b, $a9                                     ; $553d: $06 $a9
    call nz, Call_09d_4002                        ; $553f: $c4 $02 $40

jr_09d_5542:
    sbc $08                                       ; $5542: $de $08
    cp a                                          ; $5544: $bf
    ret nz                                        ; $5545: $c0

jr_09d_5546:
    ret nz                                        ; $5546: $c0

    ld [hl-], a                                   ; $5547: $32
    inc c                                         ; $5548: $0c
    rst $38                                       ; $5549: $ff
    rst $38                                       ; $554a: $ff
    inc e                                         ; $554b: $1c
    ldh [$d3], a                                  ; $554c: $e0 $d3
    ldh [$ef], a                                  ; $554e: $e0 $ef
    ld a, [bc]                                    ; $5550: $0a
    jr c, jr_09d_5570                             ; $5551: $38 $1d

    ld a, l                                       ; $5553: $7d
    ld c, $1f                                     ; $5554: $0e $1f
    nop                                           ; $5556: $00
    adc b                                         ; $5557: $88
    ld sp, hl                                     ; $5558: $f9
    dec c                                         ; $5559: $0d
    db $fd                                        ; $555a: $fd
    inc bc                                        ; $555b: $03
    inc bc                                        ; $555c: $03
    rst $20                                       ; $555d: $e7
    ld b, $07                                     ; $555e: $06 $07
    rst $38                                       ; $5560: $ff
    rst $38                                       ; $5561: $ff
    ld [bc], a                                    ; $5562: $02
    inc bc                                        ; $5563: $03
    db $fd                                        ; $5564: $fd
    inc bc                                        ; $5565: $03
    pop de                                        ; $5566: $d1
    ldh [$d9], a                                  ; $5567: $e0 $d9

jr_09d_5569:
    ld e, a                                       ; $5569: $5f
    ld [bc], a                                    ; $556a: $02
    rst $10                                       ; $556b: $d7
    add d                                         ; $556c: $82
    ld [bc], a                                    ; $556d: $02
    db $10                                        ; $556e: $10
    rst $18                                       ; $556f: $df

jr_09d_5570:
    ldh [$db], a                                  ; $5570: $e0 $db
    ldh [$f7], a                                  ; $5572: $e0 $f7
    jr nz, jr_09d_55d9                            ; $5574: $20 $63

    db $fd                                        ; $5576: $fd
    ret nc                                        ; $5577: $d0

    inc h                                         ; $5578: $24
    nop                                           ; $5579: $00
    inc b                                         ; $557a: $04
    ld [$04f5], sp                                ; $557b: $08 $f5 $04
    db $10                                        ; $557e: $10
    push hl                                       ; $557f: $e5
    inc bc                                        ; $5580: $03
    rst $18                                       ; $5581: $df
    ldh [rNR41], a                                ; $5582: $e0 $20
    rst $38                                       ; $5584: $ff
    ldh [$5a], a                                  ; $5585: $e0 $5a
    nop                                           ; $5587: $00
    rst $38                                       ; $5588: $ff
    db $eb                                        ; $5589: $eb
    push de                                       ; $558a: $d5
    push de                                       ; $558b: $d5
    db $eb                                        ; $558c: $eb
    ld [hl], h                                    ; $558d: $74
    db $eb                                        ; $558e: $eb
    dec h                                         ; $558f: $25
    add hl, bc                                    ; $5590: $09
    ld c, $13                                     ; $5591: $0e $13
    xor [hl]                                      ; $5593: $ae
    inc c                                         ; $5594: $0c
    ld a, a                                       ; $5595: $7f
    adc b                                         ; $5596: $88
    dec d                                         ; $5597: $15
    ld b, l                                       ; $5598: $45
    inc bc                                        ; $5599: $03
    jr nz, @+$01                                  ; $559a: $20 $ff

    inc bc                                        ; $559c: $03
    ld e, d                                       ; $559d: $5a
    nop                                           ; $559e: $00
    rst $38                                       ; $559f: $ff
    ld l, e                                       ; $55a0: $6b
    push de                                       ; $55a1: $d5
    ld d, l                                       ; $55a2: $55
    db $eb                                        ; $55a3: $eb
    ld b, h                                       ; $55a4: $44
    ld l, e                                       ; $55a5: $6b
    ld b, l                                       ; $55a6: $45
    ld bc, $aaaa                                  ; $55a7: $01 $aa $aa
    add b                                         ; $55aa: $80
    ld bc, $8728                                  ; $55ab: $01 $28 $87
    rst $00                                       ; $55ae: $c7
    inc b                                         ; $55af: $04
    ld hl, sp-$52                                 ; $55b0: $f8 $ae
    or c                                          ; $55b2: $b1
    xor d                                         ; $55b3: $aa
    xor d                                         ; $55b4: $aa
    sub $0e                                       ; $55b5: $d6 $0e
    nop                                           ; $55b7: $00
    ld bc, $0100                                  ; $55b8: $01 $00 $01
    ld e, $3f                                     ; $55bb: $1e $3f
    ret nz                                        ; $55bd: $c0

    ld a, [$ad05]                                 ; $55be: $fa $05 $ad
    jp nc, $1080                                  ; $55c1: $d2 $80 $10

    jr nz, jr_09d_5546                            ; $55c4: $20 $80

    add b                                         ; $55c6: $80
    ld b, b                                       ; $55c7: $40
    ret nz                                        ; $55c8: $c0

    nop                                           ; $55c9: $00
    ret nz                                        ; $55ca: $c0

    nop                                           ; $55cb: $00
    nop                                           ; $55cc: $00
    ld b, b                                       ; $55cd: $40
    and b                                         ; $55ce: $a0
    xor a                                         ; $55cf: $af
    or a                                          ; $55d0: $b7
    sbc e                                         ; $55d1: $9b
    sub a                                         ; $55d2: $97
    cp [hl]                                       ; $55d3: $be
    or a                                          ; $55d4: $b7
    ld b, b                                       ; $55d5: $40
    sbc l                                         ; $55d6: $9d
    inc b                                         ; $55d7: $04
    nop                                           ; $55d8: $00

jr_09d_55d9:
    sbc a                                         ; $55d9: $9f
    sub b                                         ; $55da: $90
    sub l                                         ; $55db: $95
    sbc d                                         ; $55dc: $9a
    sub h                                         ; $55dd: $94
    sbc e                                         ; $55de: $9b
    nop                                           ; $55df: $00
    rst $30                                       ; $55e0: $f7
    ret z                                         ; $55e1: $c8

    rst $18                                       ; $55e2: $df
    ldh [$fe], a                                  ; $55e3: $e0 $fe
    pop hl                                        ; $55e5: $e1
    ld a, e                                       ; $55e6: $7b
    db $e4                                        ; $55e7: $e4
    nop                                           ; $55e8: $00
    or $09                                        ; $55e9: $f6 $09
    ei                                            ; $55eb: $fb
    inc b                                         ; $55ec: $04
    ld l, a                                       ; $55ed: $6f
    sub b                                         ; $55ee: $90
    cp b                                          ; $55ef: $b8
    ld b, a                                       ; $55f0: $47
    nop                                           ; $55f1: $00
    ret nz                                        ; $55f2: $c0

    jr nz, @+$42                                  ; $55f3: $20 $40

    and b                                         ; $55f5: $a0
    ldh [rP1], a                                  ; $55f6: $e0 $00

jr_09d_55f8:
    ld h, b                                       ; $55f8: $60
    add b                                         ; $55f9: $80
    nop                                           ; $55fa: $00
    and b                                         ; $55fb: $a0
    ld b, b                                       ; $55fc: $40
    ldh [rP1], a                                  ; $55fd: $e0 $00
    nop                                           ; $55ff: $00
    ldh [$a0], a                                  ; $5600: $e0 $a0
    ld d, b                                       ; $5602: $50
    nop                                           ; $5603: $00
    sub a                                         ; $5604: $97
    sbc b                                         ; $5605: $98
    sub [hl]                                      ; $5606: $96
    sbc c                                         ; $5607: $99
    sub c                                         ; $5608: $91
    sbc [hl]                                      ; $5609: $9e
    adc e                                         ; $560a: $8b
    adc h                                         ; $560b: $8c
    nop                                           ; $560c: $00

jr_09d_560d:
    add [hl]                                      ; $560d: $86
    add l                                         ; $560e: $85
    adc l                                         ; $560f: $8d
    adc [hl]                                      ; $5610: $8e
    add l                                         ; $5611: $85
    add [hl]                                      ; $5612: $86
    add l                                         ; $5613: $85
    add [hl]                                      ; $5614: $86
    nop                                           ; $5615: $00
    push bc                                       ; $5616: $c5
    ld a, [hl-]                                   ; $5617: $3a
    cpl                                           ; $5618: $2f
    ret nc                                        ; $5619: $d0

    ld [hl], l                                    ; $561a: $75
    adc d                                         ; $561b: $8a
    rst $20                                       ; $561c: $e7
    jr jr_09d_561f                                ; $561d: $18 $00

jr_09d_561f:
    cp l                                          ; $561f: $bd
    ld b, d                                       ; $5620: $42
    db $dd                                        ; $5621: $dd
    inc hl                                        ; $5622: $23
    rst $38                                       ; $5623: $ff
    inc bc                                        ; $5624: $03
    xor [hl]                                      ; $5625: $ae
    ld d, e                                       ; $5626: $53
    nop                                           ; $5627: $00
    ldh a, [$08]                                  ; $5628: $f0 $08
    ret c                                         ; $562a: $d8

    jr nz, @+$6a                                  ; $562b: $20 $68

    sub h                                         ; $562d: $94
    ld hl, sp+$04                                 ; $562e: $f8 $04
    nop                                           ; $5630: $00

jr_09d_5631:
    cp h                                          ; $5631: $bc
    ld [hl], b                                    ; $5632: $70
    db $f4                                        ; $5633: $f4
    ld hl, sp+$6c                                 ; $5634: $f8 $6c
    ld a, [$fafc]                                 ; $5636: $fa $fc $fa
    nop                                           ; $5639: $00
    add e                                         ; $563a: $83
    add d                                         ; $563b: $82

jr_09d_563c:
    add a                                         ; $563c: $87
    add [hl]                                      ; $563d: $86
    add e                                         ; $563e: $83
    add d                                         ; $563f: $82
    add e                                         ; $5640: $83
    add d                                         ; $5641: $82
    ld [$8382], sp                                ; $5642: $08 $82 $83
    add e                                         ; $5645: $83
    add e                                         ; $5646: $83
    sbc d                                         ; $5647: $9a
    ld [$a35f], sp                                ; $5648: $08 $5f $a3
    xor a                                         ; $564b: $af
    nop                                           ; $564c: $00
    ld d, b                                       ; $564d: $50
    ld a, h                                       ; $564e: $7c
    add e                                         ; $564f: $83
    rst $00                                       ; $5650: $c7
    ccf                                           ; $5651: $3f
    ld a, l                                       ; $5652: $7d
    db $fd                                        ; $5653: $fd
    xor b                                         ; $5654: $a8
    ld b, b                                       ; $5655: $40
    xor b                                         ; $5656: $a8
    ld [hl], b                                    ; $5657: $70
    rrca                                          ; $5658: $0f
    sbc h                                         ; $5659: $9c
    ld [c], a                                     ; $565a: $e2
    ldh [rNR34], a                                ; $565b: $e0 $1e
    ld a, $fe                                     ; $565d: $3e $fe
    inc c                                         ; $565f: $0c
    ld [$40ea], a                                 ; $5660: $ea $ea $40
    ld b, b                                       ; $5663: $40
    xor b                                         ; $5664: $a8
    db $10                                        ; $5665: $10
    jr nz, jr_09d_566b                            ; $5666: $20 $03

    nop                                           ; $5668: $00
    add b                                         ; $5669: $80
    rra                                           ; $566a: $1f

jr_09d_566b:
    inc b                                         ; $566b: $04
    add e                                         ; $566c: $83
    inc bc                                        ; $566d: $03
    ld b, $00                                     ; $566e: $06 $00
    ld [bc], a                                    ; $5670: $02
    jr jr_09d_55f8                                ; $5671: $18 $85

    daa                                           ; $5673: $27
    dec e                                         ; $5674: $1d
    jr jr_09d_5631                                ; $5675: $18 $ba

    db $10                                        ; $5677: $10
    add c                                         ; $5678: $81
    ld a, [de]                                    ; $5679: $1a
    jr z, jr_09d_563c                             ; $567a: $28 $c0

    add b                                         ; $567c: $80
    ret nz                                        ; $567d: $c0

    rst $38                                       ; $567e: $ff
    ld hl, sp-$08                                 ; $567f: $f8 $f8
    add hl, de                                    ; $5681: $19
    jr c, jr_09d_560d                             ; $5682: $38 $89

    add hl, hl                                    ; $5684: $29
    inc e                                         ; $5685: $1c
    ld [bc], a                                    ; $5686: $02
    ld hl, sp+$0f                                 ; $5687: $f8 $0f
    ld [bc], a                                    ; $5689: $02
    nop                                           ; $568a: $00
    dec c                                         ; $568b: $0d
    ld a, [$0804]                                 ; $568c: $fa $04 $08
    rlca                                          ; $568f: $07
    ld a, [bc]                                    ; $5690: $0a
    db $fd                                        ; $5691: $fd
    dec c                                         ; $5692: $0d
    ld a, [$88aa]                                 ; $5693: $fa $aa $88
    ld a, [de]                                    ; $5696: $1a
    ld h, $1c                                     ; $5697: $26 $1c
    xor $04                                       ; $5699: $ee $04
    nop                                           ; $569b: $00
    cp l                                          ; $569c: $bd
    rra                                           ; $569d: $1f
    ld a, [$fe1d]                                 ; $569e: $fa $1d $fe
    add hl, de                                    ; $56a1: $19
    ld e, b                                       ; $56a2: $58
    cp l                                          ; $56a3: $bd
    ld b, b                                       ; $56a4: $40
    or $04                                        ; $56a5: $f6 $04
    nop                                           ; $56a7: $00
    or h                                          ; $56a8: $b4
    ld e, c                                       ; $56a9: $59
    ld d, b                                       ; $56aa: $50
    cp l                                          ; $56ab: $bd
    ld a, [bc]                                    ; $56ac: $0a
    db $fd                                        ; $56ad: $fd
    nop                                           ; $56ae: $00
    adc b                                         ; $56af: $88
    ld a, a                                       ; $56b0: $7f

jr_09d_56b1:
    ld a, [$f80d]                                 ; $56b1: $fa $0d $f8
    rrca                                          ; $56b4: $0f
    ld e, b                                       ; $56b5: $58
    xor a                                         ; $56b6: $af
    nop                                           ; $56b7: $00
    cp c                                          ; $56b8: $b9
    ld c, a                                       ; $56b9: $4f
    ld e, d                                       ; $56ba: $5a
    xor a                                         ; $56bb: $af
    cp l                                          ; $56bc: $bd
    ld c, [hl]                                    ; $56bd: $4e
    xor d                                         ; $56be: $aa
    ld d, l                                       ; $56bf: $55

jr_09d_56c0:
    ldh [$32], a                                  ; $56c0: $e0 $32
    ld [bc], a                                    ; $56c2: $02
    inc b                                         ; $56c3: $04
    nop                                           ; $56c4: $00
    jp nz, $5519                                  ; $56c5: $c2 $19 $55

    xor d                                         ; $56c8: $aa
    or [hl]                                       ; $56c9: $b6
    ld e, c                                       ; $56ca: $59
    dec de                                        ; $56cb: $1b
    nop                                           ; $56cc: $00
    pop af                                        ; $56cd: $f1
    or [hl]                                       ; $56ce: $b6
    ld e, e                                       ; $56cf: $5b
    inc e                                         ; $56d0: $1c
    rst $38                                       ; $56d1: $ff
    db $10                                        ; $56d2: $10
    rst $38                                       ; $56d3: $ff
    sub c                                         ; $56d4: $91
    nop                                           ; $56d5: $00
    cp $5f                                        ; $56d6: $fe $5f
    ldh a, [$3e]                                  ; $56d8: $f0 $3e
    pop af                                        ; $56da: $f1
    cp $01                                        ; $56db: $fe $01
    nop                                           ; $56dd: $00
    inc c                                         ; $56de: $0c
    ld bc, $c120                                  ; $56df: $01 $20 $c1
    ret nz                                        ; $56e2: $c0

jr_09d_56e3:
    ld b, $00                                     ; $56e3: $06 $00
    ld [bc], a                                    ; $56e5: $02
    ld [$0110], sp                                ; $56e6: $08 $10 $01
    nop                                           ; $56e9: $00
    nop                                           ; $56ea: $00
    nop                                           ; $56eb: $00
    rlca                                          ; $56ec: $07
    nop                                           ; $56ed: $00
    inc b                                         ; $56ee: $04
    nop                                           ; $56ef: $00
    ld [bc], a                                    ; $56f0: $02
    nop                                           ; $56f1: $00
    ld b, b                                       ; $56f2: $40
    inc bc                                        ; $56f3: $03
    add b                                         ; $56f4: $80
    jr nz, jr_09d_576f                            ; $56f5: $20 $78

    ld bc, $0154                                  ; $56f7: $01 $54 $01
    and b                                         ; $56fa: $a0
    ld bc, $8046                                  ; $56fb: $01 $46 $80
    ld h, $00                                     ; $56fe: $26 $00
    inc bc                                        ; $5700: $03
    ld bc, $4603                                  ; $5701: $01 $03 $46
    rlca                                          ; $5704: $07
    ld h, b                                       ; $5705: $60
    jr jr_09d_56c0                                ; $5706: $18 $b8

    nop                                           ; $5708: $00
    ld c, a                                       ; $5709: $4f
    ld hl, sp+$0f                                 ; $570a: $f8 $0f
    ld sp, hl                                     ; $570c: $f9
    rrca                                          ; $570d: $0f
    ld a, [$fd0f]                                 ; $570e: $fa $0f $fd
    ld c, b                                       ; $5711: $48
    ld c, $50                                     ; $5712: $0e $50
    ld e, b                                       ; $5714: $58
    ccf                                           ; $5715: $3f
    ldh a, [$80]                                  ; $5716: $f0 $80
    ld [$8d7a], sp                                ; $5718: $08 $7a $8d
    cp b                                          ; $571b: $b8
    ld [hl], b                                    ; $571c: $70
    ld c, a                                       ; $571d: $4f
    add b                                         ; $571e: $80
    jr z, jr_09d_56b1                             ; $571f: $28 $90

    jr z, @+$32                                   ; $5721: $28 $30

    jr z, jr_09d_5785                             ; $5723: $28 $60

    nop                                           ; $5725: $00
    sbc b                                         ; $5726: $98
    nop                                           ; $5727: $00
    ld bc, $0094                                  ; $5728: $01 $94 $00
    ld b, h                                       ; $572b: $44
    nop                                           ; $572c: $00
    jr c, jr_09d_572f                             ; $572d: $38 $00

jr_09d_572f:
    jr nz, jr_09d_573a                            ; $572f: $20 $09

    dec d                                         ; $5731: $15
    add b                                         ; $5732: $80
    sbc $09                                       ; $5733: $de $09
    adc h                                         ; $5735: $8c
    add b                                         ; $5736: $80
    sub [hl]                                      ; $5737: $96

jr_09d_5738:
    adc b                                         ; $5738: $88
    sbc [hl]                                      ; $5739: $9e

jr_09d_573a:
    add b                                         ; $573a: $80
    sbc [hl]                                      ; $573b: $9e
    db $10                                        ; $573c: $10
    sub d                                         ; $573d: $92
    adc h                                         ; $573e: $8c
    adc h                                         ; $573f: $8c
    adc d                                         ; $5740: $8a
    dec bc                                        ; $5741: $0b
    ld bc, $0400                                  ; $5742: $01 $00 $04
    inc bc                                        ; $5745: $03
    nop                                           ; $5746: $00
    rlca                                          ; $5747: $07
    inc b                                         ; $5748: $04
    dec b                                         ; $5749: $05
    ld b, $03                                     ; $574a: $06 $03
    ld [bc], a                                    ; $574c: $02
    ld [bc], a                                    ; $574d: $02
    rrca                                          ; $574e: $0f
    jr nz, jr_09d_5760                            ; $574f: $20 $0f

    ld sp, $060c                                  ; $5751: $31 $0c $06
    ret nz                                        ; $5754: $c0

    ret nz                                        ; $5755: $c0

    jr nz, jr_09d_5738                            ; $5756: $20 $e0

    stop                                          ; $5758: $10 $00
    ldh a, [$08]                                  ; $575a: $f0 $08
    ret z                                         ; $575c: $c8

    jr nc, jr_09d_56e3                            ; $575d: $30 $84

    ld e, b                                       ; $575f: $58

jr_09d_5760:
    inc c                                         ; $5760: $0c
    and d                                         ; $5761: $a2
    nop                                           ; $5762: $00
    sbc b                                         ; $5763: $98
    add b                                         ; $5764: $80
    cp h                                          ; $5765: $bc
    add b                                         ; $5766: $80
    or h                                          ; $5767: $b4
    adc b                                         ; $5768: $88
    cp a                                          ; $5769: $bf
    and h                                         ; $576a: $a4
    nop                                           ; $576b: $00
    sbc a                                         ; $576c: $9f
    sbc b                                         ; $576d: $98
    add l                                         ; $576e: $85

jr_09d_576f:
    add d                                         ; $576f: $82
    add a                                         ; $5770: $87
    add h                                         ; $5771: $84
    add e                                         ; $5772: $83
    add e                                         ; $5773: $83
    nop                                           ; $5774: $00
    rra                                           ; $5775: $1f
    ld hl, $201e                                  ; $5776: $21 $1e $20
    ld [de], a                                    ; $5779: $12
    inc l                                         ; $577a: $2c
    ld hl, $0032                                  ; $577b: $21 $32 $00
    or c                                          ; $577e: $b1
    ld a, [hl+]                                   ; $577f: $2a
    add [hl]                                      ; $5780: $86
    add hl, de                                    ; $5781: $19
    add e                                         ; $5782: $83
    sbc a                                         ; $5783: $9f
    inc e                                         ; $5784: $1c

jr_09d_5785:
    inc e                                         ; $5785: $1c
    rlca                                          ; $5786: $07
    inc [hl]                                      ; $5787: $34
    call z, $f898                                 ; $5788: $cc $98 $f8
    ldh [$db], a                                  ; $578b: $e0 $db
    ld bc, $315f                                  ; $578d: $01 $5f $31
    ccf                                           ; $5790: $3f
    ld [hl-], a                                   ; $5791: $32
    ld [bc], a                                    ; $5792: $02
    add c                                         ; $5793: $81
    add c                                         ; $5794: $81
    add a                                         ; $5795: $87
    add a                                         ; $5796: $87
    sbc a                                         ; $5797: $9f
    sbc l                                         ; $5798: $9d
    ld e, h                                       ; $5799: $5c
    ld c, $0e                                     ; $579a: $0e $0e
    nop                                           ; $579c: $00
    ld c, $3f                                     ; $579d: $0e $3f
    dec sp                                        ; $579f: $3b
    ld a, l                                       ; $57a0: $7d
    ld [hl], e                                    ; $57a1: $73
    ei                                            ; $57a2: $fb
    rst $18                                       ; $57a3: $df
    cp $10                                        ; $57a4: $fe $10
    ld l, a                                       ; $57a6: $6f
    ld sp, hl                                     ; $57a7: $f9
    or a                                          ; $57a8: $b7
    ld a, [hl+]                                   ; $57a9: $2a
    ld l, b                                       ; $57aa: $68
    cp a                                          ; $57ab: $bf
    or [hl]                                       ; $57ac: $b6
    cp a                                          ; $57ad: $bf
    cp e                                          ; $57ae: $bb
    ld [bc], a                                    ; $57af: $02
    cp [hl]                                       ; $57b0: $be
    cp a                                          ; $57b1: $bf
    xor c                                         ; $57b2: $a9
    cp a                                          ; $57b3: $bf
    sbc a                                         ; $57b4: $9f
    sbc a                                         ; $57b5: $9f
    ld a, b                                       ; $57b6: $78
    ld a, [de]                                    ; $57b7: $1a
    rst $20                                       ; $57b8: $e7
    rrca                                          ; $57b9: $0f
    rst $18                                       ; $57ba: $df
    sbc a                                         ; $57bb: $9f
    ld a, a                                       ; $57bc: $7f
    ld a, b                                       ; $57bd: $78
    ld d, d                                       ; $57be: $52
    nop                                           ; $57bf: $00
    inc h                                         ; $57c0: $24
    inc c                                         ; $57c1: $0c
    ld l, c                                       ; $57c2: $69
    ld a, [de]                                    ; $57c3: $1a
    and d                                         ; $57c4: $a2
    ld d, c                                       ; $57c5: $51
    cp $d1                                        ; $57c6: $fe $d1
    ld bc, $2408                                  ; $57c8: $01 $08 $24
    inc sp                                        ; $57cb: $33
    dec bc                                        ; $57cc: $0b
    rst $08                                       ; $57cd: $cf
    ld a, [de]                                    ; $57ce: $1a
    inc hl                                        ; $57cf: $23
    ld d, $71                                     ; $57d0: $16 $71
    ld de, $4810                                  ; $57d2: $11 $10 $48
    ld bc, $2080                                  ; $57d5: $01 $80 $20
    jr jr_09d_5844                                ; $57d8: $18 $6a

    rst $38                                       ; $57da: $ff
    or $5f                                        ; $57db: $f6 $5f
    ld c, d                                       ; $57dd: $4a
    rst $30                                       ; $57de: $f7
    or $00                                        ; $57df: $f6 $00
    ld e, a                                       ; $57e1: $5f
    ld [hl], d                                    ; $57e2: $72
    rst $08                                       ; $57e3: $cf
    jp z, Jump_09d_5277                           ; $57e4: $ca $77 $52

    rst $28                                       ; $57e7: $ef
    cp $00                                        ; $57e8: $fe $00
    ld a, a                                       ; $57ea: $7f
    ld l, d                                       ; $57eb: $6a
    rst $38                                       ; $57ec: $ff
    halt                                          ; $57ed: $76
    rst $18                                       ; $57ee: $df
    ld c, d                                       ; $57ef: $4a
    rst $30                                       ; $57f0: $f7
    halt                                          ; $57f1: $76

jr_09d_57f2:
    nop                                           ; $57f2: $00
    rst $18                                       ; $57f3: $df
    ld [hl], d                                    ; $57f4: $72
    rst $08                                       ; $57f5: $cf
    ld c, d                                       ; $57f6: $4a
    rst $30                                       ; $57f7: $f7
    ld d, d                                       ; $57f8: $52
    rst $28                                       ; $57f9: $ef
    ld a, [hl]                                    ; $57fa: $7e
    inc bc                                        ; $57fb: $03
    rst $38                                       ; $57fc: $ff
    add c                                         ; $57fd: $81
    rst $38                                       ; $57fe: $ff
    ret nz                                        ; $57ff: $c0

    cp a                                          ; $5800: $bf
    add b                                         ; $5801: $80
    inc b                                         ; $5802: $04
    jr nz, jr_09d_580b                            ; $5803: $20 $06

    ld b, $f0                                     ; $5805: $06 $f0
    ret z                                         ; $5807: $c8

    rla                                           ; $5808: $17
    ret nz                                        ; $5809: $c0

    add hl, de                                    ; $580a: $19

jr_09d_580b:
    ld a, [$d90b]                                 ; $580b: $fa $0b $d9
    rrca                                          ; $580e: $0f
    ld bc, $83ff                                  ; $580f: $01 $ff $83
    ld a, a                                       ; $5812: $7f
    db $10                                        ; $5813: $10
    ld bc, $03ff                                  ; $5814: $01 $ff $03
    and $03                                       ; $5817: $e6 $03
    inc bc                                        ; $5819: $03
    rst $38                                       ; $581a: $ff
    pop bc                                        ; $581b: $c1
    cp a                                          ; $581c: $bf
    add b                                         ; $581d: $80
    ld e, h                                       ; $581e: $5c
    ld c, a                                       ; $581f: $4f
    ld [hl], b                                    ; $5820: $70
    add b                                         ; $5821: $80
    ld e, d                                       ; $5822: $5a
    and b                                         ; $5823: $a0
    rst $00                                       ; $5824: $c7
    rst $38                                       ; $5825: $ff
    db $e3                                        ; $5826: $e3
    ld e, b                                       ; $5827: $58
    rst $18                                       ; $5828: $df
    inc b                                         ; $5829: $04
    ld c, b                                       ; $582a: $48
    rst $38                                       ; $582b: $ff
    xor [hl]                                      ; $582c: $ae
    inc d                                         ; $582d: $14
    ld d, h                                       ; $582e: $54
    jr z, jr_09d_57f2                             ; $582f: $28 $c1

    cp a                                          ; $5831: $bf
    rst $38                                       ; $5832: $ff
    ld h, c                                       ; $5833: $61
    rla                                           ; $5834: $17
    and c                                         ; $5835: $a1
    inc b                                         ; $5836: $04
    inc b                                         ; $5837: $04
    ld b, b                                       ; $5838: $40
    add e                                         ; $5839: $83
    rst $38                                       ; $583a: $ff
    ld b, c                                       ; $583b: $41
    cp a                                          ; $583c: $bf
    ld d, b                                       ; $583d: $50
    jr z, jr_09d_5880                             ; $583e: $28 $40

    xor e                                         ; $5840: $ab
    or c                                          ; $5841: $b1
    dec b                                         ; $5842: $05
    ld h, b                                       ; $5843: $60

jr_09d_5844:
    ld c, $bf                                     ; $5844: $0e $bf
    add hl, bc                                    ; $5846: $09
    ld b, d                                       ; $5847: $42
    rst $38                                       ; $5848: $ff
    ld bc, $8360                                  ; $5849: $01 $60 $83
    rst $38                                       ; $584c: $ff
    pop bc                                        ; $584d: $c1
    cp a                                          ; $584e: $bf
    inc b                                         ; $584f: $04
    ld c, b                                       ; $5850: $48
    ldh a, [rP1]                                  ; $5851: $f0 $00
    nop                                           ; $5853: $00
    ldh a, [rP1]                                  ; $5854: $f0 $00
    ld h, l                                       ; $5856: $65
    nop                                           ; $5857: $00
    xor d                                         ; $5858: $aa
    nop                                           ; $5859: $00
    sbc h                                         ; $585a: $9c
    nop                                           ; $585b: $00
    nop                                           ; $585c: $00
    call z, $ea00                                 ; $585d: $cc $00 $ea
    nop                                           ; $5860: $00
    push bc                                       ; $5861: $c5
    nop                                           ; $5862: $00
    ret nc                                        ; $5863: $d0

    ld [bc], a                                    ; $5864: $02
    nop                                           ; $5865: $00
    and c                                         ; $5866: $a1
    nop                                           ; $5867: $00
    add $00                                       ; $5868: $c6 $00
    inc bc                                        ; $586a: $03
    ld [$7400], sp                                ; $586b: $08 $00 $74
    ld bc, $3a00                                  ; $586e: $01 $00 $3a
    nop                                           ; $5871: $00
    sbc l                                         ; $5872: $9d
    nop                                           ; $5873: $00
    nop                                           ; $5874: $00
    rst $38                                       ; $5875: $ff
    ld [bc], a                                    ; $5876: $02
    xor b                                         ; $5877: $a8
    ld [hl+], a                                   ; $5878: $22
    xor d                                         ; $5879: $aa
    ld d, l                                       ; $587a: $55
    dec de                                        ; $587b: $1b
    nop                                           ; $587c: $00
    rst $38                                       ; $587d: $ff

Call_09d_587e:
    nop                                           ; $587e: $00
    xor d                                         ; $587f: $aa

jr_09d_5880:
    inc b                                         ; $5880: $04
    nop                                           ; $5881: $00
    ld d, l                                       ; $5882: $55
    nop                                           ; $5883: $00
    ld [bc], a                                    ; $5884: $02
    ld a, d                                       ; $5885: $7a
    rlca                                          ; $5886: $07
    ld [hl], l                                    ; $5887: $75
    dec c                                         ; $5888: $0d
    ld l, d                                       ; $5889: $6a
    db $10                                        ; $588a: $10
    ld [hl], a                                    ; $588b: $77
    jr nz, jr_09d_589e                            ; $588c: $20 $10

    ld e, a                                       ; $588e: $5f
    db $10                                        ; $588f: $10
    jr jr_09d_5892                                ; $5890: $18 $00

jr_09d_5892:
    cp $01                                        ; $5892: $fe $01
    ld a, l                                       ; $5894: $7d
    add e                                         ; $5895: $83
    nop                                           ; $5896: $00
    cp d                                          ; $5897: $ba
    call nz, Call_09d_447d                        ; $5898: $c4 $7d $44
    rst $10                                       ; $589b: $d7
    db $eb                                        ; $589c: $eb
    nop                                           ; $589d: $00

jr_09d_589e:
    rst $00                                       ; $589e: $c7
    nop                                           ; $589f: $00
    nop                                           ; $58a0: $00
    ld bc, $1700                                  ; $58a1: $01 $00 $17
    nop                                           ; $58a4: $00
    xor [hl]                                      ; $58a5: $ae
    nop                                           ; $58a6: $00
    call c, RST_00                                ; $58a7: $dc $00 $00
    ld a, c                                       ; $58aa: $79
    nop                                           ; $58ab: $00
    dec l                                         ; $58ac: $2d
    nop                                           ; $58ad: $00
    ld e, $01                                     ; $58ae: $1e $01
    adc h                                         ; $58b0: $8c
    jr nz, jr_09d_58b6                            ; $58b1: $20 $03

    sbc $04                                       ; $58b3: $de $04
    nop                                           ; $58b5: $00

jr_09d_58b6:
    ld d, [hl]                                    ; $58b6: $56
    ld bc, $03a8                                  ; $58b7: $01 $a8 $03
    ld a, [hl]                                    ; $58ba: $7e
    nop                                           ; $58bb: $00
    ld bc, $03ec                                  ; $58bc: $01 $ec $03
    ld sp, hl                                     ; $58bf: $f9
    rst $38                                       ; $58c0: $ff
    pop af                                        ; $58c1: $f1
    rst $38                                       ; $58c2: $ff
    pop hl                                        ; $58c3: $e1
    ld [$ebff], sp                                ; $58c4: $08 $ff $eb
    push af                                       ; $58c7: $f5
    pop af                                        ; $58c8: $f1
    inc b                                         ; $58c9: $04
    nop                                           ; $58ca: $00
    push de                                       ; $58cb: $d5
    db $eb                                        ; $58cc: $eb
    db $eb                                        ; $58cd: $eb
    inc d                                         ; $58ce: $14
    push de                                       ; $58cf: $d5
    add c                                         ; $58d0: $81
    rst $38                                       ; $58d1: $ff
    ld [bc], a                                    ; $58d2: $02
    ld [$08ab], sp                                ; $58d3: $08 $ab $08
    nop                                           ; $58d6: $00
    xor e                                         ; $58d7: $ab
    push de                                       ; $58d8: $d5
    nop                                           ; $58d9: $00
    sub l                                         ; $58da: $95
    db $eb                                        ; $58db: $eb
    xor e                                         ; $58dc: $ab
    push de                                       ; $58dd: $d5
    ld [bc], a                                    ; $58de: $02
    db $fd                                        ; $58df: $fd
    inc bc                                        ; $58e0: $03
    db $fd                                        ; $58e1: $fd
    adc b                                         ; $58e2: $88
    inc b                                         ; $58e3: $04
    ld c, b                                       ; $58e4: $48
    cp $01                                        ; $58e5: $fe $01
    or h                                          ; $58e7: $b4
    ld b, b                                       ; $58e8: $40
    db $10                                        ; $58e9: $10
    sub $01                                       ; $58ea: $d6 $01
    ld l, [hl]                                    ; $58ec: $6e
    inc b                                         ; $58ed: $04
    add c                                         ; $58ee: $81
    or $01                                        ; $58ef: $f6 $01
    ld a, d                                       ; $58f1: $7a
    add c                                         ; $58f2: $81
    ldh [$08], a                                  ; $58f3: $e0 $08
    push de                                       ; $58f5: $d5
    db $eb                                        ; $58f6: $eb
    jr c, @+$01                                   ; $58f7: $38 $ff

    pop bc                                        ; $58f9: $c1
    inc b                                         ; $58fa: $04
    ld [$1002], sp                                ; $58fb: $08 $02 $10
    db $10                                        ; $58fe: $10
    ld [$ffab], sp                                ; $58ff: $08 $ab $ff
    add c                                         ; $5902: $81
    ldh [rDIV], a                                 ; $5903: $e0 $04
    ld [$084b], sp                                ; $5905: $08 $4b $08
    ld b, b                                       ; $5908: $40
    jr c, jr_09d_58b6                             ; $5909: $38 $ab

    ld d, l                                       ; $590b: $55
    cp $01                                        ; $590c: $fe $01
    rst $38                                       ; $590e: $ff
    ld b, b                                       ; $590f: $40
    rst $38                                       ; $5910: $ff
    jr c, jr_09d_591b                             ; $5911: $38 $08

    ld d, [hl]                                    ; $5913: $56
    add c                                         ; $5914: $81
    ld h, d                                       ; $5915: $62
    add c                                         ; $5916: $81
    halt                                          ; $5917: $76
    add c                                         ; $5918: $81
    ld b, $6a                                     ; $5919: $06 $6a

jr_09d_591b:
    add c                                         ; $591b: $81
    ld b, [hl]                                    ; $591c: $46
    add c                                         ; $591d: $81
    ld e, d                                       ; $591e: $5a
    ld b, b                                       ; $591f: $40
    db $10                                        ; $5920: $10
    ld a, $00                                     ; $5921: $3e $00
    pop bc                                        ; $5923: $c1
    ld b, [hl]                                    ; $5924: $46
    ei                                            ; $5925: $fb
    inc b                                         ; $5926: $04
    nop                                           ; $5927: $00
    db $eb                                        ; $5928: $eb
    pop bc                                        ; $5929: $c1
    push bc                                       ; $592a: $c5
    ld b, b                                       ; $592b: $40
    db $10                                        ; $592c: $10
    ld a, $00                                     ; $592d: $3e $00
    add c                                         ; $592f: $81
    ld b, b                                       ; $5930: $40
    ei                                            ; $5931: $fb
    inc b                                         ; $5932: $04
    nop                                           ; $5933: $00
    xor e                                         ; $5934: $ab
    add c                                         ; $5935: $81
    push bc                                       ; $5936: $c5
    add c                                         ; $5937: $81
    ld bc, $00ab                                  ; $5938: $01 $ab $00
    cp $fe                                        ; $593b: $fe $fe
    ld [bc], a                                    ; $593d: $02
    ld d, [hl]                                    ; $593e: $56
    add d                                         ; $593f: $82
    cp [hl]                                       ; $5940: $be
    jp nz, $015e                                  ; $5941: $c2 $5e $01

    ld h, d                                       ; $5944: $62
    xor [hl]                                      ; $5945: $ae
    ld [hl-], a                                   ; $5946: $32
    sbc $12                                       ; $5947: $de $12
    or $46                                        ; $5949: $f6 $46
    jr c, jr_09d_594d                             ; $594b: $38 $00

jr_09d_594d:
    nop                                           ; $594d: $00
    ld [hl], d                                    ; $594e: $72
    add c                                         ; $594f: $81
    ld [hl+], a                                   ; $5950: $22
    pop bc                                        ; $5951: $c1
    halt                                          ; $5952: $76
    add c                                         ; $5953: $81
    ld h, $c1                                     ; $5954: $26 $c1
    ld h, b                                       ; $5956: $60
    ld h, d                                       ; $5957: $62
    inc b                                         ; $5958: $04
    nop                                           ; $5959: $00
    ld [hl], c                                    ; $595a: $71
    ld [$c1eb], sp                                ; $595b: $08 $eb $c1
    pop bc                                        ; $595e: $c1
    pop bc                                        ; $595f: $c1
    db $e3                                        ; $5960: $e3
    ldh [rDIV], a                                 ; $5961: $e0 $04
    nop                                           ; $5963: $00
    ld a, l                                       ; $5964: $7d
    ld [$0891], sp                                ; $5965: $08 $91 $08
    xor e                                         ; $5968: $ab
    add c                                         ; $5969: $81
    add c                                         ; $596a: $81
    add c                                         ; $596b: $81
    and e                                         ; $596c: $a3
    ret nz                                        ; $596d: $c0

    inc b                                         ; $596e: $04
    nop                                           ; $596f: $00
    sbc l                                         ; $5970: $9d
    ld [$ff9f], sp                                ; $5971: $08 $9f $ff
    adc a                                         ; $5974: $8f
    rst $38                                       ; $5975: $ff
    add a                                         ; $5976: $87
    rst $38                                       ; $5977: $ff
    db $10                                        ; $5978: $10
    xor a                                         ; $5979: $af
    rst $10                                       ; $597a: $d7
    adc a                                         ; $597b: $8f
    inc b                                         ; $597c: $04
    nop                                           ; $597d: $00
    sub a                                         ; $597e: $97
    db $eb                                        ; $597f: $eb
    xor e                                         ; $5980: $ab
    rst $10                                       ; $5981: $d7
    inc e                                         ; $5982: $1c
    nop                                           ; $5983: $00
    rst $38                                       ; $5984: $ff
    add b                                         ; $5985: $80
    ld d, d                                       ; $5986: $52
    ld bc, $3804                                  ; $5987: $01 $04 $38
    and b                                         ; $598a: $a0
    add hl, bc                                    ; $598b: $09
    rst $10                                       ; $598c: $d7
    xor e                                         ; $598d: $ab
    jr c, @+$01                                   ; $598e: $38 $ff

    add e                                         ; $5990: $83
    inc b                                         ; $5991: $04
    ld [$0802], sp                                ; $5992: $08 $02 $08
    jr nz, @+$3a                                  ; $5995: $20 $38

    xor d                                         ; $5997: $aa
    push de                                       ; $5998: $d5
    ld a, a                                       ; $5999: $7f
    call nz, Call_000_181f                        ; $599a: $c4 $1f $18
    or l                                          ; $599d: $b5
    ld bc, $83d7                                  ; $599e: $01 $d7 $83
    ei                                            ; $59a1: $fb
    inc b                                         ; $59a2: $04
    nop                                           ; $59a3: $00
    xor e                                         ; $59a4: $ab
    add e                                         ; $59a5: $83
    nop                                           ; $59a6: $00
    rst $00                                       ; $59a7: $c7
    add e                                         ; $59a8: $83
    add b                                         ; $59a9: $80
    xor d                                         ; $59aa: $aa
    ld a, a                                       ; $59ab: $7f
    ld a, a                                       ; $59ac: $7f
    ld b, b                                       ; $59ad: $40
    ld c, d                                       ; $59ae: $4a
    nop                                           ; $59af: $00
    ld b, b                                       ; $59b0: $40
    ld e, a                                       ; $59b1: $5f
    ld b, a                                       ; $59b2: $47
    ld d, a                                       ; $59b3: $57
    ld b, a                                       ; $59b4: $47
    ld d, h                                       ; $59b5: $54
    ld b, h                                       ; $59b6: $44
    ld d, a                                       ; $59b7: $57
    jr z, @+$46                                   ; $59b8: $28 $44

    ld d, h                                       ; $59ba: $54
    add b                                         ; $59bb: $80
    ld de, $89aa                                  ; $59bc: $11 $aa $89
    ld bc, $f8ff                                  ; $59bf: $01 $ff $f8
    rst $38                                       ; $59c2: $ff
    ld [$8ff8], sp                                ; $59c3: $08 $f8 $8f
    adc b                                         ; $59c6: $88
    jp c, Jump_000_3810                           ; $59c7: $da $10 $38

    rst $38                                       ; $59ca: $ff
    db $fc                                        ; $59cb: $fc
    add a                                         ; $59cc: $87
    ld [$8484], sp                                ; $59cd: $08 $84 $84
    add l                                         ; $59d0: $85
    add e                                         ; $59d1: $83
    sub b                                         ; $59d2: $90
    ld [$8383], sp                                ; $59d3: $08 $83 $83
    add e                                         ; $59d6: $83
    ld h, h                                       ; $59d7: $64
    and e                                         ; $59d8: $a3
    inc b                                         ; $59d9: $04
    nop                                           ; $59da: $00
    inc c                                         ; $59db: $0c
    ld [$5447], sp                                ; $59dc: $08 $47 $54
    ld [bc], a                                    ; $59df: $02
    jr @+$42                                      ; $59e0: $18 $40

    ld d, b                                       ; $59e2: $50
    add c                                         ; $59e3: $81
    ld b, h                                       ; $59e4: $44
    ld [$5444], sp                                ; $59e5: $08 $44 $54
    adc b                                         ; $59e8: $88
    xor l                                         ; $59e9: $ad
    ld hl, sp-$71                                 ; $59ea: $f8 $8f
    ld [bc], a                                    ; $59ec: $02
    ld [$0040], sp                                ; $59ed: $08 $40 $00
    ld [$ff01], a                                 ; $59f0: $ea $01 $ff
    rst $38                                       ; $59f3: $ff
    ld a, h                                       ; $59f4: $7c
    ld a, a                                       ; $59f5: $7f
    db $fc                                        ; $59f6: $fc
    cp $33                                        ; $59f7: $fe $33
    add a                                         ; $59f9: $87
    add h                                         ; $59fa: $84
    ld [bc], a                                    ; $59fb: $02
    ld [$1810], sp                                ; $59fc: $08 $10 $18
    rst $38                                       ; $59ff: $ff
    cp $50                                        ; $5a00: $fe $50
    ld b, b                                       ; $5a02: $40
    ld c, e                                       ; $5a03: $4b
    ld [bc], a                                    ; $5a04: $02
    ld h, b                                       ; $5a05: $60
    ld sp, hl                                     ; $5a06: $f9
    ldh a, [rNR24]                                ; $5a07: $f0 $19
    ld [hl], b                                    ; $5a09: $70
    db $10                                        ; $5a0a: $10
    ccf                                           ; $5a0b: $3f
    db $fc                                        ; $5a0c: $fc

jr_09d_5a0d:
    inc h                                         ; $5a0d: $24
    push hl                                       ; $5a0e: $e5
    inc h                                         ; $5a0f: $24
    ld b, b                                       ; $5a10: $40
    ld h, h                                       ; $5a11: $64

jr_09d_5a12:
    jr nz, @+$13                                  ; $5a12: $20 $11

    xor d                                         ; $5a14: $aa
    ld [bc], a                                    ; $5a15: $02
    ld a, [$eae2]                                 ; $5a16: $fa $e2 $ea
    ld [c], a                                     ; $5a19: $e2
    inc bc                                        ; $5a1a: $03
    ld a, [hl+]                                   ; $5a1b: $2a
    ld [hl+], a                                   ; $5a1c: $22
    xor d                                         ; $5a1d: $aa
    ld [hl+], a                                   ; $5a1e: $22
    ld a, [hl+]                                   ; $5a1f: $2a
    ld sp, hl                                     ; $5a20: $f9
    ld bc, $2808                                  ; $5a21: $01 $08 $28
    ld [$5080], sp                                ; $5a24: $08 $80 $50

jr_09d_5a27:
    db $10                                        ; $5a27: $10
    ld sp, hl                                     ; $5a28: $f9
    ld a, a                                       ; $5a29: $7f
    inc a                                         ; $5a2a: $3c
    ld a, l                                       ; $5a2b: $7d
    ccf                                           ; $5a2c: $3f
    db $fc                                        ; $5a2d: $fc
    daa                                           ; $5a2e: $27
    db $10                                        ; $5a2f: $10
    db $e4                                        ; $5a30: $e4
    daa                                           ; $5a31: $27
    db $e4                                        ; $5a32: $e4
    ld h, b                                       ; $5a33: $60
    jr jr_09d_5a27                                ; $5a34: $18 $f1

    rst $38                                       ; $5a36: $ff
    ld [hl+], a                                   ; $5a37: $22
    xor d                                         ; $5a38: $aa
    inc h                                         ; $5a39: $24
    ld [c], a                                     ; $5a3a: $e2
    ld a, [hl+]                                   ; $5a3b: $2a
    ld [bc], a                                    ; $5a3c: $02
    ld [$0a02], sp                                ; $5a3d: $08 $02 $0a
    inc [hl]                                      ; $5a40: $34
    db $10                                        ; $5a41: $10
    ld [$4420], a                                 ; $5a42: $ea $20 $44
    ld l, a                                       ; $5a45: $6f
    ld [bc], a                                    ; $5a46: $02
    ld d, b                                       ; $5a47: $50
    ld l, [hl]                                    ; $5a48: $6e
    ld l, b                                       ; $5a49: $68
    cp e                                          ; $5a4a: $bb
    ld [bc], a                                    ; $5a4b: $02
    jr c, jr_09d_5a76                             ; $5a4c: $38 $28

    add hl, sp                                    ; $5a4e: $39
    db $10                                        ; $5a4f: $10
    add $10                                       ; $5a50: $c6 $10
    ld hl, $5820                                  ; $5a52: $21 $20 $58
    ld l, a                                       ; $5a55: $6f
    add hl, hl                                    ; $5a56: $29
    ld a, e                                       ; $5a57: $7b
    xor $40                                       ; $5a58: $ee $40
    rst $38                                       ; $5a5a: $ff
    inc h                                         ; $5a5b: $24
    ld c, b                                       ; $5a5c: $48
    jr nz, jr_09d_5abf                            ; $5a5d: $20 $60

    ccf                                           ; $5a5f: $3f
    ld a, a                                       ; $5a60: $7f
    nop                                           ; $5a61: $00
    ld h, b                                       ; $5a62: $60
    ld b, b                                       ; $5a63: $40
    xor d                                         ; $5a64: $aa
    ld [bc], a                                    ; $5a65: $02
    ld bc, $f000                                  ; $5a66: $01 $00 $f0
    rra                                           ; $5a69: $1f
    rst $18                                       ; $5a6a: $df
    jr nz, jr_09d_5a0d                            ; $5a6b: $20 $a0

    inc bc                                        ; $5a6d: $03
    jr z, jr_09d_5ae8                             ; $5a6e: $28 $78

    rst $28                                       ; $5a70: $ef
    rst $38                                       ; $5a71: $ff
    nop                                           ; $5a72: $00
    jr c, jr_09d_5a85                             ; $5a73: $38 $10

    db $10                                        ; $5a75: $10

jr_09d_5a76:
    sbc [hl]                                      ; $5a76: $9e
    ld a, [bc]                                    ; $5a77: $0a
    nop                                           ; $5a78: $00
    nop                                           ; $5a79: $00
    ld b, l                                       ; $5a7a: $45
    jr c, jr_09d_5a12                             ; $5a7b: $38 $95

    ld a, b                                       ; $5a7d: $78
    ld b, l                                       ; $5a7e: $45
    ld a, [hl-]                                   ; $5a7f: $3a
    ld a, [de]                                    ; $5a80: $1a
    nop                                           ; $5a81: $00
    ld a, a                                       ; $5a82: $7f
    ld a, [bc]                                    ; $5a83: $0a
    ld [hl], b                                    ; $5a84: $70

jr_09d_5a85:
    sbc c                                         ; $5a85: $99
    ld [hl], b                                    ; $5a86: $70
    ld a, [bc]                                    ; $5a87: $0a
    ldh a, [$99]                                  ; $5a88: $f0 $99
    nop                                           ; $5a8a: $00
    ld [hl], b                                    ; $5a8b: $70
    xor l                                         ; $5a8c: $ad
    nop                                           ; $5a8d: $00
    ld l, a                                       ; $5a8e: $6f
    nop                                           ; $5a8f: $00
    ld d, l                                       ; $5a90: $55
    xor d                                         ; $5a91: $aa
    xor d                                         ; $5a92: $aa
    nop                                           ; $5a93: $00
    rst $38                                       ; $5a94: $ff
    or b                                          ; $5a95: $b0
    rrca                                          ; $5a96: $0f
    ld e, d                                       ; $5a97: $5a
    inc c                                         ; $5a98: $0c
    db $10                                        ; $5a99: $10
    rrca                                          ; $5a9a: $0f
    ld e, d                                       ; $5a9b: $5a
    db $10                                        ; $5a9c: $10
    dec c                                         ; $5a9d: $0d
    ld a, [de]                                    ; $5a9e: $1a
    xor $02                                       ; $5a9f: $ee $02
    ld e, b                                       ; $5aa1: $58
    ld l, a                                       ; $5aa2: $6f
    add b                                         ; $5aa3: $80
    dec sp                                        ; $5aa4: $3b
    ret nz                                        ; $5aa5: $c0

    nop                                           ; $5aa6: $00
    ld [hl], $c0                                  ; $5aa7: $36 $c0
    cpl                                           ; $5aa9: $2f
    ret nz                                        ; $5aaa: $c0

    sub l                                         ; $5aab: $95
    ld [$d7a8], a                                 ; $5aac: $ea $a8 $d7
    db $10                                        ; $5aaf: $10
    push bc                                       ; $5ab0: $c5
    rst $38                                       ; $5ab1: $ff
    ld a, [$12e3]                                 ; $5ab2: $fa $e3 $12
    add a                                         ; $5ab5: $87
    nop                                           ; $5ab6: $00
    ld e, l                                       ; $5ab7: $5d
    nop                                           ; $5ab8: $00
    ld bc, $a857                                  ; $5ab9: $01 $57 $a8
    xor c                                         ; $5abc: $a9
    ld d, [hl]                                    ; $5abd: $56
    ld [de], a                                    ; $5abe: $12

jr_09d_5abf:
    rst $28                                       ; $5abf: $ef
    ld h, l                                       ; $5ac0: $65
    di                                            ; $5ac1: $f3
    ld [de], a                                    ; $5ac2: $12
    nop                                           ; $5ac3: $00
    inc c                                         ; $5ac4: $0c
    nop                                           ; $5ac5: $00
    or l                                          ; $5ac6: $b5
    ld [$51ae], sp                                ; $5ac7: $08 $ae $51
    ld d, c                                       ; $5aca: $51
    xor [hl]                                      ; $5acb: $ae
    nop                                           ; $5acc: $00
    adc b                                         ; $5acd: $88
    ld a, a                                       ; $5ace: $7f
    ld e, l                                       ; $5acf: $5d
    rst $38                                       ; $5ad0: $ff
    ld b, $78                                     ; $5ad1: $06 $78
    sub [hl]                                      ; $5ad3: $96
    ld a, b                                       ; $5ad4: $78
    ld [hl+], a                                   ; $5ad5: $22
    dec b                                         ; $5ad6: $05
    ld a, [$0828]                                 ; $5ad7: $fa $28 $08
    xor c                                         ; $5ada: $a9
    ld d, [hl]                                    ; $5adb: $56
    or h                                          ; $5adc: $b4
    ld l, $03                                     ; $5add: $2e $03
    or l                                          ; $5adf: $b5
    jr nz, jr_09d_5ae2                            ; $5ae0: $20 $00

jr_09d_5ae2:
    or $60                                        ; $5ae2: $f6 $60
    db $10                                        ; $5ae4: $10
    ld a, [bc]                                    ; $5ae5: $0a
    ldh a, [$59]                                  ; $5ae6: $f0 $59

jr_09d_5ae8:
    or b                                          ; $5ae8: $b0
    adc d                                         ; $5ae9: $8a
    nop                                           ; $5aea: $00
    ld [hl], b                                    ; $5aeb: $70
    add hl, de                                    ; $5aec: $19
    ldh a, [$a4]                                  ; $5aed: $f0 $a4
    add hl, de                                    ; $5aef: $19
    and a                                         ; $5af0: $a7
    jr jr_09d_5b37                                ; $5af1: $18 $44

    nop                                           ; $5af3: $00
    cp c                                          ; $5af4: $b9
    or a                                          ; $5af5: $b7
    ld hl, sp-$4a                                 ; $5af6: $f8 $b6
    add hl, bc                                    ; $5af8: $09
    ld d, l                                       ; $5af9: $55
    ld [$0017], sp                                ; $5afa: $08 $17 $00
    ld [$0857], sp                                ; $5afd: $08 $57 $08
    ld a, [bc]                                    ; $5b00: $0a
    ld e, $fa                                     ; $5b01: $1e $fa
    cp $02                                        ; $5b03: $fe $02
    nop                                           ; $5b05: $00

Jump_09d_5b06:
    ld a, [bc]                                    ; $5b06: $0a
    xor d                                         ; $5b07: $aa
    xor d                                         ; $5b08: $aa
    ld [bc], a                                    ; $5b09: $02
    cp $02                                        ; $5b0a: $fe $02
    ld a, [hl]                                    ; $5b0c: $7e
    pop bc                                        ; $5b0d: $c1
    nop                                           ; $5b0e: $00
    db $dd                                        ; $5b0f: $dd
    jr nz, jr_09d_5b40                            ; $5b10: $20 $2e

    ld d, h                                       ; $5b12: $54
    and e                                         ; $5b13: $a3
    ld a, [bc]                                    ; $5b14: $0a
    push af                                       ; $5b15: $f5
    ld b, l                                       ; $5b16: $45
    nop                                           ; $5b17: $00
    add b                                         ; $5b18: $80
    nop                                           ; $5b19: $00
    rst $38                                       ; $5b1a: $ff
    ld d, d                                       ; $5b1b: $52
    dec c                                         ; $5b1c: $0d
    xor c                                         ; $5b1d: $a9
    ld d, [hl]                                    ; $5b1e: $56
    ld b, h                                       ; $5b1f: $44
    nop                                           ; $5b20: $00
    jr c, @+$17                                   ; $5b21: $38 $15

    ld [c], a                                     ; $5b23: $e2
    jp z, $1930                                   ; $5b24: $ca $30 $19

    ldh a, [rWY]                                  ; $5b27: $f0 $4a
    nop                                           ; $5b29: $00
    jr nc, jr_09d_5b41                            ; $5b2a: $30 $15

    ld a, [$bd42]                                 ; $5b2c: $fa $42 $bd
    rla                                           ; $5b2f: $17
    ld hl, sp-$7a                                 ; $5b30: $f8 $86
    nop                                           ; $5b32: $00
    ld a, b                                       ; $5b33: $78
    ld d, l                                       ; $5b34: $55
    cp d                                          ; $5b35: $ba

jr_09d_5b36:
    ld d, l                                       ; $5b36: $55

jr_09d_5b37:
    ld [$0815], sp                                ; $5b37: $08 $15 $08
    or l                                          ; $5b3a: $b5
    db $10                                        ; $5b3b: $10
    ld a, [bc]                                    ; $5b3c: $0a
    ld e, d                                       ; $5b3d: $5a
    xor a                                         ; $5b3e: $af
    ld l, [hl]                                    ; $5b3f: $6e

jr_09d_5b40:
    dec bc                                        ; $5b40: $0b

jr_09d_5b41:
    xor l                                         ; $5b41: $ad
    nop                                           ; $5b42: $00
    ld c, d                                       ; $5b43: $4a
    or l                                          ; $5b44: $b5
    ld bc, $1865                                  ; $5b45: $01 $65 $18
    ld l, c                                       ; $5b48: $69
    ld e, $40                                     ; $5b49: $1e $40
    cp a                                          ; $5b4b: $bf
    cp a                                          ; $5b4c: $bf
    add b                                         ; $5b4d: $80
    dec bc                                        ; $5b4e: $0b
    nop                                           ; $5b4f: $00
    inc d                                         ; $5b50: $14
    inc b                                         ; $5b51: $04
    ei                                            ; $5b52: $fb
    xor b                                         ; $5b53: $a8
    ld b, a                                       ; $5b54: $47
    jr nz, jr_09d_5b36                            ; $5b55: $20 $df

    ld d, l                                       ; $5b57: $55

jr_09d_5b58:
    ld b, b                                       ; $5b58: $40

jr_09d_5b59:
    jr z, jr_09d_5b59                             ; $5b59: $28 $fe

    add hl, bc                                    ; $5b5b: $09
    ld [bc], a                                    ; $5b5c: $02
    db $fd                                        ; $5b5d: $fd
    sub a                                         ; $5b5e: $97
    ld a, b                                       ; $5b5f: $78
    and [hl]                                      ; $5b60: $a6
    jr jr_09d_5b63                                ; $5b61: $18 $00

jr_09d_5b63:
    inc d                                         ; $5b63: $14
    ei                                            ; $5b64: $fb
    rlca                                          ; $5b65: $07
    ld hl, sp+$56                                 ; $5b66: $f8 $56
    jr c, jr_09d_5b71                             ; $5b68: $38 $07

    ld hl, sp+$00                                 ; $5b6a: $f8 $00
    rst $30                                       ; $5b6c: $f7
    ld hl, sp-$5b                                 ; $5b6d: $f8 $a5
    ld e, b                                       ; $5b6f: $58
    rst $20                                       ; $5b70: $e7

jr_09d_5b71:
    jr jr_09d_5b58                                ; $5b71: $18 $e5

    jr jr_09d_5b75                                ; $5b73: $18 $00

jr_09d_5b75:
    and l                                         ; $5b75: $a5
    ld e, d                                       ; $5b76: $5a
    ld e, a                                       ; $5b77: $5f
    nop                                           ; $5b78: $00
    and d                                         ; $5b79: $a2
    nop                                           ; $5b7a: $00
    ld c, [hl]                                    ; $5b7b: $4e
    or c                                          ; $5b7c: $b1
    nop                                           ; $5b7d: $00
    ld e, l                                       ; $5b7e: $5d
    nop                                           ; $5b7f: $00
    and [hl]                                      ; $5b80: $a6
    nop                                           ; $5b81: $00
    push af                                       ; $5b82: $f5
    ld a, [bc]                                    ; $5b83: $0a
    dec h                                         ; $5b84: $25
    nop                                           ; $5b85: $00
    nop                                           ; $5b86: $00
    ld d, l                                       ; $5b87: $55
    and d                                         ; $5b88: $a2
    nop                                           ; $5b89: $00
    rst $38                                       ; $5b8a: $ff
    db $fc                                        ; $5b8b: $fc
    inc bc                                        ; $5b8c: $03
    add $01                                       ; $5b8d: $c6 $01
    nop                                           ; $5b8f: $00
    ld l, l                                       ; $5b90: $6d
    add e                                         ; $5b91: $83
    xor b                                         ; $5b92: $a8
    ld d, a                                       ; $5b93: $57
    ld d, l                                       ; $5b94: $55
    xor e                                         ; $5b95: $ab
    adc d                                         ; $5b96: $8a
    ld [hl], a                                    ; $5b97: $77
    nop                                           ; $5b98: $00
    daa                                           ; $5b99: $27
    rst $38                                       ; $5b9a: $ff
    ld b, l                                       ; $5b9b: $45
    ld d, l                                       ; $5b9c: $55
    ld b, [hl]                                    ; $5b9d: $46
    ld d, [hl]                                    ; $5b9e: $56
    ld b, h                                       ; $5b9f: $44
    ld d, h                                       ; $5ba0: $54
    ret nz                                        ; $5ba1: $c0

    ld [bc], a                                    ; $5ba2: $02
    jr jr_09d_5bb9                                ; $5ba3: $18 $14

    ld a, [bc]                                    ; $5ba5: $0a
    ld a, h                                       ; $5ba6: $7c
    ld b, a                                       ; $5ba7: $47
    call nz, Call_09d_44ff                        ; $5ba8: $c4 $ff $44
    ld a, a                                       ; $5bab: $7f

jr_09d_5bac:
    jr nc, jr_09d_5c2a                            ; $5bac: $30 $7c

    ld b, a                                       ; $5bae: $47
    ld [bc], a                                    ; $5baf: $02
    ld [$0a14], sp                                ; $5bb0: $08 $14 $0a
    ld a, [c]                                     ; $5bb3: $f2
    di                                            ; $5bb4: $f3
    ld a, [c]                                     ; $5bb5: $f2
    di                                            ; $5bb6: $f3
    jr c, jr_09d_5bac                             ; $5bb7: $38 $f3

jr_09d_5bb9:
    cp $05                                        ; $5bb9: $fe $05
    nop                                           ; $5bbb: $00
    add hl, bc                                    ; $5bbc: $09
    nop                                           ; $5bbd: $00
    inc h                                         ; $5bbe: $24
    ld a, [bc]                                    ; $5bbf: $0a
    sub b                                         ; $5bc0: $90
    dec h                                         ; $5bc1: $25
    ld l, e                                       ; $5bc2: $6b
    nop                                           ; $5bc3: $00
    inc b                                         ; $5bc4: $04
    sub b                                         ; $5bc5: $90
    dec h                                         ; $5bc6: $25
    or h                                          ; $5bc7: $b4
    nop                                           ; $5bc8: $00
    cp a                                          ; $5bc9: $bf
    nop                                           ; $5bca: $00
    ret z                                         ; $5bcb: $c8

    dec b                                         ; $5bcc: $05
    dec h                                         ; $5bcd: $25
    or e                                          ; $5bce: $b3
    inc b                                         ; $5bcf: $04
    ld e, d                                       ; $5bd0: $5a
    inc h                                         ; $5bd1: $24
    adc b                                         ; $5bd2: $88
    ld [de], a                                    ; $5bd3: $12
    ld d, l                                       ; $5bd4: $55
    ld b, d                                       ; $5bd5: $42
    nop                                           ; $5bd6: $00
    ld h, b                                       ; $5bd7: $60
    ld d, l                                       ; $5bd8: $55
    ld e, d                                       ; $5bd9: $5a
    ld a, [de]                                    ; $5bda: $1a
    ld [hl], a                                    ; $5bdb: $77
    ld [bc], a                                    ; $5bdc: $02
    ccf                                           ; $5bdd: $3f
    inc h                                         ; $5bde: $24
    and a                                         ; $5bdf: $a7
    inc h                                         ; $5be0: $24
    ld h, $0a                                     ; $5be1: $26 $0a
    inc a                                         ; $5be3: $3c
    cp [hl]                                       ; $5be4: $be
    db $fc                                        ; $5be5: $fc
    ccf                                           ; $5be6: $3f
    rst $30                                       ; $5be7: $f7
    ld bc, $8027                                  ; $5be8: $01 $27 $80
    inc e                                         ; $5beb: $1c
    sbc a                                         ; $5bec: $9f
    jr c, @+$01                                   ; $5bed: $38 $ff

    sbc a                                         ; $5bef: $9f
    ld bc, $0e08                                  ; $5bf0: $01 $08 $0e
    inc bc                                        ; $5bf3: $03
    add b                                         ; $5bf4: $80
    add hl, hl                                    ; $5bf5: $29
    xor d                                         ; $5bf6: $aa
    ld d, b                                       ; $5bf7: $50
    jp hl                                         ; $5bf8: $e9


    inc b                                         ; $5bf9: $04
    db $10                                        ; $5bfa: $10
    xor d                                         ; $5bfb: $aa
    db $10                                        ; $5bfc: $10
    jp hl                                         ; $5bfd: $e9


    db $10                                        ; $5bfe: $10
    adc b                                         ; $5bff: $88
    ld a, [bc]                                    ; $5c00: $0a
    ld b, b                                       ; $5c01: $40
    ld e, a                                       ; $5c02: $5f
    nop                                           ; $5c03: $00
    ld l, d                                       ; $5c04: $6a
    ld l, d                                       ; $5c05: $6a
    ld b, b                                       ; $5c06: $40
    ld a, a                                       ; $5c07: $7f
    ld b, b                                       ; $5c08: $40
    ld a, [hl]                                    ; $5c09: $7e
    add e                                         ; $5c0a: $83
    cp e                                          ; $5c0b: $bb
    inc a                                         ; $5c0c: $3c
    inc b                                         ; $5c0d: $04
    ld [hl], h                                    ; $5c0e: $74
    adc b                                         ; $5c0f: $88
    ld a, [bc]                                    ; $5c10: $0a
    ld e, h                                       ; $5c11: $5c
    inc b                                         ; $5c12: $04
    ret nz                                        ; $5c13: $c0

    ld sp, $4010                                  ; $5c14: $31 $10 $40
    rrca                                          ; $5c17: $0f
    ld hl, sp+$00                                 ; $5c18: $f8 $00
    ei                                            ; $5c1a: $fb
    inc b                                         ; $5c1b: $04
    dec b                                         ; $5c1c: $05
    ld l, d                                       ; $5c1d: $6a
    db $10                                        ; $5c1e: $10
    xor c                                         ; $5c1f: $a9
    db $10                                        ; $5c20: $10
    ld [$1000], a                                 ; $5c21: $ea $00 $10
    and l                                         ; $5c24: $a5
    ld a, [de]                                    ; $5c25: $1a
    ld [c], a                                     ; $5c26: $e2
    dec e                                         ; $5c27: $1d
    and a                                         ; $5c28: $a7
    ld e, b                                       ; $5c29: $58

jr_09d_5c2a:
    and a                                         ; $5c2a: $a7
    ld bc, $6618                                  ; $5c2b: $01 $18 $66
    add hl, de                                    ; $5c2e: $19
    ld d, d                                       ; $5c2f: $52
    dec c                                         ; $5c30: $0d
    jr jr_09d_5c42                                ; $5c31: $18 $0f

    call z, Call_000_0001                         ; $5c33: $cc $01 $00
    xor l                                         ; $5c36: $ad
    and b                                         ; $5c37: $a0
    ld e, l                                       ; $5c38: $5d
    ld [$601d], a                                 ; $5c39: $ea $1d $60
    dec e                                         ; $5c3c: $1d
    xor d                                         ; $5c3d: $aa
    nop                                           ; $5c3e: $00
    ld e, l                                       ; $5c3f: $5d
    ld a, c                                       ; $5c40: $79
    ret                                           ; $5c41: $c9


jr_09d_5c42:
    ld c, c                                       ; $5c42: $49
    jp hl                                         ; $5c43: $e9


    ret                                           ; $5c44: $c9


    ld e, a                                       ; $5c45: $5f
    ld sp, hl                                     ; $5c46: $f9
    ld h, b                                       ; $5c47: $60
    ld c, a                                       ; $5c48: $4f
    ld [bc], a                                    ; $5c49: $02
    ld [$0ad4], sp                                ; $5c4a: $08 $d4 $0a
    rla                                           ; $5c4d: $17
    rst $30                                       ; $5c4e: $f7
    rst $30                                       ; $5c4f: $f7
    rla                                           ; $5c50: $17
    pop af                                        ; $5c51: $f1
    rra                                           ; $5c52: $1f
    rra                                           ; $5c53: $1f
    ld de, $02ff                                  ; $5c54: $11 $ff $02
    ld [$0ae4], sp                                ; $5c57: $08 $e4 $0a
    and [hl]                                      ; $5c5a: $a6
    ld [bc], a                                    ; $5c5b: $02
    ld [bc], a                                    ; $5c5c: $02
    nop                                           ; $5c5d: $00
    add h                                         ; $5c5e: $84
    ld a, [hl-]                                   ; $5c5f: $3a
    add b                                         ; $5c60: $80
    ret                                           ; $5c61: $c9


jr_09d_5c62:
    ld a, [bc]                                    ; $5c62: $0a
    pop hl                                        ; $5c63: $e1
    ld hl, $a121                                  ; $5c64: $21 $21 $a1
    ccf                                           ; $5c67: $3f
    ld a, a                                       ; $5c68: $7f
    pop hl                                        ; $5c69: $e1
    ld b, b                                       ; $5c6a: $40
    ld hl, $0802                                  ; $5c6b: $21 $02 $08
    rst $38                                       ; $5c6e: $ff
    rst $38                                       ; $5c6f: $ff
    rra                                           ; $5c70: $1f
    rst $38                                       ; $5c71: $ff
    rra                                           ; $5c72: $1f
    pop af                                        ; $5c73: $f1
    inc bc                                        ; $5c74: $03
    ld de, $115b                                  ; $5c75: $11 $5b $11
    or l                                          ; $5c78: $b5
    rra                                           ; $5c79: $1f
    pop af                                        ; $5c7a: $f1
    ld [bc], a                                    ; $5c7b: $02
    ld [$12d8], sp                                ; $5c7c: $08 $d8 $12
    ld c, [hl]                                    ; $5c7f: $4e
    ld [$2832], a                                 ; $5c80: $ea $32 $28
    ld [c], a                                     ; $5c83: $e2
    ld a, [hl+]                                   ; $5c84: $2a
    and b                                         ; $5c85: $a0
    ld b, b                                       ; $5c86: $40
    ld [hl], b                                    ; $5c87: $70
    ld [de], a                                    ; $5c88: $12
    ret z                                         ; $5c89: $c8

    ld a, [bc]                                    ; $5c8a: $0a
    ld [bc], a                                    ; $5c8b: $02
    ld h, h                                       ; $5c8c: $64
    ld a, [$39d0]                                 ; $5c8d: $fa $d0 $39
    ld l, b                                       ; $5c90: $68
    ld a, [de]                                    ; $5c91: $1a
    push af                                       ; $5c92: $f5
    ld a, [$0d1e]                                 ; $5c93: $fa $1e $0d
    or l                                          ; $5c96: $b5
    nop                                           ; $5c97: $00
    nop                                           ; $5c98: $00
    ld d, d                                       ; $5c99: $52
    xor l                                         ; $5c9a: $ad
    ld d, c                                       ; $5c9b: $51
    ld c, $18                                     ; $5c9c: $0e $18
    rrca                                          ; $5c9e: $0f
    or d                                          ; $5c9f: $b2
    dec c                                         ; $5ca0: $0d
    nop                                           ; $5ca1: $00
    ld e, b                                       ; $5ca2: $58
    xor a                                         ; $5ca3: $af
    and d                                         ; $5ca4: $a2
    ld e, h                                       ; $5ca5: $5c
    add sp, $1f                                   ; $5ca6: $e8 $1f
    ld h, e                                       ; $5ca8: $63
    inc e                                         ; $5ca9: $1c
    nop                                           ; $5caa: $00
    xor b                                         ; $5cab: $a8
    ld e, a                                       ; $5cac: $5f
    pop hl                                        ; $5cad: $e1
    ld e, $6a                                     ; $5cae: $1e $6a
    dec e                                         ; $5cb0: $1d
    ldh [$1f], a                                  ; $5cb1: $e0 $1f
    nop                                           ; $5cb3: $00
    rst $28                                       ; $5cb4: $ef
    rra                                           ; $5cb5: $1f
    and d                                         ; $5cb6: $a2
    dec e                                         ; $5cb7: $1d
    rst $20                                       ; $5cb8: $e7
    jr jr_09d_5c62                                ; $5cb9: $18 $a7

    jr jr_09d_5cbe                                ; $5cbb: $18 $01

    and [hl]                                      ; $5cbd: $a6

jr_09d_5cbe:
    ld e, c                                       ; $5cbe: $59

jr_09d_5cbf:
    add c                                         ; $5cbf: $81
    rst $38                                       ; $5cc0: $ff
    ret nz                                        ; $5cc1: $c0

    cp a                                          ; $5cc2: $bf
    add b                                         ; $5cc3: $80
    inc b                                         ; $5cc4: $04
    jr nz, jr_09d_5cbf                            ; $5cc5: $20 $f8

    ld c, e                                       ; $5cc7: $4b
    dec b                                         ; $5cc8: $05
    xor a                                         ; $5cc9: $af
    dec b                                         ; $5cca: $05
    ld e, d                                       ; $5ccb: $5a
    dec c                                         ; $5ccc: $0d
    ld h, d                                       ; $5ccd: $62
    dec h                                         ; $5cce: $25
    cp l                                          ; $5ccf: $bd
    dec b                                         ; $5cd0: $05
    ld [hl+], a                                   ; $5cd1: $22
    inc e                                         ; $5cd2: $1c
    sub l                                         ; $5cd3: $95
    nop                                           ; $5cd4: $00
    ld l, d                                       ; $5cd5: $6a
    ld c, d                                       ; $5cd6: $4a
    or b                                          ; $5cd7: $b0
    nop                                           ; $5cd8: $00
    rst $38                                       ; $5cd9: $ff
    and d                                         ; $5cda: $a2
    ld bc, $0050                                  ; $5cdb: $01 $50 $00
    xor a                                         ; $5cde: $af
    ld a, [hl+]                                   ; $5cdf: $2a

jr_09d_5ce0:
    push bc                                       ; $5ce0: $c5
    nop                                           ; $5ce1: $00
    rst $38                                       ; $5ce2: $ff
    and l                                         ; $5ce3: $a5
    ld e, b                                       ; $5ce4: $58
    ld d, [hl]                                    ; $5ce5: $56
    nop                                           ; $5ce6: $00
    cp b                                          ; $5ce7: $b8
    add h                                         ; $5ce8: $84
    ld a, e                                       ; $5ce9: $7b
    ld d, l                                       ; $5cea: $55
    cp b                                          ; $5ceb: $b8
    and [hl]                                      ; $5cec: $a6
    jr jr_09d_5d06                                ; $5ced: $18 $17

    nop                                           ; $5cef: $00
    ld hl, sp-$5a                                 ; $5cf0: $f8 $a6
    jr jr_09d_5d09                                ; $5cf2: $18 $15

    ld a, [$18e6]                                 ; $5cf4: $fa $e6 $18
    dec h                                         ; $5cf7: $25
    nop                                           ; $5cf8: $00
    jr jr_09d_5ce0                                ; $5cf9: $18 $e5

    ld a, [de]                                    ; $5cfb: $1a
    ld [$6a1f], a                                 ; $5cfc: $ea $1f $6a
    db $10                                        ; $5cff: $10
    ld l, c                                       ; $5d00: $69
    nop                                           ; $5d01: $00
    sub b                                         ; $5d02: $90
    ld l, e                                       ; $5d03: $6b
    db $10                                        ; $5d04: $10
    ld l, c                                       ; $5d05: $69

jr_09d_5d06:
    db $10                                        ; $5d06: $10
    cp [hl]                                       ; $5d07: $be
    nop                                           ; $5d08: $00

jr_09d_5d09:
    ld e, c                                       ; $5d09: $59
    add b                                         ; $5d0a: $80
    ldh [rNR43], a                                ; $5d0b: $e0 $22
    ld a, [de]                                    ; $5d0d: $1a
    dec c                                         ; $5d0e: $0d
    ld d, b                                       ; $5d0f: $50
    rrca                                          ; $5d10: $0f
    ld a, [de]                                    ; $5d11: $1a
    inc c                                         ; $5d12: $0c
    dec l                                         ; $5d13: $2d
    stop                                          ; $5d14: $10 $00
    sub l                                         ; $5d16: $95
    ld l, d                                       ; $5d17: $6a
    ld e, $0c                                     ; $5d18: $1e $0c
    xor l                                         ; $5d1a: $ad
    ld d, b                                       ; $5d1b: $50
    add sp, $10                                   ; $5d1c: $e8 $10
    nop                                           ; $5d1e: $00
    ld l, d                                       ; $5d1f: $6a
    db $10                                        ; $5d20: $10
    xor b                                         ; $5d21: $a8
    ld d, b                                       ; $5d22: $50
    ld b, a                                       ; $5d23: $47
    cp b                                          ; $5d24: $b8
    dec d                                         ; $5d25: $15
    ld hl, sp-$80                                 ; $5d26: $f8 $80
    or b                                          ; $5d28: $b0
    ld a, [bc]                                    ; $5d29: $0a
    ld d, d                                       ; $5d2a: $52
    dec c                                         ; $5d2b: $0d
    sub a                                         ; $5d2c: $97
    ld [$0856], sp                                ; $5d2d: $08 $56 $08
    sub l                                         ; $5d30: $95
    inc hl                                        ; $5d31: $23
    ld a, [bc]                                    ; $5d32: $0a
    db $eb                                        ; $5d33: $eb
    ld d, b                                       ; $5d34: $50

jr_09d_5d35:
    ld bc, $b04a                                  ; $5d35: $01 $4a $b0
    or l                                          ; $5d38: $b5
    or b                                          ; $5d39: $b0
    db $10                                        ; $5d3a: $10
    ld h, b                                       ; $5d3b: $60
    ld a, [bc]                                    ; $5d3c: $0a
    ld [bc], a                                    ; $5d3d: $02
    ld [de], a                                    ; $5d3e: $12
    dec c                                         ; $5d3f: $0d
    ld e, c                                       ; $5d40: $59
    ld c, $b0                                     ; $5d41: $0e $b0
    rrca                                          ; $5d43: $0f
    or b                                          ; $5d44: $b0
    ld [$00e9], sp                                ; $5d45: $08 $e9 $00
    ld e, $a2                                     ; $5d48: $1e $a2
    inc e                                         ; $5d4a: $1c
    add sp, $1f                                   ; $5d4b: $e8 $1f
    rst $38                                       ; $5d4d: $ff
    rst $38                                       ; $5d4e: $ff
    ld bc, $ff02                                  ; $5d4f: $01 $02 $ff
    add e                                         ; $5d52: $83
    ld a, a                                       ; $5d53: $7f
    ld bc, $03ff                                  ; $5d54: $01 $ff $03
    ld [$0300], sp                                ; $5d57: $08 $00 $03
    add b                                         ; $5d5a: $80
    inc a                                         ; $5d5b: $3c
    ld b, $d7                                     ; $5d5c: $06 $d7
    ld [$0896], sp                                ; $5d5e: $08 $96 $08
    rst $10                                       ; $5d61: $d7
    ld [$2097], sp                                ; $5d62: $08 $97 $20
    ld [$0455], sp                                ; $5d65: $08 $55 $04
    db $10                                        ; $5d68: $10
    sub l                                         ; $5d69: $95
    ld a, [bc]                                    ; $5d6a: $0a
    ld h, d                                       ; $5d6b: $62
    inc e                                         ; $5d6c: $1c
    xor c                                         ; $5d6d: $a9
    nop                                           ; $5d6e: $00
    ld e, $e0                                     ; $5d6f: $1e $e0
    rra                                           ; $5d71: $1f
    xor a                                         ; $5d72: $af
    rra                                           ; $5d73: $1f
    ld [$a910], a                                 ; $5d74: $ea $10 $a9
    jr z, jr_09d_5dc9                             ; $5d77: $28 $50

    xor d                                         ; $5d79: $aa
    add b                                         ; $5d7a: $80
    nop                                           ; $5d7b: $00
    ld d, [hl]                                    ; $5d7c: $56
    or b                                          ; $5d7d: $b0
    ld [hl+], a                                   ; $5d7e: $22
    ld [bc], a                                    ; $5d7f: $02
    db $fd                                        ; $5d80: $fd
    ld d, l                                       ; $5d81: $55
    inc b                                         ; $5d82: $04
    cp b                                          ; $5d83: $b8
    ld b, $b8                                     ; $5d84: $06 $b8
    ld d, l                                       ; $5d86: $55
    cp b                                          ; $5d87: $b8
    sub b                                         ; $5d88: $90
    jr z, jr_09d_5d35                             ; $5d89: $28 $aa

    ld d, l                                       ; $5d8b: $55
    ld bc, $00af                                  ; $5d8c: $01 $af $00
    ld e, l                                       ; $5d8f: $5d
    and b                                         ; $5d90: $a0
    or d                                          ; $5d91: $b2
    inc b                                         ; $5d92: $04
    xor e                                         ; $5d93: $ab
    and h                                         ; $5d94: $a4
    nop                                           ; $5d95: $00
    ld [$b04b], sp                                ; $5d96: $08 $4b $b0
    cp c                                          ; $5d99: $b9
    ldh a, [rP1]                                  ; $5d9a: $f0 $00
    ld a, [hl+]                                   ; $5d9c: $2a
    and a                                         ; $5d9d: $a7
    jr jr_09d_5e04                                ; $5d9e: $18 $64

    nop                                           ; $5da0: $00
    jr jr_09d_5dea                                ; $5da1: $18 $47

    cp b                                          ; $5da3: $b8
    or a                                          ; $5da4: $b7
    ld hl, sp+$05                                 ; $5da5: $f8 $05
    ld hl, sp-$6b                                 ; $5da7: $f8 $95
    nop                                           ; $5da9: $00
    ld a, d                                       ; $5daa: $7a
    ld b, l                                       ; $5dab: $45
    cp b                                          ; $5dac: $b8
    sub l                                         ; $5dad: $95
    ld a, b                                       ; $5dae: $78
    pop hl                                        ; $5daf: $e1
    ld e, $a8                                     ; $5db0: $1e $a8
    ld [$a01f], sp                                ; $5db2: $08 $1f $a0
    ld e, a                                       ; $5db5: $5f
    ld l, a                                       ; $5db6: $6f
    jr nz, jr_09d_5dba                            ; $5db7: $20 $01

    ld h, a                                       ; $5db9: $67

jr_09d_5dba:
    sbc b                                         ; $5dba: $98
    ld h, l                                       ; $5dbb: $65
    db $10                                        ; $5dbc: $10
    jr jr_09d_5e26                                ; $5dbd: $18 $67

    sbc b                                         ; $5dbf: $98
    ret nc                                        ; $5dc0: $d0

    ld [bc], a                                    ; $5dc1: $02
    cp b                                          ; $5dc2: $b8
    add l                                         ; $5dc3: $85
    ld a, [hl-]                                   ; $5dc4: $3a
    ld a, [de]                                    ; $5dc5: $1a
    nop                                           ; $5dc6: $00
    rst $38                                       ; $5dc7: $ff
    dec c                                         ; $5dc8: $0d

jr_09d_5dc9:
    jr nc, jr_09d_5de3                            ; $5dc9: $30 $18

    ldh a, [$8a]                                  ; $5dcb: $f0 $8a
    ld [hl], b                                    ; $5dcd: $70
    jr @+$0a                                      ; $5dce: $18 $08

    ldh a, [$a6]                                  ; $5dd0: $f0 $a6
    jr @+$67                                      ; $5dd2: $18 $65

    jr nc, jr_09d_5dd6                            ; $5dd4: $30 $00

jr_09d_5dd6:
    or l                                          ; $5dd6: $b5
    ld hl, sp+$57                                 ; $5dd7: $f8 $57
    and b                                         ; $5dd9: $a0
    cp h                                          ; $5dda: $bc
    nop                                           ; $5ddb: $00
    ld d, l                                       ; $5ddc: $55
    adc h                                         ; $5ddd: $8c
    nop                                           ; $5dde: $00
    jp z, $5830                                   ; $5ddf: $ca $30 $58

    or b                                          ; $5de2: $b0

jr_09d_5de3:
    ld [$f000], sp                                ; $5de3: $08 $00 $f0
    ld a, [$b8f0]                                 ; $5de6: $fa $f0 $b8
    nop                                           ; $5de9: $00

jr_09d_5dea:
    ld a, [de]                                    ; $5dea: $1a
    nop                                           ; $5deb: $00
    ld e, d                                       ; $5dec: $5a
    ld [$1800], sp                                ; $5ded: $08 $00 $18
    nop                                           ; $5df0: $00
    push de                                       ; $5df1: $d5
    and b                                         ; $5df2: $a0
    nop                                           ; $5df3: $00
    push de                                       ; $5df4: $d5
    ld a, [bc]                                    ; $5df5: $0a
    sbc d                                         ; $5df6: $9a
    ld [$500f], sp                                ; $5df7: $08 $0f $50
    rrca                                          ; $5dfa: $0f
    sbc b                                         ; $5dfb: $98
    inc b                                         ; $5dfc: $04
    db $10                                        ; $5dfd: $10
    ld a, l                                       ; $5dfe: $7d
    nop                                           ; $5dff: $00
    sbc d                                         ; $5e00: $9a
    add b                                         ; $5e01: $80
    ldh a, [rNR13]                                ; $5e02: $f0 $13

jr_09d_5e04:
    nop                                           ; $5e04: $00
    rst $38                                       ; $5e05: $ff
    add hl, de                                    ; $5e06: $19
    cp $00                                        ; $5e07: $fe $00
    cp $19                                        ; $5e09: $fe $19
    nop                                           ; $5e0b: $00
    cp $7f                                        ; $5e0c: $fe $7f
    nop                                           ; $5e0e: $00
    add b                                         ; $5e0f: $80
    nop                                           ; $5e10: $00
    cp a                                          ; $5e11: $bf
    ccf                                           ; $5e12: $3f
    or c                                          ; $5e13: $b1
    nop                                           ; $5e14: $00
    ccf                                           ; $5e15: $3f
    and [hl]                                      ; $5e16: $a6
    dec a                                         ; $5e17: $3d
    and b                                         ; $5e18: $a0
    cpl                                           ; $5e19: $2f
    or c                                          ; $5e1a: $b1

jr_09d_5e1b:
    scf                                           ; $5e1b: $37
    cp a                                          ; $5e1c: $bf
    ld b, b                                       ; $5e1d: $40
    ccf                                           ; $5e1e: $3f
    inc [hl]                                      ; $5e1f: $34
    ld [$001a], sp                                ; $5e20: $08 $1a $00
    ld d, l                                       ; $5e23: $55
    ld a, [bc]                                    ; $5e24: $0a
    db $10                                        ; $5e25: $10

jr_09d_5e26:
    rrca                                          ; $5e26: $0f
    ld d, b                                       ; $5e27: $50
    ld e, b                                       ; $5e28: $58
    inc [hl]                                      ; $5e29: $34
    nop                                           ; $5e2a: $00
    jr jr_09d_5e31                                ; $5e2b: $18 $04

    db $10                                        ; $5e2d: $10
    or b                                          ; $5e2e: $b0
    rrca                                          ; $5e2f: $0f
    ld e, a                                       ; $5e30: $5f

jr_09d_5e31:
    xor a                                         ; $5e31: $af
    ld [$f00a], sp                                ; $5e32: $08 $0a $f0
    add hl, de                                    ; $5e35: $19
    ldh a, [rDIV]                                 ; $5e36: $f0 $04
    ld [$fc02], sp                                ; $5e38: $08 $02 $fc
    add hl, de                                    ; $5e3b: $19
    nop                                           ; $5e3c: $00
    cp $02                                        ; $5e3d: $fe $02
    db $fc                                        ; $5e3f: $fc
    ld hl, sp-$02                                 ; $5e40: $f8 $fe
    or b                                          ; $5e42: $b0
    ld c, $19                                     ; $5e43: $0e $19
    dec b                                         ; $5e45: $05
    ld c, $50                                     ; $5e46: $0e $50
    rrca                                          ; $5e48: $0f
    add hl, de                                    ; $5e49: $19
    ld c, $3a                                     ; $5e4a: $0e $3a
    jr jr_09d_5e7f                                ; $5e4c: $18 $31

    ld a, [hl-]                                   ; $5e4e: $3a
    nop                                           ; $5e4f: $00
    ld b, [hl]                                    ; $5e50: $46
    ld sp, $0044                                  ; $5e51: $31 $44 $00
    ld h, b                                       ; $5e54: $60
    ld h, b                                       ; $5e55: $60
    rst $38                                       ; $5e56: $ff

jr_09d_5e57:
    ret nc                                        ; $5e57: $d0

    dec b                                         ; $5e58: $05
    ret nz                                        ; $5e59: $c0

    add hl, hl                                    ; $5e5a: $29
    add b                                         ; $5e5b: $80
    pop bc                                        ; $5e5c: $c1
    ld e, h                                       ; $5e5d: $5c
    rlca                                          ; $5e5e: $07
    nop                                           ; $5e5f: $00
    daa                                           ; $5e60: $27
    ld a, a                                       ; $5e61: $7f
    ccf                                           ; $5e62: $3f
    ld a, a                                       ; $5e63: $7f
    cpl                                           ; $5e64: $2f
    ld [hl], b                                    ; $5e65: $70
    call c, $820c                                 ; $5e66: $dc $0c $82
    db $10                                        ; $5e69: $10
    daa                                           ; $5e6a: $27
    rst $38                                       ; $5e6b: $ff
    rst $28                                       ; $5e6c: $ef
    rst $38                                       ; $5e6d: $ff
    db $eb                                        ; $5e6e: $eb
    inc a                                         ; $5e6f: $3c
    call c, $830c                                 ; $5e70: $dc $0c $83
    ld d, $ff                                     ; $5e73: $16 $ff
    ld b, c                                       ; $5e75: $41
    cp a                                          ; $5e76: $bf
    ld d, b                                       ; $5e77: $50
    add hl, hl                                    ; $5e78: $29
    xor e                                         ; $5e79: $ab
    sbc l                                         ; $5e7a: $9d
    rlca                                          ; $5e7b: $07
    inc h                                         ; $5e7c: $24
    add hl, bc                                    ; $5e7d: $09
    rlca                                          ; $5e7e: $07

jr_09d_5e7f:
    inc b                                         ; $5e7f: $04
    ld hl, sp+$57                                 ; $5e80: $f8 $57
    cp b                                          ; $5e82: $b8
    add l                                         ; $5e83: $85
    ld a, b                                       ; $5e84: $78
    jr nc, jr_09d_5e90                            ; $5e85: $30 $09

    push de                                       ; $5e87: $d5
    jr c, jr_09d_5e8a                             ; $5e88: $38 $00

jr_09d_5e8a:
    ld a, [hl+]                                   ; $5e8a: $2a
    sub b                                         ; $5e8b: $90
    add sp, $10                                   ; $5e8c: $e8 $10
    dec l                                         ; $5e8e: $2d
    sub b                                         ; $5e8f: $90

jr_09d_5e90:
    ld [$1215], a                                 ; $5e90: $ea $15 $12

jr_09d_5e93:
    ld h, d                                       ; $5e93: $62
    sbc l                                         ; $5e94: $9d
    and a                                         ; $5e95: $a7
    ret nz                                        ; $5e96: $c0

    inc bc                                        ; $5e97: $03
    rst $20                                       ; $5e98: $e7
    jr jr_09d_5e1b                                ; $5e99: $18 $80

    ld e, $02                                     ; $5e9b: $1e $02
    ld b, $fe                                     ; $5e9d: $06 $fe
    ld a, [$fafe]                                 ; $5e9f: $fa $fe $fa
    ld c, $ac                                     ; $5ea2: $0e $ac
    inc c                                         ; $5ea4: $0c
    and h                                         ; $5ea5: $a4
    jr jr_09d_5e57                                ; $5ea6: $18 $af

    nop                                           ; $5ea8: $00
    ld e, a                                       ; $5ea9: $5f
    xor d                                         ; $5eaa: $aa
    ld d, l                                       ; $5eab: $55
    push af                                       ; $5eac: $f5
    nop                                           ; $5ead: $00
    cp d                                          ; $5eae: $ba
    dec b                                         ; $5eaf: $05
    ld c, l                                       ; $5eb0: $4d
    nop                                           ; $5eb1: $00
    jr nz, jr_09d_5ec2                            ; $5eb2: $20 $0e

    ld a, a                                       ; $5eb4: $7f
    adc c                                         ; $5eb5: $89
    ld sp, hl                                     ; $5eb6: $f9
    ld [$897a], sp                                ; $5eb7: $08 $7a $89

jr_09d_5eba:
    nop                                           ; $5eba: $00
    ld a, [$7908]                                 ; $5ebb: $fa $08 $79
    add h                                         ; $5ebe: $84
    db $f4                                        ; $5ebf: $f4
    inc b                                         ; $5ec0: $04
    ld a, h                                       ; $5ec1: $7c

jr_09d_5ec2:
    add d                                         ; $5ec2: $82
    ld c, b                                       ; $5ec3: $48
    cp $b0                                        ; $5ec4: $fe $b0
    rrca                                          ; $5ec6: $0f
    add b                                         ; $5ec7: $80
    rst $38                                       ; $5ec8: $ff
    ld c, [hl]                                    ; $5ec9: $4e
    inc bc                                        ; $5eca: $03
    rst $38                                       ; $5ecb: $ff
    ret nz                                        ; $5ecc: $c0

    ld e, a                                       ; $5ecd: $5f
    ld [$bf20], sp                                ; $5ece: $08 $20 $bf
    jr nz, jr_09d_5f52                            ; $5ed1: $20 $7f

    ret nz                                        ; $5ed3: $c0

    rrca                                          ; $5ed4: $0f
    rra                                           ; $5ed5: $1f
    ldh [rNR23], a                                ; $5ed6: $e0 $18
    jr nz, jr_09d_5eba                            ; $5ed8: $20 $e0

    rra                                           ; $5eda: $1f
    ld [bc], a                                    ; $5edb: $02
    nop                                           ; $5edc: $00
    ld e, $e0                                     ; $5edd: $1e $e0
    rrca                                          ; $5edf: $0f
    ldh a, [rSB]                                  ; $5ee0: $f0 $01
    and b                                         ; $5ee2: $a0
    ld d, l                                       ; $5ee3: $55
    ld b, $00                                     ; $5ee4: $06 $00
    inc b                                         ; $5ee6: $04
    jr nc, jr_09d_5e93                            ; $5ee7: $30 $aa

    push de                                       ; $5ee9: $d5
    jr nz, jr_09d_5f2b                            ; $5eea: $20 $3f

    ldh [rP1], a                                  ; $5eec: $e0 $00
    rst $38                                       ; $5eee: $ff
    ld [hl], b                                    ; $5eef: $70
    rst $38                                       ; $5ef0: $ff
    xor b                                         ; $5ef1: $a8
    cp a                                          ; $5ef2: $bf
    adc b                                         ; $5ef3: $88
    adc a                                         ; $5ef4: $8f
    ld hl, sp+$00                                 ; $5ef5: $f8 $00
    rst $38                                       ; $5ef7: $ff
    ld [hl], b                                    ; $5ef8: $70
    ld [hl], a                                    ; $5ef9: $77
    xor d                                         ; $5efa: $aa
    ld d, l                                       ; $5efb: $55
    dec bc                                        ; $5efc: $0b
    ldh a, [rIF]                                  ; $5efd: $f0 $0f
    and [hl]                                      ; $5eff: $a6
    ld [bc], a                                    ; $5f00: $02
    nop                                           ; $5f01: $00
    dec c                                         ; $5f02: $0d
    ld b, $00                                     ; $5f03: $06 $00
    rlca                                          ; $5f05: $07
    rst $30                                       ; $5f06: $f7
    db $e4                                        ; $5f07: $e4
    rrca                                          ; $5f08: $0f
    ld b, c                                       ; $5f09: $41
    nop                                           ; $5f0a: $00
    rst $38                                       ; $5f0b: $ff
    ld c, $40                                     ; $5f0c: $0e $40
    ld b, b                                       ; $5f0e: $40
    ld b, b                                       ; $5f0f: $40
    ld d, l                                       ; $5f10: $55
    and b                                         ; $5f11: $a0
    inc bc                                        ; $5f12: $03
    ld [bc], a                                    ; $5f13: $02
    db $10                                        ; $5f14: $10
    db $f4                                        ; $5f15: $f4
    rla                                           ; $5f16: $17
    nop                                           ; $5f17: $00
    ldh a, [$d2]                                  ; $5f18: $f0 $d2
    ld [$1aa4], sp                                ; $5f1a: $08 $a4 $1a
    jr jr_09d_5f2f                                ; $5f1d: $18 $10

    ret nz                                        ; $5f1f: $c0

    dec bc                                        ; $5f20: $0b
    ld d, l                                       ; $5f21: $55
    ld b, b                                       ; $5f22: $40
    ld b, b                                       ; $5f23: $40
    add b                                         ; $5f24: $80
    ld l, b                                       ; $5f25: $68
    cp a                                          ; $5f26: $bf
    cp [hl]                                       ; $5f27: $be
    ld a, [bc]                                    ; $5f28: $0a
    ret nz                                        ; $5f29: $c0

    inc hl                                        ; $5f2a: $23

jr_09d_5f2b:
    ld d, l                                       ; $5f2b: $55
    ld d, d                                       ; $5f2c: $52
    ld e, $00                                     ; $5f2d: $1e $00

jr_09d_5f2f:
    rst $38                                       ; $5f2f: $ff
    ld hl, sp+$00                                 ; $5f30: $f8 $00
    rlca                                          ; $5f32: $07
    ld hl, sp+$07                                 ; $5f33: $f8 $07
    ret z                                         ; $5f35: $c8

    rlca                                          ; $5f36: $07
    cp b                                          ; $5f37: $b8
    rlca                                          ; $5f38: $07
    ld a, b                                       ; $5f39: $78
    inc b                                         ; $5f3a: $04
    rlca                                          ; $5f3b: $07
    jr z, jr_09d_5f45                             ; $5f3c: $28 $07

    db $fc                                        ; $5f3e: $fc
    inc bc                                        ; $5f3f: $03
    sbc $0b                                       ; $5f40: $de $0b
    ld a, a                                       ; $5f42: $7f
    add b                                         ; $5f43: $80
    inc b                                         ; $5f44: $04

jr_09d_5f45:
    ld a, a                                       ; $5f45: $7f
    add b                                         ; $5f46: $80
    ld a, h                                       ; $5f47: $7c
    add b                                         ; $5f48: $80
    ld h, e                                       ; $5f49: $63
    ld b, $00                                     ; $5f4a: $06 $00
    ld a, l                                       ; $5f4c: $7d
    add b                                         ; $5f4d: $80
    nop                                           ; $5f4e: $00
    ld [bc], a                                    ; $5f4f: $02
    db $fc                                        ; $5f50: $fc
    inc bc                                        ; $5f51: $03

jr_09d_5f52:
    db $fd                                        ; $5f52: $fd
    ld [c], a                                     ; $5f53: $e2
    inc e                                         ; $5f54: $1c
    db $e3                                        ; $5f55: $e3
    dec e                                         ; $5f56: $1d
    inc b                                         ; $5f57: $04
    ld [hl+], a                                   ; $5f58: $22
    inc e                                         ; $5f59: $1c
    ld h, e                                       ; $5f5a: $63
    dec e                                         ; $5f5b: $1d
    ld [c], a                                     ; $5f5c: $e2
    inc b                                         ; $5f5d: $04
    nop                                           ; $5f5e: $00
    cp h                                          ; $5f5f: $bc
    inc bc                                        ; $5f60: $03
    nop                                           ; $5f61: $00

jr_09d_5f62:
    ld l, h                                       ; $5f62: $6c
    inc bc                                        ; $5f63: $03
    call z, $fc03                                 ; $5f64: $cc $03 $fc
    inc bc                                        ; $5f67: $03
    cp b                                          ; $5f68: $b8
    dec sp                                        ; $5f69: $3b
    ld b, h                                       ; $5f6a: $44
    nop                                           ; $5f6b: $00
    cp h                                          ; $5f6c: $bc
    nop                                           ; $5f6d: $00
    xor d                                         ; $5f6e: $aa
    ld d, l                                       ; $5f6f: $55
    ld h, [hl]                                    ; $5f70: $66
    inc l                                         ; $5f71: $2c
    nop                                           ; $5f72: $00
    ld a, [hl]                                    ; $5f73: $7e
    add b                                         ; $5f74: $80
    ld c, e                                       ; $5f75: $4b
    ld l, e                                       ; $5f76: $6b
    ld [hl-], a                                   ; $5f77: $32
    nop                                           ; $5f78: $00
    ccf                                           ; $5f79: $3f
    cp a                                          ; $5f7a: $bf
    ld a, [de]                                    ; $5f7b: $1a
    dec bc                                        ; $5f7c: $0b
    ld h, d                                       ; $5f7d: $62
    inc l                                         ; $5f7e: $2c
    nop                                           ; $5f7f: $00
    jr z, @+$0a                                   ; $5f80: $28 $08

    inc bc                                        ; $5f82: $03
    ld [c], a                                     ; $5f83: $e2
    inc e                                         ; $5f84: $1c
    jp $02dd                                      ; $5f85: $c3 $dd $02


    db $fc                                        ; $5f88: $fc
    call nc, $fb07                                ; $5f89: $d4 $07 $fb
    ld b, $38                                     ; $5f8c: $06 $38
    ld [bc], a                                    ; $5f8e: $02
    ld [bc], a                                    ; $5f8f: $02
    ld [hl+], a                                   ; $5f90: $22
    add hl, bc                                    ; $5f91: $09
    ld [bc], a                                    ; $5f92: $02
    ld b, b                                       ; $5f93: $40
    sub b                                         ; $5f94: $90
    dec bc                                        ; $5f95: $0b
    ld d, [hl]                                    ; $5f96: $56
    ld [bc], a                                    ; $5f97: $02
    ld [bc], a                                    ; $5f98: $02
    nop                                           ; $5f99: $00
    ld bc, $fffd                                  ; $5f9a: $01 $fd $ff
    rst $38                                       ; $5f9d: $ff
    ld a, [hl]                                    ; $5f9e: $7e
    add b                                         ; $5f9f: $80
    jr z, jr_09d_5f62                             ; $5fa0: $28 $c0

    inc b                                         ; $5fa2: $04
    ld a, d                                       ; $5fa3: $7a
    add b                                         ; $5fa4: $80
    dec [hl]                                      ; $5fa5: $35
    ret nz                                        ; $5fa6: $c0

    ld l, a                                       ; $5fa7: $6f
    ld b, [hl]                                    ; $5fa8: $46
    nop                                           ; $5fa9: $00
    ld l, [hl]                                    ; $5faa: $6e
    add b                                         ; $5fab: $80
    nop                                           ; $5fac: $00
    ld d, h                                       ; $5fad: $54
    add b                                         ; $5fae: $80
    ld a, a                                       ; $5faf: $7f
    nop                                           ; $5fb0: $00
    ld a, l                                       ; $5fb1: $7d
    nop                                           ; $5fb2: $00
    ei                                            ; $5fb3: $fb
    nop                                           ; $5fb4: $00
    nop                                           ; $5fb5: $00
    sub c                                         ; $5fb6: $91
    nop                                           ; $5fb7: $00
    adc e                                         ; $5fb8: $8b
    nop                                           ; $5fb9: $00
    add $01                                       ; $5fba: $c6 $01
    ld e, a                                       ; $5fbc: $5f
    nop                                           ; $5fbd: $00
    db $10                                        ; $5fbe: $10
    sbc $01                                       ; $5fbf: $de $01
    ld l, c                                       ; $5fc1: $69
    adc d                                         ; $5fc2: $8a
    nop                                           ; $5fc3: $00
    ld l, [hl]                                    ; $5fc4: $6e
    add b                                         ; $5fc5: $80
    ld c, h                                       ; $5fc6: $4c
    add b                                         ; $5fc7: $80
    nop                                           ; $5fc8: $00
    ld h, b                                       ; $5fc9: $60
    add b                                         ; $5fca: $80
    ld e, d                                       ; $5fcb: $5a
    add b                                         ; $5fcc: $80
    ld l, h                                       ; $5fcd: $6c
    add b                                         ; $5fce: $80
    ld e, l                                       ; $5fcf: $5d
    add b                                         ; $5fd0: $80
    nop                                           ; $5fd1: $00
    dec de                                        ; $5fd2: $1b
    nop                                           ; $5fd3: $00
    halt                                          ; $5fd4: $76
    ld bc, $01f2                                  ; $5fd5: $01 $f2 $01
    add $01                                       ; $5fd8: $c6 $01
    nop                                           ; $5fda: $00
    ld e, [hl]                                    ; $5fdb: $5e
    ld bc, $0136                                  ; $5fdc: $01 $36 $01
    or d                                          ; $5fdf: $b2
    ld bc, $015a                                  ; $5fe0: $01 $5a $01
    nop                                           ; $5fe3: $00
    ld l, b                                       ; $5fe4: $68
    add b                                         ; $5fe5: $80
    ld e, c                                       ; $5fe6: $59
    add b                                         ; $5fe7: $80
    ld b, e                                       ; $5fe8: $43
    add b                                         ; $5fe9: $80
    ld b, [hl]                                    ; $5fea: $46
    add b                                         ; $5feb: $80
    nop                                           ; $5fec: $00
    ld l, l                                       ; $5fed: $6d
    add b                                         ; $5fee: $80
    ld h, [hl]                                    ; $5fef: $66
    add b                                         ; $5ff0: $80
    ld c, l                                       ; $5ff1: $4d
    add b                                         ; $5ff2: $80
    ld h, h                                       ; $5ff3: $64
    add b                                         ; $5ff4: $80
    db $10                                        ; $5ff5: $10
    ld a, [c]                                     ; $5ff6: $f2
    ld bc, $1cb6                                  ; $5ff7: $01 $b6 $1c
    nop                                           ; $5ffa: $00
    or h                                          ; $5ffb: $b4
    inc bc                                        ; $5ffc: $03
    ld e, $01                                     ; $5ffd: $1e $01
    nop                                           ; $5fff: $00
    db $e4                                        ; $6000: $e4
    inc bc                                        ; $6001: $03
    ld [hl], $01                                  ; $6002: $36 $01
    ld d, h                                       ; $6004: $54
    inc bc                                        ; $6005: $03
    dec bc                                        ; $6006: $0b
    nop                                           ; $6007: $00
    nop                                           ; $6008: $00
    add l                                         ; $6009: $85
    nop                                           ; $600a: $00
    ld h, e                                       ; $600b: $63
    nop                                           ; $600c: $00
    ret nz                                        ; $600d: $c0

    nop                                           ; $600e: $00
    dec bc                                        ; $600f: $0b
    nop                                           ; $6010: $00
    ld b, b                                       ; $6011: $40
    ld l, $26                                     ; $6012: $2e $26
    ld b, $81                                     ; $6014: $06 $81
    ld a, [hl]                                    ; $6016: $7e
    db $dd                                        ; $6017: $dd
    db $e3                                        ; $6018: $e3
    or [hl]                                       ; $6019: $b6
    pop bc                                        ; $601a: $c1
    nop                                           ; $601b: $00
    ld b, h                                       ; $601c: $44
    add e                                         ; $601d: $83
    ld b, $81                                     ; $601e: $06 $81
    adc h                                         ; $6020: $8c
    inc bc                                        ; $6021: $03
    ld e, [hl]                                    ; $6022: $5e
    and c                                         ; $6023: $a1
    ld bc, $c729                                  ; $6024: $01 $29 $c7
    ld d, h                                       ; $6027: $54
    add e                                         ; $6028: $83
    rst $10                                       ; $6029: $d7
    nop                                           ; $602a: $00
    db $e3                                        ; $602b: $e3
    ld [hl], d                                    ; $602c: $72
    ld [bc], a                                    ; $602d: $02
    nop                                           ; $602e: $00
    add sp, $00                                   ; $602f: $e8 $00
    ld [hl], l                                    ; $6031: $75
    add b                                         ; $6032: $80
    cp e                                          ; $6033: $bb
    nop                                           ; $6034: $00
    ld e, $80                                     ; $6035: $1e $80
    ld h, b                                       ; $6037: $60
    or h                                          ; $6038: $b4
    jr z, jr_09d_603b                             ; $6039: $28 $00

jr_09d_603b:
    jr nc, @+$4a                                  ; $603b: $30 $48

    cp e                                          ; $603d: $bb
    nop                                           ; $603e: $00
    ld l, $c1                                     ; $603f: $2e $c1
    ret nc                                        ; $6041: $d0

    nop                                           ; $6042: $00
    and e                                         ; $6043: $a3
    ld a, [hl-]                                   ; $6044: $3a
    pop bc                                        ; $6045: $c1
    push hl                                       ; $6046: $e5
    add e                                         ; $6047: $83
    ld c, a                                       ; $6048: $4f
    add e                                         ; $6049: $83
    jr c, jr_09d_604c                             ; $604a: $38 $00

jr_09d_604c:
    rst $00                                       ; $604c: $c7
    ld c, [hl]                                    ; $604d: $4e
    and c                                         ; $604e: $a1
    and c                                         ; $604f: $a1
    jp $800b                                      ; $6050: $c3 $0b $80


    dec b                                         ; $6053: $05
    add d                                         ; $6054: $82
    ld a, [de]                                    ; $6055: $1a
    ld bc, $8040                                  ; $6056: $01 $40 $80
    dec bc                                        ; $6059: $0b
    add b                                         ; $605a: $80
    ld l, $8e                                     ; $605b: $2e $8e
    nop                                           ; $605d: $00
    dec sp                                        ; $605e: $3b
    nop                                           ; $605f: $00
    add b                                         ; $6060: $80
    ld [hl], $c1                                  ; $6061: $36 $c1
    ld a, c                                       ; $6063: $79
    add e                                         ; $6064: $83
    ld l, e                                       ; $6065: $6b
    add a                                         ; $6066: $87
    dec e                                         ; $6067: $1d
    nop                                           ; $6068: $00
    jp $8166                                      ; $6069: $c3 $66 $81


    sub b                                         ; $606c: $90
    db $e3                                        ; $606d: $e3
    cp d                                          ; $606e: $ba
    pop bc                                        ; $606f: $c1
    ld l, h                                       ; $6070: $6c
    nop                                           ; $6071: $00
    add e                                         ; $6072: $83
    rrca                                          ; $6073: $0f
    add b                                         ; $6074: $80
    ld c, a                                       ; $6075: $4f
    add b                                         ; $6076: $80
    ld h, $80                                     ; $6077: $26 $80
    ld d, l                                       ; $6079: $55
    nop                                           ; $607a: $00
    add b                                         ; $607b: $80
    ld a, c                                       ; $607c: $79
    add b                                         ; $607d: $80
    di                                            ; $607e: $f3
    add b                                         ; $607f: $80
    ld d, a                                       ; $6080: $57
    add b                                         ; $6081: $80
    db $e3                                        ; $6082: $e3
    ld [$f680], sp                                ; $6083: $08 $80 $f6
    nop                                           ; $6086: $00
    rst $18                                       ; $6087: $df
    jp nc, $fd06                                  ; $6088: $d2 $06 $fd

    ld [bc], a                                    ; $608b: $02
    xor b                                         ; $608c: $a8
    nop                                           ; $608d: $00
    ld d, a                                       ; $608e: $57
    dec d                                         ; $608f: $15
    db $eb                                        ; $6090: $eb
    and c                                         ; $6091: $a1
    rst $38                                       ; $6092: $ff
    ld d, a                                       ; $6093: $57
    rst $38                                       ; $6094: $ff
    ld [hl], a                                    ; $6095: $77
    nop                                           ; $6096: $00
    ld bc, $031c                                  ; $6097: $01 $1c $03
    ld e, l                                       ; $609a: $5d
    inc bc                                        ; $609b: $03
    db $f4                                        ; $609c: $f4
    inc bc                                        ; $609d: $03
    cp c                                          ; $609e: $b9
    inc c                                         ; $609f: $0c
    ld b, a                                       ; $60a0: $47
    ld d, l                                       ; $60a1: $55
    xor e                                         ; $60a2: $ab
    add e                                         ; $60a3: $83
    halt                                          ; $60a4: $76
    ld [bc], a                                    ; $60a5: $02
    db $f4                                        ; $60a6: $f4
    inc bc                                        ; $60a7: $03
    db $10                                        ; $60a8: $10
    db $ed                                        ; $60a9: $ed
    inc c                                         ; $60aa: $0c
    db $10                                        ; $60ab: $10
    ld [$aa15], a                                 ; $60ac: $ea $15 $aa

jr_09d_60af:
    jr c, jr_09d_60b6                             ; $60af: $38 $05

    inc a                                         ; $60b1: $3c
    dec c                                         ; $60b2: $0d
    ld e, d                                       ; $60b3: $5a
    nop                                           ; $60b4: $00
    ld b, c                                       ; $60b5: $41

jr_09d_60b6:
    add hl, de                                    ; $60b6: $19
    jr z, jr_09d_60bc                             ; $60b7: $28 $03

    and l                                         ; $60b9: $a5
    ld e, d                                       ; $60ba: $5a
    or d                                          ; $60bb: $b2

jr_09d_60bc:
    dec c                                         ; $60bc: $0d
    ld d, a                                       ; $60bd: $57
    ld e, d                                       ; $60be: $5a
    ld b, $2f                                     ; $60bf: $06 $2f
    ld d, a                                       ; $60c1: $57
    ld [$1d40], sp                                ; $60c2: $08 $40 $1d
    ld e, a                                       ; $60c5: $5f
    ld h, b                                       ; $60c6: $60
    ld b, $50                                     ; $60c7: $06 $50
    ld a, [de]                                    ; $60c9: $1a
    ld c, b                                       ; $60ca: $48
    inc b                                         ; $60cb: $04
    db $10                                        ; $60cc: $10
    inc d                                         ; $60cd: $14
    and b                                         ; $60ce: $a0
    jr nz, @+$09                                  ; $60cf: $20 $07

    dec c                                         ; $60d1: $0d
    inc d                                         ; $60d2: $14
    dec bc                                        ; $60d3: $0b
    ld d, h                                       ; $60d4: $54
    add hl, bc                                    ; $60d5: $09
    rla                                           ; $60d6: $17
    ld [$00b4], sp                                ; $60d7: $08 $b4 $00
    add hl, bc                                    ; $60da: $09
    ld d, a                                       ; $60db: $57
    xor b                                         ; $60dc: $a8
    ld b, $f9                                     ; $60dd: $06 $f9
    sub l                                         ; $60df: $95
    ld a, b                                       ; $60e0: $78
    rlca                                          ; $60e1: $07
    nop                                           ; $60e2: $00
    ld a, b                                       ; $60e3: $78
    sub a                                         ; $60e4: $97
    ld a, b                                       ; $60e5: $78
    jr jr_09d_60af                                ; $60e6: $18 $c7

    ld l, l                                       ; $60e8: $6d
    add e                                         ; $60e9: $83
    or [hl]                                       ; $60ea: $b6
    nop                                           ; $60eb: $00
    pop bc                                        ; $60ec: $c1
    ld sp, $aac3                                  ; $60ed: $31 $c3 $aa
    pop bc                                        ; $60f0: $c1
    dec [hl]                                      ; $60f1: $35
    jp Jump_000_006e                              ; $60f2: $c3 $6e $00


    add c                                         ; $60f5: $81
    ld a, [bc]                                    ; $60f6: $0a
    rst $00                                       ; $60f7: $c7
    ld d, a                                       ; $60f8: $57
    add b                                         ; $60f9: $80
    and e                                         ; $60fa: $a3
    ret nz                                        ; $60fb: $c0

    ld a, h                                       ; $60fc: $7c
    nop                                           ; $60fd: $00
    add b                                         ; $60fe: $80
    cp d                                          ; $60ff: $ba
    ret nz                                        ; $6100: $c0

    xor l                                         ; $6101: $ad
    ret nc                                        ; $6102: $d0

    call nc, $e8eb                                ; $6103: $d4 $eb $e8
    nop                                           ; $6106: $00
    rst $38                                       ; $6107: $ff
    rst $30                                       ; $6108: $f7
    rst $38                                       ; $6109: $ff
    cp [hl]                                       ; $610a: $be
    pop bc                                        ; $610b: $c1
    ld b, l                                       ; $610c: $45
    add d                                         ; $610d: $82
    add d                                         ; $610e: $82
    nop                                           ; $610f: $00
    add h                                         ; $6110: $84
    ld b, $84                                     ; $6111: $06 $84
    adc d                                         ; $6113: $8a
    add h                                         ; $6114: $84
    dec c                                         ; $6115: $0d
    add [hl]                                      ; $6116: $86
    adc [hl]                                      ; $6117: $8e
    inc e                                         ; $6118: $1c
    add e                                         ; $6119: $83
    xor c                                         ; $611a: $a9
    rst $10                                       ; $611b: $d7
    jp $c71d                                      ; $611c: $c3 $1d $c7


    dec e                                         ; $611f: $1d
    xor b                                         ; $6120: $a8
    ld c, $7d                                     ; $6121: $0e $7d
    add e                                         ; $6123: $83
    nop                                           ; $6124: $00
    xor [hl]                                      ; $6125: $ae
    pop bc                                        ; $6126: $c1
    ld hl, sp-$3d                                 ; $6127: $f8 $c3
    ld a, [de]                                    ; $6129: $1a
    pop hl                                        ; $612a: $e1
    ld a, b                                       ; $612b: $78
    add e                                         ; $612c: $83
    nop                                           ; $612d: $00
    ld [bc], a                                    ; $612e: $02
    pop bc                                        ; $612f: $c1
    ld h, h                                       ; $6130: $64
    sbc e                                         ; $6131: $9b
    db $ed                                        ; $6132: $ed
    rst $38                                       ; $6133: $ff
    pop af                                        ; $6134: $f1
    cp $00                                        ; $6135: $fe $00
    xor h                                         ; $6137: $ac
    rst $38                                       ; $6138: $ff
    pop de                                        ; $6139: $d1
    cp $83                                        ; $613a: $fe $83
    db $fc                                        ; $613c: $fc
    call nz, $00fa                                ; $613d: $c4 $fa $00
    sub e                                         ; $6140: $93
    db $ec                                        ; $6141: $ec
    jp nz, $99fc                                  ; $6142: $c2 $fc $99

    xor $07                                       ; $6145: $ee $07
    rst $38                                       ; $6147: $ff
    nop                                           ; $6148: $00
    sub e                                         ; $6149: $93
    ld l, a                                       ; $614a: $6f
    dec de                                        ; $614b: $1b
    rst $20                                       ; $614c: $e7
    sbc e                                         ; $614d: $9b
    ld h, a                                       ; $614e: $67
    ld de, $00e7                                  ; $614f: $11 $e7 $00
    sbc c                                         ; $6152: $99
    ld h, a                                       ; $6153: $67
    dec [hl]                                      ; $6154: $35
    db $e3                                        ; $6155: $e3
    cp c                                          ; $6156: $b9
    ld h, a                                       ; $6157: $67
    rst $10                                       ; $6158: $d7
    rst $38                                       ; $6159: $ff
    inc d                                         ; $615a: $14
    db $d3                                        ; $615b: $d3
    rst $28                                       ; $615c: $ef
    add e                                         ; $615d: $83
    inc b                                         ; $615e: $04
    nop                                           ; $615f: $00
    add c                                         ; $6160: $81
    ld [$9500], sp                                ; $6161: $08 $00 $95
    db $eb                                        ; $6164: $eb
    ld bc, $efd3                                  ; $6165: $01 $d3 $ef
    sub d                                         ; $6168: $92
    db $ec                                        ; $6169: $ec
    sbc c                                         ; $616a: $99
    xor $82                                       ; $616b: $ee $82
    inc b                                         ; $616d: $04
    nop                                           ; $616e: $00
    inc b                                         ; $616f: $04
    xor h                                         ; $6170: $ac
    adc $b9                                       ; $6171: $ce $b9
    adc $2d                                       ; $6173: $ce $2d
    inc b                                         ; $6175: $04
    nop                                           ; $6176: $00
    dec [hl]                                      ; $6177: $35
    db $e3                                        ; $6178: $e3
    ld bc, $e771                                  ; $6179: $01 $71 $e7
    dec [hl]                                      ; $617c: $35
    db $e3                                        ; $617d: $e3
    ld h, c                                       ; $617e: $61
    rst $30                                       ; $617f: $f7
    inc a                                         ; $6180: $3c
    inc b                                         ; $6181: $04
    nop                                           ; $6182: $00
    nop                                           ; $6183: $00
    dec a                                         ; $6184: $3d
    db $e3                                        ; $6185: $e3
    ld l, b                                       ; $6186: $68
    rst $30                                       ; $6187: $f7
    and c                                         ; $6188: $a1
    rst $08                                       ; $6189: $cf
    rst $10                                       ; $618a: $d7
    db $eb                                        ; $618b: $eb
    ld [bc], a                                    ; $618c: $02
    and c                                         ; $618d: $a1
    rst $08                                       ; $618e: $cf
    db $d3                                        ; $618f: $d3
    rst $28                                       ; $6190: $ef
    and l                                         ; $6191: $a5
    rlc h                                         ; $6192: $cb $04
    ld [$00b9], sp                                ; $6194: $08 $b9 $00
    rst $00                                       ; $6197: $c7
    inc d                                         ; $6198: $14
    rst $28                                       ; $6199: $ef
    and c                                         ; $619a: $a1
    sbc $10                                       ; $619b: $de $10
    rst $28                                       ; $619d: $ef
    and l                                         ; $619e: $a5

jr_09d_619f:
    jr nz, jr_09d_619f                            ; $619f: $20 $fe

    ld [$0066], sp                                ; $61a1: $08 $66 $00
    db $e4                                        ; $61a4: $e4

jr_09d_61a5:
    rst $38                                       ; $61a5: $ff
    push de                                       ; $61a6: $d5
    rst $38                                       ; $61a7: $ff
    add hl, sp                                    ; $61a8: $39
    ld bc, $28e7                                  ; $61a9: $01 $e7 $28
    rst $30                                       ; $61ac: $f7
    xor c                                         ; $61ad: $a9
    ld [hl], a                                    ; $61ae: $77
    jr nc, @+$01                                  ; $61af: $30 $ff

    inc b                                         ; $61b1: $04
    ld [$b910], sp                                ; $61b2: $08 $10 $b9
    ld [hl], a                                    ; $61b5: $77
    ld [hl], l                                    ; $61b6: $75
    sub b                                         ; $61b7: $90
    nop                                           ; $61b8: $00
    and d                                         ; $61b9: $a2
    ld b, c                                       ; $61ba: $41
    ld b, c                                       ; $61bb: $41
    ld hl, $6000                                  ; $61bc: $21 $00 $60
    ld hl, $2151                                  ; $61bf: $21 $51 $21
    or b                                          ; $61c2: $b0
    ld h, c                                       ; $61c3: $61
    ld [hl], e                                    ; $61c4: $73
    pop bc                                        ; $61c5: $c1
    nop                                           ; $61c6: $00
    sub l                                         ; $61c7: $95
    db $eb                                        ; $61c8: $eb
    add a                                         ; $61c9: $87
    rst $38                                       ; $61ca: $ff
    dec de                                        ; $61cb: $1b
    rst $38                                       ; $61cc: $ff
    ld h, l                                       ; $61cd: $65
    rst $38                                       ; $61ce: $ff
    nop                                           ; $61cf: $00
    add hl, bc                                    ; $61d0: $09
    rst $38                                       ; $61d1: $ff
    db $10                                        ; $61d2: $10
    rst $38                                       ; $61d3: $ff
    ld b, l                                       ; $61d4: $45
    cp e                                          ; $61d5: $bb
    ld [$00f7], sp                                ; $61d6: $08 $f7 $00
    ld b, l                                       ; $61d9: $45
    cp e                                          ; $61da: $bb
    inc c                                         ; $61db: $0c
    di                                            ; $61dc: $f3
    ld b, c                                       ; $61dd: $41
    cp e                                          ; $61de: $bb
    ld c, h                                       ; $61df: $4c
    or e                                          ; $61e0: $b3
    nop                                           ; $61e1: $00
    add c                                         ; $61e2: $81
    dec sp                                        ; $61e3: $3b
    ld c, h                                       ; $61e4: $4c
    or e                                          ; $61e5: $b3
    adc c                                         ; $61e6: $89
    inc sp                                        ; $61e7: $33
    call $0033                                    ; $61e8: $cd $33 $00
    adc l                                         ; $61eb: $8d
    inc sp                                        ; $61ec: $33
    push bc                                       ; $61ed: $c5
    dec sp                                        ; $61ee: $3b
    dec c                                         ; $61ef: $0d
    or e                                          ; $61f0: $b3
    pop bc                                        ; $61f1: $c1
    ccf                                           ; $61f2: $3f
    ld bc, $bb45                                  ; $61f3: $01 $45 $bb
    sub l                                         ; $61f6: $95
    ld a, a                                       ; $61f7: $7f
    ld c, e                                       ; $61f8: $4b
    cp a                                          ; $61f9: $bf
    rlca                                          ; $61fa: $07
    ld [hl], b                                    ; $61fb: $70
    ld bc, $6710                                  ; $61fc: $01 $10 $67
    jr jr_09d_61a5                                ; $61ff: $18 $a4

    ret nz                                        ; $6201: $c0

    inc h                                         ; $6202: $24
    ld d, l                                       ; $6203: $55
    cp d                                          ; $6204: $ba
    dec b                                         ; $6205: $05
    ld hl, sp+$04                                 ; $6206: $f8 $04
    dec d                                         ; $6208: $15
    ld hl, sp+$47                                 ; $6209: $f8 $47
    cp b                                          ; $620b: $b8
    ld d, $60                                     ; $620c: $16 $60
    dec b                                         ; $620e: $05
    ld e, d                                       ; $620f: $5a
    cp a                                          ; $6210: $bf
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    cp a                                          ; $6213: $bf
    ld e, b                                       ; $6214: $58
    cp a                                          ; $6215: $bf
    ld [bc], a                                    ; $6216: $02
    cp l                                          ; $6217: $bd
    ld e, b                                       ; $6218: $58
    cp l                                          ; $6219: $bd
    add b                                         ; $621a: $80
    add h                                         ; $621b: $84
    ld [$cba5], sp                                ; $621c: $08 $a5 $cb
    adc c                                         ; $621f: $89
    rst $00                                       ; $6220: $c7
    and h                                         ; $6221: $a4
    rrc c                                         ; $6222: $cb $09
    add d                                         ; $6224: $82
    inc b                                         ; $6225: $04
    nop                                           ; $6226: $00
    add hl, sp                                    ; $6227: $39
    rst $00                                       ; $6228: $c7
    rst $28                                       ; $6229: $ef

jr_09d_622a:
    rst $38                                       ; $622a: $ff
    rst $00                                       ; $622b: $c7
    inc c                                         ; $622c: $0c
    inc b                                         ; $622d: $04
    ld e, a                                       ; $622e: $5f
    adc d                                         ; $622f: $8a
    db $10                                        ; $6230: $10
    inc b                                         ; $6231: $04
    ld a, a                                       ; $6232: $7f
    rst $38                                       ; $6233: $ff
    cp a                                          ; $6234: $bf
    ld [$ff00], sp                                ; $6235: $08 $00 $ff
    inc [hl]                                      ; $6238: $34
    ld bc, $80fb                                  ; $6239: $01 $fb $80
    inc b                                         ; $623c: $04
    jr nz, jr_09d_622a                            ; $623d: $20 $eb

    rst $38                                       ; $623f: $ff
    rst $10                                       ; $6240: $d7
    rst $38                                       ; $6241: $ff
    or h                                          ; $6242: $b4
    sra e                                         ; $6243: $cb $2b
    ld bc, $a4c5                                  ; $6245: $01 $c5 $a4
    sra c                                         ; $6248: $cb $29
    rst $00                                       ; $624a: $c7
    add d                                         ; $624b: $82
    call $5804                                    ; $624c: $cd $04 $58
    inc b                                         ; $624f: $04
    or e                                          ; $6250: $b3
    rst $08                                       ; $6251: $cf
    dec d                                         ; $6252: $15
    rst $28                                       ; $6253: $ef
    set 5, b                                      ; $6254: $cb $e8
    rlca                                          ; $6256: $07
    xor d                                         ; $6257: $aa
    db $10                                        ; $6258: $10
    ld b, b                                       ; $6259: $40
    ld l, b                                       ; $625a: $68
    or b                                          ; $625b: $b0
    dec d                                         ; $625c: $15
    nop                                           ; $625d: $00
    rst $38                                       ; $625e: $ff
    xor c                                         ; $625f: $a9
    ld d, [hl]                                    ; $6260: $56
    add d                                         ; $6261: $82
    ld e, l                                       ; $6262: $5d
    ld b, $25                                     ; $6263: $06 $25
    ret c                                         ; $6265: $d8

    rst $38                                       ; $6266: $ff
    rst $38                                       ; $6267: $ff
    rst $18                                       ; $6268: $df
    ld e, h                                       ; $6269: $5c
    inc b                                         ; $626a: $04
    inc b                                         ; $626b: $04
    ld [$88fe], sp                                ; $626c: $08 $fe $88
    ld l, e                                       ; $626f: $6b
    rlca                                          ; $6270: $07
    cp $ff                                        ; $6271: $fe $ff
    dec bc                                        ; $6273: $0b
    cp b                                          ; $6274: $b8
    inc b                                         ; $6275: $04
    dec bc                                        ; $6276: $0b
    ldh a, [$f9]                                  ; $6277: $f0 $f9
    ret nc                                        ; $6279: $d0

    ld h, b                                       ; $627a: $60
    dec b                                         ; $627b: $05
    ldh a, [rNR24]                                ; $627c: $f0 $19
    ld d, b                                       ; $627e: $50
    cp b                                          ; $627f: $b8
    inc b                                         ; $6280: $04
    db $10                                        ; $6281: $10
    rrca                                          ; $6282: $0f
    ld e, a                                       ; $6283: $5f
    rrca                                          ; $6284: $0f
    ld h, b                                       ; $6285: $60
    ld a, [de]                                    ; $6286: $1a
    jr jr_09d_628f                                ; $6287: $18 $06

    db $fc                                        ; $6289: $fc
    add hl, bc                                    ; $628a: $09
    add b                                         ; $628b: $80
    ld a, l                                       ; $628c: $7d
    ld a, [de]                                    ; $628d: $1a
    db $fd                                        ; $628e: $fd

jr_09d_628f:
    nop                                           ; $628f: $00
    db $10                                        ; $6290: $10
    db $fd                                        ; $6291: $fd
    ld a, [$94fd]                                 ; $6292: $fa $fd $94
    ld b, $0d                                     ; $6295: $06 $0d
    ld [de], a                                    ; $6297: $12
    dec c                                         ; $6298: $0d
    ld e, b                                       ; $6299: $58
    nop                                           ; $629a: $00
    rrca                                          ; $629b: $0f
    ld c, b                                       ; $629c: $48
    sub l                                         ; $629d: $95
    and e                                         ; $629e: $a3
    ld e, h                                       ; $629f: $5c
    ld b, h                                       ; $62a0: $44
    ld a, [de]                                    ; $62a1: $1a
    adc c                                         ; $62a2: $89
    nop                                           ; $62a3: $00
    ld d, [hl]                                    ; $62a4: $56
    inc b                                         ; $62a5: $04
    db $d3                                        ; $62a6: $d3
    xor d                                         ; $62a7: $aa
    ld d, l                                       ; $62a8: $55
    inc b                                         ; $62a9: $04
    pop af                                        ; $62aa: $f1
    xor d                                         ; $62ab: $aa
    inc b                                         ; $62ac: $04
    ld d, l                                       ; $62ad: $55
    inc d                                         ; $62ae: $14

jr_09d_62af:
    ld c, e                                       ; $62af: $4b
    and d                                         ; $62b0: $a2
    ld e, l                                       ; $62b1: $5d
    jr nc, jr_09d_62c2                            ; $62b2: $30 $0e

    and b                                         ; $62b4: $a0
    ld e, a                                       ; $62b5: $5f
    nop                                           ; $62b6: $00
    xor b                                         ; $62b7: $a8
    rra                                           ; $62b8: $1f
    ld h, d                                       ; $62b9: $62
    dec e                                         ; $62ba: $1d
    xor b                                         ; $62bb: $a8
    rra                                           ; $62bc: $1f
    ld h, l                                       ; $62bd: $65
    jr jr_09d_62c0                                ; $62be: $18 $00

jr_09d_62c0:
    xor b                                         ; $62c0: $a8
    rra                                           ; $62c1: $1f

jr_09d_62c2:
    push hl                                       ; $62c2: $e5
    jr jr_09d_62af                                ; $62c3: $18 $ea

    dec e                                         ; $62c5: $1d
    and c                                         ; $62c6: $a1
    ld e, $03                                     ; $62c7: $1e $03
    xor d                                         ; $62c9: $aa
    dec e                                         ; $62ca: $1d
    ld h, l                                       ; $62cb: $65
    ld a, [de]                                    ; $62cc: $1a
    xor b                                         ; $62cd: $a8
    rra                                           ; $62ce: $1f
    call nc, Call_000_040c                        ; $62cf: $d4 $0c $04
    db $10                                        ; $62d2: $10
    jr nc, jr_09d_6343                            ; $62d3: $30 $6e

    ld hl, $100a                                  ; $62d5: $21 $0a $10
    call nc, Call_09d_680c                        ; $62d8: $d4 $0c $68
    cp e                                          ; $62db: $bb
    jr z, jr_09d_6317                             ; $62dc: $28 $39

    nop                                           ; $62de: $00
    add $10                                       ; $62df: $c6 $10
    add hl, hl                                    ; $62e1: $29
    ld a, e                                       ; $62e2: $7b
    xor $ff                                       ; $62e3: $ee $ff
    ld l, b                                       ; $62e5: $68
    cp e                                          ; $62e6: $bb
    ld b, $20                                     ; $62e7: $06 $20
    ld h, b                                       ; $62e9: $60
    ccf                                           ; $62ea: $3f
    ld a, a                                       ; $62eb: $7f
    nop                                           ; $62ec: $00
    inc b                                         ; $62ed: $04
    nop                                           ; $62ee: $00
    cp $04                                        ; $62ef: $fe $04
    ld l, [hl]                                    ; $62f1: $6e
    nop                                           ; $62f2: $00
    ld hl, $226c                                  ; $62f3: $21 $6c $22
    ld l, [hl]                                    ; $62f6: $6e
    jr z, jr_09d_6371                             ; $62f7: $28 $78

    rst $28                                       ; $62f9: $ef
    rst $38                                       ; $62fa: $ff
    jr nz, jr_09d_62fd                            ; $62fb: $20 $00

jr_09d_62fd:
    jr c, @-$27                                   ; $62fd: $38 $d7

    ld c, $00                                     ; $62ff: $0e $00
    ld a, h                                       ; $6301: $7c
    add e                                         ; $6302: $83
    jr c, jr_09d_6349                             ; $6303: $38 $44

    add hl, de                                    ; $6305: $19
    db $fd                                        ; $6306: $fd
    ld hl, $2061                                  ; $6307: $21 $61 $20
    ld [$3f40], sp                                ; $630a: $08 $40 $3f
    add e                                         ; $630d: $83
    cp e                                          ; $630e: $bb
    and $0f                                       ; $630f: $e6 $0f
    add c                                         ; $6311: $81
    ldh a, [$3f]                                  ; $6312: $f0 $3f
    ld a, [bc]                                    ; $6314: $0a
    ld e, $fa                                     ; $6315: $1e $fa

jr_09d_6317:
    cp $02                                        ; $6317: $fe $02
    ld c, $ee                                     ; $6319: $0e $ee
    inc h                                         ; $631b: $24
    ld a, [de]                                    ; $631c: $1a
    ld l, [hl]                                    ; $631d: $6e
    sbc d                                         ; $631e: $9a
    xor $10                                       ; $631f: $ee $10
    jr @+$62                                      ; $6321: $18 $60

    ccf                                           ; $6323: $3f
    ld [$02d0], a                                 ; $6324: $ea $d0 $02
    xor b                                         ; $6327: $a8
    ld b, b                                       ; $6328: $40
    ld d, b                                       ; $6329: $50
    sub $0a                                       ; $632a: $d6 $0a
    ld l, d                                       ; $632c: $6a
    sub b                                         ; $632d: $90
    ld l, d                                       ; $632e: $6a
    db $10                                        ; $632f: $10
    ld l, b                                       ; $6330: $68
    sub b                                         ; $6331: $90
    nop                                           ; $6332: $00
    nop                                           ; $6333: $00
    rst $38                                       ; $6334: $ff
    add e                                         ; $6335: $83
    nop                                           ; $6336: $00
    ld bc, $8180                                  ; $6337: $01 $80 $81
    nop                                           ; $633a: $00
    ld hl, $be41                                  ; $633b: $21 $41 $be
    ret z                                         ; $633e: $c8

    ld bc, $c280                                  ; $633f: $01 $80 $c2
    add c                                         ; $6342: $81

jr_09d_6343:
    xor d                                         ; $6343: $aa
    add c                                         ; $6344: $81
    dec b                                         ; $6345: $05
    inc b                                         ; $6346: $04
    ld d, [hl]                                    ; $6347: $56
    xor c                                         ; $6348: $a9

jr_09d_6349:
    xor b                                         ; $6349: $a8
    ld d, a                                       ; $634a: $57
    ld b, b                                       ; $634b: $40
    sbc h                                         ; $634c: $9c
    inc c                                         ; $634d: $0c
    cp a                                          ; $634e: $bf
    jr z, jr_09d_63c9                             ; $634f: $28 $78

    rst $10                                       ; $6351: $d7
    inc d                                         ; $6352: $14
    ld [$4804], sp                                ; $6353: $08 $04 $48
    ld d, [hl]                                    ; $6356: $56
    rrca                                          ; $6357: $0f
    inc e                                         ; $6358: $1c
    ld [$6b94], sp                                ; $6359: $08 $94 $6b
    ld c, b                                       ; $635c: $48
    ld b, b                                       ; $635d: $40
    or a                                          ; $635e: $b7
    ld a, [bc]                                    ; $635f: $0a
    dec b                                         ; $6360: $05
    rst $38                                       ; $6361: $ff
    ld l, d                                       ; $6362: $6a
    or a                                          ; $6363: $b7
    db $dd                                        ; $6364: $dd
    db $e3                                        ; $6365: $e3
    ld b, c                                       ; $6366: $41
    jr z, @+$01                                   ; $6367: $28 $ff

    ld a, $94                                     ; $6369: $3e $94
    inc b                                         ; $636b: $04
    ld bc, $0496                                  ; $636c: $01 $96 $04
    rst $38                                       ; $636f: $ff
    rst $38                                       ; $6370: $ff

jr_09d_6371:
    db $f4                                        ; $6371: $f4
    inc e                                         ; $6372: $1c
    dec bc                                        ; $6373: $0b
    ld e, b                                       ; $6374: $58
    and a                                         ; $6375: $a7
    ld a, d                                       ; $6376: $7a
    rrca                                          ; $6377: $0f
    add b                                         ; $6378: $80
    cpl                                           ; $6379: $2f
    ld d, b                                       ; $637a: $50
    ld [$ff00], sp                                ; $637b: $08 $00 $ff
    db $10                                        ; $637e: $10
    ld [bc], a                                    ; $637f: $02
    db $fd                                        ; $6380: $fd
    ld l, l                                       ; $6381: $6d
    or $07                                        ; $6382: $f6 $07
    add sp, $17                                   ; $6384: $e8 $17
    push af                                       ; $6386: $f5
    ld a, [bc]                                    ; $6387: $0a
    nop                                           ; $6388: $00
    xor d                                         ; $6389: $aa
    nop                                           ; $638a: $00
    ld l, d                                       ; $638b: $6a
    ld a, a                                       ; $638c: $7f
    ld d, l                                       ; $638d: $55
    ld l, d                                       ; $638e: $6a
    ld h, b                                       ; $638f: $60
    ld a, a                                       ; $6390: $7f
    nop                                           ; $6391: $00
    ld d, l                                       ; $6392: $55
    ld l, a                                       ; $6393: $6f
    ld h, b                                       ; $6394: $60
    ld a, a                                       ; $6395: $7f
    ld d, a                                       ; $6396: $57
    ld l, b                                       ; $6397: $68
    ld a, a                                       ; $6398: $7f
    ld h, b                                       ; $6399: $60
    inc b                                         ; $639a: $04
    nop                                           ; $639b: $00
    rst $38                                       ; $639c: $ff
    ld a, [hl+]                                   ; $639d: $2a
    rst $38                                       ; $639e: $ff
    dec d                                         ; $639f: $15
    or h                                          ; $63a0: $b4
    rlca                                          ; $63a1: $07
    ld [de], a                                    ; $63a2: $12
    db $ed                                        ; $63a3: $ed
    ld [hl+], a                                   ; $63a4: $22
    ld a, c                                       ; $63a5: $79
    add [hl]                                      ; $63a6: $86
    ld h, [hl]                                    ; $63a7: $66
    ld c, $60                                     ; $63a8: $0e $60
    ld a, a                                       ; $63aa: $7f
    ld d, b                                       ; $63ab: $50
    ld a, [de]                                    ; $63ac: $1a
    nop                                           ; $63ad: $00
    ld b, b                                       ; $63ae: $40
    ld [bc], a                                    ; $63af: $02

jr_09d_63b0:
    ld a, a                                       ; $63b0: $7f
    ld h, b                                       ; $63b1: $60
    ld a, a                                       ; $63b2: $7f
    ld b, l                                       ; $63b3: $45
    ld a, d                                       ; $63b4: $7a
    ld a, [hl]                                    ; $63b5: $7e
    inc [hl]                                      ; $63b6: $34
    dec b                                         ; $63b7: $05
    ld a, [bc]                                    ; $63b8: $0a
    jr jr_09d_63b0                                ; $63b9: $18 $f5

    and l                                         ; $63bb: $a5
    ld e, d                                       ; $63bc: $5a
    ld b, b                                       ; $63bd: $40
    nop                                           ; $63be: $00
    ret nc                                        ; $63bf: $d0

    scf                                           ; $63c0: $37
    ld h, b                                       ; $63c1: $60
    ld a, a                                       ; $63c2: $7f
    ld d, d                                       ; $63c3: $52
    ld b, b                                       ; $63c4: $40
    ld l, l                                       ; $63c5: $6d
    jr nz, jr_09d_63e0                            ; $63c6: $20 $18

    ld b, b                                       ; $63c8: $40

jr_09d_63c9:
    ld a, a                                       ; $63c9: $7f
    ld l, d                                       ; $63ca: $6a
    ld a, a                                       ; $63cb: $7f
    ld a, a                                       ; $63cc: $7f
    ld a, a                                       ; $63cd: $7f
    rst $18                                       ; $63ce: $df
    di                                            ; $63cf: $f3
    rrca                                          ; $63d0: $0f
    ldh a, [$1f]                                  ; $63d1: $f0 $1f
    ld d, l                                       ; $63d3: $55
    cp $17                                        ; $63d4: $fe $17
    rlca                                          ; $63d6: $07
    nop                                           ; $63d7: $00
    dec bc                                        ; $63d8: $0b
    ld [$107b], sp                                ; $63d9: $08 $7b $10
    rst $28                                       ; $63dc: $ef
    add hl, bc                                    ; $63dd: $09
    nop                                           ; $63de: $00
    and b                                         ; $63df: $a0

jr_09d_63e0:
    and b                                         ; $63e0: $a0
    jr nz, jr_09d_6443                            ; $63e1: $20 $60

    ld a, a                                       ; $63e3: $7f
    inc l                                         ; $63e4: $2c
    ld l, a                                       ; $63e5: $6f
    inc l                                         ; $63e6: $2c
    nop                                           ; $63e7: $00
    ld [hl], a                                    ; $63e8: $77
    inc h                                         ; $63e9: $24
    ld l, e                                       ; $63ea: $6b
    jr z, jr_09d_646c                             ; $63eb: $28 $7f

    jr z, jr_09d_641e                             ; $63ed: $28 $2f

    ld l, b                                       ; $63ef: $68
    nop                                           ; $63f0: $00
    ld [hl], a                                    ; $63f1: $77
    inc h                                         ; $63f2: $24
    dec hl                                        ; $63f3: $2b
    ld h, e                                       ; $63f4: $63
    ld a, l                                       ; $63f5: $7d
    ld hl, $622f                                  ; $63f6: $21 $2f $62
    nop                                           ; $63f9: $00
    ld a, a                                       ; $63fa: $7f
    ld [hl+], a                                   ; $63fb: $22
    dec l                                         ; $63fc: $2d
    ld h, c                                       ; $63fd: $61
    ccf                                           ; $63fe: $3f
    ld h, b                                       ; $63ff: $60
    jr nz, jr_09d_6462                            ; $6400: $20 $60

    add b                                         ; $6402: $80
    ld e, d                                       ; $6403: $5a
    inc de                                        ; $6404: $13
    ret nz                                        ; $6405: $c0

    ld hl, sp-$30                                 ; $6406: $f8 $d0
    ld a, e                                       ; $6408: $7b
    ld e, b                                       ; $6409: $58
    rst $30                                       ; $640a: $f7
    ld d, a                                       ; $640b: $57
    nop                                           ; $640c: $00

jr_09d_640d:
    ldh [rLCDC], a                                ; $640d: $e0 $40
    rst $38                                       ; $640f: $ff
    ld b, b                                       ; $6410: $40
    dec b                                         ; $6411: $05
    dec b                                         ; $6412: $05
    inc b                                         ; $6413: $04
    ld b, $00                                     ; $6414: $06 $00
    cp $04                                        ; $6416: $fe $04
    ld [hl], $04                                  ; $6418: $36 $04
    ld a, [hl]                                    ; $641a: $7e

jr_09d_641b:
    ld [hl], h                                    ; $641b: $74
    or $84                                        ; $641c: $f6 $84

jr_09d_641e:
    nop                                           ; $641e: $00
    ld c, $04                                     ; $641f: $0e $04
    db $f4                                        ; $6421: $f4
    ld b, $bc                                     ; $6422: $06 $bc
    add b                                         ; $6424: $80
    ld a, h                                       ; $6425: $7c
    rlca                                          ; $6426: $07
    nop                                           ; $6427: $00
    ei                                            ; $6428: $fb
    inc sp                                        ; $6429: $33
    rst $38                                       ; $642a: $ff
    jr nc, jr_09d_641b                            ; $642b: $30 $ee

    jr nz, jr_09d_640d                            ; $642d: $20 $de

    jp $fd00                                      ; $642f: $c3 $00 $fd


    ld bc, $0000                                  ; $6432: $01 $00 $00
    ld e, $04                                     ; $6435: $1e $04
    inc d                                         ; $6437: $14
    or $00                                        ; $6438: $f6 $00
    xor $e4                                       ; $643a: $ee $e4
    db $f4                                        ; $643c: $f4
    ld b, $0e                                     ; $643d: $06 $0e
    inc b                                         ; $643f: $04
    inc c                                         ; $6440: $0c
    cp $02                                        ; $6441: $fe $02

jr_09d_6443:
    db $f4                                        ; $6443: $f4
    or $04                                        ; $6444: $f6 $04
    ld b, $74                                     ; $6446: $06 $74
    adc e                                         ; $6448: $8b
    adc c                                         ; $6449: $89
    ld [bc], a                                    ; $644a: $02
    ld a, a                                       ; $644b: $7f
    nop                                           ; $644c: $00
    sbc l                                         ; $644d: $9d
    dec e                                         ; $644e: $1d
    xor d                                         ; $644f: $aa
    ld d, l                                       ; $6450: $55
    push de                                       ; $6451: $d5
    ld d, l                                       ; $6452: $55
    xor d                                         ; $6453: $aa
    ld a, [hl+]                                   ; $6454: $2a
    jr nz, jr_09d_64ac                            ; $6455: $20 $55

    push de                                       ; $6457: $d5
    or h                                          ; $6458: $b4
    dec c                                         ; $6459: $0d
    rst $38                                       ; $645a: $ff
    rst $38                                       ; $645b: $ff
    add d                                         ; $645c: $82
    add d                                         ; $645d: $82
    xor d                                         ; $645e: $aa
    inc l                                         ; $645f: $2c
    ld d, l                                       ; $6460: $55
    ld d, l                                       ; $6461: $55

jr_09d_6462:
    or a                                          ; $6462: $b7
    rlca                                          ; $6463: $07
    ld d, l                                       ; $6464: $55
    cp d                                          ; $6465: $ba
    ld b, $a2                                     ; $6466: $06 $a2
    ld [$cccc], sp                                ; $6468: $08 $cc $cc
    sub b                                         ; $646b: $90

jr_09d_646c:
    db $10                                        ; $646c: $10
    jr z, @+$18                                   ; $646d: $28 $16

    jp hl                                         ; $646f: $e9


    ld l, c                                       ; $6470: $69
    ld [bc], a                                    ; $6471: $02
    cp $e7                                        ; $6472: $fe $e7
    and $ab                                       ; $6474: $e6 $ab
    nop                                           ; $6476: $00
    ld d, h                                       ; $6477: $54
    ld d, l                                       ; $6478: $55
    ld d, h                                       ; $6479: $54
    xor e                                         ; $647a: $ab
    xor d                                         ; $647b: $aa
    ld d, h                                       ; $647c: $54
    ld d, l                                       ; $647d: $55
    nop                                           ; $647e: $00
    inc d                                         ; $647f: $14
    inc d                                         ; $6480: $14
    rrca                                          ; $6481: $0f
    ld b, d                                       ; $6482: $42
    rst $38                                       ; $6483: $ff
    ld bc, $8360                                  ; $6484: $01 $60 $83
    rst $38                                       ; $6487: $ff
    pop bc                                        ; $6488: $c1
    cp a                                          ; $6489: $bf
    inc b                                         ; $648a: $04
    ld c, b                                       ; $648b: $48
    inc e                                         ; $648c: $1c
    nop                                           ; $648d: $00
    db $e3                                        ; $648e: $e3
    cp e                                          ; $648f: $bb
    ld b, b                                       ; $6490: $40
    xor $00                                       ; $6491: $ee $00
    push de                                       ; $6493: $d5
    nop                                           ; $6494: $00
    and d                                         ; $6495: $a2
    nop                                           ; $6496: $00
    nop                                           ; $6497: $00
    ld c, c                                       ; $6498: $49
    nop                                           ; $6499: $00
    nop                                           ; $649a: $00
    nop                                           ; $649b: $00
    jr nz, jr_09d_649e                            ; $649c: $20 $00

jr_09d_649e:
    ld a, [hl+]                                   ; $649e: $2a
    nop                                           ; $649f: $00
    pop de                                        ; $64a0: $d1
    ld a, a                                       ; $64a1: $7f
    add b                                         ; $64a2: $80
    jp c, $f400                                   ; $64a3: $da $00 $f4

    nop                                           ; $64a6: $00
    xor c                                         ; $64a7: $a9
    ld [$5200], sp                                ; $64a8: $08 $00 $52
    nop                                           ; $64ab: $00

jr_09d_64ac:
    add b                                         ; $64ac: $80
    stop                                          ; $64ad: $10 $00
    xor b                                         ; $64af: $a8
    ld d, a                                       ; $64b0: $57
    db $ec                                        ; $64b1: $ec
    nop                                           ; $64b2: $00
    inc bc                                        ; $64b3: $03
    cp e                                          ; $64b4: $bb
    inc b                                         ; $64b5: $04
    ld d, l                                       ; $64b6: $55
    ld [bc], a                                    ; $64b7: $02
    cpl                                           ; $64b8: $2f
    nop                                           ; $64b9: $00
    dec d                                         ; $64ba: $15
    jr nz, jr_09d_64bd                            ; $64bb: $20 $00

jr_09d_64bd:
    ld c, d                                       ; $64bd: $4a
    ld [hl+], a                                   ; $64be: $22
    nop                                           ; $64bf: $00
    ld a, [de]                                    ; $64c0: $1a
    pop hl                                        ; $64c1: $e1
    or l                                          ; $64c2: $b5
    ld c, b                                       ; $64c3: $48
    ld l, a                                       ; $64c4: $6f
    or l                                          ; $64c5: $b5
    jr nc, jr_09d_64d8                            ; $64c6: $30 $10

    ld d, c                                       ; $64c8: $51
    jr nz, jr_09d_64db                            ; $64c9: $20 $10

    ld bc, $8238                                  ; $64cb: $01 $38 $82
    ld b, b                                       ; $64ce: $40
    nop                                           ; $64cf: $00
    ld c, b                                       ; $64d0: $48
    db $10                                        ; $64d1: $10
    jr nz, jr_09d_64e4                            ; $64d2: $20 $10

    ld b, b                                       ; $64d4: $40
    nop                                           ; $64d5: $00
    db $10                                        ; $64d6: $10
    inc b                                         ; $64d7: $04

jr_09d_64d8:
    nop                                           ; $64d8: $00
    push de                                       ; $64d9: $d5
    nop                                           ; $64da: $00

jr_09d_64db:
    ld d, b                                       ; $64db: $50
    nop                                           ; $64dc: $00
    ld d, c                                       ; $64dd: $51
    ld bc, $1022                                  ; $64de: $01 $22 $10
    add b                                         ; $64e1: $80
    inc b                                         ; $64e2: $04
    db $10                                        ; $64e3: $10

jr_09d_64e4:
    ld b, b                                       ; $64e4: $40
    nop                                           ; $64e5: $00
    ld de, $3030                                  ; $64e6: $11 $30 $30
    ld d, b                                       ; $64e9: $50
    ld b, d                                       ; $64ea: $42
    ld [hl+], a                                   ; $64eb: $22
    nop                                           ; $64ec: $00
    ld b, d                                       ; $64ed: $42
    ld d, h                                       ; $64ee: $54
    nop                                           ; $64ef: $00
    add d                                         ; $64f0: $82
    nop                                           ; $64f1: $00
    ld [$0400], sp                                ; $64f2: $08 $00 $04
    ld b, l                                       ; $64f5: $45
    nop                                           ; $64f6: $00
    xor l                                         ; $64f7: $ad
    nop                                           ; $64f8: $00
    rst $20                                       ; $64f9: $e7
    inc b                                         ; $64fa: $04
    nop                                           ; $64fb: $00
    xor l                                         ; $64fc: $ad
    nop                                           ; $64fd: $00
    ld b, b                                       ; $64fe: $40
    rst $38                                       ; $64ff: $ff
    ld a, d                                       ; $6500: $7a
    nop                                           ; $6501: $00
    push de                                       ; $6502: $d5
    nop                                           ; $6503: $00
    rst $18                                       ; $6504: $df
    nop                                           ; $6505: $00
    db $fd                                        ; $6506: $fd
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    ld d, l                                       ; $6509: $55
    adc b                                         ; $650a: $88
    rst $18                                       ; $650b: $df
    nop                                           ; $650c: $00
    ld [hl], l                                    ; $650d: $75
    adc b                                         ; $650e: $88
    ld d, a                                       ; $650f: $57
    adc b                                         ; $6510: $88
    nop                                           ; $6511: $00
    adc b                                         ; $6512: $88
    nop                                           ; $6513: $00
    pop de                                        ; $6514: $d1
    nop                                           ; $6515: $00
    ret c                                         ; $6516: $d8

    nop                                           ; $6517: $00
    ld a, c                                       ; $6518: $79
    add b                                         ; $6519: $80
    nop                                           ; $651a: $00
    db $db                                        ; $651b: $db
    nop                                           ; $651c: $00
    ld a, a                                       ; $651d: $7f
    add b                                         ; $651e: $80
    ld a, e                                       ; $651f: $7b
    add b                                         ; $6520: $80
    ccf                                           ; $6521: $3f
    ret nz                                        ; $6522: $c0

    nop                                           ; $6523: $00
    ld b, l                                       ; $6524: $45
    nop                                           ; $6525: $00
    ld d, l                                       ; $6526: $55
    nop                                           ; $6527: $00
    cpl                                           ; $6528: $2f
    nop                                           ; $6529: $00
    ld a, e                                       ; $652a: $7b
    nop                                           ; $652b: $00
    ld b, b                                       ; $652c: $40
    rst $28                                       ; $652d: $ef
    inc b                                         ; $652e: $04
    nop                                           ; $652f: $00
    ld l, a                                       ; $6530: $6f
    nop                                           ; $6531: $00
    ld a, a                                       ; $6532: $7f

jr_09d_6533:
    nop                                           ; $6533: $00
    and a                                         ; $6534: $a7
    ld c, b                                       ; $6535: $48
    nop                                           ; $6536: $00

jr_09d_6537:
    db $fd                                        ; $6537: $fd
    nop                                           ; $6538: $00
    or a                                          ; $6539: $b7
    ld c, b                                       ; $653a: $48
    scf                                           ; $653b: $37
    ret z                                         ; $653c: $c8

    and a                                         ; $653d: $a7
    ld e, b                                       ; $653e: $58
    nop                                           ; $653f: $00
    ld d, $e9                                     ; $6540: $16 $e9
    inc bc                                        ; $6542: $03
    db $fc                                        ; $6543: $fc
    nop                                           ; $6544: $00
    rst $38                                       ; $6545: $ff
    rst $30                                       ; $6546: $f7
    ld [$6200], sp                                ; $6547: $08 $00 $62
    sbc l                                         ; $654a: $9d
    ld [hl], h                                    ; $654b: $74
    adc e                                         ; $654c: $8b
    ld h, c                                       ; $654d: $61
    sbc [hl]                                      ; $654e: $9e
    ld d, b                                       ; $654f: $50
    xor a                                         ; $6550: $af
    nop                                           ; $6551: $00
    jr nz, jr_09d_6533                            ; $6552: $20 $df

    ld d, h                                       ; $6554: $54
    xor e                                         ; $6555: $ab
    jr nz, jr_09d_6537                            ; $6556: $20 $df

    ld a, e                                       ; $6558: $7b
    add b                                         ; $6559: $80
    nop                                           ; $655a: $00
    cpl                                           ; $655b: $2f
    ret nc                                        ; $655c: $d0

    rra                                           ; $655d: $1f
    ldh [$0b], a                                  ; $655e: $e0 $0b
    db $f4                                        ; $6560: $f4
    ld b, l                                       ; $6561: $45
    cp d                                          ; $6562: $ba
    nop                                           ; $6563: $00
    ld [bc], a                                    ; $6564: $02
    db $fd                                        ; $6565: $fd
    nop                                           ; $6566: $00
    rst $38                                       ; $6567: $ff
    ld [$fdf7], sp                                ; $6568: $08 $f7 $fd
    ld [bc], a                                    ; $656b: $02
    nop                                           ; $656c: $00
    ld a, a                                       ; $656d: $7f
    nop                                           ; $656e: $00
    rst $28                                       ; $656f: $ef
    db $10                                        ; $6570: $10
    ei                                            ; $6571: $fb
    inc b                                         ; $6572: $04
    db $ed                                        ; $6573: $ed
    ld [de], a                                    ; $6574: $12
    nop                                           ; $6575: $00
    xor e                                         ; $6576: $ab
    ld d, h                                       ; $6577: $54
    ld c, l                                       ; $6578: $4d
    or d                                          ; $6579: $b2
    ld a, [hl+]                                   ; $657a: $2a
    push de                                       ; $657b: $d5
    ld de, $00ee                                  ; $657c: $11 $ee $00
    cp e                                          ; $657f: $bb
    ld b, h                                       ; $6580: $44
    ld l, [hl]                                    ; $6581: $6e
    add b                                         ; $6582: $80
    db $dd                                        ; $6583: $dd
    nop                                           ; $6584: $00
    ld [$4000], a                                 ; $6585: $ea $00 $40
    ld d, h                                       ; $6588: $54
    ldh a, [rP1]                                  ; $6589: $f0 $00
    ld [bc], a                                    ; $658b: $02
    nop                                           ; $658c: $00
    ld b, l                                       ; $658d: $45
    cp d                                          ; $658e: $ba
    db $ed                                        ; $658f: $ed
    db $10                                        ; $6590: $10
    inc b                                         ; $6591: $04
    cp e                                          ; $6592: $bb
    nop                                           ; $6593: $00
    ld a, l                                       ; $6594: $7d
    nop                                           ; $6595: $00
    xor d                                         ; $6596: $aa
    ld l, b                                       ; $6597: $68
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    nop                                           ; $659a: $00
    ld d, h                                       ; $659b: $54
    ld [de], a                                    ; $659c: $12
    sbc [hl]                                      ; $659d: $9e
    nop                                           ; $659e: $00
    ld bc, $0108                                  ; $659f: $01 $08 $01
    add hl, bc                                    ; $65a2: $09
    inc b                                         ; $65a3: $04
    db $10                                        ; $65a4: $10
    sub d                                         ; $65a5: $92
    nop                                           ; $65a6: $00
    inc d                                         ; $65a7: $14
    adc d                                         ; $65a8: $8a
    nop                                           ; $65a9: $00
    inc b                                         ; $65aa: $04
    ld a, [c]                                     ; $65ab: $f2
    db $10                                        ; $65ac: $10
    db $10                                        ; $65ad: $10
    inc e                                         ; $65ae: $1c
    ld bc, $0014                                  ; $65af: $01 $14 $00
    ld bc, $00a0                                  ; $65b2: $01 $a0 $00
    sub h                                         ; $65b5: $94
    nop                                           ; $65b6: $00
    sbc e                                         ; $65b7: $9b
    nop                                           ; $65b8: $00
    jp c, Jump_000_0004                           ; $65b9: $da $04 $00

    ld bc, $00de                                  ; $65bc: $01 $de $00
    db $db                                        ; $65bf: $db
    nop                                           ; $65c0: $00
    ld e, [hl]                                    ; $65c1: $5e
    add c                                         ; $65c2: $81
    ei                                            ; $65c3: $fb
    inc b                                         ; $65c4: $04
    nop                                           ; $65c5: $00
    db $10                                        ; $65c6: $10
    or d                                          ; $65c7: $b2
    nop                                           ; $65c8: $00
    or h                                          ; $65c9: $b4
    ld c, h                                       ; $65ca: $4c
    ld bc, $00f4                                  ; $65cb: $01 $f4 $00
    rst $30                                       ; $65ce: $f7
    nop                                           ; $65cf: $00
    ld b, b                                       ; $65d0: $40
    cp [hl]                                       ; $65d1: $be
    inc b                                         ; $65d2: $04
    nop                                           ; $65d3: $00
    db $dd                                        ; $65d4: $dd

jr_09d_65d5:
    jr nz, jr_09d_65d5                            ; $65d5: $20 $fe

    ld bc, $857a                                  ; $65d7: $01 $7a $85
    nop                                           ; $65da: $00
    ld [hl], h                                    ; $65db: $74
    adc e                                         ; $65dc: $8b
    ld l, b                                       ; $65dd: $68
    sub a                                         ; $65de: $97
    ld [hl], b                                    ; $65df: $70
    adc a                                         ; $65e0: $8f
    ld h, b                                       ; $65e1: $60
    sbc a                                         ; $65e2: $9f
    nop                                           ; $65e3: $00
    ld d, b                                       ; $65e4: $50
    xor a                                         ; $65e5: $af
    ld [hl+], a                                   ; $65e6: $22
    rst $18                                       ; $65e7: $df
    xor a                                         ; $65e8: $af
    ld d, b                                       ; $65e9: $50
    ld d, a                                       ; $65ea: $57
    xor b                                         ; $65eb: $a8
    nop                                           ; $65ec: $00
    adc a                                         ; $65ed: $8f
    ld [hl], b                                    ; $65ee: $70
    rlca                                          ; $65ef: $07
    ld hl, sp+$0b                                 ; $65f0: $f8 $0b
    db $f4                                        ; $65f2: $f4
    dec d                                         ; $65f3: $15
    ld [$0a00], a                                 ; $65f4: $ea $00 $0a
    push af                                       ; $65f7: $f5
    ld bc, $81fe                                  ; $65f8: $01 $fe $81
    ld b, c                                       ; $65fb: $41
    add b                                         ; $65fc: $80
    ld b, b                                       ; $65fd: $40
    add h                                         ; $65fe: $84
    ld [bc], a                                    ; $65ff: $02
    ld [$4484], sp                                ; $6600: $08 $84 $44
    add h                                         ; $6603: $84
    ld b, h                                       ; $6604: $44
    ld a, [bc]                                    ; $6605: $0a
    ld [$0286], sp                                ; $6606: $08 $86 $02
    nop                                           ; $6609: $00
    ld b, d                                       ; $660a: $42
    nop                                           ; $660b: $00
    jr z, @+$03                                   ; $660c: $28 $01

    ld [hl], $22                                  ; $660e: $36 $22
    ld d, $04                                     ; $6610: $16 $04
    nop                                           ; $6612: $00
    ld [$6901], sp                                ; $6613: $08 $01 $69
    ld h, b                                       ; $6616: $60
    push de                                       ; $6617: $d5
    pop de                                        ; $6618: $d1
    add $82                                       ; $6619: $c6 $82
    nop                                           ; $661b: $00
    dec c                                         ; $661c: $0d
    dec h                                         ; $661d: $25
    inc bc                                        ; $661e: $03
    ld [de], a                                    ; $661f: $12
    sub a                                         ; $6620: $97
    dec b                                         ; $6621: $05
    ld d, a                                       ; $6622: $57
    inc bc                                        ; $6623: $03
    nop                                           ; $6624: $00
    ld e, a                                       ; $6625: $5f
    ld [hl], $3f                                  ; $6626: $36 $3f
    rrca                                          ; $6628: $0f
    adc a                                         ; $6629: $8f
    cp a                                          ; $662a: $bf
    rst $38                                       ; $662b: $ff
    call $dd00                                    ; $662c: $cd $00 $dd
    add hl, de                                    ; $662f: $19
    rst $38                                       ; $6630: $ff
    rst $30                                       ; $6631: $f7
    rst $28                                       ; $6632: $ef
    cp a                                          ; $6633: $bf
    cp a                                          ; $6634: $bf
    ld e, $00                                     ; $6635: $1e $00
    cp l                                          ; $6637: $bd
    rst $38                                       ; $6638: $ff
    db $fd                                        ; $6639: $fd
    ld a, a                                       ; $663a: $7f
    ld l, h                                       ; $663b: $6c
    di                                            ; $663c: $f3
    sub h                                         ; $663d: $94
    ld d, b                                       ; $663e: $50
    nop                                           ; $663f: $00
    adc b                                         ; $6640: $88
    ld b, e                                       ; $6641: $43
    sbc a                                         ; $6642: $9f
    ld c, [hl]                                    ; $6643: $4e
    sbc c                                         ; $6644: $99
    ld c, b                                       ; $6645: $48
    adc a                                         ; $6646: $8f
    ld b, c                                       ; $6647: $41
    nop                                           ; $6648: $00
    adc h                                         ; $6649: $8c
    ld c, b                                       ; $664a: $48
    and h                                         ; $664b: $a4
    ld h, h                                       ; $664c: $64
    cp b                                          ; $664d: $b8
    ld a, b                                       ; $664e: $78
    xor [hl]                                      ; $664f: $ae
    xor d                                         ; $6650: $aa
    nop                                           ; $6651: $00
    ei                                            ; $6652: $fb
    rrca                                          ; $6653: $0f
    ld a, a                                       ; $6654: $7f
    ld h, e                                       ; $6655: $63
    inc bc                                        ; $6656: $03
    ld bc, $464a                                  ; $6657: $01 $4a $46
    nop                                           ; $665a: $00
    inc sp                                        ; $665b: $33
    ld hl, $0b2f                                  ; $665c: $21 $2f $0b
    inc e                                         ; $665f: $1c
    dec [hl]                                      ; $6660: $35
    rst $38                                       ; $6661: $ff
    sbc $00                                       ; $6662: $de $00
    sbc l                                         ; $6664: $9d
    cp d                                          ; $6665: $ba
    rst $28                                       ; $6666: $ef
    adc a                                         ; $6667: $8f
    ld e, e                                       ; $6668: $5b
    ld [hl], a                                    ; $6669: $77
    rst $08                                       ; $666a: $cf
    rst $18                                       ; $666b: $df
    nop                                           ; $666c: $00
    cp $fd                                        ; $666d: $fe $fd
    cp [hl]                                       ; $666f: $be
    jp c, $f47f                                   ; $6670: $da $7f $f4

    ld a, [$001a]                                 ; $6673: $fa $1a $00
    ld hl, sp-$08                                 ; $6676: $f8 $f8
    ld a, e                                       ; $6678: $7b
    cp e                                          ; $6679: $bb
    ld hl, sp-$38                                 ; $667a: $f8 $c8
    call Call_000_0001                            ; $667c: $cd $01 $00
    ld [de], a                                    ; $667f: $12
    ld [$20e5], sp                                ; $6680: $08 $e5 $20

jr_09d_6683:
    jr nc, jr_09d_6685                            ; $6683: $30 $00

jr_09d_6685:
    sub e                                         ; $6685: $93
    ld d, e                                       ; $6686: $53
    ld [bc], a                                    ; $6687: $02
    sbc b                                         ; $6688: $98
    ld e, b                                       ; $6689: $58
    add l                                         ; $668a: $85
    ld b, l                                       ; $668b: $45
    sbc a                                         ; $668c: $9f
    ld e, a                                       ; $668d: $5f
    adc b                                         ; $668e: $88
    ld [$00a9], sp                                ; $668f: $08 $a9 $00
    ld l, c                                       ; $6692: $69
    cp [hl]                                       ; $6693: $be
    ld a, [hl]                                    ; $6694: $7e
    ld d, [hl]                                    ; $6695: $56
    inc b                                         ; $6696: $04
    halt                                          ; $6697: $76
    ld [hl-], a                                   ; $6698: $32
    or c                                          ; $6699: $b1
    nop                                           ; $669a: $00
    add hl, sp                                    ; $669b: $39
    reti                                          ; $669c: $d9


    ld c, c                                       ; $669d: $49
    cp a                                          ; $669e: $bf
    rra                                           ; $669f: $1f
    rst $20                                       ; $66a0: $e7
    ld b, a                                       ; $66a1: $47
    ld e, a                                       ; $66a2: $5f
    nop                                           ; $66a3: $00
    sbc a                                         ; $66a4: $9f
    ld e, a                                       ; $66a5: $5f
    sbc a                                         ; $66a6: $9f
    sbc $bf                                       ; $66a7: $de $bf
    rst $38                                       ; $66a9: $ff
    ld a, [hl]                                    ; $66aa: $7e
    ld a, [$7a00]                                 ; $66ab: $fa $00 $7a
    ld [$fe6a], a                                 ; $66ae: $ea $6a $fe
    ld a, [hl]                                    ; $66b1: $7e
    ld [hl], e                                    ; $66b2: $73
    di                                            ; $66b3: $f3
    add d                                         ; $66b4: $82
    nop                                           ; $66b5: $00
    jp nz, $94d4                                  ; $66b6: $c2 $d4 $94

    ld a, [hl-]                                   ; $66b9: $3a
    ld [hl], $8a                                  ; $66ba: $36 $8a
    adc b                                         ; $66bc: $88
    add b                                         ; $66bd: $80
    nop                                           ; $66be: $00
    ld bc, $40c0                                  ; $66bf: $01 $c0 $40
    adc b                                         ; $66c2: $88
    ld [$1c9c], sp                                ; $66c3: $08 $9c $1c
    sub b                                         ; $66c6: $90
    nop                                           ; $66c7: $00
    db $10                                        ; $66c8: $10
    jp $8d43                                      ; $66c9: $c3 $43 $8d


    ld c, l                                       ; $66cc: $4d
    cp a                                          ; $66cd: $bf
    ld a, a                                       ; $66ce: $7f
    sub a                                         ; $66cf: $97
    nop                                           ; $66d0: $00
    ld d, a                                       ; $66d1: $57
    sbc a                                         ; $66d2: $9f
    ld e, a                                       ; $66d3: $5f
    cp e                                          ; $66d4: $bb
    ld a, e                                       ; $66d5: $7b
    ccf                                           ; $66d6: $3f
    rst $38                                       ; $66d7: $ff
    rst $38                                       ; $66d8: $ff
    nop                                           ; $66d9: $00
    nop                                           ; $66da: $00
    nop                                           ; $66db: $00
    rst $38                                       ; $66dc: $ff
    ld a, [hl-]                                   ; $66dd: $3a
    ld a, [$fafa]                                 ; $66de: $fa $fa $fa
    ld sp, hl                                     ; $66e1: $f9
    ld bc, $fbf9                                  ; $66e2: $01 $f9 $fb
    ei                                            ; $66e5: $fb
    add sp, -$18                                  ; $66e6: $e8 $e8
    pop hl                                        ; $66e8: $e1
    pop hl                                        ; $66e9: $e1
    db $10                                        ; $66ea: $10
    ld [$e000], sp                                ; $66eb: $08 $00 $e0
    ret nz                                        ; $66ee: $c0

    sbc [hl]                                      ; $66ef: $9e
    adc [hl]                                      ; $66f0: $8e
    and d                                         ; $66f1: $a2
    xor d                                         ; $66f2: $aa
    dec b                                         ; $66f3: $05
    ld bc, $3308                                  ; $66f4: $01 $08 $33
    jr nc, jr_09d_6683                            ; $66f7: $30 $8a

    adc d                                         ; $66f9: $8a
    jr nz, jr_09d_6704                            ; $66fa: $20 $08

    adc a                                         ; $66fc: $8f
    db $10                                        ; $66fd: $10
    scf                                           ; $66fe: $37
    nop                                           ; $66ff: $00
    cp b                                          ; $6700: $b8

jr_09d_6701:
    add d                                         ; $6701: $82
    dec b                                         ; $6702: $05
    cp c                                          ; $6703: $b9

jr_09d_6704:
    ld a, [hl-]                                   ; $6704: $3a
    ld h, b                                       ; $6705: $60
    ld h, b                                       ; $6706: $60
    jr jr_09d_6749                                ; $6707: $18 $40

    jr jr_09d_673b                                ; $6709: $18 $30

    ld [$fe01], sp                                ; $670b: $08 $01 $fe
    nop                                           ; $670e: $00
    rst $38                                       ; $670f: $ff
    inc h                                         ; $6710: $24
    rst $38                                       ; $6711: $ff
    inc d                                         ; $6712: $14
    adc b                                         ; $6713: $88
    rst $38                                       ; $6714: $ff
    ld d, h                                       ; $6715: $54
    xor c                                         ; $6716: $a9
    ld [bc], a                                    ; $6717: $02
    or [hl]                                       ; $6718: $b6
    xor l                                         ; $6719: $ad
    ld [bc], a                                    ; $671a: $02
    ld b, b                                       ; $671b: $40
    cp a                                          ; $671c: $bf
    nop                                           ; $671d: $00
    ld [bc], a                                    ; $671e: $02
    rst $38                                       ; $671f: $ff
    inc b                                         ; $6720: $04
    rst $38                                       ; $6721: $ff
    nop                                           ; $6722: $00
    rst $38                                       ; $6723: $ff
    xor l                                         ; $6724: $ad
    rst $38                                       ; $6725: $ff
    db $10                                        ; $6726: $10
    ld e, e                                       ; $6727: $5b
    rst $38                                       ; $6728: $ff
    sub a                                         ; $6729: $97
    cp l                                          ; $672a: $bd
    ld [bc], a                                    ; $672b: $02
    nop                                           ; $672c: $00
    rst $38                                       ; $672d: $ff
    db $10                                        ; $672e: $10
    rst $38                                       ; $672f: $ff
    nop                                           ; $6730: $00
    ld [bc], a                                    ; $6731: $02
    rst $38                                       ; $6732: $ff
    and h                                         ; $6733: $a4
    rst $38                                       ; $6734: $ff
    add hl, bc                                    ; $6735: $09
    rst $38                                       ; $6736: $ff
    jp c, Jump_09d_48ff                           ; $6737: $da $ff $48

    ld a, a                                       ; $673a: $7f

jr_09d_673b:
    call $0402                                    ; $673b: $cd $02 $04
    ei                                            ; $673e: $fb
    ld [de], a                                    ; $673f: $12
    jr jr_09d_6792                                ; $6740: $18 $50

    rst $38                                       ; $6742: $ff
    push bc                                       ; $6743: $c5
    jr nz, @+$01                                  ; $6744: $20 $ff

    or $dd                                        ; $6746: $f6 $dd
    ld [bc], a                                    ; $6748: $02

jr_09d_6749:
    add hl, hl                                    ; $6749: $29
    rst $10                                       ; $674a: $d7
    sub d                                         ; $674b: $92
    rst $28                                       ; $674c: $ef
    push bc                                       ; $674d: $c5
    nop                                           ; $674e: $00
    rst $38                                       ; $674f: $ff
    ld a, [hl-]                                   ; $6750: $3a
    rst $38                                       ; $6751: $ff
    ccf                                           ; $6752: $3f
    db $10                                        ; $6753: $10
    rra                                           ; $6754: $1f
    db $10                                        ; $6755: $10
    rlca                                          ; $6756: $07
    nop                                           ; $6757: $00
    jr jr_09d_6763                                ; $6758: $18 $09

    ld e, $95                                     ; $675a: $1e $95
    ld [$fdd2], a                                 ; $675c: $ea $d2 $fd
    db $e4                                        ; $675f: $e4
    nop                                           ; $6760: $00
    ei                                            ; $6761: $fb
    db $fd                                        ; $6762: $fd

jr_09d_6763:
    rst $38                                       ; $6763: $ff
    or c                                          ; $6764: $b1
    ld a, a                                       ; $6765: $7f
    pop bc                                        ; $6766: $c1
    jr nz, jr_09d_6701                            ; $6767: $20 $98

    nop                                           ; $6769: $00
    ld h, b                                       ; $676a: $60
    dec h                                         ; $676b: $25
    ld hl, sp+$42                                 ; $676c: $f8 $42
    db $fd                                        ; $676e: $fd
    ld d, c                                       ; $676f: $51
    cp $c0                                        ; $6770: $fe $c0
    nop                                           ; $6772: $00
    rst $38                                       ; $6773: $ff
    add b                                         ; $6774: $80
    rst $38                                       ; $6775: $ff
    adc c                                         ; $6776: $89
    rst $38                                       ; $6777: $ff
    and b                                         ; $6778: $a0
    rst $38                                       ; $6779: $ff
    ret nz                                        ; $677a: $c0

    nop                                           ; $677b: $00
    rst $38                                       ; $677c: $ff
    ld [c], a                                     ; $677d: $e2
    rst $38                                       ; $677e: $ff
    rst $10                                       ; $677f: $d7
    jr c, jr_09d_67d1                             ; $6780: $38 $4f

    or b                                          ; $6782: $b0
    sub l                                         ; $6783: $95
    nop                                           ; $6784: $00
    ld a, d                                       ; $6785: $7a
    inc bc                                        ; $6786: $03
    db $fc                                        ; $6787: $fc
    dec e                                         ; $6788: $1d
    ld a, [$fd52]                                 ; $6789: $fa $52 $fd
    ld a, [de]                                    ; $678c: $1a
    nop                                           ; $678d: $00
    rst $38                                       ; $678e: $ff
    ld e, h                                       ; $678f: $5c
    rst $38                                       ; $6790: $ff
    ccf                                           ; $6791: $3f

jr_09d_6792:
    rra                                           ; $6792: $1f
    ld [hl], b                                    ; $6793: $70
    rra                                           ; $6794: $1f
    add l                                         ; $6795: $85
    nop                                           ; $6796: $00
    ld a, [hl-]                                   ; $6797: $3a
    ld c, e                                       ; $6798: $4b
    inc [hl]                                      ; $6799: $34
    ld [$7430], a                                 ; $679a: $ea $30 $74
    and b                                         ; $679d: $a0
    add sp, $00                                   ; $679e: $e8 $00
    ldh a, [rNR33]                                ; $67a0: $f0 $1d
    ldh [rHDMA5], a                               ; $67a2: $e0 $55
    rst $38                                       ; $67a4: $ff
    cp [hl]                                       ; $67a5: $be
    ld b, c                                       ; $67a6: $41
    rst $38                                       ; $67a7: $ff
    xor b                                         ; $67a8: $a8
    call z, $0102                                 ; $67a9: $cc $02 $01
    cp h                                          ; $67ac: $bc
    ld [bc], a                                    ; $67ad: $02
    xor b                                         ; $67ae: $a8
    inc d                                         ; $67af: $14
    ld [bc], a                                    ; $67b0: $02
    ret nc                                        ; $67b1: $d0

    rst $38                                       ; $67b2: $ff
    ld a, [hl+]                                   ; $67b3: $2a
    nop                                           ; $67b4: $00
    rst $38                                       ; $67b5: $ff
    or l                                          ; $67b6: $b5
    ld a, a                                       ; $67b7: $7f
    ld sp, hl                                     ; $67b8: $f9
    ccf                                           ; $67b9: $3f
    ld d, [hl]                                    ; $67ba: $56
    add hl, sp                                    ; $67bb: $39
    rst $38                                       ; $67bc: $ff
    nop                                           ; $67bd: $00
    db $10                                        ; $67be: $10
    ld l, a                                       ; $67bf: $6f
    db $10                                        ; $67c0: $10
    ld e, a                                       ; $67c1: $5f
    jr nc, jr_09d_67df                            ; $67c2: $30 $1b

    rst $38                                       ; $67c4: $ff
    xor l                                         ; $67c5: $ad
    nop                                           ; $67c6: $00
    di                                            ; $67c7: $f3
    ld [hl], d                                    ; $67c8: $72
    pop hl                                        ; $67c9: $e1
    ret c                                         ; $67ca: $d8

    pop hl                                        ; $67cb: $e1
    or d                                          ; $67cc: $b2
    pop bc                                        ; $67cd: $c1
    or l                                          ; $67ce: $b5
    nop                                           ; $67cf: $00
    ret nz                                        ; $67d0: $c0

jr_09d_67d1:
    ld l, e                                       ; $67d1: $6b

jr_09d_67d2:
    add b                                         ; $67d2: $80
    ld a, l                                       ; $67d3: $7d
    add b                                         ; $67d4: $80
    cp a                                          ; $67d5: $bf
    ld h, b                                       ; $67d6: $60
    dec de                                        ; $67d7: $1b

jr_09d_67d8:
    nop                                           ; $67d8: $00
    ldh [$2f], a                                  ; $67d9: $e0 $2f
    ldh a, [rIE]                                  ; $67db: $f0 $ff
    ldh [rVBK], a                                 ; $67dd: $e0 $4f

jr_09d_67df:
    ldh a, [$b5]                                  ; $67df: $f0 $b5
    nop                                           ; $67e1: $00
    ld l, d                                       ; $67e2: $6a
    swap h                                        ; $67e3: $cb $34
    ld h, a                                       ; $67e5: $67
    jr c, jr_09d_67d2                             ; $67e6: $38 $ea

    nop                                           ; $67e8: $00
    db $fc                                        ; $67e9: $fc
    ld hl, $fe00                                  ; $67ea: $21 $00 $fe
    ld [bc], a                                    ; $67ed: $02
    nop                                           ; $67ee: $00
    rst $38                                       ; $67ef: $ff
    nop                                           ; $67f0: $00
    db $fd                                        ; $67f1: $fd
    ld [bc], a                                    ; $67f2: $02
    rst $00                                       ; $67f3: $c7
    nop                                           ; $67f4: $00
    nop                                           ; $67f5: $00
    nop                                           ; $67f6: $00
    ld l, d                                       ; $67f7: $6a
    dec d                                         ; $67f8: $15
    db $f4                                        ; $67f9: $f4
    dec de                                        ; $67fa: $1b
    ld h, d                                       ; $67fb: $62
    dec e                                         ; $67fc: $1d
    db $f4                                        ; $67fd: $f4
    jr nz, jr_09d_681b                            ; $67fe: $20 $1b

    ldh [rBCPS], a                                ; $6800: $e0 $68
    nop                                           ; $6802: $00
    db $db                                        ; $6803: $db
    ccf                                           ; $6804: $3f
    di                                            ; $6805: $f3
    inc e                                         ; $6806: $1c
    ld [hl], a                                    ; $6807: $77
    nop                                           ; $6808: $00
    add b                                         ; $6809: $80
    ld a, $c1                                     ; $680a: $3e $c1

Call_09d_680c:
    sub [hl]                                      ; $680c: $96
    jp hl                                         ; $680d: $e9


    xor b                                         ; $680e: $a8
    rst $10                                       ; $680f: $d7
    sub c                                         ; $6810: $91
    nop                                           ; $6811: $00
    rst $28                                       ; $6812: $ef
    jp $f5ff                                      ; $6813: $c3 $ff $f5


    rst $38                                       ; $6816: $ff
    sbc e                                         ; $6817: $9b
    ld a, a                                       ; $6818: $7f
    ld b, b                                       ; $6819: $40
    ld b, b                                       ; $681a: $40

jr_09d_681b:
    cp a                                          ; $681b: $bf
    xor $08                                       ; $681c: $ee $08
    ld [de], a                                    ; $681e: $12
    rst $38                                       ; $681f: $ff
    xor b                                         ; $6820: $a8
    rst $38                                       ; $6821: $ff
    ld e, a                                       ; $6822: $5f
    rst $38                                       ; $6823: $ff
    ld d, b                                       ; $6824: $50
    xor a                                         ; $6825: $af
    ldh a, [rNR10]                                ; $6826: $f0 $10
    jr nz, jr_09d_67d8                            ; $6828: $20 $ae

    nop                                           ; $682a: $00
    db $10                                        ; $682b: $10
    rst $38                                       ; $682c: $ff
    xor c                                         ; $682d: $a9
    rst $38                                       ; $682e: $ff
    ld b, b                                       ; $682f: $40
    push de                                       ; $6830: $d5
    cp e                                          ; $6831: $bb
    inc de                                        ; $6832: $13
    ld h, l                                       ; $6833: $65
    ld [bc], a                                    ; $6834: $02
    sub $03                                       ; $6835: $d6 $03
    db $ec                                        ; $6837: $ec
    inc bc                                        ; $6838: $03
    nop                                           ; $6839: $00
    ld a, [$7607]                                 ; $683a: $fa $07 $76
    adc e                                         ; $683d: $8b
    xor c                                         ; $683e: $a9
    ld d, a                                       ; $683f: $57
    ld c, e                                       ; $6840: $4b
    cp a                                          ; $6841: $bf
    db $10                                        ; $6842: $10
    and h                                         ; $6843: $a4
    ld e, a                                       ; $6844: $5f
    xor e                                         ; $6845: $ab
    inc h                                         ; $6846: $24
    inc bc                                        ; $6847: $03
    xor h                                         ; $6848: $ac
    ld d, e                                       ; $6849: $53
    ld d, b                                       ; $684a: $50
    xor a                                         ; $684b: $af
    nop                                           ; $684c: $00
    add c                                         ; $684d: $81
    rst $38                                       ; $684e: $ff
    ld d, e                                       ; $684f: $53
    rst $38                                       ; $6850: $ff
    cp a                                          ; $6851: $bf
    ld a, a                                       ; $6852: $7f
    jr nc, @+$21                                  ; $6853: $30 $1f

    nop                                           ; $6855: $00
    ld d, h                                       ; $6856: $54
    rst $38                                       ; $6857: $ff
    xor d                                         ; $6858: $aa
    rst $38                                       ; $6859: $ff
    ld [hl], l                                    ; $685a: $75
    rst $38                                       ; $685b: $ff
    cp a                                          ; $685c: $bf
    rst $08                                       ; $685d: $cf
    nop                                           ; $685e: $00
    adc $87                                       ; $685f: $ce $87
    rst $10                                       ; $6861: $d7
    adc a                                         ; $6862: $8f
    rst $28                                       ; $6863: $ef
    sbc a                                         ; $6864: $9f
    sub d                                         ; $6865: $92
    db $fd                                        ; $6866: $fd
    nop                                           ; $6867: $00
    add hl, sp                                    ; $6868: $39
    rst $38                                       ; $6869: $ff
    ei                                            ; $686a: $fb
    rst $38                                       ; $686b: $ff
    ld e, l                                       ; $686c: $5d
    rst $38                                       ; $686d: $ff
    cp $ff                                        ; $686e: $fe $ff
    nop                                           ; $6870: $00
    ld d, l                                       ; $6871: $55
    xor [hl]                                      ; $6872: $ae
    ld b, $fc                                     ; $6873: $06 $fc
    jp z, $bcfc                                   ; $6875: $ca $fc $bc

    ld a, h                                       ; $6878: $7c
    nop                                           ; $6879: $00
    adc $ff                                       ; $687a: $ce $ff
    and l                                         ; $687c: $a5
    jp $81e3                                      ; $687d: $c3 $e3 $81


    cp [hl]                                       ; $6880: $be
    pop bc                                        ; $6881: $c1
    nop                                           ; $6882: $00
    xor e                                         ; $6883: $ab
    call nc, $fbd4                                ; $6884: $d4 $d4 $fb
    push hl                                       ; $6887: $e5
    rst $38                                       ; $6888: $ff
    sbc a                                         ; $6889: $9f
    ldh [rP1], a                                  ; $688a: $e0 $00
    add b                                         ; $688c: $80
    rra                                           ; $688d: $1f
    ld [hl], e                                    ; $688e: $73
    sbc a                                         ; $688f: $9f
    sbc l                                         ; $6890: $9d
    cp $5a                                        ; $6891: $fe $5a
    ldh [rP1], a                                  ; $6893: $e0 $00
    ld [hl], l                                    ; $6895: $75
    ret nz                                        ; $6896: $c0

    ld e, d                                       ; $6897: $5a
    push hl                                       ; $6898: $e5
    ld b, l                                       ; $6899: $45
    ld a, [$7f98]                                 ; $689a: $fa $98 $7f
    db $10                                        ; $689d: $10
    ld a, a                                       ; $689e: $7f
    rst $38                                       ; $689f: $ff
    and $16                                       ; $68a0: $e6 $16
    ld bc, $f7c8                                  ; $68a2: $01 $c8 $f7
    ld [$80f7], a                                 ; $68a5: $ea $f7 $80
    inc b                                         ; $68a8: $04
    jr @-$02                                      ; $68a9: $18 $fc

    rst $38                                       ; $68ab: $ff
    ld h, [hl]                                    ; $68ac: $66
    rst $38                                       ; $68ad: $ff
    ld [hl+], a                                   ; $68ae: $22
    rst $38                                       ; $68af: $ff
    adc d                                         ; $68b0: $8a
    db $10                                        ; $68b1: $10
    ld [hl], a                                    ; $68b2: $77
    xor d                                         ; $68b3: $aa
    ld [hl], a                                    ; $68b4: $77
    inc b                                         ; $68b5: $04
    jr jr_09d_68b8                                ; $68b6: $18 $00

jr_09d_68b8:
    rst $38                                       ; $68b8: $ff
    cp a                                          ; $68b9: $bf
    ret nz                                        ; $68ba: $c0

    nop                                           ; $68bb: $00
    ccf                                           ; $68bc: $3f
    ret nz                                        ; $68bd: $c0

    cp d                                          ; $68be: $ba
    push bc                                       ; $68bf: $c5
    dec a                                         ; $68c0: $3d
    jp nz, $e19e                                  ; $68c1: $c2 $9e $e1

    nop                                           ; $68c4: $00
    sbc [hl]                                      ; $68c5: $9e
    pop hl                                        ; $68c6: $e1
    inc a                                         ; $68c7: $3c
    jp $ff00                                      ; $68c8: $c3 $00 $ff


    cp $01                                        ; $68cb: $fe $01
    nop                                           ; $68cd: $00
    ld a, [hl]                                    ; $68ce: $7e
    add c                                         ; $68cf: $81
    halt                                          ; $68d0: $76
    adc c                                         ; $68d1: $89
    adc [hl]                                      ; $68d2: $8e
    ld [hl], c                                    ; $68d3: $71
    ld c, $f1                                     ; $68d4: $0e $f1
    ld [$f10e], sp                                ; $68d6: $08 $0e $f1
    ld h, d                                       ; $68d9: $62
    sbc l                                         ; $68da: $9d
    jr c, @+$2a                                   ; $68db: $38 $28

    ld [$c0f7], a                                 ; $68dd: $ea $f7 $c0
    sub c                                         ; $68e0: $91
    ld l, e                                       ; $68e1: $6b
    inc b                                         ; $68e2: $04
    ret nz                                        ; $68e3: $c0

    rst $38                                       ; $68e4: $ff
    jr c, jr_09d_690f                             ; $68e5: $38 $28

    xor d                                         ; $68e7: $aa
    ld [hl], a                                    ; $68e8: $77
    ld [bc], a                                    ; $68e9: $02
    add [hl]                                      ; $68ea: $86
    nop                                           ; $68eb: $00
    ld d, c                                       ; $68ec: $51
    ld [bc], a                                    ; $68ed: $02
    ld a, a                                       ; $68ee: $7f
    inc b                                         ; $68ef: $04
    ld c, c                                       ; $68f0: $49
    or b                                          ; $68f1: $b0
    ld d, c                                       ; $68f2: $51
    rst $38                                       ; $68f3: $ff
    rst $38                                       ; $68f4: $ff
    ld b, l                                       ; $68f5: $45
    ldh a, [$50]                                  ; $68f6: $f0 $50
    ret nz                                        ; $68f8: $c0

    jp nz, $f001                                  ; $68f9: $c2 $01 $f0

    ld d, b                                       ; $68fc: $50
    ld c, e                                       ; $68fd: $4b
    inc [hl]                                      ; $68fe: $34
    push hl                                       ; $68ff: $e5
    ld a, [hl-]                                   ; $6900: $3a
    adc d                                         ; $6901: $8a
    ld [hl], l                                    ; $6902: $75
    nop                                           ; $6903: $00
    ldh [$3f], a                                  ; $6904: $e0 $3f
    or h                                          ; $6906: $b4

jr_09d_6907:
    ld a, a                                       ; $6907: $7f
    ld [$b53f], a                                 ; $6908: $ea $3f $b5
    ld a, a                                       ; $690b: $7f
    nop                                           ; $690c: $00
    ld a, $ff                                     ; $690d: $3e $ff

jr_09d_690f:
    cp e                                          ; $690f: $bb
    ld b, h                                       ; $6910: $44
    ld a, a                                       ; $6911: $7f
    add b                                         ; $6912: $80
    xor d                                         ; $6913: $aa
    ld d, l                                       ; $6914: $55
    nop                                           ; $6915: $00
    ld d, c                                       ; $6916: $51
    xor [hl]                                      ; $6917: $ae
    xor b                                         ; $6918: $a8
    ld d, a                                       ; $6919: $57
    nop                                           ; $691a: $00
    rst $38                                       ; $691b: $ff
    dec h                                         ; $691c: $25
    rst $18                                       ; $691d: $df
    ld bc, $ffaa                                  ; $691e: $01 $aa $ff
    sub $38                                       ; $6921: $d6 $38
    ld b, l                                       ; $6923: $45
    cp b                                          ; $6924: $b8
    sbc [hl]                                      ; $6925: $9e
    ld b, b                                       ; $6926: $40
    inc bc                                        ; $6927: $03
    nop                                           ; $6928: $00
    ld e, e                                       ; $6929: $5b
    db $f4                                        ; $692a: $f4
    and l                                         ; $692b: $a5
    ld a, [$f56a]                                 ; $692c: $fa $6a $f5
    or l                                          ; $692f: $b5
    ld a, [$cd00]                                 ; $6930: $fa $00 $cd
    ccf                                           ; $6933: $3f
    rra                                           ; $6934: $1f
    ld a, a                                       ; $6935: $7f
    ret                                           ; $6936: $c9


    ccf                                           ; $6937: $3f
    ld [hl], l                                    ; $6938: $75
    dec de                                        ; $6939: $1b
    nop                                           ; $693a: $00
    reti                                          ; $693b: $d9


    scf                                           ; $693c: $37
    and h                                         ; $693d: $a4
    ld e, e                                       ; $693e: $5b
    ret nc                                        ; $693f: $d0

    ccf                                           ; $6940: $3f
    ld d, d                                       ; $6941: $52
    db $fd                                        ; $6942: $fd
    nop                                           ; $6943: $00
    ccf                                           ; $6944: $3f
    rst $38                                       ; $6945: $ff
    ld [hl], h                                    ; $6946: $74
    rst $38                                       ; $6947: $ff
    ld a, [hl+]                                   ; $6948: $2a
    db $fd                                        ; $6949: $fd
    ld [hl], h                                    ; $694a: $74
    ei                                            ; $694b: $fb
    nop                                           ; $694c: $00
    xor c                                         ; $694d: $a9
    rst $30                                       ; $694e: $f7
    ld b, h                                       ; $694f: $44
    cp e                                          ; $6950: $bb
    ld h, c                                       ; $6951: $61
    ccf                                           ; $6952: $3f
    ld d, l                                       ; $6953: $55
    ccf                                           ; $6954: $3f
    nop                                           ; $6955: $00
    rst $28                                       ; $6956: $ef
    rst $38                                       ; $6957: $ff
    call c, $b2e3                                 ; $6958: $dc $e3 $b2
    pop bc                                        ; $695b: $c1
    ld h, e                                       ; $695c: $63
    add b                                         ; $695d: $80
    nop                                           ; $695e: $00
    xor c                                         ; $695f: $a9
    ret nz                                        ; $6960: $c0

    push af                                       ; $6961: $f5
    add b                                         ; $6962: $80
    ld e, d                                       ; $6963: $5a
    add b                                         ; $6964: $80
    db $fd                                        ; $6965: $fd
    add b                                         ; $6966: $80
    nop                                           ; $6967: $00
    ret c                                         ; $6968: $d8

    rst $38                                       ; $6969: $ff
    sub l                                         ; $696a: $95
    rst $38                                       ; $696b: $ff
    sub [hl]                                      ; $696c: $96
    ld sp, hl                                     ; $696d: $f9
    ld a, l                                       ; $696e: $7d
    ldh [rP1], a                                  ; $696f: $e0 $00
    ld d, l                                       ; $6971: $55
    ldh [$2f], a                                  ; $6972: $e0 $2f
    ret nc                                        ; $6974: $d0

    rst $18                                       ; $6975: $df
    ld h, b                                       ; $6976: $60
    xor d                                         ; $6977: $aa
    ld d, l                                       ; $6978: $55
    nop                                           ; $6979: $00
    and b                                         ; $697a: $a0
    rst $38                                       ; $697b: $ff
    ld hl, sp-$01                                 ; $697c: $f8 $ff
    sbc c                                         ; $697e: $99
    rst $20                                       ; $697f: $e7
    ld b, e                                       ; $6980: $43
    add b                                         ; $6981: $80
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    add b                                         ; $6984: $80
    jr nz, jr_09d_6907                            ; $6985: $20 $80

    ld d, l                                       ; $6987: $55
    add b                                         ; $6988: $80
    ld a, [hl+]                                   ; $6989: $2a
    ret nz                                        ; $698a: $c0

    ld b, b                                       ; $698b: $40
    xor d                                         ; $698c: $aa
    ld [de], a                                    ; $698d: $12
    ld bc, $e39c                                  ; $698e: $01 $9c $e3
    ld [c], a                                     ; $6991: $e2
    add c                                         ; $6992: $81
    ld c, e                                       ; $6993: $4b
    add b                                         ; $6994: $80
    nop                                           ; $6995: $00
    ld [hl], l                                    ; $6996: $75
    add b                                         ; $6997: $80
    ld a, d                                       ; $6998: $7a
    add c                                         ; $6999: $81
    sbc $a1                                       ; $699a: $de $a1
    ld e, [hl]                                    ; $699c: $5e
    and b                                         ; $699d: $a0
    ld [bc], a                                    ; $699e: $02
    or a                                          ; $699f: $b7
    ret nz                                        ; $69a0: $c0

    ld e, l                                       ; $69a1: $5d
    and b                                         ; $69a2: $a0
    cp a                                          ; $69a3: $bf
    ret nz                                        ; $69a4: $c0

    or [hl]                                       ; $69a5: $b6
    inc bc                                        ; $69a6: $03
    ldh a, [rP1]                                  ; $69a7: $f0 $00
    sub l                                         ; $69a9: $95
    ld [$d5ea], a                                 ; $69aa: $ea $ea $d5
    call nz, $c07b                                ; $69ad: $c4 $7b $c0
    ld a, a                                       ; $69b0: $7f
    db $10                                        ; $69b1: $10
    xor c                                         ; $69b2: $a9
    ld a, a                                       ; $69b3: $7f
    ld [hl], h                                    ; $69b4: $74
    ld a, h                                       ; $69b5: $7c
    ld bc, $ff60                                  ; $69b6: $01 $60 $ff
    bit 6, h                                      ; $69b9: $cb $74
    nop                                           ; $69bb: $00
    ld d, l                                       ; $69bc: $55
    ld [$a05d], a                                 ; $69bd: $ea $5d $a0
    xor e                                         ; $69c0: $ab
    call nc, $ff83                                ; $69c1: $d4 $83 $ff
    nop                                           ; $69c4: $00
    sub e                                         ; $69c5: $93
    db $fc                                        ; $69c6: $fc
    db $f4                                        ; $69c7: $f4
    ld hl, sp+$78                                 ; $69c8: $f8 $78
    ldh a, [rNR33]                                ; $69ca: $f0 $1d
    ldh a, [rP1]                                  ; $69cc: $f0 $00
    adc [hl]                                      ; $69ce: $8e
    ld [hl], b                                    ; $69cf: $70
    sbc [hl]                                      ; $69d0: $9e
    pop hl                                        ; $69d1: $e1
    cpl                                           ; $69d2: $2f
    ret nc                                        ; $69d3: $d0

    add c                                         ; $69d4: $81
    cp $00                                        ; $69d5: $fe $00
    ld a, a                                       ; $69d7: $7f
    rst $38                                       ; $69d8: $ff
    xor d                                         ; $69d9: $aa
    push de                                       ; $69da: $d5
    ldh [$80], a                                  ; $69db: $e0 $80
    ld [$0080], a                                 ; $69dd: $ea $80 $00
    ld a, a                                       ; $69e0: $7f
    rst $38                                       ; $69e1: $ff
    adc $31                                       ; $69e2: $ce $31
    cp $01                                        ; $69e4: $fe $01
    ld d, h                                       ; $69e6: $54
    xor e                                         ; $69e7: $ab
    db $10                                        ; $69e8: $10
    rst $38                                       ; $69e9: $ff
    rst $38                                       ; $69ea: $ff
    xor d                                         ; $69eb: $aa
    ld c, a                                       ; $69ec: $4f
    inc b                                         ; $69ed: $04
    xor d                                         ; $69ee: $aa
    nop                                           ; $69ef: $00
    rst $38                                       ; $69f0: $ff
    rst $38                                       ; $69f1: $ff
    nop                                           ; $69f2: $00
    ld [$6eff], a                                 ; $69f3: $ea $ff $6e
    sub c                                         ; $69f6: $91
    ld d, a                                       ; $69f7: $57
    xor b                                         ; $69f8: $a8
    sbc c                                         ; $69f9: $99
    ld h, [hl]                                    ; $69fa: $66
    ld h, b                                       ; $69fb: $60
    ld [hl], e                                    ; $69fc: $73
    ld l, $0b                                     ; $69fd: $2e $0b
    ld [hl], d                                    ; $69ff: $72
    dec b                                         ; $6a00: $05
    xor d                                         ; $6a01: $aa
    rst $38                                       ; $6a02: $ff
    rst $18                                       ; $6a03: $df
    jr nz, @-$56                                  ; $6a04: $20 $a8

    ld [$5d57], sp                                ; $6a06: $08 $57 $5d
    and d                                         ; $6a09: $a2
    or h                                          ; $6a0a: $b4
    db $10                                        ; $6a0b: $10
    jr z, @-$29                                   ; $6a0c: $28 $d5

    add b                                         ; $6a0e: $80
    ret nz                                        ; $6a0f: $c0

    db $fc                                        ; $6a10: $fc
    jr c, jr_09d_6a1b                             ; $6a11: $38 $08

    ld b, b                                       ; $6a13: $40
    jr z, jr_09d_6a4e                             ; $6a14: $28 $38

    jr z, jr_09d_6a58                             ; $6a16: $28 $40

    jr z, @+$73                                   ; $6a18: $28 $71

    ld b, l                                       ; $6a1a: $45

jr_09d_6a1b:
    ld a, h                                       ; $6a1b: $7c
    dec d                                         ; $6a1c: $15
    rrca                                          ; $6a1d: $0f
    ld hl, sp+$00                                 ; $6a1e: $f8 $00
    add a                                         ; $6a20: $87
    ld hl, sp-$0c                                 ; $6a21: $f8 $f4
    adc b                                         ; $6a23: $88
    ld sp, hl                                     ; $6a24: $f9
    rst $38                                       ; $6a25: $ff
    db $fc                                        ; $6a26: $fc
    add e                                         ; $6a27: $83
    dec b                                         ; $6a28: $05
    ld d, a                                       ; $6a29: $57
    xor b                                         ; $6a2a: $a8
    rst $38                                       ; $6a2b: $ff
    add b                                         ; $6a2c: $80
    dec c                                         ; $6a2d: $0d
    add h                                         ; $6a2e: $84
    inc bc                                        ; $6a2f: $03
    cp $c8                                        ; $6a30: $fe $c8
    dec b                                         ; $6a32: $05
    nop                                           ; $6a33: $00
    ld d, c                                       ; $6a34: $51
    rst $38                                       ; $6a35: $ff
    or $09                                        ; $6a36: $f6 $09
    db $dd                                        ; $6a38: $dd
    ld [hl+], a                                   ; $6a39: $22
    cp e                                          ; $6a3a: $bb
    ld b, h                                       ; $6a3b: $44
    ld b, b                                       ; $6a3c: $40
    ld [hl-], a                                   ; $6a3d: $32
    jr nc, jr_09d_6a60                            ; $6a3e: $30 $20

    ld d, $ff                                     ; $6a40: $16 $ff
    rst $28                                       ; $6a42: $ef
    db $10                                        ; $6a43: $10
    sbc l                                         ; $6a44: $9d
    ld h, d                                       ; $6a45: $62
    db $10                                        ; $6a46: $10
    halt                                          ; $6a47: $76
    adc c                                         ; $6a48: $89
    ld a, [hl+]                                   ; $6a49: $2a
    ld b, b                                       ; $6a4a: $40
    jr nz, jr_09d_6a66                            ; $6a4b: $20 $19

    rst $38                                       ; $6a4d: $ff

jr_09d_6a4e:
    ei                                            ; $6a4e: $fb
    inc b                                         ; $6a4f: $04
    dec b                                         ; $6a50: $05
    ld c, h                                       ; $6a51: $4c
    or e                                          ; $6a52: $b3
    or [hl]                                       ; $6a53: $b6
    ld c, c                                       ; $6a54: $49
    ld bc, $061f                                  ; $6a55: $01 $1f $06

jr_09d_6a58:
    add [hl]                                      ; $6a58: $86
    inc hl                                        ; $6a59: $23
    ld b, $51                                     ; $6a5a: $06 $51
    jp nc, $1627                                  ; $6a5c: $d2 $27 $16

    push af                                       ; $6a5f: $f5

jr_09d_6a60:
    inc a                                         ; $6a60: $3c
    ld [bc], a                                    ; $6a61: $02
    rst $38                                       ; $6a62: $ff
    rst $38                                       ; $6a63: $ff
    cp e                                          ; $6a64: $bb
    inc sp                                        ; $6a65: $33

jr_09d_6a66:
    ld d, $51                                     ; $6a66: $16 $51
    ld e, a                                       ; $6a68: $5f
    add hl, sp                                    ; $6a69: $39
    ld [hl], $37                                  ; $6a6a: $36 $37
    ld b, e                                       ; $6a6c: $43
    ld b, $2c                                     ; $6a6d: $06 $2c
    rst $38                                       ; $6a6f: $ff
    sub $49                                       ; $6a70: $d6 $49
    ld [hl], $44                                  ; $6a72: $36 $44
    ld a, b                                       ; $6a74: $78
    ld d, e                                       ; $6a75: $53
    ld b, $f7                                     ; $6a76: $06 $f7
    rst $38                                       ; $6a78: $ff
    sbc l                                         ; $6a79: $9d
    ld e, c                                       ; $6a7a: $59
    ld h, $da                                     ; $6a7b: $26 $da
    rst $38                                       ; $6a7d: $ff
    ld bc, $a857                                  ; $6a7e: $01 $57 $a8
    xor e                                         ; $6a81: $ab
    ld d, h                                       ; $6a82: $54
    ld a, c                                       ; $6a83: $79
    add [hl]                                      ; $6a84: $86
    pop de                                        ; $6a85: $d1
    ret nc                                        ; $6a86: $d0

    stop                                          ; $6a87: $10 $00
    ld [$8c08], sp                                ; $6a89: $08 $08 $8c
    rst $38                                       ; $6a8c: $ff
    db $ed                                        ; $6a8d: $ed
    inc de                                        ; $6a8e: $13
    ld d, [hl]                                    ; $6a8f: $56
    cp c                                          ; $6a90: $b9
    nop                                           ; $6a91: $00
    ld l, d                                       ; $6a92: $6a
    sub l                                         ; $6a93: $95
    ld d, l                                       ; $6a94: $55
    ei                                            ; $6a95: $fb
    xor $11                                       ; $6a96: $ee $11
    inc [hl]                                      ; $6a98: $34
    dec de                                        ; $6a99: $1b
    inc b                                         ; $6a9a: $04
    inc de                                        ; $6a9b: $13
    dec e                                         ; $6a9c: $1d
    jr c, jr_09d_6ac7                             ; $6a9d: $38 $28

    ld a, b                                       ; $6a9f: $78
    ld [bc], a                                    ; $6aa0: $02
    jr jr_09d_6ac3                                ; $6aa1: $18 $20

    ld h, b                                       ; $6aa3: $60
    add b                                         ; $6aa4: $80
    inc l                                         ; $6aa5: $2c
    ld d, $26                                     ; $6aa6: $16 $26
    add hl, de                                    ; $6aa8: $19

jr_09d_6aa9:
    dec bc                                        ; $6aa9: $0b
    dec d                                         ; $6aaa: $15
    inc [hl]                                      ; $6aab: $34
    dec de                                        ; $6aac: $1b
    rra                                           ; $6aad: $1f
    nop                                           ; $6aae: $00
    ld de, $152b                                  ; $6aaf: $11 $2b $15
    inc d                                         ; $6ab2: $14
    dec de                                        ; $6ab3: $1b
    ld a, [hl+]                                   ; $6ab4: $2a
    dec d                                         ; $6ab5: $15
    rla                                           ; $6ab6: $17
    ld b, b                                       ; $6ab7: $40
    add hl, de                                    ; $6ab8: $19
    ld b, c                                       ; $6ab9: $41
    ld e, $52                                     ; $6aba: $1e $52
    db $fd                                        ; $6abc: $fd
    scf                                           ; $6abd: $37
    ret z                                         ; $6abe: $c8

    ld l, h                                       ; $6abf: $6c
    sub e                                         ; $6ac0: $93
    nop                                           ; $6ac1: $00
    db $db                                        ; $6ac2: $db

jr_09d_6ac3:
    inc h                                         ; $6ac3: $24
    dec [hl]                                      ; $6ac4: $35
    rst $38                                       ; $6ac5: $ff
    inc l                                         ; $6ac6: $2c

jr_09d_6ac7:
    inc de                                        ; $6ac7: $13
    add hl, de                                    ; $6ac8: $19
    rla                                           ; $6ac9: $17
    nop                                           ; $6aca: $00

jr_09d_6acb:
    inc l                                         ; $6acb: $2c
    inc de                                        ; $6acc: $13
    rst $00                                       ; $6acd: $c7
    rst $38                                       ; $6ace: $ff
    ld a, a                                       ; $6acf: $7f
    add c                                         ; $6ad0: $81
    jp hl                                         ; $6ad1: $e9


    rla                                           ; $6ad2: $17
    inc d                                         ; $6ad3: $14
    cp [hl]                                       ; $6ad4: $be
    ld b, c                                       ; $6ad5: $41
    inc d                                         ; $6ad6: $14
    cp a                                          ; $6ad7: $bf
    ld b, $3e                                     ; $6ad8: $06 $3e
    jp $8d06                                      ; $6ada: $c3 $06 $8d


    rst $38                                       ; $6add: $ff
    ld h, h                                       ; $6ade: $64
    ld [hl], a                                    ; $6adf: $77
    ret                                           ; $6ae0: $c9


    ld [hl], $4d                                  ; $6ae1: $36 $4d
    ld bc, $b7ff                                  ; $6ae3: $01 $ff $b7
    rst $10                                       ; $6ae6: $d7
    ld d, $af                                     ; $6ae7: $16 $af
    rst $38                                       ; $6ae9: $ff
    ld b, b                                       ; $6aea: $40
    rst $18                                       ; $6aeb: $df
    or h                                          ; $6aec: $b4
    db $10                                        ; $6aed: $10
    pop af                                        ; $6aee: $f1
    rst $38                                       ; $6aef: $ff
    push bc                                       ; $6af0: $c5
    ei                                            ; $6af1: $fb
    sbc l                                         ; $6af2: $9d
    db $e3                                        ; $6af3: $e3
    jr nz, jr_09d_6aa9                            ; $6af4: $20 $b3

    rst $08                                       ; $6af6: $cf
    jr nc, jr_09d_6b05                            ; $6af7: $30 $0c

    rst $20                                       ; $6af9: $e7
    ld hl, sp+$28                                 ; $6afa: $f8 $28
    ldh a, [$71]                                  ; $6afc: $f0 $71
    nop                                           ; $6afe: $00
    jr nz, jr_09d_6acb                            ; $6aff: $20 $ca

    jr nc, jr_09d_6b58                            ; $6b01: $30 $55

    and b                                         ; $6b03: $a0
    sbc [hl]                                      ; $6b04: $9e

jr_09d_6b05:
    ld h, b                                       ; $6b05: $60
    ccf                                           ; $6b06: $3f
    nop                                           ; $6b07: $00
    ldh [$7f], a                                  ; $6b08: $e0 $7f
    ldh [$c2], a                                  ; $6b0a: $e0 $c2
    inc a                                         ; $6b0c: $3c
    dec [hl]                                      ; $6b0d: $35
    inc c                                         ; $6b0e: $0c
    ld a, [de]                                    ; $6b0f: $1a
    nop                                           ; $6b10: $00
    inc b                                         ; $6b11: $04
    adc a                                         ; $6b12: $8f
    inc b                                         ; $6b13: $04
    add hl, de                                    ; $6b14: $19
    ld b, $ac                                     ; $6b15: $06 $ac
    rlca                                          ; $6b17: $07
    ld e, e                                       ; $6b18: $5b
    nop                                           ; $6b19: $00
    rlca                                          ; $6b1a: $07
    xor d                                         ; $6b1b: $aa
    rlca                                          ; $6b1c: $07
    cp c                                          ; $6b1d: $b9
    ret nz                                        ; $6b1e: $c0

    ldh [$80], a                                  ; $6b1f: $e0 $80
    ld c, b                                       ; $6b21: $48
    ld [$d580], sp                                ; $6b22: $08 $80 $d5
    add b                                         ; $6b25: $80
    ld l, d                                       ; $6b26: $6a
    cp h                                          ; $6b27: $bc
    inc bc                                        ; $6b28: $03
    ld [hl], a                                    ; $6b29: $77
    add b                                         ; $6b2a: $80
    ld e, [hl]                                    ; $6b2b: $5e
    nop                                           ; $6b2c: $00
    add b                                         ; $6b2d: $80
    db $e4                                        ; $6b2e: $e4
    rra                                           ; $6b2f: $1f
    ld [hl], $0f                                  ; $6b30: $36 $0f
    dec d                                         ; $6b32: $15
    ld c, $02                                     ; $6b33: $0e $02
    nop                                           ; $6b35: $00
    inc c                                         ; $6b36: $0c
    sub a                                         ; $6b37: $97
    inc c                                         ; $6b38: $0c
    ld c, e                                       ; $6b39: $4b
    inc b                                         ; $6b3a: $04
    xor a                                         ; $6b3b: $af
    inc b                                         ; $6b3c: $04
    ret                                           ; $6b3d: $c9


    nop                                           ; $6b3e: $00
    ld b, $af                                     ; $6b3f: $06 $af
    ldh a, [$57]                                  ; $6b41: $f0 $57
    add sp, -$51                                  ; $6b43: $e8 $af
    ld [hl], b                                    ; $6b45: $70
    add l                                         ; $6b46: $85
    nop                                           ; $6b47: $00
    ld a, d                                       ; $6b48: $7a
    ld h, d                                       ; $6b49: $62
    dec a                                         ; $6b4a: $3d
    push de                                       ; $6b4b: $d5
    ld a, [hl-]                                   ; $6b4c: $3a
    ld l, d                                       ; $6b4d: $6a
    dec a                                         ; $6b4e: $3d
    push af                                       ; $6b4f: $f5
    nop                                           ; $6b50: $00
    ccf                                           ; $6b51: $3f
    ldh a, [rIF]                                  ; $6b52: $f0 $0f
    ld [$f317], a                                 ; $6b54: $ea $17 $f3
    rrca                                          ; $6b57: $0f

jr_09d_6b58:
    ld d, [hl]                                    ; $6b58: $56
    nop                                           ; $6b59: $00
    cp a                                          ; $6b5a: $bf
    and a                                         ; $6b5b: $a7
    ld a, b                                       ; $6b5c: $78
    add hl, bc                                    ; $6b5d: $09
    ldh a, [$b0]                                  ; $6b5e: $f0 $b0
    ldh [$72], a                                  ; $6b60: $e0 $72
    nop                                           ; $6b62: $00
    ldh [$7f], a                                  ; $6b63: $e0 $7f
    add b                                         ; $6b65: $80
    ld [hl], l                                    ; $6b66: $75
    add d                                         ; $6b67: $82
    ld e, a                                       ; $6b68: $5f
    and b                                         ; $6b69: $a0
    ld a, a                                       ; $6b6a: $7f
    nop                                           ; $6b6b: $00
    add b                                         ; $6b6c: $80
    ld l, l                                       ; $6b6d: $6d
    sub d                                         ; $6b6e: $92
    scf                                           ; $6b6f: $37
    ret z                                         ; $6b70: $c8

    xor e                                         ; $6b71: $ab
    call nc, $0016                                ; $6b72: $d4 $16 $00
    jp hl                                         ; $6b75: $e9


    rst $28                                       ; $6b76: $ef
    inc b                                         ; $6b77: $04
    xor l                                         ; $6b78: $ad
    ld b, $f8                                     ; $6b79: $06 $f8
    rlca                                          ; $6b7b: $07
    cp l                                          ; $6b7c: $bd
    nop                                           ; $6b7d: $00
    ld b, [hl]                                    ; $6b7e: $46
    ld a, d                                       ; $6b7f: $7a
    rlca                                          ; $6b80: $07
    db $eb                                        ; $6b81: $eb
    rla                                           ; $6b82: $17
    ld a, a                                       ; $6b83: $7f
    add a                                         ; $6b84: $87
    ldh a, [rP1]                                  ; $6b85: $f0 $00
    rrca                                          ; $6b87: $0f
    ei                                            ; $6b88: $fb
    ccf                                           ; $6b89: $3f
    ld [c], a                                     ; $6b8a: $e2
    ccf                                           ; $6b8b: $3f
    jp hl                                         ; $6b8c: $e9


    jr nc, jr_09d_6bdf                            ; $6b8d: $30 $50

    nop                                           ; $6b8f: $00
    and b                                         ; $6b90: $a0
    and b                                         ; $6b91: $a0
    ld h, b                                       ; $6b92: $60
    ld d, h                                       ; $6b93: $54
    ldh [$fa], a                                  ; $6b94: $e0 $fa
    ldh [rIF], a                                  ; $6b96: $e0 $0f
    nop                                           ; $6b98: $00
    ldh a, [$fd]                                  ; $6b99: $f0 $fd
    ldh [$be], a                                  ; $6b9b: $e0 $be
    ldh [$ad], a                                  ; $6b9d: $e0 $ad
    ld [hl], b                                    ; $6b9f: $70
    sbc $00                                       ; $6ba0: $de $00
    jr nz, jr_09d_6c13                            ; $6ba2: $20 $6f

    jr nc, jr_09d_6bbc                            ; $6ba4: $30 $16

    jr z, @-$53                                   ; $6ba6: $28 $ab

    inc [hl]                                      ; $6ba8: $34
    ld d, l                                       ; $6ba9: $55
    nop                                           ; $6baa: $00
    ld a, [hl+]                                   ; $6bab: $2a
    xor e                                         ; $6bac: $ab
    call nc, $ead5                                ; $6bad: $d4 $d5 $ea
    and d                                         ; $6bb0: $a2
    db $fd                                        ; $6bb1: $fd
    pop de                                        ; $6bb2: $d1
    nop                                           ; $6bb3: $00
    cp $e8                                        ; $6bb4: $fe $e8
    ld a, a                                       ; $6bb6: $7f
    dec a                                         ; $6bb7: $3d
    ld a, a                                       ; $6bb8: $7f
    ld b, a                                       ; $6bb9: $47
    ld a, a                                       ; $6bba: $7f
    sub [hl]                                      ; $6bbb: $96

jr_09d_6bbc:
    nop                                           ; $6bbc: $00
    ld h, c                                       ; $6bbd: $61
    and l                                         ; $6bbe: $a5
    ld e, [hl]                                    ; $6bbf: $5e
    ld d, d                                       ; $6bc0: $52
    xor a                                         ; $6bc1: $af
    and [hl]                                      ; $6bc2: $a6
    ld e, a                                       ; $6bc3: $5f
    ld b, a                                       ; $6bc4: $47
    jr nz, @-$3f                                  ; $6bc5: $20 $bf

    rrca                                          ; $6bc7: $0f
    ld [bc], a                                    ; $6bc8: $02
    dec c                                         ; $6bc9: $0d
    ld hl, sp-$66                                 ; $6bca: $f8 $9a
    ldh [$b5], a                                  ; $6bcc: $e0 $b5
    ld l, d                                       ; $6bce: $6a
    nop                                           ; $6bcf: $00
    ld a, [hl+]                                   ; $6bd0: $2a
    push af                                       ; $6bd1: $f5
    or l                                          ; $6bd2: $b5
    cp $7a                                        ; $6bd3: $fe $7a
    rst $38                                       ; $6bd5: $ff
    jp z, Jump_000_00f5                           ; $6bd6: $ca $f5 $00

    sbc a                                         ; $6bd9: $9f
    ldh [$b8], a                                  ; $6bda: $e0 $b8
    ret nz                                        ; $6bdc: $c0

    or h                                          ; $6bdd: $b4
    ret nz                                        ; $6bde: $c0

jr_09d_6bdf:
    xor d                                         ; $6bdf: $aa
    dec [hl]                                      ; $6be0: $35
    nop                                           ; $6be1: $00
    pop bc                                        ; $6be2: $c1
    ld a, $64                                     ; $6be3: $3e $64
    cp e                                          ; $6be5: $bb
    ld a, [c]                                     ; $6be6: $f2
    db $fd                                        ; $6be7: $fd
    cp d                                          ; $6be8: $ba
    ld a, a                                       ; $6be9: $7f
    nop                                           ; $6bea: $00
    call c, Call_09d_4a3f                         ; $6beb: $dc $3f $4a
    inc a                                         ; $6bee: $3c
    inc h                                         ; $6bef: $24
    jr jr_09d_6c1c                                ; $6bf0: $18 $2a

    push de                                       ; $6bf2: $d5
    nop                                           ; $6bf3: $00
    ld a, a                                       ; $6bf4: $7f
    add b                                         ; $6bf5: $80
    ld d, [hl]                                    ; $6bf6: $56
    xor c                                         ; $6bf7: $a9
    ld a, a                                       ; $6bf8: $7f
    add b                                         ; $6bf9: $80
    ld a, l                                       ; $6bfa: $7d
    add d                                         ; $6bfb: $82
    nop                                           ; $6bfc: $00
    ld l, d                                       ; $6bfd: $6a
    sub l                                         ; $6bfe: $95
    ld a, a                                       ; $6bff: $7f
    add b                                         ; $6c00: $80
    ld a, [hl+]                                   ; $6c01: $2a
    push de                                       ; $6c02: $d5
    db $fd                                        ; $6c03: $fd
    db $fd                                        ; $6c04: $fd
    nop                                           ; $6c05: $00
    ld hl, sp-$08                                 ; $6c06: $f8 $f8
    db $e4                                        ; $6c08: $e4
    db $e4                                        ; $6c09: $e4
    add c                                         ; $6c0a: $81
    ld bc, $3d7d                                  ; $6c0b: $01 $7d $3d
    nop                                           ; $6c0e: $00
    ld [c], a                                     ; $6c0f: $e2
    push bc                                       ; $6c10: $c5
    and b                                         ; $6c11: $a0
    add b                                         ; $6c12: $80

jr_09d_6c13:
    call nz, Call_000_0684                        ; $6c13: $c4 $84 $06
    ld b, $c8                                     ; $6c16: $06 $c8
    ld [hl], b                                    ; $6c18: $70
    rla                                           ; $6c19: $17
    ld [hl], c                                    ; $6c1a: $71
    rlca                                          ; $6c1b: $07

jr_09d_6c1c:
    cp l                                          ; $6c1c: $bd
    ld b, d                                       ; $6c1d: $42
    ret nc                                        ; $6c1e: $d0

    rlca                                          ; $6c1f: $07
    jr nz, @+$04                                  ; $6c20: $20 $02

    ld [bc], a                                    ; $6c22: $02
    ld de, $0101                                  ; $6c23: $11 $01 $01
    ld b, b                                       ; $6c26: $40
    adc a                                         ; $6c27: $8f
    rlca                                          ; $6c28: $07
    ld a, [bc]                                    ; $6c29: $0a
    add hl, de                                    ; $6c2a: $19
    db $10                                        ; $6c2b: $10
    sub h                                         ; $6c2c: $94
    rlca                                          ; $6c2d: $07
    add b                                         ; $6c2e: $80
    and d                                         ; $6c2f: $a2
    add hl, bc                                    ; $6c30: $09
    nop                                           ; $6c31: $00
    nop                                           ; $6c32: $00
    inc c                                         ; $6c33: $0c
    inc e                                         ; $6c34: $1c
    ld [hl+], a                                   ; $6c35: $22
    nop                                           ; $6c36: $00
    or e                                          ; $6c37: $b3
    nop                                           ; $6c38: $00
    db $10                                        ; $6c39: $10
    and b                                         ; $6c3a: $a0
    jr nc, jr_09d_6c44                            ; $6c3b: $30 $07

    inc bc                                        ; $6c3d: $03
    ld bc, $9801                                  ; $6c3e: $01 $01 $98
    db $10                                        ; $6c41: $10
    jr @+$6a                                      ; $6c42: $18 $68

jr_09d_6c44:
    ld l, b                                       ; $6c44: $68
    push bc                                       ; $6c45: $c5
    rrca                                          ; $6c46: $0f
    sbc b                                         ; $6c47: $98
    sbc b                                         ; $6c48: $98
    ret nz                                        ; $6c49: $c0

    ret nz                                        ; $6c4a: $c0

    ld [bc], a                                    ; $6c4b: $02
    nop                                           ; $6c4c: $00
    nop                                           ; $6c4d: $00
    add [hl]                                      ; $6c4e: $86
    ld bc, $0101                                  ; $6c4f: $01 $01 $01

jr_09d_6c52:
    ld [hl+], a                                   ; $6c52: $22
    ld [$0000], sp                                ; $6c53: $08 $00 $00
    nop                                           ; $6c56: $00
    ld [bc], a                                    ; $6c57: $02
    ld [bc], a                                    ; $6c58: $02
    jr z, jr_09d_6c8f                             ; $6c59: $28 $34

    jp hl                                         ; $6c5b: $e9


    add hl, bc                                    ; $6c5c: $09
    ld a, [bc]                                    ; $6c5d: $0a
    nop                                           ; $6c5e: $00
    ld a, [bc]                                    ; $6c5f: $0a
    ld bc, $1401                                  ; $6c60: $01 $01 $14
    inc d                                         ; $6c63: $14
    inc b                                         ; $6c64: $04
    inc b                                         ; $6c65: $04
    stop                                          ; $6c66: $10 $00
    db $10                                        ; $6c68: $10
    ld bc, $5940                                  ; $6c69: $01 $40 $59
    ld [$32a0], sp                                ; $6c6c: $08 $a0 $32
    adc h                                         ; $6c6f: $8c
    add b                                         ; $6c70: $80
    db $fc                                        ; $6c71: $fc
    ld c, $10                                     ; $6c72: $0e $10
    jr nz, @+$22                                  ; $6c74: $20 $20

    ld b, b                                       ; $6c76: $40
    ld b, b                                       ; $6c77: $40
    ld h, h                                       ; $6c78: $64
    ld b, b                                       ; $6c79: $40
    nop                                           ; $6c7a: $00
    nop                                           ; $6c7b: $00
    inc h                                         ; $6c7c: $24
    ld b, d                                       ; $6c7d: $42
    nop                                           ; $6c7e: $00
    ld b, c                                       ; $6c7f: $41
    jr nz, @+$1f                                  ; $6c80: $20 $1d

    add l                                         ; $6c82: $85
    inc b                                         ; $6c83: $04
    ld b, c                                       ; $6c84: $41
    ld bc, $4808                                  ; $6c85: $01 $08 $48
    ld b, b                                       ; $6c88: $40
    db $dd                                        ; $6c89: $dd
    rlca                                          ; $6c8a: $07
    add d                                         ; $6c8b: $82
    add d                                         ; $6c8c: $82
    ld [bc], a                                    ; $6c8d: $02
    ld b, b                                       ; $6c8e: $40

jr_09d_6c8f:
    ld b, b                                       ; $6c8f: $40
    ld h, b                                       ; $6c90: $60
    sub b                                         ; $6c91: $90
    add b                                         ; $6c92: $80
    add b                                         ; $6c93: $80
    ld [hl], b                                    ; $6c94: $70
    ld [$0621], sp                                ; $6c95: $08 $21 $06
    ld hl, $2424                                  ; $6c98: $21 $24 $24
    add hl, bc                                    ; $6c9b: $09
    add hl, bc                                    ; $6c9c: $09
    ld c, d                                       ; $6c9d: $4a
    jr jr_09d_6c52                                ; $6c9e: $18 $b2

    ld a, [hl-]                                   ; $6ca0: $3a
    ld [bc], a                                    ; $6ca1: $02
    inc b                                         ; $6ca2: $04
    ld bc, $100c                                  ; $6ca3: $01 $0c $10
    ld [bc], a                                    ; $6ca6: $02
    ld [bc], a                                    ; $6ca7: $02
    jp nz, $011a                                  ; $6ca8: $c2 $1a $01

    ld hl, $4018                                  ; $6cab: $21 $18 $40
    add b                                         ; $6cae: $80
    db $10                                        ; $6caf: $10
    ld c, $00                                     ; $6cb0: $0e $00
    xor c                                         ; $6cb2: $a9
    nop                                           ; $6cb3: $00
    add b                                         ; $6cb4: $80
    swap h                                        ; $6cb5: $cb $34
    inc c                                         ; $6cb7: $0c
    inc b                                         ; $6cb8: $04
    add h                                         ; $6cb9: $84
    xor b                                         ; $6cba: $a8
    jr z, jr_09d_6cfa                             ; $6cbb: $28 $3d

    ld b, $03                                     ; $6cbd: $06 $03
    db $10                                        ; $6cbf: $10
    ld hl, $0122                                  ; $6cc0: $21 $22 $01
    ld e, b                                       ; $6cc3: $58
    and [hl]                                      ; $6cc4: $a6
    ret z                                         ; $6cc5: $c8

    ret z                                         ; $6cc6: $c8

    nop                                           ; $6cc7: $00
    nop                                           ; $6cc8: $00
    inc b                                         ; $6cc9: $04
    rlca                                          ; $6cca: $07
    ld b, $00                                     ; $6ccb: $06 $00
    nop                                           ; $6ccd: $00
    rst $38                                       ; $6cce: $ff
    ld h, b                                       ; $6ccf: $60
    db $10                                        ; $6cd0: $10
    add d                                         ; $6cd1: $82
    ld b, d                                       ; $6cd2: $42
    add h                                         ; $6cd3: $84
    add h                                         ; $6cd4: $84
    ld c, b                                       ; $6cd5: $48
    inc b                                         ; $6cd6: $04
    ld [hl], a                                    ; $6cd7: $77
    rlca                                          ; $6cd8: $07
    db $10                                        ; $6cd9: $10
    db $10                                        ; $6cda: $10
    ld h, b                                       ; $6cdb: $60
    ld c, $03                                     ; $6cdc: $0e $03
    inc bc                                        ; $6cde: $03
    ld b, $00                                     ; $6cdf: $06 $00
    ld b, $86                                     ; $6ce1: $06 $86
    add [hl]                                      ; $6ce3: $86
    ld l, h                                       ; $6ce4: $6c
    ld l, h                                       ; $6ce5: $6c
    inc bc                                        ; $6ce6: $03
    inc bc                                        ; $6ce7: $03
    ld a, a                                       ; $6ce8: $7f
    db $10                                        ; $6ce9: $10
    inc bc                                        ; $6cea: $03
    db $fc                                        ; $6ceb: $fc
    inc bc                                        ; $6cec: $03
    inc sp                                        ; $6ced: $33
    ld [$8282], sp                                ; $6cee: $08 $82 $82
    ld [$1a08], sp                                ; $6cf1: $08 $08 $1a
    jr nz, jr_09d_6cf6                            ; $6cf4: $20 $00

jr_09d_6cf6:
    jr nz, @-$40                                  ; $6cf6: $20 $be

    rlca                                          ; $6cf8: $07
    ld e, b                                       ; $6cf9: $58

jr_09d_6cfa:
    db $10                                        ; $6cfa: $10

jr_09d_6cfb:
    ld [bc], a                                    ; $6cfb: $02
    ld [bc], a                                    ; $6cfc: $02
    ld [$0011], sp                                ; $6cfd: $08 $11 $00
    ld [de], a                                    ; $6d00: $12
    ld bc, $2102                                  ; $6d01: $01 $02 $21
    ld [hl+], a                                   ; $6d04: $22
    ld de, $0d12                                  ; $6d05: $11 $12 $0d
    ld b, b                                       ; $6d08: $40
    ld c, $30                                     ; $6d09: $0e $30
    dec hl                                        ; $6d0b: $2b
    ld b, b                                       ; $6d0c: $40
    nop                                           ; $6d0d: $00
    inc hl                                        ; $6d0e: $23
    inc bc                                        ; $6d0f: $03
    jr jr_09d_6d12                                ; $6d10: $18 $00

jr_09d_6d12:
    nop                                           ; $6d12: $00
    ld d, b                                       ; $6d13: $50
    ret nz                                        ; $6d14: $c0

    add c                                         ; $6d15: $81
    add d                                         ; $6d16: $82
    adc c                                         ; $6d17: $89
    adc d                                         ; $6d18: $8a
    ld sp, $0032                                  ; $6d19: $31 $32 $00
    dec a                                         ; $6d1c: $3d
    ld a, $41                                     ; $6d1d: $3e $41
    ld b, d                                       ; $6d1f: $42
    push hl                                       ; $6d20: $e5
    and $9d                                       ; $6d21: $e6 $9d
    sbc [hl]                                      ; $6d23: $9e
    nop                                           ; $6d24: $00
    cp l                                          ; $6d25: $bd
    cp [hl]                                       ; $6d26: $be
    add hl, bc                                    ; $6d27: $09
    add hl, bc                                    ; $6d28: $09
    ld b, [hl]                                    ; $6d29: $46
    ld b, [hl]                                    ; $6d2a: $46
    rlca                                          ; $6d2b: $07
    rlca                                          ; $6d2c: $07
    nop                                           ; $6d2d: $00
    ld e, e                                       ; $6d2e: $5b
    ld e, e                                       ; $6d2f: $5b
    ld e, $1e                                     ; $6d30: $1e $1e
    adc e                                         ; $6d32: $8b
    adc e                                         ; $6d33: $8b
    rla                                           ; $6d34: $17
    rla                                           ; $6d35: $17
    nop                                           ; $6d36: $00
    ccf                                           ; $6d37: $3f
    ccf                                           ; $6d38: $3f
    db $fd                                        ; $6d39: $fd
    cp $bd                                        ; $6d3a: $fe $bd
    cp [hl]                                       ; $6d3c: $be
    db $fd                                        ; $6d3d: $fd
    cp $81                                        ; $6d3e: $fe $81
    ld [bc], a                                    ; $6d40: $02
    ld [$faf9], sp                                ; $6d41: $08 $f9 $fa
    push af                                       ; $6d44: $f5
    or $e1                                        ; $6d45: $f6 $e1
    ld [c], a                                     ; $6d47: $e2
    rlca                                          ; $6d48: $07
    inc sp                                        ; $6d49: $33
    db $10                                        ; $6d4a: $10
    rst $38                                       ; $6d4b: $ff
    cp $fe                                        ; $6d4c: $fe $fe
    ldh [$0e], a                                  ; $6d4e: $e0 $0e
    push af                                       ; $6d50: $f5
    or $d5                                        ; $6d51: $f6 $d5
    sub $00                                       ; $6d53: $d6 $00
    add hl, hl                                    ; $6d55: $29
    ld a, [hl+]                                   ; $6d56: $2a
    pop af                                        ; $6d57: $f1
    ld a, [c]                                     ; $6d58: $f2
    add l                                         ; $6d59: $85
    add [hl]                                      ; $6d5a: $86
    sub b                                         ; $6d5b: $90
    sub e                                         ; $6d5c: $93
    sbc b                                         ; $6d5d: $98
    or b                                          ; $6d5e: $b0
    db $10                                        ; $6d5f: $10
    rst $38                                       ; $6d60: $ff
    rra                                           ; $6d61: $1f
    ld c, d                                       ; $6d62: $4a
    inc b                                         ; $6d63: $04
    inc b                                         ; $6d64: $04
    ld [$a05f], sp                                ; $6d65: $08 $5f $a0
    ld l, a                                       ; $6d68: $6f
    jr jr_09d_6cfb                                ; $6d69: $18 $90

    ld a, a                                       ; $6d6b: $7f
    add b                                         ; $6d6c: $80
    and e                                         ; $6d6d: $a3
    dec bc                                        ; $6d6e: $0b

jr_09d_6d6f:
    ld [bc], a                                    ; $6d6f: $02
    jr z, jr_09d_6d6f                             ; $6d70: $28 $fd

    ld [bc], a                                    ; $6d72: $02
    cp $00                                        ; $6d73: $fe $00
    ld bc, $ff00                                  ; $6d75: $01 $00 $ff
    db $f4                                        ; $6d78: $f4
    dec bc                                        ; $6d79: $0b
    jp c, $ed25                                   ; $6d7a: $da $25 $ed

    db $10                                        ; $6d7d: $10
    ld [de], a                                    ; $6d7e: $12
    cp $01                                        ; $6d7f: $fe $01
    sbc d                                         ; $6d81: $9a
    inc bc                                        ; $6d82: $03
    ld bc, $40bf                                  ; $6d83: $01 $bf $40
    ld a, a                                       ; $6d86: $7f
    nop                                           ; $6d87: $00
    add b                                         ; $6d88: $80
    ld a, a                                       ; $6d89: $7f
    add b                                         ; $6d8a: $80
    ccf                                           ; $6d8b: $3f
    ret nz                                        ; $6d8c: $c0

    ld e, a                                       ; $6d8d: $5f
    and b                                         ; $6d8e: $a0
    cpl                                           ; $6d8f: $2f
    inc d                                         ; $6d90: $14
    ret nc                                        ; $6d91: $d0

    ld d, a                                       ; $6d92: $57
    xor b                                         ; $6d93: $a8
    ld l, $00                                     ; $6d94: $2e $00
    add b                                         ; $6d96: $80
    ld d, $08                                     ; $6d97: $16 $08
    db $fc                                        ; $6d99: $fc
    inc bc                                        ; $6d9a: $03
    ret                                           ; $6d9b: $c9


    ld e, $18                                     ; $6d9c: $1e $18
    ld [de], a                                    ; $6d9e: $12
    inc c                                         ; $6d9f: $0c
    ld a, [hl]                                    ; $6da0: $7e
    add c                                         ; $6da1: $81
    inc h                                         ; $6da2: $24
    ld [$00ff], sp                                ; $6da3: $08 $ff $00
    inc b                                         ; $6da6: $04
    ld [$2280], sp                                ; $6da7: $08 $80 $22
    inc c                                         ; $6daa: $0c
    cp a                                          ; $6dab: $bf
    ld b, b                                       ; $6dac: $40
    ld e, a                                       ; $6dad: $5f
    and b                                         ; $6dae: $a0
    xor a                                         ; $6daf: $af
    ld d, b                                       ; $6db0: $50
    rst $38                                       ; $6db1: $ff
    nop                                           ; $6db2: $00
    and b                                         ; $6db3: $a0
    rst $28                                       ; $6db4: $ef
    ld d, b                                       ; $6db5: $50
    push af                                       ; $6db6: $f5
    ld a, [hl+]                                   ; $6db7: $2a
    db $eb                                        ; $6db8: $eb
    inc d                                         ; $6db9: $14
    ld [hl], a                                    ; $6dba: $77
    inc c                                         ; $6dbb: $0c
    jr z, @-$14                                   ; $6dbc: $28 $ea

    nop                                           ; $6dbe: $00
    db $fd                                        ; $6dbf: $fd
    ld e, [hl]                                    ; $6dc0: $5e
    ld d, $60                                     ; $6dc1: $16 $60
    ld l, $ea                                     ; $6dc3: $2e $ea
    dec d                                         ; $6dc5: $15
    jr nz, @-$09                                  ; $6dc6: $20 $f5

    ld a, [bc]                                    ; $6dc8: $0a
    inc b                                         ; $6dc9: $04
    jr @+$77                                      ; $6dca: $18 $75

    ld a, [bc]                                    ; $6dcc: $0a
    ei                                            ; $6dcd: $fb
    dec d                                         ; $6dce: $15
    rst $30                                       ; $6dcf: $f7
    ld b, b                                       ; $6dd0: $40
    ld [$083a], sp                                ; $6dd1: $08 $3a $08
    cp [hl]                                       ; $6dd4: $be
    ld b, c                                       ; $6dd5: $41
    db $fd                                        ; $6dd6: $fd
    add d                                         ; $6dd7: $82
    cp e                                          ; $6dd8: $bb
    ld b, l                                       ; $6dd9: $45
    nop                                           ; $6dda: $00
    rst $10                                       ; $6ddb: $d7
    xor d                                         ; $6ddc: $aa
    rst $38                                       ; $6ddd: $ff
    ld d, l                                       ; $6dde: $55
    rst $18                                       ; $6ddf: $df
    ld a, [hl+]                                   ; $6de0: $2a
    cp e                                          ; $6de1: $bb
    ld b, b                                       ; $6de2: $40
    dec b                                         ; $6de3: $05
    push af                                       ; $6de4: $f5
    add b                                         ; $6de5: $80
    ld [$d500], a                                 ; $6de6: $ea $00 $d5
    inc b                                         ; $6de9: $04
    nop                                           ; $6dea: $00
    ld a, l                                       ; $6deb: $7d
    ld l, h                                       ; $6dec: $6c
    nop                                           ; $6ded: $00
    nop                                           ; $6dee: $00
    ld e, a                                       ; $6def: $5f
    add b                                         ; $6df0: $80
    ld d, l                                       ; $6df1: $55
    xor d                                         ; $6df2: $aa

Call_09d_6df3:
    ld a, a                                       ; $6df3: $7f
    add b                                         ; $6df4: $80
    ld b, b                                       ; $6df5: $40
    add b                                         ; $6df6: $80
    nop                                           ; $6df7: $00
    ld e, a                                       ; $6df8: $5f
    add b                                         ; $6df9: $80
    ld e, [hl]                                    ; $6dfa: $5e
    add c                                         ; $6dfb: $81
    ld d, l                                       ; $6dfc: $55
    adc d                                         ; $6dfd: $8a
    ld c, e                                       ; $6dfe: $4b
    sub h                                         ; $6dff: $94
    inc c                                         ; $6e00: $0c
    ld a, a                                       ; $6e01: $7f
    cp a                                          ; $6e02: $bf
    ld d, l                                       ; $6e03: $55
    xor d                                         ; $6e04: $aa
    adc b                                         ; $6e05: $88
    inc c                                         ; $6e06: $0c
    xor d                                         ; $6e07: $aa
    ld c, $dd                                     ; $6e08: $0e $dd
    ld a, $0c                                     ; $6e0a: $3e $0c
    ldh [$1f], a                                  ; $6e0c: $e0 $1f
    rst $38                                       ; $6e0e: $ff
    rst $38                                       ; $6e0f: $ff
    db $10                                        ; $6e10: $10
    ld [$00b5], sp                                ; $6e11: $08 $b5 $00
    ld [bc], a                                    ; $6e14: $02
    cp $46                                        ; $6e15: $fe $46
    inc bc                                        ; $6e17: $03
    ld [bc], a                                    ; $6e18: $02
    db $10                                        ; $6e19: $10
    rst $38                                       ; $6e1a: $ff
    ld h, b                                       ; $6e1b: $60
    sbc a                                         ; $6e1c: $9f
    ld l, $08                                     ; $6e1d: $2e $08
    ld [bc], a                                    ; $6e1f: $02
    jr jr_09d_6ea1                                ; $6e20: $18 $7f

    inc e                                         ; $6e22: $1c
    cp a                                          ; $6e23: $bf
    ld h, b                                       ; $6e24: $60
    sbc a                                         ; $6e25: $9f
    and l                                         ; $6e26: $a5
    add hl, de                                    ; $6e27: $19
    ld l, $28                                     ; $6e28: $2e $28
    nop                                           ; $6e2a: $00
    add hl, bc                                    ; $6e2b: $09
    ld bc, $0800                                  ; $6e2c: $01 $00 $08
    rst $10                                       ; $6e2f: $d7
    ld a, [hl+]                                   ; $6e30: $2a
    xor $13                                       ; $6e31: $ee $13
    ld l, $18                                     ; $6e33: $2e $18
    nop                                           ; $6e35: $00
    rst $38                                       ; $6e36: $ff
    ld b, b                                       ; $6e37: $40
    ld bc, $5a80                                  ; $6e38: $01 $80 $5a
    add l                                         ; $6e3b: $85
    ld e, l                                       ; $6e3c: $5d
    add d                                         ; $6e3d: $82
    ld e, e                                       ; $6e3e: $5b
    add h                                         ; $6e3f: $84
    ld l, $38                                     ; $6e40: $2e $38
    call z, Call_000_0f08                         ; $6e42: $cc $08 $0f

jr_09d_6e45:
    ld l, $48                                     ; $6e45: $2e $48
    ld a, a                                       ; $6e47: $7f
    add d                                         ; $6e48: $82
    ld e, h                                       ; $6e49: $5c
    jr z, @+$40                                   ; $6e4a: $28 $3e

    add hl, bc                                    ; $6e4c: $09
    rst $38                                       ; $6e4d: $ff
    ld b, b                                       ; $6e4e: $40
    ld b, b                                       ; $6e4f: $40
    rst $38                                       ; $6e50: $ff
    ldh [rP1], a                                  ; $6e51: $e0 $00
    rst $18                                       ; $6e53: $df
    jr nz, jr_09d_6e45                            ; $6e54: $20 $ef

    db $10                                        ; $6e56: $10
    ld d, a                                       ; $6e57: $57
    jr z, jr_09d_6e5a                             ; $6e58: $28 $00

jr_09d_6e5a:
    xor e                                         ; $6e5a: $ab
    inc d                                         ; $6e5b: $14
    ld d, l                                       ; $6e5c: $55
    ld a, [hl+]                                   ; $6e5d: $2a
    xor d                                         ; $6e5e: $aa
    dec d                                         ; $6e5f: $15
    push de                                       ; $6e60: $d5
    ld a, [hl+]                                   ; $6e61: $2a
    nop                                           ; $6e62: $00
    xor $11                                       ; $6e63: $ee $11
    rst $30                                       ; $6e65: $f7
    xor b                                         ; $6e66: $a8
    cp d                                          ; $6e67: $ba
    ld d, l                                       ; $6e68: $55
    db $dd                                        ; $6e69: $dd
    ld a, [hl+]                                   ; $6e6a: $2a
    nop                                           ; $6e6b: $00
    ld [$7514], a                                 ; $6e6c: $ea $14 $75
    ld [$41e2], sp                                ; $6e6f: $08 $e2 $41
    ld e, l                                       ; $6e72: $5d
    db $e3                                        ; $6e73: $e3
    nop                                           ; $6e74: $00
    ld e, d                                       ; $6e75: $5a
    rst $38                                       ; $6e76: $ff
    db $fd                                        ; $6e77: $fd
    rlca                                          ; $6e78: $07
    adc a                                         ; $6e79: $8f
    inc bc                                        ; $6e7a: $03
    rlca                                          ; $6e7b: $07
    inc bc                                        ; $6e7c: $03
    nop                                           ; $6e7d: $00
    ld b, h                                       ; $6e7e: $44
    inc bc                                        ; $6e7f: $03
    and a                                         ; $6e80: $a7
    ld [bc], a                                    ; $6e81: $02
    ld d, l                                       ; $6e82: $55
    add b                                         ; $6e83: $80
    ld l, $d1                                     ; $6e84: $2e $d1
    inc h                                         ; $6e86: $24
    sub h                                         ; $6e87: $94
    db $eb                                        ; $6e88: $eb
    ld hl, sp+$0b                                 ; $6e89: $f8 $0b
    ld l, d                                       ; $6e8b: $6a
    sub l                                         ; $6e8c: $95
    xor [hl]                                      ; $6e8d: $ae
    ld [bc], a                                    ; $6e8e: $02
    nop                                           ; $6e8f: $00
    ld [$d480], a                                 ; $6e90: $ea $80 $d4
    dec b                                         ; $6e93: $05
    cp [hl]                                       ; $6e94: $be
    ret nz                                        ; $6e95: $c0

    sbc a                                         ; $6e96: $9f
    ldh [$af], a                                  ; $6e97: $e0 $af
    ret nc                                        ; $6e99: $d0

    push de                                       ; $6e9a: $d5
    nop                                           ; $6e9b: $00
    ld [$fd02], a                                 ; $6e9c: $ea $02 $fd
    and b                                         ; $6e9f: $a0
    rst $38                                       ; $6ea0: $ff

jr_09d_6ea1:
    xor [hl]                                      ; $6ea1: $ae
    db $10                                        ; $6ea2: $10
    ld e, a                                       ; $6ea3: $5f
    nop                                           ; $6ea4: $00
    ld [$05be], sp                                ; $6ea5: $08 $be $05
    push af                                       ; $6ea8: $f5
    ld a, [bc]                                    ; $6ea9: $0a
    ei                                            ; $6eaa: $fb
    dec b                                         ; $6eab: $05
    ld [hl], l                                    ; $6eac: $75
    ld bc, $aa8a                                  ; $6ead: $01 $8a $aa
    ld d, l                                       ; $6eb0: $55
    ld d, l                                       ; $6eb1: $55
    xor d                                         ; $6eb2: $aa
    cp e                                          ; $6eb3: $bb
    ld d, l                                       ; $6eb4: $55
    ld hl, $8107                                  ; $6eb5: $21 $07 $81
    inc b                                         ; $6eb8: $04
    ld [$5704], sp                                ; $6eb9: $08 $04 $57
    xor b                                         ; $6ebc: $a8
    ld [$fd54], a                                 ; $6ebd: $ea $54 $fd
    ld h, [hl]                                    ; $6ec0: $66
    ld [bc], a                                    ; $6ec1: $02
    adc h                                         ; $6ec2: $8c
    ld b, d                                       ; $6ec3: $42
    dec l                                         ; $6ec4: $2d
    ld bc, $0301                                  ; $6ec5: $01 $01 $03
    ld bc, $4200                                  ; $6ec8: $01 $00 $42
    dec b                                         ; $6ecb: $05
    rrca                                          ; $6ecc: $0f
    jr c, jr_09d_6ecf                             ; $6ecd: $38 $00

jr_09d_6ecf:
    ccf                                           ; $6ecf: $3f
    ld h, a                                       ; $6ed0: $67
    ld a, a                                       ; $6ed1: $7f
    rst $18                                       ; $6ed2: $df
    rst $38                                       ; $6ed3: $ff
    cp a                                          ; $6ed4: $bf
    rst $38                                       ; $6ed5: $ff
    ld a, a                                       ; $6ed6: $7f
    add b                                         ; $6ed7: $80
    add b                                         ; $6ed8: $80
    rrca                                          ; $6ed9: $0f
    nop                                           ; $6eda: $00
    ldh a, [$f0]                                  ; $6edb: $f0 $f0
    xor h                                         ; $6edd: $ac
    db $fc                                        ; $6ede: $fc
    ld a, [c]                                     ; $6edf: $f2
    cp $04                                        ; $6ee0: $fe $04
    ld sp, hl                                     ; $6ee2: $f9
    rst $38                                       ; $6ee3: $ff
    cp $fd                                        ; $6ee4: $fe $fd
    db $fd                                        ; $6ee6: $fd
    di                                            ; $6ee7: $f3
    ld bc, $0707                                  ; $6ee8: $01 $07 $07
    ld d, b                                       ; $6eeb: $50
    ld b, $03                                     ; $6eec: $06 $03
    nop                                           ; $6eee: $00
    ld b, $06                                     ; $6eef: $06 $06
    ld [$0f07], sp                                ; $6ef1: $08 $07 $0f
    rrca                                          ; $6ef4: $0f
    rra                                           ; $6ef5: $1f
    ret nz                                        ; $6ef6: $c0

    ld [hl+], a                                   ; $6ef7: $22
    ld bc, $2519                                  ; $6ef8: $01 $19 $25
    ld a, a                                       ; $6efb: $7f
    ld a, a                                       ; $6efc: $7f
    cp a                                          ; $6efd: $bf
    cp a                                          ; $6efe: $bf
    rst $18                                       ; $6eff: $df
    bit 4, b                                      ; $6f00: $cb $60
    rst $30                                       ; $6f02: $f7
    inc e                                         ; $6f03: $1c
    ld [hl+], a                                   ; $6f04: $22
    inc bc                                        ; $6f05: $03
    ld [$f6fc], sp                                ; $6f06: $08 $fc $f6
    ld sp, hl                                     ; $6f09: $f9
    db $dd                                        ; $6f0a: $dd
    db $e3                                        ; $6f0b: $e3
    nop                                           ; $6f0c: $00
    rra                                           ; $6f0d: $1f
    rra                                           ; $6f0e: $1f
    inc sp                                        ; $6f0f: $33
    ccf                                           ; $6f10: $3f
    ld sp, $733f                                  ; $6f11: $31 $3f $73
    ld a, a                                       ; $6f14: $7f
    add b                                         ; $6f15: $80
    ld bc, $7708                                  ; $6f16: $01 $08 $77
    ld a, a                                       ; $6f19: $7f
    ld h, a                                       ; $6f1a: $67
    ld a, a                                       ; $6f1b: $7f
    ld [c], a                                     ; $6f1c: $e2
    db $fd                                        ; $6f1d: $fd
    ld hl, sp-$3b                                 ; $6f1e: $f8 $c5
    ld b, e                                       ; $6f20: $43
    ld a, [hl-]                                   ; $6f21: $3a
    ldh [rNR22], a                                ; $6f22: $e0 $17
    ld e, a                                       ; $6f24: $5f
    and b                                         ; $6f25: $a0
    add b                                         ; $6f26: $80

jr_09d_6f27:
    inc [hl]                                      ; $6f27: $34
    jr nz, jr_09d_6f27                            ; $6f28: $20 $fd

    xor b                                         ; $6f2a: $a8
    rlca                                          ; $6f2b: $07
    nop                                           ; $6f2c: $00
    ld [hl], e                                    ; $6f2d: $73
    adc a                                         ; $6f2e: $8f
    adc [hl]                                      ; $6f2f: $8e
    ld a, a                                       ; $6f30: $7f
    db $fd                                        ; $6f31: $fd
    cp $f2                                        ; $6f32: $fe $f2
    db $fd                                        ; $6f34: $fd
    add hl, bc                                    ; $6f35: $09
    dec d                                         ; $6f36: $15
    ld [$50af], a                                 ; $6f37: $ea $af $50
    ld [$d506], a                                 ; $6f3a: $ea $06 $d5
    ld h, a                                       ; $6f3d: $67
    ld [hl], $00                                  ; $6f3e: $36 $00
    ld bc, $3f37                                  ; $6f40: $01 $37 $3f
    inc sp                                        ; $6f43: $33
    ccf                                           ; $6f44: $3f
    dec sp                                        ; $6f45: $3b
    ccf                                           ; $6f46: $3f
    rra                                           ; $6f47: $1f
    ld bc, $3000                                  ; $6f48: $01 $00 $30
    rrca                                          ; $6f4b: $0f
    rrca                                          ; $6f4c: $0f
    ld e, h                                       ; $6f4d: $5c
    db $10                                        ; $6f4e: $10
    ld b, d                                       ; $6f4f: $42
    ld b, b                                       ; $6f50: $40
    ld b, b                                       ; $6f51: $40
    rst $38                                       ; $6f52: $ff
    xor e                                         ; $6f53: $ab
    db $fc                                        ; $6f54: $fc
    ld bc, $fa55                                  ; $6f55: $01 $55 $fa
    ld a, [c]                                     ; $6f58: $f2
    db $fd                                        ; $6f59: $fd
    db $fd                                        ; $6f5a: $fd
    ld a, [$b0e8]                                 ; $6f5b: $fa $e8 $b0
    dec b                                         ; $6f5e: $05
    ld b, b                                       ; $6f5f: $40
    ld a, [$4610]                                 ; $6f60: $fa $10 $46
    add b                                         ; $6f63: $80
    add b                                         ; $6f64: $80
    ld b, b                                       ; $6f65: $40
    ret nz                                        ; $6f66: $c0

    ret nz                                        ; $6f67: $c0

    ld b, b                                       ; $6f68: $40
    inc bc                                        ; $6f69: $03
    rst $28                                       ; $6f6a: $ef
    inc b                                         ; $6f6b: $04
    db $fd                                        ; $6f6c: $fd
    ld [bc], a                                    ; $6f6d: $02
    ld a, [$0405]                                 ; $6f6e: $fa $05 $04
    ld [$077d], sp                                ; $6f71: $08 $7d $07
    add b                                         ; $6f74: $80
    ld [$a001], sp                                ; $6f75: $08 $01 $a0
    ld h, b                                       ; $6f78: $60
    ldh [rNR41], a                                ; $6f79: $e0 $20
    ldh [rNR41], a                                ; $6f7b: $e0 $20
    and b                                         ; $6f7d: $a0
    nop                                           ; $6f7e: $00
    ld h, b                                       ; $6f7f: $60
    and b                                         ; $6f80: $a0
    ld h, b                                       ; $6f81: $60
    ld h, b                                       ; $6f82: $60
    ldh [$f0], a                                  ; $6f83: $e0 $f0
    ldh a, [$f8]                                  ; $6f85: $f0 $f8
    nop                                           ; $6f87: $00
    ld hl, sp-$51                                 ; $6f88: $f8 $af
    ld d, h                                       ; $6f8a: $54
    ld d, a                                       ; $6f8b: $57
    xor d                                         ; $6f8c: $aa
    xor [hl]                                      ; $6f8d: $ae
    ld d, l                                       ; $6f8e: $55
    ld d, a                                       ; $6f8f: $57
    jr nz, @-$54                                  ; $6f90: $20 $aa

    xor a                                         ; $6f92: $af
    inc e                                         ; $6f93: $1c
    ld bc, $50ff                                  ; $6f94: $01 $ff $50
    rst $18                                       ; $6f97: $df
    and b                                         ; $6f98: $a0
    ld a, b                                       ; $6f99: $78
    nop                                           ; $6f9a: $00
    ld hl, sp-$44                                 ; $6f9b: $f8 $bc
    ld a, h                                       ; $6f9d: $7c
    ld e, h                                       ; $6f9e: $5c
    cp h                                          ; $6f9f: $bc
    sbc $3e                                       ; $6fa0: $de $3e
    cp $03                                        ; $6fa2: $fe $03
    ld a, $ae                                     ; $6fa4: $3e $ae
    ld a, [hl]                                    ; $6fa6: $7e
    ld e, [hl]                                    ; $6fa7: $5e
    cp $2e                                        ; $6fa8: $fe $2e
    db $e4                                        ; $6faa: $e4
    ld [bc], a                                    ; $6fab: $02
    ld b, b                                       ; $6fac: $40
    ld a, [bc]                                    ; $6fad: $0a
    add b                                         ; $6fae: $80
    ld l, c                                       ; $6faf: $69
    rlca                                          ; $6fb0: $07
    ld d, l                                       ; $6fb1: $55
    ld a, a                                       ; $6fb2: $7f
    add b                                         ; $6fb3: $80
    xor [hl]                                      ; $6fb4: $ae
    ld bc, $0055                                  ; $6fb5: $01 $55 $00
    nop                                           ; $6fb8: $00
    inc l                                         ; $6fb9: $2c
    jr jr_09d_6fc7                                ; $6fba: $18 $0b

    inc e                                         ; $6fbc: $1c
    cp [hl]                                       ; $6fbd: $be
    rrca                                          ; $6fbe: $0f
    or b                                          ; $6fbf: $b0
    rrca                                          ; $6fc0: $0f
    nop                                           ; $6fc1: $00
    ld sp, hl                                     ; $6fc2: $f9
    rrca                                          ; $6fc3: $0f
    ld h, c                                       ; $6fc4: $61
    sbc a                                         ; $6fc5: $9f
    adc b                                         ; $6fc6: $88

jr_09d_6fc7:
    ld a, a                                       ; $6fc7: $7f
    ld de, $02ff                                  ; $6fc8: $11 $ff $02
    ld e, $fe                                     ; $6fcb: $1e $fe
    cp [hl]                                       ; $6fcd: $be
    ld a, [hl]                                    ; $6fce: $7e
    ld e, h                                       ; $6fcf: $5c
    cp h                                          ; $6fd0: $bc
    inc [hl]                                      ; $6fd1: $34
    nop                                           ; $6fd2: $00
    db $fc                                        ; $6fd3: $fc
    ld bc, $f8b8                                  ; $6fd4: $01 $b8 $f8
    ld a, b                                       ; $6fd7: $78
    ld hl, sp-$10                                 ; $6fd8: $f8 $f0
    ldh a, [$ab]                                  ; $6fda: $f0 $ab
    or [hl]                                       ; $6fdc: $b6
    inc bc                                        ; $6fdd: $03
    inc b                                         ; $6fde: $04
    xor [hl]                                      ; $6fdf: $ae
    ld d, c                                       ; $6fe0: $51
    ld d, l                                       ; $6fe1: $55
    xor d                                         ; $6fe2: $aa
    xor e                                         ; $6fe3: $ab
    ld d, h                                       ; $6fe4: $54
    nop                                           ; $6fe5: $00
    cp a                                          ; $6fe6: $bf
    ld d, l                                       ; $6fe7: $55
    jr nz, jr_09d_705f                            ; $6fe8: $20 $75

    ld a, [bc]                                    ; $6fea: $0a
    or h                                          ; $6feb: $b4
    add hl, bc                                    ; $6fec: $09
    cp d                                          ; $6fed: $ba
    inc b                                         ; $6fee: $04
    rst $18                                       ; $6fef: $df
    nop                                           ; $6ff0: $00
    cp e                                          ; $6ff1: $bb
    and b                                         ; $6ff2: $a0
    adc b                                         ; $6ff3: $88
    nop                                           ; $6ff4: $00
    ei                                            ; $6ff5: $fb
    add h                                         ; $6ff6: $84
    nop                                           ; $6ff7: $00
    xor b                                         ; $6ff8: $a8
    ld d, a                                       ; $6ff9: $57
    cp $01                                        ; $6ffa: $fe $01
    and $00                                       ; $6ffc: $e6 $00
    add hl, de                                    ; $6ffe: $19
    cp $01                                        ; $6fff: $fe $01
    sbc $21                                       ; $7001: $de $21
    cp $01                                        ; $7003: $fe $01
    db $f4                                        ; $7005: $f4
    ld [bc], a                                    ; $7006: $02
    dec bc                                        ; $7007: $0b
    xor d                                         ; $7008: $aa
    ld d, l                                       ; $7009: $55
    rlca                                          ; $700a: $07
    rlca                                          ; $700b: $07
    inc bc                                        ; $700c: $03
    halt                                          ; $700d: $76
    inc b                                         ; $700e: $04
    ld bc, $0107                                  ; $700f: $01 $07 $01
    ld [bc], a                                    ; $7012: $02
    inc bc                                        ; $7013: $03

jr_09d_7014:
    ld bc, $0403                                  ; $7014: $01 $03 $04
    nop                                           ; $7017: $00
    add c                                         ; $7018: $81
    ld c, $6a                                     ; $7019: $0e $6a
    ld h, $50                                     ; $701b: $26 $50
    ld e, a                                       ; $701d: $5f
    ret nc                                        ; $701e: $d0

    dec b                                         ; $701f: $05
    ld d, l                                       ; $7020: $55
    inc l                                         ; $7021: $2c
    ld d, c                                       ; $7022: $51
    rst $38                                       ; $7023: $ff
    rst $38                                       ; $7024: $ff
    ld a, [hl]                                    ; $7025: $7e
    rst $38                                       ; $7026: $ff
    sub e                                         ; $7027: $93
    ldh a, [$0c]                                  ; $7028: $f0 $0c
    ld c, e                                       ; $702a: $4b
    or h                                          ; $702b: $b4
    ld [hl], $0b                                  ; $702c: $36 $0b
    dec l                                         ; $702e: $2d
    jp nc, Jump_000_0cf0                          ; $702f: $d2 $f0 $0c

    ld d, b                                       ; $7032: $50
    ld [$5e00], sp                                ; $7033: $08 $00 $5e
    and c                                         ; $7036: $a1
    cp $01                                        ; $7037: $fe $01
    ld [$fe15], a                                 ; $7039: $ea $15 $fe
    ld bc, $fe00                                  ; $703c: $01 $00 $fe
    ld bc, $55aa                                  ; $703f: $01 $aa $55
    ldh [$e0], a                                  ; $7042: $e0 $e0
    ret nz                                        ; $7044: $c0

    ret nz                                        ; $7045: $c0

    add h                                         ; $7046: $84
    xor $0c                                       ; $7047: $ee $0c
    ld b, b                                       ; $7049: $40
    ret nz                                        ; $704a: $c0

    add b                                         ; $704b: $80
    ret nz                                        ; $704c: $c0

    inc b                                         ; $704d: $04
    nop                                           ; $704e: $00
    add b                                         ; $704f: $80
    xor d                                         ; $7050: $aa
    nop                                           ; $7051: $00
    dec d                                         ; $7052: $15
    ld [hl], a                                    ; $7053: $77
    adc d                                         ; $7054: $8a
    cp a                                          ; $7055: $bf
    ld d, h                                       ; $7056: $54
    ld e, a                                       ; $7057: $5f
    and b                                         ; $7058: $a0
    rst $38                                       ; $7059: $ff
    add b                                         ; $705a: $80
    jr c, jr_09d_7060                             ; $705b: $38 $03

    rst $28                                       ; $705d: $ef
    ld d, b                                       ; $705e: $50

jr_09d_705f:
    db $dd                                        ; $705f: $dd

jr_09d_7060:
    ld a, [hl+]                                   ; $7060: $2a
    add c                                         ; $7061: $81
    rst $38                                       ; $7062: $ff
    ret nz                                        ; $7063: $c0

    cpl                                           ; $7064: $2f
    cp a                                          ; $7065: $bf
    add b                                         ; $7066: $80
    inc b                                         ; $7067: $04
    jr nz, jr_09d_7014                            ; $7068: $20 $aa

    add d                                         ; $706a: $82
    ld hl, $078c                                  ; $706b: $21 $8c $07
    and l                                         ; $706e: $a5
    inc de                                        ; $706f: $13
    db $10                                        ; $7070: $10
    ld [$9c04], sp                                ; $7071: $08 $04 $9c
    db $e3                                        ; $7074: $e3
    dec sp                                        ; $7075: $3b
    ret nz                                        ; $7076: $c0

    xor $fa                                       ; $7077: $ee $fa
    rlca                                          ; $7079: $07
    ld [c], a                                     ; $707a: $e2
    add b                                         ; $707b: $80
    ld e, d                                       ; $707c: $5a
    ld c, c                                       ; $707d: $49
    jr jr_09d_7083                                ; $707e: $18 $03

    ld h, b                                       ; $7080: $60
    inc e                                         ; $7081: $1c
    inc bc                                        ; $7082: $03

jr_09d_7083:
    ld [bc], a                                    ; $7083: $02
    jr z, jr_09d_70c8                             ; $7084: $28 $42

    jr z, @+$05                                   ; $7086: $28 $03

    ld c, b                                       ; $7088: $48
    add b                                         ; $7089: $80
    ld b, $00                                     ; $708a: $06 $00
    ret z                                         ; $708c: $c8

    add b                                         ; $708d: $80
    ld b, l                                       ; $708e: $45
    add b                                         ; $708f: $80
    db $ed                                        ; $7090: $ed
    add b                                         ; $7091: $80
    ld h, a                                       ; $7092: $67
    and b                                         ; $7093: $a0
    inc b                                         ; $7094: $04
    nop                                           ; $7095: $00
    ld l, l                                       ; $7096: $6d
    cp h                                          ; $7097: $bc
    inc bc                                        ; $7098: $03
    rst $38                                       ; $7099: $ff
    rst $38                                       ; $709a: $ff
    ld bc, $83ff                                  ; $709b: $01 $ff $83
    ld [$017f], sp                                ; $709e: $08 $7f $01
    rst $38                                       ; $70a1: $ff
    inc bc                                        ; $70a2: $03
    ld [$0300], sp                                ; $70a3: $08 $00 $03
    rst $38                                       ; $70a6: $ff
    pop bc                                        ; $70a7: $c1
    inc b                                         ; $70a8: $04
    cp a                                          ; $70a9: $bf
    rst $00                                       ; $70aa: $c7
    rst $38                                       ; $70ab: $ff
    db $e3                                        ; $70ac: $e3
    rst $18                                       ; $70ad: $df
    inc b                                         ; $70ae: $04
    ld c, b                                       ; $70af: $48
    rst $38                                       ; $70b0: $ff
    db $10                                        ; $70b1: $10
    ld [bc], a                                    ; $70b2: $02
    ld e, a                                       ; $70b3: $5f
    and b                                         ; $70b4: $a0
    cp a                                          ; $70b5: $bf
    ld d, b                                       ; $70b6: $50
    ld d, a                                       ; $70b7: $57
    xor b                                         ; $70b8: $a8
    inc b                                         ; $70b9: $04
    ld [$20ba], sp                                ; $70ba: $08 $ba $20
    ld d, l                                       ; $70bd: $55
    ld e, l                                       ; $70be: $5d
    add b                                         ; $70bf: $80
    ld [bc], a                                    ; $70c0: $02
    db $fd                                        ; $70c1: $fd
    and d                                         ; $70c2: $a2
    ld a, [$dd41]                                 ; $70c3: $fa $41 $dd
    ld [bc], a                                    ; $70c6: $02
    and b                                         ; $70c7: $a0

jr_09d_70c8:
    cp d                                          ; $70c8: $ba
    ld b, c                                       ; $70c9: $41
    push af                                       ; $70ca: $f5
    add b                                         ; $70cb: $80
    db $eb                                        ; $70cc: $eb
    add h                                         ; $70cd: $84
    inc bc                                        ; $70ce: $03
    ld [$4100], a                                 ; $70cf: $ea $00 $41
    ld e, l                                       ; $70d2: $5d
    and d                                         ; $70d3: $a2
    ld a, [$fd55]                                 ; $70d4: $fa $55 $fd
    ld [bc], a                                    ; $70d7: $02
    xor a                                         ; $70d8: $af
    ld bc, $5701                                  ; $70d9: $01 $01 $57
    ld [bc], a                                    ; $70dc: $02
    xor $01                                       ; $70dd: $ee $01
    rst $30                                       ; $70df: $f7
    ld [bc], a                                    ; $70e0: $02
    ret nc                                        ; $70e1: $d0

    inc bc                                        ; $70e2: $03
    ld [$be80], sp                                ; $70e3: $08 $80 $be
    ld b, b                                       ; $70e6: $40
    rst $18                                       ; $70e7: $df
    db $e4                                        ; $70e8: $e4
    inc bc                                        ; $70e9: $03
    push de                                       ; $70ea: $d5
    xor d                                         ; $70eb: $aa
    xor d                                         ; $70ec: $aa
    jr jr_09d_7144                                ; $70ed: $18 $55

    push af                                       ; $70ef: $f5
    xor d                                         ; $70f0: $aa
    sbc h                                         ; $70f1: $9c
    ld a, [hl-]                                   ; $70f2: $3a
    ld [hl], h                                    ; $70f3: $74
    ld a, [bc]                                    ; $70f4: $0a
    rrca                                          ; $70f5: $0f
    rrca                                          ; $70f6: $0f
    rlca                                          ; $70f7: $07
    nop                                           ; $70f8: $00
    rlca                                          ; $70f9: $07
    inc a                                         ; $70fa: $3c
    ccf                                           ; $70fb: $3f
    rst $30                                       ; $70fc: $f7
    rst $28                                       ; $70fd: $ef
    rst $18                                       ; $70fe: $df
    cp a                                          ; $70ff: $bf
    cp a                                          ; $7100: $bf
    ld b, b                                       ; $7101: $40
    ld a, a                                       ; $7102: $7f
    sbc [hl]                                      ; $7103: $9e
    ld a, [bc]                                    ; $7104: $0a
    rst $38                                       ; $7105: $ff
    rst $38                                       ; $7106: $ff
    ldh [$e0], a                                  ; $7107: $e0 $e0
    ld a, h                                       ; $7109: $7c
    db $fc                                        ; $710a: $fc
    ld [hl], b                                    ; $710b: $70
    rst $30                                       ; $710c: $f7
    ld a, [hl-]                                   ; $710d: $3a
    ld [de], a                                    ; $710e: $12
    ld d, b                                       ; $710f: $50
    ld [hl+], a                                   ; $7110: $22
    db $fc                                        ; $7111: $fc
    ld hl, $c0c0                                  ; $7112: $21 $c0 $c0
    ld h, b                                       ; $7115: $60
    ldh [rTMA], a                                 ; $7116: $e0 $06
    and b                                         ; $7118: $a0
    ldh [$d0], a                                  ; $7119: $e0 $d0
    or b                                          ; $711b: $b0
    rrca                                          ; $711c: $0f
    ld bc, $aa00                                  ; $711d: $01 $00 $aa
    ld a, [de]                                    ; $7120: $1a
    inc sp                                        ; $7121: $33
    jr c, jr_09d_7163                             ; $7122: $38 $3f

    inc hl                                        ; $7124: $23
    ret c                                         ; $7125: $d8

    ld [bc], a                                    ; $7126: $02
    xor e                                         ; $7127: $ab
    ld [de], a                                    ; $7128: $12
    call c, $c702                                 ; $7129: $dc $02 $c7
    rst $38                                       ; $712c: $ff
    ldh a, [$c0]                                  ; $712d: $f0 $c0
    ld c, d                                       ; $712f: $4a
    ld [hl-], a                                   ; $7130: $32
    ld a, d                                       ; $7131: $7a
    ld [bc], a                                    ; $7132: $02
    cp $e2                                        ; $7133: $fe $e2
    db $fd                                        ; $7135: $fd
    xor l                                         ; $7136: $ad
    ld d, e                                       ; $7137: $53
    adc d                                         ; $7138: $8a
    add b                                         ; $7139: $80
    cp $07                                        ; $713a: $fe $07
    sub b                                         ; $713c: $90
    ldh a, [$50]                                  ; $713d: $f0 $50
    or b                                          ; $713f: $b0
    and b                                         ; $7140: $a0
    ld h, b                                       ; $7141: $60
    ld d, b                                       ; $7142: $50
    nop                                           ; $7143: $00

jr_09d_7144:
    ldh a, [$b8]                                  ; $7144: $f0 $b8
    ld hl, sp+$7c                                 ; $7146: $f8 $7c
    db $fc                                        ; $7148: $fc
    call c, $aefc                                 ; $7149: $dc $fc $ae
    ld b, [hl]                                    ; $714c: $46
    sbc $b9                                       ; $714d: $de $b9
    ld a, [bc]                                    ; $714f: $0a
    ld l, a                                       ; $7150: $6f
    ld a, a                                       ; $7151: $7f
    ld h, [hl]                                    ; $7152: $66
    cp d                                          ; $7153: $ba
    ld [bc], a                                    ; $7154: $02
    ld [bc], a                                    ; $7155: $02
    ld [$4437], sp                                ; $7156: $08 $37 $44
    ccf                                           ; $7159: $3f
    rst $30                                       ; $715a: $f7
    cpl                                           ; $715b: $2f
    cp a                                          ; $715c: $bf
    rst $38                                       ; $715d: $ff
    di                                            ; $715e: $f3
    rst $38                                       ; $715f: $ff
    rla                                           ; $7160: $17
    db $fc                                        ; $7161: $fc
    rst $38                                       ; $7162: $ff

jr_09d_7163:
    nop                                           ; $7163: $00
    push af                                       ; $7164: $f5
    ld a, [$fdaa]                                 ; $7165: $fa $aa $fd
    push af                                       ; $7168: $f5
    cp $fa                                        ; $7169: $fe $fa
    rst $38                                       ; $716b: $ff
    add b                                         ; $716c: $80
    dec de                                        ; $716d: $1b
    ld [$fffe], sp                                ; $716e: $08 $fe $ff
    or $0e                                        ; $7171: $f6 $0e
    ld l, [hl]                                    ; $7173: $6e
    sbc [hl]                                      ; $7174: $9e
    or $00                                        ; $7175: $f6 $00
    ld e, $4e                                     ; $7177: $1e $4e
    cp [hl]                                       ; $7179: $be
    ld b, [hl]                                    ; $717a: $46
    cp $92                                        ; $717b: $fe $92
    xor $6e                                       ; $717d: $ee $6e
    nop                                           ; $717f: $00
    sub $94                                       ; $7180: $d6 $94
    db $ec                                        ; $7182: $ec
    inc de                                        ; $7183: $13
    rst $38                                       ; $7184: $ff
    pop de                                        ; $7185: $d1
    xor [hl]                                      ; $7186: $ae
    ld c, $00                                     ; $7187: $0e $00
    pop af                                        ; $7189: $f1
    di                                            ; $718a: $f3
    adc h                                         ; $718b: $8c
    ld b, a                                       ; $718c: $47
    cp b                                          ; $718d: $b8
    cp [hl]                                       ; $718e: $be
    pop bc                                        ; $718f: $c1
    ld a, c                                       ; $7190: $79
    nop                                           ; $7191: $00
    rst $38                                       ; $7192: $ff
    db $fc                                        ; $7193: $fc
    add e                                         ; $7194: $83
    adc d                                         ; $7195: $8a
    rst $38                                       ; $7196: $ff
    or $09                                        ; $7197: $f6 $09
    reti                                          ; $7199: $d9


    nop                                           ; $719a: $00
    ld h, $7e                                     ; $719b: $26 $7e
    add c                                         ; $719d: $81
    jp hl                                         ; $719e: $e9


    ld d, $7d                                     ; $719f: $16 $7d
    add d                                         ; $71a1: $82
    ld d, c                                       ; $71a2: $51
    add b                                         ; $71a3: $80
    inc c                                         ; $71a4: $0c
    nop                                           ; $71a5: $00
    xor e                                         ; $71a6: $ab
    ld d, l                                       ; $71a7: $55
    rst $10                                       ; $71a8: $d7
    xor d                                         ; $71a9: $aa
    rst $28                                       ; $71aa: $ef
    ld d, l                                       ; $71ab: $55
    ld a, a                                       ; $71ac: $7f
    nop                                           ; $71ad: $00
    xor d                                         ; $71ae: $aa
    cp a                                          ; $71af: $bf
    db $10                                        ; $71b0: $10
    ld e, a                                       ; $71b1: $5f
    nop                                           ; $71b2: $00
    xor a                                         ; $71b3: $af
    db $10                                        ; $71b4: $10
    ld e, l                                       ; $71b5: $5d
    nop                                           ; $71b6: $00
    ld a, [bc]                                    ; $71b7: $0a
    ld d, a                                       ; $71b8: $57
    xor b                                         ; $71b9: $a8
    rst $38                                       ; $71ba: $ff
    add b                                         ; $71bb: $80
    dec c                                         ; $71bc: $0d
    rst $38                                       ; $71bd: $ff
    sub b                                         ; $71be: $90
    nop                                           ; $71bf: $00
    rst $28                                       ; $71c0: $ef
    ld l, $d1                                     ; $71c1: $2e $d1
    adc c                                         ; $71c3: $89
    or $00                                        ; $71c4: $f6 $00
    rst $38                                       ; $71c6: $ff
    xor l                                         ; $71c7: $ad
    add b                                         ; $71c8: $80
    ld d, b                                       ; $71c9: $50
    dec b                                         ; $71ca: $05
    cp a                                          ; $71cb: $bf
    ret nz                                        ; $71cc: $c0

jr_09d_71cd:
    ccf                                           ; $71cd: $3f
    ret nz                                        ; $71ce: $c0

    cp d                                          ; $71cf: $ba
    push bc                                       ; $71d0: $c5
    dec a                                         ; $71d1: $3d
    nop                                           ; $71d2: $00
    jp nz, $e19e                                  ; $71d3: $c2 $9e $e1

    inc a                                         ; $71d6: $3c
    jp $e19e                                      ; $71d7: $c3 $9e $e1


    cp a                                          ; $71da: $bf
    add b                                         ; $71db: $80
    ret c                                         ; $71dc: $d8

    inc b                                         ; $71dd: $04
    xor a                                         ; $71de: $af
    db $10                                        ; $71df: $10
    ld e, a                                       ; $71e0: $5f
    jr nz, jr_09d_71cd                            ; $71e1: $20 $ea

    db $10                                        ; $71e3: $10
    ld [hl], l                                    ; $71e4: $75
    ld [$eaa0], sp                                ; $71e5: $08 $a0 $ea
    ld d, b                                       ; $71e8: $50
    ld e, l                                       ; $71e9: $5d
    ld a, d                                       ; $71ea: $7a
    rlca                                          ; $71eb: $07
    ld hl, sp-$79                                 ; $71ec: $f8 $87
    ld a, a                                       ; $71ee: $7f
    nop                                           ; $71ef: $00
    add b                                         ; $71f0: $80
    db $eb                                        ; $71f1: $eb
    sub h                                         ; $71f2: $94
    dec b                                         ; $71f3: $05
    rst $38                                       ; $71f4: $ff
    ld a, [$3785]                                 ; $71f5: $fa $85 $37
    nop                                           ; $71f8: $00
    ret z                                         ; $71f9: $c8

    ld [$2f95], a                                 ; $71fa: $ea $95 $2f
    ret nc                                        ; $71fd: $d0

    add c                                         ; $71fe: $81
    cp $7f                                        ; $71ff: $fe $7f
    ld [$aaff], sp                                ; $7201: $08 $ff $aa
    push de                                       ; $7204: $d5
    ldh [$03], a                                  ; $7205: $e0 $03
    ld bc, $80ea                                  ; $7207: $01 $ea $80
    ld a, a                                       ; $720a: $7f
    ld [bc], a                                    ; $720b: $02
    rst $38                                       ; $720c: $ff
    ld d, $ff                                     ; $720d: $16 $ff
    add d                                         ; $720f: $82
    db $fd                                        ; $7210: $fd
    nop                                           ; $7211: $00
    inc b                                         ; $7212: $04
    nop                                           ; $7213: $00
    add hl, hl                                    ; $7214: $29
    ld b, b                                       ; $7215: $40
    sub $41                                       ; $7216: $d6 $41
    dec c                                         ; $7218: $0d
    add b                                         ; $7219: $80
    rst $38                                       ; $721a: $ff
    ld c, l                                       ; $721b: $4d
    rst $38                                       ; $721c: $ff
    xor b                                         ; $721d: $a8
    ld d, a                                       ; $721e: $57
    nop                                           ; $721f: $00
    ld d, d                                       ; $7220: $52
    xor l                                         ; $7221: $ad
    dec b                                         ; $7222: $05
    ld a, [$5fa0]                                 ; $7223: $fa $a0 $5f
    ld a, [bc]                                    ; $7226: $0a
    push af                                       ; $7227: $f5
    add d                                         ; $7228: $82
    xor [hl]                                      ; $7229: $ae
    dec c                                         ; $722a: $0d
    rst $28                                       ; $722b: $ef
    dec d                                         ; $722c: $15
    ld e, a                                       ; $722d: $5f
    ld a, [hl+]                                   ; $722e: $2a
    db $eb                                        ; $722f: $eb
    inc l                                         ; $7230: $2c
    dec d                                         ; $7231: $15
    push af                                       ; $7232: $f5
    inc bc                                        ; $7233: $03
    ld a, [bc]                                    ; $7234: $0a
    ld a, [$5715]                                 ; $7235: $fa $15 $57
    xor b                                         ; $7238: $a8
    ccf                                           ; $7239: $3f
    ld l, b                                       ; $723a: $68
    inc hl                                        ; $723b: $23
    sbc b                                         ; $723c: $98
    ld a, [bc]                                    ; $723d: $0a
    jr @+$0c                                      ; $723e: $18 $0a

    rrca                                          ; $7240: $0f
    dec b                                         ; $7241: $05
    ld [hl], b                                    ; $7242: $70
    inc bc                                        ; $7243: $03
    xor a                                         ; $7244: $af
    ld c, e                                       ; $7245: $4b
    ld e, a                                       ; $7246: $5f
    rst $38                                       ; $7247: $ff
    ld l, h                                       ; $7248: $6c
    ld bc, $88dc                                  ; $7249: $01 $dc $88
    ld hl, sp+$58                                 ; $724c: $f8 $58
    ld hl, sp-$50                                 ; $724e: $f8 $b0
    ldh a, [rBCPS]                                ; $7250: $f0 $68
    ld a, [bc]                                    ; $7252: $0a
    nop                                           ; $7253: $00
    ld d, b                                       ; $7254: $50
    ldh a, [$a0]                                  ; $7255: $f0 $a0
    ldh a, [$eb]                                  ; $7257: $f0 $eb
    inc d                                         ; $7259: $14
    push af                                       ; $725a: $f5
    ld a, [hl+]                                   ; $725b: $2a
    add c                                         ; $725c: $81
    xor b                                         ; $725d: $a8
    ld bc, $be2a                                  ; $725e: $01 $2a $be
    ld d, l                                       ; $7261: $55
    rst $38                                       ; $7262: $ff
    ld a, [hl+]                                   ; $7263: $2a
    cp a                                          ; $7264: $bf
    ret z                                         ; $7265: $c8

    nop                                           ; $7266: $00
    add e                                         ; $7267: $83
    or d                                          ; $7268: $b2
    ld a, [de]                                    ; $7269: $1a
    rst $30                                       ; $726a: $f7
    rst $38                                       ; $726b: $ff
    sbc $ff                                       ; $726c: $de $ff
    rst $28                                       ; $726e: $ef
    dec hl                                        ; $726f: $2b
    ld d, $c2                                     ; $7270: $16 $c2
    ld a, [bc]                                    ; $7272: $0a
    ld [hl], b                                    ; $7273: $70
    db $fd                                        ; $7274: $fd
    call z, Call_000_1402                         ; $7275: $cc $02 $14
    ld [$0c50], sp                                ; $7278: $08 $50 $0c
    inc sp                                        ; $727b: $33
    rst $38                                       ; $727c: $ff
    ld h, c                                       ; $727d: $61
    rst $38                                       ; $727e: $ff
    nop                                           ; $727f: $00
    jp z, $9df7                                   ; $7280: $ca $f7 $9d

    rst $20                                       ; $7283: $e7
    or e                                          ; $7284: $b3
    rst $08                                       ; $7285: $cf
    and $9f                                       ; $7286: $e6 $9f
    dec b                                         ; $7288: $05
    adc d                                         ; $7289: $8a
    rst $38                                       ; $728a: $ff
    ld a, h                                       ; $728b: $7c
    rst $38                                       ; $728c: $ff
    add hl, hl                                    ; $728d: $29
    sub h                                         ; $728e: $94
    nop                                           ; $728f: $00
    ret nz                                        ; $7290: $c0

    inc b                                         ; $7291: $04
    db $10                                        ; $7292: $10
    db $10                                        ; $7293: $10
    xor b                                         ; $7294: $a8
    rst $38                                       ; $7295: $ff
    call nc, Call_000_065d                        ; $7296: $d4 $5d $06
    inc d                                         ; $7299: $14
    rst $38                                       ; $729a: $ff
    cp e                                          ; $729b: $bb
    ld b, l                                       ; $729c: $45
    nop                                           ; $729d: $00
    call nz, $ff3b                                ; $729e: $c4 $3b $ff
    ld bc, $a55a                                  ; $72a1: $01 $5a $a5
    adc c                                         ; $72a4: $89
    rst $38                                       ; $72a5: $ff
    nop                                           ; $72a6: $00
    ld a, [bc]                                    ; $72a7: $0a
    push af                                       ; $72a8: $f5
    ld [hl], a                                    ; $72a9: $77
    adc c                                         ; $72aa: $89
    ld b, d                                       ; $72ab: $42
    rst $38                                       ; $72ac: $ff
    rst $38                                       ; $72ad: $ff
    inc b                                         ; $72ae: $04
    nop                                           ; $72af: $00
    ld d, d                                       ; $72b0: $52
    xor l                                         ; $72b1: $ad
    ld e, a                                       ; $72b2: $5f
    and h                                         ; $72b3: $a4
    ei                                            ; $72b4: $fb
    inc b                                         ; $72b5: $04
    jp z, Jump_000_20ff                           ; $72b6: $ca $ff $20

    ld [hl], c                                    ; $72b9: $71
    adc [hl]                                      ; $72ba: $8e
    jr c, jr_09d_72c8                             ; $72bb: $38 $0b

    cp l                                          ; $72bd: $bd
    ld b, e                                       ; $72be: $43
    cp $01                                        ; $72bf: $fe $01
    dec l                                         ; $72c1: $2d
    nop                                           ; $72c2: $00
    rst $38                                       ; $72c3: $ff
    ld l, $d1                                     ; $72c4: $2e $d1
    db $db                                        ; $72c6: $db
    dec h                                         ; $72c7: $25

jr_09d_72c8:
    ld l, [hl]                                    ; $72c8: $6e
    sub c                                         ; $72c9: $91
    sbc e                                         ; $72ca: $9b
    nop                                           ; $72cb: $00
    rst $38                                       ; $72cc: $ff
    ld b, e                                       ; $72cd: $43
    cp h                                          ; $72ce: $bc
    or $09                                        ; $72cf: $f6 $09
    rst $38                                       ; $72d1: $ff
    nop                                           ; $72d2: $00
    push hl                                       ; $72d3: $e5
    nop                                           ; $72d4: $00
    rst $38                                       ; $72d5: $ff
    ld a, e                                       ; $72d6: $7b
    add h                                         ; $72d7: $84
    adc $35                                       ; $72d8: $ce $35
    ei                                            ; $72da: $fb
    inc b                                         ; $72db: $04
    ld [hl], h                                    ; $72dc: $74
    add b                                         ; $72dd: $80
    add b                                         ; $72de: $80
    ld b, $29                                     ; $72df: $06 $29
    rst $10                                       ; $72e1: $d7
    add b                                         ; $72e2: $80
    ld a, a                                       ; $72e3: $7f
    ld d, c                                       ; $72e4: $51
    rst $38                                       ; $72e5: $ff
    ld e, [hl]                                    ; $72e6: $5e
    nop                                           ; $72e7: $00
    and c                                         ; $72e8: $a1
    xor e                                         ; $72e9: $ab
    ld d, l                                       ; $72ea: $55
    cp $01                                        ; $72eb: $fe $01
    xor a                                         ; $72ed: $af
    ld d, c                                       ; $72ee: $51
    ret nc                                        ; $72ef: $d0

    nop                                           ; $72f0: $00
    cpl                                           ; $72f1: $2f
    rst $38                                       ; $72f2: $ff
    ld bc, $ffb0                                  ; $72f3: $01 $b0 $ff
    ccf                                           ; $72f6: $3f
    pop bc                                        ; $72f7: $c1
    xor $00                                       ; $72f8: $ee $00
    ld de, $eb15                                  ; $72fa: $11 $15 $eb
    ld e, [hl]                                    ; $72fd: $5e
    and c                                         ; $72fe: $a1
    ld bc, $a4ff                                  ; $72ff: $01 $ff $a4
    nop                                           ; $7302: $00
    rst $38                                       ; $7303: $ff
    ldh [$1f], a                                  ; $7304: $e0 $1f
    or c                                          ; $7306: $b1
    ld e, [hl]                                    ; $7307: $5e
    ld a, [c]                                     ; $7308: $f2
    dec e                                         ; $7309: $1d
    ret nz                                        ; $730a: $c0

    nop                                           ; $730b: $00
    ccf                                           ; $730c: $3f
    ld h, d                                       ; $730d: $62
    sbc l                                         ; $730e: $9d
    ld d, $ff                                     ; $730f: $16 $ff
    rst $28                                       ; $7311: $ef
    db $10                                        ; $7312: $10
    call $b280                                    ; $7313: $cd $80 $b2
    ld b, $46                                     ; $7316: $06 $46
    cp c                                          ; $7318: $b9
    ld d, h                                       ; $7319: $54
    xor e                                         ; $731a: $ab
    jr z, @-$27                                   ; $731b: $28 $d7

    nop                                           ; $731d: $00
    ld [bc], a                                    ; $731e: $02
    rst $38                                       ; $731f: $ff
    add hl, de                                    ; $7320: $19
    rst $38                                       ; $7321: $ff
    ei                                            ; $7322: $fb
    inc b                                         ; $7323: $04
    inc sp                                        ; $7324: $33
    jp nz, Jump_09d_5b06                          ; $7325: $c2 $06 $5b

    nop                                           ; $7328: $00
    and h                                         ; $7329: $a4
    ld bc, $c8fe                                  ; $732a: $01 $fe $c8
    scf                                           ; $732d: $37
    nop                                           ; $732e: $00
    rst $38                                       ; $732f: $ff
    ld d, d                                       ; $7330: $52
    nop                                           ; $7331: $00
    db $fd                                        ; $7332: $fd
    ld e, a                                       ; $7333: $5f
    and b                                         ; $7334: $a0
    ld d, h                                       ; $7335: $54
    rst $38                                       ; $7336: $ff
    inc bc                                        ; $7337: $03
    db $fc                                        ; $7338: $fc
    ld d, [hl]                                    ; $7339: $56
    ld [bc], a                                    ; $733a: $02
    xor l                                         ; $733b: $ad
    ld b, e                                       ; $733c: $43
    cp h                                          ; $733d: $bc
    inc de                                        ; $733e: $13
    db $ec                                        ; $733f: $ec
    ld b, h                                       ; $7340: $44
    jp z, $ac06                                   ; $7341: $ca $06 $ac

    nop                                           ; $7344: $00
    ld d, e                                       ; $7345: $53
    nop                                           ; $7346: $00
    rst $38                                       ; $7347: $ff
    cp $01                                        ; $7348: $fe $01
    ld a, [hl]                                    ; $734a: $7e
    add c                                         ; $734b: $81
    halt                                          ; $734c: $76
    nop                                           ; $734d: $00
    adc c                                         ; $734e: $89
    adc [hl]                                      ; $734f: $8e
    ld [hl], c                                    ; $7350: $71
    ld c, $f1                                     ; $7351: $0e $f1
    ld h, d                                       ; $7353: $62
    sbc l                                         ; $7354: $9d
    adc $04                                       ; $7355: $ce $04
    ld sp, $b34c                                  ; $7357: $31 $4c $b3
    or [hl]                                       ; $735a: $b6
    ld c, c                                       ; $735b: $49
    or l                                          ; $735c: $b5
    inc bc                                        ; $735d: $03
    nop                                           ; $735e: $00
    dec bc                                        ; $735f: $0b
    nop                                           ; $7360: $00
    db $f4                                        ; $7361: $f4
    cp $01                                        ; $7362: $fe $01
    rst $00                                       ; $7364: $c7
    jr c, @-$50                                   ; $7365: $38 $ae

    rst $38                                       ; $7367: $ff
    ld [hl], d                                    ; $7368: $72
    ld [$df8d], sp                                ; $7369: $08 $8d $df
    jr nz, @+$37                                  ; $736c: $20 $35

    cp d                                          ; $736e: $ba
    nop                                           ; $736f: $00
    rst $38                                       ; $7370: $ff
    nop                                           ; $7371: $00
    jr c, jr_09d_737c                             ; $7372: $38 $08

    rst $00                                       ; $7374: $c7
    rst $20                                       ; $7375: $e7
    jr @-$66                                      ; $7376: $18 $98

    ld c, $07                                     ; $7378: $0e $07
    cp d                                          ; $737a: $ba
    ld b, l                                       ; $737b: $45

jr_09d_737c:
    ld a, [hl+]                                   ; $737c: $2a
    nop                                           ; $737d: $00
    rst $38                                       ; $737e: $ff
    di                                            ; $737f: $f3
    ld c, h                                       ; $7380: $4c
    adc h                                         ; $7381: $8c
    ld [hl], e                                    ; $7382: $73
    rst $38                                       ; $7383: $ff
    ld b, b                                       ; $7384: $40
    or l                                          ; $7385: $b5
    inc hl                                        ; $7386: $23
    ld c, d                                       ; $7387: $4a
    dec d                                         ; $7388: $15
    ld a, $00                                     ; $7389: $3e $00
    ld d, h                                       ; $738b: $54
    xor e                                         ; $738c: $ab
    rst $38                                       ; $738d: $ff
    ld [hl], d                                    ; $738e: $72
    dec bc                                        ; $738f: $0b
    rst $30                                       ; $7390: $f7
    rlca                                          ; $7391: $07
    ld b, b                                       ; $7392: $40
    xor d                                         ; $7393: $aa
    dec e                                         ; $7394: $1d
    rlca                                          ; $7395: $07
    xor a                                         ; $7396: $af
    ld d, h                                       ; $7397: $54
    ei                                            ; $7398: $fb
    inc b                                         ; $7399: $04
    rst $08                                       ; $739a: $cf
    inc [hl]                                      ; $739b: $34
    ld [bc], a                                    ; $739c: $02
    ld a, b                                       ; $739d: $78
    add a                                         ; $739e: $87
    sub e                                         ; $739f: $93
    rst $38                                       ; $73a0: $ff
    ld [hl-], a                                   ; $73a1: $32

jr_09d_73a2:
    call $01a0                                    ; $73a2: $cd $a0 $01
    ld a, a                                       ; $73a5: $7f
    nop                                           ; $73a6: $00
    xor l                                         ; $73a7: $ad
    ld d, d                                       ; $73a8: $52
    cp $01                                        ; $73a9: $fe $01
    ld b, l                                       ; $73ab: $45
    cp d                                          ; $73ac: $ba
    rst $38                                       ; $73ad: $ff
    nop                                           ; $73ae: $00
    nop                                           ; $73af: $00
    xor b                                         ; $73b0: $a8
    rst $38                                       ; $73b1: $ff
    add c                                         ; $73b2: $81
    ld a, [hl]                                    ; $73b3: $7e
    dec de                                        ; $73b4: $1b
    and $01                                       ; $73b5: $e6 $01
    cp $22                                        ; $73b7: $fe $22
    ld a, [$bc05]                                 ; $73b9: $fa $05 $bc
    inc bc                                        ; $73bc: $03
    nop                                           ; $73bd: $00
    ld e, l                                       ; $73be: $5d
    and d                                         ; $73bf: $a2
    ld a, [bc]                                    ; $73c0: $0a
    inc b                                         ; $73c1: $04
    nop                                           ; $73c2: $00
    ld bc, $57a8                                  ; $73c3: $01 $a8 $57
    rst $38                                       ; $73c6: $ff
    nop                                           ; $73c7: $00
    add hl, hl                                    ; $73c8: $29
    sub $54                                       ; $73c9: $d6 $54
    inc b                                         ; $73cb: $04
    inc b                                         ; $73cc: $04
    sub b                                         ; $73cd: $90
    or h                                          ; $73ce: $b4
    ld [$5fa0], sp                                ; $73cf: $08 $a0 $5f
    ld l, [hl]                                    ; $73d2: $6e
    rrca                                          ; $73d3: $0f
    dec e                                         ; $73d4: $1d
    ld [c], a                                     ; $73d5: $e2
    sub e                                         ; $73d6: $93
    rst $38                                       ; $73d7: $ff
    nop                                           ; $73d8: $00
    ld l, a                                       ; $73d9: $6f
    sub b                                         ; $73da: $90
    rst $00                                       ; $73db: $c7
    cp b                                          ; $73dc: $b8
    ld a, c                                       ; $73dd: $79
    add [hl]                                      ; $73de: $86
    rst $08                                       ; $73df: $cf
    or b                                          ; $73e0: $b0
    nop                                           ; $73e1: $00
    ld a, [hl]                                    ; $73e2: $7e
    add c                                         ; $73e3: $81
    nop                                           ; $73e4: $00
    rst $38                                       ; $73e5: $ff
    inc hl                                        ; $73e6: $23
    sbc $98                                       ; $73e7: $de $98
    rst $38                                       ; $73e9: $ff
    nop                                           ; $73ea: $00
    rst $08                                       ; $73eb: $cf
    jr nc, jr_09d_741e                            ; $73ec: $30 $30

    rst $08                                       ; $73ee: $cf
    rst $38                                       ; $73ef: $ff

jr_09d_73f0:
    nop                                           ; $73f0: $00
    ld d, h                                       ; $73f1: $54
    xor e                                         ; $73f2: $ab
    nop                                           ; $73f3: $00
    ld c, $f1                                     ; $73f4: $0e $f1
    nop                                           ; $73f6: $00
    rst $38                                       ; $73f7: $ff
    ld c, e                                       ; $73f8: $4b
    or h                                          ; $73f9: $b4
    dec d                                         ; $73fa: $15
    rst $38                                       ; $73fb: $ff
    nop                                           ; $73fc: $00
    call nc, $e32b                                ; $73fd: $d4 $2b $e3
    inc e                                         ; $7400: $1c
    db $fc                                        ; $7401: $fc
    inc bc                                        ; $7402: $03
    ld sp, $04ce                                  ; $7403: $31 $ce $04
    xor a                                         ; $7406: $af
    ld d, b                                       ; $7407: $50
    nop                                           ; $7408: $00
    rst $38                                       ; $7409: $ff
    call nz, Call_000_002e                        ; $740a: $c4 $2e $00
    ld a, [c]                                     ; $740d: $f2
    dec c                                         ; $740e: $0d
    nop                                           ; $740f: $00
    cpl                                           ; $7410: $2f
    ret nc                                        ; $7411: $d0

jr_09d_7412:
    ld a, [$ab05]                                 ; $7412: $fa $05 $ab
    rst $38                                       ; $7415: $ff
    pop de                                        ; $7416: $d1
    ld l, $00                                     ; $7417: $2e $00
    adc [hl]                                      ; $7419: $8e
    ld [hl], c                                    ; $741a: $71
    adc c                                         ; $741b: $89
    rst $38                                       ; $741c: $ff
    rst $10                                       ; $741d: $d7

jr_09d_741e:
    jr z, jr_09d_73a2                             ; $741e: $28 $82

    ld a, l                                       ; $7420: $7d
    nop                                           ; $7421: $00
    db $fd                                        ; $7422: $fd
    ld [bc], a                                    ; $7423: $02
    rst $28                                       ; $7424: $ef
    db $10                                        ; $7425: $10
    adc [hl]                                      ; $7426: $8e
    rst $38                                       ; $7427: $ff
    and [hl]                                      ; $7428: $a6
    ld e, c                                       ; $7429: $59
    nop                                           ; $742a: $00
    rst $38                                       ; $742b: $ff
    ld b, b                                       ; $742c: $40
    di                                            ; $742d: $f3
    inc c                                         ; $742e: $0c
    rst $00                                       ; $742f: $c7
    jr c, jr_09d_73f0                             ; $7430: $38 $be

    ld b, c                                       ; $7432: $41
    ld b, b                                       ; $7433: $40
    ld b, h                                       ; $7434: $44
    ld d, $00                                     ; $7435: $16 $00
    pop hl                                        ; $7437: $e1
    ld e, $77                                     ; $7438: $1e $77
    adc b                                         ; $743a: $88
    ld b, $ff                                     ; $743b: $06 $ff
    nop                                           ; $743d: $00
    dec h                                         ; $743e: $25
    jp c, Jump_09d_40ff                           ; $743f: $da $ff $40

    ld h, $d9                                     ; $7442: $26 $d9
    and h                                         ; $7444: $a4
    rst $38                                       ; $7445: $ff
    ld bc, $14eb                                  ; $7446: $01 $eb $14
    jr c, jr_09d_7412                             ; $7449: $38 $c7

    db $ed                                        ; $744b: $ed
    ld [de], a                                    ; $744c: $12
    add l                                         ; $744d: $85
    adc $07                                       ; $744e: $ce $07
    nop                                           ; $7450: $00
    ld c, d                                       ; $7451: $4a

jr_09d_7452:
    or h                                          ; $7452: $b4
    xor b                                         ; $7453: $a8
    ld d, b                                       ; $7454: $50
    ld [c], a                                     ; $7455: $e2
    nop                                           ; $7456: $00
    add hl, bc                                    ; $7457: $09
    add b                                         ; $7458: $80
    db $10                                        ; $7459: $10
    sub [hl]                                      ; $745a: $96
    add b                                         ; $745b: $80
    nop                                           ; $745c: $00
    ld h, b                                       ; $745d: $60
    dec b                                         ; $745e: $05
    or d                                          ; $745f: $b2
    dec e                                         ; $7460: $1d
    nop                                           ; $7461: $00
    rra                                           ; $7462: $1f
    nop                                           ; $7463: $00
    ld [de], a                                    ; $7464: $12
    dec c                                         ; $7465: $0d
    adc d                                         ; $7466: $8a
    rrca                                          ; $7467: $0f
    ld c, $01                                     ; $7468: $0e $01
    ld [bc], a                                    ; $746a: $02
    dec b                                         ; $746b: $05
    nop                                           ; $746c: $00
    rlca                                          ; $746d: $07
    ld bc, $0102                                  ; $746e: $01 $02 $01
    ld d, b                                       ; $7471: $50
    xor a                                         ; $7472: $af
    adc e                                         ; $7473: $8b
    ld [hl], h                                    ; $7474: $74
    nop                                           ; $7475: $00
    db $10                                        ; $7476: $10
    rst $28                                       ; $7477: $ef
    ld d, [hl]                                    ; $7478: $56
    rst $38                                       ; $7479: $ff
    db $fd                                        ; $747a: $fd
    ld [bc], a                                    ; $747b: $02
    db $db                                        ; $747c: $db
    inc h                                         ; $747d: $24
    nop                                           ; $747e: $00
    ld a, a                                       ; $747f: $7f
    add b                                         ; $7480: $80
    ret nc                                        ; $7481: $d0

    cpl                                           ; $7482: $2f
    ld b, b                                       ; $7483: $40
    and b                                         ; $7484: $a0
    and e                                         ; $7485: $a3
    ldh [rP1], a                                  ; $7486: $e0 $00
    ld h, h                                       ; $7488: $64
    sub b                                         ; $7489: $90
    or d                                          ; $748a: $b2
    ld d, b                                       ; $748b: $50
    ret nz                                        ; $748c: $c0

    jr c, @-$06                                   ; $748d: $38 $f8

    ld [$9000], sp                                ; $748f: $08 $00 $90
    ld l, l                                       ; $7492: $6d
    ld b, $ff                                     ; $7493: $06 $ff
    add e                                         ; $7495: $83
    ld bc, $0110                                  ; $7496: $01 $10 $01
    nop                                           ; $7499: $00
    ld hl, $8300                                  ; $749a: $21 $00 $83
    ld b, $08                                     ; $749d: $06 $08
    rra                                           ; $749f: $1f
    dec sp                                        ; $74a0: $3b
    ld h, h                                       ; $74a1: $64
    jr z, jr_09d_7452                             ; $74a2: $28 $ae

    pop de                                        ; $74a4: $d1
    ld [c], a                                     ; $74a5: $e2
    ld [bc], a                                    ; $74a6: $02
    ld d, d                                       ; $74a7: $52
    jr nc, jr_09d_74af                            ; $74a8: $30 $05

    rst $38                                       ; $74aa: $ff
    ld b, h                                       ; $74ab: $44
    cp e                                          ; $74ac: $bb
    nop                                           ; $74ad: $00
    rst $38                                       ; $74ae: $ff

jr_09d_74af:
    nop                                           ; $74af: $00
    add [hl]                                      ; $74b0: $86
    ld a, c                                       ; $74b1: $79
    db $dd                                        ; $74b2: $dd
    ld [hl+], a                                   ; $74b3: $22
    nop                                           ; $74b4: $00
    rst $38                                       ; $74b5: $ff
    nop                                           ; $74b6: $00
    xor $15                                       ; $74b7: $ee $15
    ld [hl], a                                    ; $74b9: $77
    ld a, [bc]                                    ; $74ba: $0a
    cp a                                          ; $74bb: $bf
    inc b                                         ; $74bc: $04
    ld d, a                                       ; $74bd: $57
    ld [$bf21], sp                                ; $74be: $08 $21 $bf
    inc b                                         ; $74c1: $04
    db $10                                        ; $74c2: $10
    inc bc                                        ; $74c3: $03
    inc b                                         ; $74c4: $04
    db $dd                                        ; $74c5: $dd
    ld [bc], a                                    ; $74c6: $02
    xor d                                         ; $74c7: $aa
    inc e                                         ; $74c8: $1c
    inc bc                                        ; $74c9: $03
    db $10                                        ; $74ca: $10
    cp [hl]                                       ; $74cb: $be
    ld b, c                                       ; $74cc: $41
    rst $30                                       ; $74cd: $f7
    inc l                                         ; $74ce: $2c
    inc b                                         ; $74cf: $04
    ld [hl], l                                    ; $74d0: $75
    add b                                         ; $74d1: $80
    ld a, [$0401]                                 ; $74d2: $fa $01 $04
    rst $18                                       ; $74d5: $df
    and b                                         ; $74d6: $a0
    cp $00                                        ; $74d7: $fe $00
    rst $30                                       ; $74d9: $f7
    ret                                           ; $74da: $c9


    ld a, [de]                                    ; $74db: $1a
    nop                                           ; $74dc: $00
    rst $18                                       ; $74dd: $df
    ld [bc], a                                    ; $74de: $02
    and b                                         ; $74df: $a0
    cp a                                          ; $74e0: $bf
    ld b, b                                       ; $74e1: $40
    rst $38                                       ; $74e2: $ff
    add b                                         ; $74e3: $80
    ld [$06d4], a                                 ; $74e4: $ea $d4 $06
    ld [$5528], a                                 ; $74e7: $ea $28 $55
    push de                                       ; $74ea: $d5
    ld [hl], b                                    ; $74eb: $70
    dec b                                         ; $74ec: $05
    push af                                       ; $74ed: $f5
    ld [$f700], sp                                ; $74ee: $08 $00 $f7
    xor d                                         ; $74f1: $aa
    ld a, [$4c80]                                 ; $74f2: $fa $80 $4c
    dec bc                                        ; $74f5: $0b
    ld d, l                                       ; $74f6: $55
    db $fd                                        ; $74f7: $fd
    ld a, [hl+]                                   ; $74f8: $2a
    cp $11                                        ; $74f9: $fe $11
    rst $38                                       ; $74fb: $ff
    nop                                           ; $74fc: $00
    ld [hl], c                                    ; $74fd: $71
    rst $28                                       ; $74fe: $ef
    jr z, jr_09d_7504                             ; $74ff: $28 $03

    ld b, d                                       ; $7501: $42
    dec c                                         ; $7502: $0d
    adc d                                         ; $7503: $8a

jr_09d_7504:
    ld a, [bc]                                    ; $7504: $0a
    cp $ff                                        ; $7505: $fe $ff
    rst $18                                       ; $7507: $df
    sub b                                         ; $7508: $90
    ld [hl-], a                                   ; $7509: $32
    or h                                          ; $750a: $b4
    and b                                         ; $750b: $a0
    ld a, [bc]                                    ; $750c: $0a
    cp $de                                        ; $750d: $fe $de
    ld d, $a0                                     ; $750f: $16 $a0
    ld a, [bc]                                    ; $7511: $0a
    ld bc, $2002                                  ; $7512: $01 $02 $20
    dec bc                                        ; $7515: $0b
    rst $38                                       ; $7516: $ff
    ld e, b                                       ; $7517: $58
    dec d                                         ; $7518: $15
    jr nz, jr_09d_754b                            ; $7519: $20 $30

    ld [hl], a                                    ; $751b: $77
    cp [hl]                                       ; $751c: $be
    ld [hl+], a                                   ; $751d: $22
    jp z, Jump_000_1006                           ; $751e: $ca $06 $10

    ld d, l                                       ; $7521: $55
    xor b                                         ; $7522: $a8
    ld c, b                                       ; $7523: $48
    cp [hl]                                       ; $7524: $be
    ret nz                                        ; $7525: $c0

    inc b                                         ; $7526: $04
    ei                                            ; $7527: $fb
    ld d, h                                       ; $7528: $54
    ld h, b                                       ; $7529: $60
    ld [$aaf5], sp                                ; $752a: $08 $f5 $aa
    rst $08                                       ; $752d: $cf
    ld bc, $e230                                  ; $752e: $01 $30 $e2
    inc e                                         ; $7531: $1c
    ld a, b                                       ; $7532: $78
    add b                                         ; $7533: $80
    ld [hl+], a                                   ; $7534: $22
    ret nz                                        ; $7535: $c0

    nop                                           ; $7536: $00
    add hl, bc                                    ; $7537: $09
    nop                                           ; $7538: $00
    add b                                         ; $7539: $80
    ld b, b                                       ; $753a: $40
    ld b, b                                       ; $753b: $40
    ret nz                                        ; $753c: $c0

    cp b                                          ; $753d: $b8
    rlca                                          ; $753e: $07
    dec e                                         ; $753f: $1d
    ld [bc], a                                    ; $7540: $02
    nop                                           ; $7541: $00
    inc d                                         ; $7542: $14
    rrca                                          ; $7543: $0f
    adc a                                         ; $7544: $8f
    ld [bc], a                                    ; $7545: $02
    add hl, bc                                    ; $7546: $09
    ld b, $07                                     ; $7547: $06 $07
    ld [bc], a                                    ; $7549: $02
    nop                                           ; $754a: $00

jr_09d_754b:
    dec b                                         ; $754b: $05
    ld [bc], a                                    ; $754c: $02
    nop                                           ; $754d: $00
    inc bc                                        ; $754e: $03
    ret nz                                        ; $754f: $c0

    jr nz, jr_09d_75b5                            ; $7550: $20 $63

jr_09d_7552:
    and b                                         ; $7552: $a0
    nop                                           ; $7553: $00
    call nz, $f230                                ; $7554: $c4 $30 $f2
    db $10                                        ; $7557: $10
    jr nz, jr_09d_7552                            ; $7558: $20 $f8

    ld hl, sp+$08                                 ; $755a: $f8 $08
    ld [bc], a                                    ; $755c: $02
    ld [hl], b                                    ; $755d: $70
    adc l                                         ; $755e: $8d
    rst $18                                       ; $755f: $df
    ld h, $83                                     ; $7560: $26 $83
    nop                                           ; $7562: $00
    ldh a, [$08]                                  ; $7563: $f0 $08
    add d                                         ; $7565: $82
    nop                                           ; $7566: $00
    rlca                                          ; $7567: $07
    ld a, [bc]                                    ; $7568: $0a
    rra                                           ; $7569: $1f
    ccf                                           ; $756a: $3f
    ld h, b                                       ; $756b: $60
    sub l                                         ; $756c: $95
    ld [$00ff], a                                 ; $756d: $ea $ff $00
    nop                                           ; $7570: $00
    ld [hl+], a                                   ; $7571: $22
    db $dd                                        ; $7572: $dd
    pop af                                        ; $7573: $f1
    rrca                                          ; $7574: $0f
    adc [hl]                                      ; $7575: $8e
    pop af                                        ; $7576: $f1
    db $fd                                        ; $7577: $fd
    nop                                           ; $7578: $00
    ld [bc], a                                    ; $7579: $02
    inc bc                                        ; $757a: $03
    db $fc                                        ; $757b: $fc
    cp a                                          ; $757c: $bf
    ld b, b                                       ; $757d: $40
    jp hl                                         ; $757e: $e9


    ld d, $00                                     ; $757f: $16 $00
    ld [bc], a                                    ; $7581: $02
    rst $38                                       ; $7582: $ff
    cp c                                          ; $7583: $b9
    ld b, [hl]                                    ; $7584: $46
    ld l, [hl]                                    ; $7585: $6e
    sub c                                         ; $7586: $91
    ld d, h                                       ; $7587: $54
    ld h, a                                       ; $7588: $67
    rlca                                          ; $7589: $07
    scf                                           ; $758a: $37
    nop                                           ; $758b: $00
    ret z                                         ; $758c: $c8

    rst $38                                       ; $758d: $ff
    nop                                           ; $758e: $00
    ld l, c                                       ; $758f: $69
    sub [hl]                                      ; $7590: $96
    dec h                                         ; $7591: $25
    rst $38                                       ; $7592: $ff
    and c                                         ; $7593: $a1
    nop                                           ; $7594: $00
    ld e, [hl]                                    ; $7595: $5e
    call c, $f723                                 ; $7596: $dc $23 $f7
    ld [$857a], sp                                ; $7599: $08 $7a $85
    dec l                                         ; $759c: $2d
    add b                                         ; $759d: $80
    ld a, [de]                                    ; $759e: $1a
    rlca                                          ; $759f: $07
    inc d                                         ; $75a0: $14
    db $eb                                        ; $75a1: $eb
    ld bc, $27fe                                  ; $75a2: $01 $fe $27
    ret z                                         ; $75a5: $c8

    ld a, l                                       ; $75a6: $7d
    nop                                           ; $75a7: $00
    add b                                         ; $75a8: $80
    scf                                           ; $75a9: $37
    ret z                                         ; $75aa: $c8

    or a                                          ; $75ab: $b7
    ret z                                         ; $75ac: $c8

    daa                                           ; $75ad: $27
    ret c                                         ; $75ae: $d8

    sub [hl]                                      ; $75af: $96
    nop                                           ; $75b0: $00
    jp hl                                         ; $75b1: $e9


    inc bc                                        ; $75b2: $03
    db $fc                                        ; $75b3: $fc
    add b                                         ; $75b4: $80

jr_09d_75b5:
    rst $38                                       ; $75b5: $ff
    ld bc, $80fe                                  ; $75b6: $01 $fe $80
    xor e                                         ; $75b9: $ab
    call nz, $8802                                ; $75ba: $c4 $02 $88
    inc l                                         ; $75bd: $2c
    inc de                                        ; $75be: $13
    or [hl]                                       ; $75bf: $b6
    ld a, l                                       ; $75c0: $7d
    rrca                                          ; $75c1: $0f
    rla                                           ; $75c2: $17
    ret nc                                        ; $75c3: $d0

    rlca                                          ; $75c4: $07
    inc b                                         ; $75c5: $04
    ld c, b                                       ; $75c6: $48
    ret nc                                        ; $75c7: $d0

    db $e4                                        ; $75c8: $e4
    inc bc                                        ; $75c9: $03
    ldh [$2d], a                                  ; $75ca: $e0 $2d
    add b                                         ; $75cc: $80
    sub b                                         ; $75cd: $90
    dec b                                         ; $75ce: $05
    add e                                         ; $75cf: $83
    rst $38                                       ; $75d0: $ff
    ld b, c                                       ; $75d1: $41
    cp a                                          ; $75d2: $bf
    ret nz                                        ; $75d3: $c0

    and b                                         ; $75d4: $a0
    dec l                                         ; $75d5: $2d
    ld a, c                                       ; $75d6: $79
    ld [bc], a                                    ; $75d7: $02
    rst $38                                       ; $75d8: $ff
    inc de                                        ; $75d9: $13
    rst $38                                       ; $75da: $ff
    jp nc, Jump_000_08ac                          ; $75db: $d2 $ac $08

    db $10                                        ; $75de: $10
    ldh a, [$e2]                                  ; $75df: $f0 $e2
    add b                                         ; $75e1: $80
    ret nz                                        ; $75e2: $c0

    ld hl, $aac0                                  ; $75e3: $21 $c0 $aa
    rra                                           ; $75e6: $1f
    ld d, $00                                     ; $75e7: $16 $00
    add hl, bc                                    ; $75e9: $09
    add hl, de                                    ; $75ea: $19
    ld b, $8e                                     ; $75eb: $06 $8e
    ld bc, $0609                                  ; $75ed: $01 $09 $06
    dec b                                         ; $75f0: $05
    nop                                           ; $75f1: $00
    ld [bc], a                                    ; $75f2: $02
    dec b                                         ; $75f3: $05
    inc bc                                        ; $75f4: $03
    ld [bc], a                                    ; $75f5: $02
    ld bc, $a040                                  ; $75f6: $01 $40 $a0
    db $e3                                        ; $75f9: $e3
    nop                                           ; $75fa: $00
    and b                                         ; $75fb: $a0
    inc b                                         ; $75fc: $04
    ldh a, [$92]                                  ; $75fd: $f0 $92
    ldh a, [rNR41]                                ; $75ff: $f0 $20
    ret c                                         ; $7601: $d8

    adc b                                         ; $7602: $88
    nop                                           ; $7603: $00
    ld hl, sp+$00                                 ; $7604: $f8 $00
    db $fd                                        ; $7606: $fd
    xor a                                         ; $7607: $af
    rst $38                                       ; $7608: $ff
    push bc                                       ; $7609: $c5
    ld hl, sp+$68                                 ; $760a: $f8 $68
    nop                                           ; $760c: $00
    sub b                                         ; $760d: $90
    ld hl, sp+$00                                 ; $760e: $f8 $00
    ld hl, $f0d0                                  ; $7610: $21 $d0 $f0
    nop                                           ; $7613: $00
    and b                                         ; $7614: $a0
    nop                                           ; $7615: $00
    ldh [$e0], a                                  ; $7616: $e0 $e0
    nop                                           ; $7618: $00
    add b                                         ; $7619: $80
    ld b, b                                       ; $761a: $40
    adc c                                         ; $761b: $89
    rst $38                                       ; $761c: $ff

jr_09d_761d:
    ld d, a                                       ; $761d: $57
    nop                                           ; $761e: $00
    jr z, jr_09d_7633                             ; $761f: $28 $12

    dec c                                         ; $7621: $0d
    ld b, l                                       ; $7622: $45
    ld [bc], a                                    ; $7623: $02
    sub b                                         ; $7624: $90
    ld bc, $0069                                  ; $7625: $01 $69 $00
    ld bc, $0300                                  ; $7628: $01 $00 $03
    inc bc                                        ; $762b: $03
    ld [bc], a                                    ; $762c: $02
    pop bc                                        ; $762d: $c1
    nop                                           ; $762e: $00
    adc b                                         ; $762f: $88
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    add h                                         ; $7632: $84

jr_09d_7633:
    nop                                           ; $7633: $00
    ld b, c                                       ; $7634: $41
    ldh [$d0], a                                  ; $7635: $e0 $d0
    jr c, jr_09d_761d                             ; $7637: $38 $e4

    nop                                           ; $7639: $00
    ld e, $77                                     ; $763a: $1e $77
    adc c                                         ; $763c: $89
    ld b, $ff                                     ; $763d: $06 $ff
    ld bc, $c706                                  ; $763f: $01 $06 $c7
    nop                                           ; $7642: $00

jr_09d_7643:
    inc b                                         ; $7643: $04
    ld h, $09                                     ; $7644: $26 $09
    ld c, h                                       ; $7646: $4c
    rrca                                          ; $7647: $0f
    dec bc                                        ; $7648: $0b
    inc d                                         ; $7649: $14
    jr jr_09d_7654                                ; $764a: $18 $08

    rla                                           ; $764c: $17
    dec c                                         ; $764d: $0d
    or d                                          ; $764e: $b2
    push hl                                       ; $764f: $e5
    jr nc, @+$0c                                  ; $7650: $30 $0a

    or l                                          ; $7652: $b5
    xor e                                         ; $7653: $ab

jr_09d_7654:
    ld d, h                                       ; $7654: $54
    db $10                                        ; $7655: $10
    rst $38                                       ; $7656: $ff
    nop                                           ; $7657: $00
    sub h                                         ; $7658: $94
    db $eb                                        ; $7659: $eb
    rlca                                          ; $765a: $07
    ld l, $d1                                     ; $765b: $2e $d1
    sbc e                                         ; $765d: $9b
    ld h, h                                       ; $765e: $64
    nop                                           ; $765f: $00
    ld a, [c]                                     ; $7660: $f2

jr_09d_7661:
    dec e                                         ; $7661: $1d
    jr nz, jr_09d_7643                            ; $7662: $20 $df

    ld a, [c]                                     ; $7664: $f2
    dec e                                         ; $7665: $1d
    sbc d                                         ; $7666: $9a
    ld a, a                                       ; $7667: $7f
    nop                                           ; $7668: $00
    ld a, [hl]                                    ; $7669: $7e
    add c                                         ; $766a: $81
    ld d, d                                       ; $766b: $52
    xor l                                         ; $766c: $ad
    ccf                                           ; $766d: $3f
    pop bc                                        ; $766e: $c1
    ld [$0015], a                                 ; $766f: $ea $15 $00
    or a                                          ; $7672: $b7
    ld c, c                                       ; $7673: $49
    cp $01                                        ; $7674: $fe $01
    ld c, h                                       ; $7676: $4c
    rst $38                                       ; $7677: $ff
    cp e                                          ; $7678: $bb
    ld b, h                                       ; $7679: $44
    ld bc, $6fd0                                  ; $767a: $01 $d0 $6f
    ld a, e                                       ; $767d: $7b
    call nz, Call_09d_51ae                        ; $767e: $c4 $ae $51
    nop                                           ; $7681: $00
    ld a, [bc]                                    ; $7682: $0a
    nop                                           ; $7683: $00
    nop                                           ; $7684: $00
    db $dd                                        ; $7685: $dd
    ld [hl+], a                                   ; $7686: $22
    ld c, h                                       ; $7687: $4c
    rst $38                                       ; $7688: $ff
    ld hl, sp+$0f                                 ; $7689: $f8 $0f
    add hl, de                                    ; $768b: $19
    xor $00                                       ; $768c: $ee $00
    db $f4                                        ; $768e: $f4
    dec bc                                        ; $768f: $0b
    jr nc, jr_09d_7661                            ; $7690: $30 $cf

    and h                                         ; $7692: $a4
    rst $38                                       ; $7693: $ff
    push af                                       ; $7694: $f5
    ld a, [hl+]                                   ; $7695: $2a
    ld a, [bc]                                    ; $7696: $0a
    sbc $20                                       ; $7697: $de $20
    ld hl, sp+$20                                 ; $7699: $f8 $20
    ld [hl], b                                    ; $769b: $70
    add hl, de                                    ; $769c: $19
    nop                                           ; $769d: $00
    jp nc, $a106                                  ; $769e: $d2 $06 $a1

    nop                                           ; $76a1: $00
    ld e, $1c                                     ; $76a2: $1e $1c
    inc bc                                        ; $76a4: $03
    rla                                           ; $76a5: $17
    ld [$058a], sp                                ; $76a6: $08 $8a $05
    dec c                                         ; $76a9: $0d
    nop                                           ; $76aa: $00
    rlca                                          ; $76ab: $07
    nop                                           ; $76ac: $00
    rlca                                          ; $76ad: $07
    inc b                                         ; $76ae: $04
    inc bc                                        ; $76af: $03
    ld bc, $1302                                  ; $76b0: $01 $02 $13
    nop                                           ; $76b3: $00
    db $ec                                        ; $76b4: $ec
    cp $01                                        ; $76b5: $fe $01
    sbc a                                         ; $76b7: $9f
    ld h, b                                       ; $76b8: $60
    call nc, Call_09d_422b                        ; $76b9: $d4 $2b $42
    add b                                         ; $76bc: $80
    ld l, $01                                     ; $76bd: $2e $01
    dec b                                         ; $76bf: $05
    ld a, [$609f]                                 ; $76c0: $fa $9f $60
    add b                                         ; $76c3: $80
    ld h, b                                       ; $76c4: $60
    db $e3                                        ; $76c5: $e3
    nop                                           ; $76c6: $00
    ldh [$e4], a                                  ; $76c7: $e0 $e4
    db $10                                        ; $76c9: $10
    ld a, [c]                                     ; $76ca: $f2
    db $10                                        ; $76cb: $10
    sub b                                         ; $76cc: $90
    ld l, b                                       ; $76cd: $68
    ld hl, sp+$03                                 ; $76ce: $f8 $03
    ld [$8578], sp                                ; $76d0: $08 $78 $85
    ld b, $ff                                     ; $76d3: $06 $ff
    add d                                         ; $76d5: $82
    ld [hl], b                                    ; $76d6: $70
    ld [de], a                                    ; $76d7: $12
    add b                                         ; $76d8: $80
    ld bc, $1d10                                  ; $76d9: $01 $10 $1d
    dec h                                         ; $76dc: $25
    ld a, d                                       ; $76dd: $7a
    ld [bc], a                                    ; $76de: $02
    dec c                                         ; $76df: $0d
    db $10                                        ; $76e0: $10
    add hl, bc                                    ; $76e1: $09
    ld [hl], d                                    ; $76e2: $72
    ld b, $52                                     ; $76e3: $06 $52
    rst $38                                       ; $76e5: $ff
    ld bc, $8070                                  ; $76e6: $01 $70 $80
    ld [bc], a                                    ; $76e9: $02
    nop                                           ; $76ea: $00
    ret nz                                        ; $76eb: $c0

    cp a                                          ; $76ec: $bf
    inc b                                         ; $76ed: $04
    jr @-$3d                                      ; $76ee: $18 $c1

    nop                                           ; $76f0: $00
    cp a                                          ; $76f1: $bf

jr_09d_76f2:
    rst $38                                       ; $76f2: $ff
    rst $38                                       ; $76f3: $ff
    nop                                           ; $76f4: $00
    rst $38                                       ; $76f5: $ff
    xor d                                         ; $76f6: $aa
    ld d, l                                       ; $76f7: $55
    nop                                           ; $76f8: $00
    db $ec                                        ; $76f9: $ec
    ld b, $00                                     ; $76fa: $06 $00
    ld [$2d00], sp                                ; $76fc: $08 $00 $2d
    nop                                           ; $76ff: $00
    add e                                         ; $7700: $83
    inc d                                         ; $7701: $14
    nop                                           ; $7702: $00
    inc b                                         ; $7703: $04
    ld c, b                                       ; $7704: $48
    sub a                                         ; $7705: $97
    add sp, $00                                   ; $7706: $e8 $00
    xor a                                         ; $7708: $af
    ret nc                                        ; $7709: $d0

    sbc a                                         ; $770a: $9f
    ldh [$b8], a                                  ; $770b: $e0 $b8
    add $9f                                       ; $770d: $c6 $9f
    ldh [rP1], a                                  ; $770f: $e0 $00
    ccf                                           ; $7711: $3f
    ret nz                                        ; $7712: $c0

    sbc a                                         ; $7713: $9f
    ldh [$28], a                                  ; $7714: $e0 $28
    sub $c3                                       ; $7716: $d6 $c3
    rst $38                                       ; $7718: $ff
    jr nc, jr_09d_76f2                            ; $7719: $30 $d7

    rst $28                                       ; $771b: $ef
    inc b                                         ; $771c: $04
    ld c, b                                       ; $771d: $48
    jr jr_09d_7738                                ; $771e: $18 $18

    ccf                                           ; $7720: $3f
    ret nz                                        ; $7721: $c0

    cp a                                          ; $7722: $bf
    ret nz                                        ; $7723: $c0

    ld [bc], a                                    ; $7724: $02
    ld a, $c1                                     ; $7725: $3e $c1
    cp [hl]                                       ; $7727: $be
    ret nz                                        ; $7728: $c0

    ld a, $c0                                     ; $7729: $3e $c0
    inc b                                         ; $772b: $04
    ld [$409e], sp                                ; $772c: $08 $9e $40
    ldh [rDIV], a                                 ; $772f: $e0 $04
    ld [$d0ae], sp                                ; $7731: $08 $ae $d0
    sub [hl]                                      ; $7734: $96
    add sp, -$52                                  ; $7735: $e8 $ae
    ret nc                                        ; $7737: $d0

jr_09d_7738:
    ld bc, $e897                                  ; $7738: $01 $97 $e8
    cp e                                          ; $773b: $bb
    call nz, $c1be                                ; $773c: $c4 $be $c1
    cp a                                          ; $773f: $bf
    jr nz, jr_09d_7742                            ; $7740: $20 $00

jr_09d_7742:
    nop                                           ; $7742: $00
    cp [hl]                                       ; $7743: $be
    pop bc                                        ; $7744: $c1
    cp l                                          ; $7745: $bd
    jp nz, $c4bb                                  ; $7746: $c2 $bb $c4

    ld [$0015], a                                 ; $7749: $ea $15 $00
    db $fd                                        ; $774c: $fd
    ld [bc], a                                    ; $774d: $02
    ld a, $c1                                     ; $774e: $3e $c1
    rlca                                          ; $7750: $07
    jr jr_09d_7792                                ; $7751: $18 $3f

    ret nz                                        ; $7753: $c0

    jr nz, @+$01                                  ; $7754: $20 $ff

    nop                                           ; $7756: $00
    ld [$ab08], sp                                ; $7757: $08 $08 $ab
    ld d, h                                       ; $775a: $54
    ld a, a                                       ; $775b: $7f
    add b                                         ; $775c: $80
    cp $00                                        ; $775d: $fe $00
    ld bc, $00fe                                  ; $775f: $01 $fe $00
    ld a, b                                       ; $7762: $78
    add l                                         ; $7763: $85
    ldh a, [$08]                                  ; $7764: $f0 $08
    ld hl, sp+$10                                 ; $7766: $f8 $10
    inc b                                         ; $7768: $04
    rst $38                                       ; $7769: $ff
    nop                                           ; $776a: $00
    jr nz, @+$0a                                  ; $776b: $20 $08

    cp [hl]                                       ; $776d: $be
    ld b, c                                       ; $776e: $41
    ccf                                           ; $776f: $3f
    add b                                         ; $7770: $80
    add b                                         ; $7771: $80
    inc b                                         ; $7772: $04
    ld [$013e], sp                                ; $7773: $08 $3e $01
    rst $38                                       ; $7776: $ff
    nop                                           ; $7777: $00
    xor e                                         ; $7778: $ab
    ld d, h                                       ; $7779: $54
    ld e, a                                       ; $777a: $5f
    nop                                           ; $777b: $00
    and b                                         ; $777c: $a0
    rst $38                                       ; $777d: $ff
    nop                                           ; $777e: $00
    ld a, [hl]                                    ; $777f: $7e
    add c                                         ; $7780: $81
    cp $01                                        ; $7781: $fe $01
    sbc $00                                       ; $7783: $de $00
    ld hl, $10ef                                  ; $7785: $21 $ef $10
    and $08                                       ; $7788: $e6 $08
    ld a, $c1                                     ; $778a: $3e $c1
    rst $38                                       ; $778c: $ff

jr_09d_778d:
    nop                                           ; $778d: $00
    nop                                           ; $778e: $00
    ld a, [$bd05]                                 ; $778f: $fa $05 $bd

jr_09d_7792:
    ld b, d                                       ; $7792: $42
    ld e, [hl]                                    ; $7793: $5e
    and c                                         ; $7794: $a1
    sbc l                                         ; $7795: $9d
    nop                                           ; $7796: $00
    ld b, d                                       ; $7797: $42
    sbc $01                                       ; $7798: $de $01
    sbc a                                         ; $779a: $9f
    ld b, b                                       ; $779b: $40
    cp a                                          ; $779c: $bf
    ld b, b                                       ; $779d: $40
    ld a, a                                       ; $779e: $7f
    nop                                           ; $779f: $00
    add b                                         ; $77a0: $80
    ld hl, sp+$05                                 ; $77a1: $f8 $05
    ld a, [c]                                     ; $77a3: $f2
    add hl, bc                                    ; $77a4: $09
    ldh a, [rSC]                                  ; $77a5: $f0 $02
    ldh a, [rP1]                                  ; $77a7: $f0 $00
    ld bc, $00f1                                  ; $77a9: $01 $f1 $00
    pop af                                        ; $77ac: $f1
    nop                                           ; $77ad: $00
    cp $01                                        ; $77ae: $fe $01
    rst $28                                       ; $77b0: $ef
    ld bc, $f710                                  ; $77b1: $01 $10 $f7
    ld [$403f], sp                                ; $77b4: $08 $3f $40
    rra                                           ; $77b7: $1f
    jr nz, jr_09d_778d                            ; $77b8: $20 $d3

    ld [$df00], sp                                ; $77ba: $08 $00 $df
    jr nz, @-$0e                                  ; $77bd: $20 $f0

    rlca                                          ; $77bf: $07
    ld hl, sp+$01                                 ; $77c0: $f8 $01
    cp $01                                        ; $77c2: $fe $01
    nop                                           ; $77c4: $00
    rst $30                                       ; $77c5: $f7
    ld [$01ea], sp                                ; $77c6: $08 $ea $01
    db $e4                                        ; $77c9: $e4
    dec bc                                        ; $77ca: $0b
    ldh a, [$03]                                  ; $77cb: $f0 $03
    nop                                           ; $77cd: $00
    ldh a, [rDIV]                                 ; $77ce: $f0 $04
    sbc $21                                       ; $77d0: $de $21
    xor a                                         ; $77d2: $af
    ld b, b                                       ; $77d3: $40
    adc $01                                       ; $77d4: $ce $01
    nop                                           ; $77d6: $00
    xor a                                         ; $77d7: $af
    nop                                           ; $77d8: $00
    rst $18                                       ; $77d9: $df
    nop                                           ; $77da: $00
    cp a                                          ; $77db: $bf
    nop                                           ; $77dc: $00
    ld a, a                                       ; $77dd: $7f
    add b                                         ; $77de: $80
    nop                                           ; $77df: $00
    ld a, a                                       ; $77e0: $7f
    add b                                         ; $77e1: $80
    pop af                                        ; $77e2: $f1
    nop                                           ; $77e3: $00
    ld [hl], c                                    ; $77e4: $71
    add h                                         ; $77e5: $84
    push af                                       ; $77e6: $f5
    ld a, [bc]                                    ; $77e7: $0a
    ld [bc], a                                    ; $77e8: $02
    halt                                          ; $77e9: $76
    add c                                         ; $77ea: $81
    rst $30                                       ; $77eb: $f7
    ld [$08f0], sp                                ; $77ec: $08 $f0 $08
    dec b                                         ; $77ef: $05
    add hl, bc                                    ; $77f0: $09
    sbc [hl]                                      ; $77f1: $9e
    ld bc, $9f41                                  ; $77f2: $01 $41 $9f
    ld b, b                                       ; $77f5: $40
    ld e, [hl]                                    ; $77f6: $5e
    and c                                         ; $77f7: $a1
    dec a                                         ; $77f8: $3d
    ld b, d                                       ; $77f9: $42
    add h                                         ; $77fa: $84
    nop                                           ; $77fb: $00
    nop                                           ; $77fc: $00
    ret nz                                        ; $77fd: $c0

    ld a, [$fd05]                                 ; $77fe: $fa $05 $fd
    ld [bc], a                                    ; $7801: $02
    rst $28                                       ; $7802: $ef
    db $10                                        ; $7803: $10
    ldh a, [rNR41]                                ; $7804: $f0 $20
    ld b, $ff                                     ; $7806: $06 $ff
    ld a, [hl+]                                   ; $7808: $2a
    nop                                           ; $7809: $00
    cp $01                                        ; $780a: $fe $01
    ld sp, hl                                     ; $780c: $f9
    inc b                                         ; $780d: $04
    and $00                                       ; $780e: $e6 $00
    db $10                                        ; $7810: $10
    reti                                          ; $7811: $d9


    jr nz, @-$03                                  ; $7812: $20 $fb

    inc b                                         ; $7814: $04
    db $fd                                        ; $7815: $fd
    ld [bc], a                                    ; $7816: $02
    cp $01                                        ; $7817: $fe $01
    ld bc, $900f                                  ; $7819: $01 $0f $90
    ld h, [hl]                                    ; $781c: $66
    sbc c                                         ; $781d: $99

jr_09d_781e:
    ld e, a                                       ; $781e: $5f
    and b                                         ; $781f: $a0
    inc l                                         ; $7820: $2c
    nop                                           ; $7821: $00
    nop                                           ; $7822: $00
    jr nz, @-$1e                                  ; $7823: $20 $e0

    jr jr_09d_781e                                ; $7825: $18 $f7

    ld [$44b8], sp                                ; $7827: $08 $b8 $44
    ld a, a                                       ; $782a: $7f
    nop                                           ; $782b: $00

jr_09d_782c:
    add b                                         ; $782c: $80
    rst $38                                       ; $782d: $ff
    nop                                           ; $782e: $00
    db $fc                                        ; $782f: $fc
    ld [bc], a                                    ; $7830: $02
    ld hl, sp+$04                                 ; $7831: $f8 $04
    ldh a, [rP1]                                  ; $7833: $f0 $00
    dec bc                                        ; $7835: $0b
    ld c, $31                                     ; $7836: $0e $31
    rst $18                                       ; $7838: $df
    jr nz, jr_09d_787a                            ; $7839: $20 $3f

    ld b, b                                       ; $783b: $40
    cp $80                                        ; $783c: $fe $80

jr_09d_783e:
    cp d                                          ; $783e: $ba
    nop                                           ; $783f: $00
    ld a, [hl]                                    ; $7840: $7e
    add c                                         ; $7841: $81
    ccf                                           ; $7842: $3f
    ld b, b                                       ; $7843: $40
    ld a, [de]                                    ; $7844: $1a

jr_09d_7845:
    and l                                         ; $7845: $a5
    sbc $01                                       ; $7846: $de $01
    ld hl, $08c7                                  ; $7848: $21 $c7 $08
    ld a, [$c001]                                 ; $784b: $fa $01 $c0
    ld h, $61                                     ; $784e: $26 $61
    ld de, $6780                                  ; $7850: $11 $80 $67
    ld bc, $0af5                                  ; $7853: $01 $f5 $0a
    cp $01                                        ; $7856: $fe $01
    ccf                                           ; $7858: $3f
    add b                                         ; $7859: $80
    ld e, $00                                     ; $785a: $1e $00
    pop bc                                        ; $785c: $c1
    rra                                           ; $785d: $1f
    jr nz, jr_09d_783e                            ; $785e: $20 $de

    ld bc, $805f                                  ; $7860: $01 $5f $80

jr_09d_7863:
    rst $08                                       ; $7863: $cf
    nop                                           ; $7864: $00
    db $10                                        ; $7865: $10
    ld e, a                                       ; $7866: $5f
    and b                                         ; $7867: $a0
    cp a                                          ; $7868: $bf
    ld b, b                                       ; $7869: $40
    rst $18                                       ; $786a: $df
    jr nz, jr_09d_782c                            ; $786b: $20 $bf

    nop                                           ; $786d: $00
    ld b, b                                       ; $786e: $40
    ld b, b                                       ; $786f: $40

jr_09d_7870:
    cp e                                          ; $7870: $bb
    ret nz                                        ; $7871: $c0

    inc b                                         ; $7872: $04
    rst $08                                       ; $7873: $cf
    nop                                           ; $7874: $00
    rst $08                                       ; $7875: $cf
    nop                                           ; $7876: $00
    jr nz, jr_09d_7863                            ; $7877: $20 $ea

    dec d                                         ; $7879: $15

jr_09d_787a:
    push af                                       ; $787a: $f5
    ld a, [bc]                                    ; $787b: $0a
    xor $11                                       ; $787c: $ee $11
    rst $38                                       ; $787e: $ff
    nop                                           ; $787f: $00
    nop                                           ; $7880: $00
    ld b, $d9                                     ; $7881: $06 $d9
    rlca                                          ; $7883: $07
    nop                                           ; $7884: $00
    rst $20                                       ; $7885: $e7
    ld [$18e7], sp                                ; $7886: $08 $e7 $18
    ld [$40bf], sp                                ; $7889: $08 $bf $40
    sbc e                                         ; $788c: $9b
    add hl, bc                                    ; $788d: $09
    ld a, [bc]                                    ; $788e: $0a
    nop                                           ; $788f: $00
    nop                                           ; $7890: $00
    di                                            ; $7891: $f3
    inc b                                         ; $7892: $04
    nop                                           ; $7893: $00
    or e                                          ; $7894: $b3
    ld c, b                                       ; $7895: $48
    ld a, c                                       ; $7896: $79
    add d                                         ; $7897: $82
    rst $10                                       ; $7898: $d7
    nop                                           ; $7899: $00
    sla h                                         ; $789a: $cb $24
    nop                                           ; $789c: $00
    add [hl]                                      ; $789d: $86
    ld a, c                                       ; $789e: $79
    ld e, a                                       ; $789f: $5f
    nop                                           ; $78a0: $00
    ld e, $a1                                     ; $78a1: $1e $a1
    dec e                                         ; $78a3: $1d
    ld [c], a                                     ; $78a4: $e2
    nop                                           ; $78a5: $00
    ld e, $c1                                     ; $78a6: $1e $c1
    dec a                                         ; $78a8: $3d
    ld [bc], a                                    ; $78a9: $02
    rst $08                                       ; $78aa: $cf
    jr nz, jr_09d_7870                            ; $78ab: $20 $c3

    inc d                                         ; $78ad: $14
    ld b, b                                       ; $78ae: $40
    jp Jump_000_10ec                              ; $78af: $c3 $ec $10


    rst $28                                       ; $78b2: $ef
    db $10                                        ; $78b3: $10
    sbc $21                                       ; $78b4: $de $21
    db $fd                                        ; $78b6: $fd
    ld [bc], a                                    ; $78b7: $02
    inc b                                         ; $78b8: $04
    rst $20                                       ; $78b9: $e7
    nop                                           ; $78ba: $00
    add a                                         ; $78bb: $87
    jr nc, jr_09d_7845                            ; $78bc: $30 $87

    jp z, $f510                                   ; $78be: $ca $10 $f5

    ld a, [bc]                                    ; $78c1: $0a
    inc b                                         ; $78c2: $04
    ld a, [$7705]                                 ; $78c3: $fa $05 $77
    adc b                                         ; $78c6: $88
    cp c                                          ; $78c7: $b9
    ld e, [hl]                                    ; $78c8: $5e
    nop                                           ; $78c9: $00
    xor a                                         ; $78ca: $af
    ld d, b                                       ; $78cb: $50
    jr nz, @+$01                                  ; $78cc: $20 $ff

    nop                                           ; $78ce: $00
    sbc h                                         ; $78cf: $9c
    nop                                           ; $78d0: $00
    add hl, bc                                    ; $78d1: $09
    rst $20                                       ; $78d2: $e7
    db $10                                        ; $78d3: $10
    rst $20                                       ; $78d4: $e7
    ld [$8e18], sp                                ; $78d5: $08 $18 $8e
    ld b, c                                       ; $78d8: $41
    rlca                                          ; $78d9: $07
    db $ed                                        ; $78da: $ed
    ld bc, $00c2                                  ; $78db: $01 $c2 $00
    ldh a, [rTMA]                                 ; $78de: $f0 $06
    add hl, bc                                    ; $78e0: $09
    nop                                           ; $78e1: $00
    rst $38                                       ; $78e2: $ff
    nop                                           ; $78e3: $00
    adc a                                         ; $78e4: $8f
    ld h, b                                       ; $78e5: $60
    ld a, [$fb05]                                 ; $78e6: $fa $05 $fb
    nop                                           ; $78e9: $00
    nop                                           ; $78ea: $00
    ld a, [$fb01]                                 ; $78eb: $fa $01 $fb
    nop                                           ; $78ee: $00
    ld a, d                                       ; $78ef: $7a
    add c                                         ; $78f0: $81
    ei                                            ; $78f1: $fb
    nop                                           ; $78f2: $00
    nop                                           ; $78f3: $00
    cp d                                          ; $78f4: $ba
    ld b, b                                       ; $78f5: $40
    db $db                                        ; $78f6: $db
    jr nz, jr_09d_7977                            ; $78f7: $20 $7e

    ld bc, $027d                                  ; $78f9: $01 $7d $02
    add c                                         ; $78fc: $81
    inc b                                         ; $78fd: $04
    nop                                           ; $78fe: $00
    add d                                         ; $78ff: $82
    cp [hl]                                       ; $7900: $be
    ld bc, $003f                                  ; $7901: $01 $3f $00
    cp [hl]                                       ; $7904: $be
    inc c                                         ; $7905: $0c
    nop                                           ; $7906: $00
    nop                                           ; $7907: $00
    rst $20                                       ; $7908: $e7
    nop                                           ; $7909: $00
    pop af                                        ; $790a: $f1
    ld [bc], a                                    ; $790b: $02
    ld hl, sp+$01                                 ; $790c: $f8 $01
    db $ec                                        ; $790e: $ec
    ld [de], a                                    ; $790f: $12
    nop                                           ; $7910: $00
    db $fc                                        ; $7911: $fc
    nop                                           ; $7912: $00

jr_09d_7913:
    db $fc                                        ; $7913: $fc
    inc bc                                        ; $7914: $03
    ei                                            ; $7915: $fb
    inc b                                         ; $7916: $04
    ei                                            ; $7917: $fb

jr_09d_7918:
    nop                                           ; $7918: $00
    nop                                           ; $7919: $00
    ld [hl], a                                    ; $791a: $77
    nop                                           ; $791b: $00
    db $db                                        ; $791c: $db
    inc b                                         ; $791d: $04
    cp e                                          ; $791e: $bb
    inc b                                         ; $791f: $04
    rlca                                          ; $7920: $07
    ret z                                         ; $7921: $c8

    add b                                         ; $7922: $80
    ret nc                                        ; $7923: $d0

jr_09d_7924:
    jr jr_09d_7924                                ; $7924: $18 $fe

    ld bc, $40ba                                  ; $7926: $01 $ba $40
    reti                                          ; $7929: $d9


    ld [hl+], a                                   ; $792a: $22
    ld sp, hl                                     ; $792b: $f9
    ld c, c                                       ; $792c: $49
    ld [bc], a                                    ; $792d: $02
    sbc $28                                       ; $792e: $de $28
    xor $11                                       ; $7930: $ee $11
    inc [hl]                                      ; $7932: $34
    add hl, bc                                    ; $7933: $09
    rst $38                                       ; $7934: $ff
    nop                                           ; $7935: $00
    inc b                                         ; $7936: $04
    ld [$9498], sp                                ; $7937: $08 $98 $94
    jr jr_09d_7918                                ; $793a: $18 $dc

    jr nz, jr_09d_7978                            ; $793c: $20 $3a

    nop                                           ; $793e: $00
    ret z                                         ; $793f: $c8

    ld bc, $00ff                                  ; $7940: $01 $ff $00
    ret nz                                        ; $7943: $c0

    inc b                                         ; $7944: $04
    inc l                                         ; $7945: $2c
    ret nz                                        ; $7946: $c0

    ld a, [bc]                                    ; $7947: $0a
    rst $08                                       ; $7948: $cf
    jr nz, jr_09d_799f                            ; $7949: $20 $54

    add hl, bc                                    ; $794b: $09
    ld a, [$0405]                                 ; $794c: $fa $05 $04
    dec [hl]                                      ; $794f: $35
    jp z, Jump_09d_453a                           ; $7950: $ca $3a $45

    sbc a                                         ; $7953: $9f
    ld l, h                                       ; $7954: $6c
    ld bc, $12cd                                  ; $7955: $01 $cd $12
    nop                                           ; $7958: $00
    xor a                                         ; $7959: $af
    ld d, b                                       ; $795a: $50
    ld a, a                                       ; $795b: $7f
    add b                                         ; $795c: $80
    db $fc                                        ; $795d: $fc
    ld [bc], a                                    ; $795e: $02
    ld sp, hl                                     ; $795f: $f9
    nop                                           ; $7960: $00
    ld [de], a                                    ; $7961: $12
    di                                            ; $7962: $f3
    ld [$04f7], sp                                ; $7963: $08 $f7 $04
    nop                                           ; $7966: $00
    cp c                                          ; $7967: $b9
    ld b, h                                       ; $7968: $44
    ld [hl], h                                    ; $7969: $74
    add hl, bc                                    ; $796a: $09
    ld a, [hl]                                    ; $796b: $7e
    nop                                           ; $796c: $00
    ld bc, $4837                                  ; $796d: $01 $37 $48
    sbc d                                         ; $7970: $9a
    dec h                                         ; $7971: $25
    rst $18                                       ; $7972: $df
    jr nz, jr_09d_7913                            ; $7973: $20 $9e

    add b                                         ; $7975: $80
    add h                                         ; $7976: $84

jr_09d_7977:
    nop                                           ; $7977: $00

jr_09d_7978:
    xor a                                         ; $7978: $af
    ld d, b                                       ; $7979: $50
    ld e, a                                       ; $797a: $5f
    and b                                         ; $797b: $a0
    cp [hl]                                       ; $797c: $be
    ld b, c                                       ; $797d: $41
    ld [hl], b                                    ; $797e: $70
    ld de, $fe8c                                  ; $797f: $11 $8c $fe

jr_09d_7982:
    ld bc, $0a28                                  ; $7982: $01 $28 $0a
    ld [hl], b                                    ; $7985: $70
    adc h                                         ; $7986: $8c
    jp z, $0194                                   ; $7987: $ca $94 $01

    ld b, b                                       ; $798a: $40
    rst $30                                       ; $798b: $f7
    xor d                                         ; $798c: $aa
    ld bc, $807f                                  ; $798d: $01 $7f $80
    ccf                                           ; $7990: $3f
    nop                                           ; $7991: $00
    ccf                                           ; $7992: $3f
    ld b, b                                       ; $7993: $40
    ld a, [bc]                                    ; $7994: $0a
    scf                                           ; $7995: $37
    ld [$20dc], sp                                ; $7996: $08 $dc $20
    inc a                                         ; $7999: $3c
    nop                                           ; $799a: $00
    inc c                                         ; $799b: $0c
    inc a                                         ; $799c: $3c
    nop                                           ; $799d: $00
    inc b                                         ; $799e: $04

jr_09d_799f:
    ld bc, $02f9                                  ; $799f: $01 $f9 $02
    cp h                                          ; $79a2: $bc
    ld b, b                                       ; $79a3: $40
    ld a, c                                       ; $79a4: $79
    add h                                         ; $79a5: $84
    ld a, [hl]                                    ; $79a6: $7e
    ld e, [hl]                                    ; $79a7: $5e
    ld bc, $9e01                                  ; $79a8: $01 $01 $9e
    ld b, c                                       ; $79ab: $41
    rst $18                                       ; $79ac: $df
    nop                                           ; $79ad: $00
    sbc d                                         ; $79ae: $9a
    dec h                                         ; $79af: $25
    dec a                                         ; $79b0: $3d
    ret z                                         ; $79b1: $c8

    nop                                           ; $79b2: $00

jr_09d_79b3:
    jr nc, jr_09d_79ea                            ; $79b3: $30 $35

    ld c, d                                       ; $79b5: $4a
    adc d                                         ; $79b6: $8a
    add hl, bc                                    ; $79b7: $09

jr_09d_79b8:
    xor d                                         ; $79b8: $aa
    jr jr_09d_79b8                                ; $79b9: $18 $fd

    ld [bc], a                                    ; $79bb: $02
    db $fd                                        ; $79bc: $fd
    nop                                           ; $79bd: $00
    ld b, b                                       ; $79be: $40
    db $fd                                        ; $79bf: $fd
    jr nz, jr_09d_79d4                            ; $79c0: $20 $12

jr_09d_79c2:
    or $09                                        ; $79c2: $f6 $09
    ccf                                           ; $79c4: $3f
    ret nz                                        ; $79c5: $c0

    sbc $21                                       ; $79c6: $de $21
    ld b, b                                       ; $79c8: $40
    ld a, a                                       ; $79c9: $7f
    inc l                                         ; $79ca: $2c
    ld [bc], a                                    ; $79cb: $02
    rst $18                                       ; $79cc: $df
    jr nz, jr_09d_79c2                            ; $79cd: $20 $f3

    ld [$8877], sp                                ; $79cf: $08 $77 $88
    ret nz                                        ; $79d2: $c0

    inc a                                         ; $79d3: $3c

jr_09d_79d4:
    nop                                           ; $79d4: $00
    cp [hl]                                       ; $79d5: $be
    ld bc, $00fc                                  ; $79d6: $01 $fc $00
    cp c                                          ; $79d9: $b9
    ld b, d                                       ; $79da: $42
    ld [hl], e                                    ; $79db: $73
    adc b                                         ; $79dc: $88
    nop                                           ; $79dd: $00
    sbc d                                         ; $79de: $9a
    dec h                                         ; $79df: $25
    rst $10                                       ; $79e0: $d7
    jr z, jr_09d_7982                             ; $79e1: $28 $9f

    nop                                           ; $79e3: $00
    ccf                                           ; $79e4: $3f
    ret nz                                        ; $79e5: $c0

    ld b, h                                       ; $79e6: $44
    ld a, [hl]                                    ; $79e7: $7e
    ld [hl], b                                    ; $79e8: $70
    nop                                           ; $79e9: $00

jr_09d_79ea:
    ld a, $41                                     ; $79ea: $3e $41
    sbc a                                         ; $79ec: $9f
    ld [hl-], a                                   ; $79ed: $32
    nop                                           ; $79ee: $00
    db $fd                                        ; $79ef: $fd
    nop                                           ; $79f0: $00
    ld hl, $40bd                                  ; $79f1: $21 $bd $40
    inc b                                         ; $79f4: $04
    jr jr_09d_79b3                                ; $79f5: $18 $bc

    ld b, c                                       ; $79f7: $41
    call c, $9421                                 ; $79f8: $dc $21 $94
    ld a, [bc]                                    ; $79fb: $0a
    add b                                         ; $79fc: $80
    ld b, b                                       ; $79fd: $40
    add hl, bc                                    ; $79fe: $09
    rst $38                                       ; $79ff: $ff
    nop                                           ; $7a00: $00
    ld c, $11                                     ; $7a01: $0e $11
    rrca                                          ; $7a03: $0f
    ld b, b                                       ; $7a04: $40
    adc $38                                       ; $7a05: $ce $38
    ld de, $80b7                                  ; $7a07: $11 $b7 $80
    ld [bc], a                                    ; $7a0a: $02
    ld e, [hl]                                    ; $7a0b: $5e
    db $10                                        ; $7a0c: $10
    ld a, d                                       ; $7a0d: $7a
    ld [bc], a                                    ; $7a0e: $02
    ldh [rNR21], a                                ; $7a0f: $e0 $16
    rst $18                                       ; $7a11: $df
    ret nz                                        ; $7a12: $c0

    sub $01                                       ; $7a13: $d6 $01
    ld c, e                                       ; $7a15: $4b
    dec bc                                        ; $7a16: $0b
    ld a, a                                       ; $7a17: $7f
    add b                                         ; $7a18: $80
    ld c, $51                                     ; $7a19: $0e $51
    rst $20                                       ; $7a1b: $e7
    nop                                           ; $7a1c: $00
    inc c                                         ; $7a1d: $0c
    ld a, $41                                     ; $7a1e: $3e $41
    rst $38                                       ; $7a20: $ff
    nop                                           ; $7a21: $00
    ret nz                                        ; $7a22: $c0

    add hl, bc                                    ; $7a23: $09
    ld [hl-], a                                   ; $7a24: $32
    ld a, [bc]                                    ; $7a25: $0a
    cp $01                                        ; $7a26: $fe $01
    add b                                         ; $7a28: $80
    ld b, b                                       ; $7a29: $40
    add hl, bc                                    ; $7a2a: $09
    rst $30                                       ; $7a2b: $f7
    ld [$c0bb], sp                                ; $7a2c: $08 $bb $c0
    cp e                                          ; $7a2f: $bb
    ret nz                                        ; $7a30: $c0

    sbc b                                         ; $7a31: $98
    nop                                           ; $7a32: $00
    push hl                                       ; $7a33: $e5
    cp d                                          ; $7a34: $ba
    call nz, $e29d                                ; $7a35: $c4 $9d $e2
    xor a                                         ; $7a38: $af
    ret nc                                        ; $7a39: $d0

    sub l                                         ; $7a3a: $95
    ld b, h                                       ; $7a3b: $44
    ld [$0372], a                                 ; $7a3c: $ea $72 $03
    add sp, -$01                                  ; $7a3f: $e8 $ff
    ld d, l                                       ; $7a41: $55
    inc b                                         ; $7a42: $04
    ld c, b                                       ; $7a43: $48
    ret nc                                        ; $7a44: $d0

    rrca                                          ; $7a45: $0f
    nop                                           ; $7a46: $00
    ld a, [c]                                     ; $7a47: $f2
    dec c                                         ; $7a48: $0d
    pop af                                        ; $7a49: $f1
    ld c, $d4                                     ; $7a4a: $0e $d4
    dec bc                                        ; $7a4c: $0b
    ld a, [c]                                     ; $7a4d: $f2
    dec c                                         ; $7a4e: $0d
    nop                                           ; $7a4f: $00
    or l                                          ; $7a50: $b5
    ld a, [bc]                                    ; $7a51: $0a
    or d                                          ; $7a52: $b2
    dec c                                         ; $7a53: $0d
    and d                                         ; $7a54: $a2
    dec c                                         ; $7a55: $0d
    push af                                       ; $7a56: $f5
    ld a, [bc]                                    ; $7a57: $0a
    ld [bc], a                                    ; $7a58: $02
    and b                                         ; $7a59: $a0
    rrca                                          ; $7a5a: $0f
    push de                                       ; $7a5b: $d5
    ld a, [bc]                                    ; $7a5c: $0a
    db $f4                                        ; $7a5d: $f4
    dec bc                                        ; $7a5e: $0b
    jr jr_09d_7a69                                ; $7a5f: $18 $08

    xor [hl]                                      ; $7a61: $ae
    add hl, bc                                    ; $7a62: $09
    nop                                           ; $7a63: $00
    db $dd                                        ; $7a64: $dd
    nop                                           ; $7a65: $00
    add c                                         ; $7a66: $81
    cp h                                          ; $7a67: $bc
    inc sp                                        ; $7a68: $33

jr_09d_7a69:
    ret nz                                        ; $7a69: $c0

    cp a                                          ; $7a6a: $bf
    or b                                          ; $7a6b: $b0
    dec bc                                        ; $7a6c: $0b
    ld b, b                                       ; $7a6d: $40
    cp a                                          ; $7a6e: $bf
    ld b, $01                                     ; $7a6f: $06 $01
    db $dd                                        ; $7a71: $dd
    ld [bc], a                                    ; $7a72: $02
    ld c, [hl]                                    ; $7a73: $4e
    sub c                                         ; $7a74: $91
    xor l                                         ; $7a75: $ad
    ld d, d                                       ; $7a76: $52
    ld [bc], a                                    ; $7a77: $02
    ld a, [$7505]                                 ; $7a78: $fa $05 $75
    adc d                                         ; $7a7b: $8a
    xor d                                         ; $7a7c: $aa
    rst $38                                       ; $7a7d: $ff
    db $e4                                        ; $7a7e: $e4
    ld [bc], a                                    ; $7a7f: $02
    dec bc                                        ; $7a80: $0b
    db $10                                        ; $7a81: $10
    ld hl, sp+$04                                 ; $7a82: $f8 $04
    db $fc                                        ; $7a84: $fc
    sub d                                         ; $7a85: $92
    ld de, $807f                                  ; $7a86: $11 $7f $80
    xor d                                         ; $7a89: $aa
    rst $38                                       ; $7a8a: $ff
    inc b                                         ; $7a8b: $04
    rra                                           ; $7a8c: $1f
    add b                                         ; $7a8d: $80
    rra                                           ; $7a8e: $1f
    and b                                         ; $7a8f: $a0
    ccf                                           ; $7a90: $3f
    inc h                                         ; $7a91: $24
    inc bc                                        ; $7a92: $03
    cp $01                                        ; $7a93: $fe $01
    nop                                           ; $7a95: $00
    push af                                       ; $7a96: $f5
    ld a, [bc]                                    ; $7a97: $0a
    ld [$aa15], a                                 ; $7a98: $ea $15 $aa
    rst $38                                       ; $7a9b: $ff
    cp a                                          ; $7a9c: $bf
    ld b, b                                       ; $7a9d: $40
    nop                                           ; $7a9e: $00
    ld a, b                                       ; $7a9f: $78
    add h                                         ; $7aa0: $84
    rst $30                                       ; $7aa1: $f7
    ld [$906f], sp                                ; $7aa2: $08 $6f $90
    ldh [rNR10], a                                ; $7aa5: $e0 $10
    nop                                           ; $7aa7: $00
    ld a, a                                       ; $7aa8: $7f
    add b                                         ; $7aa9: $80
    cp a                                          ; $7aaa: $bf
    ld b, b                                       ; $7aab: $40
    xor d                                         ; $7aac: $aa
    rst $38                                       ; $7aad: $ff
    ld c, d                                       ; $7aae: $4a
    or b                                          ; $7aaf: $b0
    nop                                           ; $7ab0: $00
    dec hl                                        ; $7ab1: $2b
    ret nc                                        ; $7ab2: $d0

    ld c, $f0                                     ; $7ab3: $0e $f0
    db $db                                        ; $7ab5: $db
    nop                                           ; $7ab6: $00
    db $ed                                        ; $7ab7: $ed
    nop                                           ; $7ab8: $00
    nop                                           ; $7ab9: $00
    cp [hl]                                       ; $7aba: $be
    nop                                           ; $7abb: $00
    db $eb                                        ; $7abc: $eb
    nop                                           ; $7abd: $00
    cp l                                          ; $7abe: $bd
    nop                                           ; $7abf: $00
    db $dd                                        ; $7ac0: $dd
    ldh a, [rP1]                                  ; $7ac1: $f0 $00
    cp d                                          ; $7ac3: $ba
    ldh a, [$fe]                                  ; $7ac4: $f0 $fe
    ldh a, [rNR33]                                ; $7ac6: $f0 $1d
    ldh [rWY], a                                  ; $7ac8: $e0 $4a
    or b                                          ; $7aca: $b0
    add b                                         ; $7acb: $80
    inc b                                         ; $7acc: $04
    ld [$d02f], sp                                ; $7acd: $08 $2f $d0
    ld a, [c]                                     ; $7ad0: $f2
    db $fd                                        ; $7ad1: $fd
    ldh a, [rIE]                                  ; $7ad2: $f0 $ff
    db $f4                                        ; $7ad4: $f4
    nop                                           ; $7ad5: $00
    dec bc                                        ; $7ad6: $0b
    and b                                         ; $7ad7: $a0
    rrca                                          ; $7ad8: $0f
    pop de                                        ; $7ad9: $d1
    ld c, $b4                                     ; $7ada: $0e $b4
    dec bc                                        ; $7adc: $0b
    jp nc, $9480                                  ; $7add: $d2 $80 $94

    nop                                           ; $7ae0: $00
    cp e                                          ; $7ae1: $bb
    rrca                                          ; $7ae2: $0f
    rst $28                                       ; $7ae3: $ef
    rrca                                          ; $7ae4: $0f
    cp l                                          ; $7ae5: $bd
    rrca                                          ; $7ae6: $0f
    db $eb                                        ; $7ae7: $eb
    add b                                         ; $7ae8: $80
    inc b                                         ; $7ae9: $04
    nop                                           ; $7aea: $00
    cp [hl]                                       ; $7aeb: $be
    rrca                                          ; $7aec: $0f
    jp c, $ab0f                                   ; $7aed: $da $0f $ab

    rrca                                          ; $7af0: $0f
    xor d                                         ; $7af1: $aa
    adc b                                         ; $7af2: $88
    ld c, d                                       ; $7af3: $4a
    inc bc                                        ; $7af4: $03
    and b                                         ; $7af5: $a0
    rrca                                          ; $7af6: $0f
    pop hl                                        ; $7af7: $e1
    ld e, $10                                     ; $7af8: $1e $10
    ldh a, [rIE]                                  ; $7afa: $f0 $ff
    jp nc, $fd10                                  ; $7afc: $d2 $10 $fd

    ld c, l                                       ; $7aff: $4d
    or b                                          ; $7b00: $b0
    ld a, [hl-]                                   ; $7b01: $3a
    ld [$f00b], sp                                ; $7b02: $08 $0b $f0
    ld e, a                                       ; $7b05: $5f
    and b                                         ; $7b06: $a0
    nop                                           ; $7b07: $00
    ld a, [hl+]                                   ; $7b08: $2a
    ret nc                                        ; $7b09: $d0

    dec c                                         ; $7b0a: $0d
    ldh a, [$5d]                                  ; $7b0b: $f0 $5d
    and b                                         ; $7b0d: $a0
    and h                                         ; $7b0e: $a4
    dec bc                                        ; $7b0f: $0b
    nop                                           ; $7b10: $00
    ldh a, [rIF]                                  ; $7b11: $f0 $0f
    and b                                         ; $7b13: $a0
    rrca                                          ; $7b14: $0f
    ld [c], a                                     ; $7b15: $e2
    dec c                                         ; $7b16: $0d
    and b                                         ; $7b17: $a0
    rrca                                          ; $7b18: $0f
    nop                                           ; $7b19: $00
    call nc, $e20b                                ; $7b1a: $d4 $0b $e2
    dec c                                         ; $7b1d: $0d
    or b                                          ; $7b1e: $b0
    rrca                                          ; $7b1f: $0f
    rst $18                                       ; $7b20: $df
    rrca                                          ; $7b21: $0f
    db $10                                        ; $7b22: $10
    ld [$ad0f], a                                 ; $7b23: $ea $0f $ad
    ld a, [hl-]                                   ; $7b26: $3a
    nop                                           ; $7b27: $00
    rst $38                                       ; $7b28: $ff
    rrca                                          ; $7b29: $0f
    db $dd                                        ; $7b2a: $dd
    rrca                                          ; $7b2b: $0f
    ld [$0ffb], sp                                ; $7b2c: $08 $fb $0f
    dec c                                         ; $7b2f: $0d
    rst $38                                       ; $7b30: $ff
    ld c, $04                                     ; $7b31: $0e $04
    ld b, c                                       ; $7b33: $41
    db $dd                                        ; $7b34: $dd

jr_09d_7b35:
    ld [hl+], a                                   ; $7b35: $22
    nop                                           ; $7b36: $00
    xor $11                                       ; $7b37: $ee $11
    dec c                                         ; $7b39: $0d
    ld [de], a                                    ; $7b3a: $12
    ld a, [$f505]                                 ; $7b3b: $fa $05 $f5
    ld a, [bc]                                    ; $7b3e: $0a
    ld bc, $ffaa                                  ; $7b3f: $01 $aa $ff
    call nz, $9108                                ; $7b42: $c4 $08 $91
    inc h                                         ; $7b45: $24
    cp e                                          ; $7b46: $bb
    db $f4                                        ; $7b47: $f4
    ld [bc], a                                    ; $7b48: $02
    add b                                         ; $7b49: $80
    ld d, d                                       ; $7b4a: $52
    dec bc                                        ; $7b4b: $0b
    ld e, a                                       ; $7b4c: $5f
    and b                                         ; $7b4d: $a0
    xor d                                         ; $7b4e: $aa
    rst $38                                       ; $7b4f: $ff
    ld b, a                                       ; $7b50: $47
    adc b                                         ; $7b51: $88
    inc de                                        ; $7b52: $13
    jr nz, @+$06                                  ; $7b53: $20 $04

    cp e                                          ; $7b55: $bb
    ld [hl], b                                    ; $7b56: $70
    ld de, $11ee                                  ; $7b57: $11 $ee $11
    push de                                       ; $7b5a: $d5
    ld a, [hl+]                                   ; $7b5b: $2a
    xor d                                         ; $7b5c: $aa
    nop                                           ; $7b5d: $00
    rst $38                                       ; $7b5e: $ff
    rst $08                                       ; $7b5f: $cf
    nop                                           ; $7b60: $00
    call z, $cc22                                 ; $7b61: $cc $22 $cc
    ld de, $01cc                                  ; $7b64: $11 $cc $01
    jr nz, jr_09d_7b35                            ; $7b67: $20 $cc

    ld hl, $00ff                                  ; $7b69: $21 $ff $00
    ld d, a                                       ; $7b6c: $57
    xor b                                         ; $7b6d: $a8
    db $10                                        ; $7b6e: $10
    ld [$cf01], sp                                ; $7b6f: $08 $01 $cf
    db $10                                        ; $7b72: $10
    rst $08                                       ; $7b73: $cf
    db $10                                        ; $7b74: $10
    rrca                                          ; $7b75: $0f
    ld b, b                                       ; $7b76: $40
    ld c, $e0                                     ; $7b77: $0e $e0
    ld bc, $e083                                  ; $7b79: $01 $83 $e0
    ld [$20df], sp                                ; $7b7c: $08 $df $20
    rst $28                                       ; $7b7f: $ef
    nop                                           ; $7b80: $00
    ldh a, [$da]                                  ; $7b81: $f0 $da
    ld [bc], a                                    ; $7b83: $02
    db $fc                                        ; $7b84: $fc
    dec bc                                        ; $7b85: $0b
    nop                                           ; $7b86: $00
    xor e                                         ; $7b87: $ab
    ld d, h                                       ; $7b88: $54
    xor d                                         ; $7b89: $aa
    rst $38                                       ; $7b8a: $ff
    cp $01                                        ; $7b8b: $fe $01
    rst $20                                       ; $7b8d: $e7
    jr jr_09d_7bc0                                ; $7b8e: $18 $30

    ld e, $61                                     ; $7b90: $1e $61
    or h                                          ; $7b92: $b4
    dec bc                                        ; $7b93: $0b
    ld a, b                                       ; $7b94: $78
    ld a, [bc]                                    ; $7b95: $0a
    xor d                                         ; $7b96: $aa
    rst $38                                       ; $7b97: $ff
    rst $30                                       ; $7b98: $f7
    nop                                           ; $7b99: $00
    nop                                           ; $7b9a: $00
    or $00                                        ; $7b9b: $f6 $00
    pop af                                        ; $7b9d: $f1
    ld a, [bc]                                    ; $7b9e: $0a
    ld [hl], h                                    ; $7b9f: $74
    adc c                                         ; $7ba0: $89
    cp e                                          ; $7ba1: $bb
    ld b, h                                       ; $7ba2: $44
    ld [bc], a                                    ; $7ba3: $02
    ld e, a                                       ; $7ba4: $5f
    and b                                         ; $7ba5: $a0
    xor l                                         ; $7ba6: $ad
    ld d, d                                       ; $7ba7: $52
    xor d                                         ; $7ba8: $aa
    rst $38                                       ; $7ba9: $ff
    and b                                         ; $7baa: $a0
    ld [$80bb], sp                                ; $7bab: $08 $bb $80
    sub [hl]                                      ; $7bae: $96
    nop                                           ; $7baf: $00
    cp d                                          ; $7bb0: $ba
    rrca                                          ; $7bb1: $0f
    db $fd                                        ; $7bb2: $fd
    rrca                                          ; $7bb3: $0f
    cp a                                          ; $7bb4: $bf
    rst $38                                       ; $7bb5: $ff
    sbc $00                                       ; $7bb6: $de $00
    rst $38                                       ; $7bb8: $ff
    ld c, e                                       ; $7bb9: $4b
    cp a                                          ; $7bba: $bf
    add hl, hl                                    ; $7bbb: $29
    rst $18                                       ; $7bbc: $df
    ld c, e                                       ; $7bbd: $4b
    cp a                                          ; $7bbe: $bf
    dec c                                         ; $7bbf: $0d

jr_09d_7bc0:
    ld [bc], a                                    ; $7bc0: $02
    rst $38                                       ; $7bc1: $ff
    ei                                            ; $7bc2: $fb
    rst $38                                       ; $7bc3: $ff
    db $dd                                        ; $7bc4: $dd
    rst $38                                       ; $7bc5: $ff
    cp a                                          ; $7bc6: $bf
    inc b                                         ; $7bc7: $04
    nop                                           ; $7bc8: $00
    ld [de], a                                    ; $7bc9: $12
    nop                                           ; $7bca: $00
    db $ed                                        ; $7bcb: $ed
    ld b, h                                       ; $7bcc: $44
    cp e                                          ; $7bcd: $bb
    inc d                                         ; $7bce: $14
    db $eb                                        ; $7bcf: $eb
    ld b, d                                       ; $7bd0: $42
    cp l                                          ; $7bd1: $bd
    or h                                          ; $7bd2: $b4
    add b                                         ; $7bd3: $80
    cp [hl]                                       ; $7bd4: $be
    nop                                           ; $7bd5: $00
    ret nc                                        ; $7bd6: $d0

    rrca                                          ; $7bd7: $0f
    or b                                          ; $7bd8: $b0
    rrca                                          ; $7bd9: $0f
    db $ed                                        ; $7bda: $ed
    rst $38                                       ; $7bdb: $ff
    cp d                                          ; $7bdc: $ba
    add b                                         ; $7bdd: $80
    ld a, [de]                                    ; $7bde: $1a
    nop                                           ; $7bdf: $00
    xor d                                         ; $7be0: $aa
    rst $38                                       ; $7be1: $ff
    cp l                                          ; $7be2: $bd
    rst $38                                       ; $7be3: $ff
    db $db                                        ; $7be4: $db
    rst $38                                       ; $7be5: $ff
    xor $80                                       ; $7be6: $ee $80
    inc h                                         ; $7be8: $24
    nop                                           ; $7be9: $00
    ldh a, [rIE]                                  ; $7bea: $f0 $ff
    or h                                          ; $7bec: $b4
    ei                                            ; $7bed: $fb
    jp nc, $b4fd                                  ; $7bee: $d2 $fd $b4

    nop                                           ; $7bf1: $00
    ei                                            ; $7bf2: $fb
    push af                                       ; $7bf3: $f5
    ld a, [$ffd0]                                 ; $7bf4: $fa $d0 $ff
    or d                                          ; $7bf7: $b2
    db $fd                                        ; $7bf8: $fd
    or b                                          ; $7bf9: $b0
    ld a, [bc]                                    ; $7bfa: $0a
    rst $38                                       ; $7bfb: $ff
    jp nc, $d40d                                  ; $7bfc: $d2 $0d $d4

    ld a, [c]                                     ; $7bff: $f2

jr_09d_7c00:
    nop                                           ; $7c00: $00
    xor e                                         ; $7c01: $ab
    ldh [rP1], a                                  ; $7c02: $e0 $00
    xor e                                         ; $7c04: $ab
    add b                                         ; $7c05: $80
    ld [c], a                                     ; $7c06: $e2
    nop                                           ; $7c07: $00
    xor a                                         ; $7c08: $af
    rrca                                          ; $7c09: $0f
    rst $38                                       ; $7c0a: $ff
    rst $38                                       ; $7c0b: $ff
    ld bc, $83ff                                  ; $7c0c: $01 $ff $83
    rrca                                          ; $7c0f: $0f
    ld a, a                                       ; $7c10: $7f
    ld bc, $03ff                                  ; $7c11: $01 $ff $03
    ld [$7008], sp                                ; $7c14: $08 $08 $70
    dec b                                         ; $7c17: $05
    ret nz                                        ; $7c18: $c0

    inc e                                         ; $7c19: $1c
    ld h, b                                       ; $7c1a: $60
    inc bc                                        ; $7c1b: $03
    jr nc, jr_09d_7c5f                            ; $7c1c: $30 $41

    dec a                                         ; $7c1e: $3d
    ld h, h                                       ; $7c1f: $64
    dec bc                                        ; $7c20: $0b
    add sp, $04                                   ; $7c21: $e8 $04
    ld e, a                                       ; $7c23: $5f
    add b                                         ; $7c24: $80
    sbc [hl]                                      ; $7c25: $9e
    ld bc, $5f70                                  ; $7c26: $01 $70 $5f
    adc [hl]                                      ; $7c29: $8e
    inc c                                         ; $7c2a: $0c
    add l                                         ; $7c2b: $85
    dec d                                         ; $7c2c: $15
    ld h, b                                       ; $7c2d: $60
    inc e                                         ; $7c2e: $1c
    rra                                           ; $7c2f: $1f
    jr nz, jr_09d_7c00                            ; $7c30: $20 $ce

    ld sp, $bf14                                  ; $7c32: $31 $14 $bf
    ld b, b                                       ; $7c35: $40
    ld a, $42                                     ; $7c36: $3e $42
    inc b                                         ; $7c38: $04
    ld a, a                                       ; $7c39: $7f
    and [hl]                                      ; $7c3a: $a6
    inc b                                         ; $7c3b: $04
    cp l                                          ; $7c3c: $bd
    ld [bc], a                                    ; $7c3d: $02
    ld [$219e], sp                                ; $7c3e: $08 $9e $21
    ld e, l                                       ; $7c41: $5d
    and d                                         ; $7c42: $a2
    ldh [rNR24], a                                ; $7c43: $e0 $19
    cp d                                          ; $7c45: $ba
    nop                                           ; $7c46: $00
    db $db                                        ; $7c47: $db
    add d                                         ; $7c48: $82
    xor d                                         ; $7c49: $aa
    ld bc, $00ad                                  ; $7c4a: $01 $ad $00
    jp c, $af00                                   ; $7c4d: $da $00 $af

    inc b                                         ; $7c50: $04
    nop                                           ; $7c51: $00
    rst $28                                       ; $7c52: $ef
    add b                                         ; $7c53: $80
    or b                                          ; $7c54: $b0
    ld bc, $f0fd                                  ; $7c55: $01 $fd $f0
    sbc $f0                                       ; $7c58: $de $f0
    cp e                                          ; $7c5a: $bb
    ldh a, [$fa]                                  ; $7c5b: $f0 $fa
    jr z, @-$0e                                   ; $7c5d: $28 $f0

jr_09d_7c5f:
    db $dd                                        ; $7c5f: $dd
    cp b                                          ; $7c60: $b8
    ld bc, $06f5                                  ; $7c61: $01 $f5 $06
    nop                                           ; $7c64: $00
    ei                                            ; $7c65: $fb
    ldh a, [$bd]                                  ; $7c66: $f0 $bd
    ld [$dbf0], sp                                ; $7c68: $08 $f0 $db
    ldh a, [$be]                                  ; $7c6b: $f0 $be
    db $10                                        ; $7c6d: $10
    db $10                                        ; $7c6e: $10
    add hl, bc                                    ; $7c6f: $09
    ldh a, [$df]                                  ; $7c70: $f0 $df
    and d                                         ; $7c72: $a2
    ld l, [hl]                                    ; $7c73: $6e
    ld bc, $6cdb                                  ; $7c74: $01 $db $6c
    ld bc, $0fbb                                  ; $7c77: $01 $bb $0f
    db $ed                                        ; $7c7a: $ed
    add sp, $00                                   ; $7c7b: $e8 $00
    rst $28                                       ; $7c7d: $ef
    ld hl, $ab0f                                  ; $7c7e: $21 $0f $ab
    sbc $01                                       ; $7c81: $de $01
    cp l                                          ; $7c83: $bd
    ldh a, [$f0]                                  ; $7c84: $f0 $f0
    rst $38                                       ; $7c86: $ff
    xor [hl]                                      ; $7c87: $ae
    ld [$b400], sp                                ; $7c88: $08 $00 $b4
    ei                                            ; $7c8b: $fb
    ld a, [c]                                     ; $7c8c: $f2
    db $fd                                        ; $7c8d: $fd
    or l                                          ; $7c8e: $b5
    ld a, [$fda2]                                 ; $7c8f: $fa $a2 $fd
    nop                                           ; $7c92: $00
    jp nc, $a4fd                                  ; $7c93: $d2 $fd $a4

    ei                                            ; $7c96: $fb
    pop af                                        ; $7c97: $f1
    cp $d2                                        ; $7c98: $fe $d2
    db $fd                                        ; $7c9a: $fd
    nop                                           ; $7c9b: $00
    ret nc                                        ; $7c9c: $d0

    rst $38                                       ; $7c9d: $ff
    ld [c], a                                     ; $7c9e: $e2
    db $fd                                        ; $7c9f: $fd
    cpl                                           ; $7ca0: $2f
    ret nc                                        ; $7ca1: $d0

    ld e, d                                       ; $7ca2: $5a
    and b                                         ; $7ca3: $a0
    dec b                                         ; $7ca4: $05
    dec l                                         ; $7ca5: $2d
    ret nc                                        ; $7ca6: $d0

    dec bc                                        ; $7ca7: $0b
    ldh a, [$2e]                                  ; $7ca8: $f0 $2e
    cp [hl]                                       ; $7caa: $be
    ld bc, $56ff                                  ; $7cab: $01 $ff $56
    nop                                           ; $7cae: $00
    ld d, b                                       ; $7caf: $50
    rst $28                                       ; $7cb0: $ef
    ld [$db01], sp                                ; $7cb1: $08 $01 $db
    ld a, [bc]                                    ; $7cb4: $0a
    ld bc, $ffed                                  ; $7cb5: $01 $ed $ff
    rst $18                                       ; $7cb8: $df
    rst $38                                       ; $7cb9: $ff
    nop                                           ; $7cba: $00
    pop af                                        ; $7cbb: $f1
    cp $e4                                        ; $7cbc: $fe $e4
    ei                                            ; $7cbe: $fb
    dec hl                                        ; $7cbf: $2b
    rst $18                                       ; $7cc0: $df
    ld e, a                                       ; $7cc1: $5f
    xor a                                         ; $7cc2: $af
    inc d                                         ; $7cc3: $14
    cpl                                           ; $7cc4: $2f
    ret nc                                        ; $7cc5: $d0

    ld c, e                                       ; $7cc6: $4b
    ld a, [de]                                    ; $7cc7: $1a
    ld [bc], a                                    ; $7cc8: $02
    ld c, e                                       ; $7cc9: $4b
    ld [hl+], a                                   ; $7cca: $22
    ld [bc], a                                    ; $7ccb: $02
    dec hl                                        ; $7ccc: $2b
    ret nc                                        ; $7ccd: $d0

    db $10                                        ; $7cce: $10
    ld c, l                                       ; $7ccf: $4d
    or b                                          ; $7cd0: $b0
    ld a, [hl+]                                   ; $7cd1: $2a
    inc b                                         ; $7cd2: $04
    nop                                           ; $7cd3: $00
    ld c, e                                       ; $7cd4: $4b
    or b                                          ; $7cd5: $b0
    ld c, $f0                                     ; $7cd6: $0e $f0
    ld b, h                                       ; $7cd8: $44
    add hl, hl                                    ; $7cd9: $29
    inc c                                         ; $7cda: $0c
    nop                                           ; $7cdb: $00
    ld l, $d0                                     ; $7cdc: $2e $d0
    xor l                                         ; $7cde: $ad
    jp c, $d101                                   ; $7cdf: $da $01 $d1

    ld c, $40                                     ; $7ce2: $0e $40
    call nz, Call_000_02c0                        ; $7ce4: $c4 $c0 $02
    push de                                       ; $7ce7: $d5
    ld a, [bc]                                    ; $7ce8: $0a
    inc b                                         ; $7ce9: $04
    ei                                            ; $7cea: $fb
    ld d, b                                       ; $7ceb: $50
    xor a                                         ; $7cec: $af
    db $10                                        ; $7ced: $10
    ld e, e                                       ; $7cee: $5b
    and b                                         ; $7cef: $a0
    cpl                                           ; $7cf0: $2f
    ld h, b                                       ; $7cf1: $60
    ld [bc], a                                    ; $7cf2: $02
    dec hl                                        ; $7cf3: $2b
    ret nc                                        ; $7cf4: $d0

    ld c, d                                       ; $7cf5: $4a
    or b                                          ; $7cf6: $b0
    inc b                                         ; $7cf7: $04
    rrca                                          ; $7cf8: $0f
    ldh a, [$2d]                                  ; $7cf9: $f0 $2d
    rst $18                                       ; $7cfb: $df
    dec bc                                        ; $7cfc: $0b
    ld l, [hl]                                    ; $7cfd: $6e
    ld b, $62                                     ; $7cfe: $06 $62
    sbc l                                         ; $7d00: $9d
    nop                                           ; $7d01: $00
    nop                                           ; $7d02: $00
    rst $38                                       ; $7d03: $ff
    inc b                                         ; $7d04: $04
    ei                                            ; $7d05: $fb
    ld [hl+], a                                   ; $7d06: $22
    db $dd                                        ; $7d07: $dd
    nop                                           ; $7d08: $00
    rst $38                                       ; $7d09: $ff
    db $10                                        ; $7d0a: $10
    ld b, h                                       ; $7d0b: $44
    cp e                                          ; $7d0c: $bb
    nop                                           ; $7d0d: $00
    ld a, $11                                     ; $7d0e: $3e $11
    and l                                         ; $7d10: $a5
    ld a, [$fbb4]                                 ; $7d11: $fa $b4 $fb
    ld b, h                                       ; $7d14: $44
    pop hl                                        ; $7d15: $e1
    add b                                         ; $7d16: $80
    nop                                           ; $7d17: $00
    and l                                         ; $7d18: $a5
    ld a, [$8cf2]                                 ; $7d19: $fa $f2 $8c
    nop                                           ; $7d1c: $00
    push hl                                       ; $7d1d: $e5
    ld a, [$d208]                                 ; $7d1e: $fa $08 $d2
    db $fd                                        ; $7d21: $fd
    and b                                         ; $7d22: $a0
    rst $38                                       ; $7d23: $ff
    sub $08                                       ; $7d24: $d6 $08
    ei                                            ; $7d26: $fb
    ldh a, [$4e]                                  ; $7d27: $f0 $4e
    add d                                         ; $7d29: $82
    ld e, d                                       ; $7d2a: $5a
    nop                                           ; $7d2b: $00
    rra                                           ; $7d2c: $1f
    ldh [rKEY1], a                                ; $7d2d: $e0 $4d
    or b                                          ; $7d2f: $b0
    ld c, l                                       ; $7d30: $4d
    and [hl]                                      ; $7d31: $a6
    ld [bc], a                                    ; $7d32: $02
    dec c                                         ; $7d33: $0d
    nop                                           ; $7d34: $00
    ldh a, [$2f]                                  ; $7d35: $f0 $2f
    ret nc                                        ; $7d37: $d0

jr_09d_7d38:
    ei                                            ; $7d38: $fb
    ldh a, [$d0]                                  ; $7d39: $f0 $d0
    rst $38                                       ; $7d3b: $ff
    and d                                         ; $7d3c: $a2
    nop                                           ; $7d3d: $00
    db $fd                                        ; $7d3e: $fd
    call nc, $e0fb                                ; $7d3f: $d4 $fb $e0
    rst $38                                       ; $7d42: $ff
    cp a                                          ; $7d43: $bf
    ldh a, [$da]                                  ; $7d44: $f0 $da
    jr nz, jr_09d_7d38                            ; $7d46: $20 $f0

    xor l                                         ; $7d48: $ad
    xor d                                         ; $7d49: $aa
    ld [bc], a                                    ; $7d4a: $02
    xor a                                         ; $7d4b: $af
    ldh a, [$fd]                                  ; $7d4c: $f0 $fd
    rst $38                                       ; $7d4e: $ff
    xor e                                         ; $7d4f: $ab
    xor h                                         ; $7d50: $ac

jr_09d_7d51:
    cp b                                          ; $7d51: $b8
    ld bc, $b0bb                                  ; $7d52: $01 $bb $b0
    ld bc, $94fd                                  ; $7d55: $01 $fd $94
    ld bc, $4e60                                  ; $7d58: $01 $60 $4e
    ccf                                           ; $7d5b: $3f
    ret nz                                        ; $7d5c: $c0

    cpl                                           ; $7d5d: $2f
    rlca                                          ; $7d5e: $07
    jr jr_09d_7d51                                ; $7d5f: $18 $f0

    dec c                                         ; $7d61: $0d
    rst $08                                       ; $7d62: $cf
    inc l                                         ; $7d63: $2c
    ld bc, $2df0                                  ; $7d64: $01 $f0 $2d
    ld [hl], b                                    ; $7d67: $70
    dec c                                         ; $7d68: $0d

jr_09d_7d69:
    xor [hl]                                      ; $7d69: $ae
    dec c                                         ; $7d6a: $0d
    inc bc                                        ; $7d6b: $03
    ld a, a                                       ; $7d6c: $7f
    add b                                         ; $7d6d: $80
    push af                                       ; $7d6e: $f5
    ld a, [bc]                                    ; $7d6f: $0a
    ld l, b                                       ; $7d70: $68
    sub a                                         ; $7d71: $97
    sub a                                         ; $7d72: $97
    ld bc, $16fb                                  ; $7d73: $01 $fb $16
    ld bc, $a05f                                  ; $7d76: $01 $5f $a0
    cp l                                          ; $7d79: $bd
    ld b, d                                       ; $7d7a: $42
    jp c, $0025                                   ; $7d7b: $da $25 $00

    ld b, d                                       ; $7d7e: $42
    nop                                           ; $7d7f: $00
    call nz, Call_000_2cb8                        ; $7d80: $c4 $b8 $2c
    ld [hl], $0d                                  ; $7d83: $36 $0d
    nop                                           ; $7d85: $00
    rst $38                                       ; $7d86: $ff
    ld c, d                                       ; $7d87: $4a
    db $10                                        ; $7d88: $10
    rlca                                          ; $7d89: $07
    ld b, c                                       ; $7d8a: $41
    cp a                                          ; $7d8b: $bf
    and c                                         ; $7d8c: $a1
    ret nz                                        ; $7d8d: $c0

    add hl, hl                                    ; $7d8e: $29
    xor e                                         ; $7d8f: $ab
    ld c, l                                       ; $7d90: $4d
    rlca                                          ; $7d91: $07
    ld sp, hl                                     ; $7d92: $f9
    rlca                                          ; $7d93: $07
    db $fc                                        ; $7d94: $fc
    inc bc                                        ; $7d95: $03
    ld [bc], a                                    ; $7d96: $02
    ld [$fd40], sp                                ; $7d97: $08 $40 $fd
    ld b, $00                                     ; $7d9a: $06 $00
    db $dd                                        ; $7d9c: $dd
    inc hl                                        ; $7d9d: $23
    cp h                                          ; $7d9e: $bc
    ld b, e                                       ; $7d9f: $43
    ld d, l                                       ; $7da0: $55
    rst $38                                       ; $7da1: $ff
    nop                                           ; $7da2: $00
    ccf                                           ; $7da3: $3f
    ret nz                                        ; $7da4: $c0

    ld a, a                                       ; $7da5: $7f
    add b                                         ; $7da6: $80
    jr nz, jr_09d_7d69                            ; $7da7: $20 $c0

    ld l, b                                       ; $7da9: $68
    add b                                         ; $7daa: $80
    rla                                           ; $7dab: $17
    cpl                                           ; $7dac: $2f
    ret nz                                        ; $7dad: $c0

    ld l, a                                       ; $7dae: $6f
    inc b                                         ; $7daf: $04
    nop                                           ; $7db0: $00
    ld d, l                                       ; $7db1: $55
    ld b, d                                       ; $7db2: $42
    db $10                                        ; $7db3: $10
    ld bc, $f208                                  ; $7db4: $01 $08 $f2
    dec e                                         ; $7db7: $1d
    nop                                           ; $7db8: $00
    jp hl                                         ; $7db9: $e9


    rla                                           ; $7dba: $17
    push af                                       ; $7dbb: $f5
    dec bc                                        ; $7dbc: $0b
    cp c                                          ; $7dbd: $b9
    ld b, a                                       ; $7dbe: $47
    dec a                                         ; $7dbf: $3d
    add e                                         ; $7dc0: $83
    nop                                           ; $7dc1: $00
    cp l                                          ; $7dc2: $bd
    ld b, e                                       ; $7dc3: $43
    inc a                                         ; $7dc4: $3c
    add e                                         ; $7dc5: $83
    dec a                                         ; $7dc6: $3d
    inc bc                                        ; $7dc7: $03
    ld hl, sp+$07                                 ; $7dc8: $f8 $07
    ld b, b                                       ; $7dca: $40
    ld a, l                                       ; $7dcb: $7d
    ld a, [bc]                                    ; $7dcc: $0a
    nop                                           ; $7dcd: $00
    ld a, l                                       ; $7dce: $7d
    add e                                         ; $7dcf: $83
    db $fc                                        ; $7dd0: $fc
    inc bc                                        ; $7dd1: $03
    ld a, l                                       ; $7dd2: $7d
    add e                                         ; $7dd3: $83
    nop                                           ; $7dd4: $00
    db $ec                                        ; $7dd5: $ec
    inc de                                        ; $7dd6: $13
    push af                                       ; $7dd7: $f5
    dec bc                                        ; $7dd8: $0b
    ld hl, sp+$07                                 ; $7dd9: $f8 $07
    ld l, a                                       ; $7ddb: $6f
    add b                                         ; $7ddc: $80
    add [hl]                                      ; $7ddd: $86
    ld [bc], a                                    ; $7dde: $02
    jr z, jr_09d_7e51                             ; $7ddf: $28 $70

    adc a                                         ; $7de1: $8f
    ld [hl], l                                    ; $7de2: $75
    sbc a                                         ; $7de3: $9f
    ld c, b                                       ; $7de4: $48
    ld c, $2a                                     ; $7de5: $0e $2a
    ld l, $00                                     ; $7de7: $2e $00
    ret z                                         ; $7de9: $c8

jr_09d_7dea:
    add hl, de                                    ; $7dea: $19
    inc b                                         ; $7deb: $04
    ld c, d                                       ; $7dec: $4a
    dec b                                         ; $7ded: $05
    inc bc                                        ; $7dee: $03

jr_09d_7def:
    add sp, $42                                   ; $7def: $e8 $42
    nop                                           ; $7df1: $00
    jr c, jr_09d_7e3b                             ; $7df2: $38 $47

    dec e                                         ; $7df4: $1d
    ld c, b                                       ; $7df5: $48
    inc hl                                        ; $7df6: $23
    ld [hl], h                                    ; $7df7: $74
    ld [$23dc], sp                                ; $7df8: $08 $dc $23
    inc [hl]                                      ; $7dfb: $34
    ld [$8b75], sp                                ; $7dfc: $08 $75 $8b
    cp h                                          ; $7dff: $bc
    jr nc, @+$45                                  ; $7e00: $30 $43

    ld a, h                                       ; $7e02: $7c
    ld b, h                                       ; $7e03: $44
    nop                                           ; $7e04: $00
    add [hl]                                      ; $7e05: $86
    ld [$807f], sp                                ; $7e06: $08 $7f $80
    ld h, b                                       ; $7e09: $60
    add b                                         ; $7e0a: $80
    ld e, h                                       ; $7e0b: $5c
    ld l, b                                       ; $7e0c: $68
    ld b, h                                       ; $7e0d: $44
    jr nc, jr_09d_7e7f                            ; $7e0e: $30 $6f

    adc b                                         ; $7e10: $88
    ld b, $7c                                     ; $7e11: $06 $7c
    jr c, jr_09d_7dea                             ; $7e13: $38 $d5

    rrca                                          ; $7e15: $0f
    sbc l                                         ; $7e16: $9d
    ld b, e                                       ; $7e17: $43
    ld [bc], a                                    ; $7e18: $02
    sbc l                                         ; $7e19: $9d
    ld b, e                                       ; $7e1a: $43
    ld e, c                                       ; $7e1b: $59
    and a                                         ; $7e1c: $a7
    dec [hl]                                      ; $7e1d: $35
    ld c, e                                       ; $7e1e: $4b
    add h                                         ; $7e1f: $84
    nop                                           ; $7e20: $00
    jp $f910                                      ; $7e21: $c3 $10 $f9


    rlca                                          ; $7e24: $07
    db $fd                                        ; $7e25: $fd
    add d                                         ; $7e26: $82
    nop                                           ; $7e27: $00
    push af                                       ; $7e28: $f5
    dec bc                                        ; $7e29: $0b
    ld a, h                                       ; $7e2a: $7c
    add e                                         ; $7e2b: $83
    ld b, b                                       ; $7e2c: $40
    ld sp, hl                                     ; $7e2d: $f9
    ld b, h                                       ; $7e2e: $44
    nop                                           ; $7e2f: $00
    jp hl                                         ; $7e30: $e9


    rla                                           ; $7e31: $17
    push de                                       ; $7e32: $d5
    dec hl                                        ; $7e33: $2b
    ld d, l                                       ; $7e34: $55
    rst $38                                       ; $7e35: $ff
    add b                                         ; $7e36: $80
    add b                                         ; $7e37: $80
    jr @+$31                                      ; $7e38: $18 $2f

    ret nz                                        ; $7e3a: $c0

jr_09d_7e3b:
    ld [hl], b                                    ; $7e3b: $70
    adc a                                         ; $7e3c: $8f
    dec [hl]                                      ; $7e3d: $35
    rst $18                                       ; $7e3e: $df
    ld a, a                                       ; $7e3f: $7f
    db $10                                        ; $7e40: $10
    add b                                         ; $7e41: $80
    dec hl                                        ; $7e42: $2b
    call nc, Call_09d_587e                        ; $7e43: $d4 $7e $58
    rst $38                                       ; $7e46: $ff
    nop                                           ; $7e47: $00
    add hl, bc                                    ; $7e48: $09
    scf                                           ; $7e49: $37
    ld [$23dc], sp                                ; $7e4a: $08 $dc $23
    dec a                                         ; $7e4d: $3d
    ld b, e                                       ; $7e4e: $43
    ldh a, [$08]                                  ; $7e4f: $f0 $08

jr_09d_7e51:
    ld a, c                                       ; $7e51: $79
    add a                                         ; $7e52: $87
    inc a                                         ; $7e53: $3c
    db $10                                        ; $7e54: $10
    ld b, e                                       ; $7e55: $43
    add hl, de                                    ; $7e56: $19
    and a                                         ; $7e57: $a7

jr_09d_7e58:
    and b                                         ; $7e58: $a0
    jr c, jr_09d_7e58                             ; $7e59: $38 $fd

    ld [bc], a                                    ; $7e5b: $02
    nop                                           ; $7e5c: $00
    rst $38                                       ; $7e5d: $ff
    jr nc, jr_09d_7def                            ; $7e5e: $30 $8f

    rst $38                                       ; $7e60: $ff
    ret nc                                        ; $7e61: $d0

    ld c, $10                                     ; $7e62: $0e $10
    dec e                                         ; $7e64: $1d
    ld l, a                                       ; $7e65: $6f
    sub b                                         ; $7e66: $90
    rla                                           ; $7e67: $17
    add sp, $10                                   ; $7e68: $e8 $10
    rst $28                                       ; $7e6a: $ef
    ret nc                                        ; $7e6b: $d0

    ld d, l                                       ; $7e6c: $55
    ld [hl], d                                    ; $7e6d: $72
    inc bc                                        ; $7e6e: $03
    db $fc                                        ; $7e6f: $fc
    inc bc                                        ; $7e70: $03
    ld b, $01                                     ; $7e71: $06 $01
    inc b                                         ; $7e73: $04
    inc d                                         ; $7e74: $14
    inc bc                                        ; $7e75: $03
    or $01                                        ; $7e76: $f6 $01
    db $f4                                        ; $7e78: $f4
    inc b                                         ; $7e79: $04
    nop                                           ; $7e7a: $00
    rra                                           ; $7e7b: $1f
    ldh [rNR10], a                                ; $7e7c: $e0 $10
    cp a                                          ; $7e7e: $bf

jr_09d_7e7f:
    ret nz                                        ; $7e7f: $c0

    ccf                                           ; $7e80: $3f
    cp $07                                        ; $7e81: $fe $07
    ccf                                           ; $7e83: $3f
    ret nz                                        ; $7e84: $c0

    scf                                           ; $7e85: $37
    ret z                                         ; $7e86: $c8

    ld [bc], a                                    ; $7e87: $02
    cpl                                           ; $7e88: $2f
    ret nc                                        ; $7e89: $d0

    sbc a                                         ; $7e8a: $9f
    ldh [$f6], a                                  ; $7e8b: $e0 $f6
    ld bc, $2802                                  ; $7e8d: $01 $02 $28
    ld c, $06                                     ; $7e90: $0e $06
    pop af                                        ; $7e92: $f1
    ld b, [hl]                                    ; $7e93: $46
    ld sp, hl                                     ; $7e94: $f9
    ret c                                         ; $7e95: $d8

    ccf                                           ; $7e96: $3f
    inc d                                         ; $7e97: $14
    ld [$0820], sp                                ; $7e98: $08 $20 $08
    sub a                                         ; $7e9b: $97
    nop                                           ; $7e9c: $00
    add sp, -$45                                  ; $7e9d: $e8 $bb
    call nz, $c03f                                ; $7e9f: $c4 $3f $c0
    xor l                                         ; $7ea2: $ad
    jp nc, $01b6                                  ; $7ea3: $d2 $b6 $01

    ld h, l                                       ; $7ea6: $65
    xor h                                         ; $7ea7: $ac
    ld [hl], a                                    ; $7ea8: $77
    ld e, d                                       ; $7ea9: $5a
    dec a                                         ; $7eaa: $3d
    db $e4                                        ; $7eab: $e4
    dec de                                        ; $7eac: $1b
    jr z, jr_09d_7eb7                             ; $7ead: $28 $08

jr_09d_7eaf:
    call z, $1840                                 ; $7eaf: $cc $40 $18
    ld a, $08                                     ; $7eb2: $3e $08
    rla                                           ; $7eb4: $17
    add sp, $28                                   ; $7eb5: $e8 $28

jr_09d_7eb7:
    jr z, jr_09d_7ef9                             ; $7eb7: $28 $40

    jr jr_09d_7eaf                                ; $7eb9: $18 $f4

    inc bc                                        ; $7ebb: $03
    nop                                           ; $7ebc: $00
    ld c, $f1                                     ; $7ebd: $0e $f1
    ld d, h                                       ; $7ebf: $54
    ei                                            ; $7ec0: $fb
    cp $01                                        ; $7ec1: $fe $01
    db $f4                                        ; $7ec3: $f4
    dec bc                                        ; $7ec4: $0b
    nop                                           ; $7ec5: $00
    ccf                                           ; $7ec6: $3f
    ret nz                                        ; $7ec7: $c0

    cp l                                          ; $7ec8: $bd
    jp nz, $e11e                                  ; $7ec9: $c2 $1e $e1

    cp l                                          ; $7ecc: $bd
    jp nz, $9e00                                  ; $7ecd: $c2 $00 $9e

    pop hl                                        ; $7ed0: $e1
    xor a                                         ; $7ed1: $af
    ret nc                                        ; $7ed2: $d0

    sub [hl]                                      ; $7ed3: $96
    jp hl                                         ; $7ed4: $e9


    xor d                                         ; $7ed5: $aa
    rst $38                                       ; $7ed6: $ff
    db $10                                        ; $7ed7: $10
    dec hl                                        ; $7ed8: $2b
    ret nc                                        ; $7ed9: $d0

    ld a, [bc]                                    ; $7eda: $0a
    halt                                          ; $7edb: $76
    inc b                                         ; $7edc: $04
    ld a, [hl+]                                   ; $7edd: $2a
    ret nc                                        ; $7ede: $d0

    ld e, [hl]                                    ; $7edf: $5e
    and b                                         ; $7ee0: $a0
    nop                                           ; $7ee1: $00
    dec de                                        ; $7ee2: $1b
    ldh [$2d], a                                  ; $7ee3: $e0 $2d
    ret nc                                        ; $7ee5: $d0

    ld a, [de]                                    ; $7ee6: $1a
    ldh [rNR32], a                                ; $7ee7: $e0 $1c
    add e                                         ; $7ee9: $83
    inc d                                         ; $7eea: $14
    add hl, de                                    ; $7eeb: $19
    and a                                         ; $7eec: $a7
    inc a                                         ; $7eed: $3c
    ld [hl], d                                    ; $7eee: $72
    ld bc, $f8f9                                  ; $7eef: $01 $f9 $f8
    nop                                           ; $7ef2: $00
    jp hl                                         ; $7ef3: $e9


    rla                                           ; $7ef4: $17
    nop                                           ; $7ef5: $00
    xor e                                         ; $7ef6: $ab
    rst $38                                       ; $7ef7: $ff
    ld [de], a                                    ; $7ef8: $12

jr_09d_7ef9:
    nop                                           ; $7ef9: $00
    nop                                           ; $7efa: $00
    ld [de], a                                    ; $7efb: $12
    nop                                           ; $7efc: $00
    nop                                           ; $7efd: $00
    jr jr_09d_7f00                                ; $7efe: $18 $00

jr_09d_7f00:
    ld bc, $0024                                  ; $7f00: $01 $24 $00
    inc bc                                        ; $7f03: $03
    jr nc, jr_09d_7f06                            ; $7f04: $30 $00

jr_09d_7f06:
    dec b                                         ; $7f06: $05
    inc a                                         ; $7f07: $3c
    nop                                           ; $7f08: $00
    rlca                                          ; $7f09: $07
    rlca                                          ; $7f0a: $07
    nop                                           ; $7f0b: $00
    ld b, a                                       ; $7f0c: $47
    nop                                           ; $7f0d: $00
    cp l                                          ; $7f0e: $bd
    nop                                           ; $7f0f: $00
    dec bc                                        ; $7f10: $0b
    nop                                           ; $7f11: $00
    or [hl]                                       ; $7f12: $b6
    nop                                           ; $7f13: $00
    ld [hl+], a                                   ; $7f14: $22
    ld bc, $0002                                  ; $7f15: $01 $02 $00
    cp b                                          ; $7f18: $b8
    nop                                           ; $7f19: $00
    inc [hl]                                      ; $7f1a: $34
    nop                                           ; $7f1b: $00
    ld [hl], c                                    ; $7f1c: $71
    ld [bc], a                                    ; $7f1d: $02
    jp $3d00                                      ; $7f1e: $c3 $00 $3d


    ld bc, $000b                                  ; $7f21: $01 $0b $00
    jp nc, $2200                                  ; $7f24: $d2 $00 $22

    ld bc, $0207                                  ; $7f27: $01 $07 $02
    ld e, $01                                     ; $7f2a: $1e $01
    sbc a                                         ; $7f2c: $9f
    nop                                           ; $7f2d: $00
    ld [bc], a                                    ; $7f2e: $02
    ld bc, $0136                                  ; $7f2f: $01 $36 $01
    ld e, b                                       ; $7f32: $58
    ld bc, $ffff                                  ; $7f33: $01 $ff $ff
    rst $38                                       ; $7f36: $ff
    rst $38                                       ; $7f37: $ff
    rst $38                                       ; $7f38: $ff
    rst $38                                       ; $7f39: $ff
    ld [hl], $00                                  ; $7f3a: $36 $00
    nop                                           ; $7f3c: $00
    ld c, b                                       ; $7f3d: $48
    nop                                           ; $7f3e: $00
    inc bc                                        ; $7f3f: $03
    ld c, [hl]                                    ; $7f40: $4e
    nop                                           ; $7f41: $00
    inc b                                         ; $7f42: $04
    ld d, h                                       ; $7f43: $54
    nop                                           ; $7f44: $00
    dec b                                         ; $7f45: $05
    ld e, d                                       ; $7f46: $5a
    nop                                           ; $7f47: $00
    ld b, $60                                     ; $7f48: $06 $60
    nop                                           ; $7f4a: $00
    rlca                                          ; $7f4b: $07
    ld h, [hl]                                    ; $7f4c: $66
    nop                                           ; $7f4d: $00
    ld [$006c], sp                                ; $7f4e: $08 $6c $00
    add hl, bc                                    ; $7f51: $09
    ld [hl], d                                    ; $7f52: $72
    nop                                           ; $7f53: $00
    ld a, [bc]                                    ; $7f54: $0a
    ld a, [hl]                                    ; $7f55: $7e
    nop                                           ; $7f56: $00
    inc c                                         ; $7f57: $0c
    add h                                         ; $7f58: $84
    nop                                           ; $7f59: $00
    dec c                                         ; $7f5a: $0d
    sub b                                         ; $7f5b: $90
    nop                                           ; $7f5c: $00
    rrca                                          ; $7f5d: $0f
    sub [hl]                                      ; $7f5e: $96
    nop                                           ; $7f5f: $00
    db $10                                        ; $7f60: $10
    sbc h                                         ; $7f61: $9c
    nop                                           ; $7f62: $00
    ld de, $00a2                                  ; $7f63: $11 $a2 $00
    ld [de], a                                    ; $7f66: $12
    and d                                         ; $7f67: $a2
    nop                                           ; $7f68: $00
    ld [de], a                                    ; $7f69: $12
    xor [hl]                                      ; $7f6a: $ae
    nop                                           ; $7f6b: $00
    inc d                                         ; $7f6c: $14
    or h                                          ; $7f6d: $b4
    nop                                           ; $7f6e: $00
    dec d                                         ; $7f6f: $15
    dec bc                                        ; $7f70: $0b
    rla                                           ; $7f71: $17
    inc hl                                        ; $7f72: $23
    nop                                           ; $7f73: $00
    ld h, e                                       ; $7f74: $63
    nop                                           ; $7f75: $00
    dec bc                                        ; $7f76: $0b
    rla                                           ; $7f77: $17
    inc hl                                        ; $7f78: $23
    nop                                           ; $7f79: $00
    ld d, [hl]                                    ; $7f7a: $56
    nop                                           ; $7f7b: $00
    dec bc                                        ; $7f7c: $0b
    nop                                           ; $7f7d: $00
    cpl                                           ; $7f7e: $2f
    nop                                           ; $7f7f: $00
    ld l, [hl]                                    ; $7f80: $6e
    nop                                           ; $7f81: $00
    ld b, $11                                     ; $7f82: $06 $11
    ld b, [hl]                                    ; $7f84: $46
    nop                                           ; $7f85: $00
    ld h, l                                       ; $7f86: $65
    nop                                           ; $7f87: $00
    ld b, $10                                     ; $7f88: $06 $10
    sub a                                         ; $7f8a: $97
    nop                                           ; $7f8b: $00
    ld d, h                                       ; $7f8c: $54
    nop                                           ; $7f8d: $00
    ld b, $0f                                     ; $7f8e: $06 $0f
    ret                                           ; $7f90: $c9


    nop                                           ; $7f91: $00
    ld l, e                                       ; $7f92: $6b
    nop                                           ; $7f93: $00
    ld b, $0e                                     ; $7f94: $06 $0e
    add hl, de                                    ; $7f96: $19
    ld bc, $006b                                  ; $7f97: $01 $6b $00
    ld b, $0d                                     ; $7f9a: $06 $0d
    ld b, l                                       ; $7f9c: $45
    ld bc, $0052                                  ; $7f9d: $01 $52 $00
    ld b, $0c                                     ; $7fa0: $06 $0c
    and [hl]                                      ; $7fa2: $a6
    ld bc, $0055                                  ; $7fa3: $01 $55 $00
    ld b, $0b                                     ; $7fa6: $06 $0b
    reti                                          ; $7fa8: $d9


    ld bc, $0064                                  ; $7fa9: $01 $64 $00
    ld b, $0a                                     ; $7fac: $06 $0a
    inc l                                         ; $7fae: $2c
    ld [bc], a                                    ; $7faf: $02
    ld l, h                                       ; $7fb0: $6c
    nop                                           ; $7fb1: $00
    inc d                                         ; $7fb2: $14
    inc de                                        ; $7fb3: $13
    dec a                                         ; $7fb4: $3d
    ld [bc], a                                    ; $7fb5: $02
    add a                                         ; $7fb6: $87
    nop                                           ; $7fb7: $00
    ld b, $09                                     ; $7fb8: $06 $09
    ld b, [hl]                                    ; $7fba: $46
    ld [bc], a                                    ; $7fbb: $02
    ld d, h                                       ; $7fbc: $54
    nop                                           ; $7fbd: $00
    ld b, $08                                     ; $7fbe: $06 $08
    and d                                         ; $7fc0: $a2
    ld [bc], a                                    ; $7fc1: $02
    ld a, c                                       ; $7fc2: $79
    nop                                           ; $7fc3: $00
    ld b, $07                                     ; $7fc4: $06 $07
    and e                                         ; $7fc6: $a3
    ld [bc], a                                    ; $7fc7: $02
    ld d, l                                       ; $7fc8: $55
    nop                                           ; $7fc9: $00
    ld b, $06                                     ; $7fca: $06 $06
    db $d3                                        ; $7fcc: $d3
    ld [bc], a                                    ; $7fcd: $02
    ld h, a                                       ; $7fce: $67
    nop                                           ; $7fcf: $00
    ld b, $05                                     ; $7fd0: $06 $05
    ld a, [hl-]                                   ; $7fd2: $3a
    inc bc                                        ; $7fd3: $03
    ld d, l                                       ; $7fd4: $55
    nop                                           ; $7fd5: $00
    ld b, $04                                     ; $7fd6: $06 $04
    ld l, e                                       ; $7fd8: $6b
    inc bc                                        ; $7fd9: $03
    ld l, b                                       ; $7fda: $68
    nop                                           ; $7fdb: $00
    ld b, $03                                     ; $7fdc: $06 $03
    rst $00                                       ; $7fde: $c7
    inc bc                                        ; $7fdf: $03
    ld d, d                                       ; $7fe0: $52
    nop                                           ; $7fe1: $00
    ld b, $02                                     ; $7fe2: $06 $02
    jp hl                                         ; $7fe4: $e9


    inc bc                                        ; $7fe5: $03
    ld d, [hl]                                    ; $7fe6: $56
    nop                                           ; $7fe7: $00
    ld b, $01                                     ; $7fe8: $06 $01
    dec sp                                        ; $7fea: $3b
    inc b                                         ; $7feb: $04
    ld l, h                                       ; $7fec: $6c
    nop                                           ; $7fed: $00
    dec bc                                        ; $7fee: $0b
    ld d, $53                                     ; $7fef: $16 $53
    inc b                                         ; $7ff1: $04
    ld a, h                                       ; $7ff2: $7c
    nop                                           ; $7ff3: $00
    ld b, $00                                     ; $7ff4: $06 $00
    ld l, d                                       ; $7ff6: $6a
    inc b                                         ; $7ff7: $04
    ld d, d                                       ; $7ff8: $52
    nop                                           ; $7ff9: $00
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
