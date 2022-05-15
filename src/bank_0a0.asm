; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0a0", ROMX[$4000], BANK[$a0]

    and b                                         ; $4000: $a0
    or b                                          ; $4001: $b0
    rrca                                          ; $4002: $0f
    rrca                                          ; $4003: $0f
    add hl, bc                                    ; $4004: $09
    ld [$00ff], sp                                ; $4005: $08 $ff $00
    xor d                                         ; $4008: $aa
    nop                                           ; $4009: $00
    inc b                                         ; $400a: $04
    ld [$0055], sp                                ; $400b: $08 $55 $00
    nop                                           ; $400e: $00
    db $f4                                        ; $400f: $f4
    inc b                                         ; $4010: $04
    db $10                                        ; $4011: $10
    inc bc                                        ; $4012: $03
    ld [$180c], sp                                ; $4013: $08 $0c $18
    jr jr_0a0_4030                                ; $4016: $18 $18

    rst $38                                       ; $4018: $ff
    ld [bc], a                                    ; $4019: $02
    db $10                                        ; $401a: $10
    ld d, l                                       ; $401b: $55
    xor d                                         ; $401c: $aa
    add h                                         ; $401d: $84
    inc b                                         ; $401e: $04
    ld [$55aa], sp                                ; $401f: $08 $aa $55
    nop                                           ; $4022: $00
    rst $38                                       ; $4023: $ff
    inc b                                         ; $4024: $04
    ld [$ff00], sp                                ; $4025: $08 $00 $ff
    ld [$ff55], sp                                ; $4028: $08 $55 $ff
    xor d                                         ; $402b: $aa
    rst $38                                       ; $402c: $ff
    inc [hl]                                      ; $402d: $34
    nop                                           ; $402e: $00
    xor d                                         ; $402f: $aa

Jump_0a0_4030:
jr_0a0_4030:
    rst $38                                       ; $4030: $ff
    rst $38                                       ; $4031: $ff
    ld [$03fc], sp                                ; $4032: $08 $fc $03

Jump_0a0_4035:
    xor c                                         ; $4035: $a9
    inc bc                                        ; $4036: $03
    inc b                                         ; $4037: $04
    ld [$0156], sp                                ; $4038: $08 $56 $01
    inc bc                                        ; $403b: $03
    ld d, d                                       ; $403c: $52
    ld bc, $0804                                  ; $403d: $01 $04 $08
    ld [bc], a                                    ; $4040: $02
    ld [$5620], sp                                ; $4041: $08 $20 $56
    ld bc, $1818                                  ; $4044: $01 $18 $18
    db $fc                                        ; $4047: $fc
    inc h                                         ; $4048: $24
    inc bc                                        ; $4049: $03
    db $fd                                        ; $404a: $fd
    jr nz, jr_0a0_404d                            ; $404b: $20 $00

jr_0a0_404d:
    ld d, l                                       ; $404d: $55
    xor e                                         ; $404e: $ab
    inc b                                         ; $404f: $04
    ld [$53ad], sp                                ; $4050: $08 $ad $53
    ld bc, $ff01                                  ; $4053: $01 $01 $ff
    xor c                                         ; $4056: $a9
    ld d, a                                       ; $4057: $57
    ld bc, $01ff                                  ; $4058: $01 $ff $01
    ld b, b                                       ; $405b: $40
    nop                                           ; $405c: $00
    nop                                           ; $405d: $00
    xor e                                         ; $405e: $ab
    rst $38                                       ; $405f: $ff
    xor e                                         ; $4060: $ab
    ld bc, $ab55                                  ; $4061: $01 $55 $ab
    rst $38                                       ; $4064: $ff
    rst $38                                       ; $4065: $ff
    nop                                           ; $4066: $00
    rst $20                                       ; $4067: $e7
    jr @-$2f                                      ; $4068: $18 $cf

    rst $38                                       ; $406a: $ff
    rra                                           ; $406b: $1f
    ld [$080f], sp                                ; $406c: $08 $0f $08
    nop                                           ; $406f: $00
    ld d, e                                       ; $4070: $53
    inc c                                         ; $4071: $0c
    and $ff                                       ; $4072: $e6 $ff
    db $e4                                        ; $4074: $e4
    ld b, e                                       ; $4075: $43
    rst $30                                       ; $4076: $f7
    ld b, d                                       ; $4077: $42
    nop                                           ; $4078: $00
    add b                                         ; $4079: $80
    ld a, a                                       ; $407a: $7f
    jr c, @+$01                                   ; $407b: $38 $ff

    rst $20                                       ; $407d: $e7
    add d                                         ; $407e: $82
    rst $38                                       ; $407f: $ff
    add d                                         ; $4080: $82
    nop                                           ; $4081: $00
    ld a, l                                       ; $4082: $7d
    add d                                         ; $4083: $82
    ld [hl], c                                    ; $4084: $71
    rst $38                                       ; $4085: $ff
    jp c, $ff30                                   ; $4086: $da $30 $ff

    db $10                                        ; $4089: $10
    ld [$c03f], sp                                ; $408a: $08 $3f $c0
    ld [$0480], a                                 ; $408d: $ea $80 $04
    ld [$c015], sp                                ; $4090: $08 $15 $c0
    ret nz                                        ; $4093: $c0

Jump_0a0_4094:
    add b                                         ; $4094: $80
    inc b                                         ; $4095: $04
    db $10                                        ; $4096: $10
    cp [hl]                                       ; $4097: $be
    ld b, e                                       ; $4098: $43
    add hl, sp                                    ; $4099: $39
    rst $38                                       ; $409a: $ff
    db $fd                                        ; $409b: $fd
    ld [hl+], a                                   ; $409c: $22
    ld e, e                                       ; $409d: $5b
    nop                                           ; $409e: $00
    and a                                         ; $409f: $a7
    inc [hl]                                      ; $40a0: $34
    ld hl, sp+$76                                 ; $40a1: $f8 $76
    adc b                                         ; $40a3: $88
    ld [hl], a                                    ; $40a4: $77
    adc b                                         ; $40a5: $88
    adc c                                         ; $40a6: $89
    nop                                           ; $40a7: $00
    cp $af                                        ; $40a8: $fe $af
    ld d, b                                       ; $40aa: $50
    add a                                         ; $40ab: $87
    rst $38                                       ; $40ac: $ff
    db $f4                                        ; $40ad: $f4
    ccf                                           ; $40ae: $3f
    ld d, c                                       ; $40af: $51
    nop                                           ; $40b0: $00
    ldh [$a0], a                                  ; $40b1: $e0 $a0
    ld b, b                                       ; $40b3: $40
    xor d                                         ; $40b4: $aa
    ld b, b                                       ; $40b5: $40
    cp a                                          ; $40b6: $bf
    ld b, b                                       ; $40b7: $40
    ld e, h                                       ; $40b8: $5c
    inc d                                         ; $40b9: $14
    db $e3                                        ; $40ba: $e3
    ld b, b                                       ; $40bb: $40
    add b                                         ; $40bc: $80
    jr z, @+$1a                                   ; $40bd: $28 $18

    dec d                                         ; $40bf: $15
    jr c, jr_0a0_40e2                             ; $40c0: $38 $20

    ld d, h                                       ; $40c2: $54
    rst $38                                       ; $40c3: $ff
    adc b                                         ; $40c4: $88
    ld bc, $d548                                  ; $40c5: $01 $48 $d5
    rst $38                                       ; $40c8: $ff
    and c                                         ; $40c9: $a1

Call_0a0_40ca:
    db $10                                        ; $40ca: $10
    ld d, b                                       ; $40cb: $50
    or h                                          ; $40cc: $b4
    rst $38                                       ; $40cd: $ff
    ccf                                           ; $40ce: $3f
    ld bc, $bfc0                                  ; $40cf: $01 $c0 $bf
    ret nz                                        ; $40d2: $c0

    ccf                                           ; $40d3: $3f
    ret nz                                        ; $40d4: $c0

    sub l                                         ; $40d5: $95
    ld [$0804], a                                 ; $40d6: $ea $04 $08
    nop                                           ; $40d9: $00
    xor d                                         ; $40da: $aa
    push de                                       ; $40db: $d5
    add b                                         ; $40dc: $80
    rst $38                                       ; $40dd: $ff
    ld a, b                                       ; $40de: $78
    add a                                         ; $40df: $87
    jr c, @-$1f                                   ; $40e0: $38 $df

jr_0a0_40e2:
    nop                                           ; $40e2: $00
    cp $21                                        ; $40e3: $fe $21
    rst $00                                       ; $40e5: $c7
    inc hl                                        ; $40e6: $23
    ld l, [hl]                                    ; $40e7: $6e
    db $f4                                        ; $40e8: $f4
    ldh a, [$4c]                                  ; $40e9: $f0 $4c
    nop                                           ; $40eb: $00
    ld h, c                                       ; $40ec: $61
    sub d                                         ; $40ed: $92
    add c                                         ; $40ee: $81
    ld [hl], c                                    ; $40ef: $71
    rrca                                          ; $40f0: $0f
    ldh a, [$39]                                  ; $40f1: $f0 $39
    ld hl, sp+$00                                 ; $40f3: $f8 $00
    ld a, $c7                                     ; $40f5: $3e $c7
    ld a, e                                       ; $40f7: $7b
    add h                                         ; $40f8: $84

jr_0a0_40f9:
    ccf                                           ; $40f9: $3f
    ld e, b                                       ; $40fa: $58
    ld a, e                                       ; $40fb: $7b
    daa                                           ; $40fc: $27
    dec bc                                        ; $40fd: $0b
    ld l, b                                       ; $40fe: $68
    call nz, Call_000_38e0                        ; $40ff: $c4 $e0 $38
    inc h                                         ; $4102: $24
    ld [$4880], sp                                ; $4103: $08 $80 $48
    nop                                           ; $4106: $00
    nop                                           ; $4107: $00
    ld bc, $8026                                  ; $4108: $01 $26 $80
    push de                                       ; $410b: $d5
    nop                                           ; $410c: $00
    ld bc, $ffaa                                  ; $410d: $01 $aa $ff
    inc e                                         ; $4110: $1c
    add hl, bc                                    ; $4111: $09
    ld b, b                                       ; $4112: $40
    add hl, de                                    ; $4113: $19
    nop                                           ; $4114: $00
    ld b, b                                       ; $4115: $40
    nop                                           ; $4116: $00
    db $10                                        ; $4117: $10
    ld l, b                                       ; $4118: $68
    add e                                         ; $4119: $83
    jp $ffff                                      ; $411a: $c3 $ff $ff


    db $fd                                        ; $411d: $fd
    rst $38                                       ; $411e: $ff
    nop                                           ; $411f: $00
    ld sp, hl                                     ; $4120: $f9
    rst $38                                       ; $4121: $ff
    push af                                       ; $4122: $f5
    ei                                            ; $4123: $fb
    jp hl                                         ; $4124: $e9


    rst $30                                       ; $4125: $f7
    push de                                       ; $4126: $d5
    db $eb                                        ; $4127: $eb
    nop                                           ; $4128: $00
    xor c                                         ; $4129: $a9
    rst $10                                       ; $412a: $d7
    ld d, c                                       ; $412b: $51
    xor a                                         ; $412c: $af
    ld b, d                                       ; $412d: $42
    add c                                         ; $412e: $81
    jp nz, $a081                                  ; $412f: $c2 $81 $a0

    inc b                                         ; $4132: $04
    ld [$046a], sp                                ; $4133: $08 $6a $04
    db $10                                        ; $4136: $10
    sub $81                                       ; $4137: $d6 $81
    rst $38                                       ; $4139: $ff
    rst $38                                       ; $413a: $ff
    ldh [rP1], a                                  ; $413b: $e0 $00
    rst $38                                       ; $413d: $ff
    pop de                                        ; $413e: $d1
    rst $28                                       ; $413f: $ef
    and e                                         ; $4140: $a3
    rst $18                                       ; $4141: $df
    ld b, a                                       ; $4142: $47
    cp a                                          ; $4143: $bf
    adc [hl]                                      ; $4144: $8e
    ld [$1c7f], sp                                ; $4145: $08 $7f $1c
    rst $38                                       ; $4148: $ff
    jr c, jr_0a0_40f9                             ; $4149: $38 $ae

    nop                                           ; $414b: $00
    pop hl                                        ; $414c: $e1
    rst $38                                       ; $414d: $ff
    jp $ff00                                      ; $414e: $c3 $00 $ff


    add l                                         ; $4151: $85
    rst $38                                       ; $4152: $ff
    dec bc                                        ; $4153: $0b
    rst $38                                       ; $4154: $ff
    rla                                           ; $4155: $17
    rst $38                                       ; $4156: $ff
    cpl                                           ; $4157: $2f
    nop                                           ; $4158: $00
    rst $38                                       ; $4159: $ff
    ld e, a                                       ; $415a: $5f
    rst $38                                       ; $415b: $ff
    and e                                         ; $415c: $a3
    ld e, a                                       ; $415d: $5f
    ld b, a                                       ; $415e: $47
    cp a                                          ; $415f: $bf
    adc l                                         ; $4160: $8d
    nop                                           ; $4161: $00
    ld a, a                                       ; $4162: $7f
    add hl, de                                    ; $4163: $19
    rst $38                                       ; $4164: $ff
    ld sp, $63ff                                  ; $4165: $31 $ff $63
    rst $38                                       ; $4168: $ff
    rst $00                                       ; $4169: $c7
    dec d                                         ; $416a: $15
    rst $38                                       ; $416b: $ff
    adc a                                         ; $416c: $8f
    rst $38                                       ; $416d: $ff
    inc [hl]                                      ; $416e: $34
    ld [$047e], sp                                ; $416f: $08 $7e $04
    db $10                                        ; $4172: $10
    cp $04                                        ; $4173: $fe $04
    db $10                                        ; $4175: $10
    ld d, c                                       ; $4176: $51
    ld [hl], b                                    ; $4177: $70
    jr nc, jr_0a0_417a                            ; $4178: $30 $00

jr_0a0_417a:
    jp nz, Jump_0a0_4030                          ; $417a: $c2 $30 $40

    cp a                                          ; $417d: $bf
    rst $38                                       ; $417e: $ff
    ld a, a                                       ; $417f: $7f
    ld [hl], d                                    ; $4180: $72
    stop                                          ; $4181: $10 $00
    di                                            ; $4183: $f3
    db $fd                                        ; $4184: $fd
    push hl                                       ; $4185: $e5
    ei                                            ; $4186: $fb
    set 6, l                                      ; $4187: $cb $f5
    sub l                                         ; $4189: $95
    db $eb                                        ; $418a: $eb
    rst $00                                       ; $418b: $c7
    sub [hl]                                      ; $418c: $96
    db $10                                        ; $418d: $10
    jp nz, Jump_0a0_7e41                          ; $418e: $c2 $41 $7e

    nop                                           ; $4191: $00
    inc a                                         ; $4192: $3c
    jp nc, $7051                                  ; $4193: $d2 $51 $70

    ld [$4840], sp                                ; $4196: $08 $40 $48
    ld b, b                                       ; $4199: $40
    rst $38                                       ; $419a: $ff
    ld b, b                                       ; $419b: $40
    jr nz, @-$0d                                  ; $419c: $20 $f1

    rst $38                                       ; $419e: $ff
    push hl                                       ; $419f: $e5
    ei                                            ; $41a0: $fb
    ret                                           ; $41a1: $c9


    rst $30                                       ; $41a2: $f7
    nop                                           ; $41a3: $00
    sub l                                         ; $41a4: $95
    db $eb                                        ; $41a5: $eb
    cp a                                          ; $41a6: $bf
    rst $38                                       ; $41a7: $ff
    ld a, [hl]                                    ; $41a8: $7e
    rst $38                                       ; $41a9: $ff
    db $fc                                        ; $41aa: $fc
    rst $38                                       ; $41ab: $ff
    nop                                           ; $41ac: $00
    ld sp, hl                                     ; $41ad: $f9
    cp $f2                                        ; $41ae: $fe $f2
    db $fd                                        ; $41b0: $fd
    push hl                                       ; $41b1: $e5
    ld a, [$f5ca]                                 ; $41b2: $fa $ca $f5
    db $10                                        ; $41b5: $10
    sub h                                         ; $41b6: $94
    db $eb                                        ; $41b7: $eb
    add hl, hl                                    ; $41b8: $29
    call nz, $a100                                ; $41b9: $c4 $00 $a1
    ld e, a                                       ; $41bc: $5f
    ld b, e                                       ; $41bd: $43
    cp a                                          ; $41be: $bf
    ld bc, $7f87                                  ; $41bf: $01 $87 $7f
    rrca                                          ; $41c2: $0f
    rst $38                                       ; $41c3: $ff
    rra                                           ; $41c4: $1f
    rst $38                                       ; $41c5: $ff
    ccf                                           ; $41c6: $3f
    nop                                           ; $41c7: $00
    ld h, c                                       ; $41c8: $61
    nop                                           ; $41c9: $00
    add b                                         ; $41ca: $80
    ret nz                                        ; $41cb: $c0

    xor e                                         ; $41cc: $ab
    rst $38                                       ; $41cd: $ff
    ld d, e                                       ; $41ce: $53
    xor a                                         ; $41cf: $af
    ei                                            ; $41d0: $fb
    rlca                                          ; $41d1: $07
    ld bc, $07a9                                  ; $41d2: $01 $a9 $07
    ld d, a                                       ; $41d5: $57
    inc bc                                        ; $41d6: $03
    dec b                                         ; $41d7: $05
    inc bc                                        ; $41d8: $03
    rlca                                          ; $41d9: $07
    inc b                                         ; $41da: $04
    nop                                           ; $41db: $00
    ld a, [de]                                    ; $41dc: $1a
    rst $38                                       ; $41dd: $ff
    rst $38                                       ; $41de: $ff
    rst $18                                       ; $41df: $df
    sub h                                         ; $41e0: $94
    nop                                           ; $41e1: $00
    ld b, h                                       ; $41e2: $44
    ld [$54f8], sp                                ; $41e3: $08 $f8 $54
    nop                                           ; $41e6: $00
    db $e3                                        ; $41e7: $e3
    add b                                         ; $41e8: $80
    adc [hl]                                      ; $41e9: $8e
    ld bc, $ff8d                                  ; $41ea: $01 $8d $ff
    dec de                                        ; $41ed: $1b
    db $fd                                        ; $41ee: $fd
    dec [hl]                                      ; $41ef: $35
    ei                                            ; $41f0: $fb
    ld l, c                                       ; $41f1: $69
    ld bc, $d1f7                                  ; $41f2: $01 $f7 $d1
    rst $28                                       ; $41f5: $ef
    and c                                         ; $41f6: $a1
    rst $18                                       ; $41f7: $df
    ld b, c                                       ; $41f8: $41
    cp a                                          ; $41f9: $bf
    or b                                          ; $41fa: $b0
    add hl, bc                                    ; $41fb: $09
    and [hl]                                      ; $41fc: $a6
    or h                                          ; $41fd: $b4
    add hl, bc                                    ; $41fe: $09
    ld l, d                                       ; $41ff: $6a
    inc b                                         ; $4200: $04
    db $10                                        ; $4201: $10
    push de                                       ; $4202: $d5
    add b                                         ; $4203: $80
    inc [hl]                                      ; $4204: $34
    ld [$0838], sp                                ; $4205: $08 $38 $08
    xor a                                         ; $4208: $af
    add b                                         ; $4209: $80
    inc b                                         ; $420a: $04
    db $10                                        ; $420b: $10
    ld d, l                                       ; $420c: $55
    inc bc                                        ; $420d: $03
    add $ff                                       ; $420e: $c6 $ff
    adc l                                         ; $4210: $8d
    cp $1a                                        ; $4211: $fe $1a
    nop                                           ; $4213: $00
    db $fd                                        ; $4214: $fd
    inc [hl]                                      ; $4215: $34
    ei                                            ; $4216: $fb
    ld l, b                                       ; $4217: $68
    rst $30                                       ; $4218: $f7
    ret nc                                        ; $4219: $d0

    rst $28                                       ; $421a: $ef
    and b                                         ; $421b: $a0
    add h                                         ; $421c: $84
    jr nc, jr_0a0_421f                            ; $421d: $30 $00

jr_0a0_421f:
    add e                                         ; $421f: $83
    ld a, a                                       ; $4220: $7f
    rlca                                          ; $4221: $07
    rst $38                                       ; $4222: $ff
    ld a, d                                       ; $4223: $7a
    ld [$ff3d], sp                                ; $4224: $08 $3d $ff
    ld [bc], a                                    ; $4227: $02
    ld a, e                                       ; $4228: $7b
    db $fd                                        ; $4229: $fd
    push af                                       ; $422a: $f5
    ei                                            ; $422b: $fb
    db $eb                                        ; $422c: $eb
    rst $30                                       ; $422d: $f7
    inc [hl]                                      ; $422e: $34
    ld [$b07f], sp                                ; $422f: $08 $7f $b0
    inc b                                         ; $4232: $04
    db $10                                        ; $4233: $10
    rst $38                                       ; $4234: $ff
    inc b                                         ; $4235: $04
    db $10                                        ; $4236: $10
    inc [hl]                                      ; $4237: $34
    ld [$07fb], sp                                ; $4238: $08 $fb $07
    ld d, c                                       ; $423b: $51
    rlca                                          ; $423c: $07
    db $10                                        ; $423d: $10
    ei                                            ; $423e: $fb
    rlca                                          ; $423f: $07
    ld sp, hl                                     ; $4240: $f9
    inc b                                         ; $4241: $04
    nop                                           ; $4242: $00
    ei                                            ; $4243: $fb
    rlca                                          ; $4244: $07
    ld a, a                                       ; $4245: $7f
    nop                                           ; $4246: $00
    ld a, b                                       ; $4247: $78
    ccf                                           ; $4248: $3f
    jp nz, $1452                                  ; $4249: $c2 $52 $14

    ld [$0818], sp                                ; $424c: $08 $18 $08
    and [hl]                                      ; $424f: $a6
    ld [$af53], sp                                ; $4250: $08 $53 $af
    xor e                                         ; $4253: $ab
    nop                                           ; $4254: $00

jr_0a0_4255:
    ld d, a                                       ; $4255: $57
    rst $10                                       ; $4256: $d7
    ld l, $ba                                     ; $4257: $2e $ba
    ld b, l                                       ; $4259: $45
    ld l, l                                       ; $425a: $6d
    ld [de], a                                    ; $425b: $12
    sbc $00                                       ; $425c: $de $00
    ld bc, $847b                                  ; $425e: $01 $7b $84
    db $fd                                        ; $4261: $fd
    nop                                           ; $4262: $00
    ld l, a                                       ; $4263: $6f
    db $10                                        ; $4264: $10
    rst $38                                       ; $4265: $ff
    nop                                           ; $4266: $00
    nop                                           ; $4267: $00
    or b                                          ; $4268: $b0
    ld c, a                                       ; $4269: $4f
    ld a, e                                       ; $426a: $7b
    add h                                         ; $426b: $84
    db $ed                                        ; $426c: $ed
    ld [de], a                                    ; $426d: $12
    rst $38                                       ; $426e: $ff
    nop                                           ; $426f: $00
    nop                                           ; $4270: $00
    db $dd                                        ; $4271: $dd
    ld [bc], a                                    ; $4272: $02
    ld a, e                                       ; $4273: $7b
    add b                                         ; $4274: $80
    rst $18                                       ; $4275: $df
    jr nz, @+$01                                  ; $4276: $20 $ff

    nop                                           ; $4278: $00
    nop                                           ; $4279: $00
    ld [$d5ff], a                                 ; $427a: $ea $ff $d5
    ld [$e0df], a                                 ; $427d: $ea $df $e0
    xor d                                         ; $4280: $aa
    inc bc                                        ; $4281: $03
    ret nz                                        ; $4282: $c0

    push af                                       ; $4283: $f5
    ret nz                                        ; $4284: $c0

    and b                                         ; $4285: $a0
    ret nz                                        ; $4286: $c0

    ldh [rDIV], a                                 ; $4287: $e0 $04
    nop                                           ; $4289: $00
    ldh a, [$59]                                  ; $428a: $f0 $59
    ld sp, $0303                                  ; $428c: $31 $03 $03
    jr nz, @+$1d                                  ; $428f: $20 $1b

    ld b, $20                                     ; $4291: $06 $20
    jp $c77a                                      ; $4293: $c3 $7a $c7


    inc h                                         ; $4296: $24
    ld [$28a3], sp                                ; $4297: $08 $a3 $28
    ld [$04ea], sp                                ; $429a: $08 $ea $04
    db $10                                        ; $429d: $10
    or l                                          ; $429e: $b5
    ret nz                                        ; $429f: $c0

    ld [bc], a                                    ; $42a0: $02
    ld [de], a                                    ; $42a1: $12
    inc bc                                        ; $42a2: $03
    inc b                                         ; $42a3: $04
    ld [$aa4e], sp                                ; $42a4: $08 $4e $aa
    inc b                                         ; $42a7: $04
    db $10                                        ; $42a8: $10
    ld d, [hl]                                    ; $42a9: $56
    ld bc, $0223                                  ; $42aa: $01 $23 $02
    ld a, [hl+]                                   ; $42ad: $2a
    ld a, [de]                                    ; $42ae: $1a
    ld a, d                                       ; $42af: $7a

jr_0a0_42b0:
    ld bc, $00ff                                  ; $42b0: $01 $ff $00
    rst $38                                       ; $42b3: $ff
    ld a, [hl]                                    ; $42b4: $7e
    jp $c0ea                                      ; $42b5: $c3 $ea $c0


    sub l                                         ; $42b8: $95
    ldh [$df], a                                  ; $42b9: $e0 $df
    ld e, l                                       ; $42bb: $5d
    ldh [rDIV], a                                 ; $42bc: $e0 $04
    ld [$089f], sp                                ; $42be: $08 $9f $08
    nop                                           ; $42c1: $00
    ld l, d                                       ; $42c2: $6a
    nop                                           ; $42c3: $00
    ld b, [hl]                                    ; $42c4: $46
    inc bc                                        ; $42c5: $03
    cp $04                                        ; $42c6: $fe $04
    db $10                                        ; $42c8: $10
    add b                                         ; $42c9: $80
    ld [bc], a                                    ; $42ca: $02
    jr jr_0a0_4255                                ; $42cb: $18 $88

    rst $38                                       ; $42cd: $ff
    cp e                                          ; $42ce: $bb
    call z, $ee99                                 ; $42cf: $cc $99 $ee
    sbc c                                         ; $42d2: $99
    ld a, $cc                                     ; $42d3: $3e $cc
    cp e                                          ; $42d5: $bb
    ld [bc], a                                    ; $42d6: $02
    nop                                           ; $42d7: $00
    ld [$2408], sp                                ; $42d8: $08 $08 $24
    ld [$0828], sp                                ; $42db: $08 $28 $08
    sub [hl]                                      ; $42de: $96
    ld [$03d5], sp                                ; $42df: $08 $d5 $03
    ld [$f5ca], a                                 ; $42e2: $ea $ca $f5
    cp $00                                        ; $42e5: $fe $00
    db $fc                                        ; $42e7: $fc
    and d                                         ; $42e8: $a2
    ld d, e                                       ; $42e9: $53
    and [hl]                                      ; $42ea: $a6
    dec sp                                        ; $42eb: $3b
    cpl                                           ; $42ec: $2f
    ld [hl+], a                                   ; $42ed: $22
    db $dd                                        ; $42ee: $dd
    cp l                                          ; $42ef: $bd
    dec de                                        ; $42f0: $1b
    ld [hl+], a                                   ; $42f1: $22
    jp $bf03                                      ; $42f2: $c3 $03 $bf


    inc bc                                        ; $42f5: $03
    xor d                                         ; $42f6: $aa
    ld a, [bc]                                    ; $42f7: $0a
    inc c                                         ; $42f8: $0c
    inc sp                                        ; $42f9: $33
    jp nc, $03f3                                  ; $42fa: $d2 $f3 $03

jr_0a0_42fd:
    add d                                         ; $42fd: $82
    jr nz, jr_0a0_4342                            ; $42fe: $20 $42

    ld [bc], a                                    ; $4300: $02
    nop                                           ; $4301: $00
    ld a, d                                       ; $4302: $7a
    rst $00                                       ; $4303: $c7
    ld [bc], a                                    ; $4304: $02
    ld [$a4fb], sp                                ; $4305: $08 $fb $a4

jr_0a0_4308:
    ld [bc], a                                    ; $4308: $02
    nop                                           ; $4309: $00
    ld hl, sp+$14                                 ; $430a: $f8 $14
    ld de, $ff03                                  ; $430c: $11 $03 $ff
    inc b                                         ; $430f: $04
    ld [$df23], sp                                ; $4310: $08 $23 $df
    ld a, [hl+]                                   ; $4313: $2a
    inc bc                                        ; $4314: $03
    rst $38                                       ; $4315: $ff
    ld [bc], a                                    ; $4316: $02
    ld [$0623], sp                                ; $4317: $08 $23 $06
    nop                                           ; $431a: $00
    xor e                                         ; $431b: $ab
    inc b                                         ; $431c: $04
    db $10                                        ; $431d: $10
    ld d, a                                       ; $431e: $57
    xor b                                         ; $431f: $a8
    ld c, h                                       ; $4320: $4c
    inc de                                        ; $4321: $13
    cp $40                                        ; $4322: $fe $40
    ld d, b                                       ; $4324: $50
    rst $38                                       ; $4325: $ff
    adc $03                                       ; $4326: $ce $03
    rst $30                                       ; $4328: $f7
    inc bc                                        ; $4329: $03
    ld c, b                                       ; $432a: $48
    ld b, b                                       ; $432b: $40
    add a                                         ; $432c: $87
    db $10                                        ; $432d: $10
    jr c, jr_0a0_42b0                             ; $432e: $38 $80

    rst $38                                       ; $4330: $ff
    db $fd                                        ; $4331: $fd
    ret nz                                        ; $4332: $c0

    ld [de], a                                    ; $4333: $12
    pop hl                                        ; $4334: $e1
    and [hl]                                      ; $4335: $a6
    jr nz, jr_0a0_4370                            ; $4336: $20 $38

    ld a, a                                       ; $4338: $7f
    ld b, b                                       ; $4339: $40
    ld [bc], a                                    ; $433a: $02
    inc bc                                        ; $433b: $03
    db $fc                                        ; $433c: $fc
    ld a, [c]                                     ; $433d: $f2
    jr z, jr_0a0_4308                             ; $433e: $28 $c8

    jr z, jr_0a0_42fd                             ; $4340: $28 $bb

jr_0a0_4342:
    ld [hl-], a                                   ; $4342: $32
    call z, $9288                                 ; $4343: $cc $88 $92
    dec de                                        ; $4346: $1b
    call nz, $c000                                ; $4347: $c4 $00 $c0
    rst $38                                       ; $434a: $ff
    inc b                                         ; $434b: $04
    ld [$0ac2], sp                                ; $434c: $08 $c2 $0a
    db $fd                                        ; $434f: $fd
    ret nz                                        ; $4350: $c0

    rst $38                                       ; $4351: $ff
    ret nz                                        ; $4352: $c0

    db $fc                                        ; $4353: $fc
    ld [bc], a                                    ; $4354: $02
    jp Jump_0a0_4094                              ; $4355: $c3 $94 $40


    ld a, d                                       ; $4358: $7a
    ld a, [bc]                                    ; $4359: $0a
    rst $00                                       ; $435a: $c7
    ret nz                                        ; $435b: $c0

    rst $38                                       ; $435c: $ff
    ld [c], a                                     ; $435d: $e2
    ld d, $00                                     ; $435e: $16 $00
    ld [$1004], a                                 ; $4360: $ea $04 $10
    push de                                       ; $4363: $d5
    sub b                                         ; $4364: $90
    call z, Call_0a0_7a03                         ; $4365: $cc $03 $7a
    rst $00                                       ; $4368: $c7
    ld b, d                                       ; $4369: $42
    ld e, c                                       ; $436a: $59
    ld a, d                                       ; $436b: $7a
    rst $00                                       ; $436c: $c7
    ld bc, $08ff                                  ; $436d: $01 $ff $08

jr_0a0_4370:
    db $fd                                        ; $4370: $fd
    inc bc                                        ; $4371: $03
    ld [bc], a                                    ; $4372: $02
    ld bc, $2952                                  ; $4373: $01 $52 $29
    reti                                          ; $4376: $d9


    ld h, $26                                     ; $4377: $26 $26
    nop                                           ; $4379: $00
    reti                                          ; $437a: $d9


    ei                                            ; $437b: $fb
    inc b                                         ; $437c: $04
    sbc $20                                       ; $437d: $de $20
    cp a                                          ; $437f: $bf
    nop                                           ; $4380: $00
    db $fd                                        ; $4381: $fd
    jr nz, jr_0a0_4386                            ; $4382: $20 $02

    rst $18                                       ; $4384: $df
    cp [hl]                                       ; $4385: $be

jr_0a0_4386:
    inc d                                         ; $4386: $14
    cp $00                                        ; $4387: $fe $00
    or l                                          ; $4389: $b5
    ld a, [bc]                                    ; $438a: $0a
    rst $38                                       ; $438b: $ff
    nop                                           ; $438c: $00
    nop                                           ; $438d: $00
    jp c, $7f21                                   ; $438e: $da $21 $7f

    add b                                         ; $4391: $80
    and $18                                       ; $4392: $e6 $18
    dec de                                        ; $4394: $1b
    nop                                           ; $4395: $00
    db $e4                                        ; $4396: $e4
    rst $18                                       ; $4397: $df
    jr c, jr_0a0_43d8                             ; $4398: $38 $3e

    call nz, Call_000_07e8                        ; $439a: $c4 $e8 $07

jr_0a0_439d:
    rla                                           ; $439d: $17
    nop                                           ; $439e: $00
    adc b                                         ; $439f: $88
    jp hl                                         ; $43a0: $e9


    ld [hl], b                                    ; $43a1: $70
    add [hl]                                      ; $43a2: $86
    rst $38                                       ; $43a3: $ff
    adc c                                         ; $43a4: $89
    ld sp, hl                                     ; $43a5: $f9
    jr nz, jr_0a0_43a8                            ; $43a6: $20 $00

jr_0a0_43a8:
    ld sp, hl                                     ; $43a8: $f9
    add hl, de                                    ; $43a9: $19
    ld h, $00                                     ; $43aa: $26 $00
    add hl, de                                    ; $43ac: $19
    ret nz                                        ; $43ad: $c0

    ldh a, [rP1]                                  ; $43ae: $f0 $00
    nop                                           ; $43b0: $00
    db $fd                                        ; $43b1: $fd
    sub l                                         ; $43b2: $95
    ld a, [c]                                     ; $43b3: $f2
    cp $61                                        ; $43b4: $fe $61
    add hl, sp                                    ; $43b6: $39
    ld e, $f7                                     ; $43b7: $1e $f7
    nop                                           ; $43b9: $00
    ld [$e3dc], sp                                ; $43ba: $08 $dc $e3
    and c                                         ; $43bd: $a1
    ld b, b                                       ; $43be: $40
    or l                                          ; $43bf: $b5
    ld b, b                                       ; $43c0: $40
    ld e, a                                       ; $43c1: $5f

Jump_0a0_43c2:
    nop                                           ; $43c2: $00
    ldh [$65], a                                  ; $43c3: $e0 $65
    ld a, [$7fbf]                                 ; $43c5: $fa $bf $7f
    ret nz                                        ; $43c8: $c0

    ld a, a                                       ; $43c9: $7f
    pop bc                                        ; $43ca: $c1
    nop                                           ; $43cb: $00
    ld a, [hl]                                    ; $43cc: $7e
    ld sp, hl                                     ; $43cd: $f9
    cp $74                                        ; $43ce: $fe $74
    adc b                                         ; $43d0: $88
    halt                                          ; $43d1: $76
    adc b                                         ; $43d2: $88
    xor c                                         ; $43d3: $a9
    nop                                           ; $43d4: $00
    cp $96                                        ; $43d5: $fe $96
    rst $38                                       ; $43d7: $ff

jr_0a0_43d8:
    ld c, l                                       ; $43d8: $4d
    or d                                          ; $43d9: $b2
    cp a                                          ; $43da: $bf
    ld d, b                                       ; $43db: $50
    ld e, a                                       ; $43dc: $5f
    nop                                           ; $43dd: $00
    or b                                          ; $43de: $b0
    cp a                                          ; $43df: $bf
    ld a, a                                       ; $43e0: $7f
    ld e, [hl]                                    ; $43e1: $5e
    ld hl, $21de                                  ; $43e2: $21 $de $21
    ld d, l                                       ; $43e5: $55
    nop                                           ; $43e6: $00
    cp a                                          ; $43e7: $bf
    and c                                         ; $43e8: $a1

jr_0a0_43e9:
    rst $18                                       ; $43e9: $df
    jr jr_0a0_439d                                ; $43ea: $18 $b1

    and b                                         ; $43ec: $a0
    db $10                                        ; $43ed: $10
    db $ec                                        ; $43ee: $ec
    nop                                           ; $43ef: $00
    db $10                                        ; $43f0: $10
    ld a, [hl]                                    ; $43f1: $7e
    rst $38                                       ; $43f2: $ff
    rst $20                                       ; $43f3: $e7
    inc a                                         ; $43f4: $3c
    and l                                         ; $43f5: $a5
    ld a, [hl]                                    ; $43f6: $7e
    ld a, h                                       ; $43f7: $7c
    add b                                         ; $43f8: $80
    ld a, [hl+]                                   ; $43f9: $2a
    ld bc, $23dd                                  ; $43fa: $01 $dd $23
    sbc a                                         ; $43fd: $9f
    ldh [$67], a                                  ; $43fe: $e0 $67
    jr c, jr_0a0_441a                             ; $4400: $38 $18

    nop                                           ; $4402: $00
    rst $38                                       ; $4403: $ff
    db $fc                                        ; $4404: $fc
    db $10                                        ; $4405: $10
    cp $10                                        ; $4406: $fe $10
    rst $28                                       ; $4408: $ef
    db $10                                        ; $4409: $10
    rst $08                                       ; $440a: $cf
    nop                                           ; $440b: $00
    rst $38                                       ; $440c: $ff
    db $ed                                        ; $440d: $ed
    inc sp                                        ; $440e: $33
    push hl                                       ; $440f: $e5
    dec sp                                        ; $4410: $3b
    ret nz                                        ; $4411: $c0

    ccf                                           ; $4412: $3f
    sbc $00                                       ; $4413: $de $00
    rst $38                                       ; $4415: $ff
    cp h                                          ; $4416: $bc
    ld b, e                                       ; $4417: $43
    rst $38                                       ; $4418: $ff
    ld b, c                                       ; $4419: $41

jr_0a0_441a:
    db $dd                                        ; $441a: $dd
    ld h, e                                       ; $441b: $63
    call z, $ff00                                 ; $441c: $cc $00 $ff
    db $fd                                        ; $441f: $fd
    ld b, $fe                                     ; $4420: $06 $fe
    dec b                                         ; $4422: $05
    ld sp, hl                                     ; $4423: $f9
    ld b, $7b                                     ; $4424: $06 $7b
    nop                                           ; $4426: $00
    rst $38                                       ; $4427: $ff
    ld d, h                                       ; $4428: $54
    xor e                                         ; $4429: $ab
    xor e                                         ; $442a: $ab
    ld d, l                                       ; $442b: $55
    ld d, l                                       ; $442c: $55
    xor e                                         ; $442d: $ab
    ld h, a                                       ; $442e: $67
    nop                                           ; $442f: $00
    rst $38                                       ; $4430: $ff
    ld a, [hl]                                    ; $4431: $7e
    and h                                         ; $4432: $a4
    cp e                                          ; $4433: $bb
    ld h, h                                       ; $4434: $64
    ld e, e                                       ; $4435: $5b
    and h                                         ; $4436: $a4
    cpl                                           ; $4437: $2f
    nop                                           ; $4438: $00
    rst $38                                       ; $4439: $ff
    ld [hl], e                                    ; $443a: $73
    adc h                                         ; $443b: $8c
    inc de                                        ; $443c: $13
    db $ec                                        ; $443d: $ec
    rlca                                          ; $443e: $07
    db $fc                                        ; $443f: $fc
    scf                                           ; $4440: $37
    ld [$7fff], sp                                ; $4441: $08 $ff $7f
    ld hl, $5a7e                                  ; $4444: $21 $7e $5a
    nop                                           ; $4447: $00
    cp e                                          ; $4448: $bb
    rst $00                                       ; $4449: $c7
    add l                                         ; $444a: $85
    nop                                           ; $444b: $00
    ld [bc], a                                    ; $444c: $02
    call nc, Call_0a0_6c03                        ; $444d: $d4 $03 $6c
    add e                                         ; $4450: $83
    push de                                       ; $4451: $d5
    db $eb                                        ; $4452: $eb
    ei                                            ; $4453: $fb
    nop                                           ; $4454: $00
    db $fc                                        ; $4455: $fc
    rla                                           ; $4456: $17
    xor b                                         ; $4457: $a8
    ld h, a                                       ; $4458: $67
    jr c, jr_0a0_43e9                             ; $4459: $38 $8e

    pop af                                        ; $445b: $f1
    or b                                          ; $445c: $b0
    nop                                           ; $445d: $00
    ld b, b                                       ; $445e: $40

jr_0a0_445f:
    cp [hl]                                       ; $445f: $be
    ret nz                                        ; $4460: $c0

    ld c, a                                       ; $4461: $4f
    ldh a, [$3d]                                  ; $4462: $f0 $3d
    rst $38                                       ; $4464: $ff
    adc e                                         ; $4465: $8b
    inc b                                         ; $4466: $04
    halt                                          ; $4467: $76
    ret                                           ; $4468: $c9


    ld [hl], a                                    ; $4469: $77
    pop bc                                        ; $446a: $c1
    ld a, [hl]                                    ; $446b: $7e
    ld [hl], b                                    ; $446c: $70
    jr z, jr_0a0_4486                             ; $446d: $28 $17

    rst $38                                       ; $446f: $ff
    nop                                           ; $4470: $00
    call $bf33                                    ; $4471: $cd $33 $bf
    ret nc                                        ; $4474: $d0

    ld e, a                                       ; $4475: $5f
    or b                                          ; $4476: $b0
    ld [hl], e                                    ; $4477: $73
    adc a                                         ; $4478: $8f
    nop                                           ; $4479: $00
    rst $00                                       ; $447a: $c7
    ld bc, $01b3                                  ; $447b: $01 $b3 $01
    db $ed                                        ; $447e: $ed
    inc bc                                        ; $447f: $03
    ld a, [hl+]                                   ; $4480: $2a
    rst $10                                       ; $4481: $d7
    nop                                           ; $4482: $00
    add sp, -$02                                  ; $4483: $e8 $fe
    nop                                           ; $4485: $00

jr_0a0_4486:
    cp b                                          ; $4486: $b8
    db $ec                                        ; $4487: $ec
    db $10                                        ; $4488: $10
    ld a, [$00fd]                                 ; $4489: $fa $fd $00
    ld l, c                                       ; $448c: $69
    sub b                                         ; $448d: $90
    ccf                                           ; $448e: $3f
    ret nc                                        ; $448f: $d0

    ld d, l                                       ; $4490: $55
    ld a, [$ffec]                                 ; $4491: $fa $ec $ff
    nop                                           ; $4494: $00
    dec d                                         ; $4495: $15
    ld a, [hl+]                                   ; $4496: $2a
    rra                                           ; $4497: $1f
    jr nz, jr_0a0_4501                            ; $4498: $20 $67

Jump_0a0_449a:
    jr c, jr_0a0_445f                             ; $449a: $38 $c3

    rst $38                                       ; $449c: $ff
    nop                                           ; $449d: $00
    ld h, l                                       ; $449e: $65
    add d                                         ; $449f: $82
    sub l                                         ; $44a0: $95
    db $eb                                        ; $44a1: $eb
    ld [hl], e                                    ; $44a2: $73
    db $fc                                        ; $44a3: $fc
    ld h, $ff                                     ; $44a4: $26 $ff
    db $10                                        ; $44a6: $10
    sbc e                                         ; $44a7: $9b
    ld h, [hl]                                    ; $44a8: $66
    jp z, VBlankInterrupt                         ; $44a9: $ca $40 $00

    db $ed                                        ; $44ac: $ed
    di                                            ; $44ad: $f3
    and d                                         ; $44ae: $a2
    ld b, c                                       ; $44af: $41
    nop                                           ; $44b0: $00
    halt                                          ; $44b1: $76
    pop bc                                        ; $44b2: $c1
    ld c, d                                       ; $44b3: $4a
    push af                                       ; $44b4: $f5
    dec a                                         ; $44b5: $3d
    rst $38                                       ; $44b6: $ff
    ld b, l                                       ; $44b7: $45
    cp d                                          ; $44b8: $ba
    add b                                         ; $44b9: $80
    ret nc                                        ; $44ba: $d0

    ld [$fcfb], sp                                ; $44bb: $08 $fb $fc
    sub [hl]                                      ; $44be: $96
    ld [$08f7], sp                                ; $44bf: $08 $f7 $08
    db $db                                        ; $44c2: $db
    nop                                           ; $44c3: $00
    db $fc                                        ; $44c4: $fc
    add sp, -$01                                  ; $44c5: $e8 $ff
    ld [hl], $1f                                  ; $44c7: $36 $1f
    and b                                         ; $44c9: $a0
    dec d                                         ; $44ca: $15
    db $ec                                        ; $44cb: $ec
    ld [bc], a                                    ; $44cc: $02
    db $10                                        ; $44cd: $10
    rst $00                                       ; $44ce: $c7
    ccf                                           ; $44cf: $3f
    ld b, $01                                     ; $44d0: $06 $01
    add d                                         ; $44d2: $82
    jp z, $ba05                                   ; $44d3: $ca $05 $ba

    ld [bc], a                                    ; $44d6: $02
    ld b, l                                       ; $44d7: $45
    xor c                                         ; $44d8: $a9
    cp $0b                                        ; $44d9: $fe $0b
    ld [hl], h                                    ; $44db: $74
    ld h, a                                       ; $44dc: $67
    sub c                                         ; $44dd: $91
    inc b                                         ; $44de: $04
    adc h                                         ; $44df: $8c
    ld c, h                                       ; $44e0: $4c
    rst $38                                       ; $44e1: $ff
    add b                                         ; $44e2: $80
    ld c, e                                       ; $44e3: $4b
    rst $38                                       ; $44e4: $ff
    rst $38                                       ; $44e5: $ff
    add b                                         ; $44e6: $80
    ld e, e                                       ; $44e7: $5b
    db $10                                        ; $44e8: $10
    ld [$7f8f], sp                                ; $44e9: $08 $8f $7f
    or b                                          ; $44ec: $b0
    ld a, [bc]                                    ; $44ed: $0a
    inc c                                         ; $44ee: $0c
    ld a, a                                       ; $44ef: $7f
    ld l, d                                       ; $44f0: $6a
    dec d                                         ; $44f1: $15
    and b                                         ; $44f2: $a0
    dec de                                        ; $44f3: $1b
    ld e, $ff                                     ; $44f4: $1e $ff
    dec a                                         ; $44f6: $3d
    cp $40                                        ; $44f7: $fe $40
    ld a, d                                       ; $44f9: $7a
    and b                                         ; $44fa: $a0
    inc de                                        ; $44fb: $13
    rst $10                                       ; $44fc: $d7
    rst $28                                       ; $44fd: $ef
    xor l                                         ; $44fe: $ad
    rst $18                                       ; $44ff: $df
    ld e, e                                       ; $4500: $5b

jr_0a0_4501:
    cp a                                          ; $4501: $bf
    inc d                                         ; $4502: $14
    or a                                          ; $4503: $b7
    ld a, a                                       ; $4504: $7f
    ld l, a                                       ; $4505: $6f
    ld [$7f14], sp                                ; $4506: $08 $14 $7f
    ld a, $02                                     ; $4509: $3e $02
    db $fd                                        ; $450b: $fd
    cp $00                                        ; $450c: $fe $00
    ld a, [$f5fd]                                 ; $450e: $fa $fd $f5
    ld a, [$f5ea]                                 ; $4511: $fa $ea $f5
    call nc, Call_0a0_72eb                        ; $4514: $d4 $eb $72
    xor b                                         ; $4517: $a8
    db $10                                        ; $4518: $10
    dec b                                         ; $4519: $05
    ld [hl], b                                    ; $451a: $70
    inc c                                         ; $451b: $0c
    sub b                                         ; $451c: $90
    ld l, d                                       ; $451d: $6a
    ld [hl], d                                    ; $451e: $72
    rst $08                                       ; $451f: $cf
    ld [bc], a                                    ; $4520: $02
    ld [$80f3], sp                                ; $4521: $08 $f3 $80
    ld [bc], a                                    ; $4524: $02
    nop                                           ; $4525: $00
    ldh a, [rIF]                                  ; $4526: $f0 $0f
    ldh a, [rIF]                                  ; $4528: $f0 $0f
    ld hl, sp+$07                                 ; $452a: $f8 $07
    or b                                          ; $452c: $b0
    add b                                         ; $452d: $80
    inc b                                         ; $452e: $04
    nop                                           ; $452f: $00
    ret c                                         ; $4530: $d8

    daa                                           ; $4531: $27
    ld a, b                                       ; $4532: $78
    add a                                         ; $4533: $87
    ldh [$1f], a                                  ; $4534: $e0 $1f
    jr jr_0a0_4538                                ; $4536: $18 $00

jr_0a0_4538:
    rst $20                                       ; $4538: $e7
    jr jr_0a0_4562                                ; $4539: $18 $27

    inc b                                         ; $453b: $04
    dec de                                        ; $453c: $1b
    jp nz, Jump_000_00f1                          ; $453d: $c2 $f1 $00

Jump_0a0_4540:
    nop                                           ; $4540: $00
    rst $38                                       ; $4541: $ff
    sub h                                         ; $4542: $94
    di                                            ; $4543: $f3
    db $fc                                        ; $4544: $fc
    ld h, e                                       ; $4545: $63
    jr c, jr_0a0_4567                             ; $4546: $38 $1f

    db $f4                                        ; $4548: $f4
    ld b, [hl]                                    ; $4549: $46
    dec bc                                        ; $454a: $0b
    or b                                          ; $454b: $b0
    add hl, bc                                    ; $454c: $09
    or c                                          ; $454d: $b1
    ld b, b                                       ; $454e: $40
    ld e, e                                       ; $454f: $5b
    or b                                          ; $4550: $b0
    ld sp, $0940                                  ; $4551: $31 $40 $09
    call nz, Call_0a0_40ca                        ; $4554: $c4 $ca $40
    ld b, c                                       ; $4557: $41
    ldh a, [$5d]                                  ; $4558: $f0 $5d
    adc b                                         ; $455a: $88
    rst $38                                       ; $455b: $ff
    db $10                                        ; $455c: $10
    ld e, [hl]                                    ; $455d: $5e
    db $e3                                        ; $455e: $e3
    ld [de], a                                    ; $455f: $12
    nop                                           ; $4560: $00
    dec sp                                        ; $4561: $3b

jr_0a0_4562:
    or b                                          ; $4562: $b0
    ld h, b                                       ; $4563: $60
    inc bc                                        ; $4564: $03
    add hl, de                                    ; $4565: $19
    ld h, b                                       ; $4566: $60

jr_0a0_4567:
    inc bc                                        ; $4567: $03
    ld [$af18], sp                                ; $4568: $08 $18 $af
    rst $38                                       ; $456b: $ff
    sbc a                                         ; $456c: $9f
    rst $38                                       ; $456d: $ff
    rst $38                                       ; $456e: $ff
    inc b                                         ; $456f: $04
    ld c, b                                       ; $4570: $48
    ld l, h                                       ; $4571: $6c
    ld c, e                                       ; $4572: $4b
    ld [hl], b                                    ; $4573: $70
    dec bc                                        ; $4574: $0b
    ldh a, [$5d]                                  ; $4575: $f0 $5d
    ld a, [c]                                     ; $4577: $f2
    dec c                                         ; $4578: $0d
    ld [bc], a                                    ; $4579: $02
    ld e, b                                       ; $457a: $58

Jump_0a0_457b:
    ld b, e                                       ; $457b: $43
    daa                                           ; $457c: $27
    ld d, [hl]                                    ; $457d: $56
    rlca                                          ; $457e: $07
    rst $38                                       ; $457f: $ff
    inc b                                         ; $4580: $04
    ld [$0731], sp                                ; $4581: $08 $31 $07
    add b                                         ; $4584: $80
    ld h, $ef                                     ; $4585: $26 $ef
    dec bc                                        ; $4587: $0b
    ld [hl], $27                                  ; $4588: $36 $27
    ld d, b                                       ; $458a: $50
    rrca                                          ; $458b: $0f
    ld [hl], $34                                  ; $458c: $36 $34
    ret nz                                        ; $458e: $c0

    dec bc                                        ; $458f: $0b
    ei                                            ; $4590: $fb
    cp h                                          ; $4591: $bc
    ld b, e                                       ; $4592: $43
    add b                                         ; $4593: $80
    rra                                           ; $4594: $1f
    db $10                                        ; $4595: $10
    ld b, b                                       ; $4596: $40
    ret nz                                        ; $4597: $c0

    inc c                                         ; $4598: $0c
    call c, $0143                                 ; $4599: $dc $43 $01
    db $ec                                        ; $459c: $ec

jr_0a0_459d:
    ld l, e                                       ; $459d: $6b
    cp b                                          ; $459e: $b8
    jr z, jr_0a0_459d                             ; $459f: $28 $fc

    ld d, b                                       ; $45a1: $50
    dec hl                                        ; $45a2: $2b
    ret nz                                        ; $45a3: $c0

    jr c, jr_0a0_4601                             ; $45a4: $38 $5b

    ld bc, $06fc                                  ; $45a6: $01 $fc $06
    ld e, h                                       ; $45a9: $5c
    ld c, e                                       ; $45aa: $4b
    ld c, d                                       ; $45ab: $4a
    dec bc                                        ; $45ac: $0b
    adc [hl]                                      ; $45ad: $8e
    ret nz                                        ; $45ae: $c0

    nop                                           ; $45af: $00
    and l                                         ; $45b0: $a5

jr_0a0_45b1:
    ret nz                                        ; $45b1: $c0

    sub h                                         ; $45b2: $94
    db $eb                                        ; $45b3: $eb
    rst $38                                       ; $45b4: $ff
    rst $38                                       ; $45b5: $ff
    sub h                                         ; $45b6: $94
    ret nz                                        ; $45b7: $c0

    ld b, l                                       ; $45b8: $45
    and e                                         ; $45b9: $a3
    ld [$3810], sp                                ; $45ba: $08 $10 $38
    nop                                           ; $45bd: $00
    ld e, l                                       ; $45be: $5d
    ret z                                         ; $45bf: $c8

    rla                                           ; $45c0: $17
    add [hl]                                      ; $45c1: $86
    cp $07                                        ; $45c2: $fe $07
    nop                                           ; $45c4: $00
    sub h                                         ; $45c5: $94
    ld l, e                                       ; $45c6: $6b
    rst $38                                       ; $45c7: $ff
    rst $38                                       ; $45c8: $ff
    sub c                                         ; $45c9: $91
    cpl                                           ; $45ca: $2f
    pop hl                                        ; $45cb: $e1
    rra                                           ; $45cc: $1f
    add e                                         ; $45cd: $83
    sub [hl]                                      ; $45ce: $96
    add hl, bc                                    ; $45cf: $09
    ld hl, $511f                                  ; $45d0: $21 $1f $51
    cpl                                           ; $45d3: $2f
    and c                                         ; $45d4: $a1
    rrca                                          ; $45d5: $0f
    ld b, $7a                                     ; $45d6: $06 $7a
    dec hl                                        ; $45d8: $2b
    ld b, d                                       ; $45d9: $42
    ei                                            ; $45da: $fb
    or $07                                        ; $45db: $f6 $07
    dec b                                         ; $45dd: $05
    ld a, [$f50a]                                 ; $45de: $fa $0a $f5
    jr nz, jr_0a0_462b                            ; $45e1: $20 $48

    xor c                                         ; $45e3: $a9
    add d                                         ; $45e4: $82
    ld de, $f014                                  ; $45e5: $11 $14 $f0
    rst $38                                       ; $45e8: $ff
    rst $38                                       ; $45e9: $ff
    ld hl, sp+$02                                 ; $45ea: $f8 $02
    ldh [$33], a                                  ; $45ec: $e0 $33
    and a                                         ; $45ee: $a7
    db $10                                        ; $45ef: $10
    ld bc, $01eb                                  ; $45f0: $01 $eb $01
    sub $09                                       ; $45f3: $d6 $09
    inc bc                                        ; $45f5: $03
    ld bc, $0157                                  ; $45f6: $01 $57 $01
    call nc, $0820                                ; $45f9: $d4 $20 $08
    jr nz, @+$11                                  ; $45fc: $20 $0f

    ld b, b                                       ; $45fe: $40
    and d                                         ; $45ff: $a2
    dec b                                         ; $4600: $05

jr_0a0_4601:
    ld c, c                                       ; $4601: $49
    and [hl]                                      ; $4602: $a6
    dec b                                         ; $4603: $05
    ld a, a                                       ; $4604: $7f
    add b                                         ; $4605: $80
    and e                                         ; $4606: $a3
    ld [bc], a                                    ; $4607: $02
    add hl, bc                                    ; $4608: $09
    ld d, l                                       ; $4609: $55
    dec de                                        ; $460a: $1b
    ld bc, $00ff                                  ; $460b: $01 $ff $00
    add e                                         ; $460e: $83
    sub [hl]                                      ; $460f: $96
    ld e, $48                                     ; $4610: $1e $48
    rlca                                          ; $4612: $07
    dec d                                         ; $4613: $15
    ld d, h                                       ; $4614: $54
    xor e                                         ; $4615: $ab
    ld [bc], a                                    ; $4616: $02
    ld a, [c]                                     ; $4617: $f2
    inc b                                         ; $4618: $04
    ld e, $f2                                     ; $4619: $1e $f2
    inc d                                         ; $461b: $14
    ld d, l                                       ; $461c: $55
    xor h                                         ; $461d: $ac
    inc c                                         ; $461e: $0c
    jp nz, $34bc                                  ; $461f: $c2 $bc $34

    cp d                                          ; $4622: $ba
    ld c, h                                       ; $4623: $4c
    xor d                                         ; $4624: $aa
    rst $38                                       ; $4625: $ff
    or l                                          ; $4626: $b5
    ld b, b                                       ; $4627: $40
    jr nz, jr_0a0_4630                            ; $4628: $20 $06

    nop                                           ; $462a: $00

jr_0a0_462b:
    add d                                         ; $462b: $82
    db $10                                        ; $462c: $10
    jr c, jr_0a0_45b1                             ; $462d: $38 $82

    nop                                           ; $462f: $00

jr_0a0_4630:
    ld bc, $0200                                  ; $4630: $01 $00 $02
    db $10                                        ; $4633: $10
    ld b, b                                       ; $4634: $40
    cp d                                          ; $4635: $ba
    ld [$5d05], sp                                ; $4636: $08 $05 $5d
    ld [bc], a                                    ; $4639: $02
    xor e                                         ; $463a: $ab
    jr nz, jr_0a0_463d                            ; $463b: $20 $00

jr_0a0_463d:
    dec d                                         ; $463d: $15
    ld a, [$00a3]                                 ; $463e: $fa $a3 $00
    db $fc                                        ; $4641: $fc
    ld b, l                                       ; $4642: $45
    ld a, [$f78d]                                 ; $4643: $fa $8d $f7
    rrca                                          ; $4646: $0f
    rst $28                                       ; $4647: $ef
    sbc a                                         ; $4648: $9f
    db $10                                        ; $4649: $10
    ld e, a                                       ; $464a: $5f
    cp a                                          ; $464b: $bf
    ccf                                           ; $464c: $3f
    adc d                                         ; $464d: $8a
    nop                                           ; $464e: $00
    rst $38                                       ; $464f: $ff
    rst $28                                       ; $4650: $ef
    rlca                                          ; $4651: $07
    db $10                                        ; $4652: $10
    ld d, d                                       ; $4653: $52
    rrca                                          ; $4654: $0f
    or b                                          ; $4655: $b0
    inc a                                         ; $4656: $3c
    ret nz                                        ; $4657: $c0

    ld [hl], e                                    ; $4658: $73
    rlca                                          ; $4659: $07
    ld [$c0f0], sp                                ; $465a: $08 $f0 $c0
    inc a                                         ; $465d: $3c
    rrca                                          ; $465e: $0f
    inc b                                         ; $465f: $04
    rst $38                                       ; $4660: $ff
    cp a                                          ; $4661: $bf
    rra                                           ; $4662: $1f
    ld b, b                                       ; $4663: $40
    ccf                                           ; $4664: $3f
    ret nc                                        ; $4665: $d0

    inc a                                         ; $4666: $3c
    nop                                           ; $4667: $00
    rst $38                                       ; $4668: $ff
    rrca                                          ; $4669: $0f
    cp $80                                        ; $466a: $fe $80
    ld hl, $a2c0                                  ; $466c: $21 $c0 $a2
    dec l                                         ; $466f: $2d
    jr nc, jr_0a0_469b                            ; $4670: $30 $29

    jr c, jr_0a0_469d                             ; $4672: $38 $29

    jr nc, jr_0a0_469f                            ; $4674: $30 $29

    or $38                                        ; $4676: $f6 $38
    add hl, hl                                    ; $4678: $29
    ldh a, [$28]                                  ; $4679: $f0 $28
    ld hl, sp+$28                                 ; $467b: $f8 $28
    ld e, b                                       ; $467d: $58
    add hl, hl                                    ; $467e: $29
    inc a                                         ; $467f: $3c
    or b                                          ; $4680: $b0
    inc hl                                        ; $4681: $23
    ld e, b                                       ; $4682: $58
    add hl, hl                                    ; $4683: $29
    ld d, $c8                                     ; $4684: $16 $c8
    or b                                          ; $4686: $b0
    inc hl                                        ; $4687: $23
    jr jr_0a0_46b3                                ; $4688: $18 $29

    ld a, [hl+]                                   ; $468a: $2a
    push de                                       ; $468b: $d5
    or b                                          ; $468c: $b0
    dec hl                                        ; $468d: $2b
    jp hl                                         ; $468e: $e9


    db $10                                        ; $468f: $10
    rst $38                                       ; $4690: $ff
    ld b, b                                       ; $4691: $40
    db $10                                        ; $4692: $10
    or b                                          ; $4693: $b0
    dec sp                                        ; $4694: $3b
    adc [hl]                                      ; $4695: $8e
    rst $38                                       ; $4696: $ff
    cp $44                                        ; $4697: $fe $44
    ld hl, sp+$44                                 ; $4699: $f8 $44

jr_0a0_469b:
    inc b                                         ; $469b: $04
    cp e                                          ; $469c: $bb

jr_0a0_469d:
    ld b, h                                       ; $469d: $44
    dec de                                        ; $469e: $1b

jr_0a0_469f:
    rst $38                                       ; $469f: $ff
    db $fd                                        ; $46a0: $fd
    ld c, b                                       ; $46a1: $48
    inc b                                         ; $46a2: $04
    rst $20                                       ; $46a3: $e7
    jr jr_0a0_46a6                                ; $46a4: $18 $00

jr_0a0_46a6:
    ld sp, $34ff                                  ; $46a6: $31 $ff $34
    jr nz, jr_0a0_46ea                            ; $46a9: $20 $3f

    jr nz, jr_0a0_46cc                            ; $46ab: $20 $1f

    jr nz, jr_0a0_46bf                            ; $46ad: $20 $10

    adc a                                         ; $46af: $8f
    rst $38                                       ; $46b0: $ff
    pop bc                                        ; $46b1: $c1
    sub b                                         ; $46b2: $90

jr_0a0_46b3:
    inc b                                         ; $46b3: $04
    add b                                         ; $46b4: $80
    ld a, a                                       ; $46b5: $7f
    db $dd                                        ; $46b6: $dd
    rst $38                                       ; $46b7: $ff
    nop                                           ; $46b8: $00
    adc [hl]                                      ; $46b9: $8e
    ld [hl], c                                    ; $46ba: $71
    jp nz, $c07d                                  ; $46bb: $c2 $7d $c0

    ld a, a                                       ; $46be: $7f

jr_0a0_46bf:
    ld e, h                                       ; $46bf: $5c
    rst $38                                       ; $46c0: $ff
    nop                                           ; $46c1: $00
    add d                                         ; $46c2: $82
    ld bc, $0101                                  ; $46c3: $01 $01 $01
    add e                                         ; $46c6: $83
    ld bc, $ffcc                                  ; $46c7: $01 $cc $ff
    nop                                           ; $46ca: $00
    ld d, a                                       ; $46cb: $57

jr_0a0_46cc:
    xor b                                         ; $46cc: $a8
    daa                                           ; $46cd: $27
    ret c                                         ; $46ce: $d8

    rst $18                                       ; $46cf: $df
    xor b                                         ; $46d0: $a8
    and $ff                                       ; $46d1: $e6 $ff
    nop                                           ; $46d3: $00
    ld a, a                                       ; $46d4: $7f
    add h                                         ; $46d5: $84
    rst $38                                       ; $46d6: $ff
    inc b                                         ; $46d7: $04
    dec sp                                        ; $46d8: $3b
    call nz, $ffcf                                ; $46d9: $c4 $cf $ff
    nop                                           ; $46dc: $00
    rra                                           ; $46dd: $1f
    ld [$080f], sp                                ; $46de: $08 $0f $08
    ld d, e                                       ; $46e1: $53
    inc c                                         ; $46e2: $0c
    and $ff                                       ; $46e3: $e6 $ff
    nop                                           ; $46e5: $00
    db $e4                                        ; $46e6: $e4
    ld b, e                                       ; $46e7: $43
    rst $30                                       ; $46e8: $f7
    ld b, d                                       ; $46e9: $42

jr_0a0_46ea:
    cp [hl]                                       ; $46ea: $be

jr_0a0_46eb:
    ld b, e                                       ; $46eb: $43
    jr c, @+$01                                   ; $46ec: $38 $ff

    nop                                           ; $46ee: $00
    rst $20                                       ; $46ef: $e7
    add d                                         ; $46f0: $82
    rst $38                                       ; $46f1: $ff
    add d                                         ; $46f2: $82
    ld a, l                                       ; $46f3: $7d
    add d                                         ; $46f4: $82
    ld [hl], c                                    ; $46f5: $71
    rst $38                                       ; $46f6: $ff
    nop                                           ; $46f7: $00
    ret c                                         ; $46f8: $d8

    jr nc, jr_0a0_46eb                            ; $46f9: $30 $f0

    db $10                                        ; $46fb: $10
    xor b                                         ; $46fc: $a8
    ld d, b                                       ; $46fd: $50
    db $fc                                        ; $46fe: $fc
    rst $38                                       ; $46ff: $ff
    nop                                           ; $4700: $00
    and l                                         ; $4701: $a5
    ld [bc], a                                    ; $4702: $02
    rst $30                                       ; $4703: $f7
    ld [bc], a                                    ; $4704: $02
    rst $38                                       ; $4705: $ff

jr_0a0_4706:
    ld [bc], a                                    ; $4706: $02
    jp hl                                         ; $4707: $e9


    rst $38                                       ; $4708: $ff
    nop                                           ; $4709: $00
    dec b                                         ; $470a: $05
    ld a, [de]                                    ; $470b: $1a
    db $10                                        ; $470c: $10
    rra                                           ; $470d: $1f
    ld [hl], b                                    ; $470e: $70
    rra                                           ; $470f: $1f
    di                                            ; $4710: $f3
    rst $38                                       ; $4711: $ff
    nop                                           ; $4712: $00
    ld c, d                                       ; $4713: $4a
    inc b                                         ; $4714: $04
    db $ec                                        ; $4715: $ec
    inc b                                         ; $4716: $04
    cp $04                                        ; $4717: $fe $04

jr_0a0_4719:
    db $fd                                        ; $4719: $fd
    rst $38                                       ; $471a: $ff
    nop                                           ; $471b: $00
    cp a                                          ; $471c: $bf
    ld h, b                                       ; $471d: $60
    cp a                                          ; $471e: $bf
    ld h, b                                       ; $471f: $60
    rra                                           ; $4720: $1f
    ldh [$39], a                                  ; $4721: $e0 $39
    rst $38                                       ; $4723: $ff

jr_0a0_4724:
    nop                                           ; $4724: $00
    rst $20                                       ; $4725: $e7
    jr jr_0a0_4719                                ; $4726: $18 $f1

    ld e, $f0                                     ; $4728: $1e $f0
    rra                                           ; $472a: $1f
    adc $ff                                       ; $472b: $ce $ff
    nop                                           ; $472d: $00
    cp $21                                        ; $472e: $fe $21
    rst $38                                       ; $4730: $ff
    ld hl, $31cf                                  ; $4731: $21 $cf $31
    add a                                         ; $4734: $87
    rst $38                                       ; $4735: $ff
    db $10                                        ; $4736: $10
    ccf                                           ; $4737: $3f
    pop bc                                        ; $4738: $c1
    ld a, [hl]                                    ; $4739: $7e
    ld [bc], a                                    ; $473a: $02
    nop                                           ; $473b: $00
    inc e                                         ; $473c: $1c
    rst $38                                       ; $473d: $ff
    ld d, d                                       ; $473e: $52
    xor h                                         ; $473f: $ac
    inc b                                         ; $4740: $04
    xor a                                         ; $4741: $af
    ld d, h                                       ; $4742: $54
    ld d, a                                       ; $4743: $57
    xor h                                         ; $4744: $ac
    rst $08                                       ; $4745: $cf
    ret nz                                        ; $4746: $c0

    inc h                                         ; $4747: $24
    ld hl, sp-$01                                 ; $4748: $f8 $ff
    nop                                           ; $474a: $00
    ld e, a                                       ; $474b: $5f
    inc h                                         ; $474c: $24
    ld a, a                                       ; $474d: $7f
    inc h                                         ; $474e: $24
    ei                                            ; $474f: $fb
    inc h                                         ; $4750: $24
    sbc [hl]                                      ; $4751: $9e
    rst $38                                       ; $4752: $ff
    ld bc, $0487                                  ; $4753: $01 $87 $04
    rlca                                          ; $4756: $07
    inc b                                         ; $4757: $04
    xor e                                         ; $4758: $ab
    inc b                                         ; $4759: $04
    db $e3                                        ; $475a: $e3
    jr nc, jr_0a0_476d                            ; $475b: $30 $10

    db $10                                        ; $475d: $10
    rst $18                                       ; $475e: $df
    ld hl, $c08f                                  ; $475f: $21 $8f $c0
    nop                                           ; $4762: $00
    db $fc                                        ; $4763: $fc
    ld b, h                                       ; $4764: $44
    cp d                                          ; $4765: $ba
    ld b, h                                       ; $4766: $44
    db $10                                        ; $4767: $10
    ld de, $eaff                                  ; $4768: $11 $ff $ea
    ret c                                         ; $476b: $d8

    nop                                           ; $476c: $00

jr_0a0_476d:
    rst $38                                       ; $476d: $ff
    db $10                                        ; $476e: $10
    ld [hl], e                                    ; $476f: $73
    rst $38                                       ; $4770: $ff
    ld b, b                                       ; $4771: $40
    rra                                           ; $4772: $1f
    ret nz                                        ; $4773: $c0

    nop                                           ; $4774: $00
    ld a, a                                       ; $4775: $7f
    jr nz, jr_0a0_4706                            ; $4776: $20 $8e

    rst $38                                       ; $4778: $ff
    and a                                         ; $4779: $a7
    ld b, c                                       ; $477a: $41
    nop                                           ; $477b: $00
    ld a, a                                       ; $477c: $7f
    ld b, c                                       ; $477d: $41
    call z, $9173                                 ; $477e: $cc $73 $91
    rst $38                                       ; $4781: $ff
    sbc h                                         ; $4782: $9c
    ld h, e                                       ; $4783: $63
    ld b, c                                       ; $4784: $41
    ret nz                                        ; $4785: $c0

    ld e, d                                       ; $4786: $5a
    dec b                                         ; $4787: $05
    ld a, $ff                                     ; $4788: $3e $ff
    jp z, $fa01                                   ; $478a: $ca $01 $fa

    ld [$0006], a                                 ; $478d: $ea $06 $00
    sbc b                                         ; $4790: $98
    rst $38                                       ; $4791: $ff
    rst $00                                       ; $4792: $c7
    jr c, jr_0a0_4724                             ; $4793: $38 $8f

    ld a, b                                       ; $4795: $78
    rlca                                          ; $4796: $07
    ld hl, sp+$00                                 ; $4797: $f8 $00
    inc sp                                        ; $4799: $33
    rst $38                                       ; $479a: $ff
    add e                                         ; $479b: $83
    inc b                                         ; $479c: $04
    inc bc                                        ; $479d: $03
    inc b                                         ; $479e: $04
    adc e                                         ; $479f: $8b
    inc b                                         ; $47a0: $04
    inc b                                         ; $47a1: $04
    rst $00                                       ; $47a2: $c7
    rst $38                                       ; $47a3: $ff
    sbc a                                         ; $47a4: $9f
    ld [$92df], sp                                ; $47a5: $08 $df $92
    inc b                                         ; $47a8: $04
    and $ff                                       ; $47a9: $e6 $ff
    nop                                           ; $47ab: $00
    call nc, $a86b                                ; $47ac: $d4 $6b $a8
    ld d, a                                       ; $47af: $57
    sub [hl]                                      ; $47b0: $96
    ld l, e                                       ; $47b1: $6b
    ld e, $ff                                     ; $47b2: $1e $ff
    nop                                           ; $47b4: $00
    ld d, [hl]                                    ; $47b5: $56
    add e                                         ; $47b6: $83
    ld a, [$fc83]                                 ; $47b7: $fa $83 $fc
    add e                                         ; $47ba: $83
    cp h                                          ; $47bb: $bc
    rst $38                                       ; $47bc: $ff
    db $10                                        ; $47bd: $10
    dec c                                         ; $47be: $0d
    ldh a, [$1f]                                  ; $47bf: $f0 $1f
    ld [bc], a                                    ; $47c1: $02
    nop                                           ; $47c2: $00
    ldh a, [rIE]                                  ; $47c3: $f0 $ff
    inc bc                                        ; $47c5: $03
    cp $40                                        ; $47c6: $fe $40
    inc bc                                        ; $47c8: $03
    dec e                                         ; $47c9: $1d
    rlca                                          ; $47ca: $07
    ld hl, sp-$01                                 ; $47cb: $f8 $ff
    ld h, l                                       ; $47cd: $65
    ld a, [de]                                    ; $47ce: $1a
    ld a, [$0015]                                 ; $47cf: $fa $15 $00
    push af                                       ; $47d2: $f5
    ld a, [de]                                    ; $47d3: $1a
    pop hl                                        ; $47d4: $e1
    rst $38                                       ; $47d5: $ff
    dec bc                                        ; $47d6: $0b
    inc b                                         ; $47d7: $04
    rst $28                                       ; $47d8: $ef
    inc b                                         ; $47d9: $04
    nop                                           ; $47da: $00
    rst $38                                       ; $47db: $ff
    inc b                                         ; $47dc: $04
    ld hl, sp-$01                                 ; $47dd: $f8 $ff
    ld a, a                                       ; $47df: $7f
    and b                                         ; $47e0: $a0
    cp a                                          ; $47e1: $bf
    ld h, b                                       ; $47e2: $60
    nop                                           ; $47e3: $00
    ld b, a                                       ; $47e4: $47
    cp b                                          ; $47e5: $b8
    ld sp, $2fff                                  ; $47e6: $31 $ff $2f
    db $10                                        ; $47e9: $10
    rra                                           ; $47ea: $1f
    stop                                          ; $47eb: $10 $00
    ccf                                           ; $47ed: $3f
    db $10                                        ; $47ee: $10
    rst $00                                       ; $47ef: $c7
    rst $38                                       ; $47f0: $ff
    pop hl                                        ; $47f1: $e1
    ld hl, $21e1                                  ; $47f2: $21 $e1 $21
    nop                                           ; $47f5: $00
    ret nc                                        ; $47f6: $d0

    ld hl, $ffc3                                  ; $47f7: $21 $c3 $ff
    and e                                         ; $47fa: $a3
    ld b, c                                       ; $47fb: $41
    ei                                            ; $47fc: $fb
    ld b, c                                       ; $47fd: $41
    ld b, $fe                                     ; $47fe: $06 $fe
    ld b, c                                       ; $4800: $41
    inc e                                         ; $4801: $1c
    rst $38                                       ; $4802: $ff
    ld e, $a8                                     ; $4803: $1e $a8
    nop                                           ; $4805: $00
    ld h, b                                       ; $4806: $60
    ld [$403c], sp                                ; $4807: $08 $3c $40
    jp Jump_000_0fb3                              ; $480a: $c3 $b3 $0f


    ld a, [hl]                                    ; $480d: $7e
    rst $38                                       ; $480e: $ff
    ld e, h                                       ; $480f: $5c
    daa                                           ; $4810: $27
    ld a, b                                       ; $4811: $78
    daa                                           ; $4812: $27
    ld [bc], a                                    ; $4813: $02
    ld hl, sp+$27                                 ; $4814: $f8 $27
    adc a                                         ; $4816: $8f
    rst $38                                       ; $4817: $ff
    ld hl, sp+$04                                 ; $4818: $f8 $04
    ld [bc], a                                    ; $481a: $02
    ld [$0071], sp                                ; $481b: $08 $71 $00
    rst $38                                       ; $481e: $ff
    rra                                           ; $481f: $1f
    pop hl                                        ; $4820: $e1
    ccf                                           ; $4821: $3f
    pop hl                                        ; $4822: $e1
    ld l, $f1                                     ; $4823: $2e $f1
    adc h                                         ; $4825: $8c
    nop                                           ; $4826: $00
    rst $38                                       ; $4827: $ff
    cp h                                          ; $4828: $bc
    ld b, a                                       ; $4829: $47
    cp h                                          ; $482a: $bc
    ld b, a                                       ; $482b: $47
    ld hl, sp+$47                                 ; $482c: $f8 $47
    ld a, b                                       ; $482e: $78
    nop                                           ; $482f: $00
    rst $38                                       ; $4830: $ff
    push af                                       ; $4831: $f5
    ld a, [de]                                    ; $4832: $1a
    ld [$e515], a                                 ; $4833: $ea $15 $e5
    ld a, [de]                                    ; $4836: $1a
    ld a, c                                       ; $4837: $79
    nop                                           ; $4838: $00
    rst $38                                       ; $4839: $ff
    ccf                                           ; $483a: $3f
    ldh [$1f], a                                  ; $483b: $e0 $1f
    ldh [rTAC], a                                 ; $483d: $e0 $07
    ld hl, sp-$11                                 ; $483f: $f8 $ef
    nop                                           ; $4841: $00
    rst $38                                       ; $4842: $ff
    ld e, l                                       ; $4843: $5d
    db $e3                                        ; $4844: $e3
    rst $38                                       ; $4845: $ff
    ld b, c                                       ; $4846: $41
    ld a, $c1                                     ; $4847: $3e $c1
    reti                                          ; $4849: $d9


    nop                                           ; $484a: $00
    rst $38                                       ; $484b: $ff
    pop hl                                        ; $484c: $e1
    ld b, b                                       ; $484d: $40
    db $fd                                        ; $484e: $fd
    ld b, b                                       ; $484f: $40
    cp a                                          ; $4850: $bf
    ld b, b                                       ; $4851: $40
    ld e, $a0                                     ; $4852: $1e $a0
    ld sp, hl                                     ; $4854: $f9
    rlca                                          ; $4855: $07
    ld bc, $06fc                                  ; $4856: $01 $fc $06
    call c, $8fff                                 ; $4859: $dc $ff $8f
    adc b                                         ; $485c: $88
    adc a                                         ; $485d: $8f
    ld [$4788], sp                                ; $485e: $08 $88 $47
    adc b                                         ; $4861: $88
    ld h, [hl]                                    ; $4862: $66
    add b                                         ; $4863: $80
    ld hl, $fff8                                  ; $4864: $21 $f8 $ff
    ei                                            ; $4867: $fb
    nop                                           ; $4868: $00
    ld b, $ff                                     ; $4869: $06 $ff
    ld [bc], a                                    ; $486b: $02
    ld a, l                                       ; $486c: $7d
    add d                                         ; $486d: $82
    ldh a, [rIE]                                  ; $486e: $f0 $ff
    jr c, jr_0a0_48b2                             ; $4870: $38 $40

    db $10                                        ; $4872: $10
    jr nz, jr_0a0_4883                            ; $4873: $20 $0e

    ld h, a                                       ; $4875: $67
    rst $38                                       ; $4876: $ff
    ld c, a                                       ; $4877: $4f
    inc b                                         ; $4878: $04
    db $eb                                        ; $4879: $eb
    inc b                                         ; $487a: $04
    dec e                                         ; $487b: $1d
    ei                                            ; $487c: $fb
    inc b                                         ; $487d: $04
    pop hl                                        ; $487e: $e1
    ld [$9001], sp                                ; $487f: $08 $01 $90
    dec c                                         ; $4882: $0d

jr_0a0_4883:
    ldh [$28], a                                  ; $4883: $e0 $28
    ld h, [hl]                                    ; $4885: $66
    sub b                                         ; $4886: $90
    dec h                                         ; $4887: $25
    nop                                           ; $4888: $00
    inc a                                         ; $4889: $3c
    rst $38                                       ; $488a: $ff
    add c                                         ; $488b: $81
    add d                                         ; $488c: $82
    add e                                         ; $488d: $83
    add d                                         ; $488e: $82
    ld h, [hl]                                    ; $488f: $66
    add e                                         ; $4890: $83
    ld [$ff1d], sp                                ; $4891: $08 $1d $ff
    ld c, l                                       ; $4894: $4d
    or b                                          ; $4895: $b0
    ld h, b                                       ; $4896: $60
    ld c, $f0                                     ; $4897: $0e $f0
    rra                                           ; $4899: $1f
    rst $08                                       ; $489a: $cf
    nop                                           ; $489b: $00
    rst $38                                       ; $489c: $ff
    rst $38                                       ; $489d: $ff
    db $10                                        ; $489e: $10
    ld l, e                                       ; $489f: $6b
    sub a                                         ; $48a0: $97
    ld h, h                                       ; $48a1: $64
    ld hl, sp+$76                                 ; $48a2: $f8 $76
    inc b                                         ; $48a4: $04
    adc b                                         ; $48a5: $88
    ld [hl], a                                    ; $48a6: $77
    adc b                                         ; $48a7: $88
    adc c                                         ; $48a8: $89

jr_0a0_48a9:
    cp $b0                                        ; $48a9: $fe $b0
    ld e, h                                       ; $48ab: $5c
    ld [hl], e                                    ; $48ac: $73
    rst $38                                       ; $48ad: $ff
    nop                                           ; $48ae: $00
    rst $10                                       ; $48af: $d7
    ld l, $ba                                     ; $48b0: $2e $ba

jr_0a0_48b2:
    ld b, l                                       ; $48b2: $45
    ld l, l                                       ; $48b3: $6d
    ld [de], a                                    ; $48b4: $12
    sbc $01                                       ; $48b5: $de $01
    nop                                           ; $48b7: $00
    ld a, e                                       ; $48b8: $7b
    add h                                         ; $48b9: $84
    db $fd                                        ; $48ba: $fd
    nop                                           ; $48bb: $00
    rst $38                                       ; $48bc: $ff

jr_0a0_48bd:
    jp $c77a                                      ; $48bd: $c3 $7a $c7


    nop                                           ; $48c0: $00
    or b                                          ; $48c1: $b0
    ld c, a                                       ; $48c2: $4f
    ld a, e                                       ; $48c3: $7b
    add h                                         ; $48c4: $84
    db $ed                                        ; $48c5: $ed
    ld [de], a                                    ; $48c6: $12
    rst $38                                       ; $48c7: $ff
    nop                                           ; $48c8: $00
    ld c, $dd                                     ; $48c9: $0e $dd
    ld [bc], a                                    ; $48cb: $02
    ld a, e                                       ; $48cc: $7b
    add b                                         ; $48cd: $80
    db $10                                        ; $48ce: $10
    ld [$4f00], sp                                ; $48cf: $08 $00 $4f
    jr nz, @+$0a                                  ; $48d2: $20 $08

    dec de                                        ; $48d4: $1b
    nop                                           ; $48d5: $00
    db $e4                                        ; $48d6: $e4
    and $18                                       ; $48d7: $e6 $18
    ld a, a                                       ; $48d9: $7f

jr_0a0_48da:
    add b                                         ; $48da: $80
    jp c, $ff21                                   ; $48db: $da $21 $ff

    ret nz                                        ; $48de: $c0

    ld b, $0f                                     ; $48df: $06 $0f
    jr nc, jr_0a0_48e3                            ; $48e1: $30 $00

jr_0a0_48e3:
    sub l                                         ; $48e3: $95
    ld [$c0bf], a                                 ; $48e4: $ea $bf $c0
    cp [hl]                                       ; $48e7: $be

jr_0a0_48e8:
    pop bc                                        ; $48e8: $c1
    jr nc, jr_0a0_48a9                            ; $48e9: $30 $be

    ret nz                                        ; $48eb: $c0

    ld [bc], a                                    ; $48ec: $02
    jr z, jr_0a0_48bd                             ; $48ed: $28 $ce

    inc c                                         ; $48ef: $0c
    cp $01                                        ; $48f0: $fe $01
    ld a, [hl]                                    ; $48f2: $7e
    add b                                         ; $48f3: $80
    add b                                         ; $48f4: $80
    ld [bc], a                                    ; $48f5: $02
    jr z, @+$7a                                   ; $48f6: $28 $78

    add a                                         ; $48f8: $87
    jr c, jr_0a0_48da                             ; $48f9: $38 $df

    db $fc                                        ; $48fb: $fc
    inc hl                                        ; $48fc: $23
    rst $08                                       ; $48fd: $cf
    nop                                           ; $48fe: $00
    inc hl                                        ; $48ff: $23
    ld l, h                                       ; $4900: $6c
    rst $30                                       ; $4901: $f7
    ldh a, [rVBK]                                 ; $4902: $f0 $4f
    ld h, h                                       ; $4904: $64
    sub e                                         ; $4905: $93
    add a                                         ; $4906: $87
    ld a, b                                       ; $4907: $78
    ld [hl], c                                    ; $4908: $71
    ld a, [hl+]                                   ; $4909: $2a
    jr c, jr_0a0_4940                             ; $490a: $38 $34

    jr jr_0a0_4938                                ; $490c: $18 $2a

    jr c, jr_0a0_4944                             ; $490e: $38 $34

    jr jr_0a0_48e8                                ; $4910: $18 $d6

    cpl                                           ; $4912: $2f
    cp b                                          ; $4913: $b8
    nop                                           ; $4914: $00
    ld b, a                                       ; $4915: $47
    ld l, h                                       ; $4916: $6c
    inc de                                        ; $4917: $13
    call c, Call_0a0_7803                         ; $4918: $dc $03 $78
    add a                                         ; $491b: $87
    db $fc                                        ; $491c: $fc
    ld h, b                                       ; $491d: $60
    inc bc                                        ; $491e: $03
    sub b                                         ; $491f: $90
    ld [$205a], sp                                ; $4920: $08 $5a $20
    pop bc                                        ; $4923: $c1

jr_0a0_4924:
    cp a                                          ; $4924: $bf
    ret nz                                        ; $4925: $c0

    xor d                                         ; $4926: $aa
    ret nz                                        ; $4927: $c0

    dec bc                                        ; $4928: $0b
    sbc a                                         ; $4929: $9f
    ldh [$c0], a                                  ; $492a: $e0 $c0
    rst $38                                       ; $492c: $ff
    ld e, d                                       ; $492d: $5a

jr_0a0_492e:
    jr jr_0a0_492e                                ; $492e: $18 $fe

    cp b                                          ; $4930: $b8
    inc b                                         ; $4931: $04
    or $0b                                        ; $4932: $f6 $0b
    sub [hl]                                      ; $4934: $96
    or l                                          ; $4935: $b5
    rlca                                          ; $4936: $07
    xor d                                         ; $4937: $aa

jr_0a0_4938:
    cp $96                                        ; $4938: $fe $96
    rlca                                          ; $493a: $07
    ld a, [hl]                                    ; $493b: $7e
    ld [de], a                                    ; $493c: $12
    inc b                                         ; $493d: $04
    ld c, d                                       ; $493e: $4a
    ld c, b                                       ; $493f: $48

jr_0a0_4940:
    cp $b4                                        ; $4940: $fe $b4
    and [hl]                                      ; $4942: $a6
    rlca                                          ; $4943: $07

jr_0a0_4944:
    ld bc, $1605                                  ; $4944: $01 $05 $16
    sbc $5f                                       ; $4947: $de $5f
    jp Jump_000_1610                              ; $4949: $c3 $10 $16


    ld a, d                                       ; $494c: $7a
    rst $00                                       ; $494d: $c7
    ldh [rSC], a                                  ; $494e: $e0 $02
    cp b                                          ; $4950: $b8
    inc a                                         ; $4951: $3c
    ld c, $32                                     ; $4952: $0e $32
    ld c, b                                       ; $4954: $48
    db $fc                                        ; $4955: $fc
    inc bc                                        ; $4956: $03
    ld l, h                                       ; $4957: $6c
    inc de                                        ; $4958: $13
    db $fc                                        ; $4959: $fc
    and b                                         ; $495a: $a0
    adc [hl]                                      ; $495b: $8e
    nop                                           ; $495c: $00
    call c, RST_08                                ; $495d: $dc $08 $00
    cp b                                          ; $4960: $b8
    ld b, a                                       ; $4961: $47
    sub $2f                                       ; $4962: $d6 $2f
    add l                                         ; $4964: $85
    nop                                           ; $4965: $00
    ld [hl], e                                    ; $4966: $73
    ld h, h                                       ; $4967: $64
    sub e                                         ; $4968: $93
    ldh a, [rVBK]                                 ; $4969: $f0 $4f
    ld l, h                                       ; $496b: $6c
    rst $30                                       ; $496c: $f7
    rst $08                                       ; $496d: $cf
    ld bc, $fc23                                  ; $496e: $01 $23 $fc
    inc hl                                        ; $4971: $23
    jr c, @-$1f                                   ; $4972: $38 $df

    ld a, b                                       ; $4974: $78
    add a                                         ; $4975: $87
    ldh a, [$5a]                                  ; $4976: $f0 $5a
    jr nz, jr_0a0_4924                            ; $4978: $20 $aa

    rst $38                                       ; $497a: $ff
    jr nc, jr_0a0_49d8                            ; $497b: $30 $5b

    xor d                                         ; $497d: $aa
    rst $38                                       ; $497e: $ff
    rlca                                          ; $497f: $07
    nop                                           ; $4980: $00
    jr jr_0a0_4983                                ; $4981: $18 $00

jr_0a0_4983:
    dec b                                         ; $4983: $05
    jr nz, jr_0a0_49a0                            ; $4984: $20 $1a

    ld b, b                                       ; $4986: $40
    dec [hl]                                      ; $4987: $35
    ld b, b                                       ; $4988: $40
    ld a, [hl+]                                   ; $4989: $2a
    add b                                         ; $498a: $80
    jr nz, jr_0a0_49e2                            ; $498b: $20 $55

    add b                                         ; $498d: $80
    inc b                                         ; $498e: $04
    nop                                           ; $498f: $00
    ldh [rP1], a                                  ; $4990: $e0 $00
    jr jr_0a0_49f4                                ; $4992: $18 $60

    ld h, h                                       ; $4994: $64
    nop                                           ; $4995: $00
    adc b                                         ; $4996: $88
    ld a, [c]                                     ; $4997: $f2
    inc b                                         ; $4998: $04
    ld a, [c]                                     ; $4999: $f2
    ld [$9661], sp                                ; $499a: $08 $61 $96
    add hl, bc                                    ; $499d: $09
    inc d                                         ; $499e: $14
    or [hl]                                       ; $499f: $b6

jr_0a0_49a0:
    dec e                                         ; $49a0: $1d
    ld b, b                                       ; $49a1: $40
    ld d, b                                       ; $49a2: $50
    ld h, e                                       ; $49a3: $63
    ret nc                                        ; $49a4: $d0

    db $10                                        ; $49a5: $10
    dec de                                        ; $49a6: $1b
    ld d, h                                       ; $49a7: $54
    xor e                                         ; $49a8: $ab

jr_0a0_49a9:
    nop                                           ; $49a9: $00
    ld sp, hl                                     ; $49aa: $f9
    rst $38                                       ; $49ab: $ff
    ld e, [hl]                                    ; $49ac: $5e
    dec h                                         ; $49ad: $25
    ld a, a                                       ; $49ae: $7f
    dec h                                         ; $49af: $25
    ld a, [$0025]                                 ; $49b0: $fa $25 $00

jr_0a0_49b3:
    nop                                           ; $49b3: $00
    rst $38                                       ; $49b4: $ff
    cp a                                          ; $49b5: $bf

jr_0a0_49b6:
    ld b, b                                       ; $49b6: $40
    rst $18                                       ; $49b7: $df
    jr nz, jr_0a0_49a9                            ; $49b8: $20 $ef

    stop                                          ; $49ba: $10 $00
    or $08                                        ; $49bc: $f6 $08
    ld a, [$fd05]                                 ; $49be: $fa $05 $fd
    ld [bc], a                                    ; $49c1: $02
    ld a, [$0005]                                 ; $49c2: $fa $05 $00
    db $10                                        ; $49c5: $10
    rst $28                                       ; $49c6: $ef
    rst $08                                       ; $49c7: $cf
    db $10                                        ; $49c8: $10
    sbc a                                         ; $49c9: $9f
    jr nz, @+$41                                  ; $49ca: $20 $3f

    ld b, b                                       ; $49cc: $40
    jr nc, jr_0a0_4a4e                            ; $49cd: $30 $7f

    add b                                         ; $49cf: $80
    ld a, [c]                                     ; $49d0: $f2
    dec e                                         ; $49d1: $1d
    ld d, h                                       ; $49d2: $54
    ld [$6a81], sp                                ; $49d3: $08 $81 $6a
    ld b, c                                       ; $49d6: $41
    inc d                                         ; $49d7: $14

jr_0a0_49d8:
    nop                                           ; $49d8: $00
    ld b, c                                       ; $49d9: $41
    ld a, [hl+]                                   ; $49da: $2a
    daa                                           ; $49db: $27
    rla                                           ; $49dc: $17
    dec de                                        ; $49dd: $1b
    rlca                                          ; $49de: $07
    rra                                           ; $49df: $1f
    jr jr_0a0_49b6                                ; $49e0: $18 $d4

jr_0a0_49e2:
    db $10                                        ; $49e2: $10
    dec bc                                        ; $49e3: $0b
    jp c, $3f0b                                   ; $49e4: $da $0b $3f

    db $10                                        ; $49e7: $10
    inc bc                                        ; $49e8: $03
    ei                                            ; $49e9: $fb
    ld [$f705], sp                                ; $49ea: $08 $05 $f7
    ld [$ef04], sp                                ; $49ed: $08 $04 $ef
    db $10                                        ; $49f0: $10
    rst $18                                       ; $49f1: $df
    jr nz, jr_0a0_49b3                            ; $49f2: $20 $bf

jr_0a0_49f4:
    jr nc, @+$32                                  ; $49f4: $30 $30

    ld a, a                                       ; $49f6: $7f
    add b                                         ; $49f7: $80
    add b                                         ; $49f8: $80
    ld d, b                                       ; $49f9: $50
    jr c, @-$05                                   ; $49fa: $38 $f9

    ld [bc], a                                    ; $49fc: $02
    ld a, [c]                                     ; $49fd: $f2
    dec b                                         ; $49fe: $05
    ccf                                           ; $49ff: $3f
    ccf                                           ; $4a00: $3f
    rra                                           ; $4a01: $1f
    xor b                                         ; $4a02: $a8
    ld bc, $0f00                                  ; $4a03: $01 $00 $0f
    ld bc, $0700                                  ; $4a06: $01 $00 $07
    ld bc, $f110                                  ; $4a09: $01 $10 $f1
    rst $38                                       ; $4a0c: $ff
    ld [bc], a                                    ; $4a0d: $02
    add b                                         ; $4a0e: $80
    ld [c], a                                     ; $4a0f: $e2
    inc b                                         ; $4a10: $04
    nop                                           ; $4a11: $00
    rst $38                                       ; $4a12: $ff
    ld sp, hl                                     ; $4a13: $f9
    rst $38                                       ; $4a14: $ff
    ld h, h                                       ; $4a15: $64
    dec de                                        ; $4a16: $1b
    ei                                            ; $4a17: $fb
    ld b, $15                                     ; $4a18: $06 $15
    db $f4                                        ; $4a1a: $f4
    dec de                                        ; $4a1b: $1b

jr_0a0_4a1c:
    rst $20                                       ; $4a1c: $e7
    ld [$5870], sp                                ; $4a1d: $08 $70 $58
    ld a, [hl+]                                   ; $4a20: $2a
    ld [$cd06], sp                                ; $4a21: $08 $06 $cd
    dec hl                                        ; $4a24: $2b
    jr jr_0a0_4a58                                ; $4a25: $18 $31

    nop                                           ; $4a27: $00
    rrca                                          ; $4a28: $0f
    rrca                                          ; $4a29: $0f
    nop                                           ; $4a2a: $00
    dec bc                                        ; $4a2b: $0b
    ld b, l                                       ; $4a2c: $45
    ld c, $7f                                     ; $4a2d: $0e $7f
    nop                                           ; $4a2f: $00
    inc bc                                        ; $4a30: $03
    ld [hl], b                                    ; $4a31: $70
    ld a, c                                       ; $4a32: $79
    nop                                           ; $4a33: $00
    inc bc                                        ; $4a34: $03
    ld e, $48                                     ; $4a35: $1e $48
    jr nz, jr_0a0_4a41                            ; $4a37: $20 $08

    add hl, bc                                    ; $4a39: $09
    or [hl]                                       ; $4a3a: $b6
    ld bc, $0054                                  ; $4a3b: $01 $54 $00
    add c                                         ; $4a3e: $81
    ld a, [hl+]                                   ; $4a3f: $2a
    add d                                         ; $4a40: $82

jr_0a0_4a41:
    ld d, h                                       ; $4a41: $54
    add d                                         ; $4a42: $82
    inc l                                         ; $4a43: $2c
    db $e4                                        ; $4a44: $e4
    ld hl, sp+$0c                                 ; $4a45: $f8 $0c
    ret c                                         ; $4a47: $d8

    ldh [$f8], a                                  ; $4a48: $e0 $f8
    jr jr_0a0_4a1c                                ; $4a4a: $18 $d0

    ld c, b                                       ; $4a4c: $48
    add b                                         ; $4a4d: $80

jr_0a0_4a4e:
    ld [$ef10], sp                                ; $4a4e: $08 $10 $ef
    nop                                           ; $4a51: $00
    adc $11                                       ; $4a52: $ce $11
    sbc [hl]                                      ; $4a54: $9e
    ld hl, $413e                                  ; $4a55: $21 $3e $41

jr_0a0_4a58:
    ld a, [hl]                                    ; $4a58: $7e
    add c                                         ; $4a59: $81
    add d                                         ; $4a5a: $82
    or b                                          ; $4a5b: $b0
    dec c                                         ; $4a5c: $0d
    cp $01                                        ; $4a5d: $fe $01
    rlca                                          ; $4a5f: $07
    rst $38                                       ; $4a60: $ff
    cp a                                          ; $4a61: $bf
    jr nz, jr_0a0_4a68                            ; $4a62: $20 $04

    cp $80                                        ; $4a64: $fe $80
    jr nz, @+$06                                  ; $4a66: $20 $04

jr_0a0_4a68:
    jp nc, Jump_000_2fac                          ; $4a68: $d2 $ac $2f

    call nc, $acd7                                ; $4a6b: $d4 $d7 $ac
    db $fc                                        ; $4a6e: $fc
    ld [bc], a                                    ; $4a6f: $02
    db $fc                                        ; $4a70: $fc
    add sp, -$08                                  ; $4a71: $e8 $f8
    ld e, b                                       ; $4a73: $58
    ld hl, sp-$10                                 ; $4a74: $f8 $f0
    ld bc, $e000                                  ; $4a76: $01 $00 $e0
    add b                                         ; $4a79: $80
    ld bc, $7e10                                  ; $4a7a: $01 $10 $7e
    add c                                         ; $4a7d: $81
    cp [hl]                                       ; $4a7e: $be
    ld b, c                                       ; $4a7f: $41
    sbc $21                                       ; $4a80: $de $21
    xor $00                                       ; $4a82: $ee $00
    ld de, $09f6                                  ; $4a84: $11 $f6 $09
    ld a, [$f805]                                 ; $4a87: $fa $05 $f8
    inc bc                                        ; $4a8a: $03
    ld a, [c]                                     ; $4a8b: $f2
    nop                                           ; $4a8c: $00
    dec b                                         ; $4a8d: $05
    ld [hl], e                                    ; $4a8e: $73
    rst $38                                       ; $4a8f: $ff
    sbc a                                         ; $4a90: $9f
    and b                                         ; $4a91: $a0
    ccf                                           ; $4a92: $3f
    and b                                         ; $4a93: $a0
    rst $38                                       ; $4a94: $ff
    nop                                           ; $4a95: $00
    and b                                         ; $4a96: $a0
    ld c, $ff                                     ; $4a97: $0e $ff
    and a                                         ; $4a99: $a7
    pop bc                                        ; $4a9a: $c1
    ld a, a                                       ; $4a9b: $7f
    pop bc                                        ; $4a9c: $c1
    call z, $f303                                 ; $4a9d: $cc $03 $f3
    ldh a, [$f0]                                  ; $4aa0: $f0 $f0
    ret nc                                        ; $4aa2: $d0

    ldh a, [$a0]                                  ; $4aa3: $f0 $a0
    dec hl                                        ; $4aa5: $2b
    jr jr_0a0_4ad9                                ; $4aa6: $18 $31

    nop                                           ; $4aa8: $00
    ld [$f0f0], sp                                ; $4aa9: $08 $f0 $f0
    and $09                                       ; $4aac: $e6 $09
    ld h, b                                       ; $4aae: $60
    ld e, b                                       ; $4aaf: $58
    ld e, $ff                                     ; $4ab0: $1e $ff
    sub $22                                       ; $4ab2: $d6 $22
    add e                                         ; $4ab4: $83
    ld a, d                                       ; $4ab5: $7a
    nop                                           ; $4ab6: $00
    inc b                                         ; $4ab7: $04
    inc a                                         ; $4ab8: $3c
    rst $38                                       ; $4ab9: $ff
    adc l                                         ; $4aba: $8d
    nop                                           ; $4abb: $00

jr_0a0_4abc:
    inc b                                         ; $4abc: $04
    sbc a                                         ; $4abd: $9f
    pop bc                                        ; $4abe: $c1
    ld l, $50                                     ; $4abf: $2e $50
    jr nc, jr_0a0_4acb                            ; $4ac1: $30 $08

    ld b, e                                       ; $4ac3: $43
    rst $38                                       ; $4ac4: $ff
    and e                                         ; $4ac5: $a3
    pop bc                                        ; $4ac6: $c1
    ld a, e                                       ; $4ac7: $7b
    add b                                         ; $4ac8: $80
    stop                                          ; $4ac9: $10 $00

jr_0a0_4acb:
    sbc [hl]                                      ; $4acb: $9e
    add h                                         ; $4acc: $84
    rlca                                          ; $4acd: $07
    add h                                         ; $4ace: $84
    adc e                                         ; $4acf: $8b
    add h                                         ; $4ad0: $84
    reti                                          ; $4ad1: $d9


    rst $38                                       ; $4ad2: $ff
    ld bc, $41e0                                  ; $4ad3: $01 $e0 $41
    db $fd                                        ; $4ad6: $fd
    ld b, c                                       ; $4ad7: $41
    cp [hl]                                       ; $4ad8: $be

jr_0a0_4ad9:
    ld b, c                                       ; $4ad9: $41
    rra                                           ; $4ada: $1f
    and b                                         ; $4adb: $a0
    inc de                                        ; $4adc: $13
    ld b, $00                                     ; $4add: $06 $00
    rst $38                                       ; $4adf: $ff
    rra                                           ; $4ae0: $1f
    rra                                           ; $4ae1: $1f
    ld e, $30                                     ; $4ae2: $1e $30
    ld hl, $1932                                  ; $4ae4: $21 $32 $19
    rst $00                                       ; $4ae7: $c7
    nop                                           ; $4ae8: $00
    rst $38                                       ; $4ae9: $ff
    sbc [hl]                                      ; $4aea: $9e
    add hl, bc                                    ; $4aeb: $09
    rst $18                                       ; $4aec: $df
    add hl, bc                                    ; $4aed: $09
    or $09                                        ; $4aee: $f6 $09
    ld h, a                                       ; $4af0: $67
    nop                                           ; $4af1: $00
    rst $38                                       ; $4af2: $ff
    sbc d                                         ; $4af3: $9a
    ld h, a                                       ; $4af4: $67
    bit 6, a                                      ; $4af5: $cb $77
    ret nz                                        ; $4af7: $c0

    ld a, a                                       ; $4af8: $7f
    rlca                                          ; $4af9: $07
    inc c                                         ; $4afa: $0c
    rlca                                          ; $4afb: $07
    rra                                           ; $4afc: $1f
    rra                                           ; $4afd: $1f
    ccf                                           ; $4afe: $3f
    ld bc, $5820                                  ; $4aff: $01 $20 $58
    add hl, bc                                    ; $4b02: $09
    add hl, de                                    ; $4b03: $19
    rst $38                                       ; $4b04: $ff
    nop                                           ; $4b05: $00
    db $fc                                        ; $4b06: $fc
    ld de, $11ff                                  ; $4b07: $11 $ff $11
    xor $11                                       ; $4b0a: $ee $11
    rst $08                                       ; $4b0c: $cf
    rst $38                                       ; $4b0d: $ff
    nop                                           ; $4b0e: $00
    db $ec                                        ; $4b0f: $ec
    inc sp                                        ; $4b10: $33
    push hl                                       ; $4b11: $e5
    dec sp                                        ; $4b12: $3b
    ret nz                                        ; $4b13: $c0

    ccf                                           ; $4b14: $3f
    ld b, b                                       ; $4b15: $40
    cp a                                          ; $4b16: $bf
    nop                                           ; $4b17: $00
    add b                                         ; $4b18: $80
    ld a, a                                       ; $4b19: $7f
    nop                                           ; $4b1a: $00
    rst $38                                       ; $4b1b: $ff
    add b                                         ; $4b1c: $80
    ld a, a                                       ; $4b1d: $7f
    add a                                         ; $4b1e: $87
    ld a, b                                       ; $4b1f: $78
    jr nc, jr_0a0_4abc                            ; $4b20: $30 $9a

    ld h, l                                       ; $4b22: $65
    add b                                         ; $4b23: $80
    add hl, bc                                    ; $4b24: $09
    ldh [rDIV], a                                 ; $4b25: $e0 $04
    ld b, l                                       ; $4b27: $45
    ld sp, hl                                     ; $4b28: $f9
    ld b, l                                       ; $4b29: $45
    cp d                                          ; $4b2a: $ba
    jr nz, jr_0a0_4b72                            ; $4b2b: $20 $45

    dec de                                        ; $4b2d: $1b
    jr z, @+$12                                   ; $4b2e: $28 $10

    and $19                                       ; $4b30: $e6 $19
    add sp, -$08                                  ; $4b32: $e8 $f8
    sbc b                                         ; $4b34: $98
    ld sp, $f8f8                                  ; $4b35: $31 $f8 $f8
    ldh a, [rNR10]                                ; $4b38: $f0 $10
    ld a, [c]                                     ; $4b3a: $f2
    jr jr_0a0_4bb6                                ; $4b3b: $18 $79

    rst $38                                       ; $4b3d: $ff
    cp a                                          ; $4b3e: $bf
    jr nc, jr_0a0_4b45                            ; $4b3f: $30 $04

    nop                                           ; $4b41: $00
    add a                                         ; $4b42: $87
    ld hl, sp+$6f                                 ; $4b43: $f8 $6f

jr_0a0_4b45:
    rst $38                                       ; $4b45: $ff
    db $dd                                        ; $4b46: $dd
    db $e3                                        ; $4b47: $e3
    ld a, a                                       ; $4b48: $7f
    pop bc                                        ; $4b49: $c1
    ld bc, $c1be                                  ; $4b4a: $01 $be $c1
    ldh [$e0], a                                  ; $4b4d: $e0 $e0
    ret c                                         ; $4b4f: $d8

    ld hl, sp-$04                                 ; $4b50: $f8 $fc
    ld bc, $1010                                  ; $4b52: $01 $10 $10
    db $ec                                        ; $4b55: $ec
    db $fc                                        ; $4b56: $fc
    jr @+$1a                                      ; $4b57: $18 $18

    ld bc, $ff67                                  ; $4b59: $01 $67 $ff
    rst $08                                       ; $4b5c: $cf
    add h                                         ; $4b5d: $84
    inc b                                         ; $4b5e: $04
    ld l, e                                       ; $4b5f: $6b
    add h                                         ; $4b60: $84
    ei                                            ; $4b61: $fb
    add h                                         ; $4b62: $84
    ld h, c                                       ; $4b63: $61
    ld [$1f01], sp                                ; $4b64: $08 $01 $1f
    and b                                         ; $4b67: $a0
    nop                                           ; $4b68: $00
    rst $20                                       ; $4b69: $e7
    cp b                                          ; $4b6a: $b8
    rlca                                          ; $4b6b: $07
    ld hl, sp+$07                                 ; $4b6c: $f8 $07
    ld hl, sp+$0f                                 ; $4b6e: $f8 $0f
    ldh a, [rNR41]                                ; $4b70: $f0 $20

jr_0a0_4b72:
    rra                                           ; $4b72: $1f
    ldh [rNR41], a                                ; $4b73: $e0 $20
    ld a, [hl+]                                   ; $4b75: $2a
    cpl                                           ; $4b76: $2f
    rst $38                                       ; $4b77: $ff
    di                                            ; $4b78: $f3
    adc h                                         ; $4b79: $8c
    inc de                                        ; $4b7a: $13
    nop                                           ; $4b7b: $00
    db $ec                                        ; $4b7c: $ec
    add a                                         ; $4b7d: $87
    db $fc                                        ; $4b7e: $fc
    scf                                           ; $4b7f: $37

jr_0a0_4b80:
    rst $38                                       ; $4b80: $ff
    rst $38                                       ; $4b81: $ff
    and c                                         ; $4b82: $a1
    ld a, [hl]                                    ; $4b83: $7e
    ld [bc], a                                    ; $4b84: $02
    and c                                         ; $4b85: $a1
    sbc $a1                                       ; $4b86: $de $a1
    ld c, h                                       ; $4b88: $4c
    rst $38                                       ; $4b89: $ff
    rst $10                                       ; $4b8a: $d7
    ldh [$15], a                                  ; $4b8b: $e0 $15
    ld h, [hl]                                    ; $4b8d: $66
    nop                                           ; $4b8e: $00
    rst $38                                       ; $4b8f: $ff
    rst $38                                       ; $4b90: $ff
    add h                                         ; $4b91: $84
    ld a, a                                       ; $4b92: $7f
    add h                                         ; $4b93: $84
    cp e                                          ; $4b94: $bb
    call nz, Call_000_1450                        ; $4b95: $c4 $50 $14
    rst $18                                       ; $4b98: $df
    dec bc                                        ; $4b99: $0b
    nop                                           ; $4b9a: $00
    inc b                                         ; $4b9b: $04
    ei                                            ; $4b9c: $fb
    nop                                           ; $4b9d: $00

jr_0a0_4b9e:
    rst $38                                       ; $4b9e: $ff
    jr nz, jr_0a0_4b80                            ; $4b9f: $20 $df

    ld a, [bc]                                    ; $4ba1: $0a
    push af                                       ; $4ba2: $f5
    nop                                           ; $4ba3: $00
    nop                                           ; $4ba4: $00
    rst $38                                       ; $4ba5: $ff
    ld d, b                                       ; $4ba6: $50
    xor b                                         ; $4ba7: $a8
    ld bc, $ff01                                  ; $4ba8: $01 $01 $ff
    rst $38                                       ; $4bab: $ff
    nop                                           ; $4bac: $00
    ld [bc], a                                    ; $4bad: $02
    db $fd                                        ; $4bae: $fd
    ld b, b                                       ; $4baf: $40
    cp a                                          ; $4bb0: $bf
    nop                                           ; $4bb1: $00
    rst $38                                       ; $4bb2: $ff
    xor d                                         ; $4bb3: $aa
    ld d, l                                       ; $4bb4: $55
    ld d, e                                       ; $4bb5: $53

jr_0a0_4bb6:
    nop                                           ; $4bb6: $00
    ld bc, $ff00                                  ; $4bb7: $01 $00 $ff
    ld bc, $0000                                  ; $4bba: $01 $00 $00
    rst $38                                       ; $4bbd: $ff
    ld [hl+], a                                   ; $4bbe: $22
    ld [$0010], sp                                ; $4bbf: $08 $10 $00
    nop                                           ; $4bc2: $00
    rst $38                                       ; $4bc3: $ff
    dec d                                         ; $4bc4: $15
    ld a, [bc]                                    ; $4bc5: $0a
    add b                                         ; $4bc6: $80
    add b                                         ; $4bc7: $80
    rst $38                                       ; $4bc8: $ff
    rst $38                                       ; $4bc9: $ff
    add hl, bc                                    ; $4bca: $09
    ld d, b                                       ; $4bcb: $50
    or $30                                        ; $4bcc: $f6 $30
    ld [$1800], sp                                ; $4bce: $08 $00 $18
    nop                                           ; $4bd1: $00
    ld d, l                                       ; $4bd2: $55
    xor d                                         ; $4bd3: $aa
    ld a, [hl+]                                   ; $4bd4: $2a
    dec d                                         ; $4bd5: $15
    jp nz, Jump_000_0825                          ; $4bd6: $c2 $25 $08

    ld [bc], a                                    ; $4bd9: $02
    jr jr_0a0_4bfc                                ; $4bda: $18 $20

    rst $18                                       ; $4bdc: $df
    ld d, l                                       ; $4bdd: $55
    xor d                                         ; $4bde: $aa
    ld [hl], $08                                  ; $4bdf: $36 $08
    ld bc, $fe08                                  ; $4be1: $01 $08 $fe
    add b                                         ; $4be4: $80

jr_0a0_4be5:
    ld a, a                                       ; $4be5: $7f
    nop                                           ; $4be6: $00
    ld b, [hl]                                    ; $4be7: $46
    nop                                           ; $4be8: $00
    nop                                           ; $4be9: $00
    rst $38                                       ; $4bea: $ff

jr_0a0_4beb:
    ld d, h                                       ; $4beb: $54
    inc b                                         ; $4bec: $04
    xor d                                         ; $4bed: $aa
    add b                                         ; $4bee: $80
    nop                                           ; $4bef: $00
    ld bc, $5001                                  ; $4bf0: $01 $01 $50
    jr nc, jr_0a0_4be5                            ; $4bf3: $30 $f0

    nop                                           ; $4bf5: $00
    ld [$7f00], sp                                ; $4bf6: $08 $00 $7f
    ld a, a                                       ; $4bf9: $7f
    rst $38                                       ; $4bfa: $ff
    ld c, [hl]                                    ; $4bfb: $4e

jr_0a0_4bfc:
    db $10                                        ; $4bfc: $10
    db $10                                        ; $4bfd: $10
    rst $28                                       ; $4bfe: $ef
    and b                                         ; $4bff: $a0
    ld de, $005f                                  ; $4c00: $11 $5f $00
    rlca                                          ; $4c03: $07
    ld h, b                                       ; $4c04: $60
    jr @+$01                                      ; $4c05: $18 $ff

    rst $38                                       ; $4c07: $ff
    cp a                                          ; $4c08: $bf
    ld bc, $8030                                  ; $4c09: $01 $30 $80
    db $10                                        ; $4c0c: $10
    jr jr_0a0_4b9e                                ; $4c0d: $18 $8f

    adc a                                         ; $4c0f: $8f
    rst $28                                       ; $4c10: $ef
    rst $28                                       ; $4c11: $ef
    adc a                                         ; $4c12: $8f
    adc a                                         ; $4c13: $8f
    cp a                                          ; $4c14: $bf
    inc de                                        ; $4c15: $13
    cp a                                          ; $4c16: $bf
    adc a                                         ; $4c17: $8f
    adc a                                         ; $4c18: $8f
    db $10                                        ; $4c19: $10
    jr c, jr_0a0_4beb                             ; $4c1a: $38 $cf

    rst $08                                       ; $4c1c: $cf
    inc d                                         ; $4c1d: $14
    ld [$1830], sp                                ; $4c1e: $08 $30 $18
    ld h, h                                       ; $4c21: $64
    xor a                                         ; $4c22: $af
    ld bc, $2400                                  ; $4c23: $01 $00 $24
    ld [$efef], sp                                ; $4c26: $08 $ef $ef
    and b                                         ; $4c29: $a0
    ld [$c0c0], sp                                ; $4c2a: $08 $c0 $c0
    rst $08                                       ; $4c2d: $cf
    ld b, [hl]                                    ; $4c2e: $46
    jr jr_0a0_4c37                                ; $4c2f: $18 $06

    jr z, jr_0a0_4c52                             ; $4c31: $28 $1f

    rra                                           ; $4c33: $1f
    db $10                                        ; $4c34: $10
    ld e, b                                       ; $4c35: $58
    ld d, b                                       ; $4c36: $50

jr_0a0_4c37:
    jr jr_0a0_4c3b                                ; $4c37: $18 $02

    jr jr_0a0_4c9b                                ; $4c39: $18 $60

jr_0a0_4c3b:
    jr z, @-$14                                   ; $4c3b: $28 $ea

Jump_0a0_4c3d:
jr_0a0_4c3d:
    ld b, b                                       ; $4c3d: $40
    ld [$0844], sp                                ; $4c3e: $08 $44 $08
    ldh [$08], a                                  ; $4c41: $e0 $08
    rst $10                                       ; $4c43: $d7
    ccf                                           ; $4c44: $3f
    ld d, b                                       ; $4c45: $50
    ld [$00f3], a                                 ; $4c46: $ea $f3 $00
    cp $0c                                        ; $4c49: $fe $0c

jr_0a0_4c4b:
    rst $38                                       ; $4c4b: $ff
    db $fd                                        ; $4c4c: $fd
    cp $aa                                        ; $4c4d: $fe $aa
    ld d, l                                       ; $4c4f: $55
    jr nz, jr_0a0_4be5                            ; $4c50: $20 $93

jr_0a0_4c52:
    ld [$ffbf], sp                                ; $4c52: $08 $bf $ff
    dec l                                         ; $4c55: $2d
    ld e, d                                       ; $4c56: $5a
    and a                                         ; $4c57: $a7
    ld h, h                                       ; $4c58: $64
    ld e, b                                       ; $4c59: $58
    or a                                          ; $4c5a: $b7
    ld h, e                                       ; $4c5b: $63
    ld l, b                                       ; $4c5c: $68
    add e                                         ; $4c5d: $83
    jr nc, jr_0a0_4c4b                            ; $4c5e: $30 $eb

    inc sp                                        ; $4c60: $33
    ld bc, $ef1c                                  ; $4c61: $01 $1c $ef
    rst $38                                       ; $4c64: $ff
    db $fd                                        ; $4c65: $fd
    add e                                         ; $4c66: $83
    ld h, b                                       ; $4c67: $60
    rst $30                                       ; $4c68: $f7
    nop                                           ; $4c69: $00
    ld c, e                                       ; $4c6a: $4b
    ld bc, $fffa                                  ; $4c6b: $01 $fa $ff
    ld a, e                                       ; $4c6e: $7b

jr_0a0_4c6f:
    ld d, l                                       ; $4c6f: $55
    rra                                           ; $4c70: $1f
    ld [$100a], sp                                ; $4c71: $08 $0a $10
    ld h, [hl]                                    ; $4c74: $66
    ld [$1818], sp                                ; $4c75: $08 $18 $18
    push de                                       ; $4c78: $d5
    ld [hl], e                                    ; $4c79: $73
    nop                                           ; $4c7a: $00
    jr nz, jr_0a0_4c95                            ; $4c7b: $20 $18

    adc d                                         ; $4c7d: $8a
    ld l, [hl]                                    ; $4c7e: $6e
    add hl, bc                                    ; $4c7f: $09
    xor e                                         ; $4c80: $ab
    rst $38                                       ; $4c81: $ff
    ld e, a                                       ; $4c82: $5f
    rst $08                                       ; $4c83: $cf
    jr nz, @+$57                                  ; $4c84: $20 $55

    ld hl, $ff08                                  ; $4c86: $21 $08 $ff
    ld e, a                                       ; $4c89: $5f
    push af                                       ; $4c8a: $f5
    db $dd                                        ; $4c8b: $dd
    jr nc, jr_0a0_4c3d                            ; $4c8c: $30 $af

    ld b, l                                       ; $4c8e: $45
    db $10                                        ; $4c8f: $10
    ld e, $18                                     ; $4c90: $1e $18
    ld d, $38                                     ; $4c92: $16 $38
    db $fc                                        ; $4c94: $fc

jr_0a0_4c95:
    jr c, @+$76                                   ; $4c95: $38 $74

    ld e, b                                       ; $4c97: $58
    rlca                                          ; $4c98: $07
    ei                                            ; $4c99: $fb
    rst $38                                       ; $4c9a: $ff

jr_0a0_4c9b:
    ld d, l                                       ; $4c9b: $55
    xor e                                         ; $4c9c: $ab
    xor a                                         ; $4c9d: $af
    ld e, a                                       ; $4c9e: $5f
    ld de, $00ce                                  ; $4c9f: $11 $ce $00
    ld hl, $1951                                  ; $4ca2: $21 $51 $19
    cp a                                          ; $4ca5: $bf
    rst $38                                       ; $4ca6: $ff
    ld d, l                                       ; $4ca7: $55
    add hl, de                                    ; $4ca8: $19
    jr jr_0a0_4c6f                                ; $4ca9: $18 $c4

    xor b                                         ; $4cab: $a8
    nop                                           ; $4cac: $00
    xor d                                         ; $4cad: $aa
    db $dd                                        ; $4cae: $dd
    ld bc, $aa3b                                  ; $4caf: $01 $3b $aa
    nop                                           ; $4cb2: $00
    ld bc, $050a                                  ; $4cb3: $01 $0a $05
    ld [de], a                                    ; $4cb6: $12
    ld [$5520], sp                                ; $4cb7: $08 $20 $55
    jr jr_0a0_4cdc                                ; $4cba: $18 $20

    rst $28                                       ; $4cbc: $ef
    add hl, de                                    ; $4cbd: $19
    inc a                                         ; $4cbe: $3c
    ld d, l                                       ; $4cbf: $55
    xor d                                         ; $4cc0: $aa
    inc b                                         ; $4cc1: $04
    ld [$0a16], sp                                ; $4cc2: $08 $16 $0a
    ld a, [de]                                    ; $4cc5: $1a
    ld a, [bc]                                    ; $4cc6: $0a
    inc c                                         ; $4cc7: $0c
    ld [bc], a                                    ; $4cc8: $02
    rst $38                                       ; $4cc9: $ff
    xor d                                         ; $4cca: $aa
    ld h, c                                       ; $4ccb: $61
    rst $38                                       ; $4ccc: $ff
    inc [hl]                                      ; $4ccd: $34
    nop                                           ; $4cce: $00
    scf                                           ; $4ccf: $37
    ld bc, $03fc                                  ; $4cd0: $01 $fc $03
    xor c                                         ; $4cd3: $a9
    inc bc                                        ; $4cd4: $03
    inc b                                         ; $4cd5: $04
    ld [$560a], sp                                ; $4cd6: $08 $0a $56
    ld bc, $0103                                  ; $4cd9: $01 $03 $01

jr_0a0_4cdc:
    inc b                                         ; $4cdc: $04
    ld [$0802], sp                                ; $4cdd: $08 $02 $08
    jr nz, @+$58                                  ; $4ce0: $20 $56

    ld b, h                                       ; $4ce2: $44
    ld bc, $1818                                  ; $4ce3: $01 $18 $18
    db $fc                                        ; $4ce6: $fc
    inc bc                                        ; $4ce7: $03
    db $fd                                        ; $4ce8: $fd
    jr nz, jr_0a0_4ceb                            ; $4ce9: $20 $00

jr_0a0_4ceb:
    ld d, l                                       ; $4ceb: $55
    xor e                                         ; $4cec: $ab
    add b                                         ; $4ced: $80
    inc b                                         ; $4cee: $04
    ld [$53ad], sp                                ; $4cef: $08 $ad $53
    ld bc, $a9ff                                  ; $4cf2: $01 $ff $a9
    ld d, a                                       ; $4cf5: $57
    ld bc, $ff20                                  ; $4cf6: $01 $20 $ff
    ld bc, $0040                                  ; $4cf9: $01 $40 $00
    xor e                                         ; $4cfc: $ab
    rst $38                                       ; $4cfd: $ff
    xor e                                         ; $4cfe: $ab
    ld bc, $0155                                  ; $4cff: $01 $55 $01
    xor e                                         ; $4d02: $ab
    rst $38                                       ; $4d03: $ff
    rst $38                                       ; $4d04: $ff
    ccf                                           ; $4d05: $3f
    ret nz                                        ; $4d06: $c0

    ld [$0480], a                                 ; $4d07: $ea $80 $04
    ld [$1512], sp                                ; $4d0a: $08 $12 $15
    ret nz                                        ; $4d0d: $c0

    ret nz                                        ; $4d0e: $c0

jr_0a0_4d0f:
    inc b                                         ; $4d0f: $04
    db $10                                        ; $4d10: $10
    ld b, b                                       ; $4d11: $40
    add b                                         ; $4d12: $80
    ld [$1518], sp                                ; $4d13: $08 $18 $15
    ret nc                                        ; $4d16: $d0

    jr jr_0a0_4d39                                ; $4d17: $18 $20

    xor $59                                       ; $4d19: $ee $59
    or h                                          ; $4d1b: $b4
    jr nc, jr_0a0_4d1e                            ; $4d1c: $30 $00

jr_0a0_4d1e:
    cp a                                          ; $4d1e: $bf
    ret nz                                        ; $4d1f: $c0

    ccf                                           ; $4d20: $3f
    ret nz                                        ; $4d21: $c0

    jr nz, @-$69                                  ; $4d22: $20 $95

    ld [$0804], a                                 ; $4d24: $ea $04 $08
    xor d                                         ; $4d27: $aa
    push de                                       ; $4d28: $d5
    add b                                         ; $4d29: $80
    rst $38                                       ; $4d2a: $ff
    ld a, b                                       ; $4d2b: $78
    nop                                           ; $4d2c: $00
    add a                                         ; $4d2d: $87
    jr c, jr_0a0_4d0f                             ; $4d2e: $38 $df

    cp $21                                        ; $4d30: $fe $21
    rst $00                                       ; $4d32: $c7
    inc hl                                        ; $4d33: $23
    ld l, [hl]                                    ; $4d34: $6e
    nop                                           ; $4d35: $00
    db $f4                                        ; $4d36: $f4
    ldh a, [$4c]                                  ; $4d37: $f0 $4c

jr_0a0_4d39:
    ld h, c                                       ; $4d39: $61
    sub d                                         ; $4d3a: $92
    add c                                         ; $4d3b: $81
    ld [hl], c                                    ; $4d3c: $71
    rrca                                          ; $4d3d: $0f
    nop                                           ; $4d3e: $00
    ldh a, [$39]                                  ; $4d3f: $f0 $39
    ld hl, sp+$3e                                 ; $4d41: $f8 $3e
    rst $00                                       ; $4d43: $c7
    ld a, e                                       ; $4d44: $7b
    add h                                         ; $4d45: $84
    ccf                                           ; $4d46: $3f
    ld bc, $7b58                                  ; $4d47: $01 $58 $7b
    daa                                           ; $4d4a: $27
    ld l, b                                       ; $4d4b: $68
    call nz, Call_000_38e0                        ; $4d4c: $c4 $e0 $38
    inc h                                         ; $4d4f: $24
    ld [$8012], sp                                ; $4d50: $08 $12 $80
    rst $38                                       ; $4d53: $ff
    push de                                       ; $4d54: $d5
    or b                                          ; $4d55: $b0
    ld [$d580], sp                                ; $4d56: $08 $80 $d5
    rst $20                                       ; $4d59: $e7
    ld bc, $f2aa                                  ; $4d5a: $01 $aa $f2
    ret z                                         ; $4d5d: $c8

    ld [bc], a                                    ; $4d5e: $02
    ldh a, [$28]                                  ; $4d5f: $f0 $28
    ld a, [c]                                     ; $4d61: $f2
    ld a, [bc]                                    ; $4d62: $0a
    db $10                                        ; $4d63: $10
    ld e, b                                       ; $4d64: $58
    add e                                         ; $4d65: $83
    jp $095a                                      ; $4d66: $c3 $5a $09


    ld sp, hl                                     ; $4d69: $f9
    nop                                           ; $4d6a: $00
    rst $38                                       ; $4d6b: $ff
    push af                                       ; $4d6c: $f5
    ei                                            ; $4d6d: $fb
    jp hl                                         ; $4d6e: $e9


    rst $30                                       ; $4d6f: $f7
    push de                                       ; $4d70: $d5
    db $eb                                        ; $4d71: $eb
    xor c                                         ; $4d72: $a9
    ld bc, $51d7                                  ; $4d73: $01 $d7 $51
    xor a                                         ; $4d76: $af
    ld b, d                                       ; $4d77: $42
    add c                                         ; $4d78: $81
    jp nz, $0481                                  ; $4d79: $c2 $81 $04

    ld [$6a40], sp                                ; $4d7c: $08 $40 $6a
    inc b                                         ; $4d7f: $04
    db $10                                        ; $4d80: $10
    sub $81                                       ; $4d81: $d6 $81
    rst $38                                       ; $4d83: $ff
    rst $38                                       ; $4d84: $ff
    ldh [rIE], a                                  ; $4d85: $e0 $ff
    nop                                           ; $4d87: $00
    pop de                                        ; $4d88: $d1
    rst $28                                       ; $4d89: $ef
    and e                                         ; $4d8a: $a3
    rst $18                                       ; $4d8b: $df
    ld b, a                                       ; $4d8c: $47
    cp a                                          ; $4d8d: $bf
    adc [hl]                                      ; $4d8e: $8e
    ld a, a                                       ; $4d8f: $7f
    db $10                                        ; $4d90: $10
    inc e                                         ; $4d91: $1c
    rst $38                                       ; $4d92: $ff
    jr c, @+$35                                   ; $4d93: $38 $33

    inc bc                                        ; $4d95: $03
    pop hl                                        ; $4d96: $e1
    rst $38                                       ; $4d97: $ff
    jp $01ff                                      ; $4d98: $c3 $ff $01


    add l                                         ; $4d9b: $85
    rst $38                                       ; $4d9c: $ff
    dec bc                                        ; $4d9d: $0b
    rst $38                                       ; $4d9e: $ff
    rla                                           ; $4d9f: $17
    rst $38                                       ; $4da0: $ff
    cpl                                           ; $4da1: $2f
    adc $01                                       ; $4da2: $ce $01
    nop                                           ; $4da4: $00
    and e                                         ; $4da5: $a3
    ld e, a                                       ; $4da6: $5f
    ld b, a                                       ; $4da7: $47
    cp a                                          ; $4da8: $bf
    adc l                                         ; $4da9: $8d
    ld a, a                                       ; $4daa: $7f
    add hl, de                                    ; $4dab: $19
    rst $38                                       ; $4dac: $ff
    nop                                           ; $4dad: $00
    ld sp, $63ff                                  ; $4dae: $31 $ff $63
    rst $38                                       ; $4db1: $ff
    rst $00                                       ; $4db2: $c7
    rst $38                                       ; $4db3: $ff
    adc a                                         ; $4db4: $8f
    rst $38                                       ; $4db5: $ff
    xor d                                         ; $4db6: $aa
    inc [hl]                                      ; $4db7: $34
    ld [$047e], sp                                ; $4db8: $08 $7e $04
    db $10                                        ; $4dbb: $10
    cp $04                                        ; $4dbc: $fe $04
    db $10                                        ; $4dbe: $10
    ld [hl], b                                    ; $4dbf: $70
    jr nc, jr_0a0_4dc2                            ; $4dc0: $30 $00

jr_0a0_4dc2:
    jp nz, $30b0                                  ; $4dc2: $c2 $b0 $30

    ld b, b                                       ; $4dc5: $40
    cp a                                          ; $4dc6: $bf
    ld l, $02                                     ; $4dc7: $2e $02
    ld [hl], d                                    ; $4dc9: $72
    ld [$fdf3], sp                                ; $4dca: $08 $f3 $fd
    push hl                                       ; $4dcd: $e5
    ei                                            ; $4dce: $fb
    inc c                                         ; $4dcf: $0c
    set 6, l                                      ; $4dd0: $cb $f5
    sub l                                         ; $4dd2: $95
    db $eb                                        ; $4dd3: $eb
    adc b                                         ; $4dd4: $88
    inc de                                        ; $4dd5: $13
    ld [hl], d                                    ; $4dd6: $72
    ld b, c                                       ; $4dd7: $41
    ld a, [hl]                                    ; $4dd8: $7e
    nop                                           ; $4dd9: $00
    ld a, h                                       ; $4dda: $7c
    inc a                                         ; $4ddb: $3c
    add d                                         ; $4ddc: $82
    ld d, c                                       ; $4ddd: $51
    ld [hl], b                                    ; $4dde: $70
    ld [$4840], sp                                ; $4ddf: $08 $40 $48
    ld l, [hl]                                    ; $4de2: $6e
    ld a, [bc]                                    ; $4de3: $0a
    or d                                          ; $4de4: $b2
    ld [$fff1], sp                                ; $4de5: $08 $f1 $ff
    nop                                           ; $4de8: $00
    push hl                                       ; $4de9: $e5
    ei                                            ; $4dea: $fb
    ret                                           ; $4deb: $c9


    rst $30                                       ; $4dec: $f7
    sub l                                         ; $4ded: $95
    db $eb                                        ; $4dee: $eb
    cp a                                          ; $4def: $bf
    rst $38                                       ; $4df0: $ff
    nop                                           ; $4df1: $00
    ld a, [hl]                                    ; $4df2: $7e
    rst $38                                       ; $4df3: $ff
    db $fc                                        ; $4df4: $fc
    rst $38                                       ; $4df5: $ff
    ld sp, hl                                     ; $4df6: $f9
    cp $f2                                        ; $4df7: $fe $f2
    db $fd                                        ; $4df9: $fd
    ld bc, $fae5                                  ; $4dfa: $01 $e5 $fa
    jp z, $94f5                                   ; $4dfd: $ca $f5 $94

    db $eb                                        ; $4e00: $eb
    add hl, hl                                    ; $4e01: $29
    call nz, RST_00                               ; $4e02: $c4 $00 $00
    and c                                         ; $4e05: $a1
    ld e, a                                       ; $4e06: $5f
    ld b, e                                       ; $4e07: $43
    cp a                                          ; $4e08: $bf
    add a                                         ; $4e09: $87
    ld a, a                                       ; $4e0a: $7f
    rrca                                          ; $4e0b: $0f
    rst $38                                       ; $4e0c: $ff
    db $10                                        ; $4e0d: $10
    rra                                           ; $4e0e: $1f
    rst $38                                       ; $4e0f: $ff
    ccf                                           ; $4e10: $3f
    nop                                           ; $4e11: $00
    ld h, c                                       ; $4e12: $61
    add b                                         ; $4e13: $80
    ret nz                                        ; $4e14: $c0

    xor e                                         ; $4e15: $ab
    rst $38                                       ; $4e16: $ff
    nop                                           ; $4e17: $00
    ld d, e                                       ; $4e18: $53
    xor a                                         ; $4e19: $af
    ei                                            ; $4e1a: $fb
    rlca                                          ; $4e1b: $07
    xor c                                         ; $4e1c: $a9
    rlca                                          ; $4e1d: $07
    ld d, a                                       ; $4e1e: $57
    inc bc                                        ; $4e1f: $03
    ld de, $0305                                  ; $4e20: $11 $05 $03
    rlca                                          ; $4e23: $07
    inc b                                         ; $4e24: $04
    nop                                           ; $4e25: $00
    rst $38                                       ; $4e26: $ff
    rst $38                                       ; $4e27: $ff
    rst $18                                       ; $4e28: $df
    ld b, $03                                     ; $4e29: $06 $03
    xor b                                         ; $4e2b: $a8
    ld b, h                                       ; $4e2c: $44
    ld [$54f8], sp                                ; $4e2d: $08 $f8 $54
    nop                                           ; $4e30: $00
    db $e3                                        ; $4e31: $e3
    inc de                                        ; $4e32: $13
    inc b                                         ; $4e33: $04
    adc l                                         ; $4e34: $8d
    rst $38                                       ; $4e35: $ff
    dec de                                        ; $4e36: $1b
    nop                                           ; $4e37: $00
    db $fd                                        ; $4e38: $fd
    dec [hl]                                      ; $4e39: $35
    ei                                            ; $4e3a: $fb
    ld l, c                                       ; $4e3b: $69
    rst $30                                       ; $4e3c: $f7
    pop de                                        ; $4e3d: $d1
    rst $28                                       ; $4e3e: $ef
    and c                                         ; $4e3f: $a1
    ld a, [de]                                    ; $4e40: $1a
    rst $18                                       ; $4e41: $df
    ld b, c                                       ; $4e42: $41
    cp a                                          ; $4e43: $bf
    and b                                         ; $4e44: $a0
    add hl, bc                                    ; $4e45: $09
    and h                                         ; $4e46: $a4
    add hl, bc                                    ; $4e47: $09
    ld l, d                                       ; $4e48: $6a
    inc b                                         ; $4e49: $04
    db $10                                        ; $4e4a: $10
    push de                                       ; $4e4b: $d5
    ld l, b                                       ; $4e4c: $68
    add b                                         ; $4e4d: $80
    inc [hl]                                      ; $4e4e: $34
    ld [$0838], sp                                ; $4e4f: $08 $38 $08
    xor a                                         ; $4e52: $af
    inc b                                         ; $4e53: $04
    db $10                                        ; $4e54: $10
    ld d, l                                       ; $4e55: $55
    inc bc                                        ; $4e56: $03
    add $00                                       ; $4e57: $c6 $00
    rst $38                                       ; $4e59: $ff
    adc l                                         ; $4e5a: $8d
    cp $1a                                        ; $4e5b: $fe $1a
    db $fd                                        ; $4e5d: $fd
    inc [hl]                                      ; $4e5e: $34
    ei                                            ; $4e5f: $fb
    ld l, b                                       ; $4e60: $68
    ld [$d0f7], sp                                ; $4e61: $08 $f7 $d0
    rst $28                                       ; $4e64: $ef
    and b                                         ; $4e65: $a0
    jr nc, jr_0a0_4e68                            ; $4e66: $30 $00

jr_0a0_4e68:
    add e                                         ; $4e68: $83
    ld a, a                                       ; $4e69: $7f
    rlca                                          ; $4e6a: $07
    ld b, b                                       ; $4e6b: $40
    rst $38                                       ; $4e6c: $ff
    ld a, d                                       ; $4e6d: $7a
    ld [$ff3d], sp                                ; $4e6e: $08 $3d $ff
    ld a, e                                       ; $4e71: $7b
    db $fd                                        ; $4e72: $fd
    push af                                       ; $4e73: $f5
    ei                                            ; $4e74: $fb
    dec hl                                        ; $4e75: $2b
    db $eb                                        ; $4e76: $eb
    rst $30                                       ; $4e77: $f7
    inc [hl]                                      ; $4e78: $34
    ld [$047f], sp                                ; $4e79: $08 $7f $04
    db $10                                        ; $4e7c: $10
    rst $38                                       ; $4e7d: $ff
    inc b                                         ; $4e7e: $04
    db $10                                        ; $4e7f: $10
    inc [hl]                                      ; $4e80: $34
    ld [$fb01], sp                                ; $4e81: $08 $01 $fb
    rlca                                          ; $4e84: $07
    ld d, c                                       ; $4e85: $51
    rlca                                          ; $4e86: $07
    ei                                            ; $4e87: $fb
    rlca                                          ; $4e88: $07
    ld sp, hl                                     ; $4e89: $f9
    inc b                                         ; $4e8a: $04
    nop                                           ; $4e8b: $00
    rlca                                          ; $4e8c: $07
    ei                                            ; $4e8d: $fb
    rlca                                          ; $4e8e: $07
    ld a, a                                       ; $4e8f: $7f
    nop                                           ; $4e90: $00
    ccf                                           ; $4e91: $3f
    ld [hl], d                                    ; $4e92: $72
    ld d, d                                       ; $4e93: $52
    inc d                                         ; $4e94: $14
    ld [$0818], sp                                ; $4e95: $08 $18 $08
    add b                                         ; $4e98: $80
    and [hl]                                      ; $4e99: $a6
    ld [$af53], sp                                ; $4e9a: $08 $53 $af

jr_0a0_4e9d:
    xor e                                         ; $4e9d: $ab
    ld d, a                                       ; $4e9e: $57
    rst $10                                       ; $4e9f: $d7
    ld l, $ba                                     ; $4ea0: $2e $ba
    nop                                           ; $4ea2: $00
    ld b, l                                       ; $4ea3: $45
    ld l, l                                       ; $4ea4: $6d
    ld [de], a                                    ; $4ea5: $12
    sbc $01                                       ; $4ea6: $de $01
    ld a, e                                       ; $4ea8: $7b
    add h                                         ; $4ea9: $84
    db $fd                                        ; $4eaa: $fd
    nop                                           ; $4eab: $00
    nop                                           ; $4eac: $00
    ld l, a                                       ; $4ead: $6f
    db $10                                        ; $4eae: $10
    rst $38                                       ; $4eaf: $ff
    nop                                           ; $4eb0: $00
    or b                                          ; $4eb1: $b0
    ld c, a                                       ; $4eb2: $4f
    ld a, e                                       ; $4eb3: $7b
    nop                                           ; $4eb4: $00
    add h                                         ; $4eb5: $84
    db $ed                                        ; $4eb6: $ed
    ld [de], a                                    ; $4eb7: $12
    rst $38                                       ; $4eb8: $ff
    nop                                           ; $4eb9: $00
    db $dd                                        ; $4eba: $dd
    ld [bc], a                                    ; $4ebb: $02
    ld a, e                                       ; $4ebc: $7b
    ld [bc], a                                    ; $4ebd: $02
    add b                                         ; $4ebe: $80
    rst $18                                       ; $4ebf: $df
    jr nz, @+$01                                  ; $4ec0: $20 $ff

    nop                                           ; $4ec2: $00
    ld [$0362], a                                 ; $4ec3: $ea $62 $03
    rst $18                                       ; $4ec6: $df
    nop                                           ; $4ec7: $00
    ldh [$aa], a                                  ; $4ec8: $e0 $aa
    ret nz                                        ; $4eca: $c0

    push af                                       ; $4ecb: $f5
    ret nz                                        ; $4ecc: $c0

    and b                                         ; $4ecd: $a0
    ret nz                                        ; $4ece: $c0

    ldh [$cc], a                                  ; $4ecf: $e0 $cc
    inc b                                         ; $4ed1: $04
    nop                                           ; $4ed2: $00
    ldh a, [$59]                                  ; $4ed3: $f0 $59
    inc bc                                        ; $4ed5: $03
    inc bc                                        ; $4ed6: $03
    cp a                                          ; $4ed7: $bf
    inc h                                         ; $4ed8: $24
    rst $00                                       ; $4ed9: $c7
    inc e                                         ; $4eda: $1c
    jp Jump_0a0_687a                              ; $4edb: $c3 $7a $68


    rst $00                                       ; $4ede: $c7
    inc h                                         ; $4edf: $24
    ld [$0828], sp                                ; $4ee0: $08 $28 $08
    ld [$1004], a                                 ; $4ee3: $ea $04 $10
    or l                                          ; $4ee6: $b5
    ret nz                                        ; $4ee7: $c0

    ld [bc], a                                    ; $4ee8: $02
    db $d3                                        ; $4ee9: $d3
    jp nz, $0402                                  ; $4eea: $c2 $02 $04

    ld [$04aa], sp                                ; $4eed: $08 $aa $04
    db $10                                        ; $4ef0: $10
    ld d, [hl]                                    ; $4ef1: $56
    ld bc, $0515                                  ; $4ef2: $01 $15 $05
    ld a, [hl+]                                   ; $4ef5: $2a
    ld a, [de]                                    ; $4ef6: $1a
    add b                                         ; $4ef7: $80
    ld a, d                                       ; $4ef8: $7a
    ld bc, $ffff                                  ; $4ef9: $01 $ff $ff
    ld a, [hl]                                    ; $4efc: $7e
    jp $c0ea                                      ; $4efd: $c3 $ea $c0


    sub l                                         ; $4f00: $95
    rla                                           ; $4f01: $17
    ldh [$df], a                                  ; $4f02: $e0 $df
    ldh [rDIV], a                                 ; $4f04: $e0 $04
    ld [$089f], sp                                ; $4f06: $08 $9f $08
    nop                                           ; $4f09: $00
    ld l, d                                       ; $4f0a: $6a
    nop                                           ; $4f0b: $00
    or $02                                        ; $4f0c: $f6 $02
    ld h, b                                       ; $4f0e: $60
    cp $04                                        ; $4f0f: $fe $04
    db $10                                        ; $4f11: $10
    ld [bc], a                                    ; $4f12: $02
    jr jr_0a0_4e9d                                ; $4f13: $18 $88

    rst $38                                       ; $4f15: $ff
    cp e                                          ; $4f16: $bb
    call z, Call_000_0f99                         ; $4f17: $cc $99 $0f
    xor $99                                       ; $4f1a: $ee $99
    call z, Call_000_02bb                         ; $4f1c: $cc $bb $02
    nop                                           ; $4f1f: $00
    ld [$2408], sp                                ; $4f20: $08 $08 $24
    ld [$0828], sp                                ; $4f23: $08 $28 $08
    add b                                         ; $4f26: $80
    sub [hl]                                      ; $4f27: $96
    ld [$ead5], sp                                ; $4f28: $08 $d5 $ea
    jp z, $fef5                                   ; $4f2b: $ca $f5 $fe

    nop                                           ; $4f2e: $00
    db $fc                                        ; $4f2f: $fc
    sub e                                         ; $4f30: $93
    ret nc                                        ; $4f31: $d0

    ld h, c                                       ; $4f32: $61

jr_0a0_4f33:
    adc h                                         ; $4f33: $8c
    rst $38                                       ; $4f34: $ff
    jr nc, jr_0a0_4f80                            ; $4f35: $30 $49

    rst $38                                       ; $4f37: $ff
    rst $38                                       ; $4f38: $ff
    jr nc, jr_0a0_4f94                            ; $4f39: $30 $59

    db $10                                        ; $4f3b: $10
    ld [$8f38], sp                                ; $4f3c: $08 $38 $8f
    ld a, a                                       ; $4f3f: $7f
    cp d                                          ; $4f40: $ba
    add hl, bc                                    ; $4f41: $09
    ld d, [hl]                                    ; $4f42: $56
    inc e                                         ; $4f43: $1c
    ld d, b                                       ; $4f44: $50
    add hl, de                                    ; $4f45: $19
    ld e, $ff                                     ; $4f46: $1e $ff
    dec a                                         ; $4f48: $3d

jr_0a0_4f49:
    jr nz, jr_0a0_4f49                            ; $4f49: $20 $fe

    ld a, d                                       ; $4f4b: $7a
    ld d, b                                       ; $4f4c: $50
    ld de, $efd7                                  ; $4f4d: $11 $d7 $ef
    xor l                                         ; $4f50: $ad
    rst $18                                       ; $4f51: $df
    ld e, e                                       ; $4f52: $5b
    ld a, [bc]                                    ; $4f53: $0a
    cp a                                          ; $4f54: $bf
    or a                                          ; $4f55: $b7
    ld a, a                                       ; $4f56: $7f
    ld l, a                                       ; $4f57: $6f
    cp b                                          ; $4f58: $b8
    ld de, $ce7f                                  ; $4f59: $11 $7f $ce
    inc d                                         ; $4f5c: $14
    ld a, [$fd00]                                 ; $4f5d: $fa $00 $fd
    push af                                       ; $4f60: $f5
    ld a, [$f5ea]                                 ; $4f61: $fa $ea $f5
    call nc, $a8eb                                ; $4f64: $d4 $eb $a8
    add b                                         ; $4f67: $80
    ret nz                                        ; $4f68: $c0

    ld [bc], a                                    ; $4f69: $02
    reti                                          ; $4f6a: $d9


    ld h, $26                                     ; $4f6b: $26 $26
    reti                                          ; $4f6d: $d9


    ei                                            ; $4f6e: $fb
    inc b                                         ; $4f6f: $04
    sbc $04                                       ; $4f70: $de $04
    jr nz, jr_0a0_4f33                            ; $4f72: $20 $bf

    nop                                           ; $4f74: $00
    db $fd                                        ; $4f75: $fd
    ld [bc], a                                    ; $4f76: $02
    rst $00                                       ; $4f77: $c7
    dec c                                         ; $4f78: $0d
    adc b                                         ; $4f79: $88
    rst $38                                       ; $4f7a: $ff
    ld e, b                                       ; $4f7b: $58

jr_0a0_4f7c:
    dec sp                                        ; $4f7c: $3b
    and b                                         ; $4f7d: $a0
    nop                                           ; $4f7e: $00
    add hl, de                                    ; $4f7f: $19

jr_0a0_4f80:
    and b                                         ; $4f80: $a0
    nop                                           ; $4f81: $00
    ld [$af18], sp                                ; $4f82: $08 $18 $af
    rst $38                                       ; $4f85: $ff
    sbc a                                         ; $4f86: $9f
    ld a, l                                       ; $4f87: $7d
    rst $38                                       ; $4f88: $ff
    inc b                                         ; $4f89: $04
    ld c, b                                       ; $4f8a: $48
    xor h                                         ; $4f8b: $ac
    ld c, b                                       ; $4f8c: $48
    or b                                          ; $4f8d: $b0
    ld [$5b30], sp                                ; $4f8e: $08 $30 $5b
    dec b                                         ; $4f91: $05
    jr c, @-$54                                   ; $4f92: $38 $aa

jr_0a0_4f94:
    inc b                                         ; $4f94: $04
    db $10                                        ; $4f95: $10
    rst $38                                       ; $4f96: $ff
    daa                                           ; $4f97: $27
    ld b, $c0                                     ; $4f98: $06 $c0
    inc l                                         ; $4f9a: $2c
    inc b                                         ; $4f9b: $04
    db $10                                        ; $4f9c: $10
    ld d, $14                                     ; $4f9d: $16 $14
    jr nc, jr_0a0_4fad                            ; $4f9f: $30 $0c

    ld h, [hl]                                    ; $4fa1: $66
    ld sp, $08f0                                  ; $4fa2: $31 $f0 $08
    ld a, $2c                                     ; $4fa5: $3e $2c
    ei                                            ; $4fa7: $fb
    ld [hl-], a                                   ; $4fa8: $32
    ld b, $60                                     ; $4fa9: $06 $60
    inc e                                         ; $4fab: $1c
    db $10                                        ; $4fac: $10

jr_0a0_4fad:
    ld b, b                                       ; $4fad: $40
    ldh a, [$09]                                  ; $4fae: $f0 $09
    jr nz, jr_0a0_4ff2                            ; $4fb0: $20 $40

    ld bc, $4c6e                                  ; $4fb2: $01 $6e $4c
    inc b                                         ; $4fb5: $04
    jr z, @-$67                                   ; $4fb6: $28 $97

    sub b                                         ; $4fb8: $90
    ld e, $22                                     ; $4fb9: $1e $22
    db $dd                                        ; $4fbb: $dd
    ld a, h                                       ; $4fbc: $7c
    ld e, $22                                     ; $4fbd: $1e $22
    and h                                         ; $4fbf: $a4
    ld b, $8f                                     ; $4fc0: $06 $8f
    inc b                                         ; $4fc2: $04
    jp z, $e90b                                   ; $4fc3: $ca $0b $e9

    push bc                                       ; $4fc6: $c5
    inc a                                         ; $4fc7: $3c
    and l                                         ; $4fc8: $a5
    ld bc, $19a2                                  ; $4fc9: $01 $a2 $19
    ld b, d                                       ; $4fcc: $42
    ld [bc], a                                    ; $4fcd: $02
    nop                                           ; $4fce: $00
    ld a, d                                       ; $4fcf: $7a
    rst $00                                       ; $4fd0: $c7
    ld [bc], a                                    ; $4fd1: $02
    ld [$fb52], sp                                ; $4fd2: $08 $52 $fb
    ld [bc], a                                    ; $4fd5: $02
    nop                                           ; $4fd6: $00
    ld hl, sp+$34                                 ; $4fd7: $f8 $34
    ld [de], a                                    ; $4fd9: $12
    inc bc                                        ; $4fda: $03
    rst $38                                       ; $4fdb: $ff
    inc b                                         ; $4fdc: $04
    ld [$1523], sp                                ; $4fdd: $08 $23 $15
    rst $18                                       ; $4fe0: $df
    inc bc                                        ; $4fe1: $03
    rst $38                                       ; $4fe2: $ff
    ld [bc], a                                    ; $4fe3: $02
    ld [$0623], sp                                ; $4fe4: $08 $23 $06
    nop                                           ; $4fe7: $00
    xor e                                         ; $4fe8: $ab
    inc b                                         ; $4fe9: $04
    db $10                                        ; $4fea: $10
    ld l, b                                       ; $4feb: $68
    ld d, a                                       ; $4fec: $57
    ld [hl-], a                                   ; $4fed: $32
    dec h                                         ; $4fee: $25
    ld b, b                                       ; $4fef: $40
    ld c, b                                       ; $4ff0: $48
    rst $38                                       ; $4ff1: $ff

jr_0a0_4ff2:
    sbc [hl]                                      ; $4ff2: $9e
    inc b                                         ; $4ff3: $04
    rst $30                                       ; $4ff4: $f7
    inc bc                                        ; $4ff5: $03
    ld c, b                                       ; $4ff6: $48
    ld b, b                                       ; $4ff7: $40
    add a                                         ; $4ff8: $87
    db $10                                        ; $4ff9: $10
    jr c, jr_0a0_4f7c                             ; $4ffa: $38 $80

    rst $38                                       ; $4ffc: $ff
    db $fd                                        ; $4ffd: $fd
    ret nz                                        ; $4ffe: $c0

    ld [de], a                                    ; $4fff: $12
    pop hl                                        ; $5000: $e1
    and [hl]                                      ; $5001: $a6
    jr nz, jr_0a0_503c                            ; $5002: $20 $38

    ld a, a                                       ; $5004: $7f
    ld h, b                                       ; $5005: $60
    inc bc                                        ; $5006: $03
    inc bc                                        ; $5007: $03
    db $fc                                        ; $5008: $fc
    ld [de], a                                    ; $5009: $12
    ld a, [hl+]                                   ; $500a: $2a
    add sp, $29                                   ; $500b: $e8 $29
    cp e                                          ; $500d: $bb
    ld [hl-], a                                   ; $500e: $32
    call z, $df88                                 ; $500f: $cc $88 $df
    ld d, $e4                                     ; $5012: $16 $e4
    add hl, bc                                    ; $5014: $09
    ret nz                                        ; $5015: $c0

    rst $38                                       ; $5016: $ff
    inc b                                         ; $5017: $04
    ld [$0ac2], sp                                ; $5018: $08 $c2 $0a
    db $fd                                        ; $501b: $fd
    ret nz                                        ; $501c: $c0

    rst $38                                       ; $501d: $ff
    ret nz                                        ; $501e: $c0

    inc e                                         ; $501f: $1c
    inc b                                         ; $5020: $04
    jp Jump_0a0_4094                              ; $5021: $c3 $94 $40


    ld a, d                                       ; $5024: $7a
    ld a, [bc]                                    ; $5025: $0a
    rst $00                                       ; $5026: $c7
    ret nz                                        ; $5027: $c0

    rst $38                                       ; $5028: $ff
    ld [c], a                                     ; $5029: $e2
    ld d, $00                                     ; $502a: $16 $00
    ld [$1004], a                                 ; $502c: $ea $04 $10
    push de                                       ; $502f: $d5
    sub b                                         ; $5030: $90
    ld [hl], c                                    ; $5031: $71
    rlca                                          ; $5032: $07
    ld a, d                                       ; $5033: $7a
    rst $00                                       ; $5034: $c7
    ld h, d                                       ; $5035: $62
    ld e, d                                       ; $5036: $5a
    ld a, d                                       ; $5037: $7a
    rst $00                                       ; $5038: $c7
    ld bc, $0cff                                  ; $5039: $01 $ff $0c

jr_0a0_503c:
    db $fd                                        ; $503c: $fd
    inc bc                                        ; $503d: $03
    ld [bc], a                                    ; $503e: $02
    ld bc, $3090                                  ; $503f: $01 $90 $30
    ld b, d                                       ; $5042: $42
    ld bc, $0ab5                                  ; $5043: $01 $b5 $0a
    nop                                           ; $5046: $00
    rst $38                                       ; $5047: $ff
    nop                                           ; $5048: $00
    jp c, $7f21                                   ; $5049: $da $21 $7f

    add b                                         ; $504c: $80
    and $18                                       ; $504d: $e6 $18
    nop                                           ; $504f: $00
    dec de                                        ; $5050: $1b
    db $e4                                        ; $5051: $e4
    rst $18                                       ; $5052: $df
    jr c, jr_0a0_5093                             ; $5053: $38 $3e

    call nz, Call_000_07e8                        ; $5055: $c4 $e8 $07
    nop                                           ; $5058: $00
    rla                                           ; $5059: $17
    adc b                                         ; $505a: $88
    jp hl                                         ; $505b: $e9


    ld [hl], b                                    ; $505c: $70

jr_0a0_505d:
    add [hl]                                      ; $505d: $86
    rst $38                                       ; $505e: $ff
    adc c                                         ; $505f: $89
    ld sp, hl                                     ; $5060: $f9
    nop                                           ; $5061: $00
    jr nz, jr_0a0_505d                            ; $5062: $20 $f9

    add hl, de                                    ; $5064: $19
    ld h, $00                                     ; $5065: $26 $00
    add hl, de                                    ; $5067: $19
    ret nz                                        ; $5068: $c0

    ldh a, [rP1]                                  ; $5069: $f0 $00
    nop                                           ; $506b: $00
    db $fd                                        ; $506c: $fd
    sub l                                         ; $506d: $95
    ld a, [c]                                     ; $506e: $f2
    cp $61                                        ; $506f: $fe $61
    add hl, sp                                    ; $5071: $39
    ld e, $00                                     ; $5072: $1e $00
    rst $30                                       ; $5074: $f7
    ld [$ff00], sp                                ; $5075: $08 $00 $ff
    rst $20                                       ; $5078: $e7
    jr jr_0a0_50e8                                ; $5079: $18 $6d

    or b                                          ; $507b: $b0
    nop                                           ; $507c: $00
    jp nc, Jump_000_2561                          ; $507d: $d2 $61 $25

    jp $875a                                      ; $5080: $c3 $5a $87


    dec hl                                        ; $5083: $2b
    call nc, $d600                                ; $5084: $d4 $00 $d6
    jr z, jr_0a0_5089                             ; $5087: $28 $00

jr_0a0_5089:
    rst $38                                       ; $5089: $ff
    sub [hl]                                      ; $508a: $96
    ld l, c                                       ; $508b: $69
    inc l                                         ; $508c: $2c
    jp $9200                                      ; $508d: $c3 $00 $92


    db $eb                                        ; $5090: $eb
    ld b, d                                       ; $5091: $42
    or a                                          ; $5092: $b7

jr_0a0_5093:
    or l                                          ; $5093: $b5
    ld c, $68                                     ; $5094: $0e $68
    rla                                           ; $5096: $17
    nop                                           ; $5097: $00
    jp c, Jump_000_0021                           ; $5098: $da $21 $00

    rst $38                                       ; $509b: $ff
    ld d, [hl]                                    ; $509c: $56
    adc c                                         ; $509d: $89
    push hl                                       ; $509e: $e5
    dec de                                        ; $509f: $1b
    nop                                           ; $50a0: $00
    ld c, d                                       ; $50a1: $4a
    or l                                          ; $50a2: $b5
    or c                                          ; $50a3: $b1
    ld h, [hl]                                    ; $50a4: $66
    ld h, [hl]                                    ; $50a5: $66
    ret c                                         ; $50a6: $d8

    call Call_000_00a0                            ; $50a7: $cd $a0 $00
    and d                                         ; $50aa: $a2
    add hl, de                                    ; $50ab: $19
    nop                                           ; $50ac: $00
    rst $38                                       ; $50ad: $ff
    or d                                          ; $50ae: $b2
    call Call_000_3bd4                            ; $50af: $cd $d4 $3b
    nop                                           ; $50b2: $00
    xor d                                         ; $50b3: $aa
    ld [hl], l                                    ; $50b4: $75
    jr nz, jr_0a0_50d4                            ; $50b5: $20 $1d

    ld d, h                                       ; $50b7: $54
    ld a, [hl+]                                   ; $50b8: $2a
    xor l                                         ; $50b9: $ad
    ld d, b                                       ; $50ba: $50
    nop                                           ; $50bb: $00
    ld d, [hl]                                    ; $50bc: $56
    and c                                         ; $50bd: $a1
    ld l, l                                       ; $50be: $6d
    ret nc                                        ; $50bf: $d0

    ld l, d                                       ; $50c0: $6a
    or l                                          ; $50c1: $b5
    inc d                                         ; $50c2: $14
    rst $38                                       ; $50c3: $ff
    inc b                                         ; $50c4: $04
    ld d, e                                       ; $50c5: $53
    and h                                         ; $50c6: $a4
    xor d                                         ; $50c7: $aa
    ld b, l                                       ; $50c8: $45
    ld d, l                                       ; $50c9: $55
    add hl, de                                    ; $50ca: $19
    ld b, $ff                                     ; $50cb: $06 $ff
    rst $38                                       ; $50cd: $ff
    nop                                           ; $50ce: $00
    dec [hl]                                      ; $50cf: $35
    jp nz, $854a                                  ; $50d0: $c2 $4a $85

    sbc l                                         ; $50d3: $9d

jr_0a0_50d4:
    nop                                           ; $50d4: $00
    ld e, b                                       ; $50d5: $58
    and b                                         ; $50d6: $a0
    jr nz, jr_0a0_514e                            ; $50d7: $20 $75

    add b                                         ; $50d9: $80
    db $10                                        ; $50da: $10
    jr jr_0a0_5129                                ; $50db: $18 $4c

    inc sp                                        ; $50dd: $33
    sbc d                                         ; $50de: $9a
    ld h, c                                       ; $50df: $61
    ld h, l                                       ; $50e0: $65
    ld [$ab18], sp                                ; $50e1: $08 $18 $ab
    inc d                                         ; $50e4: $14
    ld a, [hl-]                                   ; $50e5: $3a
    jr nz, jr_0a0_5108                            ; $50e6: $20 $20

jr_0a0_50e8:
    xor l                                         ; $50e8: $ad
    ld b, d                                       ; $50e9: $42
    sbc d                                         ; $50ea: $9a
    ld bc, $a965                                  ; $50eb: $01 $65 $a9
    ld d, a                                       ; $50ee: $57
    ld d, l                                       ; $50ef: $55
    ld a, $aa                                     ; $50f0: $3e $aa
    inc d                                         ; $50f2: $14
    jr nc, jr_0a0_510d                            ; $50f3: $30 $18

    nop                                           ; $50f5: $00
    nop                                           ; $50f6: $00
    rst $38                                       ; $50f7: $ff
    jp hl                                         ; $50f8: $e9


    ld d, $52                                     ; $50f9: $16 $52
    adc h                                         ; $50fb: $8c
    and l                                         ; $50fc: $a5
    jr jr_0a0_50ff                                ; $50fd: $18 $00

jr_0a0_50ff:
    ld b, e                                       ; $50ff: $43
    cp b                                          ; $5100: $b8
    adc h                                         ; $5101: $8c
    inc sp                                        ; $5102: $33
    ld e, d                                       ; $5103: $5a
    dec h                                         ; $5104: $25
    and l                                         ; $5105: $a5
    ld e, e                                       ; $5106: $5b
    nop                                           ; $5107: $00

jr_0a0_5108:
    nop                                           ; $5108: $00
    rst $38                                       ; $5109: $ff

jr_0a0_510a:
    add hl, sp                                    ; $510a: $39
    add $96                                       ; $510b: $c6 $96

jr_0a0_510d:
    ld c, b                                       ; $510d: $48
    xor c                                         ; $510e: $a9
    ld d, $00                                     ; $510f: $16 $00
    ld b, b                                       ; $5111: $40
    or a                                          ; $5112: $b7
    adc c                                         ; $5113: $89

jr_0a0_5114:
    ld h, [hl]                                    ; $5114: $66
    sub d                                         ; $5115: $92
    rst $08                                       ; $5116: $cf
    dec h                                         ; $5117: $25
    sbc $00                                       ; $5118: $de $00
    nop                                           ; $511a: $00
    rst $38                                       ; $511b: $ff
    ld c, d                                       ; $511c: $4a
    or l                                          ; $511d: $b5
    and l                                         ; $511e: $a5
    ld e, c                                       ; $511f: $59
    ld c, d                                       ; $5120: $4a
    sub c                                         ; $5121: $91
    nop                                           ; $5122: $00
    add [hl]                                      ; $5123: $86
    dec sp                                        ; $5124: $3b
    ld c, l                                       ; $5125: $4d
    ld [hl], $aa                                  ; $5126: $36 $aa

jr_0a0_5128:
    ld e, h                                       ; $5128: $5c

jr_0a0_5129:
    inc d                                         ; $5129: $14
    add sp, $00                                   ; $512a: $e8 $00
    nop                                           ; $512c: $00
    rst $38                                       ; $512d: $ff
    sub l                                         ; $512e: $95
    ld [$d42a], a                                 ; $512f: $ea $2a $d4
    ld h, l                                       ; $5132: $65
    sbc b                                         ; $5133: $98
    nop                                           ; $5134: $00
    xor d                                         ; $5135: $aa
    ld de, $334c                                  ; $5136: $11 $4c $33
    call nc, $892e                                ; $5139: $d4 $2e $89
    ld l, [hl]                                    ; $513c: $6e
    nop                                           ; $513d: $00
    ld a, [bc]                                    ; $513e: $0a
    rst $38                                       ; $513f: $ff
    sub l                                         ; $5140: $95
    jp z, $942a                                   ; $5141: $ca $2a $94

    ld d, l                                       ; $5144: $55
    cp b                                          ; $5145: $b8
    add b                                         ; $5146: $80
    ld d, b                                       ; $5147: $50
    jr z, jr_0a0_5114                             ; $5148: $28 $ca

    dec [hl]                                      ; $514a: $35
    sub l                                         ; $514b: $95
    ld h, d                                       ; $514c: $62
    xor l                                         ; $514d: $ad

jr_0a0_514e:
    ld b, d                                       ; $514e: $42
    jp c, Jump_000_0410                           ; $514f: $da $10 $04

    xor l                                         ; $5152: $ad
    ld d, b                                       ; $5153: $50
    sub b                                         ; $5154: $90
    jr jr_0a0_5128                                ; $5155: $18 $d1

    inc a                                         ; $5157: $3c
    xor d                                         ; $5158: $aa
    ld [hl], l                                    ; $5159: $75
    ld [bc], a                                    ; $515a: $02
    ld d, l                                       ; $515b: $55
    and e                                         ; $515c: $a3
    xor d                                         ; $515d: $aa
    ld b, l                                       ; $515e: $45
    halt                                          ; $515f: $76
    ld bc, $18a0                                  ; $5160: $01 $a0 $18
    ld a, [hl+]                                   ; $5163: $2a
    ld d, $d5                                     ; $5164: $16 $d5
    sub l                                         ; $5166: $95

jr_0a0_5167:
    db $e3                                        ; $5167: $e3
    xor h                                         ; $5168: $ac
    nop                                           ; $5169: $00
    add d                                         ; $516a: $82
    or b                                          ; $516b: $b0
    jr z, jr_0a0_510a                             ; $516c: $28 $9c

    ld b, $aa                                     ; $516e: $06 $aa
    nop                                           ; $5170: $00
    xor d                                         ; $5171: $aa
    ld e, l                                       ; $5172: $5d
    ld e, a                                       ; $5173: $5f
    cp d                                          ; $5174: $ba
    inc sp                                        ; $5175: $33
    db $fd                                        ; $5176: $fd
    ld d, h                                       ; $5177: $54
    ld l, e                                       ; $5178: $6b
    db $10                                        ; $5179: $10
    xor c                                         ; $517a: $a9
    ld b, [hl]                                    ; $517b: $46
    ld d, d                                       ; $517c: $52
    db $dd                                        ; $517d: $dd
    ld b, $6a                                     ; $517e: $06 $6a
    dec d                                         ; $5180: $15
    sub h                                         ; $5181: $94
    ld h, e                                       ; $5182: $63
    nop                                           ; $5183: $00
    and b                                         ; $5184: $a0
    rst $08                                       ; $5185: $cf
    jr nz, jr_0a0_5167                            ; $5186: $20 $df

    and h                                         ; $5188: $a4
    ld d, e                                       ; $5189: $53
    ld c, b                                       ; $518a: $48
    daa                                           ; $518b: $27
    nop                                           ; $518c: $00
    sub h                                         ; $518d: $94
    ld c, e                                       ; $518e: $4b
    add l                                         ; $518f: $85
    ld a, [c]                                     ; $5190: $f2
    ld c, d                                       ; $5191: $4a
    and l                                         ; $5192: $a5
    xor e                                         ; $5193: $ab
    ld e, h                                       ; $5194: $5c
    jr jr_0a0_51eb                                ; $5195: $18 $54

    dec hl                                        ; $5197: $2b
    cp d                                          ; $5198: $ba
    call nc, $bd06                                ; $5199: $d4 $06 $bd
    ld a, [bc]                                    ; $519c: $0a
    dec l                                         ; $519d: $2d
    jp nc, $015a                                  ; $519e: $d2 $5a $01

    and l                                         ; $51a1: $a5
    inc h                                         ; $51a2: $24
    bit 2, b                                      ; $51a3: $cb $50
    adc a                                         ; $51a5: $8f
    sbc d                                         ; $51a6: $9a
    dec b                                         ; $51a7: $05
    ldh a, [rNR23]                                ; $51a8: $f0 $18
    add b                                         ; $51aa: $80
    ld e, d                                       ; $51ab: $5a
    ld a, [bc]                                    ; $51ac: $0a
    ld c, d                                       ; $51ad: $4a
    or l                                          ; $51ae: $b5
    rst $38                                       ; $51af: $ff
    nop                                           ; $51b0: $00
    xor l                                         ; $51b1: $ad
    ld d, d                                       ; $51b2: $52
    ld [hl], b                                    ; $51b3: $70
    inc b                                         ; $51b4: $04
    sbc h                                         ; $51b5: $9c
    ld a, a                                       ; $51b6: $7f
    add d                                         ; $51b7: $82
    rst $38                                       ; $51b8: $ff
    inc b                                         ; $51b9: $04
    ld l, d                                       ; $51ba: $6a
    ld a, [bc]                                    ; $51bb: $0a
    sbc d                                         ; $51bc: $9a
    ld h, l                                       ; $51bd: $65
    nop                                           ; $51be: $00
    cp a                                          ; $51bf: $bf
    ld b, c                                       ; $51c0: $41
    ld d, e                                       ; $51c1: $53
    and b                                         ; $51c2: $a0
    xor l                                         ; $51c3: $ad
    ld d, b                                       ; $51c4: $50
    rst $30                                       ; $51c5: $f7
    ld [$4d20], sp                                ; $51c6: $08 $20 $4d
    ld [hl-], a                                   ; $51c9: $32
    ld a, d                                       ; $51ca: $7a
    ld a, [bc]                                    ; $51cb: $0a
    and a                                         ; $51cc: $a7
    ld e, d                                       ; $51cd: $5a
    rst $38                                       ; $51ce: $ff
    inc b                                         ; $51cf: $04
    db $e4                                        ; $51d0: $e4
    nop                                           ; $51d1: $00
    add hl, sp                                    ; $51d2: $39
    halt                                          ; $51d3: $76
    sbc c                                         ; $51d4: $99
    push af                                       ; $51d5: $f5
    ld b, $1b                                     ; $51d6: $06 $1b
    add sp, -$56                                  ; $51d8: $e8 $aa
    add b                                         ; $51da: $80
    adc $06                                       ; $51db: $ce $06
    rst $20                                       ; $51dd: $e7
    inc e                                         ; $51de: $1c
    dec a                                         ; $51df: $3d
    ret z                                         ; $51e0: $c8

    rst $38                                       ; $51e1: $ff
    nop                                           ; $51e2: $00
    ld [hl], a                                    ; $51e3: $77
    nop                                           ; $51e4: $00
    adc b                                         ; $51e5: $88
    xor h                                         ; $51e6: $ac
    ld [de], a                                    ; $51e7: $12
    ld e, d                                       ; $51e8: $5a
    and l                                         ; $51e9: $a5
    ld c, c                                       ; $51ea: $49

jr_0a0_51eb:
    and h                                         ; $51eb: $a4
    cp [hl]                                       ; $51ec: $be
    nop                                           ; $51ed: $00
    ld b, b                                       ; $51ee: $40
    or $01                                        ; $51ef: $f6 $01
    sub c                                         ; $51f1: $91
    xor d                                         ; $51f2: $aa
    ld e, [hl]                                    ; $51f3: $5e
    ld bc, $007d                                  ; $51f4: $01 $7d $00
    add b                                         ; $51f7: $80
    or c                                          ; $51f8: $b1
    ld a, [de]                                    ; $51f9: $1a
    cp $21                                        ; $51fa: $fe $21
    xor a                                         ; $51fc: $af
    inc d                                         ; $51fd: $14
    ld a, [c]                                     ; $51fe: $f2
    nop                                           ; $51ff: $00
    dec bc                                        ; $5200: $0b
    or a                                          ; $5201: $b7
    ld c, b                                       ; $5202: $48
    rst $28                                       ; $5203: $ef
    db $10                                        ; $5204: $10
    cp e                                          ; $5205: $bb
    ld b, h                                       ; $5206: $44
    or l                                          ; $5207: $b5
    nop                                           ; $5208: $00
    ld c, e                                       ; $5209: $4b
    xor e                                         ; $520a: $ab
    inc d                                         ; $520b: $14
    inc a                                         ; $520c: $3c
    res 7, l                                      ; $520d: $cb $bd
    ld b, d                                       ; $520f: $42

jr_0a0_5210:
    cp a                                          ; $5210: $bf
    nop                                           ; $5211: $00
    ld h, c                                       ; $5212: $61
    and $11                                       ; $5213: $e6 $11
    dec l                                         ; $5215: $2d
    jp z, $649b                                   ; $5216: $ca $9b $64

    db $ed                                        ; $5219: $ed
    nop                                           ; $521a: $00
    ld [de], a                                    ; $521b: $12
    or a                                          ; $521c: $b7
    adc b                                         ; $521d: $88
    rst $38                                       ; $521e: $ff
    nop                                           ; $521f: $00
    db $f4                                        ; $5220: $f4
    ld [bc], a                                    ; $5221: $02
    sub a                                         ; $5222: $97
    nop                                           ; $5223: $00

jr_0a0_5224:
    ld c, b                                       ; $5224: $48
    rst $38                                       ; $5225: $ff
    dec b                                         ; $5226: $05
    ld d, l                                       ; $5227: $55
    ld [c], a                                     ; $5228: $e2
    sbc $a1                                       ; $5229: $de $a1
    rst $10                                       ; $522b: $d7
    nop                                           ; $522c: $00
    ld [$02fd], sp                                ; $522d: $08 $fd $02
    dec l                                         ; $5230: $2d
    sbc b                                         ; $5231: $98
    ld l, e                                       ; $5232: $6b
    inc d                                         ; $5233: $14
    rst $10                                       ; $5234: $d7
    nop                                           ; $5235: $00
    jr z, jr_0a0_5224                             ; $5236: $28 $ec

    ld [de], a                                    ; $5238: $12
    ld d, a                                       ; $5239: $57
    xor b                                         ; $523a: $a8
    db $eb                                        ; $523b: $eb
    inc b                                         ; $523c: $04
    rla                                           ; $523d: $17
    nop                                           ; $523e: $00
    ld b, b                                       ; $523f: $40
    xor h                                         ; $5240: $ac
    ld d, e                                       ; $5241: $53
    cp l                                          ; $5242: $bd
    ld b, b                                       ; $5243: $40
    ld a, [hl]                                    ; $5244: $7e
    ld d, c                                       ; $5245: $51
    call c, $0300                                 ; $5246: $dc $00 $03
    cp a                                          ; $5249: $bf
    add h                                         ; $524a: $84
    jp nz, $e914                                  ; $524b: $c2 $14 $e9

    add h                                         ; $524e: $84
    ld [hl], b                                    ; $524f: $70
    nop                                           ; $5250: $00
    rrca                                          ; $5251: $0f
    cp b                                          ; $5252: $b8
    ld [$58ae], sp                                ; $5253: $08 $ae $58
    ld l, l                                       ; $5256: $6d
    sub d                                         ; $5257: $92
    ld d, a                                       ; $5258: $57
    nop                                           ; $5259: $00
    ld [$35a8], sp                                ; $525a: $08 $a8 $35
    cp $01                                        ; $525d: $fe $01
    rst $10                                       ; $525f: $d7
    jr z, jr_0a0_5210                             ; $5260: $28 $ae

    nop                                           ; $5262: $00
    sub b                                         ; $5263: $90
    ld e, e                                       ; $5264: $5b
    xor b                                         ; $5265: $a8
    ld c, e                                       ; $5266: $4b
    sub c                                         ; $5267: $91
    ld h, l                                       ; $5268: $65
    ld e, $ef                                     ; $5269: $1e $ef
    nop                                           ; $526b: $00
    add b                                         ; $526c: $80
    ld a, [$5540]                                 ; $526d: $fa $40 $55
    and b                                         ; $5270: $a0
    sbc [hl]                                      ; $5271: $9e

jr_0a0_5272:
    ld h, c                                       ; $5272: $61
    db $fd                                        ; $5273: $fd
    nop                                           ; $5274: $00
    ld [bc], a                                    ; $5275: $02
    ld l, e                                       ; $5276: $6b
    sub b                                         ; $5277: $90
    and e                                         ; $5278: $a3
    ld a, h                                       ; $5279: $7c
    ld l, l                                       ; $527a: $6d
    ld d, $bd                                     ; $527b: $16 $bd
    nop                                           ; $527d: $00
    ld a, [bc]                                    ; $527e: $0a
    db $dd                                        ; $527f: $dd
    ld [hl+], a                                   ; $5280: $22
    xor c                                         ; $5281: $a9
    ld d, [hl]                                    ; $5282: $56
    db $e4                                        ; $5283: $e4
    ld de, $005f                                  ; $5284: $11 $5f $00
    and d                                         ; $5287: $a2
    xor h                                         ; $5288: $ac
    jr jr_0a0_52e2                                ; $5289: $18 $57

    and b                                         ; $528b: $a0
    ccf                                           ; $528c: $3f
    rst $28                                       ; $528d: $ef
    db $f4                                        ; $528e: $f4
    nop                                           ; $528f: $00
    ld de, $806f                                  ; $5290: $11 $6f $80
    call $5f32                                    ; $5293: $cd $32 $5f
    ld [hl+], a                                   ; $5296: $22
    or a                                          ; $5297: $b7
    nop                                           ; $5298: $00
    add hl, bc                                    ; $5299: $09
    rst $28                                       ; $529a: $ef
    inc d                                         ; $529b: $14
    ld a, h                                       ; $529c: $7c
    adc e                                         ; $529d: $8b
    dec a                                         ; $529e: $3d
    ld c, b                                       ; $529f: $48
    db $db                                        ; $52a0: $db
    nop                                           ; $52a1: $00
    inc h                                         ; $52a2: $24
    ld l, [hl]                                    ; $52a3: $6e
    sub l                                         ; $52a4: $95

jr_0a0_52a5:
    cp $a9                                        ; $52a5: $fe $a9
    db $eb                                        ; $52a7: $eb
    db $10                                        ; $52a8: $10
    rst $18                                       ; $52a9: $df
    add b                                         ; $52aa: $80
    ld [hl-], a                                   ; $52ab: $32
    nop                                           ; $52ac: $00
    rst $28                                       ; $52ad: $ef
    nop                                           ; $52ae: $00
    or l                                          ; $52af: $b5
    ld [de], a                                    ; $52b0: $12
    cp l                                          ; $52b1: $bd
    ld h, d                                       ; $52b2: $62
    ld e, b                                       ; $52b3: $58
    nop                                           ; $52b4: $00

jr_0a0_52b5:
    and [hl]                                      ; $52b5: $a6
    ld [hl], e                                    ; $52b6: $73
    jr jr_0a0_532b                                ; $52b7: $18 $72

    and l                                         ; $52b9: $a5
    rst $20                                       ; $52ba: $e7
    jr jr_0a0_52a5                                ; $52bb: $18 $e8

    db $10                                        ; $52bd: $10

jr_0a0_52be:
    ld c, $63                                     ; $52be: $0e $63
    adc h                                         ; $52c0: $8c
    ld [hl], b                                    ; $52c1: $70
    jr c, @+$74                                   ; $52c2: $38 $72

    dec c                                         ; $52c4: $0d
    or a                                          ; $52c5: $b7
    add hl, bc                                    ; $52c6: $09
    jr nz, jr_0a0_5272                            ; $52c7: $20 $a9

    ld d, [hl]                                    ; $52c9: $56
    ld [hl], b                                    ; $52ca: $70
    ld c, b                                       ; $52cb: $48
    db $db                                        ; $52cc: $db
    jr z, jr_0a0_531a                             ; $52cd: $28 $4b

    sub c                                         ; $52cf: $91
    ld a, $60                                     ; $52d0: $3e $60
    db $e3                                        ; $52d2: $e3
    ld d, b                                       ; $52d3: $50
    ld e, b                                       ; $52d4: $58
    ldh [rOBP0], a                                ; $52d5: $e0 $48
    add e                                         ; $52d7: $83
    inc a                                         ; $52d8: $3c
    ld h, b                                       ; $52d9: $60
    jp Jump_000_0662                              ; $52da: $c3 $62 $06


    ld b, c                                       ; $52dd: $41
    ld a, [$bf61]                                 ; $52de: $fa $61 $bf
    cp h                                          ; $52e1: $bc

jr_0a0_52e2:
    ld b, b                                       ; $52e2: $40
    jr c, jr_0a0_52b5                             ; $52e3: $38 $d0

    jr jr_0a0_52be                                ; $52e5: $18 $d7

    add d                                         ; $52e7: $82
    ret nc                                        ; $52e8: $d0

    ld [$ac60], sp                                ; $52e9: $08 $60 $ac
    ld d, e                                       ; $52ec: $53
    cp a                                          ; $52ed: $bf
    ld [$6060], a                                 ; $52ee: $ea $60 $60
    sub $d0                                       ; $52f1: $d6 $d0
    ld h, b                                       ; $52f3: $60
    ld d, b                                       ; $52f4: $50
    ret nc                                        ; $52f5: $d0

    ld l, b                                       ; $52f6: $68
    or d                                          ; $52f7: $b2
    ret nc                                        ; $52f8: $d0

    ld [$aa95], sp                                ; $52f9: $08 $95 $aa
    reti                                          ; $52fc: $d9


    ld h, d                                       ; $52fd: $62
    nop                                           ; $52fe: $00
    and c                                         ; $52ff: $a1
    sbc $e5                                       ; $5300: $de $e5
    db $10                                        ; $5302: $10
    rst $10                                       ; $5303: $d7
    xor b                                         ; $5304: $a8
    db $fc                                        ; $5305: $fc
    ld e, l                                       ; $5306: $5d
    nop                                           ; $5307: $00
    rst $38                                       ; $5308: $ff
    xor [hl]                                      ; $5309: $ae
    ld a, $e3                                     ; $530a: $3e $e3
    call nc, Call_0a0_6f13                        ; $530c: $d4 $13 $6f
    add b                                         ; $530f: $80
    nop                                           ; $5310: $00
    rst $28                                       ; $5311: $ef
    jr nc, jr_0a0_5373                            ; $5312: $30 $5f

    ld [hl+], a                                   ; $5314: $22
    cp a                                          ; $5315: $bf
    ld bc, $54ab                                  ; $5316: $01 $ab $54
    db $10                                        ; $5319: $10

jr_0a0_531a:
    cp $ab                                        ; $531a: $fe $ab
    rra                                           ; $531c: $1f
    ret nc                                        ; $531d: $d0

    nop                                           ; $531e: $00
    ld c, [hl]                                    ; $531f: $4e
    or l                                          ; $5320: $b5
    cp $a9                                        ; $5321: $fe $a9
    ld [$b8c3], sp                                ; $5323: $08 $c3 $b8
    db $db                                        ; $5326: $db
    dec h                                         ; $5327: $25
    jp c, Jump_000_1107                           ; $5328: $da $07 $11

jr_0a0_532b:
    sbc l                                         ; $532b: $9d
    ld [hl-], a                                   ; $532c: $32
    nop                                           ; $532d: $00
    cp l                                          ; $532e: $bd
    ld h, d                                       ; $532f: $62
    ld d, b                                       ; $5330: $50
    adc [hl]                                      ; $5331: $8e
    ld [hl], e                                    ; $5332: $73
    inc e                                         ; $5333: $1c
    jp nc, $002f                                  ; $5334: $d2 $2f $00

    and $19                                       ; $5337: $e6 $19
    ld b, b                                       ; $5339: $40
    xor [hl]                                      ; $533a: $ae
    ld [hl], a                                    ; $533b: $77
    db $dd                                        ; $533c: $dd
    ld c, d                                       ; $533d: $4a
    add l                                         ; $533e: $85
    nop                                           ; $533f: $00
    ld [hl], l                                    ; $5340: $75
    ld [bc], a                                    ; $5341: $02
    ld c, e                                       ; $5342: $4b
    or b                                          ; $5343: $b0
    rst $38                                       ; $5344: $ff
    nop                                           ; $5345: $00
    xor c                                         ; $5346: $a9
    ld d, d                                       ; $5347: $52
    nop                                           ; $5348: $00
    nop                                           ; $5349: $00
    sbc h                                         ; $534a: $9c
    ld a, l                                       ; $534b: $7d
    add d                                         ; $534c: $82
    ei                                            ; $534d: $fb
    inc b                                         ; $534e: $04
    cp c                                          ; $534f: $b9
    ld b, d                                       ; $5350: $42
    inc b                                         ; $5351: $04
    ld d, [hl]                                    ; $5352: $56
    ld [$046b], sp                                ; $5353: $08 $6b $04
    cp d                                          ; $5356: $ba
    ret nc                                        ; $5357: $d0

    ld de, $08f5                                  ; $5358: $11 $f5 $08
    nop                                           ; $535b: $00
    ld c, l                                       ; $535c: $4d
    db $10                                        ; $535d: $10
    or h                                          ; $535e: $b4
    nop                                           ; $535f: $00
    jp hl                                         ; $5360: $e9


    db $10                                        ; $5361: $10
    and c                                         ; $5362: $a1
    ld a, [de]                                    ; $5363: $1a
    nop                                           ; $5364: $00
    ld a, [c]                                     ; $5365: $f2
    inc b                                         ; $5366: $04
    ld b, h                                       ; $5367: $44
    add hl, hl                                    ; $5368: $29
    ld h, [hl]                                    ; $5369: $66
    sub c                                         ; $536a: $91
    or c                                          ; $536b: $b1
    ld b, $00                                     ; $536c: $06 $00
    inc de                                        ; $536e: $13
    ld l, b                                       ; $536f: $68
    push af                                       ; $5370: $f5
    ld [bc], a                                    ; $5371: $02
    inc [hl]                                      ; $5372: $34

jr_0a0_5373:
    jp $1ca3                                      ; $5373: $c3 $a3 $1c


    ld b, b                                       ; $5376: $40
    dec [hl]                                      ; $5377: $35
    ret nc                                        ; $5378: $d0

    ld bc, $8837                                  ; $5379: $01 $37 $88
    xor h                                         ; $537c: $ac
    ld [bc], a                                    ; $537d: $02
    ld e, d                                       ; $537e: $5a
    and l                                         ; $537f: $a5
    ld [hl+], a                                   ; $5380: $22
    ld b, c                                       ; $5381: $41
    and b                                         ; $5382: $a0
    ret nc                                        ; $5383: $d0

    add hl, bc                                    ; $5384: $09
    ld bc, $56aa                                  ; $5385: $01 $aa $56
    ret nc                                        ; $5388: $d0

    ld bc, $00a0                                  ; $5389: $01 $a0 $00
    ld a, [de]                                    ; $538c: $1a
    jp c, $ab21                                   ; $538d: $da $21 $ab

    inc d                                         ; $5390: $14
    ret nc                                        ; $5391: $d0

    dec bc                                        ; $5392: $0b
    and a                                         ; $5393: $a7
    nop                                           ; $5394: $00
    ld b, b                                       ; $5395: $40
    db $ed                                        ; $5396: $ed
    db $10                                        ; $5397: $10
    xor e                                         ; $5398: $ab
    ld b, h                                       ; $5399: $44
    and h                                         ; $539a: $a4
    ld b, e                                       ; $539b: $43
    xor e                                         ; $539c: $ab
    ld [bc], a                                    ; $539d: $02
    inc d                                         ; $539e: $14
    inc [hl]                                      ; $539f: $34
    res 7, l                                      ; $53a0: $cb $bd
    ld b, b                                       ; $53a2: $40
    sub [hl]                                      ; $53a3: $96
    ret nc                                        ; $53a4: $d0

    ld bc, $0024                                  ; $53a5: $01 $24 $00
    jp z, Jump_0a0_449a                           ; $53a8: $ca $9a $44

    xor c                                         ; $53ab: $a9
    ld [de], a                                    ; $53ac: $12
    dec [hl]                                      ; $53ad: $35
    ld [$806f], sp                                ; $53ae: $08 $6f $80
    ret nc                                        ; $53b1: $d0

    ld bc, $4093                                  ; $53b2: $01 $93 $40
    ld a, [c]                                     ; $53b5: $f2
    dec b                                         ; $53b6: $05
    ld de, $5ee2                                  ; $53b7: $11 $e2 $5e
    ld bc, $05a1                                  ; $53ba: $01 $a1 $05
    ld [$02f5], sp                                ; $53bd: $08 $f5 $02
    dec h                                         ; $53c0: $25
    db $10                                        ; $53c1: $10
    ret nc                                        ; $53c2: $d0

    add hl, bc                                    ; $53c3: $09
    inc b                                         ; $53c4: $04
    add sp, $12                                   ; $53c5: $e8 $12
    rla                                           ; $53c7: $17
    xor b                                         ; $53c8: $a8
    set 2, b                                      ; $53c9: $cb $d0
    ld bc, $53a8                                  ; $53cb: $01 $a8 $53
    inc d                                         ; $53ce: $14
    or l                                          ; $53cf: $b5
    ld b, b                                       ; $53d0: $40
    ld l, $d0                                     ; $53d1: $2e $d0
    ld bc, $d03b                                  ; $53d3: $01 $3b $d0
    ld bc, $8469                                  ; $53d6: $01 $69 $84
    db $10                                        ; $53d9: $10
    ld [hl], b                                    ; $53da: $70
    add hl, bc                                    ; $53db: $09
    or h                                          ; $53dc: $b4
    ld h, b                                       ; $53dd: $60
    ld bc, $922c                                  ; $53de: $01 $2c $92
    ld b, [hl]                                    ; $53e1: $46
    ld [$8810], sp                                ; $53e2: $08 $10 $88
    dec h                                         ; $53e5: $25
    ld a, [$01d0]                                 ; $53e6: $fa $d0 $01
    inc l                                         ; $53e9: $2c
    sub e                                         ; $53ea: $93
    call nc, Call_000_000c                        ; $53eb: $d4 $0c $00
    ld c, [hl]                                    ; $53ee: $4e
    sub h                                         ; $53ef: $94
    ld b, c                                       ; $53f0: $41
    ld c, $4f                                     ; $53f1: $0e $4f
    or b                                          ; $53f3: $b0
    jp nz, VBlankInterrupt                        ; $53f4: $c2 $40 $00

    ld [hl], l                                    ; $53f7: $75
    ret nz                                        ; $53f8: $c0

    cp [hl]                                       ; $53f9: $be
    ld a, c                                       ; $53fa: $79
    ld [hl], l                                    ; $53fb: $75
    add d                                         ; $53fc: $82
    dec bc                                        ; $53fd: $0b
    ld d, b                                       ; $53fe: $50
    nop                                           ; $53ff: $00

Jump_0a0_5400:
    inc bc                                        ; $5400: $03
    ld a, h                                       ; $5401: $7c
    ld c, c                                       ; $5402: $49
    ld d, $b0                                     ; $5403: $16 $b0
    ld a, [bc]                                    ; $5405: $0a
    ld c, l                                       ; $5406: $4d
    ld [hl+], a                                   ; $5407: $22
    ld bc, $14a9                                  ; $5408: $01 $a9 $14
    ld b, h                                       ; $540b: $44
    ld de, $a04d                                  ; $540c: $11 $4d $a0
    add h                                         ; $540f: $84
    ret nc                                        ; $5410: $d0

    ld bc, $1c00                                  ; $5411: $01 $00 $1c
    jp Jump_000_11a4                              ; $5414: $c3 $a4 $11


    ld l, [hl]                                    ; $5417: $6e
    nop                                           ; $5418: $00
    ret                                           ; $5419: $c9


    ld [hl-], a                                   ; $541a: $32
    nop                                           ; $541b: $00
    ld c, l                                       ; $541c: $4d
    jr nz, @-$48                                  ; $541d: $20 $b6

    nop                                           ; $541f: $00
    jp z, Jump_000_2410                           ; $5420: $ca $10 $24

    adc c                                         ; $5423: $89
    nop                                           ; $5424: $00
    scf                                           ; $5425: $37
    ld b, a                                       ; $5426: $47
    dec bc                                        ; $5427: $0b
    jr nz, @+$64                                  ; $5428: $20 $62

    sub l                                         ; $542a: $95
    inc d                                         ; $542b: $14
    xor c                                         ; $542c: $a9
    nop                                           ; $542d: $00
    ld c, e                                       ; $542e: $4b
    nop                                           ; $542f: $00
    adc [hl]                                      ; $5430: $8e
    ld hl, $00b5                                  ; $5431: $21 $b5 $00
    ld l, d                                       ; $5434: $6a
    nop                                           ; $5435: $00
    nop                                           ; $5436: $00
    dec h                                         ; $5437: $25
    sub b                                         ; $5438: $90
    add hl, bc                                    ; $5439: $09
    ld [hl+], a                                   ; $543a: $22
    ld e, b                                       ; $543b: $58
    add [hl]                                      ; $543c: $86
    ld h, e                                       ; $543d: $63
    jr jr_0a0_5440                                ; $543e: $18 $00

jr_0a0_5440:
    ld [de], a                                    ; $5440: $12
    and l                                         ; $5441: $a5
    ld b, l                                       ; $5442: $45
    jr jr_0a0_5465                                ; $5443: $18 $20

    ld a, [bc]                                    ; $5445: $0a
    ld h, c                                       ; $5446: $61
    inc c                                         ; $5447: $0c
    nop                                           ; $5448: $00
    ld l, e                                       ; $5449: $6b
    sub a                                         ; $544a: $97
    ld d, l                                       ; $544b: $55
    ld c, $aa                                     ; $544c: $0e $aa
    inc a                                         ; $544e: $3c
    call nc, $0038                                ; $544f: $d4 $38 $00
    or $38                                        ; $5452: $f6 $38
    or h                                          ; $5454: $b4
    cp b                                          ; $5455: $b8
    ld l, d                                       ; $5456: $6a
    cp h                                          ; $5457: $bc
    ld e, h                                       ; $5458: $5c
    db $e4                                        ; $5459: $e4
    nop                                           ; $545a: $00
    ld h, l                                       ; $545b: $65
    sbc $af                                       ; $545c: $de $af
    ld h, b                                       ; $545e: $60
    ld a, [de]                                    ; $545f: $1a
    ld h, b                                       ; $5460: $60
    dec b                                         ; $5461: $05
    jr nc, jr_0a0_5464                            ; $5462: $30 $00

jr_0a0_5464:
    ld d, [hl]                                    ; $5464: $56

jr_0a0_5465:
    add hl, bc                                    ; $5465: $09
    dec d                                         ; $5466: $15
    ld c, $0d                                     ; $5467: $0e $0d
    ld b, $13                                     ; $5469: $06 $13
    ld b, $00                                     ; $546b: $06 $00
    ld l, d                                       ; $546d: $6a
    ld [hl], h                                    ; $546e: $74
    sbc $60                                       ; $546f: $de $60
    ld h, b                                       ; $5471: $60
    jp nc, $c2f0                                  ; $5472: $d2 $f0 $c2

    nop                                           ; $5475: $00
    ld [c], a                                     ; $5476: $e2
    ret nz                                        ; $5477: $c0

    or b                                          ; $5478: $b0
    ret nz                                        ; $5479: $c0

    jp hl                                         ; $547a: $e9


    ld b, b                                       ; $547b: $40
    db $f4                                        ; $547c: $f4
    nop                                           ; $547d: $00
    nop                                           ; $547e: $00
    xor a                                         ; $547f: $af
    ld [bc], a                                    ; $5480: $02
    rlca                                          ; $5481: $07
    inc bc                                        ; $5482: $03
    rrca                                          ; $5483: $0f
    inc bc                                        ; $5484: $03
    inc de                                        ; $5485: $13
    rlca                                          ; $5486: $07
    nop                                           ; $5487: $00
    ld b, l                                       ; $5488: $45
    inc bc                                        ; $5489: $03
    ld de, $4a07                                  ; $548a: $11 $07 $4a
    rlca                                          ; $548d: $07
    cp l                                          ; $548e: $bd
    ld [bc], a                                    ; $548f: $02
    add b                                         ; $5490: $80
    ret nc                                        ; $5491: $d0

    jr z, @+$08                                   ; $5492: $28 $06

    adc c                                         ; $5494: $89
    push bc                                       ; $5495: $c5
    adc b                                         ; $5496: $88
    ld [hl], l                                    ; $5497: $75
    jp z, Jump_0a0_4035                           ; $5498: $ca $35 $40

    ld [hl], b                                    ; $549b: $70
    or b                                          ; $549c: $b0
    jr c, jr_0a0_54cd                             ; $549d: $38 $2e

    sub b                                         ; $549f: $90
    jp nc, $4a08                                  ; $54a0: $d2 $08 $4a

    sub c                                         ; $54a3: $91
    inc c                                         ; $54a4: $0c
    ld b, c                                       ; $54a5: $41
    ld c, $6f                                     ; $54a6: $0e $6f
    add b                                         ; $54a8: $80
    ld c, h                                       ; $54a9: $4c
    inc bc                                        ; $54aa: $03
    add b                                         ; $54ab: $80
    ld [bc], a                                    ; $54ac: $02
    push af                                       ; $54ad: $f5
    ld [bc], a                                    ; $54ae: $02
    ld [bc], a                                    ; $54af: $02
    ld c, e                                       ; $54b0: $4b
    db $10                                        ; $54b1: $10
    inc bc                                        ; $54b2: $03
    ld a, h                                       ; $54b3: $7c
    dec [hl]                                      ; $54b4: $35
    ld b, b                                       ; $54b5: $40
    sub b                                         ; $54b6: $90
    ld e, b                                       ; $54b7: $58
    and l                                         ; $54b8: $a5
    ld b, b                                       ; $54b9: $40
    db $10                                        ; $54ba: $10
    sub b                                         ; $54bb: $90
    ld e, b                                       ; $54bc: $58
    ld c, $d1                                     ; $54bd: $0e $d1
    push de                                       ; $54bf: $d5
    xor b                                         ; $54c0: $a8
    ld c, d                                       ; $54c1: $4a
    ldh a, [rP1]                                  ; $54c2: $f0 $00
    add l                                         ; $54c4: $85
    ei                                            ; $54c5: $fb
    ld sp, hl                                     ; $54c6: $f9
    ld b, [hl]                                    ; $54c7: $46
    xor d                                         ; $54c8: $aa
    push de                                       ; $54c9: $d5
    ldh a, [$df]                                  ; $54ca: $f0 $df
    nop                                           ; $54cc: $00

jr_0a0_54cd:
    rst $38                                       ; $54cd: $ff
    rst $38                                       ; $54ce: $ff
    cp b                                          ; $54cf: $b8
    ld b, e                                       ; $54d0: $43
    ld a, h                                       ; $54d1: $7c
    add d                                         ; $54d2: $82
    ld a, [hl+]                                   ; $54d3: $2a
    ld bc, $9400                                  ; $54d4: $01 $00 $94
    db $e3                                        ; $54d7: $e3
    ld b, d                                       ; $54d8: $42
    and b                                         ; $54d9: $a0
    sbc l                                         ; $54da: $9d
    ld h, d                                       ; $54db: $62
    ldh a, [$5d]                                  ; $54dc: $f0 $5d
    nop                                           ; $54de: $00
    rst $38                                       ; $54df: $ff
    rst $38                                       ; $54e0: $ff
    ld [hl], $88                                  ; $54e1: $36 $88
    xor b                                         ; $54e3: $a8
    db $10                                        ; $54e4: $10
    dec b                                         ; $54e5: $05
    or b                                          ; $54e6: $b0
    nop                                           ; $54e7: $00
    or a                                          ; $54e8: $b7
    nop                                           ; $54e9: $00
    ld e, [hl]                                    ; $54ea: $5e
    add b                                         ; $54eb: $80
    ld [hl-], a                                   ; $54ec: $32
    push bc                                       ; $54ed: $c5
    sub h                                         ; $54ee: $94
    rst $38                                       ; $54ef: $ff
    nop                                           ; $54f0: $00
    ld d, a                                       ; $54f1: $57
    ld a, l                                       ; $54f2: $7d
    ld e, l                                       ; $54f3: $5d
    and d                                         ; $54f4: $a2
    ld hl, $90d7                                  ; $54f5: $21 $d7 $90
    rrca                                          ; $54f8: $0f
    nop                                           ; $54f9: $00
    inc h                                         ; $54fa: $24
    sbc c                                         ; $54fb: $99
    xor b                                         ; $54fc: $a8
    ld [hl], a                                    ; $54fd: $77
    ld [hl], e                                    ; $54fe: $73
    adc l                                         ; $54ff: $8d
    dec hl                                        ; $5500: $2b
    rst $38                                       ; $5501: $ff
    nop                                           ; $5502: $00
    rst $18                                       ; $5503: $df
    db $fd                                        ; $5504: $fd
    inc [hl]                                      ; $5505: $34
    jp $f18a                                      ; $5506: $c3 $8a $f1


    push af                                       ; $5509: $f5
    add sp, $01                                   ; $550a: $e8 $01
    xor e                                         ; $550c: $ab
    call nc, $fbb4                                ; $550d: $d4 $b4 $fb
    adc c                                         ; $5510: $89
    or $d4                                        ; $5511: $f6 $d4
    sub e                                         ; $5513: $93
    rlca                                          ; $5514: $07
    nop                                           ; $5515: $00
    xor a                                         ; $5516: $af
    ld d, b                                       ; $5517: $50
    or d                                          ; $5518: $b2
    add hl, bc                                    ; $5519: $09
    ld l, a                                       ; $551a: $6f
    sub b                                         ; $551b: $90
    ld a, [de]                                    ; $551c: $1a
    nop                                           ; $551d: $00
    dec b                                         ; $551e: $05
    xor l                                         ; $551f: $ad
    ld d, e                                       ; $5520: $53
    ld c, l                                       ; $5521: $4d
    or b                                          ; $5522: $b0
    xor d                                         ; $5523: $aa
    ret nc                                        ; $5524: $d0

    dec bc                                        ; $5525: $0b
    jp nz, $014a                                  ; $5526: $c2 $4a $01

    ld bc, $3280                                  ; $5529: $01 $80 $32
    adc a                                         ; $552c: $8f
    push de                                       ; $552d: $d5
    db $e3                                        ; $552e: $e3
    ld l, d                                       ; $552f: $6a
    db $10                                        ; $5530: $10
    sbc l                                         ; $5531: $9d
    ld c, $00                                     ; $5532: $0e $00
    add hl, sp                                    ; $5534: $39
    jp Jump_000_23d4                              ; $5535: $c3 $d4 $23


    xor b                                         ; $5538: $a8
    rlca                                          ; $5539: $07
    sub l                                         ; $553a: $95
    ld l, e                                       ; $553b: $6b
    ld [$b74a], sp                                ; $553c: $08 $4a $b7

Call_0a0_553f:
    or b                                          ; $553f: $b0
    rrca                                          ; $5540: $0f
    jp $ba0f                                      ; $5541: $c3 $0f $ba


    push bc                                       ; $5544: $c5

jr_0a0_5545:
    sub l                                         ; $5545: $95
    nop                                           ; $5546: $00
    ld [$f0eb], a                                 ; $5547: $ea $eb $f0
    or h                                          ; $554a: $b4
    ret z                                         ; $554b: $c8

    push de                                       ; $554c: $d5
    xor $8b                                       ; $554d: $ee $8b
    jr nz, jr_0a0_5545                            ; $554f: $20 $f4

    ret nc                                        ; $5551: $d0

    db $d3                                        ; $5552: $d3
    rlca                                          ; $5553: $07
    and $19                                       ; $5554: $e6 $19
    ld d, l                                       ; $5556: $55
    ld [$00aa], sp                                ; $5557: $08 $aa $00
    dec b                                         ; $555a: $05
    db $ec                                        ; $555b: $ec
    db $10                                        ; $555c: $10
    ld e, d                                       ; $555d: $5a
    ld hl, $b34c                                  ; $555e: $21 $4c $b3
    ld e, d                                       ; $5561: $5a
    add b                                         ; $5562: $80
    db $e3                                        ; $5563: $e3
    rlca                                          ; $5564: $07
    ld c, a                                       ; $5565: $4f
    or b                                          ; $5566: $b0
    sub [hl]                                      ; $5567: $96
    ld l, c                                       ; $5568: $69
    ld d, c                                       ; $5569: $51
    add h                                         ; $556a: $84
    xor c                                         ; $556b: $a9
    ld [bc], a                                    ; $556c: $02
    ld b, a                                       ; $556d: $47
    ld d, d                                       ; $556e: $52
    nop                                           ; $556f: $00
    cp c                                          ; $5570: $b9
    ld b, [hl]                                    ; $5571: $46
    sub h                                         ; $5572: $94
    di                                            ; $5573: $f3
    rlca                                          ; $5574: $07
    ld [hl], l                                    ; $5575: $75
    nop                                           ; $5576: $00
    adc e                                         ; $5577: $8b
    xor b                                         ; $5578: $a8
    rla                                           ; $5579: $17
    ld d, l                                       ; $557a: $55
    dec bc                                        ; $557b: $0b
    and d                                         ; $557c: $a2
    rst $18                                       ; $557d: $df
    sbc c                                         ; $557e: $99
    ld [$5427], sp                                ; $557f: $08 $27 $54
    xor e                                         ; $5582: $ab
    dec hl                                        ; $5583: $2b
    add d                                         ; $5584: $82
    rlca                                          ; $5585: $07
    xor [hl]                                      ; $5586: $ae
    pop bc                                        ; $5587: $c1
    sub l                                         ; $5588: $95
    nop                                           ; $5589: $00
    ld [$f0ea], a                                 ; $558a: $ea $ea $f0
    or h                                          ; $558d: $b4
    res 5, c                                      ; $558e: $cb $a9
    or $86                                        ; $5590: $f6 $86
    ld b, b                                       ; $5592: $40
    ld hl, sp-$80                                 ; $5593: $f8 $80
    ld [$a15a], sp                                ; $5595: $08 $5a $a1
    ld d, l                                       ; $5598: $55
    ld a, [bc]                                    ; $5599: $0a
    sbc d                                         ; $559a: $9a
    nop                                           ; $559b: $00
    ld b, $ae                                     ; $559c: $06 $ae
    ld [hl], b                                    ; $559e: $70
    ld d, l                                       ; $559f: $55
    db $e3                                        ; $55a0: $e3
    xor e                                         ; $55a1: $ab
    inc l                                         ; $55a2: $2c
    inc b                                         ; $55a3: $04
    stop                                          ; $55a4: $10 $00
    add l                                         ; $55a6: $85
    nop                                           ; $55a7: $00
    and [hl]                                      ; $55a8: $a6
    ld c, b                                       ; $55a9: $48
    ld e, e                                       ; $55aa: $5b
    and h                                         ; $55ab: $a4
    xor h                                         ; $55ac: $ac
    nop                                           ; $55ad: $00
    jp nc, $20ed                                  ; $55ae: $d2 $ed $20

    ld e, c                                       ; $55b1: $59
    ld b, $1d                                     ; $55b2: $06 $1d
    rrca                                          ; $55b4: $0f
    sbc l                                         ; $55b5: $9d
    ld h, e                                       ; $55b6: $63
    xor b                                         ; $55b7: $a8
    ld b, a                                       ; $55b8: $47
    ld d, h                                       ; $55b9: $54
    ld bc, $698b                                  ; $55ba: $01 $8b $69
    rla                                           ; $55bd: $17
    sub [hl]                                      ; $55be: $96
    ld l, a                                       ; $55bf: $6f
    ld c, b                                       ; $55c0: $48
    or a                                          ; $55c1: $b7
    or b                                          ; $55c2: $b0
    ld e, $ca                                     ; $55c3: $1e $ca
    ret z                                         ; $55c5: $c8

    rrca                                          ; $55c6: $0f
    or b                                          ; $55c7: $b0
    ld e, [hl]                                    ; $55c8: $5e
    ld [hl], d                                    ; $55c9: $72

jr_0a0_55ca:
    rst $08                                       ; $55ca: $cf
    ld [bc], a                                    ; $55cb: $02
    ld [$02f3], sp                                ; $55cc: $08 $f3 $02
    nop                                           ; $55cf: $00
    ldh a, [rSC]                                  ; $55d0: $f0 $02
    rrca                                          ; $55d2: $0f
    ldh a, [rIF]                                  ; $55d3: $f0 $0f
    ld hl, sp+$07                                 ; $55d5: $f8 $07
    or b                                          ; $55d7: $b0
    inc b                                         ; $55d8: $04
    nop                                           ; $55d9: $00
    ret c                                         ; $55da: $d8

    nop                                           ; $55db: $00
    daa                                           ; $55dc: $27
    ld a, b                                       ; $55dd: $78
    add a                                         ; $55de: $87
    ldh [$1f], a                                  ; $55df: $e0 $1f
    jr jr_0a0_55ca                                ; $55e1: $18 $e7

    jr jr_0a0_55e5                                ; $55e3: $18 $00

jr_0a0_55e5:
    daa                                           ; $55e5: $27
    inc b                                         ; $55e6: $04
    dec de                                        ; $55e7: $1b
    jp nz, Jump_000_00f1                          ; $55e8: $c2 $f1 $00

    rst $38                                       ; $55eb: $ff
    sub h                                         ; $55ec: $94
    ld bc, $fcf3                                  ; $55ed: $01 $f3 $fc
    ld h, e                                       ; $55f0: $63
    jr c, @+$21                                   ; $55f1: $38 $1f

    db $f4                                        ; $55f3: $f4
    dec bc                                        ; $55f4: $0b
    ld h, b                                       ; $55f5: $60
    ld c, h                                       ; $55f6: $4c
    nop                                           ; $55f7: $00
    adc c                                         ; $55f8: $89
    ld [hl], d                                    ; $55f9: $72
    adc [hl]                                      ; $55fa: $8e
    add c                                         ; $55fb: $81
    and e                                         ; $55fc: $a3
    call z, Call_0a0_78ff                         ; $55fd: $cc $ff $78
    ret nz                                        ; $5600: $c0

    jr nc, jr_0a0_564f                            ; $5601: $30 $4c

    jr nz, jr_0a0_5619                            ; $5603: $20 $14

    scf                                           ; $5605: $37
    ldh a, [$08]                                  ; $5606: $f0 $08
    call c, $ab28                                 ; $5608: $dc $28 $ab
    db $10                                        ; $560b: $10
    sbc h                                         ; $560c: $9c
    rst $18                                       ; $560d: $df
    cpl                                           ; $560e: $2f

jr_0a0_560f:
    jr nz, jr_0a0_564d                            ; $560f: $20 $3c

    ld e, $61                                     ; $5611: $1e $61
    dec a                                         ; $5613: $3d
    ld b, d                                       ; $5614: $42
    ld h, c                                       ; $5615: $61
    db $eb                                        ; $5616: $eb
    jr nz, jr_0a0_561d                            ; $5617: $20 $04

jr_0a0_5619:
    sub b                                         ; $5619: $90
    ld c, c                                       ; $561a: $49
    ld [hl+], a                                   ; $561b: $22
    inc e                                         ; $561c: $1c

jr_0a0_561d:
    ld h, c                                       ; $561d: $61
    ld [hl+], a                                   ; $561e: $22
    ret nc                                        ; $561f: $d0

    ld a, [hl-]                                   ; $5620: $3a
    nop                                           ; $5621: $00
    sbc h                                         ; $5622: $9c
    ld h, e                                       ; $5623: $63
    db $e3                                        ; $5624: $e3
    ld b, h                                       ; $5625: $44
    jr nc, jr_0a0_560f                            ; $5626: $30 $e7

    ld a, $5d                                     ; $5628: $3e $5d
    ret nz                                        ; $562a: $c0

    and b                                         ; $562b: $a0
    ld e, d                                       ; $562c: $5a
    jr nc, jr_0a0_567a                            ; $562d: $30 $4b

    push de                                       ; $562f: $d5
    jr z, jr_0a0_5633                             ; $5630: $28 $01

    ld b, d                                       ; $5632: $42

jr_0a0_5633:
    and d                                         ; $5633: $a2
    ld b, c                                       ; $5634: $41
    inc bc                                        ; $5635: $03
    ld e, d                                       ; $5636: $5a
    rst $20                                       ; $5637: $e7
    cp e                                          ; $5638: $bb
    ld a, h                                       ; $5639: $7c

jr_0a0_563a:
    call RST_30                                   ; $563a: $cd $30 $00
    dec hl                                        ; $563d: $2b
    and b                                         ; $563e: $a0
    ld a, [de]                                    ; $563f: $1a
    nop                                           ; $5640: $00
    xor b                                         ; $5641: $a8
    dec d                                         ; $5642: $15
    ld b, l                                       ; $5643: $45
    inc de                                        ; $5644: $13
    ld c, [hl]                                    ; $5645: $4e
    and e                                         ; $5646: $a3
    add [hl]                                      ; $5647: $86
    rra                                           ; $5648: $1f
    jr nz, jr_0a0_56a8                            ; $5649: $20 $5d

    xor [hl]                                      ; $564b: $ae
    and b                                         ; $564c: $a0

jr_0a0_564d:
    ld [bc], a                                    ; $564d: $02
    add hl, de                                    ; $564e: $19

jr_0a0_564f:
    add hl, hl                                    ; $564f: $29
    cp $ba                                        ; $5650: $fe $ba
    rst $00                                       ; $5652: $c7
    nop                                           ; $5653: $00
    ld h, [hl]                                    ; $5654: $66
    add c                                         ; $5655: $81
    ld b, e                                       ; $5656: $43
    add b                                         ; $5657: $80
    add c                                         ; $5658: $81
    nop                                           ; $5659: $00
    ld b, b                                       ; $565a: $40
    nop                                           ; $565b: $00
    add b                                         ; $565c: $80
    db $10                                        ; $565d: $10
    ld a, [hl+]                                   ; $565e: $2a
    res 0, b                                      ; $565f: $cb $80
    ld e, [hl]                                    ; $5661: $5e
    pop hl                                        ; $5662: $e1
    or l                                          ; $5663: $b5
    ld a, b                                       ; $5664: $78
    jp c, Jump_000_3840                           ; $5665: $da $40 $38

    ret nz                                        ; $5668: $c0

    ld a, [hl+]                                   ; $5669: $2a
    ld c, b                                       ; $566a: $48
    daa                                           ; $566b: $27
    or h                                          ; $566c: $b4
    inc b                                         ; $566d: $04
    adc $14                                       ; $566e: $ce $14
    jr nz, jr_0a0_5699                            ; $5670: $20 $27

    adc e                                         ; $5672: $8b
    jr nc, jr_0a0_56af                            ; $5673: $30 $3a

    ld c, $a1                                     ; $5675: $0e $a1
    dec [hl]                                      ; $5677: $35
    add b                                         ; $5678: $80
    ld l, d                                       ; $5679: $6a

jr_0a0_567a:
    ld a, [bc]                                    ; $567a: $0a
    nop                                           ; $567b: $00
    cp e                                          ; $567c: $bb
    call z, $503b                                 ; $567d: $cc $3b $50
    rlca                                          ; $5680: $07
    add hl, de                                    ; $5681: $19
    ld d, b                                       ; $5682: $50
    scf                                           ; $5683: $37
    xor a                                         ; $5684: $af
    ld l, $ff                                     ; $5685: $2e $ff
    sbc a                                         ; $5687: $9f
    inc b                                         ; $5688: $04
    jr nz, jr_0a0_563a                            ; $5689: $20 $af

    xor $17                                       ; $568b: $ee $17
    ld e, h                                       ; $568d: $5c
    ld c, a                                       ; $568e: $4f
    ld c, d                                       ; $568f: $4a
    rrca                                          ; $5690: $0f
    adc [hl]                                      ; $5691: $8e
    nop                                           ; $5692: $00
    ret nz                                        ; $5693: $c0

    and l                                         ; $5694: $a5
    ret nz                                        ; $5695: $c0

    sub h                                         ; $5696: $94
    db $eb                                        ; $5697: $eb
    rst $38                                       ; $5698: $ff

jr_0a0_5699:
    rst $38                                       ; $5699: $ff
    sub h                                         ; $569a: $94
    ld [hl+], a                                   ; $569b: $22
    ret nz                                        ; $569c: $c0

    and e                                         ; $569d: $a3
    ld [$3810], sp                                ; $569e: $08 $10 $38
    nop                                           ; $56a1: $00
    ld e, l                                       ; $56a2: $5d
    jp c, $ff05                                   ; $56a3: $da $05 $ff

    nop                                           ; $56a6: $00
    rst $38                                       ; $56a7: $ff

jr_0a0_56a8:
    add [hl]                                      ; $56a8: $86
    nop                                           ; $56a9: $00
    ld d, l                                       ; $56aa: $55
    nop                                           ; $56ab: $00
    sub h                                         ; $56ac: $94

jr_0a0_56ad:
    ld l, e                                       ; $56ad: $6b
    rst $38                                       ; $56ae: $ff

jr_0a0_56af:
    ld [bc], a                                    ; $56af: $02
    rst $38                                       ; $56b0: $ff
    sub c                                         ; $56b1: $91
    cpl                                           ; $56b2: $2f
    pop hl                                        ; $56b3: $e1
    rra                                           ; $56b4: $1f
    ld d, c                                       ; $56b5: $51
    dec sp                                        ; $56b6: $3b
    nop                                           ; $56b7: $00
    ld hl, $1f02                                  ; $56b8: $21 $02 $1f
    ld d, c                                       ; $56bb: $51
    cpl                                           ; $56bc: $2f
    and c                                         ; $56bd: $a1
    ld e, a                                       ; $56be: $5f
    rst $38                                       ; $56bf: $ff
    ld a, d                                       ; $56c0: $7a
    scf                                           ; $56c1: $37
    ei                                            ; $56c2: $fb
    add h                                         ; $56c3: $84
    db $f4                                        ; $56c4: $f4
    rlca                                          ; $56c5: $07
    dec b                                         ; $56c6: $05
    ld a, [$f50a]                                 ; $56c7: $fa $0a $f5
    jr nz, jr_0a0_5714                            ; $56ca: $20 $48

    xor c                                         ; $56cc: $a9
    ld d, a                                       ; $56cd: $57
    add d                                         ; $56ce: $82
    ld a, [c]                                     ; $56cf: $f2
    rrca                                          ; $56d0: $0f
    ldh a, [rIE]                                  ; $56d1: $f0 $ff
    rst $38                                       ; $56d3: $ff
    ld hl, sp+$02                                 ; $56d4: $f8 $02
    ldh [$37], a                                  ; $56d6: $e0 $37
    and a                                         ; $56d8: $a7
    db $10                                        ; $56d9: $10
    ld bc, $01eb                                  ; $56da: $01 $eb $01
    ld b, b                                       ; $56dd: $40
    ld [$0103], sp                                ; $56de: $08 $03 $01
    ld d, a                                       ; $56e1: $57
    ld bc, $20a0                                  ; $56e2: $01 $a0 $20
    ld [$60aa], sp                                ; $56e5: $08 $aa $60
    ld b, $40                                     ; $56e8: $06 $40
    add b                                         ; $56ea: $80
    ld a, a                                       ; $56eb: $7f
    add b                                         ; $56ec: $80
    ld c, c                                       ; $56ed: $49
    adc h                                         ; $56ee: $8c
    inc b                                         ; $56ef: $04
    nop                                           ; $56f0: $00
    ld a, a                                       ; $56f1: $7f
    add b                                         ; $56f2: $80
    ld d, l                                       ; $56f3: $55
    db $10                                        ; $56f4: $10
    db $10                                        ; $56f5: $10
    cp h                                          ; $56f6: $bc
    rlca                                          ; $56f7: $07
    nop                                           ; $56f8: $00
    add e                                         ; $56f9: $83
    sub b                                         ; $56fa: $90
    db $d3                                        ; $56fb: $d3
    ld bc, $00ff                                  ; $56fc: $01 $ff $00
    db $10                                        ; $56ff: $10
    ld [$ab54], sp                                ; $5700: $08 $54 $ab
    ld [bc], a                                    ; $5703: $02
    ld bc, $fe11                                  ; $5704: $01 $11 $fe
    ld bc, $041e                                  ; $5707: $01 $1e $04
    nop                                           ; $570a: $00
    cp $01                                        ; $570b: $fe $01
    ld d, l                                       ; $570d: $55
    db $10                                        ; $570e: $10
    rlca                                          ; $570f: $07
    ld [bc], a                                    ; $5710: $02
    xor d                                         ; $5711: $aa
    ld d, l                                       ; $5712: $55
    nop                                           ; $5713: $00

jr_0a0_5714:
    rst $38                                       ; $5714: $ff
    ld [hl+], a                                   ; $5715: $22
    db $dd                                        ; $5716: $dd
    rra                                           ; $5717: $1f
    ld [$e022], sp                                ; $5718: $08 $22 $e0
    ld c, $08                                     ; $571b: $0e $08
    inc b                                         ; $571d: $04
    db $10                                        ; $571e: $10
    jr c, jr_0a0_5729                             ; $571f: $38 $08

    or l                                          ; $5721: $b5
    ld b, b                                       ; $5722: $40
    ld l, d                                       ; $5723: $6a
    add b                                         ; $5724: $80
    push de                                       ; $5725: $d5
    ld b, c                                       ; $5726: $41
    nop                                           ; $5727: $00
    db $10                                        ; $5728: $10

jr_0a0_5729:
    jr c, jr_0a0_56ad                             ; $5729: $38 $82

    nop                                           ; $572b: $00
    ld bc, $0200                                  ; $572c: $01 $00 $02
    db $10                                        ; $572f: $10
    ld b, b                                       ; $5730: $40
    inc b                                         ; $5731: $04
    cp d                                          ; $5732: $ba
    dec b                                         ; $5733: $05
    ld e, l                                       ; $5734: $5d
    ld [bc], a                                    ; $5735: $02
    xor e                                         ; $5736: $ab
    jr nz, jr_0a0_5739                            ; $5737: $20 $00

jr_0a0_5739:
    dec d                                         ; $5739: $15
    ld a, [$a300]                                 ; $573a: $fa $00 $a3
    db $fc                                        ; $573d: $fc
    ld b, l                                       ; $573e: $45
    ld a, [$f78d]                                 ; $573f: $fa $8d $f7
    rrca                                          ; $5742: $0f
    rst $28                                       ; $5743: $ef
    ld [$5f9f], sp                                ; $5744: $08 $9f $5f
    cp a                                          ; $5747: $bf
    ccf                                           ; $5748: $3f
    adc d                                         ; $5749: $8a
    nop                                           ; $574a: $00
    rst $38                                       ; $574b: $ff
    rst $28                                       ; $574c: $ef
    rlca                                          ; $574d: $07
    jr nc, jr_0a0_5760                            ; $574e: $30 $10

    rrca                                          ; $5750: $0f
    ld b, b                                       ; $5751: $40
    ld a, [hl+]                                   ; $5752: $2a
    ld [de], a                                    ; $5753: $12
    add hl, bc                                    ; $5754: $09
    rst $38                                       ; $5755: $ff
    ldh [$08], a                                  ; $5756: $e0 $08
    ldh a, [$81]                                  ; $5758: $f0 $81
    db $10                                        ; $575a: $10
    jr c, jr_0a0_576c                             ; $575b: $38 $0f

    rst $38                                       ; $575d: $ff
    cp a                                          ; $575e: $bf
    rra                                           ; $575f: $1f

jr_0a0_5760:
    ld b, b                                       ; $5760: $40
    ccf                                           ; $5761: $3f
    jr nz, @+$3a                                  ; $5762: $20 $38

    inc bc                                        ; $5764: $03
    nop                                           ; $5765: $00
    rst $38                                       ; $5766: $ff
    cp $80                                        ; $5767: $fe $80
    ld hl, $70c0                                  ; $5769: $21 $c0 $70

jr_0a0_576c:
    ld a, [hl+]                                   ; $576c: $2a
    jr nc, jr_0a0_5798                            ; $576d: $30 $29

    db $fc                                        ; $576f: $fc
    jr c, @+$2b                                   ; $5770: $38 $29

    jr nc, jr_0a0_579d                            ; $5772: $30 $29

    jr c, jr_0a0_579f                             ; $5774: $38 $29

    ldh a, [$28]                                  ; $5776: $f0 $28
    ld hl, sp+$28                                 ; $5778: $f8 $28
    ld d, b                                       ; $577a: $50
    ld d, [hl]                                    ; $577b: $56
    ld e, b                                       ; $577c: $58
    rla                                           ; $577d: $17
    ld b, h                                       ; $577e: $44
    and b                                         ; $577f: $a0
    jr nz, jr_0a0_57d4                            ; $5780: $20 $52

    ld bc, $53a2                                  ; $5782: $01 $a2 $53
    ret nz                                        ; $5785: $c0

    inc l                                         ; $5786: $2c
    di                                            ; $5787: $f3
    rrca                                          ; $5788: $0f
    nop                                           ; $5789: $00
    sbc d                                         ; $578a: $9a
    ld a, h                                       ; $578b: $7c
    ret nc                                        ; $578c: $d0

    push hl                                       ; $578d: $e5
    xor c                                         ; $578e: $a9
    ld [bc], a                                    ; $578f: $02
    dec b                                         ; $5790: $05
    ret nz                                        ; $5791: $c0

    nop                                           ; $5792: $00
    adc l                                         ; $5793: $8d
    ld [bc], a                                    ; $5794: $02
    ld c, d                                       ; $5795: $4a
    dec b                                         ; $5796: $05
    add [hl]                                      ; $5797: $86

jr_0a0_5798:
    inc bc                                        ; $5798: $03
    ld b, d                                       ; $5799: $42
    ld hl, $b440                                  ; $579a: $21 $40 $b4

jr_0a0_579d:
    and b                                         ; $579d: $a0
    inc d                                         ; $579e: $14

jr_0a0_579f:
    ld d, e                                       ; $579f: $53
    cpl                                           ; $57a0: $2f
    cp c                                          ; $57a1: $b9
    ld a, a                                       ; $57a2: $7f
    adc h                                         ; $57a3: $8c
    rst $38                                       ; $57a4: $ff
    ld b, h                                       ; $57a5: $44
    ld a, [hl-]                                   ; $57a6: $3a
    db $ed                                        ; $57a7: $ed
    ld [bc], a                                    ; $57a8: $02
    ld c, a                                       ; $57a9: $4f
    ccf                                           ; $57aa: $3f
    adc a                                         ; $57ab: $8f
    and b                                         ; $57ac: $a0
    inc b                                         ; $57ad: $04
    ld b, c                                       ; $57ae: $41
    ld c, $00                                     ; $57af: $0e $00
    ld l, l                                       ; $57b1: $6d
    add e                                         ; $57b2: $83
    xor h                                         ; $57b3: $ac
    rra                                           ; $57b4: $1f
    ld h, [hl]                                    ; $57b5: $66
    ld hl, sp+$35                                 ; $57b6: $f8 $35
    ret nz                                        ; $57b8: $c0

    nop                                           ; $57b9: $00
    jp c, $2605                                   ; $57ba: $da $05 $26

    ld e, a                                       ; $57bd: $5f
    jr c, @+$01                                   ; $57be: $38 $ff

    dec sp                                        ; $57c0: $3b
    db $f4                                        ; $57c1: $f4
    nop                                           ; $57c2: $00
    rst $28                                       ; $57c3: $ef
    ld hl, sp-$2c                                 ; $57c4: $f8 $d4
    ld l, [hl]                                    ; $57c6: $6e
    cp e                                          ; $57c7: $bb
    ld h, [hl]                                    ; $57c8: $66
    ld [hl], a                                    ; $57c9: $77
    adc $00                                       ; $57ca: $ce $00
    db $db                                        ; $57cc: $db
    and $26                                       ; $57cd: $e6 $26
    rst $38                                       ; $57cf: $ff
    sub e                                         ; $57d0: $93
    cp $94                                        ; $57d1: $fe $94
    rst $38                                       ; $57d3: $ff

jr_0a0_57d4:
    ld b, b                                       ; $57d4: $40
    ld [bc], a                                    ; $57d5: $02
    add hl, de                                    ; $57d6: $19
    inc bc                                        ; $57d7: $03
    xor a                                         ; $57d8: $af
    rst $38                                       ; $57d9: $ff
    ld a, [hl-]                                   ; $57da: $3a
    db $fd                                        ; $57db: $fd
    and l                                         ; $57dc: $a5
    ret c                                         ; $57dd: $d8

    add c                                         ; $57de: $81
    ret nz                                        ; $57df: $c0

    inc c                                         ; $57e0: $0c
    ld c, l                                       ; $57e1: $4d
    cp $bc                                        ; $57e2: $fe $bc
    cp $ed                                        ; $57e4: $fe $ed
    ld [$3d00], a                                 ; $57e6: $ea $00 $3d
    nop                                           ; $57e9: $00
    sub b                                         ; $57ea: $90
    ld l, c                                       ; $57eb: $69
    ld l, [hl]                                    ; $57ec: $6e
    nop                                           ; $57ed: $00
    xor b                                         ; $57ee: $a8
    inc de                                        ; $57ef: $13
    rst $10                                       ; $57f0: $d7
    jr nz, jr_0a0_57f3                            ; $57f1: $20 $00

jr_0a0_57f3:
    ld a, [hl-]                                   ; $57f3: $3a
    nop                                           ; $57f4: $00
    rst $08                                       ; $57f5: $cf
    nop                                           ; $57f6: $00
    xor d                                         ; $57f7: $aa
    nop                                           ; $57f8: $00
    sub c                                         ; $57f9: $91
    nop                                           ; $57fa: $00
    nop                                           ; $57fb: $00
    sub [hl]                                      ; $57fc: $96
    ld [$52ad], sp                                ; $57fd: $08 $ad $52
    ld h, c                                       ; $5800: $61
    inc c                                         ; $5801: $0c
    ld e, d                                       ; $5802: $5a
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    xor l                                         ; $5805: $ad
    db $10                                        ; $5806: $10
    ld e, d                                       ; $5807: $5a
    inc b                                         ; $5808: $04
    ld [hl], l                                    ; $5809: $75
    nop                                           ; $580a: $00
    ld a, [hl+]                                   ; $580b: $2a
    nop                                           ; $580c: $00
    nop                                           ; $580d: $00
    ld d, [hl]                                    ; $580e: $56
    xor c                                         ; $580f: $a9
    db $db                                        ; $5810: $db
    nop                                           ; $5811: $00
    or [hl]                                       ; $5812: $b6
    ld b, c                                       ; $5813: $41
    xor c                                         ; $5814: $a9
    inc b                                         ; $5815: $04
    nop                                           ; $5816: $00
    ld l, a                                       ; $5817: $6f
    db $10                                        ; $5818: $10
    or l                                          ; $5819: $b5
    ld [bc], a                                    ; $581a: $02
    ld a, [hl+]                                   ; $581b: $2a
    ld bc, $0095                                  ; $581c: $01 $95 $00
    nop                                           ; $581f: $00
    ld h, a                                       ; $5820: $67
    ld [$a219], sp                                ; $5821: $08 $19 $a2
    rl h                                          ; $5824: $cb $14
    ld l, [hl]                                    ; $5826: $6e
    nop                                           ; $5827: $00
    nop                                           ; $5828: $00
    ld e, l                                       ; $5829: $5d
    and b                                         ; $582a: $a0
    ld c, d                                       ; $582b: $4a
    nop                                           ; $582c: $00
    xor b                                         ; $582d: $a8
    nop                                           ; $582e: $00
    ld [de], a                                    ; $582f: $12
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    ld [hl], l                                    ; $5832: $75
    nop                                           ; $5833: $00
    xor e                                         ; $5834: $ab
    nop                                           ; $5835: $00
    inc d                                         ; $5836: $14
    nop                                           ; $5837: $00
    nop                                           ; $5838: $00
    nop                                           ; $5839: $00
    ld b, b                                       ; $583a: $40
    add d                                         ; $583b: $82
    inc b                                         ; $583c: $04
    nop                                           ; $583d: $00
    jr z, jr_0a0_5840                             ; $583e: $28 $00

jr_0a0_5840:
    stop                                          ; $5840: $10 $00
    sub h                                         ; $5842: $94
    nop                                           ; $5843: $00
    ld b, $68                                     ; $5844: $06 $68
    nop                                           ; $5846: $00
    inc b                                         ; $5847: $04
    nop                                           ; $5848: $00
    sub b                                         ; $5849: $90
    ld a, h                                       ; $584a: $7c
    ld bc, $0816                                  ; $584b: $01 $16 $08
    add b                                         ; $584e: $80
    and b                                         ; $584f: $a0
    ld b, d                                       ; $5850: $42
    nop                                           ; $5851: $00
    ld b, h                                       ; $5852: $44
    ld h, $00                                     ; $5853: $26 $00
    ld b, h                                       ; $5855: $44
    nop                                           ; $5856: $00
    ld de, $9a00                                  ; $5857: $11 $00 $9a
    add d                                         ; $585a: $82
    ld h, $00                                     ; $585b: $26 $00
    nop                                           ; $585d: $00
    nop                                           ; $585e: $00
    ldh [rP1], a                                  ; $585f: $e0 $00
    ld c, b                                       ; $5861: $48
    jr nz, jr_0a0_5864                            ; $5862: $20 $00

jr_0a0_5864:
    nop                                           ; $5864: $00
    and d                                         ; $5865: $a2
    ld d, $00                                     ; $5866: $16 $00
    ld [bc], a                                    ; $5868: $02
    adc $02                                       ; $5869: $ce $02
    ld a, [de]                                    ; $586b: $1a
    nop                                           ; $586c: $00
    ld [$0034], sp                                ; $586d: $08 $34 $00
    inc b                                         ; $5870: $04
    ld a, [hl+]                                   ; $5871: $2a
    nop                                           ; $5872: $00
    ld b, c                                       ; $5873: $41
    ld b, d                                       ; $5874: $42
    nop                                           ; $5875: $00
    ld bc, $0050                                  ; $5876: $01 $50 $00
    ld bc, $004a                                  ; $5879: $01 $4a $00
    ld d, d                                       ; $587c: $52
    jr z, jr_0a0_587f                             ; $587d: $28 $00

jr_0a0_587f:
    xor c                                         ; $587f: $a9
    ld [hl+], a                                   ; $5880: $22
    db $10                                        ; $5881: $10
    dec bc                                        ; $5882: $0b
    ld d, [hl]                                    ; $5883: $56
    nop                                           ; $5884: $00
    inc b                                         ; $5885: $04
    nop                                           ; $5886: $00
    ld d, b                                       ; $5887: $50
    ld a, [bc]                                    ; $5888: $0a
    nop                                           ; $5889: $00
    inc h                                         ; $588a: $24
    nop                                           ; $588b: $00
    ld b, d                                       ; $588c: $42
    ld a, $00                                     ; $588d: $3e $00
    jr nz, jr_0a0_58f5                            ; $588f: $20 $64

    nop                                           ; $5891: $00
    adc b                                         ; $5892: $88
    or [hl]                                       ; $5893: $b6
    jp nc, Jump_000_0401                          ; $5894: $d2 $01 $04

    ld d, h                                       ; $5897: $54
    nop                                           ; $5898: $00
    ld b, d                                       ; $5899: $42
    jr jr_0a0_58e4                                ; $589a: $18 $48

    ld d, b                                       ; $589c: $50
    db $10                                        ; $589d: $10
    ld c, h                                       ; $589e: $4c
    ld [$8800], sp                                ; $589f: $08 $00 $88
    ld [hl], b                                    ; $58a2: $70
    stop                                          ; $58a3: $10 $00
    nop                                           ; $58a5: $00
    ld b, $88                                     ; $58a6: $06 $88
    nop                                           ; $58a8: $00
    ld b, b                                       ; $58a9: $40
    nop                                           ; $58aa: $00
    ld a, [bc]                                    ; $58ab: $0a
    dec l                                         ; $58ac: $2d
    nop                                           ; $58ad: $00
    ld h, b                                       ; $58ae: $60
    ld h, d                                       ; $58af: $62
    db $10                                        ; $58b0: $10
    ld de, $007e                                  ; $58b1: $11 $7e $00
    ld [hl], e                                    ; $58b4: $73
    ld [$7c41], sp                                ; $58b5: $08 $41 $7c
    nop                                           ; $58b8: $00
    ld d, [hl]                                    ; $58b9: $56
    ld [$033a], sp                                ; $58ba: $08 $3a $03
    nop                                           ; $58bd: $00
    ld c, $02                                     ; $58be: $0e $02
    jr nz, @+$4e                                  ; $58c0: $20 $4c

    nop                                           ; $58c2: $00
    and [hl]                                      ; $58c3: $a6
    ld [$3800], sp                                ; $58c4: $08 $00 $38
    nop                                           ; $58c7: $00
    add hl, bc                                    ; $58c8: $09
    ld c, [hl]                                    ; $58c9: $4e
    nop                                           ; $58ca: $00
    ld d, h                                       ; $58cb: $54
    ld [$60f0], sp                                ; $58cc: $08 $f0 $60
    ld bc, $0294                                  ; $58cf: $01 $94 $02
    ld [bc], a                                    ; $58d2: $02
    ld l, d                                       ; $58d3: $6a
    ld [bc], a                                    ; $58d4: $02
    rlca                                          ; $58d5: $07
    ld [bc], a                                    ; $58d6: $02
    sub c                                         ; $58d7: $91
    ld bc, $28c0                                  ; $58d8: $01 $c0 $28
    ld l, d                                       ; $58db: $6a
    add [hl]                                      ; $58dc: $86
    add b                                         ; $58dd: $80
    nop                                           ; $58de: $00
    or d                                          ; $58df: $b2
    nop                                           ; $58e0: $00
    add h                                         ; $58e1: $84
    ret nz                                        ; $58e2: $c0

    ret nz                                        ; $58e3: $c0

jr_0a0_58e4:
    jr z, jr_0a0_58e6                             ; $58e4: $28 $00

jr_0a0_58e6:
    add hl, de                                    ; $58e6: $19
    ld l, a                                       ; $58e7: $6f
    nop                                           ; $58e8: $00
    nop                                           ; $58e9: $00
    ld e, a                                       ; $58ea: $5f
    and b                                         ; $58eb: $a0
    ld c, d                                       ; $58ec: $4a
    ld bc, $00ab                                  ; $58ed: $01 $ab $00
    inc de                                        ; $58f0: $13
    ld [bc], a                                    ; $58f1: $02
    nop                                           ; $58f2: $00
    rst $20                                       ; $58f3: $e7
    nop                                           ; $58f4: $00

jr_0a0_58f5:
    ld c, e                                       ; $58f5: $4b
    nop                                           ; $58f6: $00
    rlca                                          ; $58f7: $07
    ld [bc], a                                    ; $58f8: $02
    nop                                           ; $58f9: $00
    ld c, l                                       ; $58fa: $4d
    nop                                           ; $58fb: $00
    ld [bc], a                                    ; $58fc: $02
    rlca                                          ; $58fd: $07
    nop                                           ; $58fe: $00
    ld c, a                                       ; $58ff: $4f
    nop                                           ; $5900: $00
    rla                                           ; $5901: $17
    nop                                           ; $5902: $00
    rrca                                          ; $5903: $0f
    nop                                           ; $5904: $00
    nop                                           ; $5905: $00
    sbc e                                         ; $5906: $9b
    inc b                                         ; $5907: $04
    ld c, a                                       ; $5908: $4f
    nop                                           ; $5909: $00
    rra                                           ; $590a: $1f
    nop                                           ; $590b: $00
    rla                                           ; $590c: $17
    jr nz, jr_0a0_5917                            ; $590d: $20 $08

    ccf                                           ; $590f: $3f
    ld b, $00                                     ; $5910: $06 $00
    dec sp                                        ; $5912: $3b
    inc b                                         ; $5913: $04
    ld e, a                                       ; $5914: $5f
    nop                                           ; $5915: $00
    dec a                                         ; $5916: $3d

jr_0a0_5917:
    nop                                           ; $5917: $00
    ld [bc], a                                    ; $5918: $02
    ld a, a                                       ; $5919: $7f
    nop                                           ; $591a: $00
    ccf                                           ; $591b: $3f
    nop                                           ; $591c: $00
    ld a, a                                       ; $591d: $7f
    nop                                           ; $591e: $00
    rst $28                                       ; $591f: $ef
    nop                                           ; $5920: $00
    db $10                                        ; $5921: $10
    ld a, e                                       ; $5922: $7b
    inc b                                         ; $5923: $04
    rst $38                                       ; $5924: $ff
    nop                                           ; $5925: $00
    xor [hl]                                      ; $5926: $ae
    pop de                                        ; $5927: $d1
    sub l                                         ; $5928: $95
    nop                                           ; $5929: $00
    add sp, -$16                                  ; $592a: $e8 $ea
    ret nc                                        ; $592c: $d0

    add l                                         ; $592d: $85
    ei                                            ; $592e: $fb
    reti                                          ; $592f: $d9


    db $e4                                        ; $5930: $e4
    xor d                                         ; $5931: $aa
    ld b, b                                       ; $5932: $40
    push de                                       ; $5933: $d5
    jr nc, jr_0a0_5943                            ; $5934: $30 $0d

    ld a, [c]                                     ; $5936: $f2
    dec c                                         ; $5937: $0d
    ld l, c                                       ; $5938: $69
    sub [hl]                                      ; $5939: $96
    adc d                                         ; $593a: $8a
    ld hl, $9502                                  ; $593b: $21 $02 $95
    ld [c], a                                     ; $593e: $e2

Call_0a0_593f:
    ld c, d                                       ; $593f: $4a
    nop                                           ; $5940: $00
    sbc l                                         ; $5941: $9d
    ld h, d                                       ; $5942: $62

jr_0a0_5943:
    jr nc, jr_0a0_5952                            ; $5943: $30 $0d

    ld h, a                                       ; $5945: $67
    nop                                           ; $5946: $00

jr_0a0_5947:
    sbc b                                         ; $5947: $98
    xor d                                         ; $5948: $aa
    db $10                                        ; $5949: $10
    ld d, l                                       ; $594a: $55
    and b                                         ; $594b: $a0
    scf                                           ; $594c: $37
    ld [$105a], sp                                ; $594d: $08 $5a $10
    add h                                         ; $5950: $84
    ld [hl-], a                                   ; $5951: $32

jr_0a0_5952:
    call Call_000_0d30                            ; $5952: $cd $30 $0d
    ld e, l                                       ; $5955: $5d
    and e                                         ; $5956: $a3
    xor c                                         ; $5957: $a9
    ld d, a                                       ; $5958: $57
    nop                                           ; $5959: $00
    call nc, $2e0f                                ; $595a: $d4 $0f $2e
    inc de                                        ; $595d: $13
    xor b                                         ; $595e: $a8
    ld [hl], a                                    ; $595f: $77
    pop de                                        ; $5960: $d1
    cpl                                           ; $5961: $2f
    and b                                         ; $5962: $a0
    jr nc, jr_0a0_5972                            ; $5963: $30 $0d

    cp h                                          ; $5965: $bc

jr_0a0_5966:
    or b                                          ; $5966: $b0
    dec d                                         ; $5967: $15
    xor d                                         ; $5968: $aa
    rst $10                                       ; $5969: $d7
    or a                                          ; $596a: $b7
    ei                                            ; $596b: $fb
    adc c                                         ; $596c: $89

jr_0a0_596d:
    jr z, jr_0a0_5966                             ; $596d: $28 $f7

    push de                                       ; $596f: $d5
    or b                                          ; $5970: $b0
    dec b                                         ; $5971: $05

jr_0a0_5972:
    xor l                                         ; $5972: $ad
    or b                                          ; $5973: $b0
    dec b                                         ; $5974: $05
    ld l, l                                       ; $5975: $6d
    sub d                                         ; $5976: $92
    ld a, [de]                                    ; $5977: $1a
    ld [bc], a                                    ; $5978: $02
    nop                                           ; $5979: $00
    dec h                                         ; $597a: $25
    db $db                                        ; $597b: $db
    adc l                                         ; $597c: $8d
    ldh a, [$ea]                                  ; $597d: $f0 $ea
    or b                                          ; $597f: $b0
    dec d                                         ; $5980: $15
    push de                                       ; $5981: $d5
    sub d                                         ; $5982: $92
    or b                                          ; $5983: $b0
    dec b                                         ; $5984: $05
    cp d                                          ; $5985: $ba
    rlca                                          ; $5986: $07
    or b                                          ; $5987: $b0
    dec a                                         ; $5988: $3d
    ld d, h                                       ; $5989: $54
    dec hl                                        ; $598a: $2b
    or b                                          ; $598b: $b0
    ld c, l                                       ; $598c: $4d
    ld e, l                                       ; $598d: $5d
    ld bc, $9abe                                  ; $598e: $01 $be $9a
    ld a, l                                       ; $5991: $7d
    ld d, c                                       ; $5992: $51
    cp h                                          ; $5993: $bc
    xor c                                         ; $5994: $a9
    ld [hl], a                                    ; $5995: $77
    sub b                                         ; $5996: $90
    dec l                                         ; $5997: $2d
    ld b, e                                       ; $5998: $43
    cp $44                                        ; $5999: $fe $44
    dec d                                         ; $599b: $15
    ei                                            ; $599c: $fb
    rst $38                                       ; $599d: $ff
    ld d, l                                       ; $599e: $55
    xor e                                         ; $599f: $ab
    db $10                                        ; $59a0: $10
    inc e                                         ; $59a1: $1c
    ld h, b                                       ; $59a2: $60
    jr jr_0a0_596d                                ; $59a3: $18 $c8

    db $10                                        ; $59a5: $10
    ld a, $60                                     ; $59a6: $3e $60
    jr z, @-$59                                   ; $59a8: $28 $a5

    ld e, e                                       ; $59aa: $5b
    db $10                                        ; $59ab: $10
    ld e, $4f                                     ; $59ac: $1e $4f
    cp a                                          ; $59ae: $bf
    and a                                         ; $59af: $a7
    inc b                                         ; $59b0: $04
    ld e, a                                       ; $59b1: $5f
    ld c, l                                       ; $59b2: $4d
    cp [hl]                                       ; $59b3: $be
    or h                                          ; $59b4: $b4
    jr jr_0a0_5947                                ; $59b5: $18 $90

    dec l                                         ; $59b7: $2d
    db $dd                                        ; $59b8: $dd
    db $e3                                        ; $59b9: $e3
    jr nz, @-$56                                  ; $59ba: $20 $a8

    rst $00                                       ; $59bc: $c7
    sub b                                         ; $59bd: $90
    ld c, l                                       ; $59be: $4d
    add b                                         ; $59bf: $80
    rst $38                                       ; $59c0: $ff
    call z, $bf80                                 ; $59c1: $cc $80 $bf
    nop                                           ; $59c4: $00
    cp a                                          ; $59c5: $bf
    ret nc                                        ; $59c6: $d0

    xor a                                         ; $59c7: $af
    sbc a                                         ; $59c8: $9f
    xor b                                         ; $59c9: $a8
    db $d3                                        ; $59ca: $d3
    xor h                                         ; $59cb: $ac
    sbc a                                         ; $59cc: $9f
    ld [bc], a                                    ; $59cd: $02

jr_0a0_59ce:
    xor b                                         ; $59ce: $a8
    db $dd                                        ; $59cf: $dd
    xor d                                         ; $59d0: $aa
    nop                                           ; $59d1: $00
    rst $38                                       ; $59d2: $ff
    add h                                         ; $59d3: $84
    scf                                           ; $59d4: $37
    ld b, $00                                     ; $59d5: $06 $00
    nop                                           ; $59d7: $00
    rst $38                                       ; $59d8: $ff
    ld l, [hl]                                    ; $59d9: $6e
    sub c                                         ; $59da: $91
    rst $38                                       ; $59db: $ff
    nop                                           ; $59dc: $00
    ld [$7f15], a                                 ; $59dd: $ea $15 $7f
    nop                                           ; $59e0: $00
    add b                                         ; $59e1: $80
    nop                                           ; $59e2: $00
    rst $38                                       ; $59e3: $ff
    ld c, b                                       ; $59e4: $48
    ld bc, $fdfc                                  ; $59e5: $01 $fc $fd
    ld d, $00                                     ; $59e8: $16 $00
    db $fd                                        ; $59ea: $fd
    or [hl]                                       ; $59eb: $b6
    ld e, l                                       ; $59ec: $5d
    or $1d                                        ; $59ed: $f6 $1d
    sub [hl]                                      ; $59ef: $96
    ld a, l                                       ; $59f0: $7d
    or $03                                        ; $59f1: $f6 $03
    dec e                                         ; $59f3: $1d
    pop af                                        ; $59f4: $f1
    rst $38                                       ; $59f5: $ff
    rst $00                                       ; $59f6: $c7
    rst $38                                       ; $59f7: $ff
    ld a, [de]                                    ; $59f8: $1a
    ld a, c                                       ; $59f9: $79
    dec de                                        ; $59fa: $1b
    jp z, Jump_000_0015                           ; $59fb: $ca $15 $00

    ret nz                                        ; $59fe: $c0

    cp a                                          ; $59ff: $bf
    sub c                                         ; $5a00: $91
    and b                                         ; $5a01: $a0
    sub [hl]                                      ; $5a02: $96
    and b                                         ; $5a03: $a0
    ret nc                                        ; $5a04: $d0

    and b                                         ; $5a05: $a0
    nop                                           ; $5a06: $00
    rst $08                                       ; $5a07: $cf
    or b                                          ; $5a08: $b0
    sbc a                                         ; $5a09: $9f
    cp a                                          ; $5a0a: $bf
    adc b                                         ; $5a0b: $88
    cp a                                          ; $5a0c: $bf
    sbc a                                         ; $5a0d: $9f
    xor b                                         ; $5a0e: $a8
    sbc h                                         ; $5a0f: $9c
    jr nc, jr_0a0_5a12                            ; $5a10: $30 $00

jr_0a0_5a12:
    nop                                           ; $5a12: $00
    ld a, $60                                     ; $5a13: $3e $60
    ld [bc], a                                    ; $5a15: $02
    db $e3                                        ; $5a16: $e3
    dec b                                         ; $5a17: $05
    inc bc                                        ; $5a18: $03
    db $10                                        ; $5a19: $10
    inc c                                         ; $5a1a: $0c
    db $fd                                        ; $5a1b: $fd
    nop                                           ; $5a1c: $00
    add $0d                                       ; $5a1d: $c6 $0d
    ld d, $0d                                     ; $5a1f: $16 $0d
    and h                                         ; $5a21: $a4
    dec c                                         ; $5a22: $0d
    db $f4                                        ; $5a23: $f4
    dec c                                         ; $5a24: $0d
    nop                                           ; $5a25: $00
    cp $fd                                        ; $5a26: $fe $fd
    inc d                                         ; $5a28: $14
    db $fd                                        ; $5a29: $fd
    db $f4                                        ; $5a2a: $f4
    dec e                                         ; $5a2b: $1d
    rst $18                                       ; $5a2c: $df
    xor b                                         ; $5a2d: $a8
    nop                                           ; $5a2e: $00
    sbc a                                         ; $5a2f: $9f
    xor b                                         ; $5a30: $a8
    add b                                         ; $5a31: $80
    cp a                                          ; $5a32: $bf
    db $d3                                        ; $5a33: $d3
    and b                                         ; $5a34: $a0
    ret c                                         ; $5a35: $d8

    and b                                         ; $5a36: $a0
    jr jr_0a0_59ce                                ; $5a37: $18 $95

    and b                                         ; $5a39: $a0

jr_0a0_5a3a:
    adc a                                         ; $5a3a: $8f
    inc [hl]                                      ; $5a3b: $34
    nop                                           ; $5a3c: $00
    dec bc                                        ; $5a3d: $0b
    ld e, $12                                     ; $5a3e: $1e $12
    nop                                           ; $5a40: $00
    ld a, h                                       ; $5a41: $7c
    add b                                         ; $5a42: $80
    inc [hl]                                      ; $5a43: $34
    jr nz, jr_0a0_5a3a                            ; $5a44: $20 $f4

    dec e                                         ; $5a46: $1d
    or $1d                                        ; $5a47: $f6 $1d
    ld c, $fd                                     ; $5a49: $0e $fd
    add h                                         ; $5a4b: $84
    add hl, bc                                    ; $5a4c: $09
    dec c                                         ; $5a4d: $0d
    ld h, h                                       ; $5a4e: $64
    dec c                                         ; $5a4f: $0d
    ld b, $34                                     ; $5a50: $06 $34
    nop                                           ; $5a52: $00
    db $fc                                        ; $5a53: $fc

jr_0a0_5a54:
    db $fd                                        ; $5a54: $fd
    ldh [rOBP0], a                                ; $5a55: $e0 $48
    add b                                         ; $5a57: $80
    ld b, b                                       ; $5a58: $40
    add hl, bc                                    ; $5a59: $09
    cp l                                          ; $5a5a: $bd
    ld d, b                                       ; $5a5b: $50
    sub d                                         ; $5a5c: $92
    add hl, sp                                    ; $5a5d: $39
    ld a, l                                       ; $5a5e: $7d
    or d                                          ; $5a5f: $b2
    xor d                                         ; $5a60: $aa
    inc b                                         ; $5a61: $04
    ld [hl], b                                    ; $5a62: $70
    push de                                       ; $5a63: $d5
    ld l, e                                       ; $5a64: $6b
    call $f0f0                                    ; $5a65: $cd $f0 $f0
    ld c, $69                                     ; $5a68: $0e $69
    ld [hl-], a                                   ; $5a6a: $32
    jr nc, jr_0a0_5a8a                            ; $5a6b: $30 $1d

    cp [hl]                                       ; $5a6d: $be
    ldh [rWY], a                                  ; $5a6e: $e0 $4a
    jr nz, jr_0a0_5aad                            ; $5a70: $20 $3b

    ret                                           ; $5a72: $c9


    ld b, $a8                                     ; $5a73: $06 $a8
    ld [$9a20], sp                                ; $5a75: $08 $20 $9a
    inc c                                         ; $5a78: $0c
    jr nz, jr_0a0_5ac6                            ; $5a79: $20 $4b

    push af                                       ; $5a7b: $f5
    nop                                           ; $5a7c: $00
    ld a, [hl+]                                   ; $5a7d: $2a
    add b                                         ; $5a7e: $80
    sbc [hl]                                      ; $5a7f: $9e
    nop                                           ; $5a80: $00
    ld a, [hl]                                    ; $5a81: $7e
    ld d, l                                       ; $5a82: $55
    ld a, $ab                                     ; $5a83: $3e $ab
    inc [hl]                                      ; $5a85: $34
    adc $30                                       ; $5a86: $ce $30
    dec h                                         ; $5a88: $25
    ld a, [hl+]                                   ; $5a89: $2a

jr_0a0_5a8a:
    jr jr_0a0_5a54                                ; $5a8a: $18 $c8

    ld b, b                                       ; $5a8c: $40
    inc de                                        ; $5a8d: $13
    sub c                                         ; $5a8e: $91
    xor d                                         ; $5a8f: $aa
    ld [de], a                                    ; $5a90: $12
    db $10                                        ; $5a91: $10
    ld a, h                                       ; $5a92: $7c
    inc b                                         ; $5a93: $04
    and b                                         ; $5a94: $a0
    add h                                         ; $5a95: $84
    sub $02                                       ; $5a96: $d6 $02
    ld a, [hl+]                                   ; $5a98: $2a
    nop                                           ; $5a99: $00
    ld a, a                                       ; $5a9a: $7f
    rrca                                          ; $5a9b: $0f
    jr nz, @+$5d                                  ; $5a9c: $20 $5b

    xor [hl]                                      ; $5a9e: $ae
    ld e, l                                       ; $5a9f: $5d
    nop                                           ; $5aa0: $00
    rst $10                                       ; $5aa1: $d7
    inc a                                         ; $5aa2: $3c
    ld l, [hl]                                    ; $5aa3: $6e
    rra                                           ; $5aa4: $1f
    or a                                          ; $5aa5: $b7
    ld c, $5b                                     ; $5aa6: $0e $5b
    ld b, $10                                     ; $5aa8: $06 $10
    or e                                          ; $5aaa: $b3
    ld [bc], a                                    ; $5aab: $02
    ld l, d                                       ; $5aac: $6a

jr_0a0_5aad:
    ld d, b                                       ; $5aad: $50
    inc bc                                        ; $5aae: $03
    dec d                                         ; $5aaf: $15
    ld a, [hl+]                                   ; $5ab0: $2a
    sbc a                                         ; $5ab1: $9f
    sbc a                                         ; $5ab2: $9f
    jr jr_0a0_5afc                                ; $5ab3: $18 $47

    rst $00                                       ; $5ab5: $c7
    ldh a, [rNR51]                                ; $5ab6: $f0 $25
    dec b                                         ; $5ab8: $05
    call $ab0e                                    ; $5ab9: $cd $0e $ab
    rst $38                                       ; $5abc: $ff
    nop                                           ; $5abd: $00
    add hl, de                                    ; $5abe: $19
    ld c, [hl]                                    ; $5abf: $4e
    ld de, $ff42                                  ; $5ac0: $11 $42 $ff
    ld bc, $c360                                  ; $5ac3: $01 $60 $c3

jr_0a0_5ac6:
    db $fd                                        ; $5ac6: $fd
    add e                                         ; $5ac7: $83
    db $fd                                        ; $5ac8: $fd
    inc b                                         ; $5ac9: $04
    ld c, b                                       ; $5aca: $48
    adc c                                         ; $5acb: $89
    nop                                           ; $5acc: $00
    rst $38                                       ; $5acd: $ff
    inc bc                                        ; $5ace: $03
    rst $38                                       ; $5acf: $ff
    add l                                         ; $5ad0: $85
    rst $38                                       ; $5ad1: $ff
    dec bc                                        ; $5ad2: $0b
    rst $38                                       ; $5ad3: $ff
    rlca                                          ; $5ad4: $07
    add c                                         ; $5ad5: $81
    inc b                                         ; $5ad6: $04
    nop                                           ; $5ad7: $00
    inc hl                                        ; $5ad8: $23
    rst $38                                       ; $5ad9: $ff
    dec b                                         ; $5ada: $05
    rst $38                                       ; $5adb: $ff
    and d                                         ; $5adc: $a2
    db $fd                                        ; $5add: $fd
    ld [bc], a                                    ; $5ade: $02
    ld e, b                                       ; $5adf: $58
    nop                                           ; $5ae0: $00
    add sp, -$01                                  ; $5ae1: $e8 $ff
    ret nz                                        ; $5ae3: $c0

    rst $38                                       ; $5ae4: $ff
    and b                                         ; $5ae5: $a0
    rst $38                                       ; $5ae6: $ff
    jp nc, $04ff                                  ; $5ae7: $d2 $ff $04

    xor b                                         ; $5aea: $a8
    rst $38                                       ; $5aeb: $ff
    push af                                       ; $5aec: $f5
    rst $38                                       ; $5aed: $ff
    jp c, $004d                                   ; $5aee: $da $4d $00

    ld bc, $00ff                                  ; $5af1: $01 $ff $00
    db $10                                        ; $5af4: $10
    rst $38                                       ; $5af5: $ff
    nop                                           ; $5af6: $00
    rst $38                                       ; $5af7: $ff
    ld [$24ff], sp                                ; $5af8: $08 $ff $24
    rst $38                                       ; $5afb: $ff

jr_0a0_5afc:
    ld a, [de]                                    ; $5afc: $1a
    ld e, d                                       ; $5afd: $5a
    rst $38                                       ; $5afe: $ff
    cp l                                          ; $5aff: $bd

Jump_0a0_5b00:
    ld e, l                                       ; $5b00: $5d
    nop                                           ; $5b01: $00
    ld a, [hl-]                                   ; $5b02: $3a
    ld [$3803], sp                                ; $5b03: $08 $03 $38
    nop                                           ; $5b06: $00
    ld c, e                                       ; $5b07: $4b
    inc c                                         ; $5b08: $0c
    rst $38                                       ; $5b09: $ff
    and l                                         ; $5b0a: $a5
    rst $38                                       ; $5b0b: $ff
    ld a, e                                       ; $5b0c: $7b
    ld l, l                                       ; $5b0d: $6d
    nop                                           ; $5b0e: $00
    ld b, b                                       ; $5b0f: $40
    ld e, b                                       ; $5b10: $58
    xor d                                         ; $5b11: $aa
    db $fd                                        ; $5b12: $fd
    nop                                           ; $5b13: $00
    rst $38                                       ; $5b14: $ff
    rst $38                                       ; $5b15: $ff
    push de                                       ; $5b16: $d5
    rst $38                                       ; $5b17: $ff
    xor d                                         ; $5b18: $aa
    push de                                       ; $5b19: $d5
    cp c                                          ; $5b1a: $b9
    call nz, $b908                                ; $5b1b: $c4 $08 $b9
    call nz, $ccb0                                ; $5b1e: $c4 $b0 $cc
    inc b                                         ; $5b21: $04

jr_0a0_5b22:
    ld [$ffff], sp                                ; $5b22: $08 $ff $ff
    ld d, l                                       ; $5b25: $55
    nop                                           ; $5b26: $00
    rst $38                                       ; $5b27: $ff
    xor d                                         ; $5b28: $aa
    ld d, l                                       ; $5b29: $55
    rst $20                                       ; $5b2a: $e7
    db $10                                        ; $5b2b: $10
    rst $20                                       ; $5b2c: $e7
    db $10                                        ; $5b2d: $10
    jp Jump_000_3041                              ; $5b2e: $c3 $41 $30


    inc b                                         ; $5b31: $04
    ld [$ff00], sp                                ; $5b32: $08 $00 $ff
    rst $38                                       ; $5b35: $ff
    nop                                           ; $5b36: $00
    nop                                           ; $5b37: $00
    ld d, d                                       ; $5b38: $52
    nop                                           ; $5b39: $00
    db $d3                                        ; $5b3a: $d3
    rlca                                          ; $5b3b: $07
    nop                                           ; $5b3c: $00
    xor e                                         ; $5b3d: $ab
    nop                                           ; $5b3e: $00
    xor d                                         ; $5b3f: $aa
    ld e, h                                       ; $5b40: $5c
    nop                                           ; $5b41: $00
    cp $01                                        ; $5b42: $fe $01
    db $10                                        ; $5b44: $10
    ld c, b                                       ; $5b45: $48
    jr c, jr_0a0_5b70                             ; $5b46: $38 $28

    pop hl                                        ; $5b48: $e1
    ld b, b                                       ; $5b49: $40
    jr z, jr_0a0_5b84                             ; $5b4a: $28 $38

    jr z, jr_0a0_5b8e                             ; $5b4c: $28 $40

    ld l, b                                       ; $5b4e: $68
    rra                                           ; $5b4f: $1f
    rst $38                                       ; $5b50: $ff
    ld hl, $02df                                  ; $5b51: $21 $df $02
    ld [$0c00], sp                                ; $5b54: $08 $00 $0c
    rst $38                                       ; $5b57: $ff
    add sp, $1f                                   ; $5b58: $e8 $1f
    dec l                                         ; $5b5a: $2d
    rst $18                                       ; $5b5b: $df
    add hl, hl                                    ; $5b5c: $29
    rst $18                                       ; $5b5d: $df
    add d                                         ; $5b5e: $82
    inc b                                         ; $5b5f: $04
    jr z, jr_0a0_5b22                             ; $5b60: $28 $c0

    rst $38                                       ; $5b62: $ff
    and c                                         ; $5b63: $a1
    rst $38                                       ; $5b64: $ff
    sub b                                         ; $5b65: $90
    call nz, $e000                                ; $5b66: $c4 $00 $e0
    adc b                                         ; $5b69: $88
    call nz, $e000                                ; $5b6a: $c4 $00 $e0
    rst $38                                       ; $5b6d: $ff
    ret nc                                        ; $5b6e: $d0

    rrca                                          ; $5b6f: $0f

jr_0a0_5b70:
    ld bc, $ff57                                  ; $5b70: $01 $57 $ff
    xor c                                         ; $5b73: $a9
    ld bc, $9d57                                  ; $5b74: $01 $57 $9d
    ld b, e                                       ; $5b77: $43
    sbc l                                         ; $5b78: $9d
    ld b, e                                       ; $5b79: $43
    dec c                                         ; $5b7a: $0d
    jp $8804                                      ; $5b7b: $c3 $04 $88


    inc c                                         ; $5b7e: $0c
    nop                                           ; $5b7f: $00
    rst $38                                       ; $5b80: $ff
    ld a, a                                       ; $5b81: $7f
    add b                                         ; $5b82: $80
    sub b                                         ; $5b83: $90

jr_0a0_5b84:
    ld c, b                                       ; $5b84: $48
    jr z, @+$0a                                   ; $5b85: $28 $08

    add c                                         ; $5b87: $81
    ld d, a                                       ; $5b88: $57
    nop                                           ; $5b89: $00
    ld hl, $a1e3                                  ; $5b8a: $21 $e3 $a1
    ld h, e                                       ; $5b8d: $63

jr_0a0_5b8e:
    ld hl, $9df7                                  ; $5b8e: $21 $f7 $9d
    ld e, a                                       ; $5b91: $5f
    ld [bc], a                                    ; $5b92: $02
    dec c                                         ; $5b93: $0d
    jp $ff0c                                      ; $5b94: $c3 $0c $ff


    ld l, b                                       ; $5b97: $68
    sbc a                                         ; $5b98: $9f
    ld h, b                                       ; $5b99: $60
    ld c, b                                       ; $5b9a: $48
    and e                                         ; $5b9b: $a3
    ld b, b                                       ; $5b9c: $40
    db $fd                                        ; $5b9d: $fd
    ld [bc], a                                    ; $5b9e: $02
    ld e, b                                       ; $5b9f: $58
    jp nc, $d13d                                  ; $5ba0: $d2 $3d $d1

    ld a, $d2                                     ; $5ba3: $3e $d2
    inc a                                         ; $5ba5: $3c
    nop                                           ; $5ba6: $00
    pop de                                        ; $5ba7: $d1
    inc a                                         ; $5ba8: $3c
    pop de                                        ; $5ba9: $d1
    ld a, $d3                                     ; $5baa: $3e $d3
    inc a                                         ; $5bac: $3c
    rst $18                                       ; $5bad: $df
    ccf                                           ; $5bae: $3f
    nop                                           ; $5baf: $00
    rst $18                                       ; $5bb0: $df
    ccf                                           ; $5bb1: $3f
    add hl, hl                                    ; $5bb2: $29
    cp $97                                        ; $5bb3: $fe $97
    ld a, b                                       ; $5bb5: $78
    ld c, [hl]                                    ; $5bb6: $4e
    or c                                          ; $5bb7: $b1
    ld [bc], a                                    ; $5bb8: $02
    xor e                                         ; $5bb9: $ab
    ld [hl], h                                    ; $5bba: $74
    ld d, h                                       ; $5bbb: $54
    add sp, -$57                                  ; $5bbc: $e8 $a9
    ld d, b                                       ; $5bbe: $50
    adc h                                         ; $5bbf: $8c
    add hl, bc                                    ; $5bc0: $09
    ld d, h                                       ; $5bc1: $54
    nop                                           ; $5bc2: $00
    xor e                                         ; $5bc3: $ab
    or l                                          ; $5bc4: $b5
    ld c, e                                       ; $5bc5: $4b
    jp c, $a807                                   ; $5bc6: $da $07 $a8

    rra                                           ; $5bc9: $1f
    and e                                         ; $5bca: $a3
    ld a, [de]                                    ; $5bcb: $1a
    ld e, h                                       ; $5bcc: $5c
    ld [hl], h                                    ; $5bcd: $74
    adc a                                         ; $5bce: $8f
    sbc h                                         ; $5bcf: $9c
    add hl, bc                                    ; $5bd0: $09
    ld b, b                                       ; $5bd1: $40
    ld e, b                                       ; $5bd2: $58
    xor e                                         ; $5bd3: $ab
    ld b, b                                       ; $5bd4: $40
    nop                                           ; $5bd5: $00
    ld d, e                                       ; $5bd6: $53
    nop                                           ; $5bd7: $00
    cp h                                          ; $5bd8: $bc
    sub c                                         ; $5bd9: $91
    ld a, [hl]                                    ; $5bda: $7e
    jp nc, $913d                                  ; $5bdb: $d2 $3d $91

jr_0a0_5bde:
    ld a, a                                       ; $5bde: $7f
    jp nc, Jump_000_3e80                          ; $5bdf: $d2 $80 $3e

    nop                                           ; $5be2: $00
    sbc a                                         ; $5be3: $9f
    ld a, a                                       ; $5be4: $7f
    ld d, l                                       ; $5be5: $55
    xor d                                         ; $5be6: $aa
    cp d                                          ; $5be7: $ba
    ld b, b                                       ; $5be8: $40
    ld h, [hl]                                    ; $5be9: $66
    ld bc, $a991                                  ; $5bea: $01 $91 $a9
    ld b, d                                       ; $5bed: $42
    sub e                                         ; $5bee: $93
    inc b                                         ; $5bef: $04
    inc e                                         ; $5bf0: $1c
    db $e3                                        ; $5bf1: $e3
    call z, Call_000_0009                         ; $5bf2: $cc $09 $00
    ld d, l                                       ; $5bf5: $55
    xor d                                         ; $5bf6: $aa
    ei                                            ; $5bf7: $fb
    inc b                                         ; $5bf8: $04
    and [hl]                                      ; $5bf9: $a6
    ld e, c                                       ; $5bfa: $59
    push de                                       ; $5bfb: $d5
    ld a, $0a                                     ; $5bfc: $3e $0a
    dec hl                                        ; $5bfe: $2b
    db $fc                                        ; $5bff: $fc
    ld b, h                                       ; $5c00: $44
    ei                                            ; $5c01: $fb
    call c, $0109                                 ; $5c02: $dc $09 $01
    sub e                                         ; $5c05: $93
    ld bc, $c801                                  ; $5c06: $01 $01 $c8
    ld b, $08                                     ; $5c09: $06 $08
    inc b                                         ; $5c0b: $04
    db $10                                        ; $5c0c: $10
    xor e                                         ; $5c0d: $ab
    rst $38                                       ; $5c0e: $ff
    add b                                         ; $5c0f: $80
    jr c, jr_0a0_5c65                             ; $5c10: $38 $53

    cp h                                          ; $5c12: $bc
    rst $18                                       ; $5c13: $df
    ld e, $3f                                     ; $5c14: $1e $3f
    ld e, a                                       ; $5c16: $5f
    cp a                                          ; $5c17: $bf
    jr nz, @+$2a                                  ; $5c18: $20 $28

    jr nz, @+$2b                                  ; $5c1a: $20 $29

    ld h, b                                       ; $5c1c: $60
    ld [$00a2], sp                                ; $5c1d: $08 $a2 $00
    dec a                                         ; $5c20: $3d
    ld [$3fd1], sp                                ; $5c21: $08 $d1 $3f
    ld d, d                                       ; $5c24: $52
    cp a                                          ; $5c25: $bf
    and b                                         ; $5c26: $a0
    ld [$ffff], sp                                ; $5c27: $08 $ff $ff
    add b                                         ; $5c2a: $80
    dec c                                         ; $5c2b: $0d
    rst $38                                       ; $5c2c: $ff
    jp $80fc                                      ; $5c2d: $c3 $fc $80


    and $01                                       ; $5c30: $e6 $01
    inc b                                         ; $5c32: $04
    ld [$b083], sp                                ; $5c33: $08 $83 $b0
    ld bc, $92c0                                  ; $5c36: $01 $c0 $92
    add hl, hl                                    ; $5c39: $29
    sub [hl]                                      ; $5c3a: $96
    add hl, de                                    ; $5c3b: $19
    jp Jump_000_03fd                              ; $5c3c: $c3 $fd $03


    db $fd                                        ; $5c3f: $fd
    jp Jump_0a0_4c3d                              ; $5c40: $c3 $3d $4c


    inc bc                                        ; $5c43: $03
    ld b, $00                                     ; $5c44: $06 $00
    inc bc                                        ; $5c46: $03
    db $fd                                        ; $5c47: $fd
    ld h, [hl]                                    ; $5c48: $66
    ld [$0966], sp                                ; $5c49: $08 $66 $09
    ld a, $c1                                     ; $5c4c: $3e $c1
    sub c                                         ; $5c4e: $91
    or d                                          ; $5c4f: $b2
    add hl, hl                                    ; $5c50: $29
    xor d                                         ; $5c51: $aa
    rst $38                                       ; $5c52: $ff
    ld l, h                                       ; $5c53: $6c
    add hl, sp                                    ; $5c54: $39
    ret                                           ; $5c55: $c9


    rst $38                                       ; $5c56: $ff

jr_0a0_5c57:
    inc c                                         ; $5c57: $0c
    or b                                          ; $5c58: $b0
    ld [hl], c                                    ; $5c59: $71
    jr nz, jr_0a0_5bde                            ; $5c5a: $20 $82

    db $fd                                        ; $5c5c: $fd
    or b                                          ; $5c5d: $b0
    ld e, c                                       ; $5c5e: $59
    ld [$f0f7], sp                                ; $5c5f: $08 $f7 $f0
    rst $28                                       ; $5c62: $ef
    ldh a, [rP1]                                  ; $5c63: $f0 $00

jr_0a0_5c65:
    rst $28                                       ; $5c65: $ef
    ldh [$df], a                                  ; $5c66: $e0 $df
    ldh a, [$1f]                                  ; $5c68: $f0 $1f
    inc a                                         ; $5c6a: $3c

jr_0a0_5c6b:
    rrca                                          ; $5c6b: $0f
    rra                                           ; $5c6c: $1f
    nop                                           ; $5c6d: $00
    rlca                                          ; $5c6e: $07
    rrca                                          ; $5c6f: $0f
    db $d3                                        ; $5c70: $d3
    sbc a                                         ; $5c71: $9f
    ld h, b                                       ; $5c72: $60
    rst $38                                       ; $5c73: $ff
    rlca                                          ; $5c74: $07
    scf                                           ; $5c75: $37
    nop                                           ; $5c76: $00
    rst $08                                       ; $5c77: $cf
    rra                                           ; $5c78: $1f
    rst $28                                       ; $5c79: $ef
    rra                                           ; $5c7a: $1f
    rst $28                                       ; $5c7b: $ef
    scf                                           ; $5c7c: $37
    rst $28                                       ; $5c7d: $ef
    ei                                            ; $5c7e: $fb
    ld bc, $fce7                                  ; $5c7f: $01 $e7 $fc
    jp Jump_000_00f1                              ; $5c82: $c3 $f1 $00


    ret c                                         ; $5c85: $d8

    rst $20                                       ; $5c86: $e7
    jr nz, jr_0a0_5c89                            ; $5c87: $20 $00

jr_0a0_5c89:
    add b                                         ; $5c89: $80
    xor b                                         ; $5c8a: $a8
    ld bc, $dfe8                                  ; $5c8b: $01 $e8 $df
    or l                                          ; $5c8e: $b5
    rst $18                                       ; $5c8f: $df
    ld a, [$ff1f]                                 ; $5c90: $fa $1f $ff
    nop                                           ; $5c93: $00
    rrca                                          ; $5c94: $0f
    jr nz, jr_0a0_5c57                            ; $5c95: $20 $c0

    inc sp                                        ; $5c97: $33
    ret nz                                        ; $5c98: $c0

    inc h                                         ; $5c99: $24
    db $db                                        ; $5c9a: $db
    ld sp, $ce00                                  ; $5c9b: $31 $00 $ce
    inc a                                         ; $5c9e: $3c
    ret nz                                        ; $5c9f: $c0

    ld a, b                                       ; $5ca0: $78
    ret nz                                        ; $5ca1: $c0

    db $fc                                        ; $5ca2: $fc
    add b                                         ; $5ca3: $80
    ld sp, hl                                     ; $5ca4: $f9
    nop                                           ; $5ca5: $00
    or [hl]                                       ; $5ca6: $b6
    ld a, c                                       ; $5ca7: $79
    add b                                         ; $5ca8: $80
    jr nc, jr_0a0_5c6b                            ; $5ca9: $30 $c0

    jr @-$1e                                      ; $5cab: $18 $e0

    ld d, $04                                     ; $5cad: $16 $04
    jp hl                                         ; $5caf: $e9


    ld sp, $f9ee                                  ; $5cb0: $31 $ee $f9
    add $bb                                       ; $5cb3: $c6 $bb
    nop                                           ; $5cb5: $00
    rlca                                          ; $5cb6: $07
    ret nz                                        ; $5cb7: $c0

    nop                                           ; $5cb8: $00
    nop                                           ; $5cb9: $00
    add c                                         ; $5cba: $81
    nop                                           ; $5cbb: $00
    add [hl]                                      ; $5cbc: $86
    ld bc, $4eb1                                  ; $5cbd: $01 $b1 $4e
    add a                                         ; $5cc0: $87
    nop                                           ; $5cc1: $00
    ld a, b                                       ; $5cc2: $78
    adc $30                                       ; $5cc3: $ce $30
    cp $00                                        ; $5cc5: $fe $00
    ld [c], a                                     ; $5cc7: $e2
    ld bc, $02ff                                  ; $5cc8: $01 $ff $02
    rlca                                          ; $5ccb: $07
    rst $00                                       ; $5ccc: $c7
    nop                                           ; $5ccd: $00
    add e                                         ; $5cce: $83
    nop                                           ; $5ccf: $00
    ld bc, $0002                                  ; $5cd0: $01 $02 $00
    nop                                           ; $5cd3: $00
    nop                                           ; $5cd4: $00
    nop                                           ; $5cd5: $00
    sub h                                         ; $5cd6: $94
    nop                                           ; $5cd7: $00
    ld l, d                                       ; $5cd8: $6a
    add b                                         ; $5cd9: $80
    db $fc                                        ; $5cda: $fc
    ld a, e                                       ; $5cdb: $7b
    rst $38                                       ; $5cdc: $ff
    ld bc, $f9f0                                  ; $5cdd: $01 $f0 $f9
    or $f0                                        ; $5ce0: $f6 $f0
    ld l, a                                       ; $5ce2: $6f
    ldh [$1f], a                                  ; $5ce3: $e0 $1f
    ld [bc], a                                    ; $5ce5: $02
    nop                                           ; $5ce6: $00
    ld [bc], a                                    ; $5ce7: $02
    ccf                                           ; $5ce8: $3f
    ld d, b                                       ; $5ce9: $50
    cp a                                          ; $5cea: $bf
    ccf                                           ; $5ceb: $3f
    rrca                                          ; $5cec: $0f
    rra                                           ; $5ced: $1f
    ld a, d                                       ; $5cee: $7a
    nop                                           ; $5cef: $00
    cpl                                           ; $5cf0: $2f
    nop                                           ; $5cf1: $00
    rla                                           ; $5cf2: $17
    ld e, a                                       ; $5cf3: $5f
    inc hl                                        ; $5cf4: $23
    sbc a                                         ; $5cf5: $9f
    ld h, c                                       ; $5cf6: $61
    inc hl                                        ; $5cf7: $23
    ret nz                                        ; $5cf8: $c0

    pop bc                                        ; $5cf9: $c1
    nop                                           ; $5cfa: $00
    nop                                           ; $5cfb: $00
    jp $d380                                      ; $5cfc: $c3 $80 $d3


    and h                                         ; $5cff: $a4
    add $b9                                       ; $5d00: $c6 $b9
    call z, $b300                                 ; $5d02: $cc $00 $b3
    db $fc                                        ; $5d05: $fc
    add e                                         ; $5d06: $83
    rst $20                                       ; $5d07: $e7
    dec de                                        ; $5d08: $1b
    jp $833d                                      ; $5d09: $c3 $3d $83


    nop                                           ; $5d0c: $00
    ld a, h                                       ; $5d0d: $7c
    ld b, $f9                                     ; $5d0e: $06 $f9
    ret nz                                        ; $5d10: $c0

    ccf                                           ; $5d11: $3f
    ld a, a                                       ; $5d12: $7f
    add b                                         ; $5d13: $80
    ld e, $00                                     ; $5d14: $1e $00
    ldh [$0c], a                                  ; $5d16: $e0 $0c
    ldh a, [rDIV]                                 ; $5d18: $f0 $04
    ld hl, sp+$1e                                 ; $5d1a: $f8 $1e
    ld hl, sp-$03                                 ; $5d1c: $f8 $fd
    nop                                           ; $5d1e: $00
    ld a, [c]                                     ; $5d1f: $f2
    ld l, e                                       ; $5d20: $6b
    cp a                                          ; $5d21: $bf
    rst $38                                       ; $5d22: $ff
    ld a, $fe                                     ; $5d23: $3e $fe
    dec e                                         ; $5d25: $1d
    ld a, h                                       ; $5d26: $7c
    nop                                           ; $5d27: $00
    inc bc                                        ; $5d28: $03
    jr c, jr_0a0_5d32                             ; $5d29: $38 $07

    jr jr_0a0_5d34                                ; $5d2b: $18 $07

    sbc e                                         ; $5d2d: $9b
    rlca                                          ; $5d2e: $07
    ld e, l                                       ; $5d2f: $5d
    ld b, b                                       ; $5d30: $40
    inc bc                                        ; $5d31: $03

jr_0a0_5d32:
    jr c, jr_0a0_5d8e                             ; $5d32: $38 $5a

jr_0a0_5d34:
    ld hl, $a0df                                  ; $5d34: $21 $df $a0
    ld e, a                                       ; $5d37: $5f
    ld b, b                                       ; $5d38: $40
    cp a                                          ; $5d39: $bf
    nop                                           ; $5d3a: $00
    db $e3                                        ; $5d3b: $e3
    ccf                                           ; $5d3c: $3f

jr_0a0_5d3d:
    rst $38                                       ; $5d3d: $ff
    rra                                           ; $5d3e: $1f
    ld a, a                                       ; $5d3f: $7f
    nop                                           ; $5d40: $00
    inc e                                         ; $5d41: $1c
    nop                                           ; $5d42: $00
    nop                                           ; $5d43: $00
    ld [$9800], sp                                ; $5d44: $08 $00 $98
    nop                                           ; $5d47: $00
    ccf                                           ; $5d48: $3f
    ret nz                                        ; $5d49: $c0

    ld [hl], a                                    ; $5d4a: $77
    rst $08                                       ; $5d4b: $cf
    jr nz, jr_0a0_5d3d                            ; $5d4c: $20 $ef

    sbc a                                         ; $5d4e: $9f
    adc a                                         ; $5d4f: $8f
    ld [bc], a                                    ; $5d50: $02
    rra                                           ; $5d51: $1f
    cpl                                           ; $5d52: $2f
    rra                                           ; $5d53: $1f
    ccf                                           ; $5d54: $3f
    rrca                                          ; $5d55: $0f
    nop                                           ; $5d56: $00
    dec sp                                        ; $5d57: $3b
    rst $00                                       ; $5d58: $c7
    ldh a, [rIF]                                  ; $5d59: $f0 $0f
    cp a                                          ; $5d5b: $bf
    ret nz                                        ; $5d5c: $c0

    cp $e0                                        ; $5d5d: $fe $e0
    nop                                           ; $5d5f: $00
    db $fc                                        ; $5d60: $fc
    ldh a, [$f6]                                  ; $5d61: $f0 $f6
    ld hl, sp-$0c                                 ; $5d63: $f8 $f4
    ei                                            ; $5d65: $fb
    or $f9                                        ; $5d66: $f6 $f9
    inc b                                         ; $5d68: $04
    rst $38                                       ; $5d69: $ff
    ldh a, [$3f]                                  ; $5d6a: $f0 $3f
    rst $08                                       ; $5d6c: $cf
    rst $38                                       ; $5d6d: $ff
    ld a, [$0008]                                 ; $5d6e: $fa $08 $00
    rrca                                          ; $5d71: $0f
    nop                                           ; $5d72: $00
    nop                                           ; $5d73: $00
    sub a                                         ; $5d74: $97
    ld [$f807], sp                                ; $5d75: $08 $07 $f8
    adc a                                         ; $5d78: $8f
    ld [hl], b                                    ; $5d79: $70
    ld [$f700], sp                                ; $5d7a: $08 $00 $f7
    sbc a                                         ; $5d7d: $9f
    ld h, b                                       ; $5d7e: $60
    di                                            ; $5d7f: $f3
    nop                                           ; $5d80: $00
    pop hl                                        ; $5d81: $e1
    nop                                           ; $5d82: $00
    ld h, e                                       ; $5d83: $63
    nop                                           ; $5d84: $00
    add b                                         ; $5d85: $80
    ld e, l                                       ; $5d86: $5d
    and d                                         ; $5d87: $a2
    inc hl                                        ; $5d88: $23
    call c, $c0ff                                 ; $5d89: $dc $ff $c0
    adc $00                                       ; $5d8c: $ce $00

jr_0a0_5d8e:
    ld sp, $7887                                  ; $5d8e: $31 $87 $78
    inc bc                                        ; $5d91: $03
    db $fc                                        ; $5d92: $fc
    ld bc, $80fe                                  ; $5d93: $01 $fe $80
    jr nz, @+$01                                  ; $5d96: $20 $ff

    ld b, b                                       ; $5d98: $40
    ld a, b                                       ; $5d99: $78
    inc bc                                        ; $5d9a: $03
    pop af                                        ; $5d9b: $f1
    rst $38                                       ; $5d9c: $ff
    add sp, -$09                                  ; $5d9d: $e8 $f7
    ldh a, [rP1]                                  ; $5d9f: $f0 $00
    rrca                                          ; $5da1: $0f
    ldh [$1f], a                                  ; $5da2: $e0 $1f
    ret nz                                        ; $5da4: $c0

    ccf                                           ; $5da5: $3f
    jp hl                                         ; $5da6: $e9


    ccf                                           ; $5da7: $3f
    rst $30                                       ; $5da8: $f7
    nop                                           ; $5da9: $00
    ccf                                           ; $5daa: $3f
    rst $38                                       ; $5dab: $ff
    ld e, $ff                                     ; $5dac: $1e $ff
    nop                                           ; $5dae: $00
    pop af                                        ; $5daf: $f1
    ld c, $60                                     ; $5db0: $0e $60
    nop                                           ; $5db2: $00
    sbc a                                         ; $5db3: $9f
    ld b, b                                       ; $5db4: $40
    cp a                                          ; $5db5: $bf
    ld h, b                                       ; $5db6: $60
    cp a                                          ; $5db7: $bf
    db $f4                                        ; $5db8: $f4
    cp a                                          ; $5db9: $bf
    ld a, [$3f20]                                 ; $5dba: $fa $20 $3f
    cp $10                                        ; $5dbd: $fe $10
    nop                                           ; $5dbf: $00
    push af                                       ; $5dc0: $f5
    adc [hl]                                      ; $5dc1: $8e
    rst $28                                       ; $5dc2: $ef
    rra                                           ; $5dc3: $1f
    ld a, a                                       ; $5dc4: $7f
    nop                                           ; $5dc5: $00
    sbc a                                         ; $5dc6: $9f
    ccf                                           ; $5dc7: $3f
    rst $18                                       ; $5dc8: $df
    cpl                                           ; $5dc9: $2f
    rst $18                                       ; $5dca: $df
    inc sp                                        ; $5dcb: $33
    rst $08                                       ; $5dcc: $cf
    ccf                                           ; $5dcd: $3f
    nop                                           ; $5dce: $00
    ret nz                                        ; $5dcf: $c0

    and e                                         ; $5dd0: $a3
    call c, Call_0a0_7fff                         ; $5dd1: $dc $ff $7f
    ld a, a                                       ; $5dd4: $7f
    cp [hl]                                       ; $5dd5: $be
    rst $38                                       ; $5dd6: $ff
    nop                                           ; $5dd7: $00
    ret nz                                        ; $5dd8: $c0

    ld hl, sp-$20                                 ; $5dd9: $f8 $e0
    ldh a, [$e0]                                  ; $5ddb: $f0 $e0
    ret c                                         ; $5ddd: $d8

    ldh [$f4], a                                  ; $5dde: $e0 $f4
    nop                                           ; $5de0: $00
    ld [$0699], sp                                ; $5de1: $08 $99 $06
    ld hl, sp+$00                                 ; $5de4: $f8 $00
    ldh a, [rP1]                                  ; $5de6: $f0 $00
    ldh [rP1], a                                  ; $5de8: $e0 $00
    nop                                           ; $5dea: $00
    add sp, $10                                   ; $5deb: $e8 $10
    inc hl                                        ; $5ded: $23
    inc e                                         ; $5dee: $1c
    jr jr_0a0_5df8                                ; $5def: $18 $07

    ccf                                           ; $5df1: $3f
    inc c                                         ; $5df2: $0c
    nop                                           ; $5df3: $00
    ld e, a                                       ; $5df4: $5f
    jr nz, jr_0a0_5e16                            ; $5df5: $20 $1f

    ld a, d                                       ; $5df7: $7a

jr_0a0_5df8:
    nop                                           ; $5df8: $00
    ld a, [hl]                                    ; $5df9: $7e
    ld [$102f], sp                                ; $5dfa: $08 $2f $10
    ld [bc], a                                    ; $5dfd: $02
    rrca                                          ; $5dfe: $0f
    ldh a, [rIE]                                  ; $5dff: $f0 $ff
    nop                                           ; $5e01: $00
    xor a                                         ; $5e02: $af
    ld [hl], b                                    ; $5e03: $70
    ld [hl], $0b                                  ; $5e04: $36 $0b
    ccf                                           ; $5e06: $3f
    ld l, b                                       ; $5e07: $68
    pop bc                                        ; $5e08: $c1
    ld b, d                                       ; $5e09: $42
    ld a, [hl+]                                   ; $5e0a: $2a
    ld b, b                                       ; $5e0b: $40
    ld a, [bc]                                    ; $5e0c: $0a
    db $d3                                        ; $5e0d: $d3
    cp h                                          ; $5e0e: $bc
    ld [bc], a                                    ; $5e0f: $02
    sub e                                         ; $5e10: $93
    ld a, h                                       ; $5e11: $7c
    db $d3                                        ; $5e12: $d3
    nop                                           ; $5e13: $00
    inc a                                         ; $5e14: $3c
    sub e                                         ; $5e15: $93

jr_0a0_5e16:
    ld a, h                                       ; $5e16: $7c
    rst $38                                       ; $5e17: $ff
    ccf                                           ; $5e18: $3f
    cp a                                          ; $5e19: $bf
    ld a, a                                       ; $5e1a: $7f
    ld d, [hl]                                    ; $5e1b: $56
    nop                                           ; $5e1c: $00
    xor a                                         ; $5e1d: $af
    call z, Call_0a0_553f                         ; $5e1e: $cc $3f $55
    ld a, [$f40a]                                 ; $5e21: $fa $0a $f4
    ld d, a                                       ; $5e24: $57
    db $10                                        ; $5e25: $10
    xor b                                         ; $5e26: $a8
    ld l, h                                       ; $5e27: $6c
    sub e                                         ; $5e28: $93
    add b                                         ; $5e29: $80
    ld a, [de]                                    ; $5e2a: $1a
    rst $38                                       ; $5e2b: $ff
    nop                                           ; $5e2c: $00
    or a                                          ; $5e2d: $b7
    ld b, b                                       ; $5e2e: $40
    ld [bc], a                                    ; $5e2f: $02
    ld l, a                                       ; $5e30: $6f
    add b                                         ; $5e31: $80
    rst $38                                       ; $5e32: $ff
    nop                                           ; $5e33: $00
    ld [hl], d                                    ; $5e34: $72
    adc l                                         ; $5e35: $8d
    ld e, h                                       ; $5e36: $5c
    inc c                                         ; $5e37: $0c
    pop af                                        ; $5e38: $f1
    nop                                           ; $5e39: $00
    rst $28                                       ; $5e3a: $ef
    pop af                                        ; $5e3b: $f1
    rst $28                                       ; $5e3c: $ef
    pop hl                                        ; $5e3d: $e1
    rst $18                                       ; $5e3e: $df
    pop af                                        ; $5e3f: $f1
    rra                                           ; $5e40: $1f
    dec a                                         ; $5e41: $3d
    adc b                                         ; $5e42: $88
    ret nc                                        ; $5e43: $d0

    add hl, de                                    ; $5e44: $19
    ld h, c                                       ; $5e45: $61
    inc bc                                        ; $5e46: $03
    ld [bc], a                                    ; $5e47: $02
    ld [bc], a                                    ; $5e48: $02
    jr c, jr_0a0_5e50                             ; $5e49: $38 $05

    inc b                                         ; $5e4b: $04
    dec b                                         ; $5e4c: $05
    inc b                                         ; $5e4d: $04
    inc b                                         ; $5e4e: $04
    or c                                          ; $5e4f: $b1

jr_0a0_5e50:
    ld a, [hl]                                    ; $5e50: $7e
    or e                                          ; $5e51: $b3
    ld a, h                                       ; $5e52: $7c
    inc b                                         ; $5e53: $04
    ld [$fd22], sp                                ; $5e54: $08 $22 $fd
    inc b                                         ; $5e57: $04
    and d                                         ; $5e58: $a2
    ld a, c                                       ; $5e59: $79
    ld a, a                                       ; $5e5a: $7f
    rst $38                                       ; $5e5b: $ff
    rst $38                                       ; $5e5c: $ff
    ret nc                                        ; $5e5d: $d0

    ld [bc], a                                    ; $5e5e: $02
    rst $38                                       ; $5e5f: $ff
    nop                                           ; $5e60: $00
    ld [bc], a                                    ; $5e61: $02
    cp $01                                        ; $5e62: $fe $01
    ei                                            ; $5e64: $fb
    inc b                                         ; $5e65: $04
    db $f4                                        ; $5e66: $f4
    ld [$1b10], sp                                ; $5e67: $08 $10 $1b
    rlca                                          ; $5e6a: $07
    ld b, b                                       ; $5e6b: $40
    inc b                                         ; $5e6c: $04
    ld [bc], a                                    ; $5e6d: $02
    ld [$090a], sp                                ; $5e6e: $08 $0a $09
    dec bc                                        ; $5e71: $0b
    ld [$090e], sp                                ; $5e72: $08 $0e $09
    add b                                         ; $5e75: $80
    ld [bc], a                                    ; $5e76: $02
    ld [$fa65], sp                                ; $5e77: $08 $65 $fa
    ld h, a                                       ; $5e7a: $67
    ld hl, sp+$67                                 ; $5e7b: $f8 $67
    ld hl, sp-$19                                 ; $5e7d: $f8 $e7
    and b                                         ; $5e7f: $a0
    ld [bc], a                                    ; $5e80: $02
    nop                                           ; $5e81: $00
    jp nz, Jump_000_043c                          ; $5e82: $c2 $3c $04

    rst $38                                       ; $5e85: $ff
    rst $38                                       ; $5e86: $ff
    rst $20                                       ; $5e87: $e7
    ei                                            ; $5e88: $fb
    rst $00                                       ; $5e89: $c7
    ld h, c                                       ; $5e8a: $61
    ei                                            ; $5e8b: $fb
    inc b                                         ; $5e8c: $04
    ld c, b                                       ; $5e8d: $48
    jr nc, @+$0e                                  ; $5e8e: $30 $0c

    ld bc, $01fe                                  ; $5e90: $01 $fe $01
    cp $f0                                        ; $5e93: $fe $f0
    ld a, [de]                                    ; $5e95: $1a
    ld b, b                                       ; $5e96: $40
    ld d, l                                       ; $5e97: $55
    cp [hl]                                       ; $5e98: $be
    ld [bc], a                                    ; $5e99: $02
    rra                                           ; $5e9a: $1f
    ldh [$a0], a                                  ; $5e9b: $e0 $a0
    rst $38                                       ; $5e9d: $ff
    jr nz, @+$01                                  ; $5e9e: $20 $ff

    nop                                           ; $5ea0: $00
    and e                                         ; $5ea1: $a3
    rst $38                                       ; $5ea2: $ff
    inc h                                         ; $5ea3: $24
    ei                                            ; $5ea4: $fb
    and h                                         ; $5ea5: $a4
    ei                                            ; $5ea6: $fb
    inc h                                         ; $5ea7: $24
    ei                                            ; $5ea8: $fb
    nop                                           ; $5ea9: $00
    ld bc, $fdff                                  ; $5eaa: $01 $ff $fd
    inc bc                                        ; $5ead: $03
    dec b                                         ; $5eae: $05
    ei                                            ; $5eaf: $fb
    dec b                                         ; $5eb0: $05
    ei                                            ; $5eb1: $fb
    db $10                                        ; $5eb2: $10
    push hl                                       ; $5eb3: $e5
    ei                                            ; $5eb4: $fb
    dec h                                         ; $5eb5: $25
    ld [bc], a                                    ; $5eb6: $02
    db $10                                        ; $5eb7: $10
    pop bc                                        ; $5eb8: $c1
    nop                                           ; $5eb9: $00
    xor c                                         ; $5eba: $a9
    ld b, b                                       ; $5ebb: $40
    nop                                           ; $5ebc: $00
    sub l                                         ; $5ebd: $95
    ld l, d                                       ; $5ebe: $6a
    ret                                           ; $5ebf: $c9


    ld [hl], $e3                                  ; $5ec0: $36 $e3
    inc e                                         ; $5ec2: $1c
    rst $38                                       ; $5ec3: $ff
    nop                                           ; $5ec4: $00
    nop                                           ; $5ec5: $00
    ld [hl], c                                    ; $5ec6: $71
    nop                                           ; $5ec7: $00
    ld l, b                                       ; $5ec8: $68
    db $10                                        ; $5ec9: $10
    ld bc, $03fe                                  ; $5eca: $01 $fe $03
    cp $00                                        ; $5ecd: $fe $00
    rrca                                          ; $5ecf: $0f
    cp $9f                                        ; $5ed0: $fe $9f
    db $fc                                        ; $5ed2: $fc
    rst $38                                       ; $5ed3: $ff
    ld hl, sp-$07                                 ; $5ed4: $f8 $f9
    ld [hl], b                                    ; $5ed6: $70
    db $10                                        ; $5ed7: $10
    ldh a, [rP1]                                  ; $5ed8: $f0 $00
    ld hl, sp-$74                                 ; $5eda: $f8 $8c
    nop                                           ; $5edc: $00
    cp e                                          ; $5edd: $bb
    ld a, h                                       ; $5ede: $7c
    cp $7f                                        ; $5edf: $fe $7f
    ld b, b                                       ; $5ee1: $40
    rst $38                                       ; $5ee2: $ff
    ld [bc], a                                    ; $5ee3: $02

jr_0a0_5ee4:
    nop                                           ; $5ee4: $00
    cp [hl]                                       ; $5ee5: $be
    ld a, a                                       ; $5ee6: $7f
    ld l, l                                       ; $5ee7: $6d
    ld e, $3f                                     ; $5ee8: $1e $3f
    nop                                           ; $5eea: $00
    nop                                           ; $5eeb: $00
    ld [de], a                                    ; $5eec: $12
    pop hl                                        ; $5eed: $e1
    ld hl, $e1c0                                  ; $5eee: $21 $c0 $e1
    jr jr_0a0_5ee4                                ; $5ef1: $18 $f1

    ld c, $40                                     ; $5ef3: $0e $40
    rst $38                                       ; $5ef5: $ff
    ld b, [hl]                                    ; $5ef6: $46
    ld [bc], a                                    ; $5ef7: $02
    dec b                                         ; $5ef8: $05
    ld [bc], a                                    ; $5ef9: $02
    dec sp                                        ; $5efa: $3b
    call nz, $df20                                ; $5efb: $c4 $20 $df
    nop                                           ; $5efe: $00
    ld a, c                                       ; $5eff: $79
    add [hl]                                      ; $5f00: $86
    add [hl]                                      ; $5f01: $86
    ld a, b                                       ; $5f02: $78
    rlca                                          ; $5f03: $07

jr_0a0_5f04:
    db $fc                                        ; $5f04: $fc
    adc $fd                                       ; $5f05: $ce $fd
    nop                                           ; $5f07: $00
    rst $38                                       ; $5f08: $ff
    ld a, b                                       ; $5f09: $78
    rst $38                                       ; $5f0a: $ff
    nop                                           ; $5f0b: $00
    jr nc, @+$11                                  ; $5f0c: $30 $0f

    ld a, [c]                                     ; $5f0e: $f2
    inc c                                         ; $5f0f: $0c
    nop                                           ; $5f10: $00
    jr jr_0a0_5f1a                                ; $5f11: $18 $07

    ld c, $01                                     ; $5f13: $0e $01
    rrca                                          ; $5f15: $0f
    nop                                           ; $5f16: $00
    ld d, [hl]                                    ; $5f17: $56
    adc c                                         ; $5f18: $89
    nop                                           ; $5f19: $00

jr_0a0_5f1a:
    inc b                                         ; $5f1a: $04
    ei                                            ; $5f1b: $fb
    ld hl, sp+$07                                 ; $5f1c: $f8 $07
    ld hl, sp+$07                                 ; $5f1e: $f8 $07
    ld h, c                                       ; $5f20: $61
    ld e, $00                                     ; $5f21: $1e $00
    jr nz, jr_0a0_5f04                            ; $5f23: $20 $df

    ld [hl], b                                    ; $5f25: $70
    sbc a                                         ; $5f26: $9f
    ld hl, sp+$1f                                 ; $5f27: $f8 $1f
    rra                                           ; $5f29: $1f
    rst $28                                       ; $5f2a: $ef
    nop                                           ; $5f2b: $00
    rrca                                          ; $5f2c: $0f
    or $0f                                        ; $5f2d: $f6 $0f
    ldh a, [$0e]                                  ; $5f2f: $f0 $0e
    ld hl, sp-$7a                                 ; $5f31: $f8 $86
    ld a, b                                       ; $5f33: $78
    ld [bc], a                                    ; $5f34: $02
    cp $00                                        ; $5f35: $fe $00
    or [hl]                                       ; $5f37: $b6
    ld a, c                                       ; $5f38: $79
    db $fd                                        ; $5f39: $fd
    ld a, [hl]                                    ; $5f3a: $7e
    ld d, h                                       ; $5f3b: $54
    jr jr_0a0_5fbc                                ; $5f3c: $18 $7e

    nop                                           ; $5f3e: $00
    ccf                                           ; $5f3f: $3f
    db $10                                        ; $5f40: $10
    rrca                                          ; $5f41: $0f
    inc e                                         ; $5f42: $1c
    rrca                                          ; $5f43: $0f
    ld e, a                                       ; $5f44: $5f
    daa                                           ; $5f45: $27
    dec hl                                        ; $5f46: $2b
    nop                                           ; $5f47: $00
    call c, Call_000_3efd                         ; $5f48: $dc $fd $3e
    db $fd                                        ; $5f4b: $fd
    ld a, [hl]                                    ; $5f4c: $7e
    cp a                                          ; $5f4d: $bf
    ld a, h                                       ; $5f4e: $7c
    xor $00                                       ; $5f4f: $ee $00
    add hl, de                                    ; $5f51: $19
    ld a, [hl]                                    ; $5f52: $7e
    add a                                         ; $5f53: $87
    or a                                          ; $5f54: $b7
    ei                                            ; $5f55: $fb
    ei                                            ; $5f56: $fb
    ld a, h                                       ; $5f57: $7c
    db $fd                                        ; $5f58: $fd
    nop                                           ; $5f59: $00
    ld a, [hl]                                    ; $5f5a: $7e
    ld a, a                                       ; $5f5b: $7f
    cp $7f                                        ; $5f5c: $fe $7f
    cp $fd                                        ; $5f5e: $fe $fd
    ld a, $3f                                     ; $5f60: $3e $3f
    nop                                           ; $5f62: $00
    ret nz                                        ; $5f63: $c0

    inc a                                         ; $5f64: $3c
    ld hl, sp-$08                                 ; $5f65: $f8 $f8
    ldh a, [$fb]                                  ; $5f67: $f0 $fb
    inc b                                         ; $5f69: $04
    ld hl, sp+$08                                 ; $5f6a: $f8 $08
    rlca                                          ; $5f6c: $07
    adc h                                         ; $5f6d: $8c
    inc bc                                        ; $5f6e: $03
    rlca                                          ; $5f6f: $07
    or h                                          ; $5f70: $b4
    ld [de], a                                    ; $5f71: $12
    daa                                           ; $5f72: $27
    jr jr_0a0_5f94                                ; $5f73: $18 $1f

jr_0a0_5f75:
    nop                                           ; $5f75: $00
    nop                                           ; $5f76: $00
    ld c, b                                       ; $5f77: $48
    scf                                           ; $5f78: $37
    db $10                                        ; $5f79: $10
    rst $28                                       ; $5f7a: $ef
    ld h, b                                       ; $5f7b: $60
    sbc a                                         ; $5f7c: $9f
    ldh a, [rNR41]                                ; $5f7d: $f0 $20
    rra                                           ; $5f7f: $1f
    ld sp, hl                                     ; $5f80: $f9
    nop                                           ; $5f81: $00
    inc bc                                        ; $5f82: $03
    ld a, h                                       ; $5f83: $7c
    add e                                         ; $5f84: $83
    adc h                                         ; $5f85: $8c
    ld [hl], e                                    ; $5f86: $73
    ld b, $02                                     ; $5f87: $06 $02
    ei                                            ; $5f89: $fb
    rst $08                                       ; $5f8a: $cf
    ei                                            ; $5f8b: $fb
    rst $38                                       ; $5f8c: $ff
    ld a, c                                       ; $5f8d: $79
    ld a, a                                       ; $5f8e: $7f
    inc h                                         ; $5f8f: $24
    ld [bc], a                                    ; $5f90: $02
    pop bc                                        ; $5f91: $c1
    nop                                           ; $5f92: $00
    nop                                           ; $5f93: $00

jr_0a0_5f94:
    rrca                                          ; $5f94: $0f
    ldh a, [rTAC]                                 ; $5f95: $f0 $07
    ld hl, sp+$03                                 ; $5f97: $f8 $03
    db $fc                                        ; $5f99: $fc
    rlca                                          ; $5f9a: $07
    nop                                           ; $5f9b: $00
    db $fc                                        ; $5f9c: $fc
    xor $f8                                       ; $5f9d: $ee $f8
    db $fc                                        ; $5f9f: $fc
    ld [hl], b                                    ; $5fa0: $70
    ld hl, sp+$00                                 ; $5fa1: $f8 $00
    sbc b                                         ; $5fa3: $98
    nop                                           ; $5fa4: $00
    ld h, b                                       ; $5fa5: $60
    add c                                         ; $5fa6: $81
    nop                                           ; $5fa7: $00
    inc h                                         ; $5fa8: $24
    jp Jump_0a0_7689                              ; $5fa9: $c3 $89 $76


    jp $3c20                                      ; $5fac: $c3 $20 $3c


    ccf                                           ; $5faf: $3f
    ld d, d                                       ; $5fb0: $52
    ld [bc], a                                    ; $5fb1: $02
    rlca                                          ; $5fb2: $07
    nop                                           ; $5fb3: $00
    inc bc                                        ; $5fb4: $03
    nop                                           ; $5fb5: $00
    rst $08                                       ; $5fb6: $cf
    ld [bc], a                                    ; $5fb7: $02
    jr nc, jr_0a0_5f75                            ; $5fb8: $30 $bb

    ld a, h                                       ; $5fba: $7c
    rst $38                                       ; $5fbb: $ff

Jump_0a0_5fbc:
jr_0a0_5fbc:
    cp $ff                                        ; $5fbc: $fe $ff
    ld e, [hl]                                    ; $5fbe: $5e
    nop                                           ; $5fbf: $00

Jump_0a0_5fc0:
    cp l                                          ; $5fc0: $bd
    nop                                           ; $5fc1: $00
    ld a, [hl]                                    ; $5fc2: $7e
    rst $38                                       ; $5fc3: $ff
    nop                                           ; $5fc4: $00
    add a                                         ; $5fc5: $87
    ld a, b                                       ; $5fc6: $78
    ld b, c                                       ; $5fc7: $41
    cp [hl]                                       ; $5fc8: $be
    add c                                         ; $5fc9: $81
    nop                                           ; $5fca: $00
    ld a, [hl]                                    ; $5fcb: $7e
    jp $ff7e                                      ; $5fcc: $c3 $7e $ff


    ld a, $ff                                     ; $5fcf: $3e $ff
    inc c                                         ; $5fd1: $0c
    rst $08                                       ; $5fd2: $cf
    add b                                         ; $5fd3: $80
    jr z, jr_0a0_5fd9                             ; $5fd4: $28 $03

    inc b                                         ; $5fd6: $04
    inc bc                                        ; $5fd7: $03
    inc b                                         ; $5fd8: $04

jr_0a0_5fd9:
    inc bc                                        ; $5fd9: $03
    add e                                         ; $5fda: $83
    nop                                           ; $5fdb: $00
    ld b, e                                       ; $5fdc: $43
    nop                                           ; $5fdd: $00
    add b                                         ; $5fde: $80
    adc l                                         ; $5fdf: $8d
    ld [hl], d                                    ; $5fe0: $72
    pop hl                                        ; $5fe1: $e1
    ld e, $3f                                     ; $5fe2: $1e $3f
    ret nz                                        ; $5fe4: $c0

    add hl, de                                    ; $5fe5: $19
    nop                                           ; $5fe6: $00
    ldh [rNR10], a                                ; $5fe7: $e0 $10
    ldh [$27], a                                  ; $5fe9: $e0 $27
    ret c                                         ; $5feb: $d8

    jp nz, $823d                                  ; $5fec: $c2 $3d $82

    nop                                           ; $5fef: $00
    ld a, l                                       ; $5ff0: $7d
    add a                                         ; $5ff1: $87
    ld a, h                                       ; $5ff2: $7c

jr_0a0_5ff3:
    rst $08                                       ; $5ff3: $cf
    ld a, h                                       ; $5ff4: $7c
    rst $38                                       ; $5ff5: $ff
    jr c, @+$01                                   ; $5ff6: $38 $ff

    ld [bc], a                                    ; $5ff8: $02
    nop                                           ; $5ff9: $00
    ld a, b                                       ; $5ffa: $78
    rlca                                          ; $5ffb: $07
    ei                                            ; $5ffc: $fb
    db $fc                                        ; $5ffd: $fc
    db $fd                                        ; $5ffe: $fd
    ld a, $10                                     ; $5fff: $3e $10
    db $dd                                        ; $6001: $dd
    ld b, b                                       ; $6002: $40
    ld a, $03                                     ; $6003: $3e $03
    inc e                                         ; $6005: $1c
    inc b                                         ; $6006: $04
    inc bc                                        ; $6007: $03
    rlca                                          ; $6008: $07
    inc bc                                        ; $6009: $03
    sub a                                         ; $600a: $97
    ld [$2f00], sp                                ; $600b: $08 $00 $2f
    ret nc                                        ; $600e: $d0

    sbc h                                         ; $600f: $9c
    ld h, e                                       ; $6010: $63
    rst $38                                       ; $6011: $ff
    inc bc                                        ; $6012: $03
    rst $00                                       ; $6013: $c7
    ld bc, $8102                                  ; $6014: $01 $02 $81
    nop                                           ; $6017: $00
    ld a, b                                       ; $6018: $78
    ldh [$f4], a                                  ; $6019: $e0 $f4
    ret z                                         ; $601b: $c8

    inc b                                         ; $601c: $04
    ld bc, $01e7                                  ; $601d: $01 $e7 $01
    inc c                                         ; $6020: $0c
    di                                            ; $6021: $f3
    rra                                           ; $6022: $1f
    ldh a, [$fb]                                  ; $6023: $f0 $fb
    rst $30                                       ; $6025: $f7
    rst $38                                       ; $6026: $ff
    ld d, $03                                     ; $6027: $16 $03
    nop                                           ; $6029: $00
    inc c                                         ; $602a: $0c
    rlca                                          ; $602b: $07
    cpl                                           ; $602c: $2f
    inc de                                        ; $602d: $13
    sbc a                                         ; $602e: $9f
    ld h, b                                       ; $602f: $60
    ld sp, $00c0                                  ; $6030: $31 $c0 $00
    ldh a, [$08]                                  ; $6033: $f0 $08
    db $db                                        ; $6035: $db
    db $e4                                        ; $6036: $e4
    db $ec                                        ; $6037: $ec
    di                                            ; $6038: $f3
    inc hl                                        ; $6039: $23
    ret nc                                        ; $603a: $d0

    nop                                           ; $603b: $00
    inc de                                        ; $603c: $13
    db $ec                                        ; $603d: $ec
    ld a, a                                       ; $603e: $7f
    ldh [rIE], a                                  ; $603f: $e0 $ff
    ret nz                                        ; $6041: $c0

    db $e3                                        ; $6042: $e3
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    ld h, c                                       ; $6045: $61
    nop                                           ; $6046: $00
    ld d, l                                       ; $6047: $55
    and d                                         ; $6048: $a2
    jp $c13c                                      ; $6049: $c3 $3c $c1


    nop                                           ; $604c: $00
    jr nz, jr_0a0_5ff3                            ; $604d: $20 $a4

    ld b, e                                       ; $604f: $43
    sbc [hl]                                      ; $6050: $9e
    nop                                           ; $6051: $00
    ret nz                                        ; $6052: $c0

    dec l                                         ; $6053: $2d
    sbc $7f                                       ; $6054: $de $7f
    rst $18                                       ; $6056: $df
    nop                                           ; $6057: $00
    rst $38                                       ; $6058: $ff
    rst $18                                       ; $6059: $df
    rst $38                                       ; $605a: $ff
    rra                                           ; $605b: $1f
    adc a                                         ; $605c: $8f
    ld [hl], a                                    ; $605d: $77
    add a                                         ; $605e: $87
    ld a, e                                       ; $605f: $7b
    nop                                           ; $6060: $00
    add [hl]                                      ; $6061: $86
    db $fd                                        ; $6062: $fd
    rst $08                                       ; $6063: $cf
    db $fc                                        ; $6064: $fc
    cp $79                                        ; $6065: $fe $79
    ld hl, sp-$79                                 ; $6067: $f8 $87
    ld bc, $cff8                                  ; $6069: $01 $f8 $cf
    cp a                                          ; $606c: $bf
    rst $08                                       ; $606d: $cf
    rst $38                                       ; $606e: $ff
    ldh a, [rIE]                                  ; $606f: $f0 $ff
    inc de                                        ; $6071: $13
    inc b                                         ; $6072: $04
    dec a                                         ; $6073: $3d
    rst $38                                       ; $6074: $ff
    nop                                           ; $6075: $00
    sbc l                                         ; $6076: $9d
    inc bc                                        ; $6077: $03
    ld [hl], $00                                  ; $6078: $36 $00
    call c, $0101                                 ; $607a: $dc $01 $01
    jr nz, jr_0a0_6081                            ; $607d: $20 $02

    ld b, d                                       ; $607f: $42
    ld [hl+], a                                   ; $6080: $22

jr_0a0_6081:
    db $10                                        ; $6081: $10

jr_0a0_6082:
    sbc [hl]                                      ; $6082: $9e
    rrca                                          ; $6083: $0f
    rrca                                          ; $6084: $0f
    ldh [$03], a                                  ; $6085: $e0 $03
    ld b, e                                       ; $6087: $43
    add c                                         ; $6088: $81
    daa                                           ; $6089: $27
    pop bc                                        ; $608a: $c1
    nop                                           ; $608b: $00
    add e                                         ; $608c: $83
    ld a, h                                       ; $608d: $7c
    rst $20                                       ; $608e: $e7
    jr jr_0a0_6082                                ; $608f: $18 $f1

    nop                                           ; $6091: $00
    adc a                                         ; $6092: $8f
    ld [hl], b                                    ; $6093: $70
    ld b, b                                       ; $6094: $40
    ld b, $00                                     ; $6095: $06 $00
    ld bc, $fd02                                  ; $6097: $01 $02 $fd
    add c                                         ; $609a: $81
    cp $e3                                        ; $609b: $fe $e3
    cp $08                                        ; $609d: $fe $08
    rst $38                                       ; $609f: $ff
    ld a, [hl]                                    ; $60a0: $7e
    rst $38                                       ; $60a1: $ff
    inc e                                         ; $60a2: $1c
    or $08                                        ; $60a3: $f6 $08
    rla                                           ; $60a5: $17
    ld [$096f], sp                                ; $60a6: $08 $6f $09
    sub b                                         ; $60a9: $90
    rra                                           ; $60aa: $1f
    ldh [rIE], a                                  ; $60ab: $e0 $ff
    db $fc                                        ; $60ad: $fc
    nop                                           ; $60ae: $00
    add a                                         ; $60af: $87
    ld a, b                                       ; $60b0: $78
    ld d, b                                       ; $60b1: $50
    ld a, [bc]                                    ; $60b2: $0a
    add c                                         ; $60b3: $81
    ld c, h                                       ; $60b4: $4c
    ld a, [de]                                    ; $60b5: $1a
    rla                                           ; $60b6: $17
    ld de, $131d                                  ; $60b7: $11 $1d $13
    dec e                                         ; $60ba: $1d
    inc de                                        ; $60bb: $13
    ld b, $18                                     ; $60bc: $06 $18
    ld [bc], a                                    ; $60be: $02

Call_0a0_60bf:
    dec e                                         ; $60bf: $1d
    inc de                                        ; $60c0: $13
    cpl                                           ; $60c1: $2f
    inc hl                                        ; $60c2: $23
    dec sp                                        ; $60c3: $3b
    daa                                           ; $60c4: $27
    ld [bc], a                                    ; $60c5: $02
    ld [$00c5], sp                                ; $60c6: $08 $c5 $00
    ld a, [$f1ce]                                 ; $60c9: $fa $ce $f1
    push bc                                       ; $60cc: $c5
    ld a, [$f4cb]                                 ; $60cd: $fa $cb $f4
    sbc a                                         ; $60d0: $9f
    db $10                                        ; $60d1: $10
    pop hl                                        ; $60d2: $e1
    ld [de], a                                    ; $60d3: $12
    rst $28                                       ; $60d4: $ef
    inc e                                         ; $60d5: $1c
    rrca                                          ; $60d6: $0f
    ld e, a                                       ; $60d7: $5f
    ld b, a                                       ; $60d8: $47
    ld [hl], a                                    ; $60d9: $77
    ld c, a                                       ; $60da: $4f
    nop                                           ; $60db: $00
    ld [hl], a                                    ; $60dc: $77
    ld c, a                                       ; $60dd: $4f
    ld [hl], l                                    ; $60de: $75
    ld c, a                                       ; $60df: $4f
    cp a                                          ; $60e0: $bf
    adc a                                         ; $60e1: $8f
    xor $9f                                       ; $60e2: $ee $9f
    nop                                           ; $60e4: $00
    rst $28                                       ; $60e5: $ef
    sbc a                                         ; $60e6: $9f
    xor a                                         ; $60e7: $af
    rst $18                                       ; $60e8: $df
    dec d                                         ; $60e9: $15
    ld [$c037], a                                 ; $60ea: $ea $37 $c0
    nop                                           ; $60ed: $00
    dec l                                         ; $60ee: $2d
    jp nz, $c817                                  ; $60ef: $c2 $17 $c8

    ld [hl-], a                                   ; $60f2: $32
    push bc                                       ; $60f3: $c5
    ld a, [hl+]                                   ; $60f4: $2a
    sub c                                         ; $60f5: $91
    add b                                         ; $60f6: $80
    or b                                          ; $60f7: $b0
    dec h                                         ; $60f8: $25
    ld c, [hl]                                    ; $60f9: $4e
    ld a, [hl+]                                   ; $60fa: $2a
    db $fd                                        ; $60fb: $fd
    ld [hl], l                                    ; $60fc: $75
    ld a, [$e49a]                                 ; $60fd: $fa $9a $e4
    jr nz, jr_0a0_6147                            ; $6100: $20 $45

    ld hl, sp+$00                                 ; $6102: $f8 $00
    dec hl                                        ; $6104: $2b
    or l                                          ; $6105: $b5
    ld c, b                                       ; $6106: $48
    ld l, d                                       ; $6107: $6a
    add c                                         ; $6108: $81
    rst $18                                       ; $6109: $df
    add b                                         ; $610a: $80
    nop                                           ; $610b: $00
    inc hl                                        ; $610c: $23
    ld a, h                                       ; $610d: $7c
    rra                                           ; $610e: $1f
    sbc h                                         ; $610f: $9c
    ld a, a                                       ; $6110: $7f
    ld e, h                                       ; $6111: $5c
    cp a                                          ; $6112: $bf
    call c, Call_000_3f02                         ; $6113: $dc $02 $3f
    ld a, c                                       ; $6116: $79
    cp a                                          ; $6117: $bf
    or d                                          ; $6118: $b2
    ld a, a                                       ; $6119: $7f
    cp a                                          ; $611a: $bf
    ld c, b                                       ; $611b: $48
    ld [bc], a                                    ; $611c: $02
    ld [hl], c                                    ; $611d: $71
    nop                                           ; $611e: $00
    cp $73                                        ; $611f: $fe $73
    db $fc                                        ; $6121: $fc
    jp nc, $f3fc                                  ; $6122: $d2 $fc $f3

    db $fc                                        ; $6125: $fc
    push hl                                       ; $6126: $e5
    ld sp, $c3f8                                  ; $6127: $31 $f8 $c3
    jr nc, jr_0a0_613c                            ; $612a: $30 $10

    sub h                                         ; $612c: $94
    ld a, [bc]                                    ; $612d: $0a
    and a                                         ; $612e: $a7
    ld hl, sp+$20                                 ; $612f: $f8 $20
    ld b, h                                       ; $6131: $44
    rlca                                          ; $6132: $07
    ld c, c                                       ; $6133: $49
    ccf                                           ; $6134: $3f
    ld l, d                                       ; $6135: $6a
    dec b                                         ; $6136: $05
    ld d, l                                       ; $6137: $55
    rst $38                                       ; $6138: $ff
    sub [hl]                                      ; $6139: $96
    ld a, [bc]                                    ; $613a: $0a
    push bc                                       ; $613b: $c5

jr_0a0_613c:
    dec sp                                        ; $613c: $3b
    and d                                         ; $613d: $a2
    ld a, [bc]                                    ; $613e: $0a
    ld c, a                                       ; $613f: $4f
    ld sp, hl                                     ; $6140: $f9
    ld c, h                                       ; $6141: $4c
    rlca                                          ; $6142: $07
    ld d, l                                       ; $6143: $55
    rst $38                                       ; $6144: $ff
    ld d, a                                       ; $6145: $57
    rlca                                          ; $6146: $07

jr_0a0_6147:
    ld e, e                                       ; $6147: $5b

jr_0a0_6148:
    rrca                                          ; $6148: $0f
    inc b                                         ; $6149: $04
    jr nc, @+$22                                  ; $614a: $30 $20

    inc l                                         ; $614c: $2c
    nop                                           ; $614d: $00
    ld c, $00                                     ; $614e: $0e $00
    sub [hl]                                      ; $6150: $96
    add hl, bc                                    ; $6151: $09
    rlca                                          ; $6152: $07
    ld hl, sp-$74                                 ; $6153: $f8 $8c
    ld [hl], e                                    ; $6155: $73
    jr nc, jr_0a0_6148                            ; $6156: $30 $f0

    rrca                                          ; $6158: $0f
    ldh a, [$3b]                                  ; $6159: $f0 $3b

jr_0a0_615b:
    push hl                                       ; $615b: $e5
    ld b, $00                                     ; $615c: $06 $00
    jp $82fd                                      ; $615e: $c3 $fd $82


    ld [hl], h                                    ; $6161: $74
    db $fd                                        ; $6162: $fd
    or b                                          ; $6163: $b0
    dec a                                         ; $6164: $3d
    ld [bc], a                                    ; $6165: $02
    ld l, $a0                                     ; $6166: $2e $a0
    dec e                                         ; $6168: $1d
    inc bc                                        ; $6169: $03
    call c, $8307                                 ; $616a: $dc $07 $83
    nop                                           ; $616d: $00
    nop                                           ; $616e: $00
    xor c                                         ; $616f: $a9
    ld b, [hl]                                    ; $6170: $46
    add e                                         ; $6171: $83
    ld a, h                                       ; $6172: $7c
    adc $31                                       ; $6173: $ce $31
    cp $03                                        ; $6175: $fe $03
    nop                                           ; $6177: $00
    rst $38                                       ; $6178: $ff
    jp $e1ff                                      ; $6179: $c3 $ff $e1


    rst $38                                       ; $617c: $ff
    ldh [$08], a                                  ; $617d: $e0 $08
    ldh a, [rP1]                                  ; $617f: $f0 $00
    inc c                                         ; $6181: $0c
    ldh a, [rTIMA]                                ; $6182: $f0 $05
    ld a, [$f906]                                 ; $6184: $fa $06 $f9
    inc bc                                        ; $6187: $03
    db $fc                                        ; $6188: $fc
    ld [bc], a                                    ; $6189: $02
    inc bc                                        ; $618a: $03
    db $fc                                        ; $618b: $fc
    rst $08                                       ; $618c: $cf
    db $fc                                        ; $618d: $fc
    rst $38                                       ; $618e: $ff
    ei                                            ; $618f: $fb
    ld a, [de]                                    ; $6190: $1a
    dec c                                         ; $6191: $0d
    ld c, e                                       ; $6192: $4b
    nop                                           ; $6193: $00
    nop                                           ; $6194: $00
    sub l                                         ; $6195: $95
    ld [bc], a                                    ; $6196: $02
    add hl, sp                                    ; $6197: $39
    add $83                                       ; $6198: $c6 $83
    ld a, h                                       ; $619a: $7c
    rst $08                                       ; $619b: $cf
    nop                                           ; $619c: $00
    jr nc, jr_0a0_615b                            ; $619d: $30 $bc

    jp $fe01                                      ; $619f: $c3 $01 $fe


    nop                                           ; $61a2: $00
    rst $38                                       ; $61a3: $ff
    add c                                         ; $61a4: $81
    add hl, de                                    ; $61a5: $19
    rst $38                                       ; $61a6: $ff
    rst $08                                       ; $61a7: $cf
    rst $38                                       ; $61a8: $ff
    ld c, h                                       ; $61a9: $4c
    ld bc, $042a                                  ; $61aa: $01 $2a $04
    ld h, b                                       ; $61ad: $60
    add b                                         ; $61ae: $80
    ld d, b                                       ; $61af: $50
    dec c                                         ; $61b0: $0d
    nop                                           ; $61b1: $00
    jp nz, $a401                                  ; $61b2: $c2 $01 $a4

    ld b, e                                       ; $61b5: $43
    sbc c                                         ; $61b6: $99
    ld h, [hl]                                    ; $61b7: $66
    jp Jump_0a0_703c                              ; $61b8: $c3 $3c $70


    ld a, a                                       ; $61bb: $7f
    ldh a, [rSC]                                  ; $61bc: $f0 $02
    ld [hl], d                                    ; $61be: $72
    nop                                           ; $61bf: $00
    ld h, d                                       ; $61c0: $62
    dec b                                         ; $61c1: $05
    add b                                         ; $61c2: $80
    nop                                           ; $61c3: $00
    jr nz, @-$3e                                  ; $61c4: $20 $c0

    inc bc                                        ; $61c6: $03
    sbc c                                         ; $61c7: $99
    ld h, b                                       ; $61c8: $60
    xor $11                                       ; $61c9: $ee $11
    ldh a, [rIF]                                  ; $61cb: $f0 $0f
    add [hl]                                      ; $61cd: $86
    ld bc, $122a                                  ; $61ce: $01 $2a $12
    nop                                           ; $61d1: $00
    pop hl                                        ; $61d2: $e1
    nop                                           ; $61d3: $00
    ld b, b                                       ; $61d4: $40
    add b                                         ; $61d5: $80
    ld d, b                                       ; $61d6: $50
    and b                                         ; $61d7: $a0
    jp $801c                                      ; $61d8: $c3 $1c $80


    ld e, b                                       ; $61db: $58
    add hl, de                                    ; $61dc: $19
    ld l, a                                       ; $61dd: $6f
    ld d, [hl]                                    ; $61de: $56
    ld d, a                                       ; $61df: $57
    ld l, a                                       ; $61e0: $6f
    ld h, a                                       ; $61e1: $67
    ld e, a                                       ; $61e2: $5f
    db $dd                                        ; $61e3: $dd
    db $10                                        ; $61e4: $10
    xor a                                         ; $61e5: $af
    rst $28                                       ; $61e6: $ef
    sbc a                                         ; $61e7: $9f
    ret nz                                        ; $61e8: $c0

    add hl, bc                                    ; $61e9: $09
    add d                                         ; $61ea: $82
    add d                                         ; $61eb: $82
    add e                                         ; $61ec: $83
    add d                                         ; $61ed: $82
    nop                                           ; $61ee: $00
    add l                                         ; $61ef: $85
    add h                                         ; $61f0: $84
    add a                                         ; $61f1: $87
    add h                                         ; $61f2: $84
    adc e                                         ; $61f3: $8b
    adc b                                         ; $61f4: $88
    inc c                                         ; $61f5: $0c
    dec bc                                        ; $61f6: $0b
    nop                                           ; $61f7: $00
    ld l, l                                       ; $61f8: $6d
    rra                                           ; $61f9: $1f
    db $db                                        ; $61fa: $db
    ccf                                           ; $61fb: $3f
    db $dd                                        ; $61fc: $dd
    dec sp                                        ; $61fd: $3b
    or a                                          ; $61fe: $b7
    ld a, e                                       ; $61ff: $7b
    inc b                                         ; $6200: $04
    cp [hl]                                       ; $6201: $be
    ld a, a                                       ; $6202: $7f
    ld a, b                                       ; $6203: $78
    rst $38                                       ; $6204: $ff
    ld l, a                                       ; $6205: $6f
    ld bc, $0a02                                  ; $6206: $01 $02 $0a
    rrca                                          ; $6209: $0f
    nop                                           ; $620a: $00
    ld d, $10                                     ; $620b: $16 $10
    cpl                                           ; $620d: $2f
    jr nz, jr_0a0_622f                            ; $620e: $20 $1f

    jr nz, @+$2c                                  ; $6210: $20 $2a

    dec [hl]                                      ; $6212: $35
    nop                                           ; $6213: $00
    dec h                                         ; $6214: $25
    dec sp                                        ; $6215: $3b
    db $10                                        ; $6216: $10
    rra                                           ; $6217: $1f
    rrca                                          ; $6218: $0f
    rrca                                          ; $6219: $0f
    ld [de], a                                    ; $621a: $12
    dec d                                         ; $621b: $15
    nop                                           ; $621c: $00
    sub l                                         ; $621d: $95
    sbc e                                         ; $621e: $9b
    ld l, l                                       ; $621f: $6d
    ld h, e                                       ; $6220: $63
    ld e, e                                       ; $6221: $5b
    rst $00                                       ; $6222: $c7
    di                                            ; $6223: $f3
    rst $08                                       ; $6224: $cf
    nop                                           ; $6225: $00
    ld h, a                                       ; $6226: $67
    rst $18                                       ; $6227: $df
    adc $bd                                       ; $6228: $ce $bd
    sbc l                                         ; $622a: $9d
    ld a, e                                       ; $622b: $7b
    jp hl                                         ; $622c: $e9


    sbc $00                                       ; $622d: $de $00

jr_0a0_622f:
    reti                                          ; $622f: $d9


    cp [hl]                                       ; $6230: $be
    jp hl                                         ; $6231: $e9


    sbc [hl]                                      ; $6232: $9e
    cp b                                          ; $6233: $b8
    rst $18                                       ; $6234: $df
    di                                            ; $6235: $f3
    db $fc                                        ; $6236: $fc
    ld l, b                                       ; $6237: $68
    add d                                         ; $6238: $82
    nop                                           ; $6239: $00
    inc d                                         ; $623a: $14
    ldh [$3c], a                                  ; $623b: $e0 $3c
    ld [hl-], a                                   ; $623d: $32
    ldh [rNR14], a                                ; $623e: $e0 $14
    dec bc                                        ; $6240: $0b
    inc c                                         ; $6241: $0c
    ld d, $00                                     ; $6242: $16 $00
    add hl, de                                    ; $6244: $19
    ld e, $11                                     ; $6245: $1e $11
    ld d, $19                                     ; $6247: $16 $19
    rrca                                          ; $6249: $0f
    rrca                                          ; $624a: $0f
    inc bc                                        ; $624b: $03
    nop                                           ; $624c: $00
    inc b                                         ; $624d: $04
    ld b, $05                                     ; $624e: $06 $05
    inc bc                                        ; $6250: $03
    inc b                                         ; $6251: $04
    ld a, $f9                                     ; $6252: $3e $f9
    ld a, l                                       ; $6254: $7d
    inc bc                                        ; $6255: $03
    ei                                            ; $6256: $fb
    xor $f9                                       ; $6257: $ee $f9
    set 7, l                                      ; $6259: $cb $fd
    rst $00                                       ; $625b: $c7
    jr nc, jr_0a0_6263                            ; $625c: $30 $05

    ld e, a                                       ; $625e: $5f
    inc b                                         ; $625f: $04
    nop                                           ; $6260: $00
    rst $38                                       ; $6261: $ff
    push bc                                       ; $6262: $c5

jr_0a0_6263:
    ld a, [$e09b]                                 ; $6263: $fa $9b $e0
    sub [hl]                                      ; $6266: $96
    ldh [$9b], a                                  ; $6267: $e0 $9b
    inc b                                         ; $6269: $04
    db $e4                                        ; $626a: $e4
    dec d                                         ; $626b: $15
    ret z                                         ; $626c: $c8

    ld e, e                                       ; $626d: $5b
    add b                                         ; $626e: $80
    ld [hl], b                                    ; $626f: $70
    rrca                                          ; $6270: $0f
    ld b, l                                       ; $6271: $45
    ld a, [$ca00]                                 ; $6272: $fa $00 $ca
    ldh a, [rDMA]                                 ; $6275: $f0 $46
    pop af                                        ; $6277: $f1
    ret                                           ; $6278: $c9


    ld a, [c]                                     ; $6279: $f2
    sub e                                         ; $627a: $93
    db $e4                                        ; $627b: $e4
    add b                                         ; $627c: $80
    ld b, b                                       ; $627d: $40
    cpl                                           ; $627e: $2f
    rst $30                                       ; $627f: $f7
    nop                                           ; $6280: $00
    xor l                                         ; $6281: $ad
    ld b, d                                       ; $6282: $42
    ld d, a                                       ; $6283: $57
    adc b                                         ; $6284: $88
    ld a, [c]                                     ; $6285: $f2
    add hl, de                                    ; $6286: $19
    dec b                                         ; $6287: $05
    xor d                                         ; $6288: $aa
    ld de, $0f90                                  ; $6289: $11 $90 $0f
    ldh a, [$29]                                  ; $628c: $f0 $29
    ld [hl], d                                    ; $628e: $72
    add l                                         ; $628f: $85
    db $10                                        ; $6290: $10
    jr jr_0a0_6293                                ; $6291: $18 $00

jr_0a0_6293:
    ld d, l                                       ; $6293: $55
    xor d                                         ; $6294: $aa
    xor [hl]                                      ; $6295: $ae
    ld b, c                                       ; $6296: $41
    ld d, l                                       ; $6297: $55
    ld a, [bc]                                    ; $6298: $0a
    cp e                                          ; $6299: $bb
    inc b                                         ; $629a: $04
    ld [$21df], sp                                ; $629b: $08 $df $21
    ld a, [c]                                     ; $629e: $f2
    rrca                                          ; $629f: $0f
    or b                                          ; $62a0: $b0
    rrca                                          ; $62a1: $0f
    push de                                       ; $62a2: $d5
    ld [$00bb], a                                 ; $62a3: $ea $bb $00
    ret nz                                        ; $62a6: $c0

    ld d, [hl]                                    ; $62a7: $56
    and b                                         ; $62a8: $a0
    cp e                                          ; $62a9: $bb
    ld b, h                                       ; $62aa: $44
    sub l                                         ; $62ab: $95
    ld [$c6db], sp                                ; $62ac: $08 $db $c6
    rrca                                          ; $62af: $0f
    rrca                                          ; $62b0: $0f
    ld l, $07                                     ; $62b1: $2e $07
    rst $38                                       ; $62b3: $ff
    add b                                         ; $62b4: $80
    add b                                         ; $62b5: $80
    ld b, $08                                     ; $62b6: $06 $08

jr_0a0_62b8:
    inc b                                         ; $62b8: $04
    db $10                                        ; $62b9: $10
    xor d                                         ; $62ba: $aa
    nop                                           ; $62bb: $00
    rst $38                                       ; $62bc: $ff
    adc h                                         ; $62bd: $8c
    rst $38                                       ; $62be: $ff
    add sp, -$61                                  ; $62bf: $e8 $9f
    xor l                                         ; $62c1: $ad
    rst $18                                       ; $62c2: $df
    xor c                                         ; $62c3: $a9
    ld b, d                                       ; $62c4: $42
    rst $18                                       ; $62c5: $df
    inc b                                         ; $62c6: $04
    jr z, jr_0a0_62c9                             ; $62c7: $28 $00

jr_0a0_62c9:
    rst $38                                       ; $62c9: $ff
    cp $01                                        ; $62ca: $fe $01
    ld a, $0f                                     ; $62cc: $3e $0f
    ld e, $14                                     ; $62ce: $1e $14
    rst $38                                       ; $62d0: $ff
    jr nz, @-$1f                                  ; $62d1: $20 $df

    ld [bc], a                                    ; $62d3: $02
    ld [$6040], sp                                ; $62d4: $08 $40 $60
    rlca                                          ; $62d7: $07
    nop                                           ; $62d8: $00
    rst $38                                       ; $62d9: $ff
    ld de, $ff08                                  ; $62da: $11 $08 $ff
    db $10                                        ; $62dd: $10
    ld e, b                                       ; $62de: $58
    rlca                                          ; $62df: $07
    add b                                         ; $62e0: $80
    rst $38                                       ; $62e1: $ff
    ld [bc], a                                    ; $62e2: $02
    ld e, [hl]                                    ; $62e3: $5e
    rlca                                          ; $62e4: $07

jr_0a0_62e5:
    ld a, [hl-]                                   ; $62e5: $3a
    ld a, a                                       ; $62e6: $7f
    add b                                         ; $62e7: $80
    ld e, [hl]                                    ; $62e8: $5e
    rrca                                          ; $62e9: $0f
    sub b                                         ; $62ea: $90
    cpl                                           ; $62eb: $2f
    inc a                                         ; $62ec: $3c
    jr c, jr_0a0_62b8                             ; $62ed: $38 $c9

    ld c, h                                       ; $62ef: $4c
    nop                                           ; $62f0: $00
    xor d                                         ; $62f1: $aa
    nop                                           ; $62f2: $00
    rst $38                                       ; $62f3: $ff
    ldh [$80], a                                  ; $62f4: $e0 $80
    di                                            ; $62f6: $f3
    add b                                         ; $62f7: $80
    db $e4                                        ; $62f8: $e4
    sbc e                                         ; $62f9: $9b
    pop af                                        ; $62fa: $f1
    ld h, e                                       ; $62fb: $63
    adc [hl]                                      ; $62fc: $8e
    sub a                                         ; $62fd: $97
    rlca                                          ; $62fe: $07
    ld [bc], a                                    ; $62ff: $02

Jump_0a0_6300:
    db $10                                        ; $6300: $10
    ld h, [hl]                                    ; $6301: $66
    reti                                          ; $6302: $d9


    jr nz, jr_0a0_6375                            ; $6303: $20 $70

    ld d, a                                       ; $6305: $57
    inc c                                         ; $6306: $0c
    ld c, $8c                                     ; $6307: $0e $8c
    ld [hl], b                                    ; $6309: $70
    ld c, $ff                                     ; $630a: $0e $ff
    nop                                           ; $630c: $00
    sbc h                                         ; $630d: $9c
    ld [hl], b                                    ; $630e: $70
    ld d, $40                                     ; $630f: $16 $40
    ld l, $e3                                     ; $6311: $2e $e3
    nop                                           ; $6313: $00
    ld [hl+], a                                   ; $6314: $22
    db $dd                                        ; $6315: $dd
    ld [hl+], a                                   ; $6316: $22
    db $e4                                        ; $6317: $e4
    inc c                                         ; $6318: $0c
    push af                                       ; $6319: $f5
    ld c, $ef                                     ; $631a: $0e $ef
    ld a, h                                       ; $631c: $7c
    ld b, $ff                                     ; $631d: $06 $ff
    and b                                         ; $631f: $a0
    ld d, e                                       ; $6320: $53
    rlca                                          ; $6321: $07
    di                                            ; $6322: $f3
    cp h                                          ; $6323: $bc
    ld bc, $1ce3                                  ; $6324: $01 $e3 $1c
    ld e, $00                                     ; $6327: $1e $00
    inc c                                         ; $6329: $0c
    add b                                         ; $632a: $80
    ld [bc], a                                    ; $632b: $02
    nop                                           ; $632c: $00
    ld [$2c00], sp                                ; $632d: $08 $00 $2c
    db $10                                        ; $6330: $10
    add hl, bc                                    ; $6331: $09
    or $fc                                        ; $6332: $f6 $fc
    inc b                                         ; $6334: $04
    inc bc                                        ; $6335: $03
    xor a                                         ; $6336: $af
    ld [hl], b                                    ; $6337: $70
    pop bc                                        ; $6338: $c1
    ld a, $10                                     ; $6339: $3e $10
    ld c, h                                       ; $633b: $4c
    add h                                         ; $633c: $84
    inc bc                                        ; $633d: $03
    cp d                                          ; $633e: $ba
    ldh a, [rWX]                                  ; $633f: $f0 $4b
    ld hl, sp+$2a                                 ; $6341: $f8 $2a
    ld b, $f0                                     ; $6343: $06 $f0
    ld c, e                                       ; $6345: $4b
    dec d                                         ; $6346: $15
    ld b, $00                                     ; $6347: $06 $00
    ldh [$2b], a                                  ; $6349: $e0 $2b
    jr nc, jr_0a0_62e5                            ; $634b: $30 $98

    ldh [$33], a                                  ; $634d: $e0 $33
    db $10                                        ; $634f: $10
    rst $28                                       ; $6350: $ef
    ldh [rWX], a                                  ; $6351: $e0 $4b
    ret nc                                        ; $6353: $d0

    ld b, e                                       ; $6354: $43
    rlca                                          ; $6355: $07
    ld hl, sp+$0f                                 ; $6356: $f8 $0f

jr_0a0_6358:
    nop                                           ; $6358: $00
    rst $38                                       ; $6359: $ff
    rrca                                          ; $635a: $0f

jr_0a0_635b:
    rst $38                                       ; $635b: $ff
    ldh a, [$fc]                                  ; $635c: $f0 $fc
    di                                            ; $635e: $f3
    ldh [rIE], a                                  ; $635f: $e0 $ff
    jr nz, jr_0a0_635b                            ; $6361: $20 $f8

    rrca                                          ; $6363: $0f
    jp nc, $ff0f                                  ; $6364: $d2 $0f $ff

    ret nz                                        ; $6367: $c0

    cp $00                                        ; $6368: $fe $00

jr_0a0_636a:
    db $fc                                        ; $636a: $fc
    nop                                           ; $636b: $00
    nop                                           ; $636c: $00
    inc e                                         ; $636d: $1c

jr_0a0_636e:
    ldh [$0a], a                                  ; $636e: $e0 $0a
    db $f4                                        ; $6370: $f4
    jr c, jr_0a0_636a                             ; $6371: $38 $f7

    db $ec                                        ; $6373: $ec
    ld [bc], a                                    ; $6374: $02

jr_0a0_6375:
    di                                            ; $6375: $f3
    or e                                          ; $6376: $b3
    ret nz                                        ; $6377: $c0

    ldh [rP1], a                                  ; $6378: $e0 $00
    ld [hl], b                                    ; $637a: $70
    adc [hl]                                      ; $637b: $8e
    nop                                           ; $637c: $00
    inc b                                         ; $637d: $04
    nop                                           ; $637e: $00
    nop                                           ; $637f: $00
    dec d                                         ; $6380: $15
    ld a, [bc]                                    ; $6381: $0a
    ld l, h                                       ; $6382: $6c
    sub e                                         ; $6383: $93
    ld e, $e1                                     ; $6384: $1e $e1
    db $e3                                        ; $6386: $e3
    nop                                           ; $6387: $00
    inc e                                         ; $6388: $1c
    add c                                         ; $6389: $81
    ld a, [hl]                                    ; $638a: $7e
    ld bc, $27fe                                  ; $638b: $01 $fe $27
    jr jr_0a0_63a0                                ; $638e: $18 $10

    nop                                           ; $6390: $00
    rrca                                          ; $6391: $0f
    ccf                                           ; $6392: $3f
    nop                                           ; $6393: $00
    ld d, c                                       ; $6394: $51
    and b                                         ; $6395: $a0

jr_0a0_6396:
    jr nz, jr_0a0_6358                            ; $6396: $20 $c0

    add sp, $00                                   ; $6398: $e8 $00
    db $10                                        ; $639a: $10
    di                                            ; $639b: $f3
    inc c                                         ; $639c: $0c
    sbc b                                         ; $639d: $98
    ld h, a                                       ; $639e: $67
    add e                                         ; $639f: $83

jr_0a0_63a0:
    cp $ff                                        ; $63a0: $fe $ff
    ld b, b                                       ; $63a2: $40
    db $fc                                        ; $63a3: $fc

jr_0a0_63a4:
    ld h, b                                       ; $63a4: $60
    ld a, [de]                                    ; $63a5: $1a
    ret nz                                        ; $63a6: $c0

    nop                                           ; $63a7: $00
    ret nc                                        ; $63a8: $d0

    jr nz, jr_0a0_636e                            ; $63a9: $20 $c3

    inc a                                         ; $63ab: $3c
    and b                                         ; $63ac: $a0
    xor $0c                                       ; $63ad: $ee $0c
    add c                                         ; $63af: $81
    ld [$7f13], a                                 ; $63b0: $ea $13 $7f
    ld bc, $077f                                  ; $63b3: $01 $7f $07
    sbc a                                         ; $63b6: $9f
    jr nz, jr_0a0_6428                            ; $63b7: $20 $6f

    add b                                         ; $63b9: $80
    ld bc, $4000                                  ; $63ba: $01 $00 $40
    ld b, b                                       ; $63bd: $40
    ret nz                                        ; $63be: $c0

    ld b, b                                       ; $63bf: $40
    and b                                         ; $63c0: $a0
    nop                                           ; $63c1: $00
    jr nz, jr_0a0_63a4                            ; $63c2: $20 $e0

    jr nz, jr_0a0_6396                            ; $63c4: $20 $d0

    db $10                                        ; $63c6: $10
    jr nc, @-$2e                                  ; $63c7: $30 $d0

    ldh a, [$88]                                  ; $63c9: $f0 $88
    and d                                         ; $63cb: $a2
    ld [bc], a                                    ; $63cc: $02
    cp [hl]                                       ; $63cd: $be
    ld h, b                                       ; $63ce: $60
    ld a, h                                       ; $63cf: $7c
    ld h, b                                       ; $63d0: $60
    rla                                           ; $63d1: $17
    halt                                          ; $63d2: $76
    ld sp, hl                                     ; $63d3: $f9
    adc a                                         ; $63d4: $8f
    ld e, b                                       ; $63d5: $58
    ld [hl], b                                    ; $63d6: $70
    ld h, b                                       ; $63d7: $60
    rrca                                          ; $63d8: $0f
    sbc a                                         ; $63d9: $9f
    ld b, b                                       ; $63da: $40
    ld d, e                                       ; $63db: $53
    ld a, $0f                                     ; $63dc: $3e $0f
    ldh [$3f], a                                  ; $63de: $e0 $3f
    db $f4                                        ; $63e0: $f4
    ld d, c                                       ; $63e1: $51
    ccf                                           ; $63e2: $3f
    ld b, b                                       ; $63e3: $40
    dec de                                        ; $63e4: $1b
    sbc [hl]                                      ; $63e5: $9e
    db $10                                        ; $63e6: $10
    add hl, hl                                    ; $63e7: $29
    sub b                                         ; $63e8: $90
    adc c                                         ; $63e9: $89
    halt                                          ; $63ea: $76
    db $10                                        ; $63eb: $10
    add hl, bc                                    ; $63ec: $09
    and b                                         ; $63ed: $a0
    jr nz, jr_0a0_643d                            ; $63ee: $20 $4d

    add a                                         ; $63f0: $87
    ld b, d                                       ; $63f1: $42
    dec b                                         ; $63f2: $05
    ld h, $3d                                     ; $63f3: $26 $3d
    dec hl                                        ; $63f5: $2b
    inc [hl]                                      ; $63f6: $34
    ld l, $00                                     ; $63f7: $2e $00
    dec a                                         ; $63f9: $3d
    dec sp                                        ; $63fa: $3b
    inc a                                         ; $63fb: $3c
    dec h                                         ; $63fc: $25
    ld a, $37                                     ; $63fd: $3e $37
    dec sp                                        ; $63ff: $3b
    ccf                                           ; $6400: $3f
    add b                                         ; $6401: $80
    ld bc, $c100                                  ; $6402: $01 $00 $c1
    cp $43                                        ; $6405: $fe $43
    db $fc                                        ; $6407: $fc
    pop bc                                        ; $6408: $c1
    cp $47                                        ; $6409: $fe $47
    rlca                                          ; $640b: $07
    ld hl, sp-$3e                                 ; $640c: $f8 $c2
    push af                                       ; $640e: $f5
    adc d                                         ; $640f: $8a
    pop af                                        ; $6410: $f1
    or b                                          ; $6411: $b0
    ld d, $66                                     ; $6412: $16 $66
    dec b                                         ; $6414: $05
    db $10                                        ; $6415: $10
    ld c, l                                       ; $6416: $4d
    ld c, $f8                                     ; $6417: $0e $f8
    nop                                           ; $6419: $00
    db $f4                                        ; $641a: $f4
    ld [$4d10], sp                                ; $641b: $08 $10 $4d
    ret nz                                        ; $641e: $c0

    jr c, @+$22                                   ; $641f: $38 $20

    inc de                                        ; $6421: $13
    inc a                                         ; $6422: $3c
    adc b                                         ; $6423: $88
    ret nz                                        ; $6424: $c0

    ld d, l                                       ; $6425: $55
    add h                                         ; $6426: $84
    pop bc                                        ; $6427: $c1

jr_0a0_6428:
    ld b, $c0                                     ; $6428: $06 $c0
    dec [hl]                                      ; $642a: $35
    ld sp, hl                                     ; $642b: $f9
    db $fc                                        ; $642c: $fc
    ld [hl], c                                    ; $642d: $71
    xor b                                         ; $642e: $a8
    ret nz                                        ; $642f: $c0

    ld d, l                                       ; $6430: $55
    ret nz                                        ; $6431: $c0

    jp c, Jump_000_0415                           ; $6432: $da $15 $04

    and b                                         ; $6435: $a0
    dec bc                                        ; $6436: $0b
    ld c, b                                       ; $6437: $48
    rlca                                          ; $6438: $07
    sub a                                         ; $6439: $97
    nop                                           ; $643a: $00
    rrca                                          ; $643b: $0f
    cpl                                           ; $643c: $2f

jr_0a0_643d:
    rst $18                                       ; $643d: $df
    sbc [hl]                                      ; $643e: $9e
    ld a, a                                       ; $643f: $7f
    call c, $9b3f                                 ; $6440: $dc $3f $9b
    ld b, b                                       ; $6443: $40
    rst $38                                       ; $6444: $ff
    and b                                         ; $6445: $a0
    dec bc                                        ; $6446: $0b
    ld bc, $e7ff                                  ; $6447: $01 $ff $e7
    rst $38                                       ; $644a: $ff
    ld sp, hl                                     ; $644b: $f9
    cp $50                                        ; $644c: $fe $50
    ld a, $5d                                     ; $644e: $3e $5d
    ld bc, $3187                                  ; $6450: $01 $87 $31
    rlca                                          ; $6453: $07
    scf                                           ; $6454: $37
    rst $08                                       ; $6455: $cf
    ld e, $ef                                     ; $6456: $1e $ef
    db $10                                        ; $6458: $10
    add hl, de                                    ; $6459: $19
    rst $28                                       ; $645a: $ef
    daa                                           ; $645b: $27
    ld c, l                                       ; $645c: $4d
    dec b                                         ; $645d: $05
    cp [hl]                                       ; $645e: $be
    rst $38                                       ; $645f: $ff
    ld a, c                                       ; $6460: $79
    rst $38                                       ; $6461: $ff
    ld b, b                                       ; $6462: $40
    cp l                                          ; $6463: $bd
    inc b                                         ; $6464: $04
    nop                                           ; $6465: $00
    rst $30                                       ; $6466: $f7
    rst $38                                       ; $6467: $ff
    db $ed                                        ; $6468: $ed
    rst $38                                       ; $6469: $ff
    adc $ff                                       ; $646a: $ce $ff
    nop                                           ; $646c: $00
    or a                                          ; $646d: $b7
    rst $38                                       ; $646e: $ff
    ld a, d                                       ; $646f: $7a
    rst $38                                       ; $6470: $ff
    jp nc, $e3ff                                  ; $6471: $d2 $ff $e3

    rst $38                                       ; $6474: $ff
    nop                                           ; $6475: $00
    ld [hl], c                                    ; $6476: $71
    rst $38                                       ; $6477: $ff
    sbc b                                         ; $6478: $98
    rst $38                                       ; $6479: $ff
    ld l, l                                       ; $647a: $6d
    cp $9e                                        ; $647b: $fe $9e
    rst $38                                       ; $647d: $ff
    nop                                           ; $647e: $00
    ld a, l                                       ; $647f: $7d
    db $eb                                        ; $6480: $eb
    ld a, [hl]                                    ; $6481: $7e
    push af                                       ; $6482: $f5
    rst $18                                       ; $6483: $df
    db $ec                                        ; $6484: $ec
    ld a, b                                       ; $6485: $78
    add c                                         ; $6486: $81
    nop                                           ; $6487: $00
    ld sp, $19c3                                  ; $6488: $31 $c3 $19
    db $e3                                        ; $648b: $e3
    dec d                                         ; $648c: $15
    db $eb                                        ; $648d: $eb
    ld sp, $20ef                                  ; $648e: $31 $ef $20
    ld sp, hl                                     ; $6491: $f9
    rst $00                                       ; $6492: $c7
    rra                                           ; $6493: $1f
    inc b                                         ; $6494: $04
    rlca                                          ; $6495: $07
    ldh [rIE], a                                  ; $6496: $e0 $ff
    db $e4                                        ; $6498: $e4
    rst $38                                       ; $6499: $ff
    ld bc, $ffbf                                  ; $649a: $01 $bf $ff
    ei                                            ; $649d: $fb
    rst $38                                       ; $649e: $ff
    ld a, [$b4ff]                                 ; $649f: $fa $ff $b4
    jr z, jr_0a0_64a4                             ; $64a2: $28 $00

jr_0a0_64a4:
    nop                                           ; $64a4: $00
    ret z                                         ; $64a5: $c8

    rst $38                                       ; $64a6: $ff
    ld l, d                                       ; $64a7: $6a
    rst $38                                       ; $64a8: $ff
    ld [hl-], a                                   ; $64a9: $32
    rst $38                                       ; $64aa: $ff
    dec c                                         ; $64ab: $0d
    rst $38                                       ; $64ac: $ff
    nop                                           ; $64ad: $00
    adc l                                         ; $64ae: $8d
    rst $38                                       ; $64af: $ff
    ld b, a                                       ; $64b0: $47
    db $fd                                        ; $64b1: $fd
    ld [hl], a                                    ; $64b2: $77
    ld [$f73a], a                                 ; $64b3: $ea $3a $f7
    nop                                           ; $64b6: $00
    ld d, a                                       ; $64b7: $57
    cp e                                          ; $64b8: $bb
    db $eb                                        ; $64b9: $eb
    rst $38                                       ; $64ba: $ff
    ld a, [hl]                                    ; $64bb: $7e
    or d                                          ; $64bc: $b2
    xor a                                         ; $64bd: $af
    ld a, l                                       ; $64be: $7d
    nop                                           ; $64bf: $00
    cp $a6                                        ; $64c0: $fe $a6
    cp a                                          ; $64c2: $bf
    ld a, [c]                                     ; $64c3: $f2
    cp $56                                        ; $64c4: $fe $56
    push af                                       ; $64c6: $f5
    ld h, h                                       ; $64c7: $64
    nop                                           ; $64c8: $00
    xor h                                         ; $64c9: $ac
    inc l                                         ; $64ca: $2c
    dec a                                         ; $64cb: $3d
    rrca                                          ; $64cc: $0f
    ld e, $0f                                     ; $64cd: $1e $0f
    ld e, $07                                     ; $64cf: $1e $07
    nop                                           ; $64d1: $00
    cpl                                           ; $64d2: $2f
    rla                                           ; $64d3: $17

jr_0a0_64d4:
    ld e, a                                       ; $64d4: $5f
    inc hl                                        ; $64d5: $23
    sbc a                                         ; $64d6: $9f
    ld h, c                                       ; $64d7: $61
    inc hl                                        ; $64d8: $23
    ret nz                                        ; $64d9: $c0

    ld de, $00c1                                  ; $64da: $11 $c1 $00
    call nz, Call_000_0062                        ; $64dd: $c4 $62 $00
    ldh a, [rIE]                                  ; $64e0: $f0 $ff
    ld a, l                                       ; $64e2: $7d
    ld h, b                                       ; $64e3: $60
    nop                                           ; $64e4: $00
    nop                                           ; $64e5: $00
    rst $18                                       ; $64e6: $df
    ccf                                           ; $64e7: $3f
    rst $18                                       ; $64e8: $df
    dec a                                         ; $64e9: $3d
    sbc a                                         ; $64ea: $9f
    ld a, [hl]                                    ; $64eb: $7e
    dec sp                                        ; $64ec: $3b
    push de                                       ; $64ed: $d5
    nop                                           ; $64ee: $00
    rst $18                                       ; $64ef: $df
    ld sp, hl                                     ; $64f0: $f9
    rst $38                                       ; $64f1: $ff
    ld sp, hl                                     ; $64f2: $f9
    ld a, d                                       ; $64f3: $7a
    ld hl, sp-$43                                 ; $64f4: $f8 $bd
    ld a, c                                       ; $64f6: $79
    nop                                           ; $64f7: $00
    ei                                            ; $64f8: $fb
    sbc c                                         ; $64f9: $99
    db $fd                                        ; $64fa: $fd
    cp c                                          ; $64fb: $b9
    ld sp, hl                                     ; $64fc: $f9
    ld a, c                                       ; $64fd: $79
    db $fc                                        ; $64fe: $fc
    ld l, h                                       ; $64ff: $6c
    nop                                           ; $6500: $00
    di                                            ; $6501: $f3
    db $d3                                        ; $6502: $d3
    ld e, a                                       ; $6503: $5f
    ld e, a                                       ; $6504: $5f
    or l                                          ; $6505: $b5
    or h                                          ; $6506: $b4
    xor $ac                                       ; $6507: $ee $ac
    nop                                           ; $6509: $00
    dec a                                         ; $650a: $3d
    inc l                                         ; $650b: $2c
    xor d                                         ; $650c: $aa
    xor b                                         ; $650d: $a8
    ld [hl], a                                    ; $650e: $77
    jr nc, jr_0a0_64d4                            ; $650f: $30 $c3

    add b                                         ; $6511: $80
    nop                                           ; $6512: $00
    db $d3                                        ; $6513: $d3
    and h                                         ; $6514: $a4
    add $b9                                       ; $6515: $c6 $b9
    call z, $ffb3                                 ; $6517: $cc $b3 $ff
    add e                                         ; $651a: $83
    add b                                         ; $651b: $80
    ld c, [hl]                                    ; $651c: $4e
    ld a, [bc]                                    ; $651d: $0a
    rst $38                                       ; $651e: $ff
    nop                                           ; $651f: $00
    ld b, $f9                                     ; $6520: $06 $f9
    ret nz                                        ; $6522: $c0

    ccf                                           ; $6523: $3f
    ld a, a                                       ; $6524: $7f
    nop                                           ; $6525: $00
    add b                                         ; $6526: $80
    ld c, $f0                                     ; $6527: $0e $f0
    inc b                                         ; $6529: $04
    ld hl, sp+$1c                                 ; $652a: $f8 $1c
    ld hl, sp-$04                                 ; $652c: $f8 $fc
    nop                                           ; $652e: $00
    ld a, [c]                                     ; $652f: $f2
    cp $01                                        ; $6530: $fe $01
    ld l, e                                       ; $6532: $6b
    cp a                                          ; $6533: $bf
    rst $38                                       ; $6534: $ff
    ld a, $fe                                     ; $6535: $3e $fe
    ld [$7c1d], sp                                ; $6537: $08 $1d $7c
    inc bc                                        ; $653a: $03
    jr c, jr_0a0_6587                             ; $653b: $38 $4a

    ld b, $9b                                     ; $653d: $06 $9b
    rlca                                          ; $653f: $07
    ld e, l                                       ; $6540: $5d
    ld d, [hl]                                    ; $6541: $56
    add e                                         ; $6542: $83
    ldh a, [$65]                                  ; $6543: $f0 $65
    ld c, $00                                     ; $6545: $0e $00
    ld d, a                                       ; $6547: $57
    sbc h                                         ; $6548: $9c
    cp [hl]                                       ; $6549: $be
    ld [bc], a                                    ; $654a: $02
    ldh a, [$2e]                                  ; $654b: $f0 $2e
    add b                                         ; $654d: $80
    ld [bc], a                                    ; $654e: $02
    rrca                                          ; $654f: $0f
    jr nc, jr_0a0_6559                            ; $6550: $30 $07

    ld [$4403], sp                                ; $6552: $08 $03 $44
    or b                                          ; $6555: $b0
    ld c, [hl]                                    ; $6556: $4e
    ld sp, hl                                     ; $6557: $f9
    add [hl]                                      ; $6558: $86

jr_0a0_6559:
    ret nz                                        ; $6559: $c0

    ld [bc], a                                    ; $655a: $02
    ld [hl+], a                                   ; $655b: $22
    pop de                                        ; $655c: $d1
    ld de, $80ee                                  ; $655d: $11 $ee $80
    ld c, [hl]                                    ; $6560: $4e
    ld e, d                                       ; $6561: $5a
    ld c, $0f                                     ; $6562: $0e $0f
    ld [hl+], a                                   ; $6564: $22
    ldh a, [$3f]                                  ; $6565: $f0 $3f
    ld h, h                                       ; $6567: $64
    ld b, $b3                                     ; $6568: $06 $b3
    ret nz                                        ; $656a: $c0

    pop hl                                        ; $656b: $e1
    add b                                         ; $656c: $80
    ld [bc], a                                    ; $656d: $02
    ld h, $00                                     ; $656e: $26 $00
    add hl, de                                    ; $6570: $19
    ld de, $3f0e                                  ; $6571: $11 $0e $3f
    nop                                           ; $6574: $00
    ld e, a                                       ; $6575: $5f
    and b                                         ; $6576: $a0
    ccf                                           ; $6577: $3f
    add b                                         ; $6578: $80
    ld l, h                                       ; $6579: $6c
    ld b, $ff                                     ; $657a: $06 $ff
    nop                                           ; $657c: $00
    sbc a                                         ; $657d: $9f
    ld h, b                                       ; $657e: $60
    pop bc                                        ; $657f: $c1
    nop                                           ; $6580: $00
    xor c                                         ; $6581: $a9
    ld b, $40                                     ; $6582: $06 $40
    sub l                                         ; $6584: $95
    ld l, d                                       ; $6585: $6a
    ret                                           ; $6586: $c9


jr_0a0_6587:
    ld [hl], $3c                                  ; $6587: $36 $3c
    dec bc                                        ; $6589: $0b
    ld a, [c]                                     ; $658a: $f2
    ld c, $07                                     ; $658b: $0e $07
    nop                                           ; $658d: $00
    rlca                                          ; $658e: $07
    jr jr_0a0_65b0                                ; $658f: $18 $1f

    jr nz, jr_0a0_65d2                            ; $6591: $20 $3f

    ld b, b                                       ; $6593: $40
    ld a, a                                       ; $6594: $7f
    ret nz                                        ; $6595: $c0

    nop                                           ; $6596: $00
    cp a                                          ; $6597: $bf
    ret nz                                        ; $6598: $c0

    cp a                                          ; $6599: $bf
    and b                                         ; $659a: $a0
    rst $18                                       ; $659b: $df
    ld e, b                                       ; $659c: $58
    ld h, a                                       ; $659d: $67
    ldh [rP1], a                                  ; $659e: $e0 $00
    ldh [rNR23], a                                ; $65a0: $e0 $18
    ld hl, sp+$04                                 ; $65a2: $f8 $04
    db $fc                                        ; $65a4: $fc
    ld [bc], a                                    ; $65a5: $02
    cp $01                                        ; $65a6: $fe $01
    add b                                         ; $65a8: $80
    rrca                                          ; $65a9: $0f
    inc bc                                        ; $65aa: $03
    dec b                                         ; $65ab: $05
    rst $38                                       ; $65ac: $ff
    ld a, [de]                                    ; $65ad: $1a
    cp $92                                        ; $65ae: $fe $92

jr_0a0_65b0:
    ld h, c                                       ; $65b0: $61
    pop hl                                        ; $65b1: $e1
    jr nz, jr_0a0_65b4                            ; $65b2: $20 $00

jr_0a0_65b4:
    pop hl                                        ; $65b4: $e1
    sbc b                                         ; $65b5: $98
    nop                                           ; $65b6: $00
    rst $38                                       ; $65b7: $ff
    nop                                           ; $65b8: $00
    add e                                         ; $65b9: $83
    nop                                           ; $65ba: $00
    dec b                                         ; $65bb: $05
    inc e                                         ; $65bc: $1c
    ld [bc], a                                    ; $65bd: $02
    dec sp                                        ; $65be: $3b
    call nz, Call_000_2830                        ; $65bf: $c4 $30 $28
    sub d                                         ; $65c2: $92
    dec b                                         ; $65c3: $05
    jr nc, @+$12                                  ; $65c4: $30 $10

    push hl                                       ; $65c6: $e5
    ld a, [$1808]                                 ; $65c7: $fa $08 $18
    rst $38                                       ; $65ca: $ff
    rlca                                          ; $65cb: $07
    rst $38                                       ; $65cc: $ff
    jr nc, @+$3a                                  ; $65cd: $30 $38

    ld h, [hl]                                    ; $65cf: $66
    db $fc                                        ; $65d0: $fc
    ld a, [de]                                    ; $65d1: $1a

jr_0a0_65d2:
    inc b                                         ; $65d2: $04
    ld hl, sp-$1e                                 ; $65d3: $f8 $e2
    ldh [rSC], a                                  ; $65d5: $e0 $02
    nop                                           ; $65d7: $00
    ld [bc], a                                    ; $65d8: $02
    ld [$0004], sp                                ; $65d9: $08 $04 $00
    nop                                           ; $65dc: $00
    jr jr_0a0_65df                                ; $65dd: $18 $00

jr_0a0_65df:
    add [hl]                                      ; $65df: $86
    ld a, b                                       ; $65e0: $78
    cp $00                                        ; $65e1: $fe $00
    or [hl]                                       ; $65e3: $b6
    ld a, c                                       ; $65e4: $79
    db $10                                        ; $65e5: $10
    db $fd                                        ; $65e6: $fd
    ld a, [hl]                                    ; $65e7: $7e
    cp $2c                                        ; $65e8: $fe $2c
    ld b, $ff                                     ; $65ea: $06 $ff
    ld a, a                                       ; $65ec: $7f
    cp $3f                                        ; $65ed: $fe $3f
    ld bc, $3a65                                  ; $65ef: $01 $65 $3a
    ld e, b                                       ; $65f2: $58
    rra                                           ; $65f3: $1f
    ld [hl], a                                    ; $65f4: $77
    rlca                                          ; $65f5: $07
    ld [hl], b                                    ; $65f6: $70
    ld a, [de]                                    ; $65f7: $1a
    inc bc                                        ; $65f8: $03
    jr jr_0a0_6653                                ; $65f9: $18 $58

    nop                                           ; $65fb: $00
    jr nz, jr_0a0_661e                            ; $65fc: $20 $20

    nop                                           ; $65fe: $00
    jr nc, jr_0a0_6609                            ; $65ff: $30 $08

    db $e3                                        ; $6601: $e3
    pop hl                                        ; $6602: $e1
    ld [bc], a                                    ; $6603: $02
    nop                                           ; $6604: $00
    ld bc, $0502                                  ; $6605: $01 $02 $05
    ld [bc], a                                    ; $6608: $02

jr_0a0_6609:
    add hl, bc                                    ; $6609: $09
    inc b                                         ; $660a: $04
    inc de                                        ; $660b: $13
    ld [$2720], sp                                ; $660c: $08 $20 $27
    jr z, jr_0a0_6641                             ; $660f: $28 $30

    inc bc                                        ; $6611: $03
    ld [c], a                                     ; $6612: $e2
    ldh [rNR30], a                                ; $6613: $e0 $1a
    ld hl, sp+$06                                 ; $6615: $f8 $06
    ld [de], a                                    ; $6617: $12
    db $fc                                        ; $6618: $fc
    ld [bc], a                                    ; $6619: $02
    db $fc                                        ; $661a: $fc
    and $0d                                       ; $661b: $e6 $0d
    rst $20                                       ; $661d: $e7

jr_0a0_661e:
    jr @-$56                                      ; $661e: $18 $a8

    inc bc                                        ; $6620: $03
    rlca                                          ; $6621: $07
    add b                                         ; $6622: $80
    sub $0a                                       ; $6623: $d6 $0a
    ldh a, [$1f]                                  ; $6625: $f0 $1f

Jump_0a0_6627:
    ld sp, hl                                     ; $6627: $f9
    rra                                           ; $6628: $1f
    rst $38                                       ; $6629: $ff
    rrca                                          ; $662a: $0f
    inc d                                         ; $662b: $14
    add d                                         ; $662c: $82
    ld [hl], $00                                  ; $662d: $36 $00
    ld c, a                                       ; $662f: $4f
    rlca                                          ; $6630: $07
    ld e, b                                       ; $6631: $58
    rrca                                          ; $6632: $0f
    ld [hl], b                                    ; $6633: $70
    ld [bc], a                                    ; $6634: $02
    nop                                           ; $6635: $00
    ldh a, [rP1]                                  ; $6636: $f0 $00
    adc a                                         ; $6638: $8f
    ret nc                                        ; $6639: $d0

    xor a                                         ; $663a: $af
    ld [$0457], sp                                ; $663b: $08 $57 $04
    xor e                                         ; $663e: $ab
    ld [c], a                                     ; $663f: $e2
    ld [bc], a                                    ; $6640: $02

jr_0a0_6641:
    push af                                       ; $6641: $f5
    dec de                                        ; $6642: $1b
    ld hl, sp+$07                                 ; $6643: $f8 $07
    db $fd                                        ; $6645: $fd
    ld [bc], a                                    ; $6646: $02
    inc d                                         ; $6647: $14
    ld h, $07                                     ; $6648: $26 $07
    nop                                           ; $664a: $00
    ei                                            ; $664b: $fb
    dec e                                         ; $664c: $1d
    rst $20                                       ; $664d: $e7
    ld a, [$e41e]                                 ; $664e: $fa $1e $e4
    db $fc                                        ; $6651: $fc
    inc e                                         ; $6652: $1c

jr_0a0_6653:
    inc b                                         ; $6653: $04
    db $fc                                        ; $6654: $fc
    db $f4                                        ; $6655: $f4
    db $fc                                        ; $6656: $fc
    ld c, h                                       ; $6657: $4c
    db $fc                                        ; $6658: $fc
    ldh [rHDMA5], a                               ; $6659: $e0 $55
    add b                                         ; $665b: $80
    or b                                          ; $665c: $b0
    ld b, b                                       ; $665d: $40
    rst $08                                       ; $665e: $cf
    ld h, b                                       ; $665f: $60
    dec bc                                        ; $6660: $0b
    add b                                         ; $6661: $80
    rst $38                                       ; $6662: $ff
    ei                                            ; $6663: $fb
    ld a, a                                       ; $6664: $7f
    rst $30                                       ; $6665: $f7
    rra                                           ; $6666: $1f
    nop                                           ; $6667: $00
    ld l, a                                       ; $6668: $6f
    rra                                           ; $6669: $1f
    ld e, l                                       ; $666a: $5d
    ld a, $b8                                     ; $666b: $3e $b8
    ld a, a                                       ; $666d: $7f
    ret nz                                        ; $666e: $c0

    rst $38                                       ; $666f: $ff
    db $10                                        ; $6670: $10
    ldh [rIE], a                                  ; $6671: $e0 $ff
    pop af                                        ; $6673: $f1
    ld e, c                                       ; $6674: $59
    rlca                                          ; $6675: $07
    cp a                                          ; $6676: $bf
    ld e, a                                       ; $6677: $5f
    rst $28                                       ; $6678: $ef
    add a                                         ; $6679: $87
    nop                                           ; $667a: $00
    push af                                       ; $667b: $f5
    ret nz                                        ; $667c: $c0

    ld hl, sp-$08                                 ; $667d: $f8 $f8
    ccf                                           ; $667f: $3f
    ret nz                                        ; $6680: $c0

    ld [hl], a                                    ; $6681: $77
    rst $08                                       ; $6682: $cf
    db $10                                        ; $6683: $10
    rst $28                                       ; $6684: $ef
    sbc a                                         ; $6685: $9f
    ld c, $a7                                     ; $6686: $0e $a7
    ld b, $f3                                     ; $6688: $06 $f3
    rst $38                                       ; $668a: $ff
    ccf                                           ; $668b: $3f
    ccf                                           ; $668c: $3f
    nop                                           ; $668d: $00
    ld e, a                                       ; $668e: $5f
    rra                                           ; $668f: $1f
    ldh a, [rIF]                                  ; $6690: $f0 $0f
    cp h                                          ; $6692: $bc
    jp $eff3                                      ; $6693: $c3 $f3 $ef


    add b                                         ; $6696: $80
    dec de                                        ; $6697: $1b
    dec c                                         ; $6698: $0d
    cp $fd                                        ; $6699: $fe $fd
    push af                                       ; $669b: $f5
    ld a, [bc]                                    ; $669c: $0a
    xor a                                         ; $669d: $af
    ld d, a                                       ; $669e: $57
    ld [hl], l                                    ; $669f: $75
    nop                                           ; $66a0: $00
    ei                                            ; $66a1: $fb
    db $e3                                        ; $66a2: $e3
    rst $38                                       ; $66a3: $ff
    db $f4                                        ; $66a4: $f4
    rst $28                                       ; $66a5: $ef
    adc c                                         ; $66a6: $89
    rst $38                                       ; $66a7: $ff
    ld [de], a                                    ; $66a8: $12
    jr z, @+$01                                   ; $66a9: $28 $ff

    jr nz, @+$51                                  ; $66ab: $20 $4f

    rlca                                          ; $66ad: $07
    ld l, a                                       ; $66ae: $6f
    ld d, e                                       ; $66af: $53
    rlca                                          ; $66b0: $07
    xor l                                         ; $66b1: $ad
    dec c                                         ; $66b2: $0d
    ld d, a                                       ; $66b3: $57
    nop                                           ; $66b4: $00
    rlca                                          ; $66b5: $07
    and a                                         ; $66b6: $a7
    inc hl                                        ; $66b7: $23
    ld h, d                                       ; $66b8: $62
    jr nz, @-$69                                  ; $66b9: $20 $95

    add b                                         ; $66bb: $80
    xor e                                         ; $66bc: $ab
    nop                                           ; $66bd: $00
    and e                                         ; $66be: $a3
    rst $30                                       ; $66bf: $f7
    and e                                         ; $66c0: $a3
    xor a                                         ; $66c1: $af
    adc [hl]                                      ; $66c2: $8e
    sbc $cd                                       ; $66c3: $de $cd
    xor a                                         ; $66c5: $af
    nop                                           ; $66c6: $00
    and c                                         ; $66c7: $a1
    ld a, [$ffb7]                                 ; $66c8: $fa $b7 $ff
    ld d, d                                       ; $66cb: $52
    ei                                            ; $66cc: $fb
    scf                                           ; $66cd: $37
    rst $30                                       ; $66ce: $f7
    nop                                           ; $66cf: $00
    ld a, [$d7ba]                                 ; $66d0: $fa $ba $d7
    or $7f                                        ; $66d3: $f6 $7f
    xor e                                         ; $66d5: $ab
    rst $38                                       ; $66d6: $ff
    ld d, e                                       ; $66d7: $53
    nop                                           ; $66d8: $00
    xor a                                         ; $66d9: $af
    rst $00                                       ; $66da: $c7
    ld a, a                                       ; $66db: $7f
    inc h                                         ; $66dc: $24
    rst $38                                       ; $66dd: $ff
    add hl, bc                                    ; $66de: $09
    rst $38                                       ; $66df: $ff
    ld b, $80                                     ; $66e0: $06 $80
    ld d, $05                                     ; $66e2: $16 $05
    sub b                                         ; $66e4: $90
    rst $38                                       ; $66e5: $ff
    sbc a                                         ; $66e6: $9f
    rst $38                                       ; $66e7: $ff
    db $fd                                        ; $66e8: $fd
    rst $38                                       ; $66e9: $ff
    ld [hl], b                                    ; $66ea: $70
    ld [$ecff], sp                                ; $66eb: $08 $ff $ec
    rst $38                                       ; $66ee: $ff
    pop bc                                        ; $66ef: $c1
    or c                                          ; $66f0: $b1
    ld b, $9f                                     ; $66f1: $06 $9f
    rst $38                                       ; $66f3: $ff
    ld l, a                                       ; $66f4: $6f
    nop                                           ; $66f5: $00
    ld b, a                                       ; $66f6: $47
    ld e, [hl]                                    ; $66f7: $5e
    ld b, e                                       ; $66f8: $43
    rst $28                                       ; $66f9: $ef
    pop hl                                        ; $66fa: $e1
    ld a, [$ff95]                                 ; $66fb: $fa $95 $ff
    nop                                           ; $66fe: $00
    adc [hl]                                      ; $66ff: $8e
    db $eb                                        ; $6700: $eb
    scf                                           ; $6701: $37
    rst $30                                       ; $6702: $f7
    ld c, e                                       ; $6703: $4b
    db $eb                                        ; $6704: $eb
    ld [hl], a                                    ; $6705: $77
    or $00                                        ; $6706: $f6 $00
    cp e                                          ; $6708: $bb
    ld a, [c]                                     ; $6709: $f2
    ld e, a                                       ; $670a: $5f
    jp nc, $a2bf                                  ; $670b: $d2 $bf $a2

    rst $38                                       ; $670e: $ff
    db $d3                                        ; $670f: $d3
    jr nz, @+$01                                  ; $6710: $20 $ff

    or d                                          ; $6712: $b2
    sbc $02                                       ; $6713: $de $02
    ld a, [c]                                     ; $6715: $f2
    rst $38                                       ; $6716: $ff
    inc b                                         ; $6717: $04
    rst $38                                       ; $6718: $ff
    and c                                         ; $6719: $a1
    add b                                         ; $671a: $80
    ld h, b                                       ; $671b: $60
    ld bc, $ff0f                                  ; $671c: $01 $0f $ff
    ld a, [de]                                    ; $671f: $1a
    rst $38                                       ; $6720: $ff
    or l                                          ; $6721: $b5
    rst $38                                       ; $6722: $ff
    dec sp                                        ; $6723: $3b
    ld [$36ff], sp                                ; $6724: $08 $ff $36
    rst $38                                       ; $6727: $ff
    inc a                                         ; $6728: $3c
    ld b, c                                       ; $6729: $41
    rlca                                          ; $672a: $07
    ld c, a                                       ; $672b: $4f
    rst $38                                       ; $672c: $ff
    cp h                                          ; $672d: $bc
    and h                                         ; $672e: $a4
    db $eb                                        ; $672f: $eb
    ld b, $c2                                     ; $6730: $06 $c2
    ld h, [hl]                                    ; $6732: $66
    dec b                                         ; $6733: $05
    ld bc, $00ff                                  ; $6734: $01 $ff $00
    rrca                                          ; $6737: $0f
    inc bc                                        ; $6738: $03
    db $fc                                        ; $6739: $fc
    ld d, $fa                                     ; $673a: $16 $fa
    db $fd                                        ; $673c: $fd
    db $fc                                        ; $673d: $fc
    add d                                         ; $673e: $82
    dec b                                         ; $673f: $05
    ld c, $10                                     ; $6740: $0e $10
    ld b, $00                                     ; $6742: $06 $00
    ld e, a                                       ; $6744: $5f
    ld a, a                                       ; $6745: $7f
    dec c                                         ; $6746: $0d
    ei                                            ; $6747: $fb
    sub a                                         ; $6748: $97
    rst $38                                       ; $6749: $ff
    scf                                           ; $674a: $37
    and b                                         ; $674b: $a0
    add hl, bc                                    ; $674c: $09
    db $ed                                        ; $674d: $ed
    ld de, $ec30                                  ; $674e: $11 $30 $ec
    nop                                           ; $6751: $00
    dec b                                         ; $6752: $05
    cp a                                          ; $6753: $bf
    rst $00                                       ; $6754: $c7
    rst $10                                       ; $6755: $d7
    rst $28                                       ; $6756: $ef
    rst $28                                       ; $6757: $ef
    call c, Call_0a0_7c00                         ; $6758: $dc $00 $7c
    and b                                         ; $675b: $a0
    rlca                                          ; $675c: $07
    nop                                           ; $675d: $00
    sbc a                                         ; $675e: $9f
    rst $38                                       ; $675f: $ff
    ld h, e                                       ; $6760: $63
    rst $38                                       ; $6761: $ff
    ret c                                         ; $6762: $d8

    rst $20                                       ; $6763: $e7
    ldh a, [$ef]                                  ; $6764: $f0 $ef
    nop                                           ; $6766: $00
    ldh [rIE], a                                  ; $6767: $e0 $ff
    ret nc                                        ; $6769: $d0

    rst $38                                       ; $676a: $ff
    add sp, -$21                                  ; $676b: $e8 $df
    dec [hl]                                      ; $676d: $35
    rst $18                                       ; $676e: $df
    inc b                                         ; $676f: $04
    cp d                                          ; $6770: $ba
    rst $18                                       ; $6771: $df
    rst $18                                       ; $6772: $df
    rst $28                                       ; $6773: $ef
    ret nz                                        ; $6774: $c0

    ld d, d                                       ; $6775: $52
    inc bc                                        ; $6776: $03
    ld h, [hl]                                    ; $6777: $66
    rst $38                                       ; $6778: $ff
    nop                                           ; $6779: $00
    db $f4                                        ; $677a: $f4
    rst $38                                       ; $677b: $ff
    call nc, $e9ff                                ; $677c: $d4 $ff $e9
    rst $38                                       ; $677f: $ff
    cp e                                          ; $6780: $bb
    rst $38                                       ; $6781: $ff
    ld d, b                                       ; $6782: $50
    ld [hl], e                                    ; $6783: $73
    inc l                                         ; $6784: $2c
    rlca                                          ; $6785: $07
    inc c                                         ; $6786: $0c
    jp z, Jump_0a0_7707                           ; $6787: $ca $07 $77

    rst $38                                       ; $678a: $ff
    adc e                                         ; $678b: $8b
    rst $38                                       ; $678c: $ff
    nop                                           ; $678d: $00
    rla                                           ; $678e: $17
    rst $28                                       ; $678f: $ef
    ld c, $f7                                     ; $6790: $0e $f7
    ld d, a                                       ; $6792: $57
    xor h                                         ; $6793: $ac
    rst $28                                       ; $6794: $ef
    rst $30                                       ; $6795: $f7
    nop                                           ; $6796: $00
    rst $20                                       ; $6797: $e7
    ldh a, [$f3]                                  ; $6798: $f0 $f3
    ld a, b                                       ; $679a: $78
    pop af                                        ; $679b: $f1
    ld hl, sp-$0f                                 ; $679c: $f8 $f1
    ld hl, sp+$00                                 ; $679e: $f8 $00
    ldh a, [$f8]                                  ; $67a0: $f0 $f8
    db $f4                                        ; $67a2: $f4
    ld a, b                                       ; $67a3: $78
    ld [$d3f0], a                                 ; $67a4: $ea $f0 $d3
    rst $38                                       ; $67a7: $ff
    ld b, b                                       ; $67a8: $40
    sub [hl]                                      ; $67a9: $96
    inc c                                         ; $67aa: $0c
    ld bc, $fb37                                  ; $67ab: $01 $37 $fb
    inc de                                        ; $67ae: $13
    rst $38                                       ; $67af: $ff
    rla                                           ; $67b0: $17
    ei                                            ; $67b1: $fb
    nop                                           ; $67b2: $00
    dec de                                        ; $67b3: $1b
    rst $30                                       ; $67b4: $f7
    rst $30                                       ; $67b5: $f7
    ei                                            ; $67b6: $fb
    dec hl                                        ; $67b7: $2b
    call c, $b17f                                 ; $67b8: $dc $7f $b1
    nop                                           ; $67bb: $00
    rst $28                                       ; $67bc: $ef
    rst $10                                       ; $67bd: $d7
    rst $38                                       ; $67be: $ff
    adc a                                         ; $67bf: $8f
    cp [hl]                                       ; $67c0: $be
    rst $18                                       ; $67c1: $df
    cp $ff                                        ; $67c2: $fe $ff
    nop                                           ; $67c4: $00
    or $e7                                        ; $67c5: $f6 $e7
    cp $df                                        ; $67c7: $fe $df
    and $f9                                       ; $67c9: $e6 $f9
    ret nz                                        ; $67cb: $c0

    rst $38                                       ; $67cc: $ff
    inc b                                         ; $67cd: $04
    cp a                                          ; $67ce: $bf
    ret nz                                        ; $67cf: $c0

    ld e, $e0                                     ; $67d0: $1e $e0
    inc c                                         ; $67d2: $0c
    ld [bc], a                                    ; $67d3: $02
    inc bc                                        ; $67d4: $03
    ld e, $f8                                     ; $67d5: $1e $f8
    inc h                                         ; $67d7: $24
    db $fd                                        ; $67d8: $fd
    ld a, [c]                                     ; $67d9: $f2
    ldh [rLY], a                                  ; $67da: $e0 $44
    nop                                           ; $67dc: $00
    ld a, a                                       ; $67dd: $7f
    sub b                                         ; $67de: $90
    ld [bc], a                                    ; $67df: $02
    ccf                                           ; $67e0: $3f
    call z, $ff01                                 ; $67e1: $cc $01 $ff
    ld c, $1f                                     ; $67e4: $0e $1f
    ld b, $0f                                     ; $67e6: $06 $0f
    nop                                           ; $67e8: $00
    rrca                                          ; $67e9: $0f
    ld h, [hl]                                    ; $67ea: $66
    inc b                                         ; $67eb: $04
    add b                                         ; $67ec: $80
    ret nz                                        ; $67ed: $c0

    inc c                                         ; $67ee: $0c
    ret nz                                        ; $67ef: $c0

    cp a                                          ; $67f0: $bf
    ldh [$df], a                                  ; $67f1: $e0 $df
    cp b                                          ; $67f3: $b8
    rst $20                                       ; $67f4: $e7
    ld e, a                                       ; $67f5: $5f
    nop                                           ; $67f6: $00
    ld a, b                                       ; $67f7: $78
    ld h, a                                       ; $67f8: $67
    ld a, a                                       ; $67f9: $7f
    cp b                                          ; $67fa: $b8
    rst $38                                       ; $67fb: $ff
    xor a                                         ; $67fc: $af
    rst $38                                       ; $67fd: $ff
    ld [hl], b                                    ; $67fe: $70
    ld b, d                                       ; $67ff: $42
    ld a, a                                       ; $6800: $7f
    ret nc                                        ; $6801: $d0

    ld hl, $e41f                                  ; $6802: $21 $1f $e4
    rst $38                                       ; $6805: $ff
    inc e                                         ; $6806: $1c
    sub [hl]                                      ; $6807: $96
    nop                                           ; $6808: $00
    ld c, a                                       ; $6809: $4f
    jr nc, @+$01                                  ; $680a: $30 $ff

    inc d                                         ; $680c: $14
    call nc, Call_000_0401                        ; $680d: $d4 $01 $04
    jr z, jr_0a0_682a                             ; $6810: $28 $18

    ld hl, sp-$20                                 ; $6812: $f8 $e0
    ldh [rP1], a                                  ; $6814: $e0 $00
    ld c, b                                       ; $6816: $48
    ld a, a                                       ; $6817: $7f
    ld h, b                                       ; $6818: $60
    ld a, a                                       ; $6819: $7f
    add h                                         ; $681a: $84
    rst $38                                       ; $681b: $ff
    ld c, h                                       ; $681c: $4c
    ld a, a                                       ; $681d: $7f
    nop                                           ; $681e: $00
    jr c, jr_0a0_6860                             ; $681f: $38 $3f

    jr nc, jr_0a0_6862                            ; $6821: $30 $3f

    jr jr_0a0_6844                                ; $6823: $18 $1f

    rlca                                          ; $6825: $07
    rlca                                          ; $6826: $07
    add e                                         ; $6827: $83
    inc l                                         ; $6828: $2c
    ld a, [hl+]                                   ; $6829: $2a

jr_0a0_682a:
    add sp, $1f                                   ; $682a: $e8 $1f
    push af                                       ; $682c: $f5
    rra                                           ; $682d: $1f
    ld a, [$0230]                                 ; $682e: $fa $30 $02
    adc $0f                                       ; $6831: $ce $0f
    nop                                           ; $6833: $00
    add [hl]                                      ; $6834: $86
    ld bc, $4eb1                                  ; $6835: $01 $b1 $4e
    add a                                         ; $6838: $87
    ld a, b                                       ; $6839: $78
    adc $30                                       ; $683a: $ce $30
    dec d                                         ; $683c: $15
    cp $00                                        ; $683d: $fe $00
    ld [c], a                                     ; $683f: $e2
    xor h                                         ; $6840: $ac
    ld b, $7f                                     ; $6841: $06 $7f
    ret nc                                        ; $6843: $d0

jr_0a0_6844:
    ld b, [hl]                                    ; $6844: $46
    ld d, l                                       ; $6845: $55
    ld l, b                                       ; $6846: $68
    ld c, $54                                     ; $6847: $0e $54
    nop                                           ; $6849: $00
    ld l, [hl]                                    ; $684a: $6e
    ld e, $01                                     ; $684b: $1e $01
    db $10                                        ; $684d: $10
    db $10                                        ; $684e: $10
    rrca                                          ; $684f: $0f
    adc $02                                       ; $6850: $ce $02
    ld [$01ff], sp                                ; $6852: $08 $ff $01
    sbc a                                         ; $6855: $9f
    db $fc                                        ; $6856: $fc
    rst $38                                       ; $6857: $ff
    ld hl, sp-$07                                 ; $6858: $f8 $f9
    ld [hl], b                                    ; $685a: $70
    ldh a, [rNR43]                                ; $685b: $f0 $22
    ld b, $00                                     ; $685d: $06 $00
    db $fd                                        ; $685f: $fd

jr_0a0_6860:
    ld sp, hl                                     ; $6860: $f9
    ld sp, hl                                     ; $6861: $f9

jr_0a0_6862:
    ld sp, hl                                     ; $6862: $f9
    add hl, sp                                    ; $6863: $39
    ld sp, hl                                     ; $6864: $f9
    or l                                          ; $6865: $b5
    ld [hl], c                                    ; $6866: $71
    nop                                           ; $6867: $00
    or e                                          ; $6868: $b3
    ld [hl], e                                    ; $6869: $73
    ld [hl], a                                    ; $686a: $77
    di                                            ; $686b: $f3
    ld a, e                                       ; $686c: $7b
    di                                            ; $686d: $f3
    ld [hl], a                                    ; $686e: $77
    db $e3                                        ; $686f: $e3
    nop                                           ; $6870: $00
    xor e                                         ; $6871: $ab
    and b                                         ; $6872: $a0
    sbc $81                                       ; $6873: $de $81
    rst $28                                       ; $6875: $ef
    jp nz, Jump_0a0_457b                          ; $6876: $c2 $7b $45

    nop                                           ; $6879: $00

Jump_0a0_687a:
    rst $38                                       ; $687a: $ff
    ld h, e                                       ; $687b: $63
    ld [$f7f7], a                                 ; $687c: $ea $f7 $f7
    jp z, Jump_0a0_5fbc                           ; $687f: $ca $bc $5f

    nop                                           ; $6882: $00
    ld a, [c]                                     ; $6883: $f2
    dec c                                         ; $6884: $0d
    jr jr_0a0_688e                                ; $6885: $18 $07

    ld c, $01                                     ; $6887: $0e $01
    dec c                                         ; $6889: $0d
    inc bc                                        ; $688a: $03
    nop                                           ; $688b: $00
    ld d, l                                       ; $688c: $55
    adc e                                         ; $688d: $8b

jr_0a0_688e:
    inc bc                                        ; $688e: $03
    rst $38                                       ; $688f: $ff
    ei                                            ; $6890: $fb
    rlca                                          ; $6891: $07
    rst $30                                       ; $6892: $f7
    rrca                                          ; $6893: $0f
    nop                                           ; $6894: $00
    db $eb                                        ; $6895: $eb
    ld [c], a                                     ; $6896: $e2
    rst $38                                       ; $6897: $ff
    rst $20                                       ; $6898: $e7
    rst $28                                       ; $6899: $ef
    push bc                                       ; $689a: $c5
    rst $38                                       ; $689b: $ff
    rst $08                                       ; $689c: $cf
    nop                                           ; $689d: $00
    db $fd                                        ; $689e: $fd
    jp nz, $d5ea                                  ; $689f: $c2 $ea $d5

    rst $38                                       ; $68a2: $ff
    sbc a                                         ; $68a3: $9f
    cp l                                          ; $68a4: $bd
    ld d, a                                       ; $68a5: $57
    ld bc, $7bfd                                  ; $68a6: $01 $fd $7b
    db $ec                                        ; $68a9: $ec
    ld e, a                                       ; $68aa: $5f
    ld [hl], d                                    ; $68ab: $72
    cp a                                          ; $68ac: $bf
    cp a                                          ; $68ad: $bf
    ld l, l                                       ; $68ae: $6d
    inc de                                        ; $68af: $13
    nop                                           ; $68b0: $00
    rst $38                                       ; $68b1: $ff
    rst $38                                       ; $68b2: $ff
    ld e, l                                       ; $68b3: $5d
    rst $38                                       ; $68b4: $ff
    db $10                                        ; $68b5: $10
    rrca                                          ; $68b6: $0f
    inc e                                         ; $68b7: $1c
    rrca                                          ; $68b8: $0f
    nop                                           ; $68b9: $00
    ld e, a                                       ; $68ba: $5f
    daa                                           ; $68bb: $27
    dec hl                                        ; $68bc: $2b
    call c, Call_000_3efd                         ; $68bd: $dc $fd $3e
    db $fd                                        ; $68c0: $fd
    ld a, [hl]                                    ; $68c1: $7e
    nop                                           ; $68c2: $00
    cp [hl]                                       ; $68c3: $be
    ld a, l                                       ; $68c4: $7d
    db $ed                                        ; $68c5: $ed
    dec de                                        ; $68c6: $1b
    ld [hl], a                                    ; $68c7: $77
    adc a                                         ; $68c8: $8f
    xor [hl]                                      ; $68c9: $ae
    rst $38                                       ; $68ca: $ff
    nop                                           ; $68cb: $00
    rst $18                                       ; $68cc: $df
    ld a, [hl]                                    ; $68cd: $7e
    sbc $7d                                       ; $68ce: $de $7d
    dec a                                         ; $68d0: $3d
    ld a, [$f57b]                                 ; $68d1: $fa $7b $f5
    nop                                           ; $68d4: $00
    push af                                       ; $68d5: $f5
    ei                                            ; $68d6: $fb
    ld [$f4f7], a                                 ; $68d7: $ea $f7 $f4
    ccf                                           ; $68da: $3f
    push af                                       ; $68db: $f5
    ld e, a                                       ; $68dc: $5f
    dec b                                         ; $68dd: $05
    ld d, l                                       ; $68de: $55
    rst $38                                       ; $68df: $ff
    sub $7f                                       ; $68e0: $d6 $7f
    sub b                                         ; $68e2: $90
    rla                                           ; $68e3: $17
    ld b, $84                                     ; $68e4: $06 $84
    and [hl]                                      ; $68e6: $a6
    ld bc, $6651                                  ; $68e7: $01 $51 $66
    adc b                                         ; $68ea: $88
    ld [bc], a                                    ; $68eb: $02
    ld sp, hl                                     ; $68ec: $f9
    db $fc                                        ; $68ed: $fc
    nop                                           ; $68ee: $00
    ld [bc], a                                    ; $68ef: $02
    rst $38                                       ; $68f0: $ff
    ld h, c                                       ; $68f1: $61
    db $fc                                        ; $68f2: $fc
    ld bc, $1c00                                  ; $68f3: $01 $00 $1c
    rst $38                                       ; $68f6: $ff
    ld a, e                                       ; $68f7: $7b
    add a                                         ; $68f8: $87
    add a                                         ; $68f9: $87
    ld a, a                                       ; $68fa: $7f
    rrca                                          ; $68fb: $0f
    rst $38                                       ; $68fc: $ff
    nop                                           ; $68fd: $00
    sbc $ff                                       ; $68fe: $de $ff
    db $dd                                        ; $6900: $dd
    ld a, [hl]                                    ; $6901: $7e
    ld e, d                                       ; $6902: $5a
    dec a                                         ; $6903: $3d
    ld e, l                                       ; $6904: $5d
    cp [hl]                                       ; $6905: $be
    nop                                           ; $6906: $00
    rst $08                                       ; $6907: $cf
    rra                                           ; $6908: $1f
    sub $ef                                       ; $6909: $d6 $ef
    xor l                                         ; $690b: $ad
    rst $18                                       ; $690c: $df
    ld d, l                                       ; $690d: $55
    cp a                                          ; $690e: $bf
    nop                                           ; $690f: $00
    or a                                          ; $6910: $b7
    ld a, a                                       ; $6911: $7f
    ld b, b                                       ; $6912: $40
    rst $38                                       ; $6913: $ff
    ld c, l                                       ; $6914: $4d
    rst $38                                       ; $6915: $ff
    dec [hl]                                      ; $6916: $35
    rst $38                                       ; $6917: $ff
    ld d, b                                       ; $6918: $50
    dec d                                         ; $6919: $15
    ret c                                         ; $691a: $d8

    ld bc, $51dc                                  ; $691b: $01 $dc $51
    ld b, $78                                     ; $691e: $06 $78
    rst $38                                       ; $6920: $ff
    jr z, @+$01                                   ; $6921: $28 $ff

    ld e, l                                       ; $6923: $5d
    ld c, b                                       ; $6924: $48
    ld [bc], a                                    ; $6925: $02
    nop                                           ; $6926: $00
    ld d, b                                       ; $6927: $50
    sbc h                                         ; $6928: $9c
    inc bc                                        ; $6929: $03
    rst $20                                       ; $692a: $e7
    inc de                                        ; $692b: $13
    adc [hl]                                      ; $692c: $8e
    rla                                           ; $692d: $17
    ret nz                                        ; $692e: $c0

    ld [bc], a                                    ; $692f: $02
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    add a                                         ; $6932: $87
    rrca                                          ; $6933: $0f
    xor e                                         ; $6934: $ab
    ld b, a                                       ; $6935: $47
    add c                                         ; $6936: $81
    ld a, a                                       ; $6937: $7f
    adc $31                                       ; $6938: $ce $31

jr_0a0_693a:
    jr nz, jr_0a0_693a                            ; $693a: $20 $fe

    inc bc                                        ; $693c: $03
    ld a, a                                       ; $693d: $7f
    ld [bc], a                                    ; $693e: $02
    pop hl                                        ; $693f: $e1
    rst $38                                       ; $6940: $ff
    ldh [$8c], a                                  ; $6941: $e0 $8c
    rst $38                                       ; $6943: $ff
    ld d, h                                       ; $6944: $54
    rst $00                                       ; $6945: $c7
    ld b, h                                       ; $6946: $44
    dec b                                         ; $6947: $05
    pop af                                        ; $6948: $f1
    ld e, d                                       ; $6949: $5a
    dec b                                         ; $694a: $05
    jr c, jr_0a0_6987                             ; $694b: $38 $3a

    nop                                           ; $694d: $00
    xor $ff                                       ; $694e: $ee $ff
    ld b, l                                       ; $6950: $45
    ld h, a                                       ; $6951: $67
    and b                                         ; $6952: $a0
    ld [bc], a                                    ; $6953: $02
    ld a, [$efff]                                 ; $6954: $fa $ff $ef
    or $01                                        ; $6957: $f6 $01
    ei                                            ; $6959: $fb
    ld [hl], d                                    ; $695a: $72
    nop                                           ; $695b: $00
    db $10                                        ; $695c: $10
    ld b, c                                       ; $695d: $41
    rst $38                                       ; $695e: $ff
    ld h, b                                       ; $695f: $60
    jr nz, jr_0a0_6965                            ; $6960: $20 $03

    ld [c], a                                     ; $6962: $e2
    rst $38                                       ; $6963: $ff
    cp l                                          ; $6964: $bd

jr_0a0_6965:
    ld a, [$2e00]                                 ; $6965: $fa $00 $2e
    rst $38                                       ; $6968: $ff
    rst $38                                       ; $6969: $ff
    rst $28                                       ; $696a: $ef
    dec bc                                        ; $696b: $0b
    rst $30                                       ; $696c: $f7
    rst $38                                       ; $696d: $ff
    xor e                                         ; $696e: $ab
    nop                                           ; $696f: $00
    xor $1f                                       ; $6970: $ee $1f
    scf                                           ; $6972: $37
    rst $08                                       ; $6973: $cf
    rla                                           ; $6974: $17
    rst $28                                       ; $6975: $ef
    dec de                                        ; $6976: $1b
    rst $28                                       ; $6977: $ef
    nop                                           ; $6978: $00
    inc sp                                        ; $6979: $33
    rst $28                                       ; $697a: $ef
    ld sp, hl                                     ; $697b: $f9
    rst $20                                       ; $697c: $e7
    db $fc                                        ; $697d: $fc
    jp Jump_000_00f1                              ; $697e: $c3 $f1 $00


    ld d, h                                       ; $6981: $54
    ld [$0198], sp                                ; $6982: $08 $98 $01
    ld a, $ac                                     ; $6985: $3e $ac

jr_0a0_6987:
    rlca                                          ; $6987: $07
    rst $30                                       ; $6988: $f7
    adc d                                         ; $6989: $8a
    dec b                                         ; $698a: $05

jr_0a0_698b:
    add hl, de                                    ; $698b: $19
    rst $38                                       ; $698c: $ff
    nop                                           ; $698d: $00
    cp $0f                                        ; $698e: $fe $0f
    db $eb                                        ; $6990: $eb
    call nc, $fa7e                                ; $6991: $d4 $7e $fa
    cp a                                          ; $6994: $bf
    ld a, d                                       ; $6995: $7a
    nop                                           ; $6996: $00
    ld a, a                                       ; $6997: $7f
    sbc a                                         ; $6998: $9f
    cp a                                          ; $6999: $bf
    add $eb                                       ; $699a: $c6 $eb
    pop bc                                        ; $699c: $c1
    push af                                       ; $699d: $f5
    ldh a, [rDIV]                                 ; $699e: $f0 $04
    db $fc                                        ; $69a0: $fc
    db $fc                                        ; $69a1: $fc
    ccf                                           ; $69a2: $3f
    rst $38                                       ; $69a3: $ff
    rst $08                                       ; $69a4: $cf
    ld c, d                                       ; $69a5: $4a
    inc bc                                        ; $69a6: $03
    ldh a, [$6f]                                  ; $69a7: $f0 $6f
    jr nz, jr_0a0_698b                            ; $69a9: $20 $e0

    rra                                           ; $69ab: $1f
    ld [bc], a                                    ; $69ac: $02
    nop                                           ; $69ad: $00
    ccf                                           ; $69ae: $3f
    ld d, b                                       ; $69af: $50
    cp a                                          ; $69b0: $bf
    jr nz, @-$1f                                  ; $69b1: $20 $df

    nop                                           ; $69b3: $00
    ld a, c                                       ; $69b4: $79
    add [hl]                                      ; $69b5: $86
    add [hl]                                      ; $69b6: $86
    ld a, b                                       ; $69b7: $78
    rlca                                          ; $69b8: $07
    db $fc                                        ; $69b9: $fc
    adc $fd                                       ; $69ba: $ce $fd
    adc h                                         ; $69bc: $8c
    and l                                         ; $69bd: $a5
    nop                                           ; $69be: $00
    nop                                           ; $69bf: $00
    ld sp, $4c0e                                  ; $69c0: $31 $0e $4c
    ld b, $40                                     ; $69c3: $06 $40
    ld bc, $000f                                  ; $69c5: $01 $0f $00
    nop                                           ; $69c8: $00
    ld d, [hl]                                    ; $69c9: $56
    adc c                                         ; $69ca: $89
    inc b                                         ; $69cb: $04
    ei                                            ; $69cc: $fb
    cp $07                                        ; $69cd: $fe $07
    rst $38                                       ; $69cf: $ff
    inc bc                                        ; $69d0: $03
    nop                                           ; $69d1: $00
    ld h, c                                       ; $69d2: $61
    ld e, $20                                     ; $69d3: $1e $20
    rst $18                                       ; $69d5: $df
    ld [hl], b                                    ; $69d6: $70
    sbc a                                         ; $69d7: $9f
    ld hl, sp+$1f                                 ; $69d8: $f8 $1f
    nop                                           ; $69da: $00
    rra                                           ; $69db: $1f
    rst $28                                       ; $69dc: $ef
    rrca                                          ; $69dd: $0f
    or $1f                                        ; $69de: $f6 $1f
    ldh a, [rIE]                                  ; $69e0: $f0 $ff
    ldh [$a0], a                                  ; $69e2: $e0 $a0
    jr nc, jr_0a0_69f7                            ; $69e4: $30 $11

    ld h, $30                                     ; $69e6: $26 $30
    add hl, de                                    ; $69e8: $19
    cp a                                          ; $69e9: $bf
    ld a, h                                       ; $69ea: $7c
    rst $28                                       ; $69eb: $ef
    jr jr_0a0_69ee                                ; $69ec: $18 $00

jr_0a0_69ee:
    add d                                         ; $69ee: $82
    ld bc, $0f38                                  ; $69ef: $01 $38 $0f
    rrca                                          ; $69f2: $0f
    db $10                                        ; $69f3: $10
    ld d, $2f                                     ; $69f4: $16 $2f
    db $10                                        ; $69f6: $10

jr_0a0_69f7:
    jr nc, jr_0a0_6a69                            ; $69f7: $30 $70

    ld [bc], a                                    ; $69f9: $02
    xor a                                         ; $69fa: $af
    rst $18                                       ; $69fb: $df
    and $7f                                       ; $69fc: $e6 $7f
    db $dd                                        ; $69fe: $dd
    ld [hl+], a                                   ; $69ff: $22
    jr nz, jr_0a0_6a42                            ; $6a00: $20 $40

    ret nz                                        ; $6a02: $c0

    nop                                           ; $6a03: $00
    ret nz                                        ; $6a04: $c0

    jr nz, @-$3e                                  ; $6a05: $20 $c0

    jr nz, jr_0a0_6a88                            ; $6a07: $20 $7f

    add b                                         ; $6a09: $80
    adc a                                         ; $6a0a: $8f
    ld [hl], b                                    ; $6a0b: $70
    ld [bc], a                                    ; $6a0c: $02
    rlca                                          ; $6a0d: $07
    ld hl, sp-$31                                 ; $6a0e: $f8 $cf
    ld hl, sp-$01                                 ; $6a10: $f8 $ff
    ld a, b                                       ; $6a12: $78
    sub b                                         ; $6a13: $90
    ld b, $80                                     ; $6a14: $06 $80
    nop                                           ; $6a16: $00
    pop bc                                        ; $6a17: $c1
    nop                                           ; $6a18: $00
    add hl, de                                    ; $6a19: $19
    cpl                                           ; $6a1a: $2f
    dec [hl]                                      ; $6a1b: $35
    dec hl                                        ; $6a1c: $2b
    inc [hl]                                      ; $6a1d: $34
    dec hl                                        ; $6a1e: $2b
    nop                                           ; $6a1f: $00
    dec hl                                        ; $6a20: $2b
    scf                                           ; $6a21: $37
    ld a, [hl+]                                   ; $6a22: $2a
    dec [hl]                                      ; $6a23: $35
    dec e                                         ; $6a24: $1d
    inc de                                        ; $6a25: $13
    dec de                                        ; $6a26: $1b
    ld d, $02                                     ; $6a27: $16 $02
    dec e                                         ; $6a29: $1d
    ld d, $bd                                     ; $6a2a: $16 $bd
    jp nz, $ce31                                  ; $6a2c: $c2 $31 $ce

    ld b, h                                       ; $6a2f: $44
    ld bc, $00f7                                  ; $6a30: $01 $f7 $00
    db $f4                                        ; $6a33: $f4
    ei                                            ; $6a34: $fb
    ld c, a                                       ; $6a35: $4f
    cp a                                          ; $6a36: $bf
    ld [c], a                                     ; $6a37: $e2
    ld e, $fc                                     ; $6a38: $1e $fc
    ld h, d                                       ; $6a3a: $62
    nop                                           ; $6a3b: $00
    ld h, b                                       ; $6a3c: $60
    ldh a, [$f0]                                  ; $6a3d: $f0 $f0
    ld [$18f0], sp                                ; $6a3f: $08 $f0 $18

jr_0a0_6a42:
    adc b                                         ; $6a42: $88
    ld a, b                                       ; $6a43: $78
    ld [$b050], sp                                ; $6a44: $08 $50 $b0
    ldh a, [$f0]                                  ; $6a47: $f0 $f0
    ld l, h                                       ; $6a49: $6c
    ld [$00c1], sp                                ; $6a4a: $08 $c1 $00
    and h                                         ; $6a4d: $a4
    ld c, h                                       ; $6a4e: $4c
    ld b, e                                       ; $6a4f: $43
    ld d, [hl]                                    ; $6a50: $56
    dec c                                         ; $6a51: $0d
    db $ed                                        ; $6a52: $ed
    ld e, $4e                                     ; $6a53: $1e $4e
    rlca                                          ; $6a55: $07
    ld [bc], a                                    ; $6a56: $02
    nop                                           ; $6a57: $00
    ld d, a                                       ; $6a58: $57
    db $fc                                        ; $6a59: $fc
    nop                                           ; $6a5a: $00
    or a                                          ; $6a5b: $b7
    call c, $cdaa                                 ; $6a5c: $dc $aa $cd
    cp c                                          ; $6a5f: $b9
    rst $08                                       ; $6a60: $cf
    xor e                                         ; $6a61: $ab
    call z, $ae00                                 ; $6a62: $cc $00 $ae
    rst $08                                       ; $6a65: $cf
    sub l                                         ; $6a66: $95
    rst $00                                       ; $6a67: $c7
    cp e                                          ; $6a68: $bb

jr_0a0_6a69:
    call z, $f32c                                 ; $6a69: $cc $2c $f3
    nop                                           ; $6a6c: $00
    db $db                                        ; $6a6d: $db
    halt                                          ; $6a6e: $76
    db $e3                                        ; $6a6f: $e3
    rst $38                                       ; $6a70: $ff
    ld [hl], a                                    ; $6a71: $77
    adc a                                         ; $6a72: $8f
    cp $01                                        ; $6a73: $fe $01
    nop                                           ; $6a75: $00
    dec c                                         ; $6a76: $0d
    cp $f2                                        ; $6a77: $fe $f2
    rst $38                                       ; $6a79: $ff
    ld a, [hl+]                                   ; $6a7a: $2a
    rst $10                                       ; $6a7b: $d7
    ld bc, $00ff                                  ; $6a7c: $01 $ff $00
    ld [$1701], a                                 ; $6a7f: $ea $01 $17
    pop bc                                        ; $6a82: $c1
    cp $a1                                        ; $6a83: $fe $a1
    cp a                                          ; $6a85: $bf
    pop hl                                        ; $6a86: $e1
    nop                                           ; $6a87: $00

jr_0a0_6a88:
    ld a, d                                       ; $6a88: $7a
    push hl                                       ; $6a89: $e5
    rst $28                                       ; $6a8a: $ef
    ld d, c                                       ; $6a8b: $51
    jp c, $bba5                                   ; $6a8c: $da $a5 $bb

    call z, $b800                                 ; $6a8f: $cc $00 $b8
    rst $08                                       ; $6a92: $cf
    sub a                                         ; $6a93: $97
    rst $28                                       ; $6a94: $ef
    xor b                                         ; $6a95: $a8
    call nc, $e191                                ; $6a96: $d4 $91 $e1
    nop                                           ; $6a99: $00
    sub b                                         ; $6a9a: $90
    ldh [$ba], a                                  ; $6a9b: $e0 $ba
    ret nz                                        ; $6a9d: $c0

    cp l                                          ; $6a9e: $bd
    ret nz                                        ; $6a9f: $c0

    db $fd                                        ; $6aa0: $fd
    inc bc                                        ; $6aa1: $03
    nop                                           ; $6aa2: $00
    rst $18                                       ; $6aa3: $df
    add hl, sp                                    ; $6aa4: $39
    jp nc, $ffef                                  ; $6aa5: $d2 $ef $ff

    sbc a                                         ; $6aa8: $9f
    ld a, h                                       ; $6aa9: $7c
    adc h                                         ; $6aaa: $8c
    nop                                           ; $6aab: $00
    sub d                                         ; $6aac: $92
    rst $28                                       ; $6aad: $ef
    ld a, [hl]                                    ; $6aae: $7e
    ld a, a                                       ; $6aaf: $7f
    add b                                         ; $6ab0: $80
    ld d, $a7                                     ; $6ab1: $16 $a7
    reti                                          ; $6ab3: $d9


    nop                                           ; $6ab4: $00
    ld c, [hl]                                    ; $6ab5: $4e
    or c                                          ; $6ab6: $b1
    sub l                                         ; $6ab7: $95
    jp hl                                         ; $6ab8: $e9


    ld l, $11                                     ; $6ab9: $2e $11
    scf                                           ; $6abb: $37
    add c                                         ; $6abc: $81
    nop                                           ; $6abd: $00
    ld a, [de]                                    ; $6abe: $1a
    ld bc, $0127                                  ; $6abf: $01 $27 $01
    ld d, [hl]                                    ; $6ac2: $56
    ld bc, $c0b6                                  ; $6ac3: $01 $b6 $c0
    inc bc                                        ; $6ac6: $03
    xor l                                         ; $6ac7: $ad
    ret nz                                        ; $6ac8: $c0

    add [hl]                                      ; $6ac9: $86
    pop bc                                        ; $6aca: $c1
    adc a                                         ; $6acb: $8f
    ret nz                                        ; $6acc: $c0

    and d                                         ; $6acd: $a2
    ld a, [bc]                                    ; $6ace: $0a
    add b                                         ; $6acf: $80
    rrca                                          ; $6ad0: $0f
    nop                                           ; $6ad1: $00
    jp nc, $252d                                  ; $6ad2: $d2 $2d $25

    jp c, $a05f                                   ; $6ad5: $da $5f $a0

    dec l                                         ; $6ad8: $2d
    ret nc                                        ; $6ad9: $d0

    ret nz                                        ; $6ada: $c0

    and d                                         ; $6adb: $a2
    ld a, [bc]                                    ; $6adc: $0a
    sub b                                         ; $6add: $90
    rrca                                          ; $6ade: $0f
    rst $28                                       ; $6adf: $ef
    ld bc, $01be                                  ; $6ae0: $01 $be $01
    ld e, a                                       ; $6ae3: $5f
    ld bc, $fe04                                  ; $6ae4: $01 $04 $fe
    ld bc, $ff01                                  ; $6ae7: $01 $01 $ff
    cp $22                                        ; $6aea: $fe $22
    db $10                                        ; $6aec: $10
    db $f4                                        ; $6aed: $f4
    ld a, e                                       ; $6aee: $7b
    ld bc, $5fee                                  ; $6aef: $01 $ee $5f
    ret nc                                        ; $6af2: $d0

    rst $28                                       ; $6af3: $ef
    adc [hl]                                      ; $6af4: $8e
    ld a, a                                       ; $6af5: $7f
    db $d3                                        ; $6af6: $d3
    ld c, [hl]                                    ; $6af7: $4e
    inc b                                         ; $6af8: $04
    and d                                         ; $6af9: $a2
    ld [bc], a                                    ; $6afa: $02
    ld [$3432], sp                                ; $6afb: $08 $32 $34
    inc b                                         ; $6afe: $04
    ld [de], a                                    ; $6aff: $12
    rst $38                                       ; $6b00: $ff
    ld [hl], d                                    ; $6b01: $72
    ld a, [de]                                    ; $6b02: $1a
    rlca                                          ; $6b03: $07
    sub d                                         ; $6b04: $92
    xor d                                         ; $6b05: $aa
    ld [bc], a                                    ; $6b06: $02
    db $10                                        ; $6b07: $10
    xor [hl]                                      ; $6b08: $ae
    db $eb                                        ; $6b09: $eb
    rlca                                          ; $6b0a: $07
    scf                                           ; $6b0b: $37
    db $ec                                        ; $6b0c: $ec
    inc bc                                        ; $6b0d: $03
    rra                                           ; $6b0e: $1f
    ld a, b                                       ; $6b0f: $78
    inc b                                         ; $6b10: $04
    rrca                                          ; $6b11: $0f
    ld a, [hl+]                                   ; $6b12: $2a
    rst $38                                       ; $6b13: $ff
    ld b, a                                       ; $6b14: $47
    add h                                         ; $6b15: $84
    inc b                                         ; $6b16: $04
    ld c, l                                       ; $6b17: $4d
    ret                                           ; $6b18: $c9


    nop                                           ; $6b19: $00
    or a                                          ; $6b1a: $b7
    adc $04                                       ; $6b1b: $ce $04
    rst $18                                       ; $6b1d: $df
    ld [bc], a                                    ; $6b1e: $02
    ei                                            ; $6b1f: $fb
    cp $ff                                        ; $6b20: $fe $ff
    rst $18                                       ; $6b22: $df
    cp $e3                                        ; $6b23: $fe $e3
    ld b, d                                       ; $6b25: $42
    rlca                                          ; $6b26: $07
    ld h, e                                       ; $6b27: $63
    sub $9b                                       ; $6b28: $d6 $9b
    dec b                                         ; $6b2a: $05
    inc b                                         ; $6b2b: $04
    dec de                                        ; $6b2c: $1b
    ld d, h                                       ; $6b2d: $54
    ld [hl], $10                                  ; $6b2e: $36 $10
    db $d3                                        ; $6b30: $d3
    jr nc, @+$09                                  ; $6b31: $30 $07

    dec e                                         ; $6b33: $1d
    ld c, $f9                                     ; $6b34: $0e $f9
    jr z, @+$01                                   ; $6b36: $28 $ff

    xor c                                         ; $6b38: $a9
    call nc, $3a01                                ; $6b39: $d4 $01 $3a
    ld a, b                                       ; $6b3c: $78
    inc b                                         ; $6b3d: $04
    rst $38                                       ; $6b3e: $ff
    cp $02                                        ; $6b3f: $fe $02
    nop                                           ; $6b41: $00
    db $fd                                        ; $6b42: $fd
    dec d                                         ; $6b43: $15
    ld [$ffff], a                                 ; $6b44: $ea $ff $ff
    ld d, a                                       ; $6b47: $57
    xor b                                         ; $6b48: $a8
    rst $38                                       ; $6b49: $ff
    nop                                           ; $6b4a: $00
    rst $30                                       ; $6b4b: $f7
    rst $18                                       ; $6b4c: $df
    xor a                                         ; $6b4d: $af
    xor a                                         ; $6b4e: $af
    rst $30                                       ; $6b4f: $f7
    ei                                            ; $6b50: $fb
    jp $22bd                                      ; $6b51: $c3 $bd $22


    ld b, b                                       ; $6b54: $40
    ld [$033b], a                                 ; $6b55: $ea $3b $03
    xor a                                         ; $6b58: $af
    add a                                         ; $6b59: $87
    inc d                                         ; $6b5a: $14
    ld c, d                                       ; $6b5b: $4a
    inc b                                         ; $6b5c: $04
    inc b                                         ; $6b5d: $04
    xor d                                         ; $6b5e: $aa
    xor h                                         ; $6b5f: $ac
    ld [bc], a                                    ; $6b60: $02
    call nz, Call_000_0522                        ; $6b61: $c4 $22 $05
    ld b, b                                       ; $6b64: $40
    and h                                         ; $6b65: $a4
    rlca                                          ; $6b66: $07
    xor c                                         ; $6b67: $a9
    ld [bc], a                                    ; $6b68: $02
    db $10                                        ; $6b69: $10
    xor l                                         ; $6b6a: $ad
    nop                                           ; $6b6b: $00
    ei                                            ; $6b6c: $fb
    xor e                                         ; $6b6d: $ab
    db $fd                                        ; $6b6e: $fd
    db $fd                                        ; $6b6f: $fd
    ei                                            ; $6b70: $fb
    dec bc                                        ; $6b71: $0b
    db $fd                                        ; $6b72: $fd
    rst $38                                       ; $6b73: $ff
    nop                                           ; $6b74: $00
    ld sp, hl                                     ; $6b75: $f9
    dec hl                                        ; $6b76: $2b
    push de                                       ; $6b77: $d5
    sbc $a2                                       ; $6b78: $de $a2
    rst $28                                       ; $6b7a: $ef
    ld d, e                                       ; $6b7b: $53
    ld a, d                                       ; $6b7c: $7a
    nop                                           ; $6b7d: $00
    add b                                         ; $6b7e: $80
    cp l                                          ; $6b7f: $bd
    ld b, h                                       ; $6b80: $44
    db $eb                                        ; $6b81: $eb
    add hl, bc                                    ; $6b82: $09
    rst $30                                       ; $6b83: $f7
    ld [de], a                                    ; $6b84: $12
    xor h                                         ; $6b85: $ac
    nop                                           ; $6b86: $00
    inc b                                         ; $6b87: $04
    db $dd                                        ; $6b88: $dd
    add hl, bc                                    ; $6b89: $09
    ld sp, hl                                     ; $6b8a: $f9
    ret c                                         ; $6b8b: $d8

    ld d, d                                       ; $6b8c: $52
    ld b, d                                       ; $6b8d: $42
    push de                                       ; $6b8e: $d5
    nop                                           ; $6b8f: $00
    ld d, b                                       ; $6b90: $50
    ld d, d                                       ; $6b91: $52
    ld d, b                                       ; $6b92: $50
    push af                                       ; $6b93: $f5
    ldh a, [$3f]                                  ; $6b94: $f0 $3f
    dec a                                         ; $6b96: $3d
    ld [hl], a                                    ; $6b97: $77
    jr nz, jr_0a0_6bc0                            ; $6b98: $20 $26

    jr nz, jr_0a0_6c08                            ; $6b9a: $20 $6c

    ld [bc], a                                    ; $6b9c: $02
    ld e, h                                       ; $6b9d: $5c
    rst $38                                       ; $6b9e: $ff
    ld d, a                                       ; $6b9f: $57
    rst $38                                       ; $6ba0: $ff
    ld a, $40                                     ; $6ba1: $3e $40
    db $fd                                        ; $6ba3: $fd
    ld d, [hl]                                    ; $6ba4: $56
    ld [bc], a                                    ; $6ba5: $02
    rst $30                                       ; $6ba6: $f7
    ld d, a                                       ; $6ba7: $57
    xor b                                         ; $6ba8: $a8
    cp e                                          ; $6ba9: $bb
    db $dd                                        ; $6baa: $dd
    rst $38                                       ; $6bab: $ff
    nop                                           ; $6bac: $00
    ld sp, hl                                     ; $6bad: $f9
    xor a                                         ; $6bae: $af
    ld e, c                                       ; $6baf: $59
    ei                                            ; $6bb0: $fb
    ld sp, hl                                     ; $6bb1: $f9
    db $fd                                        ; $6bb2: $fd
    ld e, c                                       ; $6bb3: $59
    ei                                            ; $6bb4: $fb
    nop                                           ; $6bb5: $00
    ld e, c                                       ; $6bb6: $59
    db $fd                                        ; $6bb7: $fd
    ld e, c                                       ; $6bb8: $59
    ld sp, hl                                     ; $6bb9: $f9
    ld e, c                                       ; $6bba: $59
    call c, $af08                                 ; $6bbb: $dc $08 $af
    nop                                           ; $6bbe: $00
    adc [hl]                                      ; $6bbf: $8e

jr_0a0_6bc0:
    ld d, c                                       ; $6bc0: $51
    ld d, c                                       ; $6bc1: $51
    sub l                                         ; $6bc2: $95
    db $10                                        ; $6bc3: $10
    ld d, d                                       ; $6bc4: $52
    db $10                                        ; $6bc5: $10
    dec d                                         ; $6bc6: $15
    nop                                           ; $6bc7: $00
    db $10                                        ; $6bc8: $10
    ld a, [de]                                    ; $6bc9: $1a
    ld [de], a                                    ; $6bca: $12
    ld d, a                                       ; $6bcb: $57
    inc de                                        ; $6bcc: $13
    ld l, a                                       ; $6bcd: $6f
    ld b, h                                       ; $6bce: $44
    sbc $00                                       ; $6bcf: $de $00
    pop bc                                        ; $6bd1: $c1
    xor a                                         ; $6bd2: $af
    add b                                         ; $6bd3: $80
    ld a, d                                       ; $6bd4: $7a
    ld b, l                                       ; $6bd5: $45
    db $fd                                        ; $6bd6: $fd

jr_0a0_6bd7:
    ld b, d                                       ; $6bd7: $42
    ld [$5500], a                                 ; $6bd8: $ea $00 $55
    push af                                       ; $6bdb: $f5
    jp z, $d7a8                                   ; $6bdc: $ca $a8 $d7

    ei                                            ; $6bdf: $fb

jr_0a0_6be0:
    rst $30                                       ; $6be0: $f7
    rst $18                                       ; $6be1: $df
    ld bc, $fffb                                  ; $6be2: $01 $fb $ff
    db $db                                        ; $6be5: $db
    ld a, e                                       ; $6be6: $7b
    cp c                                          ; $6be7: $b9
    cp l                                          ; $6be8: $bd
    jp hl                                         ; $6be9: $e9


    inc [hl]                                      ; $6bea: $34
    nop                                           ; $6beb: $00
    jr nz, jr_0a0_6bd7                            ; $6bec: $20 $e9

    db $fc                                        ; $6bee: $fc
    ld e, $07                                     ; $6bef: $1e $07
    ei                                            ; $6bf1: $fb
    cp $87                                        ; $6bf2: $fe $87
    cp $9f                                        ; $6bf4: $fe $9f
    nop                                           ; $6bf6: $00
    db $fc                                        ; $6bf7: $fc
    cp a                                          ; $6bf8: $bf
    ld hl, sp-$27                                 ; $6bf9: $f8 $d9
    ldh a, [$d0]                                  ; $6bfb: $f0 $d0
    ldh [$d8], a                                  ; $6bfd: $e0 $d8
    nop                                           ; $6bff: $00
    ldh [$d4], a                                  ; $6c00: $e0 $d4
    sub h                                         ; $6c02: $94

Call_0a0_6c03:
    push af                                       ; $6c03: $f5
    call nc, $eafa                                ; $6c04: $d4 $fa $ea
    or a                                          ; $6c07: $b7

jr_0a0_6c08:
    ld [$42b2], sp                                ; $6c08: $08 $b2 $42
    nop                                           ; $6c0b: $00
    dec d                                         ; $6c0c: $15
    db $eb                                        ; $6c0d: $eb
    inc bc                                        ; $6c0e: $03
    ld e, a                                       ; $6c0f: $5f
    ld [$00e2], sp                                ; $6c10: $08 $e2 $00
    db $fc                                        ; $6c13: $fc
    add sp, -$09                                  ; $6c14: $e8 $f7
    xor $71                                       ; $6c16: $ee $71
    ld [hl], a                                    ; $6c18: $77
    ld a, b                                       ; $6c19: $78
    ld a, [$3d00]                                 ; $6c1a: $fa $00 $3d
    ld hl, sp+$3f                                 ; $6c1d: $f8 $3f
    db $fc                                        ; $6c1f: $fc
    sbc a                                         ; $6c20: $9f
    xor $5f                                       ; $6c21: $ee $5f
    dec hl                                        ; $6c23: $2b
    nop                                           ; $6c24: $00
    add hl, bc                                    ; $6c25: $09
    rst $18                                       ; $6c26: $df
    ret                                           ; $6c27: $c9


    rst $28                                       ; $6c28: $ef
    ld l, b                                       ; $6c29: $68
    ld a, e                                       ; $6c2a: $7b
    dec l                                         ; $6c2b: $2d
    db $fd                                        ; $6c2c: $fd
    nop                                           ; $6c2d: $00
    ld a, [de]                                    ; $6c2e: $1a
    ld a, [$f515]                                 ; $6c2f: $fa $15 $f5
    adc d                                         ; $6c32: $8a
    xor b                                         ; $6c33: $a8
    rst $10                                       ; $6c34: $d7
    rst $38                                       ; $6c35: $ff
    nop                                           ; $6c36: $00
    cpl                                           ; $6c37: $2f
    or a                                          ; $6c38: $b7
    rst $18                                       ; $6c39: $df
    ld e, e                                       ; $6c3a: $5b
    rst $38                                       ; $6c3b: $ff
    xor c                                         ; $6c3c: $a9
    ld a, a                                       ; $6c3d: $7f
    jr z, jr_0a0_6be0                             ; $6c3e: $28 $a0

    ld a, d                                       ; $6c40: $7a
    dec b                                         ; $6c41: $05
    inc d                                         ; $6c42: $14
    call c, Call_000_3c04                         ; $6c43: $dc $04 $3c
    ld hl, sp+$78                                 ; $6c46: $f8 $78
    ldh a, [$bb]                                  ; $6c48: $f0 $bb
    nop                                           ; $6c4a: $00
    call nz, $e7d8                                ; $6c4b: $c4 $d8 $e7
    db $ec                                        ; $6c4e: $ec
    di                                            ; $6c4f: $f3
    rst $30                                       ; $6c50: $f7
    ld hl, sp+$79                                 ; $6c51: $f8 $79
    nop                                           ; $6c53: $00
    db $fc                                        ; $6c54: $fc
    inc a                                         ; $6c55: $3c
    cp $d6                                        ; $6c56: $fe $d6
    dec hl                                        ; $6c58: $2b
    cp b                                          ; $6c59: $b8
    ld e, a                                       ; $6c5a: $5f
    ld e, c                                       ; $6c5b: $59
    ld a, [bc]                                    ; $6c5c: $0a
    xor a                                         ; $6c5d: $af
    add h                                         ; $6c5e: $84
    ld a, a                                       ; $6c5f: $7f
    dec b                                         ; $6c60: $05
    jr nz, jr_0a0_6c6a                            ; $6c61: $20 $07

    inc hl                                        ; $6c63: $23
    inc e                                         ; $6c64: $1c
    dec b                                         ; $6c65: $05
    dec bc                                        ; $6c66: $0b
    adc b                                         ; $6c67: $88
    adc b                                         ; $6c68: $88
    dec b                                         ; $6c69: $05

jr_0a0_6c6a:
    or d                                          ; $6c6a: $b2
    rst $38                                       ; $6c6b: $ff
    ld c, d                                       ; $6c6c: $4a
    ld h, d                                       ; $6c6d: $62
    dec b                                         ; $6c6e: $05
    and d                                         ; $6c6f: $a2
    rst $38                                       ; $6c70: $ff
    ld [hl+], a                                   ; $6c71: $22
    adc b                                         ; $6c72: $88
    ld l, $05                                     ; $6c73: $2e $05
    ld e, $ff                                     ; $6c75: $1e $ff
    adc a                                         ; $6c77: $8f
    ld d, d                                       ; $6c78: $52
    inc bc                                        ; $6c79: $03
    inc hl                                        ; $6c7a: $23
    rst $38                                       ; $6c7b: $ff
    ld hl, $ff20                                  ; $6c7c: $21 $20 $ff
    ld b, e                                       ; $6c7f: $43
    ld a, [bc]                                    ; $6c80: $0a
    nop                                           ; $6c81: $00
    ld e, $ff                                     ; $6c82: $1e $ff
    rst $08                                       ; $6c84: $cf
    jr nc, @+$3d                                  ; $6c85: $30 $3b

    db $10                                        ; $6c87: $10
    db $fc                                        ; $6c88: $fc
    cp a                                          ; $6c89: $bf
    cp $02                                        ; $6c8a: $fe $02
    ld [$febd], sp                                ; $6c8c: $08 $bd $fe
    ld a, a                                       ; $6c8f: $7f
    add b                                         ; $6c90: $80
    nop                                           ; $6c91: $00
    add a                                         ; $6c92: $87
    ld a, b                                       ; $6c93: $78
    dec hl                                        ; $6c94: $2b
    call nc, $a05e                                ; $6c95: $d4 $5e $a0
    xor a                                         ; $6c98: $af
    ld d, b                                       ; $6c99: $50
    ret nz                                        ; $6c9a: $c0

    db $10                                        ; $6c9b: $10
    ld bc, $0140                                  ; $6c9c: $01 $40 $01
    push af                                       ; $6c9f: $f5
    add b                                         ; $6ca0: $80
    xor b                                         ; $6ca1: $a8
    add b                                         ; $6ca2: $80
    db $dd                                        ; $6ca3: $dd
    reti                                          ; $6ca4: $d9


    nop                                           ; $6ca5: $00
    ld sp, hl                                     ; $6ca6: $f9
    reti                                          ; $6ca7: $d9


    ld e, c                                       ; $6ca8: $59
    ld e, c                                       ; $6ca9: $59
    db $dd                                        ; $6caa: $dd
    reti                                          ; $6cab: $d9


    db $db                                        ; $6cac: $db
    reti                                          ; $6cad: $d9


    nop                                           ; $6cae: $00
    db $fd                                        ; $6caf: $fd
    ld sp, hl                                     ; $6cb0: $f9
    ld c, e                                       ; $6cb1: $4b
    ld c, c                                       ; $6cb2: $49
    ld a, a                                       ; $6cb3: $7f
    ld a, c                                       ; $6cb4: $79
    ccf                                           ; $6cb5: $3f
    ld d, $00                                     ; $6cb6: $16 $00
    rst $18                                       ; $6cb8: $df
    sub l                                         ; $6cb9: $95
    rst $38                                       ; $6cba: $ff
    ld d, b                                       ; $6cbb: $50
    ld a, d                                       ; $6cbc: $7a
    rla                                           ; $6cbd: $17
    db $fd                                        ; $6cbe: $fd
    ld [de], a                                    ; $6cbf: $12
    nop                                           ; $6cc0: $00
    ld [$fd1d], a                                 ; $6cc1: $ea $1d $fd
    ld a, [de]                                    ; $6cc4: $1a
    xor d                                         ; $6cc5: $aa
    ld e, a                                       ; $6cc6: $5f
    db $f4                                        ; $6cc7: $f4
    dec hl                                        ; $6cc8: $2b
    ld bc, $5fe0                                  ; $6cc9: $01 $e0 $5f
    ld [hl], b                                    ; $6ccc: $70
    rst $28                                       ; $6ccd: $ef
    ldh [$7f], a                                  ; $6cce: $e0 $7f
    ld d, b                                       ; $6cd0: $50
    sbc h                                         ; $6cd1: $9c
    ld bc, $5040                                  ; $6cd2: $01 $40 $50
    xor b                                         ; $6cd5: $a8
    dec b                                         ; $6cd6: $05
    push de                                       ; $6cd7: $d5
    add c                                         ; $6cd8: $81
    rst $20                                       ; $6cd9: $e7
    rst $00                                       ; $6cda: $c7
    call c, $009c                                 ; $6cdb: $dc $9c $00
    sbc a                                         ; $6cde: $9f
    ld e, $57                                     ; $6cdf: $1e $57
    dec d                                         ; $6ce1: $15
    db $fd                                        ; $6ce2: $fd
    jp hl                                         ; $6ce3: $e9


    ld a, e                                       ; $6ce4: $7b
    ld a, c                                       ; $6ce5: $79
    nop                                           ; $6ce6: $00
    ld e, a                                       ; $6ce7: $5f
    rrca                                          ; $6ce8: $0f
    ld l, e                                       ; $6ce9: $6b
    ld h, c                                       ; $6cea: $61
    rst $38                                       ; $6ceb: $ff
    cp c                                          ; $6cec: $b9
    rst $38                                       ; $6ced: $ff
    pop de                                        ; $6cee: $d1
    nop                                           ; $6cef: $00
    ei                                            ; $6cf0: $fb
    db $fd                                        ; $6cf1: $fd
    db $fd                                        ; $6cf2: $fd
    ld [hl], e                                    ; $6cf3: $73
    ei                                            ; $6cf4: $fb
    db $fd                                        ; $6cf5: $fd
    push af                                       ; $6cf6: $f5
    dec de                                        ; $6cf7: $1b
    nop                                           ; $6cf8: $00
    ld sp, hl                                     ; $6cf9: $f9
    ld a, a                                       ; $6cfa: $7f
    call c, $a52b                                 ; $6cfb: $dc $2b $a5
    rst $18                                       ; $6cfe: $df
    ld d, h                                       ; $6cff: $54
    rst $28                                       ; $6d00: $ef
    inc b                                         ; $6d01: $04
    add l                                         ; $6d02: $85
    ld a, a                                       ; $6d03: $7f
    ld d, $ff                                     ; $6d04: $16 $ff
    ld a, [bc]                                    ; $6d06: $0a
    and h                                         ; $6d07: $a4
    ld b, $81                                     ; $6d08: $06 $81
    rst $38                                       ; $6d0a: $ff
    dec d                                         ; $6d0b: $15
    xor b                                         ; $6d0c: $a8
    rst $38                                       ; $6d0d: $ff
    adc [hl]                                      ; $6d0e: $8e
    ld [hl], d                                    ; $6d0f: $72
    ld b, $19                                     ; $6d10: $06 $19
    inc a                                         ; $6d12: $3c
    ld b, $d4                                     ; $6d13: $06 $d4
    inc [hl]                                      ; $6d15: $34
    ld b, $00                                     ; $6d16: $06 $00
    rlca                                          ; $6d18: $07
    rst $38                                       ; $6d19: $ff
    cpl                                           ; $6d1a: $2f
    rlca                                          ; $6d1b: $07
    cp $e1                                        ; $6d1c: $fe $e1
    rst $38                                       ; $6d1e: $ff
    ld hl, sp+$40                                 ; $6d1f: $f8 $40

Jump_0a0_6d21:
    ld a, [hl]                                    ; $6d21: $7e
    ld d, d                                       ; $6d22: $52
    ld b, $57                                     ; $6d23: $06 $57
    xor a                                         ; $6d25: $af
    ld hl, $fedf                                  ; $6d26: $21 $df $fe
    pop bc                                        ; $6d29: $c1
    nop                                           ; $6d2a: $00
    push de                                       ; $6d2b: $d5
    ld a, e                                       ; $6d2c: $7b
    ld sp, hl                                     ; $6d2d: $f9
    rst $18                                       ; $6d2e: $df
    ld a, c                                       ; $6d2f: $79
    rst $28                                       ; $6d30: $ef
    cp b                                          ; $6d31: $b8
    ld a, a                                       ; $6d32: $7f
    ld h, d                                       ; $6d33: $62
    add hl, de                                    ; $6d34: $19
    ld [$0c05], a                                 ; $6d35: $ea $05 $0c
    rrca                                          ; $6d38: $0f
    ld b, $ff                                     ; $6d39: $06 $ff
    sbc b                                         ; $6d3b: $98
    ld l, d                                       ; $6d3c: $6a
    inc b                                         ; $6d3d: $04
    rst $00                                       ; $6d3e: $c7
    add b                                         ; $6d3f: $80
    add $00                                       ; $6d40: $c6 $00
    ld a, $ff                                     ; $6d42: $3e $ff
    add hl, sp                                    ; $6d44: $39
    cp $77                                        ; $6d45: $fe $77
    ld hl, sp+$1f                                 ; $6d47: $f8 $1f
    and c                                         ; $6d49: $a1
    inc e                                         ; $6d4a: $1c
    rlca                                          ; $6d4b: $07
    ldh a, [$3a]                                  ; $6d4c: $f0 $3a
    inc b                                         ; $6d4e: $04
    or h                                          ; $6d4f: $b4
    rst $38                                       ; $6d50: $ff
    ld a, d                                       ; $6d51: $7a
    cp a                                          ; $6d52: $bf
    ld [bc], a                                    ; $6d53: $02
    inc bc                                        ; $6d54: $03
    ld [hl+], a                                   ; $6d55: $22
    nop                                           ; $6d56: $00
    ld [hl], b                                    ; $6d57: $70
    cp h                                          ; $6d58: $bc
    ld b, $b0                                     ; $6d59: $06 $b0
    rst $38                                       ; $6d5b: $ff
    cp a                                          ; $6d5c: $bf
    ld [bc], a                                    ; $6d5d: $02
    nop                                           ; $6d5e: $00
    rst $18                                       ; $6d5f: $df
    nop                                           ; $6d60: $00
    rst $38                                       ; $6d61: $ff
    ldh [$1f], a                                  ; $6d62: $e0 $1f
    sbc c                                         ; $6d64: $99
    ld b, $e8                                     ; $6d65: $06 $e8
    ldh a, [$e0]                                  ; $6d67: $f0 $e0
    nop                                           ; $6d69: $00

jr_0a0_6d6a:
    ldh a, [$c0]                                  ; $6d6a: $f0 $c0
    ldh [$c8], a                                  ; $6d6c: $e0 $c8
    ldh a, [$c3]                                  ; $6d6e: $f0 $c3
    db $fc                                        ; $6d70: $fc
    sbc b                                         ; $6d71: $98
    ld [bc], a                                    ; $6d72: $02
    rst $00                                       ; $6d73: $c7
    ccf                                           ; $6d74: $3f
    add b                                         ; $6d75: $80
    ld e, a                                       ; $6d76: $5f
    jr nz, @+$06                                  ; $6d77: $20 $04

    add sp, $06                                   ; $6d79: $e8 $06
    add hl, hl                                    ; $6d7b: $29
    ld [$13ff], sp                                ; $6d7c: $08 $ff $13
    rst $38                                       ; $6d7f: $ff
    inc [hl]                                      ; $6d80: $34
    ld [c], a                                     ; $6d81: $e2
    ld b, $98                                     ; $6d82: $06 $98
    rst $38                                       ; $6d84: $ff
    ld hl, sp-$58                                 ; $6d85: $f8 $a8
    and $06                                       ; $6d87: $e6 $06
    pop bc                                        ; $6d89: $c1
    ld b, [hl]                                    ; $6d8a: $46
    inc b                                         ; $6d8b: $04
    ld l, c                                       ; $6d8c: $69
    add $06                                       ; $6d8d: $c6 $06
    ld d, e                                       ; $6d8f: $53
    rst $38                                       ; $6d90: $ff
    dec hl                                        ; $6d91: $2b
    add b                                         ; $6d92: $80
    jp z, $3d06                                   ; $6d93: $ca $06 $3d

    cp $79                                        ; $6d96: $fe $79
    db $fc                                        ; $6d98: $fc
    ld [hl], e                                    ; $6d99: $73
    ld hl, sp-$1b                                 ; $6d9a: $f8 $e5
    nop                                           ; $6d9c: $00
    ld a, [c]                                     ; $6d9d: $f2
    reti                                          ; $6d9e: $d9


    and $83                                       ; $6d9f: $e6 $83
    db $fc                                        ; $6da1: $fc
    adc a                                         ; $6da2: $8f
    ldh a, [$bc]                                  ; $6da3: $f0 $bc
    jr z, jr_0a0_6d6a                             ; $6da5: $28 $c3

    jp Jump_000_0480                              ; $6da7: $c3 $80 $04


    and a                                         ; $6daa: $a7
    cp h                                          ; $6dab: $bc
    ld b, $3c                                     ; $6dac: $06 $3c
    rst $38                                       ; $6dae: $ff
    ld a, e                                       ; $6daf: $7b
    ld [bc], a                                    ; $6db0: $02
    rst $38                                       ; $6db1: $ff
    rst $30                                       ; $6db2: $f7
    ei                                            ; $6db3: $fb
    rst $28                                       ; $6db4: $ef
    ldh a, [rTAC]                                 ; $6db5: $f0 $07
    jr nc, jr_0a0_6dbd                            ; $6db7: $30 $04

    rst $28                                       ; $6db9: $ef
    add h                                         ; $6dba: $84
    db $fc                                        ; $6dbb: $fc
    inc b                                         ; $6dbc: $04

jr_0a0_6dbd:
    ld a, e                                       ; $6dbd: $7b
    rst $38                                       ; $6dbe: $ff
    add e                                         ; $6dbf: $83
    rst $38                                       ; $6dc0: $ff
    ld h, b                                       ; $6dc1: $60
    inc c                                         ; $6dc2: $0c
    sbc b                                         ; $6dc3: $98
    rst $20                                       ; $6dc4: $e7
    ld [de], a                                    ; $6dc5: $12
    or b                                          ; $6dc6: $b0
    rst $28                                       ; $6dc7: $ef
    ld h, b                                       ; $6dc8: $60
    and b                                         ; $6dc9: $a0
    ld d, $b5                                     ; $6dca: $16 $b5
    rst $18                                       ; $6dcc: $df
    ret nc                                        ; $6dcd: $d0

    dec c                                         ; $6dce: $0d
    sbc c                                         ; $6dcf: $99
    nop                                           ; $6dd0: $00
    ldh [$30], a                                  ; $6dd1: $e0 $30
    ret nz                                        ; $6dd3: $c0

    jr @-$1e                                      ; $6dd4: $18 $e0

    ld d, $e9                                     ; $6dd6: $16 $e9
    ld sp, $ee10                                  ; $6dd8: $31 $10 $ee
    ld sp, hl                                     ; $6ddb: $f9
    add $c7                                       ; $6ddc: $c6 $c7
    dec b                                         ; $6dde: $05
    rlca                                          ; $6ddf: $07
    ccf                                           ; $6de0: $3f
    ret nz                                        ; $6de1: $c0

    rst $38                                       ; $6de2: $ff
    jr nc, jr_0a0_6de5                            ; $6de3: $30 $00

jr_0a0_6de5:
    rra                                           ; $6de5: $1f

jr_0a0_6de6:
    ld a, $06                                     ; $6de6: $3e $06
    ld b, b                                       ; $6de8: $40
    ld e, $8f                                     ; $6de9: $1e $8f
    ld [hl], b                                    ; $6deb: $70
    di                                            ; $6dec: $f3
    inc c                                         ; $6ded: $0c
    nop                                           ; $6dee: $00
    ld h, c                                       ; $6def: $61
    sbc [hl]                                      ; $6df0: $9e
    ld b, b                                       ; $6df1: $40
    cp a                                          ; $6df2: $bf
    ld h, b                                       ; $6df3: $60

jr_0a0_6df4:
    cp a                                          ; $6df4: $bf
    push af                                       ; $6df5: $f5
    cp a                                          ; $6df6: $bf
    jr z, jr_0a0_6df4                             ; $6df7: $28 $fb

    ccf                                           ; $6df9: $3f
    inc de                                        ; $6dfa: $13
    rlca                                          ; $6dfb: $07
    nop                                           ; $6dfc: $00
    jr nz, @+$11                                  ; $6dfd: $20 $0f

    add d                                         ; $6dff: $82
    ld a, l                                       ; $6e00: $7d
    adc $59                                       ; $6e01: $ce $59
    ld sp, $072b                                  ; $6e03: $31 $2b $07
    ld bc, $0f05                                  ; $6e06: $01 $05 $0f
    jr nz, jr_0a0_6e2a                            ; $6e09: $20 $1f

    ld [bc], a                                    ; $6e0b: $02
    db $fd                                        ; $6e0c: $fd
    ld e, $0f                                     ; $6e0d: $1e $0f
    sub b                                         ; $6e0f: $90
    sbc a                                         ; $6e10: $9f
    nop                                           ; $6e11: $00
    nop                                           ; $6e12: $00
    ld bc, $0002                                  ; $6e13: $01 $02 $00
    ld c, e                                       ; $6e16: $4b
    nop                                           ; $6e17: $00
    sub l                                         ; $6e18: $95
    ld [bc], a                                    ; $6e19: $02
    nop                                           ; $6e1a: $00
    add hl, sp                                    ; $6e1b: $39
    add $83                                       ; $6e1c: $c6 $83

jr_0a0_6e1e:
    ld a, h                                       ; $6e1e: $7c
    rst $08                                       ; $6e1f: $cf
    jr nc, jr_0a0_6e1e                            ; $6e20: $30 $fc

    inc bc                                        ; $6e22: $03
    nop                                           ; $6e23: $00
    jr nz, jr_0a0_6de6                            ; $6e24: $20 $c0

    inc sp                                        ; $6e26: $33
    ret nz                                        ; $6e27: $c0

    inc h                                         ; $6e28: $24
    db $db                                        ; $6e29: $db

jr_0a0_6e2a:
    ld sp, $00ce                                  ; $6e2a: $31 $ce $00
    inc a                                         ; $6e2d: $3c
    ret nz                                        ; $6e2e: $c0

    ld a, b                                       ; $6e2f: $78
    ret nz                                        ; $6e30: $c0

    db $fc                                        ; $6e31: $fc
    add b                                         ; $6e32: $80
    ld sp, hl                                     ; $6e33: $f9
    add [hl]                                      ; $6e34: $86
    db $10                                        ; $6e35: $10
    ld h, a                                       ; $6e36: $67
    rst $38                                       ; $6e37: $ff

jr_0a0_6e38:
    jr @+$38                                      ; $6e38: $18 $36

    rlca                                          ; $6e3a: $07
    ld b, b                                       ; $6e3b: $40
    ld a, a                                       ; $6e3c: $7f
    ret nz                                        ; $6e3d: $c0

    cp a                                          ; $6e3e: $bf
    nop                                           ; $6e3f: $00
    ret nz                                        ; $6e40: $c0

    cp a                                          ; $6e41: $bf
    and b                                         ; $6e42: $a0
    rst $18                                       ; $6e43: $df
    ld e, b                                       ; $6e44: $58
    ld h, a                                       ; $6e45: $67
    db $fc                                        ; $6e46: $fc

jr_0a0_6e47:
    inc bc                                        ; $6e47: $03
    inc c                                         ; $6e48: $0c
    rst $38                                       ; $6e49: $ff
    nop                                           ; $6e4a: $00
    ld sp, hl                                     ; $6e4b: $f9
    ld b, $64                                     ; $6e4c: $06 $64
    ld c, $d0                                     ; $6e4e: $0e $d0
    inc c                                         ; $6e50: $0c
    ret nc                                        ; $6e51: $d0

    ccf                                           ; $6e52: $3f
    nop                                           ; $6e53: $00
    ld h, l                                       ; $6e54: $65
    ld a, [hl-]                                   ; $6e55: $3a
    ld e, b                                       ; $6e56: $58
    rra                                           ; $6e57: $1f
    rst $30                                       ; $6e58: $f7
    add a                                         ; $6e59: $87
    ld [hl], b                                    ; $6e5a: $70
    adc b                                         ; $6e5b: $88
    nop                                           ; $6e5c: $00
    ld [hl], b                                    ; $6e5d: $70
    add h                                         ; $6e5e: $84
    ld e, b                                       ; $6e5f: $58
    and d                                         ; $6e60: $a2
    jr nz, jr_0a0_6e38                            ; $6e61: $20 $d5

    jr jr_0a0_6e47                                ; $6e63: $18 $e2

    nop                                           ; $6e65: $00
    db $eb                                        ; $6e66: $eb
    ccf                                           ; $6e67: $3f
    rst $38                                       ; $6e68: $ff
    ld a, $fe                                     ; $6e69: $3e $fe
    dec e                                         ; $6e6b: $1d
    db $fc                                        ; $6e6c: $fc
    inc bc                                        ; $6e6d: $03

jr_0a0_6e6e:
    ld b, b                                       ; $6e6e: $40
    ld hl, sp-$76                                 ; $6e6f: $f8 $8a
    ld b, $fb                                     ; $6e71: $06 $fb
    rlca                                          ; $6e73: $07
    db $fd                                        ; $6e74: $fd
    inc bc                                        ; $6e75: $03
    ld [hl+], a                                   ; $6e76: $22
    pop de                                        ; $6e77: $d1
    inc c                                         ; $6e78: $0c
    ld de, $7fee                                  ; $6e79: $11 $ee $7f
    ldh [$7b], a                                  ; $6e7c: $e0 $7b
    dec b                                         ; $6e7e: $05
    xor $06                                       ; $6e7f: $ee $06
    ld a, a                                       ; $6e81: $7f
    add b                                         ; $6e82: $80
    nop                                           ; $6e83: $00
    rst $38                                       ; $6e84: $ff
    nop                                           ; $6e85: $00

jr_0a0_6e86:
    cp $00                                        ; $6e86: $fe $00
    inc e                                         ; $6e88: $1c
    ldh [$0a], a                                  ; $6e89: $e0 $0a
    db $f4                                        ; $6e8b: $f4
    nop                                           ; $6e8c: $00
    jr c, jr_0a0_6e86                             ; $6e8d: $38 $f7

    db $ec                                        ; $6e8f: $ec
    di                                            ; $6e90: $f3
    or e                                          ; $6e91: $b3
    ret nz                                        ; $6e92: $c0

    ldh [rP1], a                                  ; $6e93: $e0 $00
    nop                                           ; $6e95: $00
    ld [hl], b                                    ; $6e96: $70
    nop                                           ; $6e97: $00
    inc d                                         ; $6e98: $14
    jp hl                                         ; $6e99: $e9


    jr nz, jr_0a0_6e6e                            ; $6e9a: $20 $d2

    ld c, a                                       ; $6e9c: $4f
    and a                                         ; $6e9d: $a7
    nop                                           ; $6e9e: $00
    ret c                                         ; $6e9f: $d8

    cpl                                           ; $6ea0: $2f
    ldh a, [$8f]                                  ; $6ea1: $f0 $8f
    ld [hl], b                                    ; $6ea3: $70
    adc a                                         ; $6ea4: $8f
    ldh a, [$8f]                                  ; $6ea5: $f0 $8f
    nop                                           ; $6ea7: $00
    ret nc                                        ; $6ea8: $d0

    xor a                                         ; $6ea9: $af
    ld a, [c]                                     ; $6eaa: $f2
    ld bc, $00e1                                  ; $6eab: $01 $e1 $00
    pop hl                                        ; $6eae: $e1
    jr jr_0a0_6ed2                                ; $6eaf: $18 $21

    pop af                                        ; $6eb1: $f1
    ld c, $ba                                     ; $6eb2: $0e $ba
    ld [$0205], sp                                ; $6eb4: $08 $05 $02
    dec sp                                        ; $6eb7: $3b
    call nz, $2710                                ; $6eb8: $c4 $10 $27
    ld de, $67f8                                  ; $6ebb: $11 $f8 $67
    rst $38                                       ; $6ebe: $ff
    db $10                                        ; $6ebf: $10
    rrca                                          ; $6ec0: $0f
    ldh a, [rIE]                                  ; $6ec1: $f0 $ff
    ccf                                           ; $6ec3: $3f
    xor $00                                       ; $6ec4: $ee $00
    jr nz, @+$61                                  ; $6ec6: $20 $5f

    jr nz, @+$12                                  ; $6ec8: $20 $10

    dec a                                         ; $6eca: $3d
    ld a, [hl]                                    ; $6ecb: $7e
    add c                                         ; $6ecc: $81
    adc h                                         ; $6ecd: $8c
    ld [hl], e                                    ; $6ece: $73
    ld b, $04                                     ; $6ecf: $06 $04
    ei                                            ; $6ed1: $fb

jr_0a0_6ed2:
    rst $08                                       ; $6ed2: $cf
    ei                                            ; $6ed3: $fb
    rst $38                                       ; $6ed4: $ff
    ld a, c                                       ; $6ed5: $79
    ldh [rNR32], a                                ; $6ed6: $e0 $1c
    rra                                           ; $6ed8: $1f
    ldh [$80], a                                  ; $6ed9: $e0 $80
    ld h, d                                       ; $6edb: $62
    rrca                                          ; $6edc: $0f
    rlca                                          ; $6edd: $07
    db $fc                                        ; $6ede: $fc
    xor $f8                                       ; $6edf: $ee $f8
    db $fc                                        ; $6ee1: $fc
    ld [hl], b                                    ; $6ee2: $70
    ld hl, sp+$00                                 ; $6ee3: $f8 $00
    nop                                           ; $6ee5: $00
    sbc b                                         ; $6ee6: $98
    ld h, b                                       ; $6ee7: $60
    rst $00                                       ; $6ee8: $c7
    nop                                           ; $6ee9: $00
    ld b, l                                       ; $6eea: $45
    add d                                         ; $6eeb: $82
    xor c                                         ; $6eec: $a9
    ld [$c346], sp                                ; $6eed: $08 $46 $c3
    inc a                                         ; $6ef0: $3c
    ccf                                           ; $6ef1: $3f
    ld h, d                                       ; $6ef2: $62
    rlca                                          ; $6ef3: $07
    rlca                                          ; $6ef4: $07
    nop                                           ; $6ef5: $00
    inc bc                                        ; $6ef6: $03
    ld [$1447], a                                 ; $6ef7: $ea $47 $14
    db $f4                                        ; $6efa: $f4
    ld a, $07                                     ; $6efb: $3e $07
    rlca                                          ; $6efd: $07
    xor d                                         ; $6efe: $aa
    inc bc                                        ; $6eff: $03
    rlca                                          ; $6f00: $07
    xor d                                         ; $6f01: $aa
    add hl, bc                                    ; $6f02: $09
    rlca                                          ; $6f03: $07
    xor d                                         ; $6f04: $aa
    and b                                         ; $6f05: $a0
    inc c                                         ; $6f06: $0c
    db $10                                        ; $6f07: $10

jr_0a0_6f08:
    rst $38                                       ; $6f08: $ff
    ldh [$0c], a                                  ; $6f09: $e0 $0c
    xor a                                         ; $6f0b: $af
    call z, $cebd                                 ; $6f0c: $cc $bd $ce
    xor l                                         ; $6f0f: $ad
    ld b, b                                       ; $6f10: $40
    adc $e0                                       ; $6f11: $ce $e0

Call_0a0_6f13:
    inc l                                         ; $6f13: $2c
    ld e, e                                       ; $6f14: $5b
    rst $30                                       ; $6f15: $f7
    ld a, h                                       ; $6f16: $7c
    rst $38                                       ; $6f17: $ff
    cp a                                          ; $6f18: $bf
    ld b, b                                       ; $6f19: $40
    inc b                                         ; $6f1a: $04
    di                                            ; $6f1b: $f3
    rrca                                          ; $6f1c: $0f
    dec e                                         ; $6f1d: $1d
    cp $e2                                        ; $6f1e: $fe $e2
    ldh [rNR32], a                                ; $6f20: $e0 $1c
    pop bc                                        ; $6f22: $c1
    or a                                          ; $6f23: $b7
    ld [bc], a                                    ; $6f24: $02
    ld h, c                                       ; $6f25: $61
    sbc $31                                       ; $6f26: $de $31
    ccf                                           ; $6f28: $3f
    pop de                                        ; $6f29: $d1
    ld a, [$14e0]                                 ; $6f2a: $fa $e0 $14
    ld d, a                                       ; $6f2d: $57
    nop                                           ; $6f2e: $00
    db $fc                                        ; $6f2f: $fc
    or l                                          ; $6f30: $b5
    sbc $ad                                       ; $6f31: $de $ad
    adc $be                                       ; $6f33: $ce $be
    rst $08                                       ; $6f35: $cf
    xor [hl]                                      ; $6f36: $ae
    jr nz, jr_0a0_6f08                            ; $6f37: $20 $cf

    xor e                                         ; $6f39: $ab

jr_0a0_6f3a:
    db $10                                        ; $6f3a: $10
    dec d                                         ; $6f3b: $15
    xor h                                         ; $6f3c: $ac
    ld [hl], e                                    ; $6f3d: $73
    ei                                            ; $6f3e: $fb
    scf                                           ; $6f3f: $37
    ld sp, hl                                     ; $6f40: $f9
    inc b                                         ; $6f41: $04
    ld a, [hl]                                    ; $6f42: $7e
    adc $31                                       ; $6f43: $ce $31
    di                                            ; $6f45: $f3
    rrca                                          ; $6f46: $0f
    db $10                                        ; $6f47: $10
    dec e                                         ; $6f48: $1d
    ld sp, hl                                     ; $6f49: $f9
    rst $38                                       ; $6f4a: $ff
    nop                                           ; $6f4b: $00
    halt                                          ; $6f4c: $76
    adc l                                         ; $6f4d: $8d

jr_0a0_6f4e:
    sbc a                                         ; $6f4e: $9f
    ld h, l                                       ; $6f4f: $65
    ld l, [hl]                                    ; $6f50: $6e
    push af                                       ; $6f51: $f5
    cp a                                          ; $6f52: $bf
    ld sp, hl                                     ; $6f53: $f9
    add b                                         ; $6f54: $80
    db $10                                        ; $6f55: $10
    dec e                                         ; $6f56: $1d
    ld d, a                                       ; $6f57: $57
    cp $b6                                        ; $6f58: $fe $b6
    rst $18                                       ; $6f5a: $df
    xor [hl]                                      ; $6f5b: $ae
    rst $08                                       ; $6f5c: $cf
    cp l                                          ; $6f5d: $bd
    ld [bc], a                                    ; $6f5e: $02
    rst $08                                       ; $6f5f: $cf
    xor a                                         ; $6f60: $af
    call $cfac                                    ; $6f61: $cd $ac $cf
    sub h                                         ; $6f64: $94
    ld b, b                                       ; $6f65: $40
    dec b                                         ; $6f66: $05
    xor d                                         ; $6f67: $aa
    nop                                           ; $6f68: $00
    ld [hl], a                                    ; $6f69: $77
    db $db                                        ; $6f6a: $db
    inc a                                         ; $6f6b: $3c
    or $19                                        ; $6f6c: $f6 $19
    ld l, l                                       ; $6f6e: $6d
    sub e                                         ; $6f6f: $93
    ld a, [hl-]                                   ; $6f70: $3a
    jr nz, jr_0a0_6f3a                            ; $6f71: $20 $c7

    adc l                                         ; $6f73: $8d
    ld b, b                                       ; $6f74: $40
    dec d                                         ; $6f75: $15
    push bc                                       ; $6f76: $c5
    ccf                                           ; $6f77: $3f
    cp d                                          ; $6f78: $ba
    ld a, c                                       ; $6f79: $79
    rst $10                                       ; $6f7a: $d7
    jp nz, Jump_0a0_4540                          ; $6f7b: $c2 $40 $45

    or b                                          ; $6f7e: $b0
    ld c, l                                       ; $6f7f: $4d
    ld a, [de]                                    ; $6f80: $1a
    rla                                           ; $6f81: $17
    dec e                                         ; $6f82: $1d
    ld d, $a0                                     ; $6f83: $16 $a0
    ld c, l                                       ; $6f85: $4d
    ld e, b                                       ; $6f86: $58
    db $10                                        ; $6f87: $10
    ld l, b                                       ; $6f88: $68
    db $fc                                        ; $6f89: $fc
    add h                                         ; $6f8a: $84
    nop                                           ; $6f8b: $00
    ld a, $ae                                     ; $6f8c: $3e $ae
    rst $18                                       ; $6f8e: $df
    push hl                                       ; $6f8f: $e5
    ld a, [hl]                                    ; $6f90: $7e
    jr nz, jr_0a0_6f4e                            ; $6f91: $20 $bb

    ld b, h                                       ; $6f93: $44
    jr nz, jr_0a0_6fdc                            ; $6f94: $20 $46

jr_0a0_6f96:
    add b                                         ; $6f96: $80
    add b                                         ; $6f97: $80
    ld b, b                                       ; $6f98: $40
    ret nz                                        ; $6f99: $c0

    jr nz, jr_0a0_6f9c                            ; $6f9a: $20 $00

jr_0a0_6f9c:
    ld a, d                                       ; $6f9c: $7a
    add l                                         ; $6f9d: $85
    ld h, e                                       ; $6f9e: $63
    sbc h                                         ; $6f9f: $9c
    xor l                                         ; $6fa0: $ad
    sbc $9f                                       ; $6fa1: $de $9f
    xor $10                                       ; $6fa3: $ee $10
    add sp, -$09                                  ; $6fa5: $e8 $f7
    ld e, a                                       ; $6fa7: $5f
    ldh [$15], a                                  ; $6fa8: $e0 $15
    and b                                         ; $6faa: $a0

jr_0a0_6fab:
    ldh a, [$c0]                                  ; $6fab: $f0 $c0
    jr c, jr_0a0_6faf                             ; $6fad: $38 $00

jr_0a0_6faf:
    ldh a, [$38]                                  ; $6faf: $f0 $38
    jr jr_0a0_6fab                                ; $6fb1: $18 $f8

    ret nc                                        ; $6fb3: $d0

    jr nc, jr_0a0_6f96                            ; $6fb4: $30 $e0

    ldh [$c0], a                                  ; $6fb6: $e0 $c0
    ld c, h                                       ; $6fb8: $4c
    ld b, [hl]                                    ; $6fb9: $46
    ld b, b                                       ; $6fba: $40
    ld d, $b3                                     ; $6fbb: $16 $b3
    ld a, a                                       ; $6fbd: $7f
    xor [hl]                                      ; $6fbe: $ae
    ld d, c                                       ; $6fbf: $51
    sbc $e1                                       ; $6fc0: $de $e1
    nop                                           ; $6fc2: $00
    ld e, b                                       ; $6fc3: $58
    rst $20                                       ; $6fc4: $e7
    xor a                                         ; $6fc5: $af
    di                                            ; $6fc6: $f3
    or l                                          ; $6fc7: $b5
    ei                                            ; $6fc8: $fb

jr_0a0_6fc9:
    jp c, $80fd                                   ; $6fc9: $da $fd $80

    db $10                                        ; $6fcc: $10
    ld e, $a0                                     ; $6fcd: $1e $a0
    ld [hl], b                                    ; $6fcf: $70
    ldh a, [$08]                                  ; $6fd0: $f0 $08
    ld a, b                                       ; $6fd2: $78
    adc b                                         ; $6fd3: $88
    ret z                                         ; $6fd4: $c8

    db $10                                        ; $6fd5: $10
    cp b                                          ; $6fd6: $b8
    jr nc, jr_0a0_6fc9                            ; $6fd7: $30 $f0

jr_0a0_6fd9:
    db $10                                        ; $6fd9: $10
    ld e, $5d                                     ; $6fda: $1e $5d

jr_0a0_6fdc:
    or $b7                                        ; $6fdc: $f6 $b7
    call c, $b704                                 ; $6fde: $dc $04 $b7
    call c, $cdba                                 ; $6fe1: $dc $ba $cd
    xor c                                         ; $6fe4: $a9
    ld [bc], a                                    ; $6fe5: $02
    ld b, $9e                                     ; $6fe6: $06 $9e
    rst $08                                       ; $6fe8: $cf
    nop                                           ; $6fe9: $00
    or l                                          ; $6fea: $b5
    rst $00                                       ; $6feb: $c7
    db $fc                                        ; $6fec: $fc
    ld h, e                                       ; $6fed: $63
    cpl                                           ; $6fee: $2f
    ld a, [c]                                     ; $6fef: $f2
    db $db                                        ; $6ff0: $db
    ld [hl], a                                    ; $6ff1: $77
    ld bc, $ffe7                                  ; $6ff2: $01 $e7 $ff
    ld a, $c1                                     ; $6ff5: $3e $c1
    db $fd                                        ; $6ff7: $fd
    ld [bc], a                                    ; $6ff8: $02

jr_0a0_6ff9:
    ld c, $7c                                     ; $6ff9: $0e $7c
    dec b                                         ; $6ffb: $05
    nop                                           ; $6ffc: $00
    cp e                                          ; $6ffd: $bb
    call z, $ccbb                                 ; $6ffe: $cc $bb $cc
    sbc b                                         ; $7001: $98
    rst $28                                       ; $7002: $ef
    and a                                         ; $7003: $a7
    rst $18                                       ; $7004: $df
    sbc [hl]                                      ; $7005: $9e
    ldh a, [$2d]                                  ; $7006: $f0 $2d
    add hl, hl                                    ; $7008: $29
    rst $10                                       ; $7009: $d7
    ldh a, [$5d]                                  ; $700a: $f0 $5d
    ld [hl], h                                    ; $700c: $74

jr_0a0_700d:
    ld d, b                                       ; $700d: $50
    jp nz, $8206                                  ; $700e: $c2 $06 $82

    ld e, b                                       ; $7011: $58
    and $64                                       ; $7012: $e6 $64
    ld a, a                                       ; $7014: $7f
    sub h                                         ; $7015: $94
    ld d, b                                       ; $7016: $50
    jp nz, $1606                                  ; $7017: $c2 $06 $16

    cpl                                           ; $701a: $2f
    or d                                          ; $701b: $b2
    ld e, [hl]                                    ; $701c: $5e
    db $dd                                        ; $701d: $dd
    ld [hl+], a                                   ; $701e: $22
    add h                                         ; $701f: $84
    or d                                          ; $7020: $b2
    ld c, [hl]                                    ; $7021: $4e
    ldh [rNR34], a                                ; $7022: $e0 $1e
    ret nz                                        ; $7024: $c0

    jr nz, jr_0a0_6fd9                            ; $7025: $20 $b2

    ld e, [hl]                                    ; $7027: $5e
    ld d, b                                       ; $7028: $50
    ld de, $0b56                                  ; $7029: $11 $56 $0b
    ld d, d                                       ; $702c: $52
    rst $38                                       ; $702d: $ff
    ld bc, $8070                                  ; $702e: $01 $70 $80
    ld [bc], a                                    ; $7031: $02
    nop                                           ; $7032: $00
    ret nz                                        ; $7033: $c0

    cp a                                          ; $7034: $bf
    inc b                                         ; $7035: $04
    jr jr_0a0_6ff9                                ; $7036: $18 $c1

    jr nz, jr_0a0_6ff9                            ; $7038: $20 $bf

    add e                                         ; $703a: $83
    inc b                                         ; $703b: $04

Jump_0a0_703c:
    ld h, b                                       ; $703c: $60
    rst $38                                       ; $703d: $ff
    rst $38                                       ; $703e: $ff
    nop                                           ; $703f: $00

jr_0a0_7040:
    rst $38                                       ; $7040: $ff
    xor d                                         ; $7041: $aa
    jr nc, jr_0a0_7099                            ; $7042: $30 $55

    nop                                           ; $7044: $00
    ld b, $00                                     ; $7045: $06 $00
    inc b                                         ; $7047: $04
    ld [$ffff], sp                                ; $7048: $08 $ff $ff
    inc d                                         ; $704b: $14
    rst $38                                       ; $704c: $ff
    nop                                           ; $704d: $00
    ld a, [hl+]                                   ; $704e: $2a
    rst $10                                       ; $704f: $d7
    call nc, $e92b                                ; $7050: $d4 $2b $e9
    ld d, $f2                                     ; $7053: $16 $f2
    dec c                                         ; $7055: $0d
    nop                                           ; $7056: $00
    dec [hl]                                      ; $7057: $35
    jp z, $1ee1                                   ; $7058: $ca $e1 $1e

    sbc a                                         ; $705b: $9f
    ld h, c                                       ; $705c: $61
    adc b                                         ; $705d: $88
    rst $38                                       ; $705e: $ff
    nop                                           ; $705f: $00
    ld h, l                                       ; $7060: $65
    sbc [hl]                                      ; $7061: $9e
    jp nc, $b52d                                  ; $7062: $d2 $2d $b5

    ld c, d                                       ; $7065: $4a
    rst $28                                       ; $7066: $ef
    stop                                          ; $7067: $10 $00
    sbc $21                                       ; $7069: $de $21
    db $fd                                        ; $706b: $fd
    ld [bc], a                                    ; $706c: $02

jr_0a0_706d:
    db $eb                                        ; $706d: $eb
    rla                                           ; $706e: $17
    ld d, h                                       ; $706f: $54
    rst $38                                       ; $7070: $ff
    nop                                           ; $7071: $00
    sbc c                                         ; $7072: $99
    ld h, [hl]                                    ; $7073: $66
    ld [$dd15], a                                 ; $7074: $ea $15 $dd
    ld [hl+], a                                   ; $7077: $22
    db $eb                                        ; $7078: $eb
    inc d                                         ; $7079: $14
    nop                                           ; $707a: $00

Call_0a0_707b:
    rst $18                                       ; $707b: $df
    jr nz, jr_0a0_706d                            ; $707c: $20 $ef

    db $10                                        ; $707e: $10
    ld d, a                                       ; $707f: $57
    rst $38                                       ; $7080: $ff
    ld d, d                                       ; $7081: $52
    rst $38                                       ; $7082: $ff
    nop                                           ; $7083: $00
    inc h                                         ; $7084: $24
    rst $18                                       ; $7085: $df
    ld d, d                                       ; $7086: $52
    xor l                                         ; $7087: $ad
    or l                                          ; $7088: $b5
    ld c, d                                       ; $7089: $4a
    rst $20                                       ; $708a: $e7
    jr jr_0a0_700d                                ; $708b: $18 $80

    ld [hl+], a                                   ; $708d: $22
    ld [$ff6b], sp                                ; $708e: $08 $6b $ff
    add hl, hl                                    ; $7091: $29
    rst $38                                       ; $7092: $ff

jr_0a0_7093:
    ld d, h                                       ; $7093: $54
    xor a                                         ; $7094: $af
    xor c                                         ; $7095: $a9
    nop                                           ; $7096: $00
    ld d, [hl]                                    ; $7097: $56
    db $d3                                        ; $7098: $d3

jr_0a0_7099:
    inc l                                         ; $7099: $2c
    push hl                                       ; $709a: $e5
    ld a, [de]                                    ; $709b: $1a
    ld l, e                                       ; $709c: $6b
    sub h                                         ; $709d: $94
    cp $09                                        ; $709e: $fe $09
    ld bc, $ff96                                  ; $70a0: $01 $96 $ff
    ld [$5040], sp                                ; $70a3: $08 $40 $50
    rst $18                                       ; $70a6: $df
    ld hl, sp+$40                                 ; $70a7: $f8 $40
    ld e, b                                       ; $70a9: $58
    jr nz, @+$01                                  ; $70aa: $20 $ff

    nop                                           ; $70ac: $00
    ld b, b                                       ; $70ad: $40
    ld [$af50], sp                                ; $70ae: $08 $50 $af
    xor a                                         ; $70b1: $af
    ld d, b                                       ; $70b2: $50
    ret c                                         ; $70b3: $d8

    ld bc, $d427                                  ; $70b4: $01 $27 $d4
    jr z, @-$27                                   ; $70b7: $28 $d7

    jr z, jr_0a0_7093                             ; $70b9: $28 $d8

    cpl                                           ; $70bb: $2f
    ld b, b                                       ; $70bc: $40
    jr jr_0a0_7040                                ; $70bd: $18 $81

    sub h                                         ; $70bf: $94
    nop                                           ; $70c0: $00
    rst $38                                       ; $70c1: $ff
    ld [$ef00], sp                                ; $70c2: $08 $00 $ef
    db $10                                        ; $70c5: $10
    ld [$2040], sp                                ; $70c6: $08 $40 $20
    add c                                         ; $70c9: $81
    db $10                                        ; $70ca: $10
    ld [$0001], sp                                ; $70cb: $08 $01 $00
    db $fd                                        ; $70ce: $fd
    ld [bc], a                                    ; $70cf: $02
    ld bc, $80ff                                  ; $70d0: $01 $ff $80
    jr @-$5e                                      ; $70d3: $18 $a0

    jr nz, jr_0a0_70df                            ; $70d5: $20 $08

    nop                                           ; $70d7: $00
    or l                                          ; $70d8: $b5
    nop                                           ; $70d9: $00
    nop                                           ; $70da: $00
    rst $38                                       ; $70db: $ff
    or d                                          ; $70dc: $b2
    ld c, l                                       ; $70dd: $4d
    xor h                                         ; $70de: $ac

jr_0a0_70df:
    nop                                           ; $70df: $00
    ld d, e                                       ; $70e0: $53
    adc d                                         ; $70e1: $8a
    ld h, a                                       ; $70e2: $67

jr_0a0_70e3:
    adc d                                         ; $70e3: $8a
    ld h, a                                       ; $70e4: $67
    sla a                                         ; $70e5: $cb $27
    sbc $00                                       ; $70e7: $de $00
    daa                                           ; $70e9: $27
    jp nz, $ca2f                                  ; $70ea: $c2 $2f $ca

    daa                                           ; $70ed: $27
    ld sp, hl                                     ; $70ee: $f9
    add [hl]                                      ; $70ef: $86
    db $fc                                        ; $70f0: $fc
    nop                                           ; $70f1: $00
    add b                                         ; $70f2: $80
    ld hl, sp-$7c                                 ; $70f3: $f8 $84
    db $fd                                        ; $70f5: $fd
    add b                                         ; $70f6: $80
    ld a, b                                       ; $70f7: $78
    add h                                         ; $70f8: $84
    ld a, h                                       ; $70f9: $7c
    add b                                         ; $70fa: $80
    inc b                                         ; $70fb: $04
    nop                                           ; $70fc: $00
    ld a, c                                       ; $70fd: $79
    add h                                         ; $70fe: $84
    ld c, e                                       ; $70ff: $4b
    or h                                          ; $7100: $b4
    nop                                           ; $7101: $00
    nop                                           ; $7102: $00
    nop                                           ; $7103: $00
    ld [$ff01], sp                                ; $7104: $08 $01 $ff
    nop                                           ; $7107: $00
    ld [hl+], a                                   ; $7108: $22
    ld [bc], a                                    ; $7109: $02
    db $10                                        ; $710a: $10
    rst $38                                       ; $710b: $ff
    nop                                           ; $710c: $00
    inc b                                         ; $710d: $04
    ld h, h                                       ; $710e: $64
    ei                                            ; $710f: $fb
    stop                                          ; $7110: $10 $00
    push af                                       ; $7112: $f5
    nop                                           ; $7113: $00
    ld [hl+], a                                   ; $7114: $22
    ld b, h                                       ; $7115: $44
    db $10                                        ; $7116: $10
    jr jr_0a0_70e3                                ; $7117: $18 $ca

    daa                                           ; $7119: $27
    db $ec                                        ; $711a: $ec
    ld [bc], a                                    ; $711b: $02
    jr z, @+$42                                   ; $711c: $28 $40

    jr @+$3a                                      ; $711e: $18 $38

    jr jr_0a0_719f                                ; $7120: $18 $7d

    ld b, b                                       ; $7122: $40
    nop                                           ; $7123: $00
    ld b, d                                       ; $7124: $42
    ld [$8479], sp                                ; $7125: $08 $79 $84
    and $28                                       ; $7128: $e6 $28
    jr z, jr_0a0_715c                             ; $712a: $28 $30

    ld a, b                                       ; $712c: $78
    ld a, [hl-]                                   ; $712d: $3a
    ld [$678b], sp                                ; $712e: $08 $8b $67
    jr z, jr_0a0_713b                             ; $7131: $28 $08

    jr nc, jr_0a0_714d                            ; $7133: $30 $18

    ld [hl], b                                    ; $7135: $70
    inc b                                         ; $7136: $04
    adc h                                         ; $7137: $8c
    ld l, b                                       ; $7138: $68
    sub h                                         ; $7139: $94
    ld a, b                                       ; $713a: $78

jr_0a0_713b:
    add a                                         ; $713b: $87
    jr nc, @+$5a                                  ; $713c: $30 $58

    nop                                           ; $713e: $00
    rst $38                                       ; $713f: $ff
    nop                                           ; $7140: $00
    ld c, d                                       ; $7141: $4a
    and a                                         ; $7142: $a7
    jp z, Jump_0a0_6627                           ; $7143: $ca $27 $66

    sbc a                                         ; $7146: $9f
    inc l                                         ; $7147: $2c
    rst $18                                       ; $7148: $df
    nop                                           ; $7149: $00
    ld hl, $5eff                                  ; $714a: $21 $ff $5e

jr_0a0_714d:
    rst $38                                       ; $714d: $ff
    add hl, sp                                    ; $714e: $39
    rst $38                                       ; $714f: $ff
    or $ff                                        ; $7150: $f6 $ff
    nop                                           ; $7152: $00
    xor e                                         ; $7153: $ab
    call nc, $b1ce                                ; $7154: $d4 $ce $b1
    call $aab2                                    ; $7157: $cd $b2 $aa
    push af                                       ; $715a: $f5
    inc d                                         ; $715b: $14

jr_0a0_715c:
    dec b                                         ; $715c: $05
    ld a, [$3c20]                                 ; $715d: $fa $20 $3c
    ld bc, $7faf                                  ; $7160: $01 $af $7f
    ld bc, $14eb                                  ; $7163: $01 $eb $14
    nop                                           ; $7166: $00
    rst $10                                       ; $7167: $d7
    jr z, @-$74                                   ; $7168: $28 $8a

    ld [hl], l                                    ; $716a: $75
    inc d                                         ; $716b: $14
    db $eb                                        ; $716c: $eb
    ld b, d                                       ; $716d: $42
    rst $38                                       ; $716e: $ff
    nop                                           ; $716f: $00
    sub h                                         ; $7170: $94
    rst $38                                       ; $7171: $ff
    ld l, d                                       ; $7172: $6a
    rst $38                                       ; $7173: $ff
    ld e, l                                       ; $7174: $5d
    and d                                         ; $7175: $a2
    or [hl]                                       ; $7176: $b6
    ld c, c                                       ; $7177: $49
    nop                                           ; $7178: $00
    ld l, c                                       ; $7179: $69
    sub [hl]                                      ; $717a: $96
    or d                                          ; $717b: $b2
    ld c, l                                       ; $717c: $4d
    ld c, c                                       ; $717d: $49
    cp [hl]                                       ; $717e: $be
    ld d, b                                       ; $717f: $50
    rst $38                                       ; $7180: $ff
    ld [bc], a                                    ; $7181: $02
    and l                                         ; $7182: $a5
    rst $38                                       ; $7183: $ff
    jp c, $91ff                                   ; $7184: $da $ff $91

    ld l, [hl]                                    ; $7187: $6e
    ret nz                                        ; $7188: $c0

    nop                                           ; $7189: $00
    ret nz                                        ; $718a: $c0

    add b                                         ; $718b: $80
    or b                                          ; $718c: $b0
    jr c, jr_0a0_71d6                             ; $718d: $38 $47

    cp b                                          ; $718f: $b8
    rla                                           ; $7190: $17
    ld [$0817], sp                                ; $7191: $08 $17 $08
    rst $10                                       ; $7194: $d7
    jr jr_0a0_719f                                ; $7195: $18 $08

    rla                                           ; $7197: $17
    ld c, b                                       ; $7198: $48
    ld [$b918], sp                                ; $7199: $08 $18 $b9
    ld hl, $fc00                                  ; $719c: $21 $00 $fc

jr_0a0_719f:
    inc bc                                        ; $719f: $03
    nop                                           ; $71a0: $00
    ld a, [$f504]                                 ; $71a1: $fa $04 $f5
    ld [$10ef], sp                                ; $71a4: $08 $ef $10
    rst $30                                       ; $71a7: $f7
    rra                                           ; $71a8: $1f
    nop                                           ; $71a9: $00
    rst $38                                       ; $71aa: $ff
    rrca                                          ; $71ab: $0f
    rst $38                                       ; $71ac: $ff
    nop                                           ; $71ad: $00
    ld hl, sp+$07                                 ; $71ae: $f8 $07
    inc [hl]                                      ; $71b0: $34
    ret z                                         ; $71b1: $c8

    inc bc                                        ; $71b2: $03
    ld c, a                                       ; $71b3: $4f
    jr nc, @-$4f                                  ; $71b4: $30 $af

    db $10                                        ; $71b6: $10
    ldh [$1f], a                                  ; $71b7: $e0 $1f
    jr z, jr_0a0_71e3                             ; $71b9: $28 $28

    jr nc, jr_0a0_71e5                            ; $71bb: $30 $28

    add b                                         ; $71bd: $80
    ld [hl+], a                                   ; $71be: $22
    nop                                           ; $71bf: $00
    ld [$1ce3], sp                                ; $71c0: $08 $e3 $1c
    ret c                                         ; $71c3: $d8

    daa                                           ; $71c4: $27
    xor e                                         ; $71c5: $ab
    ld b, h                                       ; $71c6: $44
    nop                                           ; $71c7: $00
    cp e                                          ; $71c8: $bb
    ld b, h                                       ; $71c9: $44
    rst $00                                       ; $71ca: $c7
    jr c, @+$01                                   ; $71cb: $38 $ff

jr_0a0_71cd:
    nop                                           ; $71cd: $00
    ld [c], a                                     ; $71ce: $e2
    ld de, $ec00                                  ; $71cf: $11 $00 $ec
    db $10                                        ; $71d2: $10
    rst $18                                       ; $71d3: $df
    jr nz, jr_0a0_7215                            ; $71d4: $20 $3f

jr_0a0_71d6:
    ret nz                                        ; $71d6: $c0

    cp a                                          ; $71d7: $bf
    ld b, b                                       ; $71d8: $40
    inc bc                                        ; $71d9: $03
    rst $08                                       ; $71da: $cf
    jr nc, jr_0a0_71cd                            ; $71db: $30 $f0

    rrca                                          ; $71dd: $0f
    swap h                                        ; $71de: $cb $34
    jr nc, jr_0a0_7212                            ; $71e0: $30 $30

    ld [bc], a                                    ; $71e2: $02

jr_0a0_71e3:
    db $10                                        ; $71e3: $10
    inc [hl]                                      ; $71e4: $34

jr_0a0_71e5:
    dec b                                         ; $71e5: $05
    ld a, [$2860]                                 ; $71e6: $fa $60 $28
    ld hl, $dd1a                                  ; $71e9: $21 $1a $dd
    ld b, e                                       ; $71ec: $43
    ld bc, $e01f                                  ; $71ed: $01 $1f $e0
    nop                                           ; $71f0: $00
    ccf                                           ; $71f1: $3f
    ret nz                                        ; $71f2: $c0

    ld e, a                                       ; $71f3: $5f
    and b                                         ; $71f4: $a0
    ld l, $d1                                     ; $71f5: $2e $d1
    ld e, a                                       ; $71f7: $5f
    and b                                         ; $71f8: $a0
    nop                                           ; $71f9: $00
    ld a, l                                       ; $71fa: $7d
    add d                                         ; $71fb: $82
    ld a, [hl]                                    ; $71fc: $7e
    add c                                         ; $71fd: $81
    ld e, l                                       ; $71fe: $5d
    and d                                         ; $71ff: $a2
    ld sp, hl                                     ; $7200: $f9
    ld b, $00                                     ; $7201: $06 $00
    ld d, b                                       ; $7203: $50
    xor a                                         ; $7204: $af
    ld [hl+], a                                   ; $7205: $22
    db $dd                                        ; $7206: $dd
    ld d, h                                       ; $7207: $54
    cp e                                          ; $7208: $bb
    add hl, hl                                    ; $7209: $29
    rst $38                                       ; $720a: $ff
    nop                                           ; $720b: $00
    ld [hl], d                                    ; $720c: $72
    rst $38                                       ; $720d: $ff
    db $ed                                        ; $720e: $ed
    rst $38                                       ; $720f: $ff
    xor e                                         ; $7210: $ab
    ld d, h                                       ; $7211: $54

jr_0a0_7212:
    ld c, [hl]                                    ; $7212: $4e
    or c                                          ; $7213: $b1
    ld [bc], a                                    ; $7214: $02

jr_0a0_7215:
    call $2a32                                    ; $7215: $cd $32 $2a
    push af                                       ; $7218: $f5
    add l                                         ; $7219: $85
    ld a, d                                       ; $721a: $7a
    ldh [rNR23], a                                ; $721b: $e0 $18
    ld a, h                                       ; $721d: $7c
    inc b                                         ; $721e: $04
    add e                                         ; $721f: $83
    ld a, [hl]                                    ; $7220: $7e
    add c                                         ; $7221: $81
    ld a, a                                       ; $7222: $7f
    add b                                         ; $7223: $80
    ld [bc], a                                    ; $7224: $02
    jr jr_0a0_7227                                ; $7225: $18 $00

jr_0a0_7227:
    add b                                         ; $7227: $80
    nop                                           ; $7228: $00
    ld d, l                                       ; $7229: $55
    xor d                                         ; $722a: $aa
    rst $38                                       ; $722b: $ff
    rst $38                                       ; $722c: $ff
    xor d                                         ; $722d: $aa
    push de                                       ; $722e: $d5
    rst $38                                       ; $722f: $ff
    nop                                           ; $7230: $00
    nop                                           ; $7231: $00
    ld a, a                                       ; $7232: $7f
    add b                                         ; $7233: $80
    cp a                                          ; $7234: $bf
    ld b, b                                       ; $7235: $40
    cp a                                          ; $7236: $bf
    ld b, b                                       ; $7237: $40
    ld a, a                                       ; $7238: $7f
    add b                                         ; $7239: $80
    sbc h                                         ; $723a: $9c
    ld [hl], e                                    ; $723b: $73
    ld a, [bc]                                    ; $723c: $0a
    xor d                                         ; $723d: $aa
    ld d, l                                       ; $723e: $55
    ld h, h                                       ; $723f: $64
    ld c, b                                       ; $7240: $48
    ld a, [de]                                    ; $7241: $1a
    jr jr_0a0_7262                                ; $7242: $18 $1e

    jr @-$01                                      ; $7244: $18 $fd

    ld [bc], a                                    ; $7246: $02
    ld [hl], c                                    ; $7247: $71
    ld a, [hl+]                                   ; $7248: $2a
    inc l                                         ; $7249: $2c
    nop                                           ; $724a: $00
    ld [c], a                                     ; $724b: $e2
    jr z, jr_0a0_728c                             ; $724c: $28 $3e

    ld [bc], a                                    ; $724e: $02
    jr nz, @-$4d                                  ; $724f: $20 $b1

    ld c, [hl]                                    ; $7251: $4e
    sub b                                         ; $7252: $90
    jr c, jr_0a0_7257                             ; $7253: $38 $02

    ei                                            ; $7255: $fb
    inc b                                         ; $7256: $04

jr_0a0_7257:
    rst $28                                       ; $7257: $ef
    db $10                                        ; $7258: $10
    ld d, h                                       ; $7259: $54
    xor e                                         ; $725a: $ab
    and b                                         ; $725b: $a0
    jr c, @-$0f                                   ; $725c: $38 $ef

    nop                                           ; $725e: $00
    db $10                                        ; $725f: $10
    db $fd                                        ; $7260: $fd
    ld [bc], a                                    ; $7261: $02

jr_0a0_7262:
    ld d, d                                       ; $7262: $52
    xor l                                         ; $7263: $ad
    ld bc, $feff                                  ; $7264: $01 $ff $fe
    db $10                                        ; $7267: $10
    ld bc, $01ff                                  ; $7268: $01 $ff $01
    inc b                                         ; $726b: $04
    jr jr_0a0_72ed                                ; $726c: $18 $7f

    add c                                         ; $726e: $81
    cp [hl]                                       ; $726f: $be
    ld b, c                                       ; $7270: $41
    jr nz, jr_0a0_7273                            ; $7271: $20 $00

jr_0a0_7273:
    rst $38                                       ; $7273: $ff
    ld a, [hl]                                    ; $7274: $7e
    jr z, jr_0a0_72ee                             ; $7275: $28 $77

    add b                                         ; $7277: $80
    ld a, e                                       ; $7278: $7b
    add b                                         ; $7279: $80
    ld a, l                                       ; $727a: $7d
    ld b, d                                       ; $727b: $42
    add b                                         ; $727c: $80
    jr nz, @+$4a                                  ; $727d: $20 $48

    rst $38                                       ; $727f: $ff
    ld bc, $017e                                  ; $7280: $01 $7e $01
    jr nz, jr_0a0_72bd                            ; $7283: $20 $38

    ld a, a                                       ; $7285: $7f
    nop                                           ; $7286: $00
    add b                                         ; $7287: $80
    ld l, a                                       ; $7288: $6f
    sub b                                         ; $7289: $90
    ld [hl], l                                    ; $728a: $75
    adc d                                         ; $728b: $8a

jr_0a0_728c:
    ld a, a                                       ; $728c: $7f
    add c                                         ; $728d: $81
    xor [hl]                                      ; $728e: $ae
    ld b, b                                       ; $728f: $40
    ld d, c                                       ; $7290: $51
    jr c, jr_0a0_729b                             ; $7291: $38 $08

    ld a, a                                       ; $7293: $7f
    add c                                         ; $7294: $81
    cp $01                                        ; $7295: $fe $01
    inc bc                                        ; $7297: $03
    ld bc, $5414                                  ; $7298: $01 $14 $54

jr_0a0_729b:
    xor e                                         ; $729b: $ab
    ld a, d                                       ; $729c: $7a
    inc [hl]                                      ; $729d: $34
    nop                                           ; $729e: $00
    ld a, [hl]                                    ; $729f: $7e
    ret nz                                        ; $72a0: $c0

    ld b, b                                       ; $72a1: $40
    cp a                                          ; $72a2: $bf
    ld bc, $1e06                                  ; $72a3: $01 $06 $1e
    ld bc, $01af                                  ; $72a6: $01 $af $01
    sub $64                                       ; $72a9: $d6 $64
    db $10                                        ; $72ab: $10
    jr nz, jr_0a0_72be                            ; $72ac: $20 $10

    add l                                         ; $72ae: $85
    add hl, bc                                    ; $72af: $09
    ld l, l                                       ; $72b0: $6d
    sub d                                         ; $72b1: $92
    ld a, b                                       ; $72b2: $78
    add a                                         ; $72b3: $87
    ld a, [bc]                                    ; $72b4: $0a
    add hl, bc                                    ; $72b5: $09
    ld a, l                                       ; $72b6: $7d
    add d                                         ; $72b7: $82
    ldh [$08], a                                  ; $72b8: $e0 $08
    nop                                           ; $72ba: $00
    db $d3                                        ; $72bb: $d3
    rst $28                                       ; $72bc: $ef

jr_0a0_72bd:
    xor h                                         ; $72bd: $ac

jr_0a0_72be:
    ld d, e                                       ; $72be: $53
    ld e, d                                       ; $72bf: $5a
    and l                                         ; $72c0: $a5
    xor a                                         ; $72c1: $af
    nop                                           ; $72c2: $00
    nop                                           ; $72c3: $00
    cp d                                          ; $72c4: $ba
    ld b, l                                       ; $72c5: $45
    ld bc, $48fe                                  ; $72c6: $01 $fe $48
    rlca                                          ; $72c9: $07
    rlca                                          ; $72ca: $07
    inc bc                                        ; $72cb: $03
    nop                                           ; $72cc: $00
    sub a                                         ; $72cd: $97
    rst $28                                       ; $72ce: $ef
    ld l, [hl]                                    ; $72cf: $6e
    sub c                                         ; $72d0: $91
    db $db                                        ; $72d1: $db
    jr nz, jr_0a0_733e                            ; $72d2: $20 $6a

    inc b                                         ; $72d4: $04
    nop                                           ; $72d5: $00
    or a                                          ; $72d6: $b7
    ld [$35ca], sp                                ; $72d7: $08 $ca $35
    xor e                                         ; $72da: $ab
    ld a, a                                       ; $72db: $7f
    db $dd                                        ; $72dc: $dd
    ld [c], a                                     ; $72dd: $e2
    nop                                           ; $72de: $00
    sub a                                         ; $72df: $97
    add sp, -$46                                  ; $72e0: $e8 $ba
    ld b, c                                       ; $72e2: $41
    rst $18                                       ; $72e3: $df
    nop                                           ; $72e4: $00
    ld a, [$0004]                                 ; $72e5: $fa $04 $00
    ld c, a                                       ; $72e8: $4f
    and b                                         ; $72e9: $a0
    or [hl]                                       ; $72ea: $b6

Call_0a0_72eb:
    ld c, c                                       ; $72eb: $49
    ld l, l                                       ; $72ec: $6d

jr_0a0_72ed:
    sub a                                         ; $72ed: $97

jr_0a0_72ee:
    ld d, l                                       ; $72ee: $55
    ld hl, sp+$00                                 ; $72ef: $f8 $00
    ld l, c                                       ; $72f1: $69
    sub a                                         ; $72f2: $97
    sbc $21                                       ; $72f3: $de $21
    ld a, e                                       ; $72f5: $7b
    inc b                                         ; $72f6: $04
    xor $01                                       ; $72f7: $ee $01
    nop                                           ; $72f9: $00
    ld e, e                                       ; $72fa: $5b
    add h                                         ; $72fb: $84

jr_0a0_72fc:
    sub $2b                                       ; $72fc: $d6 $2b
    xor e                                         ; $72fe: $ab
    ld e, h                                       ; $72ff: $5c
    ld e, b                                       ; $7300: $58
    or b                                          ; $7301: $b0
    nop                                           ; $7302: $00
    inc bc                                        ; $7303: $03
    ld bc, $0102                                  ; $7304: $01 $02 $01
    and h                                         ; $7307: $a4
    inc bc                                        ; $7308: $03
    reti                                          ; $7309: $d9


    rlca                                          ; $730a: $07
    nop                                           ; $730b: $00
    and [hl]                                      ; $730c: $a6
    rst $18                                       ; $730d: $df
    ld c, e                                       ; $730e: $4b
    db $fc                                        ; $730f: $fc
    inc a                                         ; $7310: $3c
    rst $38                                       ; $7311: $ff
    rst $08                                       ; $7312: $cf
    rst $38                                       ; $7313: $ff
    jr nz, jr_0a0_72be                            ; $7314: $20 $a8

    rst $10                                       ; $7316: $d7
    ret nz                                        ; $7317: $c0

    dec bc                                        ; $7318: $0b
    pop bc                                        ; $7319: $c1
    rst $38                                       ; $731a: $ff
    cp e                                          ; $731b: $bb
    ld a, a                                       ; $731c: $7f
    rst $18                                       ; $731d: $df
    nop                                           ; $731e: $00
    ccf                                           ; $731f: $3f
    or e                                          ; $7320: $b3
    ld h, e                                       ; $7321: $63
    rst $10                                       ; $7322: $d7
    db $e3                                        ; $7323: $e3
    ld [hl-], a                                   ; $7324: $32
    ldh [$3f], a                                  ; $7325: $e0 $3f
    nop                                           ; $7327: $00
    ldh [$ee], a                                  ; $7328: $e0 $ee
    pop af                                        ; $732a: $f1
    cp d                                          ; $732b: $ba
    rst $38                                       ; $732c: $ff
    ld a, a                                       ; $732d: $7f
    rst $38                                       ; $732e: $ff
    rst $30                                       ; $732f: $f7
    nop                                           ; $7330: $00
    ld hl, sp-$14                                 ; $7331: $f8 $ec
    di                                            ; $7333: $f3
    ldh a, [rIE]                                  ; $7334: $f0 $ff
    rst $38                                       ; $7336: $ff
    ld h, b                                       ; $7337: $60
    and l                                         ; $7338: $a5
    nop                                           ; $7339: $00
    ld a, d                                       ; $733a: $7a
    ld d, d                                       ; $733b: $52
    db $fd                                        ; $733c: $fd
    adc h                                         ; $733d: $8c

jr_0a0_733e:
    rst $38                                       ; $733e: $ff
    cp a                                          ; $733f: $bf
    di                                            ; $7340: $f3
    ld d, e                                       ; $7341: $53
    nop                                           ; $7342: $00
    pop hl                                        ; $7343: $e1
    ld h, l                                       ; $7344: $65
    jp $efd2                                      ; $7345: $c3 $d2 $ef


    ld e, l                                       ; $7348: $5d
    and d                                         ; $7349: $a2
    ld [$0500], a                                 ; $734a: $ea $00 $05
    cp $00                                        ; $734d: $fe $00
    rst $10                                       ; $734f: $d7
    jr nz, jr_0a0_72fc                            ; $7350: $20 $aa

    ld b, l                                       ; $7352: $45
    ld [hl], l                                    ; $7353: $75
    nop                                           ; $7354: $00
    adc e                                         ; $7355: $8b
    ld l, $ff                                     ; $7356: $2e $ff
    cp l                                          ; $7358: $bd
    rra                                           ; $7359: $1f
    inc a                                         ; $735a: $3c
    rst $38                                       ; $735b: $ff
    db $ed                                        ; $735c: $ed
    nop                                           ; $735d: $00
    ld [de], a                                    ; $735e: $12
    db $db                                        ; $735f: $db
    inc b                                         ; $7360: $04
    ld [hl], l                                    ; $7361: $75
    adc b                                         ; $7362: $88
    ld a, [$ed01]                                 ; $7363: $fa $01 $ed
    nop                                           ; $7366: $00
    ld a, [c]                                     ; $7367: $f2
    ld a, d                                       ; $7368: $7a
    db $fd                                        ; $7369: $fd
    ld e, l                                       ; $736a: $5d
    rst $38                                       ; $736b: $ff
    rst $08                                       ; $736c: $cf
    ccf                                           ; $736d: $3f
    ld [hl], a                                    ; $736e: $77
    nop                                           ; $736f: $00
    adc b                                         ; $7370: $88
    cp l                                          ; $7371: $bd
    ld [bc], a                                    ; $7372: $02
    jp c, $b724                                   ; $7373: $da $24 $b7

    ld c, b                                       ; $7376: $48
    jr nz, jr_0a0_7379                            ; $7377: $20 $00

jr_0a0_7379:
    rst $38                                       ; $7379: $ff
    or d                                          ; $737a: $b2
    pop bc                                        ; $737b: $c1
    add c                                         ; $737c: $81
    nop                                           ; $737d: $00
    dec a                                         ; $737e: $3d
    cp $9f                                        ; $737f: $fe $9f
    nop                                           ; $7381: $00
    ld h, b                                       ; $7382: $60
    ld a, d                                       ; $7383: $7a
    ld bc, $08d5                                  ; $7384: $01 $d5 $08
    ld a, a                                       ; $7387: $7f
    add b                                         ; $7388: $80
    jp c, Jump_000_2700                           ; $7389: $da $00 $27

    xor b                                         ; $738c: $a8
    rst $18                                       ; $738d: $df
    ld d, d                                       ; $738e: $52
    db $fd                                        ; $738f: $fd
    ei                                            ; $7390: $fb
    rra                                           ; $7391: $1f
    rst $38                                       ; $7392: $ff
    nop                                           ; $7393: $00
    rst $38                                       ; $7394: $ff
    ccf                                           ; $7395: $3f
    rst $38                                       ; $7396: $ff
    sbc a                                         ; $7397: $9f
    ld a, a                                       ; $7398: $7f
    ld c, a                                       ; $7399: $4f
    cp a                                          ; $739a: $bf
    cpl                                           ; $739b: $2f
    nop                                           ; $739c: $00
    rst $38                                       ; $739d: $ff
    ld e, c                                       ; $739e: $59
    ldh a, [$f7]                                  ; $739f: $f0 $f7
    ld hl, sp-$01                                 ; $73a1: $f8 $ff
    cp $ff                                        ; $73a3: $fe $ff

jr_0a0_73a5:
    jr nz, jr_0a0_73a5                            ; $73a5: $20 $fe

    cp $55                                        ; $73a7: $fe $55
    inc b                                         ; $73a9: $04
    ld sp, hl                                     ; $73aa: $f9
    ldh a, [rBCPS]                                ; $73ab: $f0 $68
    ret nz                                        ; $73ad: $c0

    ld d, h                                       ; $73ae: $54
    nop                                           ; $73af: $00
    ldh [$e6], a                                  ; $73b0: $e0 $e6
    ld sp, hl                                     ; $73b2: $f9
    nop                                           ; $73b3: $00
    nop                                           ; $73b4: $00
    and c                                         ; $73b5: $a1
    nop                                           ; $73b6: $00
    jp nc, $0100                                  ; $73b7: $d2 $00 $01

    add hl, sp                                    ; $73ba: $39
    rst $00                                       ; $73bb: $c7
    rst $38                                       ; $73bc: $ff
    cp $dd                                        ; $73bd: $fe $dd
    ld l, [hl]                                    ; $73bf: $6e
    ld l, h                                       ; $73c0: $6c
    nop                                           ; $73c1: $00
    rst $00                                       ; $73c2: $c7
    rst $10                                       ; $73c3: $d7
    rst $28                                       ; $73c4: $ef
    call nc, Call_0a0_707b                        ; $73c5: $d4 $7b $70
    rst $38                                       ; $73c8: $ff
    cp h                                          ; $73c9: $bc
    nop                                           ; $73ca: $00
    rst $08                                       ; $73cb: $cf
    rst $00                                       ; $73cc: $c7
    inc bc                                        ; $73cd: $03
    ld d, e                                       ; $73ce: $53
    ld bc, $03fd                                  ; $73cf: $01 $fd $03
    di                                            ; $73d2: $f3
    nop                                           ; $73d3: $00
    rrca                                          ; $73d4: $0f
    sub [hl]                                      ; $73d5: $96
    rst $38                                       ; $73d6: $ff
    pop af                                        ; $73d7: $f1
    rst $38                                       ; $73d8: $ff
    sbc e                                         ; $73d9: $9b
    ld h, h                                       ; $73da: $64
    ld l, l                                       ; $73db: $6d
    nop                                           ; $73dc: $00
    add b                                         ; $73dd: $80
    ld [$5d11], a                                 ; $73de: $ea $11 $5d
    ld [hl+], a                                   ; $73e1: $22
    cp d                                          ; $73e2: $ba
    push bc                                       ; $73e3: $c5
    and a                                         ; $73e4: $a7
    inc b                                         ; $73e5: $04
    ld a, d                                       ; $73e6: $7a
    cp [hl]                                       ; $73e7: $be
    inc c                                         ; $73e8: $0c
    ld a, a                                       ; $73e9: $7f
    add b                                         ; $73ea: $80
    jp hl                                         ; $73eb: $e9


    ld bc, $5fa0                                  ; $73ec: $01 $a0 $5f
    nop                                           ; $73ef: $00
    and b                                         ; $73f0: $a0
    ld e, l                                       ; $73f1: $5d
    and e                                         ; $73f2: $a3
    ld e, a                                       ; $73f3: $5f
    and b                                         ; $73f4: $a0
    ld e, a                                       ; $73f5: $5f
    cp a                                          ; $73f6: $bf
    ld a, a                                       ; $73f7: $7f
    nop                                           ; $73f8: $00
    add b                                         ; $73f9: $80
    sbc $04                                       ; $73fa: $de $04
    ld [hl], l                                    ; $73fc: $75
    adc [hl]                                      ; $73fd: $8e
    adc a                                         ; $73fe: $8f
    ld a, [hl]                                    ; $73ff: $7e
    ld [hl], c                                    ; $7400: $71
    inc bc                                        ; $7401: $03
    rst $38                                       ; $7402: $ff
    sub h                                         ; $7403: $94
    db $eb                                        ; $7404: $eb
    add c                                         ; $7405: $81
    cp $d0                                        ; $7406: $fe $d0
    ldh a, [rSC]                                  ; $7408: $f0 $02
    ld e, $58                                     ; $740a: $1e $58
    ld b, b                                       ; $740c: $40
    rst $38                                       ; $740d: $ff
    ld a, d                                       ; $740e: $7a
    nop                                           ; $740f: $00
    ld l, [hl]                                    ; $7410: $6e
    sub c                                         ; $7411: $91
    push de                                       ; $7412: $d5
    ld [hl+], a                                   ; $7413: $22
    xor e                                         ; $7414: $ab
    inc b                                         ; $7415: $04
    nop                                           ; $7416: $00
    ld e, l                                       ; $7417: $5d
    and b                                         ; $7418: $a0
    ld d, a                                       ; $7419: $57
    ld hl, sp-$33                                 ; $741a: $f8 $cd
    ld a, $a3                                     ; $741c: $3e $a3
    ld e, a                                       ; $741e: $5f
    ld b, b                                       ; $741f: $40
    ld [bc], a                                    ; $7420: $02
    rst $08                                       ; $7421: $cf
    ld [bc], a                                    ; $7422: $02
    cp h                                          ; $7423: $bc
    rst $38                                       ; $7424: $ff
    di                                            ; $7425: $f3
    db $fc                                        ; $7426: $fc
    xor [hl]                                      ; $7427: $ae
    pop de                                        ; $7428: $d1
    nop                                           ; $7429: $00
    sub h                                         ; $742a: $94
    db $eb                                        ; $742b: $eb
    ret nz                                        ; $742c: $c0

    rst $38                                       ; $742d: $ff
    ld [$ffff], a                                 ; $742e: $ea $ff $ff
    ld bc, $0300                                  ; $7431: $01 $00 $03
    db $fd                                        ; $7434: $fd
    rrca                                          ; $7435: $0f
    dec b                                         ; $7436: $05
    rst $38                                       ; $7437: $ff
    dec b                                         ; $7438: $05
    cp a                                          ; $7439: $bf
    push bc                                       ; $743a: $c5
    inc bc                                        ; $743b: $03
    rst $38                                       ; $743c: $ff
    dec b                                         ; $743d: $05
    rst $38                                       ; $743e: $ff
    db $fd                                        ; $743f: $fd
    rst $38                                       ; $7440: $ff
    ld bc, $025c                                  ; $7441: $01 $5c $02
    ld c, e                                       ; $7444: $4b
    ld [bc], a                                    ; $7445: $02
    ld [bc], a                                    ; $7446: $02
    ld h, c                                       ; $7447: $61
    cp [hl]                                       ; $7448: $be
    ld d, d                                       ; $7449: $52
    and c                                         ; $744a: $a1
    ld h, b                                       ; $744b: $60
    and b                                         ; $744c: $a0
    ld l, d                                       ; $744d: $6a
    ld [$00ff], sp                                ; $744e: $08 $ff $00
    ld bc, $fdff                                  ; $7451: $01 $ff $fd
    inc bc                                        ; $7454: $03
    db $fd                                        ; $7455: $fd
    rlca                                          ; $7456: $07
    dec b                                         ; $7457: $05
    ld bc, $ff01                                  ; $7458: $01 $01 $ff
    dec b                                         ; $745b: $05
    rlca                                          ; $745c: $07
    ld bc, $0dff                                  ; $745d: $01 $ff $0d
    rlca                                          ; $7460: $07
    ld l, $58                                     ; $7461: $2e $58

jr_0a0_7463:
    jr nz, @+$01                                  ; $7463: $20 $ff

    rst $38                                       ; $7465: $ff
    adc d                                         ; $7466: $8a
    jr z, @+$5a                                   ; $7467: $28 $58

    and a                                         ; $7469: $a7
    ld e, a                                       ; $746a: $5f
    cp a                                          ; $746b: $bf
    ld a, h                                       ; $746c: $7c
    nop                                           ; $746d: $00
    add e                                         ; $746e: $83
    rst $38                                       ; $746f: $ff
    rst $38                                       ; $7470: $ff
    db $fd                                        ; $7471: $fd
    rlca                                          ; $7472: $07
    cp l                                          ; $7473: $bd
    rst $00                                       ; $7474: $c7
    db $fd                                        ; $7475: $fd
    jr nz, jr_0a0_747f                            ; $7476: $20 $07

    db $fd                                        ; $7478: $fd
    rra                                           ; $7479: $1f
    jr z, @+$01                                   ; $747a: $28 $ff

    adc a                                         ; $747c: $8f
    rst $38                                       ; $747d: $ff
    inc l                                         ; $747e: $2c

jr_0a0_747f:
    db $d3                                        ; $747f: $d3
    nop                                           ; $7480: $00
    jp c, Jump_0a0_6d21                           ; $7481: $da $21 $6d

    ld [de], a                                    ; $7484: $12
    sbc $00                                       ; $7485: $de $00
    or a                                          ; $7487: $b7
    ld c, b                                       ; $7488: $48
    nop                                           ; $7489: $00
    jr z, jr_0a0_7463                             ; $748a: $28 $d7

    rst $38                                       ; $748c: $ff
    jr z, @+$21                                   ; $748d: $28 $1f

    rst $38                                       ; $748f: $ff
    ld l, b                                       ; $7490: $68
    sub a                                         ; $7491: $97
    nop                                           ; $7492: $00
    db $dd                                        ; $7493: $dd
    ld [hl+], a                                   ; $7494: $22
    ld [hl], l                                    ; $7495: $75
    ld [$11ee], sp                                ; $7496: $08 $ee $11
    ld d, a                                       ; $7499: $57
    cpl                                           ; $749a: $2f
    nop                                           ; $749b: $00
    and b                                         ; $749c: $a0
    ld a, a                                       ; $749d: $7f
    sub $e9                                       ; $749e: $d6 $e9
    ld a, [hl-]                                   ; $74a0: $3a
    db $fd                                        ; $74a1: $fd
    push de                                       ; $74a2: $d5
    jr z, @+$42                                   ; $74a3: $28 $40

    cp [hl]                                       ; $74a5: $be
    xor [hl]                                      ; $74a6: $ae
    ld bc, $49b6                                  ; $74a7: $01 $b6 $49
    ld h, l                                       ; $74aa: $65
    sbc a                                         ; $74ab: $9f
    sbc a                                         ; $74ac: $9f
    ldh a, [rP1]                                  ; $74ad: $f0 $00
    cp c                                          ; $74af: $b9
    ld h, b                                       ; $74b0: $60
    ld a, c                                       ; $74b1: $79
    cp $5b                                        ; $74b2: $fe $5b
    and h                                         ; $74b4: $a4
    xor [hl]                                      ; $74b5: $ae
    ld b, c                                       ; $74b6: $41
    nop                                           ; $74b7: $00
    ld d, a                                       ; $74b8: $57
    ld [$00fd], sp                                ; $74b9: $08 $fd $00
    ld d, l                                       ; $74bc: $55
    and d                                         ; $74bd: $a2
    dec hl                                        ; $74be: $2b
    call nc, $c000                                ; $74bf: $d4 $00 $c0
    ld a, a                                       ; $74c2: $7f
    rst $38                                       ; $74c3: $ff
    rst $38                                       ; $74c4: $ff
    push af                                       ; $74c5: $f5
    rst $38                                       ; $74c6: $ff
    ret                                           ; $74c7: $c9


    or $70                                        ; $74c8: $f6 $70
    push af                                       ; $74ca: $f5
    add a                                         ; $74cb: $87
    dec d                                         ; $74cc: $15
    xor [hl]                                      ; $74cd: $ae
    nop                                           ; $74ce: $00
    adc a                                         ; $74cf: $8f
    dec b                                         ; $74d0: $05
    ld d, l                                       ; $74d1: $55
    rst $38                                       ; $74d2: $ff
    sub d                                         ; $74d3: $92
    ld l, l                                       ; $74d4: $6d
    ld d, b                                       ; $74d5: $50
    ld d, l                                       ; $74d6: $55
    sub a                                         ; $74d7: $97
    dec d                                         ; $74d8: $15
    push de                                       ; $74d9: $d5
    sbc l                                         ; $74da: $9d
    dec b                                         ; $74db: $05
    ldh [$e0], a                                  ; $74dc: $e0 $e0
    ld e, b                                       ; $74de: $58
    ld hl, sp+$00                                 ; $74df: $f8 $00
    call z, $563c                                 ; $74e1: $cc $3c $56
    xor $ea                                       ; $74e4: $ee $ea
    or $f7                                        ; $74e6: $f6 $f7
    ei                                            ; $74e8: $fb
    nop                                           ; $74e9: $00
    pop af                                        ; $74ea: $f1
    rst $38                                       ; $74eb: $ff
    rst $38                                       ; $74ec: $ff
    ei                                            ; $74ed: $fb
    ld a, [$7131]                                 ; $74ee: $fa $31 $71
    jr nz, jr_0a0_74f3                            ; $74f1: $20 $00

jr_0a0_74f3:
    xor b                                         ; $74f3: $a8
    ld [hl], c                                    ; $74f4: $71
    dec sp                                        ; $74f5: $3b
    db $fd                                        ; $74f6: $fd
    rst $00                                       ; $74f7: $c7
    rst $38                                       ; $74f8: $ff
    xor d                                         ; $74f9: $aa
    rst $10                                       ; $74fa: $d7
    nop                                           ; $74fb: $00
    ld d, l                                       ; $74fc: $55
    xor d                                         ; $74fd: $aa
    cp [hl]                                       ; $74fe: $be
    ld b, c                                       ; $74ff: $41
    db $d3                                        ; $7500: $d3
    inc l                                         ; $7501: $2c
    xor l                                         ; $7502: $ad
    ld d, d                                       ; $7503: $52
    adc h                                         ; $7504: $8c
    ld b, b                                       ; $7505: $40
    ld a, [hl+]                                   ; $7506: $2a
    ld e, b                                       ; $7507: $58
    rlca                                          ; $7508: $07
    rrca                                          ; $7509: $0f
    cp l                                          ; $750a: $bd
    inc b                                         ; $750b: $04
    inc bc                                        ; $750c: $03
    ld [$0101], sp                                ; $750d: $08 $01 $01
    db $10                                        ; $7510: $10
    inc bc                                        ; $7511: $03
    inc bc                                        ; $7512: $03
    rlca                                          ; $7513: $07
    ld bc, $0f00                                  ; $7514: $01 $00 $0f
    rrca                                          ; $7517: $0f
    push af                                       ; $7518: $f5
    ei                                            ; $7519: $fb
    nop                                           ; $751a: $00
    ei                                            ; $751b: $fb
    rst $38                                       ; $751c: $ff
    or l                                          ; $751d: $b5
    ei                                            ; $751e: $fb
    rst $38                                       ; $751f: $ff
    ei                                            ; $7520: $fb
    or c                                          ; $7521: $b1
    rst $38                                       ; $7522: $ff
    ld e, b                                       ; $7523: $58
    cp a                                          ; $7524: $bf
    inc b                                         ; $7525: $04
    nop                                           ; $7526: $00
    ei                                            ; $7527: $fb
    ld b, $05                                     ; $7528: $06 $05
    inc hl                                        ; $752a: $23
    ld [$8080], sp                                ; $752b: $08 $80 $80
    ret nz                                        ; $752e: $c0

    nop                                           ; $752f: $00
    ret nz                                        ; $7530: $c0

    ldh [$e0], a                                  ; $7531: $e0 $e0
    ld h, b                                       ; $7533: $60
    ldh [rSVBK], a                                ; $7534: $e0 $70
    ldh a, [rNR22]                                ; $7536: $f0 $17
    nop                                           ; $7538: $00
    nop                                           ; $7539: $00
    dec bc                                        ; $753a: $0b
    nop                                           ; $753b: $00
    and a                                         ; $753c: $a7
    nop                                           ; $753d: $00
    db $dd                                        ; $753e: $dd
    nop                                           ; $753f: $00
    and a                                         ; $7540: $a7
    nop                                           ; $7541: $00
    ret c                                         ; $7542: $d8

    ld b, a                                       ; $7543: $47
    ld hl, sp+$0b                                 ; $7544: $f8 $0b
    db $f4                                        ; $7546: $f4
    rst $00                                       ; $7547: $c7
    ld hl, sp+$0f                                 ; $7548: $f8 $0f
    add b                                         ; $754a: $80
    ld bc, $0700                                  ; $754b: $01 $00 $07
    rrca                                          ; $754e: $0f
    dec de                                        ; $754f: $1b
    rra                                           ; $7550: $1f
    dec a                                         ; $7551: $3d
    dec sp                                        ; $7552: $3b
    ld a, [hl]                                    ; $7553: $7e
    inc de                                        ; $7554: $13
    ld a, l                                       ; $7555: $7d
    ld a, a                                       ; $7556: $7f
    ld a, [hl]                                    ; $7557: $7e
    ld e, $06                                     ; $7558: $1e $06
    cp $cf                                        ; $755a: $fe $cf
    ld [hl], a                                    ; $755c: $77
    nop                                           ; $755d: $00
    ld h, $1e                                     ; $755e: $26 $1e
    inc b                                         ; $7560: $04
    cp a                                          ; $7561: $bf
    ld a, a                                       ; $7562: $7f
    cp l                                          ; $7563: $bd
    jp Jump_000_01f0                              ; $7564: $c3 $f0 $01


    db $10                                        ; $7567: $10
    ld hl, sp-$08                                 ; $7568: $f8 $f8
    ld bc, $fcdc                                  ; $756a: $01 $dc $fc
    ld a, [$72fe]                                 ; $756d: $fa $fe $72
    cp $f9                                        ; $7570: $fe $f9
    db $fc                                        ; $7572: $fc
    ld bc, $b100                                  ; $7573: $01 $00 $b1
    ld c, [hl]                                    ; $7576: $4e
    db $db                                        ; $7577: $db
    inc b                                         ; $7578: $04
    or [hl]                                       ; $7579: $b6
    add hl, bc                                    ; $757a: $09
    ld l, l                                       ; $757b: $6d
    ld [bc], a                                    ; $757c: $02
    ld bc, $4fb5                                  ; $757d: $01 $b5 $4f
    ld c, a                                       ; $7580: $4f
    or b                                          ; $7581: $b0
    xor b                                         ; $7582: $a8
    ld b, b                                       ; $7583: $40
    db $fd                                        ; $7584: $fd
    ccf                                           ; $7585: $3f

jr_0a0_7586:
    ld b, $00                                     ; $7586: $06 $00
    xor a                                         ; $7588: $af
    ret nc                                        ; $7589: $d0

    sub a                                         ; $758a: $97
    add sp, -$1e                                  ; $758b: $e8 $e2
    db $fd                                        ; $758d: $fd
    ld sp, $40fe                                  ; $758e: $31 $fe $40
    ld e, d                                       ; $7591: $5a
    ld [hl-], a                                   ; $7592: $32
    nop                                           ; $7593: $00
    ld l, e                                       ; $7594: $6b
    db $10                                        ; $7595: $10
    cp [hl]                                       ; $7596: $be
    ld de, $1ff3                                  ; $7597: $11 $f3 $1f
    nop                                           ; $759a: $00
    db $ed                                        ; $759b: $ed
    ld e, $e9                                     ; $759c: $1e $e9
    ld e, $58                                     ; $759e: $1e $58
    cp a                                          ; $75a0: $bf
    inc a                                         ; $75a1: $3c

jr_0a0_75a2:
    rst $38                                       ; $75a2: $ff
    ld bc, $ffee                                  ; $75a3: $01 $ee $ff
    ld b, c                                       ; $75a6: $41
    cp $c0                                        ; $75a7: $fe $c0
    rst $38                                       ; $75a9: $ff
    jr nz, jr_0a0_75dc                            ; $75aa: $20 $30

jr_0a0_75ac:
    ld [bc], a                                    ; $75ac: $02
    nop                                           ; $75ad: $00
    ld d, h                                       ; $75ae: $54
    cp b                                          ; $75af: $b8
    jr jr_0a0_75a2                                ; $75b0: $18 $f0

    jr nc, jr_0a0_75ac                            ; $75b2: $30 $f8

    ld l, e                                       ; $75b4: $6b
    db $fc                                        ; $75b5: $fc
    ld b, b                                       ; $75b6: $40
    inc [hl]                                      ; $75b7: $34
    and b                                         ; $75b8: $a0
    ld [bc], a                                    ; $75b9: $02
    db $eb                                        ; $75ba: $eb
    db $f4                                        ; $75bb: $f4
    or h                                          ; $75bc: $b4
    dec de                                        ; $75bd: $1b
    ld de, $001f                                  ; $75be: $11 $1f $00
    ld a, $1f                                     ; $75c1: $3e $1f
    ld d, c                                       ; $75c3: $51
    ld a, $6a                                     ; $75c4: $3e $6a
    push af                                       ; $75c6: $f5
    ld [hl], c                                    ; $75c7: $71
    cp a                                          ; $75c8: $bf
    jr nz, jr_0a0_7586                            ; $75c9: $20 $bb

    ld b, h                                       ; $75cb: $44
    db $10                                        ; $75cc: $10
    ld a, [de]                                    ; $75cd: $1a
    ld a, [$d705]                                 ; $75ce: $fa $05 $d7
    ld a, [hl+]                                   ; $75d1: $2a
    cp d                                          ; $75d2: $ba
    ld h, $04                                     ; $75d3: $26 $04
    jp c, Jump_000_0200                           ; $75d5: $da $00 $02

    xor a                                         ; $75d8: $af
    ld e, [hl]                                    ; $75d9: $5e
    nop                                           ; $75da: $00
    ld a, [hl-]                                   ; $75db: $3a

jr_0a0_75dc:
    nop                                           ; $75dc: $00
    add hl, sp                                    ; $75dd: $39
    add e                                         ; $75de: $83
    scf                                           ; $75df: $37
    rst $38                                       ; $75e0: $ff
    ld b, e                                       ; $75e1: $43
    sub d                                         ; $75e2: $92
    nop                                           ; $75e3: $00
    ld [hl], b                                    ; $75e4: $70
    ld c, b                                       ; $75e5: $48
    jp c, $06cd                                   ; $75e6: $da $cd $06

    db $10                                        ; $75e9: $10
    ld a, $f0                                     ; $75ea: $3e $f0
    dec e                                         ; $75ec: $1d
    add c                                         ; $75ed: $81
    ld bc, $ff02                                  ; $75ee: $01 $02 $ff
    add e                                         ; $75f1: $83
    ld a, a                                       ; $75f2: $7f
    ld bc, $03ff                                  ; $75f3: $01 $ff $03
    jp hl                                         ; $75f6: $e9


    ld bc, $0360                                  ; $75f7: $01 $60 $03
    ret nz                                        ; $75fa: $c0

    ld d, $40                                     ; $75fb: $16 $40
    inc c                                         ; $75fd: $0c
    cp $01                                        ; $75fe: $fe $01
    db $fd                                        ; $7600: $fd
    ld [bc], a                                    ; $7601: $02
    ld a, [$0430]                                 ; $7602: $fa $30 $04
    ei                                            ; $7605: $fb
    ld [bc], a                                    ; $7606: $02
    nop                                           ; $7607: $00
    ld d, b                                       ; $7608: $50
    inc e                                         ; $7609: $1c
    rra                                           ; $760a: $1f
    ldh [$2e], a                                  ; $760b: $e0 $2e
    ld de, $ee02                                  ; $760d: $11 $02 $ee
    ld de, $0ff0                                  ; $7610: $11 $f0 $0f
    jp hl                                         ; $7613: $e9


    db $10                                        ; $7614: $10
    ld h, b                                       ; $7615: $60
    inc c                                         ; $7616: $0c
    sbc a                                         ; $7617: $9f
    nop                                           ; $7618: $00
    ld h, b                                       ; $7619: $60
    ld l, a                                       ; $761a: $6f
    sub b                                         ; $761b: $90
    sub a                                         ; $761c: $97
    ld [$08f7], sp                                ; $761d: $08 $f7 $08
    rst $08                                       ; $7620: $cf
    inc b                                         ; $7621: $04
    jr nc, jr_0a0_7663                            ; $7622: $30 $3f

    ret nz                                        ; $7624: $c0

    db $fc                                        ; $7625: $fc
    inc bc                                        ; $7626: $03
    jr nc, jr_0a0_7665                            ; $7627: $30 $3c

    rst $18                                       ; $7629: $df
    jr nz, jr_0a0_762c                            ; $762a: $20 $00

jr_0a0_762c:
    and a                                         ; $762c: $a7
    ld e, b                                       ; $762d: $58
    rst $10                                       ; $762e: $d7
    jr nz, jr_0a0_7650                            ; $762f: $20 $1f

    ldh [$df], a                                  ; $7631: $e0 $df
    jr nz, jr_0a0_7635                            ; $7633: $20 $00

jr_0a0_7635:
    rst $18                                       ; $7635: $df
    jr nz, @-$18                                  ; $7636: $20 $e6

    add hl, de                                    ; $7638: $19
    ld a, b                                       ; $7639: $78

jr_0a0_763a:
    add a                                         ; $763a: $87
    db $fd                                        ; $763b: $fd
    ld [bc], a                                    ; $763c: $02
    jr nz, jr_0a0_768f                            ; $763d: $20 $50

    xor a                                         ; $763f: $af
    sbc b                                         ; $7640: $98
    inc c                                         ; $7641: $0c
    add e                                         ; $7642: $83
    ld a, h                                       ; $7643: $7c
    ld a, h                                       ; $7644: $7c
    add e                                         ; $7645: $83
    and l                                         ; $7646: $a5
    inc h                                         ; $7647: $24
    nop                                           ; $7648: $00
    ld a, [$0715]                                 ; $7649: $fa $15 $07
    xor e                                         ; $764c: $ab
    ld d, h                                       ; $764d: $54
    sbc b                                         ; $764e: $98
    inc a                                         ; $764f: $3c

jr_0a0_7650:
    cp e                                          ; $7650: $bb
    ld b, h                                       ; $7651: $44
    add b                                         ; $7652: $80
    ld [de], a                                    ; $7653: $12
    ld a, [bc]                                    ; $7654: $0a
    ld bc, $eaff                                  ; $7655: $01 $ff $ea
    dec d                                         ; $7658: $15
    push de                                       ; $7659: $d5
    dec hl                                        ; $765a: $2b
    ld l, d                                       ; $765b: $6a
    db $10                                        ; $765c: $10
    sub l                                         ; $765d: $95
    rst $18                                       ; $765e: $df
    ld hl, $1c68                                  ; $765f: $21 $68 $1c
    nop                                           ; $7662: $00

jr_0a0_7663:
    rst $38                                       ; $7663: $ff
    cpl                                           ; $7664: $2f

jr_0a0_7665:
    add b                                         ; $7665: $80
    ld bc, $805f                                  ; $7666: $01 $5f $80
    cpl                                           ; $7669: $2f
    add b                                         ; $766a: $80
    ld d, a                                       ; $766b: $57
    add b                                         ; $766c: $80
    ld l, a                                       ; $766d: $6f
    ld h, d                                       ; $766e: $62
    inc d                                         ; $766f: $14
    pop hl                                        ; $7670: $e1
    ld h, b                                       ; $7671: $60
    ld e, h                                       ; $7672: $5c
    jr nz, jr_0a0_767d                            ; $7673: $20 $08

    ld e, h                                       ; $7675: $5c
    inc l                                         ; $7676: $2c
    ld e, a                                       ; $7677: $5f
    and b                                         ; $7678: $a0
    ccf                                           ; $7679: $3f
    ret nz                                        ; $767a: $c0

    ld hl, sp+$04                                 ; $767b: $f8 $04

jr_0a0_767d:
    rra                                           ; $767d: $1f
    ld b, c                                       ; $767e: $41
    ld a, [hl]                                    ; $767f: $7e
    add c                                         ; $7680: $81

jr_0a0_7681:
    and b                                         ; $7681: $a0
    inc l                                         ; $7682: $2c
    ld h, b                                       ; $7683: $60
    inc c                                         ; $7684: $0c
    ld a, [hl]                                    ; $7685: $7e
    inc a                                         ; $7686: $3c
    jr nz, @+$27                                  ; $7687: $20 $25

Jump_0a0_7689:
    inc a                                         ; $7689: $3c
    ld b, b                                       ; $768a: $40
    sub e                                         ; $768b: $93
    add b                                         ; $768c: $80
    inc c                                         ; $768d: $0c
    cpl                                           ; $768e: $2f

jr_0a0_768f:
    ret nc                                        ; $768f: $d0

    jr c, @+$1a                                   ; $7690: $38 $18

    ld e, a                                       ; $7692: $5f
    and b                                         ; $7693: $a0
    ld b, b                                       ; $7694: $40
    dec h                                         ; $7695: $25
    sub b                                         ; $7696: $90
    ld b, l                                       ; $7697: $45
    nop                                           ; $7698: $00
    ld a, l                                       ; $7699: $7d
    add d                                         ; $769a: $82
    or d                                          ; $769b: $b2

jr_0a0_769c:
    ld c, l                                       ; $769c: $4d
    ld bc, $faff                                  ; $769d: $01 $ff $fa

jr_0a0_76a0:
    dec b                                         ; $76a0: $05
    jr nz, jr_0a0_76a0                            ; $76a1: $20 $fd

    inc bc                                        ; $76a3: $03
    inc b                                         ; $76a4: $04
    jr jr_0a0_769c                                ; $76a5: $18 $f5

    dec bc                                        ; $76a7: $0b
    ld a, [$f705]                                 ; $76a8: $fa $05 $f7
    dec b                                         ; $76ab: $05
    add hl, bc                                    ; $76ac: $09
    ld [$d715], a                                 ; $76ad: $ea $15 $d7
    add hl, hl                                    ; $76b0: $29
    ld h, b                                       ; $76b1: $60
    jr c, @-$7b                                   ; $76b2: $38 $83

    db $fc                                        ; $76b4: $fc
    rlca                                          ; $76b5: $07
    jr nc, jr_0a0_763a                            ; $76b6: $30 $82

    db $fd                                        ; $76b8: $fd
    db $fc                                        ; $76b9: $fc

jr_0a0_76ba:
    rrca                                          ; $76ba: $0f
    inc b                                         ; $76bb: $04
    ld [$ffff], sp                                ; $76bc: $08 $ff $ff
    add c                                         ; $76bf: $81
    rst $38                                       ; $76c0: $ff
    jr nc, @-$59                                  ; $76c1: $30 $a5

jr_0a0_76c3:
    rst $18                                       ; $76c3: $df
    inc b                                         ; $76c4: $04
    ld c, b                                       ; $76c5: $48
    ret nz                                        ; $76c6: $c0

    cpl                                           ; $76c7: $2f
    ld h, a                                       ; $76c8: $67
    sbc b                                         ; $76c9: $98
    rst $28                                       ; $76ca: $ef
    db $10                                        ; $76cb: $10
    ld [$a15e], sp                                ; $76cc: $08 $5e $a1
    rst $30                                       ; $76cf: $f7
    ld [$4fc0], sp                                ; $76d0: $08 $c0 $4f
    jp Jump_000_3f3c                              ; $76d3: $c3 $3c $3f


    ld c, h                                       ; $76d6: $4c
    jp nz, Jump_0a0_5fc0                          ; $76d7: $c2 $c0 $5f

    rst $28                                       ; $76da: $ef
    db $10                                        ; $76db: $10
    ldh a, [$5f]                                  ; $76dc: $f0 $5f
    jr nc, jr_0a0_7738                            ; $76de: $30 $58

    cp $01                                        ; $76e0: $fe $01
    jr nc, jr_0a0_76c3                            ; $76e2: $30 $df

    jr nz, jr_0a0_76ba                            ; $76e4: $20 $d4

    dec c                                         ; $76e6: $0d
    inc b                                         ; $76e7: $04
    ld c, b                                       ; $76e8: $48
    ld h, l                                       ; $76e9: $65
    sbc e                                         ; $76ea: $9b
    ld e, c                                       ; $76eb: $59
    and a                                         ; $76ec: $a7
    nop                                           ; $76ed: $00
    dec d                                         ; $76ee: $15
    rst $08                                       ; $76ef: $cf
    dec d                                         ; $76f0: $15
    rst $08                                       ; $76f1: $cf
    sub [hl]                                      ; $76f2: $96
    ld c, a                                       ; $76f3: $4f
    cp h                                          ; $76f4: $bc
    ld c, a                                       ; $76f5: $4f
    dec c                                         ; $76f6: $0d
    add h                                         ; $76f7: $84
    ld e, a                                       ; $76f8: $5f
    sub h                                         ; $76f9: $94
    ld c, a                                       ; $76fa: $4f
    ld [bc], a                                    ; $76fb: $02
    jr c, jr_0a0_770e                             ; $76fc: $38 $10

    jr jr_0a0_7681                                ; $76fe: $18 $81

    ld e, h                                       ; $7700: $5c
    inc b                                         ; $7701: $04
    inc l                                         ; $7702: $2c
    xor c                                         ; $7703: $a9
    rst $10                                       ; $7704: $d7
    ret z                                         ; $7705: $c8

    add hl, bc                                    ; $7706: $09

Jump_0a0_7707:
    push de                                       ; $7707: $d5
    sbc h                                         ; $7708: $9c
    db $10                                        ; $7709: $10

jr_0a0_770a:
    ld b, b                                       ; $770a: $40
    jr c, jr_0a0_770a                             ; $770b: $38 $fd

    ld [bc], a                                    ; $770d: $02

jr_0a0_770e:
    ld [$a05f], sp                                ; $770e: $08 $5f $a0
    cp $01                                        ; $7711: $fe $01
    ld [hl-], a                                   ; $7713: $32
    ld c, b                                       ; $7714: $48
    sub h                                         ; $7715: $94
    ld c, a                                       ; $7716: $4f
    ld d, $40                                     ; $7717: $16 $40
    rst $08                                       ; $7719: $cf
    ret nz                                        ; $771a: $c0

    ld e, b                                       ; $771b: $58
    xor e                                         ; $771c: $ab
    rst $38                                       ; $771d: $ff
    sub l                                         ; $771e: $95

jr_0a0_771f:
    ld c, a                                       ; $771f: $4f
    sub l                                         ; $7720: $95
    ld c, a                                       ; $7721: $4f
    rlca                                          ; $7722: $07
    call Call_0a0_593f                            ; $7723: $cd $3f $59
    cp a                                          ; $7726: $bf
    ld b, d                                       ; $7727: $42
    ld h, $04                                     ; $7728: $26 $04
    add b                                         ; $772a: $80
    ld c, $44                                     ; $772b: $0e $44
    ld e, $e0                                     ; $772d: $1e $e0
    call nc, $c03d                                ; $772f: $d4 $3d $c0
    ld e, [hl]                                    ; $7732: $5e
    ld l, $3f                                     ; $7733: $2e $3f
    di                                            ; $7735: $f3
    inc c                                         ; $7736: $0c
    db $ec                                        ; $7737: $ec

jr_0a0_7738:
    db $10                                        ; $7738: $10
    db $eb                                        ; $7739: $eb
    ld bc, $ef10                                  ; $773a: $01 $10 $ef
    db $10                                        ; $773d: $10
    rst $38                                       ; $773e: $ff
    nop                                           ; $773f: $00
    cp a                                          ; $7740: $bf
    ld b, b                                       ; $7741: $40
    sub b                                         ; $7742: $90
    ld e, $03                                     ; $7743: $1e $03
    ld e, [hl]                                    ; $7745: $5e
    ld hl, $12ed                                  ; $7746: $21 $ed $12
    pop hl                                        ; $7749: $e1
    ld e, $90                                     ; $774a: $1e $90
    ld c, c                                       ; $774c: $49
    cp b                                          ; $774d: $b8
    ld c, $08                                     ; $774e: $0e $08
    rst $30                                       ; $7750: $f7
    ld [$04fb], sp                                ; $7751: $08 $fb $04
    inc [hl]                                      ; $7754: $34
    ld a, [hl-]                                   ; $7755: $3a
    rst $38                                       ; $7756: $ff
    nop                                           ; $7757: $00
    xor $0c                                       ; $7758: $ee $0c
    ld de, $20d1                                  ; $775a: $11 $d1 $20
    ld h, $c8                                     ; $775d: $26 $c8
    ld bc, $1ed4                                  ; $775f: $01 $d4 $1e
    sbc a                                         ; $7762: $9f
    ld h, b                                       ; $7763: $60
    add c                                         ; $7764: $81
    ld a, $3e                                     ; $7765: $3e $3e
    ld [hl], a                                    ; $7767: $77

jr_0a0_7768:
    adc b                                         ; $7768: $88
    ld l, a                                       ; $7769: $6f
    sub b                                         ; $776a: $90
    ld a, l                                       ; $776b: $7d
    add d                                         ; $776c: $82
    or b                                          ; $776d: $b0
    ld e, [hl]                                    ; $776e: $5e
    ld [$01fe], sp                                ; $776f: $08 $fe $01
    db $e3                                        ; $7772: $e3
    inc e                                         ; $7773: $1c
    ld [hl], d                                    ; $7774: $72
    ld a, [hl+]                                   ; $7775: $2a
    cp $01                                        ; $7776: $fe $01
    db $ed                                        ; $7778: $ed
    nop                                           ; $7779: $00
    ld [de], a                                    ; $777a: $12
    cp d                                          ; $777b: $ba
    ld b, l                                       ; $777c: $45
    dec hl                                        ; $777d: $2b
    call nc, $b14e                                ; $777e: $d4 $4e $b1
    ld c, l                                       ; $7781: $4d
    ld b, b                                       ; $7782: $40
    or d                                          ; $7783: $b2
    jr nz, @+$41                                  ; $7784: $20 $3f

    rst $28                                       ; $7786: $ef
    db $10                                        ; $7787: $10
    rra                                           ; $7788: $1f
    ldh [$5f], a                                  ; $7789: $e0 $5f
    jr nz, @+$7c                                  ; $778b: $20 $7a

    xor a                                         ; $778d: $af
    adc d                                         ; $778e: $8a
    nop                                           ; $778f: $00
    ld [bc], a                                    ; $7790: $02
    jr jr_0a0_771f                                ; $7791: $18 $8c

    rrca                                          ; $7793: $0f
    call nc, $f71f                                ; $7794: $d4 $1f $f7
    adc $07                                       ; $7797: $ce $07
    db $fd                                        ; $7799: $fd
    ld h, c                                       ; $779a: $61
    ld [bc], a                                    ; $779b: $02
    add b                                         ; $779c: $80
    ccf                                           ; $779d: $3f
    ld b, b                                       ; $779e: $40
    jr jr_0a0_7768                                ; $779f: $18 $c7

jr_0a0_77a1:
    rst $38                                       ; $77a1: $ff
    db $e3                                        ; $77a2: $e3
    rst $18                                       ; $77a3: $df
    inc b                                         ; $77a4: $04
    ld c, b                                       ; $77a5: $48
    ld bc, $ffdf                                  ; $77a6: $01 $df $ff
    sbc a                                         ; $77a9: $9f
    rst $38                                       ; $77aa: $ff
    rst $18                                       ; $77ab: $df
    cp a                                          ; $77ac: $bf
    adc a                                         ; $77ad: $8f
    inc b                                         ; $77ae: $04
    nop                                           ; $77af: $00
    ld [bc], a                                    ; $77b0: $02
    rst $08                                       ; $77b1: $cf
    cp a                                          ; $77b2: $bf
    rst $30                                       ; $77b3: $f7
    sbc a                                         ; $77b4: $9f
    xor e                                         ; $77b5: $ab
    rst $18                                       ; $77b6: $df
    call c, $f81b                                 ; $77b7: $dc $1b $f8
    jr nz, @+$01                                  ; $77ba: $20 $ff

    rst $30                                       ; $77bc: $f7

jr_0a0_77bd:
    ld [bc], a                                    ; $77bd: $02
    jr nz, jr_0a0_77bd                            ; $77be: $20 $fd

    rst $38                                       ; $77c0: $ff
    rst $28                                       ; $77c1: $ef
    rst $38                                       ; $77c2: $ff
    sub l                                         ; $77c3: $95
    jr nz, @+$01                                  ; $77c4: $20 $ff

    ld [hl], a                                    ; $77c6: $77
    db $10                                        ; $77c7: $10
    jr nz, jr_0a0_77a1                            ; $77c8: $20 $d7

    rst $28                                       ; $77ca: $ef
    ld [hl], l                                    ; $77cb: $75
    ld c, a                                       ; $77cc: $4f
    ld e, d                                       ; $77cd: $5a
    nop                                           ; $77ce: $00
    ld h, a                                       ; $77cf: $67
    dec l                                         ; $77d0: $2d
    inc sp                                        ; $77d1: $33
    ld [hl], $39                                  ; $77d2: $36 $39
    ld e, l                                       ; $77d4: $5d
    ld a, [hl]                                    ; $77d5: $7e
    inc sp                                        ; $77d6: $33
    ld [bc], a                                    ; $77d7: $02
    ld [hl], e                                    ; $77d8: $73
    ld h, b                                       ; $77d9: $60
    ld h, b                                       ; $77da: $60
    nop                                           ; $77db: $00
    nop                                           ; $77dc: $00
    or $5c                                        ; $77dd: $f6 $5c
    dec b                                         ; $77df: $05
    ld e, b                                       ; $77e0: $58
    inc c                                         ; $77e1: $0c
    rst $38                                       ; $77e2: $ff
    cpl                                           ; $77e3: $2f
    rst $38                                       ; $77e4: $ff
    ld [$05f8], a                                 ; $77e5: $ea $f8 $05
    ld l, l                                       ; $77e8: $6d
    inc c                                         ; $77e9: $0c
    ld l, [hl]                                    ; $77ea: $6e
    sbc [hl]                                      ; $77eb: $9e
    nop                                           ; $77ec: $00
    sbc [hl]                                      ; $77ed: $9e
    ld a, [hl]                                    ; $77ee: $7e
    ld a, h                                       ; $77ef: $7c
    db $fc                                        ; $77f0: $fc
    db $fc                                        ; $77f1: $fc
    db $fc                                        ; $77f2: $fc
    or $fe                                        ; $77f3: $f6 $fe
    ld [$ceca], sp                                ; $77f5: $08 $ca $ce
    ld b, $06                                     ; $77f8: $06 $06
    ld a, a                                       ; $77fa: $7f
    inc d                                         ; $77fb: $14
    add hl, de                                    ; $77fc: $19
    ld bc, $000e                                  ; $77fd: $01 $0e $00

jr_0a0_7800:
    ld [bc], a                                    ; $7800: $02
    rra                                           ; $7801: $1f
    dec e                                         ; $7802: $1d

Call_0a0_7803:
    inc sp                                        ; $7803: $33
    ld h, $79                                     ; $7804: $26 $79
    jr c, jr_0a0_786f                             ; $7806: $38 $67

    jr nz, jr_0a0_7876                            ; $7808: $20 $6c

    inc sp                                        ; $780a: $33
    ld l, l                                       ; $780b: $6d
    inc c                                         ; $780c: $0c
    ret nz                                        ; $780d: $c0

    jr nz, jr_0a0_7800                            ; $780e: $20 $f0

    db $10                                        ; $7810: $10
    ld d, b                                       ; $7811: $50
    nop                                           ; $7812: $00
    or b                                          ; $7813: $b0
    ldh a, [$78]                                  ; $7814: $f0 $78
    ret c                                         ; $7816: $d8

    ldh [$b0], a                                  ; $7817: $e0 $b0
    ret z                                         ; $7819: $c8

    ei                                            ; $781a: $fb
    ld b, b                                       ; $781b: $40
    inc b                                         ; $781c: $04
    db $10                                        ; $781d: $10
    dec [hl]                                      ; $781e: $35
    sbc d                                         ; $781f: $9a
    sbc a                                         ; $7820: $9f
    ld h, b                                       ; $7821: $60
    cp c                                          ; $7822: $b9
    ld b, b                                       ; $7823: $40
    ld [hl], a                                    ; $7824: $77
    nop                                           ; $7825: $00
    add hl, sp                                    ; $7826: $39
    dec a                                         ; $7827: $3d
    ld e, [hl]                                    ; $7828: $5e
    ld e, a                                       ; $7829: $5f
    daa                                           ; $782a: $27
    ld [hl], a                                    ; $782b: $77
    jr c, @+$1d                                   ; $782c: $38 $1b

    nop                                           ; $782e: $00
    ccf                                           ; $782f: $3f
    dec e                                         ; $7830: $1d
    ccf                                           ; $7831: $3f
    dec sp                                        ; $7832: $3b
    rra                                           ; $7833: $1f
    dec e                                         ; $7834: $1d
    ccf                                           ; $7835: $3f
    ld [hl], b                                    ; $7836: $70
    ld bc, $a898                                  ; $7837: $01 $98 $a8
    ld a, b                                       ; $783a: $78
    sbc b                                         ; $783b: $98
    ld hl, sp-$08                                 ; $783c: $f8 $f8
    ld a, b                                       ; $783e: $78
    ld l, b                                       ; $783f: $68
    inc e                                         ; $7840: $1c
    nop                                           ; $7841: $00
    pop af                                        ; $7842: $f1
    ldh a, [rP1]                                  ; $7843: $f0 $00
    nop                                           ; $7845: $00
    inc c                                         ; $7846: $0c
    nop                                           ; $7847: $00
    ld e, $00                                     ; $7848: $1e $00
    add hl, bc                                    ; $784a: $09
    ld [de], a                                    ; $784b: $12
    inc c                                         ; $784c: $0c
    ld [$db3c], sp                                ; $784d: $08 $3c $db
    inc c                                         ; $7850: $0c
    ret nz                                        ; $7851: $c0

    nop                                           ; $7852: $00
    ldh a, [$3d]                                  ; $7853: $f0 $3d
    nop                                           ; $7855: $00
    rst $30                                       ; $7856: $f7
    ld [$02fd], sp                                ; $7857: $08 $fd $02
    xor e                                         ; $785a: $ab
    ld d, l                                       ; $785b: $55
    jp nc, $002f                                  ; $785c: $d2 $2f $00

    jp hl                                         ; $785f: $e9


    rla                                           ; $7860: $17
    call nc, $e32f                                ; $7861: $d4 $2f $e3
    inc e                                         ; $7864: $1c
    adc $31                                       ; $7865: $ce $31
    nop                                           ; $7867: $00
    sub h                                         ; $7868: $94
    ld l, e                                       ; $7869: $6b
    ld b, b                                       ; $786a: $40
    cp a                                          ; $786b: $bf
    xor d                                         ; $786c: $aa
    ld e, a                                       ; $786d: $5f
    ld e, a                                       ; $786e: $5f

jr_0a0_786f:
    xor a                                         ; $786f: $af
    and b                                         ; $7870: $a0
    sub b                                         ; $7871: $90
    ld l, h                                       ; $7872: $6c
    ld a, a                                       ; $7873: $7f
    sub b                                         ; $7874: $90
    inc b                                         ; $7875: $04

jr_0a0_7876:
    rla                                           ; $7876: $17
    add sp, -$1e                                  ; $7877: $e8 $e2
    ld a, l                                       ; $7879: $7d
    ld [hl], c                                    ; $787a: $71
    nop                                           ; $787b: $00
    cp [hl]                                       ; $787c: $be
    ld a, [$df1f]                                 ; $787d: $fa $1f $df
    cpl                                           ; $7880: $2f
    dec sp                                        ; $7881: $3b
    rra                                           ; $7882: $1f
    dec l                                         ; $7883: $2d
    add hl, bc                                    ; $7884: $09
    rra                                           ; $7885: $1f
    dec bc                                        ; $7886: $0b
    rra                                           ; $7887: $1f
    dec b                                         ; $7888: $05
    add hl, hl                                    ; $7889: $29
    dec l                                         ; $788a: $2d
    nop                                           ; $788b: $00
    di                                            ; $788c: $f3
    ld h, h                                       ; $788d: $64
    nop                                           ; $788e: $00
    nop                                           ; $788f: $00
    ldh [$e1], a                                  ; $7890: $e0 $e1
    ret nz                                        ; $7892: $c0

    ret nz                                        ; $7893: $c0

    ld b, $00                                     ; $7894: $06 $00
    rlca                                          ; $7896: $07
    ld [$0a00], sp                                ; $7897: $08 $00 $0a
    inc e                                         ; $789a: $1c
    inc b                                         ; $789b: $04
    ld c, $a0                                     ; $789c: $0e $a0
    ld h, b                                       ; $789e: $60
    ld b, b                                       ; $789f: $40
    ldh [rP1], a                                  ; $78a0: $e0 $00
    adc h                                         ; $78a2: $8c
    ld b, b                                       ; $78a3: $40
    ld d, $88                                     ; $78a4: $16 $88
    ld a, [bc]                                    ; $78a6: $0a
    inc e                                         ; $78a7: $1c
    inc c                                         ; $78a8: $0c
    ld c, $86                                     ; $78a9: $0e $86
    ld a, e                                       ; $78ab: $7b
    nop                                           ; $78ac: $00
    nop                                           ; $78ad: $00
    sub a                                         ; $78ae: $97
    nop                                           ; $78af: $00
    ld c, d                                       ; $78b0: $4a
    ld h, b                                       ; $78b1: $60
    ld d, a                                       ; $78b2: $57
    call c, $da1b                                 ; $78b3: $dc $1b $da
    db $10                                        ; $78b6: $10
    push hl                                       ; $78b7: $e5
    or l                                          ; $78b8: $b5
    ld a, e                                       ; $78b9: $7b
    ld h, b                                       ; $78ba: $60
    rra                                           ; $78bb: $1f
    ld a, [c]                                     ; $78bc: $f2
    nop                                           ; $78bd: $00
    db $fd                                        ; $78be: $fd
    nop                                           ; $78bf: $00
    inc b                                         ; $78c0: $04
    ld e, [hl]                                    ; $78c1: $5e
    and c                                         ; $78c2: $a1
    xor d                                         ; $78c3: $aa
    ld a, a                                       ; $78c4: $7f
    ld e, a                                       ; $78c5: $5f
    ld h, b                                       ; $78c6: $60
    daa                                           ; $78c7: $27
    cp a                                          ; $78c8: $bf
    ld b, b                                       ; $78c9: $40
    ld [bc], a                                    ; $78ca: $02
    push de                                       ; $78cb: $d5
    ld a, [hl+]                                   ; $78cc: $2a
    ld a, [hl+]                                   ; $78cd: $2a
    push de                                       ; $78ce: $d5
    call z, Call_0a0_60bf                         ; $78cf: $cc $bf $60
    cpl                                           ; $78d2: $2f
    pop af                                        ; $78d3: $f1
    dec b                                         ; $78d4: $05
    rrca                                          ; $78d5: $0f
    db $db                                        ; $78d6: $db
    inc h                                         ; $78d7: $24
    db $ed                                        ; $78d8: $ed
    nop                                           ; $78d9: $00
    ldh [rNR21], a                                ; $78da: $e0 $16
    ld b, l                                       ; $78dc: $45
    ldh [$0e], a                                  ; $78dd: $e0 $0e
    nop                                           ; $78df: $00
    nop                                           ; $78e0: $00
    rst $38                                       ; $78e1: $ff
    inc sp                                        ; $78e2: $33
    xor $66                                       ; $78e3: $ee $66
    cp e                                          ; $78e5: $bb
    dec d                                         ; $78e6: $15
    ld [$6600], a                                 ; $78e7: $ea $00 $66
    cp e                                          ; $78ea: $bb
    ld b, c                                       ; $78eb: $41
    cp [hl]                                       ; $78ec: $be
    ld d, [hl]                                    ; $78ed: $56
    xor e                                         ; $78ee: $ab
    dec h                                         ; $78ef: $25
    ld a, [$5000]                                 ; $78f0: $fa $00 $50
    xor a                                         ; $78f3: $af
    jr nz, @+$01                                  ; $78f4: $20 $ff

    ld b, a                                       ; $78f6: $47
    cp d                                          ; $78f7: $ba
    inc [hl]                                      ; $78f8: $34
    db $eb                                        ; $78f9: $eb
    nop                                           ; $78fa: $00
    ld h, e                                       ; $78fb: $63
    cp [hl]                                       ; $78fc: $be
    ld c, h                                       ; $78fd: $4c
    or e                                          ; $78fe: $b3

Call_0a0_78ff:
    ld [de], a                                    ; $78ff: $12
    rst $28                                       ; $7900: $ef
    ld b, a                                       ; $7901: $47
    cp d                                          ; $7902: $ba
    nop                                           ; $7903: $00
    ld b, l                                       ; $7904: $45
    cp e                                          ; $7905: $bb
    inc hl                                        ; $7906: $23
    rst $38                                       ; $7907: $ff
    ld sp, $75ef                                  ; $7908: $31 $ef $75
    xor e                                         ; $790b: $ab
    nop                                           ; $790c: $00
    inc bc                                        ; $790d: $03
    rst $38                                       ; $790e: $ff
    ld [hl], l                                    ; $790f: $75
    xor e                                         ; $7910: $ab
    inc hl                                        ; $7911: $23
    rst $38                                       ; $7912: $ff
    ld de, $00ef                                  ; $7913: $11 $ef $00
    ld [hl], d                                    ; $7916: $72
    xor a                                         ; $7917: $af
    ld [hl+], a                                   ; $7918: $22
    db $fd                                        ; $7919: $fd
    ld bc, $72fe                                  ; $791a: $01 $fe $72
    xor a                                         ; $791d: $af
    nop                                           ; $791e: $00
    inc a                                         ; $791f: $3c
    ld hl, sp+$18                                 ; $7920: $f8 $18
    ldh a, [rSVBK]                                ; $7922: $f0 $70
    and b                                         ; $7924: $a0
    ld b, b                                       ; $7925: $40
    and b                                         ; $7926: $a0
    nop                                           ; $7927: $00
    ld b, d                                       ; $7928: $42
    cp a                                          ; $7929: $bf
    dec h                                         ; $792a: $25
    ei                                            ; $792b: $fb
    ld [hl-], a                                   ; $792c: $32
    xor $43                                       ; $792d: $ee $43

jr_0a0_792f:
    cp [hl]                                       ; $792f: $be
    inc b                                         ; $7930: $04
    rrca                                          ; $7931: $0f
    ld b, $07                                     ; $7932: $06 $07
    ld [bc], a                                    ; $7934: $02
    inc bc                                        ; $7935: $03
    ld [bc], a                                    ; $7936: $02
    nop                                           ; $7937: $00
    ld bc, $00ff                                  ; $7938: $01 $ff $00
    or e                                          ; $793b: $b3
    rst $28                                       ; $793c: $ef
    rst $00                                       ; $793d: $c7
    ld a, e                                       ; $793e: $7b
    ld d, l                                       ; $793f: $55
    db $eb                                        ; $7940: $eb
    jp Jump_000_00ff                              ; $7941: $c3 $ff $00


    push bc                                       ; $7944: $c5
    ei                                            ; $7945: $fb
    db $e3                                        ; $7946: $e3
    rst $18                                       ; $7947: $df
    push af                                       ; $7948: $f5
    db $eb                                        ; $7949: $eb
    ld b, b                                       ; $794a: $40
    and b                                         ; $794b: $a0
    dec a                                         ; $794c: $3d
    jr nz, jr_0a0_792f                            ; $794d: $20 $e0

    inc b                                         ; $794f: $04
    ld [$0802], sp                                ; $7950: $08 $02 $08
    inc c                                         ; $7953: $0c

jr_0a0_7954:
    ld [$1025], sp                                ; $7954: $08 $25 $10
    inc bc                                        ; $7957: $03
    ld bc, $2008                                  ; $7958: $01 $08 $20
    ld bc, $0200                                  ; $795b: $01 $00 $02
    ld [$f7db], sp                                ; $795e: $08 $db $f7
    db $db                                        ; $7961: $db
    rst $30                                       ; $7962: $f7
    reti                                          ; $7963: $d9


    add b                                         ; $7964: $80
    inc b                                         ; $7965: $04
    nop                                           ; $7966: $00
    db $db                                        ; $7967: $db
    rst $38                                       ; $7968: $ff
    ei                                            ; $7969: $fb
    rra                                           ; $796a: $1f
    db $db                                        ; $796b: $db
    ccf                                           ; $796c: $3f
    push hl                                       ; $796d: $e5
    ld b, b                                       ; $796e: $40
    dec de                                        ; $796f: $1b
    jr nc, jr_0a0_797a                            ; $7970: $30 $08

    jr nc, jr_0a0_7954                            ; $7972: $30 $e0

    ld e, b                                       ; $7974: $58
    or b                                          ; $7975: $b0
    inc e                                         ; $7976: $1c
    ld hl, sp+$02                                 ; $7977: $f8 $02
    ld a, [hl+]                                   ; $7979: $2a

jr_0a0_797a:
    rst $38                                       ; $797a: $ff
    dec d                                         ; $797b: $15
    ld [$a871], a                                 ; $797c: $ea $71 $a8
    ld h, $08                                     ; $797f: $26 $08
    inc bc                                        ; $7981: $03
    nop                                           ; $7982: $00
    nop                                           ; $7983: $00
    rlca                                          ; $7984: $07
    ld [bc], a                                    ; $7985: $02
    ld c, $07                                     ; $7986: $0e $07
    xor e                                         ; $7988: $ab
    cp $53                                        ; $7989: $fe $53
    nop                                           ; $798b: $00
    xor [hl]                                      ; $798c: $ae
    dec h                                         ; $798d: $25
    ld a, [$2fd1]                                 ; $798e: $fa $d1 $2f
    pop hl                                        ; $7991: $e1
    ccf                                           ; $7992: $3f
    ld b, a                                       ; $7993: $47
    nop                                           ; $7994: $00

jr_0a0_7995:
    cp e                                          ; $7995: $bb
    dec [hl]                                      ; $7996: $35
    db $eb                                        ; $7997: $eb
    inc sp                                        ; $7998: $33
    rst $28                                       ; $7999: $ef
    dec h                                         ; $799a: $25
    ei                                            ; $799b: $fb
    ld b, e                                       ; $799c: $43
    nop                                           ; $799d: $00
    cp a                                          ; $799e: $bf
    scf                                           ; $799f: $37
    db $eb                                        ; $79a0: $eb
    ld b, b                                       ; $79a1: $40
    cp b                                          ; $79a2: $b8
    jr z, jr_0a0_7995                             ; $79a3: $28 $f0

    jr nc, jr_0a0_79a7                            ; $79a5: $30 $00

jr_0a0_79a7:
    ldh [rSVBK], a                                ; $79a7: $e0 $70
    and b                                         ; $79a9: $a0
    ld [bc], a                                    ; $79aa: $02
    db $fc                                        ; $79ab: $fc
    ld [hl], h                                    ; $79ac: $74
    xor e                                         ; $79ad: $ab
    ld [hl+], a                                   ; $79ae: $22
    nop                                           ; $79af: $00
    rst $38                                       ; $79b0: $ff
    ld de, $10ee                                  ; $79b1: $11 $ee $10
    rrca                                          ; $79b4: $0f
    ld b, $03                                     ; $79b5: $06 $03
    ld bc, $0600                                  ; $79b7: $01 $00 $06
    ld [bc], a                                    ; $79ba: $02
    rlca                                          ; $79bb: $07
    inc bc                                        ; $79bc: $03
    ld c, $26                                     ; $79bd: $0e $26
    bit 0, d                                      ; $79bf: $cb $42
    ld [$45bf], sp                                ; $79c1: $08 $bf $45
    cp d                                          ; $79c4: $ba
    ld b, e                                       ; $79c5: $43
    and b                                         ; $79c6: $a0
    nop                                           ; $79c7: $00
    dec [hl]                                      ; $79c8: $35
    db $eb                                        ; $79c9: $eb
    ld b, c                                       ; $79ca: $41
    nop                                           ; $79cb: $00
    cp a                                          ; $79cc: $bf
    rla                                           ; $79cd: $17
    db $eb                                        ; $79ce: $eb
    dec h                                         ; $79cf: $25
    ei                                            ; $79d0: $fb
    dec d                                         ; $79d1: $15
    db $eb                                        ; $79d2: $eb
    ld [hl], e                                    ; $79d3: $73
    ld e, c                                       ; $79d4: $59
    xor a                                         ; $79d5: $af
    add a                                         ; $79d6: $87
    dec c                                         ; $79d7: $0d
    xor d                                         ; $79d8: $aa
    ld b, c                                       ; $79d9: $41
    ld l, $e6                                     ; $79da: $2e $e6
    ld c, $01                                     ; $79dc: $0e $01
    ld bc, $0386                                  ; $79de: $01 $86 $03
    add b                                         ; $79e1: $80
    ld de, $bf38                                  ; $79e2: $11 $38 $bf
    rst $38                                       ; $79e5: $ff
    dec h                                         ; $79e6: $25
    db $db                                        ; $79e7: $db
    ld e, b                                       ; $79e8: $58
    and a                                         ; $79e9: $a7
    jr nc, jr_0a0_79f4                            ; $79ea: $30 $08

    rst $08                                       ; $79ec: $cf
    ld h, b                                       ; $79ed: $60
    sbc a                                         ; $79ee: $9f
    dec b                                         ; $79ef: $05
    sbc [hl]                                      ; $79f0: $9e
    inc bc                                        ; $79f1: $03
    rst $10                                       ; $79f2: $d7
    rst $38                                       ; $79f3: $ff

jr_0a0_79f4:
    adc $00                                       ; $79f4: $ce $00
    rst $38                                       ; $79f6: $ff
    add h                                         ; $79f7: $84
    ei                                            ; $79f8: $fb
    cp [hl]                                       ; $79f9: $be
    pop bc                                        ; $79fa: $c1
    jr @-$17                                      ; $79fb: $18 $e7

    add h                                         ; $79fd: $84
    ld [$81fb], sp                                ; $79fe: $08 $fb $81
    rst $38                                       ; $7a01: $ff
    and d                                         ; $7a02: $a2

Call_0a0_7a03:
    or c                                          ; $7a03: $b1
    rlca                                          ; $7a04: $07
    di                                            ; $7a05: $f3
    rst $38                                       ; $7a06: $ff
    xor $00                                       ; $7a07: $ee $00
    ld de, $af50                                  ; $7a09: $11 $50 $af
    ld a, [hl+]                                   ; $7a0c: $2a
    db $dd                                        ; $7a0d: $dd
    sub h                                         ; $7a0e: $94
    ei                                            ; $7a0f: $fb
    add hl, bc                                    ; $7a10: $09
    ld [$b4fe], sp                                ; $7a11: $08 $fe $b4
    rst $38                                       ; $7a14: $ff
    ld a, a                                       ; $7a15: $7f
    cp [hl]                                       ; $7a16: $be
    ld [bc], a                                    ; $7a17: $02
    ld [hl], l                                    ; $7a18: $75
    adc e                                         ; $7a19: $8b
    jr z, jr_0a0_7a1c                             ; $7a1a: $28 $00

jr_0a0_7a1c:
    rst $10                                       ; $7a1c: $d7
    ld b, c                                       ; $7a1d: $41
    rst $38                                       ; $7a1e: $ff
    ld [c], a                                     ; $7a1f: $e2
    rst $38                                       ; $7a20: $ff
    ld b, c                                       ; $7a21: $41
    rst $38                                       ; $7a22: $ff
    xor l                                         ; $7a23: $ad
    and b                                         ; $7a24: $a0
    stop                                          ; $7a25: $10 $00
    rst $38                                       ; $7a27: $ff
    sub h                                         ; $7a28: $94
    ld bc, $ff87                                  ; $7a29: $01 $87 $ff
    sub e                                         ; $7a2c: $93
    rst $28                                       ; $7a2d: $ef
    dec b                                         ; $7a2e: $05
    ld [bc], a                                    ; $7a2f: $02
    db $fd                                        ; $7a30: $fd
    sub d                                         ; $7a31: $92
    rst $28                                       ; $7a32: $ef
    scf                                           ; $7a33: $37
    rst $08                                       ; $7a34: $cf
    sub b                                         ; $7a35: $90
    pop de                                        ; $7a36: $d1
    inc bc                                        ; $7a37: $03
    sbc a                                         ; $7a38: $9f
    nop                                           ; $7a39: $00
    rst $38                                       ; $7a3a: $ff
    adc [hl]                                      ; $7a3b: $8e
    rst $38                                       ; $7a3c: $ff
    ld a, [de]                                    ; $7a3d: $1a
    ei                                            ; $7a3e: $fb
    ld c, [hl]                                    ; $7a3f: $4e
    cp a                                          ; $7a40: $bf
    ld c, d                                       ; $7a41: $4a
    ld [bc], a                                    ; $7a42: $02
    cp e                                          ; $7a43: $bb
    ld c, h                                       ; $7a44: $4c
    cp a                                          ; $7a45: $bf
    ld l, d                                       ; $7a46: $6a
    sbc e                                         ; $7a47: $9b
    rst $38                                       ; $7a48: $ff
    and d                                         ; $7a49: $a2
    ld b, $1e                                     ; $7a4a: $06 $1e
    nop                                           ; $7a4c: $00
    rst $38                                       ; $7a4d: $ff
    cp a                                          ; $7a4e: $bf
    ld a, [hl]                                    ; $7a4f: $7e
    inc d                                         ; $7a50: $14
    rst $30                                       ; $7a51: $f7
    cp a                                          ; $7a52: $bf
    ld a, [hl]                                    ; $7a53: $7e
    sub l                                         ; $7a54: $95
    ld [bc], a                                    ; $7a55: $02
    halt                                          ; $7a56: $76
    or l                                          ; $7a57: $b5
    halt                                          ; $7a58: $76
    rst $38                                       ; $7a59: $ff
    rst $38                                       ; $7a5a: $ff
    inc hl                                        ; $7a5b: $23
    ld a, [hl-]                                   ; $7a5c: $3a
    nop                                           ; $7a5d: $00
    inc bc                                        ; $7a5e: $03
    add hl, bc                                    ; $7a5f: $09
    rst $38                                       ; $7a60: $ff
    add hl, bc                                    ; $7a61: $09
    rst $30                                       ; $7a62: $f7
    ld b, e                                       ; $7a63: $43
    inc b                                         ; $7a64: $04
    nop                                           ; $7a65: $00
    ld d, e                                       ; $7a66: $53
    rst $28                                       ; $7a67: $ef
    sub b                                         ; $7a68: $90
    ld e, a                                       ; $7a69: $5f
    nop                                           ; $7a6a: $00
    call nc, $002b                                ; $7a6b: $d4 $2b $00
    nop                                           ; $7a6e: $00
    inc d                                         ; $7a6f: $14
    ld [$1426], sp                                ; $7a70: $08 $26 $14
    inc b                                         ; $7a73: $04
    jr nc, jr_0a0_7a88                            ; $7a74: $30 $12

    ld [de], a                                    ; $7a76: $12
    ld [hl-], a                                   ; $7a77: $32
    ld [hl+], a                                   ; $7a78: $22
    ld bc, $7510                                  ; $7a79: $01 $10 $75
    add b                                         ; $7a7c: $80
    nop                                           ; $7a7d: $00
    ld a, [hl]                                    ; $7a7e: $7e
    add b                                         ; $7a7f: $80
    xor a                                         ; $7a80: $af
    ld d, b                                       ; $7a81: $50
    rst $10                                       ; $7a82: $d7
    jr z, @+$80                                   ; $7a83: $28 $7e

    add c                                         ; $7a85: $81
    ld [bc], a                                    ; $7a86: $02
    or l                                          ; $7a87: $b5

jr_0a0_7a88:
    ld c, d                                       ; $7a88: $4a
    ld a, [$b705]                                 ; $7a89: $fa $05 $b7
    ld c, b                                       ; $7a8c: $48
    ret nc                                        ; $7a8d: $d0

    ld c, $73                                     ; $7a8e: $0e $73
    jr nz, jr_0a0_7ab1                            ; $7a90: $20 $1f

    xor l                                         ; $7a92: $ad
    ret nc                                        ; $7a93: $d0

    ld d, $9c                                     ; $7a94: $16 $9c
    ld a, a                                       ; $7a96: $7f
    xor $3f                                       ; $7a97: $ee $3f
    rst $38                                       ; $7a99: $ff
    inc b                                         ; $7a9a: $04
    rst $38                                       ; $7a9b: $ff
    add b                                         ; $7a9c: $80
    rst $38                                       ; $7a9d: $ff
    xor d                                         ; $7a9e: $aa
    push de                                       ; $7a9f: $d5
    jr nc, jr_0a0_7acf                            ; $7aa0: $30 $2d

    pop bc                                        ; $7aa2: $c1
    cp a                                          ; $7aa3: $bf
    nop                                           ; $7aa4: $00
    ldh [rIE], a                                  ; $7aa5: $e0 $ff
    sub a                                         ; $7aa7: $97
    add sp, $2b                                   ; $7aa8: $e8 $2b

jr_0a0_7aaa:
    call nc, $eb94                                ; $7aaa: $d4 $94 $eb
    inc d                                         ; $7aad: $14
    ld c, b                                       ; $7aae: $48
    rst $30                                       ; $7aaf: $f7
    and b                                         ; $7ab0: $a0

jr_0a0_7ab1:
    jp c, $ff07                                   ; $7ab1: $da $07 $ff

    ld a, b                                       ; $7ab4: $78
    ld b, $f9                                     ; $7ab5: $06 $f9
    rlca                                          ; $7ab7: $07
    ld de, $2bd5                                  ; $7ab8: $11 $d5 $2b
    add b                                         ; $7abb: $80
    add d                                         ; $7abc: $82
    ld b, $00                                     ; $7abd: $06 $00
    rst $38                                       ; $7abf: $ff
    ld c, e                                       ; $7ac0: $4b
    and $07                                       ; $7ac1: $e6 $07
    nop                                           ; $7ac3: $00
    add sp, -$01                                  ; $7ac4: $e8 $ff
    rst $10                                       ; $7ac6: $d7
    add sp, -$52                                  ; $7ac7: $e8 $ae
    pop de                                        ; $7ac9: $d1
    dec e                                         ; $7aca: $1d
    ld [c], a                                     ; $7acb: $e2
    nop                                           ; $7acc: $00
    xor b                                         ; $7acd: $a8
    rst $10                                       ; $7ace: $d7

jr_0a0_7acf:
    dec e                                         ; $7acf: $1d
    ld [c], a                                     ; $7ad0: $e2
    jr z, jr_0a0_7aaa                             ; $7ad1: $28 $d7

    add b                                         ; $7ad3: $80
    rst $38                                       ; $7ad4: $ff
    nop                                           ; $7ad5: $00
    rlca                                          ; $7ad6: $07
    rst $38                                       ; $7ad7: $ff
    sub e                                         ; $7ad8: $93
    ld l, a                                       ; $7ad9: $6f
    inc hl                                        ; $7ada: $23
    rst $18                                       ; $7adb: $df
    inc b                                         ; $7adc: $04
    ld a, [$2140]                                 ; $7add: $fa $40 $21
    inc b                                         ; $7ae0: $04
    stop                                          ; $7ae1: $10 $00
    cp $c3                                        ; $7ae3: $fe $c3
    rst $38                                       ; $7ae5: $ff
    and c                                         ; $7ae6: $a1
    rst $18                                       ; $7ae7: $df
    ld b, d                                       ; $7ae8: $42
    ld e, c                                       ; $7ae9: $59
    db $10                                        ; $7aea: $10
    ld bc, $8779                                  ; $7aeb: $01 $79 $87
    ld [hl], b                                    ; $7aee: $70
    adc a                                         ; $7aef: $8f
    inc b                                         ; $7af0: $04
    ld [$0039], sp                                ; $7af1: $08 $39 $00
    rst $00                                       ; $7af4: $c7
    ld [hl], b                                    ; $7af5: $70
    adc a                                         ; $7af6: $8f
    ld sp, $71cf                                  ; $7af7: $31 $cf $71
    adc a                                         ; $7afa: $8f
    ld hl, $df40                                  ; $7afb: $21 $40 $df
    inc b                                         ; $7afe: $04
    ld [$fe00], sp                                ; $7aff: $08 $00 $fe
    set 7, a                                      ; $7b02: $cb $ff
    add l                                         ; $7b04: $85
    db $fd                                        ; $7b05: $fd
    nop                                           ; $7b06: $00
    ld b, d                                       ; $7b07: $42
    cp [hl]                                       ; $7b08: $be
    add c                                         ; $7b09: $81
    ld a, a                                       ; $7b0a: $7f
    jp nz, $813e                                  ; $7b0b: $c2 $3e $81

    ld a, a                                       ; $7b0e: $7f
    nop                                           ; $7b0f: $00

jr_0a0_7b10:
    add c                                         ; $7b10: $81
    ld a, a                                       ; $7b11: $7f
    pop bc                                        ; $7b12: $c1
    ccf                                           ; $7b13: $3f
    and b                                         ; $7b14: $a0
    rst $38                                       ; $7b15: $ff
    ld d, l                                       ; $7b16: $55
    ld a, a                                       ; $7b17: $7f
    add b                                         ; $7b18: $80
    ld [hl], h                                    ; $7b19: $74
    ld [$d02f], sp                                ; $7b1a: $08 $2f $d0
    dec d                                         ; $7b1d: $15
    ld [$f788], a                                 ; $7b1e: $ea $88 $f7
    ld d, b                                       ; $7b21: $50
    inc b                                         ; $7b22: $04
    rst $28                                       ; $7b23: $ef
    nop                                           ; $7b24: $00
    db $fc                                        ; $7b25: $fc
    ld l, b                                       ; $7b26: $68
    add sp, $74                                   ; $7b27: $e8 $74
    ld [$2bd4], sp                                ; $7b29: $08 $d4 $2b
    inc bc                                        ; $7b2c: $03
    ld [bc], a                                    ; $7b2d: $02
    db $fd                                        ; $7b2e: $fd
    jr nz, jr_0a0_7b10                            ; $7b2f: $20 $df

    add b                                         ; $7b31: $80
    ld a, a                                       ; $7b32: $7f
    add [hl]                                      ; $7b33: $86
    ld [$0cd5], sp                                ; $7b34: $08 $d5 $0c
    nop                                           ; $7b37: $00
    and b                                         ; $7b38: $a0
    rst $38                                       ; $7b39: $ff
    ld d, b                                       ; $7b3a: $50
    ld a, a                                       ; $7b3b: $7f
    xor d                                         ; $7b3c: $aa
    cp a                                          ; $7b3d: $bf
    ld d, l                                       ; $7b3e: $55
    ld d, a                                       ; $7b3f: $57
    stop                                          ; $7b40: $10 $00
    rst $38                                       ; $7b42: $ff
    ld c, d                                       ; $7b43: $4a
    inc de                                        ; $7b44: $13
    ld b, [hl]                                    ; $7b45: $46
    ld b, b                                       ; $7b46: $40
    rst $38                                       ; $7b47: $ff
    add c                                         ; $7b48: $81
    ld a, a                                       ; $7b49: $7f
    dec d                                         ; $7b4a: $15
    ld b, c                                       ; $7b4b: $41
    cp a                                          ; $7b4c: $bf
    inc bc                                        ; $7b4d: $03
    ld b, $00                                     ; $7b4e: $06 $00
    ld [bc], a                                    ; $7b50: $02
    sbc a                                         ; $7b51: $9f
    ld c, $ff                                     ; $7b52: $0e $ff
    ld b, $08                                     ; $7b54: $06 $08
    add b                                         ; $7b56: $80
    inc b                                         ; $7b57: $04
    jr jr_0a0_7b5e                                ; $7b58: $18 $04

    cp $03                                        ; $7b5a: $fe $03
    rst $38                                       ; $7b5c: $ff
    inc b                                         ; $7b5d: $04

jr_0a0_7b5e:
    db $fc                                        ; $7b5e: $fc
    ld a, [hl+]                                   ; $7b5f: $2a
    ld d, b                                       ; $7b60: $50
    ld a, [$0473]                                 ; $7b61: $fa $73 $04
    dec d                                         ; $7b64: $15
    inc b                                         ; $7b65: $04

jr_0a0_7b66:
    ld c, b                                       ; $7b66: $48
    add e                                         ; $7b67: $83
    rst $38                                       ; $7b68: $ff
    ld b, c                                       ; $7b69: $41

jr_0a0_7b6a:
    cp a                                          ; $7b6a: $bf
    add b                                         ; $7b6b: $80
    ld d, b                                       ; $7b6c: $50
    ccf                                           ; $7b6d: $3f
    rst $38                                       ; $7b6e: $ff
    rst $38                                       ; $7b6f: $ff
    ld [hl], $cf                                  ; $7b70: $36 $cf
    or b                                          ; $7b72: $b0
    call $0136                                    ; $7b73: $cd $36 $01
    rst $08                                       ; $7b76: $cf
    ld [hl], d                                    ; $7b77: $72
    adc a                                         ; $7b78: $8f
    ld [hl-], a                                   ; $7b79: $32
    rst $08                                       ; $7b7a: $cf
    ld a, d                                       ; $7b7b: $7a
    add a                                         ; $7b7c: $87
    inc b                                         ; $7b7d: $04
    ld [$c800], sp                                ; $7b7e: $08 $00 $c8
    dec sp                                        ; $7b81: $3b
    ld l, d                                       ; $7b82: $6a
    sbc e                                         ; $7b83: $9b
    add sp, $1b                                   ; $7b84: $e8 $1b
    ld l, d                                       ; $7b86: $6a
    sbc e                                         ; $7b87: $9b
    nop                                           ; $7b88: $00
    ld [$ea1b], a                                 ; $7b89: $ea $1b $ea
    dec de                                        ; $7b8c: $1b
    jp z, $ea3b                                   ; $7b8d: $ca $3b $ea

    dec de                                        ; $7b90: $1b
    ld bc, $36d5                                  ; $7b91: $01 $d5 $36
    sub l                                         ; $7b94: $95
    halt                                          ; $7b95: $76
    push de                                       ; $7b96: $d5
    ld [hl], $91                                  ; $7b97: $36 $91
    inc b                                         ; $7b99: $04
    jr nc, jr_0a0_7b9c                            ; $7b9a: $30 $00

jr_0a0_7b9c:
    ld [$58f6], sp                                ; $7b9c: $08 $f6 $58
    and $08                                       ; $7b9f: $e6 $08
    or $59                                        ; $7ba1: $f6 $59
    rst $20                                       ; $7ba3: $e7
    inc b                                         ; $7ba4: $04
    ld c, b                                       ; $7ba5: $48
    or $5d                                        ; $7ba6: $f6 $5d
    db $e3                                        ; $7ba8: $e3
    ret z                                         ; $7ba9: $c8

    inc b                                         ; $7baa: $04
    nop                                           ; $7bab: $00
    ld [hl-], a                                   ; $7bac: $32
    rst $08                                       ; $7bad: $cf
    jr nz, jr_0a0_7b6a                            ; $7bae: $20 $ba

    rst $00                                       ; $7bb0: $c7
    inc b                                         ; $7bb1: $04
    jr jr_0a0_7b66                                ; $7bb2: $18 $b2

    rst $08                                       ; $7bb4: $cf
    sub d                                         ; $7bb5: $92
    rst $28                                       ; $7bb6: $ef
    or d                                          ; $7bb7: $b2
    nop                                           ; $7bb8: $00
    rst $08                                       ; $7bb9: $cf
    jp z, $fa3b                                   ; $7bba: $ca $3b $fa

    dec de                                        ; $7bbd: $1b
    ld c, d                                       ; $7bbe: $4a
    cp e                                          ; $7bbf: $bb
    jp c, $3b40                                   ; $7bc0: $da $40 $3b

    inc b                                         ; $7bc3: $04
    jr @-$2c                                      ; $7bc4: $18 $d2

    inc sp                                        ; $7bc6: $33
    call nc, $d137                                ; $7bc7: $d4 $37 $d1
    ld [hl], $00                                  ; $7bca: $36 $00
    ret nc                                        ; $7bcc: $d0

    scf                                           ; $7bcd: $37
    push de                                       ; $7bce: $d5
    ld [hl], $d4                                  ; $7bcf: $36 $d4
    scf                                           ; $7bd1: $37
    call nc, Call_000_0037                        ; $7bd2: $d4 $37 $00
    rst $10                                       ; $7bd5: $d7
    ld [hl], $d5                                  ; $7bd6: $36 $d5
    ld [hl], $c8                                  ; $7bd8: $36 $c8
    or $6d                                        ; $7bda: $f6 $6d
    di                                            ; $7bdc: $f3
    nop                                           ; $7bdd: $00
    inc c                                         ; $7bde: $0c
    or d                                          ; $7bdf: $b2
    db $ed                                        ; $7be0: $ed
    di                                            ; $7be1: $f3
    ld c, l                                       ; $7be2: $4d
    di                                            ; $7be3: $f3
    dec l                                         ; $7be4: $2d
    or e                                          ; $7be5: $b3
    nop                                           ; $7be6: $00
    ld c, l                                       ; $7be7: $4d
    di                                            ; $7be8: $f3
    dec c                                         ; $7be9: $0d
    or e                                          ; $7bea: $b3
    sub d                                         ; $7beb: $92
    rst $28                                       ; $7bec: $ef
    or [hl]                                       ; $7bed: $b6
    rst $08                                       ; $7bee: $cf
    nop                                           ; $7bef: $00
    ret nc                                        ; $7bf0: $d0

    db $ed                                        ; $7bf1: $ed
    sub a                                         ; $7bf2: $97
    rst $28                                       ; $7bf3: $ef
    ret nz                                        ; $7bf4: $c0

    db $fd                                        ; $7bf5: $fd
    rst $10                                       ; $7bf6: $d7
    rst $28                                       ; $7bf7: $ef
    nop                                           ; $7bf8: $00
    call z, $fdfd                                 ; $7bf9: $cc $fd $fd
    db $fd                                        ; $7bfc: $fd
    ld c, d                                       ; $7bfd: $4a
    cp e                                          ; $7bfe: $bb
    ld d, d                                       ; $7bff: $52

Call_0a0_7c00:
    or e                                          ; $7c00: $b3
    db $10                                        ; $7c01: $10
    ld e, d                                       ; $7c02: $5a
    cp e                                          ; $7c03: $bb
    ld b, b                                       ; $7c04: $40
    inc b                                         ; $7c05: $04
    nop                                           ; $7c06: $00
    ld d, b                                       ; $7c07: $50
    or e                                          ; $7c08: $b3
    ld [de], a                                    ; $7c09: $12
    di                                            ; $7c0a: $f3
    jr nz, jr_0a0_7c65                            ; $7c0b: $20 $58

    cp e                                          ; $7c0d: $bb
    inc [hl]                                      ; $7c0e: $34
    ld [$3fde], sp                                ; $7c0f: $08 $de $3f
    call nz, $de37                                ; $7c12: $c4 $37 $de
    nop                                           ; $7c15: $00
    ccf                                           ; $7c16: $3f
    add $37                                       ; $7c17: $c6 $37
    sub d                                         ; $7c19: $92
    ld [hl], e                                    ; $7c1a: $73
    add $37                                       ; $7c1b: $c6 $37
    db $e4                                        ; $7c1d: $e4
    ld [$0dfb], sp                                ; $7c1e: $08 $fb $0d
    or e                                          ; $7c21: $b3
    push hl                                       ; $7c22: $e5
    inc b                                         ; $7c23: $04
    nop                                           ; $7c24: $00
    inc l                                         ; $7c25: $2c
    or e                                          ; $7c26: $b3
    and l                                         ; $7c27: $a5
    inc b                                         ; $7c28: $04
    cp e                                          ; $7c29: $bb
    inc l                                         ; $7c2a: $2c
    or e                                          ; $7c2b: $b3
    xor l                                         ; $7c2c: $ad
    or e                                          ; $7c2d: $b3
    sbc e                                         ; $7c2e: $9b
    ld a, [hl+]                                   ; $7c2f: $2a
    rst $00                                       ; $7c30: $c7
    rst $38                                       ; $7c31: $ff
    nop                                           ; $7c32: $00
    ld b, l                                       ; $7c33: $45
    add e                                         ; $7c34: $83
    add d                                         ; $7c35: $82
    ld bc, $0102                                  ; $7c36: $01 $02 $01
    ld [de], a                                    ; $7c39: $12
    di                                            ; $7c3a: $f3
    db $10                                        ; $7c3b: $10
    ld d, h                                       ; $7c3c: $54
    or a                                          ; $7c3d: $b7
    sub d                                         ; $7c3e: $92
    inc b                                         ; $7c3f: $04
    nop                                           ; $7c40: $00
    and d                                         ; $7c41: $a2
    db $e3                                        ; $7c42: $e3
    or h                                          ; $7c43: $b4
    rst $30                                       ; $7c44: $f7
    ld [$e3e2], sp                                ; $7c45: $08 $e2 $e3
    ld d, [hl]                                    ; $7c48: $56
    ld d, a                                       ; $7c49: $57
    inc [hl]                                      ; $7c4a: $34
    ld [$7b9a], sp                                ; $7c4b: $08 $9a $7b
    ld d, b                                       ; $7c4e: $50
    nop                                           ; $7c4f: $00
    or c                                          ; $7c50: $b1
    sbc d                                         ; $7c51: $9a
    ld a, e                                       ; $7c52: $7b
    inc [hl]                                      ; $7c53: $34
    push af                                       ; $7c54: $f5
    sbc d                                         ; $7c55: $9a
    ld a, e                                       ; $7c56: $7b
    dec [hl]                                      ; $7c57: $35
    inc b                                         ; $7c58: $04
    push af                                       ; $7c59: $f5
    inc b                                         ; $7c5a: $04
    sbc e                                         ; $7c5b: $9b
    xor l                                         ; $7c5c: $ad
    or e                                          ; $7c5d: $b3
    inc b                                         ; $7c5e: $04
    ld [$9b84], sp                                ; $7c5f: $08 $84 $9b
    ld [bc], a                                    ; $7c62: $02
    add c                                         ; $7c63: $81
    sbc a                                         ; $7c64: $9f

jr_0a0_7c65:
    add h                                         ; $7c65: $84
    sbc e                                         ; $7c66: $9b
    sub c                                         ; $7c67: $91
    sbc a                                         ; $7c68: $9f
    or h                                          ; $7c69: $b4
    ld [$0090], sp                                ; $7c6a: $08 $90 $00
    db $ed                                        ; $7c6d: $ed
    sub e                                         ; $7c6e: $93
    rst $28                                       ; $7c6f: $ef
    sub b                                         ; $7c70: $90
    db $ed                                        ; $7c71: $ed
    add a                                         ; $7c72: $87
    rst $38                                       ; $7c73: $ff
    sub b                                         ; $7c74: $90
    db $10                                        ; $7c75: $10
    db $ed                                        ; $7c76: $ed
    add l                                         ; $7c77: $85
    db $fd                                        ; $7c78: $fd
    ld [$9508], sp                                ; $7c79: $08 $08 $95
    db $ed                                        ; $7c7c: $ed
    push bc                                       ; $7c7d: $c5
    db $fd                                        ; $7c7e: $fd
    nop                                           ; $7c7f: $00
    sub l                                         ; $7c80: $95
    db $ed                                        ; $7c81: $ed
    call nz, $a4fc                                ; $7c82: $c4 $fc $a4
    db $fc                                        ; $7c85: $fc
    ret z                                         ; $7c86: $c8

    ld hl, sp-$80                                 ; $7c87: $f8 $80
    jr nc, jr_0a0_7cb3                            ; $7c89: $30 $28

    add l                                         ; $7c8b: $85
    sbc e                                         ; $7c8c: $9b
    ld bc, $961f                                  ; $7c8d: $01 $1f $96
    sbc d                                         ; $7c90: $9a
    add hl, bc                                    ; $7c91: $09
    nop                                           ; $7c92: $00
    add hl, bc                                    ; $7c93: $09
    ld h, $22                                     ; $7c94: $26 $22
    ld l, $26                                     ; $7c96: $2e $26
    ld a, [hl-]                                   ; $7c98: $3a
    ld a, [hl+]                                   ; $7c99: $2a
    ld [hl-], a                                   ; $7c9a: $32
    add [hl]                                      ; $7c9b: $86
    ld e, [hl]                                    ; $7c9c: $5e
    ld [de], a                                    ; $7c9d: $12
    inc hl                                        ; $7c9e: $23
    inc hl                                        ; $7c9f: $23
    inc h                                         ; $7ca0: $24
    daa                                           ; $7ca1: $27
    sub l                                         ; $7ca2: $95
    inc bc                                        ; $7ca3: $03
    ld bc, $8030                                  ; $7ca4: $01 $30 $80
    nop                                           ; $7ca7: $00
    add b                                         ; $7ca8: $80
    db $10                                        ; $7ca9: $10
    ldh a, [rNR13]                                ; $7caa: $f0 $13
    rst $28                                       ; $7cac: $ef
    xor h                                         ; $7cad: $ac
    ld d, e                                       ; $7cae: $53
    ld e, d                                       ; $7caf: $5a
    nop                                           ; $7cb0: $00
    and l                                         ; $7cb1: $a5
    xor a                                         ; $7cb2: $af

jr_0a0_7cb3:
    nop                                           ; $7cb3: $00
    cp d                                          ; $7cb4: $ba
    ld b, l                                       ; $7cb5: $45
    pop de                                        ; $7cb6: $d1
    ld l, $48                                     ; $7cb7: $2e $48
    nop                                           ; $7cb9: $00
    rlca                                          ; $7cba: $07
    and a                                         ; $7cbb: $a7
    inc bc                                        ; $7cbc: $03
    jr nz, jr_0a0_7ce6                            ; $7cbd: $20 $27

    jr z, @+$31                                   ; $7cbf: $28 $2f

    jr nc, jr_0a0_7cc3                            ; $7cc1: $30 $00

jr_0a0_7cc3:
    ccf                                           ; $7cc3: $3f
    jr z, jr_0a0_7cfd                             ; $7cc4: $28 $37

    dec [hl]                                      ; $7cc6: $35
    ld a, [hl-]                                   ; $7cc7: $3a
    ld a, [hl+]                                   ; $7cc8: $2a
    dec a                                         ; $7cc9: $3d
    dec a                                         ; $7cca: $3d
    nop                                           ; $7ccb: $00
    ccf                                           ; $7ccc: $3f
    daa                                           ; $7ccd: $27
    daa                                           ; $7cce: $27
    inc b                                         ; $7ccf: $04
    db $fc                                        ; $7cd0: $fc
    ld [bc], a                                    ; $7cd1: $02
    cp $02                                        ; $7cd2: $fe $02

jr_0a0_7cd4:
    jr nz, jr_0a0_7cd4                            ; $7cd4: $20 $fe

    ld b, $02                                     ; $7cd6: $06 $02
    nop                                           ; $7cd8: $00
    xor d                                         ; $7cd9: $aa
    ld e, d                                       ; $7cda: $5a
    ld a, [de]                                    ; $7cdb: $1a
    ld a, [$02f2]                                 ; $7cdc: $fa $f2 $02
    ld a, [c]                                     ; $7cdf: $f2
    ld b, e                                       ; $7ce0: $43
    ld bc, $01a2                                  ; $7ce1: $01 $a2 $01
    db $f4                                        ; $7ce4: $f4
    and b                                         ; $7ce5: $a0

jr_0a0_7ce6:
    inc c                                         ; $7ce6: $0c
    ld e, a                                       ; $7ce7: $5f
    nop                                           ; $7ce8: $00
    ld c, e                                       ; $7ce9: $4b
    cp h                                          ; $7cea: $bc
    cp h                                          ; $7ceb: $bc
    ld e, a                                       ; $7cec: $5f
    rst $08                                       ; $7ced: $cf
    ccf                                           ; $7cee: $3f
    ld hl, $5821                                  ; $7cef: $21 $21 $58
    jr nz, jr_0a0_7cf5                            ; $7cf2: $20 $01

    db $10                                        ; $7cf4: $10

jr_0a0_7cf5:
    ld h, b                                       ; $7cf5: $60
    ld bc, $a000                                  ; $7cf6: $01 $00 $a0
    dec c                                         ; $7cf9: $0d

jr_0a0_7cfa:
    jp nz, Jump_0a0_43c2                          ; $7cfa: $c2 $c2 $43

jr_0a0_7cfd:
    xor b                                         ; $7cfd: $a8
    ld bc, $4000                                  ; $7cfe: $01 $00 $40
    ld bc, $c010                                  ; $7d01: $01 $10 $c0
    ld bc, $5d00                                  ; $7d04: $01 $00 $5d
    and d                                         ; $7d07: $a2
    ld [$0500], a                                 ; $7d08: $ea $00 $05
    cp $00                                        ; $7d0b: $fe $00
    rst $10                                       ; $7d0d: $d7
    jr nz, jr_0a0_7cfa                            ; $7d0e: $20 $ea

    dec b                                         ; $7d10: $05
    ld [hl], l                                    ; $7d11: $75
    nop                                           ; $7d12: $00
    adc e                                         ; $7d13: $8b
    xor [hl]                                      ; $7d14: $ae
    ld a, a                                       ; $7d15: $7f
    cp l                                          ; $7d16: $bd
    rra                                           ; $7d17: $1f
    rst $38                                       ; $7d18: $ff
    nop                                           ; $7d19: $00
    xor [hl]                                      ; $7d1a: $ae
    nop                                           ; $7d1b: $00
    ld d, c                                       ; $7d1c: $51
    ld [hl], l                                    ; $7d1d: $75
    adc d                                         ; $7d1e: $8a
    rst $00                                       ; $7d1f: $c7
    inc bc                                        ; $7d20: $03
    ld d, e                                       ; $7d21: $53
    ld bc, $08fd                                  ; $7d22: $01 $fd $08
    inc bc                                        ; $7d25: $03
    di                                            ; $7d26: $f3
    rrca                                          ; $7d27: $0f
    sub [hl]                                      ; $7d28: $96
    db $10                                        ; $7d29: $10
    rlca                                          ; $7d2a: $07
    db $dd                                        ; $7d2b: $dd
    inc bc                                        ; $7d2c: $03
    ld l, h                                       ; $7d2d: $6c
    nop                                           ; $7d2e: $00
    sbc a                                         ; $7d2f: $9f
    inc sp                                        ; $7d30: $33
    db $fc                                        ; $7d31: $fc
    xor [hl]                                      ; $7d32: $ae
    pop de                                        ; $7d33: $d1
    sub h                                         ; $7d34: $94
    db $eb                                        ; $7d35: $eb
    ret nz                                        ; $7d36: $c0

    ld [bc], a                                    ; $7d37: $02
    rst $38                                       ; $7d38: $ff
    ld [$7bff], a                                 ; $7d39: $ea $ff $7b
    rra                                           ; $7d3c: $1f
    ld a, a                                       ; $7d3d: $7f
    ld b, d                                       ; $7d3e: $42
    inc bc                                        ; $7d3f: $03
    sbc a                                         ; $7d40: $9f
    nop                                           ; $7d41: $00
    ld a, a                                       ; $7d42: $7f
    ld c, a                                       ; $7d43: $4f
    cp a                                          ; $7d44: $bf
    cpl                                           ; $7d45: $2f
    rst $38                                       ; $7d46: $ff
    ld e, c                                       ; $7d47: $59
    ldh a, [$f7]                                  ; $7d48: $f0 $f7
    inc sp                                        ; $7d4a: $33
    ld hl, sp-$7f                                 ; $7d4b: $f8 $81
    add sp, $12                                   ; $7d4d: $e8 $12
    ldh a, [$2a]                                  ; $7d4f: $f0 $2a
    rst $38                                       ; $7d51: $ff
    rst $38                                       ; $7d52: $ff
    inc [hl]                                      ; $7d53: $34
    add hl, bc                                    ; $7d54: $09
    inc b                                         ; $7d55: $04
    ld c, b                                       ; $7d56: $48
    nop                                           ; $7d57: $00
    add b                                         ; $7d58: $80
    rst $38                                       ; $7d59: $ff
    ccf                                           ; $7d5a: $3f
    ret nz                                        ; $7d5b: $c0

    cp d                                          ; $7d5c: $ba
    ret nz                                        ; $7d5d: $c0

    ld e, a                                       ; $7d5e: $5f
    and b                                         ; $7d5f: $a0
    nop                                           ; $7d60: $00
    sbc h                                         ; $7d61: $9c
    cp a                                          ; $7d62: $bf
    ld a, [bc]                                    ; $7d63: $0a
    or l                                          ; $7d64: $b5
    xor a                                         ; $7d65: $af
    sub b                                         ; $7d66: $90
    rrca                                          ; $7d67: $0f
    sub b                                         ; $7d68: $90
    ld b, h                                       ; $7d69: $44
    nop                                           ; $7d6a: $00
    ld h, d                                       ; $7d6b: $62
    rlca                                          ; $7d6c: $07
    rla                                           ; $7d6d: $17
    nop                                           ; $7d6e: $00
    ld [$0766], a                                 ; $7d6f: $ea $66 $07
    dec d                                         ; $7d72: $15
    rst $38                                       ; $7d73: $ff
    inc [hl]                                      ; $7d74: $34
    push de                                       ; $7d75: $d5
    ld a, [hl+]                                   ; $7d76: $2a
    ld c, $0c                                     ; $7d77: $0e $0c
    ld [hl], d                                    ; $7d79: $72
    rrca                                          ; $7d7a: $0f
    adc d                                         ; $7d7b: $8a
    halt                                          ; $7d7c: $76
    rlca                                          ; $7d7d: $07
    jp nc, Jump_000_08fd                          ; $7d7e: $d2 $fd $08

    rrca                                          ; $7d81: $0f
    ldh a, [rIE]                                  ; $7d82: $f0 $ff
    nop                                           ; $7d84: $00
    ld [hl], h                                    ; $7d85: $74
    add hl, bc                                    ; $7d86: $09
    cp d                                          ; $7d87: $ba
    ld b, l                                       ; $7d88: $45
    ld b, h                                       ; $7d89: $44
    ret nc                                        ; $7d8a: $d0

    ld a, h                                       ; $7d8b: $7c
    ld de, $0980                                  ; $7d8c: $11 $80 $09
    adc a                                         ; $7d8f: $8f
    inc [hl]                                      ; $7d90: $34
    nop                                           ; $7d91: $00
    rst $08                                       ; $7d92: $cf
    sub b                                         ; $7d93: $90
    ld c, a                                       ; $7d94: $4f
    sub b                                         ; $7d95: $90
    nop                                           ; $7d96: $00
    adc [hl]                                      ; $7d97: $8e
    ld d, b                                       ; $7d98: $50
    sub a                                         ; $7d99: $97
    ld c, b                                       ; $7d9a: $48
    add a                                         ; $7d9b: $87
    ld c, b                                       ; $7d9c: $48
    add a                                         ; $7d9d: $87
    ld c, a                                       ; $7d9e: $4f
    sub c                                         ; $7d9f: $91
    inc e                                         ; $7da0: $1c
    daa                                           ; $7da1: $27
    nop                                           ; $7da2: $00
    and b                                         ; $7da3: $a0
    xor b                                         ; $7da4: $a8
    rlca                                          ; $7da5: $07
    push de                                       ; $7da6: $d5
    ld a, [hl+]                                   ; $7da7: $2a
    ld e, a                                       ; $7da8: $5f
    or b                                          ; $7da9: $b0
    rla                                           ; $7daa: $17
    inc b                                         ; $7dab: $04
    rst $38                                       ; $7dac: $ff
    nop                                           ; $7dad: $00
    ld d, h                                       ; $7dae: $54
    nop                                           ; $7daf: $00
    xor a                                         ; $7db0: $af
    jr nz, jr_0a0_7dba                            ; $7db1: $20 $07

    ld d, a                                       ; $7db3: $57
    rst $38                                       ; $7db4: $ff
    nop                                           ; $7db5: $00
    ld [bc], a                                    ; $7db6: $02
    db $fd                                        ; $7db7: $fd
    and d                                         ; $7db8: $a2
    ld b, a                                       ; $7db9: $47

jr_0a0_7dba:
    call nz, $9023                                ; $7dba: $c4 $23 $90
    inc hl                                        ; $7dbd: $23
    nop                                           ; $7dbe: $00
    and d                                         ; $7dbf: $a2
    ld de, $0990                                  ; $7dc0: $11 $90 $09
    ret nz                                        ; $7dc3: $c0

    add hl, bc                                    ; $7dc4: $09
    and c                                         ; $7dc5: $a1
    ld [$d000], sp                                ; $7dc6: $08 $00 $d0
    ld [$fe81], sp                                ; $7dc9: $08 $81 $fe
    cpl                                           ; $7dcc: $2f
    ret nc                                        ; $7dcd: $d0

    ld e, a                                       ; $7dce: $5f
    and b                                         ; $7dcf: $a0
    ldh [$c6], a                                  ; $7dd0: $e0 $c6
    rra                                           ; $7dd2: $1f
    ret c                                         ; $7dd3: $d8

    rrca                                          ; $7dd4: $0f
    inc c                                         ; $7dd5: $0c
    ld [$00fd], sp                                ; $7dd6: $08 $fd $00
    xor e                                         ; $7dd9: $ab
    nop                                           ; $7dda: $00
    push af                                       ; $7ddb: $f5
    ld h, b                                       ; $7ddc: $60
    ld a, [bc]                                    ; $7ddd: $0a
    jp c, $901f                                   ; $7dde: $da $1f $90

    ld [$03fc], sp                                ; $7de1: $08 $fc $03
    ldh [$1f], a                                  ; $7de4: $e0 $1f
    rst $08                                       ; $7de6: $cf
    ld b, h                                       ; $7de7: $44
    jr nc, jr_0a0_7e4c                            ; $7de8: $30 $62

    rrca                                          ; $7dea: $0f
    db $fd                                        ; $7deb: $fd
    ld [bc], a                                    ; $7dec: $02
    ld d, a                                       ; $7ded: $57
    call c, $e500                                 ; $7dee: $dc $00 $e5
    rst $38                                       ; $7df1: $ff
    nop                                           ; $7df2: $00
    add sp, $1f                                   ; $7df3: $e8 $1f
    swap l                                        ; $7df5: $cb $35
    ld [hl-], a                                   ; $7df7: $32
    call $817f                                    ; $7df8: $cd $7f $81
    ret nc                                        ; $7dfb: $d0

    dec b                                         ; $7dfc: $05
    inc bc                                        ; $7dfd: $03
    cp $17                                        ; $7dfe: $fe $17
    ld a, [hl+]                                   ; $7e00: $2a
    cp $07                                        ; $7e01: $fe $07
    xor l                                         ; $7e03: $ad
    ld a, a                                       ; $7e04: $7f
    add e                                         ; $7e05: $83
    db $fc                                        ; $7e06: $fc
    or b                                          ; $7e07: $b0
    cp $07                                        ; $7e08: $fe $07
    ld bc, $0b19                                  ; $7e0a: $01 $19 $0b
    dec e                                         ; $7e0d: $1d
    dec bc                                        ; $7e0e: $0b
    ld a, [hl+]                                   ; $7e0f: $2a
    push de                                       ; $7e10: $d5
    rst $38                                       ; $7e11: $ff
    ld bc, $f600                                  ; $7e12: $01 $00 $f6
    ld bc, $00fd                                  ; $7e15: $01 $fd $00
    and a                                         ; $7e18: $a7
    nop                                           ; $7e19: $00
    ld a, d                                       ; $7e1a: $7a
    dec b                                         ; $7e1b: $05
    ld [$5fab], sp                                ; $7e1c: $08 $ab $5f
    ld d, d                                       ; $7e1f: $52
    db $fd                                        ; $7e20: $fd
    db $e4                                        ; $7e21: $e4
    rra                                           ; $7e22: $1f
    dec a                                         ; $7e23: $3d
    inc bc                                        ; $7e24: $03
    ld [$1704], a                                 ; $7e25: $ea $04 $17
    ld l, a                                       ; $7e28: $6f
    rst $38                                       ; $7e29: $ff
    inc c                                         ; $7e2a: $0c
    di                                            ; $7e2b: $f3
    jr z, jr_0a0_7e56                             ; $7e2c: $28 $28

    inc c                                         ; $7e2e: $0c
    nop                                           ; $7e2f: $00
    nop                                           ; $7e30: $00
    jr jr_0a0_7e33                                ; $7e31: $18 $00

jr_0a0_7e33:
    ld [bc], a                                    ; $7e33: $02
    ld e, $00                                     ; $7e34: $1e $00
    inc bc                                        ; $7e36: $03
    ld a, [hl+]                                   ; $7e37: $2a
    nop                                           ; $7e38: $00
    dec b                                         ; $7e39: $05
    rlca                                          ; $7e3a: $07
    nop                                           ; $7e3b: $00
    dec l                                         ; $7e3c: $2d
    nop                                           ; $7e3d: $00
    db $db                                        ; $7e3e: $db
    nop                                           ; $7e3f: $00
    ld a, [bc]                                    ; $7e40: $0a

Jump_0a0_7e41:
    inc b                                         ; $7e41: $04
    add hl, sp                                    ; $7e42: $39
    nop                                           ; $7e43: $00
    ld e, h                                       ; $7e44: $5c
    nop                                           ; $7e45: $00
    rlca                                          ; $7e46: $07
    inc bc                                        ; $7e47: $03
    ld d, a                                       ; $7e48: $57
    nop                                           ; $7e49: $00
    ld h, $00                                     ; $7e4a: $26 $00

jr_0a0_7e4c:
    rlca                                          ; $7e4c: $07
    ld [bc], a                                    ; $7e4d: $02
    cp b                                          ; $7e4e: $b8
    nop                                           ; $7e4f: $00
    ret nz                                        ; $7e50: $c0

    nop                                           ; $7e51: $00
    ld [bc], a                                    ; $7e52: $02
    nop                                           ; $7e53: $00
    cp [hl]                                       ; $7e54: $be
    nop                                           ; $7e55: $00

jr_0a0_7e56:
    ld e, a                                       ; $7e56: $5f
    nop                                           ; $7e57: $00
    rst $38                                       ; $7e58: $ff
    rst $38                                       ; $7e59: $ff
    rst $38                                       ; $7e5a: $ff
    rst $38                                       ; $7e5b: $ff
    rst $38                                       ; $7e5c: $ff
    rst $38                                       ; $7e5d: $ff
    add hl, bc                                    ; $7e5e: $09
    nop                                           ; $7e5f: $00
    nop                                           ; $7e60: $00
    dec d                                         ; $7e61: $15
    nop                                           ; $7e62: $00
    ld [bc], a                                    ; $7e63: $02
    ld hl, $0400                                  ; $7e64: $21 $00 $04
    inc c                                         ; $7e67: $0c
    ld [bc], a                                    ; $7e68: $02
    dec de                                        ; $7e69: $1b
    nop                                           ; $7e6a: $00
    jr nc, jr_0a0_7e6d                            ; $7e6b: $30 $00

jr_0a0_7e6d:
    rlca                                          ; $7e6d: $07
    nop                                           ; $7e6e: $00
    inc a                                         ; $7e6f: $3c
    nop                                           ; $7e70: $00
    sub l                                         ; $7e71: $95
    nop                                           ; $7e72: $00
    ld a, [bc]                                    ; $7e73: $0a
    inc de                                        ; $7e74: $13
    ld e, h                                       ; $7e75: $5c
    nop                                           ; $7e76: $00
    db $e4                                        ; $7e77: $e4
    nop                                           ; $7e78: $00
    rlca                                          ; $7e79: $07
    ld [bc], a                                    ; $7e7a: $02
    ld [hl], d                                    ; $7e7b: $72
    nop                                           ; $7e7c: $00
    ld a, [hl-]                                   ; $7e7d: $3a
    nop                                           ; $7e7e: $00
    rlca                                          ; $7e7f: $07
    inc bc                                        ; $7e80: $03
    add h                                         ; $7e81: $84
    nop                                           ; $7e82: $00
    ld a, l                                       ; $7e83: $7d
    nop                                           ; $7e84: $00
    dec bc                                        ; $7e85: $0b
    nop                                           ; $7e86: $00
    adc b                                         ; $7e87: $88
    nop                                           ; $7e88: $00
    db $e3                                        ; $7e89: $e3
    nop                                           ; $7e8a: $00
    inc c                                         ; $7e8b: $0c
    ld bc, $008b                                  ; $7e8c: $01 $8b $00
    ld sp, $0200                                  ; $7e8f: $31 $00 $02
    nop                                           ; $7e92: $00
    and l                                         ; $7e93: $a5
    nop                                           ; $7e94: $00
    ldh [rP1], a                                  ; $7e95: $e0 $00
    rst $38                                       ; $7e97: $ff
    rst $38                                       ; $7e98: $ff
    rst $38                                       ; $7e99: $ff
    rst $38                                       ; $7e9a: $ff
    rst $38                                       ; $7e9b: $ff
    rst $38                                       ; $7e9c: $ff
    inc c                                         ; $7e9d: $0c
    nop                                           ; $7e9e: $00
    nop                                           ; $7e9f: $00
    ld [de], a                                    ; $7ea0: $12
    nop                                           ; $7ea1: $00
    ld bc, $0018                                  ; $7ea2: $01 $18 $00
    ld [bc], a                                    ; $7ea5: $02
    ld e, $00                                     ; $7ea6: $1e $00
    inc bc                                        ; $7ea8: $03
    rlca                                          ; $7ea9: $07
    ld [bc], a                                    ; $7eaa: $02
    dec de                                        ; $7eab: $1b
    nop                                           ; $7eac: $00
    jr nc, jr_0a0_7eaf                            ; $7ead: $30 $00

jr_0a0_7eaf:
    ld [bc], a                                    ; $7eaf: $02
    nop                                           ; $7eb0: $00
    ld c, a                                       ; $7eb1: $4f
    nop                                           ; $7eb2: $00
    ret                                           ; $7eb3: $c9


    nop                                           ; $7eb4: $00
    rlca                                          ; $7eb5: $07
    nop                                           ; $7eb6: $00
    cp e                                          ; $7eb7: $bb
    nop                                           ; $7eb8: $00
    ld a, $00                                     ; $7eb9: $3e $00
    rst $38                                       ; $7ebb: $ff
    rst $38                                       ; $7ebc: $ff
    rst $38                                       ; $7ebd: $ff
    rst $38                                       ; $7ebe: $ff
    rst $38                                       ; $7ebf: $ff
    rst $38                                       ; $7ec0: $ff
    rrca                                          ; $7ec1: $0f
    nop                                           ; $7ec2: $00
    nop                                           ; $7ec3: $00
    dec d                                         ; $7ec4: $15
    nop                                           ; $7ec5: $00
    ld bc, $0039                                  ; $7ec6: $01 $39 $00
    rlca                                          ; $7ec9: $07
    ld d, c                                       ; $7eca: $51
    nop                                           ; $7ecb: $00
    dec bc                                        ; $7ecc: $0b
    ld e, l                                       ; $7ecd: $5d
    nop                                           ; $7ece: $00
    dec c                                         ; $7ecf: $0d
    inc c                                         ; $7ed0: $0c
    inc bc                                        ; $7ed1: $03
    ccf                                           ; $7ed2: $3f
    nop                                           ; $7ed3: $00
    adc d                                         ; $7ed4: $8a
    nop                                           ; $7ed5: $00
    rlca                                          ; $7ed6: $07
    nop                                           ; $7ed7: $00
    ld b, b                                       ; $7ed8: $40
    nop                                           ; $7ed9: $00
    ld c, b                                       ; $7eda: $48
    nop                                           ; $7edb: $00
    ld d, h                                       ; $7edc: $54
    nop                                           ; $7edd: $00
    ld c, c                                       ; $7ede: $49
    nop                                           ; $7edf: $00
    xor a                                         ; $7ee0: $af
    ld bc, $0154                                  ; $7ee1: $01 $54 $01
    ld c, c                                       ; $7ee4: $49
    nop                                           ; $7ee5: $00
    adc a                                         ; $7ee6: $8f
    nop                                           ; $7ee7: $00
    ld d, h                                       ; $7ee8: $54
    nop                                           ; $7ee9: $00
    ld c, c                                       ; $7eea: $49
    nop                                           ; $7eeb: $00
    ld c, a                                       ; $7eec: $4f
    ld bc, $010c                                  ; $7eed: $01 $0c $01
    ld h, l                                       ; $7ef0: $65
    nop                                           ; $7ef1: $00
    ld [hl], h                                    ; $7ef2: $74
    nop                                           ; $7ef3: $00
    inc c                                         ; $7ef4: $0c
    ld a, [bc]                                    ; $7ef5: $0a
    ld a, a                                       ; $7ef6: $7f
    nop                                           ; $7ef7: $00
    xor [hl]                                      ; $7ef8: $ae
    nop                                           ; $7ef9: $00
    inc c                                         ; $7efa: $0c
    dec bc                                        ; $7efb: $0b
    add b                                         ; $7efc: $80
    nop                                           ; $7efd: $00
    ld c, $01                                     ; $7efe: $0e $01
    ld d, l                                       ; $7f00: $55
    nop                                           ; $7f01: $00
    xor c                                         ; $7f02: $a9
    nop                                           ; $7f03: $00
    ld c, c                                       ; $7f04: $49
    nop                                           ; $7f05: $00
    inc c                                         ; $7f06: $0c
    ld [$00ae], sp                                ; $7f07: $08 $ae $00
    ld a, c                                       ; $7f0a: $79
    nop                                           ; $7f0b: $00
    inc c                                         ; $7f0c: $0c
    add hl, bc                                    ; $7f0d: $09
    xor a                                         ; $7f0e: $af
    nop                                           ; $7f0f: $00
    jp c, Jump_0a0_5400                           ; $7f10: $da $00 $54

    nop                                           ; $7f13: $00
    ret c                                         ; $7f14: $d8

    nop                                           ; $7f15: $00
    xor a                                         ; $7f16: $af
    ld bc, $0054                                  ; $7f17: $01 $54 $00
    ret c                                         ; $7f1a: $d8

    nop                                           ; $7f1b: $00
    rst $28                                       ; $7f1c: $ef
    nop                                           ; $7f1d: $00
    rlca                                          ; $7f1e: $07
    ld bc, $0103                                  ; $7f1f: $01 $03 $01
    jr nc, jr_0a0_7f24                            ; $7f22: $30 $00

jr_0a0_7f24:
    ld [bc], a                                    ; $7f24: $02
    ld bc, $0118                                  ; $7f25: $01 $18 $01
    adc a                                         ; $7f28: $8f
    nop                                           ; $7f29: $00
    ld [bc], a                                    ; $7f2a: $02
    nop                                           ; $7f2b: $00
    jr @+$03                                      ; $7f2c: $18 $01

    xor $01                                       ; $7f2e: $ee $01
    rst $38                                       ; $7f30: $ff
    rst $38                                       ; $7f31: $ff
    rst $38                                       ; $7f32: $ff
    rst $38                                       ; $7f33: $ff
    rst $38                                       ; $7f34: $ff
    rst $38                                       ; $7f35: $ff
    inc c                                         ; $7f36: $0c
    nop                                           ; $7f37: $00
    nop                                           ; $7f38: $00
    ld [de], a                                    ; $7f39: $12
    nop                                           ; $7f3a: $00
    ld bc, $0018                                  ; $7f3b: $01 $18 $00
    ld [bc], a                                    ; $7f3e: $02
    inc h                                         ; $7f3f: $24
    nop                                           ; $7f40: $00
    inc b                                         ; $7f41: $04
    ld a, [bc]                                    ; $7f42: $0a
    rrca                                          ; $7f43: $0f
    jr nc, jr_0a0_7f46                            ; $7f44: $30 $00

jr_0a0_7f46:
    adc h                                         ; $7f46: $8c
    nop                                           ; $7f47: $00
    rlca                                          ; $7f48: $07
    ld [bc], a                                    ; $7f49: $02
    ld d, c                                       ; $7f4a: $51
    nop                                           ; $7f4b: $00
    ld sp, $0700                                  ; $7f4c: $31 $00 $07
    nop                                           ; $7f4f: $00
    and a                                         ; $7f50: $a7
    nop                                           ; $7f51: $00
    dec de                                        ; $7f52: $1b
    nop                                           ; $7f53: $00
    rlca                                          ; $7f54: $07
    inc bc                                        ; $7f55: $03
    cp l                                          ; $7f56: $bd
    nop                                           ; $7f57: $00
    adc c                                         ; $7f58: $89
    nop                                           ; $7f59: $00
    ld [bc], a                                    ; $7f5a: $02
    nop                                           ; $7f5b: $00
    rst $20                                       ; $7f5c: $e7
    nop                                           ; $7f5d: $00
    ld h, [hl]                                    ; $7f5e: $66
    nop                                           ; $7f5f: $00
    rst $38                                       ; $7f60: $ff
    rst $38                                       ; $7f61: $ff
    rst $38                                       ; $7f62: $ff
    rst $38                                       ; $7f63: $ff
    rst $38                                       ; $7f64: $ff
    rst $38                                       ; $7f65: $ff
    inc c                                         ; $7f66: $0c
    nop                                           ; $7f67: $00
    nop                                           ; $7f68: $00
    ld [de], a                                    ; $7f69: $12
    nop                                           ; $7f6a: $00
    ld bc, $0018                                  ; $7f6b: $01 $18 $00
    ld [bc], a                                    ; $7f6e: $02
    ld e, $00                                     ; $7f6f: $1e $00
    inc bc                                        ; $7f71: $03
    ld [bc], a                                    ; $7f72: $02
    nop                                           ; $7f73: $00
    rla                                           ; $7f74: $17
    nop                                           ; $7f75: $00
    ld l, [hl]                                    ; $7f76: $6e
    nop                                           ; $7f77: $00
    inc c                                         ; $7f78: $0c
    ld bc, $0077                                  ; $7f79: $01 $77 $00
    ld a, [de]                                    ; $7f7c: $1a
    nop                                           ; $7f7d: $00
    inc c                                         ; $7f7e: $0c
    ld bc, $009d                                  ; $7f7f: $01 $9d $00
    ld a, [de]                                    ; $7f82: $1a
    nop                                           ; $7f83: $00
    inc c                                         ; $7f84: $0c
    nop                                           ; $7f85: $00
    jp nz, Jump_0a0_5b00                          ; $7f86: $c2 $00 $5b

    nop                                           ; $7f89: $00
    inc c                                         ; $7f8a: $0c
    nop                                           ; $7f8b: $00
    jp nc, Jump_0a0_6300                          ; $7f8c: $d2 $00 $63

    nop                                           ; $7f8f: $00
    rlca                                          ; $7f90: $07
    nop                                           ; $7f91: $00
    reti                                          ; $7f92: $d9


    nop                                           ; $7f93: $00
    daa                                           ; $7f94: $27
    nop                                           ; $7f95: $00
    rst $38                                       ; $7f96: $ff
    rst $38                                       ; $7f97: $ff
    rst $38                                       ; $7f98: $ff
    rst $38                                       ; $7f99: $ff
    rst $38                                       ; $7f9a: $ff
    rst $38                                       ; $7f9b: $ff
    rrca                                          ; $7f9c: $0f
    nop                                           ; $7f9d: $00
    nop                                           ; $7f9e: $00
    dec d                                         ; $7f9f: $15
    nop                                           ; $7fa0: $00
    ld bc, $001b                                  ; $7fa1: $01 $1b $00
    ld [bc], a                                    ; $7fa4: $02
    ld hl, $0300                                  ; $7fa5: $21 $00 $03
    dec l                                         ; $7fa8: $2d
    nop                                           ; $7fa9: $00
    dec b                                         ; $7faa: $05
    ld a, [bc]                                    ; $7fab: $0a
    dec d                                         ; $7fac: $15
    ld l, $00                                     ; $7fad: $2e $00
    dec l                                         ; $7faf: $2d
    nop                                           ; $7fb0: $00
    rlca                                          ; $7fb1: $07
    ld [bc], a                                    ; $7fb2: $02
    ld e, h                                       ; $7fb3: $5c
    nop                                           ; $7fb4: $00
    ld e, e                                       ; $7fb5: $5b
    nop                                           ; $7fb6: $00
    rlca                                          ; $7fb7: $07
    ld bc, $008d                                  ; $7fb8: $01 $8d $00
    ld d, b                                       ; $7fbb: $50
    nop                                           ; $7fbc: $00
    ld [bc], a                                    ; $7fbd: $02
    nop                                           ; $7fbe: $00
    ret nc                                        ; $7fbf: $d0

    nop                                           ; $7fc0: $00
    ret nz                                        ; $7fc1: $c0

    nop                                           ; $7fc2: $00
    rlca                                          ; $7fc3: $07
    nop                                           ; $7fc4: $00
    di                                            ; $7fc5: $f3
    nop                                           ; $7fc6: $00
    ld h, b                                       ; $7fc7: $60
    nop                                           ; $7fc8: $00
    rst $38                                       ; $7fc9: $ff
    rst $38                                       ; $7fca: $ff
    rst $38                                       ; $7fcb: $ff
    rst $38                                       ; $7fcc: $ff
    rst $38                                       ; $7fcd: $ff
    rst $38                                       ; $7fce: $ff
    rrca                                          ; $7fcf: $0f
    nop                                           ; $7fd0: $00
    nop                                           ; $7fd1: $00
    dec d                                         ; $7fd2: $15
    nop                                           ; $7fd3: $00
    ld bc, $0015                                  ; $7fd4: $01 $15 $00
    ld bc, $001b                                  ; $7fd7: $01 $1b $00
    ld [bc], a                                    ; $7fda: $02
    ld hl, $0300                                  ; $7fdb: $21 $00 $03
    rlca                                          ; $7fde: $07
    ld bc, $002e                                  ; $7fdf: $01 $2e $00
    sub l                                         ; $7fe2: $95
    nop                                           ; $7fe3: $00
    rlca                                          ; $7fe4: $07
    nop                                           ; $7fe5: $00
    and d                                         ; $7fe6: $a2
    nop                                           ; $7fe7: $00
    ld c, d                                       ; $7fe8: $4a
    nop                                           ; $7fe9: $00
    ld [bc], a                                    ; $7fea: $02
    nop                                           ; $7feb: $00
    rst $28                                       ; $7fec: $ef
    nop                                           ; $7fed: $00
    add b                                         ; $7fee: $80
    nop                                           ; $7fef: $00
    rst $38                                       ; $7ff0: $ff
    rst $38                                       ; $7ff1: $ff
    rst $38                                       ; $7ff2: $ff
    rst $38                                       ; $7ff3: $ff
    rst $38                                       ; $7ff4: $ff
    rst $38                                       ; $7ff5: $ff
    xor l                                         ; $7ff6: $ad
    dec [hl]                                      ; $7ff7: $35
    rst $18                                       ; $7ff8: $df
    ld [bc], a                                    ; $7ff9: $02
    jr jr_0a0_7ffc                                ; $7ffa: $18 $00

jr_0a0_7ffc:
    nop                                           ; $7ffc: $00
    nop                                           ; $7ffd: $00
    rst $38                                       ; $7ffe: $ff

Call_0a0_7fff:
    rst $38                                       ; $7fff: $ff
