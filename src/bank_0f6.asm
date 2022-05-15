; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0f6", ROMX[$4000], BANK[$f6]

    db $f6

    dec d                                         ; $4001: $15
    ld [$06fa], sp                                ; $4002: $08 $fa $06
    ld a, [$f706]                                 ; $4005: $fa $06 $f7
    push af                                       ; $4008: $f5
    rlca                                          ; $4009: $07
    push af                                       ; $400a: $f5
    push hl                                       ; $400b: $e5
    db $fd                                        ; $400c: $fd
    push af                                       ; $400d: $f5
    db $fd                                        ; $400e: $fd
    dec b                                         ; $400f: $05
    db $fd                                        ; $4010: $fd
    dec d                                         ; $4011: $15
    db $fd                                        ; $4012: $fd
    db $fc                                        ; $4013: $fc
    dec b                                         ; $4014: $05
    inc c                                         ; $4015: $0c
    dec b                                         ; $4016: $05
    cp $01                                        ; $4017: $fe $01
    nop                                           ; $4019: $00
    ld bc, $0100                                  ; $401a: $01 $00 $01
    nop                                           ; $401d: $00
    ld bc, $0100                                  ; $401e: $01 $00 $01
    nop                                           ; $4021: $00
    inc bc                                        ; $4022: $03
    nop                                           ; $4023: $00
    inc bc                                        ; $4024: $03
    nop                                           ; $4025: $00
    inc bc                                        ; $4026: $03
    nop                                           ; $4027: $00
    inc bc                                        ; $4028: $03
    nop                                           ; $4029: $00
    rlca                                          ; $402a: $07
    nop                                           ; $402b: $00
    ld b, $01                                     ; $402c: $06 $01
    rlca                                          ; $402e: $07
    nop                                           ; $402f: $00
    rlca                                          ; $4030: $07
    nop                                           ; $4031: $00
    ld b, $01                                     ; $4032: $06 $01
    rrca                                          ; $4034: $0f
    nop                                           ; $4035: $00
    rrca                                          ; $4036: $0f
    nop                                           ; $4037: $00
    ld c, $01                                     ; $4038: $0e $01
    rrca                                          ; $403a: $0f
    nop                                           ; $403b: $00
    rrca                                          ; $403c: $0f
    nop                                           ; $403d: $00
    inc c                                         ; $403e: $0c
    inc bc                                        ; $403f: $03
    rra                                           ; $4040: $1f
    nop                                           ; $4041: $00
    ld e, $01                                     ; $4042: $1e $01
    inc e                                         ; $4044: $1c
    inc bc                                        ; $4045: $03
    rra                                           ; $4046: $1f
    nop                                           ; $4047: $00
    ld e, $01                                     ; $4048: $1e $01
    add hl, de                                    ; $404a: $19
    ld b, $3c                                     ; $404b: $06 $3c
    inc bc                                        ; $404d: $03
    ld a, $01                                     ; $404e: $3e $01
    add hl, sp                                    ; $4050: $39
    ld b, $3e                                     ; $4051: $06 $3e
    ld bc, $001f                                  ; $4053: $01 $1f $00
    rlca                                          ; $4056: $07
    nop                                           ; $4057: $00
    stop                                          ; $4058: $10 $00
    stop                                          ; $405a: $10 $00
    stop                                          ; $405c: $10 $00
    stop                                          ; $405e: $10 $00
    jr z, jr_0f6_4072                             ; $4060: $28 $10

    jr z, jr_0f6_4074                             ; $4062: $28 $10

    jr z, jr_0f6_4076                             ; $4064: $28 $10

    jr z, @+$12                                   ; $4066: $28 $10

    ld [hl], h                                    ; $4068: $74
    jr jr_0f6_40b7                                ; $4069: $18 $4c

    jr nc, jr_0f6_40e1                            ; $406b: $30 $74

    jr jr_0f6_40b3                                ; $406d: $18 $44

    jr c, jr_0f6_40dd                             ; $406f: $38 $6c

    db $10                                        ; $4071: $10

jr_0f6_4072:
    sub $38                                       ; $4072: $d6 $38

jr_0f6_4074:
    sub $38                                       ; $4074: $d6 $38

jr_0f6_4076:
    jp nc, $8a3c                                  ; $4076: $d2 $3c $8a

    ld a, h                                       ; $4079: $7c
    sub $38                                       ; $407a: $d6 $38
    db $d3                                        ; $407c: $d3
    inc a                                         ; $407d: $3c
    adc c                                         ; $407e: $89
    ld a, [hl]                                    ; $407f: $7e
    ret                                           ; $4080: $c9


    ld a, $db                                     ; $4081: $3e $db
    inc a                                         ; $4083: $3c
    adc l                                         ; $4084: $8d
    ld a, [hl]                                    ; $4085: $7e
    reti                                          ; $4086: $d9


    ld a, $9c                                     ; $4087: $3e $9c
    ld a, a                                       ; $4089: $7f
    dec l                                         ; $408a: $2d
    cp $8e                                        ; $408b: $fe $8e
    ld a, a                                       ; $408d: $7f
    inc e                                         ; $408e: $1c
    rst $38                                       ; $408f: $ff
    ld e, $ff                                     ; $4090: $1e $ff
    xor h                                         ; $4092: $ac
    ld a, a                                       ; $4093: $7f
    ld a, $ff                                     ; $4094: $3e $ff
    and a                                         ; $4096: $a7
    dec c                                         ; $4097: $0d
    rst $38                                       ; $4098: $ff

jr_0f6_4099:
    inc a                                         ; $4099: $3c
    rst $38                                       ; $409a: $ff
    sbc [hl]                                      ; $409b: $9e
    ld a, a                                       ; $409c: $7f
    inc c                                         ; $409d: $0c
    rst $38                                       ; $409e: $ff

jr_0f6_409f:
    rra                                           ; $409f: $1f
    rst $38                                       ; $40a0: $ff

jr_0f6_40a1:
    daa                                           ; $40a1: $27
    rst $38                                       ; $40a2: $ff
    adc [hl]                                      ; $40a3: $8e
    ld a, a                                       ; $40a4: $7f
    rra                                           ; $40a5: $1f
    rst $38                                       ; $40a6: $ff
    ld c, $ff                                     ; $40a7: $0e $ff
    ld c, $ff                                     ; $40a9: $0e $ff
    rra                                           ; $40ab: $1f
    rst $38                                       ; $40ac: $ff
    rra                                           ; $40ad: $1f
    rst $38                                       ; $40ae: $ff
    ld c, $ff                                     ; $40af: $0e $ff
    rra                                           ; $40b1: $1f
    rst $38                                       ; $40b2: $ff

jr_0f6_40b3:
    rrca                                          ; $40b3: $0f
    rst $38                                       ; $40b4: $ff
    ld [hl], $ff                                  ; $40b5: $36 $ff

jr_0f6_40b7:
    dec bc                                        ; $40b7: $0b
    rst $38                                       ; $40b8: $ff
    add b                                         ; $40b9: $80
    ld a, a                                       ; $40ba: $7f
    push af                                       ; $40bb: $f5
    ld a, [bc]                                    ; $40bc: $0a
    cp $1b                                        ; $40bd: $fe $1b
    nop                                           ; $40bf: $00
    or l                                          ; $40c0: $b5
    add b                                         ; $40c1: $80
    nop                                           ; $40c2: $00
    add b                                         ; $40c3: $80
    nop                                           ; $40c4: $00
    add b                                         ; $40c5: $80
    nop                                           ; $40c6: $00
    add b                                         ; $40c7: $80
    nop                                           ; $40c8: $00
    ret nz                                        ; $40c9: $c0

    nop                                           ; $40ca: $00
    ld b, b                                       ; $40cb: $40
    add b                                         ; $40cc: $80
    ret nz                                        ; $40cd: $c0

    nop                                           ; $40ce: $00
    ld b, b                                       ; $40cf: $40
    add b                                         ; $40d0: $80
    ld b, b                                       ; $40d1: $40
    add b                                         ; $40d2: $80

jr_0f6_40d3:
    jr nz, @-$3e                                  ; $40d3: $20 $c0

    ld h, b                                       ; $40d5: $60
    add b                                         ; $40d6: $80
    jr nz, jr_0f6_4099                            ; $40d7: $20 $c0

    ld h, b                                       ; $40d9: $60
    add b                                         ; $40da: $80
    and b                                         ; $40db: $a0
    ret nz                                        ; $40dc: $c0

jr_0f6_40dd:
    jr nz, jr_0f6_409f                            ; $40dd: $20 $c0

    jr nc, jr_0f6_40a1                            ; $40df: $30 $c0

jr_0f6_40e1:
    sub b                                         ; $40e1: $90
    ldh [$30], a                                  ; $40e2: $e0 $30
    ret nz                                        ; $40e4: $c0

    sub b                                         ; $40e5: $90
    ldh [rNR10], a                                ; $40e6: $e0 $10
    ldh [$30], a                                  ; $40e8: $e0 $30
    ret nz                                        ; $40ea: $c0

    ld e, b                                       ; $40eb: $58
    ldh [$88], a                                  ; $40ec: $e0 $88
    ldh a, [$78]                                  ; $40ee: $f0 $78
    ret nz                                        ; $40f0: $c0

    jr jr_0f6_40d3                                ; $40f1: $18 $e0

    or b                                          ; $40f3: $b0
    ld b, b                                       ; $40f4: $40
    ret nz                                        ; $40f5: $c0

    dec bc                                        ; $40f6: $0b
    nop                                           ; $40f7: $00
    rst $38                                       ; $40f8: $ff
    rlca                                          ; $40f9: $07
    ld bc, $06fa                                  ; $40fa: $01 $fa $06
    ld a, [$f806]                                 ; $40fd: $fa $06 $f8
    ei                                            ; $4100: $fb
    add c                                         ; $4101: $81
    inc b                                         ; $4102: $04
    ld [bc], a                                    ; $4103: $02
    nop                                           ; $4104: $00
    adc e                                         ; $4105: $8b
    inc b                                         ; $4106: $04
    ld bc, $1000                                  ; $4107: $01 $00 $10
    ld bc, $1000                                  ; $410a: $01 $00 $10
    ld [$0100], sp                                ; $410d: $08 $00 $01
    ld a, [bc]                                    ; $4110: $0a
    ld [bc], a                                    ; $4111: $02
    inc b                                         ; $4112: $04
    add e                                         ; $4113: $83
    db $10                                        ; $4114: $10
    ld a, [bc]                                    ; $4115: $0a
    ld [bc], a                                    ; $4116: $02
    dec c                                         ; $4117: $0d
    nop                                           ; $4118: $00
    rst $38                                       ; $4119: $ff
    rlca                                          ; $411a: $07
    ld bc, $05fc                                  ; $411b: $01 $fc $05
    ld hl, sp+$02                                 ; $411e: $f8 $02
    ei                                            ; $4120: $fb
    ei                                            ; $4121: $fb
    add a                                         ; $4122: $87
    ld [bc], a                                    ; $4123: $02
    ld b, $09                                     ; $4124: $06 $09
    rrca                                          ; $4126: $0f
    ld c, $09                                     ; $4127: $0e $09
    ld c, $02                                     ; $4129: $0e $02
    add hl, bc                                    ; $412b: $09
    add c                                         ; $412c: $81
    rrca                                          ; $412d: $0f
    ld [bc], a                                    ; $412e: $02
    ld b, $14                                     ; $412f: $06 $14
    nop                                           ; $4131: $00
    rst $38                                       ; $4132: $ff
    rlca                                          ; $4133: $07
    ld bc, $05fc                                  ; $4134: $01 $fc $05
    ld hl, sp+$02                                 ; $4137: $f8 $02
    ei                                            ; $4139: $fb
    db $fc                                        ; $413a: $fc
    adc d                                         ; $413b: $8a
    db $10                                        ; $413c: $10
    ld e, $2d                                     ; $413d: $1e $2d
    inc sp                                        ; $413f: $33
    rra                                           ; $4140: $1f
    ld hl, $211f                                  ; $4141: $21 $1f $21
    dec l                                         ; $4144: $2d
    inc sp                                        ; $4145: $33
    ld [bc], a                                    ; $4146: $02
    ld e, $14                                     ; $4147: $1e $14
    nop                                           ; $4149: $00
    rst $38                                       ; $414a: $ff
    rlca                                          ; $414b: $07
    ld bc, $05fc                                  ; $414c: $01 $fc $05
    ld hl, sp+$02                                 ; $414f: $f8 $02
    ei                                            ; $4151: $fb
    ei                                            ; $4152: $fb
    add a                                         ; $4153: $87
    inc b                                         ; $4154: $04
    ld b, $09                                     ; $4155: $06 $09
    rrca                                          ; $4157: $0f
    rlca                                          ; $4158: $07
    add hl, bc                                    ; $4159: $09
    rlca                                          ; $415a: $07
    ld [bc], a                                    ; $415b: $02
    add hl, bc                                    ; $415c: $09
    add c                                         ; $415d: $81
    rrca                                          ; $415e: $0f
    ld [bc], a                                    ; $415f: $02
    ld b, $14                                     ; $4160: $06 $14
    nop                                           ; $4162: $00
    rst $38                                       ; $4163: $ff
    rlca                                          ; $4164: $07
    ld bc, $05fc                                  ; $4165: $01 $fc $05
    ld hl, sp+$02                                 ; $4168: $f8 $02
    ei                                            ; $416a: $fb
    ld sp, hl                                     ; $416b: $f9
    ld [bc], a                                    ; $416c: $02
    ld bc, $0081                                  ; $416d: $01 $81 $00
    ld [bc], a                                    ; $4170: $02
    ld bc, $0082                                  ; $4171: $01 $82 $00
    ld bc, $0002                                  ; $4174: $01 $02 $00
    inc bc                                        ; $4177: $03
    ld bc, $0014                                  ; $4178: $01 $14 $00
    rst $38                                       ; $417b: $ff
    rlca                                          ; $417c: $07
    ld bc, $07f9                                  ; $417d: $01 $f9 $07
    rst $30                                       ; $4180: $f7
    ld [$fcfe], sp                                ; $4181: $08 $fe $fc
    adc h                                         ; $4184: $8c
    nop                                           ; $4185: $00
    ld a, [de]                                    ; $4186: $1a
    jr jr_0f6_41af                                ; $4187: $18 $26

    inc d                                         ; $4189: $14
    dec hl                                        ; $418a: $2b
    ld [bc], a                                    ; $418b: $02
    ld e, l                                       ; $418c: $5d
    inc c                                         ; $418d: $0c
    ld [de], a                                    ; $418e: $12
    nop                                           ; $418f: $00
    dec c                                         ; $4190: $0d
    inc d                                         ; $4191: $14
    nop                                           ; $4192: $00
    rst $38                                       ; $4193: $ff
    rlca                                          ; $4194: $07
    ld bc, $07f9                                  ; $4195: $01 $f9 $07
    rst $30                                       ; $4198: $f7
    ld [$fdfe], sp                                ; $4199: $08 $fe $fd
    adc [hl]                                      ; $419c: $8e
    nop                                           ; $419d: $00
    ld d, $10                                     ; $419e: $16 $10
    inc l                                         ; $41a0: $2c
    jr z, jr_0f6_41fa                             ; $41a1: $28 $57

    inc b                                         ; $41a3: $04
    ld a, [hl-]                                   ; $41a4: $3a
    inc e                                         ; $41a5: $1c
    ld [hl+], a                                   ; $41a6: $22
    nop                                           ; $41a7: $00
    ld e, h                                       ; $41a8: $5c
    nop                                           ; $41a9: $00
    ld [bc], a                                    ; $41aa: $02
    ld [de], a                                    ; $41ab: $12
    nop                                           ; $41ac: $00
    rst $38                                       ; $41ad: $ff
    rlca                                          ; $41ae: $07

jr_0f6_41af:
    ld bc, $07f9                                  ; $41af: $01 $f9 $07
    rst $30                                       ; $41b2: $f7
    ld [$fdfd], sp                                ; $41b3: $08 $fd $fd
    adc [hl]                                      ; $41b6: $8e
    nop                                           ; $41b7: $00
    inc [hl]                                      ; $41b8: $34
    jr nc, jr_0f6_420a                            ; $41b9: $30 $4f

    ld [hl+], a                                   ; $41bb: $22
    ld e, c                                       ; $41bc: $59
    nop                                           ; $41bd: $00
    ld a, $0c                                     ; $41be: $3e $0c
    ld [hl], e                                    ; $41c0: $73
    inc c                                         ; $41c1: $0c
    ld [de], a                                    ; $41c2: $12
    nop                                           ; $41c3: $00
    inc l                                         ; $41c4: $2c
    ld [de], a                                    ; $41c5: $12
    nop                                           ; $41c6: $00
    rst $38                                       ; $41c7: $ff
    add hl, bc                                    ; $41c8: $09
    ld [bc], a                                    ; $41c9: $02
    ld sp, hl                                     ; $41ca: $f9
    rlca                                          ; $41cb: $07
    rst $30                                       ; $41cc: $f7
    ld [$fbfb], sp                                ; $41cd: $08 $fb $fb
    ei                                            ; $41d0: $fb
    rst $38                                       ; $41d1: $ff
    sub [hl]                                      ; $41d2: $96
    nop                                           ; $41d3: $00
    dec l                                         ; $41d4: $2d
    inc c                                         ; $41d5: $0c
    inc de                                        ; $41d6: $13
    inc c                                         ; $41d7: $0c
    ld [hl-], a                                   ; $41d8: $32
    jr z, jr_0f6_4232                             ; $41d9: $28 $57

    ld b, $f9                                     ; $41db: $06 $f9
    scf                                           ; $41dd: $37
    ld c, b                                       ; $41de: $48
    ld sp, $0c4e                                  ; $41df: $31 $4e $0c
    inc sp                                        ; $41e2: $33
    ld b, $49                                     ; $41e3: $06 $49
    ld b, $19                                     ; $41e5: $06 $19
    nop                                           ; $41e7: $00
    ld b, $0d                                     ; $41e8: $06 $0d
    nop                                           ; $41ea: $00
    sub e                                         ; $41eb: $93
    inc b                                         ; $41ec: $04
    nop                                           ; $41ed: $00
    ld b, $04                                     ; $41ee: $06 $04
    ld a, [bc]                                    ; $41f0: $0a
    inc c                                         ; $41f1: $0c
    inc bc                                        ; $41f2: $03
    ld [bc], a                                    ; $41f3: $02
    dec c                                         ; $41f4: $0d
    nop                                           ; $41f5: $00
    ld c, $0c                                     ; $41f6: $0e $0c
    inc bc                                        ; $41f8: $03
    inc c                                         ; $41f9: $0c

jr_0f6_41fa:
    ld [bc], a                                    ; $41fa: $02
    nop                                           ; $41fb: $00
    inc c                                         ; $41fc: $0c
    nop                                           ; $41fd: $00
    ld [$000a], sp                                ; $41fe: $08 $0a $00
    rst $38                                       ; $4201: $ff
    add hl, bc                                    ; $4202: $09
    ld [bc], a                                    ; $4203: $02
    ld sp, hl                                     ; $4204: $f9
    rlca                                          ; $4205: $07
    rst $30                                       ; $4206: $f7
    ld [$fbf9], sp                                ; $4207: $08 $f9 $fb

jr_0f6_420a:
    ld sp, hl                                     ; $420a: $f9
    nop                                           ; $420b: $00
    inc bc                                        ; $420c: $03
    nop                                           ; $420d: $00
    sbc c                                         ; $420e: $99
    add hl, bc                                    ; $420f: $09
    nop                                           ; $4210: $00
    dec l                                         ; $4211: $2d
    inc e                                         ; $4212: $1c
    ld h, e                                       ; $4213: $63
    dec e                                         ; $4214: $1d
    ld [hl+], a                                   ; $4215: $22
    ld [$3677], sp                                ; $4216: $08 $77 $36
    ret                                           ; $4219: $c9


    scf                                           ; $421a: $37
    ld c, b                                       ; $421b: $48
    dec c                                         ; $421c: $0d
    ld [hl], d                                    ; $421d: $72
    ld l, l                                       ; $421e: $6d
    sub d                                         ; $421f: $92
    ld h, d                                       ; $4220: $62
    sbc l                                         ; $4221: $9d
    ld b, $79                                     ; $4222: $06 $79
    inc d                                         ; $4224: $14
    xor e                                         ; $4225: $ab
    nop                                           ; $4226: $00
    dec e                                         ; $4227: $1d
    dec b                                         ; $4228: $05
    nop                                           ; $4229: $00
    sbc e                                         ; $422a: $9b
    stop                                          ; $422b: $10 $00
    inc d                                         ; $422d: $14
    nop                                           ; $422e: $00
    ld b, $04                                     ; $422f: $06 $04
    ld a, [de]                                    ; $4231: $1a

jr_0f6_4232:
    nop                                           ; $4232: $00
    rra                                           ; $4233: $1f
    ld [$1814], sp                                ; $4234: $08 $14 $18
    ld b, $04                                     ; $4237: $06 $04
    ld a, [de]                                    ; $4239: $1a
    nop                                           ; $423a: $00
    inc e                                         ; $423b: $1c
    ld [de], a                                    ; $423c: $12
    dec c                                         ; $423d: $0d
    db $10                                        ; $423e: $10
    ld c, $0c                                     ; $423f: $0e $0c
    inc de                                        ; $4241: $13
    inc c                                         ; $4242: $0c
    ld [de], a                                    ; $4243: $12
    nop                                           ; $4244: $00
    inc e                                         ; $4245: $1c
    inc b                                         ; $4246: $04
    nop                                           ; $4247: $00
    rst $38                                       ; $4248: $ff
    add hl, bc                                    ; $4249: $09
    ld [bc], a                                    ; $424a: $02
    ld sp, hl                                     ; $424b: $f9
    rlca                                          ; $424c: $07
    rst $30                                       ; $424d: $f7
    ld [$fbfb], sp                                ; $424e: $08 $fb $fb
    ei                                            ; $4251: $fb
    db $fd                                        ; $4252: $fd
    sub e                                         ; $4253: $93
    inc bc                                        ; $4254: $03
    nop                                           ; $4255: $00
    ld [bc], a                                    ; $4256: $02
    ld bc, $0102                                  ; $4257: $01 $02 $01
    rrca                                          ; $425a: $0f
    nop                                           ; $425b: $00
    add hl, de                                    ; $425c: $19
    ld b, $1d                                     ; $425d: $06 $1d
    ld [bc], a                                    ; $425f: $02
    ld a, e                                       ; $4260: $7b
    inc b                                         ; $4261: $04
    cp $00                                        ; $4262: $fe $00
    ld d, b                                       ; $4264: $50
    jr nz, @+$32                                  ; $4265: $20 $30

    rrca                                          ; $4267: $0f
    nop                                           ; $4268: $00
    add e                                         ; $4269: $83
    ld [bc], a                                    ; $426a: $02
    nop                                           ; $426b: $00
    ld bc, $0202                                  ; $426c: $01 $02 $02
    add hl, de                                    ; $426f: $19
    nop                                           ; $4270: $00
    rst $38                                       ; $4271: $ff
    add hl, bc                                    ; $4272: $09
    ld [bc], a                                    ; $4273: $02
    ld sp, hl                                     ; $4274: $f9
    rlca                                          ; $4275: $07
    rst $30                                       ; $4276: $f7
    ld [$fbfb], sp                                ; $4277: $08 $fb $fb
    ei                                            ; $427a: $fb
    db $fd                                        ; $427b: $fd
    sub e                                         ; $427c: $93
    inc bc                                        ; $427d: $03
    nop                                           ; $427e: $00
    ld [bc], a                                    ; $427f: $02
    ld bc, $0102                                  ; $4280: $01 $02 $01
    rrca                                          ; $4283: $0f
    nop                                           ; $4284: $00
    add hl, de                                    ; $4285: $19
    ld b, $1d                                     ; $4286: $06 $1d
    ld [bc], a                                    ; $4288: $02
    ld a, e                                       ; $4289: $7b
    inc b                                         ; $428a: $04
    cp $00                                        ; $428b: $fe $00
    ld d, b                                       ; $428d: $50
    jr nz, jr_0f6_42c0                            ; $428e: $20 $30

    rrca                                          ; $4290: $0f
    nop                                           ; $4291: $00
    add e                                         ; $4292: $83
    ld [bc], a                                    ; $4293: $02
    nop                                           ; $4294: $00
    ld bc, $0202                                  ; $4295: $01 $02 $02
    add hl, de                                    ; $4298: $19
    nop                                           ; $4299: $00
    rst $38                                       ; $429a: $ff
    add hl, bc                                    ; $429b: $09
    ld [bc], a                                    ; $429c: $02
    ld sp, hl                                     ; $429d: $f9
    rlca                                          ; $429e: $07
    rst $30                                       ; $429f: $f7
    ld [$fbf8], sp                                ; $42a0: $08 $f8 $fb
    ei                                            ; $42a3: $fb
    cp $06                                        ; $42a4: $fe $06
    inc b                                         ; $42a6: $04
    sub [hl]                                      ; $42a7: $96
    dec hl                                        ; $42a8: $2b
    inc l                                         ; $42a9: $2c
    ld [de], a                                    ; $42aa: $12
    dec e                                         ; $42ab: $1d
    ld [de], a                                    ; $42ac: $12
    dec e                                         ; $42ad: $1d
    rra                                           ; $42ae: $1f
    db $10                                        ; $42af: $10
    add hl, sp                                    ; $42b0: $39
    ld h, $dd                                     ; $42b1: $26 $dd
    ld [c], a                                     ; $42b3: $e2
    ld a, e                                       ; $42b4: $7b
    inc b                                         ; $42b5: $04
    rst $38                                       ; $42b6: $ff
    ld bc, $2f51                                  ; $42b7: $01 $51 $2f
    ld sp, $2a0f                                  ; $42ba: $31 $0f $2a
    ld l, $07                                     ; $42bd: $2e $07
    inc b                                         ; $42bf: $04

jr_0f6_42c0:
    add d                                         ; $42c0: $82
    nop                                           ; $42c1: $00
    ld [bc], a                                    ; $42c2: $02
    ld [bc], a                                    ; $42c3: $02
    inc b                                         ; $42c4: $04
    add c                                         ; $42c5: $81
    nop                                           ; $42c6: $00
    ld [bc], a                                    ; $42c7: $02
    inc b                                         ; $42c8: $04
    add d                                         ; $42c9: $82
    inc bc                                        ; $42ca: $03
    rlca                                          ; $42cb: $07
    ld [bc], a                                    ; $42cc: $02
    inc b                                         ; $42cd: $04
    ld b, $00                                     ; $42ce: $06 $00
    ld [bc], a                                    ; $42d0: $02
    inc b                                         ; $42d1: $04
    inc b                                         ; $42d2: $04
    nop                                           ; $42d3: $00
    ld [bc], a                                    ; $42d4: $02
    jr nz, jr_0f6_42db                            ; $42d5: $20 $04

    nop                                           ; $42d7: $00
    rst $38                                       ; $42d8: $ff
    dec bc                                        ; $42d9: $0b
    inc bc                                        ; $42da: $03

jr_0f6_42db:
    ld sp, hl                                     ; $42db: $f9
    rlca                                          ; $42dc: $07
    rst $30                                       ; $42dd: $f7
    ld [$f9f6], sp                                ; $42de: $08 $f6 $f9
    ld sp, hl                                     ; $42e1: $f9
    nop                                           ; $42e2: $00
    ld b, $f9                                     ; $42e3: $06 $f9
    ld b, $01                                     ; $42e5: $06 $01
    sbc d                                         ; $42e7: $9a
    ld [hl+], a                                   ; $42e8: $22
    inc hl                                        ; $42e9: $23
    ld a, [de]                                    ; $42ea: $1a
    dec de                                        ; $42eb: $1b
    inc d                                         ; $42ec: $14
    rra                                           ; $42ed: $1f
    ld [$040f], sp                                ; $42ee: $08 $0f $04
    rlca                                          ; $42f1: $07
    dec bc                                        ; $42f2: $0b
    inc c                                         ; $42f3: $0c
    ld [hl], $39                                  ; $42f4: $36 $39
    rst $00                                       ; $42f6: $c7
    ld hl, sp+$3e                                 ; $42f7: $f8 $3e
    ld hl, $003f                                  ; $42f9: $21 $3f $00
    inc d                                         ; $42fc: $14
    dec bc                                        ; $42fd: $0b
    inc c                                         ; $42fe: $0c
    inc bc                                        ; $42ff: $03

Jump_0f6_4300:
    inc d                                         ; $4300: $14
    rra                                           ; $4301: $1f
    ld [bc], a                                    ; $4302: $02
    ld b, h                                       ; $4303: $44
    ld [bc], a                                    ; $4304: $02
    ld e, b                                       ; $4305: $58
    sbc d                                         ; $4306: $9a
    ld l, b                                       ; $4307: $68
    jr jr_0f6_435a                                ; $4308: $18 $50

    jr nz, jr_0f6_4354                            ; $430a: $20 $48

    jr nc, @+$72                                  ; $430c: $30 $70

    nop                                           ; $430e: $00
    inc l                                         ; $430f: $2c
    ld e, h                                       ; $4310: $5c
    inc hl                                        ; $4311: $23
    ld e, a                                       ; $4312: $5f
    ld l, h                                       ; $4313: $6c
    inc e                                         ; $4314: $1c
    ld d, b                                       ; $4315: $50
    jr nc, jr_0f6_4338                            ; $4316: $30 $20

    ld h, b                                       ; $4318: $60
    db $10                                        ; $4319: $10
    ld [hl], b                                    ; $431a: $70
    jr z, jr_0f6_4395                             ; $431b: $28 $78

    ld e, b                                       ; $431d: $58
    ret c                                         ; $431e: $d8

    ld b, h                                       ; $431f: $44
    call nz, $8002                                ; $4320: $c4 $02 $80
    ld [bc], a                                    ; $4323: $02
    ld a, [de]                                    ; $4324: $1a
    ld [bc], a                                    ; $4325: $02
    ld [hl+], a                                   ; $4326: $22
    ld [bc], a                                    ; $4327: $02
    nop                                           ; $4328: $00
    inc b                                         ; $4329: $04
    ld bc, $0016                                  ; $432a: $01 $16 $00
    rst $38                                       ; $432d: $ff
    rrca                                          ; $432e: $0f
    dec b                                         ; $432f: $05
    ld sp, hl                                     ; $4330: $f9
    rlca                                          ; $4331: $07
    rst $30                                       ; $4332: $f7
    ld [$f7f7], sp                                ; $4333: $08 $f7 $f7
    db $f4                                        ; $4336: $f4
    rst $38                                       ; $4337: $ff

jr_0f6_4338:
    rst $30                                       ; $4338: $f7
    ld [bc], a                                    ; $4339: $02
    inc b                                         ; $433a: $04
    ld sp, hl                                     ; $433b: $f9
    inc b                                         ; $433c: $04
    nop                                           ; $433d: $00
    ld [bc], a                                    ; $433e: $02
    jr nz, jr_0f6_4345                            ; $433f: $20 $04

    jr jr_0f6_4345                                ; $4341: $18 $02

    rlca                                          ; $4343: $07
    sub e                                         ; $4344: $93

jr_0f6_4345:
    inc b                                         ; $4345: $04
    rlca                                          ; $4346: $07
    inc b                                         ; $4347: $04
    rlca                                          ; $4348: $07
    ld [bc], a                                    ; $4349: $02
    inc bc                                        ; $434a: $03
    inc b                                         ; $434b: $04
    rlca                                          ; $434c: $07
    add hl, de                                    ; $434d: $19
    ld e, $e1                                     ; $434e: $1e $e1
    cp $1f                                        ; $4350: $fe $1f
    jr jr_0f6_4363                                ; $4352: $18 $0f

jr_0f6_4354:
    nop                                           ; $4354: $00
    dec b                                         ; $4355: $05
    ld [bc], a                                    ; $4356: $02
    rlca                                          ; $4357: $07
    ld [bc], a                                    ; $4358: $02
    inc b                                         ; $4359: $04

jr_0f6_435a:
    inc bc                                        ; $435a: $03
    rlca                                          ; $435b: $07
    ld [$9840], sp                                ; $435c: $08 $40 $98
    and e                                         ; $435f: $a3
    db $e3                                        ; $4360: $e3
    and e                                         ; $4361: $a3

jr_0f6_4362:
    db $e3                                        ; $4362: $e3

jr_0f6_4363:
    inc e                                         ; $4363: $1c
    db $fc                                        ; $4364: $fc
    inc [hl]                                      ; $4365: $34
    call z, $d42c                                 ; $4366: $cc $2c $d4
    inc h                                         ; $4369: $24
    ret c                                         ; $436a: $d8

    db $fc                                        ; $436b: $fc
    inc b                                         ; $436c: $04
    sub e                                         ; $436d: $93
    ld l, a                                       ; $436e: $6f
    ret nc                                        ; $436f: $d0

    cpl                                           ; $4370: $2f
    or e                                          ; $4371: $b3
    ld c, a                                       ; $4372: $4f
    db $e4                                        ; $4373: $e4
    inc e                                         ; $4374: $1c
    ld [$02f8], sp                                ; $4375: $08 $f8 $02
    inc b                                         ; $4378: $04

jr_0f6_4379:
    stop                                          ; $4379: $10 $00
    ld [bc], a                                    ; $437b: $02
    rlca                                          ; $437c: $07
    ld b, $00                                     ; $437d: $06 $00
    add e                                         ; $437f: $83
    jr nz, jr_0f6_4362                            ; $4380: $20 $e0

    jr nz, jr_0f6_4387                            ; $4382: $20 $03

    ldh [$87], a                                  ; $4384: $e0 $87
    nop                                           ; $4386: $00

jr_0f6_4387:
    inc bc                                        ; $4387: $03
    nop                                           ; $4388: $00
    inc bc                                        ; $4389: $03
    nop                                           ; $438a: $00
    inc bc                                        ; $438b: $03
    ld h, d                                       ; $438c: $62
    inc bc                                        ; $438d: $03
    ld h, e                                       ; $438e: $63
    ld [bc], a                                    ; $438f: $02
    add c                                         ; $4390: $81
    ld b, $01                                     ; $4391: $06 $01
    rrca                                          ; $4393: $0f
    nop                                           ; $4394: $00

jr_0f6_4395:
    add l                                         ; $4395: $85
    ld b, b                                       ; $4396: $40
    nop                                           ; $4397: $00
    ld b, b                                       ; $4398: $40
    nop                                           ; $4399: $00
    ld b, b                                       ; $439a: $40
    inc b                                         ; $439b: $04
    ld b, [hl]                                    ; $439c: $46
    ld [bc], a                                    ; $439d: $02
    ld bc, $0014                                  ; $439e: $01 $14 $00
    rst $38                                       ; $43a1: $ff
    ld de, $f906                                  ; $43a2: $11 $06 $f9
    rlca                                          ; $43a5: $07
    rst $30                                       ; $43a6: $f7
    ld [$f6f6], sp                                ; $43a7: $08 $f6 $f6
    di                                            ; $43aa: $f3
    cp $f6                                        ; $43ab: $fe $f6
    inc bc                                        ; $43ad: $03
    inc bc                                        ; $43ae: $03
    ld hl, sp+$03                                 ; $43af: $f8 $03
    nop                                           ; $43b1: $00
    inc bc                                        ; $43b2: $03
    ld bc, $2002                                  ; $43b3: $01 $02 $20
    inc b                                         ; $43b6: $04
    jr jr_0f6_43bb                                ; $43b7: $18 $02

    rlca                                          ; $43b9: $07
    sbc b                                         ; $43ba: $98

jr_0f6_43bb:
    inc b                                         ; $43bb: $04
    rlca                                          ; $43bc: $07
    inc b                                         ; $43bd: $04
    rlca                                          ; $43be: $07
    ld [bc], a                                    ; $43bf: $02
    inc bc                                        ; $43c0: $03
    ld [bc], a                                    ; $43c1: $02
    inc bc                                        ; $43c2: $03
    inc b                                         ; $43c3: $04
    rlca                                          ; $43c4: $07
    jr jr_0f6_43e6                                ; $43c5: $18 $1f

    ldh [rIE], a                                  ; $43c7: $e0 $ff
    dec de                                        ; $43c9: $1b
    inc e                                         ; $43ca: $1c
    rlca                                          ; $43cb: $07
    nop                                           ; $43cc: $00
    ld [bc], a                                    ; $43cd: $02
    ld bc, $0203                                  ; $43ce: $01 $03 $02
    inc b                                         ; $43d1: $04
    rlca                                          ; $43d2: $07
    ld [$9820], sp                                ; $43d3: $08 $20 $98
    ld d, b                                       ; $43d6: $50
    ld [hl], b                                    ; $43d7: $70
    ld d, b                                       ; $43d8: $50
    ld [hl], b                                    ; $43d9: $70
    ld d, a                                       ; $43da: $57
    ld [hl], a                                    ; $43db: $77
    adc c                                         ; $43dc: $89
    rst $38                                       ; $43dd: $ff
    add hl, de                                    ; $43de: $19
    rst $20                                       ; $43df: $e7
    ld d, $ea                                     ; $43e0: $16 $ea
    ld [de], a                                    ; $43e2: $12
    db $ec                                        ; $43e3: $ec

jr_0f6_43e4:
    ld a, l                                       ; $43e4: $7d
    add e                                         ; $43e5: $83

jr_0f6_43e6:
    ret z                                         ; $43e6: $c8

    scf                                           ; $43e7: $37
    add sp, $17                                   ; $43e8: $e8 $17
    ret c                                         ; $43ea: $d8

    daa                                           ; $43eb: $27
    pop af                                        ; $43ec: $f1
    rrca                                          ; $43ed: $0f
    ld [bc], a                                    ; $43ee: $02
    inc b                                         ; $43ef: $04
    inc b                                         ; $43f0: $04
    jr jr_0f6_43ff                                ; $43f1: $18 $0c

    nop                                           ; $43f3: $00
    ld [bc], a                                    ; $43f4: $02
    jr jr_0f6_4379                                ; $43f5: $18 $82

    rlca                                          ; $43f7: $07
    rra                                           ; $43f8: $1f
    ld [bc], a                                    ; $43f9: $02
    jr jr_0f6_43fe                                ; $43fa: $18 $02

    nop                                           ; $43fc: $00
    adc [hl]                                      ; $43fd: $8e

jr_0f6_43fe:
    ld b, b                                       ; $43fe: $40

jr_0f6_43ff:
    ret nz                                        ; $43ff: $c0

    ld b, b                                       ; $4400: $40
    ret nz                                        ; $4401: $c0

    jr nz, jr_0f6_43e4                            ; $4402: $20 $e0

    ld [bc], a                                    ; $4404: $02
    ld bc, $0102                                  ; $4405: $01 $02 $01
    nop                                           ; $4408: $00
    inc bc                                        ; $4409: $03
    ld [de], a                                    ; $440a: $12
    rra                                           ; $440b: $1f
    ld [bc], a                                    ; $440c: $02
    dec e                                         ; $440d: $1d
    inc b                                         ; $440e: $04
    ld h, c                                       ; $440f: $61
    ld [bc], a                                    ; $4410: $02
    add b                                         ; $4411: $80
    ld de, $8d00                                  ; $4412: $11 $00 $8d
    ldh [rP1], a                                  ; $4415: $e0 $00
    ldh [rP1], a                                  ; $4417: $e0 $00
    ldh [rNR50], a                                ; $4419: $e0 $24
    db $fc                                        ; $441b: $fc
    ld e, h                                       ; $441c: $5c
    call c, $c343                                 ; $441d: $dc $43 $c3
    ld b, e                                       ; $4420: $43
    jp $8008                                      ; $4421: $c3 $08 $80


    jr jr_0f6_4426                                ; $4424: $18 $00

jr_0f6_4426:
    ld [bc], a                                    ; $4426: $02
    ld bc, $0010                                  ; $4427: $01 $10 $00
    rst $38                                       ; $442a: $ff
    add hl, bc                                    ; $442b: $09
    ld [bc], a                                    ; $442c: $02
    ld sp, hl                                     ; $442d: $f9
    rlca                                          ; $442e: $07
    rst $30                                       ; $442f: $f7
    ld [$fbfb], sp                                ; $4430: $08 $fb $fb
    ei                                            ; $4433: $fb
    db $fd                                        ; $4434: $fd
    sub e                                         ; $4435: $93
    inc bc                                        ; $4436: $03
    nop                                           ; $4437: $00
    ld [bc], a                                    ; $4438: $02
    ld bc, $0102                                  ; $4439: $01 $02 $01
    rrca                                          ; $443c: $0f
    nop                                           ; $443d: $00
    add hl, de                                    ; $443e: $19
    ld b, $1d                                     ; $443f: $06 $1d
    ld [bc], a                                    ; $4441: $02
    ld a, e                                       ; $4442: $7b
    inc b                                         ; $4443: $04
    cp $00                                        ; $4444: $fe $00
    ld d, b                                       ; $4446: $50
    jr nz, @+$32                                  ; $4447: $20 $30

    rrca                                          ; $4449: $0f
    nop                                           ; $444a: $00
    add e                                         ; $444b: $83
    ld [bc], a                                    ; $444c: $02
    nop                                           ; $444d: $00
    ld bc, $0202                                  ; $444e: $01 $02 $02
    add hl, de                                    ; $4451: $19
    nop                                           ; $4452: $00
    rst $38                                       ; $4453: $ff
    add hl, bc                                    ; $4454: $09
    ld [bc], a                                    ; $4455: $02
    ld sp, hl                                     ; $4456: $f9
    rlca                                          ; $4457: $07
    rst $30                                       ; $4458: $f7
    ld [$fbfb], sp                                ; $4459: $08 $fb $fb
    ei                                            ; $445c: $fb
    db $fd                                        ; $445d: $fd
    sub e                                         ; $445e: $93
    inc bc                                        ; $445f: $03
    nop                                           ; $4460: $00
    ld [bc], a                                    ; $4461: $02
    ld bc, $0102                                  ; $4462: $01 $02 $01
    rrca                                          ; $4465: $0f
    nop                                           ; $4466: $00
    add hl, de                                    ; $4467: $19
    ld b, $1d                                     ; $4468: $06 $1d
    ld [bc], a                                    ; $446a: $02
    ld a, e                                       ; $446b: $7b
    inc b                                         ; $446c: $04
    cp $00                                        ; $446d: $fe $00
    ld d, b                                       ; $446f: $50
    jr nz, @+$32                                  ; $4470: $20 $30

    rrca                                          ; $4472: $0f
    nop                                           ; $4473: $00
    add e                                         ; $4474: $83
    ld [bc], a                                    ; $4475: $02
    nop                                           ; $4476: $00
    ld bc, $0202                                  ; $4477: $01 $02 $02
    add hl, de                                    ; $447a: $19
    nop                                           ; $447b: $00
    rst $38                                       ; $447c: $ff
    rlca                                          ; $447d: $07
    ld bc, $04fc                                  ; $447e: $01 $fc $04
    db $fd                                        ; $4481: $fd
    inc b                                         ; $4482: $04
    rst $38                                       ; $4483: $ff
    ld a, [$0081]                                 ; $4484: $fa $81 $00
    ld [bc], a                                    ; $4487: $02
    ld [bc], a                                    ; $4488: $02
    add e                                         ; $4489: $83
    dec b                                         ; $448a: $05
    nop                                           ; $448b: $00
    ld [bc], a                                    ; $448c: $02
    ld a, [de]                                    ; $448d: $1a
    nop                                           ; $448e: $00
    rst $38                                       ; $448f: $ff
    add hl, bc                                    ; $4490: $09
    ld [bc], a                                    ; $4491: $02
    db $fc                                        ; $4492: $fc
    inc b                                         ; $4493: $04
    db $fd                                        ; $4494: $fd
    inc b                                         ; $4495: $04
    db $fc                                        ; $4496: $fc
    db $fc                                        ; $4497: $fc
    db $fc                                        ; $4498: $fc
    db $fd                                        ; $4499: $fd
    ld [bc], a                                    ; $449a: $02
    ld [$008d], sp                                ; $449b: $08 $8d $00
    ld [$2a00], sp                                ; $449e: $08 $00 $2a
    ld [$9c14], sp                                ; $44a1: $08 $14 $9c
    db $e3                                        ; $44a4: $e3
    ld [$0014], sp                                ; $44a5: $08 $14 $00
    ld a, [hl+]                                   ; $44a8: $2a
    nop                                           ; $44a9: $00
    inc bc                                        ; $44aa: $03
    ld [$0016], sp                                ; $44ab: $08 $16 $00
    ld [bc], a                                    ; $44ae: $02
    ld bc, $0016                                  ; $44af: $01 $16 $00
    rst $38                                       ; $44b2: $ff
    add hl, bc                                    ; $44b3: $09
    ld [bc], a                                    ; $44b4: $02
    db $fc                                        ; $44b5: $fc
    inc b                                         ; $44b6: $04
    db $fd                                        ; $44b7: $fd
    inc b                                         ; $44b8: $04
    ei                                            ; $44b9: $fb
    ei                                            ; $44ba: $fb
    ei                                            ; $44bb: $fb
    cp $04                                        ; $44bc: $fe $04
    inc b                                         ; $44be: $04
    adc [hl]                                      ; $44bf: $8e
    jr nz, jr_0f6_44e6                            ; $44c0: $20 $24

    inc b                                         ; $44c2: $04
    ld de, $0a04                                  ; $44c3: $11 $04 $0a
    rst $18                                       ; $44c6: $df
    ldh [rDIV], a                                 ; $44c7: $e0 $04
    ld a, [bc]                                    ; $44c9: $0a
    inc b                                         ; $44ca: $04
    ld de, $2420                                  ; $44cb: $11 $20 $24
    inc b                                         ; $44ce: $04
    inc b                                         ; $44cf: $04
    ld c, $00                                     ; $44d0: $0e $00
    ld [bc], a                                    ; $44d2: $02
    inc b                                         ; $44d3: $04
    inc b                                         ; $44d4: $04
    nop                                           ; $44d5: $00
    add d                                         ; $44d6: $82
    inc bc                                        ; $44d7: $03
    rlca                                          ; $44d8: $07
    inc b                                         ; $44d9: $04
    nop                                           ; $44da: $00
    ld [bc], a                                    ; $44db: $02
    inc b                                         ; $44dc: $04
    ld c, $00                                     ; $44dd: $0e $00
    rst $38                                       ; $44df: $ff
    add hl, bc                                    ; $44e0: $09
    ld [bc], a                                    ; $44e1: $02
    db $fc                                        ; $44e2: $fc
    inc b                                         ; $44e3: $04
    db $fd                                        ; $44e4: $fd
    inc b                                         ; $44e5: $04

jr_0f6_44e6:
    db $fc                                        ; $44e6: $fc
    db $fc                                        ; $44e7: $fc
    db $fc                                        ; $44e8: $fc
    db $fd                                        ; $44e9: $fd
    ld [bc], a                                    ; $44ea: $02
    adc b                                         ; $44eb: $88
    adc [hl]                                      ; $44ec: $8e
    ld b, c                                       ; $44ed: $41
    ld c, c                                       ; $44ee: $49
    ld [hl+], a                                   ; $44ef: $22
    ld [$0814], sp                                ; $44f0: $08 $14 $08
    adc b                                         ; $44f3: $88
    rst $30                                       ; $44f4: $f7
    inc d                                         ; $44f5: $14
    ld [$0822], sp                                ; $44f6: $08 $22 $08
    ld b, c                                       ; $44f9: $41
    ld c, c                                       ; $44fa: $49
    ld [bc], a                                    ; $44fb: $02
    adc b                                         ; $44fc: $88
    ld c, $00                                     ; $44fd: $0e $00
    ld [bc], a                                    ; $44ff: $02
    ld bc, $0006                                  ; $4500: $01 $06 $00
    ld [bc], a                                    ; $4503: $02
    ld bc, $0006                                  ; $4504: $01 $06 $00
    ld [bc], a                                    ; $4507: $02
    ld bc, $000e                                  ; $4508: $01 $0e $00
    rst $38                                       ; $450b: $ff
    rlca                                          ; $450c: $07
    ld bc, $04fc                                  ; $450d: $01 $fc $04
    db $fd                                        ; $4510: $fd
    inc b                                         ; $4511: $04
    rst $38                                       ; $4512: $ff
    ld a, [$0081]                                 ; $4513: $fa $81 $00
    ld [bc], a                                    ; $4516: $02
    ld [bc], a                                    ; $4517: $02
    add e                                         ; $4518: $83
    dec b                                         ; $4519: $05
    nop                                           ; $451a: $00
    ld [bc], a                                    ; $451b: $02
    ld a, [de]                                    ; $451c: $1a
    nop                                           ; $451d: $00
    rst $38                                       ; $451e: $ff
    rlca                                          ; $451f: $07
    ld bc, $04fc                                  ; $4520: $01 $fc $04
    db $fd                                        ; $4523: $fd
    inc b                                         ; $4524: $04
    rst $38                                       ; $4525: $ff
    ld a, [$0083]                                 ; $4526: $fa $83 $00
    dec b                                         ; $4529: $05
    ld [bc], a                                    ; $452a: $02
    ld [bc], a                                    ; $452b: $02
    nop                                           ; $452c: $00
    add c                                         ; $452d: $81
    dec b                                         ; $452e: $05
    ld a, [de]                                    ; $452f: $1a
    nop                                           ; $4530: $00
    rst $38                                       ; $4531: $ff
    rlca                                          ; $4532: $07
    ld bc, $0cef                                  ; $4533: $01 $ef $0c
    ld sp, hl                                     ; $4536: $f9
    ld [$f1fb], sp                                ; $4537: $08 $fb $f1
    add h                                         ; $453a: $84
    ld b, $05                                     ; $453b: $06 $05
    ld b, $05                                     ; $453d: $06 $05
    inc e                                         ; $453f: $1c
    nop                                           ; $4540: $00
    rst $38                                       ; $4541: $ff
    rlca                                          ; $4542: $07
    ld bc, $0cef                                  ; $4543: $01 $ef $0c
    ld sp, hl                                     ; $4546: $f9
    ld [$f0f7], sp                                ; $4547: $08 $f7 $f0
    add c                                         ; $454a: $81
    inc b                                         ; $454b: $04
    ld [bc], a                                    ; $454c: $02
    ld [bc], a                                    ; $454d: $02
    add e                                         ; $454e: $83
    dec b                                         ; $454f: $05
    ld [bc], a                                    ; $4550: $02
    dec b                                         ; $4551: $05
    ld [bc], a                                    ; $4552: $02
    ld b, $18                                     ; $4553: $06 $18
    nop                                           ; $4555: $00
    rst $38                                       ; $4556: $ff
    rlca                                          ; $4557: $07
    ld bc, $0cef                                  ; $4558: $01 $ef $0c
    ld sp, hl                                     ; $455b: $f9
    ld [$edf6], sp                                ; $455c: $08 $f6 $ed
    add e                                         ; $455f: $83
    nop                                           ; $4560: $00
    ld b, $07                                     ; $4561: $06 $07
    ld [bc], a                                    ; $4563: $02
    add hl, bc                                    ; $4564: $09
    add c                                         ; $4565: $81
    rlca                                          ; $4566: $07
    ld a, [de]                                    ; $4567: $1a
    nop                                           ; $4568: $00
    rst $38                                       ; $4569: $ff
    rlca                                          ; $456a: $07
    ld bc, $0cef                                  ; $456b: $01 $ef $0c
    ld sp, hl                                     ; $456e: $f9
    ld [$eaf6], sp                                ; $456f: $08 $f6 $ea
    ld [bc], a                                    ; $4572: $02
    inc bc                                        ; $4573: $03
    add [hl]                                      ; $4574: $86
    ld b, $05                                     ; $4575: $06 $05
    ld [bc], a                                    ; $4577: $02
    dec b                                         ; $4578: $05
    ld bc, $1802                                  ; $4579: $01 $02 $18
    nop                                           ; $457c: $00
    rst $38                                       ; $457d: $ff
    rlca                                          ; $457e: $07
    ld bc, $0cef                                  ; $457f: $01 $ef $0c
    ld sp, hl                                     ; $4582: $f9
    ld [$e9f8], sp                                ; $4583: $08 $f8 $e9
    add c                                         ; $4586: $81
    add hl, bc                                    ; $4587: $09
    ld [bc], a                                    ; $4588: $02
    ld c, $83                                     ; $4589: $0e $83
    add hl, bc                                    ; $458b: $09
    inc b                                         ; $458c: $04
    ld b, $1a                                     ; $458d: $06 $1a
    nop                                           ; $458f: $00
    rst $38                                       ; $4590: $ff
    rlca                                          ; $4591: $07
    ld bc, $0cef                                  ; $4592: $01 $ef $0c
    ld sp, hl                                     ; $4595: $f9
    ld [$e9f8], sp                                ; $4596: $08 $f8 $e9
    sub b                                         ; $4599: $90
    nop                                           ; $459a: $00
    jr jr_0f6_45d5                                ; $459b: $18 $38

    inc h                                         ; $459d: $24
    ld d, h                                       ; $459e: $54
    ld e, d                                       ; $459f: $5a
    ld [bc], a                                    ; $45a0: $02
    dec b                                         ; $45a1: $05
    ld [bc], a                                    ; $45a2: $02
    dec b                                         ; $45a3: $05
    ld b, $05                                     ; $45a4: $06 $05
    ld e, [hl]                                    ; $45a6: $5e
    ld e, d                                       ; $45a7: $5a
    inc h                                         ; $45a8: $24
    inc a                                         ; $45a9: $3c
    ld [bc], a                                    ; $45aa: $02
    jr jr_0f6_45bb                                ; $45ab: $18 $0e

    nop                                           ; $45ad: $00
    rst $38                                       ; $45ae: $ff
    add hl, bc                                    ; $45af: $09
    ld [bc], a                                    ; $45b0: $02
    rst $28                                       ; $45b1: $ef
    inc c                                         ; $45b2: $0c
    ld sp, hl                                     ; $45b3: $f9
    ld [$ebfd], sp                                ; $45b4: $08 $fd $eb
    db $fd                                        ; $45b7: $fd
    db $ec                                        ; $45b8: $ec
    add c                                         ; $45b9: $81
    nop                                           ; $45ba: $00

jr_0f6_45bb:
    ld [bc], a                                    ; $45bb: $02
    inc e                                         ; $45bc: $1c
    add a                                         ; $45bd: $87
    ld h, d                                       ; $45be: $62
    ld b, e                                       ; $45bf: $43
    cp l                                          ; $45c0: $bd
    ld [hl+], a                                   ; $45c1: $22
    db $e3                                        ; $45c2: $e3
    and d                                         ; $45c3: $a2
    db $e3                                        ; $45c4: $e3
    ld [bc], a                                    ; $45c5: $02
    ld b, c                                       ; $45c6: $41
    ld [bc], a                                    ; $45c7: $02
    ld [hl+], a                                   ; $45c8: $22
    jr jr_0f6_45cb                                ; $45c9: $18 $00

jr_0f6_45cb:
    inc b                                         ; $45cb: $04
    ld bc, $0016                                  ; $45cc: $01 $16 $00
    rst $38                                       ; $45cf: $ff
    rlca                                          ; $45d0: $07
    ld bc, $0cef                                  ; $45d1: $01 $ef $0c
    ld sp, hl                                     ; $45d4: $f9

jr_0f6_45d5:
    ld [$effd], sp                                ; $45d5: $08 $fd $ef
    ld [bc], a                                    ; $45d8: $02
    inc c                                         ; $45d9: $0c
    sub b                                         ; $45da: $90
    ld [de], a                                    ; $45db: $12
    ld e, [hl]                                    ; $45dc: $5e
    ld e, l                                       ; $45dd: $5d
    xor l                                         ; $45de: $ad
    jr nz, jr_0f6_4631                            ; $45df: $20 $50

    jr nz, @+$52                                  ; $45e1: $20 $50

    jr nz, @+$52                                  ; $45e3: $20 $50

    dec d                                         ; $45e5: $15
    dec l                                         ; $45e6: $2d
    ld a, [bc]                                    ; $45e7: $0a
    ld d, $00                                     ; $45e8: $16 $00
    inc c                                         ; $45ea: $0c
    ld c, $00                                     ; $45eb: $0e $00
    rst $38                                       ; $45ed: $ff
    dec bc                                        ; $45ee: $0b
    inc bc                                        ; $45ef: $03
    rst $28                                       ; $45f0: $ef
    inc c                                         ; $45f1: $0c
    ld sp, hl                                     ; $45f2: $f9
    ld [$effb], sp                                ; $45f3: $08 $fb $ef
    ei                                            ; $45f6: $fb
    rst $30                                       ; $45f7: $f7
    ei                                            ; $45f8: $fb
    ld a, [$0202]                                 ; $45f9: $fa $02 $02
    add l                                         ; $45fc: $85
    inc b                                         ; $45fd: $04
    ld b, $08                                     ; $45fe: $06 $08
    inc c                                         ; $4600: $0c
    ld [$0c02], sp                                ; $4601: $08 $02 $0c
    adc l                                         ; $4604: $8d
    ld c, d                                       ; $4605: $4a
    ld c, h                                       ; $4606: $4c
    xor d                                         ; $4607: $aa
    ld c, $49                                     ; $4608: $0e $49
    ld [bc], a                                    ; $460a: $02
    dec b                                         ; $460b: $05
    rlca                                          ; $460c: $07
    inc b                                         ; $460d: $04
    ld bc, $0002                                  ; $460e: $01 $02 $00
    ld bc, $0017                                  ; $4611: $01 $17 $00
    ld [bc], a                                    ; $4614: $02
    ld bc, $8289                                  ; $4615: $01 $89 $82
    add e                                         ; $4618: $83
    ld a, h                                       ; $4619: $7c
    rst $38                                       ; $461a: $ff
    nop                                           ; $461b: $00
    ld a, h                                       ; $461c: $7c
    add e                                         ; $461d: $83
    nop                                           ; $461e: $00
    ld a, h                                       ; $461f: $7c
    ld [$0200], sp                                ; $4620: $08 $00 $02
    inc b                                         ; $4623: $04
    add l                                         ; $4624: $85
    ld [bc], a                                    ; $4625: $02
    ld b, $01                                     ; $4626: $06 $01
    inc bc                                        ; $4628: $03
    ld bc, $0302                                  ; $4629: $01 $02 $03
    adc c                                         ; $462c: $89
    dec b                                         ; $462d: $05
    inc bc                                        ; $462e: $03
    dec b                                         ; $462f: $05
    rlca                                          ; $4630: $07

jr_0f6_4631:
    ld bc, $0206                                  ; $4631: $01 $06 $02
    ld b, $02                                     ; $4634: $06 $02
    ld [bc], a                                    ; $4636: $02
    inc b                                         ; $4637: $04
    inc c                                         ; $4638: $0c
    nop                                           ; $4639: $00
    rst $38                                       ; $463a: $ff
    dec bc                                        ; $463b: $0b
    inc bc                                        ; $463c: $03
    rst $28                                       ; $463d: $ef
    inc c                                         ; $463e: $0c
    ld sp, hl                                     ; $463f: $f9
    ld [$f2f9], sp                                ; $4640: $08 $f9 $f2
    ld sp, hl                                     ; $4643: $f9
    ld a, [$fbf9]                                 ; $4644: $fa $f9 $fb
    ld [bc], a                                    ; $4647: $02
    ld bc, $0284                                  ; $4648: $01 $84 $02
    inc bc                                        ; $464b: $03
    inc b                                         ; $464c: $04
    ld b, $07                                     ; $464d: $06 $07
    nop                                           ; $464f: $00
    ld [bc], a                                    ; $4650: $02
    ld b, b                                       ; $4651: $40

jr_0f6_4652:
    add e                                         ; $4652: $83
    and b                                         ; $4653: $a0
    nop                                           ; $4654: $00
    ld b, b                                       ; $4655: $40
    ld b, $00                                     ; $4656: $06 $00
    ld [bc], a                                    ; $4658: $02
    ld b, $82                                     ; $4659: $06 $82
    ld [bc], a                                    ; $465b: $02
    inc bc                                        ; $465c: $03
    ld [bc], a                                    ; $465d: $02

jr_0f6_465e:
    ld bc, $0002                                  ; $465e: $01 $02 $00
    sbc [hl]                                      ; $4661: $9e
    sub b                                         ; $4662: $90
    ldh a, [rNR41]                                ; $4663: $f0 $20
    call c, Call_0f6_621c                         ; $4665: $dc $1c $62
    ld b, $39                                     ; $4668: $06 $39
    ld h, $59                                     ; $466a: $26 $59
    inc bc                                        ; $466c: $03
    inc h                                         ; $466d: $24
    ld bc, $0306                                  ; $466e: $01 $06 $03
    inc b                                         ; $4671: $04
    inc bc                                        ; $4672: $03
    inc b                                         ; $4673: $04
    inc bc                                        ; $4674: $03
    inc b                                         ; $4675: $04
    ld b, $09                                     ; $4676: $06 $09
    ld [bc], a                                    ; $4678: $02
    dec e                                         ; $4679: $1d
    ld e, h                                       ; $467a: $5c
    ld h, d                                       ; $467b: $62
    jr z, jr_0f6_4652                             ; $467c: $28 $d4

    sub b                                         ; $467e: $90
    ld hl, sp+$0d                                 ; $467f: $f8 $0d
    nop                                           ; $4681: $00
    adc c                                         ; $4682: $89
    ld bc, $0100                                  ; $4683: $01 $00 $01
    nop                                           ; $4686: $00
    ld bc, $0100                                  ; $4687: $01 $00 $01
    nop                                           ; $468a: $00
    ld bc, $000c                                  ; $468b: $01 $0c $00
    rst $38                                       ; $468e: $ff
    dec bc                                        ; $468f: $0b
    inc bc                                        ; $4690: $03
    rst $28                                       ; $4691: $ef
    inc c                                         ; $4692: $0c
    ld sp, hl                                     ; $4693: $f9
    ld [$f4fa], sp                                ; $4694: $08 $fa $f4
    ld a, [$fafc]                                 ; $4697: $fa $fc $fa
    ld bc, $0007                                  ; $469a: $01 $07 $00
    add d                                         ; $469d: $82
    ld bc, $0200                                  ; $469e: $01 $00 $02
    ld bc, $4289                                  ; $46a1: $01 $89 $42
    ld b, c                                       ; $46a4: $41
    and d                                         ; $46a5: $a2
    nop                                           ; $46a6: $00
    ld b, e                                       ; $46a7: $43
    ld [bc], a                                    ; $46a8: $02
    inc bc                                        ; $46a9: $03
    ld [bc], a                                    ; $46aa: $02
    inc bc                                        ; $46ab: $03
    ld [bc], a                                    ; $46ac: $02
    ld bc, $000b                                  ; $46ad: $01 $0b $00
    ld [bc], a                                    ; $46b0: $02
    rra                                           ; $46b1: $1f
    adc l                                         ; $46b2: $8d
    ld h, b                                       ; $46b3: $60
    ld [hl], l                                    ; $46b4: $75
    adc d                                         ; $46b5: $8a
    and b                                         ; $46b6: $a0
    ld e, a                                       ; $46b7: $5f
    ld b, b                                       ; $46b8: $40
    and b                                         ; $46b9: $a0
    nop                                           ; $46ba: $00
    ret nz                                        ; $46bb: $c0

    nop                                           ; $46bc: $00
    add b                                         ; $46bd: $80
    nop                                           ; $46be: $00
    add b                                         ; $46bf: $80
    dec b                                         ; $46c0: $05
    nop                                           ; $46c1: $00
    ld [bc], a                                    ; $46c2: $02
    ret nz                                        ; $46c3: $c0

    add e                                         ; $46c4: $83
    and b                                         ; $46c5: $a0
    nop                                           ; $46c6: $00
    ld b, b                                       ; $46c7: $40
    add hl, bc                                    ; $46c8: $09
    nop                                           ; $46c9: $00
    ld [bc], a                                    ; $46ca: $02
    jr jr_0f6_465e                                ; $46cb: $18 $91

    inc b                                         ; $46cd: $04
    inc e                                         ; $46ce: $1c
    ld [bc], a                                    ; $46cf: $02
    inc c                                         ; $46d0: $0c
    ld [de], a                                    ; $46d1: $12
    ld [bc], a                                    ; $46d2: $02
    dec c                                         ; $46d3: $0d
    nop                                           ; $46d4: $00
    rlca                                          ; $46d5: $07
    nop                                           ; $46d6: $00
    rlca                                          ; $46d7: $07
    ld bc, $0103                                  ; $46d8: $01 $03 $01
    inc bc                                        ; $46db: $03
    ld [bc], a                                    ; $46dc: $02
    ld b, $02                                     ; $46dd: $06 $02
    inc b                                         ; $46df: $04
    ld [$ff00], sp                                ; $46e0: $08 $00 $ff
    dec bc                                        ; $46e3: $0b
    inc bc                                        ; $46e4: $03
    rst $28                                       ; $46e5: $ef
    inc c                                         ; $46e6: $0c
    ld sp, hl                                     ; $46e7: $f9
    ld [$f7f9], sp                                ; $46e8: $08 $f9 $f7
    ld sp, hl                                     ; $46eb: $f9
    rst $38                                       ; $46ec: $ff
    ld sp, hl                                     ; $46ed: $f9
    inc b                                         ; $46ee: $04
    dec b                                         ; $46ef: $05
    nop                                           ; $46f0: $00
    ld [bc], a                                    ; $46f1: $02
    inc b                                         ; $46f2: $04
    add e                                         ; $46f3: $83
    ld a, [bc]                                    ; $46f4: $0a
    nop                                           ; $46f5: $00
    inc b                                         ; $46f6: $04
    dec b                                         ; $46f7: $05
    nop                                           ; $46f8: $00
    ld [bc], a                                    ; $46f9: $02
    ld b, b                                       ; $46fa: $40
    add e                                         ; $46fb: $83
    and b                                         ; $46fc: $a0
    nop                                           ; $46fd: $00
    ld b, b                                       ; $46fe: $40
    dec b                                         ; $46ff: $05
    nop                                           ; $4700: $00
    ld [bc], a                                    ; $4701: $02
    ld bc, $0283                                  ; $4702: $01 $83 $02
    nop                                           ; $4705: $00
    ld bc, $0003                                  ; $4706: $01 $03 $00
    ld [bc], a                                    ; $4709: $02
    inc bc                                        ; $470a: $03
    ld [bc], a                                    ; $470b: $02
    inc c                                         ; $470c: $0c
    sbc c                                         ; $470d: $99
    inc de                                        ; $470e: $13
    inc e                                         ; $470f: $1c
    ld [hl+], a                                   ; $4710: $22
    db $10                                        ; $4711: $10
    inc l                                         ; $4712: $2c
    jr nc, @+$4a                                  ; $4713: $30 $48

    jr nz, jr_0f6_476f                            ; $4715: $20 $58

    jr nc, jr_0f6_4761                            ; $4717: $30 $48

    db $10                                        ; $4719: $10
    ld l, b                                       ; $471a: $68
    jr nc, jr_0f6_4765                            ; $471b: $30 $48

    jr @+$26                                      ; $471d: $18 $24

    jr jr_0f6_4747                                ; $471f: $18 $26

    ld c, $11                                     ; $4721: $0e $11
    inc bc                                        ; $4723: $03
    adc h                                         ; $4724: $8c
    nop                                           ; $4725: $00
    inc bc                                        ; $4726: $03
    ld [bc], a                                    ; $4727: $02
    nop                                           ; $4728: $00
    add [hl]                                      ; $4729: $86
    inc c                                         ; $472a: $0c
    inc e                                         ; $472b: $1c
    ld [bc], a                                    ; $472c: $02
    ld e, $03                                     ; $472d: $1e $03
    inc de                                        ; $472f: $13
    ld [de], a                                    ; $4730: $12
    nop                                           ; $4731: $00
    add [hl]                                      ; $4732: $86
    ld bc, $0213                                  ; $4733: $01 $13 $02
    ld e, $0c                                     ; $4736: $1e $0c
    inc e                                         ; $4738: $1c
    ld [bc], a                                    ; $4739: $02
    nop                                           ; $473a: $00
    rst $38                                       ; $473b: $ff
    dec bc                                        ; $473c: $0b
    inc bc                                        ; $473d: $03
    rst $28                                       ; $473e: $ef
    inc c                                         ; $473f: $0c
    ld sp, hl                                     ; $4740: $f9
    ld [$fafc], sp                                ; $4741: $08 $fc $fa
    db $fc                                        ; $4744: $fc
    ld [bc], a                                    ; $4745: $02
    db $fc                                        ; $4746: $fc

jr_0f6_4747:
    add hl, bc                                    ; $4747: $09
    add c                                         ; $4748: $81
    nop                                           ; $4749: $00
    ld [bc], a                                    ; $474a: $02
    ld [bc], a                                    ; $474b: $02
    add e                                         ; $474c: $83
    dec b                                         ; $474d: $05
    nop                                           ; $474e: $00
    ld [bc], a                                    ; $474f: $02
    inc bc                                        ; $4750: $03
    nop                                           ; $4751: $00
    ld [bc], a                                    ; $4752: $02
    ld b, b                                       ; $4753: $40
    add e                                         ; $4754: $83
    and b                                         ; $4755: $a0
    nop                                           ; $4756: $00
    ld b, b                                       ; $4757: $40
    rlca                                          ; $4758: $07
    nop                                           ; $4759: $00
    add c                                         ; $475a: $81
    ld bc, $000a                                  ; $475b: $01 $0a $00
    ld [bc], a                                    ; $475e: $02
    jr nz, jr_0f6_4763                            ; $475f: $20 $02

jr_0f6_4761:
    ld h, b                                       ; $4761: $60
    sub h                                         ; $4762: $94

jr_0f6_4763:
    add b                                         ; $4763: $80
    ret nz                                        ; $4764: $c0

jr_0f6_4765:
    add b                                         ; $4765: $80
    ret nz                                        ; $4766: $c0

    ld b, b                                       ; $4767: $40
    and b                                         ; $4768: $a0
    ld b, b                                       ; $4769: $40
    and b                                         ; $476a: $a0
    ld h, b                                       ; $476b: $60
    sub b                                         ; $476c: $90
    jr nz, jr_0f6_47c7                            ; $476d: $20 $58

jr_0f6_476f:
    jr c, jr_0f6_47b8                             ; $476f: $38 $47

    dec e                                         ; $4771: $1d
    and d                                         ; $4772: $a2
    add a                                         ; $4773: $87
    ld e, b                                       ; $4774: $58
    nop                                           ; $4775: $00
    add a                                         ; $4776: $87
    ld [$0200], sp                                ; $4777: $08 $00 $02
    inc b                                         ; $477a: $04
    sub [hl]                                      ; $477b: $96
    ld [bc], a                                    ; $477c: $02
    ld b, $01                                     ; $477d: $06 $01
    inc bc                                        ; $477f: $03
    ld bc, $0203                                  ; $4780: $01 $03 $02
    dec d                                         ; $4783: $15
    ld [de], a                                    ; $4784: $12
    dec l                                         ; $4785: $2d
    ld b, $19                                     ; $4786: $06 $19
    inc c                                         ; $4788: $0c
    ld [de], a                                    ; $4789: $12
    jr @+$68                                      ; $478a: $18 $66

    ld a, b                                       ; $478c: $78
    inc b                                         ; $478d: $04
    jr nz, jr_0f6_47e8                            ; $478e: $20 $58

    nop                                           ; $4790: $00
    ld h, b                                       ; $4791: $60
    ld [$ff00], sp                                ; $4792: $08 $00 $ff
    dec bc                                        ; $4795: $0b
    inc bc                                        ; $4796: $03
    rst $28                                       ; $4797: $ef
    inc c                                         ; $4798: $0c
    ld sp, hl                                     ; $4799: $f9
    ld [$02f9], sp                                ; $479a: $08 $f9 $02
    ld sp, hl                                     ; $479d: $f9
    ld a, [bc]                                    ; $479e: $0a
    ld sp, hl                                     ; $479f: $f9
    inc c                                         ; $47a0: $0c
    ld [bc], a                                    ; $47a1: $02
    nop                                           ; $47a2: $00
    ld [bc], a                                    ; $47a3: $02
    ld bc, $0286                                  ; $47a4: $01 $86 $02
    inc de                                        ; $47a7: $13
    db $10                                        ; $47a8: $10
    jr z, jr_0f6_47ab                             ; $47a9: $28 $00

jr_0f6_47ab:
    db $10                                        ; $47ab: $10
    inc bc                                        ; $47ac: $03
    nop                                           ; $47ad: $00
    ld [bc], a                                    ; $47ae: $02
    ld bc, $0202                                  ; $47af: $01 $02 $02
    add e                                         ; $47b2: $83
    dec b                                         ; $47b3: $05
    nop                                           ; $47b4: $00
    ld [bc], a                                    ; $47b5: $02
    inc b                                         ; $47b6: $04
    nop                                           ; $47b7: $00

jr_0f6_47b8:
    add [hl]                                      ; $47b8: $86
    inc bc                                        ; $47b9: $03
    ld b, e                                       ; $47ba: $43
    ld b, c                                       ; $47bb: $41
    and c                                         ; $47bc: $a1
    nop                                           ; $47bd: $00
    ld b, b                                       ; $47be: $40
    ld [bc], a                                    ; $47bf: $02
    nop                                           ; $47c0: $00
    sbc [hl]                                      ; $47c1: $9e
    ret nz                                        ; $47c2: $c0

    ld hl, sp+$18                                 ; $47c3: $f8 $18
    and $0e                                       ; $47c5: $e6 $0e

jr_0f6_47c7:
    ld sp, $0807                                  ; $47c7: $31 $07 $08
    inc bc                                        ; $47ca: $03
    inc b                                         ; $47cb: $04
    ld bc, $0002                                  ; $47cc: $01 $02 $00
    inc bc                                        ; $47cf: $03
    ld bc, $0182                                  ; $47d0: $01 $82 $01
    ld [bc], a                                    ; $47d3: $02
    ld bc, $0302                                  ; $47d4: $01 $02 $03
    inc b                                         ; $47d7: $04
    dec b                                         ; $47d8: $05
    ld a, [bc]                                    ; $47d9: $0a
    ld b, $39                                     ; $47da: $06 $39
    jr @-$18                                      ; $47dc: $18 $e6

    ret nz                                        ; $47de: $c0

    ld hl, sp+$09                                 ; $47df: $f8 $09
    nop                                           ; $47e1: $00
    add d                                         ; $47e2: $82
    ld [bc], a                                    ; $47e3: $02
    nop                                           ; $47e4: $00
    ld [bc], a                                    ; $47e5: $02
    ld [bc], a                                    ; $47e6: $02
    adc l                                         ; $47e7: $8d

jr_0f6_47e8:
    ld bc, $0102                                  ; $47e8: $01 $02 $01
    ld [bc], a                                    ; $47eb: $02
    ld bc, $0300                                  ; $47ec: $01 $00 $03
    ld [bc], a                                    ; $47ef: $02
    ld bc, $0200                                  ; $47f0: $01 $00 $02
    nop                                           ; $47f3: $00
    ld [bc], a                                    ; $47f4: $02
    ld [$ff00], sp                                ; $47f5: $08 $00 $ff
    dec bc                                        ; $47f8: $0b
    inc bc                                        ; $47f9: $03
    rst $28                                       ; $47fa: $ef
    inc c                                         ; $47fb: $0c
    ld sp, hl                                     ; $47fc: $f9
    ld [$05f9], sp                                ; $47fd: $08 $f9 $05
    ld sp, hl                                     ; $4800: $f9
    dec c                                         ; $4801: $0d
    ld sp, hl                                     ; $4802: $f9
    ld [de], a                                    ; $4803: $12
    dec b                                         ; $4804: $05
    nop                                           ; $4805: $00

jr_0f6_4806:
    ld [bc], a                                    ; $4806: $02
    ld [bc], a                                    ; $4807: $02
    adc l                                         ; $4808: $8d
    dec b                                         ; $4809: $05
    nop                                           ; $480a: $00
    inc bc                                        ; $480b: $03
    ld bc, $0102                                  ; $480c: $01 $02 $01
    ld b, d                                       ; $480f: $42
    ld b, b                                       ; $4810: $40
    and e                                         ; $4811: $a3
    ld [bc], a                                    ; $4812: $02
    ld b, e                                       ; $4813: $43
    ld [bc], a                                    ; $4814: $02
    inc bc                                        ; $4815: $03
    ld [bc], a                                    ; $4816: $02
    ld bc, $0005                                  ; $4817: $01 $05 $00
    ld [bc], a                                    ; $481a: $02
    ld [bc], a                                    ; $481b: $02
    sub e                                         ; $481c: $93
    dec b                                         ; $481d: $05
    nop                                           ; $481e: $00
    ld [bc], a                                    ; $481f: $02
    nop                                           ; $4820: $00
    rra                                           ; $4821: $1f
    rla                                           ; $4822: $17
    ld l, b                                       ; $4823: $68
    ld a, l                                       ; $4824: $7d
    add d                                         ; $4825: $82
    ldh [$1f], a                                  ; $4826: $e0 $1f
    ret nz                                        ; $4828: $c0

    jr nz, jr_0f6_482b                            ; $4829: $20 $00

jr_0f6_482b:
    ret nz                                        ; $482b: $c0

    nop                                           ; $482c: $00
    add b                                         ; $482d: $80
    nop                                           ; $482e: $00
    add b                                         ; $482f: $80
    dec b                                         ; $4830: $05
    nop                                           ; $4831: $00
    inc bc                                        ; $4832: $03
    add b                                         ; $4833: $80
    dec bc                                        ; $4834: $0b
    nop                                           ; $4835: $00
    ld [bc], a                                    ; $4836: $02
    jr @-$6f                                      ; $4837: $18 $8f

    inc b                                         ; $4839: $04
    inc e                                         ; $483a: $1c
    ld [bc], a                                    ; $483b: $02
    inc c                                         ; $483c: $0c
    ld [de], a                                    ; $483d: $12
    ld [bc], a                                    ; $483e: $02
    dec c                                         ; $483f: $0d
    nop                                           ; $4840: $00
    rlca                                          ; $4841: $07
    nop                                           ; $4842: $00
    rlca                                          ; $4843: $07
    ld bc, $0103                                  ; $4844: $01 $03 $01
    inc bc                                        ; $4847: $03
    ld [bc], a                                    ; $4848: $02
    ld b, $02                                     ; $4849: $06 $02
    inc b                                         ; $484b: $04
    ld [$ff00], sp                                ; $484c: $08 $00 $ff
    dec bc                                        ; $484f: $0b
    inc bc                                        ; $4850: $03
    rst $28                                       ; $4851: $ef
    inc c                                         ; $4852: $0c
    ld sp, hl                                     ; $4853: $f9
    ld [$09f9], sp                                ; $4854: $08 $f9 $09
    ld sp, hl                                     ; $4857: $f9
    ld de, $12f9                                  ; $4858: $11 $f9 $12
    inc bc                                        ; $485b: $03

Call_0f6_485c:
    nop                                           ; $485c: $00
    ld [bc], a                                    ; $485d: $02
    ld b, b                                       ; $485e: $40
    add [hl]                                      ; $485f: $86
    and c                                         ; $4860: $a1
    ld bc, $0142                                  ; $4861: $01 $42 $01
    ld [bc], a                                    ; $4864: $02
    inc bc                                        ; $4865: $03
    ld [bc], a                                    ; $4866: $02
    inc b                                         ; $4867: $04
    adc [hl]                                      ; $4868: $8e
    dec bc                                        ; $4869: $0b
    inc bc                                        ; $486a: $03
    inc b                                         ; $486b: $04
    ld bc, $0306                                  ; $486c: $01 $06 $03
    inc b                                         ; $486f: $04
    ld bc, $0102                                  ; $4870: $01 $02 $01
    ld [bc], a                                    ; $4873: $02
    nop                                           ; $4874: $00
    ld bc, $0200                                  ; $4875: $01 $00 $02
    ld [$1496], sp                                ; $4878: $08 $96 $14
    nop                                           ; $487b: $00
    ld [$3e06], sp                                ; $487c: $08 $06 $3e
    add hl, sp                                    ; $487f: $39
    rst $00                                       ; $4880: $c7
    pop hl                                        ; $4881: $e1
    add hl, de                                    ; $4882: $19
    ret nz                                        ; $4883: $c0

    jr nz, jr_0f6_4806                            ; $4884: $20 $80

    ld b, b                                       ; $4886: $40
    nop                                           ; $4887: $00
    add b                                         ; $4888: $80
    nop                                           ; $4889: $00
    add b                                         ; $488a: $80
    nop                                           ; $488b: $00
    add b                                         ; $488c: $80
    nop                                           ; $488d: $00
    add b                                         ; $488e: $80
    nop                                           ; $488f: $00
    ld [bc], a                                    ; $4890: $02
    add b                                         ; $4891: $80
    adc c                                         ; $4892: $89
    ld b, b                                       ; $4893: $40
    ret nz                                        ; $4894: $c0

    jr nz, @-$1e                                  ; $4895: $20 $e0

    add hl, de                                    ; $4897: $19
    add hl, sp                                    ; $4898: $39
    rst $00                                       ; $4899: $c7
    ld b, $3e                                     ; $489a: $06 $3e
    ld b, $00                                     ; $489c: $06 $00
    ld [bc], a                                    ; $489e: $02
    ld bc, $0012                                  ; $489f: $01 $12 $00
    ld [bc], a                                    ; $48a2: $02
    ld bc, $0006                                  ; $48a3: $01 $06 $00
    rst $38                                       ; $48a6: $ff
    dec bc                                        ; $48a7: $0b
    inc bc                                        ; $48a8: $03
    rst $28                                       ; $48a9: $ef
    inc c                                         ; $48aa: $0c
    ld sp, hl                                     ; $48ab: $f9
    ld [$0bfa], sp                                ; $48ac: $08 $fa $0b
    ld a, [$fa13]                                 ; $48af: $fa $13 $fa
    rla                                           ; $48b2: $17
    add c                                         ; $48b3: $81
    nop                                           ; $48b4: $00
    ld [bc], a                                    ; $48b5: $02
    ld b, b                                       ; $48b6: $40
    add e                                         ; $48b7: $83
    and b                                         ; $48b8: $a0
    ld bc, $0241                                  ; $48b9: $01 $41 $02
    inc bc                                        ; $48bc: $03
    sub c                                         ; $48bd: $91
    inc b                                         ; $48be: $04
    ld h, $24                                     ; $48bf: $26 $24
    ld d, [hl]                                    ; $48c1: $56
    nop                                           ; $48c2: $00
    daa                                           ; $48c3: $27
    ld [bc], a                                    ; $48c4: $02
    dec b                                         ; $48c5: $05
    ld [bc], a                                    ; $48c6: $02
    dec b                                         ; $48c7: $05
    ld bc, $0102                                  ; $48c8: $01 $02 $01
    ld [bc], a                                    ; $48cb: $02
    nop                                           ; $48cc: $00
    ld bc, $0200                                  ; $48cd: $01 $00 $02
    inc b                                         ; $48d0: $04
    add e                                         ; $48d1: $83
    ld a, [bc]                                    ; $48d2: $0a
    nop                                           ; $48d3: $00
    inc b                                         ; $48d4: $04
    dec c                                         ; $48d5: $0d
    nop                                           ; $48d6: $00
    ld [bc], a                                    ; $48d7: $02
    ld [bc], a                                    ; $48d8: $02
    add h                                         ; $48d9: $84
    dec b                                         ; $48da: $05
    nop                                           ; $48db: $00
    ld [bc], a                                    ; $48dc: $02
    nop                                           ; $48dd: $00
    ld [bc], a                                    ; $48de: $02
    add b                                         ; $48df: $80
    adc c                                         ; $48e0: $89
    ld b, c                                       ; $48e1: $41
    pop bc                                        ; $48e2: $c1
    ld a, $ef                                     ; $48e3: $3e $ef
    db $10                                        ; $48e5: $10
    ld a, [hl-]                                   ; $48e6: $3a
    push bc                                       ; $48e7: $c5
    nop                                           ; $48e8: $00
    ld a, $08                                     ; $48e9: $3e $08
    nop                                           ; $48eb: $00
    ld [bc], a                                    ; $48ec: $02
    inc b                                         ; $48ed: $04
    sub h                                         ; $48ee: $94
    ld [bc], a                                    ; $48ef: $02
    ld b, $01                                     ; $48f0: $06 $01
    inc bc                                        ; $48f2: $03
    ld bc, $0003                                  ; $48f3: $01 $03 $00
    rlca                                          ; $48f6: $07
    ld [bc], a                                    ; $48f7: $02
    dec b                                         ; $48f8: $05
    nop                                           ; $48f9: $00
    rrca                                          ; $48fa: $0f
    inc b                                         ; $48fb: $04
    ld a, [bc]                                    ; $48fc: $0a
    inc c                                         ; $48fd: $0c
    ld [bc], a                                    ; $48fe: $02
    ld [$0004], sp                                ; $48ff: $08 $04 $00
    ld [$0006], sp                                ; $4902: $08 $06 $00
    rst $38                                       ; $4905: $ff
    dec bc                                        ; $4906: $0b
    inc bc                                        ; $4907: $03
    rst $28                                       ; $4908: $ef
    inc c                                         ; $4909: $0c
    ld sp, hl                                     ; $490a: $f9
    ld [$11f9], sp                                ; $490b: $08 $f9 $11
    ld sp, hl                                     ; $490e: $f9
    add hl, de                                    ; $490f: $19
    ld sp, hl                                     ; $4910: $f9
    ld a, [de]                                    ; $4911: $1a
    ld [bc], a                                    ; $4912: $02
    ld bc, $0286                                  ; $4913: $01 $86 $02
    ld b, e                                       ; $4916: $43
    ld b, h                                       ; $4917: $44
    and [hl]                                      ; $4918: $a6
    nop                                           ; $4919: $00

jr_0f6_491a:
    ld b, b                                       ; $491a: $40
    inc bc                                        ; $491b: $03
    nop                                           ; $491c: $00
    ld [bc], a                                    ; $491d: $02
    ld [bc], a                                    ; $491e: $02
    add e                                         ; $491f: $83
    dec b                                         ; $4920: $05
    nop                                           ; $4921: $00
    ld [bc], a                                    ; $4922: $02
    dec b                                         ; $4923: $05
    nop                                           ; $4924: $00
    ld [bc], a                                    ; $4925: $02
    jr nz, @-$79                                  ; $4926: $20 $85

    ld d, b                                       ; $4928: $50
    ld b, $26                                     ; $4929: $06 $26
    ld [bc], a                                    ; $492b: $02
    inc bc                                        ; $492c: $03
    ld [bc], a                                    ; $492d: $02
    ld bc, $0002                                  ; $492e: $01 $02 $00
    sbc [hl]                                      ; $4931: $9e
    add b                                         ; $4932: $80
    ldh a, [$30]                                  ; $4933: $f0 $30
    call z, Call_0f6_720c                         ; $4935: $cc $0c $72
    inc c                                         ; $4938: $0c
    inc de                                        ; $4939: $13
    ld b, $09                                     ; $493a: $06 $09
    inc bc                                        ; $493c: $03
    inc b                                         ; $493d: $04
    ld [bc], a                                    ; $493e: $02
    dec b                                         ; $493f: $05
    ld bc, $0306                                  ; $4940: $01 $06 $03
    inc b                                         ; $4943: $04
    inc bc                                        ; $4944: $03
    inc b                                         ; $4945: $04
    ld [bc], a                                    ; $4946: $02
    dec c                                         ; $4947: $0d
    ld c, $11                                     ; $4948: $0e $11
    inc c                                         ; $494a: $0c
    ld [hl], d                                    ; $494b: $72
    jr nc, jr_0f6_491a                            ; $494c: $30 $cc

    add b                                         ; $494e: $80
    ldh a, [$0d]                                  ; $494f: $f0 $0d
    nop                                           ; $4951: $00
    adc c                                         ; $4952: $89
    ld bc, $0100                                  ; $4953: $01 $00 $01
    nop                                           ; $4956: $00
    ld bc, $0100                                  ; $4957: $01 $00 $01
    nop                                           ; $495a: $00
    ld bc, $000c                                  ; $495b: $01 $0c $00
    rst $38                                       ; $495e: $ff
    dec c                                         ; $495f: $0d
    inc b                                         ; $4960: $04
    ei                                            ; $4961: $fb
    dec b                                         ; $4962: $05
    ei                                            ; $4963: $fb
    dec b                                         ; $4964: $05
    ld a, [$f8f8]                                 ; $4965: $fa $f8 $f8
    nop                                           ; $4968: $00
    nop                                           ; $4969: $00
    ld bc, $f908                                  ; $496a: $01 $08 $f9
    ld [bc], a                                    ; $496d: $02
    ld hl, $1902                                  ; $496e: $21 $02 $19
    ld [bc], a                                    ; $4971: $02
    rra                                           ; $4972: $1f
    adc [hl]                                      ; $4973: $8e
    ld c, $0f                                     ; $4974: $0e $0f
    inc c                                         ; $4976: $0c
    rrca                                          ; $4977: $0f
    add hl, sp                                    ; $4978: $39
    ld a, $e3                                     ; $4979: $3e $e3
    db $fc                                        ; $497b: $fc
    add hl, sp                                    ; $497c: $39
    ld a, $0c                                     ; $497d: $3e $0c
    rrca                                          ; $497f: $0f
    ld c, $0f                                     ; $4980: $0e $0f
    ld [bc], a                                    ; $4982: $02
    rra                                           ; $4983: $1f
    ld [bc], a                                    ; $4984: $02
    add hl, de                                    ; $4985: $19
    ld [bc], a                                    ; $4986: $02
    ld hl, $0006                                  ; $4987: $21 $06 $00
    inc b                                         ; $498a: $04
    add b                                         ; $498b: $80
    ld [bc], a                                    ; $498c: $02

jr_0f6_498d:
    jp nz, Jump_0f6_4c96                          ; $498d: $c2 $96 $4c

    call z, $fc7c                                 ; $4990: $cc $7c $fc
    jr c, jr_0f6_498d                             ; $4993: $38 $f8

    sbc b                                         ; $4995: $98
    ld a, b                                       ; $4996: $78
    adc $3e                                       ; $4997: $ce $3e

jr_0f6_4999:
    db $e3                                        ; $4999: $e3
    rra                                           ; $499a: $1f
    adc $3e                                       ; $499b: $ce $3e
    sbc b                                         ; $499d: $98
    ld a, b                                       ; $499e: $78
    jr c, jr_0f6_4999                             ; $499f: $38 $f8

    ld a, h                                       ; $49a1: $7c
    db $fc                                        ; $49a2: $fc
    ld c, h                                       ; $49a3: $4c
    call z, $c202                                 ; $49a4: $cc $02 $c2
    ld [bc], a                                    ; $49a7: $02
    add b                                         ; $49a8: $80
    ld [bc], a                                    ; $49a9: $02
    ld bc, $001e                                  ; $49aa: $01 $1e $00
    ld [bc], a                                    ; $49ad: $02
    ld bc, $001e                                  ; $49ae: $01 $1e $00
    rst $38                                       ; $49b1: $ff
    dec bc                                        ; $49b2: $0b
    inc bc                                        ; $49b3: $03
    ei                                            ; $49b4: $fb

jr_0f6_49b5:
    dec b                                         ; $49b5: $05
    ei                                            ; $49b6: $fb
    dec b                                         ; $49b7: $05
    ld sp, hl                                     ; $49b8: $f9
    ld hl, sp-$08                                 ; $49b9: $f8 $f8
    nop                                           ; $49bb: $00
    ld [bc], a                                    ; $49bc: $02
    ld bc, $1002                                  ; $49bd: $01 $02 $10
    inc b                                         ; $49c0: $04
    inc c                                         ; $49c1: $0c
    inc b                                         ; $49c2: $04
    rlca                                          ; $49c3: $07
    sub b                                         ; $49c4: $90
    db $fc                                        ; $49c5: $fc
    rst $38                                       ; $49c6: $ff
    inc hl                                        ; $49c7: $23
    inc a                                         ; $49c8: $3c
    add hl, de                                    ; $49c9: $19
    ld e, $0d                                     ; $49ca: $1e $0d
    ld c, $0d                                     ; $49cc: $0e $0d
    ld c, $3e                                     ; $49ce: $0e $3e
    ccf                                           ; $49d0: $3f
    ld [hl-], a                                   ; $49d1: $32
    inc sp                                        ; $49d2: $33
    ld b, d                                       ; $49d3: $42
    ld b, e                                       ; $49d4: $43
    ld [bc], a                                    ; $49d5: $02
    inc bc                                        ; $49d6: $03
    inc b                                         ; $49d7: $04
    ld [bc], a                                    ; $49d8: $02
    inc b                                         ; $49d9: $04
    jr nz, jr_0f6_49de                            ; $49da: $20 $02

    ld h, b                                       ; $49dc: $60
    sub c                                         ; $49dd: $91

jr_0f6_49de:
    and c                                         ; $49de: $a1
    pop hl                                        ; $49df: $e1
    and [hl]                                      ; $49e0: $a6
    and $3e                                       ; $49e1: $e6 $3e
    cp $58                                        ; $49e3: $fe $58
    cp b                                          ; $49e5: $b8
    ret c                                         ; $49e6: $d8

    jr c, jr_0f6_49b5                             ; $49e7: $38 $cc

    inc a                                         ; $49e9: $3c
    ld [c], a                                     ; $49ea: $e2
    ld e, $1f                                     ; $49eb: $1e $1f
    rst $38                                       ; $49ed: $ff
    ld [hl], b                                    ; $49ee: $70
    inc bc                                        ; $49ef: $03
    ldh a, [rSC]                                  ; $49f0: $f0 $02
    sbc b                                         ; $49f2: $98
    ld [bc], a                                    ; $49f3: $02
    jr jr_0f6_49f8                                ; $49f4: $18 $02

    inc b                                         ; $49f6: $04
    ld [bc], a                                    ; $49f7: $02

jr_0f6_49f8:
    ld bc, $001e                                  ; $49f8: $01 $1e $00
    rst $38                                       ; $49fb: $ff
    dec bc                                        ; $49fc: $0b
    inc bc                                        ; $49fd: $03
    ei                                            ; $49fe: $fb
    dec b                                         ; $49ff: $05

jr_0f6_4a00:
    ei                                            ; $4a00: $fb
    dec b                                         ; $4a01: $05
    ld hl, sp-$08                                 ; $4a02: $f8 $f8
    ld sp, hl                                     ; $4a04: $f9
    nop                                           ; $4a05: $00
    db $fd                                        ; $4a06: $fd
    ld bc, $0404                                  ; $4a07: $01 $04 $04
    inc b                                         ; $4a0a: $04
    ld b, $02                                     ; $4a0b: $06 $02
    ld h, e                                       ; $4a0d: $63
    ld [bc], a                                    ; $4a0e: $02
    ccf                                           ; $4a0f: $3f
    adc l                                         ; $4a10: $8d
    ld [de], a                                    ; $4a11: $12
    dec e                                         ; $4a12: $1d
    add hl, de                                    ; $4a13: $19
    ld e, $09                                     ; $4a14: $1e $09
    ld c, $0d                                     ; $4a16: $0e $0d
    ld c, $3e                                     ; $4a18: $0e $3e
    dec a                                         ; $4a1a: $3d
    db $f4                                        ; $4a1b: $f4
    rst $30                                       ; $4a1c: $f7
    dec b                                         ; $4a1d: $05
    inc bc                                        ; $4a1e: $03
    rlca                                          ; $4a1f: $07
    ld [bc], a                                    ; $4a20: $02
    inc c                                         ; $4a21: $0c
    inc b                                         ; $4a22: $04
    ld [$1802], sp                                ; $4a23: $08 $02 $18
    ld [bc], a                                    ; $4a26: $02
    ld [hl], b                                    ; $4a27: $70
    sub b                                         ; $4a28: $90
    ret nc                                        ; $4a29: $d0

    ldh a, [rNR22]                                ; $4a2a: $f0 $17
    rst $30                                       ; $4a2c: $f7
    ld a, $de                                     ; $4a2d: $3e $de
    ret c                                         ; $4a2f: $d8

    jr c, @-$36                                   ; $4a30: $38 $c8

    jr c, jr_0f6_4a00                             ; $4a32: $38 $cc

    inc a                                         ; $4a34: $3c
    inc h                                         ; $4a35: $24
    call c, $fe7e                                 ; $4a36: $dc $7e $fe
    ld [bc], a                                    ; $4a39: $02
    db $e3                                        ; $4a3a: $e3
    inc b                                         ; $4a3b: $04
    jr nc, @+$06                                  ; $4a3c: $30 $04

    db $10                                        ; $4a3e: $10
    ld [bc], a                                    ; $4a3f: $02
    ld bc, $001e                                  ; $4a40: $01 $1e $00
    rst $38                                       ; $4a43: $ff
    dec bc                                        ; $4a44: $0b
    inc bc                                        ; $4a45: $03
    ei                                            ; $4a46: $fb
    dec b                                         ; $4a47: $05
    ei                                            ; $4a48: $fb
    dec b                                         ; $4a49: $05
    ld hl, sp-$08                                 ; $4a4a: $f8 $f8
    ld sp, hl                                     ; $4a4c: $f9
    nop                                           ; $4a4d: $00
    cp $01                                        ; $4a4e: $fe $01
    inc b                                         ; $4a50: $04
    ld [bc], a                                    ; $4a51: $02
    ld [bc], a                                    ; $4a52: $02
    inc bc                                        ; $4a53: $03
    sub b                                         ; $4a54: $90
    ld b, d                                       ; $4a55: $42
    ld b, e                                       ; $4a56: $43
    ld [hl-], a                                   ; $4a57: $32
    inc sp                                        ; $4a58: $33
    ld e, $1f                                     ; $4a59: $1e $1f
    dec c                                         ; $4a5b: $0d
    ld c, $0d                                     ; $4a5c: $0e $0d
    ld c, $11                                     ; $4a5e: $0e $11
    ld e, $23                                     ; $4a60: $1e $23
    inc a                                         ; $4a62: $3c
    db $fc                                        ; $4a63: $fc
    rst $38                                       ; $4a64: $ff
    inc b                                         ; $4a65: $04
    rlca                                          ; $4a66: $07
    ld [bc], a                                    ; $4a67: $02
    inc c                                         ; $4a68: $0c
    ld [bc], a                                    ; $4a69: $02
    ld [$1002], sp                                ; $4a6a: $08 $02 $10
    ld [bc], a                                    ; $4a6d: $02
    inc b                                         ; $4a6e: $04
    ld [bc], a                                    ; $4a6f: $02
    ld [$9802], sp                                ; $4a70: $08 $02 $98
    sub h                                         ; $4a73: $94
    ld [hl], b                                    ; $4a74: $70
    ldh a, [rSVBK]                                ; $4a75: $f0 $70
    ldh a, [$1f]                                  ; $4a77: $f0 $1f
    rst $38                                       ; $4a79: $ff
    ld [c], a                                     ; $4a7a: $e2
    ld e, $cc                                     ; $4a7b: $1e $cc
    inc a                                         ; $4a7d: $3c
    ret z                                         ; $4a7e: $c8

    jr c, jr_0f6_4ad9                             ; $4a7f: $38 $58

    cp b                                          ; $4a81: $b8
    inc a                                         ; $4a82: $3c
    db $fc                                        ; $4a83: $fc
    and [hl]                                      ; $4a84: $a6
    and $a1                                       ; $4a85: $e6 $a1
    pop hl                                        ; $4a87: $e1
    ld [bc], a                                    ; $4a88: $02
    ld h, b                                       ; $4a89: $60
    inc b                                         ; $4a8a: $04
    jr nz, @+$04                                  ; $4a8b: $20 $02

    ld bc, $001e                                  ; $4a8d: $01 $1e $00
    rst $38                                       ; $4a90: $ff
    add hl, bc                                    ; $4a91: $09
    ld [bc], a                                    ; $4a92: $02
    ei                                            ; $4a93: $fb
    dec b                                         ; $4a94: $05
    ei                                            ; $4a95: $fb
    dec b                                         ; $4a96: $05
    ei                                            ; $4a97: $fb
    ei                                            ; $4a98: $fb
    ei                                            ; $4a99: $fb
    cp $02                                        ; $4a9a: $fe $02
    inc b                                         ; $4a9c: $04
    add e                                         ; $4a9d: $83
    nop                                           ; $4a9e: $00
    inc b                                         ; $4a9f: $04
    ld a, [bc]                                    ; $4aa0: $0a
    ld [bc], a                                    ; $4aa1: $02
    ld c, $88                                     ; $4aa2: $0e $88
    ld a, [bc]                                    ; $4aa4: $0a
    dec [hl]                                      ; $4aa5: $35
    dec sp                                        ; $4aa6: $3b
    sbc a                                         ; $4aa7: $9f
    ldh [$35], a                                  ; $4aa8: $e0 $35
    dec sp                                        ; $4aaa: $3b
    ld c, $02                                     ; $4aab: $0e $02
    ld a, [bc]                                    ; $4aad: $0a
    add d                                         ; $4aae: $82
    ld c, $00                                     ; $4aaf: $0e $00
    inc bc                                        ; $4ab1: $03
    inc b                                         ; $4ab2: $04
    ld [de], a                                    ; $4ab3: $12
    nop                                           ; $4ab4: $00
    ld [bc], a                                    ; $4ab5: $02
    inc b                                         ; $4ab6: $04
    add d                                         ; $4ab7: $82
    ld bc, $0207                                  ; $4ab8: $01 $07 $02
    inc b                                         ; $4abb: $04
    ld [de], a                                    ; $4abc: $12
    nop                                           ; $4abd: $00
    rst $38                                       ; $4abe: $ff
    add hl, bc                                    ; $4abf: $09
    ld [bc], a                                    ; $4ac0: $02
    ei                                            ; $4ac1: $fb
    dec b                                         ; $4ac2: $05
    ei                                            ; $4ac3: $fb
    dec b                                         ; $4ac4: $05
    db $fc                                        ; $4ac5: $fc
    db $fc                                        ; $4ac6: $fc
    db $fc                                        ; $4ac7: $fc
    db $fd                                        ; $4ac8: $fd
    ld [bc], a                                    ; $4ac9: $02
    add b                                         ; $4aca: $80
    add l                                         ; $4acb: $85
    ld [hl+], a                                   ; $4acc: $22
    ld h, e                                       ; $4acd: $63
    ld a, a                                       ; $4ace: $7f
    ld e, l                                       ; $4acf: $5d
    ld [hl], $02                                  ; $4ad0: $36 $02
    ld a, [hl+]                                   ; $4ad2: $2a
    ld [bc], a                                    ; $4ad3: $02
    ld [hl], $85                                  ; $4ad4: $36 $85
    ld a, [hl+]                                   ; $4ad6: $2a
    ld a, a                                       ; $4ad7: $7f
    ld e, l                                       ; $4ad8: $5d

jr_0f6_4ad9:
    ld [hl+], a                                   ; $4ad9: $22
    ld h, e                                       ; $4ada: $63
    ld [bc], a                                    ; $4adb: $02
    add b                                         ; $4adc: $80
    ld c, $00                                     ; $4add: $0e $00
    ld [bc], a                                    ; $4adf: $02
    ld bc, $000e                                  ; $4ae0: $01 $0e $00
    ld [bc], a                                    ; $4ae3: $02
    ld bc, $000e                                  ; $4ae4: $01 $0e $00
    rst $38                                       ; $4ae7: $ff
    rlca                                          ; $4ae8: $07
    ld bc, $05fb                                  ; $4ae9: $01 $fb $05
    ei                                            ; $4aec: $fb
    dec b                                         ; $4aed: $05
    cp $fa                                        ; $4aee: $fe $fa
    add e                                         ; $4af0: $83
    nop                                           ; $4af1: $00
    ld [bc], a                                    ; $4af2: $02
    nop                                           ; $4af3: $00
    ld [bc], a                                    ; $4af4: $02
    ld [bc], a                                    ; $4af5: $02
    add l                                         ; $4af6: $85
    dec b                                         ; $4af7: $05
    nop                                           ; $4af8: $00
    ld [bc], a                                    ; $4af9: $02
    nop                                           ; $4afa: $00
    ld [bc], a                                    ; $4afb: $02
    ld d, $00                                     ; $4afc: $16 $00
    rst $38                                       ; $4afe: $ff
    rlca                                          ; $4aff: $07
    ld bc, $05fb                                  ; $4b00: $01 $fb $05
    ei                                            ; $4b03: $fb
    dec b                                         ; $4b04: $05
    db $fd                                        ; $4b05: $fd
    ei                                            ; $4b06: $fb
    add e                                         ; $4b07: $83
    nop                                           ; $4b08: $00
    inc b                                         ; $4b09: $04
    nop                                           ; $4b0a: $00
    ld [bc], a                                    ; $4b0b: $02
    inc b                                         ; $4b0c: $04
    adc c                                         ; $4b0d: $89
    ld a, [bc]                                    ; $4b0e: $0a
    ld c, $11                                     ; $4b0f: $0e $11
    inc b                                         ; $4b11: $04
    ld a, [bc]                                    ; $4b12: $0a
    nop                                           ; $4b13: $00
    inc b                                         ; $4b14: $04
    nop                                           ; $4b15: $00
    inc b                                         ; $4b16: $04
    ld [de], a                                    ; $4b17: $12
    nop                                           ; $4b18: $00
    rst $38                                       ; $4b19: $ff
    add hl, bc                                    ; $4b1a: $09
    ld [bc], a                                    ; $4b1b: $02
    ei                                            ; $4b1c: $fb
    dec b                                         ; $4b1d: $05
    ei                                            ; $4b1e: $fb
    dec b                                         ; $4b1f: $05
    db $fc                                        ; $4b20: $fc
    db $fc                                        ; $4b21: $fc
    db $fc                                        ; $4b22: $fc

jr_0f6_4b23:
    db $fd                                        ; $4b23: $fd
    ld [bc], a                                    ; $4b24: $02
    ld [$0081], sp                                ; $4b25: $08 $81 $00
    ld [bc], a                                    ; $4b28: $02
    ld [$148a], sp                                ; $4b29: $08 $8a $14
    inc e                                         ; $4b2c: $1c
    ld [hl+], a                                   ; $4b2d: $22
    cp [hl]                                       ; $4b2e: $be
    pop bc                                        ; $4b2f: $c1
    inc e                                         ; $4b30: $1c
    ld [hl+], a                                   ; $4b31: $22
    ld [$0014], sp                                ; $4b32: $08 $14 $00
    inc bc                                        ; $4b35: $03
    ld [$0016], sp                                ; $4b36: $08 $16 $00
    ld [bc], a                                    ; $4b39: $02
    ld bc, $0016                                  ; $4b3a: $01 $16 $00
    rst $38                                       ; $4b3d: $ff
    add hl, bc                                    ; $4b3e: $09
    ld [bc], a                                    ; $4b3f: $02
    ei                                            ; $4b40: $fb
    dec b                                         ; $4b41: $05
    ei                                            ; $4b42: $fb
    dec b                                         ; $4b43: $05
    ei                                            ; $4b44: $fb
    ei                                            ; $4b45: $fb
    ei                                            ; $4b46: $fb
    cp $02                                        ; $4b47: $fe $02
    inc b                                         ; $4b49: $04
    sub c                                         ; $4b4a: $91
    nop                                           ; $4b4b: $00
    inc b                                         ; $4b4c: $04
    nop                                           ; $4b4d: $00
    ld c, $04                                     ; $4b4e: $0e $04
    ld a, [bc]                                    ; $4b50: $0a
    ld c, $31                                     ; $4b51: $0e $31
    sbc a                                         ; $4b53: $9f
    ldh [$0e], a                                  ; $4b54: $e0 $0e
    ld sp, $0a04                                  ; $4b56: $31 $04 $0a
    nop                                           ; $4b59: $00
    ld c, $00                                     ; $4b5a: $0e $00
    inc bc                                        ; $4b5c: $03
    inc b                                         ; $4b5d: $04
    inc de                                        ; $4b5e: $13
    nop                                           ; $4b5f: $00
    add l                                         ; $4b60: $85
    inc b                                         ; $4b61: $04
    ld bc, $0007                                  ; $4b62: $01 $07 $00
    inc b                                         ; $4b65: $04
    ld [de], a                                    ; $4b66: $12
    nop                                           ; $4b67: $00
    rst $38                                       ; $4b68: $ff
    add hl, bc                                    ; $4b69: $09
    ld [bc], a                                    ; $4b6a: $02
    ei                                            ; $4b6b: $fb
    dec b                                         ; $4b6c: $05
    ei                                            ; $4b6d: $fb
    dec b                                         ; $4b6e: $05
    ld sp, hl                                     ; $4b6f: $f9
    ld a, [$fff9]                                 ; $4b70: $fa $f9 $ff
    ld [bc], a                                    ; $4b73: $02
    ld [bc], a                                    ; $4b74: $02
    add l                                         ; $4b75: $85
    nop                                           ; $4b76: $00
    ld [bc], a                                    ; $4b77: $02
    nop                                           ; $4b78: $00
    ld [bc], a                                    ; $4b79: $02
    nop                                           ; $4b7a: $00
    ld [bc], a                                    ; $4b7b: $02
    ld [bc], a                                    ; $4b7c: $02
    sub d                                         ; $4b7d: $92
    dec b                                         ; $4b7e: $05
    ld [bc], a                                    ; $4b7f: $02
    dec b                                         ; $4b80: $05
    rlca                                          ; $4b81: $07
    jr jr_0f6_4b23                                ; $4b82: $18 $9f

    ldh [rTAC], a                                 ; $4b84: $e0 $07
    jr jr_0f6_4b8a                                ; $4b86: $18 $02

    dec b                                         ; $4b88: $05
    ld [bc], a                                    ; $4b89: $02

jr_0f6_4b8a:
    dec b                                         ; $4b8a: $05
    nop                                           ; $4b8b: $00
    ld [bc], a                                    ; $4b8c: $02
    nop                                           ; $4b8d: $00
    ld [bc], a                                    ; $4b8e: $02
    nop                                           ; $4b8f: $00
    inc bc                                        ; $4b90: $03

jr_0f6_4b91:
    ld [bc], a                                    ; $4b91: $02
    rrca                                          ; $4b92: $0f
    nop                                           ; $4b93: $00
    add l                                         ; $4b94: $85
    jr jr_0f6_4bb0                                ; $4b95: $18 $19

    rlca                                          ; $4b97: $07
    nop                                           ; $4b98: $00
    jr jr_0f6_4ba9                                ; $4b99: $18 $0e

    nop                                           ; $4b9b: $00
    rst $38                                       ; $4b9c: $ff
    add hl, bc                                    ; $4b9d: $09
    ld [bc], a                                    ; $4b9e: $02
    ei                                            ; $4b9f: $fb
    dec b                                         ; $4ba0: $05
    ei                                            ; $4ba1: $fb
    dec b                                         ; $4ba2: $05
    ei                                            ; $4ba3: $fb
    ei                                            ; $4ba4: $fb
    ei                                            ; $4ba5: $fb
    cp $02                                        ; $4ba6: $fe $02
    add b                                         ; $4ba8: $80

jr_0f6_4ba9:
    adc e                                         ; $4ba9: $8b
    nop                                           ; $4baa: $00
    ld b, b                                       ; $4bab: $40
    nop                                           ; $4bac: $00
    ld sp, $2a11                                  ; $4bad: $31 $11 $2a

jr_0f6_4bb0:
    ld c, $11                                     ; $4bb0: $0e $11
    ld c, $00                                     ; $4bb2: $0e $00
    ld c, $02                                     ; $4bb4: $0e $02
    ld de, $2a85                                  ; $4bb6: $11 $85 $2a
    nop                                           ; $4bb9: $00
    ld sp, $4000                                  ; $4bba: $31 $00 $40
    ld [bc], a                                    ; $4bbd: $02
    add b                                         ; $4bbe: $80
    ld a, [bc]                                    ; $4bbf: $0a
    nop                                           ; $4bc0: $00
    ld [bc], a                                    ; $4bc1: $02
    ld bc, $0086                                  ; $4bc2: $01 $86 $00
    ld [bc], a                                    ; $4bc5: $02
    nop                                           ; $4bc6: $00
    inc b                                         ; $4bc7: $04
    nop                                           ; $4bc8: $00
    inc b                                         ; $4bc9: $04
    rlca                                          ; $4bca: $07
    nop                                           ; $4bcb: $00
    add l                                         ; $4bcc: $85
    inc b                                         ; $4bcd: $04
    nop                                           ; $4bce: $00
    inc b                                         ; $4bcf: $04
    nop                                           ; $4bd0: $00
    ld [bc], a                                    ; $4bd1: $02
    ld [bc], a                                    ; $4bd2: $02
    ld bc, $000a                                  ; $4bd3: $01 $0a $00
    rst $38                                       ; $4bd6: $ff
    add hl, bc                                    ; $4bd7: $09
    ld [bc], a                                    ; $4bd8: $02
    ei                                            ; $4bd9: $fb
    dec b                                         ; $4bda: $05
    ei                                            ; $4bdb: $fb
    dec b                                         ; $4bdc: $05
    ld sp, hl                                     ; $4bdd: $f9
    ld a, [$fff9]                                 ; $4bde: $fa $f9 $ff
    ld [bc], a                                    ; $4be1: $02
    ld [bc], a                                    ; $4be2: $02
    add l                                         ; $4be3: $85
    nop                                           ; $4be4: $00
    ld [bc], a                                    ; $4be5: $02
    nop                                           ; $4be6: $00
    ld [bc], a                                    ; $4be7: $02
    nop                                           ; $4be8: $00
    ld [bc], a                                    ; $4be9: $02
    ld [bc], a                                    ; $4bea: $02
    sub d                                         ; $4beb: $92
    dec b                                         ; $4bec: $05
    ld [bc], a                                    ; $4bed: $02
    dec b                                         ; $4bee: $05
    rlca                                          ; $4bef: $07
    jr jr_0f6_4b91                                ; $4bf0: $18 $9f

    ldh [rTAC], a                                 ; $4bf2: $e0 $07
    jr jr_0f6_4bf8                                ; $4bf4: $18 $02

    dec b                                         ; $4bf6: $05
    ld [bc], a                                    ; $4bf7: $02

jr_0f6_4bf8:
    dec b                                         ; $4bf8: $05
    nop                                           ; $4bf9: $00
    ld [bc], a                                    ; $4bfa: $02
    nop                                           ; $4bfb: $00
    ld [bc], a                                    ; $4bfc: $02
    nop                                           ; $4bfd: $00
    inc bc                                        ; $4bfe: $03
    ld [bc], a                                    ; $4bff: $02
    rrca                                          ; $4c00: $0f
    nop                                           ; $4c01: $00
    add l                                         ; $4c02: $85
    jr jr_0f6_4c1e                                ; $4c03: $18 $19

    rlca                                          ; $4c05: $07
    nop                                           ; $4c06: $00
    jr jr_0f6_4c17                                ; $4c07: $18 $0e

    nop                                           ; $4c09: $00
    rst $38                                       ; $4c0a: $ff
    rlca                                          ; $4c0b: $07
    ld bc, $05fb                                  ; $4c0c: $01 $fb $05
    ei                                            ; $4c0f: $fb
    dec b                                         ; $4c10: $05
    db $fd                                        ; $4c11: $fd
    ei                                            ; $4c12: $fb
    add e                                         ; $4c13: $83
    nop                                           ; $4c14: $00
    inc b                                         ; $4c15: $04
    nop                                           ; $4c16: $00

jr_0f6_4c17:
    ld [bc], a                                    ; $4c17: $02
    inc b                                         ; $4c18: $04
    adc c                                         ; $4c19: $89
    ld a, [bc]                                    ; $4c1a: $0a
    ld c, $11                                     ; $4c1b: $0e $11
    inc b                                         ; $4c1d: $04

jr_0f6_4c1e:
    ld a, [bc]                                    ; $4c1e: $0a
    nop                                           ; $4c1f: $00
    inc b                                         ; $4c20: $04
    nop                                           ; $4c21: $00
    inc b                                         ; $4c22: $04
    ld [de], a                                    ; $4c23: $12
    nop                                           ; $4c24: $00
    rst $38                                       ; $4c25: $ff
    rlca                                          ; $4c26: $07
    ld bc, $0df1                                  ; $4c27: $01 $f1 $0d
    ld hl, sp+$08                                 ; $4c2a: $f8 $08
    ld b, $f6                                     ; $4c2c: $06 $f6
    add [hl]                                      ; $4c2e: $86
    nop                                           ; $4c2f: $00
    ld b, $02                                     ; $4c30: $06 $02
    dec b                                         ; $4c32: $05
    nop                                           ; $4c33: $00
    inc bc                                        ; $4c34: $03
    ld a, [de]                                    ; $4c35: $1a
    nop                                           ; $4c36: $00
    rst $38                                       ; $4c37: $ff
    rlca                                          ; $4c38: $07
    ld bc, $0df1                                  ; $4c39: $01 $f1 $0d
    ld hl, sp+$08                                 ; $4c3c: $f8 $08
    nop                                           ; $4c3e: $00
    ld sp, hl                                     ; $4c3f: $f9
    sub d                                         ; $4c40: $92
    nop                                           ; $4c41: $00
    rrca                                          ; $4c42: $0f
    ld [$0814], sp                                ; $4c43: $08 $14 $08
    inc d                                         ; $4c46: $14
    db $10                                        ; $4c47: $10
    jr z, jr_0f6_4c6a                             ; $4c48: $28 $20

    ld d, b                                       ; $4c4a: $50
    jr nz, jr_0f6_4c9d                            ; $4c4b: $20 $50

    db $10                                        ; $4c4d: $10
    jr z, jr_0f6_4c50                             ; $4c4e: $28 $00

jr_0f6_4c50:
    jr jr_0f6_4c52                                ; $4c50: $18 $00

jr_0f6_4c52:
    jr jr_0f6_4c62                                ; $4c52: $18 $0e

    nop                                           ; $4c54: $00
    rst $38                                       ; $4c55: $ff
    add hl, bc                                    ; $4c56: $09
    ld [bc], a                                    ; $4c57: $02
    pop af                                        ; $4c58: $f1
    dec c                                         ; $4c59: $0d
    ld hl, sp+$08                                 ; $4c5a: $f8 $08
    cp $fc                                        ; $4c5c: $fe $fc
    cp $04                                        ; $4c5e: $fe $04
    inc bc                                        ; $4c60: $03
    nop                                           ; $4c61: $00

jr_0f6_4c62:
    sub e                                         ; $4c62: $93
    inc bc                                        ; $4c63: $03
    ld [bc], a                                    ; $4c64: $02
    dec c                                         ; $4c65: $0d
    inc c                                         ; $4c66: $0c
    ld [de], a                                    ; $4c67: $12
    nop                                           ; $4c68: $00
    inc e                                         ; $4c69: $1c

jr_0f6_4c6a:
    nop                                           ; $4c6a: $00
    ld h, b                                       ; $4c6b: $60
    ld b, b                                       ; $4c6c: $40
    and b                                         ; $4c6d: $a0
    ld b, b                                       ; $4c6e: $40
    and b                                         ; $4c6f: $a0
    ld b, b                                       ; $4c70: $40
    and b                                         ; $4c71: $a0
    ld b, b                                       ; $4c72: $40
    and b                                         ; $4c73: $a0
    ld b, b                                       ; $4c74: $40
    and b                                         ; $4c75: $a0
    dec bc                                        ; $4c76: $0b
    nop                                           ; $4c77: $00
    ld [bc], a                                    ; $4c78: $02
    ldh [$89], a                                  ; $4c79: $e0 $89
    inc e                                         ; $4c7b: $1c
    ld [$04b4], sp                                ; $4c7c: $08 $b4 $04
    ld a, [bc]                                    ; $4c7f: $0a
    ld [bc], a                                    ; $4c80: $02
    dec b                                         ; $4c81: $05
    nop                                           ; $4c82: $00
    inc bc                                        ; $4c83: $03
    inc d                                         ; $4c84: $14
    nop                                           ; $4c85: $00
    rst $38                                       ; $4c86: $ff
    dec bc                                        ; $4c87: $0b
    inc bc                                        ; $4c88: $03
    pop af                                        ; $4c89: $f1
    dec c                                         ; $4c8a: $0d
    ld hl, sp+$08                                 ; $4c8b: $f8 $08
    ld a, [$fafb]                                 ; $4c8d: $fa $fb $fa
    inc bc                                        ; $4c90: $03
    ld a, [$0306]                                 ; $4c91: $fa $06 $03
    nop                                           ; $4c94: $00
    ld [bc], a                                    ; $4c95: $02

Jump_0f6_4c96:
    ld bc, $0e99                                  ; $4c96: $01 $99 $0e
    inc c                                         ; $4c99: $0c
    inc de                                        ; $4c9a: $13
    db $10                                        ; $4c9b: $10
    inc l                                         ; $4c9c: $2c

jr_0f6_4c9d:
    nop                                           ; $4c9d: $00
    jr nc, @+$12                                  ; $4c9e: $30 $10

    jr z, jr_0f6_4caa                             ; $4ca0: $28 $08

    inc d                                         ; $4ca2: $14
    ld [$1814], sp                                ; $4ca3: $08 $14 $18
    ld h, h                                       ; $4ca6: $64
    ld h, b                                       ; $4ca7: $60
    sbc b                                         ; $4ca8: $98
    ld b, b                                       ; $4ca9: $40

jr_0f6_4caa:
    and b                                         ; $4caa: $a0
    ld b, b                                       ; $4cab: $40
    and b                                         ; $4cac: $a0
    jr nz, jr_0f6_4cff                            ; $4cad: $20 $50

    jr nz, jr_0f6_4d01                            ; $4caf: $20 $50

    inc bc                                        ; $4cb1: $03
    nop                                           ; $4cb2: $00
    sub a                                         ; $4cb3: $97
    ld bc, $8600                                  ; $4cb4: $01 $00 $86
    add b                                         ; $4cb7: $80
    ld [hl], h                                    ; $4cb8: $74
    db $10                                        ; $4cb9: $10
    db $ec                                        ; $4cba: $ec
    inc c                                         ; $4cbb: $0c
    inc de                                        ; $4cbc: $13
    ld bc, $000e                                  ; $4cbd: $01 $0e $00
    ld bc, $0300                                  ; $4cc0: $01 $00 $03
    ld bc, $0102                                  ; $4cc3: $01 $02 $01
    ld b, $00                                     ; $4cc6: $06 $00
    dec b                                         ; $4cc8: $05
    nop                                           ; $4cc9: $00
    ld [$0003], sp                                ; $4cca: $08 $03 $00
    add e                                         ; $4ccd: $83
    ld bc, $0100                                  ; $4cce: $01 $00 $01
    dec c                                         ; $4cd1: $0d
    nop                                           ; $4cd2: $00
    sub e                                         ; $4cd3: $93
    ld b, $00                                     ; $4cd4: $06 $00
    dec b                                         ; $4cd6: $05
    nop                                           ; $4cd7: $00
    ld bc, $0400                                  ; $4cd8: $01 $00 $04
    nop                                           ; $4cdb: $00
    inc b                                         ; $4cdc: $04
    nop                                           ; $4cdd: $00
    inc b                                         ; $4cde: $04
    nop                                           ; $4cdf: $00
    ld b, $00                                     ; $4ce0: $06 $00
    ld b, $04                                     ; $4ce2: $06 $04
    ld [bc], a                                    ; $4ce4: $02
    nop                                           ; $4ce5: $00
    inc b                                         ; $4ce6: $04
    ld [bc], a                                    ; $4ce7: $02
    nop                                           ; $4ce8: $00
    rst $38                                       ; $4ce9: $ff
    dec bc                                        ; $4cea: $0b
    inc bc                                        ; $4ceb: $03
    pop af                                        ; $4cec: $f1
    dec c                                         ; $4ced: $0d
    ld hl, sp+$08                                 ; $4cee: $f8 $08
    ld a, [$fafa]                                 ; $4cf0: $fa $fa $fa
    ld [bc], a                                    ; $4cf3: $02
    ld a, [$9e05]                                 ; $4cf4: $fa $05 $9e
    nop                                           ; $4cf7: $00
    ld e, $12                                     ; $4cf8: $1e $12
    dec l                                         ; $4cfa: $2d
    ld hl, $2052                                  ; $4cfb: $21 $52 $20
    ld b, e                                       ; $4cfe: $43

jr_0f6_4cff:
    ld b, b                                       ; $4cff: $40
    and b                                         ; $4d00: $a0

jr_0f6_4d01:
    ld b, b                                       ; $4d01: $40
    and b                                         ; $4d02: $a0
    ld b, b                                       ; $4d03: $40
    and b                                         ; $4d04: $a0
    ld b, b                                       ; $4d05: $40
    and b                                         ; $4d06: $a0
    nop                                           ; $4d07: $00
    ld h, b                                       ; $4d08: $60
    nop                                           ; $4d09: $00
    ld h, b                                       ; $4d0a: $60
    nop                                           ; $4d0b: $00
    ld h, b                                       ; $4d0c: $60
    jr nz, jr_0f6_4d5f                            ; $4d0d: $20 $50

    jr nz, @+$52                                  ; $4d0f: $20 $50

    db $10                                        ; $4d11: $10
    jr z, jr_0f6_4d24                             ; $4d12: $28 $10

    jr z, jr_0f6_4d1b                             ; $4d14: $28 $05

    nop                                           ; $4d16: $00
    sub d                                         ; $4d17: $92
    inc b                                         ; $4d18: $04

jr_0f6_4d19:
    nop                                           ; $4d19: $00
    ld [bc], a                                    ; $4d1a: $02

jr_0f6_4d1b:
    nop                                           ; $4d1b: $00
    ld a, [c]                                     ; $4d1c: $f2
    jr nc, @+$51                                  ; $4d1d: $30 $4f

    inc bc                                        ; $4d1f: $03
    ld a, h                                       ; $4d20: $7c
    ld bc, $0102                                  ; $4d21: $01 $02 $01

jr_0f6_4d24:
    ld [bc], a                                    ; $4d24: $02
    nop                                           ; $4d25: $00
    inc bc                                        ; $4d26: $03
    nop                                           ; $4d27: $00
    inc bc                                        ; $4d28: $03
    nop                                           ; $4d29: $00
    ld [bc], a                                    ; $4d2a: $02
    ld b, $87                                     ; $4d2b: $06 $87
    add hl, bc                                    ; $4d2d: $09
    ld bc, $000e                                  ; $4d2e: $01 $0e $00
    add hl, de                                    ; $4d31: $19
    nop                                           ; $4d32: $00
    add hl, de                                    ; $4d33: $19
    dec c                                         ; $4d34: $0d
    nop                                           ; $4d35: $00
    adc c                                         ; $4d36: $89
    inc b                                         ; $4d37: $04
    nop                                           ; $4d38: $00
    inc b                                         ; $4d39: $04
    nop                                           ; $4d3a: $00
    ld b, $00                                     ; $4d3b: $06 $00
    inc bc                                        ; $4d3d: $03
    nop                                           ; $4d3e: $00
    ld bc, $0005                                  ; $4d3f: $01 $05 $00
    ld [bc], a                                    ; $4d42: $02
    inc b                                         ; $4d43: $04
    add e                                         ; $4d44: $83
    ld [bc], a                                    ; $4d45: $02
    inc b                                         ; $4d46: $04
    ld [bc], a                                    ; $4d47: $02
    ld [bc], a                                    ; $4d48: $02
    nop                                           ; $4d49: $00
    rst $38                                       ; $4d4a: $ff
    dec bc                                        ; $4d4b: $0b
    inc bc                                        ; $4d4c: $03
    pop af                                        ; $4d4d: $f1
    dec c                                         ; $4d4e: $0d
    ld hl, sp+$08                                 ; $4d4f: $f8 $08
    ld sp, hl                                     ; $4d51: $f9
    db $fc                                        ; $4d52: $fc
    ld sp, hl                                     ; $4d53: $f9
    inc b                                         ; $4d54: $04
    ld sp, hl                                     ; $4d55: $f9
    ld b, $a2                                     ; $4d56: $06 $a2
    nop                                           ; $4d58: $00
    ld bc, $0200                                  ; $4d59: $01 $00 $02
    nop                                           ; $4d5c: $00
    rra                                           ; $4d5d: $1f
    db $10                                        ; $4d5e: $10

jr_0f6_4d5f:
    cpl                                           ; $4d5f: $2f
    jr nz, jr_0f6_4db3                            ; $4d60: $20 $51

    jr nz, jr_0f6_4db4                            ; $4d62: $20 $50

    nop                                           ; $4d64: $00
    ld h, b                                       ; $4d65: $60
    jr nz, jr_0f6_4db8                            ; $4d66: $20 $50

    jr nz, jr_0f6_4dba                            ; $4d68: $20 $50

    nop                                           ; $4d6a: $00
    jr nc, jr_0f6_4d6d                            ; $4d6b: $30 $00

jr_0f6_4d6d:
    jr nc, jr_0f6_4d8f                            ; $4d6d: $30 $20

    ld d, b                                       ; $4d6f: $50
    nop                                           ; $4d70: $00
    ld [hl], b                                    ; $4d71: $70
    ld b, b                                       ; $4d72: $40
    and b                                         ; $4d73: $a0
    ld b, b                                       ; $4d74: $40
    and b                                         ; $4d75: $a0
    ld b, b                                       ; $4d76: $40
    and b                                         ; $4d77: $a0
    nop                                           ; $4d78: $00
    add b                                         ; $4d79: $80
    inc bc                                        ; $4d7a: $03
    nop                                           ; $4d7b: $00
    ld [bc], a                                    ; $4d7c: $02
    add b                                         ; $4d7d: $80
    add d                                         ; $4d7e: $82
    ld b, b                                       ; $4d7f: $40
    ret nz                                        ; $4d80: $c0

    ld [bc], a                                    ; $4d81: $02
    jr nz, jr_0f6_4d19                            ; $4d82: $20 $95

    ret nc                                        ; $4d84: $d0

    db $10                                        ; $4d85: $10
    ld l, $02                                     ; $4d86: $2e $02
    dec a                                         ; $4d88: $3d
    ld [bc], a                                    ; $4d89: $02
    dec h                                         ; $4d8a: $25
    ld [bc], a                                    ; $4d8b: $02
    dec h                                         ; $4d8c: $25
    ld [bc], a                                    ; $4d8d: $02
    dec b                                         ; $4d8e: $05

jr_0f6_4d8f:
    inc b                                         ; $4d8f: $04
    ld a, [bc]                                    ; $4d90: $0a
    inc b                                         ; $4d91: $04
    ld a, [bc]                                    ; $4d92: $0a
    nop                                           ; $4d93: $00
    rra                                           ; $4d94: $1f
    ld bc, $011a                                  ; $4d95: $01 $1a $01
    ld a, [de]                                    ; $4d98: $1a
    dec d                                         ; $4d99: $15
    nop                                           ; $4d9a: $00
    add e                                         ; $4d9b: $83
    ld [bc], a                                    ; $4d9c: $02
    nop                                           ; $4d9d: $00
    ld bc, $0005                                  ; $4d9e: $01 $05 $00
    add e                                         ; $4da1: $83
    ld [bc], a                                    ; $4da2: $02
    nop                                           ; $4da3: $00
    ld [bc], a                                    ; $4da4: $02
    rst $38                                       ; $4da5: $ff
    dec bc                                        ; $4da6: $0b
    inc bc                                        ; $4da7: $03
    pop af                                        ; $4da8: $f1
    dec c                                         ; $4da9: $0d
    ld hl, sp+$08                                 ; $4daa: $f8 $08
    ld sp, hl                                     ; $4dac: $f9
    ei                                            ; $4dad: $fb
    ld hl, sp+$03                                 ; $4dae: $f8 $03
    ei                                            ; $4db0: $fb
    inc b                                         ; $4db1: $04
    add c                                         ; $4db2: $81

jr_0f6_4db3:
    nop                                           ; $4db3: $00

jr_0f6_4db4:
    ld [bc], a                                    ; $4db4: $02
    ld bc, $0202                                  ; $4db5: $01 $02 $02

jr_0f6_4db8:
    and a                                         ; $4db8: $a7
    dec b                                         ; $4db9: $05

jr_0f6_4dba:
    nop                                           ; $4dba: $00
    rrca                                          ; $4dbb: $0f
    ld [$0814], sp                                ; $4dbc: $08 $14 $08
    inc d                                         ; $4dbf: $14
    inc b                                         ; $4dc0: $04
    ld a, [de]                                    ; $4dc1: $1a
    nop                                           ; $4dc2: $00
    ld b, $04                                     ; $4dc3: $06 $04
    ld a, [de]                                    ; $4dc5: $1a
    jr jr_0f6_4e2e                                ; $4dc6: $18 $66

    ld b, b                                       ; $4dc8: $40
    cp b                                          ; $4dc9: $b8
    ld b, b                                       ; $4dca: $40
    and b                                         ; $4dcb: $a0
    ld b, b                                       ; $4dcc: $40
    and b                                         ; $4dcd: $a0
    ld b, b                                       ; $4dce: $40
    and b                                         ; $4dcf: $a0
    jr nz, jr_0f6_4e22                            ; $4dd0: $20 $50

    jr nz, jr_0f6_4e24                            ; $4dd2: $20 $50

    nop                                           ; $4dd4: $00
    ld a, h                                       ; $4dd5: $7c
    inc c                                         ; $4dd6: $0c
    di                                            ; $4dd7: $f3
    ld [bc], a                                    ; $4dd8: $02
    call $e201                                    ; $4dd9: $cd $01 $e2
    nop                                           ; $4ddc: $00
    ld [hl], c                                    ; $4ddd: $71
    nop                                           ; $4dde: $00
    ld de, $0015                                  ; $4ddf: $11 $15 $00
    add e                                         ; $4de2: $83
    ld bc, $0100                                  ; $4de3: $01 $00 $01
    inc e                                         ; $4de6: $1c
    nop                                           ; $4de7: $00
    rst $38                                       ; $4de8: $ff
    dec bc                                        ; $4de9: $0b
    inc bc                                        ; $4dea: $03
    pop af                                        ; $4deb: $f1
    dec c                                         ; $4dec: $0d
    ld hl, sp+$08                                 ; $4ded: $f8 $08
    ldh a, [$f8]                                  ; $4def: $f0 $f8
    ldh a, [rP1]                                  ; $4df1: $f0 $00
    nop                                           ; $4df3: $00
    ld a, [$0084]                                 ; $4df4: $fa $84 $00
    inc bc                                        ; $4df7: $03
    nop                                           ; $4df8: $00
    ld bc, $000b                                  ; $4df9: $01 $0b $00
    sub d                                         ; $4dfc: $92
    ld h, b                                       ; $4dfd: $60
    nop                                           ; $4dfe: $00
    xor l                                         ; $4dff: $ad
    nop                                           ; $4e00: $00
    rrca                                          ; $4e01: $0f
    ld [bc], a                                    ; $4e02: $02
    dec b                                         ; $4e03: $05
    inc b                                         ; $4e04: $04
    dec bc                                        ; $4e05: $0b
    ld [$0814], sp                                ; $4e06: $08 $14 $08
    inc d                                         ; $4e09: $14
    inc b                                         ; $4e0a: $04
    dec bc                                        ; $4e0b: $0b
    nop                                           ; $4e0c: $00
    rlca                                          ; $4e0d: $07
    nop                                           ; $4e0e: $00
    ld [bc], a                                    ; $4e0f: $02
    add b                                         ; $4e10: $80
    sub c                                         ; $4e11: $91
    ld c, h                                       ; $4e12: $4c
    ld b, b                                       ; $4e13: $40
    and h                                         ; $4e14: $a4
    jr nz, jr_0f6_4e73                            ; $4e15: $20 $5c

    nop                                           ; $4e17: $00
    jr c, jr_0f6_4e1a                             ; $4e18: $38 $00

jr_0f6_4e1a:
    ld h, b                                       ; $4e1a: $60
    nop                                           ; $4e1b: $00
    ld b, e                                       ; $4e1c: $43
    nop                                           ; $4e1d: $00
    pop bc                                        ; $4e1e: $c1
    nop                                           ; $4e1f: $00
    ret nz                                        ; $4e20: $c0

    nop                                           ; $4e21: $00

jr_0f6_4e22:
    add b                                         ; $4e22: $80
    dec c                                         ; $4e23: $0d

jr_0f6_4e24:
    nop                                           ; $4e24: $00
    sub c                                         ; $4e25: $91
    rlca                                          ; $4e26: $07
    inc b                                         ; $4e27: $04
    ld a, [bc]                                    ; $4e28: $0a
    inc c                                         ; $4e29: $0c
    ld [de], a                                    ; $4e2a: $12
    ld [$1014], sp                                ; $4e2b: $08 $14 $10

jr_0f6_4e2e:
    jr z, jr_0f6_4e60                             ; $4e2e: $28 $30

    ld c, b                                       ; $4e30: $48
    jr nz, @+$52                                  ; $4e31: $20 $50

    db $10                                        ; $4e33: $10
    jr z, jr_0f6_4e46                             ; $4e34: $28 $10

    jr z, jr_0f6_4e46                             ; $4e36: $28 $0e

    nop                                           ; $4e38: $00
    rst $38                                       ; $4e39: $ff
    add hl, bc                                    ; $4e3a: $09
    ld [bc], a                                    ; $4e3b: $02
    pop af                                        ; $4e3c: $f1
    dec c                                         ; $4e3d: $0d
    ld hl, sp+$08                                 ; $4e3e: $f8 $08
    pop af                                        ; $4e40: $f1
    push af                                       ; $4e41: $f5
    ei                                            ; $4e42: $fb
    ld a, [$0098]                                 ; $4e43: $fa $98 $00

jr_0f6_4e46:
    ld h, b                                       ; $4e46: $60
    nop                                           ; $4e47: $00
    ld b, b                                       ; $4e48: $40
    nop                                           ; $4e49: $00
    add b                                         ; $4e4a: $80
    nop                                           ; $4e4b: $00
    add b                                         ; $4e4c: $80
    nop                                           ; $4e4d: $00
    ret nz                                        ; $4e4e: $c0

    nop                                           ; $4e4f: $00
    add $00                                       ; $4e50: $c6 $00
    ld [hl], d                                    ; $4e52: $72
    jr nc, jr_0f6_4ea1                            ; $4e53: $30 $4c

    ld [$0434], sp                                ; $4e55: $08 $34 $04
    ld a, [bc]                                    ; $4e58: $0a
    ld [bc], a                                    ; $4e59: $02
    dec b                                         ; $4e5a: $05
    nop                                           ; $4e5b: $00
    rlca                                          ; $4e5c: $07
    add hl, bc                                    ; $4e5d: $09
    nop                                           ; $4e5e: $00
    ld [bc], a                                    ; $4e5f: $02

jr_0f6_4e60:
    jr @-$65                                      ; $4e60: $18 $99

    inc b                                         ; $4e62: $04
    ld [$0015], sp                                ; $4e63: $08 $15 $00

jr_0f6_4e66:
    rrca                                          ; $4e66: $0f
    nop                                           ; $4e67: $00
    inc c                                         ; $4e68: $0c
    nop                                           ; $4e69: $00
    inc c                                         ; $4e6a: $0c
    inc b                                         ; $4e6b: $04
    ld a, [bc]                                    ; $4e6c: $0a
    nop                                           ; $4e6d: $00
    ld b, $00                                     ; $4e6e: $06 $00
    ld b, $04                                     ; $4e70: $06 $04
    ld a, [de]                                    ; $4e72: $1a

jr_0f6_4e73:
    inc c                                         ; $4e73: $0c
    ld [de], a                                    ; $4e74: $12
    ld [$1814], sp                                ; $4e75: $08 $14 $18
    inc h                                         ; $4e78: $24
    db $10                                        ; $4e79: $10
    jr z, jr_0f6_4e80                             ; $4e7a: $28 $04

    nop                                           ; $4e7c: $00
    rst $38                                       ; $4e7d: $ff
    dec c                                         ; $4e7e: $0d
    inc b                                         ; $4e7f: $04

jr_0f6_4e80:
    pop af                                        ; $4e80: $f1
    dec c                                         ; $4e81: $0d
    ld hl, sp+$08                                 ; $4e82: $f8 $08
    di                                            ; $4e84: $f3
    rst $28                                       ; $4e85: $ef
    db $f4                                        ; $4e86: $f4
    rst $30                                       ; $4e87: $f7
    db $fc                                        ; $4e88: $fc
    db $fc                                        ; $4e89: $fc
    inc bc                                        ; $4e8a: $03
    rst $28                                       ; $4e8b: $ef
    add h                                         ; $4e8c: $84
    nop                                           ; $4e8d: $00
    ld b, $00                                     ; $4e8e: $06 $00
    inc b                                         ; $4e90: $04
    add hl, bc                                    ; $4e91: $09
    nop                                           ; $4e92: $00
    and a                                         ; $4e93: $a7
    jr jr_0f6_4e9e                                ; $4e94: $18 $08

    dec d                                         ; $4e96: $15
    nop                                           ; $4e97: $00
    rrca                                          ; $4e98: $0f
    ld [$1017], sp                                ; $4e99: $08 $17 $10
    jr z, jr_0f6_4e9e                             ; $4e9c: $28 $00

jr_0f6_4e9e:
    jr c, jr_0f6_4ea0                             ; $4e9e: $38 $00

jr_0f6_4ea0:
    ret nz                                        ; $4ea0: $c0

jr_0f6_4ea1:
    ld b, b                                       ; $4ea1: $40
    and b                                         ; $4ea2: $a0
    ld b, b                                       ; $4ea3: $40
    and b                                         ; $4ea4: $a0
    nop                                           ; $4ea5: $00
    ld h, b                                       ; $4ea6: $60
    nop                                           ; $4ea7: $00
    ld [$1000], sp                                ; $4ea8: $08 $00 $10
    nop                                           ; $4eab: $00
    stop                                          ; $4eac: $10 $00
    add hl, de                                    ; $4eae: $19
    nop                                           ; $4eaf: $00
    rlca                                          ; $4eb0: $07
    nop                                           ; $4eb1: $00
    ld a, h                                       ; $4eb2: $7c
    ld l, b                                       ; $4eb3: $68
    sub a                                         ; $4eb4: $97
    ld b, $69                                     ; $4eb5: $06 $69
    ld bc, $0006                                  ; $4eb7: $01 $06 $00
    ld bc, $000d                                  ; $4eba: $01 $0d $00
    sbc c                                         ; $4ebd: $99
    jr jr_0f6_4ec0                                ; $4ebe: $18 $00

jr_0f6_4ec0:
    ld e, $04                                     ; $4ec0: $1e $04
    ld a, [bc]                                    ; $4ec2: $0a
    ld [bc], a                                    ; $4ec3: $02
    dec b                                         ; $4ec4: $05
    ld [bc], a                                    ; $4ec5: $02
    dec b                                         ; $4ec6: $05
    nop                                           ; $4ec7: $00
    inc bc                                        ; $4ec8: $03
    nop                                           ; $4ec9: $00
    rrca                                          ; $4eca: $0f
    ld b, $09                                     ; $4ecb: $06 $09
    nop                                           ; $4ecd: $00
    ld c, $08                                     ; $4ece: $0e $08
    inc d                                         ; $4ed0: $14
    ld [$1014], sp                                ; $4ed1: $08 $14 $10
    jr z, jr_0f6_4ee6                             ; $4ed4: $28 $10

    jr z, jr_0f6_4edf                             ; $4ed6: $28 $07

    nop                                           ; $4ed8: $00
    add d                                         ; $4ed9: $82
    ld h, b                                       ; $4eda: $60
    nop                                           ; $4edb: $00
    ld [bc], a                                    ; $4edc: $02
    jr nz, jr_0f6_4e66                            ; $4edd: $20 $87

jr_0f6_4edf:
    ld d, b                                       ; $4edf: $50
    jr nz, jr_0f6_4f32                            ; $4ee0: $20 $50

    nop                                           ; $4ee2: $00
    jr nc, jr_0f6_4ee5                            ; $4ee3: $30 $00

jr_0f6_4ee5:
    db $10                                        ; $4ee5: $10

jr_0f6_4ee6:
    inc d                                         ; $4ee6: $14
    nop                                           ; $4ee7: $00
    rst $38                                       ; $4ee8: $ff
    dec c                                         ; $4ee9: $0d
    inc b                                         ; $4eea: $04
    pop af                                        ; $4eeb: $f1
    dec c                                         ; $4eec: $0d
    ld hl, sp+$08                                 ; $4eed: $f8 $08
    push af                                       ; $4eef: $f5
    db $ed                                        ; $4ef0: $ed
    rst $30                                       ; $4ef1: $f7
    push af                                       ; $4ef2: $f5
    db $fd                                        ; $4ef3: $fd
    ld a, [$ec05]                                 ; $4ef4: $fa $05 $ec
    add [hl]                                      ; $4ef7: $86
    nop                                           ; $4ef8: $00
    ld [bc], a                                    ; $4ef9: $02
    nop                                           ; $4efa: $00
    ld bc, $0600                                  ; $4efb: $01 $00 $06
    inc bc                                        ; $4efe: $03
    nop                                           ; $4eff: $00
    ld [bc], a                                    ; $4f00: $02
    ld bc, $6298                                  ; $4f01: $01 $98 $62
    ld bc, $0242                                  ; $4f04: $01 $42 $02
    dec b                                         ; $4f07: $05
    ld [bc], a                                    ; $4f08: $02
    dec b                                         ; $4f09: $05
    inc b                                         ; $4f0a: $04
    ld a, [de]                                    ; $4f0b: $1a
    db $10                                        ; $4f0c: $10
    ld l, $00                                     ; $4f0d: $2e $00
    jr nc, jr_0f6_4f11                            ; $4f0f: $30 $00

jr_0f6_4f11:
    jr nc, jr_0f6_4f23                            ; $4f11: $30 $10

    ld l, b                                       ; $4f13: $68
    ld [$08d4], sp                                ; $4f14: $08 $d4 $08
    sub h                                         ; $4f17: $94
    nop                                           ; $4f18: $00
    ret nz                                        ; $4f19: $c0

    nop                                           ; $4f1a: $00
    ld [bc], a                                    ; $4f1b: $02
    ld h, b                                       ; $4f1c: $60
    ld [bc], a                                    ; $4f1d: $02
    sub b                                         ; $4f1e: $90
    adc c                                         ; $4f1f: $89
    ld l, b                                       ; $4f20: $68
    nop                                           ; $4f21: $00
    sbc b                                         ; $4f22: $98

jr_0f6_4f23:
    nop                                           ; $4f23: $00
    jr jr_0f6_4f2e                                ; $4f24: $18 $08

    rla                                           ; $4f26: $17
    nop                                           ; $4f27: $00
    rrca                                          ; $4f28: $0f
    ld de, $0200                                  ; $4f29: $11 $00 $02
    db $10                                        ; $4f2c: $10
    sub l                                         ; $4f2d: $95

jr_0f6_4f2e:
    ld c, $02                                     ; $4f2e: $0e $02
    dec e                                         ; $4f30: $1d
    nop                                           ; $4f31: $00

jr_0f6_4f32:
    inc bc                                        ; $4f32: $03
    nop                                           ; $4f33: $00
    inc bc                                        ; $4f34: $03
    nop                                           ; $4f35: $00
    inc bc                                        ; $4f36: $03
    nop                                           ; $4f37: $00
    inc bc                                        ; $4f38: $03
    ld [bc], a                                    ; $4f39: $02
    dec b                                         ; $4f3a: $05
    inc b                                         ; $4f3b: $04
    dec bc                                        ; $4f3c: $0b
    inc b                                         ; $4f3d: $04
    ld a, [bc]                                    ; $4f3e: $0a
    nop                                           ; $4f3f: $00
    ld b, $00                                     ; $4f40: $06 $00
    ld b, $08                                     ; $4f42: $06 $08
    nop                                           ; $4f44: $00
    adc b                                         ; $4f45: $88
    inc b                                         ; $4f46: $04
    adc d                                         ; $4f47: $8a
    nop                                           ; $4f48: $00
    call z, $aa44                                 ; $4f49: $cc $44 $aa
    ld b, b                                       ; $4f4c: $40
    and [hl]                                      ; $4f4d: $a6
    jr jr_0f6_4f50                                ; $4f4e: $18 $00

jr_0f6_4f50:
    rst $38                                       ; $4f50: $ff
    dec bc                                        ; $4f51: $0b
    inc bc                                        ; $4f52: $03
    pop af                                        ; $4f53: $f1
    dec c                                         ; $4f54: $0d
    ld hl, sp+$08                                 ; $4f55: $f8 $08
    ld a, [$faeb]                                 ; $4f57: $fa $eb $fa
    di                                            ; $4f5a: $f3
    ld a, [$9efa]                                 ; $4f5b: $fa $fa $9e
    nop                                           ; $4f5e: $00
    rrca                                          ; $4f5f: $0f
    nop                                           ; $4f60: $00
    rra                                           ; $4f61: $1f
    db $10                                        ; $4f62: $10
    jr z, jr_0f6_4f75                             ; $4f63: $28 $10

    jr z, jr_0f6_4f77                             ; $4f65: $28 $10

    jr z, jr_0f6_4f71                             ; $4f67: $28 $08

    ld d, $00                                     ; $4f69: $16 $00
    rra                                           ; $4f6b: $1f
    nop                                           ; $4f6c: $00
    dec de                                        ; $4f6d: $1b
    nop                                           ; $4f6e: $00
    stop                                          ; $4f6f: $10 $00

jr_0f6_4f71:
    ld h, b                                       ; $4f71: $60
    nop                                           ; $4f72: $00
    ld h, e                                       ; $4f73: $63
    ld b, b                                       ; $4f74: $40

jr_0f6_4f75:
    and e                                         ; $4f75: $a3
    nop                                           ; $4f76: $00

jr_0f6_4f77:
    add $00                                       ; $4f77: $c6 $00
    jp Jump_0f6_4300                              ; $4f79: $c3 $00 $43


    inc bc                                        ; $4f7c: $03
    nop                                           ; $4f7d: $00
    ld [bc], a                                    ; $4f7e: $02
    add b                                         ; $4f7f: $80
    add l                                         ; $4f80: $85
    ld a, a                                       ; $4f81: $7f
    ld a, c                                       ; $4f82: $79
    add [hl]                                      ; $4f83: $86
    nop                                           ; $4f84: $00
    ld a, c                                       ; $4f85: $79
    dec b                                         ; $4f86: $05
    nop                                           ; $4f87: $00
    adc e                                         ; $4f88: $8b
    ldh [rLCDC], a                                ; $4f89: $e0 $40
    and b                                         ; $4f8b: $a0
    nop                                           ; $4f8c: $00
    ld h, b                                       ; $4f8d: $60
    ld b, b                                       ; $4f8e: $40
    and b                                         ; $4f8f: $a0
    ld b, b                                       ; $4f90: $40
    and b                                         ; $4f91: $a0
    nop                                           ; $4f92: $00
    ret nz                                        ; $4f93: $c0

    dec bc                                        ; $4f94: $0b
    nop                                           ; $4f95: $00
    ld [bc], a                                    ; $4f96: $02
    ld b, b                                       ; $4f97: $40
    sbc c                                         ; $4f98: $99
    jr nz, @+$62                                  ; $4f99: $20 $60

    db $10                                        ; $4f9b: $10
    jr nz, @+$52                                  ; $4f9c: $20 $50

    nop                                           ; $4f9e: $00
    dec sp                                        ; $4f9f: $3b
    nop                                           ; $4fa0: $00
    add hl, de                                    ; $4fa1: $19
    ld [$0814], sp                                ; $4fa2: $08 $14 $08
    inc d                                         ; $4fa5: $14
    nop                                           ; $4fa6: $00
    inc c                                         ; $4fa7: $0c
    nop                                           ; $4fa8: $00
    inc c                                         ; $4fa9: $0c
    inc b                                         ; $4faa: $04
    ld a, [bc]                                    ; $4fab: $0a
    inc b                                         ; $4fac: $04
    ld a, [bc]                                    ; $4fad: $0a
    nop                                           ; $4fae: $00
    ld b, $00                                     ; $4faf: $06 $00
    ld b, $02                                     ; $4fb1: $06 $02
    nop                                           ; $4fb3: $00
    rst $38                                       ; $4fb4: $ff
    add hl, bc                                    ; $4fb5: $09
    ld [bc], a                                    ; $4fb6: $02
    pop af                                        ; $4fb7: $f1
    dec c                                         ; $4fb8: $0d
    ld hl, sp+$08                                 ; $4fb9: $f8 $08
    ei                                            ; $4fbb: $fb
    rst $28                                       ; $4fbc: $ef
    ei                                            ; $4fbd: $fb
    rst $30                                       ; $4fbe: $f7
    adc d                                         ; $4fbf: $8a
    nop                                           ; $4fc0: $00
    rra                                           ; $4fc1: $1f
    ld de, $202e                                  ; $4fc2: $11 $2e $20
    ld d, c                                       ; $4fc5: $51
    nop                                           ; $4fc6: $00
    ld h, b                                       ; $4fc7: $60
    nop                                           ; $4fc8: $00
    ld h, b                                       ; $4fc9: $60
    dec b                                         ; $4fca: $05
    nop                                           ; $4fcb: $00

jr_0f6_4fcc:
    add l                                         ; $4fcc: $85
    ret nz                                        ; $4fcd: $c0

    ld b, b                                       ; $4fce: $40
    and b                                         ; $4fcf: $a0
    nop                                           ; $4fd0: $00
    ld h, b                                       ; $4fd1: $60
    dec c                                         ; $4fd2: $0d
    nop                                           ; $4fd3: $00
    sub c                                         ; $4fd4: $91
    add b                                         ; $4fd5: $80
    nop                                           ; $4fd6: $00
    add b                                         ; $4fd7: $80
    nop                                           ; $4fd8: $00
    sbc h                                         ; $4fd9: $9c
    ld [$0014], sp                                ; $4fda: $08 $14 $00
    inc c                                         ; $4fdd: $0c
    nop                                           ; $4fde: $00
    ld b, $02                                     ; $4fdf: $06 $02
    dec b                                         ; $4fe1: $05
    ld [bc], a                                    ; $4fe2: $02
    dec b                                         ; $4fe3: $05
    nop                                           ; $4fe4: $00
    ld [bc], a                                    ; $4fe5: $02
    ld c, $00                                     ; $4fe6: $0e $00
    rst $38                                       ; $4fe8: $ff
    add hl, bc                                    ; $4fe9: $09
    ld [bc], a                                    ; $4fea: $02
    pop af                                        ; $4feb: $f1
    dec c                                         ; $4fec: $0d
    ld hl, sp+$08                                 ; $4fed: $f8 $08
    ei                                            ; $4fef: $fb
    di                                            ; $4ff0: $f3
    ei                                            ; $4ff1: $fb
    db $f4                                        ; $4ff2: $f4
    adc b                                         ; $4ff3: $88
    nop                                           ; $4ff4: $00
    jr nc, jr_0f6_5017                            ; $4ff5: $30 $20

    sub $42                                       ; $4ff7: $d6 $42
    and l                                         ; $4ff9: $a5
    ld bc, $1d02                                  ; $4ffa: $01 $02 $1d
    nop                                           ; $4ffd: $00
    add e                                         ; $4ffe: $83
    ld bc, $0100                                  ; $4fff: $01 $00 $01
    jr jr_0f6_5004                                ; $5002: $18 $00

jr_0f6_5004:
    rst $38                                       ; $5004: $ff
    dec bc                                        ; $5005: $0b
    inc bc                                        ; $5006: $03
    rst $38                                       ; $5007: $ff
    inc b                                         ; $5008: $04
    rst $30                                       ; $5009: $f7
    nop                                           ; $500a: $00
    rst $38                                       ; $500b: $ff
    db $f4                                        ; $500c: $f4
    rst $38                                       ; $500d: $ff
    db $fd                                        ; $500e: $fd
    rst $38                                       ; $500f: $ff
    inc bc                                        ; $5010: $03
    inc b                                         ; $5011: $04
    nop                                           ; $5012: $00
    add d                                         ; $5013: $82
    inc b                                         ; $5014: $04
    nop                                           ; $5015: $00
    ld [bc], a                                    ; $5016: $02

jr_0f6_5017:
    inc b                                         ; $5017: $04
    ld [bc], a                                    ; $5018: $02
    nop                                           ; $5019: $00
    add d                                         ; $501a: $82
    add b                                         ; $501b: $80
    nop                                           ; $501c: $00
    ld [bc], a                                    ; $501d: $02
    add b                                         ; $501e: $80
    add d                                         ; $501f: $82
    ld bc, $0200                                  ; $5020: $01 $00 $02
    ld bc, $0882                                  ; $5023: $01 $82 $08
    nop                                           ; $5026: $00
    ld [bc], a                                    ; $5027: $02
    ld [$0002], sp                                ; $5028: $08 $02 $00
    add d                                         ; $502b: $82
    ld bc, $0200                                  ; $502c: $01 $00 $02
    ld bc, $0006                                  ; $502f: $01 $06 $00
    add d                                         ; $5032: $82
    ld [$0200], sp                                ; $5033: $08 $00 $02
    ld [$4086], sp                                ; $5036: $08 $86 $40
    nop                                           ; $5039: $00
    ld b, d                                       ; $503a: $42
    ld b, b                                       ; $503b: $40
    ld b, d                                       ; $503c: $42
    ld [bc], a                                    ; $503d: $02
    ld [bc], a                                    ; $503e: $02
    ld b, b                                       ; $503f: $40
    ld [bc], a                                    ; $5040: $02
    nop                                           ; $5041: $00
    add d                                         ; $5042: $82
    jr z, jr_0f6_5045                             ; $5043: $28 $00

jr_0f6_5045:
    ld [bc], a                                    ; $5045: $02
    jr z, jr_0f6_4fcc                             ; $5046: $28 $84

    add b                                         ; $5048: $80
    nop                                           ; $5049: $00
    sub c                                         ; $504a: $91
    add b                                         ; $504b: $80
    ld [bc], a                                    ; $504c: $02
    ld de, $0006                                  ; $504d: $11 $06 $00
    add h                                         ; $5050: $84
    jr nz, jr_0f6_5053                            ; $5051: $20 $00

jr_0f6_5053:
    inc h                                         ; $5053: $24
    jr nz, jr_0f6_5058                            ; $5054: $20 $02

    inc b                                         ; $5056: $04
    inc b                                         ; $5057: $04

jr_0f6_5058:
    nop                                           ; $5058: $00
    add d                                         ; $5059: $82
    jr nz, jr_0f6_505c                            ; $505a: $20 $00

jr_0f6_505c:
    ld [bc], a                                    ; $505c: $02
    jr nz, jr_0f6_5061                            ; $505d: $20 $02

    nop                                           ; $505f: $00
    add h                                         ; $5060: $84

jr_0f6_5061:
    ld bc, $1100                                  ; $5061: $01 $00 $11
    ld bc, $1002                                  ; $5064: $01 $02 $10
    ld a, [bc]                                    ; $5067: $0a
    nop                                           ; $5068: $00
    rst $38                                       ; $5069: $ff
    dec bc                                        ; $506a: $0b
    inc bc                                        ; $506b: $03
    rst $38                                       ; $506c: $ff
    inc b                                         ; $506d: $04
    rst $30                                       ; $506e: $f7
    nop                                           ; $506f: $00
    cp $f5                                        ; $5070: $fe $f5
    cp $fd                                        ; $5072: $fe $fd
    cp $04                                        ; $5074: $fe $04
    inc b                                         ; $5076: $04
    nop                                           ; $5077: $00
    add d                                         ; $5078: $82
    inc b                                         ; $5079: $04
    nop                                           ; $507a: $00
    ld [bc], a                                    ; $507b: $02
    inc b                                         ; $507c: $04
    ld [bc], a                                    ; $507d: $02
    nop                                           ; $507e: $00
    add d                                         ; $507f: $82
    add b                                         ; $5080: $80
    nop                                           ; $5081: $00
    ld [bc], a                                    ; $5082: $02
    add b                                         ; $5083: $80
    add d                                         ; $5084: $82
    inc b                                         ; $5085: $04
    nop                                           ; $5086: $00
    ld [bc], a                                    ; $5087: $02
    inc b                                         ; $5088: $04
    add h                                         ; $5089: $84
    ld [$0900], sp                                ; $508a: $08 $00 $09
    ld [$0103], sp                                ; $508d: $08 $03 $01
    add c                                         ; $5090: $81
    nop                                           ; $5091: $00

jr_0f6_5092:
    ld [bc], a                                    ; $5092: $02
    ld bc, $0004                                  ; $5093: $01 $04 $00
    add h                                         ; $5096: $84
    ld bc, $1100                                  ; $5097: $01 $00 $11
    ld bc, $1002                                  ; $509a: $01 $02 $10
    add [hl]                                      ; $509d: $86
    jr nz, jr_0f6_50a0                            ; $509e: $20 $00

jr_0f6_50a0:
    ld hl, $8120                                  ; $50a0: $21 $20 $81
    ld bc, $8102                                  ; $50a3: $01 $02 $81
    ld [bc], a                                    ; $50a6: $02
    nop                                           ; $50a7: $00
    add d                                         ; $50a8: $82
    stop                                          ; $50a9: $10 $00
    ld [bc], a                                    ; $50ab: $02
    db $10                                        ; $50ac: $10
    ld [bc], a                                    ; $50ad: $02
    nop                                           ; $50ae: $00
    add d                                         ; $50af: $82
    ld [$0200], sp                                ; $50b0: $08 $00 $02
    ld [$0008], sp                                ; $50b3: $08 $08 $00
    add d                                         ; $50b6: $82
    inc b                                         ; $50b7: $04
    nop                                           ; $50b8: $00
    ld [bc], a                                    ; $50b9: $02
    inc b                                         ; $50ba: $04
    ld a, [bc]                                    ; $50bb: $0a
    nop                                           ; $50bc: $00
    add h                                         ; $50bd: $84
    ld bc, $4100                                  ; $50be: $01 $00 $41
    ld bc, $4003                                  ; $50c1: $01 $03 $40
    add c                                         ; $50c4: $81
    nop                                           ; $50c5: $00
    ld [bc], a                                    ; $50c6: $02
    ld b, b                                       ; $50c7: $40
    ld b, $00                                     ; $50c8: $06 $00
    rst $38                                       ; $50ca: $ff
    dec bc                                        ; $50cb: $0b
    inc bc                                        ; $50cc: $03
    rst $38                                       ; $50cd: $ff
    inc b                                         ; $50ce: $04
    rst $30                                       ; $50cf: $f7
    nop                                           ; $50d0: $00
    db $fd                                        ; $50d1: $fd
    db $f4                                        ; $50d2: $f4
    db $fd                                        ; $50d3: $fd
    db $fd                                        ; $50d4: $fd
    db $fd                                        ; $50d5: $fd
    inc bc                                        ; $50d6: $03
    inc b                                         ; $50d7: $04
    nop                                           ; $50d8: $00
    add d                                         ; $50d9: $82
    inc b                                         ; $50da: $04
    nop                                           ; $50db: $00
    ld [bc], a                                    ; $50dc: $02
    inc b                                         ; $50dd: $04
    ld [bc], a                                    ; $50de: $02
    nop                                           ; $50df: $00
    add d                                         ; $50e0: $82
    add b                                         ; $50e1: $80
    nop                                           ; $50e2: $00
    ld [bc], a                                    ; $50e3: $02
    add b                                         ; $50e4: $80
    add d                                         ; $50e5: $82
    ld bc, $0200                                  ; $50e6: $01 $00 $02
    ld bc, $0882                                  ; $50e9: $01 $82 $08
    nop                                           ; $50ec: $00
    ld [bc], a                                    ; $50ed: $02
    ld [$0002], sp                                ; $50ee: $08 $02 $00
    add d                                         ; $50f1: $82
    ld bc, $0200                                  ; $50f2: $01 $00 $02
    ld bc, $0006                                  ; $50f5: $01 $06 $00
    add d                                         ; $50f8: $82

jr_0f6_50f9:
    ld [$0200], sp                                ; $50f9: $08 $00 $02
    ld [$4086], sp                                ; $50fc: $08 $86 $40
    nop                                           ; $50ff: $00
    ld b, d                                       ; $5100: $42
    ld b, b                                       ; $5101: $40
    ld b, d                                       ; $5102: $42
    ld [bc], a                                    ; $5103: $02
    ld [bc], a                                    ; $5104: $02
    ld b, b                                       ; $5105: $40
    ld [bc], a                                    ; $5106: $02
    nop                                           ; $5107: $00
    add d                                         ; $5108: $82
    jr z, jr_0f6_510b                             ; $5109: $28 $00

jr_0f6_510b:
    ld [bc], a                                    ; $510b: $02
    jr z, jr_0f6_5092                             ; $510c: $28 $84

    add b                                         ; $510e: $80
    nop                                           ; $510f: $00
    sub c                                         ; $5110: $91
    add b                                         ; $5111: $80
    ld [bc], a                                    ; $5112: $02
    ld de, $0006                                  ; $5113: $11 $06 $00
    add h                                         ; $5116: $84
    jr nz, jr_0f6_5119                            ; $5117: $20 $00

jr_0f6_5119:
    inc h                                         ; $5119: $24
    jr nz, jr_0f6_511e                            ; $511a: $20 $02

    inc b                                         ; $511c: $04
    inc b                                         ; $511d: $04

jr_0f6_511e:
    nop                                           ; $511e: $00
    add d                                         ; $511f: $82
    jr nz, jr_0f6_5122                            ; $5120: $20 $00

jr_0f6_5122:
    ld [bc], a                                    ; $5122: $02
    jr nz, jr_0f6_5127                            ; $5123: $20 $02

    nop                                           ; $5125: $00
    add h                                         ; $5126: $84

jr_0f6_5127:
    ld bc, $1100                                  ; $5127: $01 $00 $11
    ld bc, $1002                                  ; $512a: $01 $02 $10
    ld a, [bc]                                    ; $512d: $0a
    nop                                           ; $512e: $00
    rst $38                                       ; $512f: $ff
    dec bc                                        ; $5130: $0b
    inc bc                                        ; $5131: $03
    rst $38                                       ; $5132: $ff
    inc b                                         ; $5133: $04
    rst $30                                       ; $5134: $f7
    nop                                           ; $5135: $00
    db $fc                                        ; $5136: $fc
    push af                                       ; $5137: $f5
    db $fc                                        ; $5138: $fc
    db $fd                                        ; $5139: $fd
    db $fc                                        ; $513a: $fc
    inc b                                         ; $513b: $04
    inc b                                         ; $513c: $04
    nop                                           ; $513d: $00
    add d                                         ; $513e: $82
    inc c                                         ; $513f: $0c
    nop                                           ; $5140: $00
    ld [bc], a                                    ; $5141: $02
    inc c                                         ; $5142: $0c
    ld [bc], a                                    ; $5143: $02
    nop                                           ; $5144: $00
    add d                                         ; $5145: $82
    ret nz                                        ; $5146: $c0

    nop                                           ; $5147: $00
    ld [bc], a                                    ; $5148: $02
    ret nz                                        ; $5149: $c0

    add h                                         ; $514a: $84
    ld b, $00                                     ; $514b: $06 $00
    ld c, $06                                     ; $514d: $0e $06
    ld [bc], a                                    ; $514f: $02
    inc c                                         ; $5150: $0c
    add d                                         ; $5151: $82
    ld bc, $0200                                  ; $5152: $01 $00 $02
    ld bc, $0382                                  ; $5155: $01 $82 $03
    nop                                           ; $5158: $00

jr_0f6_5159:
    ld [bc], a                                    ; $5159: $02
    inc bc                                        ; $515a: $03
    inc b                                         ; $515b: $04
    nop                                           ; $515c: $00
    add h                                         ; $515d: $84
    ld bc, $1900                                  ; $515e: $01 $00 $19
    ld bc, $1802                                  ; $5161: $01 $02 $18
    add [hl]                                      ; $5164: $86
    ld h, b                                       ; $5165: $60
    nop                                           ; $5166: $00
    ld h, e                                       ; $5167: $63
    ld h, b                                       ; $5168: $60
    jp Jump_000_0203                              ; $5169: $c3 $03 $02


    pop bc                                        ; $516c: $c1
    ld [bc], a                                    ; $516d: $02
    nop                                           ; $516e: $00
    add d                                         ; $516f: $82
    jr c, jr_0f6_5172                             ; $5170: $38 $00

jr_0f6_5172:
    ld [bc], a                                    ; $5172: $02
    jr c, jr_0f6_50f9                             ; $5173: $38 $84

    add b                                         ; $5175: $80
    nop                                           ; $5176: $00
    sbc c                                         ; $5177: $99
    add b                                         ; $5178: $80
    ld [bc], a                                    ; $5179: $02
    add hl, de                                    ; $517a: $19
    ld b, $00                                     ; $517b: $06 $00
    add h                                         ; $517d: $84

jr_0f6_517e:
    ld b, b                                       ; $517e: $40
    nop                                           ; $517f: $00
    ld c, h                                       ; $5180: $4c
    ld b, b                                       ; $5181: $40
    ld [bc], a                                    ; $5182: $02
    inc c                                         ; $5183: $0c
    inc b                                         ; $5184: $04
    nop                                           ; $5185: $00
    add d                                         ; $5186: $82
    ld b, b                                       ; $5187: $40
    nop                                           ; $5188: $00
    ld [bc], a                                    ; $5189: $02
    ld b, b                                       ; $518a: $40
    ld [bc], a                                    ; $518b: $02
    nop                                           ; $518c: $00
    add h                                         ; $518d: $84
    inc bc                                        ; $518e: $03
    nop                                           ; $518f: $00
    ld h, e                                       ; $5190: $63
    inc bc                                        ; $5191: $03
    ld [bc], a                                    ; $5192: $02
    ld h, b                                       ; $5193: $60
    add d                                         ; $5194: $82
    ld b, b                                       ; $5195: $40
    nop                                           ; $5196: $00
    ld [bc], a                                    ; $5197: $02
    ld b, b                                       ; $5198: $40
    ld b, $00                                     ; $5199: $06 $00
    rst $38                                       ; $519b: $ff
    dec bc                                        ; $519c: $0b
    inc bc                                        ; $519d: $03
    rst $38                                       ; $519e: $ff
    inc b                                         ; $519f: $04
    rst $30                                       ; $51a0: $f7
    nop                                           ; $51a1: $00
    ei                                            ; $51a2: $fb
    db $f4                                        ; $51a3: $f4
    ei                                            ; $51a4: $fb
    db $fc                                        ; $51a5: $fc
    ei                                            ; $51a6: $fb

jr_0f6_51a7:
    inc bc                                        ; $51a7: $03
    inc b                                         ; $51a8: $04
    nop                                           ; $51a9: $00
    add d                                         ; $51aa: $82
    inc bc                                        ; $51ab: $03
    nop                                           ; $51ac: $00
    ld [bc], a                                    ; $51ad: $02
    inc bc                                        ; $51ae: $03
    ld [bc], a                                    ; $51af: $02
    nop                                           ; $51b0: $00
    add d                                         ; $51b1: $82
    ret nz                                        ; $51b2: $c0

    nop                                           ; $51b3: $00
    ld [bc], a                                    ; $51b4: $02
    ret nz                                        ; $51b5: $c0

    add h                                         ; $51b6: $84
    ld bc, $0d00                                  ; $51b7: $01 $00 $0d
    ld bc, $0c02                                  ; $51ba: $01 $02 $0c
    inc b                                         ; $51bd: $04
    nop                                           ; $51be: $00
    add d                                         ; $51bf: $82
    inc bc                                        ; $51c0: $03
    nop                                           ; $51c1: $00
    ld [bc], a                                    ; $51c2: $02
    inc bc                                        ; $51c3: $03
    ld b, $00                                     ; $51c4: $06 $00
    add d                                         ; $51c6: $82
    ld b, $00                                     ; $51c7: $06 $00
    ld [bc], a                                    ; $51c9: $02
    ld b, $86                                     ; $51ca: $06 $86

jr_0f6_51cc:
    ld h, b                                       ; $51cc: $60
    nop                                           ; $51cd: $00
    ld h, e                                       ; $51ce: $63
    ld h, b                                       ; $51cf: $60
    inc sp                                        ; $51d0: $33
    inc bc                                        ; $51d1: $03
    ld [bc], a                                    ; $51d2: $02
    jr nc, jr_0f6_5159                            ; $51d3: $30 $84

    add b                                         ; $51d5: $80

Jump_0f6_51d6:
    nop                                           ; $51d6: $00
    or [hl]                                       ; $51d7: $b6
    add b                                         ; $51d8: $80
    ld [bc], a                                    ; $51d9: $02
    ld [hl], $84                                  ; $51da: $36 $84
    ld h, b                                       ; $51dc: $60
    nop                                           ; $51dd: $00
    ld l, l                                       ; $51de: $6d
    ld h, b                                       ; $51df: $60
    ld [bc], a                                    ; $51e0: $02
    dec c                                         ; $51e1: $0d
    ld b, $00                                     ; $51e2: $06 $00
    add h                                         ; $51e4: $84
    jr nc, jr_0f6_51e7                            ; $51e5: $30 $00

jr_0f6_51e7:
    inc sp                                        ; $51e7: $33
    jr nc, jr_0f6_51ec                            ; $51e8: $30 $02

    inc bc                                        ; $51ea: $03
    inc b                                         ; $51eb: $04

jr_0f6_51ec:
    nop                                           ; $51ec: $00
    add d                                         ; $51ed: $82
    jr nc, jr_0f6_51f0                            ; $51ee: $30 $00

jr_0f6_51f0:
    ld [bc], a                                    ; $51f0: $02
    jr nc, jr_0f6_51f5                            ; $51f1: $30 $02

    nop                                           ; $51f3: $00
    add h                                         ; $51f4: $84

jr_0f6_51f5:
    inc bc                                        ; $51f5: $03
    nop                                           ; $51f6: $00
    dec de                                        ; $51f7: $1b
    inc bc                                        ; $51f8: $03
    ld [bc], a                                    ; $51f9: $02
    jr jr_0f6_517e                                ; $51fa: $18 $82

    ld b, b                                       ; $51fc: $40
    nop                                           ; $51fd: $00
    ld [bc], a                                    ; $51fe: $02
    ld b, b                                       ; $51ff: $40
    ld b, $00                                     ; $5200: $06 $00
    rst $38                                       ; $5202: $ff
    dec bc                                        ; $5203: $0b
    inc bc                                        ; $5204: $03
    rst $38                                       ; $5205: $ff
    inc b                                         ; $5206: $04
    rst $30                                       ; $5207: $f7
    nop                                           ; $5208: $00
    ld a, [$faf5]                                 ; $5209: $fa $f5 $fa
    db $fd                                        ; $520c: $fd
    ld a, [$0404]                                 ; $520d: $fa $04 $04
    nop                                           ; $5210: $00
    add d                                         ; $5211: $82
    inc c                                         ; $5212: $0c
    nop                                           ; $5213: $00
    ld [bc], a                                    ; $5214: $02
    inc c                                         ; $5215: $0c
    ld [bc], a                                    ; $5216: $02
    nop                                           ; $5217: $00
    add d                                         ; $5218: $82
    ret nz                                        ; $5219: $c0

    nop                                           ; $521a: $00
    ld [bc], a                                    ; $521b: $02
    ret nz                                        ; $521c: $c0

    add h                                         ; $521d: $84
    ld b, $00                                     ; $521e: $06 $00
    ld [hl], $06                                  ; $5220: $36 $06
    ld [bc], a                                    ; $5222: $02
    jr nc, jr_0f6_51a7                            ; $5223: $30 $82

    ld bc, $0200                                  ; $5225: $01 $00 $02
    ld bc, $0382                                  ; $5228: $01 $82 $03
    nop                                           ; $522b: $00
    ld [bc], a                                    ; $522c: $02
    inc bc                                        ; $522d: $03
    inc b                                         ; $522e: $04
    nop                                           ; $522f: $00
    add h                                         ; $5230: $84

jr_0f6_5231:
    ld bc, $1900                                  ; $5231: $01 $00 $19
    ld bc, $1802                                  ; $5234: $01 $02 $18
    add [hl]                                      ; $5237: $86
    ld h, b                                       ; $5238: $60
    nop                                           ; $5239: $00
    ld h, e                                       ; $523a: $63
    ld h, b                                       ; $523b: $60
    jp Jump_000_0203                              ; $523c: $c3 $03 $02


    pop bc                                        ; $523f: $c1
    ld [bc], a                                    ; $5240: $02
    nop                                           ; $5241: $00
    add d                                         ; $5242: $82
    jr c, jr_0f6_5245                             ; $5243: $38 $00

jr_0f6_5245:
    ld [bc], a                                    ; $5245: $02
    jr c, jr_0f6_51cc                             ; $5246: $38 $84

    add b                                         ; $5248: $80
    nop                                           ; $5249: $00
    or c                                          ; $524a: $b1
    add b                                         ; $524b: $80
    ld [bc], a                                    ; $524c: $02
    ld sp, $0006                                  ; $524d: $31 $06 $00
    add h                                         ; $5250: $84
    ld b, b                                       ; $5251: $40
    nop                                           ; $5252: $00
    ld c, h                                       ; $5253: $4c
    ld b, b                                       ; $5254: $40
    ld [bc], a                                    ; $5255: $02

jr_0f6_5256:
    inc c                                         ; $5256: $0c
    inc b                                         ; $5257: $04
    nop                                           ; $5258: $00
    add d                                         ; $5259: $82
    ld b, b                                       ; $525a: $40
    nop                                           ; $525b: $00
    ld [bc], a                                    ; $525c: $02
    ld b, b                                       ; $525d: $40
    ld [bc], a                                    ; $525e: $02
    nop                                           ; $525f: $00
    add h                                         ; $5260: $84
    inc bc                                        ; $5261: $03
    nop                                           ; $5262: $00
    ld h, e                                       ; $5263: $63
    inc bc                                        ; $5264: $03
    ld [bc], a                                    ; $5265: $02
    ld h, b                                       ; $5266: $60
    add d                                         ; $5267: $82
    ld b, b                                       ; $5268: $40
    nop                                           ; $5269: $00
    ld [bc], a                                    ; $526a: $02
    ld b, b                                       ; $526b: $40
    ld b, $00                                     ; $526c: $06 $00
    rst $38                                       ; $526e: $ff
    dec c                                         ; $526f: $0d
    inc b                                         ; $5270: $04
    rst $38                                       ; $5271: $ff
    inc b                                         ; $5272: $04
    rst $30                                       ; $5273: $f7
    nop                                           ; $5274: $00
    ei                                            ; $5275: $fb
    db $f4                                        ; $5276: $f4
    ld hl, sp-$04                                 ; $5277: $f8 $fc
    ld sp, hl                                     ; $5279: $f9
    inc bc                                        ; $527a: $03
    ld [$82fc], sp                                ; $527b: $08 $fc $82
    inc bc                                        ; $527e: $03
    nop                                           ; $527f: $00
    ld [bc], a                                    ; $5280: $02
    inc bc                                        ; $5281: $03
    ld [bc], a                                    ; $5282: $02
    nop                                           ; $5283: $00
    add d                                         ; $5284: $82
    ret nz                                        ; $5285: $c0

    nop                                           ; $5286: $00
    ld [bc], a                                    ; $5287: $02
    ret nz                                        ; $5288: $c0

    add h                                         ; $5289: $84
    ld bc, $0d00                                  ; $528a: $01 $00 $0d
    ld bc, $0c02                                  ; $528d: $01 $02 $0c
    inc b                                         ; $5290: $04
    nop                                           ; $5291: $00

jr_0f6_5292:
    add d                                         ; $5292: $82
    inc bc                                        ; $5293: $03
    nop                                           ; $5294: $00
    ld [bc], a                                    ; $5295: $02
    inc bc                                        ; $5296: $03
    ld [$8200], sp                                ; $5297: $08 $00 $82
    jr nz, jr_0f6_529c                            ; $529a: $20 $00

jr_0f6_529c:
    ld [bc], a                                    ; $529c: $02
    jr nz, @-$7c                                  ; $529d: $20 $82

    ld b, $00                                     ; $529f: $06 $00
    ld [bc], a                                    ; $52a1: $02
    ld b, $86                                     ; $52a2: $06 $86
    ld h, b                                       ; $52a4: $60
    nop                                           ; $52a5: $00
    ld h, e                                       ; $52a6: $63
    ld h, b                                       ; $52a7: $60
    inc sp                                        ; $52a8: $33
    inc bc                                        ; $52a9: $03
    ld [bc], a                                    ; $52aa: $02
    jr nc, jr_0f6_5231                            ; $52ab: $30 $84

    add b                                         ; $52ad: $80
    nop                                           ; $52ae: $00
    or [hl]                                       ; $52af: $b6
    add b                                         ; $52b0: $80
    ld [bc], a                                    ; $52b1: $02
    ld [hl], $84                                  ; $52b2: $36 $84
    ld h, b                                       ; $52b4: $60
    nop                                           ; $52b5: $00
    ld l, l                                       ; $52b6: $6d
    ld h, b                                       ; $52b7: $60
    ld [bc], a                                    ; $52b8: $02
    dec c                                         ; $52b9: $0d
    inc b                                         ; $52ba: $04
    nop                                           ; $52bb: $00
    add h                                         ; $52bc: $84
    jr nc, jr_0f6_52bf                            ; $52bd: $30 $00

jr_0f6_52bf:
    inc sp                                        ; $52bf: $33
    jr nc, jr_0f6_52c4                            ; $52c0: $30 $02

    inc bc                                        ; $52c2: $03
    inc b                                         ; $52c3: $04

jr_0f6_52c4:
    nop                                           ; $52c4: $00
    add d                                         ; $52c5: $82
    jr nc, jr_0f6_52c8                            ; $52c6: $30 $00

jr_0f6_52c8:
    ld [bc], a                                    ; $52c8: $02
    jr nc, jr_0f6_52cd                            ; $52c9: $30 $02

    nop                                           ; $52cb: $00
    add h                                         ; $52cc: $84

jr_0f6_52cd:
    inc bc                                        ; $52cd: $03
    nop                                           ; $52ce: $00
    dec de                                        ; $52cf: $1b
    inc bc                                        ; $52d0: $03
    ld [bc], a                                    ; $52d1: $02
    jr jr_0f6_5256                                ; $52d2: $18 $82

    ld b, b                                       ; $52d4: $40
    nop                                           ; $52d5: $00
    ld [bc], a                                    ; $52d6: $02
    ld b, b                                       ; $52d7: $40
    add d                                         ; $52d8: $82
    ld [bc], a                                    ; $52d9: $02
    nop                                           ; $52da: $00
    ld [bc], a                                    ; $52db: $02
    ld [bc], a                                    ; $52dc: $02
    ld [bc], a                                    ; $52dd: $02
    nop                                           ; $52de: $00
    add d                                         ; $52df: $82
    stop                                          ; $52e0: $10 $00
    ld [bc], a                                    ; $52e2: $02
    db $10                                        ; $52e3: $10
    add d                                         ; $52e4: $82
    ld bc, $0200                                  ; $52e5: $01 $00 $02
    ld bc, $0018                                  ; $52e8: $01 $18 $00
    rst $38                                       ; $52eb: $ff
    rrca                                          ; $52ec: $0f
    dec b                                         ; $52ed: $05
    rst $38                                       ; $52ee: $ff
    inc b                                         ; $52ef: $04
    rst $30                                       ; $52f0: $f7
    nop                                           ; $52f1: $00
    ld a, [$f8f5]                                 ; $52f2: $fa $f5 $f8
    db $fd                                        ; $52f5: $fd
    ld hl, sp+$04                                 ; $52f6: $f8 $04
    ld [$08fb], sp                                ; $52f8: $08 $fb $08
    rst $38                                       ; $52fb: $ff
    add d                                         ; $52fc: $82
    inc c                                         ; $52fd: $0c
    nop                                           ; $52fe: $00
    ld [bc], a                                    ; $52ff: $02
    inc c                                         ; $5300: $0c
    ld [bc], a                                    ; $5301: $02
    nop                                           ; $5302: $00
    add d                                         ; $5303: $82
    ret nz                                        ; $5304: $c0

    nop                                           ; $5305: $00
    ld [bc], a                                    ; $5306: $02
    ret nz                                        ; $5307: $c0

    add h                                         ; $5308: $84
    ld b, $00                                     ; $5309: $06 $00
    ld [hl], $06                                  ; $530b: $36 $06
    ld [bc], a                                    ; $530d: $02
    jr nc, jr_0f6_5292                            ; $530e: $30 $82

    ld bc, $0200                                  ; $5310: $01 $00 $02
    ld bc, $0382                                  ; $5313: $01 $82 $03
    nop                                           ; $5316: $00
    ld [bc], a                                    ; $5317: $02
    inc bc                                        ; $5318: $03
    ld [bc], a                                    ; $5319: $02
    nop                                           ; $531a: $00
    add d                                         ; $531b: $82
    jr nz, jr_0f6_531e                            ; $531c: $20 $00

jr_0f6_531e:
    ld [bc], a                                    ; $531e: $02
    jr nz, jr_0f6_5323                            ; $531f: $20 $02

    nop                                           ; $5321: $00
    add h                                         ; $5322: $84

jr_0f6_5323:
    ld bc, $1900                                  ; $5323: $01 $00 $19
    ld bc, $1802                                  ; $5326: $01 $02 $18
    add [hl]                                      ; $5329: $86
    ld h, b                                       ; $532a: $60
    nop                                           ; $532b: $00
    ld h, e                                       ; $532c: $63
    ld h, b                                       ; $532d: $60
    jp Jump_000_0203                              ; $532e: $c3 $03 $02


    pop bc                                        ; $5331: $c1
    ld [bc], a                                    ; $5332: $02
    nop                                           ; $5333: $00
    add d                                         ; $5334: $82
    jr c, jr_0f6_5337                             ; $5335: $38 $00

jr_0f6_5337:
    ld [bc], a                                    ; $5337: $02
    jr c, @-$7a                                   ; $5338: $38 $84

    add b                                         ; $533a: $80
    nop                                           ; $533b: $00
    or c                                          ; $533c: $b1
    add b                                         ; $533d: $80

jr_0f6_533e:
    ld [bc], a                                    ; $533e: $02
    ld sp, $0004                                  ; $533f: $31 $04 $00
    add [hl]                                      ; $5342: $86
    ld b, b                                       ; $5343: $40
    nop                                           ; $5344: $00
    ld b, b                                       ; $5345: $40
    nop                                           ; $5346: $00
    ld c, h                                       ; $5347: $4c
    ld b, b                                       ; $5348: $40
    ld [bc], a                                    ; $5349: $02
    inc c                                         ; $534a: $0c
    inc b                                         ; $534b: $04
    nop                                           ; $534c: $00
    add d                                         ; $534d: $82
    ld b, b                                       ; $534e: $40
    nop                                           ; $534f: $00
    ld [bc], a                                    ; $5350: $02
    ld b, b                                       ; $5351: $40
    ld [bc], a                                    ; $5352: $02
    nop                                           ; $5353: $00
    add h                                         ; $5354: $84
    inc bc                                        ; $5355: $03
    nop                                           ; $5356: $00
    ld h, e                                       ; $5357: $63
    inc bc                                        ; $5358: $03
    ld [bc], a                                    ; $5359: $02
    ld h, b                                       ; $535a: $60
    add d                                         ; $535b: $82
    ld b, b                                       ; $535c: $40
    nop                                           ; $535d: $00
    ld [bc], a                                    ; $535e: $02
    ld b, b                                       ; $535f: $40
    add d                                         ; $5360: $82
    ld [$0200], sp                                ; $5361: $08 $00 $02
    ld [$2082], sp                                ; $5364: $08 $82 $20
    nop                                           ; $5367: $00

jr_0f6_5368:
    ld [bc], a                                    ; $5368: $02
    db $10                                        ; $5369: $10
    add h                                         ; $536a: $84
    ld bc, $2100                                  ; $536b: $01 $00 $21
    ld bc, $2002                                  ; $536e: $01 $02 $20
    jr jr_0f6_5373                                ; $5371: $18 $00

jr_0f6_5373:
    ld [bc], a                                    ; $5373: $02
    ld bc, $001e                                  ; $5374: $01 $1e $00
    rst $38                                       ; $5377: $ff
    rrca                                          ; $5378: $0f
    dec b                                         ; $5379: $05
    rst $38                                       ; $537a: $ff
    inc b                                         ; $537b: $04
    rst $30                                       ; $537c: $f7
    nop                                           ; $537d: $00
    ld sp, hl                                     ; $537e: $f9
    db $f4                                        ; $537f: $f4
    ld hl, sp-$04                                 ; $5380: $f8 $fc
    rst $30                                       ; $5382: $f7
    inc bc                                        ; $5383: $03
    rlca                                          ; $5384: $07
    db $fc                                        ; $5385: $fc
    rlca                                          ; $5386: $07
    nop                                           ; $5387: $00
    add d                                         ; $5388: $82
    inc bc                                        ; $5389: $03
    nop                                           ; $538a: $00
    ld [bc], a                                    ; $538b: $02
    inc bc                                        ; $538c: $03
    ld [bc], a                                    ; $538d: $02
    nop                                           ; $538e: $00
    add d                                         ; $538f: $82
    ret nz                                        ; $5390: $c0

    nop                                           ; $5391: $00
    ld [bc], a                                    ; $5392: $02
    ret nz                                        ; $5393: $c0

    add h                                         ; $5394: $84
    ld bc, $0d00                                  ; $5395: $01 $00 $0d
    ld bc, $0c02                                  ; $5398: $01 $02 $0c
    inc b                                         ; $539b: $04
    nop                                           ; $539c: $00
    add d                                         ; $539d: $82
    inc bc                                        ; $539e: $03
    nop                                           ; $539f: $00
    ld [bc], a                                    ; $53a0: $02
    inc bc                                        ; $53a1: $03
    ld [bc], a                                    ; $53a2: $02
    nop                                           ; $53a3: $00
    add d                                         ; $53a4: $82
    ld [$0200], sp                                ; $53a5: $08 $00 $02
    ld [$0002], sp                                ; $53a8: $08 $02 $00
    add d                                         ; $53ab: $82
    ld b, $00                                     ; $53ac: $06 $00
    ld [bc], a                                    ; $53ae: $02
    ld b, $86                                     ; $53af: $06 $86
    ld h, b                                       ; $53b1: $60
    nop                                           ; $53b2: $00
    ld h, e                                       ; $53b3: $63
    ld h, b                                       ; $53b4: $60
    inc sp                                        ; $53b5: $33
    inc bc                                        ; $53b6: $03
    ld [bc], a                                    ; $53b7: $02
    jr nc, jr_0f6_533e                            ; $53b8: $30 $84

    add b                                         ; $53ba: $80
    nop                                           ; $53bb: $00
    or [hl]                                       ; $53bc: $b6
    add b                                         ; $53bd: $80
    ld [bc], a                                    ; $53be: $02
    ld [hl], $84                                  ; $53bf: $36 $84
    ld h, b                                       ; $53c1: $60
    nop                                           ; $53c2: $00
    ld l, l                                       ; $53c3: $6d
    ld h, b                                       ; $53c4: $60
    ld [bc], a                                    ; $53c5: $02
    dec c                                         ; $53c6: $0d
    inc b                                         ; $53c7: $04
    nop                                           ; $53c8: $00
    add d                                         ; $53c9: $82
    stop                                          ; $53ca: $10 $00
    ld [bc], a                                    ; $53cc: $02
    db $10                                        ; $53cd: $10
    add h                                         ; $53ce: $84
    jr nc, jr_0f6_53d1                            ; $53cf: $30 $00

jr_0f6_53d1:
    inc sp                                        ; $53d1: $33
    jr nc, jr_0f6_53d6                            ; $53d2: $30 $02

    inc bc                                        ; $53d4: $03
    inc b                                         ; $53d5: $04

jr_0f6_53d6:
    nop                                           ; $53d6: $00
    add d                                         ; $53d7: $82
    jr nc, jr_0f6_53da                            ; $53d8: $30 $00

jr_0f6_53da:
    ld [bc], a                                    ; $53da: $02
    jr nc, jr_0f6_53df                            ; $53db: $30 $02

    nop                                           ; $53dd: $00
    add h                                         ; $53de: $84

jr_0f6_53df:
    inc bc                                        ; $53df: $03
    nop                                           ; $53e0: $00
    dec de                                        ; $53e1: $1b
    inc bc                                        ; $53e2: $03
    ld [bc], a                                    ; $53e3: $02
    jr jr_0f6_5368                                ; $53e4: $18 $82

    ld b, b                                       ; $53e6: $40
    nop                                           ; $53e7: $00
    ld [bc], a                                    ; $53e8: $02
    ld b, b                                       ; $53e9: $40
    add d                                         ; $53ea: $82
    ld [bc], a                                    ; $53eb: $02
    nop                                           ; $53ec: $00
    ld [bc], a                                    ; $53ed: $02
    ld [bc], a                                    ; $53ee: $02
    add c                                         ; $53ef: $81
    ld [$0003], sp                                ; $53f0: $08 $03 $00
    add h                                         ; $53f3: $84
    ld bc, $8100                                  ; $53f4: $01 $00 $81
    ld bc, $8002                                  ; $53f7: $01 $02 $80
    jr jr_0f6_53fc                                ; $53fa: $18 $00

jr_0f6_53fc:
    ld [bc], a                                    ; $53fc: $02
    ld bc, $001e                                  ; $53fd: $01 $1e $00
    rst $38                                       ; $5400: $ff
    rrca                                          ; $5401: $0f
    dec b                                         ; $5402: $05
    rst $38                                       ; $5403: $ff

jr_0f6_5404:
    inc b                                         ; $5404: $04
    rst $30                                       ; $5405: $f7
    nop                                           ; $5406: $00
    ld hl, sp-$0b                                 ; $5407: $f8 $f5
    or $fd                                        ; $5409: $f6 $fd
    or $04                                        ; $540b: $f6 $04
    ld b, $fc                                     ; $540d: $06 $fc
    ld b, $ff                                     ; $540f: $06 $ff
    add d                                         ; $5411: $82
    inc c                                         ; $5412: $0c
    nop                                           ; $5413: $00
    ld [bc], a                                    ; $5414: $02
    inc c                                         ; $5415: $0c
    ld [bc], a                                    ; $5416: $02
    nop                                           ; $5417: $00
    add d                                         ; $5418: $82
    ret nz                                        ; $5419: $c0

    nop                                           ; $541a: $00
    ld [bc], a                                    ; $541b: $02
    ret nz                                        ; $541c: $c0

    add h                                         ; $541d: $84
    ld b, $00                                     ; $541e: $06 $00
    ld [hl], $06                                  ; $5420: $36 $06
    ld [bc], a                                    ; $5422: $02
    jr nc, @-$7c                                  ; $5423: $30 $82

    ld bc, $0200                                  ; $5425: $01 $00 $02
    ld bc, $0382                                  ; $5428: $01 $82 $03
    nop                                           ; $542b: $00
    ld [bc], a                                    ; $542c: $02
    inc bc                                        ; $542d: $03
    ld [bc], a                                    ; $542e: $02
    nop                                           ; $542f: $00
    add d                                         ; $5430: $82
    jr nz, jr_0f6_5433                            ; $5431: $20 $00

jr_0f6_5433:
    ld [bc], a                                    ; $5433: $02
    jr nz, jr_0f6_5438                            ; $5434: $20 $02

    nop                                           ; $5436: $00
    add h                                         ; $5437: $84

jr_0f6_5438:
    ld bc, $1900                                  ; $5438: $01 $00 $19
    ld bc, $1802                                  ; $543b: $01 $02 $18
    add [hl]                                      ; $543e: $86
    ld h, b                                       ; $543f: $60
    nop                                           ; $5440: $00
    ld h, e                                       ; $5441: $63
    ld h, b                                       ; $5442: $60
    jp Jump_000_0203                              ; $5443: $c3 $03 $02


    pop bc                                        ; $5446: $c1
    ld [bc], a                                    ; $5447: $02
    nop                                           ; $5448: $00
    add d                                         ; $5449: $82
    jr c, jr_0f6_544c                             ; $544a: $38 $00

jr_0f6_544c:
    ld [bc], a                                    ; $544c: $02
    jr c, @-$7a                                   ; $544d: $38 $84

    add b                                         ; $544f: $80
    nop                                           ; $5450: $00
    or c                                          ; $5451: $b1
    add b                                         ; $5452: $80

jr_0f6_5453:
    ld [bc], a                                    ; $5453: $02
    ld sp, $0004                                  ; $5454: $31 $04 $00
    add [hl]                                      ; $5457: $86
    ld h, b                                       ; $5458: $60
    nop                                           ; $5459: $00
    ld b, b                                       ; $545a: $40
    nop                                           ; $545b: $00
    ld c, h                                       ; $545c: $4c
    ld b, b                                       ; $545d: $40
    ld [bc], a                                    ; $545e: $02
    inc c                                         ; $545f: $0c
    inc b                                         ; $5460: $04
    nop                                           ; $5461: $00
    add d                                         ; $5462: $82
    ld b, b                                       ; $5463: $40
    nop                                           ; $5464: $00
    ld [bc], a                                    ; $5465: $02
    ld b, b                                       ; $5466: $40
    ld [bc], a                                    ; $5467: $02

jr_0f6_5468:
    nop                                           ; $5468: $00
    add h                                         ; $5469: $84
    inc bc                                        ; $546a: $03
    nop                                           ; $546b: $00
    ld h, e                                       ; $546c: $63
    inc bc                                        ; $546d: $03
    ld [bc], a                                    ; $546e: $02
    ld h, b                                       ; $546f: $60
    add d                                         ; $5470: $82
    ld b, b                                       ; $5471: $40
    nop                                           ; $5472: $00
    ld [bc], a                                    ; $5473: $02
    ld b, b                                       ; $5474: $40
    add d                                         ; $5475: $82
    inc c                                         ; $5476: $0c
    nop                                           ; $5477: $00
    ld [bc], a                                    ; $5478: $02
    inc c                                         ; $5479: $0c
    add d                                         ; $547a: $82
    jr nz, jr_0f6_547d                            ; $547b: $20 $00

jr_0f6_547d:
    ld [bc], a                                    ; $547d: $02
    jr nc, jr_0f6_5404                            ; $547e: $30 $84

    inc bc                                        ; $5480: $03
    nop                                           ; $5481: $00
    ld b, e                                       ; $5482: $43
    inc bc                                        ; $5483: $03
    ld [bc], a                                    ; $5484: $02
    ld b, b                                       ; $5485: $40
    jr jr_0f6_5488                                ; $5486: $18 $00

jr_0f6_5488:
    ld [bc], a                                    ; $5488: $02
    ld bc, $001e                                  ; $5489: $01 $1e $00
    rst $38                                       ; $548c: $ff
    rrca                                          ; $548d: $0f
    dec b                                         ; $548e: $05
    rst $38                                       ; $548f: $ff
    inc b                                         ; $5490: $04
    rst $30                                       ; $5491: $f7
    nop                                           ; $5492: $00
    rst $30                                       ; $5493: $f7
    db $f4                                        ; $5494: $f4
    or $fc                                        ; $5495: $f6 $fc
    push af                                       ; $5497: $f5
    inc bc                                        ; $5498: $03
    dec b                                         ; $5499: $05
    db $fc                                        ; $549a: $fc
    dec b                                         ; $549b: $05
    nop                                           ; $549c: $00
    add d                                         ; $549d: $82
    inc bc                                        ; $549e: $03
    nop                                           ; $549f: $00
    ld [bc], a                                    ; $54a0: $02
    inc bc                                        ; $54a1: $03
    ld [bc], a                                    ; $54a2: $02
    nop                                           ; $54a3: $00
    add d                                         ; $54a4: $82
    ret nz                                        ; $54a5: $c0

    nop                                           ; $54a6: $00
    ld [bc], a                                    ; $54a7: $02
    ret nz                                        ; $54a8: $c0

    add h                                         ; $54a9: $84
    ld bc, $0d00                                  ; $54aa: $01 $00 $0d
    ld bc, $0c02                                  ; $54ad: $01 $02 $0c
    inc b                                         ; $54b0: $04
    nop                                           ; $54b1: $00
    add d                                         ; $54b2: $82
    inc bc                                        ; $54b3: $03
    nop                                           ; $54b4: $00
    ld [bc], a                                    ; $54b5: $02
    inc bc                                        ; $54b6: $03
    ld [bc], a                                    ; $54b7: $02
    nop                                           ; $54b8: $00
    add d                                         ; $54b9: $82
    jr jr_0f6_54bc                                ; $54ba: $18 $00

jr_0f6_54bc:
    ld [bc], a                                    ; $54bc: $02
    jr jr_0f6_54c1                                ; $54bd: $18 $02

    nop                                           ; $54bf: $00
    add d                                         ; $54c0: $82

jr_0f6_54c1:
    ld b, $00                                     ; $54c1: $06 $00
    ld [bc], a                                    ; $54c3: $02
    ld b, $86                                     ; $54c4: $06 $86
    ld h, b                                       ; $54c6: $60
    nop                                           ; $54c7: $00
    ld h, e                                       ; $54c8: $63
    ld h, b                                       ; $54c9: $60
    inc sp                                        ; $54ca: $33
    inc bc                                        ; $54cb: $03
    ld [bc], a                                    ; $54cc: $02
    jr nc, jr_0f6_5453                            ; $54cd: $30 $84

    add b                                         ; $54cf: $80
    nop                                           ; $54d0: $00
    or [hl]                                       ; $54d1: $b6
    add b                                         ; $54d2: $80
    ld [bc], a                                    ; $54d3: $02
    ld [hl], $84                                  ; $54d4: $36 $84
    ld h, b                                       ; $54d6: $60
    nop                                           ; $54d7: $00
    ld l, l                                       ; $54d8: $6d
    ld h, b                                       ; $54d9: $60
    ld [bc], a                                    ; $54da: $02
    dec c                                         ; $54db: $0d
    inc b                                         ; $54dc: $04
    nop                                           ; $54dd: $00
    add d                                         ; $54de: $82
    jr jr_0f6_54e1                                ; $54df: $18 $00

jr_0f6_54e1:
    ld [bc], a                                    ; $54e1: $02
    jr jr_0f6_5468                                ; $54e2: $18 $84

    jr nc, jr_0f6_54e6                            ; $54e4: $30 $00

jr_0f6_54e6:
    inc sp                                        ; $54e6: $33
    jr nc, jr_0f6_54eb                            ; $54e7: $30 $02

    inc bc                                        ; $54e9: $03
    inc b                                         ; $54ea: $04

jr_0f6_54eb:
    nop                                           ; $54eb: $00
    add d                                         ; $54ec: $82

jr_0f6_54ed:
    jr nc, jr_0f6_54ef                            ; $54ed: $30 $00

jr_0f6_54ef:
    ld [bc], a                                    ; $54ef: $02
    jr nc, jr_0f6_54f4                            ; $54f0: $30 $02

    nop                                           ; $54f2: $00
    add h                                         ; $54f3: $84

jr_0f6_54f4:
    inc bc                                        ; $54f4: $03
    nop                                           ; $54f5: $00
    dec de                                        ; $54f6: $1b
    inc bc                                        ; $54f7: $03
    ld [bc], a                                    ; $54f8: $02
    jr jr_0f6_547d                                ; $54f9: $18 $82

    ld b, b                                       ; $54fb: $40
    nop                                           ; $54fc: $00
    ld [bc], a                                    ; $54fd: $02
    ld b, b                                       ; $54fe: $40
    add d                                         ; $54ff: $82
    inc bc                                        ; $5500: $03
    nop                                           ; $5501: $00
    ld [bc], a                                    ; $5502: $02
    inc bc                                        ; $5503: $03
    add c                                         ; $5504: $81
    jr @+$05                                      ; $5505: $18 $03

    nop                                           ; $5507: $00
    add h                                         ; $5508: $84
    ld bc, $c100                                  ; $5509: $01 $00 $c1
    ld bc, $c002                                  ; $550c: $01 $02 $c0
    jr jr_0f6_5511                                ; $550f: $18 $00

jr_0f6_5511:
    ld [bc], a                                    ; $5511: $02
    inc bc                                        ; $5512: $03
    add d                                         ; $5513: $82
    ld [$0200], sp                                ; $5514: $08 $00 $02
    ld [$001a], sp                                ; $5517: $08 $1a $00
    rst $38                                       ; $551a: $ff
    rrca                                          ; $551b: $0f
    dec b                                         ; $551c: $05
    rst $38                                       ; $551d: $ff

jr_0f6_551e:
    inc b                                         ; $551e: $04
    rst $30                                       ; $551f: $f7
    nop                                           ; $5520: $00
    or $f5                                        ; $5521: $f6 $f5
    db $f4                                        ; $5523: $f4
    db $fd                                        ; $5524: $fd
    db $f4                                        ; $5525: $f4
    inc b                                         ; $5526: $04
    inc b                                         ; $5527: $04
    db $fc                                        ; $5528: $fc
    inc b                                         ; $5529: $04
    rst $38                                       ; $552a: $ff
    add d                                         ; $552b: $82
    inc c                                         ; $552c: $0c
    nop                                           ; $552d: $00
    ld [bc], a                                    ; $552e: $02
    inc c                                         ; $552f: $0c
    ld [bc], a                                    ; $5530: $02
    nop                                           ; $5531: $00
    add d                                         ; $5532: $82
    ret nz                                        ; $5533: $c0

    nop                                           ; $5534: $00
    ld [bc], a                                    ; $5535: $02
    ret nz                                        ; $5536: $c0

    add h                                         ; $5537: $84
    ld b, $00                                     ; $5538: $06 $00
    ld [hl], $06                                  ; $553a: $36 $06
    ld [bc], a                                    ; $553c: $02
    jr nc, jr_0f6_54c1                            ; $553d: $30 $82

    ld bc, $0200                                  ; $553f: $01 $00 $02
    ld bc, $0382                                  ; $5542: $01 $82 $03
    nop                                           ; $5545: $00
    ld [bc], a                                    ; $5546: $02
    inc bc                                        ; $5547: $03
    ld [bc], a                                    ; $5548: $02
    nop                                           ; $5549: $00
    add d                                         ; $554a: $82
    ld h, b                                       ; $554b: $60
    nop                                           ; $554c: $00
    ld [bc], a                                    ; $554d: $02
    ld h, b                                       ; $554e: $60
    ld [bc], a                                    ; $554f: $02
    nop                                           ; $5550: $00
    add h                                         ; $5551: $84
    ld bc, $1900                                  ; $5552: $01 $00 $19
    ld bc, $1802                                  ; $5555: $01 $02 $18
    add [hl]                                      ; $5558: $86
    ld h, b                                       ; $5559: $60
    nop                                           ; $555a: $00
    ld h, e                                       ; $555b: $63
    ld h, b                                       ; $555c: $60
    jp Jump_000_0203                              ; $555d: $c3 $03 $02


    pop bc                                        ; $5560: $c1
    ld [bc], a                                    ; $5561: $02
    nop                                           ; $5562: $00
    add d                                         ; $5563: $82
    jr c, jr_0f6_5566                             ; $5564: $38 $00

jr_0f6_5566:
    ld [bc], a                                    ; $5566: $02
    jr c, jr_0f6_54ed                             ; $5567: $38 $84

    add b                                         ; $5569: $80
    nop                                           ; $556a: $00
    or c                                          ; $556b: $b1
    add b                                         ; $556c: $80
    ld [bc], a                                    ; $556d: $02
    ld sp, $0004                                  ; $556e: $31 $04 $00
    add [hl]                                      ; $5571: $86
    ld h, b                                       ; $5572: $60
    nop                                           ; $5573: $00
    ld b, b                                       ; $5574: $40
    nop                                           ; $5575: $00
    ld c, h                                       ; $5576: $4c
    ld b, b                                       ; $5577: $40
    ld [bc], a                                    ; $5578: $02
    inc c                                         ; $5579: $0c
    inc b                                         ; $557a: $04
    nop                                           ; $557b: $00
    add d                                         ; $557c: $82
    ld b, b                                       ; $557d: $40
    nop                                           ; $557e: $00
    ld [bc], a                                    ; $557f: $02
    ld b, b                                       ; $5580: $40
    ld [bc], a                                    ; $5581: $02

jr_0f6_5582:
    nop                                           ; $5582: $00
    add h                                         ; $5583: $84
    inc bc                                        ; $5584: $03
    nop                                           ; $5585: $00
    ld h, e                                       ; $5586: $63
    inc bc                                        ; $5587: $03
    ld [bc], a                                    ; $5588: $02
    ld h, b                                       ; $5589: $60
    add d                                         ; $558a: $82
    ld b, b                                       ; $558b: $40
    nop                                           ; $558c: $00
    ld [bc], a                                    ; $558d: $02
    ld b, b                                       ; $558e: $40
    add d                                         ; $558f: $82
    inc c                                         ; $5590: $0c
    nop                                           ; $5591: $00
    ld [bc], a                                    ; $5592: $02
    inc c                                         ; $5593: $0c
    add d                                         ; $5594: $82
    ld h, b                                       ; $5595: $60
    nop                                           ; $5596: $00
    ld [bc], a                                    ; $5597: $02
    jr nc, jr_0f6_551e                            ; $5598: $30 $84

    inc bc                                        ; $559a: $03
    nop                                           ; $559b: $00
    ld h, e                                       ; $559c: $63
    inc bc                                        ; $559d: $03
    ld [bc], a                                    ; $559e: $02
    ld h, b                                       ; $559f: $60
    jr jr_0f6_55a2                                ; $55a0: $18 $00

jr_0f6_55a2:
    ld [bc], a                                    ; $55a2: $02
    inc bc                                        ; $55a3: $03
    ld e, $00                                     ; $55a4: $1e $00
    rst $38                                       ; $55a6: $ff
    rrca                                          ; $55a7: $0f
    dec b                                         ; $55a8: $05
    rst $38                                       ; $55a9: $ff
    inc b                                         ; $55aa: $04
    rst $30                                       ; $55ab: $f7
    nop                                           ; $55ac: $00
    push af                                       ; $55ad: $f5
    push af                                       ; $55ae: $f5
    db $f4                                        ; $55af: $f4
    db $fd                                        ; $55b0: $fd
    di                                            ; $55b1: $f3
    inc bc                                        ; $55b2: $03
    inc bc                                        ; $55b3: $03
    db $fc                                        ; $55b4: $fc
    inc bc                                        ; $55b5: $03
    nop                                           ; $55b6: $00
    add d                                         ; $55b7: $82
    inc b                                         ; $55b8: $04
    nop                                           ; $55b9: $00
    ld [bc], a                                    ; $55ba: $02
    inc b                                         ; $55bb: $04
    ld [bc], a                                    ; $55bc: $02
    nop                                           ; $55bd: $00
    add d                                         ; $55be: $82
    add c                                         ; $55bf: $81
    nop                                           ; $55c0: $00
    ld [bc], a                                    ; $55c1: $02
    add c                                         ; $55c2: $81
    add h                                         ; $55c3: $84
    inc bc                                        ; $55c4: $03
    nop                                           ; $55c5: $00
    dec de                                        ; $55c6: $1b
    inc bc                                        ; $55c7: $03
    ld [bc], a                                    ; $55c8: $02
    jr jr_0f6_55cf                                ; $55c9: $18 $04

    nop                                           ; $55cb: $00
    add d                                         ; $55cc: $82
    ld b, $00                                     ; $55cd: $06 $00

jr_0f6_55cf:
    ld [bc], a                                    ; $55cf: $02
    ld b, $02                                     ; $55d0: $06 $02
    nop                                           ; $55d2: $00
    add d                                         ; $55d3: $82
    jr nc, jr_0f6_55d6                            ; $55d4: $30 $00

jr_0f6_55d6:
    ld [bc], a                                    ; $55d6: $02
    jr nc, jr_0f6_55db                            ; $55d7: $30 $02

    nop                                           ; $55d9: $00
    add d                                         ; $55da: $82

jr_0f6_55db:
    ld [$0200], sp                                ; $55db: $08 $00 $02
    ld [$4086], sp                                ; $55de: $08 $86 $40
    nop                                           ; $55e1: $00
    ld b, [hl]                                    ; $55e2: $46
    ld b, b                                       ; $55e3: $40
    add [hl]                                      ; $55e4: $86
    ld b, $02                                     ; $55e5: $06 $02
    add b                                         ; $55e7: $80
    ld [bc], a                                    ; $55e8: $02
    nop                                           ; $55e9: $00
    add d                                         ; $55ea: $82
    ld l, h                                       ; $55eb: $6c
    nop                                           ; $55ec: $00
    ld [bc], a                                    ; $55ed: $02
    ld l, h                                       ; $55ee: $6c
    add h                                         ; $55ef: $84
    ret nz                                        ; $55f0: $c0

    nop                                           ; $55f1: $00
    db $db                                        ; $55f2: $db
    ret nz                                        ; $55f3: $c0

jr_0f6_55f4:
    ld [bc], a                                    ; $55f4: $02
    dec de                                        ; $55f5: $1b
    inc b                                         ; $55f6: $04
    nop                                           ; $55f7: $00
    add d                                         ; $55f8: $82
    jr nc, jr_0f6_55fb                            ; $55f9: $30 $00

jr_0f6_55fb:
    ld [bc], a                                    ; $55fb: $02
    jr nc, jr_0f6_5582                            ; $55fc: $30 $84

    jr nz, jr_0f6_5600                            ; $55fe: $20 $00

jr_0f6_5600:
    ld [hl+], a                                   ; $5600: $22
    jr nz, jr_0f6_5605                            ; $5601: $20 $02

    ld [bc], a                                    ; $5603: $02
    inc b                                         ; $5604: $04

jr_0f6_5605:
    nop                                           ; $5605: $00
    add d                                         ; $5606: $82
    jr nc, jr_0f6_5609                            ; $5607: $30 $00

jr_0f6_5609:
    ld [bc], a                                    ; $5609: $02
    jr nc, jr_0f6_560e                            ; $560a: $30 $02

    nop                                           ; $560c: $00
    add h                                         ; $560d: $84

jr_0f6_560e:
    inc bc                                        ; $560e: $03
    nop                                           ; $560f: $00
    dec de                                        ; $5610: $1b
    inc bc                                        ; $5611: $03
    ld [bc], a                                    ; $5612: $02
    jr jr_0f6_5619                                ; $5613: $18 $04

    nop                                           ; $5615: $00
    add d                                         ; $5616: $82
    inc bc                                        ; $5617: $03
    nop                                           ; $5618: $00

jr_0f6_5619:
    ld [bc], a                                    ; $5619: $02
    inc bc                                        ; $561a: $03
    add c                                         ; $561b: $81
    jr @+$05                                      ; $561c: $18 $03

    nop                                           ; $561e: $00
    add h                                         ; $561f: $84
    ld bc, $c100                                  ; $5620: $01 $00 $c1
    ld bc, $c002                                  ; $5623: $01 $02 $c0
    jr jr_0f6_5628                                ; $5626: $18 $00

jr_0f6_5628:
    ld [bc], a                                    ; $5628: $02

jr_0f6_5629:
    inc bc                                        ; $5629: $03
    add d                                         ; $562a: $82
    ld [$0200], sp                                ; $562b: $08 $00 $02
    ld [$001a], sp                                ; $562e: $08 $1a $00
    rst $38                                       ; $5631: $ff
    dec c                                         ; $5632: $0d
    inc b                                         ; $5633: $04
    rst $38                                       ; $5634: $ff
    inc b                                         ; $5635: $04
    rst $30                                       ; $5636: $f7
    nop                                           ; $5637: $00
    db $f4                                        ; $5638: $f4
    or $f2                                        ; $5639: $f6 $f2
    cp $f3                                        ; $563b: $fe $f3
    inc b                                         ; $563d: $04
    ld [bc], a                                    ; $563e: $02
    db $fc                                        ; $563f: $fc
    add d                                         ; $5640: $82
    stop                                          ; $5641: $10 $00
    ld [bc], a                                    ; $5643: $02
    db $10                                        ; $5644: $10
    ld [bc], a                                    ; $5645: $02
    nop                                           ; $5646: $00
    add d                                         ; $5647: $82
    add c                                         ; $5648: $81
    nop                                           ; $5649: $00
    ld [bc], a                                    ; $564a: $02
    add c                                         ; $564b: $81
    add h                                         ; $564c: $84
    inc c                                         ; $564d: $0c
    nop                                           ; $564e: $00
    ld l, h                                       ; $564f: $6c
    inc c                                         ; $5650: $0c
    ld [bc], a                                    ; $5651: $02
    ld h, b                                       ; $5652: $60
    add d                                         ; $5653: $82
    inc bc                                        ; $5654: $03
    nop                                           ; $5655: $00
    ld [bc], a                                    ; $5656: $02
    inc bc                                        ; $5657: $03
    add d                                         ; $5658: $82
    ld b, $00                                     ; $5659: $06 $00
    ld [bc], a                                    ; $565b: $02
    ld b, $02                                     ; $565c: $06 $02
    nop                                           ; $565e: $00
    add d                                         ; $565f: $82
    ret nz                                        ; $5660: $c0

    nop                                           ; $5661: $00
    ld [bc], a                                    ; $5662: $02
    ret nz                                        ; $5663: $c0

    ld [bc], a                                    ; $5664: $02
    nop                                           ; $5665: $00
    add h                                         ; $5666: $84
    ld [bc], a                                    ; $5667: $02
    nop                                           ; $5668: $00
    ld [hl+], a                                   ; $5669: $22
    ld [bc], a                                    ; $566a: $02
    ld [bc], a                                    ; $566b: $02
    jr nz, jr_0f6_55f4                            ; $566c: $20 $86

    ld b, b                                       ; $566e: $40
    nop                                           ; $566f: $00
    ld b, [hl]                                    ; $5670: $46
    ld b, b                                       ; $5671: $40
    add a                                         ; $5672: $87
    inc b                                         ; $5673: $04
    ld [bc], a                                    ; $5674: $02
    add e                                         ; $5675: $83
    ld [bc], a                                    ; $5676: $02
    nop                                           ; $5677: $00
    add h                                         ; $5678: $84
    ld [hl], b                                    ; $5679: $70
    nop                                           ; $567a: $00
    ld [hl], c                                    ; $567b: $71
    ld [hl], b                                    ; $567c: $70
    ld [bc], a                                    ; $567d: $02
    ld bc, $6382                                  ; $567e: $01 $82 $63
    nop                                           ; $5681: $00
    ld [bc], a                                    ; $5682: $02
    ld h, e                                       ; $5683: $63
    inc b                                         ; $5684: $04
    nop                                           ; $5685: $00
    add h                                         ; $5686: $84
    pop bc                                        ; $5687: $c1
    nop                                           ; $5688: $00

jr_0f6_5689:
    ld [$0200], sp                                ; $5689: $08 $00 $02
    ld [$000a], sp                                ; $568c: $08 $0a $00
    add h                                         ; $568f: $84
    inc bc                                        ; $5690: $03
    nop                                           ; $5691: $00
    inc hl                                        ; $5692: $23
    inc bc                                        ; $5693: $03
    ld [bc], a                                    ; $5694: $02
    jr nz, jr_0f6_569b                            ; $5695: $20 $04

    nop                                           ; $5697: $00
    add d                                         ; $5698: $82
    inc c                                         ; $5699: $0c
    nop                                           ; $569a: $00

jr_0f6_569b:
    ld [bc], a                                    ; $569b: $02
    inc c                                         ; $569c: $0c
    add d                                         ; $569d: $82
    jr nz, jr_0f6_56a0                            ; $569e: $20 $00

jr_0f6_56a0:
    ld [bc], a                                    ; $56a0: $02
    ld h, b                                       ; $56a1: $60
    ld [bc], a                                    ; $56a2: $02
    jr nc, jr_0f6_5629                            ; $56a3: $30 $84

    inc bc                                        ; $56a5: $03
    nop                                           ; $56a6: $00
    ld h, e                                       ; $56a7: $63
    inc bc                                        ; $56a8: $03
    ld [bc], a                                    ; $56a9: $02
    ld h, b                                       ; $56aa: $60
    jr jr_0f6_56ad                                ; $56ab: $18 $00

jr_0f6_56ad:
    rst $38                                       ; $56ad: $ff
    rrca                                          ; $56ae: $0f
    dec b                                         ; $56af: $05
    rst $38                                       ; $56b0: $ff
    inc b                                         ; $56b1: $04
    rst $30                                       ; $56b2: $f7
    nop                                           ; $56b3: $00
    di                                            ; $56b4: $f3
    push af                                       ; $56b5: $f5
    ld a, [c]                                     ; $56b6: $f2
    db $fd                                        ; $56b7: $fd
    pop af                                        ; $56b8: $f1
    inc bc                                        ; $56b9: $03
    ld bc, $01fc                                  ; $56ba: $01 $fc $01
    nop                                           ; $56bd: $00
    add d                                         ; $56be: $82
    inc b                                         ; $56bf: $04
    nop                                           ; $56c0: $00
    ld [bc], a                                    ; $56c1: $02
    inc b                                         ; $56c2: $04
    ld [bc], a                                    ; $56c3: $02
    nop                                           ; $56c4: $00
    add d                                         ; $56c5: $82
    add c                                         ; $56c6: $81
    nop                                           ; $56c7: $00
    ld [bc], a                                    ; $56c8: $02
    add c                                         ; $56c9: $81
    add h                                         ; $56ca: $84
    inc bc                                        ; $56cb: $03
    nop                                           ; $56cc: $00
    dec de                                        ; $56cd: $1b
    inc bc                                        ; $56ce: $03
    ld [bc], a                                    ; $56cf: $02
    jr jr_0f6_56d6                                ; $56d0: $18 $04

    nop                                           ; $56d2: $00
    add d                                         ; $56d3: $82
    ld b, $00                                     ; $56d4: $06 $00

jr_0f6_56d6:
    ld [bc], a                                    ; $56d6: $02
    ld b, $02                                     ; $56d7: $06 $02
    nop                                           ; $56d9: $00
    add d                                         ; $56da: $82
    jr nc, jr_0f6_56dd                            ; $56db: $30 $00

jr_0f6_56dd:
    ld [bc], a                                    ; $56dd: $02
    jr nc, jr_0f6_56e2                            ; $56de: $30 $02

    nop                                           ; $56e0: $00
    add d                                         ; $56e1: $82

jr_0f6_56e2:
    ld [$0200], sp                                ; $56e2: $08 $00 $02
    ld [$4086], sp                                ; $56e5: $08 $86 $40
    nop                                           ; $56e8: $00
    ld b, [hl]                                    ; $56e9: $46
    ld b, b                                       ; $56ea: $40
    add [hl]                                      ; $56eb: $86
    ld b, $02                                     ; $56ec: $06 $02
    add b                                         ; $56ee: $80
    ld [bc], a                                    ; $56ef: $02
    nop                                           ; $56f0: $00
    add d                                         ; $56f1: $82
    ld l, h                                       ; $56f2: $6c
    nop                                           ; $56f3: $00
    ld [bc], a                                    ; $56f4: $02
    ld l, h                                       ; $56f5: $6c
    add h                                         ; $56f6: $84
    ret nz                                        ; $56f7: $c0

    nop                                           ; $56f8: $00
    db $db                                        ; $56f9: $db
    ret nz                                        ; $56fa: $c0

jr_0f6_56fb:
    ld [bc], a                                    ; $56fb: $02
    dec de                                        ; $56fc: $1b
    inc b                                         ; $56fd: $04
    nop                                           ; $56fe: $00
    add d                                         ; $56ff: $82
    jr nc, jr_0f6_5702                            ; $5700: $30 $00

jr_0f6_5702:
    ld [bc], a                                    ; $5702: $02
    jr nc, jr_0f6_5689                            ; $5703: $30 $84

    jr nz, jr_0f6_5707                            ; $5705: $20 $00

jr_0f6_5707:
    ld [hl+], a                                   ; $5707: $22
    jr nz, jr_0f6_570c                            ; $5708: $20 $02

    ld [bc], a                                    ; $570a: $02
    inc b                                         ; $570b: $04

jr_0f6_570c:
    nop                                           ; $570c: $00
    add d                                         ; $570d: $82
    jr nc, jr_0f6_5710                            ; $570e: $30 $00

jr_0f6_5710:
    ld [bc], a                                    ; $5710: $02
    jr nc, jr_0f6_5715                            ; $5711: $30 $02

    nop                                           ; $5713: $00
    add h                                         ; $5714: $84

jr_0f6_5715:
    inc bc                                        ; $5715: $03
    nop                                           ; $5716: $00
    dec de                                        ; $5717: $1b
    inc bc                                        ; $5718: $03
    ld [bc], a                                    ; $5719: $02
    jr jr_0f6_5720                                ; $571a: $18 $04

    nop                                           ; $571c: $00
    add d                                         ; $571d: $82
    inc bc                                        ; $571e: $03
    nop                                           ; $571f: $00

jr_0f6_5720:
    ld [bc], a                                    ; $5720: $02
    inc bc                                        ; $5721: $03
    add c                                         ; $5722: $81
    jr @+$05                                      ; $5723: $18 $03

    nop                                           ; $5725: $00
    add h                                         ; $5726: $84
    ld bc, $c100                                  ; $5727: $01 $00 $c1
    ld bc, $c002                                  ; $572a: $01 $02 $c0
    jr jr_0f6_572f                                ; $572d: $18 $00

jr_0f6_572f:
    ld [bc], a                                    ; $572f: $02
    inc bc                                        ; $5730: $03
    add d                                         ; $5731: $82
    ld [$0200], sp                                ; $5732: $08 $00 $02
    ld [$001a], sp                                ; $5735: $08 $1a $00
    rst $38                                       ; $5738: $ff
    dec c                                         ; $5739: $0d
    inc b                                         ; $573a: $04
    rst $38                                       ; $573b: $ff
    inc b                                         ; $573c: $04
    rst $30                                       ; $573d: $f7
    nop                                           ; $573e: $00
    ld a, [c]                                     ; $573f: $f2
    or $f0                                        ; $5740: $f6 $f0
    cp $f1                                        ; $5742: $fe $f1
    inc b                                         ; $5744: $04
    nop                                           ; $5745: $00
    db $fc                                        ; $5746: $fc
    add d                                         ; $5747: $82
    stop                                          ; $5748: $10 $00
    ld [bc], a                                    ; $574a: $02
    db $10                                        ; $574b: $10
    ld [bc], a                                    ; $574c: $02
    nop                                           ; $574d: $00
    add d                                         ; $574e: $82
    add c                                         ; $574f: $81
    nop                                           ; $5750: $00
    ld [bc], a                                    ; $5751: $02
    add c                                         ; $5752: $81
    add h                                         ; $5753: $84
    inc c                                         ; $5754: $0c
    nop                                           ; $5755: $00
    ld l, h                                       ; $5756: $6c
    inc c                                         ; $5757: $0c
    ld [bc], a                                    ; $5758: $02
    ld h, b                                       ; $5759: $60
    add d                                         ; $575a: $82
    inc bc                                        ; $575b: $03
    nop                                           ; $575c: $00
    ld [bc], a                                    ; $575d: $02
    inc bc                                        ; $575e: $03
    add d                                         ; $575f: $82
    ld b, $00                                     ; $5760: $06 $00
    ld [bc], a                                    ; $5762: $02
    ld b, $02                                     ; $5763: $06 $02
    nop                                           ; $5765: $00
    add d                                         ; $5766: $82
    ret nz                                        ; $5767: $c0

    nop                                           ; $5768: $00
    ld [bc], a                                    ; $5769: $02
    ret nz                                        ; $576a: $c0

    ld [bc], a                                    ; $576b: $02
    nop                                           ; $576c: $00
    add h                                         ; $576d: $84
    ld [bc], a                                    ; $576e: $02
    nop                                           ; $576f: $00
    ld [hl+], a                                   ; $5770: $22
    ld [bc], a                                    ; $5771: $02
    ld [bc], a                                    ; $5772: $02
    jr nz, jr_0f6_56fb                            ; $5773: $20 $86

    ld b, b                                       ; $5775: $40
    nop                                           ; $5776: $00
    ld b, [hl]                                    ; $5777: $46
    ld b, b                                       ; $5778: $40
    add [hl]                                      ; $5779: $86
    ld b, $02                                     ; $577a: $06 $02
    add b                                         ; $577c: $80
    ld [bc], a                                    ; $577d: $02
    nop                                           ; $577e: $00
    add h                                         ; $577f: $84
    ld [hl], b                                    ; $5780: $70
    nop                                           ; $5781: $00
    ld [hl], c                                    ; $5782: $71
    ld [hl], b                                    ; $5783: $70
    ld [bc], a                                    ; $5784: $02
    ld bc, $6382                                  ; $5785: $01 $82 $63
    nop                                           ; $5788: $00
    ld [bc], a                                    ; $5789: $02
    ld h, e                                       ; $578a: $63
    inc b                                         ; $578b: $04
    nop                                           ; $578c: $00
    add h                                         ; $578d: $84
    pop bc                                        ; $578e: $c1
    nop                                           ; $578f: $00
    ld [$0200], sp                                ; $5790: $08 $00 $02
    ld [$0004], sp                                ; $5793: $08 $04 $00
    add d                                         ; $5796: $82
    jr nc, jr_0f6_5799                            ; $5797: $30 $00

jr_0f6_5799:
    ld [bc], a                                    ; $5799: $02
    jr nc, jr_0f6_579e                            ; $579a: $30 $02

    nop                                           ; $579c: $00
    add h                                         ; $579d: $84

jr_0f6_579e:
    inc bc                                        ; $579e: $03
    nop                                           ; $579f: $00
    inc hl                                        ; $57a0: $23
    inc bc                                        ; $57a1: $03
    ld [bc], a                                    ; $57a2: $02
    jr nz, jr_0f6_57a9                            ; $57a3: $20 $04

    nop                                           ; $57a5: $00
    add d                                         ; $57a6: $82
    inc c                                         ; $57a7: $0c
    nop                                           ; $57a8: $00

jr_0f6_57a9:
    ld [bc], a                                    ; $57a9: $02
    inc c                                         ; $57aa: $0c
    add d                                         ; $57ab: $82
    jr nz, jr_0f6_57ae                            ; $57ac: $20 $00

jr_0f6_57ae:
    ld [bc], a                                    ; $57ae: $02
    ld h, b                                       ; $57af: $60
    ld [bc], a                                    ; $57b0: $02
    jr nc, @-$7a                                  ; $57b1: $30 $84

    inc bc                                        ; $57b3: $03
    nop                                           ; $57b4: $00
    ld h, e                                       ; $57b5: $63
    inc bc                                        ; $57b6: $03
    ld [bc], a                                    ; $57b7: $02
    ld h, b                                       ; $57b8: $60
    jr jr_0f6_57bb                                ; $57b9: $18 $00

jr_0f6_57bb:
    rst $38                                       ; $57bb: $ff
    rlca                                          ; $57bc: $07
    ld bc, $04ff                                  ; $57bd: $01 $ff $04
    rst $30                                       ; $57c0: $f7
    nop                                           ; $57c1: $00
    ld sp, hl                                     ; $57c2: $f9
    db $fd                                        ; $57c3: $fd
    sub b                                         ; $57c4: $90
    nop                                           ; $57c5: $00
    ld a, h                                       ; $57c6: $7c
    nop                                           ; $57c7: $00
    ld b, d                                       ; $57c8: $42
    nop                                           ; $57c9: $00
    ld a, $00                                     ; $57ca: $3e $00
    ld [hl+], a                                   ; $57cc: $22
    nop                                           ; $57cd: $00
    ld de, $3300                                  ; $57ce: $11 $00 $33
    nop                                           ; $57d1: $00
    ld [hl], a                                    ; $57d2: $77
    nop                                           ; $57d3: $00
    ld [hl+], a                                   ; $57d4: $22
    stop                                          ; $57d5: $10 $00
    rst $38                                       ; $57d7: $ff
    rlca                                          ; $57d8: $07
    ld bc, $04ff                                  ; $57d9: $01 $ff $04
    rst $30                                       ; $57dc: $f7
    nop                                           ; $57dd: $00
    ld hl, sp-$04                                 ; $57de: $f8 $fc
    sub d                                         ; $57e0: $92
    nop                                           ; $57e1: $00
    rlca                                          ; $57e2: $07
    nop                                           ; $57e3: $00
    inc c                                         ; $57e4: $0c
    nop                                           ; $57e5: $00
    rlca                                          ; $57e6: $07
    nop                                           ; $57e7: $00
    inc b                                         ; $57e8: $04
    nop                                           ; $57e9: $00
    ld [bc], a                                    ; $57ea: $02
    nop                                           ; $57eb: $00
    ld [bc], a                                    ; $57ec: $02
    nop                                           ; $57ed: $00
    ld c, $00                                     ; $57ee: $0e $00
    ld e, $00                                     ; $57f0: $1e $00
    inc c                                         ; $57f2: $0c
    ld c, $00                                     ; $57f3: $0e $00
    rst $38                                       ; $57f5: $ff

    db $07, $01, $f6

    ld a, [bc]                                    ; $57f9: $0a
    or $0a                                        ; $57fa: $f6 $0a

    db $fd, $fc, $02, $08, $02, $1c, $86, $22, $3e, $6f, $73, $26, $3e, $02, $1c, $02
    db $08, $12, $00, $ff, $09, $02, $f6

    ld a, [bc]                                    ; $5813: $0a
    or $0a                                        ; $5814: $f6 $0a

    db $fc, $fc, $fc, $fd, $02, $28, $8e, $36, $3e, $6b, $77, $9d, $e3, $59, $67, $b4
    db $cb, $43, $7f, $2e, $3e, $02, $24, $14, $00, $02, $01, $04, $00, $02, $01, $12
    db $00, $ff, $0b, $03, $f6

    ld a, [bc]                                    ; $583b: $0a
    or $0a                                        ; $583c: $f6 $0a

    db $f7, $f8, $fb, $00, $02, $01, $9c, $02, $0e, $37, $29, $40, $70, $40, $00, $02
    db $c2, $06, $87, $0a, $8f, $9d, $9e, $0b, $0c, $13, $1c, $0a, $0d, $18, $1f, $0d
    db $0f, $06, $07, $02, $02, $02, $00, $02, $c0, $9c, $b0, $f0, $58, $f8, $bc, $7c
    db $e4, $1c, $20, $d8, $34, $dc, $cc, $3c, $38, $f8, $b0, $f0, $a1, $a0, $00, $01
    db $03, $05, $7a, $46, $28, $38, $02, $00, $02, $01, $86, $00, $01, $00, $01, $00
    db $01, $18, $00, $ff, $0d, $04, $f6

    ld a, [bc]                                    ; $5895: $0a
    or $0a                                        ; $5896: $f6 $0a

    db $f6, $fa, $f6, $02, $06, $f7, $06, $fc, $84, $00, $0f, $00, $20, $04, $00, $02
    db $0b, $02, $1f, $9e, $3a, $3f, $50, $7f, $e7, $f8, $6e, $71, $ac, $f3, $4e, $71
    db $e7, $f8, $50, $7f, $35, $3f, $1a, $1f, $a0, $e0, $4c, $3c, $12, $0e, $01, $07
    db $02, $01, $02, $c0, $90, $60, $e0, $b0, $f0, $38, $f8, $98, $78, $b0, $70, $08
    db $f8, $58, $f8, $30, $f0, $02, $e0, $02, $c0, $8a, $41, $81, $a0, $c0, $50, $60
    db $24, $3a, $0c, $0f, $16, $00, $02, $0a, $05, $00, $83, $01, $00, $1e, $16, $00
    db $ff, $13, $07, $f6

    ld a, [bc]                                    ; $58fc: $0a
    or $0a                                        ; $58fd: $f6 $0a

    db $f4, $f2, $f4, $fa, $f9, $02, $fa, $07, $04, $f4, $04, $fa, $04, $04, $02, $05
    db $9e, $08, $0f, $16, $19, $2c, $33, $54, $6a, $4a, $76, $70, $4c, $a0, $d8, $30
    db $48, $e0, $90, $c0, $a0, $21, $51, $c1, $b1, $a0, $c0, $61, $51, $40, $70, $02
    db $80, $88, $00, $c0, $00, $80, $00, $c0, $00, $80, $02, $0a, $94, $31, $3f, $7c
    db $7f, $c5, $fa, $9f, $e0, $5f, $e0, $39, $c6, $92, $ed, $f7, $c8, $57, $e8, $ea
    db $f5, $02, $82, $96, $e0, $e1, $b0, $f0, $18, $f8, $d8, $38, $d4, $3c, $f4, $1c
    db $d0, $38, $e4, $1c, $d4, $3c, $a8, $78, $18, $f8, $02, $f0, $86, $61, $e1, $80
    db $83, $01, $0a, $02, $10, $89, $08, $18, $04, $1c, $02, $0e, $06, $0a, $05, $02
    db $03, $84, $0d, $04, $0a, $03, $02, $05, $93, $0b, $08, $16, $05, $1b, $0e, $12
    db $10, $0c, $0a, $16, $34, $cc, $c3, $a3, $41, $61, $20, $30, $02, $18, $02, $04
    db $17, $00, $85, $3f, $29, $3f, $33, $3f, $02, $05, $23, $00, $85, $60, $0d, $33
    db $52, $7e, $02, $34, $0e, $00, $ff, $11, $06, $f6

    ld a, [bc]                                    ; $59b9: $0a
    or $0a                                        ; $59ba: $f6 $0a

    db $f3, $f4, $f2, $fc, $f4, $04, $00, $05, $02, $fa, $02, $fd, $02, $03, $9a, $04
    db $07, $0b, $0c, $16, $19, $0b, $15, $2c, $32, $50, $6c, $60, $50, $a1, $d1, $03
    db $63, $82, $c3, $01, $c3, $84, $87, $86, $c7, $02, $43, $82, $45, $47, $02, $da
    db $8a, $13, $ed, $ac, $53, $f0, $0f, $80, $6d, $00, $80, $02, $00, $02, $2a, $94
    db $c7, $ff, $f2, $ff, $5c, $e3, $3f, $c0, $47, $b8, $33, $cc, $7b, $84, $37, $c8
    db $00, $80, $00, $80, $08, $00, $02, $80, $02, $c0, $90, $60, $e0, $60, $e0, $51
    db $f1, $d0, $70, $40, $e1, $90, $70, $10, $f1, $a0, $e1, $04, $01, $81, $00, $03
    db $01, $92, $c0, $c6, $85, $8b, $02, $0e, $2a, $36, $14, $6c, $50, $a8, $68, $98
    db $d0, $30, $20, $e0, $02, $80, $04, $00, $8a, $1f, $20, $ee, $f1, $c0, $ff, $69
    db $7f, $33, $3f, $02, $05, $04, $00, $88, $02, $16, $18, $27, $1c, $23, $19, $16
    db $02, $0b, $06, $00, $85, $06, $00, $04, $02, $00, $03, $07, $82, $03, $07, $02
    db $04, $03, $00, $02, $01, $87, $06, $07, $00, $05, $02, $00, $07, $02, $03, $06
    db $00, $ff, $11, $06, $f6

    ld a, [bc]                                    ; $5a81: $0a
    or $0a                                        ; $5a82: $f6 $0a

    db $f3, $f7, $f2, $ff, $f3, $05, $02, $f4, $02, $fc, $02, $01, $02, $07, $86, $09
    db $0e, $10, $1b, $20, $30, $02, $20, $02, $00, $02, $81, $82, $06, $07, $02, $0f
    db $8e, $19, $1e, $13, $1c, $27, $38, $13, $1c, $37, $38, $0b, $1c, $2b, $3c, $02
    db $f6, $88, $59, $a7, $af, $50, $05, $ba, $00, $05, $04, $00, $02, $20, $90, $5c
    db $fc, $8e, $fe, $d3, $2f, $eb, $17, $ee, $13, $4b, $b7, $9e, $63, $f9, $07, $02
    db $20, $90, $08, $38, $14, $2c, $2a, $16, $0d, $33, $04, $1a, $07, $19, $05, $0b
    db $00, $06, $04, $00, $06, $20, $02, $00, $82, $20, $e0, $02, $00, $04, $03, $92
    db $01, $61, $20, $d0, $a0, $d0, $30, $48, $30, $4c, $5c, $62, $2a, $35, $13, $1c
    db $06, $07, $02, $01, $06, $00, $8a, $1f, $00, $94, $eb, $42, $ff, $a7, $ff, $dd
    db $ff, $02, $2a, $06, $00, $86, $40, $d5, $d6, $29, $6b, $97, $02, $bc, $07, $00
    db $85, $10, $14, $1c, $0c, $1c, $02, $18, $02, $10, $04, $00, $02, $01, $02, $06
    db $84, $04, $0c, $08, $18, $02, $10, $08, $00, $ff, $11, $06, $f6

    ld a, [bc]                                    ; $5b41: $0a
    or $0a                                        ; $5b42: $f6 $0a

    db $fd, $f2, $f5, $fa, $f4, $02, $f6, $07, $04, $fa, $04, $ff, $97, $00, $20, $41
    db $71, $a8, $d8, $e1, $99, $e1, $91, $31, $49, $e0, $90, $20, $50, $90, $e8, $40
    db $78, $5c, $64, $08, $02, $16, $85, $19, $09, $0e, $02, $03, $02, $00, $02, $03
    db $06, $00, $02, $0a, $96, $31, $3f, $7c, $7f, $c5, $fa, $df, $e0, $5f, $e0, $bd
    db $c2, $1b, $e4, $79, $c6, $5c, $e3, $eb, $f4, $c0, $ff, $02, $d8, $9e, $92, $ee
    db $0c, $33, $03, $0c, $00, $03, $82, $83, $60, $e0, $70, $f1, $18, $f8, $b8, $78
    db $d4, $3c, $94, $7c, $d0, $38, $84, $7c, $50, $b8, $88, $78, $02, $10, $9a, $08
    db $18, $10, $08, $1a, $06, $02, $1e, $09, $17, $0c, $12, $07, $09, $0c, $12, $05
    db $0b, $0d, $13, $05, $1b, $02, $0e, $00, $04, $06, $00, $84, $79, $7f, $34, $3f
    db $02, $05, $03, $00, $85, $80, $a0, $60, $5e, $be, $02, $d8, $0e, $00, $82, $0b
    db $1f, $02, $1e, $82, $0c, $1c, $02, $10, $18, $00, $ff, $13, $07, $f6

    ld a, [bc]                                    ; $5bf2: $0a
    or $0a                                        ; $5bf3: $f6 $0a

    db $f4, $f2, $f4, $fa, $f7, $02, $f9, $07, $04, $f4, $04, $fb, $04, $05, $02, $01
    db $9e, $09, $0e, $17, $18, $2e, $31, $14, $2a, $08, $34, $74, $4c, $a0, $d8, $30
    db $48, $e0, $90, $80, $f0, $31, $51, $81, $e1, $a0, $d0, $41, $71, $50, $70, $03
    db $80, $85, $40, $80, $40, $00, $80, $02, $00, $02, $0a, $94, $31, $3f, $7c, $7f
    db $c7, $f8, $8e, $f1, $5f, $e0, $39, $c6, $92, $ed, $f7, $c8, $57, $e8, $ea, $f5
    db $02, $04, $02, $00, $02, $81, $02, $e0, $94, $b0, $f0, $18, $f8, $d8, $38, $d4
    db $3c, $f4, $1c, $d0, $38, $e4, $1c, $d4, $3c, $88, $78, $58, $f8, $02, $f0, $82
    db $61, $e1, $02, $10, $a0, $08, $18, $08, $18, $04, $0c, $02, $0e, $06, $0a, $05
    db $0b, $03, $05, $04, $0a, $03, $0d, $07, $09, $0c, $12, $05, $1b, $0e, $12, $10
    db $2c, $2a, $56, $83, $c3, $02, $61, $02, $60, $02, $30, $02, $08, $17, $00, $85
    db $7e, $52, $7e, $66, $7e, $02, $0b, $21, $00, $87, $40, $3d, $c3, $7a, $86, $24
    db $dc, $02, $68, $0e, $00, $ff, $11, $06, $f6

    ld a, [bc]                                    ; $5cae: $0a
    or $0a                                        ; $5caf: $f6 $0a

    db $f3, $f4, $f2, $fc, $fa, $04, $00, $05, $02, $fa, $02, $fd, $02, $07, $9a, $00
    db $07, $15, $1a, $2c, $33, $50, $6e, $50, $68, $a8, $d8, $a0, $c0, $01, $61, $c3
    db $a3, $82, $c3, $c1, $c3, $44, $47, $c6, $c7, $02, $43, $82, $45, $47, $02, $dc
    db $88, $42, $be, $fc, $03, $cc, $33, $02, $ae, $04, $00, $02, $2a, $90, $c7, $ff
    db $f2, $ff, $14, $eb, $bf, $c0, $47, $b8, $33, $cc, $7b, $84, $37, $c8, $02, $80
    db $02, $c0, $97, $60, $e0, $60, $e0, $51, $f1, $d1, $71, $40, $e1, $90, $71, $50
    db $f1, $21, $e0, $60, $e3, $c1, $c2, $82, $81, $02, $02, $0d, $83, $13, $15, $6b
    db $02, $01, $02, $00, $06, $01, $02, $00, $04, $01, $04, $00, $88, $f4, $0c, $a8
    db $58, $00, $e0, $60, $e0, $02, $80, $02, $00, $8a, $1f, $20, $ea, $f5, $c0, $ff
    db $69, $7f, $33, $3f, $02, $05, $05, $00, $87, $0e, $06, $19, $03, $1c, $08, $0f
    db $02, $07, $06, $00, $85, $06, $00, $04, $02, $00, $03, $06, $82, $02, $06, $02
    db $04, $05, $00, $87, $05, $07, $00, $07, $00, $02, $05, $02, $03, $06, $00, $ff
    db $11, $06, $f6

    ld a, [bc]                                    ; $5d74: $0a
    or $0a                                        ; $5d75: $f6 $0a

    db $f2, $f8, $f2, $00, $f3, $05, $02, $f4, $02, $fc, $02, $01, $02, $01, $8a, $06
    db $07, $0b, $0c, $00, $0e, $20, $38, $40, $60, $02, $40, $02, $82, $82, $0c, $0f
    db $02, $1f, $8c, $32, $3d, $27, $38, $4f, $70, $26, $39, $6f, $70, $17, $38, $02
    db $f4, $8c, $33, $cf, $de, $21, $0b, $f4, $01, $0a, $02, $03, $00, $01, $02, $40
    db $90, $b8, $f8, $1c, $fc, $a6, $5e, $d6, $2e, $dd, $27, $97, $6f, $3d, $c7, $f2
    db $0e, $02, $10, $90, $00, $10, $14, $0c, $0a, $16, $19, $07, $0c, $12, $05, $1b
    db $11, $1f, $04, $06, $0c, $00, $84, $a0, $e0, $05, $07, $04, $03, $92, $01, $61
    db $80, $f8, $b0, $c8, $30, $4c, $9a, $e6, $54, $6a, $2a, $35, $03, $0c, $0e, $0f
    db $02, $01, $06, $00, $8a, $7f, $80, $94, $eb, $02, $ff, $a7, $ff, $dd, $ff, $02
    db $2a, $05, $00, $87, $80, $a0, $7b, $d6, $29, $6b, $97, $02, $7c, $07, $00, $85
    db $10, $14, $1c, $0c, $1c, $02, $18, $02, $10, $02, $01, $03, $02, $85, $06, $04
    db $1c, $10, $00, $02, $10, $0a, $00, $ff, $11, $06, $f6

    ld a, [bc]                                    ; $5e32: $0a
    or $0a                                        ; $5e33: $f6 $0a

    db $00, $f1, $f4, $f9, $04, $f9, $f2, $01, $02, $01, $f4, $09, $98, $20, $30, $50
    db $6c, $58, $64, $b8, $c4, $10, $6c, $58, $64, $48, $76, $30, $2e, $04, $3b, $3e
    db $31, $0b, $0c, $0f, $0c, $02, $03, $06, $00, $84, $06, $07, $08, $0a, $02, $10
    db $04, $00, $02, $05, $9a, $18, $1f, $3e, $3f, $62, $7d, $6f, $70, $af, $f0, $5e
    db $61, $8d, $f2, $bc, $e3, $ae, $f1, $75, $7a, $60, $7f, $3c, $3f, $1a, $1f, $02
    db $02, $03, $00, $89, $80, $00, $e0, $40, $ba, $7a, $85, $d4, $fc, $02, $28, $0a
    db $00, $02, $28, $8c, $56, $7e, $bd, $43, $05, $ba, $01, $0e, $00, $03, $00, $01
    db $02, $40, $96, $b0, $f0, $38, $f8, $8c, $7c, $dc, $3c, $ea, $1e, $ca, $3e, $e8
    db $1c, $c2, $3e, $28, $dc, $d4, $3c, $0c, $fc, $02, $f8, $82, $30, $f0, $02, $c0
    db $04, $00, $02, $10, $82, $20, $a0, $02, $c0, $0a, $00, $02, $80, $98, $e0, $60
    db $a0, $60, $f8, $18, $40, $b8, $18, $e8, $24, $dc, $34, $4c, $10, $6c, $32, $4e
    db $14, $6c, $44, $7c, $00, $10, $06, $00, $ff, $0b, $03, $f6

    ld a, [bc]                                    ; $5ef1: $0a
    or $0a                                        ; $5ef2: $f6 $0a

    db $f8, $f5, $fa, $fd, $fd, $04, $02, $18, $8e, $34, $2c, $50, $68, $70, $40, $a0
    db $c0, $02, $e2, $c5, $85, $82, $e2, $02, $c5, $02, $42, $02, $45, $02, $20, $02
    db $01, $06, $00, $02, $58, $02, $aa, $94, $50, $54, $82, $aa, $39, $65, $34, $ca
    db $65, $9b, $72, $8e, $30, $4d, $88, $ba, $04, $54, $a2, $aa, $02, $54, $06, $00
    db $02, $44, $94, $20, $22, $60, $62, $01, $03, $21, $63, $25, $23, $44, $43, $05
    db $03, $0a, $06, $0a, $16, $24, $3c, $02, $18, $08, $00, $ff

    add hl, bc                                    ; $5f50: $09
    ld [bc], a                                    ; $5f51: $02
    pop af                                        ; $5f52: $f1
    rrca                                          ; $5f53: $0f
    or $09                                        ; $5f54: $f6 $09
    rst $30                                       ; $5f56: $f7

jr_0f6_5f57:
    ei                                            ; $5f57: $fb
    rlca                                          ; $5f58: $07
    ei                                            ; $5f59: $fb
    ld [bc], a                                    ; $5f5a: $02
    ld a, [bc]                                    ; $5f5b: $0a
    add a                                         ; $5f5c: $87

jr_0f6_5f5d:
    inc d                                         ; $5f5d: $14
    ld c, $05                                     ; $5f5e: $0e $05
    ld c, $04                                     ; $5f60: $0e $04
    ld b, $14                                     ; $5f62: $06 $14
    ld [bc], a                                    ; $5f64: $02
    inc c                                         ; $5f65: $0c
    add d                                         ; $5f66: $82

jr_0f6_5f67:
    ld c, $05                                     ; $5f67: $0e $05
    ld [bc], a                                    ; $5f69: $02
    ld b, $95                                     ; $5f6a: $06 $95
    ld c, $02                                     ; $5f6c: $0e $02
    ld a, [bc]                                    ; $5f6e: $0a
    dec d                                         ; $5f6f: $15
    ld c, $08                                     ; $5f70: $0e $08
    ld a, [bc]                                    ; $5f72: $0a
    inc c                                         ; $5f73: $0c
    ld c, $14                                     ; $5f74: $0e $14
    inc c                                         ; $5f76: $0c
    ld b, $0e                                     ; $5f77: $06 $0e
    dec b                                         ; $5f79: $05
    ld b, $04                                     ; $5f7a: $06 $04
    inc c                                         ; $5f7c: $0c
    inc d                                         ; $5f7d: $14
    ld c, $05                                     ; $5f7e: $0e $05
    ld c, $02                                     ; $5f80: $0e $02
    ld a, [bc]                                    ; $5f82: $0a
    ld a, [de]                                    ; $5f83: $1a
    nop                                           ; $5f84: $00
    rst $38                                       ; $5f85: $ff
    dec c                                         ; $5f86: $0d
    inc b                                         ; $5f87: $04
    pop af                                        ; $5f88: $f1
    rrca                                          ; $5f89: $0f
    or $09                                        ; $5f8a: $f6 $09
    rst $30                                       ; $5f8c: $f7
    ld hl, sp-$09                                 ; $5f8d: $f8 $f7
    ld bc, $f807                                  ; $5f8f: $01 $07 $f8
    rlca                                          ; $5f92: $07
    rst $38                                       ; $5f93: $ff
    adc b                                         ; $5f94: $88
    jr jr_0f6_5f9f                                ; $5f95: $18 $08

    ld [hl-], a                                   ; $5f97: $32
    ld c, $14                                     ; $5f98: $0e $14
    inc e                                         ; $5f9a: $1c
    ld a, [hl+]                                   ; $5f9b: $2a
    ld a, $02                                     ; $5f9c: $3e $02
    inc e                                         ; $5f9e: $1c

jr_0f6_5f9f:
    or d                                          ; $5f9f: $b2
    ld l, c                                       ; $5fa0: $69
    rla                                           ; $5fa1: $17
    inc d                                         ; $5fa2: $14
    inc c                                         ; $5fa3: $0c
    add hl, bc                                    ; $5fa4: $09
    rlca                                          ; $5fa5: $07
    ld a, [hl+]                                   ; $5fa6: $2a
    ld e, $f5                                     ; $5fa7: $1e $f5
    rra                                           ; $5fa9: $1f
    inc l                                         ; $5faa: $2c
    inc e                                         ; $5fab: $1c
    ld de, $0a0f                                  ; $5fac: $11 $0f $0a
    ld c, $69                                     ; $5faf: $0e $69
    rla                                           ; $5fb1: $17
    inc a                                         ; $5fb2: $3c
    inc e                                         ; $5fb3: $1c
    ld a, [hl+]                                   ; $5fb4: $2a
    ld a, $08                                     ; $5fb5: $3e $08
    db $10                                        ; $5fb7: $10
    ld c, h                                       ; $5fb8: $4c
    ld [hl], b                                    ; $5fb9: $70
    jr z, jr_0f6_5ff4                             ; $5fba: $28 $38

    ld d, h                                       ; $5fbc: $54
    ld a, h                                       ; $5fbd: $7c
    inc a                                         ; $5fbe: $3c
    jr c, jr_0f6_5f57                             ; $5fbf: $38 $96

    add sp, $50                                   ; $5fc1: $e8 $50
    ld [hl], b                                    ; $5fc3: $70
    adc b                                         ; $5fc4: $88
    ldh a, [$34]                                  ; $5fc5: $f0 $34
    jr c, @-$4f                                   ; $5fc7: $38 $af

    ld hl, sp+$54                                 ; $5fc9: $f8 $54
    ld a, b                                       ; $5fcb: $78
    sub b                                         ; $5fcc: $90
    ldh [$28], a                                  ; $5fcd: $e0 $28
    jr nc, jr_0f6_5f67                            ; $5fcf: $30 $96

    add sp, $02                                   ; $5fd1: $e8 $02
    jr c, jr_0f6_5f5d                             ; $5fd3: $38 $88

    ld d, h                                       ; $5fd5: $54
    ld a, h                                       ; $5fd6: $7c
    inc d                                         ; $5fd7: $14
    inc e                                         ; $5fd8: $1c
    ld [hl-], a                                   ; $5fd9: $32
    ld c, $10                                     ; $5fda: $0e $10
    ld [$001a], sp                                ; $5fdc: $08 $1a $00
    add [hl]                                      ; $5fdf: $86
    ld a, [bc]                                    ; $5fe0: $0a
    ld c, $13                                     ; $5fe1: $0e $13
    inc e                                         ; $5fe3: $1c
    ld b, $04                                     ; $5fe4: $06 $04
    ld a, [de]                                    ; $5fe6: $1a
    nop                                           ; $5fe7: $00
    rst $38                                       ; $5fe8: $ff
    dec d                                         ; $5fe9: $15
    ld [$0ff1], sp                                ; $5fea: $08 $f1 $0f
    or $09                                        ; $5fed: $f6 $09
    rst $30                                       ; $5fef: $f7
    ldh a, [$f7]                                  ; $5ff0: $f0 $f7
    rst $30                                       ; $5ff2: $f7
    rst $30                                       ; $5ff3: $f7

jr_0f6_5ff4:
    ld [bc], a                                    ; $5ff4: $02
    rst $30                                       ; $5ff5: $f7
    add hl, bc                                    ; $5ff6: $09
    rlca                                          ; $5ff7: $07
    db $f4                                        ; $5ff8: $f4
    rlca                                          ; $5ff9: $07
    push af                                       ; $5ffa: $f5
    rlca                                          ; $5ffb: $07
    inc b                                         ; $5ffc: $04
    rlca                                          ; $5ffd: $07
    dec b                                         ; $5ffe: $05
    add e                                         ; $5fff: $83
    ld [bc], a                                    ; $6000: $02
    dec b                                         ; $6001: $05
    inc c                                         ; $6002: $0c
    ld [bc], a                                    ; $6003: $02
    inc bc                                        ; $6004: $03
    sbc e                                         ; $6005: $9b
    ld bc, $0306                                  ; $6006: $01 $06 $03
    dec b                                         ; $6009: $05
    dec bc                                        ; $600a: $0b
    ld a, [hl]                                    ; $600b: $7e
    ld bc, $0304                                  ; $600c: $01 $04 $03
    ld bc, $0602                                  ; $600f: $01 $02 $06
    add hl, bc                                    ; $6012: $09
    ld a, [$0f05]                                 ; $6013: $fa $05 $0f
    db $10                                        ; $6016: $10
    inc b                                         ; $6017: $04
    dec bc                                        ; $6018: $0b
    inc bc                                        ; $6019: $03
    nop                                           ; $601a: $00
    ld a, c                                       ; $601b: $79
    ld b, $0f                                     ; $601c: $06 $0f
    ld de, $0306                                  ; $601e: $11 $06 $03
    ld [bc], a                                    ; $6021: $02
    ld a, b                                       ; $6022: $78
    db $e4                                        ; $6023: $e4
    ld b, h                                       ; $6024: $44
    inc a                                         ; $6025: $3c
    jr jr_0f6_60a0                                ; $6026: $18 $78

    ld c, b                                       ; $6028: $48
    ld a, b                                       ; $6029: $78
    ld c, $7e                                     ; $602a: $0e $7e
    inc [hl]                                      ; $602c: $34
    ld a, h                                       ; $602d: $7c
    ld c, $7e                                     ; $602e: $0e $7e
    dec b                                         ; $6030: $05
    ld a, a                                       ; $6031: $7f
    inc l                                         ; $6032: $2c
    ld a, h                                       ; $6033: $7c
    ld d, c                                       ; $6034: $51
    ld a, a                                       ; $6035: $7f
    inc l                                         ; $6036: $2c
    ld a, h                                       ; $6037: $7c
    ld [bc], a                                    ; $6038: $02
    ld a, [hl]                                    ; $6039: $7e
    ld c, h                                       ; $603a: $4c
    inc a                                         ; $603b: $3c
    dec bc                                        ; $603c: $0b
    ld a, a                                       ; $603d: $7f
    inc e                                         ; $603e: $1c
    ld a, h                                       ; $603f: $7c
    ld c, h                                       ; $6040: $4c
    ld a, h                                       ; $6041: $7c
    ld b, $07                                     ; $6042: $06 $07
    jr nz, @+$41                                  ; $6044: $20 $3f

    dec c                                         ; $6046: $0d
    rrca                                          ; $6047: $0f
    ld [hl-], a                                   ; $6048: $32
    ccf                                           ; $6049: $3f
    add hl, sp                                    ; $604a: $39
    ccf                                           ; $604b: $3f
    pop de                                        ; $604c: $d1
    cp $33                                        ; $604d: $fe $33
    inc a                                         ; $604f: $3c
    ld b, b                                       ; $6050: $40
    ld a, a                                       ; $6051: $7f
    dec [hl]                                      ; $6052: $35
    ld a, $8a                                     ; $6053: $3e $8a
    rst $38                                       ; $6055: $ff
    inc [hl]                                      ; $6056: $34
    ccf                                           ; $6057: $3f
    and c                                         ; $6058: $a1
    cp $70                                        ; $6059: $fe $70
    ld a, a                                       ; $605b: $7f
    inc l                                         ; $605c: $2c
    ccf                                           ; $605d: $3f
    ld [hl], c                                    ; $605e: $71
    ld a, a                                       ; $605f: $7f
    ld [de], a                                    ; $6060: $12
    rra                                           ; $6061: $1f
    nop                                           ; $6062: $00
    ld b, b                                       ; $6063: $40
    ld [hl], b                                    ; $6064: $70
    nop                                           ; $6065: $00
    ld b, b                                       ; $6066: $40
    nop                                           ; $6067: $00
    ld h, b                                       ; $6068: $60
    ld b, b                                       ; $6069: $40
    ld [hl], b                                    ; $606a: $70
    ld [$601e], sp                                ; $606b: $08 $1e $60
    ld b, b                                       ; $606e: $40
    nop                                           ; $606f: $00
    jr nz, jr_0f6_60c2                            ; $6070: $20 $50

    ld [hl], b                                    ; $6072: $70
    ld [$205f], sp                                ; $6073: $08 $5f $20
    ld h, b                                       ; $6076: $60
    stop                                          ; $6077: $10 $00
    ld b, b                                       ; $6079: $40
    jr nz, jr_0f6_60bc                            ; $607a: $20 $40

    ld a, [hl]                                    ; $607c: $7e
    nop                                           ; $607d: $00
    jr nz, @+$52                                  ; $607e: $20 $50

    ld h, b                                       ; $6080: $60
    ld b, b                                       ; $6081: $40
    ld [hl], $1e                                  ; $6082: $36 $1e
    ldh [$1f], a                                  ; $6084: $e0 $1f
    inc c                                         ; $6086: $0c
    inc a                                         ; $6087: $3c
    inc e                                         ; $6088: $1c
    nop                                           ; $6089: $00
    ld [bc], a                                    ; $608a: $02
    ld bc, $001c                                  ; $608b: $01 $1c $00
    add [hl]                                      ; $608e: $86
    ld h, [hl]                                    ; $608f: $66
    ld a, h                                       ; $6090: $7c
    adc c                                         ; $6091: $89
    or $7a                                        ; $6092: $f6 $7a
    ld a, l                                       ; $6094: $7d
    inc e                                         ; $6095: $1c
    nop                                           ; $6096: $00
    add c                                         ; $6097: $81
    ld bc, $001d                                  ; $6098: $01 $1d $00
    rst $38                                       ; $609b: $ff
    rla                                           ; $609c: $17
    add hl, bc                                    ; $609d: $09
    pop af                                        ; $609e: $f1
    rrca                                          ; $609f: $0f

jr_0f6_60a0:
    or $09                                        ; $60a0: $f6 $09
    rst $30                                       ; $60a2: $f7
    db $ed                                        ; $60a3: $ed
    rst $30                                       ; $60a4: $f7
    push af                                       ; $60a5: $f5
    db $fc                                        ; $60a6: $fc
    db $fd                                        ; $60a7: $fd
    rst $30                                       ; $60a8: $f7
    dec b                                         ; $60a9: $05
    ld hl, sp+$0c                                 ; $60aa: $f8 $0c
    rlca                                          ; $60ac: $07
    pop af                                        ; $60ad: $f1
    rlca                                          ; $60ae: $07
    db $f4                                        ; $60af: $f4
    rlca                                          ; $60b0: $07
    dec b                                         ; $60b1: $05
    rlca                                          ; $60b2: $07
    ld [$018d], sp                                ; $60b3: $08 $8d $01
    ld [bc], a                                    ; $60b6: $02
    ld c, $01                                     ; $60b7: $0e $01
    dec b                                         ; $60b9: $05
    inc b                                         ; $60ba: $04
    ld a, [bc]                                    ; $60bb: $0a

jr_0f6_60bc:
    rrca                                          ; $60bc: $0f
    ld b, $0d                                     ; $60bd: $06 $0d
    ld a, a                                       ; $60bf: $7f
    nop                                           ; $60c0: $00
    ld [bc], a                                    ; $60c1: $02

jr_0f6_60c2:
    ld [bc], a                                    ; $60c2: $02
    ld bc, $00b3                                  ; $60c3: $01 $b3 $00
    inc bc                                        ; $60c6: $03
    dec c                                         ; $60c7: $0d
    cp $03                                        ; $60c8: $fe $03
    rrca                                          ; $60ca: $0f
    ld de, $0c03                                  ; $60cb: $11 $03 $0c
    ld bc, $7d00                                  ; $60ce: $01 $00 $7d
    ld [bc], a                                    ; $60d1: $02
    rrca                                          ; $60d2: $0f
    inc d                                         ; $60d3: $14
    ld a, [bc]                                    ; $60d4: $0a
    rrca                                          ; $60d5: $0f
    ld a, h                                       ; $60d6: $7c
    db $fc                                        ; $60d7: $fc
    add d                                         ; $60d8: $82
    ld a, [hl]                                    ; $60d9: $7e
    sbc h                                         ; $60da: $9c
    ld a, h                                       ; $60db: $7c
    add h                                         ; $60dc: $84
    ld a, h                                       ; $60dd: $7c
    inc de                                        ; $60de: $13
    rst $18                                       ; $60df: $df
    inc l                                         ; $60e0: $2c
    cp h                                          ; $60e1: $bc
    rla                                           ; $60e2: $17
    rst $18                                       ; $60e3: $df
    ld [bc], a                                    ; $60e4: $02
    rst $38                                       ; $60e5: $ff
    ld h, $fe                                     ; $60e6: $26 $fe
    add b                                         ; $60e8: $80
    rst $38                                       ; $60e9: $ff
    and [hl]                                      ; $60ea: $a6
    ld e, [hl]                                    ; $60eb: $5e
    ld bc, $ceff                                  ; $60ec: $01 $ff $ce
    ld a, $14                                     ; $60ef: $3e $14
    rst $38                                       ; $60f1: $ff
    sbc h                                         ; $60f2: $9c
    ld a, h                                       ; $60f3: $7c
    add $3e                                       ; $60f4: $c6 $3e
    ld [bc], a                                    ; $60f6: $02
    inc bc                                        ; $60f7: $03
    ld [bc], a                                    ; $60f8: $02
    nop                                           ; $60f9: $00
    ld [bc], a                                    ; $60fa: $02
    add c                                         ; $60fb: $81
    ld [bc], a                                    ; $60fc: $02
    nop                                           ; $60fd: $00
    add d                                         ; $60fe: $82
    add d                                         ; $60ff: $82
    add e                                         ; $6100: $83
    ld [bc], a                                    ; $6101: $02
    nop                                           ; $6102: $00
    add d                                         ; $6103: $82
    ld [bc], a                                    ; $6104: $02
    inc bc                                        ; $6105: $03
    ld [bc], a                                    ; $6106: $02
    ld bc, $8002                                  ; $6107: $01 $02 $80
    ld [bc], a                                    ; $610a: $02
    ld bc, $000c                                  ; $610b: $01 $0c $00
    and d                                         ; $610e: $a2
    inc c                                         ; $610f: $0c
    rrca                                          ; $6110: $0f
    add c                                         ; $6111: $81
    cp $3b                                        ; $6112: $fe $3b
    inc a                                         ; $6114: $3c
    add $f9                                       ; $6115: $c6 $f9
    ld [hl], e                                    ; $6117: $73
    ld a, h                                       ; $6118: $7c
    ld d, c                                       ; $6119: $51
    cp $e7                                        ; $611a: $fe $e7
    ld hl, sp+$01                                 ; $611c: $f8 $01
    cp $cb                                        ; $611e: $fe $cb
    push af                                       ; $6120: $f5
    ld [bc], a                                    ; $6121: $02
    rst $38                                       ; $6122: $ff
    ret                                           ; $6123: $c9


    rst $38                                       ; $6124: $ff
    add c                                         ; $6125: $81
    cp $d0                                        ; $6126: $fe $d0
    rst $30                                       ; $6128: $f7
    ld l, c                                       ; $6129: $69
    ld a, d                                       ; $612a: $7a
    sub b                                         ; $612b: $90
    rst $30                                       ; $612c: $f7
    ld b, d                                       ; $612d: $42
    ld a, l                                       ; $612e: $7d
    ld [hl], b                                    ; $612f: $70
    nop                                           ; $6130: $00
    ld [bc], a                                    ; $6131: $02
    jr nz, @-$7d                                  ; $6132: $20 $81

    ld d, b                                       ; $6134: $50
    ld [bc], a                                    ; $6135: $02
    ld [hl], b                                    ; $6136: $70
    add e                                         ; $6137: $83
    jr z, jr_0f6_6178                             ; $6138: $28 $3e

    ld b, b                                       ; $613a: $40
    ld [bc], a                                    ; $613b: $02
    nop                                           ; $613c: $00
    add l                                         ; $613d: $85
    ld b, b                                       ; $613e: $40
    jr nc, jr_0f6_61b1                            ; $613f: $30 $70

    ld [$027f], sp                                ; $6141: $08 $7f $02
    ld b, b                                       ; $6144: $40
    add c                                         ; $6145: $81
    jr nc, jr_0f6_614a                            ; $6146: $30 $02

    nop                                           ; $6148: $00
    sub b                                         ; $6149: $90

jr_0f6_614a:
    ld b, b                                       ; $614a: $40
    nop                                           ; $614b: $00
    ld a, [hl]                                    ; $614c: $7e
    nop                                           ; $614d: $00
    ld h, b                                       ; $614e: $60
    jr nc, @+$52                                  ; $614f: $30 $50

jr_0f6_6151:
    ld [hl], b                                    ; $6151: $70
    and b                                         ; $6152: $a0
    jr nz, @+$5d                                  ; $6153: $20 $5b

    ld b, a                                       ; $6155: $47
    ldh a, [rIF]                                  ; $6156: $f0 $0f
    ld b, $1e                                     ; $6158: $06 $1e
    ld a, [de]                                    ; $615a: $1a
    nop                                           ; $615b: $00
    ld [bc], a                                    ; $615c: $02
    inc b                                         ; $615d: $04
    add d                                         ; $615e: $82
    ld bc, $1c07                                  ; $615f: $01 $07 $1c
    nop                                           ; $6162: $00
    add [hl]                                      ; $6163: $86
    ld [hl], d                                    ; $6164: $72
    ld a, h                                       ; $6165: $7c
    add d                                         ; $6166: $82
    db $fd                                        ; $6167: $fd
    ld a, l                                       ; $6168: $7d
    ld a, [hl]                                    ; $6169: $7e
    inc e                                         ; $616a: $1c
    nop                                           ; $616b: $00
    add c                                         ; $616c: $81
    rlca                                          ; $616d: $07
    ld [bc], a                                    ; $616e: $02
    nop                                           ; $616f: $00
    add c                                         ; $6170: $81
    inc b                                         ; $6171: $04
    ld a, [de]                                    ; $6172: $1a
    nop                                           ; $6173: $00
    rst $38                                       ; $6174: $ff
    add hl, de                                    ; $6175: $19
    ld a, [bc]                                    ; $6176: $0a
    pop af                                        ; $6177: $f1

jr_0f6_6178:
    rrca                                          ; $6178: $0f
    or $09                                        ; $6179: $f6 $09
    ld hl, sp-$17                                 ; $617b: $f8 $e9
    rst $30                                       ; $617d: $f7
    pop af                                        ; $617e: $f1
    rst $30                                       ; $617f: $f7
    push af                                       ; $6180: $f5
    rst $30                                       ; $6181: $f7
    inc b                                         ; $6182: $04
    rst $30                                       ; $6183: $f7
    inc c                                         ; $6184: $0c
    db $fc                                        ; $6185: $fc
    db $10                                        ; $6186: $10
    rlca                                          ; $6187: $07
    rst $28                                       ; $6188: $ef
    rlca                                          ; $6189: $07
    di                                            ; $618a: $f3
    rlca                                          ; $618b: $07
    ld b, $07                                     ; $618c: $06 $07
    ld [$0382], sp                                ; $618e: $08 $82 $03
    nop                                           ; $6191: $00
    ld [bc], a                                    ; $6192: $02
    db $10                                        ; $6193: $10

jr_0f6_6194:
    add l                                         ; $6194: $85
    jr z, jr_0f6_61cf                             ; $6195: $28 $38

    db $10                                        ; $6197: $10
    inc de                                        ; $6198: $13
    rra                                           ; $6199: $1f
    dec b                                         ; $619a: $05
    nop                                           ; $619b: $00
    adc b                                         ; $619c: $88
    inc b                                         ; $619d: $04
    rlca                                          ; $619e: $07
    ei                                            ; $619f: $fb
    ld c, $07                                     ; $61a0: $0e $07
    inc b                                         ; $61a2: $04
    nop                                           ; $61a3: $00
    inc bc                                        ; $61a4: $03
    ld [bc], a                                    ; $61a5: $02
    nop                                           ; $61a6: $00
    add [hl]                                      ; $61a7: $86
    rra                                           ; $61a8: $1f
    nop                                           ; $61a9: $00
    inc hl                                        ; $61aa: $23
    inc h                                         ; $61ab: $24
    ld d, b                                       ; $61ac: $50
    ld [hl], b                                    ; $61ad: $70
    ld [bc], a                                    ; $61ae: $02
    jr nz, jr_0f6_6151                            ; $61af: $20 $a0

jr_0f6_61b1:
    ld l, a                                       ; $61b1: $6f
    sbc a                                         ; $61b2: $9f
    sub b                                         ; $61b3: $90
    ld l, a                                       ; $61b4: $6f
    ld [hl], e                                    ; $61b5: $73
    rrca                                          ; $61b6: $0f
    ret z                                         ; $61b7: $c8

    scf                                           ; $61b8: $37
    adc b                                         ; $61b9: $88
    ld l, a                                       ; $61ba: $6f
    rst $10                                       ; $61bb: $d7
    rra                                           ; $61bc: $1f
    adc b                                         ; $61bd: $88
    ld l, a                                       ; $61be: $6f
    nop                                           ; $61bf: $00
    ld a, a                                       ; $61c0: $7f
    db $e4                                        ; $61c1: $e4

Jump_0f6_61c2:
    rra                                           ; $61c2: $1f
    jr nc, jr_0f6_6194                            ; $61c3: $30 $cf

    db $f4                                        ; $61c5: $f4
    dec bc                                        ; $61c6: $0b
    and b                                         ; $61c7: $a0
    ld e, a                                       ; $61c8: $5f
    ld a, b                                       ; $61c9: $78
    rrca                                          ; $61ca: $0f
    sub h                                         ; $61cb: $94
    ld a, a                                       ; $61cc: $7f
    ei                                            ; $61cd: $fb
    rrca                                          ; $61ce: $0f

jr_0f6_61cf:
    and b                                         ; $61cf: $a0
    ld e, a                                       ; $61d0: $5f
    ld [bc], a                                    ; $61d1: $02
    ld [$0482], sp                                ; $61d2: $08 $82 $04
    inc c                                         ; $61d5: $0c
    inc b                                         ; $61d6: $04
    ld [$0682], sp                                ; $61d7: $08 $82 $06
    ld c, $02                                     ; $61da: $0e $02
    ld [$0e02], sp                                ; $61dc: $08 $02 $0e
    add d                                         ; $61df: $82
    dec b                                         ; $61e0: $05
    rrca                                          ; $61e1: $0f
    ld [bc], a                                    ; $61e2: $02
    inc c                                         ; $61e3: $0c
    add d                                         ; $61e4: $82
    ld bc, $020f                                  ; $61e5: $01 $0f $02
    inc c                                         ; $61e8: $0c
    add d                                         ; $61e9: $82
    ld [bc], a                                    ; $61ea: $02
    ld c, $02                                     ; $61eb: $0e $02
    inc c                                         ; $61ed: $0c
    add d                                         ; $61ee: $82
    ld bc, $020f                                  ; $61ef: $01 $0f $02
    ld [$0c02], sp                                ; $61f2: $08 $02 $0c
    ld [bc], a                                    ; $61f5: $02
    inc bc                                        ; $61f6: $03
    xor c                                         ; $61f7: $a9
    jr nz, jr_0f6_6239                            ; $61f8: $20 $3f

    ld c, $0f                                     ; $61fa: $0e $0f
    jr nc, jr_0f6_623d                            ; $61fc: $30 $3f

    dec e                                         ; $61fe: $1d
    rra                                           ; $61ff: $1f
    add d                                         ; $6200: $82
    rst $38                                       ; $6201: $ff
    ld sp, $403f                                  ; $6202: $31 $3f $40
    ld a, a                                       ; $6205: $7f
    ld [hl-], a                                   ; $6206: $32
    dec a                                         ; $6207: $3d
    add b                                         ; $6208: $80
    rst $38                                       ; $6209: $ff
    ld [hl-], a                                   ; $620a: $32
    ccf                                           ; $620b: $3f
    and b                                         ; $620c: $a0
    rst $38                                       ; $620d: $ff
    ld [hl], c                                    ; $620e: $71

jr_0f6_620f:
    ld a, a                                       ; $620f: $7f
    ld e, $1f                                     ; $6210: $1e $1f
    ld h, c                                       ; $6212: $61

jr_0f6_6213:
    ld a, a                                       ; $6213: $7f
    ld de, $001e                                  ; $6214: $11 $1e $00
    ldh [$7c], a                                  ; $6217: $e0 $7c
    add b                                         ; $6219: $80
    ld [c], a                                     ; $621a: $e2
    ld [bc], a                                    ; $621b: $02

Call_0f6_621c:
    ld d, b                                       ; $621c: $50
    and b                                         ; $621d: $a0
    db $fc                                        ; $621e: $fc
    ld [bc], a                                    ; $621f: $02
    sbc a                                         ; $6220: $9f
    ld [bc], a                                    ; $6221: $02
    ldh [$94], a                                  ; $6222: $e0 $94
    nop                                           ; $6224: $00
    ld d, b                                       ; $6225: $50
    xor h                                         ; $6226: $ac
    cp $02                                        ; $6227: $fe $02
    call Call_0f6_7237                            ; $6229: $cd $37 $72
    adc [hl]                                      ; $622c: $8e
    nop                                           ; $622d: $00
    ldh [rNR10], a                                ; $622e: $e0 $10
    ld h, b                                       ; $6230: $60
    cp a                                          ; $6231: $bf
    add b                                         ; $6232: $80
    db $10                                        ; $6233: $10
    ld l, h                                       ; $6234: $6c
    ld sp, $08c1                                  ; $6235: $31 $c1 $08
    rlca                                          ; $6238: $07

jr_0f6_6239:
    nop                                           ; $6239: $00
    add c                                         ; $623a: $81
    rrca                                          ; $623b: $0f
    rlca                                          ; $623c: $07

jr_0f6_623d:
    nop                                           ; $623d: $00
    add d                                         ; $623e: $82
    ld [$0200], sp                                ; $623f: $08 $00 $02
    ld [$0482], sp                                ; $6242: $08 $82 $04
    inc c                                         ; $6245: $0c
    ld [bc], a                                    ; $6246: $02
    ld [$c081], sp                                ; $6247: $08 $81 $c0
    rlca                                          ; $624a: $07
    nop                                           ; $624b: $00
    add [hl]                                      ; $624c: $86
    dec e                                         ; $624d: $1d
    inc bc                                        ; $624e: $03
    ld hl, sp+$07                                 ; $624f: $f8 $07
    inc bc                                        ; $6251: $03
    rra                                           ; $6252: $1f
    ld a, [de]                                    ; $6253: $1a
    nop                                           ; $6254: $00
    ld [bc], a                                    ; $6255: $02
    inc c                                         ; $6256: $0c
    add d                                         ; $6257: $82
    ld bc, $1c0f                                  ; $6258: $01 $0f $1c
    nop                                           ; $625b: $00
    add [hl]                                      ; $625c: $86
    ld [hl], e                                    ; $625d: $73
    ld a, h                                       ; $625e: $7c
    add d                                         ; $625f: $82
    db $fd                                        ; $6260: $fd
    ld a, l                                       ; $6261: $7d
    ld a, [hl]                                    ; $6262: $7e
    ld a, [de]                                    ; $6263: $1a
    nop                                           ; $6264: $00
    add e                                         ; $6265: $83
    ld [bc], a                                    ; $6266: $02
    nop                                           ; $6267: $00
    ld bc, $0202                                  ; $6268: $01 $02 $02
    add c                                         ; $626b: $81
    ld bc, $001a                                  ; $626c: $01 $1a $00
    rst $38                                       ; $626f: $ff
    add hl, de                                    ; $6270: $19
    ld a, [bc]                                    ; $6271: $0a
    pop af                                        ; $6272: $f1
    rrca                                          ; $6273: $0f
    or $09                                        ; $6274: $f6 $09
    ld sp, hl                                     ; $6276: $f9
    push hl                                       ; $6277: $e5
    rst $30                                       ; $6278: $f7
    db $ed                                        ; $6279: $ed
    ld hl, sp-$0f                                 ; $627a: $f8 $f1
    rst $30                                       ; $627c: $f7
    ld [$10f7], sp                                ; $627d: $08 $f7 $10
    ld sp, hl                                     ; $6280: $f9
    inc d                                         ; $6281: $14
    rlca                                          ; $6282: $07
    db $ed                                        ; $6283: $ed
    rlca                                          ; $6284: $07
    rst $28                                       ; $6285: $ef
    rlca                                          ; $6286: $07
    ld a, [bc]                                    ; $6287: $0a
    rlca                                          ; $6288: $07
    inc c                                         ; $6289: $0c
    ld [bc], a                                    ; $628a: $02
    jr nz, jr_0f6_620f                            ; $628b: $20 $82

    ld d, b                                       ; $628d: $50
    ld [hl], b                                    ; $628e: $70
    ld [bc], a                                    ; $628f: $02
    jr nz, jr_0f6_6213                            ; $6290: $20 $81

    inc bc                                        ; $6292: $03
    dec b                                         ; $6293: $05
    nop                                           ; $6294: $00
    ld [bc], a                                    ; $6295: $02
    ld [$1782], sp                                ; $6296: $08 $82 $17
    inc e                                         ; $6299: $1c
    ld [bc], a                                    ; $629a: $02
    ld [$0004], sp                                ; $629b: $08 $04 $00
    add d                                         ; $629e: $82
    inc bc                                        ; $629f: $03
    nop                                           ; $62a0: $00
    ld [bc], a                                    ; $62a1: $02
    ld b, b                                       ; $62a2: $40
    add d                                         ; $62a3: $82
    and b                                         ; $62a4: $a0
    ldh [rSC], a                                  ; $62a5: $e0 $02
    ld b, b                                       ; $62a7: $40
    ld [bc], a                                    ; $62a8: $02
    nop                                           ; $62a9: $00
    and b                                         ; $62aa: $a0
    inc l                                         ; $62ab: $2c
    ld e, h                                       ; $62ac: $5c
    pop de                                        ; $62ad: $d1
    cpl                                           ; $62ae: $2f
    ld [hl], $0e                                  ; $62af: $36 $0e
    ld h, c                                       ; $62b1: $61
    rra                                           ; $62b2: $1f
    sub e                                         ; $62b3: $93
    ld a, a                                       ; $62b4: $7f
    add sp, $3e                                   ; $62b5: $e8 $3e
    ld d, e                                       ; $62b7: $53
    ccf                                           ; $62b8: $3f
    jr nz, jr_0f6_62da                            ; $62b9: $20 $1f

    ld [hl-], a                                   ; $62bb: $32
    ld c, [hl]                                    ; $62bc: $4e
    ret nz                                        ; $62bd: $c0

    ccf                                           ; $62be: $3f
    ld [hl], e                                    ; $62bf: $73
    adc a                                         ; $62c0: $8f
    ld d, b                                       ; $62c1: $50
    cpl                                           ; $62c2: $2f
    ld [hl-], a                                   ; $62c3: $32
    ld e, $ec                                     ; $62c4: $1e $ec
    ccf                                           ; $62c6: $3f
    ld [hl], c                                    ; $62c7: $71
    sbc a                                         ; $62c8: $9f
    ld b, e                                       ; $62c9: $43
    ccf                                           ; $62ca: $3f
    ld [bc], a                                    ; $62cb: $02
    inc b                                         ; $62cc: $04
    inc b                                         ; $62cd: $04
    nop                                           ; $62ce: $00
    ld [bc], a                                    ; $62cf: $02
    ld [$0002], sp                                ; $62d0: $08 $02 $00

jr_0f6_62d3:
    ld [bc], a                                    ; $62d3: $02
    dec c                                         ; $62d4: $0d
    inc b                                         ; $62d5: $04
    nop                                           ; $62d6: $00
    add d                                         ; $62d7: $82
    inc b                                         ; $62d8: $04
    inc c                                         ; $62d9: $0c

jr_0f6_62da:
    ld [bc], a                                    ; $62da: $02
    nop                                           ; $62db: $00
    ld [bc], a                                    ; $62dc: $02
    ld a, [bc]                                    ; $62dd: $0a
    ld [bc], a                                    ; $62de: $02
    nop                                           ; $62df: $00
    add d                                         ; $62e0: $82
    inc b                                         ; $62e1: $04
    inc c                                         ; $62e2: $0c
    ld [bc], a                                    ; $62e3: $02
    ld [$0002], sp                                ; $62e4: $08 $02 $00
    add d                                         ; $62e7: $82
    ld b, b                                       ; $62e8: $40
    ret nz                                        ; $62e9: $c0

    ld [bc], a                                    ; $62ea: $02
    inc bc                                        ; $62eb: $03
    xor c                                         ; $62ec: $a9
    inc l                                         ; $62ed: $2c
    cpl                                           ; $62ee: $2f
    ld [bc], a                                    ; $62ef: $02
    inc bc                                        ; $62f0: $03
    inc c                                         ; $62f1: $0c
    rrca                                          ; $62f2: $0f
    jr @+$21                                      ; $62f3: $18 $1f

    inc hl                                        ; $62f5: $23
    ccf                                           ; $62f6: $3f
    inc b                                         ; $62f7: $04
    rlca                                          ; $62f8: $07
    ld d, b                                       ; $62f9: $50
    ld e, a                                       ; $62fa: $5f
    inc c                                         ; $62fb: $0c
    rrca                                          ; $62fc: $0f
    jr nz, @+$41                                  ; $62fd: $20 $3f

    inc b                                         ; $62ff: $04
    rlca                                          ; $6300: $07
    nop                                           ; $6301: $00
    rrca                                          ; $6302: $0f
    cp h                                          ; $6303: $bc
    cp a                                          ; $6304: $bf
    ld bc, $1c07                                  ; $6305: $01 $07 $1c
    rra                                           ; $6308: $1f
    ld [$800f], sp                                ; $6309: $08 $0f $80
    ld b, b                                       ; $630c: $40
    ld [hl], b                                    ; $630d: $70
    add b                                         ; $630e: $80
    ret nz                                        ; $630f: $c0

    nop                                           ; $6310: $00
    jr nz, jr_0f6_62d3                            ; $6311: $20 $c0

    ldh [$90], a                                  ; $6313: $e0 $90
    ld a, h                                       ; $6315: $7c
    ld [bc], a                                    ; $6316: $02
    ret nz                                        ; $6317: $c0

    sub e                                         ; $6318: $93
    add b                                         ; $6319: $80
    and b                                         ; $631a: $a0
    ld b, b                                       ; $631b: $40
    pop hl                                        ; $631c: $e1
    ld de, $c33e                                  ; $631d: $11 $3e $c3
    pop bc                                        ; $6320: $c1
    ld hl, $8040                                  ; $6321: $21 $40 $80
    and b                                         ; $6324: $a0
    ret nz                                        ; $6325: $c0

    ld a, h                                       ; $6326: $7c
    ret nz                                        ; $6327: $c0

    sub b                                         ; $6328: $90
    ldh [$60], a                                  ; $6329: $e0 $60
    add b                                         ; $632b: $80
    ld [bc], a                                    ; $632c: $02
    ld [bc], a                                    ; $632d: $02
    add d                                         ; $632e: $82
    dec b                                         ; $632f: $05
    rlca                                          ; $6330: $07
    ld [bc], a                                    ; $6331: $02
    ld [bc], a                                    ; $6332: $02
    ld [$0200], sp                                ; $6333: $08 $00 $02
    ld [$0008], sp                                ; $6336: $08 $08 $00
    ld [bc], a                                    ; $6339: $02
    inc b                                         ; $633a: $04
    add d                                         ; $633b: $82
    ld a, [bc]                                    ; $633c: $0a
    ld c, $02                                     ; $633d: $0e $02
    inc b                                         ; $633f: $04
    ld [bc], a                                    ; $6340: $02
    nop                                           ; $6341: $00
    add [hl]                                      ; $6342: $86
    jr nc, jr_0f6_6345                            ; $6343: $30 $00

jr_0f6_6345:
    db $e3                                        ; $6345: $e3
    rra                                           ; $6346: $1f
    inc e                                         ; $6347: $1c
    inc l                                         ; $6348: $2c
    inc e                                         ; $6349: $1c
    nop                                           ; $634a: $00
    ld [bc], a                                    ; $634b: $02
    ld bc, $001c                                  ; $634c: $01 $1c $00
    add [hl]                                      ; $634f: $86
    dec de                                        ; $6350: $1b
    inc e                                         ; $6351: $1c
    and d                                         ; $6352: $a2
    cp l                                          ; $6353: $bd
    dec c                                         ; $6354: $0d
    ld c, $1c                                     ; $6355: $0e $1c
    nop                                           ; $6357: $00
    add c                                         ; $6358: $81
    inc bc                                        ; $6359: $03
    ld [bc], a                                    ; $635a: $02
    nop                                           ; $635b: $00
    add c                                         ; $635c: $81
    ld [bc], a                                    ; $635d: $02
    ld a, [de]                                    ; $635e: $1a
    nop                                           ; $635f: $00
    rst $38                                       ; $6360: $ff
    add hl, de                                    ; $6361: $19
    ld a, [bc]                                    ; $6362: $0a
    pop af                                        ; $6363: $f1
    rrca                                          ; $6364: $0f
    or $09                                        ; $6365: $f6 $09
    ld a, [$f7e1]                                 ; $6367: $fa $e1 $f7
    jp hl                                         ; $636a: $e9


    ld hl, sp-$13                                 ; $636b: $f8 $ed
    rst $30                                       ; $636d: $f7
    inc c                                         ; $636e: $0c
    rst $30                                       ; $636f: $f7
    inc d                                         ; $6370: $14
    ld a, [$0718]                                 ; $6371: $fa $18 $07
    add sp, $07                                   ; $6374: $e8 $07
    db $eb                                        ; $6376: $eb
    rlca                                          ; $6377: $07
    ld c, $07                                     ; $6378: $0e $07
    rrca                                          ; $637a: $0f
    add d                                         ; $637b: $82
    ld d, b                                       ; $637c: $50
    ld [hl], b                                    ; $637d: $70
    ld a, [bc]                                    ; $637e: $0a
    nop                                           ; $637f: $00
    add d                                         ; $6380: $82
    inc d                                         ; $6381: $14
    inc e                                         ; $6382: $1c
    ld a, [bc]                                    ; $6383: $0a
    nop                                           ; $6384: $00
    add d                                         ; $6385: $82
    and b                                         ; $6386: $a0
    ldh [rTMA], a                                 ; $6387: $e0 $06
    nop                                           ; $6389: $00
    and b                                         ; $638a: $a0
    inc b                                         ; $638b: $04
    inc e                                         ; $638c: $1c
    ld [hl], c                                    ; $638d: $71
    rrca                                          ; $638e: $0f
    inc [hl]                                      ; $638f: $34
    inc c                                         ; $6390: $0c
    inc bc                                        ; $6391: $03
    rra                                           ; $6392: $1f
    ld [hl], $1e                                  ; $6393: $36 $1e
    add sp, $3c                                   ; $6395: $e8 $3c
    scf                                           ; $6397: $37
    rra                                           ; $6398: $1f
    inc de                                        ; $6399: $13
    rrca                                          ; $639a: $0f
    inc h                                         ; $639b: $24
    inc e                                         ; $639c: $1c
    pop hl                                        ; $639d: $e1
    rra                                           ; $639e: $1f
    ld d, $2e                                     ; $639f: $16 $2e
    inc bc                                        ; $63a1: $03
    rra                                           ; $63a2: $1f
    inc d                                         ; $63a3: $14
    inc e                                         ; $63a4: $1c
    jp hl                                         ; $63a5: $e9


    ccf                                           ; $63a6: $3f
    ld [de], a                                    ; $63a7: $12
    ld a, $16                                     ; $63a8: $3e $16
    ld c, $02                                     ; $63aa: $0e $02
    inc b                                         ; $63ac: $04
    ld [$0200], sp                                ; $63ad: $08 $00 $02
    add hl, bc                                    ; $63b0: $09
    ld [$0200], sp                                ; $63b1: $08 $00 $02
    ld [bc], a                                    ; $63b4: $02
    ld [bc], a                                    ; $63b5: $02
    nop                                           ; $63b6: $00
    ld [bc], a                                    ; $63b7: $02
    ld [$0005], sp                                ; $63b8: $08 $05 $00
    xor l                                         ; $63bb: $ad
    ret nz                                        ; $63bc: $c0

    ld [bc], a                                    ; $63bd: $02
    inc bc                                        ; $63be: $03
    ld h, $27                                     ; $63bf: $26 $27
    nop                                           ; $63c1: $00
    inc bc                                        ; $63c2: $03
    ld b, $07                                     ; $63c3: $06 $07
    inc b                                         ; $63c5: $04
    rlca                                          ; $63c6: $07
    add hl, de                                    ; $63c7: $19
    rra                                           ; $63c8: $1f
    ld [bc], a                                    ; $63c9: $02
    inc bc                                        ; $63ca: $03
    ld c, h                                       ; $63cb: $4c
    ld c, a                                       ; $63cc: $4f
    ld b, $07                                     ; $63cd: $06 $07
    ld [$020f], sp                                ; $63cf: $08 $0f $02
    inc bc                                        ; $63d2: $03
    inc c                                         ; $63d3: $0c
    rrca                                          ; $63d4: $0f
    sbc [hl]                                      ; $63d5: $9e
    sbc a                                         ; $63d6: $9f
    ld bc, $0603                                  ; $63d7: $01 $03 $06
    rlca                                          ; $63da: $07
    inc c                                         ; $63db: $0c
    rrca                                          ; $63dc: $0f
    add b                                         ; $63dd: $80
    nop                                           ; $63de: $00
    ld h, b                                       ; $63df: $60
    add b                                         ; $63e0: $80
    ret nz                                        ; $63e1: $c0

    nop                                           ; $63e2: $00
    add b                                         ; $63e3: $80
    nop                                           ; $63e4: $00
    add b                                         ; $63e5: $80
    ret nz                                        ; $63e6: $c0

    ld [hl], b                                    ; $63e7: $70
    ret nz                                        ; $63e8: $c0

    ld [bc], a                                    ; $63e9: $02
    add b                                         ; $63ea: $80
    add c                                         ; $63eb: $81
    nop                                           ; $63ec: $00
    ld [bc], a                                    ; $63ed: $02
    add b                                         ; $63ee: $80
    add h                                         ; $63ef: $84
    ld b, b                                       ; $63f0: $40
    ld [hl], d                                    ; $63f1: $72
    add e                                         ; $63f2: $83
    ld b, b                                       ; $63f3: $40
    ld [bc], a                                    ; $63f4: $02
    add b                                         ; $63f5: $80
    add h                                         ; $63f6: $84
    nop                                           ; $63f7: $00
    ret nz                                        ; $63f8: $c0

    add b                                         ; $63f9: $80
    ld [hl], b                                    ; $63fa: $70
    ld [bc], a                                    ; $63fb: $02
    ret nz                                        ; $63fc: $c0

    add l                                         ; $63fd: $85
    add b                                         ; $63fe: $80
    nop                                           ; $63ff: $00
    add b                                         ; $6400: $80
    dec b                                         ; $6401: $05
    rlca                                          ; $6402: $07
    ld a, [bc]                                    ; $6403: $0a
    nop                                           ; $6404: $00
    ld [bc], a                                    ; $6405: $02
    ld [$000a], sp                                ; $6406: $08 $0a $00
    add d                                         ; $6409: $82
    ld a, [bc]                                    ; $640a: $0a
    ld c, $06                                     ; $640b: $0e $06
    nop                                           ; $640d: $00
    add [hl]                                      ; $640e: $86
    jr jr_0f6_6411                                ; $640f: $18 $00

jr_0f6_6411:
    inc sp                                        ; $6411: $33
    rrca                                          ; $6412: $0f
    ld a, [bc]                                    ; $6413: $0a
    ld b, $1c                                     ; $6414: $06 $1c
    nop                                           ; $6416: $00
    ld [bc], a                                    ; $6417: $02
    ld bc, $001c                                  ; $6418: $01 $1c $00
    add [hl]                                      ; $641b: $86
    dec bc                                        ; $641c: $0b
    inc c                                         ; $641d: $0c
    and e                                         ; $641e: $a3
    cp h                                          ; $641f: $bc
    ld [$1c0e], sp                                ; $6420: $08 $0e $1c
    nop                                           ; $6423: $00
    add c                                         ; $6424: $81
    ld bc, $001d                                  ; $6425: $01 $1d $00
    rst $38                                       ; $6428: $ff
    ld de, $f106                                  ; $6429: $11 $06 $f1
    rrca                                          ; $642c: $0f
    or $09                                        ; $642d: $f6 $09
    ld a, [$f8e0]                                 ; $642f: $fa $e0 $f8
    db $e4                                        ; $6432: $e4
    ld hl, sp+$14                                 ; $6433: $f8 $14
    ld a, [$0819]                                 ; $6435: $fa $19 $08
    ld [c], a                                     ; $6438: $e2
    ld [$8211], sp                                ; $6439: $08 $11 $82
    ld b, b                                       ; $643c: $40
    ret nz                                        ; $643d: $c0

    ld [bc], a                                    ; $643e: $02
    nop                                           ; $643f: $00
    add d                                         ; $6440: $82
    dec b                                         ; $6441: $05
    rlca                                          ; $6442: $07
    ld b, $00                                     ; $6443: $06 $00
    add d                                         ; $6445: $82
    ld de, $0630                                  ; $6446: $11 $30 $06
    nop                                           ; $6449: $00
    add d                                         ; $644a: $82
    dec b                                         ; $644b: $05
    rlca                                          ; $644c: $07
    ld [bc], a                                    ; $644d: $02
    nop                                           ; $644e: $00
    add d                                         ; $644f: $82
    ld b, b                                       ; $6450: $40
    ret nz                                        ; $6451: $c0

    ld b, $00                                     ; $6452: $06 $00
    add h                                         ; $6454: $84
    inc c                                         ; $6455: $0c
    inc b                                         ; $6456: $04
    nop                                           ; $6457: $00
    ld [$0003], sp                                ; $6458: $08 $03 $00
    add e                                         ; $645b: $83
    ld [$0c04], sp                                ; $645c: $08 $04 $0c
    ld [bc], a                                    ; $645f: $02
    add hl, bc                                    ; $6460: $09
    ld [bc], a                                    ; $6461: $02
    nop                                           ; $6462: $00
    ld [bc], a                                    ; $6463: $02
    ld [$0484], sp                                ; $6464: $08 $84 $04
    inc c                                         ; $6467: $0c
    nop                                           ; $6468: $00
    ld [$0202], sp                                ; $6469: $08 $02 $02
    ld [bc], a                                    ; $646c: $02
    ld [$0c82], sp                                ; $646d: $08 $82 $0c
    inc b                                         ; $6470: $04
    ld [bc], a                                    ; $6471: $02
    ld [$0003], sp                                ; $6472: $08 $03 $00
    add l                                         ; $6475: $85
    ld [$1018], sp                                ; $6476: $08 $18 $10
    nop                                           ; $6479: $00
    ld [$0002], sp                                ; $647a: $08 $02 $00
    ld [bc], a                                    ; $647d: $02
    ld [$1d82], sp                                ; $647e: $08 $82 $1d
    rla                                           ; $6481: $17
    ld [bc], a                                    ; $6482: $02
    ld [$2002], sp                                ; $6483: $08 $02 $20
    add h                                         ; $6486: $84
    nop                                           ; $6487: $00
    ld [$1814], sp                                ; $6488: $08 $14 $18
    ld [bc], a                                    ; $648b: $02
    ld [$0002], sp                                ; $648c: $08 $02 $00
    ld [bc], a                                    ; $648f: $02
    ld c, b                                       ; $6490: $48
    add h                                         ; $6491: $84
    dec d                                         ; $6492: $15
    rra                                           ; $6493: $1f
    nop                                           ; $6494: $00
    ld [$0003], sp                                ; $6495: $08 $03 $00
    add e                                         ; $6498: $83
    ld [$0302], sp                                ; $6499: $08 $02 $03
    ld a, [bc]                                    ; $649c: $0a
    nop                                           ; $649d: $00
    add d                                         ; $649e: $82
    ld [$0a0c], sp                                ; $649f: $08 $0c $0a
    nop                                           ; $64a2: $00
    add d                                         ; $64a3: $82
    ld [bc], a                                    ; $64a4: $02
    inc bc                                        ; $64a5: $03
    ld b, $00                                     ; $64a6: $06 $00
    add d                                         ; $64a8: $82
    inc bc                                        ; $64a9: $03
    ld bc, $001e                                  ; $64aa: $01 $1e $00
    add d                                         ; $64ad: $82
    inc bc                                        ; $64ae: $03
    ld [bc], a                                    ; $64af: $02
    ld e, $00                                     ; $64b0: $1e $00
    rst $38                                       ; $64b2: $ff
    rlca                                          ; $64b3: $07
    ld bc, $0cf5                                  ; $64b4: $01 $f5 $0c
    di                                            ; $64b7: $f3
    inc b                                         ; $64b8: $04
    ld [bc], a                                    ; $64b9: $02
    db $fd                                        ; $64ba: $fd
    adc c                                         ; $64bb: $89
    nop                                           ; $64bc: $00
    jr jr_0f6_64c7                                ; $64bd: $18 $08

    inc b                                         ; $64bf: $04
    ld [$0034], sp                                ; $64c0: $08 $34 $00
    jr z, jr_0f6_64dd                             ; $64c3: $28 $18

    ld [bc], a                                    ; $64c5: $02
    nop                                           ; $64c6: $00

jr_0f6_64c7:
    add h                                         ; $64c7: $84
    db $10                                        ; $64c8: $10
    ld h, [hl]                                    ; $64c9: $66
    ld a, [hl]                                    ; $64ca: $7e
    db $d3                                        ; $64cb: $d3
    inc bc                                        ; $64cc: $03
    rst $38                                       ; $64cd: $ff
    ld [bc], a                                    ; $64ce: $02
    inc a                                         ; $64cf: $3c
    inc c                                         ; $64d0: $0c
    nop                                           ; $64d1: $00
    rst $38                                       ; $64d2: $ff
    add hl, bc                                    ; $64d3: $09
    ld [bc], a                                    ; $64d4: $02
    push af                                       ; $64d5: $f5
    inc c                                         ; $64d6: $0c
    di                                            ; $64d7: $f3
    inc b                                         ; $64d8: $04
    db $fd                                        ; $64d9: $fd
    ei                                            ; $64da: $fb
    db $fd                                        ; $64db: $fd
    rst $38                                       ; $64dc: $ff

jr_0f6_64dd:
    add c                                         ; $64dd: $81
    nop                                           ; $64de: $00
    ld [bc], a                                    ; $64df: $02
    ld bc, $0a99                                  ; $64e0: $01 $99 $0a
    inc bc                                        ; $64e3: $03
    inc c                                         ; $64e4: $0c
    ld [bc], a                                    ; $64e5: $02
    ld bc, $1b00                                  ; $64e6: $01 $00 $1b
    inc bc                                        ; $64e9: $03
    inc c                                         ; $64ea: $0c
    ld b, $08                                     ; $64eb: $06 $08
    inc b                                         ; $64ed: $04
    ld sp, $3304                                  ; $64ee: $31 $04 $33
    ld [$0015], sp                                ; $64f1: $08 $15 $00
    ld a, [bc]                                    ; $64f4: $0a
    ld h, b                                       ; $64f5: $60
    ld a, b                                       ; $64f6: $78
    ret z                                         ; $64f7: $c8

    rst $38                                       ; $64f8: $ff
    di                                            ; $64f9: $f3
    rst $38                                       ; $64fa: $ff
    ld [bc], a                                    ; $64fb: $02
    ccf                                           ; $64fc: $3f
    dec b                                         ; $64fd: $05
    nop                                           ; $64fe: $00
    add e                                         ; $64ff: $83
    ld [$0800], sp                                ; $6500: $08 $00 $08
    dec b                                         ; $6503: $05
    nop                                           ; $6504: $00
    add e                                         ; $6505: $83
    ld [$0800], sp                                ; $6506: $08 $00 $08
    ld [$8300], sp                                ; $6509: $08 $00 $83
    ld b, $0e                                     ; $650c: $06 $0e
    inc bc                                        ; $650e: $03
    inc bc                                        ; $650f: $03
    rrca                                          ; $6510: $0f
    ld [bc], a                                    ; $6511: $02
    inc c                                         ; $6512: $0c
    ld [bc], a                                    ; $6513: $02
    nop                                           ; $6514: $00
    rst $38                                       ; $6515: $ff
    dec c                                         ; $6516: $0d
    inc b                                         ; $6517: $04
    push af                                       ; $6518: $f5
    inc c                                         ; $6519: $0c
    di                                            ; $651a: $f3
    inc b                                         ; $651b: $04
    ld sp, hl                                     ; $651c: $f9
    ld sp, hl                                     ; $651d: $f9
    ld sp, hl                                     ; $651e: $f9
    rst $38                                       ; $651f: $ff
    add hl, bc                                    ; $6520: $09
    ld a, [$0009]                                 ; $6521: $fa $09 $00
    add e                                         ; $6524: $83
    nop                                           ; $6525: $00
    ld bc, $0200                                  ; $6526: $01 $00 $02
    ld bc, $7abf                                  ; $6529: $01 $bf $7a
    dec de                                        ; $652c: $1b
    ld h, h                                       ; $652d: $64
    inc b                                         ; $652e: $04
    ld e, e                                       ; $652f: $5b
    ld b, b                                       ; $6530: $40
    or h                                          ; $6531: $b4
    nop                                           ; $6532: $00
    db $fd                                        ; $6533: $fd
    ld [bc], a                                    ; $6534: $02
    dec b                                         ; $6535: $05
    nop                                           ; $6536: $00
    ld a, [bc]                                    ; $6537: $0a
    ld [bc], a                                    ; $6538: $02
    dec l                                         ; $6539: $2d
    inc c                                         ; $653a: $0c
    inc sp                                        ; $653b: $33
    nop                                           ; $653c: $00
    jr c, jr_0f6_653f                             ; $653d: $38 $00

jr_0f6_653f:
    ld a, [bc]                                    ; $653f: $0a
    ld [bc], a                                    ; $6540: $02
    dec c                                         ; $6541: $0d
    ld [bc], a                                    ; $6542: $02
    dec b                                         ; $6543: $05
    scf                                           ; $6544: $37
    jr c, jr_0f6_6547                             ; $6545: $38 $00

jr_0f6_6547:
    stop                                          ; $6547: $10 $00
    jr nc, jr_0f6_656b                            ; $6549: $30 $20

    inc d                                         ; $654b: $14
    db $10                                        ; $654c: $10
    inc l                                         ; $654d: $2c
    nop                                           ; $654e: $00
    jr nc, jr_0f6_6551                            ; $654f: $30 $00

jr_0f6_6551:
    inc d                                         ; $6551: $14
    db $10                                        ; $6552: $10
    dec c                                         ; $6553: $0d
    inc c                                         ; $6554: $0c
    inc de                                        ; $6555: $13
    nop                                           ; $6556: $00
    inc e                                         ; $6557: $1c
    nop                                           ; $6558: $00
    jr nz, jr_0f6_655b                            ; $6559: $20 $00

jr_0f6_655b:
    jr nz, jr_0f6_655d                            ; $655b: $20 $00

jr_0f6_655d:
    inc d                                         ; $655d: $14
    nop                                           ; $655e: $00
    inc e                                         ; $655f: $1c
    nop                                           ; $6560: $00
    inc d                                         ; $6561: $14
    inc b                                         ; $6562: $04
    jr jr_0f6_6580                                ; $6563: $18 $1b

    daa                                           ; $6565: $27
    pop bc                                        ; $6566: $c1
    rst $38                                       ; $6567: $ff
    db $fc                                        ; $6568: $fc
    rst $38                                       ; $6569: $ff
    ld [bc], a                                    ; $656a: $02

jr_0f6_656b:
    ccf                                           ; $656b: $3f
    ld a, [de]                                    ; $656c: $1a
    nop                                           ; $656d: $00
    add c                                         ; $656e: $81
    inc bc                                        ; $656f: $03
    inc bc                                        ; $6570: $03
    ccf                                           ; $6571: $3f
    ld [bc], a                                    ; $6572: $02
    inc a                                         ; $6573: $3c
    ld a, [de]                                    ; $6574: $1a
    nop                                           ; $6575: $00
    rst $38                                       ; $6576: $ff
    rrca                                          ; $6577: $0f
    dec b                                         ; $6578: $05
    push af                                       ; $6579: $f5
    inc c                                         ; $657a: $0c
    di                                            ; $657b: $f3
    inc b                                         ; $657c: $04
    push af                                       ; $657d: $f5
    push af                                       ; $657e: $f5
    push af                                       ; $657f: $f5

jr_0f6_6580:
    db $fd                                        ; $6580: $fd
    rst $30                                       ; $6581: $f7
    inc b                                         ; $6582: $04
    dec b                                         ; $6583: $05
    ld sp, hl                                     ; $6584: $f9
    dec b                                         ; $6585: $05
    ld bc, $0082                                  ; $6586: $01 $82 $00

jr_0f6_6589:
    ld bc, $0005                                  ; $6589: $01 $05 $00
    sub a                                         ; $658c: $97
    ld [de], a                                    ; $658d: $12
    nop                                           ; $658e: $00
    inc de                                        ; $658f: $13
    nop                                           ; $6590: $00
    ld a, [hl+]                                   ; $6591: $2a
    ld [$09b1], sp                                ; $6592: $08 $b1 $09
    ld [de], a                                    ; $6595: $12
    nop                                           ; $6596: $00
    add hl, bc                                    ; $6597: $09
    ld [$0054], sp                                ; $6598: $08 $54 $00
    dec c                                         ; $659b: $0d
    ld [$0115], sp                                ; $659c: $08 $15 $01
    ld c, $00                                     ; $659f: $0e $00
    inc bc                                        ; $65a1: $03
    inc b                                         ; $65a2: $04
    ld [$0003], sp                                ; $65a3: $08 $03 $00
    rlc d                                         ; $65a6: $cb $02
    nop                                           ; $65a8: $00
    ld [$1800], sp                                ; $65a9: $08 $00 $18
    nop                                           ; $65ac: $00
    ld b, b                                       ; $65ad: $40
    nop                                           ; $65ae: $00
    ld b, [hl]                                    ; $65af: $46
    nop                                           ; $65b0: $00
    dec b                                         ; $65b1: $05
    nop                                           ; $65b2: $00
    ld sp, $a611                                  ; $65b3: $31 $11 $a6
    sub e                                         ; $65b6: $93
    ld [$9102], sp                                ; $65b7: $08 $02 $91
    nop                                           ; $65ba: $00
    sub d                                         ; $65bb: $92
    jr nc, jr_0f6_6589                            ; $65bc: $30 $cb

    ld hl, $404a                                  ; $65be: $21 $4a $40
    or l                                          ; $65c1: $b5
    inc b                                         ; $65c2: $04
    db $db                                        ; $65c3: $db
    inc c                                         ; $65c4: $0c
    ld d, d                                       ; $65c5: $52
    nop                                           ; $65c6: $00
    ld [$0800], sp                                ; $65c7: $08 $00 $08
    nop                                           ; $65ca: $00
    inc l                                         ; $65cb: $2c
    nop                                           ; $65cc: $00
    dec c                                         ; $65cd: $0d
    jr nz, jr_0f6_6621                            ; $65ce: $20 $51

    nop                                           ; $65d0: $00
    jr z, jr_0f6_65db                             ; $65d1: $28 $08

    ld [hl], h                                    ; $65d3: $74
    ld b, b                                       ; $65d4: $40
    jr jr_0f6_65d7                                ; $65d5: $18 $00

jr_0f6_65d7:
    ld e, b                                       ; $65d7: $58
    ld d, b                                       ; $65d8: $50
    inc l                                         ; $65d9: $2c
    nop                                           ; $65da: $00

jr_0f6_65db:
    ld d, h                                       ; $65db: $54
    nop                                           ; $65dc: $00
    ld b, h                                       ; $65dd: $44
    ld b, b                                       ; $65de: $40
    ld [$6000], sp                                ; $65df: $08 $00 $60
    nop                                           ; $65e2: $00
    ret nz                                        ; $65e3: $c0

    nop                                           ; $65e4: $00
    add b                                         ; $65e5: $80
    inc b                                         ; $65e6: $04
    dec sp                                        ; $65e7: $3b
    nop                                           ; $65e8: $00
    ld d, $14                                     ; $65e9: $16 $14
    ld a, [hl+]                                   ; $65eb: $2a
    ld l, [hl]                                    ; $65ec: $6e
    ld [hl], c                                    ; $65ed: $71
    pop de                                        ; $65ee: $d1
    rst $38                                       ; $65ef: $ff
    db $fc                                        ; $65f0: $fc
    rst $38                                       ; $65f1: $ff
    ld [bc], a                                    ; $65f2: $02
    ccf                                           ; $65f3: $3f
    inc de                                        ; $65f4: $13
    nop                                           ; $65f5: $00
    adc e                                         ; $65f6: $8b
    ret nz                                        ; $65f7: $c0

    nop                                           ; $65f8: $00
    ld h, b                                       ; $65f9: $60
    ld b, b                                       ; $65fa: $40
    and b                                         ; $65fb: $a0
    ld h, [hl]                                    ; $65fc: $66
    sbc [hl]                                      ; $65fd: $9e
    sub e                                         ; $65fe: $93
    rst $38                                       ; $65ff: $ff
    rst $28                                       ; $6600: $ef
    rst $38                                       ; $6601: $ff
    ld [bc], a                                    ; $6602: $02
    db $fc                                        ; $6603: $fc
    ld [de], a                                    ; $6604: $12
    nop                                           ; $6605: $00
    rst $38                                       ; $6606: $ff
    dec c                                         ; $6607: $0d
    inc b                                         ; $6608: $04
    push af                                       ; $6609: $f5
    inc c                                         ; $660a: $0c
    di                                            ; $660b: $f3
    inc b                                         ; $660c: $04
    pop af                                        ; $660d: $f1
    push af                                       ; $660e: $f5
    pop af                                        ; $660f: $f1
    db $fd                                        ; $6610: $fd
    di                                            ; $6611: $f3
    inc b                                         ; $6612: $04
    ld bc, $82fc                                  ; $6613: $01 $fc $82
    nop                                           ; $6616: $00
    ld bc, $0005                                  ; $6617: $01 $05 $00
    sub a                                         ; $661a: $97
    ld [de], a                                    ; $661b: $12
    ld [bc], a                                    ; $661c: $02
    dec d                                         ; $661d: $15
    nop                                           ; $661e: $00
    cpl                                           ; $661f: $2f
    add hl, bc                                    ; $6620: $09

jr_0f6_6621:
    or b                                          ; $6621: $b0
    ld bc, $001a                                  ; $6622: $01 $1a $00

jr_0f6_6625:
    add hl, bc                                    ; $6625: $09
    ld [$0054], sp                                ; $6626: $08 $54 $00
    dec c                                         ; $6629: $0d
    add hl, bc                                    ; $662a: $09
    inc d                                         ; $662b: $14
    nop                                           ; $662c: $00
    dec bc                                        ; $662d: $0b
    nop                                           ; $662e: $00
    inc bc                                        ; $662f: $03
    nop                                           ; $6630: $00
    inc d                                         ; $6631: $14
    inc bc                                        ; $6632: $03
    nop                                           ; $6633: $00
    push bc                                       ; $6634: $c5
    ld [bc], a                                    ; $6635: $02
    nop                                           ; $6636: $00
    ld [$1800], sp                                ; $6637: $08 $00 $18
    nop                                           ; $663a: $00
    ld b, b                                       ; $663b: $40
    nop                                           ; $663c: $00
    halt                                          ; $663d: $76
    nop                                           ; $663e: $00
    dec l                                         ; $663f: $2d
    ld hl, $02d8                                  ; $6640: $21 $d8 $02
    or l                                          ; $6643: $b5
    ld de, $00aa                                  ; $6644: $11 $aa $00
    or e                                          ; $6647: $b3
    db $10                                        ; $6648: $10
    xor b                                         ; $6649: $a8
    jr nz, jr_0f6_6625                            ; $664a: $20 $d9

    ld bc, $006a                                  ; $664c: $01 $6a $00
    inc h                                         ; $664f: $24
    inc b                                         ; $6650: $04
    ld e, d                                       ; $6651: $5a
    nop                                           ; $6652: $00
    ld [de], a                                    ; $6653: $12
    nop                                           ; $6654: $00
    ld [$0800], sp                                ; $6655: $08 $00 $08
    nop                                           ; $6658: $00
    inc l                                         ; $6659: $2c
    nop                                           ; $665a: $00
    dec c                                         ; $665b: $0d
    nop                                           ; $665c: $00
    ld [hl], c                                    ; $665d: $71
    nop                                           ; $665e: $00
    jr z, jr_0f6_6669                             ; $665f: $28 $08

    ld [hl], h                                    ; $6661: $74
    nop                                           ; $6662: $00
    jr jr_0f6_6665                                ; $6663: $18 $00

jr_0f6_6665:
    ld e, b                                       ; $6665: $58
    ld c, b                                       ; $6666: $48
    inc [hl]                                      ; $6667: $34
    nop                                           ; $6668: $00

jr_0f6_6669:
    ld d, h                                       ; $6669: $54
    nop                                           ; $666a: $00
    inc b                                         ; $666b: $04
    nop                                           ; $666c: $00
    ld e, b                                       ; $666d: $58
    nop                                           ; $666e: $00
    ld b, b                                       ; $666f: $40
    nop                                           ; $6670: $00
    stop                                          ; $6671: $10 $00
    add b                                         ; $6673: $80
    nop                                           ; $6674: $00
    adc b                                         ; $6675: $88
    nop                                           ; $6676: $00
    add b                                         ; $6677: $80
    nop                                           ; $6678: $00
    ld h, l                                       ; $6679: $65
    ld a, [de]                                    ; $667a: $1a
    nop                                           ; $667b: $00
    rst $38                                       ; $667c: $ff
    dec c                                         ; $667d: $0d
    inc b                                         ; $667e: $04
    push af                                       ; $667f: $f5
    inc c                                         ; $6680: $0c
    di                                            ; $6681: $f3
    inc b                                         ; $6682: $04
    rst $28                                       ; $6683: $ef
    push af                                       ; $6684: $f5
    rst $28                                       ; $6685: $ef
    db $fd                                        ; $6686: $fd
    pop af                                        ; $6687: $f1
    inc b                                         ; $6688: $04
    rst $38                                       ; $6689: $ff
    ld sp, hl                                     ; $668a: $f9
    add d                                         ; $668b: $82
    nop                                           ; $668c: $00
    ld bc, $0005                                  ; $668d: $01 $05 $00
    sub e                                         ; $6690: $93
    ld [de], a                                    ; $6691: $12
    ld [bc], a                                    ; $6692: $02
    dec d                                         ; $6693: $15
    ld [bc], a                                    ; $6694: $02
    dec l                                         ; $6695: $2d
    ld [$01b1], sp                                ; $6696: $08 $b1 $01
    ld a, [de]                                    ; $6699: $1a
    nop                                           ; $669a: $00
    add hl, bc                                    ; $669b: $09
    ld [$0854], sp                                ; $669c: $08 $54 $08
    dec b                                         ; $669f: $05
    ld [$0015], sp                                ; $66a0: $08 $15 $00
    ld a, [bc]                                    ; $66a3: $0a
    inc bc                                        ; $66a4: $03
    nop                                           ; $66a5: $00
    add c                                         ; $66a6: $81
    inc d                                         ; $66a7: $14
    inc bc                                        ; $66a8: $03
    nop                                           ; $66a9: $00
    cp e                                          ; $66aa: $bb
    ld [bc], a                                    ; $66ab: $02
    nop                                           ; $66ac: $00
    ld [$1800], sp                                ; $66ad: $08 $00 $18
    nop                                           ; $66b0: $00
    ld b, b                                       ; $66b1: $40
    nop                                           ; $66b2: $00
    halt                                          ; $66b3: $76
    nop                                           ; $66b4: $00
    dec l                                         ; $66b5: $2d
    db $10                                        ; $66b6: $10
    jp hl                                         ; $66b7: $e9


    ld de, $11a6                                  ; $66b8: $11 $a6 $11
    xor d                                         ; $66bb: $aa
    nop                                           ; $66bc: $00
    or e                                          ; $66bd: $b3
    sub b                                         ; $66be: $90
    jr z, jr_0f6_66e2                             ; $66bf: $28 $21

    sbc b                                         ; $66c1: $98
    ld bc, $006a                                  ; $66c2: $01 $6a $00
    inc h                                         ; $66c5: $24
    inc b                                         ; $66c6: $04
    ld e, b                                       ; $66c7: $58
    nop                                           ; $66c8: $00
    stop                                          ; $66c9: $10 $00
    ld [$0800], sp                                ; $66cb: $08 $00 $08
    nop                                           ; $66ce: $00
    inc l                                         ; $66cf: $2c
    ld [$0005], sp                                ; $66d0: $08 $05 $00
    ld [hl], c                                    ; $66d3: $71
    nop                                           ; $66d4: $00
    jr z, jr_0f6_66df                             ; $66d5: $28 $08

    ld [hl], h                                    ; $66d7: $74
    ld [$0010], sp                                ; $66d8: $08 $10 $00
    ld e, b                                       ; $66db: $58
    ld d, b                                       ; $66dc: $50
    inc l                                         ; $66dd: $2c
    nop                                           ; $66de: $00

jr_0f6_66df:
    ld d, h                                       ; $66df: $54
    nop                                           ; $66e0: $00
    inc b                                         ; $66e1: $04

jr_0f6_66e2:
    nop                                           ; $66e2: $00
    ld e, b                                       ; $66e3: $58
    nop                                           ; $66e4: $00
    ld b, b                                       ; $66e5: $40
    dec b                                         ; $66e6: $05
    nop                                           ; $66e7: $00
    add c                                         ; $66e8: $81
    add c                                         ; $66e9: $81
    ld e, $00                                     ; $66ea: $1e $00
    rst $38                                       ; $66ec: $ff
    dec c                                         ; $66ed: $0d
    inc b                                         ; $66ee: $04
    push af                                       ; $66ef: $f5
    inc c                                         ; $66f0: $0c
    di                                            ; $66f1: $f3
    inc b                                         ; $66f2: $04
    db $ec                                        ; $66f3: $ec
    rst $30                                       ; $66f4: $f7
    ld [$eeff], a                                 ; $66f5: $ea $ff $ee
    inc b                                         ; $66f8: $04
    ld a, [$9afb]                                 ; $66f9: $fa $fb $9a
    nop                                           ; $66fc: $00
    inc c                                         ; $66fd: $0c
    nop                                           ; $66fe: $00
    stop                                          ; $66ff: $10 $00
    ld [$4900], sp                                ; $6701: $08 $00 $49
    nop                                           ; $6704: $00
    ld [de], a                                    ; $6705: $12
    db $10                                        ; $6706: $10
    inc l                                         ; $6707: $2c
    nop                                           ; $6708: $00
    add e                                         ; $6709: $83
    nop                                           ; $670a: $00
    ld [bc], a                                    ; $670b: $02
    nop                                           ; $670c: $00
    inc b                                         ; $670d: $04
    nop                                           ; $670e: $00
    ld d, d                                       ; $670f: $52
    nop                                           ; $6710: $00
    db $10                                        ; $6711: $10
    jr nz, @+$12                                  ; $6712: $20 $10

    nop                                           ; $6714: $00
    ld hl, $0003                                  ; $6715: $21 $03 $00
    add c                                         ; $6718: $81
    ld b, b                                       ; $6719: $40
    inc bc                                        ; $671a: $03
    nop                                           ; $671b: $00
    sbc e                                         ; $671c: $9b
    jr nz, jr_0f6_671f                            ; $671d: $20 $00

jr_0f6_671f:
    ld b, b                                       ; $671f: $40
    nop                                           ; $6720: $00
    jr z, jr_0f6_6723                             ; $6721: $28 $00

jr_0f6_6723:
    ld hl, $5220                                  ; $6723: $21 $20 $52
    nop                                           ; $6726: $00
    ld hl, $5900                                  ; $6727: $21 $00 $59
    db $10                                        ; $672a: $10
    and b                                         ; $672b: $a0
    nop                                           ; $672c: $00
    add l                                         ; $672d: $85
    nop                                           ; $672e: $00
    ld c, l                                       ; $672f: $4d
    ld b, c                                       ; $6730: $41
    xor d                                         ; $6731: $aa
    nop                                           ; $6732: $00
    ld b, l                                       ; $6733: $45
    nop                                           ; $6734: $00
    jr nz, jr_0f6_6737                            ; $6735: $20 $00

jr_0f6_6737:
    add c                                         ; $6737: $81
    inc bc                                        ; $6738: $03
    nop                                           ; $6739: $00
    adc h                                         ; $673a: $8c
    sub b                                         ; $673b: $90
    nop                                           ; $673c: $00
    ld [$0800], sp                                ; $673d: $08 $00 $08
    nop                                           ; $6740: $00
    inc c                                         ; $6741: $0c
    nop                                           ; $6742: $00
    dec c                                         ; $6743: $0d
    nop                                           ; $6744: $00
    ld bc, $0200                                  ; $6745: $01 $00 $02
    ld [$1489], sp                                ; $6748: $08 $89 $14
    nop                                           ; $674b: $00
    ld [$1000], sp                                ; $674c: $08 $00 $10
    nop                                           ; $674f: $00
    stop                                          ; $6750: $10 $00
    inc b                                         ; $6752: $04
    inc bc                                        ; $6753: $03
    nop                                           ; $6754: $00
    add c                                         ; $6755: $81
    ld b, b                                       ; $6756: $40
    rlca                                          ; $6757: $07
    nop                                           ; $6758: $00
    add c                                         ; $6759: $81
    dec b                                         ; $675a: $05
    ld e, $00                                     ; $675b: $1e $00
    rst $38                                       ; $675d: $ff
    dec bc                                        ; $675e: $0b
    inc bc                                        ; $675f: $03
    push af                                       ; $6760: $f5
    inc c                                         ; $6761: $0c
    di                                            ; $6762: $f3
    inc b                                         ; $6763: $04
    add sp, -$09                                  ; $6764: $e8 $f7
    add sp, -$01                                  ; $6766: $e8 $ff
    add sp, $04                                   ; $6768: $e8 $04
    dec b                                         ; $676a: $05
    nop                                           ; $676b: $00
    xor a                                         ; $676c: $af
    inc c                                         ; $676d: $0c
    nop                                           ; $676e: $00
    stop                                          ; $676f: $10 $00
    ld [$4900], sp                                ; $6771: $08 $00 $49
    nop                                           ; $6774: $00
    ld [de], a                                    ; $6775: $12
    db $10                                        ; $6776: $10
    inc l                                         ; $6777: $2c
    ld [bc], a                                    ; $6778: $02
    sub c                                         ; $6779: $91
    nop                                           ; $677a: $00
    ld [bc], a                                    ; $677b: $02
    nop                                           ; $677c: $00
    jr nz, jr_0f6_677f                            ; $677d: $20 $00

jr_0f6_677f:
    ld [bc], a                                    ; $677f: $02
    nop                                           ; $6780: $00
    stop                                          ; $6781: $10 $00
    ld [$0900], sp                                ; $6783: $08 $00 $09
    nop                                           ; $6786: $00
    jr nz, jr_0f6_6789                            ; $6787: $20 $00

jr_0f6_6789:
    jr nz, jr_0f6_678b                            ; $6789: $20 $00

jr_0f6_678b:
    ld b, b                                       ; $678b: $40
    nop                                           ; $678c: $00
    inc l                                         ; $678d: $2c
    nop                                           ; $678e: $00
    ld hl, $5220                                  ; $678f: $21 $20 $52
    nop                                           ; $6792: $00
    dec h                                         ; $6793: $25
    nop                                           ; $6794: $00
    ld e, c                                       ; $6795: $59
    db $10                                        ; $6796: $10
    and b                                         ; $6797: $a0
    nop                                           ; $6798: $00
    dec b                                         ; $6799: $05
    nop                                           ; $679a: $00
    dec c                                         ; $679b: $0d
    inc bc                                        ; $679c: $03
    nop                                           ; $679d: $00
    add c                                         ; $679e: $81
    ld b, h                                       ; $679f: $44
    inc bc                                        ; $67a0: $03
    nop                                           ; $67a1: $00
    add c                                         ; $67a2: $81
    jr nz, @+$0f                                  ; $67a3: $20 $0d

    nop                                           ; $67a5: $00
    add d                                         ; $67a6: $82
    ld [$0200], sp                                ; $67a7: $08 $00 $02
    ld [$0486], sp                                ; $67aa: $08 $86 $04
    ld [$0005], sp                                ; $67ad: $08 $05 $00
    ld bc, $0200                                  ; $67b0: $01 $00 $02
    ld [$1083], sp                                ; $67b3: $08 $83 $10
    nop                                           ; $67b6: $00
    ld [$0003], sp                                ; $67b7: $08 $03 $00
    add c                                         ; $67ba: $81
    db $10                                        ; $67bb: $10
    inc b                                         ; $67bc: $04
    nop                                           ; $67bd: $00
    rst $38                                       ; $67be: $ff
    dec c                                         ; $67bf: $0d
    inc b                                         ; $67c0: $04
    push af                                       ; $67c1: $f5
    inc c                                         ; $67c2: $0c
    di                                            ; $67c3: $f3
    inc b                                         ; $67c4: $04
    add sp, -$09                                  ; $67c5: $e8 $f7
    and $ff                                       ; $67c7: $e6 $ff
    db $eb                                        ; $67c9: $eb
    inc b                                         ; $67ca: $04
    or $fb                                        ; $67cb: $f6 $fb
    adc [hl]                                      ; $67cd: $8e
    nop                                           ; $67ce: $00
    inc c                                         ; $67cf: $0c
    nop                                           ; $67d0: $00
    stop                                          ; $67d1: $10 $00
    ld [$4900], sp                                ; $67d3: $08 $00 $49
    nop                                           ; $67d6: $00
    ld [de], a                                    ; $67d7: $12
    jr jr_0f6_67fe                                ; $67d8: $18 $24

    inc bc                                        ; $67da: $03
    add b                                         ; $67db: $80
    dec b                                         ; $67dc: $05
    nop                                           ; $67dd: $00
    add e                                         ; $67de: $83
    ld [bc], a                                    ; $67df: $02
    nop                                           ; $67e0: $00
    db $10                                        ; $67e1: $10
    inc bc                                        ; $67e2: $03
    nop                                           ; $67e3: $00
    add c                                         ; $67e4: $81
    ld hl, $0003                                  ; $67e5: $21 $03 $00
    add c                                         ; $67e8: $81
    ld b, b                                       ; $67e9: $40
    inc bc                                        ; $67ea: $03
    nop                                           ; $67eb: $00
    adc l                                         ; $67ec: $8d
    jr nz, jr_0f6_67ef                            ; $67ed: $20 $00

jr_0f6_67ef:
    ld b, b                                       ; $67ef: $40
    nop                                           ; $67f0: $00
    jr nz, jr_0f6_67f3                            ; $67f1: $20 $00

jr_0f6_67f3:
    ld hl, $5220                                  ; $67f3: $21 $20 $52
    nop                                           ; $67f6: $00
    jr nz, jr_0f6_67f9                            ; $67f7: $20 $00

jr_0f6_67f9:
    ld [$0003], sp                                ; $67f9: $08 $03 $00
    add c                                         ; $67fc: $81
    inc b                                         ; $67fd: $04

jr_0f6_67fe:
    rrca                                          ; $67fe: $0f
    nop                                           ; $67ff: $00
    adc c                                         ; $6800: $89
    ld [$0400], sp                                ; $6801: $08 $00 $04
    nop                                           ; $6804: $00
    ld [$0100], sp                                ; $6805: $08 $00 $01
    nop                                           ; $6808: $00
    ld [$0017], sp                                ; $6809: $08 $17 $00
    add c                                         ; $680c: $81
    ld bc, $001e                                  ; $680d: $01 $1e $00
    rst $38                                       ; $6810: $ff
    rlca                                          ; $6811: $07
    ld bc, $03fd                                  ; $6812: $01 $fd $03
    di                                            ; $6815: $f3
    nop                                           ; $6816: $00
    ei                                            ; $6817: $fb
    ei                                            ; $6818: $fb
    ld [bc], a                                    ; $6819: $02
    inc b                                         ; $681a: $04
    add [hl]                                      ; $681b: $86
    ld a, [bc]                                    ; $681c: $0a
    ld c, $16                                     ; $681d: $0e $16
    ld e, $0d                                     ; $681f: $1e $0d
    rrca                                          ; $6821: $0f
    ld [bc], a                                    ; $6822: $02
    ld c, $02                                     ; $6823: $0e $02
    ld b, $14                                     ; $6825: $06 $14
    nop                                           ; $6827: $00
    rst $38                                       ; $6828: $ff
    rlca                                          ; $6829: $07
    ld bc, $03fd                                  ; $682a: $01 $fd $03
    di                                            ; $682d: $f3
    nop                                           ; $682e: $00
    ld hl, sp-$04                                 ; $682f: $f8 $fc
    ld [bc], a                                    ; $6831: $02
    ld [$1484], sp                                ; $6832: $08 $84 $14
    inc e                                         ; $6835: $1c
    inc d                                         ; $6836: $14
    inc e                                         ; $6837: $1c
    ld [bc], a                                    ; $6838: $02
    ld [$3a02], sp                                ; $6839: $08 $02 $3a
    add [hl]                                      ; $683c: $86
    ld c, l                                       ; $683d: $4d
    ld a, a                                       ; $683e: $7f
    ld a, [hl+]                                   ; $683f: $2a
    ld a, $3a                                     ; $6840: $3e $3a
    ld a, $02                                     ; $6842: $3e $02
    inc e                                         ; $6844: $1c
    ld c, $00                                     ; $6845: $0e $00
    rst $38                                       ; $6847: $ff
    rlca                                          ; $6848: $07
    ld bc, $03fd                                  ; $6849: $01 $fd $03
    di                                            ; $684c: $f3
    nop                                           ; $684d: $00
    db $f4                                        ; $684e: $f4
    db $fc                                        ; $684f: $fc
    ld [bc], a                                    ; $6850: $02
    ld [$1c87], sp                                ; $6851: $08 $87 $1c
    inc d                                         ; $6854: $14
    inc e                                         ; $6855: $1c
    inc d                                         ; $6856: $14
    inc e                                         ; $6857: $1c
    inc d                                         ; $6858: $14
    nop                                           ; $6859: $00
    rlca                                          ; $685a: $07
    ld [$3a02], sp                                ; $685b: $08 $02 $3a
    add [hl]                                      ; $685e: $86
    ld c, l                                       ; $685f: $4d
    ld a, a                                       ; $6860: $7f
    ld a, [hl+]                                   ; $6861: $2a
    ld a, $3a                                     ; $6862: $3e $3a
    ld a, $02                                     ; $6864: $3e $02
    inc e                                         ; $6866: $1c
    ld b, $00                                     ; $6867: $06 $00
    rst $38                                       ; $6869: $ff
    rlca                                          ; $686a: $07
    ld bc, $03fd                                  ; $686b: $01 $fd $03
    di                                            ; $686e: $f3
    nop                                           ; $686f: $00
    di                                            ; $6870: $f3
    db $fc                                        ; $6871: $fc
    ld [bc], a                                    ; $6872: $02
    inc d                                         ; $6873: $14
    add l                                         ; $6874: $85
    ld a, $2a                                     ; $6875: $3e $2a
    inc a                                         ; $6877: $3c
    inc h                                         ; $6878: $24
    inc e                                         ; $6879: $1c
    ld [bc], a                                    ; $687a: $02
    inc d                                         ; $687b: $14
    add c                                         ; $687c: $81
    inc e                                         ; $687d: $1c
    ld [$0208], sp                                ; $687e: $08 $08 $02
    ld a, [hl-]                                   ; $6881: $3a
    add [hl]                                      ; $6882: $86
    ld c, l                                       ; $6883: $4d
    ld a, a                                       ; $6884: $7f
    ld a, [hl+]                                   ; $6885: $2a
    ld a, $3a                                     ; $6886: $3e $3a
    ld a, $02                                     ; $6888: $3e $02
    inc e                                         ; $688a: $1c
    inc b                                         ; $688b: $04
    nop                                           ; $688c: $00
    rst $38                                       ; $688d: $ff
    rlca                                          ; $688e: $07
    ld bc, $03fd                                  ; $688f: $01 $fd $03
    di                                            ; $6892: $f3
    nop                                           ; $6893: $00
    di                                            ; $6894: $f3
    db $fc                                        ; $6895: $fc
    adc d                                         ; $6896: $8a
    ld d, h                                       ; $6897: $54
    nop                                           ; $6898: $00
    ld a, h                                       ; $6899: $7c
    ld b, h                                       ; $689a: $44
    ld a, h                                       ; $689b: $7c
    ld d, h                                       ; $689c: $54
    ld a, h                                       ; $689d: $7c
    ld h, h                                       ; $689e: $64
    jr z, jr_0f6_68d9                             ; $689f: $28 $38

    inc b                                         ; $68a1: $04
    db $10                                        ; $68a2: $10
    inc b                                         ; $68a3: $04
    ld [$3a02], sp                                ; $68a4: $08 $02 $3a
    add [hl]                                      ; $68a7: $86
    ld c, l                                       ; $68a8: $4d
    ld a, a                                       ; $68a9: $7f
    ld a, [hl+]                                   ; $68aa: $2a
    ld a, $3a                                     ; $68ab: $3e $3a
    ld a, $02                                     ; $68ad: $3e $02
    inc e                                         ; $68af: $1c
    inc b                                         ; $68b0: $04
    nop                                           ; $68b1: $00
    rst $38                                       ; $68b2: $ff
    rlca                                          ; $68b3: $07
    ld bc, $03fd                                  ; $68b4: $01 $fd $03
    di                                            ; $68b7: $f3
    nop                                           ; $68b8: $00
    di                                            ; $68b9: $f3
    ei                                            ; $68ba: $fb
    adc d                                         ; $68bb: $8a
    dec d                                         ; $68bc: $15
    nop                                           ; $68bd: $00
    rra                                           ; $68be: $1f
    ld de, $151f                                  ; $68bf: $11 $1f $15
    rra                                           ; $68c2: $1f
    add hl, de                                    ; $68c3: $19
    ld a, [bc]                                    ; $68c4: $0a
    ld c, $0a                                     ; $68c5: $0e $0a
    inc b                                         ; $68c7: $04
    ld [bc], a                                    ; $68c8: $02
    ld c, $84                                     ; $68c9: $0e $84
    dec d                                         ; $68cb: $15
    rra                                           ; $68cc: $1f
    add hl, bc                                    ; $68cd: $09
    rrca                                          ; $68ce: $0f
    ld [bc], a                                    ; $68cf: $02
    ld c, $04                                     ; $68d0: $0e $04
    nop                                           ; $68d2: $00
    rst $38                                       ; $68d3: $ff
    rlca                                          ; $68d4: $07
    ld bc, $03fd                                  ; $68d5: $01 $fd $03
    di                                            ; $68d8: $f3

jr_0f6_68d9:
    nop                                           ; $68d9: $00
    di                                            ; $68da: $f3
    db $fc                                        ; $68db: $fc
    adc d                                         ; $68dc: $8a
    dec d                                         ; $68dd: $15
    nop                                           ; $68de: $00
    rra                                           ; $68df: $1f
    ld de, $151f                                  ; $68e0: $11 $1f $15
    rra                                           ; $68e3: $1f
    inc de                                        ; $68e4: $13
    ld a, [bc]                                    ; $68e5: $0a
    ld c, $04                                     ; $68e6: $0e $04
    inc b                                         ; $68e8: $04
    inc b                                         ; $68e9: $04
    ld [$2e02], sp                                ; $68ea: $08 $02 $2e
    add [hl]                                      ; $68ed: $86
    ld e, c                                       ; $68ee: $59
    ld a, a                                       ; $68ef: $7f
    ld a, [hl+]                                   ; $68f0: $2a
    ld a, $2e                                     ; $68f1: $3e $2e
    ld a, $02                                     ; $68f3: $3e $02
    inc e                                         ; $68f5: $1c
    inc b                                         ; $68f6: $04
    nop                                           ; $68f7: $00
    rst $38                                       ; $68f8: $ff
    rlca                                          ; $68f9: $07
    ld bc, $03fd                                  ; $68fa: $01 $fd $03
    di                                            ; $68fd: $f3
    nop                                           ; $68fe: $00
    di                                            ; $68ff: $f3
    db $fc                                        ; $6900: $fc
    adc d                                         ; $6901: $8a
    inc e                                         ; $6902: $1c
    nop                                           ; $6903: $00
    ld a, $00                                     ; $6904: $3e $00
    ld a, a                                       ; $6906: $7f
    ld c, c                                       ; $6907: $49
    ld a, $32                                     ; $6908: $3e $32
    inc d                                         ; $690a: $14
    inc e                                         ; $690b: $1c
    ld a, [bc]                                    ; $690c: $0a
    ld [$1c02], sp                                ; $690d: $08 $02 $1c
    add h                                         ; $6910: $84
    ld a, [hl+]                                   ; $6911: $2a
    ld a, $12                                     ; $6912: $3e $12
    ld e, $02                                     ; $6914: $1e $02
    inc e                                         ; $6916: $1c
    inc b                                         ; $6917: $04
    nop                                           ; $6918: $00
    rst $38                                       ; $6919: $ff
    rlca                                          ; $691a: $07
    ld bc, $03fd                                  ; $691b: $01 $fd $03
    di                                            ; $691e: $f3
    nop                                           ; $691f: $00
    db $ec                                        ; $6920: $ec
    ei                                            ; $6921: $fb
    ld [bc], a                                    ; $6922: $02
    ld a, [bc]                                    ; $6923: $0a
    adc b                                         ; $6924: $88
    ld bc, $1407                                  ; $6925: $01 $07 $14
    ld a, [de]                                    ; $6928: $1a
    ld bc, $080d                                  ; $6929: $01 $0d $08
    ld c, $02                                     ; $692c: $0e $02
    inc b                                         ; $692e: $04
    inc d                                         ; $692f: $14
    nop                                           ; $6930: $00
    rst $38                                       ; $6931: $ff
    rlca                                          ; $6932: $07
    ld bc, $03fd                                  ; $6933: $01 $fd $03
    di                                            ; $6936: $f3
    nop                                           ; $6937: $00
    jp hl                                         ; $6938: $e9


    ei                                            ; $6939: $fb
    add c                                         ; $693a: $81
    nop                                           ; $693b: $00
    ld [bc], a                                    ; $693c: $02

jr_0f6_693d:
    ld [bc], a                                    ; $693d: $02
    adc a                                         ; $693e: $8f
    dec b                                         ; $693f: $05
    db $10                                        ; $6940: $10
    dec e                                         ; $6941: $1d
    ld bc, $140f                                  ; $6942: $01 $0f $14
    ld a, [de]                                    ; $6945: $1a
    ld bc, $0a07                                  ; $6946: $01 $07 $0a
    ld c, $00                                     ; $6949: $0e $00
    ld c, $00                                     ; $694b: $0e $00
    inc c                                         ; $694d: $0c
    ld c, $00                                     ; $694e: $0e $00
    rst $38                                       ; $6950: $ff
    rlca                                          ; $6951: $07
    ld bc, $03fd                                  ; $6952: $01 $fd $03
    di                                            ; $6955: $f3
    nop                                           ; $6956: $00
    rst $20                                       ; $6957: $e7
    db $fd                                        ; $6958: $fd
    add c                                         ; $6959: $81
    nop                                           ; $695a: $00
    ld [bc], a                                    ; $695b: $02
    ld [$1493], sp                                ; $695c: $08 $93 $14
    ld b, b                                       ; $695f: $40
    ld e, h                                       ; $6960: $5c
    ld bc, $2429                                  ; $6961: $01 $29 $24
    inc e                                         ; $6964: $1c
    add b                                         ; $6965: $80
    call c, $5e0a                                 ; $6966: $dc $0a $5e
    jr nz, @+$32                                  ; $6969: $20 $30

    inc b                                         ; $696b: $04
    jr jr_0f6_697e                                ; $696c: $18 $10

    jr z, jr_0f6_6978                             ; $696e: $28 $08

    jr jr_0f6_697c                                ; $6970: $18 $0a

    nop                                           ; $6972: $00
    rst $38                                       ; $6973: $ff
    rlca                                          ; $6974: $07
    ld bc, $03fd                                  ; $6975: $01 $fd $03

jr_0f6_6978:
    di                                            ; $6978: $f3
    nop                                           ; $6979: $00
    and $fd                                       ; $697a: $e6 $fd

jr_0f6_697c:
    add c                                         ; $697c: $81
    nop                                           ; $697d: $00

jr_0f6_697e:
    ld [bc], a                                    ; $697e: $02
    db $10                                        ; $697f: $10
    sub e                                         ; $6980: $93
    inc h                                         ; $6981: $24
    ld b, c                                       ; $6982: $41
    ld e, l                                       ; $6983: $5d
    nop                                           ; $6984: $00
    jr nc, jr_0f6_69a9                            ; $6985: $30 $22

    ld a, [de]                                    ; $6987: $1a
    add h                                         ; $6988: $84
    add sp, $2a                                   ; $6989: $e8 $2a
    ld a, [hl]                                    ; $698b: $7e
    nop                                           ; $698c: $00
    jr c, jr_0f6_698f                             ; $698d: $38 $00

jr_0f6_698f:
    inc a                                         ; $698f: $3c
    db $10                                        ; $6990: $10
    jr nz, @+$0a                                  ; $6991: $20 $08

    jr jr_0f6_6997                                ; $6993: $18 $02

    jr nz, jr_0f6_699f                            ; $6995: $20 $08

jr_0f6_6997:
    nop                                           ; $6997: $00
    rst $38                                       ; $6998: $ff
    rlca                                          ; $6999: $07
    ld bc, $03fd                                  ; $699a: $01 $fd $03
    di                                            ; $699d: $f3
    nop                                           ; $699e: $00

jr_0f6_699f:
    push hl                                       ; $699f: $e5
    db $fd                                        ; $69a0: $fd
    sub [hl]                                      ; $69a1: $96
    nop                                           ; $69a2: $00
    db $10                                        ; $69a3: $10
    sub b                                         ; $69a4: $90
    and h                                         ; $69a5: $a4
    ld bc, $0809                                  ; $69a6: $01 $09 $08

jr_0f6_69a9:
    jr nz, jr_0f6_69cd                            ; $69a9: $20 $22

    ld e, d                                       ; $69ab: $5a
    adc b                                         ; $69ac: $88
    db $ec                                        ; $69ad: $ec
    ld [hl+], a                                   ; $69ae: $22
    ld [hl], $00                                  ; $69af: $36 $00
    jr @+$12                                      ; $69b1: $18 $10

    inc l                                         ; $69b3: $2c
    nop                                           ; $69b4: $00
    db $10                                        ; $69b5: $10
    ld [$0218], sp                                ; $69b6: $08 $18 $02
    jr nz, jr_0f6_693d                            ; $69b9: $20 $82

    nop                                           ; $69bb: $00
    db $10                                        ; $69bc: $10
    ld b, $00                                     ; $69bd: $06 $00
    rst $38                                       ; $69bf: $ff
    rlca                                          ; $69c0: $07
    ld bc, $03fd                                  ; $69c1: $01 $fd $03
    di                                            ; $69c4: $f3
    nop                                           ; $69c5: $00
    and $fb                                       ; $69c6: $e6 $fb
    add c                                         ; $69c8: $81
    ld [bc], a                                    ; $69c9: $02
    ld [bc], a                                    ; $69ca: $02
    nop                                           ; $69cb: $00
    ld [bc], a                                    ; $69cc: $02

jr_0f6_69cd:
    ld [$1687], sp                                ; $69cd: $08 $87 $16
    ld [bc], a                                    ; $69d0: $02
    dec bc                                        ; $69d1: $0b
    nop                                           ; $69d2: $00
    dec b                                         ; $69d3: $05
    db $10                                        ; $69d4: $10
    ld d, $03                                     ; $69d5: $16 $03
    nop                                           ; $69d7: $00
    add c                                         ; $69d8: $81
    inc b                                         ; $69d9: $04
    stop                                          ; $69da: $10 $00
    rst $38                                       ; $69dc: $ff
    rlca                                          ; $69dd: $07
    ld bc, $0cf5                                  ; $69de: $01 $f5 $0c
    push af                                       ; $69e1: $f5
    dec bc                                        ; $69e2: $0b
    rst $28                                       ; $69e3: $ef
    ld a, [bc]                                    ; $69e4: $0a
    ld [bc], a                                    ; $69e5: $02
    inc a                                         ; $69e6: $3c
    adc h                                         ; $69e7: $8c
    ld d, d                                       ; $69e8: $52
    ld a, [hl]                                    ; $69e9: $7e
    xor c                                         ; $69ea: $a9
    rst $30                                       ; $69eb: $f7
    db $dd                                        ; $69ec: $dd
    db $e3                                        ; $69ed: $e3
    xor c                                         ; $69ee: $a9
    rst $30                                       ; $69ef: $f7
    push de                                       ; $69f0: $d5
    rst $38                                       ; $69f1: $ff
    ld l, d                                       ; $69f2: $6a
    ld a, [hl]                                    ; $69f3: $7e
    ld [bc], a                                    ; $69f4: $02
    inc a                                         ; $69f5: $3c
    stop                                          ; $69f6: $10 $00
    rst $38                                       ; $69f8: $ff
    rlca                                          ; $69f9: $07
    ld bc, $0cf5                                  ; $69fa: $01 $f5 $0c
    push af                                       ; $69fd: $f5
    dec bc                                        ; $69fe: $0b
    db $eb                                        ; $69ff: $eb
    db $fd                                        ; $6a00: $fd
    ld [bc], a                                    ; $6a01: $02
    inc a                                         ; $6a02: $3c
    adc h                                         ; $6a03: $8c
    ld d, d                                       ; $6a04: $52
    ld a, [hl]                                    ; $6a05: $7e
    xor c                                         ; $6a06: $a9
    rst $30                                       ; $6a07: $f7
    db $dd                                        ; $6a08: $dd
    db $e3                                        ; $6a09: $e3
    xor c                                         ; $6a0a: $a9
    rst $30                                       ; $6a0b: $f7
    push de                                       ; $6a0c: $d5
    rst $38                                       ; $6a0d: $ff
    ld l, d                                       ; $6a0e: $6a
    ld a, [hl]                                    ; $6a0f: $7e
    ld [bc], a                                    ; $6a10: $02
    inc a                                         ; $6a11: $3c
    stop                                          ; $6a12: $10 $00
    rst $38                                       ; $6a14: $ff
    add hl, bc                                    ; $6a15: $09
    ld [bc], a                                    ; $6a16: $02
    push af                                       ; $6a17: $f5
    inc c                                         ; $6a18: $0c
    push af                                       ; $6a19: $f5
    dec bc                                        ; $6a1a: $0b
    ldh a, [$f0]                                  ; $6a1b: $f0 $f0
    ldh a, [$09]                                  ; $6a1d: $f0 $09
    ld [bc], a                                    ; $6a1f: $02
    nop                                           ; $6a20: $00
    ld [bc], a                                    ; $6a21: $02
    inc a                                         ; $6a22: $3c
    adc h                                         ; $6a23: $8c
    ld b, d                                       ; $6a24: $42
    ld a, [hl]                                    ; $6a25: $7e
    sub l                                         ; $6a26: $95
    rst $28                                       ; $6a27: $ef
    cp e                                          ; $6a28: $bb
    rst $00                                       ; $6a29: $c7
    push de                                       ; $6a2a: $d5
    rst $28                                       ; $6a2b: $ef
    xor e                                         ; $6a2c: $ab
    rst $38                                       ; $6a2d: $ff
    ld d, [hl]                                    ; $6a2e: $56
    ld a, [hl]                                    ; $6a2f: $7e
    ld [bc], a                                    ; $6a30: $02
    inc a                                         ; $6a31: $3c
    ld c, $00                                     ; $6a32: $0e $00
    ld [bc], a                                    ; $6a34: $02
    inc a                                         ; $6a35: $3c
    adc h                                         ; $6a36: $8c
    ld d, d                                       ; $6a37: $52
    ld a, [hl]                                    ; $6a38: $7e
    xor c                                         ; $6a39: $a9
    rst $30                                       ; $6a3a: $f7
    db $dd                                        ; $6a3b: $dd
    db $e3                                        ; $6a3c: $e3
    xor c                                         ; $6a3d: $a9

Jump_0f6_6a3e:
    rst $30                                       ; $6a3e: $f7
    push de                                       ; $6a3f: $d5
    rst $38                                       ; $6a40: $ff
    ld l, d                                       ; $6a41: $6a
    ld a, [hl]                                    ; $6a42: $7e
    ld [bc], a                                    ; $6a43: $02
    inc a                                         ; $6a44: $3c
    stop                                          ; $6a45: $10 $00
    rst $38                                       ; $6a47: $ff
    add hl, bc                                    ; $6a48: $09
    ld [bc], a                                    ; $6a49: $02
    push af                                       ; $6a4a: $f5
    inc c                                         ; $6a4b: $0c
    push af                                       ; $6a4c: $f5
    dec bc                                        ; $6a4d: $0b
    ld a, [$ecea]                                 ; $6a4e: $fa $ea $ec
    db $fc                                        ; $6a51: $fc
    ld [bc], a                                    ; $6a52: $02
    inc a                                         ; $6a53: $3c
    adc h                                         ; $6a54: $8c
    ld l, d                                       ; $6a55: $6a
    ld a, [hl]                                    ; $6a56: $7e
    push de                                       ; $6a57: $d5
    rst $38                                       ; $6a58: $ff
    xor e                                         ; $6a59: $ab
    rst $30                                       ; $6a5a: $f7
    db $dd                                        ; $6a5b: $dd
    db $e3                                        ; $6a5c: $e3
    xor c                                         ; $6a5d: $a9
    rst $30                                       ; $6a5e: $f7
    ld b, d                                       ; $6a5f: $42
    ld a, [hl]                                    ; $6a60: $7e
    ld [bc], a                                    ; $6a61: $02
    inc a                                         ; $6a62: $3c
    stop                                          ; $6a63: $10 $00
    ld [bc], a                                    ; $6a65: $02
    inc a                                         ; $6a66: $3c
    adc h                                         ; $6a67: $8c
    ld b, d                                       ; $6a68: $42
    ld a, [hl]                                    ; $6a69: $7e
    sub l                                         ; $6a6a: $95
    rst $28                                       ; $6a6b: $ef
    cp e                                          ; $6a6c: $bb
    rst $00                                       ; $6a6d: $c7
    push de                                       ; $6a6e: $d5
    rst $28                                       ; $6a6f: $ef
    xor e                                         ; $6a70: $ab
    rst $38                                       ; $6a71: $ff
    ld d, [hl]                                    ; $6a72: $56
    ld a, [hl]                                    ; $6a73: $7e
    ld [bc], a                                    ; $6a74: $02
    inc a                                         ; $6a75: $3c
    stop                                          ; $6a76: $10 $00
    rst $38                                       ; $6a78: $ff
    add hl, bc                                    ; $6a79: $09
    ld [bc], a                                    ; $6a7a: $02
    push af                                       ; $6a7b: $f5
    inc c                                         ; $6a7c: $0c
    push af                                       ; $6a7d: $f5
    dec bc                                        ; $6a7e: $0b
    ld a, [c]                                     ; $6a7f: $f2
    rst $28                                       ; $6a80: $ef
    ld [bc], a                                    ; $6a81: $02
    ld [$3c02], a                                 ; $6a82: $ea $02 $3c
    adc h                                         ; $6a85: $8c
    ld d, [hl]                                    ; $6a86: $56
    ld a, [hl]                                    ; $6a87: $7e
    xor e                                         ; $6a88: $ab
    rst $38                                       ; $6a89: $ff
    sub l                                         ; $6a8a: $95
    rst $28                                       ; $6a8b: $ef
    cp e                                          ; $6a8c: $bb
    rst $00                                       ; $6a8d: $c7
    sub l                                         ; $6a8e: $95
    rst $28                                       ; $6a8f: $ef
    ld c, d                                       ; $6a90: $4a
    ld a, [hl]                                    ; $6a91: $7e
    ld [bc], a                                    ; $6a92: $02
    inc a                                         ; $6a93: $3c
    jr jr_0f6_6a96                                ; $6a94: $18 $00

jr_0f6_6a96:
    ld [bc], a                                    ; $6a96: $02
    inc a                                         ; $6a97: $3c
    adc h                                         ; $6a98: $8c
    ld d, d                                       ; $6a99: $52
    ld a, [hl]                                    ; $6a9a: $7e
    xor c                                         ; $6a9b: $a9
    rst $30                                       ; $6a9c: $f7
    db $dd                                        ; $6a9d: $dd
    db $e3                                        ; $6a9e: $e3
    xor c                                         ; $6a9f: $a9
    rst $30                                       ; $6aa0: $f7
    push de                                       ; $6aa1: $d5
    rst $38                                       ; $6aa2: $ff
    ld l, d                                       ; $6aa3: $6a
    ld a, [hl]                                    ; $6aa4: $7e
    ld [bc], a                                    ; $6aa5: $02
    inc a                                         ; $6aa6: $3c
    ld [$ff00], sp                                ; $6aa7: $08 $00 $ff
    add hl, bc                                    ; $6aaa: $09
    ld [bc], a                                    ; $6aab: $02
    push af                                       ; $6aac: $f5
    inc c                                         ; $6aad: $0c
    push af                                       ; $6aae: $f5
    dec bc                                        ; $6aaf: $0b
    ei                                            ; $6ab0: $fb
    jp hl                                         ; $6ab1: $e9


    dec bc                                        ; $6ab2: $0b
    ld a, [c]                                     ; $6ab3: $f2
    ld [bc], a                                    ; $6ab4: $02
    inc a                                         ; $6ab5: $3c
    adc h                                         ; $6ab6: $8c
    ld l, d                                       ; $6ab7: $6a
    ld a, [hl]                                    ; $6ab8: $7e
    push de                                       ; $6ab9: $d5
    rst $38                                       ; $6aba: $ff
    xor e                                         ; $6abb: $ab
    rst $30                                       ; $6abc: $f7
    db $dd                                        ; $6abd: $dd
    db $e3                                        ; $6abe: $e3
    xor c                                         ; $6abf: $a9
    rst $30                                       ; $6ac0: $f7
    ld b, d                                       ; $6ac1: $42
    ld a, [hl]                                    ; $6ac2: $7e
    ld [bc], a                                    ; $6ac3: $02
    inc a                                         ; $6ac4: $3c
    jr jr_0f6_6ac7                                ; $6ac5: $18 $00

jr_0f6_6ac7:
    ld [bc], a                                    ; $6ac7: $02
    inc a                                         ; $6ac8: $3c
    adc h                                         ; $6ac9: $8c
    ld b, d                                       ; $6aca: $42
    ld a, [hl]                                    ; $6acb: $7e
    sub l                                         ; $6acc: $95
    rst $28                                       ; $6acd: $ef
    cp e                                          ; $6ace: $bb
    rst $00                                       ; $6acf: $c7
    push de                                       ; $6ad0: $d5
    rst $28                                       ; $6ad1: $ef
    xor e                                         ; $6ad2: $ab
    rst $38                                       ; $6ad3: $ff
    ld d, [hl]                                    ; $6ad4: $56
    ld a, [hl]                                    ; $6ad5: $7e
    ld [bc], a                                    ; $6ad6: $02
    inc a                                         ; $6ad7: $3c
    ld [$ff00], sp                                ; $6ad8: $08 $00 $ff
    add hl, bc                                    ; $6adb: $09
    ld [bc], a                                    ; $6adc: $02
    push af                                       ; $6add: $f5
    inc c                                         ; $6ade: $0c
    push af                                       ; $6adf: $f5
    dec bc                                        ; $6ae0: $0b
    rlca                                          ; $6ae1: $07
    jp hl                                         ; $6ae2: $e9


    ld [de], a                                    ; $6ae3: $12
    rst $38                                       ; $6ae4: $ff
    ld [bc], a                                    ; $6ae5: $02
    inc a                                         ; $6ae6: $3c
    adc h                                         ; $6ae7: $8c
    ld d, d                                       ; $6ae8: $52
    ld a, [hl]                                    ; $6ae9: $7e
    xor c                                         ; $6aea: $a9
    rst $30                                       ; $6aeb: $f7
    db $dd                                        ; $6aec: $dd
    db $e3                                        ; $6aed: $e3
    xor c                                         ; $6aee: $a9
    rst $30                                       ; $6aef: $f7
    push de                                       ; $6af0: $d5
    rst $38                                       ; $6af1: $ff
    ld l, d                                       ; $6af2: $6a
    ld a, [hl]                                    ; $6af3: $7e
    ld [bc], a                                    ; $6af4: $02
    inc a                                         ; $6af5: $3c
    stop                                          ; $6af6: $10 $00
    ld [bc], a                                    ; $6af8: $02
    inc a                                         ; $6af9: $3c
    adc h                                         ; $6afa: $8c
    ld d, [hl]                                    ; $6afb: $56
    ld a, [hl]                                    ; $6afc: $7e
    xor e                                         ; $6afd: $ab
    rst $38                                       ; $6afe: $ff
    sub l                                         ; $6aff: $95
    rst $28                                       ; $6b00: $ef
    cp e                                          ; $6b01: $bb
    rst $00                                       ; $6b02: $c7
    sub l                                         ; $6b03: $95
    rst $28                                       ; $6b04: $ef
    ld c, d                                       ; $6b05: $4a
    ld a, [hl]                                    ; $6b06: $7e
    ld [bc], a                                    ; $6b07: $02
    inc a                                         ; $6b08: $3c
    stop                                          ; $6b09: $10 $00
    rst $38                                       ; $6b0b: $ff
    add hl, bc                                    ; $6b0c: $09
    ld [bc], a                                    ; $6b0d: $02
    push af                                       ; $6b0e: $f5
    inc c                                         ; $6b0f: $0c
    push af                                       ; $6b10: $f5
    dec bc                                        ; $6b11: $0b
    dec c                                         ; $6b12: $0d
    pop af                                        ; $6b13: $f1
    dec c                                         ; $6b14: $0d
    ld a, [bc]                                    ; $6b15: $0a
    ld b, $00                                     ; $6b16: $06 $00
    ld [bc], a                                    ; $6b18: $02
    inc a                                         ; $6b19: $3c
    adc h                                         ; $6b1a: $8c
    ld b, d                                       ; $6b1b: $42
    ld a, [hl]                                    ; $6b1c: $7e
    sub l                                         ; $6b1d: $95
    rst $28                                       ; $6b1e: $ef
    cp e                                          ; $6b1f: $bb
    rst $00                                       ; $6b20: $c7
    push de                                       ; $6b21: $d5
    rst $28                                       ; $6b22: $ef
    xor e                                         ; $6b23: $ab
    rst $38                                       ; $6b24: $ff
    ld d, [hl]                                    ; $6b25: $56
    ld a, [hl]                                    ; $6b26: $7e
    ld [bc], a                                    ; $6b27: $02
    inc a                                         ; $6b28: $3c
    ld a, [bc]                                    ; $6b29: $0a
    nop                                           ; $6b2a: $00
    ld [bc], a                                    ; $6b2b: $02
    inc a                                         ; $6b2c: $3c
    adc h                                         ; $6b2d: $8c
    ld l, d                                       ; $6b2e: $6a
    ld a, [hl]                                    ; $6b2f: $7e
    push de                                       ; $6b30: $d5
    rst $38                                       ; $6b31: $ff
    xor e                                         ; $6b32: $ab
    rst $30                                       ; $6b33: $f7
    db $dd                                        ; $6b34: $dd
    db $e3                                        ; $6b35: $e3
    xor c                                         ; $6b36: $a9
    rst $30                                       ; $6b37: $f7
    ld b, d                                       ; $6b38: $42
    ld a, [hl]                                    ; $6b39: $7e
    ld [bc], a                                    ; $6b3a: $02
    inc a                                         ; $6b3b: $3c
    stop                                          ; $6b3c: $10 $00
    rst $38                                       ; $6b3e: $ff
    add hl, bc                                    ; $6b3f: $09
    ld [bc], a                                    ; $6b40: $02
    push af                                       ; $6b41: $f5
    inc c                                         ; $6b42: $0c
    push af                                       ; $6b43: $f5
    dec bc                                        ; $6b44: $0b
    inc bc                                        ; $6b45: $03
    rrca                                          ; $6b46: $0f
    inc de                                        ; $6b47: $13
    cp $02                                        ; $6b48: $fe $02
    inc a                                         ; $6b4a: $3c
    adc h                                         ; $6b4b: $8c
    ld d, d                                       ; $6b4c: $52
    ld a, [hl]                                    ; $6b4d: $7e
    xor c                                         ; $6b4e: $a9
    rst $30                                       ; $6b4f: $f7
    db $dd                                        ; $6b50: $dd
    db $e3                                        ; $6b51: $e3
    xor c                                         ; $6b52: $a9
    rst $30                                       ; $6b53: $f7
    push de                                       ; $6b54: $d5
    rst $38                                       ; $6b55: $ff
    ld l, d                                       ; $6b56: $6a
    ld a, [hl]                                    ; $6b57: $7e
    ld [bc], a                                    ; $6b58: $02
    inc a                                         ; $6b59: $3c
    stop                                          ; $6b5a: $10 $00
    ld [bc], a                                    ; $6b5c: $02
    inc a                                         ; $6b5d: $3c
    adc h                                         ; $6b5e: $8c
    ld d, [hl]                                    ; $6b5f: $56
    ld a, [hl]                                    ; $6b60: $7e
    xor e                                         ; $6b61: $ab
    rst $38                                       ; $6b62: $ff
    sub l                                         ; $6b63: $95
    rst $28                                       ; $6b64: $ef
    cp e                                          ; $6b65: $bb
    rst $00                                       ; $6b66: $c7
    sub l                                         ; $6b67: $95
    rst $28                                       ; $6b68: $ef
    ld c, d                                       ; $6b69: $4a
    ld a, [hl]                                    ; $6b6a: $7e
    ld [bc], a                                    ; $6b6b: $02
    inc a                                         ; $6b6c: $3c
    stop                                          ; $6b6d: $10 $00
    rst $38                                       ; $6b6f: $ff
    add hl, bc                                    ; $6b70: $09
    ld [bc], a                                    ; $6b71: $02
    push af                                       ; $6b72: $f5
    inc c                                         ; $6b73: $0c
    push af                                       ; $6b74: $f5
    dec bc                                        ; $6b75: $0b
    ei                                            ; $6b76: $fb
    add hl, bc                                    ; $6b77: $09
    dec bc                                        ; $6b78: $0b
    add hl, bc                                    ; $6b79: $09
    adc b                                         ; $6b7a: $88
    nop                                           ; $6b7b: $00
    ld b, $07                                     ; $6b7c: $06 $07
    add hl, bc                                    ; $6b7e: $09
    rlca                                          ; $6b7f: $07
    dec bc                                        ; $6b80: $0b
    nop                                           ; $6b81: $00
    ld b, $1e                                     ; $6b82: $06 $1e
    nop                                           ; $6b84: $00
    ld [bc], a                                    ; $6b85: $02
    inc a                                         ; $6b86: $3c
    adc h                                         ; $6b87: $8c
    ld l, d                                       ; $6b88: $6a
    ld a, [hl]                                    ; $6b89: $7e
    push de                                       ; $6b8a: $d5
    rst $38                                       ; $6b8b: $ff
    xor e                                         ; $6b8c: $ab
    rst $30                                       ; $6b8d: $f7
    db $dd                                        ; $6b8e: $dd
    db $e3                                        ; $6b8f: $e3
    xor c                                         ; $6b90: $a9
    rst $30                                       ; $6b91: $f7
    ld b, d                                       ; $6b92: $42
    ld a, [hl]                                    ; $6b93: $7e
    ld [bc], a                                    ; $6b94: $02
    inc a                                         ; $6b95: $3c
    ld a, [bc]                                    ; $6b96: $0a
    nop                                           ; $6b97: $00
    rst $38                                       ; $6b98: $ff
    add hl, bc                                    ; $6b99: $09
    ld [bc], a                                    ; $6b9a: $02
    push af                                       ; $6b9b: $f5
    inc c                                         ; $6b9c: $0c
    push af                                       ; $6b9d: $f5
    dec bc                                        ; $6b9e: $0b
    rst $30                                       ; $6b9f: $f7
    ld a, [bc]                                    ; $6ba0: $0a
    inc b                                         ; $6ba1: $04
    ld c, $03                                     ; $6ba2: $0e $03
    ld h, b                                       ; $6ba4: $60
    add l                                         ; $6ba5: $85
    or b                                          ; $6ba6: $b0
    ld h, b                                       ; $6ba7: $60
    sub b                                         ; $6ba8: $90
    nop                                           ; $6ba9: $00
    ld h, b                                       ; $6baa: $60
    ld [de], a                                    ; $6bab: $12
    nop                                           ; $6bac: $00
    ld [bc], a                                    ; $6bad: $02
    inc bc                                        ; $6bae: $03
    add h                                         ; $6baf: $84
    dec b                                         ; $6bb0: $05
    rlca                                          ; $6bb1: $07
    ld a, [bc]                                    ; $6bb2: $0a
    rrca                                          ; $6bb3: $0f
    ld [bc], a                                    ; $6bb4: $02
    inc c                                         ; $6bb5: $0c
    adc h                                         ; $6bb6: $8c
    ld [bc], a                                    ; $6bb7: $02
    ld c, $09                                     ; $6bb8: $0e $09
    rlca                                          ; $6bba: $07
    db $dd                                        ; $6bbb: $dd
    db $e3                                        ; $6bbc: $e3
    xor c                                         ; $6bbd: $a9
    rst $30                                       ; $6bbe: $f7
    push de                                       ; $6bbf: $d5
    rst $38                                       ; $6bc0: $ff
    ld l, d                                       ; $6bc1: $6a
    ld a, [hl]                                    ; $6bc2: $7e
    ld [bc], a                                    ; $6bc3: $02
    inc a                                         ; $6bc4: $3c
    stop                                          ; $6bc5: $10 $00
    rst $38                                       ; $6bc7: $ff
    add hl, bc                                    ; $6bc8: $09
    ld [bc], a                                    ; $6bc9: $02
    push af                                       ; $6bca: $f5
    inc c                                         ; $6bcb: $0c
    push af                                       ; $6bcc: $f5
    dec bc                                        ; $6bcd: $0b
    push af                                       ; $6bce: $f5
    dec b                                         ; $6bcf: $05
    push af                                       ; $6bd0: $f5
    ld [$6002], sp                                ; $6bd1: $08 $02 $60
    add [hl]                                      ; $6bd4: $86
    and b                                         ; $6bd5: $a0
    ret nc                                        ; $6bd6: $d0

    ldh [$90], a                                  ; $6bd7: $e0 $90
    nop                                           ; $6bd9: $00
    ld h, b                                       ; $6bda: $60
    add hl, bc                                    ; $6bdb: $09
    nop                                           ; $6bdc: $00
    add e                                         ; $6bdd: $83
    ld bc, $0100                                  ; $6bde: $01 $00 $01
    dec de                                        ; $6be1: $1b
    nop                                           ; $6be2: $00
    add l                                         ; $6be3: $85
    ld b, $07                                     ; $6be4: $06 $07
    ld bc, $0305                                  ; $6be6: $01 $05 $03
    ld [bc], a                                    ; $6be9: $02
    ld b, $0a                                     ; $6bea: $06 $0a
    nop                                           ; $6bec: $00
    rst $38                                       ; $6bed: $ff
    add hl, bc                                    ; $6bee: $09
    ld [bc], a                                    ; $6bef: $02
    push af                                       ; $6bf0: $f5
    inc c                                         ; $6bf1: $0c
    push af                                       ; $6bf2: $f5
    dec bc                                        ; $6bf3: $0b
    push af                                       ; $6bf4: $f5
    rst $38                                       ; $6bf5: $ff
    push af                                       ; $6bf6: $f5
    dec b                                         ; $6bf7: $05
    add [hl]                                      ; $6bf8: $86
    nop                                           ; $6bf9: $00
    ld h, b                                       ; $6bfa: $60
    ldh [$90], a                                  ; $6bfb: $e0 $90
    and b                                         ; $6bfd: $a0
    ret nc                                        ; $6bfe: $d0

    ld [bc], a                                    ; $6bff: $02
    ld h, b                                       ; $6c00: $60
    ld e, $00                                     ; $6c01: $1e $00
    ld [bc], a                                    ; $6c03: $02
    ld b, $86                                     ; $6c04: $06 $86
    dec b                                         ; $6c06: $05
    dec bc                                        ; $6c07: $0b
    rlca                                          ; $6c08: $07
    add hl, bc                                    ; $6c09: $09
    nop                                           ; $6c0a: $00
    ld b, $12                                     ; $6c0b: $06 $12
    nop                                           ; $6c0d: $00
    rst $38                                       ; $6c0e: $ff
    add hl, bc                                    ; $6c0f: $09
    ld [bc], a                                    ; $6c10: $02
    push af                                       ; $6c11: $f5
    inc c                                         ; $6c12: $0c
    push af                                       ; $6c13: $f5
    dec bc                                        ; $6c14: $0b
    or $fa                                        ; $6c15: $f6 $fa
    or $00                                        ; $6c17: $f6 $00
    inc bc                                        ; $6c19: $03
    nop                                           ; $6c1a: $00
    add l                                         ; $6c1b: $85
    ld h, b                                       ; $6c1c: $60
    ld [hl], b                                    ; $6c1d: $70
    sub b                                         ; $6c1e: $90
    ld d, b                                       ; $6c1f: $50
    or b                                          ; $6c20: $b0
    ld [bc], a                                    ; $6c21: $02
    ld h, b                                       ; $6c22: $60
    ld d, $00                                     ; $6c23: $16 $00
    ld [bc], a                                    ; $6c25: $02
    ld b, $86                                     ; $6c26: $06 $86
    ld a, [bc]                                    ; $6c28: $0a
    dec c                                         ; $6c29: $0d
    ld c, $09                                     ; $6c2a: $0e $09
    nop                                           ; $6c2c: $00
    ld b, $18                                     ; $6c2d: $06 $18
    nop                                           ; $6c2f: $00
    rst $38                                       ; $6c30: $ff
    add hl, bc                                    ; $6c31: $09
    ld [bc], a                                    ; $6c32: $02
    push af                                       ; $6c33: $f5
    inc c                                         ; $6c34: $0c
    push af                                       ; $6c35: $f5
    dec bc                                        ; $6c36: $0b
    or $f6                                        ; $6c37: $f6 $f6
    or $fa                                        ; $6c39: $f6 $fa
    ld a, [bc]                                    ; $6c3b: $0a
    nop                                           ; $6c3c: $00
    ld [bc], a                                    ; $6c3d: $02
    ld h, b                                       ; $6c3e: $60
    add [hl]                                      ; $6c3f: $86
    ld d, b                                       ; $6c40: $50
    or b                                          ; $6c41: $b0
    ld [hl], b                                    ; $6c42: $70
    sub b                                         ; $6c43: $90
    nop                                           ; $6c44: $00
    ld h, b                                       ; $6c45: $60
    rrca                                          ; $6c46: $0f
    nop                                           ; $6c47: $00
    add l                                         ; $6c48: $85
    ld b, $0e                                     ; $6c49: $06 $0e
    add hl, bc                                    ; $6c4b: $09
    ld a, [bc]                                    ; $6c4c: $0a
    dec c                                         ; $6c4d: $0d
    ld [bc], a                                    ; $6c4e: $02
    ld b, $18                                     ; $6c4f: $06 $18
    nop                                           ; $6c51: $00
    rst $38                                       ; $6c52: $ff
    add hl, bc                                    ; $6c53: $09
    ld [bc], a                                    ; $6c54: $02
    push af                                       ; $6c55: $f5
    inc c                                         ; $6c56: $0c
    push af                                       ; $6c57: $f5
    dec bc                                        ; $6c58: $0b
    ld hl, sp-$0c                                 ; $6c59: $f8 $f4
    ld hl, sp-$0b                                 ; $6c5b: $f8 $f5
    add c                                         ; $6c5d: $81
    nop                                           ; $6c5e: $00
    ld [bc], a                                    ; $6c5f: $02
    inc bc                                        ; $6c60: $03
    add e                                         ; $6c61: $83
    inc b                                         ; $6c62: $04
    ld [bc], a                                    ; $6c63: $02
    dec b                                         ; $6c64: $05
    ld [bc], a                                    ; $6c65: $02
    inc bc                                        ; $6c66: $03
    ld a, [bc]                                    ; $6c67: $0a
    nop                                           ; $6c68: $00
    ld [bc], a                                    ; $6c69: $02
    ld h, b                                       ; $6c6a: $60
    add [hl]                                      ; $6c6b: $86
    and b                                         ; $6c6c: $a0
    ret nc                                        ; $6c6d: $d0

    ldh [$90], a                                  ; $6c6e: $e0 $90
    nop                                           ; $6c70: $00
    ld h, b                                       ; $6c71: $60
    ld [$0400], sp                                ; $6c72: $08 $00 $04
    ld bc, $001a                                  ; $6c75: $01 $1a $00
    rst $38                                       ; $6c78: $ff
    rlca                                          ; $6c79: $07
    ld bc, $0cf5                                  ; $6c7a: $01 $f5 $0c
    push af                                       ; $6c7d: $f5
    dec bc                                        ; $6c7e: $0b
    db $fc                                        ; $6c7f: $fc
    pop af                                        ; $6c80: $f1
    ld [bc], a                                    ; $6c81: $02
    ld b, $86                                     ; $6c82: $06 $86
    ld a, [bc]                                    ; $6c84: $0a
    dec c                                         ; $6c85: $0d
    ld c, $09                                     ; $6c86: $0e $09
    nop                                           ; $6c88: $00
    ld b, $0f                                     ; $6c89: $06 $0f
    nop                                           ; $6c8b: $00
    add l                                         ; $6c8c: $85
    ld b, $0e                                     ; $6c8d: $06 $0e
    add hl, bc                                    ; $6c8f: $09
    ld a, [bc]                                    ; $6c90: $0a
    dec c                                         ; $6c91: $0d
    ld [bc], a                                    ; $6c92: $02
    ld b, $02                                     ; $6c93: $06 $02
    nop                                           ; $6c95: $00
    rst $38                                       ; $6c96: $ff
    add hl, bc                                    ; $6c97: $09
    ld [bc], a                                    ; $6c98: $02
    push af                                       ; $6c99: $f5
    inc c                                         ; $6c9a: $0c
    push af                                       ; $6c9b: $f5
    dec bc                                        ; $6c9c: $0b
    ld [bc], a                                    ; $6c9d: $02
    di                                            ; $6c9e: $f3
    ld [bc], a                                    ; $6c9f: $02
    push af                                       ; $6ca0: $f5
    ld [bc], a                                    ; $6ca1: $02
    ld h, b                                       ; $6ca2: $60
    add [hl]                                      ; $6ca3: $86
    and b                                         ; $6ca4: $a0
    ret nc                                        ; $6ca5: $d0

    ldh [$90], a                                  ; $6ca6: $e0 $90
    nop                                           ; $6ca8: $00
    ld h, b                                       ; $6ca9: $60
    dec bc                                        ; $6caa: $0b
    nop                                           ; $6cab: $00
    ld [bc], a                                    ; $6cac: $02
    ld bc, $0283                                  ; $6cad: $01 $83 $02
    ld bc, $0202                                  ; $6cb0: $01 $02 $02
    ld bc, $0019                                  ; $6cb3: $01 $19 $00
    add d                                         ; $6cb6: $82
    ld [bc], a                                    ; $6cb7: $02
    inc bc                                        ; $6cb8: $03
    ld [bc], a                                    ; $6cb9: $02
    ld bc, $0381                                  ; $6cba: $01 $81 $03
    ld [bc], a                                    ; $6cbd: $02
    ld [bc], a                                    ; $6cbe: $02
    ld b, $00                                     ; $6cbf: $06 $00
    rst $38                                       ; $6cc1: $ff
    add hl, bc                                    ; $6cc2: $09

jr_0f6_6cc3:
    ld [bc], a                                    ; $6cc3: $02
    push af                                       ; $6cc4: $f5
    inc c                                         ; $6cc5: $0c
    push af                                       ; $6cc6: $f5
    dec bc                                        ; $6cc7: $0b
    ld [$08f4], sp                                ; $6cc8: $08 $f4 $08
    ei                                            ; $6ccb: $fb
    add [hl]                                      ; $6ccc: $86
    nop                                           ; $6ccd: $00
    ld h, b                                       ; $6cce: $60
    ldh [$90], a                                  ; $6ccf: $e0 $90
    and b                                         ; $6cd1: $a0
    ret nc                                        ; $6cd2: $d0

    ld [bc], a                                    ; $6cd3: $02
    ld h, b                                       ; $6cd4: $60
    ld [hl+], a                                   ; $6cd5: $22
    nop                                           ; $6cd6: $00
    ld [bc], a                                    ; $6cd7: $02
    ld b, $86                                     ; $6cd8: $06 $86
    dec b                                         ; $6cda: $05
    dec bc                                        ; $6cdb: $0b
    rlca                                          ; $6cdc: $07
    add hl, bc                                    ; $6cdd: $09
    nop                                           ; $6cde: $00
    ld b, $0e                                     ; $6cdf: $06 $0e
    nop                                           ; $6ce1: $00
    rst $38                                       ; $6ce2: $ff
    add hl, bc                                    ; $6ce3: $09
    ld [bc], a                                    ; $6ce4: $02
    push af                                       ; $6ce5: $f5
    inc c                                         ; $6ce6: $0c
    push af                                       ; $6ce7: $f5
    dec bc                                        ; $6ce8: $0b
    ld a, [bc]                                    ; $6ce9: $0a
    ld hl, sp+$0a                                 ; $6cea: $f8 $0a
    nop                                           ; $6cec: $00
    dec b                                         ; $6ced: $05
    nop                                           ; $6cee: $00
    add l                                         ; $6cef: $85
    ld h, b                                       ; $6cf0: $60
    ld [hl], b                                    ; $6cf1: $70
    sub b                                         ; $6cf2: $90
    ld d, b                                       ; $6cf3: $50
    or b                                          ; $6cf4: $b0
    ld [bc], a                                    ; $6cf5: $02
    ld h, b                                       ; $6cf6: $60
    inc d                                         ; $6cf7: $14
    nop                                           ; $6cf8: $00
    ld [bc], a                                    ; $6cf9: $02
    ld b, $86                                     ; $6cfa: $06 $86
    ld a, [bc]                                    ; $6cfc: $0a
    dec c                                         ; $6cfd: $0d
    ld c, $09                                     ; $6cfe: $0e $09
    nop                                           ; $6d00: $00
    ld b, $18                                     ; $6d01: $06 $18
    nop                                           ; $6d03: $00
    rst $38                                       ; $6d04: $ff
    add hl, bc                                    ; $6d05: $09
    ld [bc], a                                    ; $6d06: $02
    push af                                       ; $6d07: $f5
    inc c                                         ; $6d08: $0c
    push af                                       ; $6d09: $f5
    dec bc                                        ; $6d0a: $0b
    dec b                                         ; $6d0b: $05
    cp $05                                        ; $6d0c: $fe $05
    inc bc                                        ; $6d0e: $03
    ld [de], a                                    ; $6d0f: $12
    nop                                           ; $6d10: $00
    ld [bc], a                                    ; $6d11: $02
    ld h, b                                       ; $6d12: $60
    add [hl]                                      ; $6d13: $86
    ld d, b                                       ; $6d14: $50
    or b                                          ; $6d15: $b0
    ld [hl], b                                    ; $6d16: $70
    sub b                                         ; $6d17: $90
    nop                                           ; $6d18: $00
    ld h, b                                       ; $6d19: $60
    rlca                                          ; $6d1a: $07
    nop                                           ; $6d1b: $00
    add l                                         ; $6d1c: $85
    ld b, $0e                                     ; $6d1d: $06 $0e
    add hl, bc                                    ; $6d1f: $09
    ld a, [bc]                                    ; $6d20: $0a
    dec c                                         ; $6d21: $0d
    ld [bc], a                                    ; $6d22: $02
    ld b, $18                                     ; $6d23: $06 $18
    nop                                           ; $6d25: $00
    rst $38                                       ; $6d26: $ff
    rlca                                          ; $6d27: $07
    ld bc, $0cf5                                  ; $6d28: $01 $f5 $0c
    push af                                       ; $6d2b: $f5
    dec bc                                        ; $6d2c: $0b
    rst $38                                       ; $6d2d: $ff
    ld [bc], a                                    ; $6d2e: $02
    add [hl]                                      ; $6d2f: $86
    nop                                           ; $6d30: $00
    ld b, $07                                     ; $6d31: $06 $07
    add hl, bc                                    ; $6d33: $09
    dec b                                         ; $6d34: $05
    dec bc                                        ; $6d35: $0b
    ld [bc], a                                    ; $6d36: $02
    ld b, $10                                     ; $6d37: $06 $10
    nop                                           ; $6d39: $00
    ld [bc], a                                    ; $6d3a: $02
    jr nc, jr_0f6_6cc3                            ; $6d3b: $30 $86

    ld d, b                                       ; $6d3d: $50
    ld l, b                                       ; $6d3e: $68
    ld [hl], b                                    ; $6d3f: $70
    ld c, b                                       ; $6d40: $48
    nop                                           ; $6d41: $00
    jr nc, @+$01                                  ; $6d42: $30 $ff

    add hl, bc                                    ; $6d44: $09
    ld [bc], a                                    ; $6d45: $02
    push af                                       ; $6d46: $f5
    inc c                                         ; $6d47: $0c
    push af                                       ; $6d48: $f5
    dec bc                                        ; $6d49: $0b
    ei                                            ; $6d4a: $fb
    ld bc, $02fb                                  ; $6d4b: $01 $fb $02
    ld [bc], a                                    ; $6d4e: $02
    ld h, b                                       ; $6d4f: $60
    add [hl]                                      ; $6d50: $86
    ld d, b                                       ; $6d51: $50
    or b                                          ; $6d52: $b0
    ld [hl], b                                    ; $6d53: $70
    sub b                                         ; $6d54: $90
    nop                                           ; $6d55: $00
    ld h, b                                       ; $6d56: $60
    rrca                                          ; $6d57: $0f
    nop                                           ; $6d58: $00
    add l                                         ; $6d59: $85
    inc bc                                        ; $6d5a: $03
    rlca                                          ; $6d5b: $07
    inc b                                         ; $6d5c: $04
    dec b                                         ; $6d5d: $05
    ld b, $02                                     ; $6d5e: $06 $02
    inc bc                                        ; $6d60: $03
    dec de                                        ; $6d61: $1b
    nop                                           ; $6d62: $00
    add e                                         ; $6d63: $83
    ld bc, $0100                                  ; $6d64: $01 $00 $01
    inc b                                         ; $6d67: $04
    nop                                           ; $6d68: $00
    rst $38                                       ; $6d69: $ff
    add hl, bc                                    ; $6d6a: $09
    ld [bc], a                                    ; $6d6b: $02
    push af                                       ; $6d6c: $f5
    inc c                                         ; $6d6d: $0c
    push af                                       ; $6d6e: $f5
    dec bc                                        ; $6d6f: $0b
    rst $38                                       ; $6d70: $ff
    nop                                           ; $6d71: $00
    rst $38                                       ; $6d72: $ff
    ld bc, $8088                                  ; $6d73: $01 $88 $80
    ret nz                                        ; $6d76: $c0

    add b                                         ; $6d77: $80
    jp $0403                                      ; $6d78: $c3 $03 $04


    ld [bc], a                                    ; $6d7b: $02
    dec b                                         ; $6d7c: $05
    ld [bc], a                                    ; $6d7d: $02
    inc bc                                        ; $6d7e: $03
    ld a, [de]                                    ; $6d7f: $1a
    nop                                           ; $6d80: $00
    inc b                                         ; $6d81: $04
    ld bc, $0018                                  ; $6d82: $01 $18 $00
    rst $38                                       ; $6d85: $ff
    rlca                                          ; $6d86: $07
    ld bc, $0cf5                                  ; $6d87: $01 $f5 $0c
    push af                                       ; $6d8a: $f5
    dec bc                                        ; $6d8b: $0b
    cp $fb                                        ; $6d8c: $fe $fb
    add [hl]                                      ; $6d8e: $86
    ld [bc], a                                    ; $6d8f: $02
    inc bc                                        ; $6d90: $03
    ld b, $07                                     ; $6d91: $06 $07
    inc b                                         ; $6d93: $04

jr_0f6_6d94:
    ld b, $1a                                     ; $6d94: $06 $1a
    nop                                           ; $6d96: $00
    rst $38                                       ; $6d97: $ff
    rlca                                          ; $6d98: $07
    ld bc, $0cf5                                  ; $6d99: $01 $f5 $0c
    push af                                       ; $6d9c: $f5
    dec bc                                        ; $6d9d: $0b
    cp $fc                                        ; $6d9e: $fe $fc
    ld [bc], a                                    ; $6da0: $02
    ld [de], a                                    ; $6da1: $12
    adc b                                         ; $6da2: $88
    scf                                           ; $6da3: $37
    ccf                                           ; $6da4: $3f
    dec c                                         ; $6da5: $0d
    inc de                                        ; $6da6: $13
    dec l                                         ; $6da7: $2d
    inc sp                                        ; $6da8: $33
    inc c                                         ; $6da9: $0c
    ld e, $02                                     ; $6daa: $1e $02
    ld [$0014], sp                                ; $6dac: $08 $14 $00
    rst $38                                       ; $6daf: $ff
    rlca                                          ; $6db0: $07
    ld bc, $0cf5                                  ; $6db1: $01 $f5 $0c
    push af                                       ; $6db4: $f5
    dec bc                                        ; $6db5: $0b
    db $fd                                        ; $6db6: $fd
    db $fd                                        ; $6db7: $fd
    sub b                                         ; $6db8: $90
    ld [de], a                                    ; $6db9: $12
    sub e                                         ; $6dba: $93
    ld e, e                                       ; $6dbb: $5b
    dec a                                         ; $6dbc: $3d
    inc h                                         ; $6dbd: $24
    ld e, d                                       ; $6dbe: $5a
    jp c, $5be6                                   ; $6dbf: $da $e6 $5b

    ld h, a                                       ; $6dc2: $67
    and h                                         ; $6dc3: $a4
    jp c, $ad4b                                   ; $6dc4: $da $4b $ad

    xor b                                         ; $6dc7: $a8
    xor c                                         ; $6dc8: $a9
    stop                                          ; $6dc9: $10 $00
    rst $38                                       ; $6dcb: $ff
    add hl, bc                                    ; $6dcc: $09
    ld [bc], a                                    ; $6dcd: $02
    push af                                       ; $6dce: $f5
    inc c                                         ; $6dcf: $0c
    push af                                       ; $6dd0: $f5
    dec bc                                        ; $6dd1: $0b
    ld sp, hl                                     ; $6dd2: $f9
    ld a, [$01f9]                                 ; $6dd3: $fa $f9 $01
    ld [bc], a                                    ; $6dd6: $02
    ld [bc], a                                    ; $6dd7: $02
    adc d                                         ; $6dd8: $8a
    nop                                           ; $6dd9: $00
    ret nz                                        ; $6dda: $c0

    ld c, b                                       ; $6ddb: $48
    adc b                                         ; $6ddc: $88
    add hl, bc                                    ; $6ddd: $09
    add hl, de                                    ; $6dde: $19
    rla                                           ; $6ddf: $17
    cpl                                           ; $6de0: $2f
    ld l, b                                       ; $6de1: $68
    ld [hl], b                                    ; $6de2: $70
    ld [bc], a                                    ; $6de3: $02
    ld d, c                                       ; $6de4: $51
    ld [bc], a                                    ; $6de5: $02
    dec h                                         ; $6de6: $25
    ld [bc], a                                    ; $6de7: $02
    and b                                         ; $6de8: $a0
    adc d                                         ; $6de9: $8a
    ld l, d                                       ; $6dea: $6a
    ld [hl], d                                    ; $6deb: $72
    db $10                                        ; $6dec: $10
    jr z, jr_0f6_6dfc                             ; $6ded: $28 $0d

    dec e                                         ; $6def: $1d
    ld c, b                                       ; $6df0: $48
    adc b                                         ; $6df1: $88
    ld [bc], a                                    ; $6df2: $02
    jp nz, $0402                                  ; $6df3: $c2 $02 $04

    inc b                                         ; $6df6: $04
    nop                                           ; $6df7: $00
    adc d                                         ; $6df8: $8a
    ld b, b                                       ; $6df9: $40
    ld c, h                                       ; $6dfa: $4c
    ld c, b                                       ; $6dfb: $48

jr_0f6_6dfc:
    ld b, h                                       ; $6dfc: $44
    ld b, b                                       ; $6dfd: $40
    ld h, b                                       ; $6dfe: $60
    jr nz, @+$52                                  ; $6dff: $20 $50

    ld e, c                                       ; $6e01: $59
    add hl, sp                                    ; $6e02: $39
    ld [bc], a                                    ; $6e03: $02
    inc d                                         ; $6e04: $14
    ld [bc], a                                    ; $6e05: $02
    inc b                                         ; $6e06: $04
    ld [bc], a                                    ; $6e07: $02
    jr jr_0f6_6d94                                ; $6e08: $18 $8a

    ld e, b                                       ; $6e0a: $58
    jr c, jr_0f6_6e31                             ; $6e0b: $38 $24

    ld d, h                                       ; $6e0d: $54
    ld b, b                                       ; $6e0e: $40
    ld h, b                                       ; $6e0f: $60
    ld c, b                                       ; $6e10: $48
    ld b, h                                       ; $6e11: $44
    nop                                           ; $6e12: $00
    inc c                                         ; $6e13: $0c
    inc b                                         ; $6e14: $04
    nop                                           ; $6e15: $00
    rst $38                                       ; $6e16: $ff
    ld de, $f506                                  ; $6e17: $11 $06 $f5
    inc c                                         ; $6e1a: $0c
    push af                                       ; $6e1b: $f5
    dec bc                                        ; $6e1c: $0b
    or $f5                                        ; $6e1d: $f6 $f5
    push af                                       ; $6e1f: $f5
    db $fd                                        ; $6e20: $fd
    push af                                       ; $6e21: $f5
    dec b                                         ; $6e22: $05
    dec b                                         ; $6e23: $05
    rst $30                                       ; $6e24: $f7
    dec b                                         ; $6e25: $05
    rst $38                                       ; $6e26: $ff
    dec b                                         ; $6e27: $05
    dec b                                         ; $6e28: $05
    add d                                         ; $6e29: $82
    ld bc, $0211                                  ; $6e2a: $01 $11 $02
    ld bc, $0284                                  ; $6e2d: $01 $84 $02
    ld a, [bc]                                    ; $6e30: $0a

jr_0f6_6e31:
    ld [$0210], sp                                ; $6e31: $08 $10 $02
    nop                                           ; $6e34: $00
    add d                                         ; $6e35: $82
    ldh [$e1], a                                  ; $6e36: $e0 $e1
    inc bc                                        ; $6e38: $03
    nop                                           ; $6e39: $00
    add e                                         ; $6e3a: $83
    ld bc, $1615                                  ; $6e3b: $01 $15 $16
    inc b                                         ; $6e3e: $04
    ld [$1202], sp                                ; $6e3f: $08 $02 $12
    ld [bc], a                                    ; $6e42: $02
    add b                                         ; $6e43: $80
    add [hl]                                      ; $6e44: $86
    ld [bc], a                                    ; $6e45: $02
    inc bc                                        ; $6e46: $03
    inc b                                         ; $6e47: $04
    ld [$1410], sp                                ; $6e48: $08 $10 $14
    ld [bc], a                                    ; $6e4b: $02
    ld [bc], a                                    ; $6e4c: $02
    ld [bc], a                                    ; $6e4d: $02
    nop                                           ; $6e4e: $00
    ld [bc], a                                    ; $6e4f: $02
    jr jr_0f6_6e54                                ; $6e50: $18 $02

    and l                                         ; $6e52: $a5
    ld [bc], a                                    ; $6e53: $02

jr_0f6_6e54:
    ld sp, $0386                                  ; $6e54: $31 $86 $03
    add e                                         ; $6e57: $83
    add b                                         ; $6e58: $80
    ld bc, $4041                                  ; $6e59: $01 $41 $40
    inc b                                         ; $6e5c: $04
    nop                                           ; $6e5d: $00
    ld [bc], a                                    ; $6e5e: $02
    ld bc, $8102                                  ; $6e5f: $01 $02 $81
    inc b                                         ; $6e62: $04
    nop                                           ; $6e63: $00
    add [hl]                                      ; $6e64: $86
    add b                                         ; $6e65: $80
    nop                                           ; $6e66: $00
    ld [bc], a                                    ; $6e67: $02
    add d                                         ; $6e68: $82
    nop                                           ; $6e69: $00
    ld b, b                                       ; $6e6a: $40
    ld [bc], a                                    ; $6e6b: $02
    nop                                           ; $6e6c: $00
    add d                                         ; $6e6d: $82
    jr nz, jr_0f6_6e84                            ; $6e6e: $20 $14

    inc b                                         ; $6e70: $04
    nop                                           ; $6e71: $00
    add [hl]                                      ; $6e72: $86
    ld [$2228], sp                                ; $6e73: $08 $28 $22
    ld [de], a                                    ; $6e76: $12
    ld b, b                                       ; $6e77: $40
    ret nz                                        ; $6e78: $c0

    ld [bc], a                                    ; $6e79: $02
    nop                                           ; $6e7a: $00
    ld [bc], a                                    ; $6e7b: $02
    ld c, c                                       ; $6e7c: $49
    ld [bc], a                                    ; $6e7d: $02
    db $10                                        ; $6e7e: $10
    ld [bc], a                                    ; $6e7f: $02
    ld [de], a                                    ; $6e80: $12
    ld [bc], a                                    ; $6e81: $02
    db $10                                        ; $6e82: $10
    add h                                         ; $6e83: $84

jr_0f6_6e84:
    xor b                                         ; $6e84: $a8
    ld l, b                                       ; $6e85: $68
    nop                                           ; $6e86: $00
    add b                                         ; $6e87: $80
    ld [bc], a                                    ; $6e88: $02
    nop                                           ; $6e89: $00
    ld [bc], a                                    ; $6e8a: $02
    inc bc                                        ; $6e8b: $03
    inc b                                         ; $6e8c: $04
    ld [bc], a                                    ; $6e8d: $02
    add h                                         ; $6e8e: $84
    db $10                                        ; $6e8f: $10
    and b                                         ; $6e90: $a0
    nop                                           ; $6e91: $00
    db $10                                        ; $6e92: $10
    ld [bc], a                                    ; $6e93: $02
    inc b                                         ; $6e94: $04
    inc d                                         ; $6e95: $14
    nop                                           ; $6e96: $00
    add h                                         ; $6e97: $84
    inc b                                         ; $6e98: $04
    ld [bc], a                                    ; $6e99: $02
    nop                                           ; $6e9a: $00
    inc b                                         ; $6e9b: $04
    ld [bc], a                                    ; $6e9c: $02
    sub b                                         ; $6e9d: $90
    ld [bc], a                                    ; $6e9e: $02
    dec d                                         ; $6e9f: $15
    ld [bc], a                                    ; $6ea0: $02
    ld [bc], a                                    ; $6ea1: $02
    ld [bc], a                                    ; $6ea2: $02
    add d                                         ; $6ea3: $82
    inc d                                         ; $6ea4: $14
    nop                                           ; $6ea5: $00
    ld [bc], a                                    ; $6ea6: $02
    rlca                                          ; $6ea7: $07
    ld [bc], a                                    ; $6ea8: $02
    nop                                           ; $6ea9: $00
    add h                                         ; $6eaa: $84
    db $10                                        ; $6eab: $10
    ld [$1000], sp                                ; $6eac: $08 $00 $10
    inc bc                                        ; $6eaf: $03
    nop                                           ; $6eb0: $00
    add c                                         ; $6eb1: $81
    ld [$0014], sp                                ; $6eb2: $08 $14 $00
    rst $38                                       ; $6eb5: $ff
    rlca                                          ; $6eb6: $07
    ld bc, $07f9                                  ; $6eb7: $01 $f9 $07
    or $09                                        ; $6eba: $f6 $09
    cp $fa                                        ; $6ebc: $fe $fa
    add c                                         ; $6ebe: $81
    ld [bc], a                                    ; $6ebf: $02
    ld [bc], a                                    ; $6ec0: $02
    nop                                           ; $6ec1: $00
    add h                                         ; $6ec2: $84
    ld [bc], a                                    ; $6ec3: $02
    nop                                           ; $6ec4: $00
    dec b                                         ; $6ec5: $05
    nop                                           ; $6ec6: $00
    ld [bc], a                                    ; $6ec7: $02
    ld [bc], a                                    ; $6ec8: $02
    rla                                           ; $6ec9: $17
    nop                                           ; $6eca: $00
    rst $38                                       ; $6ecb: $ff
    add hl, bc                                    ; $6ecc: $09
    ld [bc], a                                    ; $6ecd: $02
    ld sp, hl                                     ; $6ece: $f9
    rlca                                          ; $6ecf: $07
    or $09                                        ; $6ed0: $f6 $09
    ld a, [$fafb]                                 ; $6ed2: $fa $fb $fa
    cp $85                                        ; $6ed5: $fe $85
    inc b                                         ; $6ed7: $04
    nop                                           ; $6ed8: $00
    inc b                                         ; $6ed9: $04
    nop                                           ; $6eda: $00
    inc b                                         ; $6edb: $04
    ld [bc], a                                    ; $6edc: $02
    nop                                           ; $6edd: $00
    add d                                         ; $6ede: $82
    inc b                                         ; $6edf: $04
    ld de, $0402                                  ; $6ee0: $11 $02 $04
    adc b                                         ; $6ee3: $88
    ld c, $db                                     ; $6ee4: $0e $db
    dec sp                                        ; $6ee6: $3b
    inc b                                         ; $6ee7: $04
    ld c, $11                                     ; $6ee8: $0e $11
    inc b                                         ; $6eea: $04
    nop                                           ; $6eeb: $00
    ld [bc], a                                    ; $6eec: $02
    inc b                                         ; $6eed: $04
    add h                                         ; $6eee: $84
    nop                                           ; $6eef: $00
    inc b                                         ; $6ef0: $04
    nop                                           ; $6ef1: $00
    inc b                                         ; $6ef2: $04
    inc de                                        ; $6ef3: $13
    nop                                           ; $6ef4: $00
    add d                                         ; $6ef5: $82
    inc bc                                        ; $6ef6: $03
    inc b                                         ; $6ef7: $04
    ld [de], a                                    ; $6ef8: $12
    nop                                           ; $6ef9: $00
    rst $38                                       ; $6efa: $ff
    add hl, bc                                    ; $6efb: $09
    ld [bc], a                                    ; $6efc: $02
    ld sp, hl                                     ; $6efd: $f9
    rlca                                          ; $6efe: $07
    or $09                                        ; $6eff: $f6 $09
    ld hl, sp-$07                                 ; $6f01: $f8 $f9
    db $fd                                        ; $6f03: $fd
    nop                                           ; $6f04: $00
    add l                                         ; $6f05: $85
    ld bc, $0100                                  ; $6f06: $01 $00 $01
    nop                                           ; $6f09: $00
    ld bc, $0002                                  ; $6f0a: $01 $02 $00
    add h                                         ; $6f0d: $84
    ld bc, $0100                                  ; $6f0e: $01 $00 $01
    ld [$0102], sp                                ; $6f11: $08 $02 $01
    adc [hl]                                      ; $6f14: $8e
    dec b                                         ; $6f15: $05
    ld bc, $ce03                                  ; $6f16: $01 $03 $ce
    ld a, $01                                     ; $6f19: $3e $01
    inc bc                                        ; $6f1b: $03
    ld bc, $0905                                  ; $6f1c: $01 $05 $09
    ld bc, $0100                                  ; $6f1f: $01 $00 $01
    nop                                           ; $6f22: $00
    ld [bc], a                                    ; $6f23: $02
    ld bc, $0084                                  ; $6f24: $01 $84 $00
    ld bc, $1000                                  ; $6f27: $01 $00 $10
    ld [bc], a                                    ; $6f2a: $02
    nop                                           ; $6f2b: $00
    adc d                                         ; $6f2c: $8a
    jr nz, jr_0f6_6f2f                            ; $6f2d: $20 $00

jr_0f6_6f2f:
    ld b, b                                       ; $6f2f: $40
    ld [hl], e                                    ; $6f30: $73
    ld a, h                                       ; $6f31: $7c
    nop                                           ; $6f32: $00
    ld b, b                                       ; $6f33: $40
    nop                                           ; $6f34: $00
    jr nz, jr_0f6_6f47                            ; $6f35: $20 $10

    add hl, bc                                    ; $6f37: $09
    nop                                           ; $6f38: $00
    add c                                         ; $6f39: $81
    add b                                         ; $6f3a: $80
    add hl, bc                                    ; $6f3b: $09
    nop                                           ; $6f3c: $00
    rst $38                                       ; $6f3d: $ff
    dec c                                         ; $6f3e: $0d
    inc b                                         ; $6f3f: $04
    ld sp, hl                                     ; $6f40: $f9
    rlca                                          ; $6f41: $07
    or $09                                        ; $6f42: $f6 $09
    db $fc                                        ; $6f44: $fc
    ld hl, sp-$09                                 ; $6f45: $f8 $f7

jr_0f6_6f47:
    nop                                           ; $6f47: $00
    nop                                           ; $6f48: $00
    ld bc, $f907                                  ; $6f49: $01 $07 $f9
    add c                                         ; $6f4c: $81
    ld [$0002], sp                                ; $6f4d: $08 $02 $00
    add e                                         ; $6f50: $83
    inc b                                         ; $6f51: $04
    nop                                           ; $6f52: $00
    ld [bc], a                                    ; $6f53: $02
    ld [bc], a                                    ; $6f54: $02
    ld bc, $ce82                                  ; $6f55: $01 $82 $ce
    ccf                                           ; $6f58: $3f
    ld [bc], a                                    ; $6f59: $02
    ld bc, $0085                                  ; $6f5a: $01 $85 $00
    ld [bc], a                                    ; $6f5d: $02
    nop                                           ; $6f5e: $00
    inc b                                         ; $6f5f: $04
    ld [$000f], sp                                ; $6f60: $08 $0f $00
    add l                                         ; $6f63: $85
    add b                                         ; $6f64: $80
    nop                                           ; $6f65: $00
    add b                                         ; $6f66: $80
    nop                                           ; $6f67: $00
    add b                                         ; $6f68: $80
    ld [bc], a                                    ; $6f69: $02
    nop                                           ; $6f6a: $00
    add h                                         ; $6f6b: $84
    add b                                         ; $6f6c: $80
    nop                                           ; $6f6d: $00
    add b                                         ; $6f6e: $80
    adc b                                         ; $6f6f: $88
    ld [bc], a                                    ; $6f70: $02
    add b                                         ; $6f71: $80
    sub h                                         ; $6f72: $94
    sub b                                         ; $6f73: $90
    add b                                         ; $6f74: $80
    and b                                         ; $6f75: $a0
    ld b, b                                       ; $6f76: $40
    ret nz                                        ; $6f77: $c0

    add hl, sp                                    ; $6f78: $39
    ld a, [hl]                                    ; $6f79: $7e
    ld b, b                                       ; $6f7a: $40
    ret nz                                        ; $6f7b: $c0

    add b                                         ; $6f7c: $80
    and b                                         ; $6f7d: $a0
    add b                                         ; $6f7e: $80
    sub b                                         ; $6f7f: $90
    adc b                                         ; $6f80: $88
    add b                                         ; $6f81: $80
    nop                                           ; $6f82: $00
    add b                                         ; $6f83: $80
    nop                                           ; $6f84: $00
    add b                                         ; $6f85: $80
    ld bc, $001f                                  ; $6f86: $01 $1f $00
    add l                                         ; $6f89: $85
    ld bc, $0100                                  ; $6f8a: $01 $00 $01
    nop                                           ; $6f8d: $00
    ld bc, $001b                                  ; $6f8e: $01 $1b $00
    rst $38                                       ; $6f91: $ff
    dec c                                         ; $6f92: $0d
    inc b                                         ; $6f93: $04
    ld sp, hl                                     ; $6f94: $f9
    rlca                                          ; $6f95: $07
    or $09                                        ; $6f96: $f6 $09
    ld a, [$f5f6]                                 ; $6f98: $fa $f6 $f5
    cp $fa                                        ; $6f9b: $fe $fa
    inc bc                                        ; $6f9d: $03
    dec b                                         ; $6f9e: $05
    ld sp, hl                                     ; $6f9f: $f9
    add e                                         ; $6fa0: $83
    ld [$0400], sp                                ; $6fa1: $08 $00 $04
    ld [bc], a                                    ; $6fa4: $02
    nop                                           ; $6fa5: $00
    add h                                         ; $6fa6: $84
    inc bc                                        ; $6fa7: $03
    nop                                           ; $6fa8: $00
    inc bc                                        ; $6fa9: $03
    nop                                           ; $6faa: $00
    inc bc                                        ; $6fab: $03
    ld bc, $c382                                  ; $6fac: $01 $82 $c3
    ccf                                           ; $6faf: $3f
    ld [bc], a                                    ; $6fb0: $02
    ld bc, $0089                                  ; $6fb1: $01 $89 $00
    ld bc, $0300                                  ; $6fb4: $01 $00 $03
    nop                                           ; $6fb7: $00
    inc bc                                        ; $6fb8: $03
    inc b                                         ; $6fb9: $04
    nop                                           ; $6fba: $00
    ld [$0007], sp                                ; $6fbb: $08 $07 $00
    add l                                         ; $6fbe: $85
    jr nz, jr_0f6_6fc1                            ; $6fbf: $20 $00

jr_0f6_6fc1:
    jr nz, jr_0f6_6fc3                            ; $6fc1: $20 $00

jr_0f6_6fc3:
    jr nz, jr_0f6_6fc7                            ; $6fc3: $20 $02

    nop                                           ; $6fc5: $00
    adc l                                         ; $6fc6: $8d

jr_0f6_6fc7:
    jr nz, jr_0f6_6fc9                            ; $6fc7: $20 $00

jr_0f6_6fc9:
    jr nz, jr_0f6_6fcb                            ; $6fc9: $20 $00

jr_0f6_6fcb:
    jr nz, jr_0f6_6fcd                            ; $6fcb: $20 $00

jr_0f6_6fcd:
    ld hl, $2620                                  ; $6fcd: $21 $20 $26
    ld [hl], b                                    ; $6fd0: $70
    cp $88                                        ; $6fd1: $fe $88
    adc h                                         ; $6fd3: $8c
    ld [bc], a                                    ; $6fd4: $02
    inc b                                         ; $6fd5: $04
    add d                                         ; $6fd6: $82
    ld b, $07                                     ; $6fd7: $06 $07
    ld [bc], a                                    ; $6fd9: $02
    inc b                                         ; $6fda: $04
    add a                                         ; $6fdb: $87
    adc b                                         ; $6fdc: $88
    adc h                                         ; $6fdd: $8c
    ld [hl], b                                    ; $6fde: $70
    cp $20                                        ; $6fdf: $fe $20
    ld h, $10                                     ; $6fe1: $26 $10
    dec bc                                        ; $6fe3: $0b
    nop                                           ; $6fe4: $00
    add d                                         ; $6fe5: $82
    inc bc                                        ; $6fe6: $03
    inc e                                         ; $6fe7: $1c
    ld [$8300], sp                                ; $6fe8: $08 $00 $83
    jr nz, jr_0f6_6fed                            ; $6feb: $20 $00

jr_0f6_6fed:
    db $10                                        ; $6fed: $10
    ld [$8600], sp                                ; $6fee: $08 $00 $86
    ld bc, $0100                                  ; $6ff1: $01 $00 $01
    nop                                           ; $6ff4: $00
    ld bc, $0200                                  ; $6ff5: $01 $00 $02
    ld bc, $0084                                  ; $6ff8: $01 $84 $00
    ld bc, $0100                                  ; $6ffb: $01 $00 $01
    inc de                                        ; $6ffe: $13
    nop                                           ; $6fff: $00
    rst $38                                       ; $7000: $ff
    rrca                                          ; $7001: $0f
    dec b                                         ; $7002: $05
    ld sp, hl                                     ; $7003: $f9
    rlca                                          ; $7004: $07
    or $09                                        ; $7005: $f6 $09
    ld sp, hl                                     ; $7007: $f9
    db $f4                                        ; $7008: $f4
    ld a, [c]                                     ; $7009: $f2
    db $fc                                        ; $700a: $fc
    ld sp, hl                                     ; $700b: $f9
    inc bc                                        ; $700c: $03
    nop                                           ; $700d: $00
    dec b                                         ; $700e: $05
    ld [bc], a                                    ; $700f: $02
    ei                                            ; $7010: $fb
    add a                                         ; $7011: $87
    inc b                                         ; $7012: $04
    nop                                           ; $7013: $00
    inc bc                                        ; $7014: $03
    nop                                           ; $7015: $00
    ld [bc], a                                    ; $7016: $02
    ld bc, $0200                                  ; $7017: $01 $00 $02
    ld bc, $0003                                  ; $701a: $01 $03 $00
    add [hl]                                      ; $701d: $86
    inc b                                         ; $701e: $04
    inc bc                                        ; $701f: $03
    or e                                          ; $7020: $b3
    rrca                                          ; $7021: $0f
    inc b                                         ; $7022: $04
    inc bc                                        ; $7023: $03
    ld [bc], a                                    ; $7024: $02
    nop                                           ; $7025: $00
    add c                                         ; $7026: $81
    ld bc, $0002                                  ; $7027: $01 $02 $00
    add [hl]                                      ; $702a: $86
    ld bc, $0102                                  ; $702b: $01 $02 $01
    inc bc                                        ; $702e: $03
    nop                                           ; $702f: $00
    inc b                                         ; $7030: $04
    inc bc                                        ; $7031: $03
    nop                                           ; $7032: $00
    add c                                         ; $7033: $81
    ld [$0003], sp                                ; $7034: $08 $03 $00
    add l                                         ; $7037: $85
    ld [$0800], sp                                ; $7038: $08 $00 $08
    nop                                           ; $703b: $00
    ld [$0002], sp                                ; $703c: $08 $02 $00
    add d                                         ; $703f: $82

Call_0f6_7040:
    ld [$0214], sp                                ; $7040: $08 $14 $02
    ld [$1c8b], sp                                ; $7043: $08 $8b $1c
    ld [$491c], sp                                ; $7046: $08 $1c $49
    sbc h                                         ; $7049: $9c
    rst $30                                       ; $704a: $f7
    rst $38                                       ; $704b: $ff
    pop bc                                        ; $704c: $c1
    db $e3                                        ; $704d: $e3
    add b                                         ; $704e: $80
    pop bc                                        ; $704f: $c1
    ld [bc], a                                    ; $7050: $02
    add b                                         ; $7051: $80
    add c                                         ; $7052: $81
    nop                                           ; $7053: $00
    inc bc                                        ; $7054: $03
    add b                                         ; $7055: $80
    add a                                         ; $7056: $87
    ld [$3000], sp                                ; $7057: $08 $00 $30
    nop                                           ; $705a: $00
    db $10                                        ; $705b: $10
    ld h, b                                       ; $705c: $60
    ld b, b                                       ; $705d: $40
    ld [bc], a                                    ; $705e: $02
    ld h, b                                       ; $705f: $60
    inc bc                                        ; $7060: $03
    ld b, b                                       ; $7061: $40
    adc c                                         ; $7062: $89
    ld c, b                                       ; $7063: $48
    ld [hl], b                                    ; $7064: $70
    inc sp                                        ; $7065: $33
    ld a, h                                       ; $7066: $7c
    ld c, b                                       ; $7067: $48
    ld [hl], b                                    ; $7068: $70
    ld b, b                                       ; $7069: $40
    ret nz                                        ; $706a: $c0

    ldh [rSC], a                                  ; $706b: $e0 $02
    ret nz                                        ; $706d: $c0

    add [hl]                                      ; $706e: $86
    ldh [$90], a                                  ; $706f: $e0 $90
    ld h, b                                       ; $7071: $60
    jr nc, jr_0f6_7074                            ; $7072: $30 $00

jr_0f6_7074:
    ld [$0003], sp                                ; $7074: $08 $03 $00
    add c                                         ; $7077: $81
    ld bc, $001f                                  ; $7078: $01 $1f $00
    add c                                         ; $707b: $81
    ld b, b                                       ; $707c: $40
    ld [bc], a                                    ; $707d: $02
    ld h, b                                       ; $707e: $60
    adc h                                         ; $707f: $8c
    ld [hl], c                                    ; $7080: $71
    ld a, e                                       ; $7081: $7b
    ld a, a                                       ; $7082: $7f
    ld l, $4e                                     ; $7083: $2e $4e
    inc b                                         ; $7085: $04
    ld c, $04                                     ; $7086: $0e $04
    ld c, $0a                                     ; $7088: $0e $0a
    inc b                                         ; $708a: $04
    nop                                           ; $708b: $00
    ld [bc], a                                    ; $708c: $02
    inc b                                         ; $708d: $04
    add h                                         ; $708e: $84
    nop                                           ; $708f: $00
    inc b                                         ; $7090: $04
    nop                                           ; $7091: $00
    inc b                                         ; $7092: $04
    inc bc                                        ; $7093: $03
    nop                                           ; $7094: $00
    add c                                         ; $7095: $81
    inc b                                         ; $7096: $04
    rlca                                          ; $7097: $07
    nop                                           ; $7098: $00
    rst $38                                       ; $7099: $ff
    rlca                                          ; $709a: $07
    ld bc, $07f9                                  ; $709b: $01 $f9 $07
    or $09                                        ; $709e: $f6 $09
    rst $38                                       ; $70a0: $ff
    ld a, [$0081]                                 ; $70a1: $fa $81 $00
    ld [bc], a                                    ; $70a4: $02
    ld [bc], a                                    ; $70a5: $02
    add e                                         ; $70a6: $83
    rlca                                          ; $70a7: $07
    nop                                           ; $70a8: $00
    ld [bc], a                                    ; $70a9: $02
    ld a, [de]                                    ; $70aa: $1a
    nop                                           ; $70ab: $00
    rst $38                                       ; $70ac: $ff
    rlca                                          ; $70ad: $07
    ld bc, $07f9                                  ; $70ae: $01 $f9 $07
    or $09                                        ; $70b1: $f6 $09
    cp $fb                                        ; $70b3: $fe $fb
    add c                                         ; $70b5: $81
    inc b                                         ; $70b6: $04
    ld [bc], a                                    ; $70b7: $02
    nop                                           ; $70b8: $00
    add h                                         ; $70b9: $84
    inc b                                         ; $70ba: $04
    ld de, $000a                                  ; $70bb: $11 $0a $00
    ld [bc], a                                    ; $70be: $02
    inc b                                         ; $70bf: $04
    rla                                           ; $70c0: $17
    nop                                           ; $70c1: $00
    rst $38                                       ; $70c2: $ff
    rlca                                          ; $70c3: $07
    ld bc, $07f9                                  ; $70c4: $01 $f9 $07
    or $09                                        ; $70c7: $f6 $09
    db $fd                                        ; $70c9: $fd
    db $fc                                        ; $70ca: $fc
    add c                                         ; $70cb: $81
    ld [$0002], sp                                ; $70cc: $08 $02 $00
    add [hl]                                      ; $70cf: $86
    ld [$0014], sp                                ; $70d0: $08 $14 $00
    ld b, c                                       ; $70d3: $41
    ld [hl+], a                                   ; $70d4: $22
    inc d                                         ; $70d5: $14
    ld [bc], a                                    ; $70d6: $02
    nop                                           ; $70d7: $00
    ld [bc], a                                    ; $70d8: $02
    ld [$0013], sp                                ; $70d9: $08 $13 $00
    rst $38                                       ; $70dc: $ff
    rlca                                          ; $70dd: $07
    ld bc, $07fb                                  ; $70de: $01 $fb $07
    ei                                            ; $70e1: $fb
    ld a, [bc]                                    ; $70e2: $0a
    rst $38                                       ; $70e3: $ff
    ei                                            ; $70e4: $fb
    ld [bc], a                                    ; $70e5: $02
    ld b, $84                                     ; $70e6: $06 $84
    dec c                                         ; $70e8: $0d
    dec bc                                        ; $70e9: $0b
    add hl, bc                                    ; $70ea: $09
    rrca                                          ; $70eb: $0f
    ld [bc], a                                    ; $70ec: $02
    ld b, $18                                     ; $70ed: $06 $18
    nop                                           ; $70ef: $00
    rst $38                                       ; $70f0: $ff
    rlca                                          ; $70f1: $07
    ld bc, $07fb                                  ; $70f2: $01 $fb $07
    ei                                            ; $70f5: $fb
    ld a, [bc]                                    ; $70f6: $0a
    cp $fc                                        ; $70f7: $fe $fc
    ld [bc], a                                    ; $70f9: $02
    ld d, $88                                     ; $70fa: $16 $88
    dec sp                                        ; $70fc: $3b
    ccf                                           ; $70fd: $3f
    ld a, [hl+]                                   ; $70fe: $2a
    ld [hl], $1d                                  ; $70ff: $36 $1d
    inc de                                        ; $7101: $13
    scf                                           ; $7102: $37
    ccf                                           ; $7103: $3f
    ld [bc], a                                    ; $7104: $02
    ld a, [de]                                    ; $7105: $1a
    inc d                                         ; $7106: $14
    nop                                           ; $7107: $00
    rst $38                                       ; $7108: $ff
    rlca                                          ; $7109: $07
    ld bc, $07fb                                  ; $710a: $01 $fb $07
    ei                                            ; $710d: $fb
    ld a, [bc]                                    ; $710e: $0a
    db $fd                                        ; $710f: $fd
    db $fd                                        ; $7110: $fd
    ld [bc], a                                    ; $7111: $02
    ld b, [hl]                                    ; $7112: $46
    adc h                                         ; $7113: $8c
    adc c                                         ; $7114: $89
    rst $08                                       ; $7115: $cf
    or h                                          ; $7116: $b4
    db $fc                                        ; $7117: $fc
    ld e, h                                       ; $7118: $5c
    ld h, h                                       ; $7119: $64
    ld a, [hl-]                                   ; $711a: $3a
    ld h, $2d                                     ; $711b: $26 $2d
    ccf                                           ; $711d: $3f
    sub c                                         ; $711e: $91
    di                                            ; $711f: $f3
    ld [bc], a                                    ; $7120: $02
    ld h, d                                       ; $7121: $62
    stop                                          ; $7122: $10 $00
    rst $38                                       ; $7124: $ff
    add hl, bc                                    ; $7125: $09
    ld [bc], a                                    ; $7126: $02
    ei                                            ; $7127: $fb
    rlca                                          ; $7128: $07
    ei                                            ; $7129: $fb
    ld a, [bc]                                    ; $712a: $0a
    db $fc                                        ; $712b: $fc
    db $fc                                        ; $712c: $fc
    db $fc                                        ; $712d: $fc
    cp $02                                        ; $712e: $fe $02
    ld b, $90                                     ; $7130: $06 $90
    add hl, bc                                    ; $7132: $09
    rrca                                          ; $7133: $0f
    ld d, h                                       ; $7134: $54
    ld e, h                                       ; $7135: $5c
    sbc e                                         ; $7136: $9b
    rst $10                                       ; $7137: $d7
    xor [hl]                                      ; $7138: $ae
    pop af                                        ; $7139: $f1
    ld e, l                                       ; $713a: $5d
    ld h, e                                       ; $713b: $63
    ld [hl], $3a                                  ; $713c: $36 $3a
    ld a, [bc]                                    ; $713e: $0a
    ld c, $24                                     ; $713f: $0e $24
    inc a                                         ; $7141: $3c
    ld [bc], a                                    ; $7142: $02
    jr jr_0f6_7159                                ; $7143: $18 $14

    nop                                           ; $7145: $00
    ld [bc], a                                    ; $7146: $02
    ld [bc], a                                    ; $7147: $02
    add h                                         ; $7148: $84
    ld bc, $0103                                  ; $7149: $01 $03 $01
    inc bc                                        ; $714c: $03
    ld [bc], a                                    ; $714d: $02
    ld [bc], a                                    ; $714e: $02
    stop                                          ; $714f: $10 $00
    rst $38                                       ; $7151: $ff
    add hl, bc                                    ; $7152: $09
    ld [bc], a                                    ; $7153: $02
    ei                                            ; $7154: $fb
    rlca                                          ; $7155: $07
    ei                                            ; $7156: $fb
    ld a, [bc]                                    ; $7157: $0a
    ei                                            ; $7158: $fb

jr_0f6_7159:
    ei                                            ; $7159: $fb
    ei                                            ; $715a: $fb
    rst $38                                       ; $715b: $ff
    sbc b                                         ; $715c: $98
    dec b                                         ; $715d: $05
    rlca                                          ; $715e: $07
    ld a, [bc]                                    ; $715f: $0a
    ld c, $14                                     ; $7160: $0e $14
    inc e                                         ; $7162: $1c
    dec d                                         ; $7163: $15
    dec e                                         ; $7164: $1d
    sub [hl]                                      ; $7165: $96
    sbc e                                         ; $7166: $9b
    ld c, a                                       ; $7167: $4f
    ret z                                         ; $7168: $c8

    cp a                                          ; $7169: $bf
    pop af                                        ; $716a: $f1
    ld b, [hl]                                    ; $716b: $46
    ld a, l                                       ; $716c: $7d
    cp [hl]                                       ; $716d: $be
    rst $38                                       ; $716e: $ff
    ld b, d                                       ; $716f: $42
    ld b, e                                       ; $7170: $43
    dec b                                         ; $7171: $05
    rlca                                          ; $7172: $07
    ld a, [bc]                                    ; $7173: $0a
    ld c, $0e                                     ; $7174: $0e $0e
    nop                                           ; $7176: $00
    ld [bc], a                                    ; $7177: $02
    inc c                                         ; $7178: $0c
    add [hl]                                      ; $7179: $86
    ld [bc], a                                    ; $717a: $02
    ld c, $0d                                     ; $717b: $0e $0d
    rrca                                          ; $717d: $0f
    ld [bc], a                                    ; $717e: $02
    inc bc                                        ; $717f: $03
    ld [bc], a                                    ; $7180: $02
    add hl, bc                                    ; $7181: $09
    ld [bc], a                                    ; $7182: $02
    ld [$0a02], sp                                ; $7183: $08 $02 $0a
    add d                                         ; $7186: $82
    dec b                                         ; $7187: $05
    rlca                                          ; $7188: $07
    ld [bc], a                                    ; $7189: $02
    ld [bc], a                                    ; $718a: $02
    ld [$ff00], sp                                ; $718b: $08 $00 $ff
    add hl, bc                                    ; $718e: $09
    ld [bc], a                                    ; $718f: $02
    ei                                            ; $7190: $fb
    rlca                                          ; $7191: $07
    ei                                            ; $7192: $fb
    ld a, [bc]                                    ; $7193: $0a
    ei                                            ; $7194: $fb
    ei                                            ; $7195: $fb
    ei                                            ; $7196: $fb
    rst $38                                       ; $7197: $ff
    ld [bc], a                                    ; $7198: $02
    ld [$3102], sp                                ; $7199: $08 $02 $31
    sub b                                         ; $719c: $90
    ld d, d                                       ; $719d: $52
    ld [hl], e                                    ; $719e: $73
    ld e, l                                       ; $719f: $5d
    ld a, [hl]                                    ; $71a0: $7e
    ld d, [hl]                                    ; $71a1: $56
    ld l, l                                       ; $71a2: $6d
    cpl                                           ; $71a3: $2f
    ld sp, $181f                                  ; $71a4: $31 $1f $18
    add [hl]                                      ; $71a7: $86
    adc e                                         ; $71a8: $8b
    ld a, e                                       ; $71a9: $7b
    ld [hl], a                                    ; $71aa: $77
    ld b, h                                       ; $71ab: $44
    ld a, h                                       ; $71ac: $7c
    ld [bc], a                                    ; $71ad: $02
    ld a, b                                       ; $71ae: $78
    add d                                         ; $71af: $82
    and c                                         ; $71b0: $a1
    pop hl                                        ; $71b1: $e1
    ld [bc], a                                    ; $71b2: $02
    ld b, b                                       ; $71b3: $40
    ld [$0200], sp                                ; $71b4: $08 $00 $02
    inc c                                         ; $71b7: $0c
    add c                                         ; $71b8: $81
    ld [bc], a                                    ; $71b9: $02
    inc bc                                        ; $71ba: $03
    ld c, $02                                     ; $71bb: $0e $02
    add hl, bc                                    ; $71bd: $09
    ld [bc], a                                    ; $71be: $02
    ld [$0488], sp                                ; $71bf: $08 $88 $04
    inc c                                         ; $71c2: $0c
    ld a, [bc]                                    ; $71c3: $0a
    ld b, $0a                                     ; $71c4: $06 $0a
    ld c, $0a                                     ; $71c6: $0e $0a
    ld c, $02                                     ; $71c8: $0e $02
    inc c                                         ; $71ca: $0c
    ld [bc], a                                    ; $71cb: $02
    nop                                           ; $71cc: $00
    ld [bc], a                                    ; $71cd: $02
    ld [bc], a                                    ; $71ce: $02
    add d                                         ; $71cf: $82
    dec b                                         ; $71d0: $05
    rlca                                          ; $71d1: $07
    ld [bc], a                                    ; $71d2: $02
    ld [bc], a                                    ; $71d3: $02
    ld [bc], a                                    ; $71d4: $02
    nop                                           ; $71d5: $00
    rst $38                                       ; $71d6: $ff
    dec bc                                        ; $71d7: $0b
    inc bc                                        ; $71d8: $03
    ei                                            ; $71d9: $fb
    rlca                                          ; $71da: $07
    ei                                            ; $71db: $fb
    ld a, [bc]                                    ; $71dc: $0a
    db $fc                                        ; $71dd: $fc
    ld sp, hl                                     ; $71de: $f9
    ei                                            ; $71df: $fb
    ld bc, $010b                                  ; $71e0: $01 $0b $01
    ld [bc], a                                    ; $71e3: $02
    ld bc, $0a8c                                  ; $71e4: $01 $8c $0a
    dec bc                                        ; $71e7: $0b
    ld [de], a                                    ; $71e8: $12

jr_0f6_71e9:
    inc de                                        ; $71e9: $13
    dec hl                                        ; $71ea: $2b
    ld a, [hl-]                                   ; $71eb: $3a
    dec h                                         ; $71ec: $25
    ld a, $17                                     ; $71ed: $3e $17
    jr jr_0f6_71ff                                ; $71ef: $18 $0e

    rrca                                          ; $71f1: $0f
    ld [bc], a                                    ; $71f2: $02
    ld bc, $0a84                                  ; $71f3: $01 $84 $0a
    dec bc                                        ; $71f6: $0b
    inc b                                         ; $71f7: $04
    rlca                                          ; $71f8: $07
    ld [bc], a                                    ; $71f9: $02
    inc bc                                        ; $71fa: $03
    inc b                                         ; $71fb: $04
    nop                                           ; $71fc: $00
    ld [bc], a                                    ; $71fd: $02
    db $10                                        ; $71fe: $10

jr_0f6_71ff:
    add d                                         ; $71ff: $82
    jr z, jr_0f6_723a                             ; $7200: $28 $38

    ld [bc], a                                    ; $7202: $02
    db $10                                        ; $7203: $10
    ld [bc], a                                    ; $7204: $02
    ret nz                                        ; $7205: $c0

    add h                                         ; $7206: $84
    jr nz, jr_0f6_71e9                            ; $7207: $20 $e0

    ld d, b                                       ; $7209: $50
    ret nc                                        ; $720a: $d0

    ld [bc], a                                    ; $720b: $02

Call_0f6_720c:
    add b                                         ; $720c: $80
    ld [bc], a                                    ; $720d: $02
    ldh a, [$8a]                                  ; $720e: $f0 $8a
    add sp, $18                                   ; $7210: $e8 $18
    and h                                         ; $7212: $a4
    ld a, h                                       ; $7213: $7c
    call nc, Call_0f6_485c                        ; $7214: $d4 $5c $48
    ret z                                         ; $7217: $c8

    ld d, b                                       ; $7218: $50
    ret nc                                        ; $7219: $d0

    ld [bc], a                                    ; $721a: $02
    add b                                         ; $721b: $80
    add d                                         ; $721c: $82
    ld b, b                                       ; $721d: $40
    ret nz                                        ; $721e: $c0

    ld [bc], a                                    ; $721f: $02
    add b                                         ; $7220: $80
    ld b, $00                                     ; $7221: $06 $00
    ld [bc], a                                    ; $7223: $02
    ld [$1482], sp                                ; $7224: $08 $82 $14
    inc e                                         ; $7227: $1c
    ld [bc], a                                    ; $7228: $02
    ld [$001a], sp                                ; $7229: $08 $1a $00
    rst $38                                       ; $722c: $ff
    dec c                                         ; $722d: $0d
    inc b                                         ; $722e: $04
    ei                                            ; $722f: $fb
    rlca                                          ; $7230: $07
    ei                                            ; $7231: $fb
    ld a, [bc]                                    ; $7232: $0a
    ei                                            ; $7233: $fb
    ei                                            ; $7234: $fb
    cp $ff                                        ; $7235: $fe $ff

Call_0f6_7237:
    dec bc                                        ; $7237: $0b
    ei                                            ; $7238: $fb
    dec bc                                        ; $7239: $0b

jr_0f6_723a:
    rst $38                                       ; $723a: $ff
    sbc b                                         ; $723b: $98
    dec b                                         ; $723c: $05
    rlca                                          ; $723d: $07
    ld a, [bc]                                    ; $723e: $0a
    ld c, $14                                     ; $723f: $0e $14
    inc e                                         ; $7241: $1c
    dec d                                         ; $7242: $15
    dec e                                         ; $7243: $1d
    sub [hl]                                      ; $7244: $96
    sbc e                                         ; $7245: $9b
    ld c, a                                       ; $7246: $4f
    ret z                                         ; $7247: $c8

    cp a                                          ; $7248: $bf
    pop af                                        ; $7249: $f1
    ld b, [hl]                                    ; $724a: $46
    ld a, l                                       ; $724b: $7d
    ld a, [hl-]                                   ; $724c: $3a
    dec sp                                        ; $724d: $3b
    ld [hl+], a                                   ; $724e: $22
    inc hl                                        ; $724f: $23
    ld d, l                                       ; $7250: $55
    ld [hl], a                                    ; $7251: $77
    ld a, [hl+]                                   ; $7252: $2a
    ld l, $04                                     ; $7253: $2e $04
    nop                                           ; $7255: $00
    ld [bc], a                                    ; $7256: $02
    ld [bc], a                                    ; $7257: $02
    add d                                         ; $7258: $82
    dec b                                         ; $7259: $05
    rlca                                          ; $725a: $07
    ld [bc], a                                    ; $725b: $02
    inc c                                         ; $725c: $0c
    add [hl]                                      ; $725d: $86
    ld [bc], a                                    ; $725e: $02
    ld c, $0d                                     ; $725f: $0e $0d
    rrca                                          ; $7261: $0f
    ld [bc], a                                    ; $7262: $02
    inc bc                                        ; $7263: $03
    ld [bc], a                                    ; $7264: $02
    add hl, bc                                    ; $7265: $09
    ld [bc], a                                    ; $7266: $02
    ld [$0a02], sp                                ; $7267: $08 $02 $0a
    add d                                         ; $726a: $82
    dec b                                         ; $726b: $05
    rlca                                          ; $726c: $07
    ld [bc], a                                    ; $726d: $02
    ld [bc], a                                    ; $726e: $02
    ld [$0200], sp                                ; $726f: $08 $00 $02
    jr nz, jr_0f6_727c                            ; $7272: $20 $08

    nop                                           ; $7274: $00
    ld [bc], a                                    ; $7275: $02
    ld b, b                                       ; $7276: $40
    add d                                         ; $7277: $82
    and b                                         ; $7278: $a0
    ldh [rSC], a                                  ; $7279: $e0 $02
    ld b, b                                       ; $727b: $40

jr_0f6_727c:
    ld e, $00                                     ; $727c: $1e $00
    ld [bc], a                                    ; $727e: $02
    ld [bc], a                                    ; $727f: $02
    add d                                         ; $7280: $82
    dec b                                         ; $7281: $05
    rlca                                          ; $7282: $07
    ld [bc], a                                    ; $7283: $02
    ld [bc], a                                    ; $7284: $02
    ld [de], a                                    ; $7285: $12
    nop                                           ; $7286: $00
    rst $38                                       ; $7287: $ff
    dec c                                         ; $7288: $0d
    inc b                                         ; $7289: $04
    ei                                            ; $728a: $fb
    rlca                                          ; $728b: $07
    ei                                            ; $728c: $fb
    ld a, [bc]                                    ; $728d: $0a
    ei                                            ; $728e: $fb
    ei                                            ; $728f: $fb
    db $fc                                        ; $7290: $fc
    rst $38                                       ; $7291: $ff
    dec c                                         ; $7292: $0d
    ei                                            ; $7293: $fb
    dec sp                                        ; $7294: $3b
    sub l                                         ; $7295: $95
    ld [bc], a                                    ; $7296: $02
    ld [$3102], sp                                ; $7297: $08 $02 $31
    sub b                                         ; $729a: $90
    ld d, d                                       ; $729b: $52
    ld [hl], e                                    ; $729c: $73
    ld e, c                                       ; $729d: $59
    ld a, d                                       ; $729e: $7a
    ld d, [hl]                                    ; $729f: $56
    ld l, l                                       ; $72a0: $6d
    cpl                                           ; $72a1: $2f
    ld sp, $080f                                  ; $72a2: $31 $0f $08
    add [hl]                                      ; $72a5: $86
    adc e                                         ; $72a6: $8b
    ld a, c                                       ; $72a7: $79
    ld [hl], l                                    ; $72a8: $75
    ld b, h                                       ; $72a9: $44
    ld a, h                                       ; $72aa: $7c
    ld [bc], a                                    ; $72ab: $02
    jr c, @+$04                                   ; $72ac: $38 $02

    ld bc, $0002                                  ; $72ae: $01 $02 $00
    ld [bc], a                                    ; $72b1: $02
    jr nz, @-$7c                                  ; $72b2: $20 $82

    ld d, b                                       ; $72b4: $50
    ld [hl], b                                    ; $72b5: $70
    ld [bc], a                                    ; $72b6: $02
    jr nz, jr_0f6_72bb                            ; $72b7: $20 $02

    inc c                                         ; $72b9: $0c
    add c                                         ; $72ba: $81

jr_0f6_72bb:
    ld [bc], a                                    ; $72bb: $02
    inc bc                                        ; $72bc: $03
    ld c, $02                                     ; $72bd: $0e $02
    add hl, bc                                    ; $72bf: $09
    ld [bc], a                                    ; $72c0: $02
    nop                                           ; $72c1: $00
    adc b                                         ; $72c2: $88
    inc b                                         ; $72c3: $04
    inc c                                         ; $72c4: $0c
    ld a, [bc]                                    ; $72c5: $0a
    ld b, $0a                                     ; $72c6: $06 $0a
    ld c, $0a                                     ; $72c8: $0e $0a
    ld c, $02                                     ; $72ca: $0e $02
    inc c                                         ; $72cc: $0c
    inc b                                         ; $72cd: $04
    nop                                           ; $72ce: $00
    ld [bc], a                                    ; $72cf: $02
    ld [bc], a                                    ; $72d0: $02
    add d                                         ; $72d1: $82
    dec b                                         ; $72d2: $05
    rlca                                          ; $72d3: $07
    ld [bc], a                                    ; $72d4: $02
    ld [bc], a                                    ; $72d5: $02
    ld [bc], a                                    ; $72d6: $02
    nop                                           ; $72d7: $00
    ld [bc], a                                    ; $72d8: $02
    ld [bc], a                                    ; $72d9: $02
    add d                                         ; $72da: $82
    dec b                                         ; $72db: $05
    rlca                                          ; $72dc: $07
    ld [bc], a                                    ; $72dd: $02
    ld [bc], a                                    ; $72de: $02
    ld [bc], a                                    ; $72df: $02
    nop                                           ; $72e0: $00
    ld [bc], a                                    ; $72e1: $02
    ld b, b                                       ; $72e2: $40
    add d                                         ; $72e3: $82
    and b                                         ; $72e4: $a0
    ldh [rSC], a                                  ; $72e5: $e0 $02
    ld b, b                                       ; $72e7: $40
    ld [de], a                                    ; $72e8: $12
    nop                                           ; $72e9: $00
    ld [bc], a                                    ; $72ea: $02
    ld bc, $001e                                  ; $72eb: $01 $1e $00
    rst $38                                       ; $72ee: $ff
    dec bc                                        ; $72ef: $0b
    inc bc                                        ; $72f0: $03
    ei                                            ; $72f1: $fb
    rlca                                          ; $72f2: $07
    ei                                            ; $72f3: $fb
    ld a, [bc]                                    ; $72f4: $0a
    db $fd                                        ; $72f5: $fd
    ld hl, sp-$05                                 ; $72f6: $f8 $fb
    nop                                           ; $72f8: $00
    dec bc                                        ; $72f9: $0b
    nop                                           ; $72fa: $00
    ld [bc], a                                    ; $72fb: $02
    dec b                                         ; $72fc: $05
    ld [bc], a                                    ; $72fd: $02
    add hl, bc                                    ; $72fe: $09
    add [hl]                                      ; $72ff: $86
    dec d                                         ; $7300: $15
    dec e                                         ; $7301: $1d
    ld [de], a                                    ; $7302: $12
    rra                                           ; $7303: $1f
    dec bc                                        ; $7304: $0b
    inc c                                         ; $7305: $0c
    ld [bc], a                                    ; $7306: $02
    rlca                                          ; $7307: $07
    ld [bc], a                                    ; $7308: $02
    nop                                           ; $7309: $00
    ld [bc], a                                    ; $730a: $02
    dec b                                         ; $730b: $05
    add d                                         ; $730c: $82
    ld [bc], a                                    ; $730d: $02
    inc bc                                        ; $730e: $03
    ld [bc], a                                    ; $730f: $02
    ld bc, $0006                                  ; $7310: $01 $06 $00
    ld [bc], a                                    ; $7313: $02
    inc b                                         ; $7314: $04
    add d                                         ; $7315: $82
    ld a, [bc]                                    ; $7316: $0a

jr_0f6_7317:
    ld c, $02                                     ; $7317: $0e $02
    inc b                                         ; $7319: $04
    ld [bc], a                                    ; $731a: $02
    ld h, b                                       ; $731b: $60
    sub h                                         ; $731c: $94
    sub b                                         ; $731d: $90
    ldh a, [$28]                                  ; $731e: $f0 $28
    add sp, $40                                   ; $7320: $e8 $40

Call_0f6_7322:
    ret nz                                        ; $7322: $c0

    ld hl, sp+$78                                 ; $7323: $f8 $78
    db $f4                                        ; $7325: $f4
    inc c                                         ; $7326: $0c
    jp nc, Jump_0f6_6a3e                          ; $7327: $d2 $3e $6a

    xor [hl]                                      ; $732a: $ae
    and h                                         ; $732b: $a4
    db $e4                                        ; $732c: $e4
    jr z, jr_0f6_7317                             ; $732d: $28 $e8

    ld b, b                                       ; $732f: $40
    ret nz                                        ; $7330: $c0

    ld [bc], a                                    ; $7331: $02
    add b                                         ; $7332: $80
    ld a, [bc]                                    ; $7333: $0a
    nop                                           ; $7334: $00
    ld [bc], a                                    ; $7335: $02
    inc b                                         ; $7336: $04
    add d                                         ; $7337: $82
    ld a, [bc]                                    ; $7338: $0a
    ld c, $02                                     ; $7339: $0e $02
    inc b                                         ; $733b: $04
    ld [bc], a                                    ; $733c: $02
    ld b, b                                       ; $733d: $40
    add d                                         ; $733e: $82
    and b                                         ; $733f: $a0
    ldh [rSC], a                                  ; $7340: $e0 $02
    ld b, b                                       ; $7342: $40
    ld [de], a                                    ; $7343: $12
    nop                                           ; $7344: $00
    rst $38                                       ; $7345: $ff
    rlca                                          ; $7346: $07
    ld bc, $12ef                                  ; $7347: $01 $ef $12
    ld a, [c]                                     ; $734a: $f2
    ld c, $f4                                     ; $734b: $0e $f4
    ld hl, sp-$7c                                 ; $734d: $f8 $84
    rlca                                          ; $734f: $07
    dec b                                         ; $7350: $05
    inc b                                         ; $7351: $04
    ld b, $1c                                     ; $7352: $06 $1c
    nop                                           ; $7354: $00
    rst $38                                       ; $7355: $ff
    add hl, bc                                    ; $7356: $09
    ld [bc], a                                    ; $7357: $02
    rst $28                                       ; $7358: $ef
    ld [de], a                                    ; $7359: $12
    ld a, [c]                                     ; $735a: $f2
    ld c, $f5                                     ; $735b: $0e $f5
    rst $30                                       ; $735d: $f7
    push af                                       ; $735e: $f5
    ld a, [$048a]                                 ; $735f: $fa $8a $04
    dec bc                                        ; $7362: $0b
    add hl, de                                    ; $7363: $19
    daa                                           ; $7364: $27
    jr z, jr_0f6_73bf                             ; $7365: $28 $58

    ldh [$a0], a                                  ; $7367: $e0 $a0
    add b                                         ; $7369: $80
    ret nz                                        ; $736a: $c0

    rla                                           ; $736b: $17
    nop                                           ; $736c: $00
    add c                                         ; $736d: $81
    rlca                                          ; $736e: $07
    ld e, $00                                     ; $736f: $1e $00
    rst $38                                       ; $7371: $ff
    add hl, bc                                    ; $7372: $09
    ld [bc], a                                    ; $7373: $02
    rst $28                                       ; $7374: $ef
    ld [de], a                                    ; $7375: $12
    ld a, [c]                                     ; $7376: $f2
    ld c, $f5                                     ; $7377: $0e $f5
    di                                            ; $7379: $f3
    push af                                       ; $737a: $f5
    ld hl, sp+$02                                 ; $737b: $f8 $02
    nop                                           ; $737d: $00
    sub e                                         ; $737e: $93
    ld bc, $0200                                  ; $737f: $01 $00 $02
    dec b                                         ; $7382: $05
    ld bc, $0c0f                                  ; $7383: $01 $0f $0c
    inc d                                         ; $7386: $14
    jr jr_0f6_73b1                                ; $7387: $18 $28

    jr nz, jr_0f6_73db                            ; $7389: $20 $50

    db $10                                        ; $738b: $10
    ld [hl], b                                    ; $738c: $70
    ld b, b                                       ; $738d: $40
    and b                                         ; $738e: $a0
    ld h, b                                       ; $738f: $60
    and b                                         ; $7390: $a0
    nop                                           ; $7391: $00
    inc bc                                        ; $7392: $03
    ret nz                                        ; $7393: $c0

    ld [$8400], sp                                ; $7394: $08 $00 $84
    inc bc                                        ; $7397: $03
    rlca                                          ; $7398: $07
    inc d                                         ; $7399: $14
    inc c                                         ; $739a: $0c
    ld [bc], a                                    ; $739b: $02
    db $10                                        ; $739c: $10
    ld a, [de]                                    ; $739d: $1a
    nop                                           ; $739e: $00
    rst $38                                       ; $739f: $ff
    rlca                                          ; $73a0: $07
    ld bc, $12ef                                  ; $73a1: $01 $ef $12
    ld a, [c]                                     ; $73a4: $f2
    ld c, $fa                                     ; $73a5: $0e $fa
    ld a, [c]                                     ; $73a7: $f2
    inc b                                         ; $73a8: $04
    db $10                                        ; $73a9: $10
    ld [bc], a                                    ; $73aa: $02
    jr nz, @-$7d                                  ; $73ab: $20 $81

    nop                                           ; $73ad: $00
    ld [bc], a                                    ; $73ae: $02
    jr nz, @-$67                                  ; $73af: $20 $97

jr_0f6_73b1:
    ld h, b                                       ; $73b1: $60
    db $10                                        ; $73b2: $10
    ld [hl], b                                    ; $73b3: $70
    nop                                           ; $73b4: $00
    ld h, b                                       ; $73b5: $60
    jr nc, jr_0f6_7408                            ; $73b6: $30 $50

    jr nz, jr_0f6_73fa                            ; $73b8: $20 $40

    db $10                                        ; $73ba: $10
    jr nc, jr_0f6_73bd                            ; $73bb: $30 $00

jr_0f6_73bd:
    jr c, @+$12                                   ; $73bd: $38 $10

jr_0f6_73bf:
    ld [$3e02], sp                                ; $73bf: $08 $02 $3e
    inc c                                         ; $73c2: $0c
    ld [bc], a                                    ; $73c3: $02
    ld bc, $010f                                  ; $73c4: $01 $0f $01
    inc bc                                        ; $73c7: $03
    rst $38                                       ; $73c8: $ff
    add hl, bc                                    ; $73c9: $09
    ld [bc], a                                    ; $73ca: $02
    rst $28                                       ; $73cb: $ef
    ld [de], a                                    ; $73cc: $12
    ld a, [c]                                     ; $73cd: $f2
    ld c, $00                                     ; $73ce: $0e $00
    di                                            ; $73d0: $f3
    nop                                           ; $73d1: $00
    rst $30                                       ; $73d2: $f7
    inc b                                         ; $73d3: $04
    add b                                         ; $73d4: $80
    sub h                                         ; $73d5: $94
    ld b, b                                       ; $73d6: $40
    ret nz                                        ; $73d7: $c0

    nop                                           ; $73d8: $00
    ld b, b                                       ; $73d9: $40
    ld h, b                                       ; $73da: $60

jr_0f6_73db:
    jr nz, jr_0f6_742d                            ; $73db: $20 $50

    jr nc, @+$22                                  ; $73dd: $30 $20

    db $10                                        ; $73df: $10
    ld [$0c38], sp                                ; $73e0: $08 $38 $0c
    inc d                                         ; $73e3: $14
    dec b                                         ; $73e4: $05
    dec bc                                        ; $73e5: $0b
    ld [bc], a                                    ; $73e6: $02
    dec b                                         ; $73e7: $05
    nop                                           ; $73e8: $00
    inc bc                                        ; $73e9: $03
    inc e                                         ; $73ea: $1c
    nop                                           ; $73eb: $00
    add [hl]                                      ; $73ec: $86
    inc b                                         ; $73ed: $04
    inc c                                         ; $73ee: $0c

jr_0f6_73ef:
    dec c                                         ; $73ef: $0d
    inc bc                                        ; $73f0: $03
    ld bc, $060f                                  ; $73f1: $01 $0f $06
    nop                                           ; $73f4: $00
    rst $38                                       ; $73f5: $ff
    add hl, bc                                    ; $73f6: $09
    ld [bc], a                                    ; $73f7: $02
    rst $28                                       ; $73f8: $ef
    ld [de], a                                    ; $73f9: $12

jr_0f6_73fa:
    ld a, [c]                                     ; $73fa: $f2
    ld c, $06                                     ; $73fb: $0e $06
    ei                                            ; $73fd: $fb
    ld b, $03                                     ; $73fe: $06 $03
    ld [$0200], sp                                ; $7400: $08 $00 $02
    push bc                                       ; $7403: $c5
    add h                                         ; $7404: $84
    add hl, hl                                    ; $7405: $29
    ld a, $00                                     ; $7406: $3e $00

jr_0f6_7408:
    rrca                                          ; $7408: $0f
    ld [de], a                                    ; $7409: $12
    nop                                           ; $740a: $00
    ld [bc], a                                    ; $740b: $02
    inc bc                                        ; $740c: $03
    adc h                                         ; $740d: $8c
    ld [$040f], sp                                ; $740e: $08 $0f $04
    ld a, [bc]                                    ; $7411: $0a
    inc b                                         ; $7412: $04
    ld a, [hl-]                                   ; $7413: $3a
    ld d, b                                       ; $7414: $50
    ld l, b                                       ; $7415: $68
    add b                                         ; $7416: $80
    ld l, b                                       ; $7417: $68
    nop                                           ; $7418: $00
    add b                                         ; $7419: $80
    ld [de], a                                    ; $741a: $12
    nop                                           ; $741b: $00
    rst $38                                       ; $741c: $ff
    add hl, bc                                    ; $741d: $09
    ld [bc], a                                    ; $741e: $02
    rst $28                                       ; $741f: $ef
    ld [de], a                                    ; $7420: $12
    ld a, [c]                                     ; $7421: $f2
    ld c, $01                                     ; $7422: $0e $01
    ld bc, $0601                                  ; $7424: $01 $01 $06
    ld c, $00                                     ; $7427: $0e $00
    ld [bc], a                                    ; $7429: $02
    ld bc, $0488                                  ; $742a: $01 $88 $04

jr_0f6_742d:
    rlca                                          ; $742d: $07
    ld a, [bc]                                    ; $742e: $0a
    dec c                                         ; $742f: $0d
    inc l                                         ; $7430: $2c
    jr nc, @-$3e                                  ; $7431: $30 $c0

    ldh [$08], a                                  ; $7433: $e0 $08
    nop                                           ; $7435: $00
    ld [bc], a                                    ; $7436: $02
    inc bc                                        ; $7437: $03
    sub b                                         ; $7438: $90
    nop                                           ; $7439: $00
    inc bc                                        ; $743a: $03
    ld b, $05                                     ; $743b: $06 $05
    ld [bc], a                                    ; $743d: $02
    dec b                                         ; $743e: $05
    ld [$040e], sp                                ; $743f: $08 $0e $04
    ld a, [bc]                                    ; $7442: $0a
    jr jr_0f6_7459                                ; $7443: $18 $14

    db $10                                        ; $7445: $10
    ld [$1000], sp                                ; $7446: $08 $00 $10
    ld c, $00                                     ; $7449: $0e $00
    rst $38                                       ; $744b: $ff
    rlca                                          ; $744c: $07
    ld bc, $12ef                                  ; $744d: $01 $ef $12
    ld a, [c]                                     ; $7450: $f2
    ld c, $f7                                     ; $7451: $0e $f7
    ld b, $85                                     ; $7453: $06 $85
    ld b, b                                       ; $7455: $40
    ld h, b                                       ; $7456: $60
    ld b, b                                       ; $7457: $40
    ld a, b                                       ; $7458: $78

jr_0f6_7459:
    jr jr_0f6_745d                                ; $7459: $18 $02

    jr nz, jr_0f6_73ef                            ; $745b: $20 $92

jr_0f6_745d:
    ld a, $04                                     ; $745d: $3e $04
    ld [$0e00], sp                                ; $745f: $08 $00 $0e
    inc b                                         ; $7462: $04
    ld b, $02                                     ; $7463: $06 $02
    ld bc, $0506                                  ; $7465: $01 $06 $05
    nop                                           ; $7468: $00
    inc bc                                        ; $7469: $03
    inc b                                         ; $746a: $04
    rlca                                          ; $746b: $07
    ld [bc], a                                    ; $746c: $02
    inc bc                                        ; $746d: $03
    nop                                           ; $746e: $00
    inc bc                                        ; $746f: $03
    ld [bc], a                                    ; $7470: $02
    inc b                                         ; $7471: $04
    inc b                                         ; $7472: $04
    rst $38                                       ; $7473: $ff
    add hl, bc                                    ; $7474: $09
    ld [bc], a                                    ; $7475: $02

jr_0f6_7476:
    rst $28                                       ; $7476: $ef
    ld [de], a                                    ; $7477: $12
    ld a, [c]                                     ; $7478: $f2
    ld c, $f4                                     ; $7479: $0e $f4
    ld [bc], a                                    ; $747b: $02
    db $f4                                        ; $747c: $f4

jr_0f6_747d:
    ld b, $8a                                     ; $747d: $06 $8a
    add b                                         ; $747f: $80
    ldh a, [$b0]                                  ; $7480: $f0 $b0
    call z, $3a24                                 ; $7482: $cc $24 $3a
    ld a, [bc]                                    ; $7485: $0a
    dec c                                         ; $7486: $0d
    inc bc                                        ; $7487: $03
    ld [bc], a                                    ; $7488: $02
    ld [bc], a                                    ; $7489: $02
    ld bc, $001d                                  ; $748a: $01 $1d $00
    adc d                                         ; $748d: $8a
    ld [$0c00], sp                                ; $748e: $08 $00 $0c
    inc b                                         ; $7491: $04
    ld [$0c0a], sp                                ; $7492: $08 $0a $0c
    ld b, $04                                     ; $7495: $06 $04
    nop                                           ; $7497: $00
    ld [bc], a                                    ; $7498: $02
    ld [bc], a                                    ; $7499: $02
    add c                                         ; $749a: $81
    inc bc                                        ; $749b: $03
    inc b                                         ; $749c: $04
    ld bc, $0006                                  ; $749d: $01 $06 $00
    rst $38                                       ; $74a0: $ff
    dec bc                                        ; $74a1: $0b
    inc bc                                        ; $74a2: $03
    rst $28                                       ; $74a3: $ef
    ld [de], a                                    ; $74a4: $12
    ld a, [c]                                     ; $74a5: $f2
    ld c, $f4                                     ; $74a6: $0e $f4
    or $f4                                        ; $74a8: $f6 $f4
    cp $f4                                        ; $74aa: $fe $f4
    rst $38                                       ; $74ac: $ff
    inc bc                                        ; $74ad: $03
    nop                                           ; $74ae: $00
    adc c                                         ; $74af: $89
    dec bc                                        ; $74b0: $0b
    dec b                                         ; $74b1: $05
    dec bc                                        ; $74b2: $0b
    db $10                                        ; $74b3: $10
    ld l, $20                                     ; $74b4: $2e $20
    ld d, b                                       ; $74b6: $50
    db $10                                        ; $74b7: $10
    ldh a, [rSC]                                  ; $74b8: $f0 $02
    ret nz                                        ; $74ba: $c0

    inc de                                        ; $74bb: $13
    nop                                           ; $74bc: $00
    add e                                         ; $74bd: $83
    ld hl, sp-$36                                 ; $74be: $f8 $ca
    ld a, $02                                     ; $74c0: $3e $02
    ld d, c                                       ; $74c2: $51
    ld e, $00                                     ; $74c3: $1e $00
    ld [bc], a                                    ; $74c5: $02
    ld bc, $001a                                  ; $74c6: $01 $1a $00
    rst $38                                       ; $74c9: $ff
    rlca                                          ; $74ca: $07
    ld bc, $12ef                                  ; $74cb: $01 $ef $12
    ld a, [c]                                     ; $74ce: $f2
    ld c, $fe                                     ; $74cf: $0e $fe
    ld a, [$0088]                                 ; $74d1: $fa $88 $00
    ld [bc], a                                    ; $74d4: $02
    ld bc, $0203                                  ; $74d5: $01 $03 $02
    rlca                                          ; $74d8: $07
    nop                                           ; $74d9: $00
    ld bc, $0018                                  ; $74da: $01 $18 $00
    rst $38                                       ; $74dd: $ff
    add hl, bc                                    ; $74de: $09
    ld [bc], a                                    ; $74df: $02
    rst $28                                       ; $74e0: $ef
    ld [de], a                                    ; $74e1: $12
    ld a, [c]                                     ; $74e2: $f2
    ld c, $fb                                     ; $74e3: $0e $fb
    db $fc                                        ; $74e5: $fc
    ei                                            ; $74e6: $fb
    db $fd                                        ; $74e7: $fd
    ld [bc], a                                    ; $74e8: $02
    ld [$2486], sp                                ; $74e9: $08 $86 $24
    jr nz, @+$07                                  ; $74ec: $20 $05

    inc b                                         ; $74ee: $04
    ld [hl], h                                    ; $74ef: $74
    ld e, l                                       ; $74f0: $5d
    ld [bc], a                                    ; $74f1: $02
    jr z, jr_0f6_7476                             ; $74f2: $28 $82

    push hl                                       ; $74f4: $e5
    db $dd                                        ; $74f5: $dd
    ld [bc], a                                    ; $74f6: $02
    jr nz, jr_0f6_747d                            ; $74f7: $20 $84

    ld [bc], a                                    ; $74f9: $02
    ld a, [bc]                                    ; $74fa: $0a
    inc [hl]                                      ; $74fb: $34
    inc h                                         ; $74fc: $24
    stop                                          ; $74fd: $10 $00
    inc b                                         ; $74ff: $04
    ld bc, $001a                                  ; $7500: $01 $1a $00
    rst $38                                       ; $7503: $ff
    add hl, bc                                    ; $7504: $09
    ld [bc], a                                    ; $7505: $02
    rst $28                                       ; $7506: $ef
    ld [de], a                                    ; $7507: $12
    ld a, [c]                                     ; $7508: $f2
    ld c, $f8                                     ; $7509: $0e $f8
    ld sp, hl                                     ; $750b: $f9
    ld hl, sp+$00                                 ; $750c: $f8 $00
    ld [bc], a                                    ; $750e: $02
    inc b                                         ; $750f: $04
    ld [bc], a                                    ; $7510: $02
    nop                                           ; $7511: $00
    ld [bc], a                                    ; $7512: $02
    ld [de], a                                    ; $7513: $12
    adc b                                         ; $7514: $88
    ld b, d                                       ; $7515: $42
    ld d, [hl]                                    ; $7516: $56
    inc b                                         ; $7517: $04
    nop                                           ; $7518: $00
    db $10                                        ; $7519: $10
    ld de, $cd85                                  ; $751a: $11 $85 $cd
    ld [bc], a                                    ; $751d: $02
    nop                                           ; $751e: $00
    adc [hl]                                      ; $751f: $8e
    ld b, l                                       ; $7520: $45
    ld c, [hl]                                    ; $7521: $4e
    and c                                         ; $7522: $a1
    or l                                          ; $7523: $b5
    ld bc, $0a0b                                  ; $7524: $01 $0b $0a
    ld d, e                                       ; $7527: $53
    inc b                                         ; $7528: $04
    inc c                                         ; $7529: $0c
    nop                                           ; $752a: $00
    jr nz, jr_0f6_752e                            ; $752b: $20 $01

    dec b                                         ; $752d: $05

jr_0f6_752e:
    ld [bc], a                                    ; $752e: $02
    inc b                                         ; $752f: $04
    ld [bc], a                                    ; $7530: $02
    nop                                           ; $7531: $00
    ld [bc], a                                    ; $7532: $02
    db $10                                        ; $7533: $10
    add h                                         ; $7534: $84
    nop                                           ; $7535: $00
    ld b, b                                       ; $7536: $40
    nop                                           ; $7537: $00
    inc h                                         ; $7538: $24
    ld [bc], a                                    ; $7539: $02
    jr nc, @-$6a                                  ; $753a: $30 $94

    ld b, d                                       ; $753c: $42
    ld b, $22                                     ; $753d: $06 $22
    ld h, d                                       ; $753f: $62
    ld de, $2209                                  ; $7540: $11 $09 $22
    ld [hl-], a                                   ; $7543: $32
    jr nz, jr_0f6_75a6                            ; $7544: $20 $60

    add hl, bc                                    ; $7546: $09
    ld sp, $1a32                                  ; $7547: $31 $32 $1a
    nop                                           ; $754a: $00
    ld b, b                                       ; $754b: $40
    ld c, b                                       ; $754c: $48
    ld [$4000], sp                                ; $754d: $08 $00 $40
    ld [bc], a                                    ; $7550: $02
    db $10                                        ; $7551: $10
    rst $38                                       ; $7552: $ff
    ld de, $ef06                                  ; $7553: $11 $06 $ef
    ld [de], a                                    ; $7556: $12
    ld a, [c]                                     ; $7557: $f2
    ld c, $f7                                     ; $7558: $0e $f7
    push af                                       ; $755a: $f5
    push af                                       ; $755b: $f5
    db $fd                                        ; $755c: $fd
    rst $30                                       ; $755d: $f7
    dec b                                         ; $755e: $05
    dec b                                         ; $755f: $05
    ld sp, hl                                     ; $7560: $f9
    dec b                                         ; $7561: $05
    cp $05                                        ; $7562: $fe $05
    ld [bc], a                                    ; $7564: $02
    add d                                         ; $7565: $82
    nop                                           ; $7566: $00
    ld [bc], a                                    ; $7567: $02
    inc b                                         ; $7568: $04
    ld [$3498], sp                                ; $7569: $08 $98 $34
    dec [hl]                                      ; $756c: $35
    inc b                                         ; $756d: $04
    inc h                                         ; $756e: $24
    ld b, b                                       ; $756f: $40
    ld b, c                                       ; $7570: $41
    dec a                                         ; $7571: $3d
    inc a                                         ; $7572: $3c
    ld [$5419], sp                                ; $7573: $08 $19 $54
    ld e, [hl]                                    ; $7576: $5e
    ld [$8009], sp                                ; $7577: $08 $09 $80
    adc b                                         ; $757a: $88
    nop                                           ; $757b: $00
    inc d                                         ; $757c: $14
    db $10                                        ; $757d: $10
    ld bc, $5140                                  ; $757e: $01 $40 $51
    nop                                           ; $7581: $00
    ld b, $02                                     ; $7582: $06 $02
    nop                                           ; $7584: $00
    ld [bc], a                                    ; $7585: $02
    jr nz, jr_0f6_758a                            ; $7586: $20 $02

    ld [bc], a                                    ; $7588: $02
    sbc b                                         ; $7589: $98

jr_0f6_758a:
    ld [$c088], sp                                ; $758a: $08 $88 $c0
    ld e, d                                       ; $758d: $5a
    db $10                                        ; $758e: $10
    add b                                         ; $758f: $80
    ld [$480a], sp                                ; $7590: $08 $0a $48
    ld c, h                                       ; $7593: $4c
    sbc b                                         ; $7594: $98
    call c, Call_0f6_7322                         ; $7595: $dc $22 $73
    sub b                                         ; $7598: $90
    sub c                                         ; $7599: $91
    call nc, $84fe                                ; $759a: $d4 $fe $84
    add b                                         ; $759d: $80
    stop                                          ; $759e: $10 $00
    inc h                                         ; $75a0: $24
    and h                                         ; $75a1: $a4
    ld [bc], a                                    ; $75a2: $02
    nop                                           ; $75a3: $00
    add d                                         ; $75a4: $82
    adc d                                         ; $75a5: $8a

jr_0f6_75a6:
    adc b                                         ; $75a6: $88
    ld [bc], a                                    ; $75a7: $02
    add b                                         ; $75a8: $80
    add d                                         ; $75a9: $82
    nop                                           ; $75aa: $00
    jr nz, jr_0f6_75af                            ; $75ab: $20 $02

    ret nc                                        ; $75ad: $d0

    ld [bc], a                                    ; $75ae: $02

jr_0f6_75af:
    nop                                           ; $75af: $00
    ld [bc], a                                    ; $75b0: $02
    add b                                         ; $75b1: $80
    add d                                         ; $75b2: $82
    ret nz                                        ; $75b3: $c0

    xor b                                         ; $75b4: $a8
    ld [bc], a                                    ; $75b5: $02
    ld [$8084], sp                                ; $75b6: $08 $84 $80
    ret nz                                        ; $75b9: $c0

    inc c                                         ; $75ba: $0c
    inc h                                         ; $75bb: $24
    ld [bc], a                                    ; $75bc: $02

jr_0f6_75bd:
    pop de                                        ; $75bd: $d1
    sub [hl]                                      ; $75be: $96
    add h                                         ; $75bf: $84
    db $f4                                        ; $75c0: $f4
    ld h, b                                       ; $75c1: $60

jr_0f6_75c2:
    jr nz, jr_0f6_7608                            ; $75c2: $20 $44

    inc b                                         ; $75c4: $04
    inc l                                         ; $75c5: $2c
    ld c, h                                       ; $75c6: $4c
    ld b, b                                       ; $75c7: $40
    ld h, b                                       ; $75c8: $60
    inc b                                         ; $75c9: $04
    add h                                         ; $75ca: $84
    inc b                                         ; $75cb: $04
    ld b, $00                                     ; $75cc: $06 $00
    dec c                                         ; $75ce: $0d
    add h                                         ; $75cf: $84
    adc h                                         ; $75d0: $8c
    inc b                                         ; $75d1: $04
    nop                                           ; $75d2: $00
    jr nz, @+$26                                  ; $75d3: $20 $24

    ld [bc], a                                    ; $75d5: $02
    ld bc, $0014                                  ; $75d6: $01 $14 $00
    add [hl]                                      ; $75d9: $86
    inc b                                         ; $75da: $04
    inc d                                         ; $75db: $14
    inc b                                         ; $75dc: $04
    ld b, $09                                     ; $75dd: $06 $09
    ld [$1402], sp                                ; $75df: $08 $02 $14
    ld [bc], a                                    ; $75e2: $02
    db $10                                        ; $75e3: $10
    ld [bc], a                                    ; $75e4: $02
    inc b                                         ; $75e5: $04
    jr jr_0f6_75e8                                ; $75e6: $18 $00

jr_0f6_75e8:
    ld [bc], a                                    ; $75e8: $02
    ld bc, $001a                                  ; $75e9: $01 $1a $00
    rst $38                                       ; $75ec: $ff
    rla                                           ; $75ed: $17
    add hl, bc                                    ; $75ee: $09
    rst $28                                       ; $75ef: $ef
    ld [de], a                                    ; $75f0: $12
    ld a, [c]                                     ; $75f1: $f2
    ld c, $f4                                     ; $75f2: $0e $f4
    pop af                                        ; $75f4: $f1
    pop af                                        ; $75f5: $f1
    ld sp, hl                                     ; $75f6: $f9
    pop af                                        ; $75f7: $f1
    ld bc, $09f3                                  ; $75f8: $01 $f3 $09
    db $fc                                        ; $75fb: $fc
    dec bc                                        ; $75fc: $0b
    ld bc, $01f0                                  ; $75fd: $01 $f0 $01
    ld hl, sp+$01                                 ; $7600: $f8 $01
    nop                                           ; $7602: $00
    ld bc, $0404                                  ; $7603: $01 $04 $04
    ld [bc], a                                    ; $7606: $02

jr_0f6_7607:
    ld [bc], a                                    ; $7607: $02

jr_0f6_7608:
    dec c                                         ; $7608: $0d
    add d                                         ; $7609: $82
    ld bc, $0209                                  ; $760a: $01 $09 $02
    db $10                                        ; $760d: $10
    add [hl]                                      ; $760e: $86
    ld c, b                                       ; $760f: $48
    ld c, h                                       ; $7610: $4c
    ld [de], a                                    ; $7611: $12
    ld d, $10                                     ; $7612: $16 $10
    ld de, $4802                                  ; $7614: $11 $02 $48
    add d                                         ; $7617: $82
    ld [hl+], a                                   ; $7618: $22
    ld h, d                                       ; $7619: $62
    ld [bc], a                                    ; $761a: $02
    add b                                         ; $761b: $80
    ld [bc], a                                    ; $761c: $02
    ld [hl], h                                    ; $761d: $74
    add h                                         ; $761e: $84
    nop                                           ; $761f: $00
    jr nz, jr_0f6_75c2                            ; $7620: $20 $a0

    or b                                          ; $7622: $b0
    ld [bc], a                                    ; $7623: $02
    ld a, [bc]                                    ; $7624: $0a
    ld [bc], a                                    ; $7625: $02
    nop                                           ; $7626: $00
    ld [bc], a                                    ; $7627: $02
    ld [$0002], sp                                ; $7628: $08 $02 $00
    adc d                                         ; $762b: $8a
    ld [bc], a                                    ; $762c: $02
    and e                                         ; $762d: $a3
    inc [hl]                                      ; $762e: $34
    ld d, $04                                     ; $762f: $16 $04
    inc h                                         ; $7631: $24
    ld a, [de]                                    ; $7632: $1a
    ld e, d                                       ; $7633: $5a
    ld b, d                                       ; $7634: $42
    ld d, e                                       ; $7635: $53
    ld [bc], a                                    ; $7636: $02
    jr nz, jr_0f6_75bd                            ; $7637: $20 $84

    ld c, b                                       ; $7639: $48
    ld [$c080], sp                                ; $763a: $08 $80 $c0
    inc b                                         ; $763d: $04
    nop                                           ; $763e: $00
    ld [bc], a                                    ; $763f: $02
    ld b, b                                       ; $7640: $40
    ld [bc], a                                    ; $7641: $02
    db $10                                        ; $7642: $10
    inc b                                         ; $7643: $04
    nop                                           ; $7644: $00
    ld [bc], a                                    ; $7645: $02
    db $10                                        ; $7646: $10
    ld [bc], a                                    ; $7647: $02
    add c                                         ; $7648: $81
    adc [hl]                                      ; $7649: $8e
    inc h                                         ; $764a: $24
    ld h, h                                       ; $764b: $64
    ld h, b                                       ; $764c: $60
    xor l                                         ; $764d: $ad
    inc a                                         ; $764e: $3c
    ld [hl], h                                    ; $764f: $74
    inc b                                         ; $7650: $04
    add l                                         ; $7651: $85
    inc h                                         ; $7652: $24
    ld h, $44                                     ; $7653: $26 $44
    ld h, [hl]                                    ; $7655: $66
    ld de, $0219                                  ; $7656: $11 $19 $02
    nop                                           ; $7659: $00
    add h                                         ; $765a: $84
    db $10                                        ; $765b: $10
    inc d                                         ; $765c: $14
    nop                                           ; $765d: $00
    ld bc, $0005                                  ; $765e: $01 $05 $00
    add c                                         ; $7661: $81
    ld [bc], a                                    ; $7662: $02
    ld [bc], a                                    ; $7663: $02
    nop                                           ; $7664: $00
    ld [bc], a                                    ; $7665: $02
    ld b, b                                       ; $7666: $40
    add d                                         ; $7667: $82
    nop                                           ; $7668: $00
    db $10                                        ; $7669: $10
    ld [bc], a                                    ; $766a: $02
    ld l, b                                       ; $766b: $68
    ld [bc], a                                    ; $766c: $02
    add b                                         ; $766d: $80
    ld [bc], a                                    ; $766e: $02
    jr nz, jr_0f6_7607                            ; $766f: $20 $96

    ld h, b                                       ; $7671: $60
    call nc, $b434                                ; $7672: $d4 $34 $b4
    ld b, b                                       ; $7675: $40
    ld h, b                                       ; $7676: $60
    and [hl]                                      ; $7677: $a6
    or d                                          ; $7678: $b2
    ld e, b                                       ; $7679: $58
    ld l, d                                       ; $767a: $6a
    jp nc, Jump_000_10fa                          ; $767b: $d2 $fa $10

    ld d, b                                       ; $767e: $50
    add e                                         ; $767f: $83
    adc e                                         ; $7680: $8b
    ld d, h                                       ; $7681: $54

jr_0f6_7682:
    inc h                                         ; $7682: $24
    ld bc, $1a05                                  ; $7683: $01 $05 $1a
    ld a, [bc]                                    ; $7686: $0a
    ld [bc], a                                    ; $7687: $02
    ld [bc], a                                    ; $7688: $02
    ld b, $00                                     ; $7689: $06 $00
    ld [bc], a                                    ; $768b: $02
    ld bc, $0004                                  ; $768c: $01 $04 $00
    add [hl]                                      ; $768f: $86
    inc [hl]                                      ; $7690: $34
    sub h                                         ; $7691: $94
    ld l, b                                       ; $7692: $68
    ld c, b                                       ; $7693: $48
    db $10                                        ; $7694: $10
    or b                                          ; $7695: $b0
    ld [bc], a                                    ; $7696: $02
    inc b                                         ; $7697: $04
    add h                                         ; $7698: $84
    adc b                                         ; $7699: $88
    ld [$20a0], sp                                ; $769a: $08 $a0 $20
    ld [bc], a                                    ; $769d: $02
    nop                                           ; $769e: $00
    ld [bc], a                                    ; $769f: $02
    ld b, b                                       ; $76a0: $40
    ld b, $00                                     ; $76a1: $06 $00
    ld [bc], a                                    ; $76a3: $02
    add b                                         ; $76a4: $80
    add d                                         ; $76a5: $82
    nop                                           ; $76a6: $00
    inc d                                         ; $76a7: $14
    ld [bc], a                                    ; $76a8: $02
    nop                                           ; $76a9: $00
    adc d                                         ; $76aa: $8a
    ld b, b                                       ; $76ab: $40
    ld d, c                                       ; $76ac: $51
    ld [$000c], sp                                ; $76ad: $08 $0c $00
    ld bc, $0809                                  ; $76b0: $01 $09 $08
    nop                                           ; $76b3: $00
    ld bc, $0202                                  ; $76b4: $01 $02 $02
    ld a, [bc]                                    ; $76b7: $0a
    nop                                           ; $76b8: $00
    ld [bc], a                                    ; $76b9: $02
    ld b, b                                       ; $76ba: $40
    ld [bc], a                                    ; $76bb: $02
    nop                                           ; $76bc: $00
    ld [bc], a                                    ; $76bd: $02
    jr nz, jr_0f6_76c2                            ; $76be: $20 $02

    add b                                         ; $76c0: $80
    adc e                                         ; $76c1: $8b

jr_0f6_76c2:
    ld b, b                                       ; $76c2: $40
    ret nz                                        ; $76c3: $c0

    nop                                           ; $76c4: $00
    ld [$c040], sp                                ; $76c5: $08 $40 $c0
    ld [bc], a                                    ; $76c8: $02
    ld b, d                                       ; $76c9: $42
    db $10                                        ; $76ca: $10
    ld [de], a                                    ; $76cb: $12
    ld b, b                                       ; $76cc: $40
    ld [bc], a                                    ; $76cd: $02
    nop                                           ; $76ce: $00
    add e                                         ; $76cf: $83
    ld h, d                                       ; $76d0: $62
    ld [de], a                                    ; $76d1: $12
    ld d, $02                                     ; $76d2: $16 $02
    add h                                         ; $76d4: $84
    add h                                         ; $76d5: $84
    inc b                                         ; $76d6: $04
    nop                                           ; $76d7: $00
    jr nz, jr_0f6_76fe                            ; $76d8: $20 $24

    ld [bc], a                                    ; $76da: $02
    ld bc, $0082                                  ; $76db: $01 $82 $00
    ld [bc], a                                    ; $76de: $02
    ld [bc], a                                    ; $76df: $02
    nop                                           ; $76e0: $00
    ld [bc], a                                    ; $76e1: $02
    ld [$0102], sp                                ; $76e2: $08 $02 $01
    add [hl]                                      ; $76e5: $86
    nop                                           ; $76e6: $00
    ld bc, $4000                                  ; $76e7: $01 $00 $40
    db $10                                        ; $76ea: $10
    inc de                                        ; $76eb: $13
    ld [bc], a                                    ; $76ec: $02
    nop                                           ; $76ed: $00
    adc d                                         ; $76ee: $8a
    ld b, b                                       ; $76ef: $40
    ld d, b                                       ; $76f0: $50
    inc bc                                        ; $76f1: $03
    dec bc                                        ; $76f2: $0b
    ld b, $46                                     ; $76f3: $06 $46
    ld bc, $4c19                                  ; $76f5: $01 $19 $4c
    ld h, h                                       ; $76f8: $64
    ld [bc], a                                    ; $76f9: $02
    xor c                                         ; $76fa: $a9
    ld [bc], a                                    ; $76fb: $02
    add b                                         ; $76fc: $80
    ld [bc], a                                    ; $76fd: $02

jr_0f6_76fe:
    jr nz, jr_0f6_7682                            ; $76fe: $20 $82

    nop                                           ; $7700: $00
    ld [$0007], sp                                ; $7701: $08 $07 $00
    ld [bc], a                                    ; $7704: $02
    ld [bc], a                                    ; $7705: $02
    add h                                         ; $7706: $84
    nop                                           ; $7707: $00
    ld [bc], a                                    ; $7708: $02
    nop                                           ; $7709: $00
    inc b                                         ; $770a: $04
    inc bc                                        ; $770b: $03
    ld b, $81                                     ; $770c: $06 $81
    nop                                           ; $770e: $00
    ld [bc], a                                    ; $770f: $02
    inc b                                         ; $7710: $04
    add c                                         ; $7711: $81
    nop                                           ; $7712: $00
    ld [bc], a                                    ; $7713: $02
    dec b                                         ; $7714: $05
    ld [bc], a                                    ; $7715: $02
    ld [$0006], sp                                ; $7716: $08 $06 $00
    rst $38                                       ; $7719: $ff
    rra                                           ; $771a: $1f
    dec c                                         ; $771b: $0d
    rst $28                                       ; $771c: $ef
    ld [de], a                                    ; $771d: $12
    ld a, [c]                                     ; $771e: $f2
    ld c, $f1                                     ; $771f: $0e $f1
    db $ed                                        ; $7721: $ed
    db $ed                                        ; $7722: $ed
    push af                                       ; $7723: $f5
    db $eb                                        ; $7724: $eb
    db $fd                                        ; $7725: $fd
    db $ed                                        ; $7726: $ed
    dec b                                         ; $7727: $05
    ldh a, [$0d]                                  ; $7728: $f0 $0d
    db $fc                                        ; $772a: $fc
    db $eb                                        ; $772b: $eb
    ld [bc], a                                    ; $772c: $02
    di                                            ; $772d: $f3
    nop                                           ; $772e: $00
    dec bc                                        ; $772f: $0b
    rst $38                                       ; $7730: $ff
    db $10                                        ; $7731: $10
    dec bc                                        ; $7732: $0b
    db $eb                                        ; $7733: $eb
    dec bc                                        ; $7734: $0b
    rst $30                                       ; $7735: $f7
    dec bc                                        ; $7736: $0b
    nop                                           ; $7737: $00
    dec bc                                        ; $7738: $0b
    inc b                                         ; $7739: $04
    add d                                         ; $773a: $82
    nop                                           ; $773b: $00
    ld bc, $0404                                  ; $773c: $01 $04 $04
    ld [bc], a                                    ; $773f: $02
    ld a, [de]                                    ; $7740: $1a
    add d                                         ; $7741: $82
    ld [bc], a                                    ; $7742: $02
    ld [de], a                                    ; $7743: $12
    ld [bc], a                                    ; $7744: $02
    jr nz, @-$68                                  ; $7745: $20 $96

    inc d                                         ; $7747: $14
    ld e, $25                                     ; $7748: $1e $25
    dec l                                         ; $774a: $2d
    jr z, @+$30                                   ; $774b: $28 $2e

    ret nc                                        ; $774d: $d0

    call nc, $d551                                ; $774e: $d4 $51 $d5
    ld [bc], a                                    ; $7751: $02
    rrca                                          ; $7752: $0f
    ld hl, sp-$10                                 ; $7753: $f8 $f0
    ld [bc], a                                    ; $7755: $02
    ld c, d                                       ; $7756: $4a
    ld d, b                                       ; $7757: $50
    ld a, l                                       ; $7758: $7d
    ld hl, $0024                                  ; $7759: $21 $24 $00
    ld bc, $0402                                  ; $775c: $01 $02 $04
    ld [bc], a                                    ; $775f: $02
    inc d                                         ; $7760: $14
    ld [bc], a                                    ; $7761: $02
    dec de                                        ; $7762: $1b
    adc b                                         ; $7763: $88
    ld b, $56                                     ; $7764: $06 $56
    ld h, b                                       ; $7766: $60
    dec l                                         ; $7767: $2d
    ld a, [bc]                                    ; $7768: $0a
    ld c, d                                       ; $7769: $4a
    nop                                           ; $776a: $00
    adc c                                         ; $776b: $89
    ld [bc], a                                    ; $776c: $02
    and b                                         ; $776d: $a0
    ld [bc], a                                    ; $776e: $02
    ld b, b                                       ; $776f: $40
    add h                                         ; $7770: $84
    ret nc                                        ; $7771: $d0

    ld d, b                                       ; $7772: $50
    nop                                           ; $7773: $00
    jr nz, jr_0f6_777e                            ; $7774: $20 $08

    nop                                           ; $7776: $00
    ld [bc], a                                    ; $7777: $02
    db $10                                        ; $7778: $10
    ld [bc], a                                    ; $7779: $02
    ld bc, $048e                                  ; $777a: $01 $8e $04
    ld b, h                                       ; $777d: $44

jr_0f6_777e:
    ld h, b                                       ; $777e: $60
    dec l                                         ; $777f: $2d
    ld [$0040], sp                                ; $7780: $08 $40 $00
    add d                                         ; $7783: $82
    ld h, h                                       ; $7784: $64
    ld h, [hl]                                    ; $7785: $66
    ld [$00a8], sp                                ; $7786: $08 $a8 $00
    ld bc, $0003                                  ; $7789: $01 $03 $00
    add c                                         ; $778c: $81
    db $10                                        ; $778d: $10
    inc bc                                        ; $778e: $03
    nop                                           ; $778f: $00
    add c                                         ; $7790: $81
    add b                                         ; $7791: $80
    ld b, $00                                     ; $7792: $06 $00
    ld [bc], a                                    ; $7794: $02
    ld b, b                                       ; $7795: $40
    add d                                         ; $7796: $82
    jr nz, jr_0f6_77c9                            ; $7797: $20 $30

    ld [bc], a                                    ; $7799: $02
    ld l, d                                       ; $779a: $6a
    adc d                                         ; $779b: $8a
    ld [$c088], sp                                ; $779c: $08 $88 $c0
    ld e, d                                       ; $779f: $5a
    ld d, b                                       ; $77a0: $50
    ld b, h                                       ; $77a1: $44
    inc c                                         ; $77a2: $0c
    adc [hl]                                      ; $77a3: $8e
    ld b, b                                       ; $77a4: $40
    ld h, h                                       ; $77a5: $64
    inc bc                                        ; $77a6: $03
    nop                                           ; $77a7: $00
    add e                                         ; $77a8: $83
    ld b, b                                       ; $77a9: $40
    ld [bc], a                                    ; $77aa: $02
    inc bc                                        ; $77ab: $03
    inc b                                         ; $77ac: $04
    nop                                           ; $77ad: $00
    ld [bc], a                                    ; $77ae: $02
    ld bc, $0002                                  ; $77af: $01 $02 $00

jr_0f6_77b2:
    ld [bc], a                                    ; $77b2: $02
    ld bc, $8002                                  ; $77b3: $01 $02 $80
    add d                                         ; $77b6: $82
    nop                                           ; $77b7: $00
    jr nz, jr_0f6_77bc                            ; $77b8: $20 $02

    ret nc                                        ; $77ba: $d0

    ld [bc], a                                    ; $77bb: $02

jr_0f6_77bc:
    nop                                           ; $77bc: $00
    ld [bc], a                                    ; $77bd: $02
    add b                                         ; $77be: $80
    add d                                         ; $77bf: $82
    ret nz                                        ; $77c0: $c0

    xor b                                         ; $77c1: $a8
    ld [bc], a                                    ; $77c2: $02
    ret z                                         ; $77c3: $c8

    add h                                         ; $77c4: $84
    db $10                                        ; $77c5: $10
    ld d, b                                       ; $77c6: $50
    inc c                                         ; $77c7: $0c
    inc h                                         ; $77c8: $24

jr_0f6_77c9:
    ld [bc], a                                    ; $77c9: $02
    ld e, e                                       ; $77ca: $5b
    adc h                                         ; $77cb: $8c
    inc b                                         ; $77cc: $04
    ld d, h                                       ; $77cd: $54
    ld d, b                                       ; $77ce: $50
    db $10                                        ; $77cf: $10
    inc e                                         ; $77d0: $1c
    dec d                                         ; $77d1: $15
    dec l                                         ; $77d2: $2d
    ld c, l                                       ; $77d3: $4d
    nop                                           ; $77d4: $00
    ld [$0001], sp                                ; $77d5: $08 $01 $00
    ld [bc], a                                    ; $77d8: $02
    ld b, b                                       ; $77d9: $40
    inc b                                         ; $77da: $04
    nop                                           ; $77db: $00
    ld [bc], a                                    ; $77dc: $02
    ld b, b                                       ; $77dd: $40
    ld [bc], a                                    ; $77de: $02
    nop                                           ; $77df: $00
    adc b                                         ; $77e0: $88
    add l                                         ; $77e1: $85
    adc l                                         ; $77e2: $8d
    ld a, [de]                                    ; $77e3: $1a
    ld e, $02                                     ; $77e4: $1e $02
    inc de                                        ; $77e6: $13
    ld h, b                                       ; $77e7: $60
    ld [hl], c                                    ; $77e8: $71
    ld [bc], a                                    ; $77e9: $02
    ld a, [de]                                    ; $77ea: $1a
    add h                                         ; $77eb: $84
    inc b                                         ; $77ec: $04
    inc c                                         ; $77ed: $0c
    ld a, [hl+]                                   ; $77ee: $2a
    cpl                                           ; $77ef: $2f
    ld [bc], a                                    ; $77f0: $02
    inc b                                         ; $77f1: $04
    add l                                         ; $77f2: $85
    ld b, d                                       ; $77f3: $42
    ld b, [hl]                                    ; $77f4: $46
    nop                                           ; $77f5: $00
    ld a, [bc]                                    ; $77f6: $0a
    ld [$0002], sp                                ; $77f7: $08 $02 $00
    add c                                         ; $77fa: $81
    add b                                         ; $77fb: $80
    ld [bc], a                                    ; $77fc: $02
    ld b, b                                       ; $77fd: $40
    add c                                         ; $77fe: $81
    nop                                           ; $77ff: $00
    ld [bc], a                                    ; $7800: $02
    add b                                         ; $7801: $80
    inc bc                                        ; $7802: $03
    nop                                           ; $7803: $00
    add h                                         ; $7804: $84
    ld h, b                                       ; $7805: $60
    pop hl                                        ; $7806: $e1
    ld b, b                                       ; $7807: $40
    ret nz                                        ; $7808: $c0

    ld [bc], a                                    ; $7809: $02
    inc b                                         ; $780a: $04
    and b                                         ; $780b: $a0
    db $10                                        ; $780c: $10
    ld d, b                                       ; $780d: $50
    jr nz, jr_0f6_77b2                            ; $780e: $20 $a2

    ld b, b                                       ; $7810: $40
    ret nz                                        ; $7811: $c0

    jr nz, jr_0f6_7848                            ; $7812: $20 $34

    nop                                           ; $7814: $00
    ld h, h                                       ; $7815: $64
    ld [hl+], a                                   ; $7816: $22
    ld h, e                                       ; $7817: $63
    dec h                                         ; $7818: $25
    dec b                                         ; $7819: $05
    ld b, $26                                     ; $781a: $06 $26
    ld [bc], a                                    ; $781c: $02
    ld a, [bc]                                    ; $781d: $0a
    inc b                                         ; $781e: $04
    ld b, $02                                     ; $781f: $06 $02
    nop                                           ; $7821: $00
    ld [bc], a                                    ; $7822: $02
    nop                                           ; $7823: $00
    ld de, $020a                                  ; $7824: $11 $0a $02
    inc bc                                        ; $7827: $03
    nop                                           ; $7828: $00
    ld b, h                                       ; $7829: $44
    daa                                           ; $782a: $27
    add hl, hl                                    ; $782b: $29
    ld [bc], a                                    ; $782c: $02
    ld b, h                                       ; $782d: $44
    adc [hl]                                      ; $782e: $8e
    ld bc, $d81d                                  ; $782f: $01 $1d $d8
    ret z                                         ; $7832: $c8

    ld de, $8b01                                  ; $7833: $11 $01 $8b
    inc de                                        ; $7836: $13
    sub b                                         ; $7837: $90
    sbc b                                         ; $7838: $98
    add c                                         ; $7839: $81
    pop hl                                        ; $783a: $e1
    ld [hl+], a                                   ; $783b: $22
    ld [bc], a                                    ; $783c: $02
    ld [bc], a                                    ; $783d: $02
    inc b                                         ; $783e: $04
    ld [bc], a                                    ; $783f: $02
    ld de, $0482                                  ; $7840: $11 $82 $04
    inc d                                         ; $7843: $14
    ld [bc], a                                    ; $7844: $02
    nop                                           ; $7845: $00
    ld [bc], a                                    ; $7846: $02
    inc b                                         ; $7847: $04

jr_0f6_7848:
    ld [bc], a                                    ; $7848: $02
    inc c                                         ; $7849: $0c
    ld [bc], a                                    ; $784a: $02
    nop                                           ; $784b: $00
    ld [bc], a                                    ; $784c: $02
    inc b                                         ; $784d: $04
    inc b                                         ; $784e: $04
    ld [$000e], sp                                ; $784f: $08 $0e $00
    add h                                         ; $7852: $84
    jr nz, jr_0f6_787d                            ; $7853: $20 $28

    nop                                           ; $7855: $00
    inc bc                                        ; $7856: $03
    ld [bc], a                                    ; $7857: $02
    nop                                           ; $7858: $00
    ld [bc], a                                    ; $7859: $02

Jump_0f6_785a:
    inc b                                         ; $785a: $04
    ld [bc], a                                    ; $785b: $02
    nop                                           ; $785c: $00
    ld [bc], a                                    ; $785d: $02
    ld bc, $0017                                  ; $785e: $01 $17 $00
    adc l                                         ; $7861: $8d
    ld bc, $0800                                  ; $7862: $01 $00 $08
    inc b                                         ; $7865: $04
    ld [$0300], sp                                ; $7866: $08 $00 $03
    ld bc, $9103                                  ; $7869: $01 $03 $91
    sub b                                         ; $786c: $90
    ld [$0209], sp                                ; $786d: $08 $09 $02
    jr nz, jr_0f6_7874                            ; $7870: $20 $02

    ld [bc], a                                    ; $7872: $02
    rrca                                          ; $7873: $0f

jr_0f6_7874:
    nop                                           ; $7874: $00
    adc c                                         ; $7875: $89
    ld bc, $0611                                  ; $7876: $01 $11 $06
    add b                                         ; $7879: $80
    add l                                         ; $787a: $85
    ld [de], a                                    ; $787b: $12
    sbc h                                         ; $787c: $9c

jr_0f6_787d:
    inc [hl]                                      ; $787d: $34
    ld [hl-], a                                   ; $787e: $32
    ld [bc], a                                    ; $787f: $02
    ld d, b                                       ; $7880: $50
    ld [bc], a                                    ; $7881: $02
    ld b, b                                       ; $7882: $40
    ld [bc], a                                    ; $7883: $02
    sub d                                         ; $7884: $92
    inc c                                         ; $7885: $0c
    nop                                           ; $7886: $00
    ld [bc], a                                    ; $7887: $02
    ld [bc], a                                    ; $7888: $02
    ld [bc], a                                    ; $7889: $02
    inc b                                         ; $788a: $04
    add h                                         ; $788b: $84
    ld [bc], a                                    ; $788c: $02
    ld b, $04                                     ; $788d: $06 $04
    inc c                                         ; $788f: $0c
    ld [bc], a                                    ; $7890: $02
    ld [bc], a                                    ; $7891: $02
    ld [bc], a                                    ; $7892: $02
    rlca                                          ; $7893: $07
    ld [bc], a                                    ; $7894: $02
    inc b                                         ; $7895: $04
    ld [bc], a                                    ; $7896: $02
    add hl, bc                                    ; $7897: $09
    stop                                          ; $7898: $10 $00
    rst $38                                       ; $789a: $ff
    add hl, sp                                    ; $789b: $39
    ld a, [de]                                    ; $789c: $1a
    rst $28                                       ; $789d: $ef
    ld [de], a                                    ; $789e: $12

jr_0f6_789f:
    ld a, [c]                                     ; $789f: $f2
    ld c, $f7                                     ; $78a0: $0e $f7
    pop hl                                        ; $78a2: $e1
    db $ec                                        ; $78a3: $ec
    jp hl                                         ; $78a4: $e9


    db $fc                                        ; $78a5: $fc
    jp hl                                         ; $78a6: $e9


    inc c                                         ; $78a7: $0c
    db $eb                                        ; $78a8: $eb
    dec c                                         ; $78a9: $0d
    ld [$e910], a                                 ; $78aa: $ea $10 $e9
    rst $20                                       ; $78ad: $e7
    pop af                                        ; $78ae: $f1
    rst $30                                       ; $78af: $f7
    pop af                                        ; $78b0: $f1
    rlca                                          ; $78b1: $07
    pop af                                        ; $78b2: $f1
    rla                                           ; $78b3: $17
    push af                                       ; $78b4: $f5
    add hl, de                                    ; $78b5: $19
    db $f4                                        ; $78b6: $f4
    push hl                                       ; $78b7: $e5
    ld sp, hl                                     ; $78b8: $f9
    push af                                       ; $78b9: $f5
    ld sp, hl                                     ; $78ba: $f9
    dec c                                         ; $78bb: $0d
    ld sp, hl                                     ; $78bc: $f9
    push hl                                       ; $78bd: $e5
    ld bc, $01f5                                  ; $78be: $01 $f5 $01
    dec bc                                        ; $78c1: $0b
    ld b, $0e                                     ; $78c2: $06 $0e
    ld bc, $09e8                                  ; $78c4: $01 $e8 $09
    ld hl, sp+$09                                 ; $78c7: $f8 $09
    ld [$eb0b], sp                                ; $78c9: $08 $0b $eb
    ld de, $11fb                                  ; $78cc: $11 $fb $11
    dec bc                                        ; $78cf: $0b
    ld d, $0c                                     ; $78d0: $16 $0c
    inc de                                        ; $78d2: $13
    ei                                            ; $78d3: $fb
    add hl, de                                    ; $78d4: $19
    ld [bc], a                                    ; $78d5: $02
    ld bc, $0004                                  ; $78d6: $01 $04 $00
    ld [bc], a                                    ; $78d9: $02
    ld bc, $0002                                  ; $78da: $01 $02 $00
    ld [bc], a                                    ; $78dd: $02
    inc bc                                        ; $78de: $03
    add d                                         ; $78df: $82
    nop                                           ; $78e0: $00
    ld bc, $0202                                  ; $78e1: $01 $02 $02
    ld [bc], a                                    ; $78e4: $02
    ld bc, $0002                                  ; $78e5: $01 $02 $00
    ld [bc], a                                    ; $78e8: $02
    ld [bc], a                                    ; $78e9: $02
    ld [bc], a                                    ; $78ea: $02
    nop                                           ; $78eb: $00
    ld [bc], a                                    ; $78ec: $02
    inc b                                         ; $78ed: $04
    inc b                                         ; $78ee: $04
    nop                                           ; $78ef: $00
    ld [bc], a                                    ; $78f0: $02
    ld [bc], a                                    ; $78f1: $02
    add d                                         ; $78f2: $82
    nop                                           ; $78f3: $00
    ld bc, $0404                                  ; $78f4: $01 $04 $04
    ld [bc], a                                    ; $78f7: $02
    ld a, [de]                                    ; $78f8: $1a
    add d                                         ; $78f9: $82
    ld [bc], a                                    ; $78fa: $02
    ld [de], a                                    ; $78fb: $12
    ld [bc], a                                    ; $78fc: $02
    jr nz, jr_0f6_789f                            ; $78fd: $20 $a0

    sub h                                         ; $78ff: $94
    sbc [hl]                                      ; $7900: $9e
    daa                                           ; $7901: $27
    dec l                                         ; $7902: $2d
    jr z, jr_0f6_7934                             ; $7903: $28 $2f

    jp nc, Jump_0f6_51d6                          ; $7905: $d2 $d6 $51

    push de                                       ; $7908: $d5
    ld [bc], a                                    ; $7909: $02
    ld c, $fe                                     ; $790a: $0e $fe
    di                                            ; $790c: $f3
    ld [hl+], a                                   ; $790d: $22
    ld a, $55                                     ; $790e: $3e $55
    ld d, c                                       ; $7910: $51
    ld [hl], d                                    ; $7911: $72
    halt                                          ; $7912: $76
    and a                                         ; $7913: $a7
    xor a                                         ; $7914: $af
    ld [hl+], a                                   ; $7915: $22
    halt                                          ; $7916: $76
    ld d, h                                       ; $7917: $54
    ld e, $e8                                     ; $7918: $1e $e8
    and $64                                       ; $791a: $e6 $64
    ld a, h                                       ; $791c: $7c
    xor [hl]                                      ; $791d: $ae
    xor a                                         ; $791e: $af
    ld [bc], a                                    ; $791f: $02
    ld b, l                                       ; $7920: $45
    xor h                                         ; $7921: $ac
    jr c, @+$7a                                   ; $7922: $38 $78

    dec c                                         ; $7924: $0d
    xor l                                         ; $7925: $ad
    ret nz                                        ; $7926: $c0

    ld c, d                                       ; $7927: $4a
    dec a                                         ; $7928: $3d
    cp [hl]                                       ; $7929: $be
    ld a, [bc]                                    ; $792a: $0a
    dec sp                                        ; $792b: $3b
    inc e                                         ; $792c: $1c
    ld e, $56                                     ; $792d: $1e $56
    ld d, a                                       ; $792f: $57
    add d                                         ; $7930: $82
    xor b                                         ; $7931: $a8
    ld c, b                                       ; $7932: $48
    ld e, a                                       ; $7933: $5f

jr_0f6_7934:
    and $e3                                       ; $7934: $e6 $e3
    ld [bc], a                                    ; $7936: $02
    ld b, [hl]                                    ; $7937: $46
    ld d, [hl]                                    ; $7938: $56
    ld a, [hl]                                    ; $7939: $7e
    jr nz, jr_0f6_7961                            ; $793a: $20 $25

    add hl, bc                                    ; $793c: $09
    dec hl                                        ; $793d: $2b
    nop                                           ; $793e: $00
    ld de, $4c49                                  ; $793f: $11 $49 $4c
    ld [bc], a                                    ; $7942: $02
    rlca                                          ; $7943: $07
    ld bc, $0019                                  ; $7944: $01 $19 $00
    inc bc                                        ; $7947: $03
    ld hl, $0123                                  ; $7948: $21 $23 $01
    nop                                           ; $794b: $00
    ld [$0609], sp                                ; $794c: $08 $09 $06
    nop                                           ; $794f: $00
    inc b                                         ; $7950: $04
    add b                                         ; $7951: $80
    inc e                                         ; $7952: $1c
    nop                                           ; $7953: $00
    ld [bc], a                                    ; $7954: $02
    add b                                         ; $7955: $80
    rra                                           ; $7956: $1f
    nop                                           ; $7957: $00
    add c                                         ; $7958: $81
    ld [bc], a                                    ; $7959: $02
    ld [bc], a                                    ; $795a: $02
    ld [$8802], sp                                ; $795b: $08 $02 $88
    sbc h                                         ; $795e: $9c
    inc [hl]                                      ; $795f: $34
    dec [hl]                                      ; $7960: $35

jr_0f6_7961:
    dec b                                         ; $7961: $05
    dec h                                         ; $7962: $25
    ld b, h                                       ; $7963: $44
    ld b, l                                       ; $7964: $45
    ld l, c                                       ; $7965: $69
    jr z, jr_0f6_7970                             ; $7966: $28 $08

    ld e, c                                       ; $7968: $59
    ld d, h                                       ; $7969: $54
    sub $a8                                       ; $796a: $d6 $a8
    cp e                                          ; $796c: $bb
    ld b, h                                       ; $796d: $44
    ld l, [hl]                                    ; $796e: $6e
    and d                                         ; $796f: $a2

jr_0f6_7970:
    ld l, $10                                     ; $7970: $2e $10
    add sp, $6a                                   ; $7972: $e8 $6a
    ld a, d                                       ; $7974: $7a
    ld h, b                                       ; $7975: $60
    ldh [$60], a                                  ; $7976: $e0 $60
    ldh [rOBP0], a                                ; $7978: $e0 $48
    ret z                                         ; $797a: $c8

    ld [bc], a                                    ; $797b: $02
    sub h                                         ; $797c: $94
    inc bc                                        ; $797d: $03
    nop                                           ; $797e: $00
    add c                                         ; $797f: $81
    ld b, b                                       ; $7980: $40
    ld b, $00                                     ; $7981: $06 $00
    ld [bc], a                                    ; $7983: $02
    add b                                         ; $7984: $80
    inc b                                         ; $7985: $04
    nop                                           ; $7986: $00
    ld [bc], a                                    ; $7987: $02
    add b                                         ; $7988: $80
    inc b                                         ; $7989: $04
    nop                                           ; $798a: $00
    ld [bc], a                                    ; $798b: $02
    add b                                         ; $798c: $80
    ld [bc], a                                    ; $798d: $02
    and b                                         ; $798e: $a0
    ld [bc], a                                    ; $798f: $02
    nop                                           ; $7990: $00
    add h                                         ; $7991: $84
    ret nz                                        ; $7992: $c0

    ld b, b                                       ; $7993: $40
    nop                                           ; $7994: $00
    add b                                         ; $7995: $80
    ld [bc], a                                    ; $7996: $02
    adc b                                         ; $7997: $88
    ld [bc], a                                    ; $7998: $02
    ld d, b                                       ; $7999: $50
    add d                                         ; $799a: $82
    ld [$0248], sp                                ; $799b: $08 $48 $02
    ld [hl+], a                                   ; $799e: $22
    sub h                                         ; $799f: $94
    ld a, [hl+]                                   ; $79a0: $2a
    ld l, $00                                     ; $79a1: $2e $00
    jr z, jr_0f6_79b3                             ; $79a3: $28 $0e

    inc de                                        ; $79a5: $13
    ld bc, $2421                                  ; $79a6: $01 $21 $24
    ld [hl], $09                                  ; $79a9: $36 $09
    dec c                                         ; $79ab: $0d
    ld [de], a                                    ; $79ac: $12
    inc d                                         ; $79ad: $14
    inc bc                                        ; $79ae: $03
    dec hl                                        ; $79af: $2b
    ld [bc], a                                    ; $79b0: $02
    ld [de], a                                    ; $79b1: $12
    dec h                                         ; $79b2: $25

jr_0f6_79b3:
    daa                                           ; $79b3: $27
    ld [bc], a                                    ; $79b4: $02
    and d                                         ; $79b5: $a2
    add d                                         ; $79b6: $82
    add e                                         ; $79b7: $83
    sub e                                         ; $79b8: $93
    ld [bc], a                                    ; $79b9: $02
    inc h                                         ; $79ba: $24
    ld [bc], a                                    ; $79bb: $02
    nop                                           ; $79bc: $00
    ld [bc], a                                    ; $79bd: $02
    ld [$0016], sp                                ; $79be: $08 $16 $00
    ld [bc], a                                    ; $79c1: $02
    add b                                         ; $79c2: $80
    ld e, $00                                     ; $79c3: $1e $00
    ld [bc], a                                    ; $79c5: $02
    jr nz, jr_0f6_79ca                            ; $79c6: $20 $02

    ld [bc], a                                    ; $79c8: $02
    sbc b                                         ; $79c9: $98

jr_0f6_79ca:
    ld [$d189], sp                                ; $79ca: $08 $89 $d1
    ld e, b                                       ; $79cd: $58
    db $10                                        ; $79ce: $10
    sub c                                         ; $79cf: $91
    ld l, c                                       ; $79d0: $69
    ld l, e                                       ; $79d1: $6b
    ld [$994c], sp                                ; $79d2: $08 $4c $99
    rst $18                                       ; $79d5: $df
    ld l, d                                       ; $79d6: $6a
    ld l, c                                       ; $79d7: $69
    ret c                                         ; $79d8: $d8

    ld a, [$bfa9]                                 ; $79d9: $fa $a9 $bf
    and b                                         ; $79dc: $a0
    and d                                         ; $79dd: $a2
    ld hl, $0881                                  ; $79de: $21 $81 $08
    adc b                                         ; $79e1: $88
    ld [bc], a                                    ; $79e2: $02
    nop                                           ; $79e3: $00
    ld [bc], a                                    ; $79e4: $02
    ld b, b                                       ; $79e5: $40
    jr nz, jr_0f6_79e8                            ; $79e6: $20 $00

jr_0f6_79e8:
    ld [bc], a                                    ; $79e8: $02
    add b                                         ; $79e9: $80
    ld [bc], a                                    ; $79ea: $02
    db $10                                        ; $79eb: $10
    add h                                         ; $79ec: $84
    nop                                           ; $79ed: $00
    jr nz, jr_0f6_79fb                            ; $79ee: $20 $0b

    dec hl                                        ; $79f0: $2b
    ld [bc], a                                    ; $79f1: $02
    sub c                                         ; $79f2: $91
    adc [hl]                                      ; $79f3: $8e
    dec h                                         ; $79f4: $25
    inc [hl]                                      ; $79f5: $34
    xor h                                         ; $79f6: $ac
    call $6b49                                    ; $79f7: $cd $49 $6b
    dec c                                         ; $79fa: $0d

jr_0f6_79fb:
    rst $28                                       ; $79fb: $ef

jr_0f6_79fc:
    sbc d                                         ; $79fc: $9a
    inc e                                         ; $79fd: $1c
    ld [$0009], sp                                ; $79fe: $08 $09 $00
    ld bc, $0802                                  ; $7a01: $01 $02 $08
    ld [bc], a                                    ; $7a04: $02
    inc b                                         ; $7a05: $04
    inc b                                         ; $7a06: $04
    nop                                           ; $7a07: $00
    ld [bc], a                                    ; $7a08: $02
    ld b, b                                       ; $7a09: $40
    ld [bc], a                                    ; $7a0a: $02
    inc b                                         ; $7a0b: $04
    ld [bc], a                                    ; $7a0c: $02
    sub c                                         ; $7a0d: $91
    sub h                                         ; $7a0e: $94
    nop                                           ; $7a0f: $00
    inc [hl]                                      ; $7a10: $34
    and c                                         ; $7a11: $a1
    add c                                         ; $7a12: $81
    db $10                                        ; $7a13: $10
    dec d                                         ; $7a14: $15
    sub b                                         ; $7a15: $90
    sbc b                                         ; $7a16: $98
    ld [hl], h                                    ; $7a17: $74
    or l                                          ; $7a18: $b5
    ld c, b                                       ; $7a19: $48
    ld e, d                                       ; $7a1a: $5a
    xor l                                         ; $7a1b: $ad
    rst $28                                       ; $7a1c: $ef
    xor c                                         ; $7a1d: $a9
    xor a                                         ; $7a1e: $af
    xor e                                         ; $7a1f: $ab
    xor c                                         ; $7a20: $a9
    nop                                           ; $7a21: $00
    ld [bc], a                                    ; $7a22: $02
    ld [bc], a                                    ; $7a23: $02
    ld hl, $0082                                  ; $7a24: $21 $82 $00
    ld [bc], a                                    ; $7a27: $02
    ld [bc], a                                    ; $7a28: $02
    ld bc, $0020                                  ; $7a29: $01 $20 $00
    ld [bc], a                                    ; $7a2c: $02
    add h                                         ; $7a2d: $84
    sbc d                                         ; $7a2e: $9a
    nop                                           ; $7a2f: $00
    db $10                                        ; $7a30: $10
    jr nc, jr_0f6_7a56                            ; $7a31: $30 $23

    adc e                                         ; $7a33: $8b
    add e                                         ; $7a34: $83
    ld l, $6e                                     ; $7a35: $2e $6e
    inc de                                        ; $7a37: $13
    sbc c                                         ; $7a38: $99
    ld [hl], c                                    ; $7a39: $71
    ldh a, [rNR42]                                ; $7a3a: $f0 $21
    dec h                                         ; $7a3c: $25
    add hl, de                                    ; $7a3d: $19
    ld l, c                                       ; $7a3e: $69
    inc hl                                        ; $7a3f: $23
    ld h, e                                       ; $7a40: $63
    adc a                                         ; $7a41: $8f
    rla                                           ; $7a42: $17
    sub h                                         ; $7a43: $94
    cp h                                          ; $7a44: $bc
    adc c                                         ; $7a45: $89
    jp hl                                         ; $7a46: $e9


    ld [hl+], a                                   ; $7a47: $22
    ld [bc], a                                    ; $7a48: $02
    ld [bc], a                                    ; $7a49: $02
    add b                                         ; $7a4a: $80
    ld [bc], a                                    ; $7a4b: $02
    nop                                           ; $7a4c: $00
    ld [bc], a                                    ; $7a4d: $02
    add b                                         ; $7a4e: $80
    add h                                         ; $7a4f: $84
    nop                                           ; $7a50: $00
    db $10                                        ; $7a51: $10
    jr nz, jr_0f6_7a84                            ; $7a52: $20 $30

    inc bc                                        ; $7a54: $03
    and b                                         ; $7a55: $a0

jr_0f6_7a56:
    add l                                         ; $7a56: $85
    adc b                                         ; $7a57: $88
    ld hl, sp+$78                                 ; $7a58: $f8 $78
    jr nz, jr_0f6_79fc                            ; $7a5a: $20 $a0

    ld [bc], a                                    ; $7a5c: $02
    db $10                                        ; $7a5d: $10
    add h                                         ; $7a5e: $84
    and b                                         ; $7a5f: $a0
    ldh a, [rP1]                                  ; $7a60: $f0 $00
    and b                                         ; $7a62: $a0
    ld [bc], a                                    ; $7a63: $02
    adc b                                         ; $7a64: $88
    add c                                         ; $7a65: $81
    sub b                                         ; $7a66: $90
    ld [bc], a                                    ; $7a67: $02
    db $10                                        ; $7a68: $10
    add c                                         ; $7a69: $81
    sub b                                         ; $7a6a: $90
    ld [bc], a                                    ; $7a6b: $02
    inc h                                         ; $7a6c: $24
    inc b                                         ; $7a6d: $04
    nop                                           ; $7a6e: $00
    ld [bc], a                                    ; $7a6f: $02
    ld b, b                                       ; $7a70: $40
    ld [bc], a                                    ; $7a71: $02
    and h                                         ; $7a72: $a4
    ld [bc], a                                    ; $7a73: $02
    ld de, $809a                                  ; $7a74: $11 $9a $80
    or h                                          ; $7a77: $b4
    ld bc, $1051                                  ; $7a78: $01 $51 $10
    inc d                                         ; $7a7b: $14
    or c                                          ; $7a7c: $b1
    cp c                                          ; $7a7d: $b9
    ld sp, $44f9                                  ; $7a7e: $31 $f9 $44
    ld b, [hl]                                    ; $7a81: $46
    dec l                                         ; $7a82: $2d
    db $ed                                        ; $7a83: $ed

jr_0f6_7a84:
    jr z, jr_0f6_7ac2                             ; $7a84: $28 $3c

    adc c                                         ; $7a86: $89
    ld b, c                                       ; $7a87: $41
    inc d                                         ; $7a88: $14
    add e                                         ; $7a89: $83
    adc [hl]                                      ; $7a8a: $8e
    sbc h                                         ; $7a8b: $9c
    ld [$882c], sp                                ; $7a8c: $08 $2c $88
    adc d                                         ; $7a8f: $8a
    ld [bc], a                                    ; $7a90: $02
    ld bc, $1482                                  ; $7a91: $01 $82 $14
    rla                                           ; $7a94: $17
    ld [bc], a                                    ; $7a95: $02
    add hl, bc                                    ; $7a96: $09
    ld [bc], a                                    ; $7a97: $02
    ld [bc], a                                    ; $7a98: $02
    ld [bc], a                                    ; $7a99: $02
    nop                                           ; $7a9a: $00
    ld [bc], a                                    ; $7a9b: $02
    inc b                                         ; $7a9c: $04
    inc b                                         ; $7a9d: $04
    nop                                           ; $7a9e: $00
    ld [bc], a                                    ; $7a9f: $02
    dec b                                         ; $7aa0: $05
    ld [bc], a                                    ; $7aa1: $02
    ld bc, $0082                                  ; $7aa2: $01 $82 $00
    ld [bc], a                                    ; $7aa5: $02
    ld [bc], a                                    ; $7aa6: $02
    nop                                           ; $7aa7: $00
    ld [bc], a                                    ; $7aa8: $02
    inc bc                                        ; $7aa9: $03
    ld [bc], a                                    ; $7aaa: $02
    ld bc, $0802                                  ; $7aab: $01 $02 $08
    ld [bc], a                                    ; $7aae: $02
    ld bc, $9102                                  ; $7aaf: $01 $02 $91
    adc b                                         ; $7ab2: $88
    inc c                                         ; $7ab3: $0c
    ld a, [bc]                                    ; $7ab4: $0a
    inc h                                         ; $7ab5: $24
    scf                                           ; $7ab6: $37
    add hl, bc                                    ; $7ab7: $09
    inc c                                         ; $7ab8: $0c
    nop                                           ; $7ab9: $00
    ld a, [bc]                                    ; $7aba: $0a
    ld [bc], a                                    ; $7abb: $02
    dec e                                         ; $7abc: $1d
    add d                                         ; $7abd: $82
    ld [$020b], sp                                ; $7abe: $08 $0b $02
    ld [bc], a                                    ; $7ac1: $02

jr_0f6_7ac2:
    adc d                                         ; $7ac2: $8a
    inc b                                         ; $7ac3: $04
    nop                                           ; $7ac4: $00
    ld a, [bc]                                    ; $7ac5: $0a
    ld [$0604], sp                                ; $7ac6: $08 $04 $06
    nop                                           ; $7ac9: $00
    jr jr_0f6_7ad5                                ; $7aca: $18 $09

    ld bc, $0007                                  ; $7acc: $01 $07 $00
    add c                                         ; $7acf: $81
    ld b, b                                       ; $7ad0: $40
    ld [bc], a                                    ; $7ad1: $02
    and b                                         ; $7ad2: $a0
    inc b                                         ; $7ad3: $04
    nop                                           ; $7ad4: $00

jr_0f6_7ad5:
    add d                                         ; $7ad5: $82
    add h                                         ; $7ad6: $84
    ld d, h                                       ; $7ad7: $54
    ld [bc], a                                    ; $7ad8: $02
    db $10                                        ; $7ad9: $10
    add h                                         ; $7ada: $84
    nop                                           ; $7adb: $00
    add b                                         ; $7adc: $80
    jr @+$0a                                      ; $7add: $18 $08

    ld [bc], a                                    ; $7adf: $02
    or d                                          ; $7ae0: $b2
    and b                                         ; $7ae1: $a0
    ld [$da6c], sp                                ; $7ae2: $08 $6c $da
    ld e, d                                       ; $7ae5: $5a
    ld [$5848], sp                                ; $7ae6: $08 $48 $58
    jr jr_0f6_7b23                                ; $7ae9: $18 $38

    push af                                       ; $7aeb: $f5
    ld c, c                                       ; $7aec: $49
    ld l, c                                       ; $7aed: $69
    db $10                                        ; $7aee: $10
    jr c, jr_0f6_7b32                             ; $7aef: $38 $41

    ld d, h                                       ; $7af1: $54
    jp z, Jump_0f6_785a                           ; $7af2: $ca $5a $78

    cp $1c                                        ; $7af5: $fe $1c
    inc b                                         ; $7af7: $04
    jp z, Jump_0f6_61c2                           ; $7af8: $ca $c2 $61

    ld d, l                                       ; $7afb: $55
    ld c, h                                       ; $7afc: $4c
    call z, Call_0f6_7040                         ; $7afd: $cc $40 $70
    ld c, a                                       ; $7b00: $4f
    dec bc                                        ; $7b01: $0b
    ld [bc], a                                    ; $7b02: $02
    add sp, -$76                                  ; $7b03: $e8 $8a
    ld b, d                                       ; $7b05: $42
    ld a, d                                       ; $7b06: $7a
    ldh a, [$50]                                  ; $7b07: $f0 $50
    ld [hl+], a                                   ; $7b09: $22
    ld [bc], a                                    ; $7b0a: $02
    ld d, $06                                     ; $7b0b: $16 $06
    nop                                           ; $7b0d: $00
    jr nc, jr_0f6_7b12                            ; $7b0e: $30 $02

    ld [bc], a                                    ; $7b10: $02
    ld [bc], a                                    ; $7b11: $02

jr_0f6_7b12:
    add b                                         ; $7b12: $80
    ld [bc], a                                    ; $7b13: $02
    nop                                           ; $7b14: $00
    ld [bc], a                                    ; $7b15: $02
    add b                                         ; $7b16: $80
    ld [bc], a                                    ; $7b17: $02
    nop                                           ; $7b18: $00
    ld [bc], a                                    ; $7b19: $02
    add b                                         ; $7b1a: $80
    ld d, $00                                     ; $7b1b: $16 $00
    add d                                         ; $7b1d: $82
    ret nz                                        ; $7b1e: $c0

    ld b, b                                       ; $7b1f: $40
    ld [bc], a                                    ; $7b20: $02
    nop                                           ; $7b21: $00
    ld [bc], a                                    ; $7b22: $02

jr_0f6_7b23:
    ld b, b                                       ; $7b23: $40
    ld [bc], a                                    ; $7b24: $02
    nop                                           ; $7b25: $00
    ld [bc], a                                    ; $7b26: $02
    ld h, b                                       ; $7b27: $60
    ld [bc], a                                    ; $7b28: $02
    add b                                         ; $7b29: $80
    ld [bc], a                                    ; $7b2a: $02
    nop                                           ; $7b2b: $00
    ld [bc], a                                    ; $7b2c: $02
    add b                                         ; $7b2d: $80
    stop                                          ; $7b2e: $10 $00
    ld [bc], a                                    ; $7b30: $02
    add b                                         ; $7b31: $80

jr_0f6_7b32:
    ld [bc], a                                    ; $7b32: $02
    jr nz, jr_0f6_7b37                            ; $7b33: $20 $02

    add b                                         ; $7b35: $80
    ld [bc], a                                    ; $7b36: $02

jr_0f6_7b37:
    nop                                           ; $7b37: $00
    inc b                                         ; $7b38: $04
    add b                                         ; $7b39: $80
    ld [bc], a                                    ; $7b3a: $02
    nop                                           ; $7b3b: $00
    ld [bc], a                                    ; $7b3c: $02
    add b                                         ; $7b3d: $80
    ld [bc], a                                    ; $7b3e: $02
    nop                                           ; $7b3f: $00
    ld [bc], a                                    ; $7b40: $02
    add b                                         ; $7b41: $80
    ld b, $00                                     ; $7b42: $06 $00
    ld [bc], a                                    ; $7b44: $02
    add b                                         ; $7b45: $80
    inc b                                         ; $7b46: $04
    nop                                           ; $7b47: $00
    rst $38                                       ; $7b48: $ff
    rlca                                          ; $7b49: $07
    ld bc, $0cf5                                  ; $7b4a: $01 $f5 $0c
    di                                            ; $7b4d: $f3
    inc b                                         ; $7b4e: $04
    ld [bc], a                                    ; $7b4f: $02
    db $fd                                        ; $7b50: $fd
    adc c                                         ; $7b51: $89
    nop                                           ; $7b52: $00
    jr jr_0f6_7b5d                                ; $7b53: $18 $08

    inc b                                         ; $7b55: $04
    ld [$0034], sp                                ; $7b56: $08 $34 $00
    jr z, jr_0f6_7b73                             ; $7b59: $28 $18

    ld [bc], a                                    ; $7b5b: $02
    nop                                           ; $7b5c: $00

jr_0f6_7b5d:
    add h                                         ; $7b5d: $84
    db $10                                        ; $7b5e: $10
    ld h, [hl]                                    ; $7b5f: $66
    ld a, [hl]                                    ; $7b60: $7e
    db $d3                                        ; $7b61: $d3
    inc bc                                        ; $7b62: $03
    rst $38                                       ; $7b63: $ff
    ld [bc], a                                    ; $7b64: $02
    inc a                                         ; $7b65: $3c
    inc c                                         ; $7b66: $0c
    nop                                           ; $7b67: $00
    rst $38                                       ; $7b68: $ff
    add hl, bc                                    ; $7b69: $09
    ld [bc], a                                    ; $7b6a: $02
    push af                                       ; $7b6b: $f5
    inc c                                         ; $7b6c: $0c
    di                                            ; $7b6d: $f3
    inc b                                         ; $7b6e: $04
    db $fd                                        ; $7b6f: $fd
    ei                                            ; $7b70: $fb
    db $fd                                        ; $7b71: $fd
    rst $38                                       ; $7b72: $ff

jr_0f6_7b73:
    add c                                         ; $7b73: $81
    nop                                           ; $7b74: $00
    ld [bc], a                                    ; $7b75: $02
    ld bc, $0a99                                  ; $7b76: $01 $99 $0a
    inc bc                                        ; $7b79: $03
    inc c                                         ; $7b7a: $0c
    ld [bc], a                                    ; $7b7b: $02
    ld bc, $1b00                                  ; $7b7c: $01 $00 $1b
    inc bc                                        ; $7b7f: $03
    inc c                                         ; $7b80: $0c
    ld b, $08                                     ; $7b81: $06 $08
    inc b                                         ; $7b83: $04
    ld sp, $3304                                  ; $7b84: $31 $04 $33
    ld [$0015], sp                                ; $7b87: $08 $15 $00
    ld a, [bc]                                    ; $7b8a: $0a
    ld h, b                                       ; $7b8b: $60
    ld a, b                                       ; $7b8c: $78
    ret z                                         ; $7b8d: $c8

    rst $38                                       ; $7b8e: $ff
    di                                            ; $7b8f: $f3
    rst $38                                       ; $7b90: $ff
    ld [bc], a                                    ; $7b91: $02
    ccf                                           ; $7b92: $3f
    dec b                                         ; $7b93: $05
    nop                                           ; $7b94: $00
    add e                                         ; $7b95: $83
    ld [$0800], sp                                ; $7b96: $08 $00 $08
    dec b                                         ; $7b99: $05
    nop                                           ; $7b9a: $00
    add e                                         ; $7b9b: $83
    ld [$0800], sp                                ; $7b9c: $08 $00 $08
    ld [$8300], sp                                ; $7b9f: $08 $00 $83
    ld b, $0e                                     ; $7ba2: $06 $0e
    inc bc                                        ; $7ba4: $03
    inc bc                                        ; $7ba5: $03
    rrca                                          ; $7ba6: $0f
    ld [bc], a                                    ; $7ba7: $02
    inc c                                         ; $7ba8: $0c
    ld [bc], a                                    ; $7ba9: $02
    nop                                           ; $7baa: $00
    rst $38                                       ; $7bab: $ff
    dec c                                         ; $7bac: $0d
    inc b                                         ; $7bad: $04
    push af                                       ; $7bae: $f5
    inc c                                         ; $7baf: $0c
    di                                            ; $7bb0: $f3
    inc b                                         ; $7bb1: $04
    ld sp, hl                                     ; $7bb2: $f9
    ld sp, hl                                     ; $7bb3: $f9
    ld sp, hl                                     ; $7bb4: $f9
    rst $38                                       ; $7bb5: $ff
    add hl, bc                                    ; $7bb6: $09
    ld a, [$0009]                                 ; $7bb7: $fa $09 $00
    add e                                         ; $7bba: $83
    nop                                           ; $7bbb: $00
    ld bc, $0200                                  ; $7bbc: $01 $00 $02
    ld bc, $7abf                                  ; $7bbf: $01 $bf $7a
    dec de                                        ; $7bc2: $1b
    ld h, h                                       ; $7bc3: $64
    inc b                                         ; $7bc4: $04
    ld e, e                                       ; $7bc5: $5b
    ld b, b                                       ; $7bc6: $40
    or h                                          ; $7bc7: $b4
    nop                                           ; $7bc8: $00
    db $fd                                        ; $7bc9: $fd
    ld [bc], a                                    ; $7bca: $02
    dec b                                         ; $7bcb: $05
    nop                                           ; $7bcc: $00
    ld a, [bc]                                    ; $7bcd: $0a
    ld [bc], a                                    ; $7bce: $02
    dec l                                         ; $7bcf: $2d
    inc c                                         ; $7bd0: $0c
    inc sp                                        ; $7bd1: $33
    nop                                           ; $7bd2: $00
    jr c, jr_0f6_7bd5                             ; $7bd3: $38 $00

jr_0f6_7bd5:
    ld a, [bc]                                    ; $7bd5: $0a
    ld [bc], a                                    ; $7bd6: $02
    dec c                                         ; $7bd7: $0d
    ld [bc], a                                    ; $7bd8: $02
    dec b                                         ; $7bd9: $05
    scf                                           ; $7bda: $37
    jr c, jr_0f6_7bdd                             ; $7bdb: $38 $00

jr_0f6_7bdd:
    stop                                          ; $7bdd: $10 $00
    jr nc, jr_0f6_7c01                            ; $7bdf: $30 $20

    inc d                                         ; $7be1: $14
    db $10                                        ; $7be2: $10
    inc l                                         ; $7be3: $2c
    nop                                           ; $7be4: $00
    jr nc, jr_0f6_7be7                            ; $7be5: $30 $00

jr_0f6_7be7:
    inc d                                         ; $7be7: $14
    db $10                                        ; $7be8: $10
    dec c                                         ; $7be9: $0d
    inc c                                         ; $7bea: $0c
    inc de                                        ; $7beb: $13
    nop                                           ; $7bec: $00
    inc e                                         ; $7bed: $1c
    nop                                           ; $7bee: $00
    jr nz, jr_0f6_7bf1                            ; $7bef: $20 $00

jr_0f6_7bf1:
    jr nz, jr_0f6_7bf3                            ; $7bf1: $20 $00

jr_0f6_7bf3:
    inc d                                         ; $7bf3: $14
    nop                                           ; $7bf4: $00
    inc e                                         ; $7bf5: $1c
    nop                                           ; $7bf6: $00
    inc d                                         ; $7bf7: $14
    inc b                                         ; $7bf8: $04
    jr jr_0f6_7c16                                ; $7bf9: $18 $1b

    daa                                           ; $7bfb: $27
    pop bc                                        ; $7bfc: $c1
    rst $38                                       ; $7bfd: $ff
    db $fc                                        ; $7bfe: $fc
    rst $38                                       ; $7bff: $ff
    ld [bc], a                                    ; $7c00: $02

jr_0f6_7c01:
    ccf                                           ; $7c01: $3f
    ld a, [de]                                    ; $7c02: $1a
    nop                                           ; $7c03: $00
    add c                                         ; $7c04: $81
    inc bc                                        ; $7c05: $03
    inc bc                                        ; $7c06: $03
    ccf                                           ; $7c07: $3f
    ld [bc], a                                    ; $7c08: $02
    inc a                                         ; $7c09: $3c
    ld a, [de]                                    ; $7c0a: $1a
    nop                                           ; $7c0b: $00
    rst $38                                       ; $7c0c: $ff
    rrca                                          ; $7c0d: $0f
    dec b                                         ; $7c0e: $05
    push af                                       ; $7c0f: $f5
    inc c                                         ; $7c10: $0c
    di                                            ; $7c11: $f3
    inc b                                         ; $7c12: $04
    push af                                       ; $7c13: $f5
    push af                                       ; $7c14: $f5
    push af                                       ; $7c15: $f5

jr_0f6_7c16:
    db $fd                                        ; $7c16: $fd
    rst $30                                       ; $7c17: $f7
    inc b                                         ; $7c18: $04
    dec b                                         ; $7c19: $05
    ld sp, hl                                     ; $7c1a: $f9
    dec b                                         ; $7c1b: $05
    ld bc, $0082                                  ; $7c1c: $01 $82 $00

jr_0f6_7c1f:
    ld bc, $0005                                  ; $7c1f: $01 $05 $00
    sub a                                         ; $7c22: $97
    ld [de], a                                    ; $7c23: $12
    nop                                           ; $7c24: $00
    inc de                                        ; $7c25: $13
    nop                                           ; $7c26: $00
    ld a, [hl+]                                   ; $7c27: $2a
    ld [$09b1], sp                                ; $7c28: $08 $b1 $09
    ld [de], a                                    ; $7c2b: $12
    nop                                           ; $7c2c: $00
    add hl, bc                                    ; $7c2d: $09
    ld [$0054], sp                                ; $7c2e: $08 $54 $00
    dec c                                         ; $7c31: $0d
    ld [$0115], sp                                ; $7c32: $08 $15 $01
    ld c, $00                                     ; $7c35: $0e $00
    inc bc                                        ; $7c37: $03
    inc b                                         ; $7c38: $04
    ld [$0003], sp                                ; $7c39: $08 $03 $00
    rlc d                                         ; $7c3c: $cb $02
    nop                                           ; $7c3e: $00
    ld [$1800], sp                                ; $7c3f: $08 $00 $18
    nop                                           ; $7c42: $00
    ld b, b                                       ; $7c43: $40
    nop                                           ; $7c44: $00
    ld b, [hl]                                    ; $7c45: $46
    nop                                           ; $7c46: $00
    dec b                                         ; $7c47: $05
    nop                                           ; $7c48: $00
    ld sp, $a611                                  ; $7c49: $31 $11 $a6
    sub e                                         ; $7c4c: $93
    ld [$9102], sp                                ; $7c4d: $08 $02 $91
    nop                                           ; $7c50: $00
    sub d                                         ; $7c51: $92
    jr nc, jr_0f6_7c1f                            ; $7c52: $30 $cb

    ld hl, $404a                                  ; $7c54: $21 $4a $40
    or l                                          ; $7c57: $b5
    inc b                                         ; $7c58: $04
    db $db                                        ; $7c59: $db
    inc c                                         ; $7c5a: $0c
    ld d, d                                       ; $7c5b: $52
    nop                                           ; $7c5c: $00
    ld [$0800], sp                                ; $7c5d: $08 $00 $08
    nop                                           ; $7c60: $00
    inc l                                         ; $7c61: $2c
    nop                                           ; $7c62: $00
    dec c                                         ; $7c63: $0d
    jr nz, jr_0f6_7cb7                            ; $7c64: $20 $51

    nop                                           ; $7c66: $00
    jr z, jr_0f6_7c71                             ; $7c67: $28 $08

    ld [hl], h                                    ; $7c69: $74
    ld b, b                                       ; $7c6a: $40
    jr jr_0f6_7c6d                                ; $7c6b: $18 $00

jr_0f6_7c6d:
    ld e, b                                       ; $7c6d: $58
    ld d, b                                       ; $7c6e: $50
    inc l                                         ; $7c6f: $2c
    nop                                           ; $7c70: $00

jr_0f6_7c71:
    ld d, h                                       ; $7c71: $54
    nop                                           ; $7c72: $00
    ld b, h                                       ; $7c73: $44
    ld b, b                                       ; $7c74: $40
    ld [$6000], sp                                ; $7c75: $08 $00 $60
    nop                                           ; $7c78: $00
    ret nz                                        ; $7c79: $c0

    nop                                           ; $7c7a: $00
    add b                                         ; $7c7b: $80
    inc b                                         ; $7c7c: $04
    dec sp                                        ; $7c7d: $3b
    nop                                           ; $7c7e: $00
    ld d, $14                                     ; $7c7f: $16 $14
    ld a, [hl+]                                   ; $7c81: $2a
    ld l, [hl]                                    ; $7c82: $6e
    ld [hl], c                                    ; $7c83: $71
    pop de                                        ; $7c84: $d1
    rst $38                                       ; $7c85: $ff
    db $fc                                        ; $7c86: $fc
    rst $38                                       ; $7c87: $ff
    ld [bc], a                                    ; $7c88: $02
    ccf                                           ; $7c89: $3f
    inc de                                        ; $7c8a: $13
    nop                                           ; $7c8b: $00
    adc e                                         ; $7c8c: $8b
    ret nz                                        ; $7c8d: $c0

    nop                                           ; $7c8e: $00
    ld h, b                                       ; $7c8f: $60
    ld b, b                                       ; $7c90: $40
    and b                                         ; $7c91: $a0
    ld h, [hl]                                    ; $7c92: $66
    sbc [hl]                                      ; $7c93: $9e
    sub e                                         ; $7c94: $93
    rst $38                                       ; $7c95: $ff
    rst $28                                       ; $7c96: $ef
    rst $38                                       ; $7c97: $ff
    ld [bc], a                                    ; $7c98: $02
    db $fc                                        ; $7c99: $fc
    ld [de], a                                    ; $7c9a: $12
    nop                                           ; $7c9b: $00
    rst $38                                       ; $7c9c: $ff
    dec c                                         ; $7c9d: $0d
    inc b                                         ; $7c9e: $04
    push af                                       ; $7c9f: $f5
    inc c                                         ; $7ca0: $0c
    di                                            ; $7ca1: $f3
    inc b                                         ; $7ca2: $04
    pop af                                        ; $7ca3: $f1
    push af                                       ; $7ca4: $f5
    pop af                                        ; $7ca5: $f1
    db $fd                                        ; $7ca6: $fd
    di                                            ; $7ca7: $f3
    inc b                                         ; $7ca8: $04
    ld bc, $82fc                                  ; $7ca9: $01 $fc $82
    nop                                           ; $7cac: $00
    ld bc, $0005                                  ; $7cad: $01 $05 $00
    sub a                                         ; $7cb0: $97
    ld [de], a                                    ; $7cb1: $12
    ld [bc], a                                    ; $7cb2: $02
    dec d                                         ; $7cb3: $15
    nop                                           ; $7cb4: $00
    cpl                                           ; $7cb5: $2f
    add hl, bc                                    ; $7cb6: $09

jr_0f6_7cb7:
    or b                                          ; $7cb7: $b0
    ld bc, $001a                                  ; $7cb8: $01 $1a $00

jr_0f6_7cbb:
    add hl, bc                                    ; $7cbb: $09
    ld [$0054], sp                                ; $7cbc: $08 $54 $00
    dec c                                         ; $7cbf: $0d
    add hl, bc                                    ; $7cc0: $09
    inc d                                         ; $7cc1: $14
    nop                                           ; $7cc2: $00
    dec bc                                        ; $7cc3: $0b
    nop                                           ; $7cc4: $00
    inc bc                                        ; $7cc5: $03
    nop                                           ; $7cc6: $00
    inc d                                         ; $7cc7: $14
    inc bc                                        ; $7cc8: $03
    nop                                           ; $7cc9: $00
    push bc                                       ; $7cca: $c5
    ld [bc], a                                    ; $7ccb: $02
    nop                                           ; $7ccc: $00
    ld [$1800], sp                                ; $7ccd: $08 $00 $18
    nop                                           ; $7cd0: $00
    ld b, b                                       ; $7cd1: $40
    nop                                           ; $7cd2: $00
    halt                                          ; $7cd3: $76
    nop                                           ; $7cd4: $00
    dec l                                         ; $7cd5: $2d
    ld hl, $02d8                                  ; $7cd6: $21 $d8 $02
    or l                                          ; $7cd9: $b5
    ld de, $00aa                                  ; $7cda: $11 $aa $00
    or e                                          ; $7cdd: $b3
    db $10                                        ; $7cde: $10
    xor b                                         ; $7cdf: $a8
    jr nz, jr_0f6_7cbb                            ; $7ce0: $20 $d9

    ld bc, $006a                                  ; $7ce2: $01 $6a $00
    inc h                                         ; $7ce5: $24
    inc b                                         ; $7ce6: $04
    ld e, d                                       ; $7ce7: $5a
    nop                                           ; $7ce8: $00
    ld [de], a                                    ; $7ce9: $12
    nop                                           ; $7cea: $00
    ld [$0800], sp                                ; $7ceb: $08 $00 $08
    nop                                           ; $7cee: $00
    inc l                                         ; $7cef: $2c
    nop                                           ; $7cf0: $00
    dec c                                         ; $7cf1: $0d
    nop                                           ; $7cf2: $00
    ld [hl], c                                    ; $7cf3: $71
    nop                                           ; $7cf4: $00
    jr z, jr_0f6_7cff                             ; $7cf5: $28 $08

    ld [hl], h                                    ; $7cf7: $74
    nop                                           ; $7cf8: $00
    jr jr_0f6_7cfb                                ; $7cf9: $18 $00

jr_0f6_7cfb:
    ld e, b                                       ; $7cfb: $58
    ld c, b                                       ; $7cfc: $48
    inc [hl]                                      ; $7cfd: $34
    nop                                           ; $7cfe: $00

jr_0f6_7cff:
    ld d, h                                       ; $7cff: $54
    nop                                           ; $7d00: $00
    inc b                                         ; $7d01: $04
    nop                                           ; $7d02: $00
    ld e, b                                       ; $7d03: $58
    nop                                           ; $7d04: $00
    ld b, b                                       ; $7d05: $40
    nop                                           ; $7d06: $00
    stop                                          ; $7d07: $10 $00
    add b                                         ; $7d09: $80
    nop                                           ; $7d0a: $00
    adc b                                         ; $7d0b: $88
    nop                                           ; $7d0c: $00
    add b                                         ; $7d0d: $80
    nop                                           ; $7d0e: $00
    ld h, l                                       ; $7d0f: $65
    ld a, [de]                                    ; $7d10: $1a
    nop                                           ; $7d11: $00
    rst $38                                       ; $7d12: $ff
    dec c                                         ; $7d13: $0d
    inc b                                         ; $7d14: $04
    push af                                       ; $7d15: $f5
    inc c                                         ; $7d16: $0c
    di                                            ; $7d17: $f3
    inc b                                         ; $7d18: $04
    rst $28                                       ; $7d19: $ef
    push af                                       ; $7d1a: $f5
    rst $28                                       ; $7d1b: $ef
    db $fd                                        ; $7d1c: $fd
    pop af                                        ; $7d1d: $f1
    inc b                                         ; $7d1e: $04
    rst $38                                       ; $7d1f: $ff
    ld sp, hl                                     ; $7d20: $f9
    add d                                         ; $7d21: $82
    nop                                           ; $7d22: $00
    ld bc, $0005                                  ; $7d23: $01 $05 $00
    sub e                                         ; $7d26: $93
    ld [de], a                                    ; $7d27: $12
    ld [bc], a                                    ; $7d28: $02
    dec d                                         ; $7d29: $15
    ld [bc], a                                    ; $7d2a: $02
    dec l                                         ; $7d2b: $2d
    ld [$01b1], sp                                ; $7d2c: $08 $b1 $01
    ld a, [de]                                    ; $7d2f: $1a
    nop                                           ; $7d30: $00
    add hl, bc                                    ; $7d31: $09
    ld [$0854], sp                                ; $7d32: $08 $54 $08
    dec b                                         ; $7d35: $05
    ld [$0015], sp                                ; $7d36: $08 $15 $00
    ld a, [bc]                                    ; $7d39: $0a
    inc bc                                        ; $7d3a: $03
    nop                                           ; $7d3b: $00
    add c                                         ; $7d3c: $81
    inc d                                         ; $7d3d: $14
    inc bc                                        ; $7d3e: $03
    nop                                           ; $7d3f: $00
    cp e                                          ; $7d40: $bb
    ld [bc], a                                    ; $7d41: $02
    nop                                           ; $7d42: $00
    ld [$1800], sp                                ; $7d43: $08 $00 $18
    nop                                           ; $7d46: $00
    ld b, b                                       ; $7d47: $40
    nop                                           ; $7d48: $00
    halt                                          ; $7d49: $76
    nop                                           ; $7d4a: $00
    dec l                                         ; $7d4b: $2d
    db $10                                        ; $7d4c: $10
    jp hl                                         ; $7d4d: $e9


    ld de, $11a6                                  ; $7d4e: $11 $a6 $11
    xor d                                         ; $7d51: $aa
    nop                                           ; $7d52: $00
    or e                                          ; $7d53: $b3
    sub b                                         ; $7d54: $90
    jr z, jr_0f6_7d78                             ; $7d55: $28 $21

    sbc b                                         ; $7d57: $98
    ld bc, $006a                                  ; $7d58: $01 $6a $00
    inc h                                         ; $7d5b: $24
    inc b                                         ; $7d5c: $04
    ld e, b                                       ; $7d5d: $58
    nop                                           ; $7d5e: $00
    stop                                          ; $7d5f: $10 $00
    ld [$0800], sp                                ; $7d61: $08 $00 $08
    nop                                           ; $7d64: $00
    inc l                                         ; $7d65: $2c
    ld [$0005], sp                                ; $7d66: $08 $05 $00
    ld [hl], c                                    ; $7d69: $71
    nop                                           ; $7d6a: $00
    jr z, jr_0f6_7d75                             ; $7d6b: $28 $08

    ld [hl], h                                    ; $7d6d: $74
    ld [$0010], sp                                ; $7d6e: $08 $10 $00
    ld e, b                                       ; $7d71: $58
    ld d, b                                       ; $7d72: $50
    inc l                                         ; $7d73: $2c
    nop                                           ; $7d74: $00

jr_0f6_7d75:
    ld d, h                                       ; $7d75: $54
    nop                                           ; $7d76: $00
    inc b                                         ; $7d77: $04

jr_0f6_7d78:
    nop                                           ; $7d78: $00
    ld e, b                                       ; $7d79: $58
    nop                                           ; $7d7a: $00
    ld b, b                                       ; $7d7b: $40
    dec b                                         ; $7d7c: $05
    nop                                           ; $7d7d: $00
    add c                                         ; $7d7e: $81
    add c                                         ; $7d7f: $81
    ld e, $00                                     ; $7d80: $1e $00
    rst $38                                       ; $7d82: $ff
    dec c                                         ; $7d83: $0d
    inc b                                         ; $7d84: $04
    push af                                       ; $7d85: $f5
    inc c                                         ; $7d86: $0c
    di                                            ; $7d87: $f3
    inc b                                         ; $7d88: $04
    db $ec                                        ; $7d89: $ec
    rst $30                                       ; $7d8a: $f7
    ld [$eeff], a                                 ; $7d8b: $ea $ff $ee
    inc b                                         ; $7d8e: $04
    ld a, [$9afb]                                 ; $7d8f: $fa $fb $9a
    nop                                           ; $7d92: $00
    inc c                                         ; $7d93: $0c
    nop                                           ; $7d94: $00
    stop                                          ; $7d95: $10 $00
    ld [$4900], sp                                ; $7d97: $08 $00 $49
    nop                                           ; $7d9a: $00
    ld [de], a                                    ; $7d9b: $12
    db $10                                        ; $7d9c: $10
    inc l                                         ; $7d9d: $2c
    nop                                           ; $7d9e: $00
    add e                                         ; $7d9f: $83
    nop                                           ; $7da0: $00
    ld [bc], a                                    ; $7da1: $02
    nop                                           ; $7da2: $00
    inc b                                         ; $7da3: $04
    nop                                           ; $7da4: $00
    ld d, d                                       ; $7da5: $52
    nop                                           ; $7da6: $00
    db $10                                        ; $7da7: $10
    jr nz, @+$12                                  ; $7da8: $20 $10

    nop                                           ; $7daa: $00
    ld hl, $0003                                  ; $7dab: $21 $03 $00
    add c                                         ; $7dae: $81
    ld b, b                                       ; $7daf: $40
    inc bc                                        ; $7db0: $03
    nop                                           ; $7db1: $00
    sbc e                                         ; $7db2: $9b
    jr nz, jr_0f6_7db5                            ; $7db3: $20 $00

jr_0f6_7db5:
    ld b, b                                       ; $7db5: $40
    nop                                           ; $7db6: $00
    jr z, jr_0f6_7db9                             ; $7db7: $28 $00

jr_0f6_7db9:
    ld hl, $5220                                  ; $7db9: $21 $20 $52
    nop                                           ; $7dbc: $00
    ld hl, $5900                                  ; $7dbd: $21 $00 $59
    db $10                                        ; $7dc0: $10
    and b                                         ; $7dc1: $a0
    nop                                           ; $7dc2: $00
    add l                                         ; $7dc3: $85
    nop                                           ; $7dc4: $00
    ld c, l                                       ; $7dc5: $4d
    ld b, c                                       ; $7dc6: $41
    xor d                                         ; $7dc7: $aa
    nop                                           ; $7dc8: $00
    ld b, l                                       ; $7dc9: $45
    nop                                           ; $7dca: $00
    jr nz, jr_0f6_7dcd                            ; $7dcb: $20 $00

jr_0f6_7dcd:
    add c                                         ; $7dcd: $81
    inc bc                                        ; $7dce: $03
    nop                                           ; $7dcf: $00
    adc h                                         ; $7dd0: $8c
    sub b                                         ; $7dd1: $90
    nop                                           ; $7dd2: $00
    ld [$0800], sp                                ; $7dd3: $08 $00 $08
    nop                                           ; $7dd6: $00
    inc c                                         ; $7dd7: $0c
    nop                                           ; $7dd8: $00
    dec c                                         ; $7dd9: $0d
    nop                                           ; $7dda: $00
    ld bc, $0200                                  ; $7ddb: $01 $00 $02
    ld [$1489], sp                                ; $7dde: $08 $89 $14
    nop                                           ; $7de1: $00
    ld [$1000], sp                                ; $7de2: $08 $00 $10
    nop                                           ; $7de5: $00
    stop                                          ; $7de6: $10 $00
    inc b                                         ; $7de8: $04
    inc bc                                        ; $7de9: $03
    nop                                           ; $7dea: $00
    add c                                         ; $7deb: $81
    ld b, b                                       ; $7dec: $40
    rlca                                          ; $7ded: $07
    nop                                           ; $7dee: $00
    add c                                         ; $7def: $81
    dec b                                         ; $7df0: $05
    ld e, $00                                     ; $7df1: $1e $00
    rst $38                                       ; $7df3: $ff
    dec bc                                        ; $7df4: $0b
    inc bc                                        ; $7df5: $03
    push af                                       ; $7df6: $f5
    inc c                                         ; $7df7: $0c
    di                                            ; $7df8: $f3
    inc b                                         ; $7df9: $04
    add sp, -$09                                  ; $7dfa: $e8 $f7
    add sp, -$01                                  ; $7dfc: $e8 $ff
    add sp, $04                                   ; $7dfe: $e8 $04
    dec b                                         ; $7e00: $05
    nop                                           ; $7e01: $00
    xor a                                         ; $7e02: $af
    inc c                                         ; $7e03: $0c
    nop                                           ; $7e04: $00
    stop                                          ; $7e05: $10 $00
    ld [$4900], sp                                ; $7e07: $08 $00 $49
    nop                                           ; $7e0a: $00
    ld [de], a                                    ; $7e0b: $12
    db $10                                        ; $7e0c: $10
    inc l                                         ; $7e0d: $2c
    ld [bc], a                                    ; $7e0e: $02
    sub c                                         ; $7e0f: $91
    nop                                           ; $7e10: $00
    ld [bc], a                                    ; $7e11: $02
    nop                                           ; $7e12: $00
    jr nz, jr_0f6_7e15                            ; $7e13: $20 $00

jr_0f6_7e15:
    ld [bc], a                                    ; $7e15: $02
    nop                                           ; $7e16: $00
    stop                                          ; $7e17: $10 $00
    ld [$0900], sp                                ; $7e19: $08 $00 $09
    nop                                           ; $7e1c: $00
    jr nz, jr_0f6_7e1f                            ; $7e1d: $20 $00

jr_0f6_7e1f:
    jr nz, jr_0f6_7e21                            ; $7e1f: $20 $00

jr_0f6_7e21:
    ld b, b                                       ; $7e21: $40
    nop                                           ; $7e22: $00
    inc l                                         ; $7e23: $2c
    nop                                           ; $7e24: $00
    ld hl, $5220                                  ; $7e25: $21 $20 $52
    nop                                           ; $7e28: $00
    dec h                                         ; $7e29: $25
    nop                                           ; $7e2a: $00
    ld e, c                                       ; $7e2b: $59
    db $10                                        ; $7e2c: $10
    and b                                         ; $7e2d: $a0
    nop                                           ; $7e2e: $00
    dec b                                         ; $7e2f: $05
    nop                                           ; $7e30: $00
    dec c                                         ; $7e31: $0d
    inc bc                                        ; $7e32: $03
    nop                                           ; $7e33: $00
    add c                                         ; $7e34: $81
    ld b, h                                       ; $7e35: $44
    inc bc                                        ; $7e36: $03
    nop                                           ; $7e37: $00
    add c                                         ; $7e38: $81
    jr nz, @+$0f                                  ; $7e39: $20 $0d

    nop                                           ; $7e3b: $00
    add d                                         ; $7e3c: $82
    ld [$0200], sp                                ; $7e3d: $08 $00 $02
    ld [$0486], sp                                ; $7e40: $08 $86 $04
    ld [$0005], sp                                ; $7e43: $08 $05 $00
    ld bc, $0200                                  ; $7e46: $01 $00 $02
    ld [$1083], sp                                ; $7e49: $08 $83 $10
    nop                                           ; $7e4c: $00
    ld [$0003], sp                                ; $7e4d: $08 $03 $00
    add c                                         ; $7e50: $81
    db $10                                        ; $7e51: $10
    inc b                                         ; $7e52: $04
    nop                                           ; $7e53: $00
    rst $38                                       ; $7e54: $ff
    dec c                                         ; $7e55: $0d
    inc b                                         ; $7e56: $04
    push af                                       ; $7e57: $f5
    inc c                                         ; $7e58: $0c
    di                                            ; $7e59: $f3
    inc b                                         ; $7e5a: $04
    add sp, -$09                                  ; $7e5b: $e8 $f7
    and $ff                                       ; $7e5d: $e6 $ff
    db $eb                                        ; $7e5f: $eb
    inc b                                         ; $7e60: $04
    or $fb                                        ; $7e61: $f6 $fb
    adc [hl]                                      ; $7e63: $8e
    nop                                           ; $7e64: $00
    inc c                                         ; $7e65: $0c
    nop                                           ; $7e66: $00
    stop                                          ; $7e67: $10 $00
    ld [$4900], sp                                ; $7e69: $08 $00 $49
    nop                                           ; $7e6c: $00
    ld [de], a                                    ; $7e6d: $12
    jr jr_0f6_7e94                                ; $7e6e: $18 $24

    inc bc                                        ; $7e70: $03
    add b                                         ; $7e71: $80
    dec b                                         ; $7e72: $05
    nop                                           ; $7e73: $00
    add e                                         ; $7e74: $83
    ld [bc], a                                    ; $7e75: $02
    nop                                           ; $7e76: $00
    db $10                                        ; $7e77: $10
    inc bc                                        ; $7e78: $03
    nop                                           ; $7e79: $00
    add c                                         ; $7e7a: $81
    ld hl, $0003                                  ; $7e7b: $21 $03 $00
    add c                                         ; $7e7e: $81
    ld b, b                                       ; $7e7f: $40
    inc bc                                        ; $7e80: $03
    nop                                           ; $7e81: $00
    adc l                                         ; $7e82: $8d
    jr nz, jr_0f6_7e85                            ; $7e83: $20 $00

jr_0f6_7e85:
    ld b, b                                       ; $7e85: $40
    nop                                           ; $7e86: $00
    jr nz, jr_0f6_7e89                            ; $7e87: $20 $00

jr_0f6_7e89:
    ld hl, $5220                                  ; $7e89: $21 $20 $52
    nop                                           ; $7e8c: $00
    jr nz, jr_0f6_7e8f                            ; $7e8d: $20 $00

jr_0f6_7e8f:
    ld [$0003], sp                                ; $7e8f: $08 $03 $00
    add c                                         ; $7e92: $81
    inc b                                         ; $7e93: $04

jr_0f6_7e94:
    rrca                                          ; $7e94: $0f
    nop                                           ; $7e95: $00
    adc c                                         ; $7e96: $89
    ld [$0400], sp                                ; $7e97: $08 $00 $04
    nop                                           ; $7e9a: $00
    ld [$0100], sp                                ; $7e9b: $08 $00 $01
    nop                                           ; $7e9e: $00
    ld [$0017], sp                                ; $7e9f: $08 $17 $00
    add c                                         ; $7ea2: $81
    ld bc, $001e                                  ; $7ea3: $01 $1e $00
    rst $38                                       ; $7ea6: $ff
    add hl, bc                                    ; $7ea7: $09
    ld [bc], a                                    ; $7ea8: $02
    ld hl, sp+$07                                 ; $7ea9: $f8 $07
    ei                                            ; $7eab: $fb
    ld b, $fe                                     ; $7eac: $06 $fe
    ei                                            ; $7eae: $fb
    cp $ff                                        ; $7eaf: $fe $ff
    adc h                                         ; $7eb1: $8c
    inc b                                         ; $7eb2: $04
    ld [bc], a                                    ; $7eb3: $02
    rlca                                          ; $7eb4: $07
    ld [$321d], sp                                ; $7eb5: $08 $1d $32
    inc h                                         ; $7eb8: $24
    ld e, a                                       ; $7eb9: $5f
    db $db                                        ; $7eba: $db
    cp h                                          ; $7ebb: $bc
    ld a, h                                       ; $7ebc: $7c
    ld a, a                                       ; $7ebd: $7f
    ld [bc], a                                    ; $7ebe: $02
    rlca                                          ; $7ebf: $07
    dec d                                         ; $7ec0: $15
    nop                                           ; $7ec1: $00
    ld [bc], a                                    ; $7ec2: $02
    ld [$0687], sp                                ; $7ec3: $08 $87 $06
    ld c, $01                                     ; $7ec6: $0e $01
    ld [$0806], sp                                ; $7ec8: $08 $06 $08
    inc c                                         ; $7ecb: $0c
    inc d                                         ; $7ecc: $14
    nop                                           ; $7ecd: $00
    rst $38                                       ; $7ece: $ff
    add hl, bc                                    ; $7ecf: $09
    ld [bc], a                                    ; $7ed0: $02
    ld hl, sp+$07                                 ; $7ed1: $f8 $07
    ei                                            ; $7ed3: $fb
    ld b, $fc                                     ; $7ed4: $06 $fc
    ld sp, hl                                     ; $7ed6: $f9
    db $fc                                        ; $7ed7: $fc
    ld bc, $0081                                  ; $7ed8: $01 $81 $00
    ld [bc], a                                    ; $7edb: $02
    inc bc                                        ; $7edc: $03
    adc a                                         ; $7edd: $8f
    inc c                                         ; $7ede: $0c
    rrca                                          ; $7edf: $0f
    db $10                                        ; $7ee0: $10
    ld c, $31                                     ; $7ee1: $0e $31
    ld d, a                                       ; $7ee3: $57
    ld l, b                                       ; $7ee4: $68
    or b                                          ; $7ee5: $b0
    rst $08                                       ; $7ee6: $cf
    cp d                                          ; $7ee7: $ba
    rst $00                                       ; $7ee8: $c7
    add $ff                                       ; $7ee9: $c6 $ff
    ld [hl], a                                    ; $7eeb: $77
    ld a, a                                       ; $7eec: $7f
    ld [bc], a                                    ; $7eed: $02
    jr c, jr_0f6_7efd                             ; $7eee: $38 $0d

    nop                                           ; $7ef0: $00
    ld [bc], a                                    ; $7ef1: $02
    add b                                         ; $7ef2: $80
    adc a                                         ; $7ef3: $8f
    ld h, b                                       ; $7ef4: $60
    ret nz                                        ; $7ef5: $c0

    jr nz, @+$42                                  ; $7ef6: $20 $40

    or b                                          ; $7ef8: $b0
    sub b                                         ; $7ef9: $90
    ld a, [hl]                                    ; $7efa: $7e
    ld [hl], $f9                                  ; $7efb: $36 $f9

jr_0f6_7efd:
    ld l, l                                       ; $7efd: $6d
    sub e                                         ; $7efe: $93
    or d                                          ; $7eff: $b2
    adc $cc                                       ; $7f00: $ce $cc
    db $fc                                        ; $7f02: $fc
    ld [bc], a                                    ; $7f03: $02
    ld h, b                                       ; $7f04: $60
    inc c                                         ; $7f05: $0c
    nop                                           ; $7f06: $00
    rst $38                                       ; $7f07: $ff
    dec c                                         ; $7f08: $0d
    inc b                                         ; $7f09: $04
    ld hl, sp+$07                                 ; $7f0a: $f8 $07
    ei                                            ; $7f0c: $fb
    ld b, $f9                                     ; $7f0d: $06 $f9
    db $f4                                        ; $7f0f: $f4
    ld sp, hl                                     ; $7f10: $f9
    db $fc                                        ; $7f11: $fc
    ld sp, hl                                     ; $7f12: $f9
    inc b                                         ; $7f13: $04
    ld sp, hl                                     ; $7f14: $f9
    dec b                                         ; $7f15: $05
    ld [$0200], sp                                ; $7f16: $08 $00 $02
    inc bc                                        ; $7f19: $03
    adc [hl]                                      ; $7f1a: $8e
    ld c, $2f                                     ; $7f1b: $0e $2f
    inc de                                        ; $7f1d: $13
    ccf                                           ; $7f1e: $3f
    ld b, h                                       ; $7f1f: $44
    ld a, e                                       ; $7f20: $7b
    inc sp                                        ; $7f21: $33
    ld c, h                                       ; $7f22: $4c
    and [hl]                                      ; $7f23: $a6
    reti                                          ; $7f24: $d9


    ld e, l                                       ; $7f25: $5d
    ld h, e                                       ; $7f26: $63
    ld h, c                                       ; $7f27: $61
    ld a, a                                       ; $7f28: $7f
    ld [bc], a                                    ; $7f29: $02
    ld a, $02                                     ; $7f2a: $3e $02
    inc e                                         ; $7f2c: $1c
    dec b                                         ; $7f2d: $05
    nop                                           ; $7f2e: $00
    sbc b                                         ; $7f2f: $98
    jr nz, jr_0f6_7f32                            ; $7f30: $20 $00

jr_0f6_7f32:
    ld a, b                                       ; $7f32: $78
    jr nc, @+$50                                  ; $7f33: $30 $4e

    inc a                                         ; $7f35: $3c
    jp $e01f                                      ; $7f36: $c3 $1f $e0


    add $39                                       ; $7f39: $c6 $39
    ld [hl], d                                    ; $7f3b: $72
    adc l                                         ; $7f3c: $8d
    jr nz, @+$01                                  ; $7f3d: $20 $ff

    ld b, l                                       ; $7f3f: $45
    cp e                                          ; $7f40: $bb
    ld l, $d1                                     ; $7f41: $2e $d1
    cp a                                          ; $7f43: $bf
    ret nz                                        ; $7f44: $c0

    rst $10                                       ; $7f45: $d7
    add sp, $21                                   ; $7f46: $e8 $21
    ld [bc], a                                    ; $7f48: $02
    ld a, $81                                     ; $7f49: $3e $81
    ccf                                           ; $7f4b: $3f
    ld [bc], a                                    ; $7f4c: $02
    jr jr_0f6_7f5a                                ; $7f4d: $18 $0b

    nop                                           ; $7f4f: $00
    ld [bc], a                                    ; $7f50: $02
    add b                                         ; $7f51: $80
    add d                                         ; $7f52: $82
    ldh [rLCDC], a                                ; $7f53: $e0 $40
    ld [bc], a                                    ; $7f55: $02
    or h                                          ; $7f56: $b4
    adc l                                         ; $7f57: $8d
    res 7, a                                      ; $7f58: $cb $bf

jr_0f6_7f5a:
    ret nz                                        ; $7f5a: $c0

    ld a, l                                       ; $7f5b: $7d
    add d                                         ; $7f5c: $82
    ld a, [$5105]                                 ; $7f5d: $fa $05 $51
    xor a                                         ; $7f60: $af
    sbc [hl]                                      ; $7f61: $9e
    ld h, [hl]                                    ; $7f62: $66
    ld h, b                                       ; $7f63: $60
    ld hl, sp+$02                                 ; $7f64: $f8 $02
    jr nc, jr_0f6_7f7b                            ; $7f66: $30 $13

    nop                                           ; $7f68: $00
    add d                                         ; $7f69: $82
    ld bc, $0300                                  ; $7f6a: $01 $00 $03
    ld bc, $000a                                  ; $7f6d: $01 $0a $00
    rst $38                                       ; $7f70: $ff
    dec c                                         ; $7f71: $0d
    inc b                                         ; $7f72: $04
    ld hl, sp+$07                                 ; $7f73: $f8 $07
    ei                                            ; $7f75: $fb
    ld b, $fc                                     ; $7f76: $06 $fc
    rst $28                                       ; $7f78: $ef
    rst $30                                       ; $7f79: $f7
    rst $30                                       ; $7f7a: $f7

jr_0f6_7f7b:
    ld sp, hl                                     ; $7f7b: $f9
    rst $38                                       ; $7f7c: $ff
    db $fd                                        ; $7f7d: $fd
    rlca                                          ; $7f7e: $07
    add a                                         ; $7f7f: $87
    nop                                           ; $7f80: $00
    ld bc, $0100                                  ; $7f81: $01 $00 $01
    nop                                           ; $7f84: $00
    ld bc, $0302                                  ; $7f85: $01 $02 $03
    inc bc                                        ; $7f88: $03
    add [hl]                                      ; $7f89: $86
    dec bc                                        ; $7f8a: $0b
    inc c                                         ; $7f8b: $0c
    dec b                                         ; $7f8c: $05
    ld b, $04                                     ; $7f8d: $06 $04

jr_0f6_7f8f:
    rlca                                          ; $7f8f: $07
    ld [bc], a                                    ; $7f90: $02
    inc bc                                        ; $7f91: $03
    ld [bc], a                                    ; $7f92: $02
    ld bc, $000d                                  ; $7f93: $01 $0d $00
    add h                                         ; $7f96: $84
    ld bc, $0100                                  ; $7f97: $01 $00 $01
    nop                                           ; $7f9a: $00
    ld [bc], a                                    ; $7f9b: $02
    ld bc, $0282                                  ; $7f9c: $01 $82 $02
    ld bc, $0202                                  ; $7f9f: $01 $02 $02
    sub e                                         ; $7fa2: $93
    dec d                                         ; $7fa3: $15
    rla                                           ; $7fa4: $17
    jr jr_0f6_7fd6                                ; $7fa5: $18 $2f

    ldh a, [$c1]                                  ; $7fa7: $f0 $c1
    ld a, $66                                     ; $7fa9: $3e $66
    sbc a                                         ; $7fab: $9f
    db $db                                        ; $7fac: $db
    daa                                           ; $7fad: $27
    ld d, b                                       ; $7fae: $50
    xor a                                         ; $7faf: $af
    ld l, l                                       ; $7fb0: $6d
    sbc [hl]                                      ; $7fb1: $9e
    inc c                                         ; $7fb2: $0c
    rst $38                                       ; $7fb3: $ff
    ld [hl], e                                    ; $7fb4: $73
    di                                            ; $7fb5: $f3
    ld [bc], a                                    ; $7fb6: $02
    pop hl                                        ; $7fb7: $e1
    ld [bc], a                                    ; $7fb8: $02
    add b                                         ; $7fb9: $80
    sbc d                                         ; $7fba: $9a
    nop                                           ; $7fbb: $00
    ret nc                                        ; $7fbc: $d0

    add b                                         ; $7fbd: $80
    ld [hl], b                                    ; $7fbe: $70
    ld d, b                                       ; $7fbf: $50
    xor b                                         ; $7fc0: $a8
    ld a, b                                       ; $7fc1: $78
    add l                                         ; $7fc2: $85
    db $f4                                        ; $7fc3: $f4
    rrca                                          ; $7fc4: $0f
    ei                                            ; $7fc5: $fb
    dec b                                         ; $7fc6: $05
    ld a, [bc]                                    ; $7fc7: $0a
    rst $30                                       ; $7fc8: $f7
    ld de, $dbfe                                  ; $7fc9: $11 $fe $db
    inc a                                         ; $7fcc: $3c
    rst $20                                       ; $7fcd: $e7
    jr jr_0f6_7f8f                                ; $7fce: $18 $bf

    ld b, b                                       ; $7fd0: $40
    inc b                                         ; $7fd1: $04
    ei                                            ; $7fd2: $fb
    or e                                          ; $7fd3: $b3
    rst $38                                       ; $7fd4: $ff
    ld [bc], a                                    ; $7fd5: $02

jr_0f6_7fd6:
    pop bc                                        ; $7fd6: $c1
    inc bc                                        ; $7fd7: $03
    nop                                           ; $7fd8: $00
    sub e                                         ; $7fd9: $93
    jr nz, jr_0f6_7fdc                            ; $7fda: $20 $00

jr_0f6_7fdc:
    jr nz, jr_0f6_7fee                            ; $7fdc: $20 $10

    ldh a, [$a8]                                  ; $7fde: $f0 $a8
    ld e, b                                       ; $7fe0: $58
    ldh [rNR32], a                                ; $7fe1: $e0 $1c
    ld hl, sp+$04                                 ; $7fe3: $f8 $04
    call nc, $a82c                                ; $7fe5: $d4 $2c $a8
    ld a, b                                       ; $7fe8: $78
    or b                                          ; $7fe9: $b0
    ld [hl], b                                    ; $7fea: $70
    ld b, b                                       ; $7feb: $40
    ret nz                                        ; $7fec: $c0

    ld [bc], a                                    ; $7fed: $02

jr_0f6_7fee:
    add b                                         ; $7fee: $80
    ld a, [bc]                                    ; $7fef: $0a
    nop                                           ; $7ff0: $00
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
