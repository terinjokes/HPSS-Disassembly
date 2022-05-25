; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0a2", ROMX[$4000], BANK[$a2]

Call_0a2_4000:
Jump_0a2_4000:
    and d                                         ; $4000: $a2
    jr nz, jr_0a2_4019                            ; $4001: $20 $16

    call nz, Call_0a2_520e                        ; $4003: $c4 $0e $52
    rst $38                                       ; $4006: $ff
    ld bc, $fe00                                  ; $4007: $01 $00 $fe
    ld [bc], a                                    ; $400a: $02
    db $30, $ed                                   ; $400b: $30 $ed
    cp $10                                        ; $400d: $fe $10

Call_0a2_400f:
Jump_0a2_400f:
    ld [$20ff], sp                                ; $400f: $08 $ff $20
    rst $38                                       ; $4012: $ff
    ld l, a                                       ; $4013: $6f
    ld [bc], a                                    ; $4014: $02
    nop                                           ; $4015: $00
    ld h, a                                       ; $4016: $67
    rst $38                                       ; $4017: $ff
    rst $20                                       ; $4018: $e7

jr_0a2_4019:
    ld a, a                                       ; $4019: $7f
    db $e3                                        ; $401a: $e3
    ld a, [bc]                                    ; $401b: $0a
    ld a, a                                       ; $401c: $7f
    rst $38                                       ; $401d: $ff
    rst $38                                       ; $401e: $ff
    rst $18                                       ; $401f: $df
    ld [bc], a                                    ; $4020: $02
    nop                                           ; $4021: $00
    sbc a                                         ; $4022: $9f
    ld [bc], a                                    ; $4023: $02
    nop                                           ; $4024: $00
    adc a                                         ; $4025: $8f
    inc b                                         ; $4026: $04

jr_0a2_4027:
    rst $38                                       ; $4027: $ff
    rst $08                                       ; $4028: $cf
    ei                                            ; $4029: $fb
    rst $28                                       ; $402a: $ef
    ei                                            ; $402b: $fb
    jr nz, @+$1a                                  ; $402c: $20 $18

    rst $38                                       ; $402e: $ff
    rst $38                                       ; $402f: $ff
    ld b, b                                       ; $4030: $40
    cp a                                          ; $4031: $bf
    inc d                                         ; $4032: $14
    db $10                                        ; $4033: $10
    sbc a                                         ; $4034: $9f
    rst $38                                       ; $4035: $ff
    rst $28                                       ; $4036: $ef
    db $fc                                        ; $4037: $fc
    rst $30                                       ; $4038: $f7
    db $ec                                        ; $4039: $ec
    ld [bc], a                                    ; $403a: $02
    rst $38                                       ; $403b: $ff
    and $ff                                       ; $403c: $e6 $ff
    rst $20                                       ; $403e: $e7
    rst $38                                       ; $403f: $ff
    rst $30                                       ; $4040: $f7
    ld a, [hl-]                                   ; $4041: $3a
    jr jr_0a2_4027                                ; $4042: $18 $e3

    ld [$f37f], sp                                ; $4044: $08 $7f $f3
    ld a, [hl]                                    ; $4047: $7e
    ei                                            ; $4048: $fb
    ld d, c                                       ; $4049: $51
    ld [$fffc], sp                                ; $404a: $08 $fc $ff
    ld hl, sp+$20                                 ; $404d: $f8 $20
    rst $38                                       ; $404f: $ff
    ld sp, hl                                     ; $4050: $f9
    ld e, [hl]                                    ; $4051: $5e
    nop                                           ; $4052: $00
    di                                            ; $4053: $f3
    rst $38                                       ; $4054: $ff
    db $e3                                        ; $4055: $e3
    rst $38                                       ; $4056: $ff
    ld h, e                                       ; $4057: $63
    sub b                                         ; $4058: $90
    ld [bc], a                                    ; $4059: $02
    nop                                           ; $405a: $00
    ld [hl], e                                    ; $405b: $73
    rst $38                                       ; $405c: $ff
    inc a                                         ; $405d: $3c
    db $10                                        ; $405e: $10
    ccf                                           ; $405f: $3f
    rst $30                                       ; $4060: $f7
    ccf                                           ; $4061: $3f
    rst $20                                       ; $4062: $e7
    inc l                                         ; $4063: $2c
    ld a, a                                       ; $4064: $7f
    rst $20                                       ; $4065: $e7
    jr nc, jr_0a2_4068                            ; $4066: $30 $00

jr_0a2_4068:
    rst $20                                       ; $4068: $e7
    ld a, [de]                                    ; $4069: $1a
    nop                                           ; $406a: $00
    ld c, [hl]                                    ; $406b: $4e
    nop                                           ; $406c: $00
    ld d, l                                       ; $406d: $55
    rst $38                                       ; $406e: $ff
    nop                                           ; $406f: $00
    and b                                         ; $4070: $a0
    rst $38                                       ; $4071: $ff
    ld d, d                                       ; $4072: $52
    db $ed                                        ; $4073: $ed
    and l                                         ; $4074: $a5
    ld e, d                                       ; $4075: $5a
    ld c, e                                       ; $4076: $4b
    or h                                          ; $4077: $b4
    nop                                           ; $4078: $00
    cp a                                          ; $4079: $bf
    ld b, b                                       ; $407a: $40

jr_0a2_407b:
    ld l, a                                       ; $407b: $6f
    sub b                                         ; $407c: $90
    rst $18                                       ; $407d: $df
    jr nz, jr_0a2_40d5                            ; $407e: $20 $55

Jump_0a2_4080:
jr_0a2_4080:
    rst $38                                       ; $4080: $ff
    nop                                           ; $4081: $00
    jr z, jr_0a2_407b                             ; $4082: $28 $f7

    sub c                                         ; $4084: $91
    ld l, a                                       ; $4085: $6f
    inc [hl]                                      ; $4086: $34
    bit 7, e                                      ; $4087: $cb $7b
    add l                                         ; $4089: $85
    nop                                           ; $408a: $00
    or h                                          ; $408b: $b4
    ld c, e                                       ; $408c: $4b
    ld l, e                                       ; $408d: $6b
    sub l                                         ; $408e: $95
    db $fc                                        ; $408f: $fc
    inc bc                                        ; $4090: $03
    or a                                          ; $4091: $b7
    rlc b                                         ; $4092: $cb $00
    xor d                                         ; $4094: $aa
    rst $18                                       ; $4095: $df
    rst $10                                       ; $4096: $d7
    cp $7d                                        ; $4097: $fe $7d
    cp $56                                        ; $4099: $fe $56
    rst $28                                       ; $409b: $ef
    nop                                           ; $409c: $00
    cp e                                          ; $409d: $bb
    rst $00                                       ; $409e: $c7
    jp nc, $a5af                                  ; $409f: $d2 $af $a5

    sbc $6e                                       ; $40a2: $de $6e
    pop af                                        ; $40a4: $f1
    inc b                                         ; $40a5: $04
    and l                                         ; $40a6: $a5
    ld a, d                                       ; $40a7: $7a
    xor d                                         ; $40a8: $aa
    ld a, a                                       ; $40a9: $7f
    ld d, l                                       ; $40aa: $55
    add b                                         ; $40ab: $80
    nop                                           ; $40ac: $00
    ei                                            ; $40ad: $fb
    db $fc                                        ; $40ae: $fc
    nop                                           ; $40af: $00
    or l                                          ; $40b0: $b5
    ld a, d                                       ; $40b1: $7a
    db $f4                                        ; $40b2: $f4
    rra                                           ; $40b3: $1f
    ld e, l                                       ; $40b4: $5d
    db $e3                                        ; $40b5: $e3
    ld a, [hl]                                    ; $40b6: $7e
    pop bc                                        ; $40b7: $c1
    nop                                           ; $40b8: $00
    cp a                                          ; $40b9: $bf
    ret nz                                        ; $40ba: $c0

    sub [hl]                                      ; $40bb: $96
    jp hl                                         ; $40bc: $e9


    xor l                                         ; $40bd: $ad
    di                                            ; $40be: $f3
    ld d, d                                       ; $40bf: $52
    rst $38                                       ; $40c0: $ff
    nop                                           ; $40c1: $00
    cp l                                          ; $40c2: $bd
    ld a, a                                       ; $40c3: $7f
    ld h, $f9                                     ; $40c4: $26 $f9
    jp c, $95e5                                   ; $40c6: $da $e5 $95

jr_0a2_40c9:
    ld [$c000], a                                 ; $40c9: $ea $00 $c0
    rst $38                                       ; $40cc: $ff
    db $f4                                        ; $40cd: $f4
    rst $38                                       ; $40ce: $ff
    ld a, e                                       ; $40cf: $7b
    rst $38                                       ; $40d0: $ff
    ld l, a                                       ; $40d1: $6f
    sbc a                                         ; $40d2: $9f
    nop                                           ; $40d3: $00
    inc l                                         ; $40d4: $2c

jr_0a2_40d5:
    rst $18                                       ; $40d5: $df
    adc e                                         ; $40d6: $8b
    db $ec                                        ; $40d7: $ec
    ld c, [hl]                                    ; $40d8: $4e
    pop af                                        ; $40d9: $f1
    ld d, l                                       ; $40da: $55
    db $eb                                        ; $40db: $eb
    ld b, b                                       ; $40dc: $40
    ld h, c                                       ; $40dd: $61
    add l                                         ; $40de: $85
    nop                                           ; $40df: $00
    db $fc                                        ; $40e0: $fc
    rst $38                                       ; $40e1: $ff
    xor $f1                                       ; $40e2: $ee $f1
    ld l, h                                       ; $40e4: $6c
    di                                            ; $40e5: $f3
    nop                                           ; $40e6: $00

Jump_0a2_40e7:
    and c                                         ; $40e7: $a1
    ld a, a                                       ; $40e8: $7f
    rst $10                                       ; $40e9: $d7
    rst $38                                       ; $40ea: $ff
    xor [hl]                                      ; $40eb: $ae
    rst $38                                       ; $40ec: $ff
    dec b                                         ; $40ed: $05
    cp $00                                        ; $40ee: $fe $00
    xor b                                         ; $40f0: $a8
    rst $10                                       ; $40f1: $d7
    ld d, l                                       ; $40f2: $55
    xor e                                         ; $40f3: $ab
    xor b                                         ; $40f4: $a8
    rst $10                                       ; $40f5: $d7
    ld b, l                                       ; $40f6: $45
    cp [hl]                                       ; $40f7: $be
    inc [hl]                                      ; $40f8: $34
    xor d                                         ; $40f9: $aa
    push de                                       ; $40fa: $d5
    ret nc                                        ; $40fb: $d0

    jr z, jr_0a2_4106                             ; $40fc: $28 $08

    jr c, jr_0a2_4080                             ; $40fe: $38 $80

    ld [bc], a                                    ; $4100: $02
    nop                                           ; $4101: $00
    ret nz                                        ; $4102: $c0

    cp a                                          ; $4103: $bf
    add b                                         ; $4104: $80
    inc b                                         ; $4105: $04

jr_0a2_4106:
    jr jr_0a2_40c9                                ; $4106: $18 $c1

    cp a                                          ; $4108: $bf
    rst $38                                       ; $4109: $ff
    rst $38                                       ; $410a: $ff
    nop                                           ; $410b: $00
    rst $38                                       ; $410c: $ff
    xor d                                         ; $410d: $aa
    jr c, jr_0a2_4165                             ; $410e: $38 $55

    nop                                           ; $4110: $00
    ld b, $00                                     ; $4111: $06 $00
    inc b                                         ; $4113: $04
    ld [$092e], sp                                ; $4114: $08 $2e $09
    ld bc, $83ff                                  ; $4117: $01 $ff $83
    ld a, [bc]                                    ; $411a: $0a

jr_0a2_411b:
    ld a, a                                       ; $411b: $7f
    ld bc, $03ff                                  ; $411c: $01 $ff $03
    ld [$0300], sp                                ; $411f: $08 $00 $03
    jr nz, jr_0a2_4124                            ; $4122: $20 $00

jr_0a2_4124:
    add e                                         ; $4124: $83
    add b                                         ; $4125: $80
    inc b                                         ; $4126: $04
    ld h, b                                       ; $4127: $60
    ld d, l                                       ; $4128: $55
    rst $38                                       ; $4129: $ff
    ld d, c                                       ; $412a: $51
    xor [hl]                                      ; $412b: $ae
    and h                                         ; $412c: $a4
    ld e, a                                       ; $412d: $5f
    rlc b                                         ; $412e: $cb $00
    inc [hl]                                      ; $4130: $34
    sub [hl]                                      ; $4131: $96
    ld l, c                                       ; $4132: $69
    ld l, a                                       ; $4133: $6f
    sub b                                         ; $4134: $90
    db $db                                        ; $4135: $db
    inc h                                         ; $4136: $24
    or $40                                        ; $4137: $f6 $40
    add hl, bc                                    ; $4139: $09
    ret nc                                        ; $413a: $d0

    ld [$6c93], sp                                ; $413b: $08 $93 $6c
    ld [hl], $c9                                  ; $413e: $36 $c9
    ld a, e                                       ; $4140: $7b
    add h                                         ; $4141: $84
    ld [bc], a                                    ; $4142: $02
    or [hl]                                       ; $4143: $b6
    ld c, c                                       ; $4144: $49
    ld l, a                                       ; $4145: $6f
    sub b                                         ; $4146: $90
    db $fd                                        ; $4147: $fd
    ld [bc], a                                    ; $4148: $02
    ldh [$08], a                                  ; $4149: $e0 $08
    ld d, l                                       ; $414b: $55
    nop                                           ; $414c: $00
    ld [$57a8], a                                 ; $414d: $ea $a8 $57
    ld d, l                                       ; $4150: $55
    xor d                                         ; $4151: $aa
    cp e                                          ; $4152: $bb
    ld b, h                                       ; $4153: $44
    rst $30                                       ; $4154: $f7
    ld b, $08                                     ; $4155: $06 $08
    ld a, a                                       ; $4157: $7f
    add b                                         ; $4158: $80
    rst $28                                       ; $4159: $ef
    db $10                                        ; $415a: $10
    ld e, e                                       ; $415b: $5b
    jr nz, jr_0a2_41c1                            ; $415c: $20 $63

    jr nz, jr_0a2_411b                            ; $415e: $20 $bb

    ld c, b                                       ; $4160: $48
    ld b, h                                       ; $4161: $44
    db $10                                        ; $4162: $10
    ld l, b                                       ; $4163: $68
    rst $30                                       ; $4164: $f7

jr_0a2_4165:
    ld [$4822], sp                                ; $4165: $08 $22 $48
    ei                                            ; $4168: $fb
    inc b                                         ; $4169: $04
    rst $38                                       ; $416a: $ff
    nop                                           ; $416b: $00
    nop                                           ; $416c: $00
    db $eb                                        ; $416d: $eb
    inc d                                         ; $416e: $14
    ret nz                                        ; $416f: $c0

    ccf                                           ; $4170: $3f
    or c                                          ; $4171: $b1
    ld b, b                                       ; $4172: $40
    sbc a                                         ; $4173: $9f
    inc b                                         ; $4174: $04
    ld h, b                                       ; $4175: $60
    jp z, $be75                                   ; $4176: $ca $75 $be

    ld a, a                                       ; $4179: $7f
    ld a, $28                                     ; $417a: $3e $28
    ld d, a                                       ; $417c: $57
    xor b                                         ; $417d: $a8
    ld [bc], a                                    ; $417e: $02
    ld bc, $a6fe                                  ; $417f: $01 $fe $a6
    ld bc, $011e                                  ; $4182: $01 $1e $01
    ld c, [hl]                                    ; $4185: $4e
    ld e, b                                       ; $4186: $58
    pop hl                                        ; $4187: $e1
    ld h, b                                       ; $4188: $60
    ld e, $5e                                     ; $4189: $1e $5e
    ld e, b                                       ; $418b: $58
    inc a                                         ; $418c: $3c
    nop                                           ; $418d: $00
    ld d, $fc                                     ; $418e: $16 $fc
    inc bc                                        ; $4190: $03
    cp $03                                        ; $4191: $fe $03
    nop                                           ; $4193: $00
    pop bc                                        ; $4194: $c1
    ccf                                           ; $4195: $3f
    and d                                         ; $4196: $a2
    ld b, b                                       ; $4197: $40
    sbc l                                         ; $4198: $9d
    ld h, b                                       ; $4199: $60
    adc d                                         ; $419a: $8a
    ld [hl], l                                    ; $419b: $75
    nop                                           ; $419c: $00
    rst $10                                       ; $419d: $d7
    ccf                                           ; $419e: $3f
    jp $85ff                                      ; $419f: $c3 $ff $85


    ei                                            ; $41a2: $fb
    sbc d                                         ; $41a3: $9a
    push hl                                       ; $41a4: $e5
    ld [bc], a                                    ; $41a5: $02
    inc c                                         ; $41a6: $0c
    di                                            ; $41a7: $f3
    sbc [hl]                                      ; $41a8: $9e
    pop hl                                        ; $41a9: $e1
    ld c, $f1                                     ; $41aa: $0e $f1
    inc b                                         ; $41ac: $04
    ld [$00d2], sp                                ; $41ad: $08 $d2 $00
    ld hl, $a17a                                  ; $41b0: $21 $7a $a1
    ld c, $f1                                     ; $41b3: $0e $f1
    ld sp, $fe0f                                  ; $41b5: $31 $0f $fe
    nop                                           ; $41b8: $00
    rrca                                          ; $41b9: $0f
    db $eb                                        ; $41ba: $eb
    inc e                                         ; $41bb: $1c
    adc l                                         ; $41bc: $8d
    ld a, d                                       ; $41bd: $7a
    ld a, e                                       ; $41be: $7b
    db $f4                                        ; $41bf: $f4
    ld a, a                                       ; $41c0: $7f

jr_0a2_41c1:
    nop                                           ; $41c1: $00
    add b                                         ; $41c2: $80
    rst $38                                       ; $41c3: $ff
    nop                                           ; $41c4: $00
    ld a, [hl]                                    ; $41c5: $7e
    add c                                         ; $41c6: $81
    rst $28                                       ; $41c7: $ef
    db $10                                        ; $41c8: $10
    cp e                                          ; $41c9: $bb
    nop                                           ; $41ca: $00
    ld b, h                                       ; $41cb: $44
    ld [hl], a                                    ; $41cc: $77
    adc b                                         ; $41cd: $88
    ei                                            ; $41ce: $fb
    inc b                                         ; $41cf: $04
    sub $29                                       ; $41d0: $d6 $29
    ld [$1510], a                                 ; $41d2: $ea $10 $15
    rst $30                                       ; $41d5: $f7
    ld [$08b4], sp                                ; $41d6: $08 $b4 $08
    cp a                                          ; $41d9: $bf
    ld b, b                                       ; $41da: $40
    ld a, e                                       ; $41db: $7b
    add h                                         ; $41dc: $84
    ld [$48b7], sp                                ; $41dd: $08 $b7 $48
    ld l, a                                       ; $41e0: $6f

Jump_0a2_41e1:
    sub b                                         ; $41e1: $90
    ret nz                                        ; $41e2: $c0

    ld [$807f], sp                                ; $41e3: $08 $7f $80
    ld a, a                                       ; $41e6: $7f
    nop                                           ; $41e7: $00
    add b                                         ; $41e8: $80
    cp a                                          ; $41e9: $bf
    ld b, b                                       ; $41ea: $40
    adc a                                         ; $41eb: $8f
    ld [hl], b                                    ; $41ec: $70
    ld [hl], l                                    ; $41ed: $75
    jp z, Jump_0a2_4080                           ; $41ee: $ca $80 $40

    rst $38                                       ; $41f1: $ff
    ret nz                                        ; $41f2: $c0

jr_0a2_41f3:
    jr jr_0a2_41f3                                ; $41f3: $18 $fe

    ld bc, $02fd                                  ; $41f5: $01 $fd $02
    db $fd                                        ; $41f8: $fd
    ld [bc], a                                    ; $41f9: $02
    db $10                                        ; $41fa: $10
    ld d, [hl]                                    ; $41fb: $56
    xor e                                         ; $41fc: $ab
    nop                                           ; $41fd: $00
    stop                                          ; $41fe: $10 $00
    rst $30                                       ; $4200: $f7
    ld [$50af], sp                                ; $4201: $08 $af $50
    nop                                           ; $4204: $00
    rlca                                          ; $4205: $07
    ld hl, sp-$65                                 ; $4206: $f8 $9b
    inc b                                         ; $4208: $04
    ld c, e                                       ; $4209: $4b
    inc b                                         ; $420a: $04
    ei                                            ; $420b: $fb
    inc b                                         ; $420c: $04
    jr nc, @+$55                                  ; $420d: $30 $53

    xor h                                         ; $420f: $ac
    ret nz                                        ; $4210: $c0

    ld [$48f2], sp                                ; $4211: $08 $f2 $48
    add $01                                       ; $4214: $c6 $01
    cp $01                                        ; $4216: $fe $01
    nop                                           ; $4218: $00
    dec bc                                        ; $4219: $0b
    push af                                       ; $421a: $f5
    xor e                                         ; $421b: $ab
    rst $38                                       ; $421c: $ff
    db $ec                                        ; $421d: $ec
    db $10                                        ; $421e: $10
    ld l, a                                       ; $421f: $6f
    db $10                                        ; $4220: $10
    inc b                                         ; $4221: $04
    sub l                                         ; $4222: $95
    ld a, d                                       ; $4223: $7a
    cp d                                          ; $4224: $ba
    rst $38                                       ; $4225: $ff
    rst $00                                       ; $4226: $c7
    ld c, [hl]                                    ; $4227: $4e
    nop                                           ; $4228: $00
    ld a, [hl+]                                   ; $4229: $2a
    push de                                       ; $422a: $d5
    nop                                           ; $422b: $00
    cp d                                          ; $422c: $ba
    rst $38                                       ; $422d: $ff
    swap h                                        ; $422e: $cb $34
    sbc a                                         ; $4230: $9f
    ld h, b                                       ; $4231: $60
    ccf                                           ; $4232: $3f
    ldh [rP1], a                                  ; $4233: $e0 $00
    rst $18                                       ; $4235: $df
    ldh [$8b], a                                  ; $4236: $e0 $8b
    ld a, h                                       ; $4238: $7c
    scf                                           ; $4239: $37
    ld hl, sp+$3f                                 ; $423a: $f8 $3f
    ret nz                                        ; $423c: $c0

    ret z                                         ; $423d: $c8

    add [hl]                                      ; $423e: $86
    ld [$1983], sp                                ; $423f: $08 $83 $19
    xor d                                         ; $4242: $aa
    ld d, l                                       ; $4243: $55
    adc e                                         ; $4244: $8b
    add hl, bc                                    ; $4245: $09
    xor $11                                       ; $4246: $ee $11
    db $dd                                        ; $4248: $dd
    nop                                           ; $4249: $00
    ld [hl+], a                                   ; $424a: $22
    ld a, [$bd05]                                 ; $424b: $fa $05 $bd
    ld b, d                                       ; $424e: $42
    ld l, c                                       ; $424f: $69
    sub [hl]                                      ; $4250: $96
    cp a                                          ; $4251: $bf
    nop                                           ; $4252: $00
    ld b, b                                       ; $4253: $40
    rst $18                                       ; $4254: $df
    jr nz, jr_0a2_42d4                            ; $4255: $20 $7d

    add d                                         ; $4257: $82
    db $eb                                        ; $4258: $eb
    inc d                                         ; $4259: $14
    rst $38                                       ; $425a: $ff
    rlca                                          ; $425b: $07
    nop                                           ; $425c: $00
    xor e                                         ; $425d: $ab
    ld d, h                                       ; $425e: $54
    ld [hl], l                                    ; $425f: $75
    adc d                                         ; $4260: $8a
    ld [$7e08], sp                                ; $4261: $08 $08 $7e
    ld [$38b0], sp                                ; $4264: $08 $b0 $38
    jr nz, @+$01                                  ; $4267: $20 $ff

    nop                                           ; $4269: $00
    or b                                          ; $426a: $b0
    ld e, b                                       ; $426b: $58
    cp d                                          ; $426c: $ba
    ld b, l                                       ; $426d: $45
    db $fc                                        ; $426e: $fc
    inc bc                                        ; $426f: $03
    ld a, [$0500]                                 ; $4270: $fa $00 $05
    or $09                                        ; $4273: $f6 $09
    db $fc                                        ; $4275: $fc
    inc bc                                        ; $4276: $03
    jp c, $bc25                                   ; $4277: $da $25 $bc

    nop                                           ; $427a: $00
    ld b, e                                       ; $427b: $43
    ld a, [$8d05]                                 ; $427c: $fa $05 $8d
    cp $d6                                        ; $427f: $fe $d6
    db $fd                                        ; $4281: $fd
    ld a, l                                       ; $4282: $7d
    nop                                           ; $4283: $00
    cp $b6                                        ; $4284: $fe $b6
    rst $08                                       ; $4286: $cf
    ei                                            ; $4287: $fb
    add a                                         ; $4288: $87
    sbc l                                         ; $4289: $9d
    and $aa                                       ; $428a: $e6 $aa
    nop                                           ; $428c: $00
    db $fd                                        ; $428d: $fd
    ld a, c                                       ; $428e: $79
    cp $fa                                        ; $428f: $fe $fa
    rrca                                          ; $4291: $0f
    cp a                                          ; $4292: $bf
    ld c, a                                       ; $4293: $4f
    ld c, e                                       ; $4294: $4b
    nop                                           ; $4295: $00
    cp h                                          ; $4296: $bc
    xor [hl]                                      ; $4297: $ae
    ld sp, hl                                     ; $4298: $f9
    push de                                       ; $4299: $d5
    ld a, [$7eba]                                 ; $429a: $fa $ba $7e

jr_0a2_429d:
    db $dd                                        ; $429d: $dd
    nop                                           ; $429e: $00
    ccf                                           ; $429f: $3f
    ld [de], a                                    ; $42a0: $12
    cp a                                          ; $42a1: $bf
    db $f4                                        ; $42a2: $f4
    dec bc                                        ; $42a3: $0b
    ld a, [$ee05]                                 ; $42a4: $fa $05 $ee
    ld bc, $fe11                                  ; $42a7: $01 $11 $fe
    ld bc, $0bf4                                  ; $42aa: $01 $f4 $0b
    xor $11                                       ; $42ad: $ee $11
    ld a, [hl-]                                   ; $42af: $3a
    ld [$7a00], sp                                ; $42b0: $08 $00 $7a
    rst $38                                       ; $42b3: $ff
    or l                                          ; $42b4: $b5
    rst $08                                       ; $42b5: $cf
    cp d                                          ; $42b6: $ba
    rst $00                                       ; $42b7: $c7
    sub a                                         ; $42b8: $97
    db $eb                                        ; $42b9: $eb
    nop                                           ; $42ba: $00
    xor d                                         ; $42bb: $aa
    rst $10                                       ; $42bc: $d7
    push de                                       ; $42bd: $d5
    cp $7a                                        ; $42be: $fe $7a
    rst $38                                       ; $42c0: $ff
    ld e, l                                       ; $42c1: $5d
    cp $00                                        ; $42c2: $fe $00
    add hl, hl                                    ; $42c4: $29
    ld [hl], e                                    ; $42c5: $73
    ld l, c                                       ; $42c6: $69
    push af                                       ; $42c7: $f5
    pop af                                        ; $42c8: $f1
    ld sp, hl                                     ; $42c9: $f9
    ld l, e                                       ; $42ca: $6b
    sbc a                                         ; $42cb: $9f
    nop                                           ; $42cc: $00
    rst $30                                       ; $42cd: $f7
    rrca                                          ; $42ce: $0f
    rst $10                                       ; $42cf: $d7
    rlca                                          ; $42d0: $07
    and a                                         ; $42d1: $a7
    rlca                                          ; $42d2: $07
    ld b, a                                       ; $42d3: $47

jr_0a2_42d4:
    adc a                                         ; $42d4: $8f
    ret nz                                        ; $42d5: $c0

    add hl, hl                                    ; $42d6: $29
    ld a, [de]                                    ; $42d7: $1a
    and b                                         ; $42d8: $a0
    jr c, jr_0a2_4332                             ; $42d9: $38 $57

    xor b                                         ; $42db: $a8
    xor [hl]                                      ; $42dc: $ae

jr_0a2_42dd:
    pop de                                        ; $42dd: $d1
    ld d, l                                       ; $42de: $55
    xor d                                         ; $42df: $aa
    nop                                           ; $42e0: $00
    ccf                                           ; $42e1: $3f
    ret nz                                        ; $42e2: $c0

    ld d, a                                       ; $42e3: $57
    xor b                                         ; $42e4: $a8
    ld a, $c1                                     ; $42e5: $3e $c1
    ld a, e                                       ; $42e7: $7b
    add h                                         ; $42e8: $84
    nop                                           ; $42e9: $00
    ccf                                           ; $42ea: $3f
    ret nz                                        ; $42eb: $c0

    or h                                          ; $42ec: $b4
    rst $08                                       ; $42ed: $cf
    cp $87                                        ; $42ee: $fe $87
    xor e                                         ; $42f0: $ab
    rst $10                                       ; $42f1: $d7
    nop                                           ; $42f2: $00
    sub a                                         ; $42f3: $97
    db $eb                                        ; $42f4: $eb
    and d                                         ; $42f5: $a2
    rst $38                                       ; $42f6: $ff
    rst $10                                       ; $42f7: $d7
    rst $38                                       ; $42f8: $ff
    ld a, l                                       ; $42f9: $7d
    rst $38                                       ; $42fa: $ff
    nop                                           ; $42fb: $00
    ld c, d                                       ; $42fc: $4a
    push af                                       ; $42fd: $f5
    xor a                                         ; $42fe: $af
    rra                                           ; $42ff: $1f
    sub e                                         ; $4300: $93
    rst $38                                       ; $4301: $ff
    jp hl                                         ; $4302: $e9


    pop af                                        ; $4303: $f1
    ld bc, $8175                                  ; $4304: $01 $75 $81
    xor c                                         ; $4307: $a9
    ld d, c                                       ; $4308: $51
    ld b, l                                       ; $4309: $45
    di                                            ; $430a: $f3
    xor e                                         ; $430b: $ab
    adc l                                         ; $430c: $8d
    inc bc                                        ; $430d: $03
    nop                                           ; $430e: $00
    sbc h                                         ; $430f: $9c
    db $e3                                        ; $4310: $e3
    ld c, $f1                                     ; $4311: $0e $f1
    adc h                                         ; $4313: $8c
    di                                            ; $4314: $f3
    adc [hl]                                      ; $4315: $8e
    pop af                                        ; $4316: $f1
    jr nz, jr_0a2_429d                            ; $4317: $20 $84

    ei                                            ; $4319: $fb
    inc b                                         ; $431a: $04
    jr jr_0a2_42dd                                ; $431b: $18 $c0

    rst $38                                       ; $431d: $ff
    sbc a                                         ; $431e: $9f
    ldh [$ab], a                                  ; $431f: $e0 $ab
    inc d                                         ; $4321: $14
    call nc, $fe01                                ; $4322: $d4 $01 $fe
    ld bc, $d209                                  ; $4325: $01 $09 $d2
    xor l                                         ; $4328: $ad
    inc bc                                        ; $4329: $03
    rlca                                          ; $432a: $07
    rst $38                                       ; $432b: $ff
    nop                                           ; $432c: $00
    jp hl                                         ; $432d: $e9


    rla                                           ; $432e: $17
    call nc, $292b                                ; $432f: $d4 $2b $29

jr_0a2_4332:
    rst $10                                       ; $4332: $d7
    ld [de], a                                    ; $4333: $12
    rst $28                                       ; $4334: $ef
    db $10                                        ; $4335: $10
    dec b                                         ; $4336: $05
    rst $38                                       ; $4337: $ff
    xor a                                         ; $4338: $af
    cp l                                          ; $4339: $bd
    inc bc                                        ; $433a: $03
    push af                                       ; $433b: $f5
    ld a, [bc]                                    ; $433c: $0a
    ld e, e                                       ; $433d: $5b
    and h                                         ; $433e: $a4
    nop                                           ; $433f: $00
    or l                                          ; $4340: $b5
    ld c, d                                       ; $4341: $4a
    ld c, e                                       ; $4342: $4b
    or h                                          ; $4343: $b4
    ld de, $aaee                                  ; $4344: $11 $ee $aa
    rst $18                                       ; $4347: $df
    inc b                                         ; $4348: $04
    inc d                                         ; $4349: $14
    rst $38                                       ; $434a: $ff
    cp d                                          ; $434b: $ba
    rst $38                                       ; $434c: $ff
    adc [hl]                                      ; $434d: $8e
    ld a, $00                                     ; $434e: $3e $00
    add [hl]                                      ; $4350: $86
    ld sp, hl                                     ; $4351: $f9
    nop                                           ; $4352: $00
    adc h                                         ; $4353: $8c
    di                                            ; $4354: $f3
    add h                                         ; $4355: $84
    ei                                            ; $4356: $fb
    add [hl]                                      ; $4357: $86
    ld sp, hl                                     ; $4358: $f9
    add h                                         ; $4359: $84
    ei                                            ; $435a: $fb
    nop                                           ; $435b: $00
    add b                                         ; $435c: $80
    rst $38                                       ; $435d: $ff
    ldh [rIE], a                                  ; $435e: $e0 $ff
    ret                                           ; $4360: $c9


    or $c4                                        ; $4361: $f6 $c4
    ei                                            ; $4363: $fb
    db $10                                        ; $4364: $10
    and b                                         ; $4365: $a0
    rst $18                                       ; $4366: $df
    add h                                         ; $4367: $84
    inc b                                         ; $4368: $04
    db $10                                        ; $4369: $10
    ret nz                                        ; $436a: $c0

    rst $38                                       ; $436b: $ff
    rla                                           ; $436c: $17
    rst $38                                       ; $436d: $ff
    nop                                           ; $436e: $00
    db $eb                                        ; $436f: $eb
    rla                                           ; $4370: $17
    ld [hl], l                                    ; $4371: $75
    adc e                                         ; $4372: $8b
    cp b                                          ; $4373: $b8
    ld b, a                                       ; $4374: $47
    dec d                                         ; $4375: $15
    db $eb                                        ; $4376: $eb
    nop                                           ; $4377: $00
    cp b                                          ; $4378: $b8
    ld b, a                                       ; $4379: $47
    inc d                                         ; $437a: $14
    db $eb                                        ; $437b: $eb
    ld bc, $2fff                                  ; $437c: $01 $ff $2f
    ld b, h                                       ; $437f: $44
    nop                                           ; $4380: $00
    ld e, e                                       ; $4381: $5b
    add a                                         ; $4382: $87
    xor $1c                                       ; $4383: $ee $1c
    cp d                                          ; $4385: $ba
    ld [hl], c                                    ; $4386: $71
    ret nz                                        ; $4387: $c0

    jp nc, $8800                                  ; $4388: $d2 $00 $88

    inc h                                         ; $438b: $24
    ld d, e                                       ; $438c: $53
    nop                                           ; $438d: $00
    adc b                                         ; $438e: $88
    ld [hl+], a                                   ; $438f: $22
    db $d3                                        ; $4390: $d3
    rst $38                                       ; $4391: $ff
    nop                                           ; $4392: $00
    pop hl                                        ; $4393: $e1
    rst $38                                       ; $4394: $ff
    jp nz, $81fd                                  ; $4395: $c2 $fd $81

    cp $c3                                        ; $4398: $fe $c3
    db $fc                                        ; $439a: $fc
    ld bc, $fe81                                  ; $439b: $01 $81 $fe
    add c                                         ; $439e: $81
    cp $83                                        ; $439f: $fe $83
    db $fc                                        ; $43a1: $fc
    ld a, [$5040]                                 ; $43a2: $fa $40 $50
    ld h, b                                       ; $43a5: $60
    add b                                         ; $43a6: $80
    ld hl, sp+$03                                 ; $43a7: $f8 $03
    ld b, b                                       ; $43a9: $40
    ld e, b                                       ; $43aa: $58
    ld sp, $4544                                  ; $43ab: $31 $44 $45
    inc de                                        ; $43ae: $13
    rla                                           ; $43af: $17
    nop                                           ; $43b0: $00
    ld c, h                                       ; $43b1: $4c
    ld e, h                                       ; $43b2: $5c
    ld sp, $cc73                                  ; $43b3: $31 $73 $cc
    and h                                         ; $43b6: $a4
    ld [de], a                                    ; $43b7: $12
    ld c, d                                       ; $43b8: $4a
    nop                                           ; $43b9: $00
    dec h                                         ; $43ba: $25
    or l                                          ; $43bb: $b5
    ld [$fe81], sp                                ; $43bc: $08 $81 $fe
    add d                                         ; $43bf: $82
    db $fd                                        ; $43c0: $fd
    ret nz                                        ; $43c1: $c0

Jump_0a2_43c2:
    dec c                                         ; $43c2: $0d
    rst $38                                       ; $43c3: $ff
    add c                                         ; $43c4: $81
    cp $c0                                        ; $43c5: $fe $c0
    ld c, b                                       ; $43c7: $48
    dec de                                        ; $43c8: $1b
    ld [bc], a                                    ; $43c9: $02
    nop                                           ; $43ca: $00
    cp $06                                        ; $43cb: $fe $06
    nop                                           ; $43cd: $00
    nop                                           ; $43ce: $00
    sbc a                                         ; $43cf: $9f
    ldh [$2b], a                                  ; $43d0: $e0 $2b
    call nc, $bf40                                ; $43d2: $d4 $40 $bf
    inc b                                         ; $43d5: $04
    ei                                            ; $43d6: $fb
    inc b                                         ; $43d7: $04
    ld bc, $05fe                                  ; $43d8: $01 $fe $05
    rst $38                                       ; $43db: $ff
    xor e                                         ; $43dc: $ab
    call nz, $f410                                ; $43dd: $c4 $10 $f4
    dec bc                                        ; $43e0: $0b
    nop                                           ; $43e1: $00
    xor b                                         ; $43e2: $a8
    ld d, a                                       ; $43e3: $57
    ld de, $0aef                                  ; $43e4: $11 $ef $0a
    rst $30                                       ; $43e7: $f7
    ld e, d                                       ; $43e8: $5a
    ld hl, $6b00                                  ; $43e9: $21 $00 $6b
    sub a                                         ; $43ec: $97
    adc h                                         ; $43ed: $8c
    ccf                                           ; $43ee: $3f
    or c                                          ; $43ef: $b1
    ld a, a                                       ; $43f0: $7f
    add $fb                                       ; $43f1: $c6 $fb
    nop                                           ; $43f3: $00
    add hl, de                                    ; $43f4: $19
    or $a2                                        ; $43f5: $f6 $a2
    rst $38                                       ; $43f7: $ff
    ld d, l                                       ; $43f8: $55
    xor a                                         ; $43f9: $af
    db $d3                                        ; $43fa: $d3
    inc l                                         ; $43fb: $2c
    nop                                           ; $43fc: $00
    ld c, [hl]                                    ; $43fd: $4e
    cp c                                          ; $43fe: $b9
    dec d                                         ; $43ff: $15
    ld a, [$f748]                                 ; $4400: $fa $48 $f7
    and l                                         ; $4403: $a5
    rst $18                                       ; $4404: $df
    nop                                           ; $4405: $00
    jr z, @+$01                                   ; $4406: $28 $ff

    ld e, h                                       ; $4408: $5c
    rst $38                                       ; $4409: $ff
    ld [$55ff], a                                 ; $440a: $ea $ff $55
    xor d                                         ; $440d: $aa
    nop                                           ; $440e: $00
    and e                                         ; $440f: $a3
    ld a, h                                       ; $4410: $7c
    dec d                                         ; $4411: $15
    ld [$d4ab], a                                 ; $4412: $ea $ab $d4
    dec d                                         ; $4415: $15
    db $eb                                        ; $4416: $eb
    nop                                           ; $4417: $00
    and b                                         ; $4418: $a0
    ld a, a                                       ; $4419: $7f
    ld [hl], l                                    ; $441a: $75
    cp $ea                                        ; $441b: $fe $ea
    rst $38                                       ; $441d: $ff
    cp h                                          ; $441e: $bc
    ld b, e                                       ; $441f: $43
    nop                                           ; $4420: $00
    ld l, c                                       ; $4421: $69
    sub [hl]                                      ; $4422: $96
    jp nc, Jump_000_292d                          ; $4423: $d2 $2d $29

    rst $18                                       ; $4426: $df
    ld d, d                                       ; $4427: $52
    cp a                                          ; $4428: $bf
    ld b, b                                       ; $4429: $40
    adc b                                         ; $442a: $88
    ld b, $04                                     ; $442b: $06 $04
    xor [hl]                                      ; $442d: $ae
    rst $38                                       ; $442e: $ff
    db $e4                                        ; $442f: $e4
    jp z, Jump_000_2448                           ; $4430: $ca $48 $24

    nop                                           ; $4433: $00
    sub d                                         ; $4434: $92
    ld bc, $520c                                  ; $4435: $01 $0c $52
    ld h, c                                       ; $4438: $61
    inc c                                         ; $4439: $0c
    add l                                         ; $443a: $85
    inc hl                                        ; $443b: $23
    nop                                           ; $443c: $00

jr_0a2_443d:
    rla                                           ; $443d: $17
    ld c, h                                       ; $443e: $4c
    ld e, [hl]                                    ; $443f: $5e
    ld sp, $0764                                  ; $4440: $31 $64 $07
    add a                                         ; $4443: $87
    inc hl                                        ; $4444: $23
    nop                                           ; $4445: $00
    inc d                                         ; $4446: $14
    rrca                                          ; $4447: $0f
    ld d, c                                       ; $4448: $51
    ld a, $7b                                     ; $4449: $3e $7b
    call $27cc                                    ; $444b: $cd $cc $27
    nop                                           ; $444e: $00
    or [hl]                                       ; $444f: $b6
    inc bc                                        ; $4450: $03
    xor e                                         ; $4451: $ab
    dec d                                         ; $4452: $15
    pop bc                                        ; $4453: $c1
    rst $38                                       ; $4454: $ff
    inc e                                         ; $4455: $1c
    ei                                            ; $4456: $fb
    nop                                           ; $4457: $00
    ld d, d                                       ; $4458: $52
    db $ed                                        ; $4459: $ed
    add l                                         ; $445a: $85
    rst $38                                       ; $445b: $ff
    jr z, jr_0a2_443d                             ; $445c: $28 $df

    ld d, e                                       ; $445e: $53
    rst $38                                       ; $445f: $ff
    nop                                           ; $4460: $00
    adc a                                         ; $4461: $8f
    ld a, h                                       ; $4462: $7c
    dec a                                         ; $4463: $3d
    ldh a, [$64]                                  ; $4464: $f0 $64
    rst $38                                       ; $4466: $ff
    sub e                                         ; $4467: $93
    rst $28                                       ; $4468: $ef
    nop                                           ; $4469: $00
    ld c, h                                       ; $446a: $4c
    cp a                                          ; $446b: $bf
    ld sp, $d6ff                                  ; $446c: $31 $ff $d6
    ld sp, hl                                     ; $446f: $f9
    ld a, [hl+]                                   ; $4470: $2a
    rst $10                                       ; $4471: $d7
    nop                                           ; $4472: $00
    adc d                                         ; $4473: $8a
    db $fd                                        ; $4474: $fd
    adc $73                                       ; $4475: $ce $73
    halt                                          ; $4477: $76
    ret z                                         ; $4478: $c8

    ld l, e                                       ; $4479: $6b
    sub b                                         ; $447a: $90
    nop                                           ; $447b: $00
    or l                                          ; $447c: $b5
    jp nz, Jump_0a2_64db                          ; $447d: $c2 $db $64

    ld l, d                                       ; $4480: $6a
    ld sp, $5fb3                                  ; $4481: $31 $b3 $5f
    nop                                           ; $4484: $00
    ld l, [hl]                                    ; $4485: $6e
    sbc l                                         ; $4486: $9d
    or a                                          ; $4487: $b7
    ld a, b                                       ; $4488: $78
    and [hl]                                      ; $4489: $a6
    ld c, c                                       ; $448a: $49
    ld e, e                                       ; $448b: $5b
    and a                                         ; $448c: $a7
    nop                                           ; $448d: $00
    ld l, $5c                                     ; $448e: $2e $5c
    ld a, [hl-]                                   ; $4490: $3a
    pop af                                        ; $4491: $f1
    ld sp, hl                                     ; $4492: $f9
    add $d6                                       ; $4493: $c6 $d6
    add hl, hl                                    ; $4495: $29
    nop                                           ; $4496: $00
    or h                                          ; $4497: $b4
    ld b, d                                       ; $4498: $42
    sub a                                         ; $4499: $97
    ld [$c5ea], sp                                ; $449a: $08 $ea $c5
    push hl                                       ; $449d: $e5
    jr jr_0a2_44a0                                ; $449e: $18 $00

jr_0a2_44a0:
    ld d, d                                       ; $44a0: $52
    ld hl, $449b                                  ; $44a1: $21 $9b $44
    ld h, [hl]                                    ; $44a4: $66
    sbc c                                         ; $44a5: $99
    ld e, e                                       ; $44a6: $5b
    daa                                           ; $44a7: $27
    nop                                           ; $44a8: $00
    xor h                                         ; $44a9: $ac
    ld e, h                                       ; $44aa: $5c
    jr nc, @-$0c                                  ; $44ab: $30 $f2

    pop hl                                        ; $44ad: $e1
    ccf                                           ; $44ae: $3f
    cp e                                          ; $44af: $bb
    ld e, a                                       ; $44b0: $5f
    nop                                           ; $44b1: $00
    xor $1c                                       ; $44b2: $ee $1c
    or b                                          ; $44b4: $b0
    ld [hl], d                                    ; $44b5: $72
    jp hl                                         ; $44b6: $e9


    call nz, Call_000_2032                        ; $44b7: $c4 $32 $20
    nop                                           ; $44ba: $00
    sbc c                                         ; $44bb: $99
    db $10                                        ; $44bc: $10
    inc l                                         ; $44bd: $2c
    adc c                                         ; $44be: $89
    jp z, Jump_000_25fc                           ; $44bf: $ca $fc $25

    sbc $00                                       ; $44c2: $de $00
    xor d                                         ; $44c4: $aa
    rst $30                                       ; $44c5: $f7
    ld e, c                                       ; $44c6: $59
    rst $28                                       ; $44c7: $ef
    sub h                                         ; $44c8: $94
    ld a, e                                       ; $44c9: $7b
    ld c, e                                       ; $44ca: $4b
    rst $30                                       ; $44cb: $f7
    nop                                           ; $44cc: $00
    xor [hl]                                      ; $44cd: $ae
    call c, $f936                                 ; $44ce: $dc $36 $f9
    jp z, $ab31                                   ; $44d1: $ca $31 $ab

    ld b, a                                       ; $44d4: $47
    nop                                           ; $44d5: $00
    xor $1c                                       ; $44d6: $ee $1c
    ccf                                           ; $44d8: $3f
    ld a, [c]                                     ; $44d9: $f2
    di                                            ; $44da: $f3
    call Call_000_10ed                            ; $44db: $cd $ed $10
    nop                                           ; $44de: $00
    sub d                                         ; $44df: $92
    ld c, c                                       ; $44e0: $49
    xor b                                         ; $44e1: $a8
    ld d, $c9                                     ; $44e2: $16 $c9
    ret nz                                        ; $44e4: $c0

    inc b                                         ; $44e5: $04
    ld sp, $2800                                  ; $44e6: $31 $00 $28
    ld b, h                                       ; $44e9: $44
    inc d                                         ; $44ea: $14
    ld [$00a9], sp                                ; $44eb: $08 $a9 $00
    push bc                                       ; $44ee: $c5
    add e                                         ; $44ef: $83
    nop                                           ; $44f0: $00
    push af                                       ; $44f1: $f5
    ld c, a                                       ; $44f2: $4f
    or b                                          ; $44f3: $b0
    ld a, a                                       ; $44f4: $7f
    ld b, a                                       ; $44f5: $47
    inc d                                         ; $44f6: $14
    rlca                                          ; $44f7: $07
    inc hl                                        ; $44f8: $23
    nop                                           ; $44f9: $00
    sub h                                         ; $44fa: $94
    rrca                                          ; $44fb: $0f
    ld d, d                                       ; $44fc: $52
    ccf                                           ; $44fd: $3f
    ld c, d                                       ; $44fe: $4a
    db $fd                                        ; $44ff: $fd
    ld [de], a                                    ; $4500: $12
    rst $38                                       ; $4501: $ff

jr_0a2_4502:
    nop                                           ; $4502: $00
    ld c, c                                       ; $4503: $49
    or [hl]                                       ; $4504: $b6
    adc h                                         ; $4505: $8c
    ld a, e                                       ; $4506: $7b
    sbc a                                         ; $4507: $9f
    ldh [$aa], a                                  ; $4508: $e0 $aa
    push de                                       ; $450a: $d5
    ld b, b                                       ; $450b: $40
    pop bc                                        ; $450c: $c1
    add sp, $00                                   ; $450d: $e8 $00
    rst $38                                       ; $450f: $ff
    rst $38                                       ; $4510: $ff
    call nc, $abef                                ; $4511: $d4 $ef $ab
    rst $10                                       ; $4514: $d7
    nop                                           ; $4515: $00
    push bc                                       ; $4516: $c5
    cp $5b                                        ; $4517: $fe $5b
    rst $20                                       ; $4519: $e7
    ld l, l                                       ; $451a: $6d
    pop de                                        ; $451b: $d1
    ld b, c                                       ; $451c: $41
    ei                                            ; $451d: $fb
    ld b, b                                       ; $451e: $40
    db $eb                                        ; $451f: $eb
    sub a                                         ; $4520: $97
    dec b                                         ; $4521: $05
    ld e, e                                       ; $4522: $5b
    rst $20                                       ; $4523: $e7
    ld a, [c]                                     ; $4524: $f2
    rst $38                                       ; $4525: $ff
    ld c, l                                       ; $4526: $4d
    cp [hl]                                       ; $4527: $be
    nop                                           ; $4528: $00
    push de                                       ; $4529: $d5
    ld a, [$f52a]                                 ; $452a: $fa $2a $f5
    push hl                                       ; $452d: $e5
    sbc [hl]                                      ; $452e: $9e
    ld [hl], $fb                                  ; $452f: $36 $fb
    nop                                           ; $4531: $00
    reti                                          ; $4532: $d9


    ld h, a                                       ; $4533: $67

jr_0a2_4534:
    db $d3                                        ; $4534: $d3
    cp a                                          ; $4535: $bf
    adc h                                         ; $4536: $8c
    ld a, h                                       ; $4537: $7c
    ld [hl], c                                    ; $4538: $71
    db $f4                                        ; $4539: $f4
    nop                                           ; $453a: $00
    inc [hl]                                      ; $453b: $34
    rst $18                                       ; $453c: $df
    rst $00                                       ; $453d: $c7
    cp a                                          ; $453e: $bf
    adc a                                         ; $453f: $8f

Jump_0a2_4540:
    ld a, h                                       ; $4540: $7c
    jr c, jr_0a2_4534                             ; $4541: $38 $f1

    nop                                           ; $4543: $00
    db $eb                                        ; $4544: $eb
    call nz, $9865                                ; $4545: $c4 $65 $98
    or h                                          ; $4548: $b4
    jp Jump_0a2_645a                              ; $4549: $c3 $5a $64


    ld bc, $fffa                                  ; $454c: $01 $fa $ff
    sub l                                         ; $454f: $95
    db $eb                                        ; $4550: $eb
    xor e                                         ; $4551: $ab
    push de                                       ; $4552: $d5
    jp nz, $05c7                                  ; $4553: $c2 $c7 $05

    jr nz, jr_0a2_4502                            ; $4556: $20 $aa

    rst $38                                       ; $4558: $ff
    call $9a0c                                    ; $4559: $cd $0c $9a
    ld a, a                                       ; $455c: $7f
    push hl                                       ; $455d: $e5
    rst $38                                       ; $455e: $ff
    cpl                                           ; $455f: $2f
    ld [hl+], a                                   ; $4560: $22
    rst $10                                       ; $4561: $d7
    ld d, d                                       ; $4562: $52
    dec de                                        ; $4563: $1b
    ld [bc], a                                    ; $4564: $02
    xor d                                         ; $4565: $aa
    rst $38                                       ; $4566: $ff
    ld d, a                                       ; $4567: $57
    db $dd                                        ; $4568: $dd
    dec b                                         ; $4569: $05
    add $00                                       ; $456a: $c6 $00
    ret z                                         ; $456c: $c8

    ld c, c                                       ; $456d: $49
    nop                                           ; $456e: $00
    db $10                                        ; $456f: $10
    ld [hl+], a                                   ; $4570: $22
    ld h, $88                                     ; $4571: $26 $88
    and c                                         ; $4573: $a1
    nop                                           ; $4574: $00
    db $10                                        ; $4575: $10
    dec b                                         ; $4576: $05
    inc hl                                        ; $4577: $23
    rla                                           ; $4578: $17
    adc h                                         ; $4579: $8c
    ld e, d                                       ; $457a: $5a
    ld sp, $082e                                  ; $457b: $31 $2e $08
    ld sp, $1f93                                  ; $457e: $31 $93 $1f
    rra                                           ; $4581: $1f
    jr z, jr_0a2_4585                             ; $4582: $28 $01

    ld a, c                                       ; $4584: $79

jr_0a2_4585:
    add $cd                                       ; $4585: $c6 $cd
    inc b                                         ; $4587: $04
    jr nc, jr_0a2_45e4                            ; $4588: $30 $5a

    dec b                                         ; $458a: $05
    xor e                                         ; $458b: $ab
    db $10                                        ; $458c: $10
    and b                                         ; $458d: $a0
    ld bc, $b921                                  ; $458e: $01 $21 $b9
    nop                                           ; $4591: $00
    ld d, d                                       ; $4592: $52
    cp h                                          ; $4593: $bc
    ld [$245f], sp                                ; $4594: $08 $5f $24
    ei                                            ; $4597: $fb
    rlca                                          ; $4598: $07
    xor $02                                       ; $4599: $ee $02
    dec e                                         ; $459b: $1d
    cp c                                          ; $459c: $b9
    halt                                          ; $459d: $76
    nop                                           ; $459e: $00
    rst $38                                       ; $459f: $ff
    db $ed                                        ; $45a0: $ed
    ret nc                                        ; $45a1: $d0

    ld d, c                                       ; $45a2: $51
    ld [hl], a                                    ; $45a3: $77
    nop                                           ; $45a4: $00
    ret z                                         ; $45a5: $c8

    ld l, l                                       ; $45a6: $6d
    sub b                                         ; $45a7: $90
    sub [hl]                                      ; $45a8: $96
    pop hl                                        ; $45a9: $e1
    ld e, d                                       ; $45aa: $5a
    db $e4                                        ; $45ab: $e4
    and [hl]                                      ; $45ac: $a6
    nop                                           ; $45ad: $00
    ld sp, hl                                     ; $45ae: $f9
    ld d, e                                       ; $45af: $53
    cp a                                          ; $45b0: $bf
    sbc a                                         ; $45b1: $9f
    ld a, h                                       ; $45b2: $7c
    ld a, [hl-]                                   ; $45b3: $3a
    pop af                                        ; $45b4: $f1
    sub [hl]                                      ; $45b5: $96
    nop                                           ; $45b6: $00
    ld h, c                                       ; $45b7: $61
    ld e, e                                       ; $45b8: $5b
    add a                                         ; $45b9: $87
    xor a                                         ; $45ba: $af
    inc e                                         ; $45bb: $1c
    or l                                          ; $45bc: $b5
    ld a, d                                       ; $45bd: $7a
    ld a, [$cc00]                                 ; $45be: $fa $00 $cc
    sub l                                         ; $45c1: $95
    ld l, [hl]                                    ; $45c2: $6e
    ld c, [hl]                                    ; $45c3: $4e
    sub e                                         ; $45c4: $93
    or e                                          ; $45c5: $b3
    add hl, bc                                    ; $45c6: $09
    or $00                                        ; $45c7: $f6 $00
    ret                                           ; $45c9: $c9


    push de                                       ; $45ca: $d5
    ld [bc], a                                    ; $45cb: $02
    ld d, d                                       ; $45cc: $52
    xor l                                         ; $45cd: $ad
    ld l, c                                       ; $45ce: $69
    ld [de], a                                    ; $45cf: $12
    or [hl]                                       ; $45d0: $b6
    ld bc, $4b41                                  ; $45d1: $01 $41 $4b
    and a                                         ; $45d4: $a7
    db $ec                                        ; $45d5: $ec
    rra                                           ; $45d6: $1f
    ld a, $f3                                     ; $45d7: $3e $f3
    db $f4                                        ; $45d9: $f4
    add hl, bc                                    ; $45da: $09
    ld b, c                                       ; $45db: $41
    and b                                         ; $45dc: $a0
    inc b                                         ; $45dd: $04
    db $10                                        ; $45de: $10
    call nc, $faff                                ; $45df: $d4 $ff $fa
    rst $38                                       ; $45e2: $ff
    db $fd                                        ; $45e3: $fd

jr_0a2_45e4:
    ld a, $05                                     ; $45e4: $3e $05
    ld c, h                                       ; $45e6: $4c
    ld d, d                                       ; $45e7: $52
    pop hl                                        ; $45e8: $e1
    ld b, h                                       ; $45e9: $44
    ld d, d                                       ; $45ea: $52
    rst $38                                       ; $45eb: $ff
    or [hl]                                       ; $45ec: $b6
    ld a, [bc]                                    ; $45ed: $0a
    and l                                         ; $45ee: $a5
    inc c                                         ; $45ef: $0c
    dec b                                         ; $45f0: $05
    rst $38                                       ; $45f1: $ff
    ld b, b                                       ; $45f2: $40
    dec bc                                        ; $45f3: $0b
    and b                                         ; $45f4: $a0
    nop                                           ; $45f5: $00
    cp a                                          ; $45f6: $bf
    rst $38                                       ; $45f7: $ff
    ld a, [hl+]                                   ; $45f8: $2a
    db $dd                                        ; $45f9: $dd
    xor e                                         ; $45fa: $ab
    rst $30                                       ; $45fb: $f7
    nop                                           ; $45fc: $00
    call z, $b97d                                 ; $45fd: $cc $7d $b9
    ld [hl], b                                    ; $4600: $70
    db $e4                                        ; $4601: $e4
    pop bc                                        ; $4602: $c1
    add hl, bc                                    ; $4603: $09
    ld d, d                                       ; $4604: $52
    nop                                           ; $4605: $00
    ld [hl-], a                                   ; $4606: $32
    add b                                         ; $4607: $80
    ld b, c                                       ; $4608: $41
    ld a, [de]                                    ; $4609: $1a
    ei                                            ; $460a: $fb
    call z, Call_0a2_469d                         ; $460b: $cc $9d $46
    nop                                           ; $460e: $00
    ld h, [hl]                                    ; $460f: $66
    sub e                                         ; $4610: $93
    sub e                                         ; $4611: $93
    dec l                                         ; $4612: $2d
    ld c, [hl]                                    ; $4613: $4e
    sub c                                         ; $4614: $91
    cp e                                          ; $4615: $bb
    ld b, a                                       ; $4616: $47
    ld bc, $1d6e                                  ; $4617: $01 $6e $1d
    or c                                          ; $461a: $b1
    ld [hl], h                                    ; $461b: $74
    ld c, d                                       ; $461c: $4a
    and c                                         ; $461d: $a1
    sbc e                                         ; $461e: $9b
    ld d, b                                       ; $461f: $50
    ld bc, $3900                                  ; $4620: $01 $00 $39
    ldh a, [$cc]                                  ; $4623: $f0 $cc
    pop bc                                        ; $4625: $c1
    or c                                          ; $4626: $b1
    inc b                                         ; $4627: $04
    ld b, [hl]                                    ; $4628: $46
    jr jr_0a2_462b                                ; $4629: $18 $00

jr_0a2_462b:
    xor b                                         ; $462b: $a8
    ld [bc], a                                    ; $462c: $02
    jp z, $04c0                                   ; $462d: $ca $c0 $04

    ld hl, $902b                                  ; $4630: $21 $2b $90
    nop                                           ; $4633: $00
    db $10                                        ; $4634: $10
    ld h, [hl]                                    ; $4635: $66
    xor c                                         ; $4636: $a9
    nop                                           ; $4637: $00
    ld b, l                                       ; $4638: $45
    inc de                                        ; $4639: $13
    inc d                                         ; $463a: $14
    rst $08                                       ; $463b: $cf
    nop                                           ; $463c: $00
    ld e, [hl]                                    ; $463d: $5e
    inc sp                                        ; $463e: $33
    add hl, bc                                    ; $463f: $09
    and b                                         ; $4640: $a0
    push bc                                       ; $4641: $c5
    inc de                                        ; $4642: $13
    inc d                                         ; $4643: $14
    ld c, a                                       ; $4644: $4f
    nop                                           ; $4645: $00
    ld d, c                                       ; $4646: $51
    ld a, $4c                                     ; $4647: $3e $4c
    di                                            ; $4649: $f3
    ld [hl], $ef                                  ; $464a: $36 $ef
    push af                                       ; $464c: $f5
    cp d                                          ; $464d: $ba
    nop                                           ; $464e: $00
    sbc e                                         ; $464f: $9b
    rst $20                                       ; $4650: $e7
    call z, $b3c1                                 ; $4651: $cc $c1 $b3
    ld [$104c], sp                                ; $4654: $08 $4c $10
    nop                                           ; $4657: $00
    db $10                                        ; $4658: $10
    ld h, $89                                     ; $4659: $26 $89
    nop                                           ; $465b: $00
    push de                                       ; $465c: $d5
    add e                                         ; $465d: $83
    ld [hl], h                                    ; $465e: $74
    rst $08                                       ; $465f: $cf
    nop                                           ; $4660: $00
    ld [hl-], a                                   ; $4661: $32
    db $fd                                        ; $4662: $fd
    ld de, $4588                                  ; $4663: $11 $88 $45
    inc hl                                        ; $4666: $23
    sub [hl]                                      ; $4667: $96
    ld c, h                                       ; $4668: $4c
    nop                                           ; $4669: $00
    ld e, c                                       ; $466a: $59
    ld [hl], $56                                  ; $466b: $36 $56
    ldh [$2a], a                                  ; $466d: $e0 $2a
    push af                                       ; $466f: $f5
    ld [hl], l                                    ; $4670: $75
    ret c                                         ; $4671: $d8

    nop                                           ; $4672: $00
    jp z, Jump_0a2_73bc                           ; $4673: $ca $bc $73

    call $10ab                                    ; $4676: $cd $ab $10
    sub h                                         ; $4679: $94
    ld h, d                                       ; $467a: $62
    nop                                           ; $467b: $00
    ld d, c                                       ; $467c: $51
    adc h                                         ; $467d: $8c
    or [hl]                                       ; $467e: $b6
    ld b, c                                       ; $467f: $41
    sbc e                                         ; $4680: $9b
    daa                                           ; $4681: $27
    ld l, [hl]                                    ; $4682: $6e
    sbc h                                         ; $4683: $9c
    ld [$71be], sp                                ; $4684: $08 $be $71
    ld c, d                                       ; $4687: $4a
    cp l                                          ; $4688: $bd
    add b                                         ; $4689: $80
    nop                                           ; $468a: $00
    ld a, h                                       ; $468b: $7c
    or e                                          ; $468c: $b3
    ld [hl], b                                    ; $468d: $70
    nop                                           ; $468e: $00
    ldh [$ca], a                                  ; $468f: $e0 $ca
    db $f4                                        ; $4691: $f4
    ld hl, $7299                                  ; $4692: $21 $99 $72
    inc a                                         ; $4695: $3c
    adc c                                         ; $4696: $89
    nop                                           ; $4697: $00
    push af                                       ; $4698: $f5
    jp z, Jump_000_04cb                           ; $4699: $ca $cb $04

    ld c, b                                       ; $469c: $48

Call_0a2_469d:
    or e                                          ; $469d: $b3
    and h                                         ; $469e: $a4
    ld c, b                                       ; $469f: $48
    add b                                         ; $46a0: $80
    add b                                         ; $46a1: $80
    ld [$1d6c], sp                                ; $46a2: $08 $6c $1d
    or b                                          ; $46a5: $b0
    ld [hl], d                                    ; $46a6: $72
    set 1, h                                      ; $46a7: $cb $cc
    dec d                                         ; $46a9: $15
    nop                                           ; $46aa: $00
    ld h, $4a                                     ; $46ab: $26 $4a
    inc de                                        ; $46ad: $13
    xor l                                         ; $46ae: $ad
    ld bc, $1049                                  ; $46af: $01 $49 $10
    dec h                                         ; $46b2: $25
    nop                                           ; $46b3: $00
    add e                                         ; $46b4: $83
    rla                                           ; $46b5: $17
    ld c, h                                       ; $46b6: $4c
    ld d, [hl]                                    ; $46b7: $56
    add hl, sp                                    ; $46b8: $39
    ld d, d                                       ; $46b9: $52

jr_0a2_46ba:
    add hl, hl                                    ; $46ba: $29
    dec hl                                        ; $46bb: $2b
    nop                                           ; $46bc: $00
    rst $10                                       ; $46bd: $d7
    xor a                                         ; $46be: $af
    inc e                                         ; $46bf: $1c
    inc a                                         ; $46c0: $3c
    di                                            ; $46c1: $f3
    or $c9                                        ; $46c2: $f6 $c9
    or e                                          ; $46c4: $b3
    nop                                           ; $46c5: $00
    inc c                                         ; $46c6: $0c
    ld a, [bc]                                    ; $46c7: $0a
    pop de                                        ; $46c8: $d1
    or l                                          ; $46c9: $b5
    ld [bc], a                                    ; $46ca: $02
    push bc                                       ; $46cb: $c5
    cp $e6                                        ; $46cc: $fe $e6
    nop                                           ; $46ce: $00
    dec sp                                        ; $46cf: $3b
    ld [hl], h                                    ; $46d0: $74
    rra                                           ; $46d1: $1f
    cp c                                          ; $46d2: $b9
    ld c, a                                       ; $46d3: $4f
    call z, Call_0a2_5b27                         ; $46d4: $cc $27 $5b
    nop                                           ; $46d7: $00
    add a                                         ; $46d8: $87
    xor [hl]                                      ; $46d9: $ae
    inc e                                         ; $46da: $1c
    cp d                                          ; $46db: $ba
    ld [hl], l                                    ; $46dc: $75
    ld d, b                                       ; $46dd: $50
    rst $28                                       ; $46de: $ef

Call_0a2_46df:
    and e                                         ; $46df: $a3
    jr nz, @+$01                                  ; $46e0: $20 $ff

    adc [hl]                                      ; $46e2: $8e
    jr z, jr_0a2_46e6                             ; $46e3: $28 $01

    reti                                          ; $46e5: $d9


jr_0a2_46e6:
    db $e4                                        ; $46e6: $e4
    xor $30                                       ; $46e7: $ee $30
    or l                                          ; $46e9: $b5
    nop                                           ; $46ea: $00
    ld e, d                                       ; $46eb: $5a
    ld e, e                                       ; $46ec: $5b
    adc h                                         ; $46ed: $8c
    ld c, e                                       ; $46ee: $4b
    db $fc                                        ; $46ef: $fc
    ld d, l                                       ; $46f0: $55
    xor [hl]                                      ; $46f1: $ae
    jp z, Jump_0a2_7f00                           ; $46f2: $ca $00 $7f

    add hl, hl                                    ; $46f5: $29
    rst $10                                       ; $46f6: $d7
    sub h                                         ; $46f7: $94
    ei                                            ; $46f8: $fb
    swap a                                        ; $46f9: $cb $37
    ld l, [hl]                                    ; $46fb: $6e
    nop                                           ; $46fc: $00
    db $dd                                        ; $46fd: $dd
    dec [hl]                                      ; $46fe: $35
    ld a, [$4d32]                                 ; $46ff: $fa $32 $4d
    adc e                                         ; $4702: $8b
    ld d, a                                       ; $4703: $57
    rst $28                                       ; $4704: $ef
    nop                                           ; $4705: $00
    inc e                                         ; $4706: $1c
    ld a, [hl-]                                   ; $4707: $3a
    pop af                                        ; $4708: $f1
    add sp, -$3a                                  ; $4709: $e8 $c6
    push hl                                       ; $470b: $e5
    jr jr_0a2_4765                                ; $470c: $18 $57

    nop                                           ; $470e: $00
    jr nz, jr_0a2_46ba                            ; $470f: $20 $a9

    ld b, [hl]                                    ; $4711: $46
    push de                                       ; $4712: $d5
    ld [c], a                                     ; $4713: $e2
    or [hl]                                       ; $4714: $b6
    ld c, b                                       ; $4715: $48
    xor l                                         ; $4716: $ad
    nop                                           ; $4717: $00
    ld [de], a                                    ; $4718: $12
    or d                                          ; $4719: $b2
    ld c, h                                       ; $471a: $4c
    sub $21                                       ; $471b: $d6 $21
    xor e                                         ; $471d: $ab
    ld b, a                                       ; $471e: $47
    ld l, l                                       ; $471f: $6d
    nop                                           ; $4720: $00
    sbc [hl]                                      ; $4721: $9e
    cp [hl]                                       ; $4722: $be
    ld [hl], e                                    ; $4723: $73
    ld l, h                                       ; $4724: $6c
    rla                                           ; $4725: $17
    cp e                                          ; $4726: $bb
    ld b, a                                       ; $4727: $47
    ld l, a                                       ; $4728: $6f
    nop                                           ; $4729: $00
    sbc h                                         ; $472a: $9c
    cp h                                          ; $472b: $bc
    ld [hl], e                                    ; $472c: $73
    ei                                            ; $472d: $fb
    ret nz                                        ; $472e: $c0

    jp nz, $b535                                  ; $472f: $c2 $35 $b5

    nop                                           ; $4732: $00
    ld c, d                                       ; $4733: $4a
    push de                                       ; $4734: $d5
    nop                                           ; $4735: $00
    set 1, h                                      ; $4736: $cb $cc
    dec [hl]                                      ; $4738: $35
    ld b, $82                                     ; $4739: $06 $82
    nop                                           ; $473b: $00
    inc sp                                        ; $473c: $33
    dec bc                                        ; $473d: $0b
    ld b, c                                       ; $473e: $41
    or c                                          ; $473f: $b1
    ld [$13c7], sp                                ; $4740: $08 $c7 $13
    sbc l                                         ; $4743: $9d
    nop                                           ; $4744: $00
    inc c                                         ; $4745: $0c
    ld a, d                                       ; $4746: $7a
    jr nc, @+$58                                  ; $4747: $30 $56

    xor c                                         ; $4749: $a9
    sbc e                                         ; $474a: $9b
    daa                                           ; $474b: $27
    xor $00                                       ; $474c: $ee $00
    inc e                                         ; $474e: $1c
    dec sp                                        ; $474f: $3b
    ldh a, [$d4]                                  ; $4750: $f0 $d4
    db $e3                                        ; $4752: $e3
    dec hl                                        ; $4753: $2b
    inc [hl]                                      ; $4754: $34
    ld d, [hl]                                    ; $4755: $56
    nop                                           ; $4756: $00
    add hl, de                                    ; $4757: $19
    adc e                                         ; $4758: $8b
    inc l                                         ; $4759: $2c
    rst $30                                       ; $475a: $f7
    ret                                           ; $475b: $c9


    call $aa32                                    ; $475c: $cd $32 $aa
    nop                                           ; $475f: $00
    ld b, b                                       ; $4760: $40
    ld d, l                                       ; $4761: $55
    ld a, [hl+]                                   ; $4762: $2a
    xor d                                         ; $4763: $aa
    ld d, c                                       ; $4764: $51

jr_0a2_4765:
    ld e, e                                       ; $4765: $5b
    add a                                         ; $4766: $87
    xor l                                         ; $4767: $ad
    nop                                           ; $4768: $00
    ld e, $b2                                     ; $4769: $1e $b2
    ld a, l                                       ; $476b: $7d
    ld h, [hl]                                    ; $476c: $66
    sbc c                                         ; $476d: $99
    cp e                                          ; $476e: $bb
    rst $00                                       ; $476f: $c7
    adc $00                                       ; $4770: $ce $00
    ld a, h                                       ; $4772: $7c
    or e                                          ; $4773: $b3
    ld a, [hl]                                    ; $4774: $7e
    ret                                           ; $4775: $c9


    rst $38                                       ; $4776: $ff
    dec [hl]                                      ; $4777: $35
    jp c, Jump_000_000e                           ; $4778: $da $0e $00

    db $fd                                        ; $477b: $fd
    or c                                          ; $477c: $b1
    rst $18                                       ; $477d: $df
    rst $20                                       ; $477e: $e7
    ret c                                         ; $477f: $d8

    jp c, $ac24                                   ; $4780: $da $24 $ac

    nop                                           ; $4783: $00
    ld d, e                                       ; $4784: $53
    sub d                                         ; $4785: $92
    inc h                                         ; $4786: $24
    ld [hl], $c9                                  ; $4787: $36 $c9
    xor e                                         ; $4789: $ab
    rla                                           ; $478a: $17
    ld c, a                                       ; $478b: $4f
    ld [$b5bc], sp                                ; $478c: $08 $bc $b5
    ld a, d                                       ; $478f: $7a
    ld d, $c0                                     ; $4790: $16 $c0
    ld bc, $1dee                                  ; $4792: $01 $ee $1d
    cp e                                          ; $4795: $bb
    nop                                           ; $4796: $00
    ld [hl], b                                    ; $4797: $70
    push af                                       ; $4798: $f5
    ret z                                         ; $4799: $c8

    ld [$2b01], a                                 ; $479a: $ea $01 $2b
    call nc, Call_000_00b5                        ; $479d: $d4 $b5 $00
    ld [$c9f7], sp                                ; $47a0: $08 $f7 $c9
    sub l                                         ; $47a3: $95
    ld h, b                                       ; $47a4: $60
    ld sp, hl                                     ; $47a5: $f9
    ld b, $4d                                     ; $47a6: $06 $4d
    nop                                           ; $47a8: $00
    sub b                                         ; $47a9: $90
    or [hl]                                       ; $47aa: $b6
    add hl, bc                                    ; $47ab: $09
    adc e                                         ; $47ac: $8b
    ld b, a                                       ; $47ad: $47
    ld l, [hl]                                    ; $47ae: $6e
    sbc h                                         ; $47af: $9c
    or c                                          ; $47b0: $b1
    ld [$e170], sp                                ; $47b1: $08 $70 $e1
    call nz, Call_000_10f4                        ; $47b4: $c4 $f4 $10
    ld d, d                                       ; $47b7: $52
    rst $38                                       ; $47b8: $ff
    adc a                                         ; $47b9: $8f
    adc a                                         ; $47ba: $8f
    ld bc, $83c7                                  ; $47bb: $01 $c7 $83
    pop hl                                        ; $47be: $e1
    jp $c5e2                                      ; $47bf: $c3 $e2 $c5


    push af                                       ; $47c2: $f5
    ret z                                         ; $47c3: $c8

    dec bc                                        ; $47c4: $0b
    add b                                         ; $47c5: $80
    cpl                                           ; $47c6: $2f
    rrca                                          ; $47c7: $0f
    rst $30                                       ; $47c8: $f7
    cp $ae                                        ; $47c9: $fe $ae
    db $fc                                        ; $47cb: $fc
    call c, $b8f8                                 ; $47cc: $dc $f8 $b8
    nop                                           ; $47cf: $00
    ldh a, [$f0]                                  ; $47d0: $f0 $f0
    ldh [$c0], a                                  ; $47d2: $e0 $c0
    ldh a, [$e0]                                  ; $47d4: $f0 $e0
    ld hl, sp-$10                                 ; $47d6: $f8 $f0
    ld [$b8fc], sp                                ; $47d8: $08 $fc $b8
    cp $dc                                        ; $47db: $fe $dc
    ld d, h                                       ; $47dd: $54
    rlca                                          ; $47de: $07
    rst $10                                       ; $47df: $d7
    rst $38                                       ; $47e0: $ff
    db $eb                                        ; $47e1: $eb
    nop                                           ; $47e2: $00
    cp a                                          ; $47e3: $bf
    db $fd                                        ; $47e4: $fd
    rst $10                                       ; $47e5: $d7
    rst $38                                       ; $47e6: $ff
    rst $38                                       ; $47e7: $ff
    rst $08                                       ; $47e8: $cf
    ldh a, [$90]                                  ; $47e9: $f0 $90
    ret nc                                        ; $47eb: $d0

    or [hl]                                       ; $47ec: $b6
    dec b                                         ; $47ed: $05
    add h                                         ; $47ee: $84
    rrca                                          ; $47ef: $0f
    add b                                         ; $47f0: $80
    sub b                                         ; $47f1: $90
    ld [de], a                                    ; $47f2: $12
    rst $38                                       ; $47f3: $ff
    rst $38                                       ; $47f4: $ff
    xor e                                         ; $47f5: $ab
    cp $1c                                        ; $47f6: $fe $1c
    rst $18                                       ; $47f8: $df
    push af                                       ; $47f9: $f5
    rst $28                                       ; $47fa: $ef
    db $fc                                        ; $47fb: $fc
    rlca                                          ; $47fc: $07
    ld c, b                                       ; $47fd: $48
    rlca                                          ; $47fe: $07
    ld l, l                                       ; $47ff: $6d
    rra                                           ; $4800: $1f
    xor d                                         ; $4801: $aa
    ld e, a                                       ; $4802: $5f

jr_0a2_4803:
    nop                                           ; $4803: $00
    ld d, h                                       ; $4804: $54
    rst $38                                       ; $4805: $ff
    ld hl, sp+$0b                                 ; $4806: $f8 $0b
    push af                                       ; $4808: $f5
    ld d, a                                       ; $4809: $57
    ld sp, hl                                     ; $480a: $f9
    ei                                            ; $480b: $fb
    nop                                           ; $480c: $00
    pop af                                        ; $480d: $f1
    db $e3                                        ; $480e: $e3
    jp $87ff                                      ; $480f: $c3 $ff $87


    rst $10                                       ; $4812: $d7
    ccf                                           ; $4813: $3f
    ei                                            ; $4814: $fb
    nop                                           ; $4815: $00
    rlca                                          ; $4816: $07
    rst $10                                       ; $4817: $d7
    cpl                                           ; $4818: $2f
    ei                                            ; $4819: $fb
    dec b                                         ; $481a: $05
    ld a, l                                       ; $481b: $7d
    add a                                         ; $481c: $87
    dec hl                                        ; $481d: $2b
    jr nz, @-$27                                  ; $481e: $20 $d7

    add c                                         ; $4820: $81
    ld d, $05                                     ; $4821: $16 $05
    ld l, [hl]                                    ; $4823: $6e
    ld a, h                                       ; $4824: $7c
    cp b                                          ; $4825: $b8
    jr nc, jr_0a2_4803                            ; $4826: $30 $db

    nop                                           ; $4828: $00
    db $10                                        ; $4829: $10
    ld l, h                                       ; $482a: $6c
    ld [$0737], sp                                ; $482b: $08 $37 $07
    inc c                                         ; $482e: $0c
    rrca                                          ; $482f: $0f
    ld [de], a                                    ; $4830: $12
    nop                                           ; $4831: $00
    dec e                                         ; $4832: $1d
    add a                                         ; $4833: $87
    inc bc                                        ; $4834: $03
    and a                                         ; $4835: $a7
    rlca                                          ; $4836: $07
    rst $08                                       ; $4837: $cf
    dec bc                                        ; $4838: $0b
    xor a                                         ; $4839: $af
    nop                                           ; $483a: $00
    rlca                                          ; $483b: $07
    sbc a                                         ; $483c: $9f
    ld c, $bf                                     ; $483d: $0e $bf
    ld d, $7f                                     ; $483f: $16 $7f
    db $ed                                        ; $4841: $ed
    sbc [hl]                                      ; $4842: $9e
    ld b, h                                       ; $4843: $44
    ld [hl], h                                    ; $4844: $74
    or b                                          ; $4845: $b0
    rla                                           ; $4846: $17
    add a                                         ; $4847: $87
    xor a                                         ; $4848: $af
    dec hl                                        ; $4849: $2b
    ld b, c                                       ; $484a: $41
    rlca                                          ; $484b: $07
    xor c                                         ; $484c: $a9
    ld d, [hl]                                    ; $484d: $56
    add b                                         ; $484e: $80
    inc b                                         ; $484f: $04
    nop                                           ; $4850: $00
    inc l                                         ; $4851: $2c
    inc sp                                        ; $4852: $33
    ld e, [hl]                                    ; $4853: $5e
    ld h, c                                       ; $4854: $61
    cp [hl]                                       ; $4855: $be
    pop bc                                        ; $4856: $c1
    and h                                         ; $4857: $a4
    ld [bc], a                                    ; $4858: $02
    db $db                                        ; $4859: $db
    nop                                           ; $485a: $00
    rst $38                                       ; $485b: $ff
    ld b, b                                       ; $485c: $40
    cp a                                          ; $485d: $bf
    ld [bc], a                                    ; $485e: $02
    call $0f07                                    ; $485f: $cd $07 $0f
    nop                                           ; $4862: $00
    db $fd                                        ; $4863: $fd
    ld b, $fc                                     ; $4864: $06 $fc
    rrca                                          ; $4866: $0f
    db $fd                                        ; $4867: $fd
    rla                                           ; $4868: $17
    db $fc                                        ; $4869: $fc
    cpl                                           ; $486a: $2f
    ld bc, $5ef8                                  ; $486b: $01 $f8 $5e
    pop af                                        ; $486e: $f1
    cp h                                          ; $486f: $bc
    db $e3                                        ; $4870: $e3
    rst $38                                       ; $4871: $ff
    rst $38                                       ; $4872: $ff
    inc h                                         ; $4873: $24
    ld [$5500], sp                                ; $4874: $08 $00 $55
    ld d, e                                       ; $4877: $53
    cp e                                          ; $4878: $bb
    and a                                         ; $4879: $a7
    rst $20                                       ; $487a: $e7
    rra                                           ; $487b: $1f
    dec de                                        ; $487c: $1b
    rst $38                                       ; $487d: $ff
    ld c, c                                       ; $487e: $49
    push af                                       ; $487f: $f5
    db $ed                                        ; $4880: $ed
    rrca                                          ; $4881: $0f
    nop                                           ; $4882: $00
    nop                                           ; $4883: $00
    call Call_0a2_5507                            ; $4884: $cd $07 $55
    xor d                                         ; $4887: $aa
    jp nc, Jump_0a2_400f                          ; $4888: $d2 $0f $40

    ld d, l                                       ; $488b: $55
    db $fd                                        ; $488c: $fd
    rlca                                          ; $488d: $07
    di                                            ; $488e: $f3
    rrca                                          ; $488f: $0f
    dec bc                                        ; $4890: $0b
    rlca                                          ; $4891: $07
    ld sp, hl                                     ; $4892: $f9
    rlca                                          ; $4893: $07
    jr nc, jr_0a2_48e9                            ; $4894: $30 $53

    xor a                                         ; $4896: $af
    jp nc, Jump_000_100f                          ; $4897: $d2 $0f $10

    ld [$f5ea], sp                                ; $489a: $08 $ea $f5
    ldh [$f1], a                                  ; $489d: $e0 $f1
    nop                                           ; $489f: $00
    ld a, a                                       ; $48a0: $7f
    rst $38                                       ; $48a1: $ff
    or a                                          ; $48a2: $b7
    ld a, c                                       ; $48a3: $79
    cpl                                           ; $48a4: $2f
    ld [hl], b                                    ; $48a5: $70
    ld [hl+], a                                   ; $48a6: $22
    xor c                                         ; $48a7: $a9
    nop                                           ; $48a8: $00
    ld h, c                                       ; $48a9: $61
    ld [hl], c                                    ; $48aa: $71
    rst $38                                       ; $48ab: $ff
    rst $38                                       ; $48ac: $ff
    sbc c                                         ; $48ad: $99
    sbc h                                         ; $48ae: $9c
    cp $fe                                        ; $48af: $fe $fe
    nop                                           ; $48b1: $00
    db $dd                                        ; $48b2: $dd
    db $e3                                        ; $48b3: $e3
    cp [hl]                                       ; $48b4: $be
    pop bc                                        ; $48b5: $c1
    cp [hl]                                       ; $48b6: $be
    pop bc                                        ; $48b7: $c1
    adc b                                         ; $48b8: $88
    jp $c340                                      ; $48b9: $c3 $40 $c3


    ld d, b                                       ; $48bc: $50
    nop                                           ; $48bd: $00
    ld d, c                                       ; $48be: $51
    or e                                          ; $48bf: $b3
    rra                                           ; $48c0: $1f
    ld a, a                                       ; $48c1: $7f
    cp a                                          ; $48c2: $bf
    cp a                                          ; $48c3: $bf
    nop                                           ; $48c4: $00
    db $d3                                        ; $48c5: $d3
    rst $28                                       ; $48c6: $ef
    cp l                                          ; $48c7: $bd
    jp $cf81                                      ; $48c8: $c3 $81 $cf


    jp Jump_0a2_40e7                              ; $48cb: $c3 $e7 $40


    rst $38                                       ; $48ce: $ff
    ld b, h                                       ; $48cf: $44
    nop                                           ; $48d0: $00
    and b                                         ; $48d1: $a0
    rst $38                                       ; $48d2: $ff
    ld d, d                                       ; $48d3: $52
    db $ed                                        ; $48d4: $ed
    and h                                         ; $48d5: $a4
    ld e, e                                       ; $48d6: $5b
    nop                                           ; $48d7: $00
    ld c, e                                       ; $48d8: $4b
    or h                                          ; $48d9: $b4
    cp d                                          ; $48da: $ba
    ld b, h                                       ; $48db: $44

jr_0a2_48dc:
    ld l, e                                       ; $48dc: $6b
    sub h                                         ; $48dd: $94
    reti                                          ; $48de: $d9


    ld h, $07                                     ; $48df: $26 $07
    ld hl, sp+$07                                 ; $48e1: $f8 $07
    cp $03                                        ; $48e3: $fe $03
    cp $86                                        ; $48e5: $fe $86
    rlca                                          ; $48e7: $07
    inc b                                         ; $48e8: $04

jr_0a2_48e9:
    ld [$0fda], sp                                ; $48e9: $08 $da $0f
    nop                                           ; $48ec: $00
    ld d, l                                       ; $48ed: $55
    rst $38                                       ; $48ee: $ff
    ld d, c                                       ; $48ef: $51
    xor [hl]                                      ; $48f0: $ae
    and h                                         ; $48f1: $a4
    ld e, a                                       ; $48f2: $5f
    inc bc                                        ; $48f3: $03
    db $fc                                        ; $48f4: $fc
    nop                                           ; $48f5: $00
    ld e, h                                       ; $48f6: $5c
    inc bc                                        ; $48f7: $03
    dec l                                         ; $48f8: $2d
    ld [bc], a                                    ; $48f9: $02
    ld a, l                                       ; $48fa: $7d
    ld [bc], a                                    ; $48fb: $02
    ld hl, sp+$07                                 ; $48fc: $f8 $07
    nop                                           ; $48fe: $00
    and c                                         ; $48ff: $a1
    ld e, [hl]                                    ; $4900: $5e
    ret c                                         ; $4901: $d8

    rst $38                                       ; $4902: $ff
    ld l, h                                       ; $4903: $6c
    add b                                         ; $4904: $80
    ld d, l                                       ; $4905: $55
    add b                                         ; $4906: $80
    nop                                           ; $4907: $00
    ccf                                           ; $4908: $3f
    ret nz                                        ; $4909: $c0

    add l                                         ; $490a: $85
    ld a, [$ff6d]                                 ; $490b: $fa $6d $ff
    push de                                       ; $490e: $d5
    ld a, [hl+]                                   ; $490f: $2a
    nop                                           ; $4910: $00
    cp e                                          ; $4911: $bb
    ld b, h                                       ; $4912: $44
    ccf                                           ; $4913: $3f
    ret nz                                        ; $4914: $c0

    rst $18                                       ; $4915: $df
    jr nz, jr_0a2_4977                            ; $4916: $20 $5f

    jr nz, jr_0a2_491d                            ; $4918: $20 $03

    rst $08                                       ; $491a: $cf
    jr nc, jr_0a2_48dc                            ; $491b: $30 $bf

jr_0a2_491d:
    ld h, b                                       ; $491d: $60
    ld e, a                                       ; $491e: $5f
    ldh [$6e], a                                  ; $491f: $e0 $6e
    rrca                                          ; $4921: $0f
    ret nc                                        ; $4922: $d0

    ld e, [hl]                                    ; $4923: $5e
    jp Jump_000_1f50                              ; $4924: $c3 $50 $1f


    cp $1f                                        ; $4927: $fe $1f
    db $fc                                        ; $4929: $fc
    inc bc                                        ; $492a: $03
    ld sp, hl                                     ; $492b: $f9
    ld b, $50                                     ; $492c: $06 $50
    rrca                                          ; $492e: $0f
    db $f4                                        ; $492f: $f4
    cpl                                           ; $4930: $2f
    ld [$ff00], sp                                ; $4931: $08 $00 $ff
    ld e, h                                       ; $4934: $5c
    and e                                         ; $4935: $a3

jr_0a2_4936:
    ld d, b                                       ; $4936: $50
    ccf                                           ; $4937: $3f
    nop                                           ; $4938: $00
    rst $38                                       ; $4939: $ff
    or c                                          ; $493a: $b1
    nop                                           ; $493b: $00
    nop                                           ; $493c: $00
    rlc b                                         ; $493d: $cb $00
    ld hl, sp+$07                                 ; $493f: $f8 $07
    ld sp, hl                                     ; $4941: $f9
    ld b, $fc                                     ; $4942: $06 $fc
    ld de, $fb07                                  ; $4944: $11 $07 $fb
    rlca                                          ; $4947: $07
    add b                                         ; $4948: $80
    jr z, @-$16                                   ; $4949: $28 $e8

    rla                                           ; $494b: $17
    ld bc, $0370                                  ; $494c: $01 $70 $03
    nop                                           ; $494f: $00
    ld c, d                                       ; $4950: $4a
    rst $38                                       ; $4951: $ff
    xor [hl]                                      ; $4952: $ae
    ld d, b                                       ; $4953: $50
    add sp, $10                                   ; $4954: $e8 $10
    db $ed                                        ; $4956: $ed
    db $10                                        ; $4957: $10
    add b                                         ; $4958: $80
    cp d                                          ; $4959: $ba
    rrca                                          ; $495a: $0f
    ld a, [hl]                                    ; $495b: $7e
    add c                                         ; $495c: $81
    jr z, jr_0a2_4936                             ; $495d: $28 $d7

    push de                                       ; $495f: $d5
    rst $38                                       ; $4960: $ff
    or l                                          ; $4961: $b5
    nop                                           ; $4962: $00
    ld a, [bc]                                    ; $4963: $0a
    ld d, e                                       ; $4964: $53
    inc c                                         ; $4965: $0c
    rst $30                                       ; $4966: $f7
    ld [$1ce3], sp                                ; $4967: $08 $e3 $1c
    jp hl                                         ; $496a: $e9


    jr @+$18                                      ; $496b: $18 $16

    or $0f                                        ; $496d: $f6 $0f
    jr nc, jr_0a2_49c8                            ; $496f: $30 $57

    add h                                         ; $4971: $84
    ld b, $fe                                     ; $4972: $06 $fe
    cp $ad                                        ; $4974: $fe $ad
    nop                                           ; $4976: $00

jr_0a2_4977:
    xor l                                         ; $4977: $ad
    rst $38                                       ; $4978: $ff
    rst $38                                       ; $4979: $ff
    ld [hl], b                                    ; $497a: $70
    ld sp, hl                                     ; $497b: $f9
    dec h                                         ; $497c: $25
    ld [hl], b                                    ; $497d: $70
    xor d                                         ; $497e: $aa
    ld b, b                                       ; $497f: $40
    ld [hl], l                                    ; $4980: $75
    jp $bf09                                      ; $4981: $c3 $09 $bf


    cp a                                          ; $4984: $bf
    ld l, a                                       ; $4985: $6f
    ld l, a                                       ; $4986: $6f
    rst $38                                       ; $4987: $ff
    rst $38                                       ; $4988: $ff
    nop                                           ; $4989: $00
    pop af                                        ; $498a: $f1
    di                                            ; $498b: $f3
    inc l                                         ; $498c: $2c
    ld [hl], e                                    ; $498d: $73
    sub b                                         ; $498e: $90
    ccf                                           ; $498f: $3f
    rst $38                                       ; $4990: $ff
    rst $38                                       ; $4991: $ff
    ld [$fdfd], sp                                ; $4992: $08 $fd $fd
    jp c, $d9da                                   ; $4995: $da $da $d9

    add hl, bc                                    ; $4998: $09
    rlca                                          ; $4999: $07
    add a                                         ; $499a: $87
    cp d                                          ; $499b: $ba
    ld hl, $9ac7                                  ; $499c: $21 $c7 $9a
    ld [bc], a                                    ; $499f: $02
    ld bc, $ffff                                  ; $49a0: $01 $ff $ff
    db $db                                        ; $49a3: $db
    db $db                                        ; $49a4: $db
    jp hl                                         ; $49a5: $e9


    add hl, bc                                    ; $49a6: $09
    nop                                           ; $49a7: $00
    ld c, $9f                                     ; $49a8: $0e $9f
    and h                                         ; $49aa: $a4
    ld c, $55                                     ; $49ab: $0e $55
    xor [hl]                                      ; $49ad: $ae
    call nc, $113b                                ; $49ae: $d4 $3b $11
    ld e, b                                       ; $49b1: $58
    cp a                                          ; $49b2: $bf

jr_0a2_49b3:
    daa                                           ; $49b3: $27
    ret c                                         ; $49b4: $d8

    ld b, $ff                                     ; $49b5: $06 $ff
    rst $38                                       ; $49b7: $ff
    ld l, d                                       ; $49b8: $6a
    sub b                                         ; $49b9: $90
    inc d                                         ; $49ba: $14
    ld bc, $3fcf                                  ; $49bb: $01 $cf $3f
    xor c                                         ; $49be: $a9
    ld e, [hl]                                    ; $49bf: $5e
    dec bc                                        ; $49c0: $0b
    db $fc                                        ; $49c1: $fc
    cp h                                          ; $49c2: $bc
    jp c, Jump_000_1006                           ; $49c3: $da $06 $10

    xor l                                         ; $49c6: $ad
    rst $38                                       ; $49c7: $ff

jr_0a2_49c8:
    ld e, d                                       ; $49c8: $5a
    ldh [rTMA], a                                 ; $49c9: $e0 $06
    ld b, d                                       ; $49cb: $42
    rst $38                                       ; $49cc: $ff
    cp l                                          ; $49cd: $bd
    ld a, a                                       ; $49ce: $7f
    ld de, $f916                                  ; $49cf: $11 $16 $f9
    ld hl, $06ea                                  ; $49d2: $21 $ea $06
    ld l, e                                       ; $49d5: $6b
    rst $38                                       ; $49d6: $ff
    or l                                          ; $49d7: $b5
    ldh a, [rTMA]                                 ; $49d8: $f0 $06
    ld [de], a                                    ; $49da: $12
    ld b, b                                       ; $49db: $40
    rst $38                                       ; $49dc: $ff
    ld l, a                                       ; $49dd: $6f
    add b                                         ; $49de: $80
    ld d, l                                       ; $49df: $55
    nop                                           ; $49e0: $00
    rst $38                                       ; $49e1: $ff
    add b                                         ; $49e2: $80
    ld e, l                                       ; $49e3: $5d
    ret nz                                        ; $49e4: $c0

    dec h                                         ; $49e5: $25
    rst $38                                       ; $49e6: $ff
    rst $20                                       ; $49e7: $e7
    add b                                         ; $49e8: $80
    ld d, l                                       ; $49e9: $55
    ld hl, $80ff                                  ; $49ea: $21 $ff $80
    ld e, l                                       ; $49ed: $5d
    ret nz                                        ; $49ee: $c0

    ld e, c                                       ; $49ef: $59
    ld [bc], a                                    ; $49f0: $02
    adc b                                         ; $49f1: $88
    ldh [$4c], a                                  ; $49f2: $e0 $4c
    nop                                           ; $49f4: $00
    rst $38                                       ; $49f5: $ff
    di                                            ; $49f6: $f3
    ldh [rHDMA4], a                               ; $49f7: $e0 $54
    inc a                                         ; $49f9: $3c
    jr nz, jr_0a2_4a24                            ; $49fa: $20 $28

    ld a, [de]                                    ; $49fc: $1a
    inc [hl]                                      ; $49fd: $34
    inc l                                         ; $49fe: $2c
    jr nc, jr_0a2_4a05                            ; $49ff: $30 $04

    jr c, jr_0a2_49b3                             ; $4a01: $38 $b0

    ld b, $12                                     ; $4a03: $06 $12

jr_0a2_4a05:
    or b                                          ; $4a05: $b0
    ld c, [hl]                                    ; $4a06: $4e
    ld e, d                                       ; $4a07: $5a
    nop                                           ; $4a08: $00
    ld hl, $9669                                  ; $4a09: $21 $69 $96
    adc [hl]                                      ; $4a0c: $8e
    dec a                                         ; $4a0d: $3d
    or c                                          ; $4a0e: $b1
    ld a, [hl]                                    ; $4a0f: $7e
    add $46                                       ; $4a10: $c6 $46
    ld sp, hl                                     ; $4a12: $f9
    add b                                         ; $4a13: $80
    ld b, $fd                                     ; $4a14: $06 $fd
    ld d, l                                       ; $4a16: $55
    xor [hl]                                      ; $4a17: $ae
    ld d, [hl]                                    ; $4a18: $56
    add hl, bc                                    ; $4a19: $09
    ld [bc], a                                    ; $4a1a: $02
    ld c, b                                       ; $4a1b: $48
    jp c, $2544                                   ; $4a1c: $da $44 $25

    db $10                                        ; $4a1f: $10
    ld e, b                                       ; $4a20: $58
    xor a                                         ; $4a21: $af
    ld a, a                                       ; $4a22: $7f
    dec b                                         ; $4a23: $05

jr_0a2_4a24:
    ld l, d                                       ; $4a24: $6a
    dec b                                         ; $4a25: $05
    dec b                                         ; $4a26: $05
    rst $38                                       ; $4a27: $ff
    ld h, b                                       ; $4a28: $60
    dec hl                                        ; $4a29: $2b
    jp z, $0804                                   ; $4a2a: $ca $04 $08

    ld [$f0ec], sp                                ; $4a2d: $08 $ec $f0
    add sp, -$0c                                  ; $4a30: $e8 $f4
    xor [hl]                                      ; $4a32: $ae
    nop                                           ; $4a33: $00
    ldh a, [$ea]                                  ; $4a34: $f0 $ea
    db $f4                                        ; $4a36: $f4
    rst $28                                       ; $4a37: $ef
    ldh a, [$eb]                                  ; $4a38: $f0 $eb
    db $f4                                        ; $4a3a: $f4
    xor a                                         ; $4a3b: $af
    sbc $04                                       ; $4a3c: $de $04
    nop                                           ; $4a3e: $00
    ld a, $58                                     ; $4a3f: $3e $58
    nop                                           ; $4a41: $00
    jr z, @+$32                                   ; $4a42: $28 $30

    jr nc, jr_0a2_4a6e                            ; $4a44: $30 $28

    jr z, jr_0a2_4a70                             ; $4a46: $28 $28

    ld [$ad48], sp                                ; $4a48: $08 $48 $ad
    nop                                           ; $4a4b: $00
    ld a, [c]                                     ; $4a4c: $f2
    ld [$eff7], a                                 ; $4a4d: $ea $f7 $ef
    di                                            ; $4a50: $f3
    db $eb                                        ; $4a51: $eb
    push af                                       ; $4a52: $f5
    xor a                                         ; $4a53: $af
    db $10                                        ; $4a54: $10
    pop af                                        ; $4a55: $f1
    db $eb                                        ; $4a56: $eb
    db $f4                                        ; $4a57: $f4
    db $10                                        ; $4a58: $10
    ld c, h                                       ; $4a59: $4c
    ld a, c                                       ; $4a5a: $79
    add [hl]                                      ; $4a5b: $86
    xor [hl]                                      ; $4a5c: $ae
    ld d, c                                       ; $4a5d: $51
    ld [$a956], sp                                ; $4a5e: $08 $56 $a9
    sbc c                                         ; $4a61: $99
    ld h, $f0                                     ; $4a62: $26 $f0
    ld c, e                                       ; $4a64: $4b
    nop                                           ; $4a65: $00
    nop                                           ; $4a66: $00
    ld b, $00                                     ; $4a67: $06 $00
    ld [bc], a                                    ; $4a69: $02
    ld c, $06                                     ; $4a6a: $0e $06
    ld a, [de]                                    ; $4a6c: $1a
    ld a, [bc]                                    ; $4a6d: $0a

jr_0a2_4a6e:
    ld [hl-], a                                   ; $4a6e: $32
    ld [de], a                                    ; $4a6f: $12

jr_0a2_4a70:
    ld [hl+], a                                   ; $4a70: $22
    ret nz                                        ; $4a71: $c0

    ld bc, $f010                                  ; $4a72: $01 $10 $f0
    inc bc                                        ; $4a75: $03
    ld b, a                                       ; $4a76: $47
    adc $3c                                       ; $4a77: $ce $3c
    or e                                          ; $4a79: $b3
    ld e, [hl]                                    ; $4a7a: $5e
    ret                                           ; $4a7b: $c9


    nop                                           ; $4a7c: $00
    scf                                           ; $4a7d: $37
    ld [hl], l                                    ; $4a7e: $75
    adc d                                         ; $4a7f: $8a
    xor [hl]                                      ; $4a80: $ae
    ld d, c                                       ; $4a81: $51
    push af                                       ; $4a82: $f5
    ld a, [bc]                                    ; $4a83: $0a
    ld h, l                                       ; $4a84: $65
    inc b                                         ; $4a85: $04
    ld b, $87                                     ; $4a86: $06 $87
    jr nz, jr_0a2_4aa0                            ; $4a88: $20 $16

    dec c                                         ; $4a8a: $0d
    nop                                           ; $4a8b: $00
    rlca                                          ; $4a8c: $07
    call z, Call_000_00cd                         ; $4a8d: $cc $cd $00
    ld h, $b6                                     ; $4a90: $26 $b6
    ld bc, $14ab                                  ; $4a92: $01 $ab $14
    ld h, $22                                     ; $4a95: $26 $22
    ld l, $04                                     ; $4a97: $2e $04
    ld h, $3a                                     ; $4a99: $26 $3a
    ld a, [hl+]                                   ; $4a9b: $2a
    inc sp                                        ; $4a9c: $33
    inc sp                                        ; $4a9d: $33
    ld l, $08                                     ; $4a9e: $2e $08

jr_0a2_4aa0:
    inc hl                                        ; $4aa0: $23
    inc hl                                        ; $4aa1: $23
    jr nc, @+$26                                  ; $4aa2: $30 $24

    daa                                           ; $4aa4: $27
    rst $38                                       ; $4aa5: $ff
    ld [bc], a                                    ; $4aa6: $02
    ld [bc], a                                    ; $4aa7: $02
    inc bc                                        ; $4aa8: $03
    ld hl, sp-$08                                 ; $4aa9: $f8 $f8
    inc c                                         ; $4aab: $0c
    inc c                                         ; $4aac: $0c
    nop                                           ; $4aad: $00
    ld b, $06                                     ; $4aae: $06 $06
    add [hl]                                      ; $4ab0: $86
    add [hl]                                      ; $4ab1: $86
    cp h                                          ; $4ab2: $bc
    ld a, h                                       ; $4ab3: $7c
    ld a, [hl+]                                   ; $4ab4: $2a
    db $dd                                        ; $4ab5: $dd
    ld bc, $f6a9                                  ; $4ab6: $01 $a9 $f6
    adc $7d                                       ; $4ab9: $ce $7d
    cp e                                          ; $4abb: $bb
    ld [hl], b                                    ; $4abc: $70
    and $80                                       ; $4abd: $e6 $80
    dec b                                         ; $4abf: $05
    ld h, b                                       ; $4ac0: $60
    scf                                           ; $4ac1: $37
    add b                                         ; $4ac2: $80
    dec b                                         ; $4ac3: $05
    ld d, b                                       ; $4ac4: $50
    dec b                                         ; $4ac5: $05
    ld [de], a                                    ; $4ac6: $12
    ld d, $4d                                     ; $4ac7: $16 $4d
    ld d, l                                       ; $4ac9: $55
    ld a, [hl-]                                   ; $4aca: $3a
    ld [$f14e], sp                                ; $4acb: $08 $4e $f1
    scf                                           ; $4ace: $37
    add sp, $50                                   ; $4acf: $e8 $50
    dec b                                         ; $4ad1: $05
    and $4b                                       ; $4ad2: $e6 $4b
    cp h                                          ; $4ad4: $bc
    sub b                                         ; $4ad5: $90
    jr nz, jr_0a2_4b35                            ; $4ad6: $20 $5d

    sub l                                         ; $4ad8: $95
    ld a, d                                       ; $4ad9: $7a
    sub b                                         ; $4ada: $90
    ld b, $1e                                     ; $4adb: $06 $1e
    halt                                          ; $4add: $76
    cp e                                          ; $4ade: $bb
    sbc c                                         ; $4adf: $99
    ld bc, $d367                                  ; $4ae0: $01 $67 $d3
    ccf                                           ; $4ae3: $3f
    xor h                                         ; $4ae4: $ac
    ld e, h                                       ; $4ae5: $5c
    ld d, c                                       ; $4ae6: $51
    or h                                          ; $4ae7: $b4
    ld hl, sp+$28                                 ; $4ae8: $f8 $28
    nop                                           ; $4aea: $00
    di                                            ; $4aeb: $f3
    db $fc                                        ; $4aec: $fc
    ld sp, hl                                     ; $4aed: $f9
    and $ba                                       ; $4aee: $e6 $ba
    rst $20                                       ; $4af0: $e7
    ei                                            ; $4af1: $fb
    rst $20                                       ; $4af2: $e7
    and h                                         ; $4af3: $a4
    db $ec                                        ; $4af4: $ec
    dec a                                         ; $4af5: $3d
    ld d, l                                       ; $4af6: $55
    db $fc                                        ; $4af7: $fc
    dec b                                         ; $4af8: $05
    ld a, a                                       ; $4af9: $7f
    add b                                         ; $4afa: $80
    db $10                                        ; $4afb: $10
    ld e, b                                       ; $4afc: $58
    rst $38                                       ; $4afd: $ff
    nop                                           ; $4afe: $00
    call nc, Call_000_3910                        ; $4aff: $d4 $10 $39
    db $10                                        ; $4b02: $10
    jr @-$03                                      ; $4b03: $18 $fb

    inc [hl]                                      ; $4b05: $34
    nop                                           ; $4b06: $00
    cp e                                          ; $4b07: $bb
    jr c, jr_0a2_4b0a                             ; $4b08: $38 $00

jr_0a2_4b0a:
    ei                                            ; $4b0a: $fb
    rst $20                                       ; $4b0b: $e7
    nop                                           ; $4b0c: $00
    ld e, e                                       ; $4b0d: $5b
    rst $20                                       ; $4b0e: $e7
    dec sp                                        ; $4b0f: $3b
    rst $00                                       ; $4b10: $c7
    ei                                            ; $4b11: $fb
    rlca                                          ; $4b12: $07
    ld a, a                                       ; $4b13: $7f
    add b                                         ; $4b14: $80
    nop                                           ; $4b15: $00
    ld h, b                                       ; $4b16: $60
    adc a                                         ; $4b17: $8f
    ld c, a                                       ; $4b18: $4f
    sub b                                         ; $4b19: $90
    ld [hl], a                                    ; $4b1a: $77
    sbc b                                         ; $4b1b: $98
    ld b, b                                       ; $4b1c: $40
    sbc a                                         ; $4b1d: $9f
    inc bc                                        ; $4b1e: $03
    ld [hl], e                                    ; $4b1f: $73
    sbc h                                         ; $4b20: $9c
    ld b, e                                       ; $4b21: $43
    sbc h                                         ; $4b22: $9c
    ld [hl], e                                    ; $4b23: $73
    sbc h                                         ; $4b24: $9c
    and $0a                                       ; $4b25: $e6 $0a
    db $ec                                        ; $4b27: $ec
    ld a, [de]                                    ; $4b28: $1a
    add b                                         ; $4b29: $80
    ld b, a                                       ; $4b2a: $47
    ld e, $fb                                     ; $4b2b: $1e $fb
    rlca                                          ; $4b2d: $07
    dec de                                        ; $4b2e: $1b
    rst $00                                       ; $4b2f: $c7
    db $db                                        ; $4b30: $db
    daa                                           ; $4b31: $27
    sbc e                                         ; $4b32: $9b
    rra                                           ; $4b33: $1f
    ld h, a                                       ; $4b34: $67

jr_0a2_4b35:
    dec de                                        ; $4b35: $1b
    and a                                         ; $4b36: $a7
    ld [bc], a                                    ; $4b37: $02
    jr jr_0a2_4b5e                                ; $4b38: $18 $24

    ld [$4804], sp                                ; $4b3a: $08 $04 $48
    jr jr_0a2_4b67                                ; $4b3d: $18 $28

    jr nz, jr_0a2_4b69                            ; $4b3f: $20 $28

    sub h                                         ; $4b41: $94
    ret nc                                        ; $4b42: $d0

    rlca                                          ; $4b43: $07
    and h                                         ; $4b44: $a4
    dec hl                                        ; $4b45: $2b
    ret nc                                        ; $4b46: $d0

    daa                                           ; $4b47: $27
    or l                                          ; $4b48: $b5
    ret nc                                        ; $4b49: $d0

    rlca                                          ; $4b4a: $07
    add hl, hl                                    ; $4b4b: $29
    ld l, $00                                     ; $4b4c: $2e $00
    inc a                                         ; $4b4e: $3c
    ccf                                           ; $4b4f: $3f
    scf                                           ; $4b50: $37
    ccf                                           ; $4b51: $3f
    jr nz, jr_0a2_4b93                            ; $4b52: $20 $3f

    jr nc, jr_0a2_4b95                            ; $4b54: $30 $3f

    nop                                           ; $4b56: $00
    ld a, [hl+]                                   ; $4b57: $2a
    ccf                                           ; $4b58: $3f
    dec a                                         ; $4b59: $3d
    ccf                                           ; $4b5a: $3f
    daa                                           ; $4b5b: $27
    daa                                           ; $4b5c: $27
    ld d, h                                       ; $4b5d: $54

jr_0a2_4b5e:
    xor h                                         ; $4b5e: $ac
    nop                                           ; $4b5f: $00
    ld a, [hl+]                                   ; $4b60: $2a
    sub $82                                       ; $4b61: $d6 $82
    cp $c6                                        ; $4b63: $fe $c6
    cp $66                                        ; $4b65: $fe $66

jr_0a2_4b67:
    cp $02                                        ; $4b67: $fe $02

jr_0a2_4b69:
    ld l, d                                       ; $4b69: $6a
    ld a, [$faca]                                 ; $4b6a: $fa $ca $fa
    sbc d                                         ; $4b6d: $9a
    ld a, [$07c0]                                 ; $4b6e: $fa $c0 $07
    ld b, [hl]                                    ; $4b71: $46
    ld [bc], a                                    ; $4b72: $02
    db $eb                                        ; $4b73: $eb
    inc e                                         ; $4b74: $1c
    dec a                                         ; $4b75: $3d
    ld a, [c]                                     ; $4b76: $f2
    di                                            ; $4b77: $f3
    call z, Call_000_1fc0                         ; $4b78: $cc $c0 $1f
    ld hl, $2131                                  ; $4b7b: $21 $31 $21
    jr nz, @+$03                                  ; $4b7e: $20 $01

    jr nc, jr_0a2_4bbe                            ; $4b80: $30 $3c

    add hl, bc                                    ; $4b82: $09
    ld a, [c]                                     ; $4b83: $f2
    ld a, [c]                                     ; $4b84: $f2
    ld b, d                                       ; $4b85: $42
    ld bc, $4200                                  ; $4b86: $01 $00 $42
    ld b, b                                       ; $4b89: $40
    ld bc, $4d30                                  ; $4b8a: $01 $30 $4d
    ld a, [c]                                     ; $4b8d: $f2
    and $39                                       ; $4b8e: $e6 $39
    nop                                           ; $4b90: $00
    ld c, [hl]                                    ; $4b91: $4e
    ld d, h                                       ; $4b92: $54

jr_0a2_4b93:
    db $10                                        ; $4b93: $10
    xor e                                         ; $4b94: $ab

jr_0a2_4b95:
    and e                                         ; $4b95: $a3
    rst $18                                       ; $4b96: $df
    nop                                           ; $4b97: $00
    ld c, [hl]                                    ; $4b98: $4e
    and [hl]                                      ; $4b99: $a6
    ld c, b                                       ; $4b9a: $48
    reti                                          ; $4b9b: $d9


    nop                                           ; $4b9c: $00
    nop                                           ; $4b9d: $00
    sub b                                         ; $4b9e: $90
    ld [hl+], a                                   ; $4b9f: $22
    and $08                                       ; $4ba0: $e6 $08
    pop hl                                        ; $4ba2: $e1
    db $10                                        ; $4ba3: $10
    push bc                                       ; $4ba4: $c5
    inc hl                                        ; $4ba5: $23
    nop                                           ; $4ba6: $00
    sub a                                         ; $4ba7: $97

jr_0a2_4ba8:
    inc c                                         ; $4ba8: $0c
    ld e, d                                       ; $4ba9: $5a
    ld sp, $48f7                                  ; $4baa: $31 $f7 $48
    ld l, l                                       ; $4bad: $6d
    sub b                                         ; $4bae: $90
    inc bc                                        ; $4baf: $03
    sub $21                                       ; $4bb0: $d6 $21
    jp c, $a624                                   ; $4bb2: $da $24 $a6

    ld e, c                                       ; $4bb5: $59
    ld d, b                                       ; $4bb6: $50
    rra                                           ; $4bb7: $1f
    ret nz                                        ; $4bb8: $c0

    ld e, b                                       ; $4bb9: $58
    jr nz, @+$72                                  ; $4bba: $20 $70

    sbc l                                         ; $4bbc: $9d
    ccf                                           ; $4bbd: $3f

jr_0a2_4bbe:
    ld e, d                                       ; $4bbe: $5a
    nop                                           ; $4bbf: $00
    ld d, l                                       ; $4bc0: $55
    dec de                                        ; $4bc1: $1b
    and [hl]                                      ; $4bc2: $a6
    dec de                                        ; $4bc3: $1b
    ld b, h                                       ; $4bc4: $44
    and h                                         ; $4bc5: $a4
    ld [bc], a                                    ; $4bc6: $02
    ld [$a619], sp                                ; $4bc7: $08 $19 $a6
    ld a, [de]                                    ; $4bca: $1a
    ld a, [c]                                     ; $4bcb: $f2
    db $10                                        ; $4bcc: $10
    ld b, b                                       ; $4bcd: $40
    sbc a                                         ; $4bce: $9f
    inc bc                                        ; $4bcf: $03
    ld [hl], l                                    ; $4bd0: $75
    sbc a                                         ; $4bd1: $9f
    ld [hl], l                                    ; $4bd2: $75
    add b                                         ; $4bd3: $80
    ld h, b                                       ; $4bd4: $60
    sbc a                                         ; $4bd5: $9f
    inc h                                         ; $4bd6: $24
    add hl, hl                                    ; $4bd7: $29
    add $0c                                       ; $4bd8: $c6 $0c
    ld d, b                                       ; $4bda: $50
    ld d, l                                       ; $4bdb: $55
    inc h                                         ; $4bdc: $24
    ld b, c                                       ; $4bdd: $41
    dec de                                        ; $4bde: $1b
    ld c, b                                       ; $4bdf: $48
    ld bc, $077b                                  ; $4be0: $01 $7b $07
    dec de                                        ; $4be3: $1b
    rst $20                                       ; $4be4: $e7
    or d                                          ; $4be5: $b2
    inc h                                         ; $4be6: $24
    ld bc, $3466                                  ; $4be7: $01 $66 $34
    jr z, jr_0a2_4c00                             ; $4bea: $28 $14

    add hl, sp                                    ; $4bec: $39
    ld a, [de]                                    ; $4bed: $1a
    and [hl]                                      ; $4bee: $a6
    ld b, b                                       ; $4bef: $40
    ld [$0055], sp                                ; $4bf0: $08 $55 $00
    add b                                         ; $4bf3: $80
    ld a, a                                       ; $4bf4: $7f
    add b                                         ; $4bf5: $80

jr_0a2_4bf6:
    ld a, e                                       ; $4bf6: $7b
    add a                                         ; $4bf7: $87
    ld l, h                                       ; $4bf8: $6c
    sbc a                                         ; $4bf9: $9f
    ld d, b                                       ; $4bfa: $50
    dec de                                        ; $4bfb: $1b
    cp d                                          ; $4bfc: $ba
    ldh [$e0], a                                  ; $4bfd: $e0 $e0
    ld b, b                                       ; $4bff: $40

jr_0a2_4c00:
    jr nc, jr_0a2_4ba8                            ; $4c00: $30 $a6

    rrca                                          ; $4c02: $0f
    xor d                                         ; $4c03: $aa
    dec e                                         ; $4c04: $1d
    dec c                                         ; $4c05: $0d
    ld d, b                                       ; $4c06: $50
    ld [$0118], sp                                ; $4c07: $08 $18 $01
    cp $fe                                        ; $4c0a: $fe $fe
    and [hl]                                      ; $4c0c: $a6
    rrca                                          ; $4c0d: $0f
    stop                                          ; $4c0e: $10 $00

jr_0a2_4c10:
    jr jr_0a2_4bf6                                ; $4c10: $18 $e4

    ld e, b                                       ; $4c12: $58
    ld [$78e4], sp                                ; $4c13: $08 $e4 $78
    inc b                                         ; $4c16: $04
    ld hl, sp+$02                                 ; $4c17: $f8 $02
    nop                                           ; $4c19: $00
    cp b                                          ; $4c1a: $b8
    call nz, SerialTransferCompleteInterrupt      ; $4c1b: $c4 $58 $00
    db $e4                                        ; $4c1e: $e4
    inc a                                         ; $4c1f: $3c
    inc a                                         ; $4c20: $3c
    add b                                         ; $4c21: $80
    rst $38                                       ; $4c22: $ff
    ccf                                           ; $4c23: $3f
    ret nz                                        ; $4c24: $c0

    cp a                                          ; $4c25: $bf
    nop                                           ; $4c26: $00
    ret nz                                        ; $4c27: $c0

    ld a, [hl-]                                   ; $4c28: $3a
    push bc                                       ; $4c29: $c5
    or l                                          ; $4c2a: $b5
    jp z, $c43b                                   ; $4c2b: $ca $3b $c4

    or a                                          ; $4c2e: $b7
    db $10                                        ; $4c2f: $10
    ret z                                         ; $4c30: $c8

    ld a, [hl-]                                   ; $4c31: $3a
    push bc                                       ; $4c32: $c5
    sbc [hl]                                      ; $4c33: $9e
    add hl, de                                    ; $4c34: $19
    xor d                                         ; $4c35: $aa
    ld d, l                                       ; $4c36: $55
    ld d, l                                       ; $4c37: $55
    xor d                                         ; $4c38: $aa
    sbc b                                         ; $4c39: $98
    ld d, [hl]                                    ; $4c3a: $56
    dec c                                         ; $4c3b: $0d
    rst $38                                       ; $4c3c: $ff
    nop                                           ; $4c3d: $00
    inc d                                         ; $4c3e: $14
    ld [$4804], sp                                ; $4c3f: $08 $04 $48
    nop                                           ; $4c42: $00
    nop                                           ; $4c43: $00
    inc d                                         ; $4c44: $14
    ld bc, $2608                                  ; $4c45: $01 $08 $26
    inc d                                         ; $4c48: $14
    jr nc, jr_0a2_4c5d                            ; $4c49: $30 $12

    ld [de], a                                    ; $4c4b: $12
    ld [hl-], a                                   ; $4c4c: $32
    or b                                          ; $4c4d: $b0
    ld a, [de]                                    ; $4c4e: $1a
    add b                                         ; $4c4f: $80
    sub b                                         ; $4c50: $90
    ld bc, $eea7                                  ; $4c51: $01 $a7 $ee
    jr jr_0a2_4c10                                ; $4c54: $18 $ba

    ld h, c                                       ; $4c56: $61
    ld sp, hl                                     ; $4c57: $f9
    ld b, $00                                     ; $4c58: $06 $00
    sub $29                                       ; $4c5a: $d6 $29
    cp l                                          ; $4c5c: $bd

jr_0a2_4c5d:
    ld b, d                                       ; $4c5d: $42
    rst $30                                       ; $4c5e: $f7
    ld [$cfb0], sp                                ; $4c5f: $08 $b0 $cf
    nop                                           ; $4c62: $00
    scf                                           ; $4c63: $37
    ret z                                         ; $4c64: $c8

    cp a                                          ; $4c65: $bf
    ret z                                         ; $4c66: $c8

    scf                                           ; $4c67: $37
    ret z                                         ; $4c68: $c8

    cp [hl]                                       ; $4c69: $be
    ret                                           ; $4c6a: $c9


    sub b                                         ; $4c6b: $90
    ld [$3f08], sp                                ; $4c6c: $08 $08 $3f
    ret z                                         ; $4c6f: $c8

    inc h                                         ; $4c70: $24
    ld a, [bc]                                    ; $4c71: $0a
    db $dd                                        ; $4c72: $dd
    ld [hl+], a                                   ; $4c73: $22
    ld e, e                                       ; $4c74: $5b
    and h                                         ; $4c75: $a4
    dec c                                         ; $4c76: $0d
    rst $38                                       ; $4c77: $ff
    nop                                           ; $4c78: $00
    ld e, l                                       ; $4c79: $5d
    and d                                         ; $4c7a: $a2
    call c, $c00c                                 ; $4c7b: $dc $0c $c0
    ld a, [de]                                    ; $4c7e: $1a
    ld [hl-], a                                   ; $4c7f: $32
    ld a, $10                                     ; $4c80: $3e $10
    ret nz                                        ; $4c82: $c0

    ret nz                                        ; $4c83: $c0

    ld a, [hl-]                                   ; $4c84: $3a
    add $1a                                       ; $4c85: $c6 $1a
    add b                                         ; $4c87: $80
    add b                                         ; $4c88: $80
    db $10                                        ; $4c89: $10
    ldh a, [$bf]                                  ; $4c8a: $f0 $bf
    rst $08                                       ; $4c8c: $cf
    jr z, jr_0a2_4cc8                             ; $4c8d: $28 $39

    rst $00                                       ; $4c8f: $c7
    ld [hl], h                                    ; $4c90: $74
    ld c, b                                       ; $4c91: $48
    rst $38                                       ; $4c92: $ff
    and [hl]                                      ; $4c93: $a6
    ld b, $3f                                     ; $4c94: $06 $3f
    cp $f9                                        ; $4c96: $fe $f9
    ld c, b                                       ; $4c98: $48
    rlca                                          ; $4c99: $07
    ld [hl], $2d                                  ; $4c9a: $36 $2d
    ld bc, $8eff                                  ; $4c9c: $01 $ff $8e
    dec b                                         ; $4c9f: $05
    ld bc, $51ae                                  ; $4ca0: $01 $ae $51
    nop                                           ; $4ca3: $00
    ld d, a                                       ; $4ca4: $57

jr_0a2_4ca5:
    xor c                                         ; $4ca5: $a9
    xor $11                                       ; $4ca6: $ee $11
    ld [hl], a                                    ; $4ca8: $77
    adc c                                         ; $4ca9: $89
    xor [hl]                                      ; $4caa: $ae
    ld d, c                                       ; $4cab: $51
    jr nc, jr_0a2_4ca5                            ; $4cac: $30 $f7

    add hl, bc                                    ; $4cae: $09
    inc b                                         ; $4caf: $04
    ld e, b                                       ; $4cb0: $58
    adc $00                                       ; $4cb1: $ce $00
    ld b, b                                       ; $4cb3: $40
    cp a                                          ; $4cb4: $bf
    ld b, b                                       ; $4cb5: $40
    add a                                         ; $4cb6: $87
    ld [de], a                                    ; $4cb7: $12
    ld a, b                                       ; $4cb8: $78
    or a                                          ; $4cb9: $b7
    ld c, b                                       ; $4cba: $48
    ld [bc], a                                    ; $4cbb: $02
    ld [$50af], sp                                ; $4cbc: $08 $af $50
    cp d                                          ; $4cbf: $ba
    dec c                                         ; $4cc0: $0d
    db $fc                                        ; $4cc1: $fc
    inc b                                         ; $4cc2: $04
    inc bc                                        ; $4cc3: $03
    db $fc                                        ; $4cc4: $fc
    ld bc, $02fe                                  ; $4cc5: $01 $fe $02

jr_0a2_4cc8:
    ld [bc], a                                    ; $4cc8: $02
    nop                                           ; $4cc9: $00
    inc bc                                        ; $4cca: $03
    cp $00                                        ; $4ccb: $fe $00
    inc bc                                        ; $4ccd: $03
    rra                                           ; $4cce: $1f
    ldh [$63], a                                  ; $4ccf: $e0 $63
    db $fc                                        ; $4cd1: $fc
    or c                                          ; $4cd2: $b1
    ld a, d                                       ; $4cd3: $7a
    ld b, l                                       ; $4cd4: $45
    nop                                           ; $4cd5: $00
    or d                                          ; $4cd6: $b2
    inc bc                                        ; $4cd7: $03
    xor $17                                       ; $4cd8: $ee $17
    inc c                                         ; $4cda: $0c
    rla                                           ; $4cdb: $17
    ld [$0017], sp                                ; $4cdc: $08 $17 $00
    ld [$d0ef], sp                                ; $4cdf: $08 $ef $d0
    cpl                                           ; $4ce2: $2f
    ret nc                                        ; $4ce3: $d0

    rst $18                                       ; $4ce4: $df
    jr nz, @+$01                                  ; $4ce5: $20 $ff

    nop                                           ; $4ce7: $00
    ldh [$9f], a                                  ; $4ce8: $e0 $9f
    ld h, b                                       ; $4cea: $60
    rst $38                                       ; $4ceb: $ff
    nop                                           ; $4cec: $00
    jp $ad3c                                      ; $4ced: $c3 $3c $ad


    inc l                                         ; $4cf0: $2c
    ld e, [hl]                                    ; $4cf1: $5e
    ld a, [$063e]                                 ; $4cf2: $fa $3e $06
    db $fc                                        ; $4cf5: $fc
    ld a, [c]                                     ; $4cf6: $f2
    dec d                                         ; $4cf7: $15
    ldh a, [rNR33]                                ; $4cf8: $f0 $1d
    rlca                                          ; $4cfa: $07
    adc b                                         ; $4cfb: $88
    ld [bc], a                                    ; $4cfc: $02
    rrca                                          ; $4cfd: $0f
    sub b                                         ; $4cfe: $90
    rst $28                                       ; $4cff: $ef
    ldh a, [$1f]                                  ; $4d00: $f0 $1f
    ldh [$b6], a                                  ; $4d02: $e0 $b6
    dec l                                         ; $4d04: $2d
    jr nz, jr_0a2_4d07                            ; $4d05: $20 $00

jr_0a2_4d07:
    daa                                           ; $4d07: $27
    jr z, jr_0a2_4d39                             ; $4d08: $28 $2f

    jr nc, jr_0a2_4d4b                            ; $4d0a: $30 $3f

    jr z, jr_0a2_4d45                             ; $4d0c: $28 $37

    dec [hl]                                      ; $4d0e: $35
    ld [de], a                                    ; $4d0f: $12
    ld a, [hl-]                                   ; $4d10: $3a
    ld a, [hl+]                                   ; $4d11: $2a
    dec a                                         ; $4d12: $3d
    ld [hl], b                                    ; $4d13: $70
    ld a, [bc]                                    ; $4d14: $0a
    inc b                                         ; $4d15: $04
    db $fc                                        ; $4d16: $fc
    ld e, c                                       ; $4d17: $59
    ld [$8106], sp                                ; $4d18: $08 $06 $81
    ld [bc], a                                    ; $4d1b: $02
    nop                                           ; $4d1c: $00
    xor d                                         ; $4d1d: $aa
    ld e, d                                       ; $4d1e: $5a
    ld a, [de]                                    ; $4d1f: $1a
    ld a, [$f2f2]                                 ; $4d20: $fa $f2 $f2
    ld h, b                                       ; $4d23: $60
    ld a, [hl+]                                   ; $4d24: $2a
    ld h, e                                       ; $4d25: $63
    ld h, b                                       ; $4d26: $60
    ld bc, $9c00                                  ; $4d27: $01 $00 $9c
    dec bc                                        ; $4d2a: $0b
    jp nz, Jump_0a2_43c2                          ; $4d2b: $c2 $c2 $43

    ld bc, $6000                                  ; $4d2e: $01 $00 $60
    ld a, [de]                                    ; $4d31: $1a
    ld a, b                                       ; $4d32: $78
    ret nz                                        ; $4d33: $c0

    ld bc, $4600                                  ; $4d34: $01 $00 $46
    ld c, $c2                                     ; $4d37: $0e $c2

jr_0a2_4d39:
    ld [$0802], sp                                ; $4d39: $08 $02 $08
    db $fd                                        ; $4d3c: $fd
    inc bc                                        ; $4d3d: $03
    ld hl, sp+$00                                 ; $4d3e: $f8 $00
    rlca                                          ; $4d40: $07
    ld c, e                                       ; $4d41: $4b
    add h                                         ; $4d42: $84
    dec [hl]                                      ; $4d43: $35
    ld [bc], a                                    ; $4d44: $02

jr_0a2_4d45:
    add d                                         ; $4d45: $82
    inc sp                                        ; $4d46: $33
    dec bc                                        ; $4d47: $0b
    nop                                           ; $4d48: $00
    ld b, c                                       ; $4d49: $41
    or c                                          ; $4d4a: $b1

jr_0a2_4d4b:
    ld [$13c7], sp                                ; $4d4b: $08 $c7 $13
    sbc l                                         ; $4d4e: $9d
    inc c                                         ; $4d4f: $0c
    ld a, d                                       ; $4d50: $7a
    ld [hl-], a                                   ; $4d51: $32
    jr nc, @-$06                                  ; $4d52: $30 $f8

    ld a, [hl]                                    ; $4d54: $7e
    nop                                           ; $4d55: $00
    ld [hl+], a                                   ; $4d56: $22
    ld a, $aa                                     ; $4d57: $3e $aa
    ld d, l                                       ; $4d59: $55
    sub h                                         ; $4d5a: $94
    add hl, bc                                    ; $4d5b: $09
    or l                                          ; $4d5c: $b5
    ld e, [hl]                                    ; $4d5d: $5e
    jp z, Jump_000_09a4                           ; $4d5e: $ca $a4 $09

    nop                                           ; $4d61: $00
    add d                                         ; $4d62: $82
    rlca                                          ; $4d63: $07
    ldh a, [$0e]                                  ; $4d64: $f0 $0e
    sbc h                                         ; $4d66: $9c
    add hl, de                                    ; $4d67: $19
    ret c                                         ; $4d68: $d8

    inc e                                         ; $4d69: $1c
    rst $38                                       ; $4d6a: $ff
    nop                                           ; $4d6b: $00
    rst $38                                       ; $4d6c: $ff
    sub h                                         ; $4d6d: $94
    rst $28                                       ; $4d6e: $ef
    add b                                         ; $4d6f: $80
    db $fd                                        ; $4d70: $fd
    ld e, e                                       ; $4d71: $5b
    jp nz, $1381                                  ; $4d72: $c2 $81 $13

    ld h, d                                       ; $4d75: $62
    db $e3                                        ; $4d76: $e3
    inc h                                         ; $4d77: $24
    ld [bc], a                                    ; $4d78: $02
    ld [$6281], sp                                ; $4d79: $08 $81 $62
    ld h, b                                       ; $4d7c: $60
    jr jr_0a2_4d81                                ; $4d7d: $18 $02

    jr c, @-$5e                                   ; $4d7f: $38 $a0

jr_0a2_4d81:
    ld [hl-], a                                   ; $4d81: $32
    ld bc, $0280                                  ; $4d82: $01 $80 $02
    jr z, jr_0a2_4e06                             ; $4d85: $28 $7f

    add b                                         ; $4d87: $80
    xor d                                         ; $4d88: $aa
    rst $38                                       ; $4d89: $ff
    ld c, c                                       ; $4d8a: $49
    ld [bc], a                                    ; $4d8b: $02
    ld [c], a                                     ; $4d8c: $e2
    add h                                         ; $4d8d: $84
    pop bc                                        ; $4d8e: $c1
    ld c, $80                                     ; $4d8f: $0e $80
    inc b                                         ; $4d91: $04
    inc d                                         ; $4d92: $14
    nop                                           ; $4d93: $00
    nop                                           ; $4d94: $00
    dec b                                         ; $4d95: $05
    add b                                         ; $4d96: $80
    nop                                           ; $4d97: $00
    pop de                                        ; $4d98: $d1
    add c                                         ; $4d99: $81
    db $eb                                        ; $4d9a: $eb
    call c, Call_0a2_7f0e                         ; $4d9b: $dc $0e $7f
    ld b, b                                       ; $4d9e: $40
    ld [bc], a                                    ; $4d9f: $02
    add b                                         ; $4da0: $80
    xor d                                         ; $4da1: $aa
    ld b, $80                                     ; $4da2: $06 $80
    ld hl, sp-$79                                 ; $4da4: $f8 $87
    ei                                            ; $4da6: $fb
    inc b                                         ; $4da7: $04
    ld bc, $80fe                                  ; $4da8: $01 $fe $80
    adc d                                         ; $4dab: $8a
    ld e, $7f                                     ; $4dac: $1e $7f
    add b                                         ; $4dae: $80
    ld e, l                                       ; $4daf: $5d
    and d                                         ; $4db0: $a2
    ld l, [hl]                                    ; $4db1: $6e
    sub c                                         ; $4db2: $91
    ld e, l                                       ; $4db3: $5d
    ld b, b                                       ; $4db4: $40
    and d                                         ; $4db5: $a2
    ld h, b                                       ; $4db6: $60
    add hl, de                                    ; $4db7: $19
    ld [bc], a                                    ; $4db8: $02
    db $fd                                        ; $4db9: $fd
    ei                                            ; $4dba: $fb
    dec b                                         ; $4dbb: $05
    sbc $25                                       ; $4dbc: $de $25
    nop                                           ; $4dbe: $00
    db $eb                                        ; $4dbf: $eb
    dec d                                         ; $4dc0: $15
    cp [hl]                                       ; $4dc1: $be
    ld b, l                                       ; $4dc2: $45
    ld b, d                                       ; $4dc3: $42
    rst $38                                       ; $4dc4: $ff
    dec a                                         ; $4dc5: $3d
    cp $20                                        ; $4dc6: $fe $20

jr_0a2_4dc8:
    rrca                                          ; $4dc8: $0f
    ldh a, [$a0]                                  ; $4dc9: $f0 $a0
    jr c, jr_0a2_4dc8                             ; $4dcb: $38 $fb

jr_0a2_4dcd:
    inc b                                         ; $4dcd: $04
    ei                                            ; $4dce: $fb
    inc b                                         ; $4dcf: $04
    db $fd                                        ; $4dd0: $fd
    ld h, b                                       ; $4dd1: $60
    ld [bc], a                                    ; $4dd2: $02
    ld [bc], a                                    ; $4dd3: $02
    ld [$0998], sp                                ; $4dd4: $08 $98 $09
    xor d                                         ; $4dd7: $aa
    ld d, l                                       ; $4dd8: $55
    ld a, l                                       ; $4dd9: $7d
    add d                                         ; $4dda: $82
    ld l, a                                       ; $4ddb: $6f
    ld h, b                                       ; $4ddc: $60
    sub b                                         ; $4ddd: $90
    or $06                                        ; $4dde: $f6 $06
    inc e                                         ; $4de0: $1c
    inc c                                         ; $4de1: $0c
    rra                                           ; $4de2: $1f
    rst $20                                       ; $4de3: $e7
    ld hl, sp+$2a                                 ; $4de4: $f8 $2a
    push de                                       ; $4de6: $d5
    nop                                           ; $4de7: $00
    db $db                                        ; $4de8: $db
    dec h                                         ; $4de9: $25
    sbc $25                                       ; $4dea: $de $25
    rst $38                                       ; $4dec: $ff
    dec b                                         ; $4ded: $05
    cp $fd                                        ; $4dee: $fe $fd
    add hl, bc                                    ; $4df0: $09
    rst $20                                       ; $4df1: $e7
    ld sp, hl                                     ; $4df2: $f9
    ld l, $d1                                     ; $4df3: $2e $d1
    xor h                                         ; $4df5: $ac
    add hl, hl                                    ; $4df6: $29
    ld d, a                                       ; $4df7: $57
    xor c                                         ; $4df8: $a9
    call nz, $4009                                ; $4df9: $c4 $09 $40
    nop                                           ; $4dfc: $00
    ret z                                         ; $4dfd: $c8

    ld b, $ff                                     ; $4dfe: $06 $ff
    rst $38                                       ; $4e00: $ff
    ld [hl-], a                                   ; $4e01: $32
    ld c, l                                       ; $4e02: $4d
    adc e                                         ; $4e03: $8b
    ld d, a                                       ; $4e04: $57
    nop                                           ; $4e05: $00

jr_0a2_4e06:
    rst $28                                       ; $4e06: $ef
    inc e                                         ; $4e07: $1c
    ld a, [hl-]                                   ; $4e08: $3a
    pop af                                        ; $4e09: $f1
    add sp, -$3a                                  ; $4e0a: $e8 $c6
    push hl                                       ; $4e0c: $e5
    jr jr_0a2_4e17                                ; $4e0d: $18 $08

    ld d, a                                       ; $4e0f: $57
    jr nz, jr_0a2_4dcd                            ; $4e10: $20 $bb

    ld b, h                                       ; $4e12: $44
    jr nc, jr_0a2_4e62                            ; $4e13: $30 $4d

    ld l, l                                       ; $4e15: $6d
    sbc [hl]                                      ; $4e16: $9e

jr_0a2_4e17:
    xor [hl]                                      ; $4e17: $ae
    nop                                           ; $4e18: $00
    ld [hl], e                                    ; $4e19: $73
    set 1, h                                      ; $4e1a: $cb $cc
    scf                                           ; $4e1c: $37
    inc b                                         ; $4e1d: $04
    add c                                         ; $4e1e: $81
    ld [hl-], a                                   ; $4e1f: $32
    ld a, [bc]                                    ; $4e20: $0a
    add b                                         ; $4e21: $80
    jr nz, @+$0b                                  ; $4e22: $20 $09

    db $10                                        ; $4e24: $10
    sub l                                         ; $4e25: $95
    ld [$007b], sp                                ; $4e26: $08 $7b $00
    rst $30                                       ; $4e29: $f7
    add hl, bc                                    ; $4e2a: $09
    nop                                           ; $4e2b: $00
    call $aa32                                    ; $4e2c: $cd $32 $aa
    ld b, b                                       ; $4e2f: $40
    push de                                       ; $4e30: $d5
    ld a, [hl+]                                   ; $4e31: $2a
    xor d                                         ; $4e32: $aa
    ld d, c                                       ; $4e33: $51
    nop                                           ; $4e34: $00
    ld e, e                                       ; $4e35: $5b
    add a                                         ; $4e36: $87
    xor l                                         ; $4e37: $ad
    ld e, $a2                                     ; $4e38: $1e $a2
    ld a, l                                       ; $4e3a: $7d
    pop bc                                        ; $4e3b: $c1
    ld a, a                                       ; $4e3c: $7f
    nop                                           ; $4e3d: $00
    ld e, h                                       ; $4e3e: $5c
    cp e                                          ; $4e3f: $bb
    sub d                                         ; $4e40: $92
    ld l, l                                       ; $4e41: $6d
    push bc                                       ; $4e42: $c5
    ccf                                           ; $4e43: $3f
    xor b                                         ; $4e44: $a8
    ld e, a                                       ; $4e45: $5f
    nop                                           ; $4e46: $00
    ld d, e                                       ; $4e47: $53
    cp a                                          ; $4e48: $bf
    adc a                                         ; $4e49: $8f
    ld a, h                                       ; $4e4a: $7c
    ld e, l                                       ; $4e4b: $5d
    or b                                          ; $4e4c: $b0
    rst $38                                       ; $4e4d: $ff
    ret nz                                        ; $4e4e: $c0

    db $10                                        ; $4e4f: $10
    rst $20                                       ; $4e50: $e7
    jr @+$60                                      ; $4e51: $18 $5e

    ld h, b                                       ; $4e53: $60
    ld e, $26                                     ; $4e54: $1e $26
    xor c                                         ; $4e56: $a9
    ld e, h                                       ; $4e57: $5c
    scf                                           ; $4e58: $37
    ld b, b                                       ; $4e59: $40
    ldh a, [$60]                                  ; $4e5a: $f0 $60
    ld c, d                                       ; $4e5c: $4a
    nop                                           ; $4e5d: $00
    rlca                                          ; $4e5e: $07
    rlca                                          ; $4e5f: $07
    jr @-$33                                      ; $4e60: $18 $cb

jr_0a2_4e62:
    ret nz                                        ; $4e62: $c0

    nop                                           ; $4e63: $00
    rlca                                          ; $4e64: $07
    jr nc, jr_0a2_4e90                            ; $4e65: $30 $29

    ld b, h                                       ; $4e67: $44
    ld d, $08                                     ; $4e68: $16 $08
    xor e                                         ; $4e6a: $ab
    nop                                           ; $4e6b: $00
    nop                                           ; $4e6c: $00
    push bc                                       ; $4e6d: $c5
    add d                                         ; $4e6e: $82
    rst $30                                       ; $4e6f: $f7
    ld c, h                                       ; $4e70: $4c
    or l                                          ; $4e71: $b5
    ld a, d                                       ; $4e72: $7a
    dec e                                         ; $4e73: $1d
    ld [hl+], a                                   ; $4e74: $22
    nop                                           ; $4e75: $00
    ld a, [hl-]                                   ; $4e76: $3a
    ld b, l                                       ; $4e77: $45
    dec [hl]                                      ; $4e78: $35
    ld c, e                                       ; $4e79: $4b
    ld e, e                                       ; $4e7a: $5b
    ld h, a                                       ; $4e7b: $67
    ld h, $3e                                     ; $4e7c: $26 $3e
    ld hl, $1c1c                                  ; $4e7e: $21 $1c $1c
    ld c, h                                       ; $4e81: $4c
    dec c                                         ; $4e82: $0d
    rst $00                                       ; $4e83: $c7
    db $fc                                        ; $4e84: $fc
    and $3b                                       ; $4e85: $e6 $3b
    nop                                           ; $4e87: $00
    ld c, h                                       ; $4e88: $4c
    ld [$aa55], sp                                ; $4e89: $08 $55 $aa
    xor d                                         ; $4e8c: $aa
    rst $30                                       ; $4e8d: $f7
    nop                                           ; $4e8e: $00
    ld c, h                                       ; $4e8f: $4c

jr_0a2_4e90:
    ld a, a                                       ; $4e90: $7f
    ld a, a                                       ; $4e91: $7f
    ld e, a                                       ; $4e92: $5f
    nop                                           ; $4e93: $00
    ld a, a                                       ; $4e94: $7f
    ld l, a                                       ; $4e95: $6f
    ld a, a                                       ; $4e96: $7f
    ld d, l                                       ; $4e97: $55
    ld a, a                                       ; $4e98: $7f
    ld b, c                                       ; $4e99: $41
    ld a, a                                       ; $4e9a: $7f
    add e                                         ; $4e9b: $83
    nop                                           ; $4e9c: $00
    rst $38                                       ; $4e9d: $ff
    ld d, a                                       ; $4e9e: $57
    xor a                                         ; $4e9f: $af
    sbc a                                         ; $4ea0: $9f
    ld a, a                                       ; $4ea1: $7f
    rst $38                                       ; $4ea2: $ff
    nop                                           ; $4ea3: $00
    db $fd                                        ; $4ea4: $fd
    nop                                           ; $4ea5: $00
    ld [bc], a                                    ; $4ea6: $02
    or a                                          ; $4ea7: $b7
    ld c, h                                       ; $4ea8: $4c
    call c, Call_0a2_7331                         ; $4ea9: $dc $31 $73
    adc h                                         ; $4eac: $8c
    and h                                         ; $4ead: $a4
    jr nz, jr_0a2_4ec2                            ; $4eae: $20 $12

    jp z, Jump_000_0680                           ; $4eb0: $ca $80 $06

    ld [hl], b                                    ; $4eb3: $70

jr_0a2_4eb4:
    ldh a, [$c0]                                  ; $4eb4: $f0 $c0
    ret nz                                        ; $4eb6: $c0

    add b                                         ; $4eb7: $80
    ld b, b                                       ; $4eb8: $40
    add b                                         ; $4eb9: $80
    sub $3a                                       ; $4eba: $d6 $3a
    ld e, e                                       ; $4ebc: $5b

jr_0a2_4ebd:
    jr nz, @+$6b                                  ; $4ebd: $20 $69

    sub [hl]                                      ; $4ebf: $96
    add [hl]                                      ; $4ec0: $86
    dec a                                         ; $4ec1: $3d

jr_0a2_4ec2:
    nop                                           ; $4ec2: $00
    or c                                          ; $4ec3: $b1
    ld e, [hl]                                    ; $4ec4: $5e
    rst $20                                       ; $4ec5: $e7
    jr @+$5d                                      ; $4ec6: $18 $5b

    or h                                          ; $4ec8: $b4
    and d                                         ; $4ec9: $a2
    ld a, l                                       ; $4eca: $7d
    nop                                           ; $4ecb: $00
    ld d, l                                       ; $4ecc: $55
    xor [hl]                                      ; $4ecd: $ae
    rst $28                                       ; $4ece: $ef
    db $10                                        ; $4ecf: $10
    jp c, $ac24                                   ; $4ed0: $da $24 $ac

    ld d, e                                       ; $4ed3: $53
    nop                                           ; $4ed4: $00
    sub d                                         ; $4ed5: $92
    inc h                                         ; $4ed6: $24
    ld [hl], $c9                                  ; $4ed7: $36 $c9
    xor e                                         ; $4ed9: $ab
    rla                                           ; $4eda: $17
    ld c, a                                       ; $4edb: $4f
    cp h                                          ; $4edc: $bc
    nop                                           ; $4edd: $00
    or l                                          ; $4ede: $b5
    ld a, d                                       ; $4edf: $7a
    rst $10                                       ; $4ee0: $d7
    jr nz, jr_0a2_4ebd                            ; $4ee1: $20 $da

    dec b                                         ; $4ee3: $05
    rst $28                                       ; $4ee4: $ef
    inc e                                         ; $4ee5: $1c
    nop                                           ; $4ee6: $00
    cp e                                          ; $4ee7: $bb

jr_0a2_4ee8:
    ld [hl], b                                    ; $4ee8: $70
    push af                                       ; $4ee9: $f5
    ret z                                         ; $4eea: $c8

    ld [$2b01], a                                 ; $4eeb: $ea $01 $2b
    call nc, $b500                                ; $4eee: $d4 $00 $b5
    ld [$c837], sp                                ; $4ef1: $08 $37 $c8
    sub l                                         ; $4ef4: $95
    ld h, b                                       ; $4ef5: $60
    ld sp, hl                                     ; $4ef6: $f9
    ld b, $00                                     ; $4ef7: $06 $00
    ld c, l                                       ; $4ef9: $4d
    sub b                                         ; $4efa: $90
    or [hl]                                       ; $4efb: $b6
    add hl, bc                                    ; $4efc: $09
    adc e                                         ; $4efd: $8b
    ld b, a                                       ; $4efe: $47
    ld l, [hl]                                    ; $4eff: $6e
    sbc h                                         ; $4f00: $9c
    jr nz, jr_0a2_4eb4                            ; $4f01: $20 $b1

    ld [hl], b                                    ; $4f03: $70
    ret nc                                        ; $4f04: $d0

    dec c                                         ; $4f05: $0d
    call z, $b97d                                 ; $4f06: $cc $7d $b9
    ld [hl], b                                    ; $4f09: $70
    db $e4                                        ; $4f0a: $e4
    and b                                         ; $4f0b: $a0
    ret nc                                        ; $4f0c: $d0

    dec b                                         ; $4f0d: $05
    ld [hl-], a                                   ; $4f0e: $32
    ret nc                                        ; $4f0f: $d0

    dec b                                         ; $4f10: $05
    xor d                                         ; $4f11: $aa
    ld b, l                                       ; $4f12: $45
    push hl                                       ; $4f13: $e5
    jr jr_0a2_4ee8                                ; $4f14: $18 $d2

    and b                                         ; $4f16: $a0
    ld b, b                                       ; $4f17: $40
    rla                                           ; $4f18: $17
    db $db                                        ; $4f19: $db
    ld b, b                                       ; $4f1a: $40
    rlca                                          ; $4f1b: $07
    ld [hl], b                                    ; $4f1c: $70
    or d                                          ; $4f1d: $b2
    jp hl                                         ; $4f1e: $e9


    nop                                           ; $4f1f: $00
    add h                                         ; $4f20: $84
    nop                                           ; $4f21: $00
    ld sp, $4428                                  ; $4f22: $31 $28 $44
    sub h                                         ; $4f25: $94
    ld [$00e9], sp                                ; $4f26: $08 $e9 $00
    push bc                                       ; $4f29: $c5
    nop                                           ; $4f2a: $00
    inc bc                                        ; $4f2b: $03
    or l                                          ; $4f2c: $b5
    ld c, a                                       ; $4f2d: $4f
    ldh a, [$3f]                                  ; $4f2e: $f0 $3f
    ei                                            ; $4f30: $fb
    inc b                                         ; $4f31: $04
    sub l                                         ; $4f32: $95
    nop                                           ; $4f33: $00
    ld [hl+], a                                   ; $4f34: $22
    ld c, d                                       ; $4f35: $4a
    inc de                                        ; $4f36: $13
    xor l                                         ; $4f37: $ad
    ld bc, $1049                                  ; $4f38: $01 $49 $10
    dec h                                         ; $4f3b: $25
    nop                                           ; $4f3c: $00
    add e                                         ; $4f3d: $83
    rla                                           ; $4f3e: $17
    ld c, h                                       ; $4f3f: $4c
    ld d, [hl]                                    ; $4f40: $56
    add hl, sp                                    ; $4f41: $39
    ld d, a                                       ; $4f42: $57
    jr z, @+$2c                                   ; $4f43: $28 $2a

    nop                                           ; $4f45: $00
    rst $10                                       ; $4f46: $d7

jr_0a2_4f47:
    xor a                                         ; $4f47: $af
    inc e                                         ; $4f48: $1c
    inc a                                         ; $4f49: $3c
    di                                            ; $4f4a: $f3
    or $c9                                        ; $4f4b: $f6 $c9
    or e                                          ; $4f4d: $b3
    ld bc, $0a0c                                  ; $4f4e: $01 $0c $0a
    pop de                                        ; $4f51: $d1
    or l                                          ; $4f52: $b5
    ld [bc], a                                    ; $4f53: $02
    push bc                                       ; $4f54: $c5
    ld a, [hl]                                    ; $4f55: $7e
    ldh [$58], a                                  ; $4f56: $e0 $58
    nop                                           ; $4f58: $00
    add e                                         ; $4f59: $83
    rst $38                                       ; $4f5a: $ff
    ret nz                                        ; $4f5b: $c0

    cp a                                          ; $4f5c: $bf
    add d                                         ; $4f5d: $82
    db $fd                                        ; $4f5e: $fd
    ret nz                                        ; $4f5f: $c0

    cp a                                          ; $4f60: $bf
    ld h, b                                       ; $4f61: $60
    add b                                         ; $4f62: $80
    ld [$6000], sp                                ; $4f63: $08 $00 $60
    ld a, [bc]                                    ; $4f66: $0a
    push de                                       ; $4f67: $d5
    rst $38                                       ; $4f68: $ff
    pop de                                        ; $4f69: $d1
    xor [hl]                                      ; $4f6a: $ae
    inc h                                         ; $4f6b: $24
    nop                                           ; $4f6c: $00
    rst $18                                       ; $4f6d: $df
    res 6, h                                      ; $4f6e: $cb $b4
    ld d, $e9                                     ; $4f70: $16 $e9
    xor a                                         ; $4f72: $af
    ret nc                                        ; $4f73: $d0

    ld e, e                                       ; $4f74: $5b
    nop                                           ; $4f75: $00
    and h                                         ; $4f76: $a4
    or [hl]                                       ; $4f77: $b6
    ret                                           ; $4f78: $c9


    ld l, a                                       ; $4f79: $6f
    sub b                                         ; $4f7a: $90
    cp a                                          ; $4f7b: $bf
    ret nz                                        ; $4f7c: $c0

    rra                                           ; $4f7d: $1f
    inc b                                         ; $4f7e: $04
    ldh [$bf], a                                  ; $4f7f: $e0 $bf
    ret nz                                        ; $4f81: $c0

    ld e, a                                       ; $4f82: $5f
    and b                                         ; $4f83: $a0
    ld [$c318], sp                                ; $4f84: $08 $18 $c3
    rst $38                                       ; $4f87: $ff
    ld hl, $dfe7                                  ; $4f88: $21 $e7 $df
    inc b                                         ; $4f8b: $04

jr_0a2_4f8c:
    ld c, b                                       ; $4f8c: $48
    ld a, a                                       ; $4f8d: $7f
    add b                                         ; $4f8e: $80
    cp a                                          ; $4f8f: $bf
    ret nz                                        ; $4f90: $c0

    inc b                                         ; $4f91: $04
    ld [$20c0], sp                                ; $4f92: $08 $c0 $20
    jr z, jr_0a2_4fbf                             ; $4f95: $28 $28

    jr jr_0a2_4f47                                ; $4f97: $18 $ae

    pop de                                        ; $4f99: $d1
    dec e                                         ; $4f9a: $1d
    ld [c], a                                     ; $4f9b: $e2
    cp d                                          ; $4f9c: $ba
    push bc                                       ; $4f9d: $c5
    nop                                           ; $4f9e: $00
    dec e                                         ; $4f9f: $1d
    ld [c], a                                     ; $4fa0: $e2
    xor c                                         ; $4fa1: $a9
    sub $53                                       ; $4fa2: $d6 $53
    xor h                                         ; $4fa4: $ac
    adc [hl]                                      ; $4fa5: $8e
    ld sp, hl                                     ; $4fa6: $f9
    nop                                           ; $4fa7: $00
    dec d                                         ; $4fa8: $15
    ld a, [$f788]                                 ; $4fa9: $fa $88 $f7
    dec h                                         ; $4fac: $25
    rst $18                                       ; $4fad: $df
    xor b                                         ; $4fae: $a8
    rst $38                                       ; $4faf: $ff
    nop                                           ; $4fb0: $00
    ld e, h                                       ; $4fb1: $5c
    rst $38                                       ; $4fb2: $ff
    ld [$ffff], a                                 ; $4fb3: $ea $ff $ff
    cpl                                           ; $4fb6: $2f
    rst $38                                       ; $4fb7: $ff
    ld e, e                                       ; $4fb8: $5b
    inc hl                                        ; $4fb9: $23
    rst $38                                       ; $4fba: $ff
    ld l, $04                                     ; $4fbb: $2e $04
    nop                                           ; $4fbd: $00
    cpl                                           ; $4fbe: $2f

jr_0a2_4fbf:
    rst $38                                       ; $4fbf: $ff
    ld e, d                                       ; $4fc0: $5a
    inc c                                         ; $4fc1: $0c
    db $10                                        ; $4fc2: $10
    sub $02                                       ; $4fc3: $d6 $02
    jr nz, @-$54                                  ; $4fc5: $20 $aa

    push de                                       ; $4fc7: $d5
    add b                                         ; $4fc8: $80
    jr z, jr_0a2_4f8c                             ; $4fc9: $28 $c1

    cp a                                          ; $4fcb: $bf
    add e                                         ; $4fcc: $83
    rst $38                                       ; $4fcd: $ff
    ld b, c                                       ; $4fce: $41
    ld [bc], a                                    ; $4fcf: $02
    cp a                                          ; $4fd0: $bf
    add e                                         ; $4fd1: $83
    ld a, a                                       ; $4fd2: $7f
    ld bc, $03ff                                  ; $4fd3: $01 $ff $03
    or b                                          ; $4fd6: $b0
    inc b                                         ; $4fd7: $04
    inc bc                                        ; $4fd8: $03
    ret nz                                        ; $4fd9: $c0

    add $04                                       ; $4fda: $c6 $04
    and b                                         ; $4fdc: $a0
    inc c                                         ; $4fdd: $0c
    and b                                         ; $4fde: $a0
    rst $18                                       ; $4fdf: $df
    dec h                                         ; $4fe0: $25
    jp c, $d7a8                                   ; $4fe1: $da $a8 $d7

    dec sp                                        ; $4fe4: $3b
    jr nz, @-$1f                                  ; $4fe5: $20 $df

    inc b                                         ; $4fe7: $04
    ld [$0e74], sp                                ; $4fe8: $08 $74 $0e
    adc h                                         ; $4feb: $8c
    ld b, $aa                                     ; $4fec: $06 $aa
    sub $2f                                       ; $4fee: $d6 $2f

jr_0a2_4ff0:
    jr @+$2a                                      ; $4ff0: $18 $28

    jp c, Jump_000_3820                           ; $4ff2: $da $20 $38

    ldh a, [rVBK]                                 ; $4ff5: $f0 $4f
    inc c                                         ; $4ff7: $0c
    and h                                         ; $4ff8: $a4
    ld d, $30                                     ; $4ff9: $16 $30
    jr c, jr_0a2_500c                             ; $4ffb: $38 $0f

    db $10                                        ; $4ffd: $10
    ld d, b                                       ; $4ffe: $50
    inc bc                                        ; $4fff: $03
    db $10                                        ; $5000: $10
    rst $38                                       ; $5001: $ff
    ld sp, hl                                     ; $5002: $f9
    cp $50                                        ; $5003: $fe $50
    jr c, jr_0a2_5037                             ; $5005: $38 $30

    rst $38                                       ; $5007: $ff
    sbc b                                         ; $5008: $98
    rst $28                                       ; $5009: $ef
    jr nz, @-$0e                                  ; $500a: $20 $f0

jr_0a2_500c:
    rrca                                          ; $500c: $0f
    ld h, b                                       ; $500d: $60
    inc c                                         ; $500e: $0c
    inc bc                                        ; $500f: $03
    db $fd                                        ; $5010: $fd
    ld d, d                                       ; $5011: $52
    xor l                                         ; $5012: $ad
    dec bc                                        ; $5013: $0b
    db $10                                        ; $5014: $10
    push af                                       ; $5015: $f5
    ld [bc], a                                    ; $5016: $02
    db $fd                                        ; $5017: $fd
    inc b                                         ; $5018: $04
    ld [$f80f], sp                                ; $5019: $08 $0f $f8
    rrca                                          ; $501c: $0f
    ld hl, sp+$00                                 ; $501d: $f8 $00
    rra                                           ; $501f: $1f
    ld hl, sp+$0d                                 ; $5020: $f8 $0d
    ld hl, sp+$1b                                 ; $5022: $f8 $1b
    db $fc                                        ; $5024: $fc
    dec bc                                        ; $5025: $0b
    db $fc                                        ; $5026: $fc
    nop                                           ; $5027: $00
    rlca                                          ; $5028: $07
    db $fc                                        ; $5029: $fc
    dec c                                         ; $502a: $0d
    db $fc                                        ; $502b: $fc
    rst $30                                       ; $502c: $f7
    ld [$08f7], sp                                ; $502d: $08 $f7 $08
    db $10                                        ; $5030: $10
    xor l                                         ; $5031: $ad
    nop                                           ; $5032: $00
    ld a, e                                       ; $5033: $7b
    or $12                                        ; $5034: $f6 $12
    push de                                       ; $5036: $d5

jr_0a2_5037:
    ld [bc], a                                    ; $5037: $02
    ld l, a                                       ; $5038: $6f
    nop                                           ; $5039: $00
    add b                                         ; $503a: $80
    dec d                                         ; $503b: $15
    nop                                           ; $503c: $00
    rlca                                          ; $503d: $07
    ld a, b                                       ; $503e: $78
    rlca                                          ; $503f: $07
    or $03                                        ; $5040: $f6 $03
    ld a, [$0303]                                 ; $5042: $fa $03 $03
    ld e, l                                       ; $5045: $5d
    inc bc                                        ; $5046: $03
    cp a                                          ; $5047: $bf
    ld bc, $0ff6                                  ; $5048: $01 $f6 $0f
    jr c, jr_0a2_5075                             ; $504b: $38 $28

    ld b, b                                       ; $504d: $40
    jr z, jr_0a2_4ff0                             ; $504e: $28 $a0

    and b                                         ; $5050: $a0
    ld c, b                                       ; $5051: $48
    xor c                                         ; $5052: $a9
    call nz, $1600                                ; $5053: $c4 $00 $16
    rst $28                                       ; $5056: $ef
    ld [$40b6], sp                                ; $5057: $08 $b6 $40
    nop                                           ; $505a: $00
    db $dd                                        ; $505b: $dd
    ld b, d                                       ; $505c: $42
    pop bc                                        ; $505d: $c1
    ld b, e                                       ; $505e: $43
    pop hl                                        ; $505f: $e1
    jp Jump_0a2_41e1                              ; $5060: $c3 $e1 $41


    db $10                                        ; $5063: $10
    pop af                                        ; $5064: $f1
    and d                                         ; $5065: $a2
    di                                            ; $5066: $f3
    inc d                                         ; $5067: $14
    ld [$d5aa], sp                                ; $5068: $08 $aa $d5
    jr nz, @-$1f                                  ; $506b: $20 $df

    add c                                         ; $506d: $81
    ldh [$2b], a                                  ; $506e: $e0 $2b
    ld e, h                                       ; $5070: $5c
    rst $38                                       ; $5071: $ff
    jr nz, @+$01                                  ; $5072: $20 $ff

    xor d                                         ; $5074: $aa

jr_0a2_5075:
    ld d, l                                       ; $5075: $55
    and $18                                       ; $5076: $e6 $18
    add h                                         ; $5078: $84
    add $0d                                       ; $5079: $c6 $0d
    ld c, $0f                                     ; $507b: $0e $0f
    ld bc, $c001                                  ; $507d: $01 $01 $c0
    ld c, d                                       ; $5080: $4a
    rlca                                          ; $5081: $07
    ld a, h                                       ; $5082: $7c
    inc b                                         ; $5083: $04
    adc a                                         ; $5084: $8f
    ld a, h                                       ; $5085: $7c
    ld b, a                                       ; $5086: $47
    rst $38                                       ; $5087: $ff
    adc d                                         ; $5088: $8a
    sub [hl]                                      ; $5089: $96
    scf                                           ; $508a: $37
    cp $01                                        ; $508b: $fe $01
    inc b                                         ; $508d: $04
    rst $20                                       ; $508e: $e7
    rra                                           ; $508f: $1f
    push af                                       ; $5090: $f5
    rst $38                                       ; $5091: $ff
    xor b                                         ; $5092: $a8
    and [hl]                                      ; $5093: $a6
    scf                                           ; $5094: $37
    or h                                          ; $5095: $b4
    ld a, a                                       ; $5096: $7f
    ld a, b                                       ; $5097: $78
    and b                                         ; $5098: $a0
    ld [hl], e                                    ; $5099: $73
    ld e, [hl]                                    ; $509a: $5e
    ret nz                                        ; $509b: $c0

    rlca                                          ; $509c: $07
    ld d, b                                       ; $509d: $50
    ld c, b                                       ; $509e: $48
    ret c                                         ; $509f: $d8

    ld [$55ab], sp                                ; $50a0: $08 $ab $55
    ld [bc], a                                    ; $50a3: $02
    ld b, d                                       ; $50a4: $42
    db $fd                                        ; $50a5: $fd
    add b                                         ; $50a6: $80
    dec hl                                        ; $50a7: $2b
    ld a, a                                       ; $50a8: $7f
    rst $38                                       ; $50a9: $ff
    rst $18                                       ; $50aa: $df
    rst $38                                       ; $50ab: $ff
    ret nc                                        ; $50ac: $d0

    ld c, d                                       ; $50ad: $4a
    add b                                         ; $50ae: $80
    add b                                         ; $50af: $80
    db $e4                                        ; $50b0: $e4
    rlca                                          ; $50b1: $07
    ret nz                                        ; $50b2: $c0

    cp a                                          ; $50b3: $bf
    ld e, a                                       ; $50b4: $5f
    and b                                         ; $50b5: $a0
    push de                                       ; $50b6: $d5
    xor d                                         ; $50b7: $aa
    ld e, [hl]                                    ; $50b8: $5e
    inc b                                         ; $50b9: $04
    and c                                         ; $50ba: $a1
    push de                                       ; $50bb: $d5
    xor e                                         ; $50bc: $ab
    ld e, a                                       ; $50bd: $5f
    and e                                         ; $50be: $a3
    db $e4                                        ; $50bf: $e4
    rrca                                          ; $50c0: $0f
    inc c                                         ; $50c1: $0c
    rst $38                                       ; $50c2: $ff
    nop                                           ; $50c3: $00

jr_0a2_50c4:
    cp a                                          ; $50c4: $bf
    ld [hl], h                                    ; $50c5: $74
    ei                                            ; $50c6: $fb
    call nz, $8af5                                ; $50c7: $c4 $f5 $8a
    sbc h                                         ; $50ca: $9c
    db $e3                                        ; $50cb: $e3
    jr c, jr_0a2_50c4                             ; $50cc: $38 $f6

    call $1980                                    ; $50ce: $cd $80 $19
    inc e                                         ; $50d1: $1c
    ld e, $90                                     ; $50d2: $1e $90
    dec l                                         ; $50d4: $2d
    inc bc                                        ; $50d5: $03
    db $fd                                        ; $50d6: $fd
    ld a, [$0500]                                 ; $50d7: $fa $00 $05
    ld e, e                                       ; $50da: $5b
    and l                                         ; $50db: $a5
    ld [$fb15], a                                 ; $50dc: $ea $15 $fb
    dec b                                         ; $50df: $05
    ld [$1504], a                                 ; $50e0: $ea $04 $15
    sub $ab                                       ; $50e3: $d6 $ab
    ld e, [hl]                                    ; $50e5: $5e
    and e                                         ; $50e6: $a3
    inc b                                         ; $50e7: $04
    ld c, b                                       ; $50e8: $48
    ld l, [hl]                                    ; $50e9: $6e
    pop af                                        ; $50ea: $f1
    ld c, $3e                                     ; $50eb: $0e $3e
    pop hl                                        ; $50ed: $e1
    ld e, $e1                                     ; $50ee: $1e $e1
    inc b                                         ; $50f0: $04
    jr c, @+$26                                   ; $50f1: $38 $24

    ld [$4804], sp                                ; $50f3: $08 $04 $48
    sub $00                                       ; $50f6: $d6 $00
    xor e                                         ; $50f8: $ab
    ld d, e                                       ; $50f9: $53
    xor a                                         ; $50fa: $af
    ret nz                                        ; $50fb: $c0

    cp a                                          ; $50fc: $bf
    ld d, b                                       ; $50fd: $50
    xor a                                         ; $50fe: $af
    push de                                       ; $50ff: $d5
    nop                                           ; $5100: $00
    xor d                                         ; $5101: $aa
    ld e, a                                       ; $5102: $5f
    and b                                         ; $5103: $a0
    rst $10                                       ; $5104: $d7
    xor b                                         ; $5105: $a8

jr_0a2_5106:
    ld e, a                                       ; $5106: $5f
    and b                                         ; $5107: $a0
    ld e, $01                                     ; $5108: $1e $01
    pop hl                                        ; $510a: $e1
    dec sp                                        ; $510b: $3b
    rst $20                                       ; $510c: $e7
    call $37fe                                    ; $510d: $cd $fe $37
    ld hl, sp+$72                                 ; $5110: $f8 $72
    dec l                                         ; $5112: $2d
    add b                                         ; $5113: $80
    inc d                                         ; $5114: $14
    ld [$a9d6], sp                                ; $5115: $08 $d6 $a9
    ld e, [hl]                                    ; $5118: $5e
    and c                                         ; $5119: $a1
    rst $10                                       ; $511a: $d7
    xor d                                         ; $511b: $aa
    ld e, a                                       ; $511c: $5f
    nop                                           ; $511d: $00
    and d                                         ; $511e: $a2
    sub $ab                                       ; $511f: $d6 $ab
    ld e, a                                       ; $5121: $5f
    and c                                         ; $5122: $a1
    jp Jump_000_143c                              ; $5123: $c3 $3c $14


    nop                                           ; $5126: $00
    and e                                         ; $5127: $a3
    ld [bc], a                                    ; $5128: $02
    ld d, b                                       ; $5129: $50
    sub b                                         ; $512a: $90
    sbc c                                         ; $512b: $99
    add d                                         ; $512c: $82
    rst $20                                       ; $512d: $e7
    ld b, b                                       ; $512e: $40
    inc b                                         ; $512f: $04
    call z, Call_0a2_6a88                         ; $5130: $cc $88 $6a
    ld b, b                                       ; $5133: $40
    cp a                                          ; $5134: $bf
    ld h, b                                       ; $5135: $60
    rrca                                          ; $5136: $0f
    ld a, a                                       ; $5137: $7f
    add b                                         ; $5138: $80
    ld b, b                                       ; $5139: $40
    ccf                                           ; $513a: $3f
    db $f4                                        ; $513b: $f4
    dec b                                         ; $513c: $05
    ccf                                           ; $513d: $3f
    ret nz                                        ; $513e: $c0

    ld a, h                                       ; $513f: $7c
    jp $c6b8                                      ; $5140: $c3 $b8 $c6


    add b                                         ; $5143: $80
    ld h, b                                       ; $5144: $60
    ld c, b                                       ; $5145: $48
    dec sp                                        ; $5146: $3b
    push bc                                       ; $5147: $c5
    ld a, [bc]                                    ; $5148: $0a
    dec [hl]                                      ; $5149: $35
    ld a, [hl+]                                   ; $514a: $2a
    db $dd                                        ; $514b: $dd
    xor e                                         ; $514c: $ab
    ld [bc], a                                    ; $514d: $02
    or $ce                                        ; $514e: $f6 $ce
    ld a, c                                       ; $5150: $79
    cp e                                          ; $5151: $bb
    ld [hl], b                                    ; $5152: $70
    and $40                                       ; $5153: $e6 $40
    inc bc                                        ; $5155: $03
    scf                                           ; $5156: $37
    add b                                         ; $5157: $80
    ld b, b                                       ; $5158: $40
    inc bc                                        ; $5159: $03
    add hl, bc                                    ; $515a: $09
    and b                                         ; $515b: $a0
    push bc                                       ; $515c: $c5
    ld [de], a                                    ; $515d: $12
    ld [de], a                                    ; $515e: $12
    ld c, l                                       ; $515f: $4d
    ld d, l                                       ; $5160: $55
    nop                                           ; $5161: $00
    ld a, [hl-]                                   ; $5162: $3a
    ld c, a                                       ; $5163: $4f
    ldh a, [$32]                                  ; $5164: $f0 $32
    db $ed                                        ; $5166: $ed
    push af                                       ; $5167: $f5
    cp d                                          ; $5168: $ba
    sbc d                                         ; $5169: $9a
    ld bc, $d5e7                                  ; $516a: $01 $e7 $d5
    xor e                                         ; $516d: $ab
    ld e, h                                       ; $516e: $5c
    and e                                         ; $516f: $a3
    sub $a9                                       ; $5170: $d6 $a9
    ld a, h                                       ; $5172: $7c
    jr jr_0a2_5106                                ; $5173: $18 $91

    add b                                         ; $5175: $80
    ld [$e3df], sp                                ; $5176: $08 $df $e3
    inc d                                         ; $5179: $14
    ld bc, $07fe                                  ; $517a: $01 $fe $07
    ld hl, sp-$48                                 ; $517d: $f8 $b8
    cpl                                           ; $517f: $2f
    nop                                           ; $5180: $00
    ld hl, sp-$74                                 ; $5181: $f8 $8c
    ldh a, [rNR23]                                ; $5183: $f0 $18
    pop af                                        ; $5185: $f1
    jr @-$0e                                      ; $5186: $18 $f0

    inc d                                         ; $5188: $14
    nop                                           ; $5189: $00
    ldh a, [rNR30]                                ; $518a: $f0 $1a
    ret z                                         ; $518c: $c8

    dec a                                         ; $518d: $3d
    add h                                         ; $518e: $84
    ld a, a                                       ; $518f: $7f
    add e                                         ; $5190: $83
    ld a, a                                       ; $5191: $7f
    nop                                           ; $5192: $00
    adc e                                         ; $5193: $8b
    dec d                                         ; $5194: $15
    ld b, d                                       ; $5195: $42
    dec c                                         ; $5196: $0d
    inc de                                        ; $5197: $13
    dec c                                         ; $5198: $0d
    ld b, d                                       ; $5199: $42
    dec c                                         ; $519a: $0d
    nop                                           ; $519b: $00
    inc bc                                        ; $519c: $03
    dec c                                         ; $519d: $0d
    ld a, [bc]                                    ; $519e: $0a
    dec [hl]                                      ; $519f: $35
    dec sp                                        ; $51a0: $3b
    push hl                                       ; $51a1: $e5
    ld [$02d5], a                                 ; $51a2: $ea $d5 $02
    rst $10                                       ; $51a5: $d7
    xor b                                         ; $51a6: $a8
    ld e, d                                       ; $51a7: $5a
    and l                                         ; $51a8: $a5
    rst $18                                       ; $51a9: $df
    and b                                         ; $51aa: $a0
    adc b                                         ; $51ab: $88
    nop                                           ; $51ac: $00
    add b                                         ; $51ad: $80
    pop hl                                        ; $51ae: $e1
    and b                                         ; $51af: $a0
    dec a                                         ; $51b0: $3d
    cp d                                          ; $51b1: $ba
    rra                                           ; $51b2: $1f
    and b                                         ; $51b3: $a0
    dec e                                         ; $51b4: $1d
    ret nz                                        ; $51b5: $c0

    ccf                                           ; $51b6: $3f
    and b                                         ; $51b7: $a0
    ld e, a                                       ; $51b8: $5f
    db $10                                        ; $51b9: $10
    ld c, b                                       ; $51ba: $48
    jr z, jr_0a2_5238                             ; $51bb: $28 $7b

    add l                                         ; $51bd: $85
    inc [hl]                                      ; $51be: $34
    dec b                                         ; $51bf: $05
    dec b                                         ; $51c0: $05
    add b                                         ; $51c1: $80
    add hl, sp                                    ; $51c2: $39
    rst $20                                       ; $51c3: $e7
    ld e, b                                       ; $51c4: $58
    jp c, Jump_000_2400                           ; $51c5: $da $00 $24

    db $ec                                        ; $51c8: $ec
    inc de                                        ; $51c9: $13
    jp nc, $b624                                  ; $51ca: $d2 $24 $b6

    ld c, c                                       ; $51cd: $49
    db $eb                                        ; $51ce: $eb
    add b                                         ; $51cf: $80
    db $10                                        ; $51d0: $10
    inc c                                         ; $51d1: $0c
    ld c, d                                       ; $51d2: $4a
    ei                                            ; $51d3: $fb
    inc c                                         ; $51d4: $0c
    sbc l                                         ; $51d5: $9d
    ld b, [hl]                                    ; $51d6: $46
    and $13                                       ; $51d7: $e6 $13
    nop                                           ; $51d9: $00
    sub e                                         ; $51da: $93
    dec l                                         ; $51db: $2d
    ld c, [hl]                                    ; $51dc: $4e
    sub c                                         ; $51dd: $91
    cp e                                          ; $51de: $bb
    ld b, a                                       ; $51df: $47
    xor $1d                                       ; $51e0: $ee $1d
    nop                                           ; $51e2: $00
    or c                                          ; $51e3: $b1
    ld [hl], h                                    ; $51e4: $74
    ld a, a                                       ; $51e5: $7f
    add b                                         ; $51e6: $80
    ld [hl], l                                    ; $51e7: $75
    ld a, [bc]                                    ; $51e8: $0a
    add [hl]                                      ; $51e9: $86
    inc sp                                        ; $51ea: $33
    ld b, b                                       ; $51eb: $40
    dec de                                        ; $51ec: $1b
    jr nz, jr_0a2_5225                            ; $51ed: $20 $36

    ld e, [hl]                                    ; $51ef: $5e
    and c                                         ; $51f0: $a1
    cp e                                          ; $51f1: $bb
    inc b                                         ; $51f2: $04
    xor $18                                       ; $51f3: $ee $18
    nop                                           ; $51f5: $00
    dec sp                                        ; $51f6: $3b
    ldh a, [$d4]                                  ; $51f7: $f0 $d4
    db $e3                                        ; $51f9: $e3
    dec hl                                        ; $51fa: $2b
    inc [hl]                                      ; $51fb: $34

jr_0a2_51fc:
    ld d, [hl]                                    ; $51fc: $56
    add hl, de                                    ; $51fd: $19
    ld a, [bc]                                    ; $51fe: $0a
    adc e                                         ; $51ff: $8b
    inc l                                         ; $5200: $2c
    rst $30                                       ; $5201: $f7
    ld [$0d10], sp                                ; $5202: $08 $10 $0d
    ld d, l                                       ; $5205: $55
    db $10                                        ; $5206: $10
    dec h                                         ; $5207: $25
    or d                                          ; $5208: $b2
    nop                                           ; $5209: $00
    ld a, l                                       ; $520a: $7d
    ld h, [hl]                                    ; $520b: $66
    sbc c                                         ; $520c: $99
    cp e                                          ; $520d: $bb

Call_0a2_520e:
    ld b, a                                       ; $520e: $47
    adc $7c                                       ; $520f: $ce $7c
    or e                                          ; $5211: $b3
    nop                                           ; $5212: $00
    ld a, [hl]                                    ; $5213: $7e
    ret                                           ; $5214: $c9


    rst $38                                       ; $5215: $ff
    dec [hl]                                      ; $5216: $35
    jp c, $fd0e                                   ; $5217: $da $0e $fd

    or c                                          ; $521a: $b1
    jr nc, jr_0a2_51fc                            ; $521b: $30 $df

    add c                                         ; $521d: $81
    ret c                                         ; $521e: $d8

    inc de                                        ; $521f: $13
    ldh [$3b], a                                  ; $5220: $e0 $3b
    ld b, b                                       ; $5222: $40
    inc d                                         ; $5223: $14
    db $e3                                        ; $5224: $e3

jr_0a2_5225:
    dec c                                         ; $5225: $0d
    ld b, d                                       ; $5226: $42
    rst $38                                       ; $5227: $ff
    ld bc, $8360                                  ; $5228: $01 $60 $83
    rst $38                                       ; $522b: $ff
    pop bc                                        ; $522c: $c1
    cp a                                          ; $522d: $bf
    inc b                                         ; $522e: $04
    ld c, b                                       ; $522f: $48
    rst $38                                       ; $5230: $ff
    nop                                           ; $5231: $00
    nop                                           ; $5232: $00
    ld [hl], a                                    ; $5233: $77
    adc b                                         ; $5234: $88
    and [hl]                                      ; $5235: $a6
    ld e, c                                       ; $5236: $59
    ld c, l                                       ; $5237: $4d

jr_0a2_5238:
    or d                                          ; $5238: $b2
    sub d                                         ; $5239: $92
    ld bc, $006d                                  ; $523a: $01 $6d $00
    rst $38                                       ; $523d: $ff
    adc b                                         ; $523e: $88
    ld [hl], a                                    ; $523f: $77
    nop                                           ; $5240: $00
    rst $38                                       ; $5241: $ff
    ld [bc], a                                    ; $5242: $02
    ld l, b                                       ; $5243: $68
    nop                                           ; $5244: $00
    ld a, [$5505]                                 ; $5245: $fa $05 $55
    xor a                                         ; $5248: $af
    xor a                                         ; $5249: $af
    ld e, a                                       ; $524a: $5f
    rra                                           ; $524b: $1f
    db $fc                                        ; $524c: $fc
    nop                                           ; $524d: $00
    ld a, h                                       ; $524e: $7c
    cp b                                          ; $524f: $b8
    sbc c                                         ; $5250: $99
    ld [hl], b                                    ; $5251: $70
    ld [hl-], a                                   ; $5252: $32
    pop af                                        ; $5253: $f1
    dec [hl]                                      ; $5254: $35
    db $d3                                        ; $5255: $d3
    nop                                           ; $5256: $00
    rst $38                                       ; $5257: $ff
    nop                                           ; $5258: $00
    ld l, [hl]                                    ; $5259: $6e
    sub c                                         ; $525a: $91
    xor d                                         ; $525b: $aa
    rst $38                                       ; $525c: $ff
    rst $38                                       ; $525d: $ff
    ld a, a                                       ; $525e: $7f
    nop                                           ; $525f: $00
    ld a, a                                       ; $5260: $7f
    nop                                           ; $5261: $00
    nop                                           ; $5262: $00
    nop                                           ; $5263: $00
    xor d                                         ; $5264: $aa
    nop                                           ; $5265: $00
    rst $38                                       ; $5266: $ff
    rst $38                                       ; $5267: $ff
    add hl, bc                                    ; $5268: $09
    cp [hl]                                       ; $5269: $be
    ld b, c                                       ; $526a: $41
    ld h, a                                       ; $526b: $67
    sbc b                                         ; $526c: $98
    stop                                          ; $526d: $10 $00
    rst $38                                       ; $526f: $ff
    rst $38                                       ; $5270: $ff
    db $10                                        ; $5271: $10
    jr nz, jr_0a2_5274                            ; $5272: $20 $00

jr_0a2_5274:
    ld a, [$a505]                                 ; $5274: $fa $05 $a5
    ld e, a                                       ; $5277: $5f
    xor a                                         ; $5278: $af
    rst $38                                       ; $5279: $ff
    rst $38                                       ; $527a: $ff
    cp $50                                        ; $527b: $fe $50
    cp $20                                        ; $527d: $fe $20
    nop                                           ; $527f: $00
    xor e                                         ; $5280: $ab
    jr nz, jr_0a2_5283                            ; $5281: $20 $00

jr_0a2_5283:
    ld [hl-], a                                   ; $5283: $32
    pop af                                        ; $5284: $f1
    add hl, de                                    ; $5285: $19
    pop af                                        ; $5286: $f1
    ld [$f90a], sp                                ; $5287: $08 $0a $f9
    add hl, de                                    ; $528a: $19
    ld sp, hl                                     ; $528b: $f9
    inc b                                         ; $528c: $04
    jr z, jr_0a2_528f                             ; $528d: $28 $00

jr_0a2_528f:
    ld d, l                                       ; $528f: $55
    ld bc, $ff00                                  ; $5290: $01 $00 $ff
    inc bc                                        ; $5293: $03
    ld e, [hl]                                    ; $5294: $5e
    ld b, $fc                                     ; $5295: $06 $fc
    dec c                                         ; $5297: $0d
    ld a, b                                       ; $5298: $78
    rra                                           ; $5299: $1f
    nop                                           ; $529a: $00
    or e                                          ; $529b: $b3
    ld d, $f4                                     ; $529c: $16 $f4
    inc e                                         ; $529e: $1c
    ld hl, sp+$70                                 ; $529f: $f8 $70
    rst $38                                       ; $52a1: $ff
    db $fc                                        ; $52a2: $fc
    nop                                           ; $52a3: $00
    adc a                                         ; $52a4: $8f
    rst $38                                       ; $52a5: $ff
    ld d, e                                       ; $52a6: $53
    rst $38                                       ; $52a7: $ff
    inc c                                         ; $52a8: $0c
    ei                                            ; $52a9: $fb
    ldh [$fd], a                                  ; $52aa: $e0 $fd
    nop                                           ; $52ac: $00
    db $10                                        ; $52ad: $10
    ld e, $09                                     ; $52ae: $1e $09
    ld c, $04                                     ; $52b0: $0e $04
    dec d                                         ; $52b2: $15
    rst $38                                       ; $52b3: $ff
    xor d                                         ; $52b4: $aa
    jr nz, @+$01                                  ; $52b5: $20 $ff

    ld bc, $0004                                  ; $52b7: $01 $04 $00
    pop bc                                        ; $52ba: $c1
    ld a, a                                       ; $52bb: $7f
    ld [$e1bf], a                                 ; $52bc: $ea $bf $e1
    jr @+$41                                      ; $52bf: $18 $3f

    ld a, [c]                                     ; $52c1: $f2
    ld e, a                                       ; $52c2: $5f
    inc a                                         ; $52c3: $3c
    ld c, b                                       ; $52c4: $48
    ld c, b                                       ; $52c5: $48
    ld [$7018], sp                                ; $52c6: $08 $18 $70
    jr jr_0a2_52cb                                ; $52c9: $18 $00

jr_0a2_52cb:
    ldh a, [$0e]                                  ; $52cb: $f0 $0e
    ld a, b                                       ; $52cd: $78
    add hl, bc                                    ; $52ce: $09
    cp l                                          ; $52cf: $bd
    inc c                                         ; $52d0: $0c
    db $fc                                        ; $52d1: $fc
    rrca                                          ; $52d2: $0f
    nop                                           ; $52d3: $00
    ld a, b                                       ; $52d4: $78
    ld a, [bc]                                    ; $52d5: $0a
    ld a, [$f91b]                                 ; $52d6: $fa $1b $f9
    rlca                                          ; $52d9: $07
    ld [bc], a                                    ; $52da: $02
    inc bc                                        ; $52db: $03
    nop                                           ; $52dc: $00
    inc bc                                        ; $52dd: $03
    ld [hl], e                                    ; $52de: $73
    ld bc, $298d                                  ; $52df: $01 $8d $29
    ret                                           ; $52e2: $c9


    ld h, b                                       ; $52e3: $60
    ld [hl], b                                    ; $52e4: $70
    add b                                         ; $52e5: $80
    sub d                                         ; $52e6: $92
    nop                                           ; $52e7: $00
    ld bc, $7900                                  ; $52e8: $01 $00 $79
    cpl                                           ; $52eb: $2f
    ld a, [$f80f]                                 ; $52ec: $fa $0f $f8
    nop                                           ; $52ef: $00
    cpl                                           ; $52f0: $2f
    db $fc                                        ; $52f1: $fc
    ld d, a                                       ; $52f2: $57
    call c, $9497                                 ; $52f3: $dc $97 $94
    sbc a                                         ; $52f6: $9f
    sbc $00                                       ; $52f7: $de $00
    dec de                                        ; $52f9: $1b
    cp [hl]                                       ; $52fa: $be
    inc sp                                        ; $52fb: $33
    inc a                                         ; $52fc: $3c
    ld hl, sp+$3f                                 ; $52fd: $f8 $3f
    add sp, $3d                                   ; $52ff: $e8 $3d
    nop                                           ; $5301: $00
    add sp, $7c                                   ; $5302: $e8 $7c
    call nz, $e44e                                ; $5304: $c4 $4e $e4
    rst $18                                       ; $5307: $df
    add d                                         ; $5308: $82
    rst $28                                       ; $5309: $ef
    nop                                           ; $530a: $00
    add c                                         ; $530b: $81
    rst $28                                       ; $530c: $ef
    ld b, e                                       ; $530d: $43
    ld hl, $c300                                  ; $530e: $21 $00 $c3
    ld bc, $0087                                  ; $5311: $01 $87 $00
    inc bc                                        ; $5314: $03
    rrca                                          ; $5315: $0f
    rlca                                          ; $5316: $07
    rra                                           ; $5317: $1f
    dec bc                                        ; $5318: $0b
    ei                                            ; $5319: $fb
    ld sp, $00f7                                  ; $531a: $31 $f7 $00
    pop bc                                        ; $531d: $c1
    db $e3                                        ; $531e: $e3
    add e                                         ; $531f: $83
    rst $38                                       ; $5320: $ff
    pop hl                                        ; $5321: $e1
    rst $38                                       ; $5322: $ff
    pop de                                        ; $5323: $d1
    rst $30                                       ; $5324: $f7
    nop                                           ; $5325: $00
    add d                                         ; $5326: $82
    rst $28                                       ; $5327: $ef
    ld bc, $a0eb                                  ; $5328: $01 $eb $a0
    rst $38                                       ; $532b: $ff
    nop                                           ; $532c: $00
    db $eb                                        ; $532d: $eb
    nop                                           ; $532e: $00
    add c                                         ; $532f: $81
    rst $38                                       ; $5330: $ff
    ld b, b                                       ; $5331: $40
    cp a                                          ; $5332: $bf
    ld b, b                                       ; $5333: $40
    ld d, a                                       ; $5334: $57
    add sp, -$1a                                  ; $5335: $e8 $e6
    nop                                           ; $5337: $00
    ld sp, hl                                     ; $5338: $f9
    push af                                       ; $5339: $f5
    ld a, [hl-]                                   ; $533a: $3a
    ld [hl-], a                                   ; $533b: $32
    dec e                                         ; $533c: $1d
    sub b                                         ; $533d: $90
    rrca                                          ; $533e: $0f
    ld c, b                                       ; $533f: $48
    nop                                           ; $5340: $00
    add a                                         ; $5341: $87
    and b                                         ; $5342: $a0
    rst $08                                       ; $5343: $cf
    rst $38                                       ; $5344: $ff
    nop                                           ; $5345: $00
    xor a                                         ; $5346: $af
    ld d, b                                       ; $5347: $50
    ld e, c                                       ; $5348: $59
    nop                                           ; $5349: $00
    and [hl]                                      ; $534a: $a6
    inc hl                                        ; $534b: $23
    call c, $ad52                                 ; $534c: $dc $52 $ad
    add h                                         ; $534f: $84
    ld a, e                                       ; $5350: $7b
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
    rst $38                                       ; $5353: $ff
    ld bc, $fffe                                  ; $5354: $01 $fe $ff
    nop                                           ; $5357: $00
    ld e, e                                       ; $5358: $5b
    and h                                         ; $5359: $a4
    or l                                          ; $535a: $b5
    nop                                           ; $535b: $00
    ld e, a                                       ; $535c: $5f
    ccf                                           ; $535d: $3f
    rst $18                                       ; $535e: $df
    ld [hl], b                                    ; $535f: $70
    or b                                          ; $5360: $b0
    sub b                                         ; $5361: $90
    ld [hl], a                                    ; $5362: $77
    jr nc, jr_0a2_537b                            ; $5363: $30 $16

    db $f4                                        ; $5365: $f4
    ld de, $10f5                                  ; $5366: $11 $f5 $10
    add hl, bc                                    ; $5369: $09
    ld d, l                                       ; $536a: $55
    rst $38                                       ; $536b: $ff
    jr jr_0a2_5371                                ; $536c: $18 $03

    ld bc, $00ff                                  ; $536e: $01 $ff $00

jr_0a2_5371:
    rst $38                                       ; $5371: $ff
    ld b, b                                       ; $5372: $40
    adc a                                         ; $5373: $8f
    sub b                                         ; $5374: $90
    adc a                                         ; $5375: $8f
    ld b, b                                       ; $5376: $40
    sbc a                                         ; $5377: $9f
    add b                                         ; $5378: $80
    ld b, d                                       ; $5379: $42
    sbc a                                         ; $537a: $9f

jr_0a2_537b:
    inc b                                         ; $537b: $04
    jr z, jr_0a2_53ae                             ; $537c: $28 $30

    push af                                       ; $537e: $f5
    ld de, $04f5                                  ; $537f: $11 $f5 $04
    ld c, b                                       ; $5382: $48
    ld sp, hl                                     ; $5383: $f9
    nop                                           ; $5384: $00
    ld d, e                                       ; $5385: $53
    sub $e8                                       ; $5386: $d6 $e8
    cp l                                          ; $5388: $bd
    ld b, c                                       ; $5389: $41
    add sp, -$6d                                  ; $538a: $e8 $93
    or [hl]                                       ; $538c: $b6
    ld bc, $ee43                                  ; $538d: $01 $43 $ee
    ld b, $d0                                     ; $5390: $06 $d0
    sbc c                                         ; $5392: $99
    jp hl                                         ; $5393: $e9


    adc d                                         ; $5394: $8a
    inc l                                         ; $5395: $2c
    ld c, b                                       ; $5396: $48
    add b                                         ; $5397: $80
    jr c, jr_0a2_53a2                             ; $5398: $38 $08

    db $e3                                        ; $539a: $e3
    add h                                         ; $539b: $84
    or a                                          ; $539c: $b7
    ld b, b                                       ; $539d: $40
    pop af                                        ; $539e: $f1
    add [hl]                                      ; $539f: $86
    or b                                          ; $53a0: $b0
    nop                                           ; $53a1: $00

jr_0a2_53a2:
    pop bc                                        ; $53a2: $c1
    and $80                                       ; $53a3: $e6 $80
    xor a                                         ; $53a5: $af
    ld b, a                                       ; $53a6: $47
    push hl                                       ; $53a7: $e5
    add e                                         ; $53a8: $83
    xor a                                         ; $53a9: $af
    nop                                           ; $53aa: $00
    rst $00                                       ; $53ab: $c7
    rst $20                                       ; $53ac: $e7
    add b                                         ; $53ad: $80

jr_0a2_53ae:
    or b                                          ; $53ae: $b0
    ld b, b                                       ; $53af: $40
    ld a, [c]                                     ; $53b0: $f2
    add l                                         ; $53b1: $85
    cp e                                          ; $53b2: $bb
    nop                                           ; $53b3: $00
    ret nz                                        ; $53b4: $c0

    db $db                                        ; $53b5: $db
    and b                                         ; $53b6: $a0
    cp c                                          ; $53b7: $b9
    ld b, e                                       ; $53b8: $43
    ld e, h                                       ; $53b9: $5c
    ld hl, $78bc                                  ; $53ba: $21 $bc $78
    ld b, c                                       ; $53bd: $41
    ld [hl], b                                    ; $53be: $70
    add hl, bc                                    ; $53bf: $09
    ld [hl], b                                    ; $53c0: $70
    ld c, b                                       ; $53c1: $48
    and b                                         ; $53c2: $a0
    ld [$5810], sp                                ; $53c3: $08 $10 $58
    ld [hl], a                                    ; $53c6: $77
    adc b                                         ; $53c7: $88
    ld h, [hl]                                    ; $53c8: $66
    nop                                           ; $53c9: $00
    reti                                          ; $53ca: $d9


    call $02f2                                    ; $53cb: $cd $f2 $02
    dec c                                         ; $53ce: $0d
    nop                                           ; $53cf: $00
    rst $28                                       ; $53d0: $ef
    ld [$2710], sp                                ; $53d1: $08 $10 $27
    add b                                         ; $53d4: $80
    xor a                                         ; $53d5: $af
    sbc b                                         ; $53d6: $98
    add hl, bc                                    ; $53d7: $09
    ld a, c                                       ; $53d8: $79
    add a                                         ; $53d9: $87
    sub h                                         ; $53da: $94
    ld a, e                                       ; $53db: $7b
    nop                                           ; $53dc: $00
    ld d, d                                       ; $53dd: $52
    ld [hl], e                                    ; $53de: $73
    ld bc, $0a0d                                  ; $53df: $01 $0d $0a
    ld h, [hl]                                    ; $53e2: $66
    db $dd                                        ; $53e3: $dd
    jr nz, jr_0a2_53e6                            ; $53e4: $20 $00

jr_0a2_53e6:
    rst $18                                       ; $53e6: $df
    ld a, [hl+]                                   ; $53e7: $2a
    ei                                            ; $53e8: $fb
    rlca                                          ; $53e9: $07
    dec e                                         ; $53ea: $1d
    ld [bc], a                                    ; $53eb: $02
    and e                                         ; $53ec: $a3
    ld h, c                                       ; $53ed: $61
    nop                                           ; $53ee: $00
    ld b, a                                       ; $53ef: $47
    or b                                          ; $53f0: $b0
    ld a, [hl+]                                   ; $53f1: $2a
    ld e, c                                       ; $53f2: $59
    or l                                          ; $53f3: $b5
    sbc h                                         ; $53f4: $9c
    dec a                                         ; $53f5: $3d
    and h                                         ; $53f6: $a4
    add hl, bc                                    ; $53f7: $09
    nop                                           ; $53f8: $00
    xor a                                         ; $53f9: $af
    add b                                         ; $53fa: $80
    xor a                                         ; $53fb: $af
    inc b                                         ; $53fc: $04
    ld c, b                                       ; $53fd: $48
    db $fd                                        ; $53fe: $fd
    ld [bc], a                                    ; $53ff: $02
    inc bc                                        ; $5400: $03
    ld a, [bc]                                    ; $5401: $0a
    nop                                           ; $5402: $00
    ldh [rNR11], a                                ; $5403: $e0 $11
    ld c, [hl]                                    ; $5405: $4e
    and b                                         ; $5406: $a0
    ld e, a                                       ; $5407: $5f
    ld e, $1b                                     ; $5408: $1e $1b
    rla                                           ; $540a: $17
    nop                                           ; $540b: $00
    ld c, a                                       ; $540c: $4f
    ld e, $b1                                     ; $540d: $1e $b1
    inc a                                         ; $540f: $3c
    sbc c                                         ; $5410: $99
    ld d, h                                       ; $5411: $54
    sbc l                                         ; $5412: $9d
    ld d, h                                       ; $5413: $54
    nop                                           ; $5414: $00
    pop de                                        ; $5415: $d1
    jr jr_0a2_5418                                ; $5416: $18 $00

jr_0a2_5418:
    and $04                                       ; $5418: $e6 $04
    ld [de], a                                    ; $541a: $12
    nop                                           ; $541b: $00
    ld l, d                                       ; $541c: $6a
    nop                                           ; $541d: $00
    ld l, b                                       ; $541e: $68
    ld [bc], a                                    ; $541f: $02
    ld b, [hl]                                    ; $5420: $46
    jr z, @+$62                                   ; $5421: $28 $60

    sub c                                         ; $5423: $91
    rra                                           ; $5424: $1f
    ld b, b                                       ; $5425: $40
    ld b, b                                       ; $5426: $40
    rra                                           ; $5427: $1f
    ld l, $01                                     ; $5428: $2e $01
    inc bc                                        ; $542a: $03
    ld a, [$027b]                                 ; $542b: $fa $7b $02
    rst $30                                       ; $542e: $f7
    add h                                         ; $542f: $84
    nop                                           ; $5430: $00
    ld a, d                                       ; $5431: $7a
    add h                                         ; $5432: $84
    pop af                                        ; $5433: $f1
    inc b                                         ; $5434: $04
    pop af                                        ; $5435: $f1
    nop                                           ; $5436: $00
    di                                            ; $5437: $f3
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    and $11                                       ; $543a: $e6 $11
    push bc                                       ; $543c: $c5
    inc sp                                        ; $543d: $33
    and [hl]                                      ; $543e: $a6
    ld [hl], c                                    ; $543f: $71
    ld b, l                                       ; $5440: $45
    db $d3                                        ; $5441: $d3
    add b                                         ; $5442: $80
    ld b, d                                       ; $5443: $42
    ld e, d                                       ; $5444: $5a
    jr nz, @+$01                                  ; $5445: $20 $ff

    ld b, d                                       ; $5447: $42
    rst $38                                       ; $5448: $ff
    inc d                                         ; $5449: $14
    rst $38                                       ; $544a: $ff
    adc b                                         ; $544b: $88
    ld [bc], a                                    ; $544c: $02
    rst $38                                       ; $544d: $ff
    ld [hl-], a                                   ; $544e: $32
    rst $38                                       ; $544f: $ff
    ld [hl], l                                    ; $5450: $75
    rst $38                                       ; $5451: $ff
    ld a, [$128b]                                 ; $5452: $fa $8b $12
    rla                                           ; $5455: $17
    nop                                           ; $5456: $00
    add sp, $6b                                   ; $5457: $e8 $6b
    inc d                                         ; $5459: $14
    rst $10                                       ; $545a: $d7
    jr c, @+$2f                                   ; $545b: $38 $2d

    ld a, [c]                                     ; $545d: $f2
    ld l, e                                       ; $545e: $6b
    ld bc, $b794                                  ; $545f: $01 $94 $b7
    ld c, b                                       ; $5462: $48
    ld e, a                                       ; $5463: $5f
    and b                                         ; $5464: $a0
    cp $01                                        ; $5465: $fe $01
    inc e                                         ; $5467: $1c
    ld a, [hl+]                                   ; $5468: $2a
    nop                                           ; $5469: $00
    ld a, [hl-]                                   ; $546a: $3a
    ld sp, hl                                     ; $546b: $f9
    ld de, $3af9                                  ; $546c: $11 $f9 $3a
    pop af                                        ; $546f: $f1
    ld de, $00f1                                  ; $5470: $11 $f1 $00
    rst $18                                       ; $5473: $df
    add hl, bc                                    ; $5474: $09
    rst $18                                       ; $5475: $df
    inc bc                                        ; $5476: $03
    rst $38                                       ; $5477: $ff
    ld hl, $50ff                                  ; $5478: $21 $ff $50
    jr nz, @+$01                                  ; $547b: $20 $ff

    add c                                         ; $547d: $81
    inc b                                         ; $547e: $04
    nop                                           ; $547f: $00
    add h                                         ; $5480: $84
    rst $38                                       ; $5481: $ff
    jp nc, $02c7                                  ; $5482: $d2 $c7 $02

    nop                                           ; $5485: $00
    add e                                         ; $5486: $83
    inc bc                                        ; $5487: $03
    add a                                         ; $5488: $87
    ld b, $cf                                     ; $5489: $06 $cf
    add h                                         ; $548b: $84
    rst $20                                       ; $548c: $e7
    ld b, [hl]                                    ; $548d: $46
    nop                                           ; $548e: $00
    rst $38                                       ; $548f: $ff
    inc l                                         ; $5490: $2c
    rst $38                                       ; $5491: $ff
    ld e, d                                       ; $5492: $5a
    rst $38                                       ; $5493: $ff
    cp h                                          ; $5494: $bc
    rst $28                                       ; $5495: $ef
    ld bc, $df02                                  ; $5496: $01 $02 $df
    inc b                                         ; $5499: $04
    rst $38                                       ; $549a: $ff
    ld [$02bf], sp                                ; $549b: $08 $bf $02
    inc h                                         ; $549e: $24
    nop                                           ; $549f: $00
    dec hl                                        ; $54a0: $2b
    nop                                           ; $54a1: $00
    rst $38                                       ; $54a2: $ff
    ld b, l                                       ; $54a3: $45
    rst $38                                       ; $54a4: $ff
    ld l, a                                       ; $54a5: $6f
    inc [hl]                                      ; $54a6: $34
    di                                            ; $54a7: $f3
    ld [de], a                                    ; $54a8: $12
    pop af                                        ; $54a9: $f1
    ld a, [bc]                                    ; $54aa: $0a
    add hl, bc                                    ; $54ab: $09
    ldh a, [rTAC]                                 ; $54ac: $f0 $07
    ld hl, sp-$46                                 ; $54ae: $f8 $ba
    ld a, [de]                                    ; $54b0: $1a
    ld [$0ac0], sp                                ; $54b1: $08 $c0 $0a
    nop                                           ; $54b4: $00
    dec bc                                        ; $54b5: $0b
    ld a, a                                       ; $54b6: $7f
    nop                                           ; $54b7: $00
    ret nz                                        ; $54b8: $c0

    ccf                                           ; $54b9: $3f
    jp z, $101a                                   ; $54ba: $ca $1a $10

    db $10                                        ; $54bd: $10
    db $10                                        ; $54be: $10
    inc bc                                        ; $54bf: $03
    db $10                                        ; $54c0: $10
    and c                                         ; $54c1: $a1
    jp c, $0412                                   ; $54c2: $da $12 $04

    jr nz, jr_0a2_54d7                            ; $54c5: $20 $10

    cp $00                                        ; $54c7: $fe $00
    inc bc                                        ; $54c9: $03
    db $fc                                        ; $54ca: $fc
    ld [$402a], a                                 ; $54cb: $ea $2a $40
    ld b, h                                       ; $54ce: $44
    ld l, [hl]                                    ; $54cf: $6e
    ld [bc], a                                    ; $54d0: $02
    sub d                                         ; $54d1: $92
    rst $38                                       ; $54d2: $ff
    dec l                                         ; $54d3: $2d
    rst $38                                       ; $54d4: $ff
    ld a, d                                       ; $54d5: $7a
    rst $38                                       ; $54d6: $ff

jr_0a2_54d7:
    ld b, h                                       ; $54d7: $44
    push af                                       ; $54d8: $f5
    dec hl                                        ; $54d9: $2b
    inc de                                        ; $54da: $13
    ld hl, $0aff                                  ; $54db: $21 $ff $0a
    or d                                          ; $54de: $b2
    nop                                           ; $54df: $00
    ld l, d                                       ; $54e0: $6a
    rst $38                                       ; $54e1: $ff
    db $10                                        ; $54e2: $10
    push de                                       ; $54e3: $d5
    rst $38                                       ; $54e4: $ff
    db $fc                                        ; $54e5: $fc

jr_0a2_54e6:
    dec sp                                        ; $54e6: $3b
    inc de                                        ; $54e7: $13
    ld [$41ff], sp                                ; $54e8: $08 $ff $41
    rst $38                                       ; $54eb: $ff
    ld bc, $ff94                                  ; $54ec: $01 $94 $ff
    ld c, l                                       ; $54ef: $4d
    rst $38                                       ; $54f0: $ff
    ld a, [hl-]                                   ; $54f1: $3a
    rst $38                                       ; $54f2: $ff
    ld [hl], a                                    ; $54f3: $77
    ld c, e                                       ; $54f4: $4b
    inc de                                        ; $54f5: $13
    ld b, b                                       ; $54f6: $40
    ld [bc], a                                    ; $54f7: $02
    ret nc                                        ; $54f8: $d0

    nop                                           ; $54f9: $00
    and b                                         ; $54fa: $a0
    rst $38                                       ; $54fb: $ff
    ld c, e                                       ; $54fc: $4b
    rst $38                                       ; $54fd: $ff
    ld d, $ff                                     ; $54fe: $16 $ff
    ld h, b                                       ; $5500: $60
    db $ed                                        ; $5501: $ed
    ld e, e                                       ; $5502: $5b
    dec de                                        ; $5503: $1b
    inc sp                                        ; $5504: $33
    inc hl                                        ; $5505: $23

jr_0a2_5506:
    rst $30                                       ; $5506: $f7

Call_0a2_5507:
    ld [$14eb], sp                                ; $5507: $08 $eb $14
    rst $18                                       ; $550a: $df
    nop                                           ; $550b: $00

jr_0a2_550c:
    jr nz, jr_0a2_550c                            ; $550c: $20 $fe

    ld bc, $f8b5                                  ; $550e: $01 $b5 $f8
    or e                                          ; $5511: $b3
    ld c, h                                       ; $5512: $4c
    sub $02                                       ; $5513: $d6 $02
    cpl                                           ; $5515: $2f
    xor d                                         ; $5516: $aa
    ld d, l                                       ; $5517: $55
    rst $30                                       ; $5518: $f7
    ld [$6dfb], sp                                ; $5519: $08 $fb $6d
    db $10                                        ; $551c: $10
    ld l, l                                       ; $551d: $6d
    nop                                           ; $551e: $00
    ld [de], a                                    ; $551f: $12
    sbc a                                         ; $5520: $9f
    ld h, b                                       ; $5521: $60
    xor a                                         ; $5522: $af

jr_0a2_5523:
    ret nc                                        ; $5523: $d0

    rst $18                                       ; $5524: $df
    jr nz, jr_0a2_54e6                            ; $5525: $20 $bf

    ld b, b                                       ; $5527: $40
    ld b, b                                       ; $5528: $40
    ld e, e                                       ; $5529: $5b
    dec de                                        ; $552a: $1b
    db $fd                                        ; $552b: $fd
    ld [bc], a                                    ; $552c: $02
    ei                                            ; $552d: $fb
    inc b                                         ; $552e: $04
    push de                                       ; $552f: $d5
    ld a, [hl+]                                   ; $5530: $2a
    ld [de], a                                    ; $5531: $12
    cp e                                          ; $5532: $bb
    ld b, h                                       ; $5533: $44
    rst $30                                       ; $5534: $f7
    xor e                                         ; $5535: $ab
    db $10                                        ; $5536: $10
    rst $38                                       ; $5537: $ff
    nop                                           ; $5538: $00
    inc l                                         ; $5539: $2c
    ld c, d                                       ; $553a: $4a
    ld d, b                                       ; $553b: $50
    nop                                           ; $553c: $00
    adc a                                         ; $553d: $8f
    add b                                         ; $553e: $80
    adc a                                         ; $553f: $8f
    ld e, l                                       ; $5540: $5d
    ld hl, $40fe                                  ; $5541: $21 $fe $40
    ld e, a                                       ; $5544: $5f
    nop                                           ; $5545: $00
    jr nz, jr_0a2_5506                            ; $5546: $20 $be

    nop                                           ; $5548: $00
    ld e, l                                       ; $5549: $5d
    ld hl, $122b                                  ; $554a: $21 $2b $12
    ld e, d                                       ; $554d: $5a
    inc b                                         ; $554e: $04
    ld hl, $112a                                  ; $554f: $21 $2a $11
    jr nz, jr_0a2_5523                            ; $5552: $20 $cf

    ld d, d                                       ; $5554: $52

jr_0a2_5555:
    ld [bc], a                                    ; $5555: $02
    rrca                                          ; $5556: $0f
    ldh [rLCDC], a                                ; $5557: $e0 $40
    rra                                           ; $5559: $1f
    sbc d                                         ; $555a: $9a
    dec de                                        ; $555b: $1b
    ld [bc], a                                    ; $555c: $02
    rst $38                                       ; $555d: $ff
    jr nc, jr_0a2_5555                            ; $555e: $30 $f5

    db $10                                        ; $5560: $10
    db $f4                                        ; $5561: $f4
    rrca                                          ; $5562: $0f
    nop                                           ; $5563: $00
    rst $30                                       ; $5564: $f7
    nop                                           ; $5565: $00
    ldh a, [$60]                                  ; $5566: $f0 $60
    add hl, hl                                    ; $5568: $29

jr_0a2_5569:
    halt                                          ; $5569: $76
    ld a, [bc]                                    ; $556a: $0a
    inc b                                         ; $556b: $04
    jr nz, jr_0a2_556e                            ; $556c: $20 $00

jr_0a2_556e:
    ld de, $4405                                  ; $556e: $11 $05 $44
    rst $38                                       ; $5571: $ff
    sub c                                         ; $5572: $91
    rst $38                                       ; $5573: $ff
    ld [hl+], a                                   ; $5574: $22
    or b                                          ; $5575: $b0
    nop                                           ; $5576: $00
    or [hl]                                       ; $5577: $b6
    and b                                         ; $5578: $a0
    jr nz, jr_0a2_557e                            ; $5579: $20 $03

    ei                                            ; $557b: $fb
    inc b                                         ; $557c: $04
    push af                                       ; $557d: $f5

jr_0a2_557e:
    ld a, [bc]                                    ; $557e: $0a
    db $eb                                        ; $557f: $eb
    inc d                                         ; $5580: $14

jr_0a2_5581:
    sub $09                                       ; $5581: $d6 $09
    sub b                                         ; $5583: $90
    jr jr_0a2_5586                                ; $5584: $18 $00

jr_0a2_5586:
    ld c, l                                       ; $5586: $4d
    di                                            ; $5587: $f3
    jp c, $d43f                                   ; $5588: $da $3f $d4

    jr nz, @-$44                                  ; $558b: $20 $ba

    ld b, b                                       ; $558d: $40
    nop                                           ; $558e: $00
    sbc a                                         ; $558f: $9f
    ld h, b                                       ; $5590: $60
    rst $20                                       ; $5591: $e7
    jr c, jr_0a2_5581                             ; $5592: $38 $ed

    rra                                           ; $5594: $1f
    cp $01                                        ; $5595: $fe $01
    nop                                           ; $5597: $00
    jr nc, jr_0a2_5569                            ; $5598: $30 $cf

    ld d, [hl]                                    ; $559a: $56
    ld hl, sp+$4d                                 ; $559b: $f8 $4d
    jr nc, @-$5b                                  ; $559d: $30 $a3

    inc e                                         ; $559f: $1c
    nop                                           ; $55a0: $00
    db $ed                                        ; $55a1: $ed
    rra                                           ; $55a2: $1f
    adc a                                         ; $55a3: $8f
    ld [hl], b                                    ; $55a4: $70
    rst $10                                       ; $55a5: $d7
    add sp, -$52                                  ; $55a6: $e8 $ae
    ld d, c                                       ; $55a8: $51

jr_0a2_55a9:
    nop                                           ; $55a9: $00
    ld a, [hl]                                    ; $55aa: $7e
    ld sp, hl                                     ; $55ab: $f9
    cp l                                          ; $55ac: $bd
    jp Jump_0a2_7c44                              ; $55ad: $c3 $44 $7c


    ld bc, $0002                                  ; $55b0: $01 $02 $00
    and e                                         ; $55b3: $a3
    inc a                                         ; $55b4: $3c
    adc [hl]                                      ; $55b5: $8e
    or c                                          ; $55b6: $b1
    sbc h                                         ; $55b7: $9c
    and d                                         ; $55b8: $a2
    adc b                                         ; $55b9: $88
    or h                                          ; $55ba: $b4
    nop                                           ; $55bb: $00
    sub [hl]                                      ; $55bc: $96
    and c                                         ; $55bd: $a1
    ld sp, $6640                                  ; $55be: $31 $40 $66
    sub [hl]                                      ; $55c1: $96
    jp $0025                                      ; $55c2: $c3 $25 $00


    add a                                         ; $55c5: $87
    ld c, e                                       ; $55c6: $4b
    ld a, [de]                                    ; $55c7: $1a
    rlca                                          ; $55c8: $07
    ld h, $5f                                     ; $55c9: $26 $5f
    ld a, h                                       ; $55cb: $7c
    adc a                                         ; $55cc: $8f
    ret nz                                        ; $55cd: $c0

    ld [hl], b                                    ; $55ce: $70
    ld e, b                                       ; $55cf: $58
    ld d, b                                       ; $55d0: $50
    ld bc, $00af                                  ; $55d1: $01 $af $00
    cpl                                           ; $55d4: $2f
    nop                                           ; $55d5: $00
    rst $28                                       ; $55d6: $ef
    nop                                           ; $55d7: $00
    ld b, d                                       ; $55d8: $42
    rrca                                          ; $55d9: $0f
    ld a, [hl-]                                   ; $55da: $3a
    inc l                                         ; $55db: $2c
    db $fd                                        ; $55dc: $fd
    ld [bc], a                                    ; $55dd: $02
    ld a, [$4505]                                 ; $55de: $fa $05 $45
    inc l                                         ; $55e1: $2c
    cp a                                          ; $55e2: $bf
    nop                                           ; $55e3: $00
    ld b, b                                       ; $55e4: $40
    ld a, a                                       ; $55e5: $7f
    add b                                         ; $55e6: $80
    rst $38                                       ; $55e7: $ff
    nop                                           ; $55e8: $00
    rst $18                                       ; $55e9: $df
    jr nz, jr_0a2_55a9                            ; $55ea: $20 $bd

    nop                                           ; $55ec: $00
    ld b, d                                       ; $55ed: $42
    ld e, e                                       ; $55ee: $5b
    and h                                         ; $55ef: $a4
    or a                                          ; $55f0: $b7
    ld c, b                                       ; $55f1: $48
    ld a, a                                       ; $55f2: $7f
    add b                                         ; $55f3: $80
    cp [hl]                                       ; $55f4: $be
    inc b                                         ; $55f5: $04
    ld b, c                                       ; $55f6: $41
    ld a, l                                       ; $55f7: $7d
    add d                                         ; $55f8: $82
    rst $38                                       ; $55f9: $ff
    nop                                           ; $55fa: $00
    inc d                                         ; $55fb: $14
    ld [$10ef], sp                                ; $55fc: $08 $ef $10
    nop                                           ; $55ff: $00
    ei                                            ; $5600: $fb
    inc b                                         ; $5601: $04
    rst $30                                       ; $5602: $f7
    ld [$10ef], sp                                ; $5603: $08 $ef $10
    rst $10                                       ; $5606: $d7
    jr z, @+$1a                                   ; $5607: $28 $18

    rst $28                                       ; $5609: $ef
    db $10                                        ; $560a: $10
    rst $18                                       ; $560b: $df
    push bc                                       ; $560c: $c5
    db $10                                        ; $560d: $10
    ld e, $29                                     ; $560e: $1e $29
    ld a, l                                       ; $5610: $7d
    add d                                         ; $5611: $82
    ei                                            ; $5612: $fb
    ld bc, $fd04                                  ; $5613: $01 $04 $fd
    ld [bc], a                                    ; $5616: $02
    cp e                                          ; $5617: $bb
    ld b, h                                       ; $5618: $44
    ld [hl], a                                    ; $5619: $77
    adc b                                         ; $561a: $88
    adc e                                         ; $561b: $8b
    inc c                                         ; $561c: $0c

jr_0a2_561d:
    jr nz, jr_0a2_561d                            ; $561d: $20 $fe

    ld bc, $095a                                  ; $561f: $01 $5a $09
    db $ed                                        ; $5622: $ed
    ld [de], a                                    ; $5623: $12
    ret nc                                        ; $5624: $d0

    cpl                                           ; $5625: $2f
    jp hl                                         ; $5626: $e9


    ld bc, $dc10                                  ; $5627: $01 $10 $dc
    jr nz, jr_0a2_5653                            ; $562a: $20 $27

    ld hl, sp+$6b                                 ; $562c: $f8 $6b
    rra                                           ; $562e: $1f
    and c                                         ; $562f: $a1
    inc c                                         ; $5630: $0c
    nop                                           ; $5631: $00
    ld e, a                                       ; $5632: $5f
    and b                                         ; $5633: $a0
    xor [hl]                                      ; $5634: $ae
    ld d, c                                       ; $5635: $51
    dec d                                         ; $5636: $15
    ld [$14ab], a                                 ; $5637: $ea $ab $14
    nop                                           ; $563a: $00
    adc l                                         ; $563b: $8d
    ld [hl], d                                    ; $563c: $72
    jp c, $fee5                                   ; $563d: $da $e5 $fe

    ld bc, $04fb                                  ; $5640: $01 $fb $04
    inc h                                         ; $5643: $24
    cp $01                                        ; $5644: $fe $01
    halt                                          ; $5646: $76
    ld [$08f7], sp                                ; $5647: $08 $f7 $08
    ld l, [hl]                                    ; $564a: $6e
    ld [$0ff0], sp                                ; $564b: $08 $f0 $0f
    ld [bc], a                                    ; $564e: $02
    db $eb                                        ; $564f: $eb
    db $10                                        ; $5650: $10
    and $19                                       ; $5651: $e6 $19

jr_0a2_5653:
    or $0f                                        ; $5653: $f6 $0f
    ld a, b                                       ; $5655: $78
    ld [$00bf], sp                                ; $5656: $08 $bf $00
    ld b, b                                       ; $5659: $40
    ld e, a                                       ; $565a: $5f
    and b                                         ; $565b: $a0
    push de                                       ; $565c: $d5
    ld [hl+], a                                   ; $565d: $22
    xor b                                         ; $565e: $a8
    pop bc                                        ; $565f: $c1
    sbc [hl]                                      ; $5660: $9e
    ld bc, $65e1                                  ; $5661: $01 $e1 $65
    ld a, [$5dbe]                                 ; $5664: $fa $be $5d
    push de                                       ; $5667: $d5
    ld a, [hl+]                                   ; $5668: $2a
    db $dd                                        ; $5669: $dd
    inc c                                         ; $566a: $0c
    nop                                           ; $566b: $00
    ld a, a                                       ; $566c: $7f
    add b                                         ; $566d: $80
    cp a                                          ; $566e: $bf
    ld b, b                                       ; $566f: $40
    rst $28                                       ; $5670: $ef
    db $10                                        ; $5671: $10
    ld e, a                                       ; $5672: $5f
    and b                                         ; $5673: $a0
    ldh [$90], a                                  ; $5674: $e0 $90
    add hl, de                                    ; $5676: $19
    and b                                         ; $5677: $a0
    ld [$29c0], sp                                ; $5678: $08 $c0 $29
    rst $28                                       ; $567b: $ef
    db $10                                        ; $567c: $10
    ld d, b                                       ; $567d: $50
    xor a                                         ; $567e: $af
    xor d                                         ; $567f: $aa
    ld b, b                                       ; $5680: $40
    ld d, b                                       ; $5681: $50
    or h                                          ; $5682: $b4

jr_0a2_5683:
    jr jr_0a2_5683                                ; $5683: $18 $fe

    ld bc, $20df                                  ; $5685: $01 $df $20
    cp e                                          ; $5688: $bb
    ld b, h                                       ; $5689: $44
    add hl, bc                                    ; $568a: $09
    ld a, a                                       ; $568b: $7f
    add b                                         ; $568c: $80
    cp $01                                        ; $568d: $fe $01
    add d                                         ; $568f: $82
    ld [$8877], sp                                ; $5690: $08 $77 $88
    ld [hl-], a                                   ; $5693: $32
    ld [$1b90], sp                                ; $5694: $08 $90 $1b
    dec c                                         ; $5697: $0d
    cp [hl]                                       ; $5698: $be
    ld b, c                                       ; $5699: $41
    ldh [$08], a                                  ; $569a: $e0 $08
    cp $01                                        ; $569c: $fe $01
    db $dd                                        ; $569e: $dd
    ld [hl+], a                                   ; $569f: $22
    nop                                           ; $56a0: $00
    cp d                                          ; $56a1: $ba
    ld b, h                                       ; $56a2: $44
    pop bc                                        ; $56a3: $c1
    ld a, $25                                     ; $56a4: $3e $25
    jp $02bf                                      ; $56a6: $c3 $bf $02


    nop                                           ; $56a9: $00
    ld d, h                                       ; $56aa: $54
    and b                                         ; $56ab: $a0
    rst $38                                       ; $56ac: $ff
    jr nz, jr_0a2_56b6                            ; $56ad: $20 $07

    ld hl, sp+$75                                 ; $56af: $f8 $75
    rrca                                          ; $56b1: $0f
    nop                                           ; $56b2: $00
    xor d                                         ; $56b3: $aa
    inc b                                         ; $56b4: $04
    ld sp, hl                                     ; $56b5: $f9

jr_0a2_56b6:
    ld b, $33                                     ; $56b6: $06 $33
    rst $08                                       ; $56b8: $cf
    ret                                           ; $56b9: $c9


    ldh a, [$80]                                  ; $56ba: $f0 $80
    or h                                          ; $56bc: $b4
    ld [$2fd0], sp                                ; $56bd: $08 $d0 $2f
    xor c                                         ; $56c0: $a9
    ld d, b                                       ; $56c1: $50
    ld c, [hl]                                    ; $56c2: $4e
    or b                                          ; $56c3: $b0
    di                                            ; $56c4: $f3
    ld bc, $b61c                                  ; $56c5: $01 $1c $b6

jr_0a2_56c8:
    ld c, a                                       ; $56c8: $4f
    cp $01                                        ; $56c9: $fe $01
    ld a, a                                       ; $56cb: $7f
    add c                                         ; $56cc: $81
    ld b, $09                                     ; $56cd: $06 $09
    nop                                           ; $56cf: $00
    ld [hl], l                                    ; $56d0: $75
    adc d                                         ; $56d1: $8a
    xor e                                         ; $56d2: $ab
    ld d, h                                       ; $56d3: $54
    inc bc                                        ; $56d4: $03
    db $fc                                        ; $56d5: $fc
    and h                                         ; $56d6: $a4
    inc bc                                        ; $56d7: $03
    nop                                           ; $56d8: $00
    ld a, l                                       ; $56d9: $7d
    add d                                         ; $56da: $82
    ld [hl-], a                                   ; $56db: $32
    call $fa75                                    ; $56dc: $cd $75 $fa
    ld a, [$9105]                                 ; $56df: $fa $05 $91
    ld b, $0a                                     ; $56e2: $06 $0a
    ld l, a                                       ; $56e4: $6f
    sub b                                         ; $56e5: $90
    ld [hl+], a                                   ; $56e6: $22
    add hl, bc                                    ; $56e7: $09
    adc $31                                       ; $56e8: $ce $31
    xor $d4                                       ; $56ea: $ee $d4
    nop                                           ; $56ec: $00
    add a                                         ; $56ed: $87
    jr nz, jr_0a2_56fa                            ; $56ee: $20 $0a

    ld [hl], a                                    ; $56f0: $77
    adc b                                         ; $56f1: $88
    xor a                                         ; $56f2: $af
    ld d, b                                       ; $56f3: $50
    ld h, [hl]                                    ; $56f4: $66
    ld [$08ce], sp                                ; $56f5: $08 $ce $08
    inc b                                         ; $56f8: $04
    add hl, bc                                    ; $56f9: $09

jr_0a2_56fa:
    pop hl                                        ; $56fa: $e1
    ld h, $18                                     ; $56fb: $26 $18
    jr nc, jr_0a2_5709                            ; $56fd: $30 $0a

    inc l                                         ; $56ff: $2c
    ld a, [hl+]                                   ; $5700: $2a
    rst $38                                       ; $5701: $ff
    nop                                           ; $5702: $00
    ld a, [$ba05]                                 ; $5703: $fa $05 $ba
    jr z, jr_0a2_56c8                             ; $5706: $28 $c0

    ld c, h                                       ; $5708: $4c

jr_0a2_5709:
    ld a, [hl+]                                   ; $5709: $2a
    ld c, b                                       ; $570a: $48
    ld a, [hl+]                                   ; $570b: $2a

jr_0a2_570c:
    cp a                                          ; $570c: $bf
    ld b, b                                       ; $570d: $40
    ld l, a                                       ; $570e: $6f
    sub b                                         ; $570f: $90
    scf                                           ; $5710: $37
    ret z                                         ; $5711: $c8

    nop                                           ; $5712: $00
    jp z, $b535                                   ; $5713: $ca $35 $b5

jr_0a2_5716:
    ld c, d                                       ; $5716: $4a
    ld [$bd15], a                                 ; $5717: $ea $15 $bd
    ld b, d                                       ; $571a: $42
    nop                                           ; $571b: $00
    ld sp, hl                                     ; $571c: $f9
    ld b, $f6                                     ; $571d: $06 $f6
    add hl, bc                                    ; $571f: $09
    db $e4                                        ; $5720: $e4
    jr jr_0a2_5716                                ; $5721: $18 $f3

    inc e                                         ; $5723: $1c
    nop                                           ; $5724: $00
    sub $2f                                       ; $5725: $d6 $2f
    push af                                       ; $5727: $f5
    ld a, [bc]                                    ; $5728: $0a
    dec bc                                        ; $5729: $0b
    db $f4                                        ; $572a: $f4
    sub a                                         ; $572b: $97
    ld [$e300], sp                                ; $572c: $08 $00 $e3
    inc e                                         ; $572f: $1c
    call nc, $a3e3                                ; $5730: $d4 $e3 $a3
    ld b, b                                       ; $5733: $40
    sbc l                                         ; $5734: $9d
    ld h, e                                       ; $5735: $63
    nop                                           ; $5736: $00
    jp Jump_000_35fe                              ; $5737: $c3 $fe $35


    ld a, [bc]                                    ; $573a: $0a
    rst $20                                       ; $573b: $e7
    jr jr_0a2_570c                                ; $573c: $18 $ce

    ld sp, $b500                                  ; $573e: $31 $00 $b5
    ld [$10af], a                                 ; $5741: $ea $af $10
    push hl                                       ; $5744: $e5
    ld a, [de]                                    ; $5745: $1a
    dec bc                                        ; $5746: $0b
    db $f4                                        ; $5747: $f4
    nop                                           ; $5748: $00
    ld [hl], a                                    ; $5749: $77
    ret z                                         ; $574a: $c8

    xor [hl]                                      ; $574b: $ae
    ld d, b                                       ; $574c: $50
    ld c, l                                       ; $574d: $4d
    or b                                          ; $574e: $b0
    db $eb                                        ; $574f: $eb
    inc e                                         ; $5750: $1c
    ld [hl-], a                                   ; $5751: $32
    db $db                                        ; $5752: $db
    daa                                           ; $5753: $27
    adc [hl]                                      ; $5754: $8e
    add hl, bc                                    ; $5755: $09
    db $fd                                        ; $5756: $fd
    dec d                                         ; $5757: $15
    rst $38                                       ; $5758: $ff
    add b                                         ; $5759: $80
    ld [bc], a                                    ; $575a: $02
    nop                                           ; $575b: $00
    ret nz                                        ; $575c: $c0

    ld [hl], e                                    ; $575d: $73
    cp a                                          ; $575e: $bf
    inc b                                         ; $575f: $04
    jr jr_0a2_5782                                ; $5760: $18 $20

    ld b, $12                                     ; $5762: $06 $12
    ld b, $aa                                     ; $5764: $06 $aa
    ld d, l                                       ; $5766: $55
    jr @+$30                                      ; $5767: $18 $2e

    ld sp, hl                                     ; $5769: $f9
    dec b                                         ; $576a: $05
    call z, $01d2                                 ; $576b: $cc $d2 $01
    sub h                                         ; $576e: $94
    jr c, jr_0a2_57db                             ; $576f: $38 $6a

    sub l                                         ; $5771: $95
    db $e4                                        ; $5772: $e4
    add hl, de                                    ; $5773: $19
    sbc h                                         ; $5774: $9c
    jr jr_0a2_57f4                                ; $5775: $18 $7d

    add d                                         ; $5777: $82
    ld e, $82                                     ; $5778: $1e $82
    ld a, l                                       ; $577a: $7d
    add c                                         ; $577b: $81
    inc a                                         ; $577c: $3c
    jr nc, jr_0a2_57c3                            ; $577d: $30 $44

    ld [$0e10], sp                                ; $577f: $08 $10 $0e

jr_0a2_5782:
    ld a, [$fe09]                                 ; $5782: $fa $09 $fe
    nop                                           ; $5785: $00
    ld bc, $827d                                  ; $5786: $01 $7d $82
    ld a, [$fc05]                                 ; $5789: $fa $05 $fc
    inc bc                                        ; $578c: $03
    ld a, [$0400]                                 ; $578d: $fa $00 $04
    rst $38                                       ; $5790: $ff
    inc b                                         ; $5791: $04
    pop hl                                        ; $5792: $e1
    ld e, $d2                                     ; $5793: $1e $d2
    ld hl, $10fe                                  ; $5795: $21 $fe $10
    ld de, $0efd                                  ; $5798: $11 $fd $0e
    ld a, [$ae09]                                 ; $579b: $fa $09 $ae

jr_0a2_579e:
    ld d, c                                       ; $579e: $51
    db $dd                                        ; $579f: $dd
    ld [hl+], a                                   ; $57a0: $22
    ld hl, sp+$0e                                 ; $57a1: $f8 $0e
    add hl, hl                                    ; $57a3: $29
    ld l, $0a                                     ; $57a4: $2e $0a
    inc [hl]                                      ; $57a6: $34
    dec de                                        ; $57a7: $1b
    xor h                                         ; $57a8: $ac
    ld a, [bc]                                    ; $57a9: $0a
    inc b                                         ; $57aa: $04
    ld a, [bc]                                    ; $57ab: $0a
    ld a, a                                       ; $57ac: $7f
    add b                                         ; $57ad: $80
    sbc a                                         ; $57ae: $9f
    nop                                           ; $57af: $00
    ld h, b                                       ; $57b0: $60
    ld b, e                                       ; $57b1: $43
    db $fc                                        ; $57b2: $fc
    call nc, $a93f                                ; $57b3: $d4 $3f $a9
    ld b, b                                       ; $57b6: $40
    sbc [hl]                                      ; $57b7: $9e
    nop                                           ; $57b8: $00
    ld h, c                                       ; $57b9: $61
    pop hl                                        ; $57ba: $e1
    ccf                                           ; $57bb: $3f
    rst $10                                       ; $57bc: $d7
    ld l, $eb                                     ; $57bd: $2e $eb
    inc d                                         ; $57bf: $14
    or $00                                        ; $57c0: $f6 $00
    add hl, bc                                    ; $57c2: $09

jr_0a2_57c3:
    ld a, [hl]                                    ; $57c3: $7e
    add c                                         ; $57c4: $81
    db $dd                                        ; $57c5: $dd
    ld [hl+], a                                   ; $57c6: $22
    cpl                                           ; $57c7: $2f
    ret nc                                        ; $57c8: $d0

    rst $18                                       ; $57c9: $df
    ldh a, [$c0]                                  ; $57ca: $f0 $c0
    ld bc, $0940                                  ; $57cc: $01 $40 $09
    ld h, h                                       ; $57cf: $64
    ld a, [bc]                                    ; $57d0: $0a
    ld d, d                                       ; $57d1: $52
    ld a, [de]                                    ; $57d2: $1a
    rst $30                                       ; $57d3: $f7
    ld [$15ea], sp                                ; $57d4: $08 $ea $15
    sub b                                         ; $57d7: $90
    cp l                                          ; $57d8: $bd
    ld c, $2f                                     ; $57d9: $0e $2f

jr_0a2_57db:
    db $10                                        ; $57db: $10
    ld d, [hl]                                    ; $57dc: $56
    ld [bc], a                                    ; $57dd: $02
    add sp, -$11                                  ; $57de: $e8 $ef
    db $10                                        ; $57e0: $10
    sbc $06                                       ; $57e1: $de $06
    ld hl, $42bd                                  ; $57e3: $21 $bd $42
    ei                                            ; $57e6: $fb
    inc b                                         ; $57e7: $04
    call nc, $9208                                ; $57e8: $d4 $08 $92
    ld a, [bc]                                    ; $57eb: $0a
    push af                                       ; $57ec: $f5
    nop                                           ; $57ed: $00
    ld a, [bc]                                    ; $57ee: $0a
    cp a                                          ; $57ef: $bf
    ld b, b                                       ; $57f0: $40
    rst $10                                       ; $57f1: $d7
    jr z, jr_0a2_579e                             ; $57f2: $28 $aa

jr_0a2_57f4:
    ld d, l                                       ; $57f4: $55
    ld b, l                                       ; $57f5: $45
    ld a, c                                       ; $57f6: $79
    cp d                                          ; $57f7: $ba
    ld c, [hl]                                    ; $57f8: $4e
    add hl, de                                    ; $57f9: $19
    jr nz, jr_0a2_5804                            ; $57fa: $20 $08

    ld c, b                                       ; $57fc: $48
    add hl, sp                                    ; $57fd: $39
    add h                                         ; $57fe: $84
    ld a, [bc]                                    ; $57ff: $0a
    xor a                                         ; $5800: $af
    ld d, b                                       ; $5801: $50
    adc b                                         ; $5802: $88
    ld a, [de]                                    ; $5803: $1a

jr_0a2_5804:
    add b                                         ; $5804: $80
    adc [hl]                                      ; $5805: $8e
    ld a, [bc]                                    ; $5806: $0a
    ei                                            ; $5807: $fb
    inc b                                         ; $5808: $04
    or $09                                        ; $5809: $f6 $09
    jp hl                                         ; $580b: $e9


    ld d, $f6                                     ; $580c: $16 $f6
    nop                                           ; $580e: $00
    ld [$0ef9], sp                                ; $580f: $08 $f9 $0e
    cp $07                                        ; $5812: $fe $07
    cp b                                          ; $5814: $b8
    ld b, a                                       ; $5815: $47
    ld d, e                                       ; $5816: $53
    nop                                           ; $5817: $00
    add b                                         ; $5818: $80
    dec a                                         ; $5819: $3d
    jp $ff5a                                      ; $581a: $c3 $5a $ff


    dec de                                        ; $581d: $1b
    ld b, $94                                     ; $581e: $06 $94
    nop                                           ; $5820: $00
    inc bc                                        ; $5821: $03
    ld hl, sp+$07                                 ; $5822: $f8 $07
    ld h, c                                       ; $5824: $61
    sbc [hl]                                      ; $5825: $9e
    rst $28                                       ; $5826: $ef
    db $10                                        ; $5827: $10
    ld d, l                                       ; $5828: $55
    nop                                           ; $5829: $00
    xor d                                         ; $582a: $aa
    ld [bc], a                                    ; $582b: $02
    db $fd                                        ; $582c: $fd
    xor c                                         ; $582d: $a9
    ld b, $d6                                     ; $582e: $06 $d6
    ld bc, $07f9                                  ; $5830: $01 $f9 $07
    rlca                                          ; $5833: $07
    db $dd                                        ; $5834: $dd
    cp $ae                                        ; $5835: $fe $ae
    ld de, $2aa6                                  ; $5837: $11 $a6 $2a
    xor $0a                                       ; $583a: $ee $0a
    ld d, [hl]                                    ; $583c: $56
    ld a, [bc]                                    ; $583d: $0a
    nop                                           ; $583e: $00
    push af                                       ; $583f: $f5
    ld a, [bc]                                    ; $5840: $0a
    add sp, $17                                   ; $5841: $e8 $17
    ld a, [$b504]                                 ; $5843: $fa $04 $b5
    ld c, b                                       ; $5846: $48
    nop                                           ; $5847: $00
    ld e, a                                       ; $5848: $5f
    xor b                                         ; $5849: $a8
    and h                                         ; $584a: $a4
    ld e, a                                       ; $584b: $5f
    jp nc, $bc21                                  ; $584c: $d2 $21 $bc

    ld b, e                                       ; $584f: $43
    nop                                           ; $5850: $00
    ld c, l                                       ; $5851: $4d
    add d                                         ; $5852: $82
    ld a, $c3                                     ; $5853: $3e $c3
    or [hl]                                       ; $5855: $b6
    ld a, h                                       ; $5856: $7c
    ld l, c                                       ; $5857: $69
    stop                                          ; $5858: $10 $00
    adc a                                         ; $585a: $8f
    ld [hl], b                                    ; $585b: $70
    rst $20                                       ; $585c: $e7
    ld hl, sp+$58                                 ; $585d: $f8 $58
    xor a                                         ; $585f: $af
    xor a                                         ; $5860: $af
    ld d, e                                       ; $5861: $53
    nop                                           ; $5862: $00
    cp a                                          ; $5863: $bf
    ret nz                                        ; $5864: $c0

    db $db                                        ; $5865: $db
    db $e4                                        ; $5866: $e4
    or [hl]                                       ; $5867: $b6
    ret                                           ; $5868: $c9


    pop hl                                        ; $5869: $e1
    sbc $00                                       ; $586a: $de $00
    add d                                         ; $586c: $82
    db $fd                                        ; $586d: $fd
    call nz, $90fb                                ; $586e: $c4 $fb $90
    rst $28                                       ; $5871: $ef

jr_0a2_5872:
    ldh [$df], a                                  ; $5872: $e0 $df
    add b                                         ; $5874: $80
    ld d, b                                       ; $5875: $50
    rrca                                          ; $5876: $0f
    sbc h                                         ; $5877: $9c
    ld h, e                                       ; $5878: $63
    ld [hl-], a                                   ; $5879: $32
    call $bf4f                                    ; $587a: $cd $4f $bf
    rrca                                          ; $587d: $0f
    nop                                           ; $587e: $00
    ld hl, sp-$74                                 ; $587f: $f8 $8c
    ld a, b                                       ; $5881: $78
    dec e                                         ; $5882: $1d
    jp hl                                         ; $5883: $e9


    db $ed                                        ; $5884: $ed
    ld a, $eb                                     ; $5885: $3e $eb
    rra                                           ; $5887: $1f
    inc d                                         ; $5888: $14
    rst $10                                       ; $5889: $d7
    jr z, jr_0a2_58ba                             ; $588a: $28 $2e

    inc c                                         ; $588c: $0c
    or [hl]                                       ; $588d: $b6
    ld [$0aaa], sp                                ; $588e: $08 $aa $0a
    sbc b                                         ; $5891: $98
    add hl, de                                    ; $5892: $19
    xor d                                         ; $5893: $aa
    ld a, [hl+]                                   ; $5894: $2a
    pop hl                                        ; $5895: $e1
    sbc h                                         ; $5896: $9c
    ld bc, $09a0                                  ; $5897: $01 $a0 $09
    inc b                                         ; $589a: $04
    jr nc, jr_0a2_58a9                            ; $589b: $30 $0c

    ld sp, hl                                     ; $589d: $f9
    dec c                                         ; $589e: $0d
    ld sp, hl                                     ; $589f: $f9
    inc b                                         ; $58a0: $04
    ld c, b                                       ; $58a1: $48
    add b                                         ; $58a2: $80
    adc d                                         ; $58a3: $8a
    inc c                                         ; $58a4: $0c
    xor a                                         ; $58a5: $af
    ld d, b                                       ; $58a6: $50
    ld d, b                                       ; $58a7: $50
    xor a                                         ; $58a8: $af

jr_0a2_58a9:
    xor l                                         ; $58a9: $ad
    ld d, b                                       ; $58aa: $50
    ei                                            ; $58ab: $fb
    nop                                           ; $58ac: $00
    inc c                                         ; $58ad: $0c
    cp $07                                        ; $58ae: $fe $07
    rst $30                                       ; $58b0: $f7
    add hl, bc                                    ; $58b1: $09
    ei                                            ; $58b2: $fb
    inc b                                         ; $58b3: $04
    cp a                                          ; $58b4: $bf
    nop                                           ; $58b5: $00
    ld b, b                                       ; $58b6: $40
    rst $18                                       ; $58b7: $df
    jr nz, jr_0a2_5872                            ; $58b8: $20 $b8

jr_0a2_58ba:
    ld b, a                                       ; $58ba: $47
    ld b, [hl]                                    ; $58bb: $46
    cp b                                          ; $58bc: $b8
    dec l                                         ; $58bd: $2d
    dec b                                         ; $58be: $05
    rst $00                                       ; $58bf: $c7
    add [hl]                                      ; $58c0: $86
    ld bc, $817a                                  ; $58c1: $01 $7a $81
    ld b, b                                       ; $58c4: $40
    ld e, b                                       ; $58c5: $58
    ldh [rLCDC], a                                ; $58c6: $e0 $40
    nop                                           ; $58c8: $00
    jr c, jr_0a2_58cf                             ; $58c9: $38 $04

    ld hl, sp-$4f                                 ; $58cb: $f8 $b1
    inc sp                                        ; $58cd: $33
    ld b, b                                       ; $58ce: $40

jr_0a2_58cf:
    dec b                                         ; $58cf: $05
    ret nc                                        ; $58d0: $d0

    rrca                                          ; $58d1: $0f
    call $8332                                    ; $58d2: $cd $32 $83
    ld a, b                                       ; $58d5: $78
    ld a, h                                       ; $58d6: $7c
    db $d3                                        ; $58d7: $d3
    ld h, $60                                     ; $58d8: $26 $60
    ld d, $00                                     ; $58da: $16 $00
    rrca                                          ; $58dc: $0f
    db $10                                        ; $58dd: $10
    jr c, jr_0a2_5957                             ; $58de: $38 $77

    adc b                                         ; $58e0: $88
    and [hl]                                      ; $58e1: $a6
    nop                                           ; $58e2: $00
    ld e, c                                       ; $58e3: $59

jr_0a2_58e4:
    ld c, l                                       ; $58e4: $4d
    or d                                          ; $58e5: $b2
    jp nc, $e0ed                                  ; $58e6: $d2 $ed $e0

    rra                                           ; $58e9: $1f
    jr z, jr_0a2_58fc                             ; $58ea: $28 $10

    rla                                           ; $58ec: $17
    and b                                         ; $58ed: $a0
    sbc a                                         ; $58ee: $9f
    db $10                                        ; $58ef: $10
    rrca                                          ; $58f0: $0f
    or [hl]                                       ; $58f1: $b6
    ld c, c                                       ; $58f2: $49
    daa                                           ; $58f3: $27
    rst $18                                       ; $58f4: $df
    nop                                           ; $58f5: $00
    ld c, a                                       ; $58f6: $4f
    cp h                                          ; $58f7: $bc
    adc h                                         ; $58f8: $8c
    ld a, b                                       ; $58f9: $78
    jr jr_0a2_58e4                                ; $58fa: $18 $e8

jr_0a2_58fc:
    add hl, hl                                    ; $58fc: $29
    reti                                          ; $58fd: $d9


    nop                                           ; $58fe: $00
    sub b                                         ; $58ff: $90
    ldh a, [rIE]                                  ; $5900: $f0 $ff
    ld hl, sp-$01                                 ; $5902: $f8 $ff
    rst $38                                       ; $5904: $ff
    rst $28                                       ; $5905: $ef
    rst $08                                       ; $5906: $cf
    nop                                           ; $5907: $00
    call nc, $ef90                                ; $5908: $d4 $90 $ef
    xor a                                         ; $590b: $af
    push de                                       ; $590c: $d5
    push de                                       ; $590d: $d5
    ld e, l                                       ; $590e: $5d

jr_0a2_590f:
    ld d, l                                       ; $590f: $55
    nop                                           ; $5910: $00
    rst $38                                       ; $5911: $ff
    rlca                                          ; $5912: $07
    rrca                                          ; $5913: $0f
    inc bc                                        ; $5914: $03
    rst $20                                       ; $5915: $e7
    inc bc                                        ; $5916: $03
    ei                                            ; $5917: $fb
    pop hl                                        ; $5918: $e1
    nop                                           ; $5919: $00
    db $fd                                        ; $591a: $fd
    ld sp, hl                                     ; $591b: $f9
    rst $18                                       ; $591c: $df
    dec e                                         ; $591d: $1d
    rst $30                                       ; $591e: $f7
    add a                                         ; $591f: $87
    ei                                            ; $5920: $fb
    dec sp                                        ; $5921: $3b
    ld [$9f20], sp                                ; $5922: $08 $20 $9f
    and b                                         ; $5925: $a0
    sbc a                                         ; $5926: $9f

jr_0a2_5927:
    inc b                                         ; $5927: $04
    ld c, b                                       ; $5928: $48
    inc b                                         ; $5929: $04
    ld sp, hl                                     ; $592a: $f9
    ld bc, $fd09                                  ; $592b: $01 $09 $fd
    inc b                                         ; $592e: $04
    db $fd                                        ; $592f: $fd
    dec b                                         ; $5930: $05
    inc b                                         ; $5931: $04
    jr nc, jr_0a2_5993                            ; $5932: $30 $5f

    ld d, b                                       ; $5934: $50
    ld [bc], a                                    ; $5935: $02
    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    ld d, h                                       ; $5938: $54
    ld e, e                                       ; $5939: $5b

jr_0a2_593a:
    ld d, e                                       ; $593a: $53
    ld l, l                                       ; $593b: $6d
    ld l, c                                       ; $593c: $69
    or a                                          ; $593d: $b7
    sub h                                         ; $593e: $94
    cp a                                          ; $593f: $bf

Call_0a2_5940:
    nop                                           ; $5940: $00
    xor a                                         ; $5941: $af
    rst $18                                       ; $5942: $df
    ret nc                                        ; $5943: $d0

    jp hl                                         ; $5944: $e9


    ld l, c                                       ; $5945: $69
    xor $ce                                       ; $5946: $ee $ce
    ei                                            ; $5948: $fb
    nop                                           ; $5949: $00
    ld c, c                                       ; $594a: $49
    reti                                          ; $594b: $d9


    jr jr_0a2_593a                                ; $594c: $18 $ec

    and h                                         ; $594e: $a4
    rst $30                                       ; $594f: $f7
    ld [hl], e                                    ; $5950: $73
    db $db                                        ; $5951: $db
    inc c                                         ; $5952: $0c
    reti                                          ; $5953: $d9


    call $a0cc                                    ; $5954: $cd $cc $a0

jr_0a2_5957:
    ld b, b                                       ; $5957: $40
    ld l, b                                       ; $5958: $68
    inc a                                         ; $5959: $3c
    jr nc, jr_0a2_595d                            ; $595a: $30 $01

    db $fd                                        ; $595c: $fd

jr_0a2_595d:
    dec bc                                        ; $595d: $0b
    inc c                                         ; $595e: $0c
    ld sp, hl                                     ; $595f: $f9
    add hl, bc                                    ; $5960: $09
    ld sp, hl                                     ; $5961: $f9
    add [hl]                                      ; $5962: $86
    rrca                                          ; $5963: $0f
    ld d, l                                       ; $5964: $55
    add h                                         ; $5965: $84
    ld [hl], $00                                  ; $5966: $36 $00
    ld e, $81                                     ; $5968: $1e $81
    db $10                                        ; $596a: $10
    jr c, @+$06                                   ; $596b: $38 $04

    rst $38                                       ; $596d: $ff
    jr nz, jr_0a2_590f                            ; $596e: $20 $9f

    jr nz, @+$21                                  ; $5970: $20 $1f

    ld b, c                                       ; $5972: $41
    inc sp                                        ; $5973: $33
    add e                                         ; $5974: $83
    ld [hl-], a                                   ; $5975: $32
    ld c, $f9                                     ; $5976: $0e $f9
    inc c                                         ; $5978: $0c
    ld hl, sp+$02                                 ; $5979: $f8 $02
    db $fc                                        ; $597b: $fc
    pop bc                                        ; $597c: $c1
    ld de, $1560                                  ; $597d: $11 $60 $15
    add b                                         ; $5980: $80
    ldh [rIF], a                                  ; $5981: $e0 $0f
    cp d                                          ; $5983: $ba
    ld c, a                                       ; $5984: $4f
    scf                                           ; $5985: $37
    rst $18                                       ; $5986: $df
    ld c, h                                       ; $5987: $4c
    cp h                                          ; $5988: $bc
    sbc e                                         ; $5989: $9b
    inc b                                         ; $598a: $04
    ld a, e                                       ; $598b: $7b
    ld a, [bc]                                    ; $598c: $0a
    ld a, [$da3a]                                 ; $598d: $fa $3a $da
    ldh [rIF], a                                  ; $5990: $e0 $0f
    xor d                                         ; $5992: $aa

jr_0a2_5993:
    rst $38                                       ; $5993: $ff
    dec sp                                        ; $5994: $3b
    ei                                            ; $5995: $fb
    db $fc                                        ; $5996: $fc
    call c, $e00f                                 ; $5997: $dc $0f $e0
    rrca                                          ; $599a: $0f
    add b                                         ; $599b: $80
    rrca                                          ; $599c: $0f
    xor d                                         ; $599d: $aa
    xor $0f                                       ; $599e: $ee $0f
    db $10                                        ; $59a0: $10
    jr nz, jr_0a2_5927                            ; $59a1: $20 $84

    add b                                         ; $59a3: $80
    rrca                                          ; $59a4: $0f
    xor d                                         ; $59a5: $aa
    rst $38                                       ; $59a6: $ff
    rst $18                                       ; $59a7: $df
    ccf                                           ; $59a8: $3f
    jr nz, jr_0a2_59d3                            ; $59a9: $20 $28

    ld a, [bc]                                    ; $59ab: $0a
    ld a, [$1a20]                                 ; $59ac: $fa $20 $1a
    ld a, [$3804]                                 ; $59af: $fa $04 $38
    ld [de], a                                    ; $59b2: $12
    ld a, [$f9d1]                                 ; $59b3: $fa $d1 $f9
    add e                                         ; $59b6: $83
    nop                                           ; $59b7: $00
    jp nz, $8e0f                                  ; $59b8: $c2 $0f $8e

    rra                                           ; $59bb: $1f
    inc d                                         ; $59bc: $14
    dec a                                         ; $59bd: $3d
    and h                                         ; $59be: $a4
    ccf                                           ; $59bf: $3f
    nop                                           ; $59c0: $00
    ld a, [hl+]                                   ; $59c1: $2a
    ld a, a                                       ; $59c2: $7f
    ld d, l                                       ; $59c3: $55
    ld a, a                                       ; $59c4: $7f
    ld c, a                                       ; $59c5: $4f
    rst $38                                       ; $59c6: $ff
    rst $38                                       ; $59c7: $ff
    di                                            ; $59c8: $f3
    nop                                           ; $59c9: $00
    add d                                         ; $59ca: $82
    cp a                                          ; $59cb: $bf
    ld [$04fd], sp                                ; $59cc: $08 $fd $04
    sbc $40                                       ; $59cf: $de $40
    rst $28                                       ; $59d1: $ef
    nop                                           ; $59d2: $00

jr_0a2_59d3:
    add c                                         ; $59d3: $81
    rst $38                                       ; $59d4: $ff
    ret z                                         ; $59d5: $c8

    rst $38                                       ; $59d6: $ff
    ld [hl], h                                    ; $59d7: $74
    dec hl                                        ; $59d8: $2b
    ccf                                           ; $59d9: $3f
    add c                                         ; $59da: $81
    nop                                           ; $59db: $00
    sub l                                         ; $59dc: $95
    push bc                                       ; $59dd: $c5
    rst $08                                       ; $59de: $cf
    ldh [$65], a                                  ; $59df: $e0 $65
    or c                                          ; $59e1: $b1
    inc sp                                        ; $59e2: $33
    ldh a, [rP1]                                  ; $59e3: $f0 $00
    ld de, $89b8                                  ; $59e5: $11 $b8 $89
    ld hl, sp-$57                                 ; $59e8: $f8 $a9
    ld a, [bc]                                    ; $59ea: $0a
    ld a, [c]                                     ; $59eb: $f2
    ld a, [de]                                    ; $59ec: $1a
    ld [$02f2], sp                                ; $59ed: $08 $f2 $02
    ld a, [c]                                     ; $59f0: $f2
    ld [de], a                                    ; $59f1: $12
    inc b                                         ; $59f2: $04
    jr nc, @+$80                                  ; $59f3: $30 $7e

    ld e, h                                       ; $59f5: $5c
    ld a, b                                       ; $59f6: $78
    nop                                           ; $59f7: $00
    ld a, b                                       ; $59f8: $78
    ld e, [hl]                                    ; $59f9: $5e
    ld e, b                                       ; $59fa: $58
    ld e, h                                       ; $59fb: $5c

jr_0a2_59fc:
    ld d, b                                       ; $59fc: $50
    ld e, [hl]                                    ; $59fd: $5e
    ld e, [hl]                                    ; $59fe: $5e
    add hl, bc                                    ; $59ff: $09
    nop                                           ; $5a00: $00
    inc c                                         ; $5a01: $0c
    adc $4c                                       ; $5a02: $ce $4c
    ld l, h                                       ; $5a04: $6c
    jr z, jr_0a2_5a7e                             ; $5a05: $28 $77

    ld [hl-], a                                   ; $5a07: $32
    dec de                                        ; $5a08: $1b
    nop                                           ; $5a09: $00
    inc de                                        ; $5a0a: $13
    ld a, l                                       ; $5a0b: $7d
    ld [$001c], sp                                ; $5a0c: $08 $1c $00
    ld hl, sp+$70                                 ; $5a0f: $f8 $70
    adc h                                         ; $5a11: $8c
    nop                                           ; $5a12: $00
    db $ec                                        ; $5a13: $ec
    ld a, b                                       ; $5a14: $78
    ld [hl], b                                    ; $5a15: $70
    nop                                           ; $5a16: $00
    nop                                           ; $5a17: $00
    ld a, b                                       ; $5a18: $78
    ld e, c                                       ; $5a19: $59
    ld hl, sp+$00                                 ; $5a1a: $f8 $00
    ld a, [hl+]                                   ; $5a1c: $2a
    db $fc                                        ; $5a1d: $fc
    sub $dc                                       ; $5a1e: $d6 $dc
    adc l                                         ; $5a20: $8d
    xor h                                         ; $5a21: $ac
    xor l                                         ; $5a22: $ad
    xor h                                         ; $5a23: $ac
    rlca                                          ; $5a24: $07
    dec l                                         ; $5a25: $2d
    ld c, h                                       ; $5a26: $4c
    ld c, l                                       ; $5a27: $4d
    inc e                                         ; $5a28: $1c
    dec c                                         ; $5a29: $0d
    inc a                                         ; $5a2a: $3c
    jr z, jr_0a2_5a75                             ; $5a2b: $28 $48

    db $10                                        ; $5a2d: $10
    adc h                                         ; $5a2e: $8c
    nop                                           ; $5a2f: $00
    nop                                           ; $5a30: $00
    cpl                                           ; $5a31: $2f
    adc e                                         ; $5a32: $8b
    add $44                                       ; $5a33: $c6 $44
    ld b, h                                       ; $5a35: $44
    inc h                                         ; $5a36: $24
    inc sp                                        ; $5a37: $33
    sub e                                         ; $5a38: $93
    nop                                           ; $5a39: $00
    db $d3                                        ; $5a3a: $d3
    ld b, d                                       ; $5a3b: $42
    ld c, c                                       ; $5a3c: $49
    ld hl, $9034                                  ; $5a3d: $21 $34 $90
    ret nc                                        ; $5a40: $d0

    ld b, b                                       ; $5a41: $40
    add b                                         ; $5a42: $80
    cp d                                          ; $5a43: $ba
    ld [$40e0], sp                                ; $5a44: $08 $e0 $40
    pop bc                                        ; $5a47: $c1
    add b                                         ; $5a48: $80
    inc bc                                        ; $5a49: $03
    ld [bc], a                                    ; $5a4a: $02
    adc [hl]                                      ; $5a4b: $8e
    nop                                           ; $5a4c: $00
    inc b                                         ; $5a4d: $04
    db $fc                                        ; $5a4e: $fc
    ld hl, sp+$38                                 ; $5a4f: $f8 $38
    jr nz, jr_0a2_5acf                            ; $5a51: $20 $7c

    dec d                                         ; $5a53: $15
    ld a, b                                       ; $5a54: $78
    nop                                           ; $5a55: $00
    add hl, hl                                    ; $5a56: $29
    or b                                          ; $5a57: $b0
    ld [hl-], a                                   ; $5a58: $32
    and b                                         ; $5a59: $a0
    ld [hl+], a                                   ; $5a5a: $22
    inc a                                         ; $5a5b: $3c
    dec a                                         ; $5a5c: $3d
    ld [hl-], a                                   ; $5a5d: $32
    inc b                                         ; $5a5e: $04
    ld a, $79                                     ; $5a5f: $3e $79
    ccf                                           ; $5a61: $3f
    ld a, c                                       ; $5a62: $79
    ccf                                           ; $5a63: $3f
    ldh [$29], a                                  ; $5a64: $e0 $29
    ld [de], a                                    ; $5a66: $12
    dec l                                         ; $5a67: $2d
    ld [bc], a                                    ; $5a68: $02
    ret nz                                        ; $5a69: $c0

    rst $18                                       ; $5a6a: $df
    ld c, b                                       ; $5a6b: $48
    ld d, a                                       ; $5a6c: $57
    ld b, b                                       ; $5a6d: $40
    ld e, a                                       ; $5a6e: $5f
    ldh [rNR24], a                                ; $5a6f: $e0 $19
    ld hl, $de00                                  ; $5a71: $21 $00 $de
    ld b, d                                       ; $5a74: $42

jr_0a2_5a75:
    cp l                                          ; $5a75: $bd
    add h                                         ; $5a76: $84
    ld a, e                                       ; $5a77: $7b
    db $10                                        ; $5a78: $10
    rst $28                                       ; $5a79: $ef
    jr nz, jr_0a2_59fc                            ; $5a7a: $20 $80

    or b                                          ; $5a7c: $b0
    ld [hl-], a                                   ; $5a7d: $32

jr_0a2_5a7e:
    ld b, h                                       ; $5a7e: $44
    cp e                                          ; $5a7f: $bb
    nop                                           ; $5a80: $00
    rst $38                                       ; $5a81: $ff
    adc b                                         ; $5a82: $88
    ld [hl], a                                    ; $5a83: $77
    db $10                                        ; $5a84: $10
    db $10                                        ; $5a85: $10
    rst $28                                       ; $5a86: $ef
    ld b, b                                       ; $5a87: $40
    ld e, a                                       ; $5a88: $5f
    ld [bc], a                                    ; $5a89: $02
    ld e, b                                       ; $5a8a: $58
    ld d, b                                       ; $5a8b: $50
    ld c, a                                       ; $5a8c: $4f
    ld d, b                                       ; $5a8d: $50
    ld c, a                                       ; $5a8e: $4f
    ld [hl], h                                    ; $5a8f: $74
    ld b, b                                       ; $5a90: $40
    ld [bc], a                                    ; $5a91: $02
    add b                                         ; $5a92: $80
    jr @+$12                                      ; $5a93: $18 $10

    inc l                                         ; $5a95: $2c
    nop                                           ; $5a96: $00
    xor d                                         ; $5a97: $aa
    xor a                                         ; $5a98: $af
    ld b, $55                                     ; $5a99: $06 $55
    ld bc, $ff00                                  ; $5a9b: $01 $00 $ff
    inc bc                                        ; $5a9e: $03
    cp $07                                        ; $5a9f: $fe $07
    ld e, h                                       ; $5aa1: $5c
    ld c, $19                                     ; $5aa2: $0e $19
    ld e, $00                                     ; $5aa4: $1e $00
    cp a                                          ; $5aa6: $bf
    rra                                           ; $5aa7: $1f
    xor d                                         ; $5aa8: $aa
    nop                                           ; $5aa9: $00
    ld a, [hl]                                    ; $5aaa: $7e
    ld a, [hl]                                    ; $5aab: $7e
    jp Jump_000_00ff                              ; $5aac: $c3 $ff $00


    ld b, $d9                                     ; $5aaf: $06 $d9
    dec a                                         ; $5ab1: $3d
    ld a, [hl]                                    ; $5ab2: $7e
    and $67                                       ; $5ab3: $e6 $67
    db $e3                                        ; $5ab5: $e3
    ei                                            ; $5ab6: $fb
    jr nz, @-$65                                  ; $5ab7: $20 $99

    db $fd                                        ; $5ab9: $fd
    jr nz, jr_0a2_5acc                            ; $5aba: $20 $10

    nop                                           ; $5abc: $00
    rst $38                                       ; $5abd: $ff
    ret nz                                        ; $5abe: $c0

    ld a, a                                       ; $5abf: $7f
    ldh [rP1], a                                  ; $5ac0: $e0 $00
    dec [hl]                                      ; $5ac2: $35
    ld [hl], b                                    ; $5ac3: $70
    db $10                                        ; $5ac4: $10
    or b                                          ; $5ac5: $b0
    ld a, [hl-]                                   ; $5ac6: $3a
    ret c                                         ; $5ac7: $d8

    db $fd                                        ; $5ac8: $fd
    scf                                           ; $5ac9: $37
    nop                                           ; $5aca: $00
    cp a                                          ; $5acb: $bf

jr_0a2_5acc:
    dec l                                         ; $5acc: $2d
    jr c, jr_0a2_5afb                             ; $5acd: $38 $2c

jr_0a2_5acf:
    jr c, jr_0a2_5b10                             ; $5acf: $38 $3f

    cp a                                          ; $5ad1: $bf
    rra                                           ; $5ad2: $1f
    nop                                           ; $5ad3: $00
    ld a, [$5e1c]                                 ; $5ad4: $fa $1c $5e
    rrca                                          ; $5ad7: $0f
    dec c                                         ; $5ad8: $0d
    add hl, bc                                    ; $5ad9: $09
    ld e, l                                       ; $5ada: $5d
    cp l                                          ; $5adb: $bd
    nop                                           ; $5adc: $00
    dec c                                         ; $5add: $0d
    rra                                           ; $5ade: $1f
    add a                                         ; $5adf: $87
    inc bc                                        ; $5ae0: $03
    add [hl]                                      ; $5ae1: $86
    add hl, sp                                    ; $5ae2: $39
    dec a                                         ; $5ae3: $3d
    cp [hl]                                       ; $5ae4: $be
    nop                                           ; $5ae5: $00
    ld a, [hl+]                                   ; $5ae6: $2a
    or d                                          ; $5ae7: $b2
    inc a                                         ; $5ae8: $3c
    inc e                                         ; $5ae9: $1c
    nop                                           ; $5aea: $00
    nop                                           ; $5aeb: $00
    ld l, a                                       ; $5aec: $6f
    ret c                                         ; $5aed: $d8

    nop                                           ; $5aee: $00
    inc e                                         ; $5aef: $1c
    db $ec                                        ; $5af0: $ec
    sub [hl]                                      ; $5af1: $96
    xor $e3                                       ; $5af2: $ee $e3
    rst $38                                       ; $5af4: $ff
    or l                                          ; $5af5: $b5
    db $db                                        ; $5af6: $db
    nop                                           ; $5af7: $00
    sub l                                         ; $5af8: $95
    sbc e                                         ; $5af9: $9b
    sbc d                                         ; $5afa: $9a

jr_0a2_5afb:
    ld e, c                                       ; $5afb: $59
    ld a, [de]                                    ; $5afc: $1a
    ld e, l                                       ; $5afd: $5d
    ld e, l                                       ; $5afe: $5d
    ld [$b800], sp                                ; $5aff: $08 $00 $b8
    ld e, $3e                                     ; $5b02: $1e $3e
    dec a                                         ; $5b04: $3d
    ld c, [hl]                                    ; $5b05: $4e
    ld [hl], l                                    ; $5b06: $75
    ld c, a                                       ; $5b07: $4f
    ld h, [hl]                                    ; $5b08: $66
    nop                                           ; $5b09: $00
    add $6f                                       ; $5b0a: $c6 $6f
    ei                                            ; $5b0c: $fb
    daa                                           ; $5b0d: $27
    ld h, c                                       ; $5b0e: $61
    scf                                           ; $5b0f: $37

jr_0a2_5b10:
    nop                                           ; $5b10: $00
    ret nz                                        ; $5b11: $c0

    nop                                           ; $5b12: $00
    nop                                           ; $5b13: $00
    nop                                           ; $5b14: $00
    ld de, $e2f8                                  ; $5b15: $11 $f8 $e2
    pop af                                        ; $5b18: $f1
    inc b                                         ; $5b19: $04
    db $e3                                        ; $5b1a: $e3
    nop                                           ; $5b1b: $00
    adc b                                         ; $5b1c: $88
    ld b, $80                                     ; $5b1d: $06 $80
    db $fd                                        ; $5b1f: $fd
    pop hl                                        ; $5b20: $e1
    di                                            ; $5b21: $f3
    ld d, [hl]                                    ; $5b22: $56
    dec a                                         ; $5b23: $3d
    nop                                           ; $5b24: $00
    or l                                          ; $5b25: $b5
    ld a, a                                       ; $5b26: $7f

Call_0a2_5b27:
    ld [hl], e                                    ; $5b27: $73
    rst $38                                       ; $5b28: $ff
    ld [hl], a                                    ; $5b29: $77
    db $eb                                        ; $5b2a: $eb
    ld [hl], d                                    ; $5b2b: $72
    db $eb                                        ; $5b2c: $eb
    ld [bc], a                                    ; $5b2d: $02
    ld [hl], h                                    ; $5b2e: $74
    db $eb                                        ; $5b2f: $eb
    jp hl                                         ; $5b30: $e9


    rst $10                                       ; $5b31: $d7
    db $e3                                        ; $5b32: $e3
    rst $10                                       ; $5b33: $d7
    ld b, b                                       ; $5b34: $40
    rrca                                          ; $5b35: $0f
    ld a, [hl+]                                   ; $5b36: $2a
    nop                                           ; $5b37: $00
    add b                                         ; $5b38: $80
    rst $38                                       ; $5b39: $ff
    add e                                         ; $5b3a: $83
    ld d, l                                       ; $5b3b: $55
    inc b                                         ; $5b3c: $04
    ei                                            ; $5b3d: $fb
    add hl, bc                                    ; $5b3e: $09
    ld d, a                                       ; $5b3f: $57
    db $10                                        ; $5b40: $10
    or e                                          ; $5b41: $b3
    or $17                                        ; $5b42: $f6 $17
    ld d, b                                       ; $5b44: $50
    rrca                                          ; $5b45: $0f
    rst $38                                       ; $5b46: $ff
    rst $38                                       ; $5b47: $ff
    jr jr_0a2_5b51                                ; $5b48: $18 $07

    nop                                           ; $5b4a: $00
    call z, $e6f1                                 ; $5b4b: $cc $f1 $e6
    ld hl, sp+$33                                 ; $5b4e: $f8 $33
    db $fc                                        ; $5b50: $fc

jr_0a2_5b51:
    ld de, $003e                                  ; $5b51: $11 $3e $00
    cp h                                          ; $5b54: $bc
    ld d, [hl]                                    ; $5b55: $56
    ld e, b                                       ; $5b56: $58
    cp h                                          ; $5b57: $bc
    cp e                                          ; $5b58: $bb
    ld a, e                                       ; $5b59: $7b
    ld [hl], l                                    ; $5b5a: $75
    and h                                         ; $5b5b: $a4
    nop                                           ; $5b5c: $00
    and [hl]                                      ; $5b5d: $a6
    ld [hl], l                                    ; $5b5e: $75
    ld a, e                                       ; $5b5f: $7b
    sbc a                                         ; $5b60: $9f
    ldh a, [rNR41]                                ; $5b61: $f0 $20
    ld hl, sp+$18                                 ; $5b63: $f8 $18
    nop                                           ; $5b65: $00
    jr nc, jr_0a2_5b87                            ; $5b66: $30 $1f

    db $10                                        ; $5b68: $10
    rra                                           ; $5b69: $1f
    sbc c                                         ; $5b6a: $99
    rst $18                                       ; $5b6b: $df
    ei                                            ; $5b6c: $fb

jr_0a2_5b6d:
    ld a, a                                       ; $5b6d: $7f
    nop                                           ; $5b6e: $00
    ld e, [hl]                                    ; $5b6f: $5e
    ld c, a                                       ; $5b70: $4f
    adc h                                         ; $5b71: $8c
    adc a                                         ; $5b72: $8f
    inc b                                         ; $5b73: $04
    rrca                                          ; $5b74: $0f
    ld c, $07                                     ; $5b75: $0e $07
    nop                                           ; $5b77: $00
    ld a, [hl]                                    ; $5b78: $7e
    and b                                         ; $5b79: $a0
    ldh [$3f], a                                  ; $5b7a: $e0 $3f
    db $fc                                        ; $5b7c: $fc
    jr @-$16                                      ; $5b7d: $18 $e8

    jr c, jr_0a2_5b81                             ; $5b7f: $38 $00

jr_0a2_5b81:
    db $ec                                        ; $5b81: $ec
    jr c, jr_0a2_5b6d                             ; $5b82: $38 $e9

    ld a, $27                                     ; $5b84: $3e $27
    rst $38                                       ; $5b86: $ff

jr_0a2_5b87:
    ld sp, $00ff                                  ; $5b87: $31 $ff $00
    ld b, $07                                     ; $5b8a: $06 $07
    inc b                                         ; $5b8c: $04
    rrca                                          ; $5b8d: $0f
    ld [$191f], sp                                ; $5b8e: $08 $1f $19
    rra                                           ; $5b91: $1f
    nop                                           ; $5b92: $00
    ld d, d                                       ; $5b93: $52
    ccf                                           ; $5b94: $3f
    db $f4                                        ; $5b95: $f4
    rst $38                                       ; $5b96: $ff
    cp b                                          ; $5b97: $b8
    cp a                                          ; $5b98: $bf
    jr z, jr_0a2_5bda                             ; $5b99: $28 $3f

    add b                                         ; $5b9b: $80
    db $10                                        ; $5b9c: $10
    ld e, d                                       ; $5b9d: $5a
    ld a, [de]                                    ; $5b9e: $1a
    ld a, [$244c]                                 ; $5b9f: $fa $4c $24
    or c                                          ; $5ba2: $b1
    sub c                                         ; $5ba3: $91
    sub e                                         ; $5ba4: $93
    nop                                           ; $5ba5: $00
    ld b, e                                       ; $5ba6: $43
    ld h, d                                       ; $5ba7: $62
    inc hl                                        ; $5ba8: $23
    dec h                                         ; $5ba9: $25
    sub a                                         ; $5baa: $97
    push de                                       ; $5bab: $d5
    ld b, a                                       ; $5bac: $47
    ld b, h                                       ; $5bad: $44
    nop                                           ; $5bae: $00
    rlca                                          ; $5baf: $07
    xor b                                         ; $5bb0: $a8
    adc a                                         ; $5bb1: $8f
    ld [hl], b                                    ; $5bb2: $70
    ld h, b                                       ; $5bb3: $60
    db $e3                                        ; $5bb4: $e3
    ldh [$7f], a                                  ; $5bb5: $e0 $7f
    nop                                           ; $5bb7: $00
    rst $20                                       ; $5bb8: $e7
    ld a, a                                       ; $5bb9: $7f
    ld a, [$e57f]                                 ; $5bba: $fa $7f $e5
    ld a, a                                       ; $5bbd: $7f
    jp nz, $007f                                  ; $5bbe: $c2 $7f $00

    push bc                                       ; $5bc1: $c5
    rst $38                                       ; $5bc2: $ff
    adc e                                         ; $5bc3: $8b
    pop af                                        ; $5bc4: $f1
    ccf                                           ; $5bc5: $3f
    jp hl                                         ; $5bc6: $e9


    ld a, a                                       ; $5bc7: $7f
    jp nc, $ff00                                  ; $5bc8: $d2 $00 $ff

    push hl                                       ; $5bcb: $e5
    rst $38                                       ; $5bcc: $ff
    xor h                                         ; $5bcd: $ac
    rst $38                                       ; $5bce: $ff
    adc c                                         ; $5bcf: $89
    rst $38                                       ; $5bd0: $ff
    ld d, c                                       ; $5bd1: $51
    ld hl, $9bff                                  ; $5bd2: $21 $ff $9b
    ld d, b                                       ; $5bd5: $50
    ld [bc], a                                    ; $5bd6: $02
    inc bc                                        ; $5bd7: $03
    ei                                            ; $5bd8: $fb
    nop                                           ; $5bd9: $00

jr_0a2_5bda:
    db $fc                                        ; $5bda: $fc
    ld e, [hl]                                    ; $5bdb: $5e
    cpl                                           ; $5bdc: $2f
    rst $18                                       ; $5bdd: $df
    rst $00                                       ; $5bde: $c7
    rlca                                          ; $5bdf: $07
    adc b                                         ; $5be0: $88
    ld [de], a                                    ; $5be1: $12
    inc bc                                        ; $5be2: $03
    ld [de], a                                    ; $5be3: $12
    jr nz, jr_0a2_5c21                            ; $5be4: $20 $3b

    rlca                                          ; $5be6: $07
    sbc b                                         ; $5be7: $98
    ld [de], a                                    ; $5be8: $12
    sub b                                         ; $5be9: $90
    cpl                                           ; $5bea: $2f
    add hl, hl                                    ; $5beb: $29
    ld b, $90                                     ; $5bec: $06 $90
    xor b                                         ; $5bee: $a8
    ld [de], a                                    ; $5bef: $12
    ret nz                                        ; $5bf0: $c0

    ccf                                           ; $5bf1: $3f
    nop                                           ; $5bf2: $00
    dec hl                                        ; $5bf3: $2b
    ld b, b                                       ; $5bf4: $40
    ld e, a                                       ; $5bf5: $5f
    ret nz                                        ; $5bf6: $c0

    rst $18                                       ; $5bf7: $df
    ld [hl], b                                    ; $5bf8: $70
    nop                                           ; $5bf9: $00
    ld c, $20                                     ; $5bfa: $0e $20
    or b                                          ; $5bfc: $b0
    rla                                           ; $5bfd: $17
    ld [bc], a                                    ; $5bfe: $02
    ld d, b                                       ; $5bff: $50
    ld [$25ff], sp                                ; $5c00: $08 $ff $25
    inc sp                                        ; $5c03: $33
    nop                                           ; $5c04: $00
    ld [hl], l                                    ; $5c05: $75
    dec sp                                        ; $5c06: $3b
    ei                                            ; $5c07: $fb
    halt                                          ; $5c08: $76
    rst $10                                       ; $5c09: $d7
    cp $98                                        ; $5c0a: $fe $98
    db $fc                                        ; $5c0c: $fc
    nop                                           ; $5c0d: $00
    inc d                                         ; $5c0e: $14
    jp c, $95a2                                   ; $5c0f: $da $a2 $95

    pop bc                                        ; $5c12: $c1
    ld l, d                                       ; $5c13: $6a
    add a                                         ; $5c14: $87
    db $e3                                        ; $5c15: $e3
    nop                                           ; $5c16: $00
    add a                                         ; $5c17: $87
    rst $00                                       ; $5c18: $c7
    or c                                          ; $5c19: $b1
    rst $08                                       ; $5c1a: $cf
    add c                                         ; $5c1b: $81
    nop                                           ; $5c1c: $00
    add d                                         ; $5c1d: $82
    nop                                           ; $5c1e: $00
    nop                                           ; $5c1f: $00
    nop                                           ; $5c20: $00

jr_0a2_5c21:
    ld bc, $8c03                                  ; $5c21: $01 $03 $8c
    ld h, b                                       ; $5c24: $60
    or l                                          ; $5c25: $b5
    xor e                                         ; $5c26: $ab
    rst $30                                       ; $5c27: $f7
    nop                                           ; $5c28: $00
    ld h, l                                       ; $5c29: $65
    ei                                            ; $5c2a: $fb
    ld a, [c]                                     ; $5c2b: $f2
    ld sp, hl                                     ; $5c2c: $f9
    ld sp, hl                                     ; $5c2d: $f9
    db $fc                                        ; $5c2e: $fc
    inc a                                         ; $5c2f: $3c
    rst $38                                       ; $5c30: $ff

jr_0a2_5c31:
    nop                                           ; $5c31: $00
    rst $08                                       ; $5c32: $cf
    ccf                                           ; $5c33: $3f
    ld de, $00af                                  ; $5c34: $11 $af $00
    ld d, l                                       ; $5c37: $55
    jr c, jr_0a2_5c31                             ; $5c38: $38 $f7

    nop                                           ; $5c3a: $00
    ld a, h                                       ; $5c3b: $7c
    db $e3                                        ; $5c3c: $e3
    ldh a, [$cf]                                  ; $5c3d: $f0 $cf
    pop hl                                        ; $5c3f: $e1

jr_0a2_5c40:
    sub e                                         ; $5c40: $93
    pop bc                                        ; $5c41: $c1
    daa                                           ; $5c42: $27
    nop                                           ; $5c43: $00
    pop bc                                        ; $5c44: $c1
    rrca                                          ; $5c45: $0f
    add c                                         ; $5c46: $81
    ld e, a                                       ; $5c47: $5f
    nop                                           ; $5c48: $00
    sbc a                                         ; $5c49: $9f
    xor b                                         ; $5c4a: $a8
    xor a                                         ; $5c4b: $af
    nop                                           ; $5c4c: $00
    add l                                         ; $5c4d: $85
    adc a                                         ; $5c4e: $8f
    add [hl]                                      ; $5c4f: $86
    adc a                                         ; $5c50: $8f
    ld [$109f], sp                                ; $5c51: $08 $9f $10
    rra                                           ; $5c54: $1f
    ld b, $20                                     ; $5c55: $06 $20
    ccf                                           ; $5c57: $3f
    jr nz, jr_0a2_5cd9                            ; $5c58: $20 $7f

    ldh [$2f], a                                  ; $5c5a: $e0 $2f
    ld b, $d0                                     ; $5c5c: $06 $d0
    inc c                                         ; $5c5e: $0c
    or d                                          ; $5c5f: $b2
    inc c                                         ; $5c60: $0c
    call $7fbf                                    ; $5c61: $cd $bf $7f
    ld a, a                                       ; $5c64: $7f
    ld b, b                                       ; $5c65: $40
    inc d                                         ; $5c66: $14
    ld d, b                                       ; $5c67: $50
    inc h                                         ; $5c68: $24
    ld a, l                                       ; $5c69: $7d
    db $fd                                        ; $5c6a: $fd

jr_0a2_5c6b:
    jr nz, jr_0a2_5c6b                            ; $5c6b: $20 $fe

    cp $50                                        ; $5c6d: $fe $50
    ld b, h                                       ; $5c6f: $44
    db $e3                                        ; $5c70: $e3
    call c, Call_000_2dd2                         ; $5c71: $dc $d2 $2d
    inc h                                         ; $5c74: $24
    nop                                           ; $5c75: $00
    dec de                                        ; $5c76: $1b
    nop                                           ; $5c77: $00
    rra                                           ; $5c78: $1f

jr_0a2_5c79:
    add c                                         ; $5c79: $81
    sbc [hl]                                      ; $5c7a: $9e
    add e                                         ; $5c7b: $83
    inc hl                                        ; $5c7c: $23
    ld b, $00                                     ; $5c7d: $06 $00
    ld c, h                                       ; $5c7f: $4c
    sbc h                                         ; $5c80: $9c
    jr jr_0a2_5c9c                                ; $5c81: $18 $19

    dec e                                         ; $5c83: $1d
    dec hl                                        ; $5c84: $2b
    cp a                                          ; $5c85: $bf
    ld h, $00                                     ; $5c86: $26 $00
    ld [hl], $21                                  ; $5c88: $36 $21
    dec [hl]                                      ; $5c8a: $35
    ld c, b                                       ; $5c8b: $48
    ld e, b                                       ; $5c8c: $58
    ret                                           ; $5c8d: $c9


    call nz, Call_000_0064                        ; $5c8e: $c4 $64 $00
    ld [hl+], a                                   ; $5c91: $22
    ld [hl-], a                                   ; $5c92: $32
    ld de, $4859                                  ; $5c93: $11 $59 $48
    db $e4                                        ; $5c96: $e4
    db $ed                                        ; $5c97: $ed
    db $f4                                        ; $5c98: $f4
    nop                                           ; $5c99: $00
    ld e, h                                       ; $5c9a: $5c
    or l                                          ; $5c9b: $b5

jr_0a2_5c9c:
    cp h                                          ; $5c9c: $bc
    ld d, d                                       ; $5c9d: $52
    ld e, d                                       ; $5c9e: $5a
    jr nz, jr_0a2_5c40                            ; $5c9f: $20 $9f

    add b                                         ; $5ca1: $80
    db $10                                        ; $5ca2: $10
    cp a                                          ; $5ca3: $bf
    nop                                           ; $5ca4: $00
    cp a                                          ; $5ca5: $bf
    inc b                                         ; $5ca6: $04
    jr c, jr_0a2_5cf2                             ; $5ca7: $38 $49

    ld e, c                                       ; $5ca9: $59
    ld c, b                                       ; $5caa: $48
    ld e, h                                       ; $5cab: $5c
    nop                                           ; $5cac: $00
    sbc h                                         ; $5cad: $9c
    or [hl]                                       ; $5cae: $b6
    rra                                           ; $5caf: $1f
    ld [hl], e                                    ; $5cb0: $73
    rra                                           ; $5cb1: $1f
    add sp, -$09                                  ; $5cb2: $e8 $f7
    cp $00                                        ; $5cb4: $fe $00
    dec c                                         ; $5cb6: $0d
    di                                            ; $5cb7: $f3
    rst $38                                       ; $5cb8: $ff
    nop                                           ; $5cb9: $00
    sub d                                         ; $5cba: $92
    ld a, [de]                                    ; $5cbb: $1a
    jp nc, Jump_000_00da                          ; $5cbc: $d2 $da $00

    ld [de], a                                    ; $5cbf: $12
    ld a, $fa                                     ; $5cc0: $3e $fa
    xor $69                                       ; $5cc2: $ee $69
    db $dd                                        ; $5cc4: $dd
    ld a, b                                       ; $5cc5: $78
    sbc $0d                                       ; $5cc6: $de $0d
    cp [hl]                                       ; $5cc8: $be
    rst $28                                       ; $5cc9: $ef
    ld a, l                                       ; $5cca: $7d
    add e                                         ; $5ccb: $83
    inc l                                         ; $5ccc: $2c
    ld c, b                                       ; $5ccd: $48
    inc a                                         ; $5cce: $3c
    nop                                           ; $5ccf: $00
    sbc a                                         ; $5cd0: $9f
    db $10                                        ; $5cd1: $10
    inc c                                         ; $5cd2: $0c
    inc sp                                        ; $5cd3: $33
    xor d                                         ; $5cd4: $aa
    ld a, a                                       ; $5cd5: $7f
    inc sp                                        ; $5cd6: $33

jr_0a2_5cd7:
    cpl                                           ; $5cd7: $2f
    db $e3                                        ; $5cd8: $e3

jr_0a2_5cd9:
    dec d                                         ; $5cd9: $15
    nop                                           ; $5cda: $00
    xor e                                         ; $5cdb: $ab
    or c                                          ; $5cdc: $b1
    dec e                                         ; $5cdd: $1d
    jr nc, jr_0a2_5cf9                            ; $5cde: $30 $19

    xor h                                         ; $5ce0: $ac

jr_0a2_5ce1:
    db $10                                        ; $5ce1: $10

jr_0a2_5ce2:
    inc c                                         ; $5ce2: $0c
    ccf                                           ; $5ce3: $3f
    ld d, e                                       ; $5ce4: $53
    cpl                                           ; $5ce5: $2f
    stop                                          ; $5ce6: $10 $00
    inc d                                         ; $5ce8: $14
    ldh a, [$0a]                                  ; $5ce9: $f0 $0a
    ld c, a                                       ; $5ceb: $4f
    cp a                                          ; $5cec: $bf
    jr jr_0a2_5c79                                ; $5ced: $18 $8a

    ld a, b                                       ; $5cef: $78
    inc e                                         ; $5cf0: $1c
    ret nc                                        ; $5cf1: $d0

jr_0a2_5cf2:
    inc b                                         ; $5cf2: $04
    and b                                         ; $5cf3: $a0
    dec l                                         ; $5cf4: $2d
    rst $38                                       ; $5cf5: $ff
    rst $38                                       ; $5cf6: $ff
    xor b                                         ; $5cf7: $a8
    ret nc                                        ; $5cf8: $d0

jr_0a2_5cf9:
    ret nc                                        ; $5cf9: $d0

    ld c, b                                       ; $5cfa: $48
    jr nz, @+$07                                  ; $5cfb: $20 $05

    dec d                                         ; $5cfd: $15
    jr nz, @+$57                                  ; $5cfe: $20 $55

    jp nc, $44ed                                  ; $5d00: $d2 $ed $44

    dec de                                        ; $5d03: $1b
    ld [hl], h                                    ; $5d04: $74
    jr nz, jr_0a2_5cd7                            ; $5d05: $20 $d0

    nop                                           ; $5d07: $00
    add h                                         ; $5d08: $84
    inc c                                         ; $5d09: $0c
    inc b                                         ; $5d0a: $04
    jr z, jr_0a2_5d15                             ; $5d0b: $28 $08

    sub b                                         ; $5d0d: $90
    inc b                                         ; $5d0e: $04
    ret nz                                        ; $5d0f: $c0

    sbc b                                         ; $5d10: $98
    nop                                           ; $5d11: $00
    ret nz                                        ; $5d12: $c0

    ld [hl], l                                    ; $5d13: $75
    dec c                                         ; $5d14: $0d

jr_0a2_5d15:
    ld h, l                                       ; $5d15: $65
    jr jr_0a2_5ce2                                ; $5d16: $18 $ca

    ld [hl+], a                                   ; $5d18: $22
    sub c                                         ; $5d19: $91
    nop                                           ; $5d1a: $00
    inc de                                        ; $5d1b: $13
    or h                                          ; $5d1c: $b4
    ld d, d                                       ; $5d1d: $52
    jr nc, jr_0a2_5d6f                            ; $5d1e: $30 $4f

    dec h                                         ; $5d20: $25
    ld b, $1c                                     ; $5d21: $06 $1c
    nop                                           ; $5d23: $00
    db $e3                                        ; $5d24: $e3
    ld c, $51                                     ; $5d25: $0e $51
    and a                                         ; $5d27: $a7
    xor b                                         ; $5d28: $a8
    db $d3                                        ; $5d29: $d3
    ld d, h                                       ; $5d2a: $54
    ld l, c                                       ; $5d2b: $69
    inc bc                                        ; $5d2c: $03
    jr z, jr_0a2_5ce1                             ; $5d2d: $28 $b2

    ld a, [de]                                    ; $5d2f: $1a
    ld d, h                                       ; $5d30: $54
    sbc d                                         ; $5d31: $9a
    inc [hl]                                      ; $5d32: $34
    and h                                         ; $5d33: $a4
    ld [$2804], sp                                ; $5d34: $08 $04 $28
    ld l, h                                       ; $5d37: $6c
    nop                                           ; $5d38: $00
    or b                                          ; $5d39: $b0
    nop                                           ; $5d3a: $00
    inc [hl]                                      ; $5d3b: $34
    ld [$d408], sp                                ; $5d3c: $08 $08 $d4

jr_0a2_5d3f:
    dec b                                         ; $5d3f: $05
    inc b                                         ; $5d40: $04
    jr z, jr_0a2_5d88                             ; $5d41: $28 $45

    ld l, $00                                     ; $5d43: $2e $00
    ld b, a                                       ; $5d45: $47
    jr z, @+$46                                   ; $5d46: $28 $44

    daa                                           ; $5d48: $27
    rla                                           ; $5d49: $17
    or e                                          ; $5d4a: $b3
    dec hl                                        ; $5d4b: $2b
    sbc b                                         ; $5d4c: $98
    nop                                           ; $5d4d: $00
    inc d                                         ; $5d4e: $14
    ld c, l                                       ; $5d4f: $4d
    add $6e                                       ; $5d50: $c6 $6e
    pop bc                                        ; $5d52: $c1
    sub l                                         ; $5d53: $95
    adc $24                                       ; $5d54: $ce $24
    nop                                           ; $5d56: $00
    db $ec                                        ; $5d57: $ec
    ld b, $ea                                     ; $5d58: $06 $ea
    add [hl]                                      ; $5d5a: $86
    call z, $9a26                                 ; $5d5b: $cc $26 $9a
    ld d, [hl]                                    ; $5d5e: $56
    ld [bc], a                                    ; $5d5f: $02
    inc [hl]                                      ; $5d60: $34
    dec l                                         ; $5d61: $2d
    di                                            ; $5d62: $f3
    and d                                         ; $5d63: $a2
    db $eb                                        ; $5d64: $eb
    dec l                                         ; $5d65: $2d
    inc [hl]                                      ; $5d66: $34
    ld [$fb00], sp                                ; $5d67: $08 $00 $fb
    ld d, h                                       ; $5d6a: $54
    dec b                                         ; $5d6b: $05
    inc b                                         ; $5d6c: $04
    jr z, jr_0a2_5d3f                             ; $5d6d: $28 $d0

jr_0a2_5d6f:
    inc d                                         ; $5d6f: $14
    jp nc, $1045                                  ; $5d70: $d2 $45 $10

    dec c                                         ; $5d73: $0d
    xor b                                         ; $5d74: $a8
    ld [de], a                                    ; $5d75: $12
    dec [hl]                                      ; $5d76: $35
    ld b, b                                       ; $5d77: $40
    ld [bc], a                                    ; $5d78: $02
    cp h                                          ; $5d79: $bc
    rst $10                                       ; $5d7a: $d7
    dec b                                         ; $5d7b: $05
    dec d                                         ; $5d7c: $15
    ld [hl+], a                                   ; $5d7d: $22
    dec [hl]                                      ; $5d7e: $35
    di                                            ; $5d7f: $f3
    ld b, $10                                     ; $5d80: $06 $10
    dec c                                         ; $5d82: $0d
    ld [de], a                                    ; $5d83: $12
    dec [hl]                                      ; $5d84: $35
    ld [$00ff], sp                                ; $5d85: $08 $ff $00

jr_0a2_5d88:
    pop hl                                        ; $5d88: $e1
    rst $38                                       ; $5d89: $ff
    call z, $dfff                                 ; $5d8a: $cc $ff $df
    rst $38                                       ; $5d8d: $ff
    adc b                                         ; $5d8e: $88
    rst $38                                       ; $5d8f: $ff
    nop                                           ; $5d90: $00
    ld a, [hl+]                                   ; $5d91: $2a
    rst $38                                       ; $5d92: $ff
    ld h, $fc                                     ; $5d93: $26 $fc
    dec [hl]                                      ; $5d95: $35
    db $fd                                        ; $5d96: $fd
    ld [hl], d                                    ; $5d97: $72
    rst $38                                       ; $5d98: $ff
    nop                                           ; $5d99: $00
    adc a                                         ; $5d9a: $8f
    rst $38                                       ; $5d9b: $ff
    ld d, a                                       ; $5d9c: $57
    rst $38                                       ; $5d9d: $ff
    inc sp                                        ; $5d9e: $33
    rst $38                                       ; $5d9f: $ff
    add l                                         ; $5da0: $85
    rst $38                                       ; $5da1: $ff
    nop                                           ; $5da2: $00
    call c, $6aff                                 ; $5da3: $dc $ff $6a
    ccf                                           ; $5da6: $3f
    sbc d                                         ; $5da7: $9a
    adc a                                         ; $5da8: $8f
    call $0057                                    ; $5da9: $cd $57 $00
    db $d3                                        ; $5dac: $d3
    cp $11                                        ; $5dad: $fe $11
    rst $38                                       ; $5daf: $ff
    ld sp, $e5ef                                  ; $5db0: $31 $ef $e5
    rst $18                                       ; $5db3: $df
    nop                                           ; $5db4: $00
    adc d                                         ; $5db5: $8a
    ld a, [hl]                                    ; $5db6: $7e
    inc sp                                        ; $5db7: $33
    cp $05                                        ; $5db8: $fe $05
    db $fd                                        ; $5dba: $fd
    inc a                                         ; $5dbb: $3c
    ld hl, sp+$00                                 ; $5dbc: $f8 $00
    ld [hl], h                                    ; $5dbe: $74
    rst $28                                       ; $5dbf: $ef
    ret c                                         ; $5dc0: $d8

    cp a                                          ; $5dc1: $bf
    dec d                                         ; $5dc2: $15
    ld e, a                                       ; $5dc3: $5f
    dec b                                         ; $5dc4: $05
    ccf                                           ; $5dc5: $3f
    nop                                           ; $5dc6: $00
    inc [hl]                                      ; $5dc7: $34
    rst $38                                       ; $5dc8: $ff
    ld d, b                                       ; $5dc9: $50
    ld a, a                                       ; $5dca: $7f
    and e                                         ; $5dcb: $a3
    rst $38                                       ; $5dcc: $ff
    add $ff                                       ; $5dcd: $c6 $ff
    nop                                           ; $5dcf: $00
    dec bc                                        ; $5dd0: $0b
    ld a, [bc]                                    ; $5dd1: $0a
    ld e, d                                       ; $5dd2: $5a
    ld [hl], a                                    ; $5dd3: $77
    inc sp                                        ; $5dd4: $33
    ld a, $4b                                     ; $5dd5: $3e $4b
    ld a, h                                       ; $5dd7: $7c
    nop                                           ; $5dd8: $00
    sub b                                         ; $5dd9: $90
    rst $28                                       ; $5dda: $ef
    ld a, a                                       ; $5ddb: $7f
    or a                                          ; $5ddc: $b7
    and l                                         ; $5ddd: $a5
    rst $38                                       ; $5dde: $ff
    ld e, d                                       ; $5ddf: $5a
    db $ed                                        ; $5de0: $ed
    nop                                           ; $5de1: $00
    sub b                                         ; $5de2: $90
    ret nc                                        ; $5de3: $d0

    ld l, c                                       ; $5de4: $69
    ei                                            ; $5de5: $fb
    adc [hl]                                      ; $5de6: $8e
    halt                                          ; $5de7: $76
    ld l, e                                       ; $5de8: $6b
    cp a                                          ; $5de9: $bf
    nop                                           ; $5dea: $00
    and [hl]                                      ; $5deb: $a6
    db $dd                                        ; $5dec: $dd
    xor $fa                                       ; $5ded: $ee $fa
    db $d3                                        ; $5def: $d3
    ccf                                           ; $5df0: $3f
    xor e                                         ; $5df1: $ab
    db $dd                                        ; $5df2: $dd
    nop                                           ; $5df3: $00
    db $db                                        ; $5df4: $db
    db $ed                                        ; $5df5: $ed
    ld l, a                                       ; $5df6: $6f
    ld a, b                                       ; $5df7: $78
    halt                                          ; $5df8: $76
    ld e, c                                       ; $5df9: $59
    ld l, l                                       ; $5dfa: $6d
    db $d3                                        ; $5dfb: $d3
    nop                                           ; $5dfc: $00
    ld l, $33                                     ; $5dfd: $2e $33
    ld l, c                                       ; $5dff: $69
    ld [hl], a                                    ; $5e00: $77
    db $db                                        ; $5e01: $db
    rst $20                                       ; $5e02: $e7
    ld e, l                                       ; $5e03: $5d
    ld h, e                                       ; $5e04: $63
    nop                                           ; $5e05: $00
    cp $5e                                        ; $5e06: $fe $5e
    ld a, [hl-]                                   ; $5e08: $3a
    ld [$d8e8], a                                 ; $5e09: $ea $e8 $d8
    jr z, @-$02                                   ; $5e0c: $28 $fc

    nop                                           ; $5e0e: $00
    ld e, b                                       ; $5e0f: $58
    cp b                                          ; $5e10: $b8
    ld c, b                                       ; $5e11: $48
    db $fc                                        ; $5e12: $fc
    ld d, b                                       ; $5e13: $50
    ldh a, [$a0]                                  ; $5e14: $f0 $a0
    ldh [$80], a                                  ; $5e16: $e0 $80
    or b                                          ; $5e18: $b0
    ld de, $ff00                                  ; $5e19: $11 $00 $ff
    add b                                         ; $5e1c: $80
    ld l, d                                       ; $5e1d: $6a
    ret nz                                        ; $5e1e: $c0

    ccf                                           ; $5e1f: $3f
    ldh [rP1], a                                  ; $5e20: $e0 $00
    dec d                                         ; $5e22: $15
    ld a, d                                       ; $5e23: $7a
    sbc a                                         ; $5e24: $9f
    ld [hl], b                                    ; $5e25: $70
    ld a, [bc]                                    ; $5e26: $0a
    db $fd                                        ; $5e27: $fd
    xor l                                         ; $5e28: $ad
    jp c, Jump_000_3600                           ; $5e29: $da $00 $36

    call $8e55                                    ; $5e2c: $cd $55 $8e
    ld [hl], $8d                                  ; $5e2f: $36 $8d
    inc hl                                        ; $5e31: $23
    ld e, $00                                     ; $5e32: $1e $00
    ld b, e                                       ; $5e34: $43
    ld a, $33                                     ; $5e35: $3e $33
    cp $43                                        ; $5e37: $fe $43
    cp $c3                                        ; $5e39: $fe $c3
    cp $00                                        ; $5e3b: $fe $00
    adc e                                         ; $5e3d: $8b
    or $19                                        ; $5e3e: $f6 $19
    rst $20                                       ; $5e40: $e7
    ld h, b                                       ; $5e41: $60
    adc a                                         ; $5e42: $8f
    ret nc                                        ; $5e43: $d0

    rrca                                          ; $5e44: $0f
    ld [$3f90], sp                                ; $5e45: $08 $90 $3f
    and b                                         ; $5e48: $a0
    ld a, a                                       ; $5e49: $7f
    xor a                                         ; $5e4a: $af
    nop                                           ; $5e4b: $00
    call z, Call_000_33fe                         ; $5e4c: $cc $fe $33
    nop                                           ; $5e4f: $00
    db $fd                                        ; $5e50: $fd
    inc sp                                        ; $5e51: $33
    ld a, [$facf]                                 ; $5e52: $fa $cf $fa
    rst $08                                       ; $5e55: $cf
    db $fd                                        ; $5e56: $fd
    ld [hl], $02                                  ; $5e57: $36 $02
    db $fd                                        ; $5e59: $fd
    ld [hl], $ff                                  ; $5e5a: $36 $ff
    call z, $fe81                                 ; $5e5c: $cc $81 $fe
    cp l                                          ; $5e5f: $bd
    ld c, $03                                     ; $5e60: $0e $03
    ld b, $ff                                     ; $5e62: $06 $ff
    ld sp, hl                                     ; $5e64: $f9
    rlca                                          ; $5e65: $07
    db $fc                                        ; $5e66: $fc
    inc bc                                        ; $5e67: $03
    sbc d                                         ; $5e68: $9a
    rlca                                          ; $5e69: $07
    jr nz, jr_0a2_5e6c                            ; $5e6a: $20 $00

jr_0a2_5e6c:
    ld a, a                                       ; $5e6c: $7f
    nop                                           ; $5e6d: $00
    or e                                          ; $5e6e: $b3
    ccf                                           ; $5e6f: $3f
    di                                            ; $5e70: $f3
    sbc a                                         ; $5e71: $9f
    db $ec                                        ; $5e72: $ec
    rst $08                                       ; $5e73: $cf
    db $fc                                        ; $5e74: $fc
    ld h, a                                       ; $5e75: $67
    nop                                           ; $5e76: $00
    rst $38                                       ; $5e77: $ff
    or e                                          ; $5e78: $b3
    rst $38                                       ; $5e79: $ff
    rst $38                                       ; $5e7a: $ff
    adc $f9                                       ; $5e7b: $ce $f9
    adc $ff                                       ; $5e7d: $ce $ff
    nop                                           ; $5e7f: $00
    ld a, $f7                                     ; $5e80: $3e $f7
    ld a, [hl-]                                   ; $5e82: $3a
    db $fd                                        ; $5e83: $fd
    adc $fb                                       ; $5e84: $ce $fb
    call z, Call_000_00fe                         ; $5e86: $cc $fe $00
    add hl, sp                                    ; $5e89: $39
    ld a, [$f63f]                                 ; $5e8a: $fa $3f $f6
    ld a, c                                       ; $5e8d: $79
    ld [bc], a                                    ; $5e8e: $02
    db $fd                                        ; $5e8f: $fd
    halt                                          ; $5e90: $76
    inc b                                         ; $5e91: $04
    ld sp, hl                                     ; $5e92: $f9
    sbc d                                         ; $5e93: $9a
    db $ed                                        ; $5e94: $ed
    ld [hl], d                                    ; $5e95: $72
    db $fd                                        ; $5e96: $fd
    ld h, b                                       ; $5e97: $60
    rra                                           ; $5e98: $1f
    db $eb                                        ; $5e99: $eb
    cp $00                                        ; $5e9a: $fe $00
    ld e, e                                       ; $5e9c: $5b
    cp $e9                                        ; $5e9d: $fe $e9
    rst $38                                       ; $5e9f: $ff
    ld sp, hl                                     ; $5ea0: $f9
    rst $38                                       ; $5ea1: $ff
    db $ed                                        ; $5ea2: $ed
    sbc $00                                       ; $5ea3: $de $00
    ret                                           ; $5ea5: $c9


    cp $7b                                        ; $5ea6: $fe $7b
    xor a                                         ; $5ea8: $af
    di                                            ; $5ea9: $f3
    cpl                                           ; $5eaa: $2f
    rst $38                                       ; $5eab: $ff
    ret z                                         ; $5eac: $c8

    nop                                           ; $5ead: $00
    ei                                            ; $5eae: $fb
    call z, Call_000_3ffb                         ; $5eaf: $cc $fb $3f
    rst $38                                       ; $5eb2: $ff
    jr c, @-$03                                   ; $5eb3: $38 $fb

    call z, $f900                                 ; $5eb5: $cc $00 $f9
    adc $fc                                       ; $5eb8: $ce $fc
    scf                                           ; $5eba: $37
    rst $38                                       ; $5ebb: $ff
    inc sp                                        ; $5ebc: $33
    rst $28                                       ; $5ebd: $ef
    stop                                          ; $5ebe: $10 $00
    sbc a                                         ; $5ec0: $9f
    ld h, b                                       ; $5ec1: $60
    cp [hl]                                       ; $5ec2: $be
    pop bc                                        ; $5ec3: $c1
    db $fc                                        ; $5ec4: $fc
    inc bc                                        ; $5ec5: $03
    ld sp, hl                                     ; $5ec6: $f9
    rlca                                          ; $5ec7: $07
    nop                                           ; $5ec8: $00
    ld [c], a                                     ; $5ec9: $e2
    rra                                           ; $5eca: $1f
    inc c                                         ; $5ecb: $0c
    rst $38                                       ; $5ecc: $ff
    pop af                                        ; $5ecd: $f1
    cp $a7                                        ; $5ece: $fe $a7
    ld e, h                                       ; $5ed0: $5c
    nop                                           ; $5ed1: $00
    cpl                                           ; $5ed2: $2f
    db $fc                                        ; $5ed3: $fc
    ccf                                           ; $5ed4: $3f
    di                                            ; $5ed5: $f3
    cp a                                          ; $5ed6: $bf
    di                                            ; $5ed7: $f3
    ccf                                           ; $5ed8: $3f
    db $ec                                        ; $5ed9: $ec
    nop                                           ; $5eda: $00
    ccf                                           ; $5edb: $3f
    db $ec                                        ; $5edc: $ec
    cp a                                          ; $5edd: $bf
    ld [hl], e                                    ; $5ede: $73
    rst $38                                       ; $5edf: $ff
    inc sp                                        ; $5ee0: $33
    ld b, c                                       ; $5ee1: $41
    cp $00                                        ; $5ee2: $fe $00
    add a                                         ; $5ee4: $87
    ld hl, sp+$73                                 ; $5ee5: $f8 $73
    add b                                         ; $5ee7: $80
    db $e4                                        ; $5ee8: $e4
    inc bc                                        ; $5ee9: $03
    adc b                                         ; $5eea: $88
    rlca                                          ; $5eeb: $07
    inc e                                         ; $5eec: $1c
    jr c, jr_0a2_5ef6                             ; $5eed: $38 $07

    ld b, b                                       ; $5eef: $40
    add [hl]                                      ; $5ef0: $86
    inc bc                                        ; $5ef1: $03
    and b                                         ; $5ef2: $a0
    ld [$0141], sp                                ; $5ef3: $08 $41 $01

jr_0a2_5ef6:
    inc sp                                        ; $5ef6: $33
    db $fd                                        ; $5ef7: $fd
    nop                                           ; $5ef8: $00
    rst $08                                       ; $5ef9: $cf
    ld a, [$d5fd]                                 ; $5efa: $fa $fd $d5
    ld [$55aa], a                                 ; $5efd: $ea $aa $55
    rst $00                                       ; $5f00: $c7
    nop                                           ; $5f01: $00
    ld hl, sp-$71                                 ; $5f02: $f8 $8f
    ldh a, [$9e]                                  ; $5f04: $f0 $9e
    pop hl                                        ; $5f06: $e1
    ret c                                         ; $5f07: $d8

    rst $20                                       ; $5f08: $e7
    ld h, e                                       ; $5f09: $63
    nop                                           ; $5f0a: $00
    rst $38                                       ; $5f0b: $ff
    cp [hl]                                       ; $5f0c: $be
    ld a, a                                       ; $5f0d: $7f
    ld b, c                                       ; $5f0e: $41
    cp [hl]                                       ; $5f0f: $be
    and [hl]                                      ; $5f10: $a6
    ld e, c                                       ; $5f11: $59
    rst $18                                       ; $5f12: $df

jr_0a2_5f13:
    nop                                           ; $5f13: $00
    inc a                                         ; $5f14: $3c
    sbc a                                         ; $5f15: $9f
    ld a, [hl]                                    ; $5f16: $7e
    dec sp                                        ; $5f17: $3b
    rst $38                                       ; $5f18: $ff
    push de                                       ; $5f19: $d5
    rst $38                                       ; $5f1a: $ff
    xor d                                         ; $5f1b: $aa
    nop                                           ; $5f1c: $00
    rst $38                                       ; $5f1d: $ff
    xor c                                         ; $5f1e: $a9
    ld d, a                                       ; $5f1f: $57
    ld d, h                                       ; $5f20: $54
    xor e                                         ; $5f21: $ab
    xor d                                         ; $5f22: $aa
    ld d, l                                       ; $5f23: $55
    rst $38                                       ; $5f24: $ff
    ld b, $ff                                     ; $5f25: $06 $ff
    ld bc, $83ff                                  ; $5f27: $01 $ff $83
    ld a, a                                       ; $5f2a: $7f
    ld hl, $0805                                  ; $5f2b: $21 $05 $08
    nop                                           ; $5f2e: $00
    inc bc                                        ; $5f2f: $03
    nop                                           ; $5f30: $00
    rst $38                                       ; $5f31: $ff
    pop bc                                        ; $5f32: $c1
    cp a                                          ; $5f33: $bf
    ld l, $19                                     ; $5f34: $2e $19
    ld h, l                                       ; $5f36: $65
    ld a, [de]                                    ; $5f37: $1a
    rst $08                                       ; $5f38: $cf
    ld a, [bc]                                    ; $5f39: $0a
    jr nc, jr_0a2_5f13                            ; $5f3a: $30 $d7

    add sp, -$11                                  ; $5f3c: $e8 $ef
    rlc [hl]                                      ; $5f3e: $cb $06
    cp a                                          ; $5f40: $bf
    cp c                                          ; $5f41: $b9
    ld b, $83                                     ; $5f42: $06 $83
    inc e                                         ; $5f44: $1c
    rst $38                                       ; $5f45: $ff
    ld b, c                                       ; $5f46: $41
    cp a                                          ; $5f47: $bf
    jr nz, @+$3a                                  ; $5f48: $20 $38

    and [hl]                                      ; $5f4a: $a6
    rrca                                          ; $5f4b: $0f
    cp l                                          ; $5f4c: $bd
    rrca                                          ; $5f4d: $0f
    cp a                                          ; $5f4e: $bf
    ld b, b                                       ; $5f4f: $40
    jr nz, jr_0a2_5fd1                            ; $5f50: $20 $7f

    add b                                         ; $5f52: $80
    sbc d                                         ; $5f53: $9a
    rrca                                          ; $5f54: $0f
    xor a                                         ; $5f55: $af
    ld d, b                                       ; $5f56: $50
    ld sp, hl                                     ; $5f57: $f9
    rlca                                          ; $5f58: $07
    ld [hl], e                                    ; $5f59: $73
    nop                                           ; $5f5a: $00
    adc a                                         ; $5f5b: $8f
    and c                                         ; $5f5c: $a1
    ld e, a                                       ; $5f5d: $5f
    ld c, e                                       ; $5f5e: $4b
    or a                                          ; $5f5f: $b7
    sub c                                         ; $5f60: $91
    ld l, a                                       ; $5f61: $6f
    inc bc                                        ; $5f62: $03
    nop                                           ; $5f63: $00
    rst $38                                       ; $5f64: $ff
    adc c                                         ; $5f65: $89
    ld [hl], a                                    ; $5f66: $77
    inc bc                                        ; $5f67: $03
    rst $38                                       ; $5f68: $ff
    rlca                                          ; $5f69: $07
    ld hl, sp+$4a                                 ; $5f6a: $f8 $4a
    nop                                           ; $5f6c: $00
    add l                                         ; $5f6d: $85
    or l                                          ; $5f6e: $b5
    ld c, d                                       ; $5f6f: $4a
    ld c, d                                       ; $5f70: $4a
    dec [hl]                                      ; $5f71: $35
    rst $10                                       ; $5f72: $d7
    jr z, jr_0a2_5f13                             ; $5f73: $28 $9e

    add hl, de                                    ; $5f75: $19
    ld h, c                                       ; $5f76: $61
    ld a, a                                       ; $5f77: $7f
    ret nz                                        ; $5f78: $c0

    ld h, $08                                     ; $5f79: $26 $08
    db $ed                                        ; $5f7b: $ed
    rrca                                          ; $5f7c: $0f
    rst $18                                       ; $5f7d: $df
    jr nz, jr_0a2_5fcc                            ; $5f7e: $20 $4c

    ld [$5f30], sp                                ; $5f80: $08 $30 $5f
    and b                                         ; $5f83: $a0
    ld d, d                                       ; $5f84: $52
    ld [$0ffd], sp                                ; $5f85: $08 $fd $0f
    ld e, a                                       ; $5f88: $5f
    and b                                         ; $5f89: $a0
    or a                                          ; $5f8a: $b7
    ld c, b                                       ; $5f8b: $48
    nop                                           ; $5f8c: $00
    ld a, [bc]                                    ; $5f8d: $0a
    push af                                       ; $5f8e: $f5
    sub l                                         ; $5f8f: $95
    ld a, [bc]                                    ; $5f90: $0a

jr_0a2_5f91:
    jp c, $8205                                   ; $5f91: $da $05 $82

    rst $38                                       ; $5f94: $ff
    ld b, c                                       ; $5f95: $41
    call nc, $01fe                                ; $5f96: $d4 $fe $01
    ld a, [c]                                     ; $5f99: $f2
    rst $38                                       ; $5f9a: $ff
    push af                                       ; $5f9b: $f5
    rst $38                                       ; $5f9c: $ff
    ld a, [$085e]                                 ; $5f9d: $fa $5e $08
    jr nc, @+$01                                  ; $5fa0: $30 $ff

    rst $30                                       ; $5fa2: $f7
    ld d, e                                       ; $5fa3: $53
    inc b                                         ; $5fa4: $04
    ld h, d                                       ; $5fa5: $62
    jr jr_0a2_6017                                ; $5fa6: $18 $6f

    sub b                                         ; $5fa8: $90
    ld [hl], $c9                                  ; $5fa9: $36 $c9
    nop                                           ; $5fab: $00
    pop bc                                        ; $5fac: $c1
    ld a, $b5                                     ; $5fad: $3e $b5
    ld c, d                                       ; $5faf: $4a
    ld [$bd15], a                                 ; $5fb0: $ea $15 $bd
    ld b, d                                       ; $5fb3: $42
    nop                                           ; $5fb4: $00
    ld sp, hl                                     ; $5fb5: $f9
    ld b, $f6                                     ; $5fb6: $06 $f6
    add hl, bc                                    ; $5fb8: $09
    db $e4                                        ; $5fb9: $e4
    jr jr_0a2_5fef                                ; $5fba: $18 $33

    call c, $c600                                 ; $5fbc: $dc $00 $c6
    ccf                                           ; $5fbf: $3f
    add hl, bc                                    ; $5fc0: $09
    ld d, $13                                     ; $5fc1: $16 $13
    inc l                                         ; $5fc3: $2c
    cpl                                           ; $5fc4: $2f
    ld e, c                                       ; $5fc5: $59
    nop                                           ; $5fc6: $00
    ld a, l                                       ; $5fc7: $7d
    add d                                         ; $5fc8: $82
    ld d, [hl]                                    ; $5fc9: $56
    xor e                                         ; $5fca: $ab
    inc hl                                        ; $5fcb: $23

jr_0a2_5fcc:
    sbc $5f                                       ; $5fcc: $de $5f
    or [hl]                                       ; $5fce: $b6
    nop                                           ; $5fcf: $00
    dec sp                                        ; $5fd0: $3b

jr_0a2_5fd1:
    db $ec                                        ; $5fd1: $ec
    cp b                                          ; $5fd2: $b8
    ld b, h                                       ; $5fd3: $44
    ld a, h                                       ; $5fd4: $7c
    sbc d                                         ; $5fd5: $9a
    db $e4                                        ; $5fd6: $e4
    cp a                                          ; $5fd7: $bf
    nop                                           ; $5fd8: $00
    ld e, [hl]                                    ; $5fd9: $5e
    push hl                                       ; $5fda: $e5
    cp a                                          ; $5fdb: $bf
    ld b, e                                       ; $5fdc: $43
    jp c, $de26                                   ; $5fdd: $da $26 $de

    or $00                                        ; $5fe0: $f6 $00
    sub [hl]                                      ; $5fe2: $96
    ld l, [hl]                                    ; $5fe3: $6e
    and a                                         ; $5fe4: $a7
    db $fc                                        ; $5fe5: $fc
    or a                                          ; $5fe6: $b7
    add sp, -$25                                  ; $5fe7: $e8 $db
    or h                                          ; $5fe9: $b4
    nop                                           ; $5fea: $00
    ld l, c                                       ; $5feb: $69
    ld e, [hl]                                    ; $5fec: $5e
    ld h, d                                       ; $5fed: $62
    ld a, a                                       ; $5fee: $7f

jr_0a2_5fef:
    dec d                                         ; $5fef: $15
    dec sp                                        ; $5ff0: $3b
    scf                                           ; $5ff1: $37
    jr c, jr_0a2_5ff4                             ; $5ff2: $38 $00

jr_0a2_5ff4:
    ld d, a                                       ; $5ff4: $57
    ld a, b                                       ; $5ff5: $78
    ld a, [$c606]                                 ; $5ff6: $fa $06 $c6
    ld a, $9e                                     ; $5ff9: $3e $9e
    ld a, [hl]                                    ; $5ffb: $7e
    nop                                           ; $5ffc: $00
    add d                                         ; $5ffd: $82
    ld a, [hl]                                    ; $5ffe: $7e
    db $fc                                        ; $5fff: $fc

Jump_0a2_6000:
    inc b                                         ; $6000: $04
    inc a                                         ; $6001: $3c
    call nz, $fc78                                ; $6002: $c4 $78 $fc
    jr nc, jr_0a2_5f91                            ; $6005: $30 $8a

    ld a, [hl]                                    ; $6007: $7e
    cp h                                          ; $6008: $bc
    inc d                                         ; $6009: $14
    dec b                                         ; $600a: $05
    jr jr_0a2_6014                                ; $600b: $18 $07

    rlca                                          ; $600d: $07
    jr jr_0a2_602d                                ; $600e: $18 $1d

    ld b, b                                       ; $6010: $40
    ld [hl+], a                                   ; $6011: $22
    db $10                                        ; $6012: $10

jr_0a2_6013:
    ld b, b                                       ; $6013: $40

jr_0a2_6014:
    ldh [$a0], a                                  ; $6014: $e0 $a0
    ld e, b                                       ; $6016: $58

jr_0a2_6017:
    ld d, b                                       ; $6017: $50
    xor h                                         ; $6018: $ac
    or e                                          ; $6019: $b3
    nop                                           ; $601a: $00
    call c, $ffc8                                 ; $601b: $dc $c8 $ff
    rst $20                                       ; $601e: $e7
    rst $38                                       ; $601f: $ff
    ld a, b                                       ; $6020: $78
    ld a, a                                       ; $6021: $7f
    ccf                                           ; $6022: $3f
    nop                                           ; $6023: $00
    ccf                                           ; $6024: $3f
    jr c, @+$41                                   ; $6025: $38 $3f

    ld sp, $233e                                  ; $6027: $31 $3e $23
    inc a                                         ; $602a: $3c
    db $ed                                        ; $602b: $ed
    nop                                           ; $602c: $00

jr_0a2_602d:
    dec de                                        ; $602d: $1b
    inc de                                        ; $602e: $13
    rst $38                                       ; $602f: $ff
    rst $28                                       ; $6030: $ef
    rst $38                                       ; $6031: $ff
    ld e, $fe                                     ; $6032: $1e $fe
    db $fc                                        ; $6034: $fc
    nop                                           ; $6035: $00
    db $fc                                        ; $6036: $fc
    inc d                                         ; $6037: $14
    db $fc                                        ; $6038: $fc
    call z, $e43c                                 ; $6039: $cc $3c $e4
    inc e                                         ; $603c: $1c
    add a                                         ; $603d: $87
    ld b, d                                       ; $603e: $42
    ld a, b                                       ; $603f: $78
    ldh [$08], a                                  ; $6040: $e0 $08
    jp z, $f735                                   ; $6042: $ca $35 $f7

    ld [$1bd5], sp                                ; $6045: $08 $d5 $1b
    dec [hl]                                      ; $6048: $35
    inc e                                         ; $6049: $1c
    ld a, [hl-]                                   ; $604a: $3a
    inc hl                                        ; $604b: $23
    inc a                                         ; $604c: $3c
    inc b                                         ; $604d: $04
    ld c, b                                       ; $604e: $48
    inc h                                         ; $604f: $24
    ld [$4804], sp                                ; $6050: $08 $04 $48
    rst $38                                       ; $6053: $ff
    inc b                                         ; $6054: $04
    nop                                           ; $6055: $00
    pop hl                                        ; $6056: $e1
    ld e, $d2                                     ; $6057: $1e $d2
    ld hl, $11fe                                  ; $6059: $21 $fe $11
    db $fd                                        ; $605c: $fd
    ld c, $02                                     ; $605d: $0e $02
    rst $28                                       ; $605f: $ef
    db $10                                        ; $6060: $10
    rst $18                                       ; $6061: $df
    jr nz, jr_0a2_6013                            ; $6062: $20 $af

    ld d, b                                       ; $6064: $50
    jr nc, jr_0a2_607f                            ; $6065: $30 $18

    ld d, e                                       ; $6067: $53
    nop                                           ; $6068: $00
    ld e, h                                       ; $6069: $5c
    xor a                                         ; $606a: $af
    xor [hl]                                      ; $606b: $ae
    ld d, l                                       ; $606c: $55
    ld d, l                                       ; $606d: $55
    ld a, [bc]                                    ; $606e: $0a
    ld a, [bc]                                    ; $606f: $0a
    nop                                           ; $6070: $00
    ld b, b                                       ; $6071: $40
    nop                                           ; $6072: $00
    ld d, h                                       ; $6073: $54
    ld [$3ec6], sp                                ; $6074: $08 $c6 $3e
    db $ed                                        ; $6077: $ed
    dec e                                         ; $6078: $1d
    ld a, [$103a]                                 ; $6079: $fa $3a $10
    ld d, h                                       ; $607c: $54
    ld d, h                                       ; $607d: $54
    xor b                                         ; $607e: $a8

jr_0a2_607f:
    di                                            ; $607f: $f3
    inc bc                                        ; $6080: $03
    cpl                                           ; $6081: $2f
    ld d, b                                       ; $6082: $50
    dec [hl]                                      ; $6083: $35
    ld a, [hl]                                    ; $6084: $7e
    nop                                           ; $6085: $00
    jp nz, $bdff                                  ; $6086: $c2 $ff $bd

    jp $fdde                                      ; $6089: $c3 $de $fd


    rst $38                                       ; $608c: $ff
    daa                                           ; $608d: $27
    nop                                           ; $608e: $00
    dec h                                         ; $608f: $25
    cp $ff                                        ; $6090: $fe $ff
    call c, Call_000_14e8                         ; $6092: $dc $e8 $14
    db $f4                                        ; $6095: $f4
    ld a, [bc]                                    ; $6096: $0a
    nop                                           ; $6097: $00
    cp h                                          ; $6098: $bc
    ld b, d                                       ; $6099: $42
    ld e, d                                       ; $609a: $5a
    and l                                         ; $609b: $a5
    sub [hl]                                      ; $609c: $96
    ld sp, hl                                     ; $609d: $f9
    ld [$00f5], a                                 ; $609e: $ea $f5 $00
    halt                                          ; $60a1: $76
    xor l                                         ; $60a2: $ad
    ld [hl], a                                    ; $60a3: $77
    adc l                                         ; $60a4: $8d
    ld e, a                                       ; $60a5: $5f
    ld [hl], b                                    ; $60a6: $70
    halt                                          ; $60a7: $76
    ld a, c                                       ; $60a8: $79
    nop                                           ; $60a9: $00
    or l                                          ; $60aa: $b5
    db $db                                        ; $60ab: $db
    xor e                                         ; $60ac: $ab

jr_0a2_60ad:
    db $fc                                        ; $60ad: $fc
    xor [hl]                                      ; $60ae: $ae
    pop de                                        ; $60af: $d1
    sbc l                                         ; $60b0: $9d
    db $e3                                        ; $60b1: $e3
    nop                                           ; $60b2: $00
    jp nz, $fdff                                  ; $60b3: $c2 $ff $fd

jr_0a2_60b6:
    cp $ed                                        ; $60b6: $fe $ed
    sbc e                                         ; $60b8: $9b
    res 6, l                                      ; $60b9: $cb $b5
    nop                                           ; $60bb: $00
    sub $7a                                       ; $60bc: $d6 $7a
    ld e, h                                       ; $60be: $5c
    db $f4                                        ; $60bf: $f4
    call c, Call_0a2_6cbc                         ; $60c0: $dc $bc $6c
    sbc h                                         ; $60c3: $9c
    nop                                           ; $60c4: $00
    db $ec                                        ; $60c5: $ec
    inc e                                         ; $60c6: $1c
    ld a, [$871e]                                 ; $60c7: $fa $1e $87
    add sp, -$3d                                  ; $60ca: $e8 $c3
    db $f4                                        ; $60cc: $f4

jr_0a2_60cd:
    db $10                                        ; $60cd: $10
    rst $20                                       ; $60ce: $e7
    rst $38                                       ; $60cf: $ff
    ld a, l                                       ; $60d0: $7d
    ret nz                                        ; $60d1: $c0

    jr nc, jr_0a2_60ad                            ; $60d2: $30 $d9

    ccf                                           ; $60d4: $3f
    dec hl                                        ; $60d5: $2b
    rst $30                                       ; $60d6: $f7
    db $10                                        ; $60d7: $10
    rst $08                                       ; $60d8: $cf
    rst $38                                       ; $60d9: $ff
    ld a, [hl]                                    ; $60da: $7e
    ret nz                                        ; $60db: $c0

    jr nc, jr_0a2_60cd                            ; $60dc: $30 $ef

    db $10                                        ; $60de: $10
    ld d, l                                       ; $60df: $55
    xor d                                         ; $60e0: $aa
    nop                                           ; $60e1: $00
    ld [bc], a                                    ; $60e2: $02
    db $fd                                        ; $60e3: $fd
    xor c                                         ; $60e4: $a9
    ld b, $d6                                     ; $60e5: $06 $d6
    ld bc, $07f9                                  ; $60e7: $01 $f9 $07
    nop                                           ; $60ea: $00
    push de                                       ; $60eb: $d5
    ld l, $ae                                     ; $60ec: $2e $ae
    ld de, $126d                                  ; $60ee: $11 $6d $12
    rst $18                                       ; $60f1: $df
    jr nz, jr_0a2_60b6                            ; $60f2: $20 $c2

    sbc d                                         ; $60f4: $9a
    ld [$299a], sp                                ; $60f5: $08 $9a $29
    xor a                                         ; $60f8: $af
    ld d, b                                       ; $60f9: $50
    ld e, a                                       ; $60fa: $5f
    and b                                         ; $60fb: $a0
    or b                                          ; $60fc: $b0
    add hl, bc                                    ; $60fd: $09
    rst $30                                       ; $60fe: $f7
    ld h, b                                       ; $60ff: $60
    ld [$0a02], sp                                ; $6100: $08 $02 $0a
    db $eb                                        ; $6103: $eb
    dec d                                         ; $6104: $15
    add hl, bc                                    ; $6105: $09
    add hl, bc                                    ; $6106: $09
    ld d, $1b                                     ; $6107: $16 $1b
    inc h                                         ; $6109: $24
    ld bc, $433e                                  ; $610a: $01 $3e $43
    ld d, a                                       ; $610d: $57
    xor a                                         ; $610e: $af
    xor c                                         ; $610f: $a9
    sbc $b7                                       ; $6110: $de $b7
    db $fc                                        ; $6112: $fc
    dec c                                         ; $6113: $0d
    nop                                           ; $6114: $00
    ldh a, [$f0]                                  ; $6115: $f0 $f0
    ld [$04f8], sp                                ; $6117: $08 $f8 $04
    ld a, b                                       ; $611a: $78
    add [hl]                                      ; $611b: $86
    or d                                          ; $611c: $b2
    nop                                           ; $611d: $00
    adc $7e                                       ; $611e: $ce $7e
    cp $fa                                        ; $6120: $fe $fa
    ld e, $6d                                     ; $6122: $1e $6d
    ld [hl], e                                    ; $6124: $73
    ld a, a                                       ; $6125: $7f
    ld [$5f60], sp                                ; $6126: $08 $60 $5f
    ld h, b                                       ; $6129: $60
    ccf                                           ; $612a: $3f
    and a                                         ; $612b: $a7
    ld b, $17                                     ; $612c: $06 $17
    jr jr_0a2_616b                                ; $612e: $18 $3b

    nop                                           ; $6130: $00
    inc a                                         ; $6131: $3c
    ld e, [hl]                                    ; $6132: $5e
    ld l, a                                       ; $6133: $6f
    ld [hl], h                                    ; $6134: $74
    cp h                                          ; $6135: $bc
    call nc, $fc2c                                ; $6136: $d4 $2c $fc
    nop                                           ; $6139: $00
    inc h                                         ; $613a: $24
    ld e, h                                       ; $613b: $5c
    db $e4                                        ; $613c: $e4
    db $f4                                        ; $613d: $f4
    inc c                                         ; $613e: $0c
    ld [hl], h                                    ; $613f: $74
    db $ec                                        ; $6140: $ec
    adc h                                         ; $6141: $8c
    db $10                                        ; $6142: $10
    ld a, h                                       ; $6143: $7c
    jp c, Jump_0a2_6636                           ; $6144: $da $36 $66

    ld bc, $3e38                                  ; $6147: $01 $38 $3e
    ld b, c                                       ; $614a: $41
    ld d, e                                       ; $614b: $53
    nop                                           ; $614c: $00
    xor a                                         ; $614d: $af
    adc h                                         ; $614e: $8c
    rst $38                                       ; $614f: $ff
    db $eb                                        ; $6150: $eb
    db $f4                                        ; $6151: $f4
    rst $18                                       ; $6152: $df
    ldh [rIE], a                                  ; $6153: $e0 $ff
    nop                                           ; $6155: $00
    ret nz                                        ; $6156: $c0

    nop                                           ; $6157: $00
    ret nz                                        ; $6158: $c0

    ret nz                                        ; $6159: $c0

    jr nc, jr_0a2_61cc                            ; $615a: $30 $70

    adc b                                         ; $615c: $88
    ld e, b                                       ; $615d: $58
    nop                                           ; $615e: $00
    db $e4                                        ; $615f: $e4
    xor b                                         ; $6160: $a8
    ld [hl], h                                    ; $6161: $74
    call c, $fe32                                 ; $6162: $dc $32 $fe
    ld [de], a                                    ; $6165: $12
    or $06                                        ; $6166: $f6 $06
    ld a, [de]                                    ; $6168: $1a
    cp $09                                        ; $6169: $fe $09

jr_0a2_616b:
    db $fd                                        ; $616b: $fd
    ld [bc], a                                    ; $616c: $02
    ld l, [hl]                                    ; $616d: $6e
    jr z, jr_0a2_61e0                             ; $616e: $28 $70

    ld a, [bc]                                    ; $6170: $0a
    db $dd                                        ; $6171: $dd
    nop                                           ; $6172: $00
    db $e3                                        ; $6173: $e3
    rst $30                                       ; $6174: $f7
    ei                                            ; $6175: $fb
    ld a, h                                       ; $6176: $7c
    ld a, e                                       ; $6177: $7b
    ld e, a                                       ; $6178: $5f
    ld l, b                                       ; $6179: $68
    ld d, a                                       ; $617a: $57
    nop                                           ; $617b: $00
    ld l, b                                       ; $617c: $68
    ld a, $21                                     ; $617d: $3e $21
    cpl                                           ; $617f: $2f
    ccf                                           ; $6180: $3f
    ld h, $3f                                     ; $6181: $26 $3f
    xor d                                         ; $6183: $aa
    nop                                           ; $6184: $00
    sbc $ee                                       ; $6185: $de $ee
    cp $da                                        ; $6187: $fe $da
    ld l, $fa                                     ; $6189: $2e $fa
    ld c, $fc                                     ; $618b: $0e $fc
    ld bc, $f80c                                  ; $618d: $01 $0c $f8
    ld [$9868], sp                                ; $6190: $08 $68 $98
    call c, $c03c                                 ; $6193: $dc $3c $c0
    ld sp, $0301                                  ; $6196: $31 $01 $03
    inc bc                                        ; $6199: $03
    inc c                                         ; $619a: $0c
    rrca                                          ; $619b: $0f
    db $10                                        ; $619c: $10
    dec e                                         ; $619d: $1d
    inc hl                                        ; $619e: $23
    cp [hl]                                       ; $619f: $be
    add hl, sp                                    ; $61a0: $39
    nop                                           ; $61a1: $00
    ldh [rNR23], a                                ; $61a2: $e0 $18
    db $fc                                        ; $61a4: $fc
    inc b                                         ; $61a5: $04
    ld h, d                                       ; $61a6: $62
    cp $4d                                        ; $61a7: $fe $4d
    add d                                         ; $61a9: $82
    nop                                           ; $61aa: $00
    ccf                                           ; $61ab: $3f
    jp nz, $7cb7                                  ; $61ac: $c2 $b7 $7c

    ld l, a                                       ; $61af: $6f
    db $10                                        ; $61b0: $10
    adc a                                         ; $61b1: $8f
    ld [hl], b                                    ; $61b2: $70
    nop                                           ; $61b3: $00
    rst $38                                       ; $61b4: $ff
    ldh [$5f], a                                  ; $61b5: $e0 $5f
    and b                                         ; $61b7: $a0
    xor a                                         ; $61b8: $af
    ld d, b                                       ; $61b9: $50
    cp c                                          ; $61ba: $b9
    rst $08                                       ; $61bb: $cf
    inc b                                         ; $61bc: $04
    rst $10                                       ; $61bd: $d7
    add sp, -$19                                  ; $61be: $e8 $e7

jr_0a2_61c0:
    ld hl, sp+$7f                                 ; $61c0: $f8 $7f
    ret nc                                        ; $61c2: $d0

    add hl, sp                                    ; $61c3: $39
    di                                            ; $61c4: $f3
    ei                                            ; $61c5: $fb
    ld [$cf07], sp                                ; $61c6: $08 $07 $cf
    ccf                                           ; $61c9: $3f
    cp $d0                                        ; $61ca: $fe $d0

jr_0a2_61cc:
    ld sp, $706f                                  ; $61cc: $31 $6f $70
    or h                                          ; $61cf: $b4
    jr @-$23                                      ; $61d0: $18 $db

jr_0a2_61d2:
    rst $18                                       ; $61d2: $df
    rst $28                                       ; $61d3: $ef
    ld [hl+], a                                   ; $61d4: $22
    jr @-$0e                                      ; $61d5: $18 $f0

    add hl, bc                                    ; $61d7: $09
    xor d                                         ; $61d8: $aa
    ld a, [hl]                                    ; $61d9: $7e
    db $dd                                        ; $61da: $dd
    jr jr_0a2_61c0                                ; $61db: $18 $e3

    ld a, e                                       ; $61dd: $7b
    add a                                         ; $61de: $87

jr_0a2_61df:
    ld [hl+], a                                   ; $61df: $22

jr_0a2_61e0:
    jr jr_0a2_61d2                                ; $61e0: $18 $f0

    add hl, bc                                    ; $61e2: $09
    db $fd                                        ; $61e3: $fd
    inc bc                                        ; $61e4: $03
    jp c, Jump_000_3f00                           ; $61e5: $da $00 $3f

    call nc, $ba20                                ; $61e8: $d4 $20 $ba
    ld b, b                                       ; $61eb: $40
    sbc a                                         ; $61ec: $9f
    ld h, b                                       ; $61ed: $60
    rst $20                                       ; $61ee: $e7
    nop                                           ; $61ef: $00
    jr c, jr_0a2_61df                             ; $61f0: $38 $ed

    rra                                           ; $61f2: $1f
    cp $01                                        ; $61f3: $fe $01
    ld b, e                                       ; $61f5: $43
    db $fc                                        ; $61f6: $fc
    push de                                       ; $61f7: $d5
    nop                                           ; $61f8: $00
    ld a, $a9                                     ; $61f9: $3e $a9
    ld b, b                                       ; $61fb: $40
    sbc [hl]                                      ; $61fc: $9e
    ld h, c                                       ; $61fd: $61
    pop hl                                        ; $61fe: $e1
    ccf                                           ; $61ff: $3f
    rst $10                                       ; $6200: $d7
    nop                                           ; $6201: $00
    ld l, $eb                                     ; $6202: $2e $eb
    inc d                                         ; $6204: $14
    or $09                                        ; $6205: $f6 $09
    ld a, [de]                                    ; $6207: $1a
    daa                                           ; $6208: $27
    dec de                                        ; $6209: $1b
    nop                                           ; $620a: $00
    inc l                                         ; $620b: $2c
    rrca                                          ; $620c: $0f
    jr c, @+$23                                   ; $620d: $38 $21

    ld a, $48                                     ; $620f: $3e $48
    ld [hl], a                                    ; $6211: $77
    ld c, e                                       ; $6212: $4b
    nop                                           ; $6213: $00
    ld [hl], a                                    ; $6214: $77
    dec a                                         ; $6215: $3d
    inc sp                                        ; $6216: $33
    rra                                           ; $6217: $1f
    db $10                                        ; $6218: $10
    sbc $3e                                       ; $6219: $de $3e
    ld a, [c]                                     ; $621b: $f2
    nop                                           ; $621c: $00
    ld c, $fa                                     ; $621d: $0e $fa
    ld b, $fa                                     ; $621f: $06 $fa
    ld b, $72                                     ; $6221: $06 $72
    adc [hl]                                      ; $6223: $8e
    sbc d                                         ; $6224: $9a
    nop                                           ; $6225: $00
    cp $44                                        ; $6226: $fe $44
    cp h                                          ; $6228: $bc
    db $f4                                        ; $6229: $f4
    inc l                                         ; $622a: $2c
    cpl                                           ; $622b: $2f
    jr nc, jr_0a2_6258                            ; $622c: $30 $2a

    ld bc, $2435                                  ; $622e: $01 $35 $24
    ccf                                           ; $6231: $3f
    dec hl                                        ; $6232: $2b
    inc a                                         ; $6233: $3c

jr_0a2_6234:
    scf                                           ; $6234: $37
    jr c, jr_0a2_6257                             ; $6235: $38 $20

    add hl, bc                                    ; $6237: $09
    nop                                           ; $6238: $00
    ld c, h                                       ; $6239: $4c
    ld a, a                                       ; $623a: $7f
    ld l, h                                       ; $623b: $6c
    db $f4                                        ; $623c: $f4
    cp h                                          ; $623d: $bc
    ld e, h                                       ; $623e: $5c
    halt                                          ; $623f: $76
    adc [hl]                                      ; $6240: $8e
    nop                                           ; $6241: $00
    ld a, [$fe06]                                 ; $6242: $fa $06 $fe
    ld [bc], a                                    ; $6245: $02
    cp $02                                        ; $6246: $fe $02
    ld a, [$0206]                                 ; $6248: $fa $06 $02
    or $0e                                        ; $624b: $f6 $0e
    or e                                          ; $624d: $b3
    rst $08                                       ; $624e: $cf
    sbc $e1                                       ; $624f: $de $e1
    and b                                         ; $6251: $a0
    ld c, b                                       ; $6252: $48
    ld sp, hl                                     ; $6253: $f9
    db $10                                        ; $6254: $10
    rst $38                                       ; $6255: $ff
    dec bc                                        ; $6256: $0b

jr_0a2_6257:
    rst $30                                       ; $6257: $f7

jr_0a2_6258:
    and b                                         ; $6258: $a0
    ld c, b                                       ; $6259: $48
    or l                                          ; $625a: $b5
    ld hl, sp-$45                                 ; $625b: $f8 $bb
    ld b, h                                       ; $625d: $44
    ld bc, $20df                                  ; $625e: $01 $df $20
    xor e                                         ; $6261: $ab
    ld d, h                                       ; $6262: $54
    rst $30                                       ; $6263: $f7
    ld [$4dfb], sp                                ; $6264: $08 $fb $4d
    daa                                           ; $6267: $27
    jp nz, $099a                                  ; $6268: $c2 $9a $09

    or h                                          ; $626b: $b4
    add hl, de                                    ; $626c: $19
    daa                                           ; $626d: $27
    ld hl, sp+$6b                                 ; $626e: $f8 $6b
    rra                                           ; $6270: $1f

jr_0a2_6271:
    ld [c], a                                     ; $6271: $e2
    ld b, $aa                                     ; $6272: $06 $aa
    ld h, b                                       ; $6274: $60
    rst $38                                       ; $6275: $ff
    add $03                                       ; $6276: $c6 $03
    inc b                                         ; $6278: $04
    db $10                                        ; $6279: $10
    db $dd                                        ; $627a: $dd
    rst $38                                       ; $627b: $ff
    rst $38                                       ; $627c: $ff
    ld b, l                                       ; $627d: $45
    rst $38                                       ; $627e: $ff
    nop                                           ; $627f: $00
    sub e                                         ; $6280: $93
    rst $38                                       ; $6281: $ff
    ld hl, $4fff                                  ; $6282: $21 $ff $4f
    rst $38                                       ; $6285: $ff
    or a                                          ; $6286: $b7
    rst $38                                       ; $6287: $ff
    ld b, b                                       ; $6288: $40
    db $ed                                        ; $6289: $ed
    ld d, b                                       ; $628a: $50
    inc de                                        ; $628b: $13
    xor [hl]                                      ; $628c: $ae
    ld d, b                                       ; $628d: $50
    ld c, l                                       ; $628e: $4d
    or b                                          ; $628f: $b0
    ei                                            ; $6290: $fb
    inc b                                         ; $6291: $04
    jr nc, jr_0a2_6271                            ; $6292: $30 $dd

    ld [hl+], a                                   ; $6294: $22
    ret nc                                        ; $6295: $d0

    ld sp, $0938                                  ; $6296: $31 $38 $09
    jr jr_0a2_62b2                                ; $6299: $18 $17

    ccf                                           ; $629b: $3f
    inc c                                         ; $629c: $0c
    ld c, b                                       ; $629d: $48
    inc sp                                        ; $629e: $33
    ld b, c                                       ; $629f: $41
    rrca                                          ; $62a0: $0f
    cpl                                           ; $62a1: $2f
    jr nc, jr_0a2_6234                            ; $62a2: $30 $90

    add hl, bc                                    ; $62a4: $09
    ldh a, [rBCPS]                                ; $62a5: $f0 $68
    sbc b                                         ; $62a7: $98
    db $10                                        ; $62a8: $10

jr_0a2_62a9:
    db $f4                                        ; $62a9: $f4
    add sp, $1c                                   ; $62aa: $e8 $1c
    ld h, d                                       ; $62ac: $62
    ld bc, $bc0c                                  ; $62ad: $01 $0c $bc
    ld a, h                                       ; $62b0: $7c
    dec a                                         ; $62b1: $3d

jr_0a2_62b2:
    nop                                           ; $62b2: $00
    ld a, $27                                     ; $62b3: $3e $27
    ld a, $2f                                     ; $62b5: $3e $2f
    jr nc, @+$20                                  ; $62b7: $30 $1e

    ld de, $0017                                  ; $62b9: $11 $17 $00
    jr jr_0a2_62dd                                ; $62bc: $18 $1f

    jr jr_0a2_62fa                                ; $62be: $18 $3a

    dec a                                         ; $62c0: $3d
    ld e, l                                       ; $62c1: $5d
    ld l, a                                       ; $62c2: $6f
    ld l, h                                       ; $62c3: $6c
    nop                                           ; $62c4: $00
    db $fc                                        ; $62c5: $fc
    ld [hl], h                                    ; $62c6: $74
    adc h                                         ; $62c7: $8c
    ld [hl], h                                    ; $62c8: $74
    adc h                                         ; $62c9: $8c
    db $f4                                        ; $62ca: $f4
    adc h                                         ; $62cb: $8c
    db $fc                                        ; $62cc: $fc
    ld [bc], a                                    ; $62cd: $02
    inc c                                         ; $62ce: $0c
    jr z, jr_0a2_62a9                             ; $62cf: $28 $d8

    ld l, h                                       ; $62d1: $6c
    sbc h                                         ; $62d2: $9c
    jp c, $0160                                   ; $62d3: $da $60 $01

    ld a, $09                                     ; $62d6: $3e $09
    jp Jump_0a2_7cb6                              ; $62d8: $c3 $b6 $7c


    ld l, e                                       ; $62db: $6b
    ld h, b                                       ; $62dc: $60

jr_0a2_62dd:
    ld bc, $f8e7                                  ; $62dd: $01 $e7 $f8
    ld h, b                                       ; $62e0: $60
    add hl, bc                                    ; $62e1: $09
    ld [$cfbb], sp                                ; $62e2: $08 $bb $cf
    db $dd                                        ; $62e5: $dd
    db $e3                                        ; $62e6: $e3
    ld h, b                                       ; $62e7: $60
    ld d, c                                       ; $62e8: $51
    ei                                            ; $62e9: $fb

jr_0a2_62ea:
    db $db                                        ; $62ea: $db
    rst $20                                       ; $62eb: $e7
    ld hl, $1fe7                                  ; $62ec: $21 $e7 $1f
    ld h, b                                       ; $62ef: $60
    add hl, sp                                    ; $62f0: $39
    ei                                            ; $62f1: $fb
    inc b                                         ; $62f2: $04
    cp a                                          ; $62f3: $bf
    ld b, b                                       ; $62f4: $40
    cp $0b                                        ; $62f5: $fe $0b
    nop                                           ; $62f7: $00
    ld b, a                                       ; $62f8: $47
    cp b                                          ; $62f9: $b8

jr_0a2_62fa:
    dec l                                         ; $62fa: $2d
    add $86                                       ; $62fb: $c6 $86
    ld bc, $817a                                  ; $62fd: $01 $7a $81
    add b                                         ; $6300: $80
    add hl, de                                    ; $6301: $19
    rra                                           ; $6302: $1f
    ei                                            ; $6303: $fb
    inc b                                         ; $6304: $04
    db $fd                                        ; $6305: $fd
    ld [bc], a                                    ; $6306: $02
    cp e                                          ; $6307: $bb
    ld b, h                                       ; $6308: $44
    ld a, a                                       ; $6309: $7f
    ld h, b                                       ; $630a: $60
    add b                                         ; $630b: $80
    ld a, h                                       ; $630c: $7c
    ld a, [bc]                                    ; $630d: $0a
    jp nc, $de18                                  ; $630e: $d2 $18 $de

    ld hl, $42bd                                  ; $6311: $21 $bd $42
    ei                                            ; $6314: $fb
    nop                                           ; $6315: $00
    inc b                                         ; $6316: $04
    rst $28                                       ; $6317: $ef
    db $10                                        ; $6318: $10
    add b                                         ; $6319: $80
    inc d                                         ; $631a: $14
    sbc d                                         ; $631b: $9a
    ld c, $52                                     ; $631c: $0e $52
    rst $38                                       ; $631e: $ff
    ld bc, $8070                                  ; $631f: $01 $70 $80
    ld [bc], a                                    ; $6322: $02
    nop                                           ; $6323: $00
    ret nz                                        ; $6324: $c0

    cp a                                          ; $6325: $bf
    inc b                                         ; $6326: $04
    jr jr_0a2_62ea                                ; $6327: $18 $c1

    jr nz, jr_0a2_62ea                            ; $6329: $20 $bf

    add e                                         ; $632b: $83
    inc b                                         ; $632c: $04
    ld h, b                                       ; $632d: $60
    rst $38                                       ; $632e: $ff
    rst $38                                       ; $632f: $ff
    nop                                           ; $6330: $00
    rst $38                                       ; $6331: $ff
    xor d                                         ; $6332: $aa
    inc a                                         ; $6333: $3c
    ld d, l                                       ; $6334: $55
    nop                                           ; $6335: $00
    ld b, $00                                     ; $6336: $06 $00
    ld [$3d00], sp                                ; $6338: $08 $00 $3d
    nop                                           ; $633b: $00
    ld a, [bc]                                    ; $633c: $0a
    ld [$bf52], sp                                ; $633d: $08 $52 $bf
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    rst $38                                       ; $6342: $ff
    inc bc                                        ; $6343: $03
    db $fd                                        ; $6344: $fd
    dec b                                         ; $6345: $05
    ld a, [$d52a]                                 ; $6346: $fa $2a $d5
    ld [bc], a                                    ; $6349: $02
    inc b                                         ; $634a: $04
    ei                                            ; $634b: $fb
    ld a, [bc]                                    ; $634c: $0a
    push af                                       ; $634d: $f5
    ld b, b                                       ; $634e: $40
    rst $38                                       ; $634f: $ff
    ld [$ab08], sp                                ; $6350: $08 $08 $ab
    nop                                           ; $6353: $00
    ld d, l                                       ; $6354: $55
    push de                                       ; $6355: $d5
    xor d                                         ; $6356: $aa
    xor e                                         ; $6357: $ab
    ld d, h                                       ; $6358: $54
    ld d, a                                       ; $6359: $57
    xor b                                         ; $635a: $a8
    ld [$f700], sp                                ; $635b: $08 $00 $f7
    db $10                                        ; $635e: $10
    rst $38                                       ; $635f: $ff
    xor e                                         ; $6360: $ab
    ld d, h                                       ; $6361: $54
    ld b, b                                       ; $6362: $40
    cp a                                          ; $6363: $bf
    xor [hl]                                      ; $6364: $ae
    nop                                           ; $6365: $00
    ld d, c                                       ; $6366: $51
    ld d, l                                       ; $6367: $55
    xor d                                         ; $6368: $aa
    cp d                                          ; $6369: $ba
    ld b, l                                       ; $636a: $45
    ld d, l                                       ; $636b: $55
    xor d                                         ; $636c: $aa
    nop                                           ; $636d: $00
    ld [$08ff], sp                                ; $636e: $08 $ff $08
    rst $38                                       ; $6371: $ff
    db $10                                        ; $6372: $10
    ld h, h                                       ; $6373: $64
    nop                                           ; $6374: $00
    xor h                                         ; $6375: $ac
    ld d, a                                       ; $6376: $57
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    rst $38                                       ; $6379: $ff
    or b                                          ; $637a: $b0
    ld c, a                                       ; $637b: $4f
    ld b, h                                       ; $637c: $44
    cp a                                          ; $637d: $bf
    dec bc                                        ; $637e: $0b
    db $f4                                        ; $637f: $f4
    dec b                                         ; $6380: $05
    nop                                           ; $6381: $00
    ld a, [$947b]                                 ; $6382: $fa $7b $94
    dec b                                         ; $6385: $05
    ld a, [$55ab]                                 ; $6386: $fa $ab $55
    dec d                                         ; $6389: $15
    nop                                           ; $638a: $00
    ld [$54ab], a                                 ; $638b: $ea $ab $54
    ld d, l                                       ; $638e: $55
    ld [$10ef], a                                 ; $638f: $ea $ef $10
    ld d, h                                       ; $6392: $54
    nop                                           ; $6393: $00
    xor d                                         ; $6394: $aa
    push de                                       ; $6395: $d5
    nop                                           ; $6396: $00
    ld d, b                                       ; $6397: $50
    xor d                                         ; $6398: $aa
    ld d, b                                       ; $6399: $50
    nop                                           ; $639a: $00
    jr z, jr_0a2_639d                             ; $639b: $28 $00

jr_0a2_639d:
    add b                                         ; $639d: $80
    ret nz                                        ; $639e: $c0

    nop                                           ; $639f: $00
    adc b                                         ; $63a0: $88
    and b                                         ; $63a1: $a0
    halt                                          ; $63a2: $76
    ld bc, $0065                                  ; $63a3: $01 $65 $00
    adc d                                         ; $63a6: $8a
    ld d, l                                       ; $63a7: $55
    nop                                           ; $63a8: $00
    add e                                         ; $63a9: $83
    ld a, [hl+]                                   ; $63aa: $2a
    dec d                                         ; $63ab: $15
    nop                                           ; $63ac: $00
    add d                                         ; $63ad: $82
    nop                                           ; $63ae: $00
    ld [$0005], sp                                ; $63af: $08 $05 $00
    ld a, [hl+]                                   ; $63b2: $2a
    ld [bc], a                                    ; $63b3: $02
    xor b                                         ; $63b4: $a8
    ld d, a                                       ; $63b5: $57
    ld d, h                                       ; $63b6: $54
    nop                                           ; $63b7: $00
    xor e                                         ; $63b8: $ab
    xor d                                         ; $63b9: $aa
    ld d, l                                       ; $63ba: $55
    ld b, b                                       ; $63bb: $40
    cp a                                          ; $63bc: $bf
    ld [$5215], a                                 ; $63bd: $ea $15 $52
    nop                                           ; $63c0: $00
    xor l                                         ; $63c1: $ad
    ld l, d                                       ; $63c2: $6a
    dec d                                         ; $63c3: $15
    ld [hl], h                                    ; $63c4: $74
    xor e                                         ; $63c5: $ab
    xor a                                         ; $63c6: $af
    ld d, b                                       ; $63c7: $50
    dec [hl]                                      ; $63c8: $35
    add b                                         ; $63c9: $80
    jr c, jr_0a2_63cc                             ; $63ca: $38 $00

jr_0a2_63cc:
    dec d                                         ; $63cc: $15
    ld [$14eb], a                                 ; $63cd: $ea $eb $14
    dec [hl]                                      ; $63d0: $35
    ld [$082b], a                                 ; $63d1: $ea $2b $08
    call nc, Call_0a2_7a85                        ; $63d4: $d4 $85 $7a
    ld b, b                                       ; $63d7: $40
    jr c, jr_0a2_63da                             ; $63d8: $38 $00

jr_0a2_63da:
    ld b, b                                       ; $63da: $40
    nop                                           ; $63db: $00
    dec c                                         ; $63dc: $0d
    nop                                           ; $63dd: $00
    and [hl]                                      ; $63de: $a6
    ld d, l                                       ; $63df: $55
    rlca                                          ; $63e0: $07
    ld l, $8d                                     ; $63e1: $2e $8d
    db $d3                                        ; $63e3: $d3
    ld b, $53                                     ; $63e4: $06 $53
    nop                                           ; $63e6: $00
    xor a                                         ; $63e7: $af
    ld bc, $0a00                                  ; $63e8: $01 $00 $0a
    nop                                           ; $63eb: $00
    ld bc, $5800                                  ; $63ec: $01 $00 $58
    nop                                           ; $63ef: $00
    ld [hl-], a                                   ; $63f0: $32
    pop af                                        ; $63f1: $f1
    ldh a, [$f2]                                  ; $63f2: $f0 $f2
    ld hl, sp-$1b                                 ; $63f4: $f8 $e5
    ldh a, [$e1]                                  ; $63f6: $f0 $e1
    nop                                           ; $63f8: $00
    ld a, [$156a]                                 ; $63f9: $fa $6a $15
    call nc, $7a2b                                ; $63fc: $d4 $2b $7a
    dec b                                         ; $63ff: $05
    ld d, h                                       ; $6400: $54
    ld b, c                                       ; $6401: $41
    xor e                                         ; $6402: $ab
    ld b, b                                       ; $6403: $40
    nop                                           ; $6404: $00
    xor a                                         ; $6405: $af
    ld l, e                                       ; $6406: $6b
    dec d                                         ; $6407: $15
    ld d, b                                       ; $6408: $50
    xor a                                         ; $6409: $af
    ret nz                                        ; $640a: $c0

    jr z, jr_0a2_640d                             ; $640b: $28 $00

jr_0a2_640d:
    ld bc, $04ff                                  ; $640d: $01 $ff $04
    ei                                            ; $6410: $fb
    jr nz, @+$01                                  ; $6411: $20 $ff

    inc b                                         ; $6413: $04
    rst $38                                       ; $6414: $ff
    db $10                                        ; $6415: $10
    ld [bc], a                                    ; $6416: $02
    db $fd                                        ; $6417: $fd
    ld b, b                                       ; $6418: $40
    and d                                         ; $6419: $a2
    nop                                           ; $641a: $00
    inc b                                         ; $641b: $04
    rst $38                                       ; $641c: $ff
    ld hl, $04df                                  ; $641d: $21 $df $04
    add b                                         ; $6420: $80
    rst $38                                       ; $6421: $ff
    dec b                                         ; $6422: $05
    rst $38                                       ; $6423: $ff
    ld a, [bc]                                    ; $6424: $0a
    xor $00                                       ; $6425: $ee $00
    db $10                                        ; $6427: $10
    rst $38                                       ; $6428: $ff
    nop                                           ; $6429: $00
    ld hl, $40fe                                  ; $642a: $21 $fe $40
    cp a                                          ; $642d: $bf
    inc b                                         ; $642e: $04
    ei                                            ; $642f: $fb
    rlca                                          ; $6430: $07
    rst $38                                       ; $6431: $ff
    ld a, [bc]                                    ; $6432: $0a
    ld a, b                                       ; $6433: $78
    rst $38                                       ; $6434: $ff
    add d                                         ; $6435: $82
    db $fd                                        ; $6436: $fd
    ret nz                                        ; $6437: $c0

    jr z, jr_0a2_643e                             ; $6438: $28 $04

    ld [$9001], sp                                ; $643a: $08 $01 $90
    nop                                           ; $643d: $00

jr_0a2_643e:
    rst $28                                       ; $643e: $ef
    ld b, h                                       ; $643f: $44
    rst $38                                       ; $6440: $ff
    add hl, bc                                    ; $6441: $09
    cp $00                                        ; $6442: $fe $00
    rst $38                                       ; $6444: $ff
    ld d, c                                       ; $6445: $51
    nop                                           ; $6446: $00
    cp a                                          ; $6447: $bf
    inc b                                         ; $6448: $04
    rst $38                                       ; $6449: $ff
    dec bc                                        ; $644a: $0b
    rst $38                                       ; $644b: $ff
    inc d                                         ; $644c: $14
    rst $38                                       ; $644d: $ff
    ld a, [bc]                                    ; $644e: $0a
    ld [bc], a                                    ; $644f: $02
    db $fd                                        ; $6450: $fd
    ld c, c                                       ; $6451: $49
    cp $15                                        ; $6452: $fe $15
    rst $38                                       ; $6454: $ff
    ld [hl+], a                                   ; $6455: $22
    ld b, [hl]                                    ; $6456: $46
    nop                                           ; $6457: $00
    xor l                                         ; $6458: $ad
    nop                                           ; $6459: $00

Jump_0a2_645a:
    cp $d8                                        ; $645a: $fe $d8
    rst $38                                       ; $645c: $ff
    ld l, b                                       ; $645d: $68
    rst $38                                       ; $645e: $ff
    sbc h                                         ; $645f: $9c
    ld a, a                                       ; $6460: $7f
    ld c, d                                       ; $6461: $4a
    nop                                           ; $6462: $00
    cp a                                          ; $6463: $bf
    dec l                                         ; $6464: $2d
    jp nc, $817e                                  ; $6465: $d2 $7e $81

    xor d                                         ; $6468: $aa
    ld d, l                                       ; $6469: $55
    ld d, h                                       ; $646a: $54
    ld [bc], a                                    ; $646b: $02
    xor e                                         ; $646c: $ab
    add b                                         ; $646d: $80
    ld a, a                                       ; $646e: $7f
    ld [de], a                                    ; $646f: $12
    db $ed                                        ; $6470: $ed
    jr nz, jr_0a2_64c7                            ; $6471: $20 $54

    nop                                           ; $6473: $00
    ld b, b                                       ; $6474: $40
    ld [bc], a                                    ; $6475: $02
    rst $38                                       ; $6476: $ff
    inc h                                         ; $6477: $24
    ei                                            ; $6478: $fb
    or b                                          ; $6479: $b0
    ld a, a                                       ; $647a: $7f
    jr z, jr_0a2_64ab                             ; $647b: $28 $2e

    nop                                           ; $647d: $00
    ld a, [de]                                    ; $647e: $1a
    xor b                                         ; $647f: $a8
    ld [$b001], sp                                ; $6480: $08 $01 $b0
    inc [hl]                                      ; $6483: $34
    nop                                           ; $6484: $00
    jr z, jr_0a2_64ed                             ; $6485: $28 $66

    nop                                           ; $6487: $00
    dec b                                         ; $6488: $05
    rst $38                                       ; $6489: $ff
    ld b, a                                       ; $648a: $47
    nop                                           ; $648b: $00
    cp a                                          ; $648c: $bf
    dec hl                                        ; $648d: $2b
    rst $38                                       ; $648e: $ff
    dec d                                         ; $648f: $15
    rst $38                                       ; $6490: $ff
    adc c                                         ; $6491: $89
    ld a, a                                       ; $6492: $7f
    dec c                                         ; $6493: $0d
    nop                                           ; $6494: $00
    rst $38                                       ; $6495: $ff
    ld c, $ff                                     ; $6496: $0e $ff
    cpl                                           ; $6498: $2f
    rst $38                                       ; $6499: $ff
    ld [hl], e                                    ; $649a: $73
    rst $38                                       ; $649b: $ff
    jp hl                                         ; $649c: $e9


    nop                                           ; $649d: $00
    rst $30                                       ; $649e: $f7
    pop de                                        ; $649f: $d1
    rst $28                                       ; $64a0: $ef
    dec b                                         ; $64a1: $05
    rst $38                                       ; $64a2: $ff
    adc e                                         ; $64a3: $8b
    rst $38                                       ; $64a4: $ff
    ld b, c                                       ; $64a5: $41
    and b                                         ; $64a6: $a0
    ld h, [hl]                                    ; $64a7: $66
    ld bc, $a57f                                  ; $64a8: $01 $7f $a5

jr_0a2_64ab:
    ld bc, $efd2                                  ; $64ab: $01 $d2 $ef
    xor d                                         ; $64ae: $aa
    rst $10                                       ; $64af: $d7
    push bc                                       ; $64b0: $c5
    nop                                           ; $64b1: $00
    rst $38                                       ; $64b2: $ff
    ld a, [$72ff]                                 ; $64b3: $fa $ff $72
    rst $38                                       ; $64b6: $ff
    ldh [rIE], a                                  ; $64b7: $e0 $ff
    ret z                                         ; $64b9: $c8

    add d                                         ; $64ba: $82
    xor h                                         ; $64bb: $ac
    nop                                           ; $64bc: $00
    nop                                           ; $64bd: $00
    rst $38                                       ; $64be: $ff
    sub d                                         ; $64bf: $92
    rst $28                                       ; $64c0: $ef
    add hl, bc                                    ; $64c1: $09
    adc h                                         ; $64c2: $8c
    ld bc, $022a                                  ; $64c3: $01 $2a $02
    push de                                       ; $64c6: $d5

jr_0a2_64c7:
    dec d                                         ; $64c7: $15
    ld a, [$d5aa]                                 ; $64c8: $fa $aa $d5
    inc d                                         ; $64cb: $14
    ld a, b                                       ; $64cc: $78
    ld bc, $0005                                  ; $64cd: $01 $05 $00
    cp $42                                        ; $64d0: $fe $42
    cp l                                          ; $64d2: $bd
    db $10                                        ; $64d3: $10
    rst $38                                       ; $64d4: $ff
    pop af                                        ; $64d5: $f1
    rlca                                          ; $64d6: $07
    ld d, b                                       ; $64d7: $50
    nop                                           ; $64d8: $00
    xor a                                         ; $64d9: $af
    xor d                                         ; $64da: $aa

Jump_0a2_64db:
    ld d, l                                       ; $64db: $55
    call nc, $b8ab                                ; $64dc: $d4 $ab $b8
    ld d, a                                       ; $64df: $57
    jr jr_0a2_6522                                ; $64e0: $18 $40

    rst $28                                       ; $64e2: $ef
    xor b                                         ; $64e3: $a8
    add hl, bc                                    ; $64e4: $09
    add $f1                                       ; $64e5: $c6 $f1
    dec b                                         ; $64e7: $05
    ld a, [$f40b]                                 ; $64e8: $fa $0b $f4
    nop                                           ; $64eb: $00
    dec d                                         ; $64ec: $15

jr_0a2_64ed:
    ld [$f50a], a                                 ; $64ed: $ea $0a $f5
    dec c                                         ; $64f0: $0d
    ld a, [c]                                     ; $64f1: $f2
    ld a, [hl+]                                   ; $64f2: $2a
    push de                                       ; $64f3: $d5
    nop                                           ; $64f4: $00
    add l                                         ; $64f5: $85
    ld a, [hl]                                    ; $64f6: $7e
    xor d                                         ; $64f7: $aa
    ld d, l                                       ; $64f8: $55
    ld d, b                                       ; $64f9: $50
    xor a                                         ; $64fa: $af
    xor b                                         ; $64fb: $a8
    ld d, a                                       ; $64fc: $57
    nop                                           ; $64fd: $00
    ret nz                                        ; $64fe: $c0

    ccf                                           ; $64ff: $3f
    xor h                                         ; $6500: $ac
    ld [hl], a                                    ; $6501: $77
    nop                                           ; $6502: $00
    rst $38                                       ; $6503: $ff
    ld l, b                                       ; $6504: $68
    rst $10                                       ; $6505: $d7
    nop                                           ; $6506: $00
    nop                                           ; $6507: $00
    rst $38                                       ; $6508: $ff
    jr nz, @+$01                                  ; $6509: $20 $ff

    add h                                         ; $650b: $84
    rst $38                                       ; $650c: $ff
    add hl, de                                    ; $650d: $19
    rst $38                                       ; $650e: $ff
    inc d                                         ; $650f: $14
    or [hl]                                       ; $6510: $b6
    rst $38                                       ; $6511: $ff
    ld a, l                                       ; $6512: $7d
    add hl, bc                                    ; $6513: $09
    ld [bc], a                                    ; $6514: $02
    rst $30                                       ; $6515: $f7
    dec c                                         ; $6516: $0d
    ld [bc], a                                    ; $6517: $02
    sbc b                                         ; $6518: $98
    rst $20                                       ; $6519: $e7
    nop                                           ; $651a: $00
    dec b                                         ; $651b: $05
    rst $38                                       ; $651c: $ff
    ld c, d                                       ; $651d: $4a
    rst $38                                       ; $651e: $ff
    rla                                           ; $651f: $17
    rst $38                                       ; $6520: $ff
    ld l, a                                       ; $6521: $6f

jr_0a2_6522:
    rst $38                                       ; $6522: $ff
    ld b, b                                       ; $6523: $40
    db $db                                        ; $6524: $db
    ld a, b                                       ; $6525: $78
    db $10                                        ; $6526: $10
    cp b                                          ; $6527: $b8
    rst $10                                       ; $6528: $d7
    jr z, @+$01                                   ; $6529: $28 $ff

    ld [hl], b                                    ; $652b: $70
    rst $38                                       ; $652c: $ff
    ld bc, $ffe2                                  ; $652d: $01 $e2 $ff
    call nc, $bbff                                ; $6530: $d4 $ff $bb
    rst $38                                       ; $6533: $ff
    or $2d                                        ; $6534: $f6 $2d
    ld [bc], a                                    ; $6536: $02
    ld de, $ff02                                  ; $6537: $11 $02 $ff
    add l                                         ; $653a: $85
    and b                                         ; $653b: $a0
    nop                                           ; $653c: $00
    ld d, [hl]                                    ; $653d: $56
    rst $38                                       ; $653e: $ff
    xor [hl]                                      ; $653f: $ae
    ld [hl-], a                                   ; $6540: $32
    nop                                           ; $6541: $00
    ld b, b                                       ; $6542: $40
    cp $3d                                        ; $6543: $fe $3d
    ld [bc], a                                    ; $6545: $02
    cp $87                                        ; $6546: $fe $87
    cpl                                           ; $6548: $2f
    rst $10                                       ; $6549: $d7
    sub h                                         ; $654a: $94
    rst $28                                       ; $654b: $ef
    nop                                           ; $654c: $00
    ld a, a                                       ; $654d: $7f
    db $fc                                        ; $654e: $fc
    or l                                          ; $654f: $b5
    adc $8c                                       ; $6550: $ce $8c
    rst $38                                       ; $6552: $ff
    sub [hl]                                      ; $6553: $96
    rst $38                                       ; $6554: $ff
    nop                                           ; $6555: $00
    db $ed                                        ; $6556: $ed
    rst $38                                       ; $6557: $ff
    ld sp, $abcf                                  ; $6558: $31 $cf $ab
    rst $38                                       ; $655b: $ff
    db $fd                                        ; $655c: $fd
    inc bc                                        ; $655d: $03
    nop                                           ; $655e: $00
    ld e, a                                       ; $655f: $5f
    ld bc, $01ff                                  ; $6560: $01 $ff $01
    or l                                          ; $6563: $b5
    ld c, e                                       ; $6564: $4b
    ld l, c                                       ; $6565: $69
    sub a                                         ; $6566: $97
    nop                                           ; $6567: $00
    inc de                                        ; $6568: $13
    rst $28                                       ; $6569: $ef
    xor e                                         ; $656a: $ab
    nop                                           ; $656b: $00
    sbc $01                                       ; $656c: $de $01
    ld a, [$1405]                                 ; $656e: $fa $05 $14
    ld [hl], h                                    ; $6571: $74
    adc e                                         ; $6572: $8b
    ld bc, $0269                                  ; $6573: $01 $69 $02
    or l                                          ; $6576: $b5
    ld d, h                                       ; $6577: $54
    nop                                           ; $6578: $00
    add c                                         ; $6579: $81
    rst $38                                       ; $657a: $ff
    ld b, b                                       ; $657b: $40
    jp z, $0273                                   ; $657c: $ca $73 $02

    cp e                                          ; $657f: $bb
    rst $00                                       ; $6580: $c7
    sub $83                                       ; $6581: $d6 $83
    db $fc                                        ; $6583: $fc
    add e                                         ; $6584: $83
    db $10                                        ; $6585: $10
    cp d                                          ; $6586: $ba
    rst $00                                       ; $6587: $c7
    ret z                                         ; $6588: $c8

    ld e, b                                       ; $6589: $58
    nop                                           ; $658a: $00
    sbc e                                         ; $658b: $9b
    ldh [$b0], a                                  ; $658c: $e0 $b0
    ret nz                                        ; $658e: $c0

    ld b, b                                       ; $658f: $40
    db $eb                                        ; $6590: $eb
    ld [hl], l                                    ; $6591: $75
    ld [bc], a                                    ; $6592: $02
    xor a                                         ; $6593: $af
    ret nc                                        ; $6594: $d0

    sub l                                         ; $6595: $95
    ld [$fde2], a                                 ; $6596: $ea $e2 $fd
    nop                                           ; $6599: $00
    rst $38                                       ; $659a: $ff
    rst $38                                       ; $659b: $ff
    ld d, l                                       ; $659c: $55
    xor $8e                                       ; $659d: $ee $8e
    ld a, h                                       ; $659f: $7c
    rst $38                                       ; $65a0: $ff
    ld a, h                                       ; $65a1: $7c
    nop                                           ; $65a2: $00
    sbc l                                         ; $65a3: $9d
    ld h, [hl]                                    ; $65a4: $66
    ld l, h                                       ; $65a5: $6c
    rst $00                                       ; $65a6: $c7
    ld d, [hl]                                    ; $65a7: $56
    rst $28                                       ; $65a8: $ef
    push af                                       ; $65a9: $f5
    rst $38                                       ; $65aa: $ff
    nop                                           ; $65ab: $00
    db $fd                                        ; $65ac: $fd
    rst $38                                       ; $65ad: $ff
    srl h                                         ; $65ae: $cb $3c
    ld h, $18                                     ; $65b0: $26 $18
    rst $38                                       ; $65b2: $ff
    ld [$f300], sp                                ; $65b3: $08 $00 $f3
    inc c                                         ; $65b6: $0c
    jp hl                                         ; $65b7: $e9


    ld e, $1c                                     ; $65b8: $1e $1c
    rst $38                                       ; $65ba: $ff
    xor a                                         ; $65bb: $af
    rst $38                                       ; $65bc: $ff
    nop                                           ; $65bd: $00
    ld a, [hl]                                    ; $65be: $7e
    rst $38                                       ; $65bf: $ff
    srl a                                         ; $65c0: $cb $3f
    xor [hl]                                      ; $65c2: $ae
    dec de                                        ; $65c3: $1b
    ld l, a                                       ; $65c4: $6f
    dec de                                        ; $65c5: $1b
    dec b                                         ; $65c6: $05
    rst $08                                       ; $65c7: $cf
    dec sp                                        ; $65c8: $3b
    ld e, e                                       ; $65c9: $5b
    cp a                                          ; $65ca: $bf
    sbc d                                         ; $65cb: $9a
    add hl, de                                    ; $65cc: $19
    ld bc, $4e04                                  ; $65cd: $01 $04 $4e
    ld [bc], a                                    ; $65d0: $02
    db $10                                        ; $65d1: $10
    add d                                         ; $65d2: $82
    db $fd                                        ; $65d3: $fd
    inc d                                         ; $65d4: $14
    sub [hl]                                      ; $65d5: $96
    ld [bc], a                                    ; $65d6: $02
    inc b                                         ; $65d7: $04
    rst $38                                       ; $65d8: $ff
    ld b, b                                       ; $65d9: $40
    cp a                                          ; $65da: $bf
    nop                                           ; $65db: $00
    db $10                                        ; $65dc: $10
    rst $38                                       ; $65dd: $ff
    db $f4                                        ; $65de: $f4
    rst $38                                       ; $65df: $ff
    ld a, c                                       ; $65e0: $79
    cp $0c                                        ; $65e1: $fe $0c
    rst $38                                       ; $65e3: $ff
    db $10                                        ; $65e4: $10
    add [hl]                                      ; $65e5: $86
    rst $38                                       ; $65e6: $ff
    inc de                                        ; $65e7: $13
    ld l, b                                       ; $65e8: $68
    ld [bc], a                                    ; $65e9: $02
    add b                                         ; $65ea: $80
    ld a, a                                       ; $65eb: $7f
    nop                                           ; $65ec: $00
    rst $38                                       ; $65ed: $ff
    nop                                           ; $65ee: $00
    jr nc, @+$01                                  ; $65ef: $30 $ff

    ld d, c                                       ; $65f1: $51
    cp [hl]                                       ; $65f2: $be
    jr z, @+$01                                   ; $65f3: $28 $ff

    ret nc                                        ; $65f5: $d0

    rst $38                                       ; $65f6: $ff
    nop                                           ; $65f7: $00
    add d                                         ; $65f8: $82
    rst $38                                       ; $65f9: $ff
    ld [$00f7], sp                                ; $65fa: $08 $f7 $00
    rst $38                                       ; $65fd: $ff
    add l                                         ; $65fe: $85
    ld a, [hl]                                    ; $65ff: $7e
    ld b, l                                       ; $6600: $45
    ld [hl+], a                                   ; $6601: $22
    ldh [rNR11], a                                ; $6602: $e0 $11
    add b                                         ; $6604: $80
    ld a, a                                       ; $6605: $7f
    inc h                                         ; $6606: $24

jr_0a2_6607:
    ret z                                         ; $6607: $c8

    ld [bc], a                                    ; $6608: $02
    ld c, b                                       ; $6609: $48
    ld [de], a                                    ; $660a: $12
    nop                                           ; $660b: $00
    ld h, h                                       ; $660c: $64
    sub b                                         ; $660d: $90
    ld h, [hl]                                    ; $660e: $66
    ld bc, $48f0                                  ; $660f: $01 $f0 $48
    sub b                                         ; $6612: $90
    rst $38                                       ; $6613: $ff
    ldh a, [$58]                                  ; $6614: $f0 $58
    add hl, bc                                    ; $6616: $09
    cp $40                                        ; $6617: $fe $40
    adc h                                         ; $6619: $8c
    add sp, $00                                   ; $661a: $e8 $00
    ld [bc], a                                    ; $661c: $02
    rst $38                                       ; $661d: $ff
    pop de                                        ; $661e: $d1
    cpl                                           ; $661f: $2f
    ld a, [$0007]                                 ; $6620: $fa $07 $00
    and c                                         ; $6623: $a1
    ld e, a                                       ; $6624: $5f
    ld b, d                                       ; $6625: $42
    cp a                                          ; $6626: $bf
    ld c, d                                       ; $6627: $4a
    dec b                                         ; $6628: $05
    cp h                                          ; $6629: $bc
    ld b, e                                       ; $662a: $43
    ld bc, $ab54                                  ; $662b: $01 $54 $ab
    jr z, jr_0a2_6607                             ; $662e: $28 $d7

    ld b, c                                       ; $6630: $41

jr_0a2_6631:
    cp a                                          ; $6631: $bf
    ld [bc], a                                    ; $6632: $02
    jr nz, jr_0a2_6637                            ; $6633: $20 $02

    nop                                           ; $6635: $00

Jump_0a2_6636:
    adc e                                         ; $6636: $8b

jr_0a2_6637:
    rst $38                                       ; $6637: $ff
    push af                                       ; $6638: $f5
    rst $38                                       ; $6639: $ff
    sbc [hl]                                      ; $663a: $9e
    pop hl                                        ; $663b: $e1
    inc hl                                        ; $663c: $23
    ret nz                                        ; $663d: $c0

    db $10                                        ; $663e: $10
    xor h                                         ; $663f: $ac
    ret nz                                        ; $6640: $c0

    ld a, e                                       ; $6641: $7b
    scf                                           ; $6642: $37
    inc bc                                        ; $6643: $03
    cp a                                          ; $6644: $bf
    ret nz                                        ; $6645: $c0

    sub [hl]                                      ; $6646: $96
    jp hl                                         ; $6647: $e9


    nop                                           ; $6648: $00
    ld d, d                                       ; $6649: $52
    pop hl                                        ; $664a: $e1
    daa                                           ; $664b: $27
    ret nz                                        ; $664c: $c0

    ld a, a                                       ; $664d: $7f
    ret nz                                        ; $664e: $c0

    xor [hl]                                      ; $664f: $ae
    ld d, c                                       ; $6650: $51
    db $10                                        ; $6651: $10
    sub $69                                       ; $6652: $d6 $69
    nop                                           ; $6654: $00
    cp b                                          ; $6655: $b8
    ld bc, $f9d6                                  ; $6656: $01 $d6 $f9
    add e                                         ; $6659: $83
    ld a, a                                       ; $665a: $7f
    inc d                                         ; $665b: $14
    inc b                                         ; $665c: $04
    rst $38                                       ; $665d: $ff
    adc d                                         ; $665e: $8a
    jr nc, jr_0a2_6662                            ; $665f: $30 $01

    rst $38                                       ; $6661: $ff

jr_0a2_6662:
    sbc b                                         ; $6662: $98
    nop                                           ; $6663: $00
    jp nc, Jump_000_00fc                          ; $6664: $d2 $fc $00

    cp a                                          ; $6667: $bf
    ld hl, sp-$51                                 ; $6668: $f8 $af
    rst $38                                       ; $666a: $ff
    ld [hl], h                                    ; $666b: $74
    adc a                                         ; $666c: $8f
    pop hl                                        ; $666d: $e1
    ld e, $00                                     ; $666e: $1e $00
    daa                                           ; $6670: $27
    call c, $fc5f                                 ; $6671: $dc $5f $fc
    push hl                                       ; $6674: $e5
    ld e, $10                                     ; $6675: $1e $10
    rrca                                          ; $6677: $0f
    nop                                           ; $6678: $00
    halt                                          ; $6679: $76
    rrca                                          ; $667a: $0f
    add sp, -$09                                  ; $667b: $e8 $f7
    and d                                         ; $667d: $a2
    ld a, a                                       ; $667e: $7f
    cp a                                          ; $667f: $bf
    ld a, a                                       ; $6680: $7f
    nop                                           ; $6681: $00
    or b                                          ; $6682: $b0
    ld a, a                                       ; $6683: $7f
    ld [$f73d], a                                 ; $6684: $ea $3d $f7
    jr c, jr_0a2_6631                             ; $6687: $38 $a8

    ld [hl], a                                    ; $6689: $77
    ld d, b                                       ; $668a: $50
    jr nz, jr_0a2_66f9                            ; $668b: $20 $6c

    ld bc, $93f9                                  ; $668d: $01 $f9 $93
    inc bc                                        ; $6690: $03
    ld [hl], $f9                                  ; $6691: $36 $f9
    sbc [hl]                                      ; $6693: $9e
    ld [hl], c                                    ; $6694: $71
    nop                                           ; $6695: $00
    ld d, h                                       ; $6696: $54
    cp e                                          ; $6697: $bb
    rra                                           ; $6698: $1f
    rst $38                                       ; $6699: $ff
    rra                                           ; $669a: $1f
    rst $38                                       ; $669b: $ff
    push de                                       ; $669c: $d5
    rst $38                                       ; $669d: $ff
    ld bc, $dcab                                  ; $669e: $01 $ab $dc
    or l                                          ; $66a1: $b5
    ret z                                         ; $66a2: $c8

    xor d                                         ; $66a3: $aa
    call c, Call_0a2_6dc9                         ; $66a4: $dc $c9 $6d
    ld bc, $a000                                  ; $66a7: $01 $00 $a0
    rst $38                                       ; $66aa: $ff
    ld e, d                                       ; $66ab: $5a
    push hl                                       ; $66ac: $e5
    adc $f1                                       ; $66ad: $ce $f1
    ld e, e                                       ; $66af: $5b
    db $e4                                        ; $66b0: $e4
    nop                                           ; $66b1: $00
    push hl                                       ; $66b2: $e5
    ld a, d                                       ; $66b3: $7a
    push af                                       ; $66b4: $f5
    ld a, a                                       ; $66b5: $7f
    ld h, [hl]                                    ; $66b6: $66
    ld sp, hl                                     ; $66b7: $f9
    db $d3                                        ; $66b8: $d3
    db $fc                                        ; $66b9: $fc
    nop                                           ; $66ba: $00
    add sp, -$01                                  ; $66bb: $e8 $ff
    ld [hl], l                                    ; $66bd: $75
    rst $38                                       ; $66be: $ff
    push hl                                       ; $66bf: $e5
    ld e, $b6                                     ; $66c0: $1e $b6
    ld c, h                                       ; $66c2: $4c
    ld bc, $bc4f                                  ; $66c3: $01 $4f $bc
    cp $fd                                        ; $66c6: $fe $fd
    ld c, l                                       ; $66c8: $4d
    cp $e4                                        ; $66c9: $fe $e4
    inc e                                         ; $66cb: $1c
    ld bc, $d700                                  ; $66cc: $01 $00 $d7
    rst $28                                       ; $66cf: $ef
    or a                                          ; $66d0: $b7
    ld h, e                                       ; $66d1: $63
    ld c, e                                       ; $66d2: $4b
    scf                                           ; $66d3: $37
    ld e, l                                       ; $66d4: $5d
    ccf                                           ; $66d5: $3f
    nop                                           ; $66d6: $00
    rst $20                                       ; $66d7: $e7
    jr c, jr_0a2_6734                             ; $66d8: $38 $5a

    cp l                                          ; $66da: $bd
    cp a                                          ; $66db: $bf
    ld a, a                                       ; $66dc: $7f
    inc [hl]                                      ; $66dd: $34
    rst $38                                       ; $66de: $ff
    nop                                           ; $66df: $00
    ld a, [hl-]                                   ; $66e0: $3a
    rst $38                                       ; $66e1: $ff
    ld h, $c1                                     ; $66e2: $26 $c1
    cp h                                          ; $66e4: $bc
    jp $ef52                                      ; $66e5: $c3 $52 $ef


    ld b, b                                       ; $66e8: $40
    and l                                         ; $66e9: $a5
    rst $20                                       ; $66ea: $e7
    inc bc                                        ; $66eb: $03
    ld l, h                                       ; $66ec: $6c
    sbc a                                         ; $66ed: $9f
    sbc e                                         ; $66ee: $9b
    inc c                                         ; $66ef: $0c
    rst $18                                       ; $66f0: $df
    inc c                                         ; $66f1: $0c
    ld bc, $f2cd                                  ; $66f2: $01 $cd $f2
    rst $18                                       ; $66f5: $df
    ldh [$cb], a                                  ; $66f6: $e0 $cb
    db $f4                                        ; $66f8: $f4

jr_0a2_66f9:
    add sp, -$09                                  ; $66f9: $e8 $f7
    inc bc                                        ; $66fb: $03
    nop                                           ; $66fc: $00
    ldh a, [rIE]                                  ; $66fd: $f0 $ff
    ld c, c                                       ; $66ff: $49
    ldh a, [$5a]                                  ; $6700: $f0 $5a
    pop hl                                        ; $6702: $e1
    rst $28                                       ; $6703: $ef
    ld b, a                                       ; $6704: $47
    nop                                           ; $6705: $00
    ld h, [hl]                                    ; $6706: $66
    call z, $ce75                                 ; $6707: $cc $75 $ce
    ld d, [hl]                                    ; $670a: $56
    rst $28                                       ; $670b: $ef
    rst $38                                       ; $670c: $ff
    rst $38                                       ; $670d: $ff
    nop                                           ; $670e: $00
    scf                                           ; $670f: $37
    ld hl, sp-$67                                 ; $6710: $f8 $99
    ld [hl], b                                    ; $6712: $70
    ld c, d                                       ; $6713: $4a
    or b                                          ; $6714: $b0
    rst $38                                       ; $6715: $ff
    rst $38                                       ; $6716: $ff
    nop                                           ; $6717: $00
    add $7f                                       ; $6718: $c6 $7f
    ld d, c                                       ; $671a: $51
    xor $a4                                       ; $671b: $ee $a4
    adc $f0                                       ; $671d: $ce $f0
    adc $00                                       ; $671f: $ce $00
    dec l                                         ; $6721: $2d
    add $f8                                       ; $6722: $c6 $f8
    ld b, a                                       ; $6724: $47
    sub [hl]                                      ; $6725: $96
    ld l, a                                       ; $6726: $6f
    ld l, c                                       ; $6727: $69
    sbc [hl]                                      ; $6728: $9e
    inc b                                         ; $6729: $04
    inc l                                         ; $672a: $2c
    rst $18                                       ; $672b: $df
    sbc $ff                                       ; $672c: $de $ff
    xor e                                         ; $672e: $ab
    or $03                                        ; $672f: $f6 $03
    ld c, l                                       ; $6731: $4d
    add b                                         ; $6732: $80
    nop                                           ; $6733: $00

jr_0a2_6734:
    ld [hl], $c1                                  ; $6734: $36 $c1
    add h                                         ; $6736: $84
    ei                                            ; $6737: $fb
    ld l, l                                       ; $6738: $6d
    ld a, [c]                                     ; $6739: $f2
    ld c, d                                       ; $673a: $4a
    push af                                       ; $673b: $f5
    ld [$f7e8], sp                                ; $673c: $08 $e8 $f7
    ldh a, [rIE]                                  ; $673f: $f0 $ff
    ld a, h                                       ; $6741: $7c
    ld [$ff7f], sp                                ; $6742: $08 $7f $ff
    ei                                            ; $6745: $fb
    nop                                           ; $6746: $00
    call Call_0a2_709d                            ; $6747: $cd $9d $70
    ld h, $f8                                     ; $674a: $26 $f8
    dec d                                         ; $674c: $15
    ld a, [$0822]                                 ; $674d: $fa $22 $08
    db $fd                                        ; $6750: $fd
    ld e, c                                       ; $6751: $59
    cp $bc                                        ; $6752: $fe $bc
    ld c, e                                       ; $6754: $4b
    inc b                                         ; $6755: $04
    ld b, c                                       ; $6756: $41
    rst $38                                       ; $6757: $ff
    jp Jump_0a2_7f00                              ; $6758: $c3 $00 $7f


    rst $20                                       ; $675b: $e7
    ld a, a                                       ; $675c: $7f
    xor $7f                                       ; $675d: $ee $7f
    ld a, l                                       ; $675f: $7d
    cp $5d                                        ; $6760: $fe $5d
    ld bc, $d4e6                                  ; $6762: $01 $e6 $d4
    rst $28                                       ; $6765: $ef
    cp $ff                                        ; $6766: $fe $ff
    or a                                          ; $6768: $b7
    rst $08                                       ; $6769: $cf
    ret nz                                        ; $676a: $c0

    ld a, [bc]                                    ; $676b: $0a
    nop                                           ; $676c: $00
    rst $30                                       ; $676d: $f7
    rst $38                                       ; $676e: $ff
    rst $18                                       ; $676f: $df
    rst $38                                       ; $6770: $ff
    call nc, $052f                                ; $6771: $d4 $2f $05
    cp $00                                        ; $6774: $fe $00
    ld e, a                                       ; $6776: $5f
    cp $b5                                        ; $6777: $fe $b5
    rst $08                                       ; $6779: $cf
    ld e, e                                       ; $677a: $5b
    call $dfed                                    ; $677b: $cd $ed $df
    nop                                           ; $677e: $00
    db $dd                                        ; $677f: $dd
    rst $38                                       ; $6780: $ff
    ld d, a                                       ; $6781: $57
    rst $38                                       ; $6782: $ff
    ld sp, hl                                     ; $6783: $f9
    rlca                                          ; $6784: $07
    dec l                                         ; $6785: $2d
    inc bc                                        ; $6786: $03
    nop                                           ; $6787: $00
    sbc a                                         ; $6788: $9f
    ld bc, $07f9                                  ; $6789: $01 $f9 $07
    and [hl]                                      ; $678c: $a6
    pop bc                                        ; $678d: $c1
    ld l, l                                       ; $678e: $6d
    sub e                                         ; $678f: $93
    inc b                                         ; $6790: $04
    ld d, d                                       ; $6791: $52
    xor a                                         ; $6792: $af
    add l                                         ; $6793: $85
    rst $38                                       ; $6794: $ff
    ld d, e                                       ; $6795: $53
    adc c                                         ; $6796: $89
    inc b                                         ; $6797: $04
    xor e                                         ; $6798: $ab
    rst $38                                       ; $6799: $ff
    nop                                           ; $679a: $00
    ld a, h                                       ; $679b: $7c
    add e                                         ; $679c: $83
    rst $18                                       ; $679d: $df
    add a                                         ; $679e: $87
    db $f4                                        ; $679f: $f4
    adc a                                         ; $67a0: $8f
    sub l                                         ; $67a1: $95
    xor $40                                       ; $67a2: $ee $40
    call z, Call_000_0497                         ; $67a4: $cc $97 $04
    pop bc                                        ; $67a7: $c1
    rst $38                                       ; $67a8: $ff
    xor h                                         ; $67a9: $ac
    jp $d7a8                                      ; $67aa: $c3 $a8 $d7


    ld bc, $fcfb                                  ; $67ad: $01 $fb $fc
    push af                                       ; $67b0: $f5
    ld a, [$fd7a]                                 ; $67b1: $fa $7a $fd
    ld c, h                                       ; $67b4: $4c
    db $ec                                        ; $67b5: $ec
    ld de, $ae40                                  ; $67b6: $11 $40 $ae
    ld [hl], d                                    ; $67b9: $72
    ld [bc], a                                    ; $67ba: $02
    cp e                                          ; $67bb: $bb
    rlca                                          ; $67bc: $07
    cp $07                                        ; $67bd: $fe $07
    push af                                       ; $67bf: $f5
    ld c, $00                                     ; $67c0: $0e $00
    ld h, h                                       ; $67c2: $64
    sbc [hl]                                      ; $67c3: $9e
    dec e                                         ; $67c4: $1d
    cp $fc                                        ; $67c5: $fe $fc
    cp $8f                                        ; $67c7: $fe $8f
    ld b, $00                                     ; $67c9: $06 $00
    ld [hl], l                                    ; $67cb: $75
    adc [hl]                                      ; $67cc: $8e
    add sp, -$01                                  ; $67cd: $e8 $ff
    ld [hl], h                                    ; $67cf: $74
    rst $38                                       ; $67d0: $ff
    dec sp                                        ; $67d1: $3b
    rst $38                                       ; $67d2: $ff
    nop                                           ; $67d3: $00
    cp a                                          ; $67d4: $bf
    ld a, a                                       ; $67d5: $7f
    jr nc, @+$01                                  ; $67d6: $30 $ff

    ld [$e575], a                                 ; $67d8: $ea $75 $e5
    ld a, b                                       ; $67db: $78
    inc b                                         ; $67dc: $04
    ld [hl], d                                    ; $67dd: $72
    db $fc                                        ; $67de: $fc
    ld d, l                                       ; $67df: $55
    rst $38                                       ; $67e0: $ff
    or d                                          ; $67e1: $b2
    inc [hl]                                      ; $67e2: $34
    ld [bc], a                                    ; $67e3: $02
    rst $38                                       ; $67e4: $ff
    rst $38                                       ; $67e5: $ff
    nop                                           ; $67e6: $00
    ccf                                           ; $67e7: $3f
    rst $38                                       ; $67e8: $ff
    sbc a                                         ; $67e9: $9f
    ld a, a                                       ; $67ea: $7f
    ld d, l                                       ; $67eb: $55
    dec sp                                        ; $67ec: $3b
    sbc e                                         ; $67ed: $9b
    ld [hl], c                                    ; $67ee: $71
    nop                                           ; $67ef: $00
    rst $38                                       ; $67f0: $ff
    rst $38                                       ; $67f1: $ff
    dec de                                        ; $67f2: $1b
    db $fc                                        ; $67f3: $fc
    ld l, $18                                     ; $67f4: $2e $18
    ld e, e                                       ; $67f6: $5b
    inc l                                         ; $67f7: $2c
    nop                                           ; $67f8: $00
    xor b                                         ; $67f9: $a8
    ld e, a                                       ; $67fa: $5f
    dec c                                         ; $67fb: $0d
    rst $38                                       ; $67fc: $ff
    sbc e                                         ; $67fd: $9b
    ld a, h                                       ; $67fe: $7c
    inc e                                         ; $67ff: $1c
    ld hl, sp+$00                                 ; $6800: $f8 $00
    cp $ff                                        ; $6802: $fe $ff
    rst $20                                       ; $6804: $e7
    rra                                           ; $6805: $1f
    dec l                                         ; $6806: $2d
    ld b, $f6                                     ; $6807: $06 $f6
    inc c                                         ; $6809: $0c
    nop                                           ; $680a: $00
    push bc                                       ; $680b: $c5
    ld a, $5c                                     ; $680c: $3e $5c
    rst $38                                       ; $680e: $ff
    and $1f                                       ; $680f: $e6 $1f
    or l                                          ; $6811: $b5
    ld c, $00                                     ; $6812: $0e $00
    ld a, l                                       ; $6814: $7d
    ld a, [$fff0]                                 ; $6815: $fa $f0 $ff
    cp c                                          ; $6818: $b9
    ld a, a                                       ; $6819: $7f
    ld a, a                                       ; $681a: $7f
    ccf                                           ; $681b: $3f
    nop                                           ; $681c: $00
    xor e                                         ; $681d: $ab
    ld [hl], a                                    ; $681e: $77
    ld h, $f3                                     ; $681f: $26 $f3
    ld [hl], a                                    ; $6821: $77
    db $e3                                        ; $6822: $e3
    cp a                                          ; $6823: $bf
    ld h, e                                       ; $6824: $63
    inc b                                         ; $6825: $04
    ld e, a                                       ; $6826: $5f
    pop af                                        ; $6827: $f1
    or l                                          ; $6828: $b5
    ei                                            ; $6829: $fb
    ld a, c                                       ; $682a: $79
    dec d                                         ; $682b: $15
    dec b                                         ; $682c: $05
    ld l, a                                       ; $682d: $6f
    rst $38                                       ; $682e: $ff
    nop                                           ; $682f: $00
    push de                                       ; $6830: $d5
    rst $28                                       ; $6831: $ef
    xor e                                         ; $6832: $ab
    rst $10                                       ; $6833: $d7
    ld d, l                                       ; $6834: $55
    db $eb                                        ; $6835: $eb
    cp c                                          ; $6836: $b9
    cp $00                                        ; $6837: $fe $00
    db $fd                                        ; $6839: $fd
    rst $38                                       ; $683a: $ff
    sbc l                                         ; $683b: $9d
    ld a, a                                       ; $683c: $7f

Jump_0a2_683d:
    ld e, b                                       ; $683d: $58
    ccf                                           ; $683e: $3f
    dec [hl]                                      ; $683f: $35
    rst $38                                       ; $6840: $ff
    nop                                           ; $6841: $00
    db $db                                        ; $6842: $db
    ld a, a                                       ; $6843: $7f
    ccf                                           ; $6844: $3f
    rst $38                                       ; $6845: $ff
    ld e, a                                       ; $6846: $5f
    rst $38                                       ; $6847: $ff
    xor $1c                                       ; $6848: $ee $1c
    nop                                           ; $684a: $00
    ld e, d                                       ; $684b: $5a
    db $fc                                        ; $684c: $fc
    add a                                         ; $684d: $87
    db $fc                                        ; $684e: $fc
    or d                                          ; $684f: $b2
    call z, $dc07                                 ; $6850: $cc $07 $dc
    nop                                           ; $6853: $00
    sub c                                         ; $6854: $91
    adc $2c                                       ; $6855: $ce $2c
    rst $18                                       ; $6857: $df
    and [hl]                                      ; $6858: $a6
    rst $18                                       ; $6859: $df
    ld d, a                                       ; $685a: $57
    inc hl                                        ; $685b: $23
    nop                                           ; $685c: $00
    rst $18                                       ; $685d: $df
    inc hl                                        ; $685e: $23
    db $db                                        ; $685f: $db
    daa                                           ; $6860: $27
    db $db                                        ; $6861: $db
    daa                                           ; $6862: $27
    xor e                                         ; $6863: $ab
    ld [hl], a                                    ; $6864: $77
    ld bc, $7fbf                                  ; $6865: $01 $bf $7f
    ld [hl], b                                    ; $6868: $70
    rst $38                                       ; $6869: $ff
    xor l                                         ; $686a: $ad
    ld a, [c]                                     ; $686b: $f2
    xor e                                         ; $686c: $ab
    call c, Call_0a2_4000                         ; $686d: $dc $00 $40
    db $eb                                        ; $6870: $eb
    ld d, l                                       ; $6871: $55
    dec d                                         ; $6872: $15
    cp $ff                                        ; $6873: $fe $ff
    jp c, Jump_0a2_7ee7                           ; $6875: $da $e7 $7e

    jp $ff00                                      ; $6878: $c3 $00 $ff


    rst $38                                       ; $687b: $ff
    jp hl                                         ; $687c: $e9


    rra                                           ; $687d: $1f
    sbc b                                         ; $687e: $98
    rrca                                          ; $687f: $0f
    ld e, b                                       ; $6880: $58
    adc a                                         ; $6881: $8f
    nop                                           ; $6882: $00
    ld a, [$dd8f]                                 ; $6883: $fa $8f $dd
    adc a                                         ; $6886: $8f
    ld a, a                                       ; $6887: $7f
    adc a                                         ; $6888: $8f
    xor h                                         ; $6889: $ac
    rst $18                                       ; $688a: $df
    ld b, b                                       ; $688b: $40
    rst $08                                       ; $688c: $cf
    ret nc                                        ; $688d: $d0

    ld bc, $f8cc                                  ; $688e: $01 $cc $f8
    and a                                         ; $6891: $a7
    ld hl, sp-$21                                 ; $6892: $f8 $df
    ld hl, sp+$10                                 ; $6894: $f8 $10
    db $eb                                        ; $6896: $eb
    db $fc                                        ; $6897: $fc
    ld d, a                                       ; $6898: $57
    halt                                          ; $6899: $76
    inc b                                         ; $689a: $04
    rst $20                                       ; $689b: $e7
    ld hl, sp-$56                                 ; $689c: $f8 $aa
    ld [hl], l                                    ; $689e: $75
    nop                                           ; $689f: $00
    db $e4                                        ; $68a0: $e4
    dec sp                                        ; $68a1: $3b
    xor b                                         ; $68a2: $a8
    ld [hl], a                                    ; $68a3: $77
    or b                                          ; $68a4: $b0
    ld a, a                                       ; $68a5: $7f
    jr nz, @+$01                                  ; $68a6: $20 $ff

    ld bc, $fff1                                  ; $68a8: $01 $f1 $ff
    ld [$5bff], a                                 ; $68ab: $ea $ff $5b
    rst $20                                       ; $68ae: $e7
    ld b, e                                       ; $68af: $43
    ldh a, [$03]                                  ; $68b0: $f0 $03
    nop                                           ; $68b2: $00
    rst $18                                       ; $68b3: $df
    db $e3                                        ; $68b4: $e3
    ld l, d                                       ; $68b5: $6a
    rst $00                                       ; $68b6: $c7
    jp c, $75e7                                   ; $68b7: $da $e7 $75

    rst $38                                       ; $68ba: $ff
    db $10                                        ; $68bb: $10
    adc $f1                                       ; $68bc: $ce $f1
    rst $38                                       ; $68be: $ff
    sbc d                                         ; $68bf: $9a
    inc b                                         ; $68c0: $04
    add e                                         ; $68c1: $83
    ld a, a                                       ; $68c2: $7f
    ld bc, $54ff                                  ; $68c3: $01 $ff $54
    inc bc                                        ; $68c6: $03
    and d                                         ; $68c7: $a2
    inc b                                         ; $68c8: $04
    inc bc                                        ; $68c9: $03
    sub b                                         ; $68ca: $90
    dec b                                         ; $68cb: $05
    add c                                         ; $68cc: $81
    sbc h                                         ; $68cd: $9c
    dec [hl]                                      ; $68ce: $35
    ret nz                                        ; $68cf: $c0

    cp a                                          ; $68d0: $bf
    adc b                                         ; $68d1: $88
    add b                                         ; $68d2: $80
    dec c                                         ; $68d3: $0d
    push af                                       ; $68d4: $f5
    ld a, [$58d8]                                 ; $68d5: $fa $d8 $58
    inc bc                                        ; $68d8: $03
    ld a, [$87ff]                                 ; $68d9: $fa $ff $87
    ld [bc], a                                    ; $68dc: $02
    rst $38                                       ; $68dd: $ff
    xor e                                         ; $68de: $ab
    rst $10                                       ; $68df: $d7
    sub d                                         ; $68e0: $92
    rst $28                                       ; $68e1: $ef
    add d                                         ; $68e2: $82
    sbc [hl]                                      ; $68e3: $9e
    dec b                                         ; $68e4: $05
    ld hl, $fe34                                  ; $68e5: $21 $34 $fe
    db $10                                        ; $68e8: $10
    sbc [hl]                                      ; $68e9: $9e
    dec d                                         ; $68ea: $15
    ld l, b                                       ; $68eb: $68

Call_0a2_68ec:
    dec c                                         ; $68ec: $0d
    ld bc, $049e                                  ; $68ed: $01 $9e $04
    inc b                                         ; $68f0: $04
    rst $38                                       ; $68f1: $ff
    ld d, b                                       ; $68f2: $50
    ld c, b                                       ; $68f3: $48
    xor [hl]                                      ; $68f4: $ae
    dec d                                         ; $68f5: $15
    ld [bc], a                                    ; $68f6: $02
    cp h                                          ; $68f7: $bc
    inc b                                         ; $68f8: $04
    db $10                                        ; $68f9: $10
    rst $38                                       ; $68fa: $ff
    ld a, a                                       ; $68fb: $7f
    nop                                           ; $68fc: $00
    ld [$7f80], sp                                ; $68fd: $08 $80 $7f
    ld [$1a7f], sp                                ; $6900: $08 $7f $1a
    inc bc                                        ; $6903: $03
    ld a, a                                       ; $6904: $7f
    add b                                         ; $6905: $80
    ld l, a                                       ; $6906: $6f
    adc b                                         ; $6907: $88
    inc b                                         ; $6908: $04
    nop                                           ; $6909: $00
    ld a, a                                       ; $690a: $7f
    cp $00                                        ; $690b: $fe $00
    inc h                                         ; $690d: $24
    nop                                           ; $690e: $00
    cp $01                                        ; $690f: $fe $01
    sbc $00                                       ; $6911: $de $00
    ld [bc], a                                    ; $6913: $02
    cp $01                                        ; $6914: $fe $01
    cp $80                                        ; $6916: $fe $80
    cp $01                                        ; $6918: $fe $01
    ld a, [$8404]                                 ; $691a: $fa $04 $84
    rst $38                                       ; $691d: $ff
    sub $ff                                       ; $691e: $d6 $ff
    rst $28                                       ; $6920: $ef
    inc e                                         ; $6921: $1c
    ld [bc], a                                    ; $6922: $02
    xor d                                         ; $6923: $aa
    push af                                       ; $6924: $f5
    ld de, $efd0                                  ; $6925: $11 $d0 $ef
    push bc                                       ; $6928: $c5
    jp z, $fe00                                   ; $6929: $ca $00 $fe

    rst $38                                       ; $692c: $ff
    cp c                                          ; $692d: $b9
    ld a, $03                                     ; $692e: $3e $03
    ld b, h                                       ; $6930: $44
    adc b                                         ; $6931: $88
    ld a, [$a004]                                 ; $6932: $fa $04 $a0

jr_0a2_6935:
    rst $18                                       ; $6935: $df
    ret                                           ; $6936: $c9


    inc e                                         ; $6937: $1c
    ld d, $c4                                     ; $6938: $16 $c4
    ei                                            ; $693a: $fb
    ld sp, $f788                                  ; $693b: $31 $88 $f7
    ld [$2a10], sp                                ; $693e: $08 $10 $2a
    ld b, $84                                     ; $6941: $06 $84
    ei                                            ; $6943: $fb
    pop bc                                        ; $6944: $c1
    sbc $02                                       ; $6945: $de $02
    inc de                                        ; $6947: $13
    add h                                         ; $6948: $84
    rst $38                                       ; $6949: $ff
    pop de                                        ; $694a: $d1
    inc c                                         ; $694b: $0c
    ld b, $df                                     ; $694c: $06 $df
    rst $38                                       ; $694e: $ff
    dec e                                         ; $694f: $1d
    ld b, $1e                                     ; $6950: $06 $1e
    ld b, $15                                     ; $6952: $06 $15
    jr nz, jr_0a2_6935                            ; $6954: $20 $df

    nop                                           ; $6956: $00
    jr c, jr_0a2_696e                             ; $6957: $38 $15

    ld b, b                                       ; $6959: $40
    ld [hl], d                                    ; $695a: $72
    db $10                                        ; $695b: $10
    jr nz, jr_0a2_69b8                            ; $695c: $20 $5a

    dec b                                         ; $695e: $05
    adc h                                         ; $695f: $8c
    ld l, $0e                                     ; $6960: $2e $0e
    sub b                                         ; $6962: $90
    ld l, a                                       ; $6963: $6f
    ld bc, $051a                                  ; $6964: $01 $1a $05
    jr c, @+$08                                   ; $6967: $38 $06

    ld a, a                                       ; $6969: $7f
    add b                                         ; $696a: $80
    ld b, h                                       ; $696b: $44
    ld a, e                                       ; $696c: $7b
    ld a, b                                       ; $696d: $78

jr_0a2_696e:
    ld [$7f00], sp                                ; $696e: $08 $00 $7f
    sub b                                         ; $6971: $90
    add h                                         ; $6972: $84
    nop                                           ; $6973: $00
    nop                                           ; $6974: $00
    xor d                                         ; $6975: $aa
    dec d                                         ; $6976: $15
    ld b, h                                       ; $6977: $44
    cp a                                          ; $6978: $bf
    ld [$164c], sp                                ; $6979: $08 $4c $16
    jr z, @-$60                                   ; $697c: $28 $9e

    inc bc                                        ; $697e: $03
    ld bc, $0572                                  ; $697f: $01 $72 $05
    nop                                           ; $6982: $00
    ld bc, $a6ff                                  ; $6983: $01 $ff $a6
    rst $38                                       ; $6986: $ff
    ld c, c                                       ; $6987: $49
    cp $9b                                        ; $6988: $fe $9b
    db $fc                                        ; $698a: $fc
    ld bc, $ff7a                                  ; $698b: $01 $7a $ff
    xor l                                         ; $698e: $ad
    rst $18                                       ; $698f: $df
    ld d, a                                       ; $6990: $57
    xor a                                         ; $6991: $af
    add e                                         ; $6992: $83
    ld h, h                                       ; $6993: $64
    ld b, $10                                     ; $6994: $06 $10
    add b                                         ; $6996: $80
    rst $38                                       ; $6997: $ff
    adc b                                         ; $6998: $88
    adc h                                         ; $6999: $8c
    dec b                                         ; $699a: $05
    add b                                         ; $699b: $80
    rst $00                                       ; $699c: $c7
    adc b                                         ; $699d: $88
    di                                            ; $699e: $f3
    nop                                           ; $699f: $00
    or h                                          ; $69a0: $b4
    ld sp, hl                                     ; $69a1: $f9
    sbc d                                         ; $69a2: $9a
    db $fd                                        ; $69a3: $fd
    ld [bc], a                                    ; $69a4: $02
    rst $38                                       ; $69a5: $ff
    ld hl, $20ff                                  ; $69a6: $21 $ff $20
    ld d, b                                       ; $69a9: $50
    rst $28                                       ; $69aa: $ef
    or b                                          ; $69ab: $b0
    dec c                                         ; $69ac: $0d
    inc bc                                        ; $69ad: $03
    rst $38                                       ; $69ae: $ff
    ld b, l                                       ; $69af: $45
    cp [hl]                                       ; $69b0: $be
    adc d                                         ; $69b1: $8a
    nop                                           ; $69b2: $00
    db $fd                                        ; $69b3: $fd
    call z, Call_0a2_73ff                         ; $69b4: $cc $ff $73
    db $fc                                        ; $69b7: $fc

jr_0a2_69b8:
    dec h                                         ; $69b8: $25
    ld a, [$00a2]                                 ; $69b9: $fa $a2 $00
    db $fd                                        ; $69bc: $fd
    ld b, c                                       ; $69bd: $41
    cp $e0                                        ; $69be: $fe $e0
    rst $38                                       ; $69c0: $ff
    inc [hl]                                      ; $69c1: $34
    rst $38                                       ; $69c2: $ff
    sbc d                                         ; $69c3: $9a
    nop                                           ; $69c4: $00
    ld a, a                                       ; $69c5: $7f
    cp h                                          ; $69c6: $bc
    rst $38                                       ; $69c7: $ff
    cp [hl]                                       ; $69c8: $be
    rst $38                                       ; $69c9: $ff
    sbc [hl]                                      ; $69ca: $9e
    cp $98                                        ; $69cb: $fe $98
    nop                                           ; $69cd: $00
    cp $83                                        ; $69ce: $fe $83
    sbc $93                                       ; $69d0: $de $93
    cp $c4                                        ; $69d2: $fe $c4
    db $fc                                        ; $69d4: $fc
    adc b                                         ; $69d5: $88
    dec hl                                        ; $69d6: $2b
    db $fd                                        ; $69d7: $fd
    inc c                                         ; $69d8: $0c
    ld l, b                                       ; $69d9: $68
    dec b                                         ; $69da: $05
    dec [hl]                                      ; $69db: $35
    ld [hl], h                                    ; $69dc: $74
    inc b                                         ; $69dd: $04
    sub a                                         ; $69de: $97
    or d                                          ; $69df: $b2
    inc b                                         ; $69e0: $04
    db $ec                                        ; $69e1: $ec
    ld c, $45                                     ; $69e2: $0e $45
    rra                                           ; $69e4: $1f
    ld b, h                                       ; $69e5: $44
    inc d                                         ; $69e6: $14
    db $fd                                        ; $69e7: $fd
    rst $38                                       ; $69e8: $ff
    ld l, [hl]                                    ; $69e9: $6e
    ld sp, hl                                     ; $69ea: $f9
    ld b, $5e                                     ; $69eb: $06 $5e
    db $fd                                        ; $69ed: $fd
    ld b, $10                                     ; $69ee: $06 $10
    adc h                                         ; $69f0: $8c
    rst $18                                       ; $69f1: $df
    add a                                         ; $69f2: $87
    ld e, b                                       ; $69f3: $58
    inc bc                                        ; $69f4: $03
    add b                                         ; $69f5: $80
    db $fd                                        ; $69f6: $fd
    sbc a                                         ; $69f7: $9f
    rst $38                                       ; $69f8: $ff
    ld de, $f0a6                                  ; $69f9: $11 $a6 $f0
    cp a                                          ; $69fc: $bf
    inc b                                         ; $69fd: $04
    nop                                           ; $69fe: $00
    nop                                           ; $69ff: $00
    cp $21                                        ; $6a00: $fe $21
    db $10                                        ; $6a02: $10
    add hl, bc                                    ; $6a03: $09
    ld de, $04fe                                  ; $6a04: $11 $fe $04
    sbc $18                                       ; $6a07: $de $18
    add hl, bc                                    ; $6a09: $09
    nop                                           ; $6a0a: $00
    xor d                                         ; $6a0b: $aa
    xor e                                         ; $6a0c: $ab
    sub h                                         ; $6a0d: $94
    ld [$bf00], sp                                ; $6a0e: $08 $00 $bf
    ld bc, $81ff                                  ; $6a11: $01 $ff $81
    db $e3                                        ; $6a14: $e3
    ld de, $2dcf                                  ; $6a15: $11 $cf $2d
    ld a, [bc]                                    ; $6a18: $0a
    sbc a                                         ; $6a19: $9f
    ld e, c                                       ; $6a1a: $59
    dec a                                         ; $6a1b: $3d
    dec a                                         ; $6a1c: $3d
    ld a, [hl+]                                   ; $6a1d: $2a
    dec b                                         ; $6a1e: $05
    ld a, c                                       ; $6a1f: $79
    ld [hl-], a                                   ; $6a20: $32
    dec b                                         ; $6a21: $05
    ld b, c                                       ; $6a22: $41
    nop                                           ; $6a23: $00
    rst $38                                       ; $6a24: $ff
    ld b, l                                       ; $6a25: $45
    rst $30                                       ; $6a26: $f7
    ld hl, $11ff                                  ; $6a27: $21 $ff $11
    rst $38                                       ; $6a2a: $ff
    ld sp, $fb08                                  ; $6a2b: $31 $08 $fb
    pop hl                                        ; $6a2e: $e1
    rst $38                                       ; $6a2f: $ff
    add hl, bc                                    ; $6a30: $09
    sub h                                         ; $6a31: $94
    nop                                           ; $6a32: $00
    ld sp, hl                                     ; $6a33: $f9
    rst $38                                       ; $6a34: $ff
    dec b                                         ; $6a35: $05
    jr nz, jr_0a2_6ab7                            ; $6a36: $20 $7f

    db $fd                                        ; $6a38: $fd
    inc b                                         ; $6a39: $04
    nop                                           ; $6a3a: $00
    xor a                                         ; $6a3b: $af
    cp a                                          ; $6a3c: $bf
    or e                                          ; $6a3d: $b3
    ld hl, sp-$80                                 ; $6a3e: $f8 $80
    nop                                           ; $6a40: $00
    ld [c], a                                     ; $6a41: $e2
    add b                                         ; $6a42: $80
    push af                                       ; $6a43: $f5
    add b                                         ; $6a44: $80
    rst $28                                       ; $6a45: $ef
    ret nz                                        ; $6a46: $c0

    rst $38                                       ; $6a47: $ff
    xor b                                         ; $6a48: $a8
    add b                                         ; $6a49: $80
    and b                                         ; $6a4a: $a0
    add hl, bc                                    ; $6a4b: $09
    rst $38                                       ; $6a4c: $ff
    dec c                                         ; $6a4d: $0d
    rra                                           ; $6a4e: $1f
    ld bc, $03a3                                  ; $6a4f: $01 $a3 $03
    ld d, a                                       ; $6a52: $57
    sub b                                         ; $6a53: $90
    jp nz, $bf01                                  ; $6a54: $c2 $01 $bf

    dec d                                         ; $6a57: $15
    ld e, a                                       ; $6a58: $5f
    rla                                           ; $6a59: $17
    inc e                                         ; $6a5a: $1c
    rst $38                                       ; $6a5b: $ff
    and d                                         ; $6a5c: $a2
    rst $30                                       ; $6a5d: $f7
    nop                                           ; $6a5e: $00
    ld c, d                                       ; $6a5f: $4a
    db $e3                                        ; $6a60: $e3
    sbc d                                         ; $6a61: $9a
    jp $8322                                      ; $6a62: $c3 $22 $83


    ld b, d                                       ; $6a65: $42
    rrca                                          ; $6a66: $0f
    ld a, [bc]                                    ; $6a67: $0a
    ld [bc], a                                    ; $6a68: $02
    rla                                           ; $6a69: $17
    rst $38                                       ; $6a6a: $ff
    nop                                           ; $6a6b: $00
    ld c, h                                       ; $6a6c: $4c
    rlca                                          ; $6a6d: $07
    rst $18                                       ; $6a6e: $df
    inc b                                         ; $6a6f: $04
    add hl, bc                                    ; $6a70: $09
    ld b, b                                       ; $6a71: $40
    cp d                                          ; $6a72: $ba
    ld e, h                                       ; $6a73: $5c
    ld b, $00                                     ; $6a74: $06 $00
    ld e, a                                       ; $6a76: $5f
    rlca                                          ; $6a77: $07
    jr nc, jr_0a2_6a7b                            ; $6a78: $30 $01

    ld b, d                                       ; $6a7a: $42

jr_0a2_6a7b:
    ld bc, $6240                                  ; $6a7b: $01 $40 $62
    rla                                           ; $6a7e: $17
    nop                                           ; $6a7f: $00
    ld [de], a                                    ; $6a80: $12
    rst $38                                       ; $6a81: $ff
    cp $01                                        ; $6a82: $fe $01
    adc [hl]                                      ; $6a84: $8e
    ld [$fe00], sp                                ; $6a85: $08 $00 $fe

Call_0a2_6a88:
    ld l, b                                       ; $6a88: $68
    ld b, $be                                     ; $6a89: $06 $be
    add b                                         ; $6a8b: $80
    xor d                                         ; $6a8c: $aa
    add hl, bc                                    ; $6a8d: $09
    inc b                                         ; $6a8e: $04
    cpl                                           ; $6a8f: $2f
    inc b                                         ; $6a90: $04
    ld e, a                                       ; $6a91: $5f
    dec b                                         ; $6a92: $05
    rst $38                                       ; $6a93: $ff
    halt                                          ; $6a94: $76
    nop                                           ; $6a95: $00
    rst $38                                       ; $6a96: $ff
    adc a                                         ; $6a97: $8f
    rst $18                                       ; $6a98: $df
    inc l                                         ; $6a99: $2c
    adc a                                         ; $6a9a: $8f
    ld l, h                                       ; $6a9b: $6c
    rrca                                          ; $6a9c: $0f
    call z, Call_000_0f00                         ; $6a9d: $cc $00 $0f
    ld [hl], a                                    ; $6aa0: $77
    rst $38                                       ; $6aa1: $ff
    adc b                                         ; $6aa2: $88
    sbc h                                         ; $6aa3: $9c
    rla                                           ; $6aa4: $17
    jr nc, @+$2e                                  ; $6aa5: $30 $2c

    ld [bc], a                                    ; $6aa7: $02
    ldh [$c1], a                                  ; $6aa8: $e0 $c1
    db $e3                                        ; $6aaa: $e3
    ld b, e                                       ; $6aab: $43
    rst $20                                       ; $6aac: $e7
    ld [hl], a                                    ; $6aad: $77
    ld e, [hl]                                    ; $6aae: $5e
    ld b, $fe                                     ; $6aaf: $06 $fe
    nop                                           ; $6ab1: $00
    rst $38                                       ; $6ab2: $ff
    ld b, c                                       ; $6ab3: $41
    db $e3                                        ; $6ab4: $e3
    inc e                                         ; $6ab5: $1c
    ld b, b                                       ; $6ab6: $40

jr_0a2_6ab7:
    ld d, a                                       ; $6ab7: $57
    nop                                           ; $6ab8: $00
    add b                                         ; $6ab9: $80
    nop                                           ; $6aba: $00
    ldh [$c0], a                                  ; $6abb: $e0 $c0
    rst $00                                       ; $6abd: $c7
    add a                                         ; $6abe: $87
    rst $08                                       ; $6abf: $cf
    ld [$119f], sp                                ; $6ac0: $08 $9f $11
    add b                                         ; $6ac3: $80
    sub $01                                       ; $6ac4: $d6 $01
    ld b, c                                       ; $6ac6: $41
    cp $20                                        ; $6ac7: $fe $20
    ld a, $a1                                     ; $6ac9: $3e $a1
    ld a, $20                                     ; $6acb: $3e $20
    nop                                           ; $6acd: $00
    ld a, $a3                                     ; $6ace: $3e $a3
    cp $66                                        ; $6ad0: $fe $66
    cp $ac                                        ; $6ad2: $fe $ac
    rrca                                          ; $6ad4: $0f
    dec c                                         ; $6ad5: $0d
    nop                                           ; $6ad6: $00
    rrca                                          ; $6ad7: $0f
    ld a, [hl+]                                   ; $6ad8: $2a
    rrca                                          ; $6ad9: $0f
    dec bc                                        ; $6ada: $0b
    rrca                                          ; $6adb: $0f
    dec b                                         ; $6adc: $05
    rrca                                          ; $6add: $0f
    dec h                                         ; $6ade: $25
    nop                                           ; $6adf: $00
    rrca                                          ; $6ae0: $0f
    inc d                                         ; $6ae1: $14
    rlca                                          ; $6ae2: $07
    ld b, $27                                     ; $6ae3: $06 $27
    ret nz                                        ; $6ae5: $c0

    adc b                                         ; $6ae6: $88
    add b                                         ; $6ae7: $80
    nop                                           ; $6ae8: $00
    jr c, @+$74                                   ; $6ae9: $38 $72

    ldh a, [$c0]                                  ; $6aeb: $f0 $c0
    ldh [rSTAT], a                                ; $6aed: $e0 $41
    db $e3                                        ; $6aef: $e3
    ld b, b                                       ; $6af0: $40
    nop                                           ; $6af1: $00
    jp $e580                                      ; $6af2: $c3 $80 $e5


    add b                                         ; $6af5: $80
    jp nc, $1f10                                  ; $6af6: $d2 $10 $1f

    ld c, a                                       ; $6af9: $4f
    ld [bc], a                                    ; $6afa: $02
    rrca                                          ; $6afb: $0f
    and c                                         ; $6afc: $a1
    rlca                                          ; $6afd: $07
    ld e, $ff                                     ; $6afe: $1e $ff
    ld hl, sp-$5c                                 ; $6b00: $f8 $a4
    rlca                                          ; $6b02: $07
    jp nz, $ff00                                  ; $6b03: $c2 $00 $ff

    jr nz, jr_0a2_6b87                            ; $6b06: $20 $7f

    dec bc                                        ; $6b08: $0b
    ld a, [$f694]                                 ; $6b09: $fa $94 $f6
    add hl, sp                                    ; $6b0c: $39
    nop                                           ; $6b0d: $00
    xor $46                                       ; $6b0e: $ee $46
    and $45                                       ; $6b10: $e6 $45
    adc $68                                       ; $6b12: $ce $68
    sbc $65                                       ; $6b14: $de $65
    nop                                           ; $6b16: $00
    add $42                                       ; $6b17: $c6 $42
    sbc $0b                                       ; $6b19: $de $0b
    ld h, a                                       ; $6b1b: $67
    ld hl, $41e3                                  ; $6b1c: $21 $e3 $41
    nop                                           ; $6b1f: $00
    db $f4                                        ; $6b20: $f4
    and b                                         ; $6b21: $a0
    ld a, [$fd70]                                 ; $6b22: $fa $70 $fd
    cp $ff                                        ; $6b25: $fe $ff
    rst $08                                       ; $6b27: $cf
    add b                                         ; $6b28: $80
    ld d, [hl]                                    ; $6b29: $56
    dec b                                         ; $6b2a: $05
    add b                                         ; $6b2b: $80
    add sp, -$20                                  ; $6b2c: $e8 $e0
    ldh a, [rP1]                                  ; $6b2e: $f0 $00

jr_0a2_6b30:
    ld a, b                                       ; $6b30: $78
    ld b, c                                       ; $6b31: $41
    nop                                           ; $6b32: $00
    nop                                           ; $6b33: $00
    inc b                                         ; $6b34: $04
    nop                                           ; $6b35: $00
    ld bc, $80c0                                  ; $6b36: $01 $c0 $80
    adc d                                         ; $6b39: $8a
    nop                                           ; $6b3a: $00
    nop                                           ; $6b3b: $00
    dec d                                         ; $6b3c: $15
    db $10                                        ; $6b3d: $10
    cp a                                          ; $6b3e: $bf
    ld [$085f], sp                                ; $6b3f: $08 $5f $08
    cpl                                           ; $6b42: $2f
    ld [$1f00], sp                                ; $6b43: $08 $00 $1f
    add h                                         ; $6b46: $84
    rrca                                          ; $6b47: $0f
    ld h, h                                       ; $6b48: $64
    daa                                           ; $6b49: $27
    sub e                                         ; $6b4a: $93
    scf                                           ; $6b4b: $37
    ld d, d                                       ; $6b4c: $52
    nop                                           ; $6b4d: $00
    jr @+$61                                      ; $6b4e: $18 $5f

    sbc $90                                       ; $6b50: $de $90
    cp [hl]                                       ; $6b52: $be
    pop de                                        ; $6b53: $d1
    cp [hl]                                       ; $6b54: $be
    ldh [rP1], a                                  ; $6b55: $e0 $00
    cp [hl]                                       ; $6b57: $be
    pop hl                                        ; $6b58: $e1
    cp [hl]                                       ; $6b59: $be
    xor b                                         ; $6b5a: $a8
    cp [hl]                                       ; $6b5b: $be
    ld hl, $20be                                  ; $6b5c: $21 $be $20
    nop                                           ; $6b5f: $00
    ld a, [hl]                                    ; $6b60: $7e
    inc b                                         ; $6b61: $04
    cp $85                                        ; $6b62: $fe $85
    db $fc                                        ; $6b64: $fc
    ld a, [bc]                                    ; $6b65: $0a
    ld hl, sp-$69                                 ; $6b66: $f8 $97
    nop                                           ; $6b68: $00
    ld hl, sp+$12                                 ; $6b69: $f8 $12
    ldh a, [$a4]                                  ; $6b6b: $f0 $a4
    ldh [rWY], a                                  ; $6b6d: $e0 $4a
    ldh [$dc], a                                  ; $6b6f: $e0 $dc
    nop                                           ; $6b71: $00
    ret nz                                        ; $6b72: $c0

    nop                                           ; $6b73: $00
    ld l, $04                                     ; $6b74: $2e $04
    ld a, a                                       ; $6b76: $7f
    ld e, [hl]                                    ; $6b77: $5e
    rst $38                                       ; $6b78: $ff
    rrca                                          ; $6b79: $0f
    nop                                           ; $6b7a: $00
    ld e, a                                       ; $6b7b: $5f
    rlca                                          ; $6b7c: $07
    cpl                                           ; $6b7d: $2f
    inc bc                                        ; $6b7e: $03
    rla                                           ; $6b7f: $17
    ld bc, $0327                                  ; $6b80: $01 $27 $03
    nop                                           ; $6b83: $00
    rrca                                          ; $6b84: $0f
    ld a, b                                       ; $6b85: $78
    sbc h                                         ; $6b86: $9c

jr_0a2_6b87:
    dec l                                         ; $6b87: $2d
    rra                                           ; $6b88: $1f
    rrca                                          ; $6b89: $0f
    adc a                                         ; $6b8a: $8f
    jr jr_0a2_6b8d                                ; $6b8b: $18 $00

jr_0a2_6b8d:
    rst $08                                       ; $6b8d: $cf
    sbc b                                         ; $6b8e: $98
    rst $28                                       ; $6b8f: $ef
    call nz, $a4ef                                ; $6b90: $c4 $ef $a4
    rst $30                                       ; $6b93: $f7
    ld d, $00                                     ; $6b94: $16 $00

jr_0a2_6b96:
    ei                                            ; $6b96: $fb
    ld b, c                                       ; $6b97: $41
    cp $40                                        ; $6b98: $fe $40
    cp $81                                        ; $6b9a: $fe $81
    cp $00                                        ; $6b9c: $fe $00
    jr nc, jr_0a2_6b96                            ; $6b9e: $30 $f6

    ld bc, $0008                                  ; $6ba0: $01 $08 $00
    xor d                                         ; $6ba3: $aa
    ld a, [bc]                                    ; $6ba4: $0a
    adc b                                         ; $6ba5: $88
    ret nz                                        ; $6ba6: $c0

    sub b                                         ; $6ba7: $90
    ret nz                                        ; $6ba8: $c0

    nop                                           ; $6ba9: $00
    xor b                                         ; $6baa: $a8
    add b                                         ; $6bab: $80
    ld [hl], b                                    ; $6bac: $70
    add b                                         ; $6bad: $80
    jr nz, jr_0a2_6b30                            ; $6bae: $20 $80

    nop                                           ; $6bb0: $00
    add hl, bc                                    ; $6bb1: $09
    nop                                           ; $6bb2: $00
    ld c, b                                       ; $6bb3: $48
    ld [$9c08], sp                                ; $6bb4: $08 $08 $9c
    dec b                                         ; $6bb7: $05
    rra                                           ; $6bb8: $1f
    inc bc                                        ; $6bb9: $03
    ccf                                           ; $6bba: $3f
    inc b                                         ; $6bbb: $04
    ld b, $5f                                     ; $6bbc: $06 $5f
    rrca                                          ; $6bbe: $0f
    cp a                                          ; $6bbf: $bf
    rra                                           ; $6bc0: $1f
    sbc [hl]                                      ; $6bc1: $9e
    inc bc                                        ; $6bc2: $03
    dec [hl]                                      ; $6bc3: $35
    rst $38                                       ; $6bc4: $ff
    nop                                           ; $6bc5: $00
    ld l, d                                       ; $6bc6: $6a
    ld a, a                                       ; $6bc7: $7f
    dec bc                                        ; $6bc8: $0b
    ld sp, hl                                     ; $6bc9: $f9
    ld sp, hl                                     ; $6bca: $f9
    db $fd                                        ; $6bcb: $fd
    dec b                                         ; $6bcc: $05
    ld l, $14                                     ; $6bcd: $2e $14
    ld b, $d6                                     ; $6bcf: $06 $d6
    push de                                       ; $6bd1: $d5
    ld c, b                                       ; $6bd2: $48
    dec b                                         ; $6bd3: $05
    ld d, h                                       ; $6bd4: $54
    inc a                                         ; $6bd5: $3c
    rlca                                          ; $6bd6: $07
    ld bc, $60fe                                  ; $6bd7: $01 $fe $60
    ld [$0040], sp                                ; $6bda: $08 $40 $00
    inc b                                         ; $6bdd: $04
    ld bc, $607e                                  ; $6bde: $01 $7e $60
    cp [hl]                                       ; $6be1: $be
    and c                                         ; $6be2: $a1
    cp [hl]                                       ; $6be3: $be
    nop                                           ; $6be4: $00
    ld e, h                                       ; $6be5: $5c
    sbc $c8                                       ; $6be6: $de $c8
    sbc h                                         ; $6be8: $9c
    inc e                                         ; $6be9: $1c
    sbc [hl]                                      ; $6bea: $9e
    sub a                                         ; $6beb: $97
    sbc a                                         ; $6bec: $9f
    nop                                           ; $6bed: $00
    sbc e                                         ; $6bee: $9b
    rst $18                                       ; $6bef: $df
    call Call_0a2_46df                            ; $6bf0: $cd $df $46
    rst $28                                       ; $6bf3: $ef
    and e                                         ; $6bf4: $a3
    di                                            ; $6bf5: $f3
    ld bc, $fc58                                  ; $6bf6: $01 $58 $fc
    ld a, a                                       ; $6bf9: $7f
    rst $38                                       ; $6bfa: $ff
    ld [de], a                                    ; $6bfb: $12
    nop                                           ; $6bfc: $00
    ld d, b                                       ; $6bfd: $50
    ld h, b                                       ; $6bfe: $60
    rlca                                          ; $6bff: $07
    ld [hl], b                                    ; $6c00: $70
    ld d, l                                       ; $6c01: $55
    ld l, b                                       ; $6c02: $68
    rlca                                          ; $6c03: $07
    ld l, [hl]                                    ; $6c04: $6e
    ld bc, $0670                                  ; $6c05: $01 $70 $06
    add $0f                                       ; $6c08: $c6 $0f
    inc bc                                        ; $6c0a: $03
    sub e                                         ; $6c0b: $93
    jr @-$6b                                      ; $6c0c: $18 $93

    db $db                                        ; $6c0e: $db
    ld e, d                                       ; $6c0f: $5a
    call z, $fe06                                 ; $6c10: $cc $06 $fe
    rrca                                          ; $6c13: $0f
    ld d, e                                       ; $6c14: $53
    jp nc, Jump_000_0085                          ; $6c15: $d2 $85 $00

    sub a                                         ; $6c18: $97
    or e                                          ; $6c19: $b3
    ld a, [$fefa]                                 ; $6c1a: $fa $fa $fe
    rst $28                                       ; $6c1d: $ef
    cp $52                                        ; $6c1e: $fe $52
    or b                                          ; $6c20: $b0
    adc b                                         ; $6c21: $88
    ld de, $a6af                                  ; $6c22: $11 $af $a6
    rlca                                          ; $6c25: $07
    ld h, [hl]                                    ; $6c26: $66
    dec bc                                        ; $6c27: $0b
    sub b                                         ; $6c28: $90
    rst $38                                       ; $6c29: $ff
    nop                                           ; $6c2a: $00
    db $fd                                        ; $6c2b: $fd
    ld b, h                                       ; $6c2c: $44
    add b                                         ; $6c2d: $80
    add b                                         ; $6c2e: $80
    rlca                                          ; $6c2f: $07
    add hl, hl                                    ; $6c30: $29
    add c                                         ; $6c31: $81
    cp $1e                                        ; $6c32: $fe $1e
    dec b                                         ; $6c34: $05
    jr c, @+$01                                   ; $6c35: $38 $ff

    ld bc, $c747                                  ; $6c37: $01 $47 $c7
    ld b, d                                       ; $6c3a: $42
    rst $20                                       ; $6c3b: $e7
    inc hl                                        ; $6c3c: $23
    rst $38                                       ; $6c3d: $ff
    dec e                                         ; $6c3e: $1d
    jr c, jr_0a2_6c42                             ; $6c3f: $38 $01

    nop                                           ; $6c41: $00

jr_0a2_6c42:
    ld h, a                                       ; $6c42: $67
    rlca                                          ; $6c43: $07
    db $fc                                        ; $6c44: $fc
    cp $57                                        ; $6c45: $fe $57
    rst $38                                       ; $6c47: $ff
    db $fc                                        ; $6c48: $fc
    db $fc                                        ; $6c49: $fc
    db $10                                        ; $6c4a: $10
    ld sp, $fe87                                  ; $6c4b: $31 $87 $fe
    ld d, [hl]                                    ; $6c4e: $56
    nop                                           ; $6c4f: $00
    ld b, c                                       ; $6c50: $41
    cp $80                                        ; $6c51: $fe $80
    or $01                                        ; $6c53: $f6 $01
    pop bc                                        ; $6c55: $c1
    ld a, [hl]                                    ; $6c56: $7e

jr_0a2_6c57:
    jr nz, jr_0a2_6cd7                            ; $6c57: $20 $7e

    ld b, c                                       ; $6c59: $41

jr_0a2_6c5a:
    cp $c8                                        ; $6c5a: $fe $c8
    ret z                                         ; $6c5c: $c8

    nop                                           ; $6c5d: $00
    add hl, de                                    ; $6c5e: $19
    ld [bc], a                                    ; $6c5f: $02
    cp $81                                        ; $6c60: $fe $81
    or $07                                        ; $6c62: $f6 $07
    jr c, @+$0a                                   ; $6c64: $38 $08

    add b                                         ; $6c66: $80
    add b                                         ; $6c67: $80
    dec h                                         ; $6c68: $25
    inc d                                         ; $6c69: $14
    sbc e                                         ; $6c6a: $9b
    and $21                                       ; $6c6b: $e6 $21
    ld [$077f], sp                                ; $6c6d: $08 $7f $07
    ld [bc], a                                    ; $6c70: $02
    db $10                                        ; $6c71: $10
    jr z, @-$0f                                   ; $6c72: $28 $ef

    ld [hl-], a                                   ; $6c74: $32
    inc de                                        ; $6c75: $13
    db $10                                        ; $6c76: $10
    jr nz, jr_0a2_6c5a                            ; $6c77: $20 $e1

    sbc [hl]                                      ; $6c79: $9e
    inc de                                        ; $6c7a: $13
    adc d                                         ; $6c7b: $8a
    ld a, [bc]                                    ; $6c7c: $0a
    jr nz, jr_0a2_6c9f                            ; $6c7d: $20 $20

    add e                                         ; $6c7f: $83
    rst $38                                       ; $6c80: $ff
    ld b, c                                       ; $6c81: $41
    cp a                                          ; $6c82: $bf
    db $10                                        ; $6c83: $10
    inc l                                         ; $6c84: $2c
    ld b, c                                       ; $6c85: $41
    xor e                                         ; $6c86: $ab
    or h                                          ; $6c87: $b4
    rlca                                          ; $6c88: $07
    ld b, $ff                                     ; $6c89: $06 $ff
    ld d, a                                       ; $6c8b: $57
    cp a                                          ; $6c8c: $bf
    ld a, [bc]                                    ; $6c8d: $0a
    sub h                                         ; $6c8e: $94
    stop                                          ; $6c8f: $10 $00
    ld b, l                                       ; $6c91: $45
    rst $38                                       ; $6c92: $ff
    ld [hl+], a                                   ; $6c93: $22
    rst $18                                       ; $6c94: $df
    ld b, $ff                                     ; $6c95: $06 $ff
    or l                                          ; $6c97: $b5
    ld a, d                                       ; $6c98: $7a
    ld b, c                                       ; $6c99: $41
    jr jr_0a2_6cac                                ; $6c9a: $18 $10

    inc h                                         ; $6c9c: $24
    ld l, e                                       ; $6c9d: $6b
    sub a                                         ; $6c9e: $97

jr_0a2_6c9f:
    jp nc, Jump_000_022f                          ; $6c9f: $d2 $2f $02

    ld [hl], h                                    ; $6ca2: $74
    inc bc                                        ; $6ca3: $03
    nop                                           ; $6ca4: $00
    ld hl, $49ff                                  ; $6ca5: $21 $ff $49
    rst $30                                       ; $6ca8: $f7
    sub l                                         ; $6ca9: $95
    db $eb                                        ; $6caa: $eb
    pop bc                                        ; $6cab: $c1

jr_0a2_6cac:
    rst $38                                       ; $6cac: $ff
    ld b, l                                       ; $6cad: $45
    xor c                                         ; $6cae: $a9
    ld [hl], $02                                  ; $6caf: $36 $02
    inc a                                         ; $6cb1: $3c
    rst $38                                       ; $6cb2: $ff
    dec hl                                        ; $6cb3: $2b
    call c, Call_000_0b07                         ; $6cb4: $dc $07 $0b
    ld b, h                                       ; $6cb7: $44
    nop                                           ; $6cb8: $00
    xor b                                         ; $6cb9: $a8
    ld [hl], d                                    ; $6cba: $72
    dec de                                        ; $6cbb: $1b

Call_0a2_6cbc:
    ld [de], a                                    ; $6cbc: $12
    cp $07                                        ; $6cbd: $fe $07
    ld d, [hl]                                    ; $6cbf: $56
    ldh a, [rNR13]                                ; $6cc0: $f0 $13
    ld a, [hl+]                                   ; $6cc2: $2a
    push af                                       ; $6cc3: $f5
    ld d, b                                       ; $6cc4: $50
    nop                                           ; $6cc5: $00
    rst $28                                       ; $6cc6: $ef
    ld b, l                                       ; $6cc7: $45
    rst $38                                       ; $6cc8: $ff
    ld l, e                                       ; $6cc9: $6b
    rst $38                                       ; $6cca: $ff
    ld [hl+], a                                   ; $6ccb: $22
    db $fd                                        ; $6ccc: $fd
    jr z, jr_0a2_6c57                             ; $6ccd: $28 $88

    adc $03                                       ; $6ccf: $ce $03
    ld b, [hl]                                    ; $6cd1: $46
    ei                                            ; $6cd2: $fb
    jr nz, jr_0a2_6d43                            ; $6cd3: $20 $6e

    ld b, $50                                     ; $6cd5: $06 $50

jr_0a2_6cd7:
    rst $38                                       ; $6cd7: $ff
    and l                                         ; $6cd8: $a5
    ldh a, [$e3]                                  ; $6cd9: $f0 $e3
    rlca                                          ; $6cdb: $07
    xor c                                         ; $6cdc: $a9
    ld [$0bf8], sp                                ; $6cdd: $08 $f8 $0b
    inc b                                         ; $6ce0: $04
    ld e, b                                       ; $6ce1: $58
    xor d                                         ; $6ce2: $aa
    rst $38                                       ; $6ce3: $ff
    sbc b                                         ; $6ce4: $98
    rst $38                                       ; $6ce5: $ff
    nop                                           ; $6ce6: $00
    or [hl]                                       ; $6ce7: $b6
    rst $28                                       ; $6ce8: $ef
    xor h                                         ; $6ce9: $ac
    rst $20                                       ; $6cea: $e7
    sub e                                         ; $6ceb: $93
    rst $30                                       ; $6cec: $f7
    xor [hl]                                      ; $6ced: $ae
    cp $51                                        ; $6cee: $fe $51
    rst $10                                       ; $6cf0: $d7
    db $e4                                        ; $6cf1: $e4
    dec b                                         ; $6cf2: $05
    push de                                       ; $6cf3: $d5
    xor d                                         ; $6cf4: $aa
    inc de                                        ; $6cf5: $13
    add b                                         ; $6cf6: $80
    rst $38                                       ; $6cf7: $ff
    add l                                         ; $6cf8: $85
    inc d                                         ; $6cf9: $14
    rlca                                          ; $6cfa: $07
    ld a, d                                       ; $6cfb: $7a
    add l                                         ; $6cfc: $85
    jr jr_0a2_6d09                                ; $6cfd: $18 $0a

    rst $18                                       ; $6cff: $df
    jr jr_0a2_6d14                                ; $6d00: $18 $12

    inc d                                         ; $6d02: $14

jr_0a2_6d03:
    ld d, $0c                                     ; $6d03: $16 $0c
    ld b, b                                       ; $6d05: $40
    cp h                                          ; $6d06: $bc
    rlca                                          ; $6d07: $07
    ret nc                                        ; $6d08: $d0

jr_0a2_6d09:
    inc d                                         ; $6d09: $14
    or c                                          ; $6d0a: $b1
    xor [hl]                                      ; $6d0b: $ae
    and b                                         ; $6d0c: $a0
    db $10                                        ; $6d0d: $10
    jr jr_0a2_6d11                                ; $6d0e: $18 $01

    ld a, [hl-]                                   ; $6d10: $3a

jr_0a2_6d11:
    inc bc                                        ; $6d11: $03
    add hl, hl                                    ; $6d12: $29
    rst $38                                       ; $6d13: $ff

jr_0a2_6d14:
    dec b                                         ; $6d14: $05
    ret                                           ; $6d15: $c9


jr_0a2_6d16:
    rst $28                                       ; $6d16: $ef
    ld e, c                                       ; $6d17: $59
    rst $28                                       ; $6d18: $ef
    ld a, [hl]                                    ; $6d19: $7e
    ld h, b                                       ; $6d1a: $60
    inc b                                         ; $6d1b: $04
    ld d, b                                       ; $6d1c: $50
    xor h                                         ; $6d1d: $ac
    rlca                                          ; $6d1e: $07
    rlca                                          ; $6d1f: $07
    ld [bc], a                                    ; $6d20: $02
    db $fd                                        ; $6d21: $fd
    jr nz, jr_0a2_6d03                            ; $6d22: $20 $df

    ld c, c                                       ; $6d24: $49
    sub [hl]                                      ; $6d25: $96
    nop                                           ; $6d26: $00
    sbc [hl]                                      ; $6d27: $9e
    rlca                                          ; $6d28: $07
    xor b                                         ; $6d29: $a8
    rlca                                          ; $6d2a: $07
    jr z, jr_0a2_6d79                             ; $6d2b: $28 $4c

    ei                                            ; $6d2d: $fb
    call nz, $100c                                ; $6d2e: $c4 $0c $10
    ld a, [bc]                                    ; $6d31: $0a
    ld bc, $c09c                                  ; $6d32: $01 $9c $c0
    jp z, $e000                                   ; $6d35: $ca $00 $e0

    ld d, h                                       ; $6d38: $54
    pop hl                                        ; $6d39: $e1
    ld b, d                                       ; $6d3a: $42
    rst $38                                       ; $6d3b: $ff
    xor $fe                                       ; $6d3c: $ee $fe
    ld h, h                                       ; $6d3e: $64

Jump_0a2_6d3f:
    nop                                           ; $6d3f: $00
    rst $28                                       ; $6d40: $ef
    ldh [$ce], a                                  ; $6d41: $e0 $ce

jr_0a2_6d43:
    adc $9f                                       ; $6d43: $ce $9f
    ld c, c                                       ; $6d45: $49
    ld c, a                                       ; $6d46: $4f
    ld c, c                                       ; $6d47: $49
    nop                                           ; $6d48: $00
    rst $28                                       ; $6d49: $ef
    ld c, c                                       ; $6d4a: $49
    rst $38                                       ; $6d4b: $ff
    add hl, bc                                    ; $6d4c: $09

jr_0a2_6d4d:
    ld a, a                                       ; $6d4d: $7f
    ld d, l                                       ; $6d4e: $55
    rst $38                                       ; $6d4f: $ff
    ld h, c                                       ; $6d50: $61
    add hl, bc                                    ; $6d51: $09
    ld a, a                                       ; $6d52: $7f
    ld d, l                                       ; $6d53: $55
    ld a, a                                       ; $6d54: $7f
    ld [hl], c                                    ; $6d55: $71
    ld hl, sp+$07                                 ; $6d56: $f8 $07
    ld b, h                                       ; $6d58: $44
    ei                                            ; $6d59: $fb
    jp c, $c50f                                   ; $6d5a: $da $0f $c5

    ld [$d200], sp                                ; $6d5d: $08 $00 $d2
    rlca                                          ; $6d60: $07
    add h                                         ; $6d61: $84
    ld a, e                                       ; $6d62: $7b
    jr nz, jr_0a2_6d4d                            ; $6d63: $20 $e8

    inc b                                         ; $6d65: $04
    add b                                         ; $6d66: $80
    db $fc                                        ; $6d67: $fc
    rlca                                          ; $6d68: $07
    add b                                         ; $6d69: $80
    add [hl]                                      ; $6d6a: $86
    inc c                                         ; $6d6b: $0c
    ld l, b                                       ; $6d6c: $68
    or a                                          ; $6d6d: $b7
    ld [bc], a                                    ; $6d6e: $02
    rst $38                                       ; $6d6f: $ff
    sub c                                         ; $6d70: $91
    cp e                                          ; $6d71: $bb
    ld h, c                                       ; $6d72: $61
    nop                                           ; $6d73: $00
    pop af                                        ; $6d74: $f1
    pop bc                                        ; $6d75: $c1
    jp hl                                         ; $6d76: $e9


    db $e3                                        ; $6d77: $e3
    di                                            ; $6d78: $f3

jr_0a2_6d79:
    ld [c], a                                     ; $6d79: $e2
    rst $28                                       ; $6d7a: $ef
    sub h                                         ; $6d7b: $94
    nop                                           ; $6d7c: $00
    cp $dd                                        ; $6d7d: $fe $dd
    cp $6e                                        ; $6d7f: $fe $6e
    cp $9d                                        ; $6d81: $fe $9d
    rst $08                                       ; $6d83: $cf
    xor l                                         ; $6d84: $ad
    jr z, jr_0a2_6d16                             ; $6d85: $28 $8f

    ld c, e                                       ; $6d87: $4b
    ld [de], a                                    ; $6d88: $12
    inc b                                         ; $6d89: $04
    ld a, e                                       ; $6d8a: $7b
    ld [hl], $05                                  ; $6d8b: $36 $05
    or c                                          ; $6d8d: $b1
    rst $38                                       ; $6d8e: $ff
    pop af                                        ; $6d8f: $f1
    dec hl                                        ; $6d90: $2b
    ld a, a                                       ; $6d91: $7f
    ld b, c                                       ; $6d92: $41
    ld a, $01                                     ; $6d93: $3e $01
    inc b                                         ; $6d95: $04
    ret z                                         ; $6d96: $c8

    inc bc                                        ; $6d97: $03
    xor d                                         ; $6d98: $aa
    call c, $c005                                 ; $6d99: $dc $05 $c0
    inc c                                         ; $6d9c: $0c
    ld b, c                                       ; $6d9d: $41
    inc b                                         ; $6d9e: $04
    jr c, jr_0a2_6da6                             ; $6d9f: $38 $05

    or l                                          ; $6da1: $b5
    rst $38                                       ; $6da2: $ff
    ld l, h                                       ; $6da3: $6c
    rst $38                                       ; $6da4: $ff
    reti                                          ; $6da5: $d9


jr_0a2_6da6:
    ld d, h                                       ; $6da6: $54
    dec b                                         ; $6da7: $05
    add c                                         ; $6da8: $81
    ld [hl], e                                    ; $6da9: $73
    ld b, $ff                                     ; $6daa: $06 $ff
    ld [$cccf], a                                 ; $6dac: $ea $cf $cc
    sbc [hl]                                      ; $6daf: $9e
    sbc h                                         ; $6db0: $9c
    jr nz, jr_0a2_6dc5                            ; $6db1: $20 $12

    adc e                                         ; $6db3: $8b
    or b                                          ; $6db4: $b0
    add hl, de                                    ; $6db5: $19
    ld sp, $797f                                  ; $6db6: $31 $7f $79
    db $f4                                        ; $6db9: $f4
    rlca                                          ; $6dba: $07
    cp c                                          ; $6dbb: $b9
    ld [$c006], a                                 ; $6dbc: $ea $06 $c0
    add hl, hl                                    ; $6dbf: $29
    cpl                                           ; $6dc0: $2f
    inc b                                         ; $6dc1: $04
    ei                                            ; $6dc2: $fb
    ld l, [hl]                                    ; $6dc3: $6e
    dec c                                         ; $6dc4: $0d

jr_0a2_6dc5:
    db $10                                        ; $6dc5: $10
    inc h                                         ; $6dc6: $24
    dec b                                         ; $6dc7: $05
    ld h, h                                       ; $6dc8: $64

Call_0a2_6dc9:
    dec b                                         ; $6dc9: $05
    or h                                          ; $6dca: $b4
    nop                                           ; $6dcb: $00
    ld a, h                                       ; $6dcc: $7c
    dec c                                         ; $6dcd: $0d

jr_0a2_6dce:
    ld a, [de]                                    ; $6dce: $1a
    ld bc, $20fe                                  ; $6dcf: $01 $fe $20
    ld a, [hl]                                    ; $6dd2: $7e
    dec b                                         ; $6dd3: $05
    add [hl]                                      ; $6dd4: $86
    dec c                                         ; $6dd5: $0d
    ld hl, sp-$80                                 ; $6dd6: $f8 $80
    dec b                                         ; $6dd8: $05
    ld [$1708], a                                 ; $6dd9: $ea $08 $17
    ld d, d                                       ; $6ddc: $52
    xor a                                         ; $6ddd: $af
    ld [bc], a                                    ; $6dde: $02
    and b                                         ; $6ddf: $a0
    nop                                           ; $6de0: $00
    xor d                                         ; $6de1: $aa
    db $fd                                        ; $6de2: $fd
    ldh a, [rP1]                                  ; $6de3: $f0 $00
    rst $38                                       ; $6de5: $ff
    ld h, b                                       ; $6de6: $60
    rst $38                                       ; $6de7: $ff
    sub h                                         ; $6de8: $94
    ld a, a                                       ; $6de9: $7f
    jp z, $a53f                                   ; $6dea: $ca $3f $a5

    nop                                           ; $6ded: $00
    ld e, a                                       ; $6dee: $5f
    ld d, h                                       ; $6def: $54
    xor a                                         ; $6df0: $af
    inc h                                         ; $6df1: $24
    rst $18                                       ; $6df2: $df
    inc b                                         ; $6df3: $04
    rst $38                                       ; $6df4: $ff
    inc c                                         ; $6df5: $0c
    ld a, [hl+]                                   ; $6df6: $2a
    rst $38                                       ; $6df7: $ff
    ld e, d                                       ; $6df8: $5a
    cp [hl]                                       ; $6df9: $be
    dec b                                         ; $6dfa: $05
    db $eb                                        ; $6dfb: $eb
    db $10                                        ; $6dfc: $10
    rlca                                          ; $6dfd: $07
    or a                                          ; $6dfe: $b7

Call_0a2_6dff:
    ld a, h                                       ; $6dff: $7c
    ld bc, $85f7                                  ; $6e00: $01 $f7 $85
    add b                                         ; $6e03: $80
    ld [$24f9], sp                                ; $6e04: $08 $f9 $24
    ld sp, hl                                     ; $6e07: $f9
    inc b                                         ; $6e08: $04
    ld [bc], a                                    ; $6e09: $02
    db $10                                        ; $6e0a: $10
    inc d                                         ; $6e0b: $14
    ld [$0910], sp                                ; $6e0c: $08 $10 $09
    nop                                           ; $6e0f: $00
    ld d, l                                       ; $6e10: $55
    nop                                           ; $6e11: $00
    xor d                                         ; $6e12: $aa
    inc b                                         ; $6e13: $04
    jr jr_0a2_6e24                                ; $6e14: $18 $0e

    xor [hl]                                      ; $6e16: $ae
    ld h, $03                                     ; $6e17: $26 $03
    ld b, d                                       ; $6e19: $42
    xor a                                         ; $6e1a: $af
    db $10                                        ; $6e1b: $10
    jr jr_0a2_6e60                                ; $6e1c: $18 $42

    ld [$7767], a                                 ; $6e1e: $ea $67 $77
    ld h, l                                       ; $6e21: $65
    ld c, $f9                                     ; $6e22: $0e $f9

jr_0a2_6e24:
    xor b                                         ; $6e24: $a8
    jr nc, jr_0a2_6e2f                            ; $6e25: $30 $08

    reti                                          ; $6e27: $d9


    inc l                                         ; $6e28: $2c
    jr @+$46                                      ; $6e29: $18 $44

    jr c, jr_0a2_6e3d                             ; $6e2b: $38 $10

    inc bc                                        ; $6e2d: $03
    ld d, a                                       ; $6e2e: $57

jr_0a2_6e2f:
    inc bc                                        ; $6e2f: $03
    ld b, b                                       ; $6e30: $40
    xor e                                         ; $6e31: $ab
    inc b                                         ; $6e32: $04
    jr jr_0a2_6e37                                ; $6e33: $18 $02

    xor d                                         ; $6e35: $aa
    ld [bc], a                                    ; $6e36: $02

jr_0a2_6e37:
    ld d, [hl]                                    ; $6e37: $56
    ld bc, $01ab                                  ; $6e38: $01 $ab $01
    pop bc                                        ; $6e3b: $c1
    pop hl                                        ; $6e3c: $e1

jr_0a2_6e3d:
    add e                                         ; $6e3d: $83
    rst $00                                       ; $6e3e: $c7
    cp h                                          ; $6e3f: $bc
    db $fc                                        ; $6e40: $fc
    call nz, Call_000_0001                        ; $6e41: $c4 $01 $00
    ld [bc], a                                    ; $6e44: $02
    rst $00                                       ; $6e45: $c7
    rst $00                                       ; $6e46: $c7
    jr c, jr_0a2_6ec6                             ; $6e47: $38 $7d

    add b                                         ; $6e49: $80
    add c                                         ; $6e4a: $81
    ld d, b                                       ; $6e4b: $50
    jr c, jr_0a2_6dce                             ; $6e4c: $38 $80

    inc b                                         ; $6e4e: $04
    xor d                                         ; $6e4f: $aa
    ld sp, $1175                                  ; $6e50: $31 $75 $11
    cp e                                          ; $6e53: $bb
    ld h, b                                       ; $6e54: $60
    jr z, jr_0a2_6e5b                             ; $6e55: $28 $04

    ld d, c                                       ; $6e57: $51
    ld [bc], a                                    ; $6e58: $02
    ld [bc], a                                    ; $6e59: $02
    xor b                                         ; $6e5a: $a8

jr_0a2_6e5b:
    add h                                         ; $6e5b: $84
    pop de                                        ; $6e5c: $d1
    dec bc                                        ; $6e5d: $0b
    and c                                         ; $6e5e: $a1
    ld [hl], b                                    ; $6e5f: $70

jr_0a2_6e60:
    jr jr_0a2_6e65                                ; $6e60: $18 $03

    nop                                           ; $6e62: $00

jr_0a2_6e63:
    xor e                                         ; $6e63: $ab
    dec b                                         ; $6e64: $05

jr_0a2_6e65:
    ld d, a                                       ; $6e65: $57
    rlca                                          ; $6e66: $07
    xor a                                         ; $6e67: $af

jr_0a2_6e68:
    rlca                                          ; $6e68: $07
    ld d, a                                       ; $6e69: $57
    add d                                         ; $6e6a: $82
    ld b, b                                       ; $6e6b: $40
    xor e                                         ; $6e6c: $ab

jr_0a2_6e6d:
    add b                                         ; $6e6d: $80
    jr jr_0a2_6e68                                ; $6e6e: $18 $f8

    ld a, [$fdac]                                 ; $6e70: $fa $ac $fd
    ld a, [hl]                                    ; $6e73: $7e

jr_0a2_6e74:
    cp $00                                        ; $6e74: $fe $00
    cp $ff                                        ; $6e76: $fe $ff
    ld c, $0e                                     ; $6e78: $0e $0e
    ld de, $1f55                                  ; $6e7a: $11 $55 $1f
    or c                                          ; $6e7d: $b1
    nop                                           ; $6e7e: $00
    sbc a                                         ; $6e7f: $9f
    pop de                                        ; $6e80: $d1
    sbc a                                         ; $6e81: $9f
    or c                                          ; $6e82: $b1
    sbc a                                         ; $6e83: $9f
    db $d3                                        ; $6e84: $d3
    sbc [hl]                                      ; $6e85: $9e
    or [hl]                                       ; $6e86: $b6
    nop                                           ; $6e87: $00
    cp l                                          ; $6e88: $bd
    push af                                       ; $6e89: $f5
    sbc $d6                                       ; $6e8a: $de $d6
    dec b                                         ; $6e8c: $05
    ld d, c                                       ; $6e8d: $51
    ld a, [bc]                                    ; $6e8e: $0a
    and b                                         ; $6e8f: $a0
    ld b, b                                       ; $6e90: $40
    inc b                                         ; $6e91: $04
    inc b                                         ; $6e92: $04
    nop                                           ; $6e93: $00
    dec b                                         ; $6e94: $05
    ld d, b                                       ; $6e95: $50
    add d                                         ; $6e96: $82
    xor b                                         ; $6e97: $a8
    ld b, c                                       ; $6e98: $41
    ld d, h                                       ; $6e99: $54
    nop                                           ; $6e9a: $00
    jr nz, jr_0a2_6ec7                            ; $6e9b: $20 $2a

    add e                                         ; $6e9d: $83
    rst $10                                       ; $6e9e: $d7
    add $ea                                       ; $6e9f: $c6 $ea
    adc $d7                                       ; $6ea1: $ce $d7
    nop                                           ; $6ea3: $00
    ld h, a                                       ; $6ea4: $67
    db $eb                                        ; $6ea5: $eb
    ld l, [hl]                                    ; $6ea6: $6e
    ld [hl], a                                    ; $6ea7: $77
    sub h                                         ; $6ea8: $94
    sbc e                                         ; $6ea9: $9b
    sbc a                                         ; $6eaa: $9f
    db $dd                                        ; $6eab: $dd
    nop                                           ; $6eac: $00
    ld h, l                                       ; $6ead: $65
    and $4e                                       ; $6eae: $e6 $4e
    ld c, a                                       ; $6eb0: $4f
    ld c, $0e                                     ; $6eb1: $0e $0e
    ld c, $0f                                     ; $6eb3: $0e $0f
    jr nz, jr_0a2_6ec5                            ; $6eb5: $20 $0e

    sbc [hl]                                      ; $6eb7: $9e
    inc a                                         ; $6eb8: $3c
    nop                                           ; $6eb9: $00
    cp $ca                                        ; $6eba: $fe $ca
    rst $38                                       ; $6ebc: $ff
    ld [bc], a                                    ; $6ebd: $02
    cp $04                                        ; $6ebe: $fe $04
    jr nz, @-$5f                                  ; $6ec0: $20 $9f

    jr nz, jr_0a2_6e63                            ; $6ec2: $20 $9f

    ld a, [hl+]                                   ; $6ec4: $2a

jr_0a2_6ec5:
    inc b                                         ; $6ec5: $04

jr_0a2_6ec6:
    nop                                           ; $6ec6: $00

jr_0a2_6ec7:
    ld hl, $009f                                  ; $6ec7: $21 $9f $00
    inc h                                         ; $6eca: $24
    sbc e                                         ; $6ecb: $9b
    jr nc, jr_0a2_6e6d                            ; $6ecc: $30 $9f

    inc h                                         ; $6ece: $24
    sbc a                                         ; $6ecf: $9f
    ld hl, $109e                                  ; $6ed0: $21 $9e $10
    jr nz, jr_0a2_6e74                            ; $6ed3: $20 $9f

    add hl, hl                                    ; $6ed5: $29
    ld [$2300], sp                                ; $6ed6: $08 $00 $23
    sbc a                                         ; $6ed9: $9f
    inc l                                         ; $6eda: $2c
    sbc a                                         ; $6edb: $9f
    ld [bc], a                                    ; $6edc: $02
    ld [hl+], a                                   ; $6edd: $22
    sbc l                                         ; $6ede: $9d
    ld hl, $4c9e                                  ; $6edf: $21 $9e $4c
    cp c                                          ; $6ee2: $b9
    ld hl, sp+$18                                 ; $6ee3: $f8 $18
    inc [hl]                                      ; $6ee5: $34
    ld d, b                                       ; $6ee6: $50
    jp hl                                         ; $6ee7: $e9


    ld b, $09                                     ; $6ee8: $06 $09
    inc c                                         ; $6eea: $0c
    nop                                           ; $6eeb: $00
    ld hl, $ab03                                  ; $6eec: $21 $03 $ab
    inc b                                         ; $6eef: $04
    ld d, a                                       ; $6ef0: $57
    ld b, b                                       ; $6ef1: $40
    xor b                                         ; $6ef2: $a8
    ret nc                                        ; $6ef3: $d0

    ld b, $10                                     ; $6ef4: $06 $10
    rst $38                                       ; $6ef6: $ff
    add [hl]                                      ; $6ef7: $86
    adc a                                         ; $6ef8: $8f
    adc [hl]                                      ; $6ef9: $8e
    sbc a                                         ; $6efa: $9f
    rlca                                          ; $6efb: $07
    add c                                         ; $6efc: $81
    pop bc                                        ; $6efd: $c1
    ld b, d                                       ; $6efe: $42
    db $e3                                        ; $6eff: $e3
    inc a                                         ; $6f00: $3c
    db $e4                                        ; $6f01: $e4
    ld h, $30                                     ; $6f02: $26 $30
    add hl, bc                                    ; $6f04: $09
    ld a, [$0118]                                 ; $6f05: $fa $18 $01
    inc b                                         ; $6f08: $04
    ld sp, hl                                     ; $6f09: $f9
    ld c, b                                       ; $6f0a: $48
    cp c                                          ; $6f0b: $b9
    sbc b                                         ; $6f0c: $98
    pop af                                        ; $6f0d: $f1
    jr nz, jr_0a2_6f30                            ; $6f0e: $20 $20

    ld b, $8b                                     ; $6f10: $06 $8b
    ld [bc], a                                    ; $6f12: $02
    ld [$ff31], sp                                ; $6f13: $08 $31 $ff
    inc de                                        ; $6f16: $13
    db $ec                                        ; $6f17: $ec
    dec b                                         ; $6f18: $05
    ld e, $06                                     ; $6f19: $1e $06
    rlca                                          ; $6f1b: $07
    inc c                                         ; $6f1c: $0c
    rrca                                          ; $6f1d: $0f
    ld d, b                                       ; $6f1e: $50
    add b                                         ; $6f1f: $80
    ld b, $07                                     ; $6f20: $06 $07
    add h                                         ; $6f22: $84
    sub d                                         ; $6f23: $92
    ld b, $a0                                     ; $6f24: $06 $a0
    rst $38                                       ; $6f26: $ff
    ld de, $02e1                                  ; $6f27: $11 $e1 $02
    inc d                                         ; $6f2a: $14
    ld hl, sp+$28                                 ; $6f2b: $f8 $28
    db $fc                                        ; $6f2d: $fc
    rst $10                                       ; $6f2e: $d7
    db $fd                                        ; $6f2f: $fd

jr_0a2_6f30:
    db $10                                        ; $6f30: $10
    ld l, $55                                     ; $6f31: $2e $55
    add sp, -$7f                                  ; $6f33: $e8 $81
    dec d                                         ; $6f35: $15
    db $10                                        ; $6f36: $10
    ld a, $10                                     ; $6f37: $3e $10
    jr @-$33                                      ; $6f39: $18 $cb

    sub b                                         ; $6f3b: $90
    ld sp, $d5dd                                  ; $6f3c: $31 $dd $d5
    sbc $02                                       ; $6f3f: $de $02
    ld a, [c]                                     ; $6f41: $f2
    ccf                                           ; $6f42: $3f
    pop af                                        ; $6f43: $f1
    rra                                           ; $6f44: $1f
    pop af                                        ; $6f45: $f1
    ld c, $48                                     ; $6f46: $0e $48
    inc b                                         ; $6f48: $04
    sub h                                         ; $6f49: $94
    nop                                           ; $6f4a: $00
    cp $83                                        ; $6f4b: $fe $83
    rst $38                                       ; $6f4d: $ff
    ld hl, $2034                                  ; $6f4e: $21 $34 $20
    ld a, [hl+]                                   ; $6f51: $2a
    jr nz, jr_0a2_6f54                            ; $6f52: $20 $00

jr_0a2_6f54:
    dec [hl]                                      ; $6f54: $35
    inc hl                                        ; $6f55: $23
    dec hl                                        ; $6f56: $2b
    ld b, c                                       ; $6f57: $41
    ld d, l                                       ; $6f58: $55
    ld l, e                                       ; $6f59: $6b
    ld a, a                                       ; $6f5a: $7f
    add e                                         ; $6f5b: $83
    add b                                         ; $6f5c: $80
    sub [hl]                                      ; $6f5d: $96
    rlca                                          ; $6f5e: $07
    ld h, $7d                                     ; $6f5f: $26 $7d
    dec e                                         ; $6f61: $1d
    cp [hl]                                       ; $6f62: $be
    rst $38                                       ; $6f63: $ff
    rst $38                                       ; $6f64: $ff
    push de                                       ; $6f65: $d5
    add h                                         ; $6f66: $84
    adc e                                         ; $6f67: $8b
    rrca                                          ; $6f68: $0f
    rst $38                                       ; $6f69: $ff
    sbc a                                         ; $6f6a: $9f
    rst $38                                       ; $6f6b: $ff
    ccf                                           ; $6f6c: $3f
    sub b                                         ; $6f6d: $90
    inc bc                                        ; $6f6e: $03
    ld a, h                                       ; $6f6f: $7c
    cp $01                                        ; $6f70: $fe $01
    call nz, Call_0a2_7cfd                        ; $6f72: $c4 $fd $7c
    cp $ec                                        ; $6f75: $fe $ec
    db $fd                                        ; $6f77: $fd
    ld [c], a                                     ; $6f78: $e2

jr_0a2_6f79:
    ret nc                                        ; $6f79: $d0

    rlca                                          ; $6f7a: $07
    inc b                                         ; $6f7b: $04
    ldh a, [rIE]                                  ; $6f7c: $f0 $ff
    add c                                         ; $6f7e: $81
    rst $38                                       ; $6f7f: $ff
    jp Jump_000_06d2                              ; $6f80: $c3 $d2 $06


jr_0a2_6f83:
    call c, Call_0a2_6dff                         ; $6f83: $dc $ff $6d
    cp b                                          ; $6f86: $b8
    db $10                                        ; $6f87: $10
    rlca                                          ; $6f88: $07
    ld [bc], a                                    ; $6f89: $02
    ld [$0203], sp                                ; $6f8a: $08 $03 $02
    jr nz, jr_0a2_6fa5                            ; $6f8d: $20 $16

    rra                                           ; $6f8f: $1f
    nop                                           ; $6f90: $00
    db $ec                                        ; $6f91: $ec
    rlca                                          ; $6f92: $07
    ret nc                                        ; $6f93: $d0

    ld h, [hl]                                    ; $6f94: $66
    ld a, [bc]                                    ; $6f95: $0a
    sbc e                                         ; $6f96: $9b
    ld c, $7f                                     ; $6f97: $0e $7f
    or [hl]                                       ; $6f99: $b6
    rla                                           ; $6f9a: $17
    rst $38                                       ; $6f9b: $ff
    rst $38                                       ; $6f9c: $ff
    db $f4                                        ; $6f9d: $f4
    rst $30                                       ; $6f9e: $f7
    dec b                                         ; $6f9f: $05
    db $f4                                        ; $6fa0: $f4
    rst $30                                       ; $6fa1: $f7
    db $fc                                        ; $6fa2: $fc
    rst $38                                       ; $6fa3: $ff
    db $fc                                        ; $6fa4: $fc

jr_0a2_6fa5:
    ld h, $14                                     ; $6fa5: $26 $14
    nop                                           ; $6fa7: $00
    and b                                         ; $6fa8: $a0
    db $10                                        ; $6fa9: $10
    rlca                                          ; $6faa: $07
    ldh a, [rP1]                                  ; $6fab: $f0 $00
    rla                                           ; $6fad: $17
    ld hl, sp+$7d                                 ; $6fae: $f8 $7d
    db $ec                                        ; $6fb0: $ec
    rlca                                          ; $6fb1: $07
    jr nz, jr_0a2_6fbe                            ; $6fb2: $20 $0a

    or b                                          ; $6fb4: $b0
    ld [$0f01], sp                                ; $6fb5: $08 $01 $0f
    nop                                           ; $6fb8: $00
    ld [$6f1f], a                                 ; $6fb9: $ea $1f $6f
    rst $38                                       ; $6fbc: $ff
    db $db                                        ; $6fbd: $db

jr_0a2_6fbe:
    and b                                         ; $6fbe: $a0
    ld [de], a                                    ; $6fbf: $12
    add b                                         ; $6fc0: $80
    ret nz                                        ; $6fc1: $c0

    jr jr_0a2_7034                                ; $6fc2: $18 $70

    rst $38                                       ; $6fc4: $ff
    call nc, $bbff                                ; $6fc5: $d4 $ff $bb
    rst $38                                       ; $6fc8: $ff
    or $a8                                        ; $6fc9: $f6 $a8
    ret nc                                        ; $6fcb: $d0

    jr nc, jr_0a2_6fe5                            ; $6fcc: $30 $17

    xor $06                                       ; $6fce: $ee $06
    ld a, l                                       ; $6fd0: $7d
    cp h                                          ; $6fd1: $bc
    rlca                                          ; $6fd2: $07
    rst $38                                       ; $6fd3: $ff
    rst $38                                       ; $6fd4: $ff
    ld [hl+], a                                   ; $6fd5: $22
    nop                                           ; $6fd6: $00
    sbc l                                         ; $6fd7: $9d
    jr nc, jr_0a2_6f79                            ; $6fd8: $30 $9f

    ld [hl+], a                                   ; $6fda: $22
    sbc a                                         ; $6fdb: $9f
    dec h                                         ; $6fdc: $25
    sbc a                                         ; $6fdd: $9f
    daa                                           ; $6fde: $27
    add hl, bc                                    ; $6fdf: $09
    sbc a                                         ; $6fe0: $9f
    inc sp                                        ; $6fe1: $33
    sbc a                                         ; $6fe2: $9f
    dec l                                         ; $6fe3: $2d
    halt                                          ; $6fe4: $76

jr_0a2_6fe5:
    add hl, bc                                    ; $6fe5: $09
    sbc a                                         ; $6fe6: $9f
    jr z, @+$6a                                   ; $6fe7: $28 $68

    ld bc, $2c40                                  ; $6fe9: $01 $40 $2c
    add [hl]                                      ; $6fec: $86
    ld bc, $9f24                                  ; $6fed: $01 $24 $9f
    nop                                           ; $6ff0: $00
    sbc a                                         ; $6ff1: $9f
    jr jr_0a2_6f83                                ; $6ff2: $18 $8f

    nop                                           ; $6ff4: $00
    ld [$2487], sp                                ; $6ff5: $08 $87 $24
    rra                                           ; $6ff8: $1f
    add hl, bc                                    ; $6ff9: $09
    ccf                                           ; $6ffa: $3f
    sbc $bf                                       ; $6ffb: $de $bf
    ld d, h                                       ; $6ffd: $54
    cp l                                          ; $6ffe: $bd
    ld h, b                                       ; $6fff: $60
    jr nz, jr_0a2_7043                            ; $7000: $20 $41

    jp nc, CopyHL2DE_23                          ; $7002: $d2 $12 $12

    cp d                                          ; $7005: $ba
    rlca                                          ; $7006: $07
    sub c                                         ; $7007: $91
    ld a, a                                       ; $7008: $7f
    adc d                                         ; $7009: $8a
    cp b                                          ; $700a: $b8
    rrca                                          ; $700b: $0f
    inc d                                         ; $700c: $14
    rst $28                                       ; $700d: $ef
    add b                                         ; $700e: $80
    ld b, h                                       ; $700f: $44
    dec b                                         ; $7010: $05
    ld d, b                                       ; $7011: $50
    jr nc, @+$06                                  ; $7012: $30 $04

jr_0a2_7014:
    ld [bc], a                                    ; $7014: $02
    jr nz, jr_0a2_7014                            ; $7015: $20 $fd

    ld [$04bc], sp                                ; $7017: $08 $bc $04
    xor b                                         ; $701a: $a8
    rst $38                                       ; $701b: $ff
    jp nc, $e4ff                                  ; $701c: $d2 $ff $e4

    or d                                          ; $701f: $b2
    jp c, $ba00                                   ; $7020: $da $00 $ba

    ld [hl], $04                                  ; $7023: $36 $04
    ld sp, hl                                     ; $7025: $f9
    nop                                           ; $7026: $00
    rst $38                                       ; $7027: $ff
    rlca                                          ; $7028: $07
    add b                                         ; $7029: $80
    inc b                                         ; $702a: $04
    dec bc                                        ; $702b: $0b
    and d                                         ; $702c: $a2
    inc d                                         ; $702d: $14
    dec b                                         ; $702e: $05
    add e                                         ; $702f: $83
    add b                                         ; $7030: $80
    inc b                                         ; $7031: $04
    inc hl                                        ; $7032: $23
    rst $18                                       ; $7033: $df

jr_0a2_7034:
    rlca                                          ; $7034: $07
    ld h, b                                       ; $7035: $60
    inc [hl]                                      ; $7036: $34
    ld bc, $ff0a                                  ; $7037: $01 $0a $ff
    dec hl                                        ; $703a: $2b

Call_0a2_703b:
    rst $30                                       ; $703b: $f7
    ld bc, $0184                                  ; $703c: $01 $84 $01
    ld b, c                                       ; $703f: $41
    sub $0f                                       ; $7040: $d6 $0f
    ei                                            ; $7042: $fb

jr_0a2_7043:
    ld d, b                                       ; $7043: $50
    inc de                                        ; $7044: $13
    call c, $9307                                 ; $7045: $dc $07 $93
    or [hl]                                       ; $7048: $b6
    inc b                                         ; $7049: $04
    ld bc, $15ff                                  ; $704a: $01 $ff $15
    rst $28                                       ; $704d: $ef
    ld d, l                                       ; $704e: $55
    add c                                         ; $704f: $81
    add sp, $07                                   ; $7050: $e8 $07
    ld d, e                                       ; $7052: $53
    ld d, d                                       ; $7053: $52
    rlca                                          ; $7054: $07
    inc bc                                        ; $7055: $03
    jr c, jr_0a2_705f                             ; $7056: $38 $07

    inc de                                        ; $7058: $13
    sub [hl]                                      ; $7059: $96
    inc b                                         ; $705a: $04
    ld d, $d3                                     ; $705b: $16 $d3
    rst $38                                       ; $705d: $ff
    push hl                                       ; $705e: $e5

jr_0a2_705f:
    ld a, [$bf02]                                 ; $705f: $fa $02 $bf
    add [hl]                                      ; $7062: $86
    inc b                                         ; $7063: $04
    add b                                         ; $7064: $80
    dec bc                                        ; $7065: $0b
    inc c                                         ; $7066: $0c
    nop                                           ; $7067: $00
    ld sp, hl                                     ; $7068: $f9
    ld c, l                                       ; $7069: $4d
    ld hl, sp+$0c                                 ; $706a: $f8 $0c
    ld sp, hl                                     ; $706c: $f9
    dec c                                         ; $706d: $0d
    ld hl, sp+$2c                                 ; $706e: $f8 $2c
    ld [hl+], a                                   ; $7070: $22
    reti                                          ; $7071: $d9


    adc l                                         ; $7072: $8d
    ld [$1c10], sp                                ; $7073: $08 $10 $1c
    ld sp, hl                                     ; $7076: $f9
    dec l                                         ; $7077: $2d
    stop                                          ; $7078: $10 $00

jr_0a2_707a:
    xor l                                         ; $707a: $ad
    nop                                           ; $707b: $00
    ld hl, sp-$24                                 ; $707c: $f8 $dc
    ld sp, hl                                     ; $707e: $f9
    ld l, l                                       ; $707f: $6d
    ld hl, sp-$64                                 ; $7080: $f8 $9c
    ld a, c                                       ; $7082: $79
    ld c, l                                       ; $7083: $4d
    ld b, c                                       ; $7084: $41
    cp b                                          ; $7085: $b8
    ld d, a                                       ; $7086: $57
    inc [hl]                                      ; $7087: $34
    rst $38                                       ; $7088: $ff
    ei                                            ; $7089: $fb

jr_0a2_708a:
    db $fc                                        ; $708a: $fc
    ld hl, sp-$02                                 ; $708b: $f8 $fe
    add l                                         ; $708d: $85
    ld b, $80                                     ; $708e: $06 $80
    sub $0f                                       ; $7090: $d6 $0f
    ldh a, [$f0]                                  ; $7092: $f0 $f0
    ret nz                                        ; $7094: $c0

    jp nz, $0800                                  ; $7095: $c2 $00 $08

    nop                                           ; $7098: $00
    db $10                                        ; $7099: $10
    ld b, b                                       ; $709a: $40
    nop                                           ; $709b: $00
    ld [de], a                                    ; $709c: $12

Call_0a2_709d:
jr_0a2_709d:
    ld b, [hl]                                    ; $709d: $46
    dec e                                         ; $709e: $1d
    ccf                                           ; $709f: $3f
    ccf                                           ; $70a0: $3f
    rrca                                          ; $70a1: $0f
    rrca                                          ; $70a2: $0f
    ld bc, $a707                                  ; $70a3: $01 $07 $a7
    inc hl                                        ; $70a6: $23
    ld [hl], a                                    ; $70a7: $77
    ld [hl], e                                    ; $70a8: $73
    db $e3                                        ; $70a9: $e3
    pop hl                                        ; $70aa: $e1
    push af                                       ; $70ab: $f5
    rrca                                          ; $70ac: $0f
    inc d                                         ; $70ad: $14
    rst $20                                       ; $70ae: $e7
    rst $38                                       ; $70af: $ff
    db $e3                                        ; $70b0: $e3
    ld [bc], a                                    ; $70b1: $02
    db $10                                        ; $70b2: $10
    rst $20                                       ; $70b3: $e7
    ld a, [bc]                                    ; $70b4: $0a
    nop                                           ; $70b5: $00
    cp $ff                                        ; $70b6: $fe $ff
    nop                                           ; $70b8: $00
    ldh [rIE], a                                  ; $70b9: $e0 $ff
    sbc a                                         ; $70bb: $9f
    ldh [$75], a                                  ; $70bc: $e0 $75
    adc [hl]                                      ; $70be: $8e
    or a                                          ; $70bf: $b7
    nop                                           ; $70c0: $00
    ld b, b                                       ; $70c1: $40
    db $fd                                        ; $70c2: $fd
    ld h, a                                       ; $70c3: $67
    rrca                                          ; $70c4: $0f
    nop                                           ; $70c5: $00
    add b                                         ; $70c6: $80
    nop                                           ; $70c7: $00
    jr nz, jr_0a2_708a                            ; $70c8: $20 $c0

    sbc l                                         ; $70ca: $9d
    nop                                           ; $70cb: $00
    ld l, a                                       ; $70cc: $6f
    ld d, b                                       ; $70cd: $50
    ccf                                           ; $70ce: $3f
    db $e3                                        ; $70cf: $e3
    inc a                                         ; $70d0: $3c
    and h                                         ; $70d1: $a4
    ld a, b                                       ; $70d2: $78
    or $00                                        ; $70d3: $f6 $00
    jr c, jr_0a2_707a                             ; $70d5: $38 $a3

    ld a, h                                       ; $70d7: $7c
    set 0, c                                      ; $70d8: $cb $c1
    rst $38                                       ; $70da: $ff
    rst $38                                       ; $70db: $ff
    and l                                         ; $70dc: $a5
    nop                                           ; $70dd: $00
    rst $38                                       ; $70de: $ff
    ld h, h                                       ; $70df: $64
    ld sp, hl                                     ; $70e0: $f9
    ld h, $f9                                     ; $70e1: $26 $f9
    add b                                         ; $70e3: $80
    ld a, a                                       ; $70e4: $7f
    add b                                         ; $70e5: $80
    nop                                           ; $70e6: $00
    ld a, a                                       ; $70e7: $7f
    ld b, b                                       ; $70e8: $40
    sbc a                                         ; $70e9: $9f
    db $eb                                        ; $70ea: $eb
    rst $30                                       ; $70eb: $f7
    push de                                       ; $70ec: $d5
    db $e3                                        ; $70ed: $e3
    push bc                                       ; $70ee: $c5
    nop                                           ; $70ef: $00
    db $e3                                        ; $70f0: $e3
    push af                                       ; $70f1: $f5
    jp $c3d5                                      ; $70f2: $c3 $d5 $c3


    push bc                                       ; $70f5: $c5
    add e                                         ; $70f6: $83
    dec h                                         ; $70f7: $25
    nop                                           ; $70f8: $00
    add e                                         ; $70f9: $83
    and c                                         ; $70fa: $a1
    rlca                                          ; $70fb: $07
    jr nc, jr_0a2_709d                            ; $70fc: $30 $9f

    or b                                          ; $70fe: $b0
    rra                                           ; $70ff: $1f
    ld sp, $9e00                                  ; $7100: $31 $00 $9e
    or b                                          ; $7103: $b0
    rra                                           ; $7104: $1f
    inc [hl]                                      ; $7105: $34
    sbc e                                         ; $7106: $9b
    or a                                          ; $7107: $b7
    rra                                           ; $7108: $1f
    jr c, jr_0a2_710b                             ; $7109: $38 $00

jr_0a2_710b:
    sbc a                                         ; $710b: $9f
    or d                                          ; $710c: $b2
    dec e                                         ; $710d: $1d
    dec a                                         ; $710e: $3d
    sub d                                         ; $710f: $92
    cp [hl]                                       ; $7110: $be
    ld de, $0e3a                                  ; $7111: $11 $3a $0e
    sub l                                         ; $7114: $95
    or h                                          ; $7115: $b4
    dec de                                        ; $7116: $1b
    jr nc, jr_0a2_7125                            ; $7117: $30 $0c

    nop                                           ; $7119: $00
    inc e                                         ; $711a: $1c
    ld [$10bc], sp                                ; $711b: $08 $bc $10
    ld sp, hl                                     ; $711e: $f9
    nop                                           ; $711f: $00
    ld a, l                                       ; $7120: $7d
    ld hl, sp-$14                                 ; $7121: $f8 $ec
    ld sp, hl                                     ; $7123: $f9
    db $dd                                        ; $7124: $dd

jr_0a2_7125:
    add sp, $0c                                   ; $7125: $e8 $0c
    ld sp, hl                                     ; $7127: $f9
    ld a, [de]                                    ; $7128: $1a
    adc l                                         ; $7129: $8d
    ld hl, sp-$04                                 ; $712a: $f8 $fc
    inc c                                         ; $712c: $0c
    nop                                           ; $712d: $00
    ld [$1c08], sp                                ; $712e: $08 $08 $1c
    call nc, $8c00                                ; $7131: $d4 $00 $8c
    nop                                           ; $7134: $00
    ld a, c                                       ; $7135: $79
    dec c                                         ; $7136: $0d
    ld hl, sp-$78                                 ; $7137: $f8 $88
    ldh a, [rTMA]                                 ; $7139: $f0 $06
    db $fc                                        ; $713b: $fc
    ld c, d                                       ; $713c: $4a
    db $10                                        ; $713d: $10
    cp $17                                        ; $713e: $fe $17
    cp $c0                                        ; $7140: $fe $c0
    add hl, hl                                    ; $7142: $29
    halt                                          ; $7143: $76
    adc b                                         ; $7144: $88
    rst $18                                       ; $7145: $df
    jr nz, jr_0a2_7148                            ; $7146: $20 $00

jr_0a2_7148:
    db $ed                                        ; $7148: $ed
    ld [de], a                                    ; $7149: $12
    ld a, a                                       ; $714a: $7f
    add b                                         ; $714b: $80
    dec l                                         ; $714c: $2d
    jp nc, $e916                                  ; $714d: $d2 $16 $e9

    add d                                         ; $7150: $82
    xor b                                         ; $7151: $a8
    ld a, [bc]                                    ; $7152: $0a
    ldh a, [$3f]                                  ; $7153: $f0 $3f
    cp b                                          ; $7155: $b8
    ld a, a                                       ; $7156: $7f
    db $f4                                        ; $7157: $f4
    inc b                                         ; $7158: $04
    nop                                           ; $7159: $00
    inc e                                         ; $715a: $1c
    nop                                           ; $715b: $00
    rst $38                                       ; $715c: $ff
    ld a, [de]                                    ; $715d: $1a
    rst $38                                       ; $715e: $ff
    rrca                                          ; $715f: $0f
    db $fc                                        ; $7160: $fc
    db $fc                                        ; $7161: $fc
    nop                                           ; $7162: $00
    ld h, c                                       ; $7163: $61
    nop                                           ; $7164: $00
    sbc [hl]                                      ; $7165: $9e
    ld [bc], a                                    ; $7166: $02
    db $fc                                        ; $7167: $fc
    inc b                                         ; $7168: $04
    ld hl, sp+$09                                 ; $7169: $f8 $09
    ldh a, [rNR12]                                ; $716b: $f0 $12
    nop                                           ; $716d: $00
    ldh [$64], a                                  ; $716e: $e0 $64
    add b                                         ; $7170: $80
    adc b                                         ; $7171: $88
    nop                                           ; $7172: $00
    jr nc, jr_0a2_7175                            ; $7173: $30 $00

jr_0a2_7175:
    dec c                                         ; $7175: $0d
    nop                                           ; $7176: $00
    inc bc                                        ; $7177: $03
    ld c, c                                       ; $7178: $49
    rlca                                          ; $7179: $07
    dec bc                                        ; $717a: $0b
    rlca                                          ; $717b: $07
    inc de                                        ; $717c: $13
    rrca                                          ; $717d: $0f
    rla                                           ; $717e: $17
    nop                                           ; $717f: $00
    rrca                                          ; $7180: $0f
    scf                                           ; $7181: $37
    rrca                                          ; $7182: $0f
    ld l, a                                       ; $7183: $6f
    rra                                           ; $7184: $1f
    rst $08                                       ; $7185: $cf
    ccf                                           ; $7186: $3f
    pop hl                                        ; $7187: $e1
    add b                                         ; $7188: $80
    sub [hl]                                      ; $7189: $96
    inc bc                                        ; $718a: $03
    rra                                           ; $718b: $1f
    ccf                                           ; $718c: $3f
    ret nz                                        ; $718d: $c0

    add c                                         ; $718e: $81
    adc $f0                                       ; $718f: $ce $f0
    db $fc                                        ; $7191: $fc
    and b                                         ; $7192: $a0
    ld d, c                                       ; $7193: $51
    ld d, $07                                     ; $7194: $16 $07
    jp nc, Jump_0a2_6000                          ; $7196: $d2 $00 $60

    add b                                         ; $7199: $80
    ld d, l                                       ; $719a: $55
    ld [$1000], a                                 ; $719b: $ea $00 $10
    nop                                           ; $719e: $00
    ccf                                           ; $719f: $3f
    ret nz                                        ; $71a0: $c0

    ld h, d                                       ; $71a1: $62
    ld c, $c1                                     ; $71a2: $0e $c1
    nop                                           ; $71a4: $00
    rlca                                          ; $71a5: $07
    nop                                           ; $71a6: $00
    nop                                           ; $71a7: $00
    dec e                                         ; $71a8: $1d
    inc bc                                        ; $71a9: $03
    ld d, h                                       ; $71aa: $54
    xor a                                         ; $71ab: $af
    nop                                           ; $71ac: $00
    nop                                           ; $71ad: $00
    ld hl, sp+$07                                 ; $71ae: $f8 $07
    ret nz                                        ; $71b0: $c0

    and h                                         ; $71b1: $a4
    ld [de], a                                    ; $71b2: $12
    jr z, jr_0a2_71bc                             ; $71b3: $28 $07

    pop af                                        ; $71b5: $f1
    ld sp, hl                                     ; $71b6: $f9
    rlca                                          ; $71b7: $07
    inc bc                                        ; $71b8: $03
    rst $20                                       ; $71b9: $e7
    rra                                           ; $71ba: $1f
    sub [hl]                                      ; $71bb: $96

jr_0a2_71bc:
    ld a, b                                       ; $71bc: $78
    ld a, [de]                                    ; $71bd: $1a
    xor d                                         ; $71be: $aa
    ld d, l                                       ; $71bf: $55
    nop                                           ; $71c0: $00
    dec bc                                        ; $71c1: $0b
    ld [c], a                                     ; $71c2: $e2
    ld b, b                                       ; $71c3: $40
    ld [hl-], a                                   ; $71c4: $32
    db $10                                        ; $71c5: $10
    jr jr_0a2_721e                                ; $71c6: $18 $56

    call c, Call_000_3240                         ; $71c8: $dc $40 $32
    jr nz, jr_0a2_71e5                            ; $71cb: $20 $18

    or [hl]                                       ; $71cd: $b6
    ld c, [hl]                                    ; $71ce: $4e
    ld [bc], a                                    ; $71cf: $02
    add b                                         ; $71d0: $80
    ld a, [de]                                    ; $71d1: $1a
    jr nc, jr_0a2_71ec                            ; $71d2: $30 $18

    rla                                           ; $71d4: $17
    rst $38                                       ; $71d5: $ff
    add b                                         ; $71d6: $80
    add b                                         ; $71d7: $80
    ld a, [hl+]                                   ; $71d8: $2a
    ld sp, $ba9f                                  ; $71d9: $31 $9f $ba
    rra                                           ; $71dc: $1f
    ccf                                           ; $71dd: $3f
    sbc a                                         ; $71de: $9f
    cp a                                          ; $71df: $bf
    ld [bc], a                                    ; $71e0: $02
    rra                                           ; $71e1: $1f
    ld [hl-], a                                   ; $71e2: $32
    sbc a                                         ; $71e3: $9f
    cp d                                          ; $71e4: $ba

jr_0a2_71e5:
    rla                                           ; $71e5: $17
    dec [hl]                                      ; $71e6: $35
    inc c                                         ; $71e7: $0c
    nop                                           ; $71e8: $00
    jr nc, jr_0a2_71f3                            ; $71e9: $30 $08

    sbc a                                         ; $71eb: $9f

jr_0a2_71ec:
    or c                                          ; $71ec: $b1
    ld e, $38                                     ; $71ed: $1e $38
    inc h                                         ; $71ef: $24
    ld bc, $9f32                                  ; $71f0: $01 $32 $9f

jr_0a2_71f3:
    cp b                                          ; $71f3: $b8
    nop                                           ; $71f4: $00
    rla                                           ; $71f5: $17
    jr nc, @-$5f                                  ; $71f6: $30 $9f

    or l                                          ; $71f8: $b5
    ld e, $10                                     ; $71f9: $1e $10
    rrca                                          ; $71fb: $0f
    ld l, b                                       ; $71fc: $68
    inc b                                         ; $71fd: $04
    ccf                                           ; $71fe: $3f
    ld d, b                                       ; $71ff: $50
    ld a, a                                       ; $7200: $7f
    ld [c], a                                     ; $7201: $e2
    ld a, a                                       ; $7202: $7f
    and b                                         ; $7203: $a0
    ld a, [hl+]                                   ; $7204: $2a
    jp Jump_000_27ff                              ; $7205: $c3 $ff $27


    rst $10                                       ; $7208: $d7
    rst $28                                       ; $7209: $ef
    inc b                                         ; $720a: $04
    ld c, b                                       ; $720b: $48
    rst $38                                       ; $720c: $ff
    add sp, $7b                                   ; $720d: $e8 $7b
    rlca                                          ; $720f: $07
    inc b                                         ; $7210: $04
    ld c, b                                       ; $7211: $48
    ret c                                         ; $7212: $d8

    ld b, $8f                                     ; $7213: $06 $8f
    ldh [$2e], a                                  ; $7215: $e0 $2e
    add e                                         ; $7217: $83
    rst $38                                       ; $7218: $ff
    pop bc                                        ; $7219: $c1
    sub e                                         ; $721a: $93
    dec c                                         ; $721b: $0d
    sbc b                                         ; $721c: $98
    rlca                                          ; $721d: $07

jr_0a2_721e:
    and [hl]                                      ; $721e: $a6
    nop                                           ; $721f: $00
    call z, $f807                                 ; $7220: $cc $07 $f8
    or c                                          ; $7223: $b1
    jr @+$11                                      ; $7224: $18 $0f

    ld [$17af], sp                                ; $7226: $08 $af $17
    sub e                                         ; $7229: $93
    dec c                                         ; $722a: $0d
    jr jr_0a2_722d                                ; $722b: $18 $00

jr_0a2_722d:
    nop                                           ; $722d: $00
    rst $38                                       ; $722e: $ff
    ld d, d                                       ; $722f: $52
    xor c                                         ; $7230: $a9
    adc $06                                       ; $7231: $ce $06
    ld bc, $0588                                  ; $7233: $01 $88 $05
    jr nz, jr_0a2_723c                            ; $7236: $20 $04

    ld b, $02                                     ; $7238: $06 $02
    db $fd                                        ; $723a: $fd
    ld b, d                                       ; $723b: $42

jr_0a2_723c:
    ld b, $80                                     ; $723c: $06 $80
    jp nc, Jump_000_2105                          ; $723e: $d2 $05 $21

    rst $18                                       ; $7241: $df
    add b                                         ; $7242: $80
    rst $38                                       ; $7243: $ff
    dec b                                         ; $7244: $05
    rst $38                                       ; $7245: $ff
    ld c, [hl]                                    ; $7246: $4e
    add b                                         ; $7247: $80
    sbc d                                         ; $7248: $9a
    dec d                                         ; $7249: $15
    ld hl, $40fe                                  ; $724a: $21 $fe $40
    cp a                                          ; $724d: $bf
    inc b                                         ; $724e: $04
    ei                                            ; $724f: $fb
    rlca                                          ; $7250: $07
    rrca                                          ; $7251: $0f
    rst $38                                       ; $7252: $ff
    ld a, c                                       ; $7253: $79
    rst $38                                       ; $7254: $ff
    add $d8                                       ; $7255: $c6 $d8
    ld [bc], a                                    ; $7257: $02
    add $0a                                       ; $7258: $c6 $0a
    db $10                                        ; $725a: $10
    inc c                                         ; $725b: $0c
    call nz, Call_0a2_400f                        ; $725c: $c4 $0f $40
    ld b, h                                       ; $725f: $44
    ld a, d                                       ; $7260: $7a
    ld b, $44                                     ; $7261: $06 $44
    ei                                            ; $7263: $fb
    ld b, b                                       ; $7264: $40
    cp a                                          ; $7265: $bf
    ld b, h                                       ; $7266: $44
    rst $38                                       ; $7267: $ff
    nop                                           ; $7268: $00
    ld a, [bc]                                    ; $7269: $0a
    cp $14                                        ; $726a: $fe $14
    rst $38                                       ; $726c: $ff
    dec bc                                        ; $726d: $0b
    db $fc                                        ; $726e: $fc
    ld c, l                                       ; $726f: $4d
    cp $00                                        ; $7270: $fe $00
    inc b                                         ; $7272: $04
    rst $38                                       ; $7273: $ff
    ld h, [hl]                                    ; $7274: $66
    cp e                                          ; $7275: $bb
    inc b                                         ; $7276: $04
    rst $38                                       ; $7277: $ff
    db $ed                                        ; $7278: $ed
    cp $00                                        ; $7279: $fe $00
    reti                                          ; $727b: $d9


    xor $6c                                       ; $727c: $ee $6c
    cp e                                          ; $727e: $bb
    sbc l                                         ; $727f: $9d
    ld l, [hl]                                    ; $7280: $6e
    ld c, [hl]                                    ; $7281: $4e
    cp e                                          ; $7282: $bb
    nop                                           ; $7283: $00
    inc l                                         ; $7284: $2c
    db $d3                                        ; $7285: $d3
    ld a, [hl]                                    ; $7286: $7e
    add c                                         ; $7287: $81
    xor e                                         ; $7288: $ab
    ld d, h                                       ; $7289: $54
    ld d, h                                       ; $728a: $54
    rst $28                                       ; $728b: $ef
    nop                                           ; $728c: $00
    sub b                                         ; $728d: $90
    ld l, [hl]                                    ; $728e: $6e
    ld d, [hl]                                    ; $728f: $56
    xor c                                         ; $7290: $a9
    ld sp, $c4ce                                  ; $7291: $31 $ce $c4
    cp e                                          ; $7294: $bb
    nop                                           ; $7295: $00
    ld d, b                                       ; $7296: $50
    rst $38                                       ; $7297: $ff
    ld h, h                                       ; $7298: $64
    cp e                                          ; $7299: $bb
    or b                                          ; $729a: $b0
    ld a, a                                       ; $729b: $7f
    ld l, b                                       ; $729c: $68
    cp a                                          ; $729d: $bf
    nop                                           ; $729e: $00
    inc d                                         ; $729f: $14
    rst $38                                       ; $72a0: $ff
    ld e, d                                       ; $72a1: $5a
    cp a                                          ; $72a2: $bf
    db $10                                        ; $72a3: $10
    rst $38                                       ; $72a4: $ff
    ldh a, [$bf]                                  ; $72a5: $f0 $bf
    nop                                           ; $72a7: $00
    dec bc                                        ; $72a8: $0b
    db $fc                                        ; $72a9: $fc
    inc l                                         ; $72aa: $2c
    rst $38                                       ; $72ab: $ff
    dec bc                                        ; $72ac: $0b
    cp $05                                        ; $72ad: $fe $05
    rst $38                                       ; $72af: $ff
    nop                                           ; $72b0: $00
    ld b, [hl]                                    ; $72b1: $46
    cp [hl]                                       ; $72b2: $be
    dec hl                                        ; $72b3: $2b
    rst $38                                       ; $72b4: $ff
    dec b                                         ; $72b5: $05
    cp $89                                        ; $72b6: $fe $89
    ld a, a                                       ; $72b8: $7f
    nop                                           ; $72b9: $00
    dec e                                         ; $72ba: $1d
    xor $4e                                       ; $72bb: $ee $4e
    cp e                                          ; $72bd: $bb
    ccf                                           ; $72be: $3f
    xor $77                                       ; $72bf: $ee $77
    cp e                                          ; $72c1: $bb
    nop                                           ; $72c2: $00
    ld sp, hl                                     ; $72c3: $f9
    and $91                                       ; $72c4: $e6 $91
    rst $28                                       ; $72c6: $ef
    dec d                                         ; $72c7: $15
    xor $8b                                       ; $72c8: $ee $8b
    rst $38                                       ; $72ca: $ff
    nop                                           ; $72cb: $00
    ld d, c                                       ; $72cc: $51
    xor $ee                                       ; $72cd: $ee $ee
    cp e                                          ; $72cf: $bb
    ld a, a                                       ; $72d0: $7f
    xor $ff                                       ; $72d1: $ee $ff
    cp e                                          ; $72d3: $bb
    nop                                           ; $72d4: $00
    jp nc, $aaee                                  ; $72d5: $d2 $ee $aa

    rst $10                                       ; $72d8: $d7
    call nc, $beee                                ; $72d9: $d4 $ee $be
    ei                                            ; $72dc: $fb
    nop                                           ; $72dd: $00
    ld [hl], d                                    ; $72de: $72
    rst $38                                       ; $72df: $ff
    ldh [$bf], a                                  ; $72e0: $e0 $bf
    ret c                                         ; $72e2: $d8

    rst $38                                       ; $72e3: $ff
    ld b, h                                       ; $72e4: $44
    cp e                                          ; $72e5: $bb
    ld bc, $ff10                                  ; $72e6: $01 $10 $ff
    jp nc, Jump_000_19af                          ; $72e9: $d2 $af $19

    rst $38                                       ; $72ec: $ff
    ld b, b                                       ; $72ed: $40
    adc b                                         ; $72ee: $88
    rlca                                          ; $72ef: $07
    or h                                          ; $72f0: $b4
    ret nz                                        ; $72f1: $c0

    jr c, jr_0a2_731e                             ; $72f2: $38 $2a

    ld h, [hl]                                    ; $72f4: $66
    ld b, $c0                                     ; $72f5: $06 $c0
    ld e, b                                       ; $72f7: $58
    ld e, a                                       ; $72f8: $5f
    ret nz                                        ; $72f9: $c0

    ld d, b                                       ; $72fa: $50
    ld a, b                                       ; $72fb: $78
    rst $38                                       ; $72fc: $ff
    ld b, b                                       ; $72fd: $40
    rst $10                                       ; $72fe: $d7
    ret nz                                        ; $72ff: $c0

    ld e, b                                       ; $7300: $58
    rst $28                                       ; $7301: $ef
    ld d, h                                       ; $7302: $54
    rst $38                                       ; $7303: $ff
    dec hl                                        ; $7304: $2b
    db $f4                                        ; $7305: $f4
    ld d, l                                       ; $7306: $55
    nop                                           ; $7307: $00
    ld [$b57b], a                                 ; $7308: $ea $7b $b5
    ld d, l                                       ; $730b: $55
    rst $28                                       ; $730c: $ef
    add hl, hl                                    ; $730d: $29
    push af                                       ; $730e: $f5
    dec d                                         ; $730f: $15
    nop                                           ; $7310: $00
    xor $2a                                       ; $7311: $ee $2a
    push af                                       ; $7313: $f5
    ld e, l                                       ; $7314: $5d
    xor $bf                                       ; $7315: $ee $bf
    ld d, l                                       ; $7317: $55
    ld [hl], a                                    ; $7318: $77
    nop                                           ; $7319: $00
    xor d                                         ; $731a: $aa
    add h                                         ; $731b: $84
    ld a, a                                       ; $731c: $7f

jr_0a2_731d:
    db $fd                                        ; $731d: $fd

jr_0a2_731e:
    rst $38                                       ; $731e: $ff
    ld a, [$7d55]                                 ; $731f: $fa $55 $7d
    nop                                           ; $7322: $00
    xor d                                         ; $7323: $aa
    cp [hl]                                       ; $7324: $be
    ld d, l                                       ; $7325: $55

jr_0a2_7326:
    ld e, a                                       ; $7326: $5f
    xor d                                         ; $7327: $aa
    xor a                                         ; $7328: $af
    ld d, b                                       ; $7329: $50
    ld a, a                                       ; $732a: $7f
    ld b, b                                       ; $732b: $40
    add b                                         ; $732c: $80
    ld b, [hl]                                    ; $732d: $46
    inc c                                         ; $732e: $0c
    xor b                                         ; $732f: $a8
    ld d, l                                       ; $7330: $55

Call_0a2_7331:
    ld d, [hl]                                    ; $7331: $56
    xor b                                         ; $7332: $a8
    xor d                                         ; $7333: $aa
    ld d, l                                       ; $7334: $55
    nop                                           ; $7335: $00
    push de                                       ; $7336: $d5
    xor d                                         ; $7337: $aa
    ldh [$5f], a                                  ; $7338: $e0 $5f
    ld [hl], h                                    ; $733a: $74
    cp e                                          ; $733b: $bb
    jr nc, jr_0a2_731d                            ; $733c: $30 $df

    nop                                           ; $733e: $00
    ld a, b                                       ; $733f: $78
    cp a                                          ; $7340: $bf
    inc [hl]                                      ; $7341: $34
    rst $18                                       ; $7342: $df
    ld e, d                                       ; $7343: $5a
    cp a                                          ; $7344: $bf
    jr nc, jr_0a2_7326                            ; $7345: $30 $df

    inc b                                         ; $7347: $04
    ldh a, [$bf]                                  ; $7348: $f0 $bf
    ld a, [hl+]                                   ; $734a: $2a
    push af                                       ; $734b: $f5
    dec a                                         ; $734c: $3d
    jr c, jr_0a2_734f                             ; $734d: $38 $00

jr_0a2_734f:
    dec d                                         ; $734f: $15
    xor $00                                       ; $7350: $ee $00
    ld l, l                                       ; $7352: $6d
    or l                                          ; $7353: $b5
    ld a, [hl-]                                   ; $7354: $3a

jr_0a2_7355:
    rst $28                                       ; $7355: $ef
    ccf                                           ; $7356: $3f
    push af                                       ; $7357: $f5
    sbc b                                         ; $7358: $98
    ld l, a                                       ; $7359: $6f
    ld h, b                                       ; $735a: $60
    xor a                                         ; $735b: $af
    inc [hl]                                      ; $735c: $34
    ld [$0044], sp                                ; $735d: $08 $44 $00

jr_0a2_7360:
    db $eb                                        ; $7360: $eb
    ld d, l                                       ; $7361: $55
    add b                                         ; $7362: $80
    rst $38                                       ; $7363: $ff
    xor a                                         ; $7364: $af
    ld [$8a55], sp                                ; $7365: $08 $55 $8a
    rst $38                                       ; $7368: $ff
    db $eb                                        ; $7369: $eb
    ld l, d                                       ; $736a: $6a
    ld de, $aafe                                  ; $736b: $11 $fe $aa
    ld hl, sp+$00                                 ; $736e: $f8 $00
    ld b, l                                       ; $7370: $45
    xor d                                         ; $7371: $aa
    rst $10                                       ; $7372: $d7
    rst $28                                       ; $7373: $ef
    ld d, l                                       ; $7374: $55
    xor [hl]                                      ; $7375: $ae
    ei                                            ; $7376: $fb
    ld [hl], d                                    ; $7377: $72
    add b                                         ; $7378: $80
    inc [hl]                                      ; $7379: $34
    nop                                           ; $737a: $00
    ld l, b                                       ; $737b: $68
    rst $18                                       ; $737c: $df
    ld d, h                                       ; $737d: $54
    cp e                                          ; $737e: $bb
    jr nz, jr_0a2_7360                            ; $737f: $20 $df

    jp nc, $bf00                                  ; $7381: $d2 $00 $bf

    add hl, hl                                    ; $7384: $29
    ld e, a                                       ; $7385: $5f
    ld d, b                                       ; $7386: $50
    cp a                                          ; $7387: $bf
    dec b                                         ; $7388: $05
    rst $38                                       ; $7389: $ff
    inc d                                         ; $738a: $14
    ld [$83ff], sp                                ; $738b: $08 $ff $83
    db $fc                                        ; $738e: $fc
    inc d                                         ; $738f: $14
    ld a, [c]                                     ; $7390: $f2
    ld b, $04                                     ; $7391: $06 $04
    rst $38                                       ; $7393: $ff
    ld b, c                                       ; $7394: $41
    jr nz, jr_0a2_7355                            ; $7395: $20 $be

    inc d                                         ; $7397: $14
    inc e                                         ; $7398: $1c
    rlca                                          ; $7399: $07
    ld a, l                                       ; $739a: $7d
    cp d                                          ; $739b: $ba
    dec e                                         ; $739c: $1d
    xor $c6                                       ; $739d: $ee $c6
    nop                                           ; $739f: $00
    cp e                                          ; $73a0: $bb
    inc de                                        ; $73a1: $13
    xor $4c                                       ; $73a2: $ee $4c
    cp e                                          ; $73a4: $bb
    sub c                                         ; $73a5: $91
    ld l, [hl]                                    ; $73a6: $6e
    ld b, h                                       ; $73a7: $44
    nop                                           ; $73a8: $00
    cp e                                          ; $73a9: $bb
    ld sp, $55fe                                  ; $73aa: $31 $fe $55
    cp d                                          ; $73ad: $ba
    add hl, sp                                    ; $73ae: $39
    rst $28                                       ; $73af: $ef
    call nc, $bb00                                ; $73b0: $d4 $00 $bb
    sub e                                         ; $73b3: $93
    xor $4c                                       ; $73b4: $ee $4c
    or e                                          ; $73b6: $b3
    db $10                                        ; $73b7: $10
    xor $c5                                       ; $73b8: $ee $c5
    jr nz, jr_0a2_73f6                            ; $73ba: $20 $3a

Jump_0a2_73bc:
    ld [hl-], a                                   ; $73bc: $32
    ld e, d                                       ; $73bd: $5a
    inc b                                         ; $73be: $04
    jr @+$01                                      ; $73bf: $18 $ff

    add b                                         ; $73c1: $80
    ccf                                           ; $73c2: $3f
    inc [hl]                                      ; $73c3: $34
    nop                                           ; $73c4: $00
    rst $38                                       ; $73c5: $ff
    nop                                           ; $73c6: $00
    cp a                                          ; $73c7: $bf
    ld e, b                                       ; $73c8: $58
    rst $30                                       ; $73c9: $f7
    ld b, b                                       ; $73ca: $40
    cp a                                          ; $73cb: $bf
    ld hl, $fe00                                  ; $73cc: $21 $00 $fe
    add h                                         ; $73cf: $84
    rst $38                                       ; $73d0: $ff
    add hl, bc                                    ; $73d1: $09
    cp $b6                                        ; $73d2: $fe $b6
    rst $38                                       ; $73d4: $ff
    ld l, l                                       ; $73d5: $6d
    and b                                         ; $73d6: $a0
    xor l                                         ; $73d7: $ad
    inc b                                         ; $73d8: $04
    and $d5                                       ; $73d9: $e6 $d5
    inc bc                                        ; $73db: $03
    sub c                                         ; $73dc: $91
    xor $45                                       ; $73dd: $ee $45
    cp e                                          ; $73df: $bb
    ld e, e                                       ; $73e0: $5b
    inc h                                         ; $73e1: $24
    xor $57                                       ; $73e2: $ee $57
    inc [hl]                                      ; $73e4: $34
    ld bc, $bbdf                                  ; $73e5: $01 $df $bb
    sub h                                         ; $73e8: $94
    dec b                                         ; $73e9: $05
    cp e                                          ; $73ea: $bb
    sub c                                         ; $73eb: $91
    add d                                         ; $73ec: $82
    adc b                                         ; $73ed: $88
    ld bc, $ee71                                  ; $73ee: $01 $71 $ee
    and $bb                                       ; $73f1: $e6 $bb
    call nc, $0144                                ; $73f3: $d4 $44 $01

jr_0a2_73f6:
    rst $20                                       ; $73f6: $e7
    add b                                         ; $73f7: $80
    stop                                          ; $73f8: $10 $00
    ld [de], a                                    ; $73fa: $12
    rst $38                                       ; $73fb: $ff
    push bc                                       ; $73fc: $c5
    cp a                                          ; $73fd: $bf
    ccf                                           ; $73fe: $3f

Call_0a2_73ff:
    rst $38                                       ; $73ff: $ff
    ld d, [hl]                                    ; $7400: $56
    inc b                                         ; $7401: $04
    cp a                                          ; $7402: $bf
    cp [hl]                                       ; $7403: $be
    rst $38                                       ; $7404: $ff
    ld a, l                                       ; $7405: $7d
    cp a                                          ; $7406: $bf
    ldh [rDIV], a                                 ; $7407: $e0 $04
    cp a                                          ; $7409: $bf
    ld l, $08                                     ; $740a: $2e $08
    rst $30                                       ; $740c: $f7
    inc d                                         ; $740d: $14
    xor $a8                                       ; $740e: $ee $a8
    db $fc                                        ; $7410: $fc
    db $10                                        ; $7411: $10
    dec d                                         ; $7412: $15
    xor $6a                                       ; $7413: $ee $6a
    nop                                           ; $7415: $00
    or l                                          ; $7416: $b5
    dec d                                         ; $7417: $15
    xor $fe                                       ; $7418: $ee $fe
    rst $38                                       ; $741a: $ff
    ld a, l                                       ; $741b: $7d
    xor d                                         ; $741c: $aa
    xor [hl]                                      ; $741d: $ae
    nop                                           ; $741e: $00
    ld d, l                                       ; $741f: $55

jr_0a2_7420:
    rst $10                                       ; $7420: $d7
    xor d                                         ; $7421: $aa
    cp e                                          ; $7422: $bb
    ld d, l                                       ; $7423: $55
    ld e, l                                       ; $7424: $5d
    xor d                                         ; $7425: $aa
    xor d                                         ; $7426: $aa
    nop                                           ; $7427: $00
    ld d, l                                       ; $7428: $55
    ld d, l                                       ; $7429: $55
    xor d                                         ; $742a: $aa
    cp d                                          ; $742b: $ba
    rst $38                                       ; $742c: $ff
    ld d, h                                       ; $742d: $54
    xor e                                         ; $742e: $ab
    xor d                                         ; $742f: $aa
    ld bc, $d455                                  ; $7430: $01 $55 $d4
    xor d                                         ; $7433: $aa
    xor b                                         ; $7434: $a8
    ld d, l                                       ; $7435: $55
    ld e, h                                       ; $7436: $5c
    and d                                         ; $7437: $a2
    nop                                           ; $7438: $00
    ld bc, $2a10                                  ; $7439: $01 $10 $2a
    ld [hl+], a                                   ; $743c: $22
    ld e, l                                       ; $743d: $5d
    call nz, $df04                                ; $743e: $c4 $04 $df
    sub b                                         ; $7441: $90
    ccf                                           ; $7442: $3f
    inc h                                         ; $7443: $24
    ld [bc], a                                    ; $7444: $02
    rst $18                                       ; $7445: $df
    db $10                                        ; $7446: $10
    cp a                                          ; $7447: $bf
    ld l, b                                       ; $7448: $68
    ld d, a                                       ; $7449: $57
    ld d, b                                       ; $744a: $50
    nop                                           ; $744b: $00
    ld bc, $0095                                  ; $744c: $01 $95 $00
    xor $3b                                       ; $744f: $ee $3b
    push af                                       ; $7451: $f5
    or a                                          ; $7452: $b7
    xor $7d                                       ; $7453: $ee $7d
    push af                                       ; $7455: $f5
    cp $00                                        ; $7456: $fe $00
    xor $fd                                       ; $7458: $ee $fd
    rst $30                                       ; $745a: $f7
    rst $38                                       ; $745b: $ff
    ld [$45ba], a                                 ; $745c: $ea $ba $45
    ld d, l                                       ; $745f: $55
    nop                                           ; $7460: $00
    xor d                                         ; $7461: $aa
    ld [$5755], a                                 ; $7462: $ea $55 $57
    xor d                                         ; $7465: $aa
    rst $28                                       ; $7466: $ef
    ld d, l                                       ; $7467: $55
    rst $18                                       ; $7468: $df
    ld c, b                                       ; $7469: $48
    xor d                                         ; $746a: $aa
    db $f4                                        ; $746b: $f4
    rlca                                          ; $746c: $07
    xor d                                         ; $746d: $aa
    cp d                                          ; $746e: $ba
    ld c, b                                       ; $746f: $48
    ld bc, $55fa                                  ; $7470: $01 $fa $55
    rst $30                                       ; $7473: $f7
    jr z, jr_0a2_7420                             ; $7474: $28 $aa

    cp $04                                        ; $7476: $fe $04
    ld bc, $2f56                                  ; $7478: $01 $56 $2f
    inc bc                                        ; $747b: $03
    ld [hl+], a                                   ; $747c: $22
    rst $18                                       ; $747d: $df
    push de                                       ; $747e: $d5
    ld bc, $2fbf                                  ; $747f: $01 $bf $2f
    rst $18                                       ; $7482: $df
    ld d, [hl]                                    ; $7483: $56
    cp a                                          ; $7484: $bf
    ld l, $df                                     ; $7485: $2e $df
    add b                                         ; $7487: $80
    nop                                           ; $7488: $00
    cpl                                           ; $7489: $2f
    rst $18                                       ; $748a: $df
    rst $38                                       ; $748b: $ff
    ret nz                                        ; $748c: $c0

    ld h, c                                       ; $748d: $61
    ld a, a                                       ; $748e: $7f
    add b                                         ; $748f: $80
    ld h, d                                       ; $7490: $62
    cp h                                          ; $7491: $bc
    ld a, [bc]                                    ; $7492: $0a
    add b                                         ; $7493: $80
    ld c, d                                       ; $7494: $4a
    call z, $a00a                                 ; $7495: $cc $0a $a0
    add b                                         ; $7498: $80
    ld a, [hl-]                                   ; $7499: $3a
    ret nc                                        ; $749a: $d0

    and $05                                       ; $749b: $e6 $05
    ld a, [hl+]                                   ; $749d: $2a
    push af                                       ; $749e: $f5
    ld a, a                                       ; $749f: $7f
    ldh [rOCPS], a                                ; $74a0: $e0 $6a
    nop                                           ; $74a2: $00
    or l                                          ; $74a3: $b5
    ld a, a                                       ; $74a4: $7f
    rst $20                                       ; $74a5: $e7
    inc l                                         ; $74a6: $2c
    db $f4                                        ; $74a7: $f4
    dec a                                         ; $74a8: $3d
    db $e4                                        ; $74a9: $e4
    cpl                                           ; $74aa: $2f
    inc de                                        ; $74ab: $13
    db $f4                                        ; $74ac: $f4
    ld a, a                                       ; $74ad: $7f
    db $e4                                        ; $74ae: $e4
    ld [hl], l                                    ; $74af: $75
    nop                                           ; $74b0: $00
    nop                                           ; $74b1: $00
    add b                                         ; $74b2: $80
    inc de                                        ; $74b3: $13
    ld c, $1f                                     ; $74b4: $0e $1f
    ld e, $40                                     ; $74b6: $1e $40
    nop                                           ; $74b8: $00
    db $10                                        ; $74b9: $10
    ld [$fa05], sp                                ; $74ba: $08 $05 $fa
    rst $38                                       ; $74bd: $ff
    rst $38                                       ; $74be: $ff
    db $fc                                        ; $74bf: $fc
    nop                                           ; $74c0: $00
    ld b, b                                       ; $74c1: $40
    cp $31                                        ; $74c2: $fe $31
    ld d, $b0                                     ; $74c4: $16 $b0
    ld e, a                                       ; $74c6: $5f
    call c, Call_0a2_703b                         ; $74c7: $dc $3b $70

jr_0a2_74ca:
    sbc a                                         ; $74ca: $9f
    nop                                           ; $74cb: $00
    ret c                                         ; $74cc: $d8

    cp a                                          ; $74cd: $bf
    ld [hl], h                                    ; $74ce: $74
    sbc a                                         ; $74cf: $9f
    ld e, d                                       ; $74d0: $5a
    cp a                                          ; $74d1: $bf
    ld [hl], b                                    ; $74d2: $70
    sbc a                                         ; $74d3: $9f
    inc b                                         ; $74d4: $04
    ld d, b                                       ; $74d5: $50
    cp a                                          ; $74d6: $bf
    cpl                                           ; $74d7: $2f
    db $f4                                        ; $74d8: $f4
    ccf                                           ; $74d9: $3f
    jr c, jr_0a2_74dc                             ; $74da: $38 $00

jr_0a2_74dc:
    dec a                                         ; $74dc: $3d
    db $e4                                        ; $74dd: $e4
    nop                                           ; $74de: $00
    ld l, h                                       ; $74df: $6c
    or h                                          ; $74e0: $b4
    jr c, jr_0a2_74ca                             ; $74e1: $38 $e7

    cpl                                           ; $74e3: $2f
    ldh a, [$ba]                                  ; $74e4: $f0 $ba
    ld h, l                                       ; $74e6: $65
    pop af                                        ; $74e7: $f1
    jr c, jr_0a2_7512                             ; $74e8: $38 $28

    rst $10                                       ; $74ea: $d7
    ld c, $4a                                     ; $74eb: $0e $4a
    db $10                                        ; $74ed: $10
    ld h, a                                       ; $74ee: $67
    ld d, $fe                                     ; $74ef: $16 $fe
    nop                                           ; $74f1: $00
    db $fc                                        ; $74f2: $fc
    rst $20                                       ; $74f3: $e7
    ld b, $04                                     ; $74f4: $06 $04
    cp $00                                        ; $74f6: $fe $00
    ld b, $f9                                     ; $74f8: $06 $f9
    ld [hl], d                                    ; $74fa: $72
    inc [hl]                                      ; $74fb: $34
    nop                                           ; $74fc: $00
    ld a, b                                       ; $74fd: $78
    sbc a                                         ; $74fe: $9f
    nop                                           ; $74ff: $00
    ld d, h                                       ; $7500: $54
    cp e                                          ; $7501: $bb
    ld [hl], b                                    ; $7502: $70
    sbc a                                         ; $7503: $9f
    ld d, d                                       ; $7504: $52
    cp a                                          ; $7505: $bf
    ld a, c                                       ; $7506: $79
    rra                                           ; $7507: $1f
    add h                                         ; $7508: $84
    ld b, b                                       ; $7509: $40
    nop                                           ; $750a: $00
    rst $30                                       ; $750b: $f7
    inc a                                         ; $750c: $3c
    db $e4                                        ; $750d: $e4
    xor l                                         ; $750e: $ad
    ld b, h                                       ; $750f: $44
    db $10                                        ; $7510: $10
    ccf                                           ; $7511: $3f

jr_0a2_7512:
    db $e4                                        ; $7512: $e4
    inc c                                         ; $7513: $0c
    ld l, a                                       ; $7514: $6f
    or h                                          ; $7515: $b4
    ccf                                           ; $7516: $3f
    db $e4                                        ; $7517: $e4
    ld a, d                                       ; $7518: $7a
    jr c, @-$5d                                   ; $7519: $38 $a1

    ld h, $fe                                     ; $751b: $26 $fe
    cp $b0                                        ; $751d: $fe $b0
    xor l                                         ; $751f: $ad
    ld b, $fc                                     ; $7520: $06 $fc
    ld l, $05                                     ; $7522: $2e $05
    add d                                         ; $7524: $82
    jr jr_0a2_7559                                ; $7525: $18 $32

    ld e, l                                       ; $7527: $5d
    sub b                                         ; $7528: $90
    ld a, a                                       ; $7529: $7f
    inc b                                         ; $752a: $04
    ld hl, sp-$61                                 ; $752b: $f8 $9f
    db $10                                        ; $752d: $10
    ccf                                           ; $752e: $3f
    inc [hl]                                      ; $752f: $34
    inc b                                         ; $7530: $04
    nop                                           ; $7531: $00
    ld a, b                                       ; $7532: $78
    rla                                           ; $7533: $17
    and b                                         ; $7534: $a0
    add b                                         ; $7535: $80
    ld [$b8bf], sp                                ; $7536: $08 $bf $b8
    nop                                           ; $7539: $00

jr_0a2_753a:
    cp a                                          ; $753a: $bf
    db $e4                                        ; $753b: $e4
    ld l, l                                       ; $753c: $6d
    db $f4                                        ; $753d: $f4
    db $fc                                        ; $753e: $fc
    rra                                           ; $753f: $1f
    db $e4                                        ; $7540: $e4
    add sp, -$09                                  ; $7541: $e8 $f7
    ld e, l                                       ; $7543: $5d
    dec b                                         ; $7544: $05
    ld a, $40                                     ; $7545: $3e $40
    add d                                         ; $7547: $82
    ld [$28c8], sp                                ; $7548: $08 $c8 $28
    add d                                         ; $754b: $82
    ld [$0340], sp                                ; $754c: $08 $40 $03
    rlc e                                         ; $754f: $cb $03
    ld [hl], d                                    ; $7551: $72
    sbc a                                         ; $7552: $9f
    ld d, l                                       ; $7553: $55
    cp a                                          ; $7554: $bf
    ld a, a                                       ; $7555: $7f
    sbc a                                         ; $7556: $9f
    nop                                           ; $7557: $00
    ld d, [hl]                                    ; $7558: $56

jr_0a2_7559:
    cp a                                          ; $7559: $bf
    ld a, [hl]                                    ; $755a: $7e
    sbc a                                         ; $755b: $9f
    ld e, l                                       ; $755c: $5d
    cp a                                          ; $755d: $bf
    cp $9f                                        ; $755e: $fe $9f
    nop                                           ; $7560: $00
    rst $18                                       ; $7561: $df
    ccf                                           ; $7562: $3f
    ldh a, [$0b]                                  ; $7563: $f0 $0b
    adc b                                         ; $7565: $88
    ld [$ff48], sp                                ; $7566: $08 $48 $ff
    ld bc, $b560                                  ; $7569: $01 $60 $b5
    rlc d                                         ; $756c: $cb $02
    ld e, b                                       ; $756e: $58
    rst $38                                       ; $756f: $ff
    rst $38                                       ; $7570: $ff
    push af                                       ; $7571: $f5
    nop                                           ; $7572: $00
    rst $38                                       ; $7573: $ff
    xor b                                         ; $7574: $a8
    rst $38                                       ; $7575: $ff
    nop                                           ; $7576: $00
    rst $38                                       ; $7577: $ff
    ld d, h                                       ; $7578: $54
    xor e                                         ; $7579: $ab
    xor e                                         ; $757a: $ab
    db $10                                        ; $757b: $10
    ld d, h                                       ; $757c: $54
    sbc $21                                       ; $757d: $de $21
    add hl, bc                                    ; $757f: $09
    nop                                           ; $7580: $00
    rst $38                                       ; $7581: $ff
    ld [hl], a                                    ; $7582: $77
    rst $38                                       ; $7583: $ff
    ld a, [hl+]                                   ; $7584: $2a
    ret nz                                        ; $7585: $c0

    stop                                          ; $7586: $10 $00
    ld [bc], a                                    ; $7588: $02
    ld [$7f80], sp                                ; $7589: $08 $80 $7f
    ld b, b                                       ; $758c: $40
    cp a                                          ; $758d: $bf
    jr @+$26                                      ; $758e: $18 $24

    ld [bc], a                                    ; $7590: $02
    inc a                                         ; $7591: $3c
    ld b, d                                       ; $7592: $42

jr_0a2_7593:
    ld e, d                                       ; $7593: $5a
    ld h, [hl]                                    ; $7594: $66
    inc [hl]                                      ; $7595: $34
    ld a, d                                       ; $7596: $7a
    inc b                                         ; $7597: $04
    jr z, jr_0a2_753a                             ; $7598: $28 $a0

    nop                                           ; $759a: $00
    ld e, a                                       ; $759b: $5f
    pop de                                        ; $759c: $d1
    ld l, $ea                                     ; $759d: $2e $ea

jr_0a2_759f:
    dec d                                         ; $759f: $15
    push de                                       ; $75a0: $d5
    ld a, [hl+]                                   ; $75a1: $2a
    rst $28                                       ; $75a2: $ef
    inc c                                         ; $75a3: $0c
    db $10                                        ; $75a4: $10
    db $db                                        ; $75a5: $db
    jr nz, jr_0a2_759f                            ; $75a6: $20 $f7

    daa                                           ; $75a8: $27
    nop                                           ; $75a9: $00
    inc e                                         ; $75aa: $1c
    ld c, b                                       ; $75ab: $48
    ld e, d                                       ; $75ac: $5a
    ld h, [hl]                                    ; $75ad: $66

jr_0a2_75ae:
    nop                                           ; $75ae: $00
    dec [hl]                                      ; $75af: $35
    ld a, d                                       ; $75b0: $7a
    nop                                           ; $75b1: $00
    nop                                           ; $75b2: $00
    jr nc, jr_0a2_75fd                            ; $75b3: $30 $48

    ld a, b                                       ; $75b5: $78
    add h                                         ; $75b6: $84
    ld [bc], a                                    ; $75b7: $02
    or h                                          ; $75b8: $b4
    call z, $f468                                 ; $75b9: $cc $68 $f4
    sub h                                         ; $75bc: $94
    db $ec                                        ; $75bd: $ec
    inc b                                         ; $75be: $04
    nop                                           ; $75bf: $00
    ld l, h                                       ; $75c0: $6c
    ld [bc], a                                    ; $75c1: $02
    ld e, e                                       ; $75c2: $5b
    ld h, h                                       ; $75c3: $64
    dec [hl]                                      ; $75c4: $35
    ld a, [hl]                                    ; $75c5: $7e
    ld c, e                                       ; $75c6: $4b
    ld [hl], a                                    ; $75c7: $77
    inc b                                         ; $75c8: $04
    jr c, jr_0a2_7593                             ; $75c9: $38 $c8

    nop                                           ; $75cb: $00
    inc [hl]                                      ; $75cc: $34
    or h                                          ; $75cd: $b4
    ld l, h                                       ; $75ce: $6c
    ld c, b                                       ; $75cf: $48
    or h                                          ; $75d0: $b4
    or h                                          ; $75d1: $b4
    ld l, l                                       ; $75d2: $6d
    ld c, c                                       ; $75d3: $49
    nop                                           ; $75d4: $00
    or [hl]                                       ; $75d5: $b6
    or [hl]                                       ; $75d6: $b6
    ld l, a                                       ; $75d7: $6f
    ld c, c                                       ; $75d8: $49
    or a                                          ; $75d9: $b7
    or [hl]                                       ; $75da: $b6
    ld l, a                                       ; $75db: $6f
    rst $38                                       ; $75dc: $ff

jr_0a2_75dd:
    nop                                           ; $75dd: $00
    rst $38                                       ; $75de: $ff
    rst $30                                       ; $75df: $f7
    rst $38                                       ; $75e0: $ff
    rst $28                                       ; $75e1: $ef
    rst $38                                       ; $75e2: $ff
    ld d, a                                       ; $75e3: $57
    rst $38                                       ; $75e4: $ff
    dec hl                                        ; $75e5: $2b
    jr nc, @+$01                                  ; $75e6: $30 $ff

    ld bc, $1076                                  ; $75e8: $01 $76 $10
    or b                                          ; $75eb: $b0
    jr z, jr_0a2_75dd                             ; $75ec: $28 $ef

    rst $38                                       ; $75ee: $ff
    ld e, a                                       ; $75ef: $5f
    rst $38                                       ; $75f0: $ff
    inc b                                         ; $75f1: $04
    cp d                                          ; $75f2: $ba
    rst $38                                       ; $75f3: $ff
    dec d                                         ; $75f4: $15
    rst $38                                       ; $75f5: $ff
    cp $02                                        ; $75f6: $fe $02
    jr nz, jr_0a2_75ae                            ; $75f8: $20 $b4

    rst $38                                       ; $75fa: $ff
    inc de                                        ; $75fb: $13
    ld c, d                                       ; $75fc: $4a

jr_0a2_75fd:
    rst $38                                       ; $75fd: $ff
    add h                                         ; $75fe: $84

jr_0a2_75ff:
    xor b                                         ; $75ff: $a8
    nop                                           ; $7600: $00
    and l                                         ; $7601: $a5
    rlc d                                         ; $7602: $cb $02
    ld e, b                                       ; $7604: $58
    and h                                         ; $7605: $a4
    ld [$ac00], sp                                ; $7606: $08 $00 $ac
    ld d, e                                       ; $7609: $53
    ld a, [$f505]                                 ; $760a: $fa $05 $f5
    ld a, [bc]                                    ; $760d: $0a
    rst $38                                       ; $760e: $ff
    nop                                           ; $760f: $00
    ld bc, $20df                                  ; $7610: $01 $df $20
    cp a                                          ; $7613: $bf
    ld b, b                                       ; $7614: $40
    ld a, [bc]                                    ; $7615: $0a
    rst $38                                       ; $7616: $ff
    inc b                                         ; $7617: $04
    cp [hl]                                       ; $7618: $be
    stop                                          ; $7619: $10 $00
    dec b                                         ; $761b: $05
    ld a, [$54ab]                                 ; $761c: $fa $ab $54
    ld a, a                                       ; $761f: $7f
    add b                                         ; $7620: $80
    rst $28                                       ; $7621: $ef
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
    nop                                           ; $7624: $00
    rst $38                                       ; $7625: $ff
    jr z, jr_0a2_75ff                             ; $7626: $28 $d7

    ld d, b                                       ; $7628: $50
    xor a                                         ; $7629: $af
    xor d                                         ; $762a: $aa
    ld d, l                                       ; $762b: $55
    nop                                           ; $762c: $00
    halt                                          ; $762d: $76
    adc c                                         ; $762e: $89
    db $ec                                        ; $762f: $ec
    inc de                                        ; $7630: $13
    jp c, $f425                                   ; $7631: $da $25 $f4

    dec bc                                        ; $7634: $0b
    nop                                           ; $7635: $00
    db $fd                                        ; $7636: $fd
    ld [bc], a                                    ; $7637: $02
    rst $38                                       ; $7638: $ff
    nop                                           ; $7639: $00
    rst $30                                       ; $763a: $f7
    ld [$00ff], sp                                ; $763b: $08 $ff $00
    nop                                           ; $763e: $00
    db $dd                                        ; $763f: $dd
    nop                                           ; $7640: $00
    or a                                          ; $7641: $b7
    nop                                           ; $7642: $00
    db $eb                                        ; $7643: $eb
    nop                                           ; $7644: $00
    rst $10                                       ; $7645: $d7
    nop                                           ; $7646: $00
    nop                                           ; $7647: $00
    nop                                           ; $7648: $00
    inc c                                         ; $7649: $0c
    inc c                                         ; $764a: $0c
    ld [de], a                                    ; $764b: $12
    ld e, $21                                     ; $764c: $1e $21
    dec l                                         ; $764e: $2d
    inc sp                                        ; $764f: $33
    ld [$3d1a], sp                                ; $7650: $08 $1a $3d
    dec h                                         ; $7653: $25
    dec sp                                        ; $7654: $3b
    inc b                                         ; $7655: $04
    ld [$15ea], sp                                ; $7656: $08 $ea $15
    rst $38                                       ; $7659: $ff
    nop                                           ; $765a: $00
    nop                                           ; $765b: $00
    xor $11                                       ; $765c: $ee $11
    rst $18                                       ; $765e: $df
    jr nz, @-$08                                  ; $765f: $20 $f6

    ld bc, $10df                                  ; $7661: $01 $df $10
    nop                                           ; $7664: $00
    xor [hl]                                      ; $7665: $ae
    ld bc, $0020                                  ; $7666: $01 $20 $00
    nop                                           ; $7669: $00
    ld b, $09                                     ; $766a: $06 $09
    rrca                                          ; $766c: $0f
    nop                                           ; $766d: $00
    db $10                                        ; $766e: $10
    sub $39                                       ; $766f: $d6 $39
    db $ed                                        ; $7671: $ed
    ld e, $d6                                     ; $7672: $1e $d6
    add hl, sp                                    ; $7674: $39
    xor l                                         ; $7675: $ad
    ld de, $d2de                                  ; $7676: $11 $de $d2
    dec a                                         ; $7679: $3d
    jr z, jr_0a2_768c                             ; $767a: $28 $10

    cp l                                          ; $767c: $bd
    and l                                         ; $767d: $a5
    cp e                                          ; $767e: $bb
    inc b                                         ; $767f: $04
    ld [$320b], sp                                ; $7680: $08 $0b $32
    call $8779                                    ; $7683: $cd $79 $87
    ld hl, $0000                                  ; $7686: $21 $00 $00
    inc h                                         ; $7689: $24
    ld c, c                                       ; $768a: $49
    and b                                         ; $768b: $a0

jr_0a2_768c:
    jr z, jr_0a2_768e                             ; $768c: $28 $00

jr_0a2_768e:
    db $d3                                        ; $768e: $d3
    rst $28                                       ; $768f: $ef
    add c                                         ; $7690: $81
    rst $38                                       ; $7691: $ff
    jp $8181                                      ; $7692: $c3 $81 $81


    rst $38                                       ; $7695: $ff
    ld b, b                                       ; $7696: $40
    ld a, a                                       ; $7697: $7f
    ld [bc], a                                    ; $7698: $02
    db $10                                        ; $7699: $10
    halt                                          ; $769a: $76
    rst $38                                       ; $769b: $ff
    ld l, a                                       ; $769c: $6f
    rst $38                                       ; $769d: $ff
    ld b, a                                       ; $769e: $47
    rst $38                                       ; $769f: $ff
    db $10                                        ; $76a0: $10
    ld l, d                                       ; $76a1: $6a
    rst $38                                       ; $76a2: $ff
    ld d, b                                       ; $76a3: $50
    adc a                                         ; $76a4: $8f
    ld de, $ff7b                                  ; $76a5: $11 $7b $ff
    db $dd                                        ; $76a8: $dd
    rst $38                                       ; $76a9: $ff
    ld bc, $ffa9                                  ; $76aa: $01 $a9 $ff
    ld d, c                                       ; $76ad: $51
    rst $38                                       ; $76ae: $ff
    add d                                         ; $76af: $82
    rst $38                                       ; $76b0: $ff
    dec b                                         ; $76b1: $05
    sbc a                                         ; $76b2: $9f
    ld de, $bf00                                  ; $76b3: $11 $00 $bf
    rst $38                                       ; $76b6: $ff
    ld a, [hl]                                    ; $76b7: $7e
    rst $38                                       ; $76b8: $ff
    db $ed                                        ; $76b9: $ed
    rst $38                                       ; $76ba: $ff
    jp nc, $41ff                                  ; $76bb: $d2 $ff $41

    and c                                         ; $76be: $a1
    adc b                                         ; $76bf: $88
    ld bc, $fffe                                  ; $76c0: $01 $fe $ff
    xor $ff                                       ; $76c3: $ee $ff
    sbc $f6                                       ; $76c5: $de $f6

jr_0a2_76c7:
    nop                                           ; $76c7: $00
    nop                                           ; $76c8: $00
    ld a, d                                       ; $76c9: $7a
    rst $38                                       ; $76ca: $ff
    db $f4                                        ; $76cb: $f4
    rst $38                                       ; $76cc: $ff
    ld [hl], b                                    ; $76cd: $70
    rst $38                                       ; $76ce: $ff
    xor d                                         ; $76cf: $aa
    db $fd                                        ; $76d0: $fd
    nop                                           ; $76d1: $00
    ld [hl+], a                                   ; $76d2: $22
    db $fd                                        ; $76d3: $fd
    ld b, b                                       ; $76d4: $40
    rst $38                                       ; $76d5: $ff
    ld a, [bc]                                    ; $76d6: $0a
    push af                                       ; $76d7: $f5
    inc b                                         ; $76d8: $04
    ei                                            ; $76d9: $fb
    nop                                           ; $76da: $00
    ld a, [bc]                                    ; $76db: $0a
    push af                                       ; $76dc: $f5
    dec e                                         ; $76dd: $1d
    ld [c], a                                     ; $76de: $e2
    dec sp                                        ; $76df: $3b
    call nz, $8877                                ; $76e0: $c4 $77 $88
    add b                                         ; $76e3: $80
    sbc d                                         ; $76e4: $9a
    add hl, bc                                    ; $76e5: $09
    jr nz, jr_0a2_76c7                            ; $76e6: $20 $df

    ld b, b                                       ; $76e8: $40
    cp a                                          ; $76e9: $bf
    and d                                         ; $76ea: $a2
    ld e, l                                       ; $76eb: $5d
    pop de                                        ; $76ec: $d1
    nop                                           ; $76ed: $00
    ld l, $b5                                     ; $76ee: $2e $b5
    ld c, d                                       ; $76f0: $4a
    ld [hl], e                                    ; $76f1: $73
    adc h                                         ; $76f2: $8c
    inc b                                         ; $76f3: $04
    ei                                            ; $76f4: $fb
    inc b                                         ; $76f5: $04
    nop                                           ; $76f6: $00
    ei                                            ; $76f7: $fb
    dec l                                         ; $76f8: $2d
    jp nc, $a55a                                  ; $76f9: $d2 $5a $a5

    cp l                                          ; $76fc: $bd
    ld b, d                                       ; $76fd: $42
    ld a, e                                       ; $76fe: $7b
    nop                                           ; $76ff: $00
    add h                                         ; $7700: $84
    or $09                                        ; $7701: $f6 $09
    rst $38                                       ; $7703: $ff
    nop                                           ; $7704: $00
    ld [de], a                                    ; $7705: $12
    db $fd                                        ; $7706: $fd
    inc h                                         ; $7707: $24
    db $10                                        ; $7708: $10
    ei                                            ; $7709: $fb
    ld b, d                                       ; $770a: $42
    db $fd                                        ; $770b: $fd
    jr nc, jr_0a2_7716                            ; $770c: $30 $08

    ld b, [hl]                                    ; $770e: $46
    cp c                                          ; $770f: $b9
    adc $31                                       ; $7710: $ce $31
    ld [$29d6], sp                                ; $7712: $08 $d6 $29
    ld a, a                                       ; $7715: $7f

jr_0a2_7716:
    add b                                         ; $7716: $80
    ld [bc], a                                    ; $7717: $02
    ld [$807b], sp                                ; $7718: $08 $7b $80
    ld a, l                                       ; $771b: $7d
    nop                                           ; $771c: $00
    add b                                         ; $771d: $80
    ld l, a                                       ; $771e: $6f
    add b                                         ; $771f: $80
    rst $38                                       ; $7720: $ff
    nop                                           ; $7721: $00
    ld a, e                                       ; $7722: $7b
    add b                                         ; $7723: $80
    xor $58                                       ; $7724: $ee $58
    ld de, $09bc                                  ; $7726: $11 $bc $09
    cp $e1                                        ; $7729: $fe $e1
    ld bc, $09be                                  ; $772b: $01 $be $09
    ld a, [hl]                                    ; $772e: $7e
    nop                                           ; $772f: $00
    rst $28                                       ; $7730: $ef
    adc c                                         ; $7731: $89
    db $eb                                        ; $7732: $eb
    ld bc, $007b                                  ; $7733: $01 $7b $00
    db $fd                                        ; $7736: $fd
    ld [$fd10], sp                                ; $7737: $08 $10 $fd
    nop                                           ; $773a: $00
    db $f4                                        ; $773b: $f4
    nop                                           ; $773c: $00
    ld de, $fe51                                  ; $773d: $11 $51 $fe
    ld bc, $0802                                  ; $7740: $01 $02 $08
    xor $01                                       ; $7743: $ee $01
    sbc $91                                       ; $7745: $de $91
    ld bc, $7600                                  ; $7747: $01 $00 $76
    ld bc, $00f6                                  ; $774a: $01 $f6 $00
    ld h, l                                       ; $774d: $65
    add b                                         ; $774e: $80
    jp nc, RST_00                                 ; $774f: $d2 $00 $00

    ld h, c                                       ; $7752: $61
    add b                                         ; $7753: $80
    add b                                         ; $7754: $80
    nop                                           ; $7755: $00
    ld b, b                                       ; $7756: $40
    add b                                         ; $7757: $80
    dec l                                         ; $7758: $2d
    ret nz                                        ; $7759: $c0

    nop                                           ; $775a: $00
    nop                                           ; $775b: $00
    rst $38                                       ; $775c: $ff
    db $fd                                        ; $775d: $fd
    nop                                           ; $775e: $00
    ld e, d                                       ; $775f: $5a
    nop                                           ; $7760: $00
    or h                                          ; $7761: $b4
    nop                                           ; $7762: $00
    ld h, b                                       ; $7763: $60
    ld l, b                                       ; $7764: $68
    rst $30                                       ; $7765: $f7
    ld [$003e], sp                                ; $7766: $08 $3e $00
    nop                                           ; $7769: $00
    rst $38                                       ; $776a: $ff
    xor [hl]                                      ; $776b: $ae
    nop                                           ; $776c: $00
    ld d, l                                       ; $776d: $55
    ld a, [bc]                                    ; $776e: $0a
    nop                                           ; $776f: $00
    ld [hl+], a                                   ; $7770: $22
    nop                                           ; $7771: $00
    ld bc, $1010                                  ; $7772: $01 $10 $10
    xor e                                         ; $7775: $ab
    ld l, [hl]                                    ; $7776: $6e
    ld bc, $00ff                                  ; $7777: $01 $ff $00
    nop                                           ; $777a: $00
    sbc $01                                       ; $777b: $de $01
    xor e                                         ; $777d: $ab
    nop                                           ; $777e: $00
    ld [bc], a                                    ; $777f: $02
    ld bc, $8801                                  ; $7780: $01 $01 $88
    inc b                                         ; $7783: $04
    nop                                           ; $7784: $00
    xor h                                         ; $7785: $ac
    inc bc                                        ; $7786: $03
    nop                                           ; $7787: $00
    nop                                           ; $7788: $00
    ld de, $ff5f                                  ; $7789: $11 $5f $ff
    ld a, $82                                     ; $778c: $3e $82
    ld d, [hl]                                    ; $778e: $56
    ld [bc], a                                    ; $778f: $02
    ld l, d                                       ; $7790: $6a
    rst $38                                       ; $7791: $ff
    ld d, h                                       ; $7792: $54
    rst $38                                       ; $7793: $ff
    jr nz, @-$6f                                  ; $7794: $20 $8f

    ld [bc], a                                    ; $7796: $02
    ei                                            ; $7797: $fb
    nop                                           ; $7798: $00
    rst $38                                       ; $7799: $ff
    cp l                                          ; $779a: $bd
    rst $38                                       ; $779b: $ff
    ld [$14ff], a                                 ; $779c: $ea $ff $14
    rst $38                                       ; $779f: $ff
    and b                                         ; $77a0: $a0
    ld a, [bc]                                    ; $77a1: $0a
    rst $38                                       ; $77a2: $ff
    ld b, c                                       ; $77a3: $41
    cp $90                                        ; $77a4: $fe $90
    ld a, [bc]                                    ; $77a6: $0a
    nop                                           ; $77a7: $00
    call nc, $0016                                ; $77a8: $d4 $16 $00
    nop                                           ; $77ab: $00
    nop                                           ; $77ac: $00
    rst $38                                       ; $77ad: $ff
    sub [hl]                                      ; $77ae: $96
    jp hl                                         ; $77af: $e9


    dec l                                         ; $77b0: $2d
    jp nc, $a05f                                  ; $77b1: $d2 $5f $a0

    cp l                                          ; $77b4: $bd
    nop                                           ; $77b5: $00
    ld b, b                                       ; $77b6: $40
    nop                                           ; $77b7: $00
    rst $38                                       ; $77b8: $ff
    ld [hl+], a                                   ; $77b9: $22
    db $fd                                        ; $77ba: $fd
    ld b, l                                       ; $77bb: $45
    ld a, [$000a]                                 ; $77bc: $fa $0a $00
    push af                                       ; $77bf: $f5
    dec d                                         ; $77c0: $15
    ld [$d02f], a                                 ; $77c1: $ea $2f $d0
    dec de                                        ; $77c4: $1b
    ldh [$36], a                                  ; $77c5: $e0 $36
    nop                                           ; $77c7: $00
    pop bc                                        ; $77c8: $c1
    ld hl, $02fe                                  ; $77c9: $21 $fe $02
    db $fd                                        ; $77cc: $fd
    ld bc, $cbfe                                  ; $77cd: $01 $fe $cb
    ld [bc], a                                    ; $77d0: $02
    inc [hl]                                      ; $77d1: $34
    or a                                          ; $77d2: $b7
    ld c, b                                       ; $77d3: $48
    ld l, e                                       ; $77d4: $6b
    sub b                                         ; $77d5: $90
    or $23                                        ; $77d6: $f6 $23
    ld [bc], a                                    ; $77d8: $02
    db $eb                                        ; $77d9: $eb
    ld [$dd10], sp                                ; $77da: $08 $10 $dd
    ld [hl+], a                                   ; $77dd: $22
    ei                                            ; $77de: $fb
    db $e3                                        ; $77df: $e3
    ld bc, $20dd                                  ; $77e0: $01 $dd $20
    ld [hl], a                                    ; $77e3: $77
    add b                                         ; $77e4: $80
    sbc $01                                       ; $77e5: $de $01
    rst $38                                       ; $77e7: $ff
    nop                                           ; $77e8: $00
    ld [hl], a                                    ; $77e9: $77
    adc b                                         ; $77ea: $88
    rst $28                                       ; $77eb: $ef
    db $10                                        ; $77ec: $10
    ld a, l                                       ; $77ed: $7d
    nop                                           ; $77ee: $00
    add b                                         ; $77ef: $80
    rst $30                                       ; $77f0: $f7
    ld [$906f], sp                                ; $77f1: $08 $6f $90
    ei                                            ; $77f4: $fb
    nop                                           ; $77f5: $00
    ld [hl], a                                    ; $77f6: $77
    ret nz                                        ; $77f7: $c0

    ld [c], a                                     ; $77f8: $e2
    nop                                           ; $77f9: $00
    ld bc, $40a0                                  ; $77fa: $01 $a0 $40
    nop                                           ; $77fd: $00
    ld [hl], b                                    ; $77fe: $70
    ld [hl], e                                    ; $77ff: $73
    ld c, a                                       ; $7800: $4f
    ld a, a                                       ; $7801: $7f
    nop                                           ; $7802: $00
    ld b, e                                       ; $7803: $43
    cp l                                          ; $7804: $bd
    jp Jump_000_0f08                              ; $7805: $c3 $08 $0f


    rrca                                          ; $7808: $0f
    ld [$0007], sp                                ; $7809: $08 $07 $00
    inc b                                         ; $780c: $04
    dec b                                         ; $780d: $05
    ld b, $02                                     ; $780e: $06 $02
    dec e                                         ; $7810: $1d
    rrca                                          ; $7811: $0f
    jr nc, jr_0a2_7833                            ; $7812: $30 $1f

    nop                                           ; $7814: $00
    ld l, b                                       ; $7815: $68
    ccf                                           ; $7816: $3f
    ld d, h                                       ; $7817: $54

jr_0a2_7818:
    nop                                           ; $7818: $00
    inc bc                                        ; $7819: $03
    ld de, $f2f6                                  ; $781a: $11 $f6 $f2
    nop                                           ; $781d: $00
    dec e                                         ; $781e: $1d
    rst $10                                       ; $781f: $d7
    add hl, sp                                    ; $7820: $39
    sbc [hl]                                      ; $7821: $9e
    ld [hl], e                                    ; $7822: $73
    ld l, a                                       ; $7823: $6f
    or d                                          ; $7824: $b2
    xor a                                         ; $7825: $af
    nop                                           ; $7826: $00
    ld [hl], c                                    ; $7827: $71
    xor a                                         ; $7828: $af
    ld [hl], b                                    ; $7829: $70
    dec hl                                        ; $782a: $2b
    rst $30                                       ; $782b: $f7
    ld h, a                                       ; $782c: $67
    sbc a                                         ; $782d: $9f
    rst $30                                       ; $782e: $f7
    nop                                           ; $782f: $00
    rrca                                          ; $7830: $0f
    ei                                            ; $7831: $fb
    add a                                         ; $7832: $87

jr_0a2_7833:
    ld sp, hl                                     ; $7833: $f9
    rlca                                          ; $7834: $07
    ld sp, hl                                     ; $7835: $f9
    rst $00                                       ; $7836: $c7
    cp b                                          ; $7837: $b8
    ld bc, $f4c7                                  ; $7838: $01 $c7 $f4
    dec bc                                        ; $783b: $0b
    add c                                         ; $783c: $81
    rst $38                                       ; $783d: $ff
    ld a, [hl]                                    ; $783e: $7e
    add c                                         ; $783f: $81
    ld [bc], a                                    ; $7840: $02
    jr @+$12                                      ; $7841: $18 $10

    add c                                         ; $7843: $81
    rst $38                                       ; $7844: $ff
    add c                                         ; $7845: $81
    ld c, l                                       ; $7846: $4d
    inc bc                                        ; $7847: $03
    set 6, a                                      ; $7848: $cb $f7
    or l                                          ; $784a: $b5
    cp $9c                                        ; $784b: $fe $9c
    inc b                                         ; $784d: $04
    ld [$ffc3], sp                                ; $784e: $08 $c3 $ff
    inc b                                         ; $7851: $04
    jr jr_0a2_7818                                ; $7852: $18 $c4

    ld a, [bc]                                    ; $7854: $0a
    inc b                                         ; $7855: $04
    jr z, jr_0a2_78a3                             ; $7856: $28 $4b

    or a                                          ; $7858: $b7
    ld [bc], a                                    ; $7859: $02
    or [hl]                                       ; $785a: $b6
    ld l, c                                       ; $785b: $69
    jp $95ff                                      ; $785c: $c3 $ff $95


    db $eb                                        ; $785f: $eb
    ld h, h                                       ; $7860: $64
    ld c, e                                       ; $7861: $4b
    jp $ba80                                      ; $7862: $c3 $80 $ba


    ld [bc], a                                    ; $7865: $02
    pop bc                                        ; $7866: $c1
    cp $f6                                        ; $7867: $fe $f6
    rst $38                                       ; $7869: $ff
    or c                                          ; $786a: $b1
    rst $08                                       ; $786b: $cf
    ld a, d                                       ; $786c: $7a
    ld bc, $b587                                  ; $786d: $01 $87 $b5

jr_0a2_7870:
    rst $08                                       ; $7870: $cf
    ld l, d                                       ; $7871: $6a
    rst $30                                       ; $7872: $f7
    ld c, a                                       ; $7873: $4f
    or b                                          ; $7874: $b0
    ld c, h                                       ; $7875: $4c
    ld a, [hl+]                                   ; $7876: $2a
    add [hl]                                      ; $7877: $86
    ld d, b                                       ; $7878: $50
    ld a, [de]                                    ; $7879: $1a
    or l                                          ; $787a: $b5
    adc $6a                                       ; $787b: $ce $6a

jr_0a2_787d:
    rst $30                                       ; $787d: $f7
    jr jr_0a2_7888                                ; $787e: $18 $08

    inc b                                         ; $7880: $04
    jr z, jr_0a2_7870                             ; $7881: $28 $ed

    jr jr_0a2_78a3                                ; $7883: $18 $1e

    jp nc, Jump_0a2_683d                          ; $7885: $d2 $3d $68

jr_0a2_7888:
    ld a, [bc]                                    ; $7888: $0a
    inc b                                         ; $7889: $04
    db $10                                        ; $788a: $10
    rst $18                                       ; $788b: $df
    ret nc                                        ; $788c: $d0

    ld a, $80                                     ; $788d: $3e $80
    inc e                                         ; $788f: $1c
    ld c, b                                       ; $7890: $48
    or l                                          ; $7891: $b5
    rst $08                                       ; $7892: $cf
    ld l, b                                       ; $7893: $68
    rst $30                                       ; $7894: $f7
    and b                                         ; $7895: $a0
    ret nc                                        ; $7896: $d0

    ret nc                                        ; $7897: $d0

    ld b, b                                       ; $7898: $40
    jr nc, jr_0a2_789f                            ; $7899: $30 $04

    jr nc, jr_0a2_787d                            ; $789b: $30 $e0

    nop                                           ; $789d: $00
    add b                                         ; $789e: $80

jr_0a2_789f:
    xor l                                         ; $789f: $ad
    sbc $d4                                       ; $78a0: $de $d4
    db $10                                        ; $78a2: $10

jr_0a2_78a3:
    dec sp                                        ; $78a3: $3b

jr_0a2_78a4:
    xor l                                         ; $78a4: $ad
    sbc $00                                       ; $78a5: $de $00
    ld [bc], a                                    ; $78a7: $02
    jp $e75b                                      ; $78a8: $c3 $5b $e7


    or l                                          ; $78ab: $b5
    nop                                           ; $78ac: $00
    ei                                            ; $78ad: $fb
    db $db                                        ; $78ae: $db
    rst $20                                       ; $78af: $e7
    or [hl]                                       ; $78b0: $b6
    call $f769                                    ; $78b1: $cd $69 $f7
    or [hl]                                       ; $78b4: $b6
    inc c                                         ; $78b5: $0c
    call $f768                                    ; $78b6: $cd $68 $f7
    or a                                          ; $78b9: $b7
    inc b                                         ; $78ba: $04
    ld [$0070], sp                                ; $78bb: $08 $70 $00
    jp c, Jump_000_00e6                           ; $78be: $da $e6 $00

    or h                                          ; $78c1: $b4
    ld a, [$966a]                                 ; $78c2: $fa $6a $96
    db $f4                                        ; $78c5: $f4
    ld a, [bc]                                    ; $78c6: $0a
    ld l, d                                       ; $78c7: $6a
    sbc [hl]                                      ; $78c8: $9e
    nop                                           ; $78c9: $00
    call nc, Call_0a2_68ec                        ; $78ca: $d4 $ec $68
    sbc b                                         ; $78cd: $98
    ret nc                                        ; $78ce: $d0

    add sp, $00                                   ; $78cf: $e8 $00
    rst $38                                       ; $78d1: $ff
    nop                                           ; $78d2: $00
    ld b, d                                       ; $78d3: $42
    add c                                         ; $78d4: $81
    nop                                           ; $78d5: $00
    rst $38                                       ; $78d6: $ff
    cp b                                          ; $78d7: $b8
    ld b, a                                       ; $78d8: $47
    ld [hl], c                                    ; $78d9: $71
    adc [hl]                                      ; $78da: $8e
    ld bc, $48a6                                  ; $78db: $01 $a6 $48
    ld [hl], h                                    ; $78de: $74
    adc b                                         ; $78df: $88
    adc b                                         ; $78e0: $88
    ld h, c                                       ; $78e1: $61
    dec [hl]                                      ; $78e2: $35
    inc [hl]                                      ; $78e3: $34
    nop                                           ; $78e4: $00
    ld [$fb35], sp                                ; $78e5: $08 $35 $fb
    jp z, $04f7                                   ; $78e8: $ca $f7 $04

    jr z, jr_0a2_78a4                             ; $78eb: $28 $b7

    rst $08                                       ; $78ed: $cf
    ld a, [bc]                                    ; $78ee: $0a
    add b                                         ; $78ef: $80
    ld [bc], a                                    ; $78f0: $02
    ld bc, $0ff2                                  ; $78f1: $01 $f2 $0f
    ld l, a                                       ; $78f4: $6f
    sbc a                                         ; $78f5: $9f
    ret nc                                        ; $78f6: $d0

jr_0a2_78f7:
    db $eb                                        ; $78f7: $eb
    jr z, jr_0a2_7912                             ; $78f8: $28 $18

    reti                                          ; $78fa: $d9


    ret nc                                        ; $78fb: $d0

    add sp, $34                                   ; $78fc: $e8 $34
    ld [$2004], sp                                ; $78fe: $08 $04 $20
    ldh a, [rP1]                                  ; $7901: $f0 $00
    ldh [$15], a                                  ; $7903: $e0 $15
    nop                                           ; $7905: $00
    nop                                           ; $7906: $00
    ld a, [c]                                     ; $7907: $f2
    inc l                                         ; $7908: $2c
    ld [bc], a                                    ; $7909: $02
    db $eb                                        ; $790a: $eb
    inc a                                         ; $790b: $3c
    ld [bc], a                                    ; $790c: $02
    xor a                                         ; $790d: $af
    inc hl                                        ; $790e: $23
    inc b                                         ; $790f: $04
    ld h, b                                       ; $7910: $60
    cp a                                          ; $7911: $bf

jr_0a2_7912:
    daa                                           ; $7912: $27
    inc b                                         ; $7913: $04
    inc a                                         ; $7914: $3c
    db $10                                        ; $7915: $10
    db $fd                                        ; $7916: $fd
    add b                                         ; $7917: $80
    ld sp, hl                                     ; $7918: $f9
    ld bc, $2081                                  ; $7919: $01 $81 $20
    add b                                         ; $791c: $80
    add c                                         ; $791d: $81
    push af                                       ; $791e: $f5
    ld bc, $2800                                  ; $791f: $01 $00 $28
    ret c                                         ; $7922: $d8

    ret nc                                        ; $7923: $d0

    add sp, -$40                                  ; $7924: $e8 $c0
    inc b                                         ; $7926: $04
    ld [$2834], sp                                ; $7927: $08 $34 $28
    rst $20                                       ; $792a: $e7
    db $10                                        ; $792b: $10
    cp e                                          ; $792c: $bb
    ld d, b                                       ; $792d: $50
    rst $00                                       ; $792e: $c7
    ld [de], a                                    ; $792f: $12
    nop                                           ; $7930: $00
    or c                                          ; $7931: $b1
    ld [hl-], a                                   ; $7932: $32
    jp $d376                                      ; $7933: $c3 $76 $d3


    jr @+$01                                      ; $7936: $18 $ff

    nop                                           ; $7938: $00
    ld [bc], a                                    ; $7939: $02
    ld a, a                                       ; $793a: $7f
    nop                                           ; $793b: $00
    cp $01                                        ; $793c: $fe $01
    db $fd                                        ; $793e: $fd
    ld [bc], a                                    ; $793f: $02
    xor [hl]                                      ; $7940: $ae
    dec bc                                        ; $7941: $0b
    db $eb                                        ; $7942: $eb
    nop                                           ; $7943: $00
    inc d                                         ; $7944: $14
    rst $10                                       ; $7945: $d7
    jr z, jr_0a2_78f7                             ; $7946: $28 $af

    ld d, b                                       ; $7948: $50
    ld e, [hl]                                    ; $7949: $5e
    and b                                         ; $794a: $a0
    cp e                                          ; $794b: $bb
    nop                                           ; $794c: $00
    ld b, c                                       ; $794d: $41
    rst $10                                       ; $794e: $d7
    ld [hl+], a                                   ; $794f: $22
    or c                                          ; $7950: $b1
    ld a, e                                       ; $7951: $7b
    ret nz                                        ; $7952: $c0

    ld [hl], a                                    ; $7953: $77
    di                                            ; $7954: $f3
    nop                                           ; $7955: $00
    dec a                                         ; $7956: $3d
    or $08                                        ; $7957: $f6 $08
    db $ec                                        ; $7959: $ec
    db $10                                        ; $795a: $10
    ret c                                         ; $795b: $d8

    ld hl, $00ef                                  ; $795c: $21 $ef $00
    db $10                                        ; $795f: $10
    ld b, l                                       ; $7960: $45
    xor b                                         ; $7961: $a8
    dec bc                                        ; $7962: $0b
    ret c                                         ; $7963: $d8

    add a                                         ; $7964: $87
    add b                                         ; $7965: $80
    dec c                                         ; $7966: $0d
    ld bc, $470b                                  ; $7967: $01 $0b $47
    ld c, b                                       ; $796a: $48
    rrca                                          ; $796b: $0f
    sbc b                                         ; $796c: $98
    ld b, a                                       ; $796d: $47
    ld l, b                                       ; $796e: $68
    jr nc, @+$1a                                  ; $796f: $30 $18

    ld [$004a], sp                                ; $7971: $08 $4a $00
    ccf                                           ; $7974: $3f
    rst $38                                       ; $7975: $ff
    jr nc, jr_0a2_7990                            ; $7976: $30 $18

    cp h                                          ; $7978: $bc
    ld b, b                                       ; $7979: $40
    ld a, c                                       ; $797a: $79
    jr nz, @-$7e                                  ; $797b: $20 $80

    ld a, [c]                                     ; $797d: $f2
    sub [hl]                                      ; $797e: $96
    inc bc                                        ; $797f: $03
    set 7, a                                      ; $7980: $cb $ff
    sub a                                         ; $7982: $97
    nop                                           ; $7983: $00
    cpl                                           ; $7984: $2f
    stop                                          ; $7985: $10 $00
    ld e, [hl]                                    ; $7987: $5e
    ld bc, $0091                                  ; $7988: $01 $91 $00
    push hl                                       ; $798b: $e5
    adc d                                         ; $798c: $8a

jr_0a2_798d:
    ld b, c                                       ; $798d: $41
    nop                                           ; $798e: $00
    nop                                           ; $798f: $00

jr_0a2_7990:
    sub a                                         ; $7990: $97
    ld a, [hl+]                                   ; $7991: $2a
    dec b                                         ; $7992: $05
    ld d, l                                       ; $7993: $55
    ld a, [bc]                                    ; $7994: $0a
    xor d                                         ; $7995: $aa
    dec d                                         ; $7996: $15
    ld a, a                                       ; $7997: $7f
    inc h                                         ; $7998: $24
    nop                                           ; $7999: $00
    ld bc, $0448                                  ; $799a: $01 $48 $04
    xor e                                         ; $799d: $ab
    ld d, l                                       ; $799e: $55
    inc b                                         ; $799f: $04
    ld [$ab55], sp                                ; $79a0: $08 $55 $ab
    nop                                           ; $79a3: $00
    xor e                                         ; $79a4: $ab
    ld d, l                                       ; $79a5: $55
    ld e, [hl]                                    ; $79a6: $5e
    and c                                         ; $79a7: $a1
    nop                                           ; $79a8: $00
    ld a, h                                       ; $79a9: $7c
    nop                                           ; $79aa: $00
    ld sp, hl                                     ; $79ab: $f9
    nop                                           ; $79ac: $00
    ld [hl+], a                                   ; $79ad: $22
    ld d, b                                       ; $79ae: $50
    nop                                           ; $79af: $00
    ld h, l                                       ; $79b0: $65
    ld a, [bc]                                    ; $79b1: $0a
    ld b, c                                       ; $79b2: $41
    dec d                                         ; $79b3: $15
    ld [bc], a                                    ; $79b4: $02
    jr nz, jr_0a2_79e1                            ; $79b5: $20 $2a

    dec b                                         ; $79b7: $05
    jr nc, jr_0a2_79ba                            ; $79b8: $30 $00

jr_0a2_79ba:
    cp a                                          ; $79ba: $bf
    nop                                           ; $79bb: $00
    ld a, a                                       ; $79bc: $7f
    and d                                         ; $79bd: $a2
    ld e, h                                       ; $79be: $5c
    nop                                           ; $79bf: $00
    nop                                           ; $79c0: $00
    db $fc                                        ; $79c1: $fc
    adc b                                         ; $79c2: $88
    ld [hl], c                                    ; $79c3: $71
    db $10                                        ; $79c4: $10
    ld [c], a                                     ; $79c5: $e2
    jr nz, jr_0a2_798d                            ; $79c6: $20 $c5

    nop                                           ; $79c8: $00
    rlc b                                         ; $79c9: $cb $00
    cp h                                          ; $79cb: $bc
    ld b, c                                       ; $79cc: $41
    ld a, c                                       ; $79cd: $79
    add c                                         ; $79ce: $81
    ld a, [c]                                     ; $79cf: $f2
    ld bc, $e500                                  ; $79d0: $01 $00 $e5
    ld bc, $01cb                                  ; $79d3: $01 $cb $01
    sub a                                         ; $79d6: $97
    ld bc, $012f                                  ; $79d7: $01 $2f $01
    nop                                           ; $79da: $00
    ld e, a                                       ; $79db: $5f
    ld bc, $023d                                  ; $79dc: $01 $3d $02
    ld a, e                                       ; $79df: $7b
    inc b                                         ; $79e0: $04

jr_0a2_79e1:
    halt                                          ; $79e1: $76
    ld [$6c00], sp                                ; $79e2: $08 $00 $6c
    db $10                                        ; $79e5: $10
    ld e, c                                       ; $79e6: $59
    jr nz, jr_0a2_7a1b                            ; $79e7: $20 $32

jr_0a2_79e9:
    ld b, b                                       ; $79e9: $40
    push hl                                       ; $79ea: $e5
    nop                                           ; $79eb: $00
    nop                                           ; $79ec: $00
    ld c, e                                       ; $79ed: $4b
    nop                                           ; $79ee: $00
    sub [hl]                                      ; $79ef: $96
    ld bc, $032c                                  ; $79f0: $01 $2c $03
    ld e, b                                       ; $79f3: $58
    rlca                                          ; $79f4: $07
    nop                                           ; $79f5: $00
    or b                                          ; $79f6: $b0
    rrca                                          ; $79f7: $0f
    ld h, c                                       ; $79f8: $61
    ld e, $c2                                     ; $79f9: $1e $c2
    dec a                                         ; $79fb: $3d
    add l                                         ; $79fc: $85
    ld a, d                                       ; $79fd: $7a
    ld hl, $f40b                                  ; $79fe: $21 $0b $f4
    add b                                         ; $7a01: $80
    jr jr_0a2_79e9                                ; $7a02: $18 $e5

    nop                                           ; $7a04: $00
    rlc b                                         ; $7a05: $cb $00
    add b                                         ; $7a07: $80
    jr jr_0a2_7a0a                                ; $7a08: $18 $00

jr_0a2_7a0a:
    cp l                                          ; $7a0a: $bd
    inc bc                                        ; $7a0b: $03
    ld a, e                                       ; $7a0c: $7b
    dec b                                         ; $7a0d: $05
    or $09                                        ; $7a0e: $f6 $09
    db $ec                                        ; $7a10: $ec
    ld de, $d900                                  ; $7a11: $11 $00 $d9
    ld hl, $41b2                                  ; $7a14: $21 $b2 $41
    ld h, l                                       ; $7a17: $65
    add c                                         ; $7a18: $81
    rlc c                                         ; $7a19: $cb $01

jr_0a2_7a1b:
    ld d, b                                       ; $7a1b: $50
    ld d, $30                                     ; $7a1c: $16 $30
    db $10                                        ; $7a1e: $10
    jr nc, jr_0a2_7a51                            ; $7a1f: $30 $30

    nop                                           ; $7a21: $00
    ld b, d                                       ; $7a22: $42
    dec a                                         ; $7a23: $3d
    dec b                                         ; $7a24: $05
    ld a, d                                       ; $7a25: $7a
    nop                                           ; $7a26: $00
    adc e                                         ; $7a27: $8b
    ld [hl], h                                    ; $7a28: $74
    rla                                           ; $7a29: $17
    add sp, $2f                                   ; $7a2a: $e8 $2f
    ret nc                                        ; $7a2c: $d0

    ld e, a                                       ; $7a2d: $5f
    and b                                         ; $7a2e: $a0
    ld bc, $40bf                                  ; $7a2f: $01 $bf $40
    ld a, [hl]                                    ; $7a32: $7e
    add b                                         ; $7a33: $80
    db $fc                                        ; $7a34: $fc
    nop                                           ; $7a35: $00
    ld sp, hl                                     ; $7a36: $f9
    ld a, $01                                     ; $7a37: $3e $01
    ld b, b                                       ; $7a39: $40
    cp l                                          ; $7a3a: $bd
    ld h, b                                       ; $7a3b: $60
    nop                                           ; $7a3c: $00
    or $08                                        ; $7a3d: $f6 $08
    stop                                          ; $7a3f: $10 $00
    ld sp, hl                                     ; $7a41: $f9
    rst $38                                       ; $7a42: $ff
    ld [$40b2], sp                                ; $7a43: $08 $b2 $40
    ld h, l                                       ; $7a46: $65
    add b                                         ; $7a47: $80
    ld b, [hl]                                    ; $7a48: $46
    nop                                           ; $7a49: $00
    ld bc, $032d                                  ; $7a4a: $01 $2d $03
    nop                                           ; $7a4d: $00
    ld e, c                                       ; $7a4e: $59
    rlca                                          ; $7a4f: $07
    rrca                                          ; $7a50: $0f

jr_0a2_7a51:
    ld bc, $ff7f                                  ; $7a51: $01 $7f $ff
    jp $003d                                      ; $7a54: $c3 $3d $00


    add l                                         ; $7a57: $85
    ld a, e                                       ; $7a58: $7b
    dec bc                                        ; $7a59: $0b
    push af                                       ; $7a5a: $f5
    sub a                                         ; $7a5b: $97
    ld l, b                                       ; $7a5c: $68
    xor a                                         ; $7a5d: $af
    ld d, b                                       ; $7a5e: $50
    nop                                           ; $7a5f: $00
    rst $18                                       ; $7a60: $df
    jr nz, jr_0a2_7aa3                            ; $7a61: $20 $40

    nop                                           ; $7a63: $00
    cp $7f                                        ; $7a64: $fe $7f
    ld a, h                                       ; $7a66: $7c
    nop                                           ; $7a67: $00
    db $10                                        ; $7a68: $10
    ld a, c                                       ; $7a69: $79
    nop                                           ; $7a6a: $00
    ld [hl], d                                    ; $7a6b: $72
    ld l, d                                       ; $7a6c: $6a
    jr nz, jr_0a2_7a6f                            ; $7a6d: $20 $00

jr_0a2_7a6f:
    nop                                           ; $7a6f: $00
    ld e, a                                       ; $7a70: $5f
    rst $38                                       ; $7a71: $ff
    nop                                           ; $7a72: $00
    cp [hl]                                       ; $7a73: $be
    ld bc, $037c                                  ; $7a74: $01 $7c $03
    ld sp, hl                                     ; $7a77: $f9
    ld b, $80                                     ; $7a78: $06 $80
    sub a                                         ; $7a7a: $97
    nop                                           ; $7a7b: $00
    ld [bc], a                                    ; $7a7c: $02
    ld bc, $5f00                                  ; $7a7d: $01 $00 $5f
    cp d                                          ; $7a80: $ba
    dec b                                         ; $7a81: $05
    inc h                                         ; $7a82: $24
    ld e, e                                       ; $7a83: $5b
    db $10                                        ; $7a84: $10

Call_0a2_7a85:
    adc d                                         ; $7a85: $8a
    ld [hl], l                                    ; $7a86: $75
    dec b                                         ; $7a87: $05
    jr z, jr_0a2_7a8d                             ; $7a88: $28 $03

    dec sp                                        ; $7a8a: $3b
    ld e, h                                       ; $7a8b: $5c
    ld a, [hl]                                    ; $7a8c: $7e

jr_0a2_7a8d:
    ld c, c                                       ; $7a8d: $49
    nop                                           ; $7a8e: $00
    ld d, l                                       ; $7a8f: $55
    ld l, d                                       ; $7a90: $6a
    ld c, d                                       ; $7a91: $4a
    ld [hl], l                                    ; $7a92: $75
    ld hl, $1a7e                                  ; $7a93: $21 $7e $1a
    ccf                                           ; $7a96: $3f
    nop                                           ; $7a97: $00
    dec c                                         ; $7a98: $0d
    rra                                           ; $7a99: $1f
    inc bc                                        ; $7a9a: $03
    dec bc                                        ; $7a9b: $0b
    cpl                                           ; $7a9c: $2f
    ldh a, [$b5]                                  ; $7a9d: $f0 $b5
    ld a, d                                       ; $7a9f: $7a
    inc b                                         ; $7aa0: $04
    jr @+$01                                      ; $7aa1: $18 $ff

jr_0a2_7aa3:
    adc [hl]                                      ; $7aa3: $8e
    ld a, a                                       ; $7aa4: $7f
    dec e                                         ; $7aa5: $1d
    ld a, $05                                     ; $7aa6: $3e $05
    ld [hl], b                                    ; $7aa8: $70
    rst $38                                       ; $7aa9: $ff
    nop                                           ; $7aaa: $00
    push hl                                       ; $7aab: $e5
    ld a, [$15ea]                                 ; $7aac: $fa $ea $15
    ld d, h                                       ; $7aaf: $54
    xor e                                         ; $7ab0: $ab
    sub l                                         ; $7ab1: $95
    ld a, a                                       ; $7ab2: $7f
    nop                                           ; $7ab3: $00
    xor [hl]                                      ; $7ab4: $ae
    rst $38                                       ; $7ab5: $ff
    di                                            ; $7ab6: $f3
    rst $38                                       ; $7ab7: $ff
    xor [hl]                                      ; $7ab8: $ae
    ld sp, hl                                     ; $7ab9: $f9
    ld d, a                                       ; $7aba: $57
    db $fc                                        ; $7abb: $fc
    ld [$ff0d], sp                                ; $7abc: $08 $0d $ff
    rra                                           ; $7abf: $1f
    ldh [$90], a                                  ; $7ac0: $e0 $90
    jr jr_0a2_7b43                                ; $7ac2: $18 $7f

    add b                                         ; $7ac4: $80
    db $fd                                        ; $7ac5: $fd
    and b                                         ; $7ac6: $a0
    sub b                                         ; $7ac7: $90
    nop                                           ; $7ac8: $00
    di                                            ; $7ac9: $f3
    inc c                                         ; $7aca: $0c
    dec b                                         ; $7acb: $05
    ld [$f101], a                                 ; $7acc: $ea $01 $f1
    ld e, $00                                     ; $7acf: $1e $00
    nop                                           ; $7ad1: $00
    cpl                                           ; $7ad2: $2f
    cp c                                          ; $7ad3: $b9
    ld h, [hl]                                    ; $7ad4: $66
    sub h                                         ; $7ad5: $94
    inc hl                                        ; $7ad6: $23

jr_0a2_7ad7:
    ld d, c                                       ; $7ad7: $51
    ld h, b                                       ; $7ad8: $60
    xor b                                         ; $7ad9: $a8
    nop                                           ; $7ada: $00
    ld [hl], c                                    ; $7adb: $71
    ld a, [hl+]                                   ; $7adc: $2a

jr_0a2_7add:
    ld [hl], l                                    ; $7add: $75
    ld e, a                                       ; $7ade: $5f
    ldh [$5f], a                                  ; $7adf: $e0 $5f
    ld h, b                                       ; $7ae1: $60
    ld l, d                                       ; $7ae2: $6a
    ld [bc], a                                    ; $7ae3: $02
    ld [hl], l                                    ; $7ae4: $75
    dec h                                         ; $7ae5: $25
    ld a, d                                       ; $7ae6: $7a
    dec d                                         ; $7ae7: $15
    ccf                                           ; $7ae8: $3f
    ld c, $50                                     ; $7ae9: $0e $50
    nop                                           ; $7aeb: $00
    adc d                                         ; $7aec: $8a
    nop                                           ; $7aed: $00
    ld a, l                                       ; $7aee: $7d
    rst $10                                       ; $7aef: $d7
    jr c, jr_0a2_7add                             ; $7af0: $38 $eb

    inc [hl]                                      ; $7af2: $34
    and a                                         ; $7af3: $a7
    ld a, c                                       ; $7af4: $79
    ld l, e                                       ; $7af5: $6b
    ld bc, $26b6                                  ; $7af6: $01 $b6 $26
    ei                                            ; $7af9: $fb
    rst $20                                       ; $7afa: $e7
    ld sp, hl                                     ; $7afb: $f9
    push de                                       ; $7afc: $d5
    ld a, [$28fa]                                 ; $7afd: $fa $fa $28
    jr nz, jr_0a2_7b61                            ; $7b00: $20 $5f

    nop                                           ; $7b02: $00
    sub b                                         ; $7b03: $90
    jr jr_0a2_7ad7                                ; $7b04: $18 $d1

    ld a, $f4                                     ; $7b06: $3e $f4
    rrca                                          ; $7b08: $0f
    ld [$1500], a                                 ; $7b09: $ea $00 $15
    cp a                                          ; $7b0c: $bf
    ld b, b                                       ; $7b0d: $40
    ld l, e                                       ; $7b0e: $6b
    sub h                                         ; $7b0f: $94
    ld a, a                                       ; $7b10: $7f
    add b                                         ; $7b11: $80
    xor a                                         ; $7b12: $af
    nop                                           ; $7b13: $00
    ld d, b                                       ; $7b14: $50
    ld e, a                                       ; $7b15: $5f
    and b                                         ; $7b16: $a0
    ld bc, $0587                                  ; $7b17: $01 $87 $05
    ld a, [bc]                                    ; $7b1a: $0a
    rrca                                          ; $7b1b: $0f
    nop                                           ; $7b1c: $00
    sub [hl]                                      ; $7b1d: $96
    dec hl                                        ; $7b1e: $2b

jr_0a2_7b1f:
    dec a                                         ; $7b1f: $3d
    ld a, $ad                                     ; $7b20: $3e $ad
    cpl                                           ; $7b22: $2f
    jr nc, jr_0a2_7b48                            ; $7b23: $30 $23

    nop                                           ; $7b25: $00
    inc a                                         ; $7b26: $3c
    dec h                                         ; $7b27: $25
    ld a, [hl-]                                   ; $7b28: $3a

jr_0a2_7b29:
    sub d                                         ; $7b29: $92
    db $fd                                        ; $7b2a: $fd
    adc b                                         ; $7b2b: $88
    ld a, a                                       ; $7b2c: $7f
    and $00                                       ; $7b2d: $e6 $00
    rra                                           ; $7b2f: $1f
    pop hl                                        ; $7b30: $e1
    rra                                           ; $7b31: $1f
    di                                            ; $7b32: $f3
    rrca                                          ; $7b33: $0f
    db $fd                                        ; $7b34: $fd
    ld e, $e7                                     ; $7b35: $1e $e7
    nop                                           ; $7b37: $00
    jr jr_0a2_7b86                                ; $7b38: $18 $4c

    cp a                                          ; $7b3a: $bf
    ld a, [c]                                     ; $7b3b: $f2
    dec c                                         ; $7b3c: $0d
    db $e4                                        ; $7b3d: $e4
    dec de                                        ; $7b3e: $1b
    ret z                                         ; $7b3f: $c8

    jr nz, jr_0a2_7b79                            ; $7b40: $20 $37

    ld l, a                                       ; $7b42: $6f

jr_0a2_7b43:
    ld l, b                                       ; $7b43: $68
    ld b, $43                                     ; $7b44: $06 $43
    cp h                                          ; $7b46: $bc
    add a                                         ; $7b47: $87

jr_0a2_7b48:
    ld a, b                                       ; $7b48: $78
    rrca                                          ; $7b49: $0f
    nop                                           ; $7b4a: $00
    ldh a, [$3f]                                  ; $7b4b: $f0 $3f
    ret nz                                        ; $7b4d: $c0

    ccf                                           ; $7b4e: $3f
    ret nz                                        ; $7b4f: $c0

    ld a, [hl]                                    ; $7b50: $7e
    add c                                         ; $7b51: $81
    ld e, a                                       ; $7b52: $5f
    ld [bc], a                                    ; $7b53: $02
    nop                                           ; $7b54: $00
    sbc e                                         ; $7b55: $9b
    db $f4                                        ; $7b56: $f4
    rst $30                                       ; $7b57: $f7
    ld [$54ee], sp                                ; $7b58: $08 $ee $54
    ld b, $12                                     ; $7b5b: $06 $12
    jr nz, jr_0a2_7b7c                            ; $7b5d: $20 $1d

    jr jr_0a2_7b29                                ; $7b5f: $18 $c8

jr_0a2_7b61:
    nop                                           ; $7b61: $00
    ld b, $0f                                     ; $7b62: $06 $0f
    inc bc                                        ; $7b64: $03
    rlca                                          ; $7b65: $07
    nop                                           ; $7b66: $00
    nop                                           ; $7b67: $00
    ld [bc], a                                    ; $7b68: $02
    nop                                           ; $7b69: $00
    dec b                                         ; $7b6a: $05
    nop                                           ; $7b6b: $00
    ld [bc], a                                    ; $7b6c: $02
    sbc e                                         ; $7b6d: $9b
    ld a, h                                       ; $7b6e: $7c
    daa                                           ; $7b6f: $27
    nop                                           ; $7b70: $00
    ld hl, sp+$5f                                 ; $7b71: $f8 $5f
    ldh a, [$ea]                                  ; $7b73: $f0 $ea
    rst $30                                       ; $7b75: $f7
    rst $18                                       ; $7b76: $df
    db $e4                                        ; $7b77: $e4
    ld e, a                                       ; $7b78: $5f

jr_0a2_7b79:
    ld b, $e5                                     ; $7b79: $06 $e5
    xor e                                         ; $7b7b: $ab

jr_0a2_7b7c:
    rst $10                                       ; $7b7c: $d7
    sbc a                                         ; $7b7d: $9f
    ldh [$5a], a                                  ; $7b7e: $e0 $5a
    ld c, $04                                     ; $7b80: $0e $04
    jr nz, jr_0a2_7b7c                            ; $7b82: $20 $f8

    ret nz                                        ; $7b84: $c0

    sub b                                         ; $7b85: $90

jr_0a2_7b86:
    ld a, [bc]                                    ; $7b86: $0a
    or $0d                                        ; $7b87: $f6 $0d
    xor [hl]                                      ; $7b89: $ae
    ld d, c                                       ; $7b8a: $51
    db $dd                                        ; $7b8b: $dd
    ld [hl-], a                                   ; $7b8c: $32
    res 2, h                                      ; $7b8d: $cb $94
    nop                                           ; $7b8f: $00
    sub [hl]                                      ; $7b90: $96
    jr c, jr_0a2_7b1f                             ; $7b91: $38 $8c

    ret nc                                        ; $7b93: $d0

    add hl, de                                    ; $7b94: $19
    or b                                          ; $7b95: $b0
    db $fd                                        ; $7b96: $fd
    inc bc                                        ; $7b97: $03
    nop                                           ; $7b98: $00
    ld a, [$d405]                                 ; $7b99: $fa $05 $d4
    dec hl                                        ; $7b9c: $2b
    add sp, $57                                   ; $7b9d: $e8 $57
    add d                                         ; $7b9f: $82
    rst $28                                       ; $7ba0: $ef
    nop                                           ; $7ba1: $00
    ld h, b                                       ; $7ba2: $60
    cp $84                                        ; $7ba3: $fe $84
    db $fc                                        ; $7ba5: $fc
    ld b, c                                       ; $7ba6: $41
    pop af                                        ; $7ba7: $f1
    add d                                         ; $7ba8: $82
    ret nc                                        ; $7ba9: $d0

    nop                                           ; $7baa: $00
    dec b                                         ; $7bab: $05
    and b                                         ; $7bac: $a0
    adc e                                         ; $7bad: $8b
    ret nz                                        ; $7bae: $c0

    rla                                           ; $7baf: $17
    sub b                                         ; $7bb0: $90
    rrca                                          ; $7bb1: $0f
    jr nz, jr_0a2_7bb4                            ; $7bb2: $20 $00

jr_0a2_7bb4:
    rrca                                          ; $7bb4: $0f
    ld d, b                                       ; $7bb5: $50
    rra                                           ; $7bb6: $1f
    or b                                          ; $7bb7: $b0
    rrca                                          ; $7bb8: $0f
    ld d, b                                       ; $7bb9: $50
    add d                                         ; $7bba: $82
    ld [c], a                                     ; $7bbb: $e2
    nop                                           ; $7bbc: $00
    ld h, c                                       ; $7bbd: $61
    push hl                                       ; $7bbe: $e5
    add e                                         ; $7bbf: $83
    ret z                                         ; $7bc0: $c8

    inc bc                                        ; $7bc1: $03
    sub h                                         ; $7bc2: $94
    rlca                                          ; $7bc3: $07
    inc l                                         ; $7bc4: $2c
    jr nz, jr_0a2_7c0e                            ; $7bc5: $20 $47

    ld d, b                                       ; $7bc7: $50
    dec bc                                        ; $7bc8: $0b
    ld [bc], a                                    ; $7bc9: $02
    nop                                           ; $7bca: $00
    ld e, $b1                                     ; $7bcb: $1e $b1

jr_0a2_7bcd:
    sbc l                                         ; $7bcd: $9d
    jp nz, $9084                                  ; $7bce: $c2 $84 $90

    ld a, [hl+]                                   ; $7bd1: $2a
    rst $38                                       ; $7bd2: $ff
    nop                                           ; $7bd3: $00
    ld e, [hl]                                    ; $7bd4: $5e
    and b                                         ; $7bd5: $a0
    ld b, c                                       ; $7bd6: $41
    ld b, h                                       ; $7bd7: $44
    jr nz, jr_0a2_7bda                            ; $7bd8: $20 $00

jr_0a2_7bda:
    inc b                                         ; $7bda: $04
    jr nc, jr_0a2_7be6                            ; $7bdb: $30 $09

    ccf                                           ; $7bdd: $3f
    db $fc                                        ; $7bde: $fc
    nop                                           ; $7bdf: $00

jr_0a2_7be0:
    ldh a, [rNR24]                                ; $7be0: $f0 $19
    db $db                                        ; $7be2: $db
    ld bc, $b74e                                  ; $7be3: $01 $4e $b7

jr_0a2_7be6:
    dec d                                         ; $7be6: $15
    rlca                                          ; $7be7: $07
    sbc $01                                       ; $7be8: $de $01
    or [hl]                                       ; $7bea: $b6
    ld hl, $1102                                  ; $7beb: $21 $02 $11
    ld b, b                                       ; $7bee: $40
    ld [$040e], sp                                ; $7bef: $08 $0e $04
    reti                                          ; $7bf2: $d9


    call $fae2                                    ; $7bf3: $cd $e2 $fa
    ld b, l                                       ; $7bf6: $45
    ret nc                                        ; $7bf7: $d0

    ld [bc], a                                    ; $7bf8: $02
    ld d, h                                       ; $7bf9: $54
    rst $10                                       ; $7bfa: $d7
    inc b                                         ; $7bfb: $04
    jr z, jr_0a2_7bcd                             ; $7bfc: $28 $cf

    ld d, b                                       ; $7bfe: $50
    ld a, [hl]                                    ; $7bff: $7e
    ret nz                                        ; $7c00: $c0

    ldh [rNR24], a                                ; $7c01: $e0 $19
    db $ec                                        ; $7c03: $ec
    db $10                                        ; $7c04: $10
    jr nz, jr_0a2_7be0                            ; $7c05: $20 $d9

    jr nz, @-$1e                                  ; $7c07: $20 $e0

    add hl, de                                    ; $7c09: $19
    call c, Call_0a2_5940                         ; $7c0a: $dc $40 $59
    ret nz                                        ; $7c0d: $c0

jr_0a2_7c0e:
    jp nc, Jump_0a2_4000                          ; $7c0e: $d2 $00 $40

    push bc                                       ; $7c11: $c5
    ld b, b                                       ; $7c12: $40
    bit 0, b                                      ; $7c13: $cb $40
    sub a                                         ; $7c15: $97
    ld b, b                                       ; $7c16: $40
    rrca                                          ; $7c17: $0f
    nop                                           ; $7c18: $00
    ld b, b                                       ; $7c19: $40
    ld e, [hl]                                    ; $7c1a: $5e
    ld b, c                                       ; $7c1b: $41
    sbc l                                         ; $7c1c: $9d
    ld b, d                                       ; $7c1d: $42
    ld e, e                                       ; $7c1e: $5b
    ld b, h                                       ; $7c1f: $44
    sub $00                                       ; $7c20: $d6 $00
    ld c, b                                       ; $7c22: $48
    call z, $f950                                 ; $7c23: $cc $50 $f9
    ld b, b                                       ; $7c26: $40
    jp nc, Jump_0a2_4540                          ; $7c27: $d2 $40 $45

    db $10                                        ; $7c2a: $10
    ret nz                                        ; $7c2b: $c0

    bit 0, b                                      ; $7c2c: $cb $40
    db $10                                        ; $7c2e: $10
    ld a, [de]                                    ; $7c2f: $1a
    ld d, b                                       ; $7c30: $50
    nop                                           ; $7c31: $00
    ld sp, hl                                     ; $7c32: $f9
    ld a, a                                       ; $7c33: $7f
    add b                                         ; $7c34: $80
    db $10                                        ; $7c35: $10
    ld a, [de]                                    ; $7c36: $1a
    sub [hl]                                      ; $7c37: $96
    ld b, c                                       ; $7c38: $41
    inc l                                         ; $7c39: $2c
    ld b, e                                       ; $7c3a: $43
    ld e, b                                       ; $7c3b: $58
    ld b, a                                       ; $7c3c: $47
    rrca                                          ; $7c3d: $0f
    nop                                           ; $7c3e: $00
    nop                                           ; $7c3f: $00
    ld a, a                                       ; $7c40: $7f
    rst $38                                       ; $7c41: $ff
    ld [c], a                                     ; $7c42: $e2
    ld e, l                                       ; $7c43: $5d

Jump_0a2_7c44:
    push hl                                       ; $7c44: $e5
    ld e, d                                       ; $7c45: $5a
    ld c, e                                       ; $7c46: $4b
    ld l, b                                       ; $7c47: $68
    db $f4                                        ; $7c48: $f4
    ld b, b                                       ; $7c49: $40
    ld a, [de]                                    ; $7c4a: $1a
    db $10                                        ; $7c4b: $10
    ld [bc], a                                    ; $7c4c: $02
    rst $38                                       ; $7c4d: $ff
    ld b, b                                       ; $7c4e: $40
    ld a, [de]                                    ; $7c4f: $1a
    rla                                           ; $7c50: $17
    jp hl                                         ; $7c51: $e9


    cpl                                           ; $7c52: $2f
    nop                                           ; $7c53: $00
    pop de                                        ; $7c54: $d1
    ld e, a                                       ; $7c55: $5f
    and c                                         ; $7c56: $a1
    cp a                                          ; $7c57: $bf
    ld b, c                                       ; $7c58: $41
    ld a, [hl]                                    ; $7c59: $7e
    add c                                         ; $7c5a: $81
    db $fc                                        ; $7c5b: $fc
    ld [bc], a                                    ; $7c5c: $02
    ld bc, $01f9                                  ; $7c5d: $01 $f9 $01
    ld a, [c]                                     ; $7c60: $f2
    ld bc, $a465                                  ; $7c61: $01 $65 $a4
    ld [bc], a                                    ; $7c64: $02
    rla                                           ; $7c65: $17
    and h                                         ; $7c66: $a4
    sub b                                         ; $7c67: $90
    ld de, $203e                                  ; $7c68: $11 $3e $20
    ld [bc], a                                    ; $7c6b: $02
    ld a, c                                       ; $7c6c: $79
    ld b, $60                                     ; $7c6d: $06 $60
    add hl, de                                    ; $7c6f: $19
    sub b                                         ; $7c70: $90
    ld l, a                                       ; $7c71: $6f
    jr nc, jr_0a2_7c95                            ; $7c72: $30 $21

    sbc $60                                       ; $7c74: $de $60
    add hl, de                                    ; $7c76: $19
    jp c, $bf3a                                   ; $7c77: $da $3a $bf

    ld bc, $037d                                  ; $7c7a: $01 $7d $03
    nop                                           ; $7c7d: $00
    ld sp, hl                                     ; $7c7e: $f9
    rlca                                          ; $7c7f: $07
    ld [hl], d                                    ; $7c80: $72
    dec c                                         ; $7c81: $0d
    ld h, h                                       ; $7c82: $64
    dec de                                        ; $7c83: $1b
    ld c, b                                       ; $7c84: $48
    scf                                           ; $7c85: $37
    nop                                           ; $7c86: $00
    db $10                                        ; $7c87: $10
    ld l, a                                       ; $7c88: $6f
    and c                                         ; $7c89: $a1
    ld e, [hl]                                    ; $7c8a: $5e
    jp $073c                                      ; $7c8b: $c3 $3c $07


    ld a, b                                       ; $7c8e: $78
    ld [$708f], sp                                ; $7c8f: $08 $8f $70
    rra                                           ; $7c92: $1f
    ldh [$80], a                                  ; $7c93: $e0 $80

jr_0a2_7c95:
    add hl, bc                                    ; $7c95: $09
    db $fd                                        ; $7c96: $fd
    ld [bc], a                                    ; $7c97: $02
    ei                                            ; $7c98: $fb
    add b                                         ; $7c99: $80
    or [hl]                                       ; $7c9a: $b6
    jr nz, @-$0b                                  ; $7c9b: $20 $f3

    dec c                                         ; $7c9d: $0d
    push hl                                       ; $7c9e: $e5
    dec de                                        ; $7c9f: $1b
    ret                                           ; $7ca0: $c9


    scf                                           ; $7ca1: $37
    sub c                                         ; $7ca2: $91
    nop                                           ; $7ca3: $00
    ld l, a                                       ; $7ca4: $6f
    ld hl, $43df                                  ; $7ca5: $21 $df $43
    cp l                                          ; $7ca8: $bd
    add a                                         ; $7ca9: $87
    ld a, c                                       ; $7caa: $79
    rrca                                          ; $7cab: $0f
    nop                                           ; $7cac: $00
    pop af                                        ; $7cad: $f1
    sbc a                                         ; $7cae: $9f
    ld h, b                                       ; $7caf: $60
    cp a                                          ; $7cb0: $bf
    ld b, b                                       ; $7cb1: $40
    cp $01                                        ; $7cb2: $fe $01
    ld a, l                                       ; $7cb4: $7d
    add b                                         ; $7cb5: $80

Jump_0a2_7cb6:
    ld d, $33                                     ; $7cb6: $16 $33
    rra                                           ; $7cb8: $1f
    pop hl                                        ; $7cb9: $e1
    ccf                                           ; $7cba: $3f
    pop bc                                        ; $7cbb: $c1
    ld a, a                                       ; $7cbc: $7f
    add c                                         ; $7cbd: $81
    ld bc, $0318                                  ; $7cbe: $01 $18 $03
    rst $38                                       ; $7cc1: $ff
    rst $38                                       ; $7cc2: $ff
    or $1a                                        ; $7cc3: $f6 $1a
    ld h, $1b                                     ; $7cc5: $26 $1b
    nop                                           ; $7cc7: $00
    nop                                           ; $7cc8: $00
    cpl                                           ; $7cc9: $2f
    dec bc                                        ; $7cca: $0b
    ld a, a                                       ; $7ccb: $7f
    ld e, a                                       ; $7ccc: $5f
    nop                                           ; $7ccd: $00
    ccf                                           ; $7cce: $3f
    ldh [$33], a                                  ; $7ccf: $e0 $33
    ld a, [bc]                                    ; $7cd1: $0a
    ret                                           ; $7cd2: $c9


    rlca                                          ; $7cd3: $07
    ldh [rNR31], a                                ; $7cd4: $e0 $1b
    inc b                                         ; $7cd6: $04
    or d                                          ; $7cd7: $b2
    ld b, b                                       ; $7cd8: $40
    ld h, a                                       ; $7cd9: $67
    add b                                         ; $7cda: $80
    rst $08                                       ; $7cdb: $cf
    jr nc, jr_0a2_7d1f                            ; $7cdc: $30 $41

    rst $10                                       ; $7cde: $d7
    jr z, jr_0a2_7ce1                             ; $7cdf: $28 $00

jr_0a2_7ce1:
    db $fd                                        ; $7ce1: $fd
    ld [bc], a                                    ; $7ce2: $02
    ld [$f915], a                                 ; $7ce3: $ea $15 $f9
    ld [de], a                                    ; $7ce6: $12
    ldh [rNR24], a                                ; $7ce7: $e0 $19
    nop                                           ; $7ce9: $00
    call nc, $e839                                ; $7cea: $d4 $39 $e8
    dec e                                         ; $7ced: $1d
    ld d, h                                       ; $7cee: $54
    xor a                                         ; $7cef: $af
    xor a                                         ; $7cf0: $af
    ret nc                                        ; $7cf1: $d0

    nop                                           ; $7cf2: $00
    sub $e9                                       ; $7cf3: $d6 $e9
    ld h, c                                       ; $7cf5: $61
    ld a, [hl]                                    ; $7cf6: $7e
    ld d, b                                       ; $7cf7: $50
    rst $38                                       ; $7cf8: $ff
    ld a, [hl+]                                   ; $7cf9: $2a
    ld a, a                                       ; $7cfa: $7f
    nop                                           ; $7cfb: $00
    dec e                                         ; $7cfc: $1d

Call_0a2_7cfd:
jr_0a2_7cfd:
    cp a                                          ; $7cfd: $bf
    inc bc                                        ; $7cfe: $03
    ld d, a                                       ; $7cff: $57
    nop                                           ; $7d00: $00
    xor d                                         ; $7d01: $aa
    cp d                                          ; $7d02: $ba
    ld b, [hl]                                    ; $7d03: $46
    nop                                           ; $7d04: $00
    ld a, h                                       ; $7d05: $7c
    rst $00                                       ; $7d06: $c7
    ld hl, sp+$02                                 ; $7d07: $f8 $02
    db $ed                                        ; $7d09: $ed
    ld b, [hl]                                    ; $7d0a: $46
    ret c                                         ; $7d0b: $d8

    ld b, e                                       ; $7d0c: $43
    nop                                           ; $7d0d: $00
    or d                                          ; $7d0e: $b2
    ld b, a                                       ; $7d0f: $47
    dec c                                         ; $7d10: $0d
    ld b, e                                       ; $7d11: $43
    ld e, [hl]                                    ; $7d12: $5e
    ld b, c                                       ; $7d13: $41
    xor a                                         ; $7d14: $af
    ld d, b                                       ; $7d15: $50
    nop                                           ; $7d16: $00
    adc e                                         ; $7d17: $8b
    ld [hl], h                                    ; $7d18: $74
    ld d, [hl]                                    ; $7d19: $56
    xor c                                         ; $7d1a: $a9
    ld b, d                                       ; $7d1b: $42
    inc d                                         ; $7d1c: $14
    add hl, bc                                    ; $7d1d: $09
    ld [bc], a                                    ; $7d1e: $02

jr_0a2_7d1f:
    nop                                           ; $7d1f: $00
    ld b, d                                       ; $7d20: $42
    add b                                         ; $7d21: $80
    ld bc, $4aee                                  ; $7d22: $01 $ee $4a
    ei                                            ; $7d25: $fb
    sub c                                         ; $7d26: $91
    ld a, $00                                     ; $7d27: $3e $00
    jr z, jr_0a2_7d36                             ; $7d29: $28 $0b

    ld [hl], b                                    ; $7d2b: $70
    rrca                                          ; $7d2c: $0f
    cp h                                          ; $7d2d: $bc
    rlca                                          ; $7d2e: $07
    ld h, b                                       ; $7d2f: $60
    rra                                           ; $7d30: $1f
    add c                                         ; $7d31: $81
    sub b                                         ; $7d32: $90
    inc bc                                        ; $7d33: $03
    ld a, e                                       ; $7d34: $7b
    dec bc                                        ; $7d35: $0b

jr_0a2_7d36:
    db $f4                                        ; $7d36: $f4
    sub [hl]                                      ; $7d37: $96
    ld b, c                                       ; $7d38: $41
    inc c                                         ; $7d39: $0c
    jr nc, jr_0a2_7d7d                            ; $7d3a: $30 $41

    ld hl, $d46b                                  ; $7d3c: $21 $6b $d4
    ld [hl], b                                    ; $7d3f: $70
    dec de                                        ; $7d40: $1b
    ld c, e                                       ; $7d41: $4b
    nop                                           ; $7d42: $00
    rst $30                                       ; $7d43: $f7
    ld a, [$1b70]                                 ; $7d44: $fa $70 $1b
    nop                                           ; $7d47: $00
    ld e, b                                       ; $7d48: $58
    ld l, a                                       ; $7d49: $6f
    ld a, d                                       ; $7d4a: $7a
    ld b, l                                       ; $7d4b: $45
    or l                                          ; $7d4c: $b5
    jp z, $f4eb                                   ; $7d4d: $ca $eb $f4

    nop                                           ; $7d50: $00
    ccf                                           ; $7d51: $3f
    jr nz, jr_0a2_7d83                            ; $7d52: $20 $2f

    jr nc, jr_0a2_7cfd                            ; $7d54: $30 $a7

    cp b                                          ; $7d56: $b8
    ld [hl], d                                    ; $7d57: $72
    db $fd                                        ; $7d58: $fd
    add b                                         ; $7d59: $80
    ld hl, $084e                                  ; $7d5a: $21 $4e $08
    rrca                                          ; $7d5d: $0f
    dec bc                                        ; $7d5e: $0b
    inc c                                         ; $7d5f: $0c
    push de                                       ; $7d60: $d5
    ld a, [hl-]                                   ; $7d61: $3a
    and d                                         ; $7d62: $a2
    nop                                           ; $7d63: $00
    ld a, l                                       ; $7d64: $7d
    jr nc, @+$01                                  ; $7d65: $30 $ff

    ld l, b                                       ; $7d67: $68
    rst $38                                       ; $7d68: $ff
    dec d                                         ; $7d69: $15
    rst $38                                       ; $7d6a: $ff
    adc d                                         ; $7d6b: $8a
    nop                                           ; $7d6c: $00
    ld a, a                                       ; $7d6d: $7f
    ld d, a                                       ; $7d6e: $57
    cp a                                          ; $7d6f: $bf
    adc a                                         ; $7d70: $8f
    ld a, a                                       ; $7d71: $7f
    rlca                                          ; $7d72: $07
    inc b                                         ; $7d73: $04
    dec bc                                        ; $7d74: $0b
    nop                                           ; $7d75: $00
    inc c                                         ; $7d76: $0c
    dec [hl]                                      ; $7d77: $35
    dec sp                                        ; $7d78: $3b
    ld e, e                                       ; $7d79: $5b
    ld h, h                                       ; $7d7a: $64
    cp a                                          ; $7d7b: $bf
    ret c                                         ; $7d7c: $d8

jr_0a2_7d7d:
    ld l, a                                       ; $7d7d: $6f
    nop                                           ; $7d7e: $00
    or h                                          ; $7d7f: $b4
    ld a, a                                       ; $7d80: $7f
    or h                                          ; $7d81: $b4
    ccf                                           ; $7d82: $3f

jr_0a2_7d83:
    ret nz                                        ; $7d83: $c0

    ld d, a                                       ; $7d84: $57
    cp a                                          ; $7d85: $bf
    rrca                                          ; $7d86: $0f
    nop                                           ; $7d87: $00
    rst $38                                       ; $7d88: $ff
    db $db                                        ; $7d89: $db
    rst $38                                       ; $7d8a: $ff
    ld [hl], l                                    ; $7d8b: $75
    cp e                                          ; $7d8c: $bb
    ld a, [hl]                                    ; $7d8d: $7e
    adc l                                         ; $7d8e: $8d
    rst $20                                       ; $7d8f: $e7
    nop                                           ; $7d90: $00
    sbc h                                         ; $7d91: $9c
    ld c, c                                       ; $7d92: $49
    cp $90                                        ; $7d93: $fe $90
    ld a, a                                       ; $7d95: $7f
    db $fd                                        ; $7d96: $fd
    add d                                         ; $7d97: $82
    ld a, [hl-]                                   ; $7d98: $3a
    ld [$91c5], sp                                ; $7d99: $08 $c5 $91
    rst $28                                       ; $7d9c: $ef
    push de                                       ; $7d9d: $d5
    or h                                          ; $7d9e: $b4
    rlca                                          ; $7d9f: $07
    sub $ff                                       ; $7da0: $d6 $ff
    cp l                                          ; $7da2: $bd
    ld e, $fe                                     ; $7da3: $1e $fe
    rst $30                                       ; $7da5: $f7
    ld hl, sp-$0f                                 ; $7da6: $f8 $f1
    ld b, $03                                     ; $7da8: $06 $03
    ld [$16fa], sp                                ; $7daa: $08 $fa $16
    cp $06                                        ; $7dad: $fe $06
    rst $38                                       ; $7daf: $ff
    ld d, b                                       ; $7db0: $50
    or $f6                                        ; $7db1: $f6 $f6
    ld b, $f8                                     ; $7db3: $06 $f8
    jr nc, jr_0a2_7dbb                            ; $7db5: $30 $04

    jp hl                                         ; $7db7: $e9


    ld d, $d6                                     ; $7db8: $16 $d6
    add hl, hl                                    ; $7dba: $29

jr_0a2_7dbb:
    ld bc, $00ff                                  ; $7dbb: $01 $ff $00
    ei                                            ; $7dbe: $fb
    inc b                                         ; $7dbf: $04
    ld d, a                                       ; $7dc0: $57
    add sp, $6f                                   ; $7dc1: $e8 $6f
    ld [hl], b                                    ; $7dc3: $70
    inc hl                                        ; $7dc4: $23
    xor d                                         ; $7dc5: $aa
    ld [hl], h                                    ; $7dc6: $74
    rrca                                          ; $7dc7: $0f
    ld a, [$343a]                                 ; $7dc8: $fa $3a $34
    rst $18                                       ; $7dcb: $df
    ld b, b                                       ; $7dcc: $40
    inc bc                                        ; $7dcd: $03
    db $fc                                        ; $7dce: $fc
    ret nc                                        ; $7dcf: $d0

    inc bc                                        ; $7dd0: $03
    ld a, [c]                                     ; $7dd1: $f2
    nop                                           ; $7dd2: $00
    dec c                                         ; $7dd3: $0d
    db $f4                                        ; $7dd4: $f4
    dec bc                                        ; $7dd5: $0b
    add sp, $17                                   ; $7dd6: $e8 $17
    jp c, $f525                                   ; $7dd8: $da $25 $f5

jr_0a2_7ddb:
    jr jr_0a2_7de7                                ; $7ddb: $18 $0a

    ld e, e                                       ; $7ddd: $5b
    and h                                         ; $7dde: $a4
    ld c, b                                       ; $7ddf: $48
    ld [$4990], sp                                ; $7de0: $08 $90 $49
    db $fc                                        ; $7de3: $fc
    nop                                           ; $7de4: $00
    reti                                          ; $7de5: $d9


    nop                                           ; $7de6: $00

jr_0a2_7de7:
    jr nz, jr_0a2_7ddb                            ; $7de7: $20 $f2

    nop                                           ; $7de9: $00
    ld [hl], l                                    ; $7dea: $75
    add b                                         ; $7deb: $80
    ei                                            ; $7dec: $fb
    nop                                           ; $7ded: $00
    rst $10                                       ; $7dee: $d7
    xor h                                         ; $7def: $ac
    rst $30                                       ; $7df0: $f7
    rlca                                          ; $7df1: $07
    ld e, a                                       ; $7df2: $5f
    ei                                            ; $7df3: $fb
    rrca                                          ; $7df4: $0f
    nop                                           ; $7df5: $00
    ld h, [hl]                                    ; $7df6: $66
    inc e                                         ; $7df7: $1c
    jp nc, Jump_0a2_7f29                          ; $7df8: $d2 $29 $7f

    ld bc, $7e40                                  ; $7dfb: $01 $40 $7e
    sbc h                                         ; $7dfe: $9c
    ld bc, $057a                                  ; $7dff: $01 $7a $05
    ld [hl], l                                    ; $7e02: $75
    ld a, [bc]                                    ; $7e03: $0a
    ld l, e                                       ; $7e04: $6b
    inc d                                         ; $7e05: $14
    nop                                           ; $7e06: $00
    ld d, a                                       ; $7e07: $57
    jr z, @+$31                                   ; $7e08: $28 $2f

    ld d, b                                       ; $7e0a: $50
    sbc $20                                       ; $7e0b: $de $20
    rst $38                                       ; $7e0d: $ff
    ld bc, $fd00                                  ; $7e0e: $01 $00 $fd
    inc bc                                        ; $7e11: $03
    ei                                            ; $7e12: $fb
    dec b                                         ; $7e13: $05
    push af                                       ; $7e14: $f5
    dec bc                                        ; $7e15: $0b
    db $eb                                        ; $7e16: $eb
    dec d                                         ; $7e17: $15
    nop                                           ; $7e18: $00
    rst $10                                       ; $7e19: $d7
    add hl, hl                                    ; $7e1a: $29
    xor a                                         ; $7e1b: $af
    ld d, c                                       ; $7e1c: $51
    ld e, [hl]                                    ; $7e1d: $5e
    and c                                         ; $7e1e: $a1
    inc a                                         ; $7e1f: $3c
    ld b, b                                       ; $7e20: $40
    ld h, h                                       ; $7e21: $64
    ld sp, hl                                     ; $7e22: $f9
    ld b, [hl]                                    ; $7e23: $46
    inc b                                         ; $7e24: $04
    ld h, $2a                                     ; $7e25: $26 $2a
    ld e, [hl]                                    ; $7e27: $5e
    ld bc, $2cc0                                  ; $7e28: $01 $c0 $2c
    add b                                         ; $7e2b: $80
    nop                                           ; $7e2c: $00
    ld hl, $ff97                                  ; $7e2d: $21 $97 $ff
    ret nz                                        ; $7e30: $c0

    ld c, h                                       ; $7e31: $4c
    ld hl, $f201                                  ; $7e32: $21 $01 $f2
    rst $38                                       ; $7e35: $ff
    ret nz                                        ; $7e36: $c0

    ld c, h                                       ; $7e37: $4c
    ld [$001e], sp                                ; $7e38: $08 $1e $00
    ld a, a                                       ; $7e3b: $7f
    ld a, a                                       ; $7e3c: $7f
    ret nz                                        ; $7e3d: $c0

    ld c, h                                       ; $7e3e: $4c
    adc d                                         ; $7e3f: $8a
    nop                                           ; $7e40: $00
    db $fc                                        ; $7e41: $fc
    ld b, b                                       ; $7e42: $40
    db $fc                                        ; $7e43: $fc
    ret nz                                        ; $7e44: $c0

    inc c                                         ; $7e45: $0c
    ld [hl], a                                    ; $7e46: $77
    ret z                                         ; $7e47: $c8

    ld c, a                                       ; $7e48: $4f
    ret nc                                        ; $7e49: $d0

    ld a, a                                       ; $7e4a: $7f
    ret nz                                        ; $7e4b: $c0

    nop                                           ; $7e4c: $00
    rst $18                                       ; $7e4d: $df
    ld b, b                                       ; $7e4e: $40
    ld e, [hl]                                    ; $7e4f: $5e
    add b                                         ; $7e50: $80
    db $fd                                        ; $7e51: $fd
    ld b, b                                       ; $7e52: $40
    rst $38                                       ; $7e53: $ff
    nop                                           ; $7e54: $00
    inc [hl]                                      ; $7e55: $34
    or $40                                        ; $7e56: $f6 $40
    ldh [$2c], a                                  ; $7e58: $e0 $2c
    ld d, b                                       ; $7e5a: $50
    inc c                                         ; $7e5b: $0c
    ei                                            ; $7e5c: $fb
    jr jr_0a2_7e65                                ; $7e5d: $18 $06

    ld a, [c]                                     ; $7e5f: $f2
    dec c                                         ; $7e60: $0d
    add b                                         ; $7e61: $80
    call c, $ef1d                                 ; $7e62: $dc $1d $ef

jr_0a2_7e65:
    db $10                                        ; $7e65: $10
    ld d, a                                       ; $7e66: $57
    xor b                                         ; $7e67: $a8
    rst $38                                       ; $7e68: $ff
    nop                                           ; $7e69: $00
    xor a                                         ; $7e6a: $af
    ld b, b                                       ; $7e6b: $40
    ld d, b                                       ; $7e6c: $50
    jr nz, jr_0a2_7ec7                            ; $7e6d: $20 $58

    di                                            ; $7e6f: $f3
    nop                                           ; $7e70: $00
    sbc l                                         ; $7e71: $9d
    ldh [rNR22], a                                ; $7e72: $e0 $17
    add sp, $00                                   ; $7e74: $e8 $00
    dec c                                         ; $7e76: $0d
    ld a, [c]                                     ; $7e77: $f2
    rra                                           ; $7e78: $1f
    ldh [$bb], a                                  ; $7e79: $e0 $bb
    ld b, h                                       ; $7e7b: $44
    ld [hl], a                                    ; $7e7c: $77
    adc b                                         ; $7e7d: $88
    ld b, b                                       ; $7e7e: $40
    rst $18                                       ; $7e7f: $df
    ret nz                                        ; $7e80: $c0

    rlca                                          ; $7e81: $07
    rst $28                                       ; $7e82: $ef
    ld a, [c]                                     ; $7e83: $f2
    db $dd                                        ; $7e84: $dd
    rst $20                                       ; $7e85: $e7
    sbc a                                         ; $7e86: $9f
    add sp, $00                                   ; $7e87: $e8 $00
    cp e                                          ; $7e89: $bb
    rst $08                                       ; $7e8a: $cf
    sbc a                                         ; $7e8b: $9f
    and $ce                                       ; $7e8c: $e6 $ce
    pop af                                        ; $7e8e: $f1
    push hl                                       ; $7e8f: $e5
    ld a, d                                       ; $7e90: $7a
    nop                                           ; $7e91: $00
    ld [hl], h                                    ; $7e92: $74
    cp a                                          ; $7e93: $bf
    pop de                                        ; $7e94: $d1
    ccf                                           ; $7e95: $3f
    rst $28                                       ; $7e96: $ef
    rra                                           ; $7e97: $1f
    rst $30                                       ; $7e98: $f7
    rrca                                          ; $7e99: $0f
    nop                                           ; $7e9a: $00
    rst $20                                       ; $7e9b: $e7
    rra                                           ; $7e9c: $1f
    db $d3                                        ; $7e9d: $d3
    cpl                                           ; $7e9e: $2f
    and e                                         ; $7e9f: $a3
    ld e, a                                       ; $7ea0: $5f
    ld b, e                                       ; $7ea1: $43
    cp a                                          ; $7ea2: $bf
    nop                                           ; $7ea3: $00
    ld d, $ff                                     ; $7ea4: $16 $ff
    sbc d                                         ; $7ea6: $9a
    ld a, a                                       ; $7ea7: $7f
    rst $18                                       ; $7ea8: $df
    ccf                                           ; $7ea9: $3f
    ld [$001f], a                                 ; $7eaa: $ea $1f $00
    push af                                       ; $7ead: $f5
    rrca                                          ; $7eae: $0f
    ld a, e                                       ; $7eaf: $7b
    rst $00                                       ; $7eb0: $c7
    rst $30                                       ; $7eb1: $f7
    ld c, e                                       ; $7eb2: $4b
    ld [$1097], a                                 ; $7eb3: $ea $97 $10
    push bc                                       ; $7eb6: $c5
    ld a, $ad                                     ; $7eb7: $3e $ad
    add h                                         ; $7eb9: $84
    rlca                                          ; $7eba: $07
    rst $10                                       ; $7ebb: $d7
    rst $28                                       ; $7ebc: $ef
    db $fd                                        ; $7ebd: $fd
    jp $ed00                                      ; $7ebe: $c3 $00 $ed


    di                                            ; $7ec1: $f3
    ld c, e                                       ; $7ec2: $4b
    cp a                                          ; $7ec3: $bf
    rst $20                                       ; $7ec4: $e7
    rra                                           ; $7ec5: $1f
    rst $10                                       ; $7ec6: $d7

jr_0a2_7ec7:
    cpl                                           ; $7ec7: $2f
    nop                                           ; $7ec8: $00
    adc e                                         ; $7ec9: $8b
    ld a, h                                       ; $7eca: $7c
    ld d, e                                       ; $7ecb: $53
    cp l                                          ; $7ecc: $bd
    rla                                           ; $7ecd: $17
    ld sp, hl                                     ; $7ece: $f9
    di                                            ; $7ecf: $f3
    db $fc                                        ; $7ed0: $fc
    nop                                           ; $7ed1: $00
    push af                                       ; $7ed2: $f5
    ld a, [$7dfa]                                 ; $7ed3: $fa $fa $7d
    ld [hl], l                                    ; $7ed6: $75
    cp $fa                                        ; $7ed7: $fe $fa
    rst $38                                       ; $7ed9: $ff
    nop                                           ; $7eda: $00

jr_0a2_7edb:
    rst $20                                       ; $7edb: $e7
    sbc a                                         ; $7edc: $9f
    di                                            ; $7edd: $f3
    ld c, a                                       ; $7ede: $4f
    ld a, c                                       ; $7edf: $79
    add a                                         ; $7ee0: $87
    cp c                                          ; $7ee1: $b9
    rst $00                                       ; $7ee2: $c7
    nop                                           ; $7ee3: $00
    pop de                                        ; $7ee4: $d1
    cpl                                           ; $7ee5: $2f
    and d                                         ; $7ee6: $a2

Jump_0a2_7ee7:
    ld e, a                                       ; $7ee7: $5f
    ld b, l                                       ; $7ee8: $45
    cp a                                          ; $7ee9: $bf
    dec bc                                        ; $7eea: $0b
    rst $38                                       ; $7eeb: $ff
    ld [$ff3f], sp                                ; $7eec: $08 $3f $ff
    sbc a                                         ; $7eef: $9f
    ld a, a                                       ; $7ef0: $7f
    ld d, d                                       ; $7ef1: $52
    ld [$06fb], sp                                ; $7ef2: $08 $fb $06
    ld a, [hl]                                    ; $7ef5: $7e
    nop                                           ; $7ef6: $00
    add a                                         ; $7ef7: $87
    ld a, [c]                                     ; $7ef8: $f2
    rrca                                          ; $7ef9: $0f
    and e                                         ; $7efa: $a3
    ld e, a                                       ; $7efb: $5f
    ld d, [hl]                                    ; $7efc: $56
    rst $38                                       ; $7efd: $ff
    db $fd                                        ; $7efe: $fd
    add b                                         ; $7eff: $80

Jump_0a2_7f00:
    and [hl]                                      ; $7f00: $a6
    add hl, bc                                    ; $7f01: $09
    rst $38                                       ; $7f02: $ff
    ld l, h                                       ; $7f03: $6c
    rst $38                                       ; $7f04: $ff
    jp nc, Jump_0a2_6d3f                          ; $7f05: $d2 $3f $6d

    sbc a                                         ; $7f08: $9f
    nop                                           ; $7f09: $00
    jr c, jr_0a2_7edb                             ; $7f0a: $38 $cf

    ld c, h                                       ; $7f0c: $4c
    cp a                                          ; $7f0d: $bf

Call_0a2_7f0e:
    rla                                           ; $7f0e: $17
    ld hl, sp-$55                                 ; $7f0f: $f8 $ab
    or $00                                        ; $7f11: $f6 $00
    ld d, l                                       ; $7f13: $55
    rst $28                                       ; $7f14: $ef
    cp a                                          ; $7f15: $bf
    ret z                                         ; $7f16: $c8

    cp a                                          ; $7f17: $bf
    set 6, a                                      ; $7f18: $cb $f7
    adc $00                                       ; $7f1a: $ce $00
    sbc a                                         ; $7f1c: $9f
    ldh [$90], a                                  ; $7f1d: $e0 $90
    ld a, a                                       ; $7f1f: $7f
    db $f4                                        ; $7f20: $f4
    rra                                           ; $7f21: $1f
    ld a, [$001f]                                 ; $7f22: $fa $1f $00
    db $ec                                        ; $7f25: $ec
    rra                                           ; $7f26: $1f
    and $1f                                       ; $7f27: $e6 $1f

Jump_0a2_7f29:
    push bc                                       ; $7f29: $c5
    ccf                                           ; $7f2a: $3f
    and d                                         ; $7f2b: $a2
    ld e, a                                       ; $7f2c: $5f
    nop                                           ; $7f2d: $00
    ld c, e                                       ; $7f2e: $4b
    cp a                                          ; $7f2f: $bf
    ld c, d                                       ; $7f30: $4a
    ld [hl], l                                    ; $7f31: $75
    inc h                                         ; $7f32: $24
    cp e                                          ; $7f33: $bb
    dec d                                         ; $7f34: $15
    ld e, a                                       ; $7f35: $5f
    jr nz, jr_0a2_7f46                            ; $7f36: $20 $0e

    cpl                                           ; $7f38: $2f
    sbc h                                         ; $7f39: $9c
    ld [bc], a                                    ; $7f3a: $02
    ld a, [hl+]                                   ; $7f3b: $2a
    nop                                           ; $7f3c: $00
    dec d                                         ; $7f3d: $15
    nop                                           ; $7f3e: $00
    add d                                         ; $7f3f: $82
    nop                                           ; $7f40: $00
    sub [hl]                                      ; $7f41: $96
    ld a, a                                       ; $7f42: $7f
    ld l, $fe                                     ; $7f43: $2e $fe
    ld e, h                                       ; $7f45: $5c

jr_0a2_7f46:
    db $fc                                        ; $7f46: $fc
    ld hl, sp-$06                                 ; $7f47: $f8 $fa
    nop                                           ; $7f49: $00
    ldh a, [$f4]                                  ; $7f4a: $f0 $f4
    nop                                           ; $7f4c: $00
    xor c                                         ; $7f4d: $a9
    nop                                           ; $7f4e: $00
    ld d, d                                       ; $7f4f: $52
    nop                                           ; $7f50: $00
    add l                                         ; $7f51: $85
    nop                                           ; $7f52: $00
    cp [hl]                                       ; $7f53: $be
    ld b, c                                       ; $7f54: $41
    ei                                            ; $7f55: $fb

jr_0a2_7f56:
    inc b                                         ; $7f56: $04
    ld d, l                                       ; $7f57: $55
    xor d                                         ; $7f58: $aa
    xor b                                         ; $7f59: $a8
    rst $10                                       ; $7f5a: $d7
    nop                                           ; $7f5b: $00
    add hl, bc                                    ; $7f5c: $09
    ldh a, [$90]                                  ; $7f5d: $f0 $90
    ldh [rLCDC], a                                ; $7f5f: $e0 $40
    ld sp, hl                                     ; $7f61: $f9
    jr nz, jr_0a2_7f56                            ; $7f62: $20 $f2

    ld [$21de], sp                                ; $7f64: $08 $de $21
    db $eb                                        ; $7f67: $eb

jr_0a2_7f68:
    nop                                           ; $7f68: $00
    stop                                          ; $7f69: $10 $00
    ld d, a                                       ; $7f6b: $57
    inc d                                         ; $7f6c: $14
    adc a                                         ; $7f6d: $8f
    nop                                           ; $7f6e: $00
    ld [$103f], sp                                ; $7f6f: $08 $3f $10
    ld a, a                                       ; $7f72: $7f
    and d                                         ; $7f73: $a2
    db $fc                                        ; $7f74: $fc
    and l                                         ; $7f75: $a5
    ld b, l                                       ; $7f76: $45
    nop                                           ; $7f77: $00
    add b                                         ; $7f78: $80
    dec bc                                        ; $7f79: $0b
    add h                                         ; $7f7a: $84
    nop                                           ; $7f7b: $00
    nop                                           ; $7f7c: $00
    daa                                           ; $7f7d: $27
    ld b, d                                       ; $7f7e: $42
    ld e, a                                       ; $7f7f: $5f
    add b                                         ; $7f80: $80
    ret nz                                        ; $7f81: $c0

    dec e                                         ; $7f82: $1d
    inc c                                         ; $7f83: $0c
    pop hl                                        ; $7f84: $e1
    db $10                                        ; $7f85: $10
    adc a                                         ; $7f86: $8f
    jr z, @+$19                                   ; $7f87: $28 $17

    stop                                          ; $7f89: $10 $00
    rst $28                                       ; $7f8b: $ef
    ld hl, $4bfe                                  ; $7f8c: $21 $fe $4b
    or h                                          ; $7f8f: $b4
    sub a                                         ; $7f90: $97
    ld l, b                                       ; $7f91: $68
    ccf                                           ; $7f92: $3f
    nop                                           ; $7f93: $00
    ret nz                                        ; $7f94: $c0

    ld a, [c]                                     ; $7f95: $f2
    dec c                                         ; $7f96: $0d
    push hl                                       ; $7f97: $e5
    ld a, [de]                                    ; $7f98: $1a
    swap h                                        ; $7f99: $cb $34
    sub l                                         ; $7f9b: $95
    nop                                           ; $7f9c: $00
    ld l, d                                       ; $7f9d: $6a
    dec hl                                        ; $7f9e: $2b
    call nc, $a857                                ; $7f9f: $d4 $57 $a8
    xor a                                         ; $7fa2: $af
    ld d, b                                       ; $7fa3: $50
    ld a, a                                       ; $7fa4: $7f
    ld b, d                                       ; $7fa5: $42
    add b                                         ; $7fa6: $80
    db $10                                        ; $7fa7: $10
    ld e, $b1                                     ; $7fa8: $1e $b1
    rrca                                          ; $7faa: $0f
    ld h, c                                       ; $7fab: $61
    rra                                           ; $7fac: $1f
    db $10                                        ; $7fad: $10
    ld c, [hl]                                    ; $7fae: $4e
    ccf                                           ; $7faf: $3f
    ld a, $40                                     ; $7fb0: $3e $40
    cp $c9                                        ; $7fb2: $fe $c9
    ld b, $10                                     ; $7fb4: $06 $10
    ld c, $63                                     ; $7fb6: $0e $63
    ld [bc], a                                    ; $7fb8: $02
    ld [hl], d                                    ; $7fb9: $72
    ld a, [hl-]                                   ; $7fba: $3a
    dec c                                         ; $7fbb: $0d
    jr jr_0a2_7f68                                ; $7fbc: $18 $aa

    jr z, @+$01                                   ; $7fbe: $28 $ff

    ld d, l                                       ; $7fc0: $55
    inc b                                         ; $7fc1: $04
    nop                                           ; $7fc2: $00
    rst $38                                       ; $7fc3: $ff
    ld b, $00                                     ; $7fc4: $06 $00
    rst $38                                       ; $7fc6: $ff
    rst $38                                       ; $7fc7: $ff
    db $db                                        ; $7fc8: $db
    rrca                                          ; $7fc9: $0f
    nop                                           ; $7fca: $00
    nop                                           ; $7fcb: $00
    dec d                                         ; $7fcc: $15
    nop                                           ; $7fcd: $00
    ld bc, $0021                                  ; $7fce: $01 $21 $00
    inc bc                                        ; $7fd1: $03
    ld hl, $0300                                  ; $7fd2: $21 $00 $03
    daa                                           ; $7fd5: $27
    nop                                           ; $7fd6: $00
    inc b                                         ; $7fd7: $04
    ld [bc], a                                    ; $7fd8: $02
    nop                                           ; $7fd9: $00
    stop                                          ; $7fda: $10 $00
    xor l                                         ; $7fdc: $ad
    nop                                           ; $7fdd: $00
    rlca                                          ; $7fde: $07
    inc bc                                        ; $7fdf: $03
    ld b, l                                       ; $7fe0: $45
    nop                                           ; $7fe1: $00
    ld a, $00                                     ; $7fe2: $3e $00
    rlca                                          ; $7fe4: $07
    ld [bc], a                                    ; $7fe5: $02
    ld a, [hl]                                    ; $7fe6: $7e
    nop                                           ; $7fe7: $00
    inc hl                                        ; $7fe8: $23
    nop                                           ; $7fe9: $00
    rlca                                          ; $7fea: $07
    nop                                           ; $7feb: $00
    jp hl                                         ; $7fec: $e9


    nop                                           ; $7fed: $00
    ccf                                           ; $7fee: $3f
    nop                                           ; $7fef: $00
    rst $38                                       ; $7ff0: $ff
    rst $38                                       ; $7ff1: $ff
    rst $38                                       ; $7ff2: $ff
    rst $38                                       ; $7ff3: $ff
    rst $38                                       ; $7ff4: $ff
    rst $38                                       ; $7ff5: $ff
    nop                                           ; $7ff6: $00
    inc a                                         ; $7ff7: $3c
    ld a, a                                       ; $7ff8: $7f
    ld c, [hl]                                    ; $7ff9: $4e
    sbc b                                         ; $7ffa: $98
    ld d, $00                                     ; $7ffb: $16 $00
    nop                                           ; $7ffd: $00
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
