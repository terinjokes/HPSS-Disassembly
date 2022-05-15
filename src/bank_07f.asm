; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $07f", ROMX[$4000], BANK[$7f]

    db $7f

    ld sp, $3332                                  ; $4001: $31 $32 $33
    inc [hl]                                      ; $4004: $34
    dec [hl]                                      ; $4005: $35
    ld [hl], $37                                  ; $4006: $36 $37
    jr c, @+$3b                                   ; $4008: $38 $39

    jr nc, jr_07f_403d                            ; $400a: $30 $31

    ld [hl-], a                                   ; $400c: $32
    inc sp                                        ; $400d: $33
    inc [hl]                                      ; $400e: $34
    dec [hl]                                      ; $400f: $35
    inc de                                        ; $4010: $13
    nop                                           ; $4011: $00
    inc d                                         ; $4012: $14
    nop                                           ; $4013: $00
    add b                                         ; $4014: $80
    ld e, $d1                                     ; $4015: $1e $d1
    pop de                                        ; $4017: $d1
    pop de                                        ; $4018: $d1
    pop de                                        ; $4019: $d1
    pop de                                        ; $401a: $d1
    pop de                                        ; $401b: $d1
    pop de                                        ; $401c: $d1
    pop de                                        ; $401d: $d1
    pop de                                        ; $401e: $d1
    pop de                                        ; $401f: $d1
    pop de                                        ; $4020: $d1
    pop de                                        ; $4021: $d1
    pop de                                        ; $4022: $d1
    pop de                                        ; $4023: $d1
    pop de                                        ; $4024: $d1
    pop de                                        ; $4025: $d1
    inc bc                                        ; $4026: $03
    inc bc                                        ; $4027: $03
    inc bc                                        ; $4028: $03
    inc bc                                        ; $4029: $03
    inc bc                                        ; $402a: $03
    inc bc                                        ; $402b: $03
    inc bc                                        ; $402c: $03
    inc bc                                        ; $402d: $03
    inc bc                                        ; $402e: $03
    inc bc                                        ; $402f: $03
    inc bc                                        ; $4030: $03
    ld b, $03                                     ; $4031: $06 $03
    inc bc                                        ; $4033: $03
    ld b, $03                                     ; $4034: $06 $03
    jp nc, $d4d3                                  ; $4036: $d2 $d3 $d4

    push de                                       ; $4039: $d5
    sub $d7                                       ; $403a: $d6 $d7
    ret c                                         ; $403c: $d8

jr_07f_403d:
    reti                                          ; $403d: $d9


    jp c, $dcdb                                   ; $403e: $da $db $dc

    db $dd                                        ; $4041: $dd
    sbc $df                                       ; $4042: $de $df
    call nc, $86e0                                ; $4044: $d4 $e0 $86
    add [hl]                                      ; $4047: $86
    ld [bc], a                                    ; $4048: $02
    dec b                                         ; $4049: $05
    and [hl]                                      ; $404a: $a6
    and e                                         ; $404b: $a3
    ld [bc], a                                    ; $404c: $02
    ld [bc], a                                    ; $404d: $02
    add e                                         ; $404e: $83
    add e                                         ; $404f: $83
    ld [bc], a                                    ; $4050: $02
    ld [bc], a                                    ; $4051: $02
    add e                                         ; $4052: $83
    add e                                         ; $4053: $83
    ld [bc], a                                    ; $4054: $02
    dec b                                         ; $4055: $05
    pop hl                                        ; $4056: $e1
    ld [c], a                                     ; $4057: $e2
    db $e3                                        ; $4058: $e3
    rst $10                                       ; $4059: $d7
    db $e4                                        ; $405a: $e4
    push hl                                       ; $405b: $e5
    and $d7                                       ; $405c: $e6 $d7
    rst $20                                       ; $405e: $e7
    add sp, -$17                                  ; $405f: $e8 $e9
    db $db                                        ; $4061: $db
    ld [$d5eb], a                                 ; $4062: $ea $eb $d5
    rst $18                                       ; $4065: $df
    ld [bc], a                                    ; $4066: $02
    ld [bc], a                                    ; $4067: $02
    ld [bc], a                                    ; $4068: $02
    add [hl]                                      ; $4069: $86
    dec b                                         ; $406a: $05
    dec b                                         ; $406b: $05
    ld [bc], a                                    ; $406c: $02
    add [hl]                                      ; $406d: $86
    dec b                                         ; $406e: $05
    dec b                                         ; $406f: $05
    ld [bc], a                                    ; $4070: $02
    and [hl]                                      ; $4071: $a6
    dec b                                         ; $4072: $05
    dec b                                         ; $4073: $05
    ld [bc], a                                    ; $4074: $02
    and [hl]                                      ; $4075: $a6
    sub $d1                                       ; $4076: $d6 $d1
    pop de                                        ; $4078: $d1
    pop de                                        ; $4079: $d1
    sub $d1                                       ; $407a: $d6 $d1
    pop de                                        ; $407c: $d1
    pop de                                        ; $407d: $d1
    jp c, $d1d1                                   ; $407e: $da $d1 $d1

    pop de                                        ; $4081: $d1
    sbc $d1                                       ; $4082: $de $d1
    pop de                                        ; $4084: $d1
    pop de                                        ; $4085: $d1
    add [hl]                                      ; $4086: $86
    inc bc                                        ; $4087: $03
    inc bc                                        ; $4088: $03
    inc bc                                        ; $4089: $03
    add e                                         ; $408a: $83
    inc bc                                        ; $408b: $03
    inc bc                                        ; $408c: $03
    inc bc                                        ; $408d: $03
    and e                                         ; $408e: $a3
    inc bc                                        ; $408f: $03
    inc bc                                        ; $4090: $03
    inc bc                                        ; $4091: $03
    and e                                         ; $4092: $a3
    inc bc                                        ; $4093: $03
    inc bc                                        ; $4094: $03
    inc bc                                        ; $4095: $03
    pop de                                        ; $4096: $d1
    pop de                                        ; $4097: $d1
    pop de                                        ; $4098: $d1
    pop de                                        ; $4099: $d1
    pop de                                        ; $409a: $d1
    pop de                                        ; $409b: $d1
    pop de                                        ; $409c: $d1
    pop de                                        ; $409d: $d1
    pop de                                        ; $409e: $d1
    pop de                                        ; $409f: $d1
    pop de                                        ; $40a0: $d1
    pop de                                        ; $40a1: $d1
    pop de                                        ; $40a2: $d1
    pop de                                        ; $40a3: $d1
    pop de                                        ; $40a4: $d1
    pop de                                        ; $40a5: $d1
    inc bc                                        ; $40a6: $03
    inc bc                                        ; $40a7: $03
    ld b, $03                                     ; $40a8: $06 $03
    inc bc                                        ; $40aa: $03
    inc bc                                        ; $40ab: $03
    inc bc                                        ; $40ac: $03
    inc bc                                        ; $40ad: $03
    inc bc                                        ; $40ae: $03
    inc bc                                        ; $40af: $03
    inc bc                                        ; $40b0: $03
    inc bc                                        ; $40b1: $03
    inc bc                                        ; $40b2: $03
    inc bc                                        ; $40b3: $03
    inc bc                                        ; $40b4: $03
    inc bc                                        ; $40b5: $03
    db $ec                                        ; $40b6: $ec
    db $ed                                        ; $40b7: $ed
    ret c                                         ; $40b8: $d8

    xor $ef                                       ; $40b9: $ee $ef
    ldh a, [$dc]                                  ; $40bb: $f0 $dc
    pop af                                        ; $40bd: $f1
    ld a, [c]                                     ; $40be: $f2
    di                                            ; $40bf: $f3
    db $f4                                        ; $40c0: $f4
    push af                                       ; $40c1: $f5
    or $f7                                        ; $40c2: $f6 $f7
    ld hl, sp-$27                                 ; $40c4: $f8 $d9
    add [hl]                                      ; $40c6: $86
    add e                                         ; $40c7: $83
    ld [bc], a                                    ; $40c8: $02
    dec b                                         ; $40c9: $05
    add [hl]                                      ; $40ca: $86
    add e                                         ; $40cb: $83
    ld [bc], a                                    ; $40cc: $02
    dec b                                         ; $40cd: $05
    add [hl]                                      ; $40ce: $86
    add e                                         ; $40cf: $83
    ld [bc], a                                    ; $40d0: $02
    dec b                                         ; $40d1: $05
    add [hl]                                      ; $40d2: $86
    add e                                         ; $40d3: $83
    ld [bc], a                                    ; $40d4: $02
    dec b                                         ; $40d5: $05
    ld sp, hl                                     ; $40d6: $f9
    ld a, [$edd9]                                 ; $40d7: $fa $d9 $ed
    ei                                            ; $40da: $fb
    call c, $f0fc                                 ; $40db: $dc $fc $f0
    pop hl                                        ; $40de: $e1
    call nc, $f0e3                                ; $40df: $d4 $e3 $f0
    db $fd                                        ; $40e2: $fd
    push hl                                       ; $40e3: $e5
    reti                                          ; $40e4: $d9


    cp $05                                        ; $40e5: $fe $05
    dec b                                         ; $40e7: $05
    ld [bc], a                                    ; $40e8: $02
    and [hl]                                      ; $40e9: $a6
    ld [bc], a                                    ; $40ea: $02
    dec b                                         ; $40eb: $05
    ld [bc], a                                    ; $40ec: $02
    and e                                         ; $40ed: $a3
    ld [bc], a                                    ; $40ee: $02
    dec b                                         ; $40ef: $05
    ld [bc], a                                    ; $40f0: $02
    and e                                         ; $40f1: $a3
    dec b                                         ; $40f2: $05
    dec b                                         ; $40f3: $05
    ld [bc], a                                    ; $40f4: $02
    add e                                         ; $40f5: $83
    db $ec                                        ; $40f6: $ec
    rst $38                                       ; $40f7: $ff
    nop                                           ; $40f8: $00
    ld bc, $02ef                                  ; $40f9: $01 $ef $02
    inc bc                                        ; $40fc: $03
    inc b                                         ; $40fd: $04
    rst $28                                       ; $40fe: $ef
    dec b                                         ; $40ff: $05
    ld b, $d1                                     ; $4100: $06 $d1
    rlca                                          ; $4102: $07
    ld [$0a09], sp                                ; $4103: $08 $09 $0a
    and [hl]                                      ; $4106: $a6
    ld bc, $0101                                  ; $4107: $01 $01 $01
    and [hl]                                      ; $410a: $a6
    ld bc, $0101                                  ; $410b: $01 $01 $01
    and [hl]                                      ; $410e: $a6
    ld bc, $0101                                  ; $410f: $01 $01 $01
    add [hl]                                      ; $4112: $86
    ld bc, $0101                                  ; $4113: $01 $01 $01
    pop de                                        ; $4116: $d1
    pop de                                        ; $4117: $d1
    pop de                                        ; $4118: $d1
    pop de                                        ; $4119: $d1
    pop de                                        ; $411a: $d1
    pop de                                        ; $411b: $d1
    pop de                                        ; $411c: $d1
    pop de                                        ; $411d: $d1
    pop de                                        ; $411e: $d1
    pop de                                        ; $411f: $d1
    pop de                                        ; $4120: $d1
    pop de                                        ; $4121: $d1
    pop de                                        ; $4122: $d1
    pop de                                        ; $4123: $d1
    pop de                                        ; $4124: $d1
    pop de                                        ; $4125: $d1
    add e                                         ; $4126: $83
    add e                                         ; $4127: $83
    add e                                         ; $4128: $83
    add e                                         ; $4129: $83

jr_07f_412a:
    add e                                         ; $412a: $83
    add e                                         ; $412b: $83
    add e                                         ; $412c: $83
    add e                                         ; $412d: $83
    add e                                         ; $412e: $83
    add e                                         ; $412f: $83
    add e                                         ; $4130: $83
    add e                                         ; $4131: $83
    add e                                         ; $4132: $83
    add e                                         ; $4133: $83
    add e                                         ; $4134: $83
    add e                                         ; $4135: $83
    jp nc, $dcd3                                  ; $4136: $d2 $d3 $dc

    dec bc                                        ; $4139: $0b
    sub $d7                                       ; $413a: $d6 $d7
    call nc, $dae0                                ; $413c: $d4 $e0 $da
    db $db                                        ; $413f: $db

Jump_07f_4140:
    inc c                                         ; $4140: $0c
    xor $de                                       ; $4141: $ee $de
    rst $18                                       ; $4143: $df
    dec c                                         ; $4144: $0d
    pop af                                        ; $4145: $f1
    add e                                         ; $4146: $83
    add [hl]                                      ; $4147: $86
    ld [bc], a                                    ; $4148: $02
    dec b                                         ; $4149: $05
    and e                                         ; $414a: $a3
    and [hl]                                      ; $414b: $a6
    dec b                                         ; $414c: $05
    dec b                                         ; $414d: $05
    add e                                         ; $414e: $83
    add [hl]                                      ; $414f: $86
    dec b                                         ; $4150: $05
    ld [bc], a                                    ; $4151: $02
    add e                                         ; $4152: $83
    add [hl]                                      ; $4153: $86
    dec b                                         ; $4154: $05
    ld [bc], a                                    ; $4155: $02
    rst $20                                       ; $4156: $e7
    add sp, $0b                                   ; $4157: $e8 $0b
    rst $30                                       ; $4159: $f7
    ld [$0ed4], a                                 ; $415a: $ea $d4 $0e
    rrca                                          ; $415d: $0f
    db $fd                                        ; $415e: $fd
    ret c                                         ; $415f: $d8

    reti                                          ; $4160: $d9


    db $10                                        ; $4161: $10
    ld de, $fcdc                                  ; $4162: $11 $dc $fc
    ld de, $0205                                  ; $4165: $11 $05 $02
    ld [bc], a                                    ; $4168: $02
    and e                                         ; $4169: $a3
    ld [bc], a                                    ; $416a: $02
    ld [bc], a                                    ; $416b: $02
    add e                                         ; $416c: $83
    add e                                         ; $416d: $83
    ld [bc], a                                    ; $416e: $02
    ld [bc], a                                    ; $416f: $02
    ld [bc], a                                    ; $4170: $02
    add e                                         ; $4171: $83
    ld [bc], a                                    ; $4172: $02
    ld [bc], a                                    ; $4173: $02
    dec b                                         ; $4174: $05
    ld [bc], a                                    ; $4175: $02
    or $12                                        ; $4176: $f6 $12
    inc de                                        ; $4178: $13
    inc d                                         ; $4179: $14
    dec d                                         ; $417a: $15
    ld d, $17                                     ; $417b: $16 $17
    jr jr_07f_4198                                ; $417d: $18 $19

    ld a, [de]                                    ; $417f: $1a
    dec de                                        ; $4180: $1b
    inc e                                         ; $4181: $1c
    dec e                                         ; $4182: $1d
    ld e, $1f                                     ; $4183: $1e $1f
    jr nz, jr_07f_412a                            ; $4185: $20 $a3

    ld bc, $0101                                  ; $4187: $01 $01 $01
    add e                                         ; $418a: $83
    ld bc, $0101                                  ; $418b: $01 $01 $01
    add e                                         ; $418e: $83
    ld bc, $0101                                  ; $418f: $01 $01 $01
    add e                                         ; $4192: $83
    ld bc, $0101                                  ; $4193: $01 $01 $01
    pop de                                        ; $4196: $d1
    pop de                                        ; $4197: $d1

jr_07f_4198:
    pop de                                        ; $4198: $d1
    pop de                                        ; $4199: $d1
    pop de                                        ; $419a: $d1
    pop de                                        ; $419b: $d1
    pop de                                        ; $419c: $d1
    pop de                                        ; $419d: $d1
    pop de                                        ; $419e: $d1
    pop de                                        ; $419f: $d1
    pop de                                        ; $41a0: $d1
    pop de                                        ; $41a1: $d1
    pop de                                        ; $41a2: $d1
    pop de                                        ; $41a3: $d1
    pop de                                        ; $41a4: $d1
    pop de                                        ; $41a5: $d1
    inc bc                                        ; $41a6: $03
    inc bc                                        ; $41a7: $03
    inc bc                                        ; $41a8: $03
    inc bc                                        ; $41a9: $03
    inc bc                                        ; $41aa: $03
    inc bc                                        ; $41ab: $03
    inc bc                                        ; $41ac: $03
    inc bc                                        ; $41ad: $03
    inc bc                                        ; $41ae: $03
    inc bc                                        ; $41af: $03
    inc bc                                        ; $41b0: $03
    inc bc                                        ; $41b1: $03
    inc bc                                        ; $41b2: $03
    inc bc                                        ; $41b3: $03
    inc bc                                        ; $41b4: $03
    ld b, $ec                                     ; $41b5: $06 $ec
    db $ed                                        ; $41b7: $ed
    db $f4                                        ; $41b8: $f4
    push de                                       ; $41b9: $d5
    rst $28                                       ; $41ba: $ef
    ldh a, [$d8]                                  ; $41bb: $f0 $d8
    ld hl, $f3f2                                  ; $41bd: $21 $f2 $f3
    ld [hl+], a                                   ; $41c0: $22
    db $dd                                        ; $41c1: $dd
    or $f7                                        ; $41c2: $f6 $f7
    inc hl                                        ; $41c4: $23
    ldh [$83], a                                  ; $41c5: $e0 $83
    add e                                         ; $41c7: $83
    dec b                                         ; $41c8: $05
    dec b                                         ; $41c9: $05
    add [hl]                                      ; $41ca: $86
    add [hl]                                      ; $41cb: $86
    ld [bc], a                                    ; $41cc: $02
    dec b                                         ; $41cd: $05
    add [hl]                                      ; $41ce: $86
    add [hl]                                      ; $41cf: $86
    ld [bc], a                                    ; $41d0: $02
    dec b                                         ; $41d1: $05
    add [hl]                                      ; $41d2: $86
    add e                                         ; $41d3: $83
    ld [bc], a                                    ; $41d4: $02
    ld [bc], a                                    ; $41d5: $02
    inc h                                         ; $41d6: $24
    ld [c], a                                     ; $41d7: $e2
    db $e3                                        ; $41d8: $e3
    dec h                                         ; $41d9: $25
    db $e4                                        ; $41da: $e4
    push hl                                       ; $41db: $e5
    and $fd                                       ; $41dc: $e6 $fd
    rst $20                                       ; $41de: $e7
    add sp, -$17                                  ; $41df: $e8 $e9
    ld h, $ea                                     ; $41e1: $26 $ea
    db $eb                                        ; $41e3: $eb
    daa                                           ; $41e4: $27
    jr z, jr_07f_41e9                             ; $41e5: $28 $02

    ld [bc], a                                    ; $41e7: $02
    dec b                                         ; $41e8: $05

jr_07f_41e9:
    ld [bc], a                                    ; $41e9: $02
    ld [bc], a                                    ; $41ea: $02
    dec b                                         ; $41eb: $05
    dec b                                         ; $41ec: $05
    ld [bc], a                                    ; $41ed: $02
    ld [bc], a                                    ; $41ee: $02
    dec b                                         ; $41ef: $05
    ld [bc], a                                    ; $41f0: $02
    ld [bc], a                                    ; $41f1: $02
    dec b                                         ; $41f2: $05
    ld [bc], a                                    ; $41f3: $02
    dec b                                         ; $41f4: $05
    ld [bc], a                                    ; $41f5: $02
    call nc, $2a29                                ; $41f6: $d4 $29 $2a
    dec hl                                        ; $41f9: $2b
    inc l                                         ; $41fa: $2c
    dec l                                         ; $41fb: $2d
    ld l, $2f                                     ; $41fc: $2e $2f
    jr nc, jr_07f_4231                            ; $41fe: $30 $31

    ld [hl-], a                                   ; $4200: $32
    inc sp                                        ; $4201: $33
    inc [hl]                                      ; $4202: $34
    dec [hl]                                      ; $4203: $35
    ld [hl], $37                                  ; $4204: $36 $37
    ld [bc], a                                    ; $4206: $02
    ld bc, $0101                                  ; $4207: $01 $01 $01
    add e                                         ; $420a: $83
    ld bc, $0101                                  ; $420b: $01 $01 $01
    ld [bc], a                                    ; $420e: $02
    ld bc, $0101                                  ; $420f: $01 $01 $01
    ld [bc], a                                    ; $4212: $02
    ld bc, $0101                                  ; $4213: $01 $01 $01
    jr c, jr_07f_41e9                             ; $4216: $38 $d1

    add hl, sp                                    ; $4218: $39
    pop de                                        ; $4219: $d1
    ld a, [hl-]                                   ; $421a: $3a
    dec sp                                        ; $421b: $3b
    inc a                                         ; $421c: $3c
    dec a                                         ; $421d: $3d
    ld a, $3f                                     ; $421e: $3e $3f
    ld b, b                                       ; $4220: $40
    ld b, c                                       ; $4221: $41
    ld b, d                                       ; $4222: $42
    ld b, e                                       ; $4223: $43
    ld b, h                                       ; $4224: $44
    ld b, l                                       ; $4225: $45
    ld bc, $0401                                  ; $4226: $01 $01 $04
    ld bc, $0101                                  ; $4229: $01 $01 $01
    inc b                                         ; $422c: $04
    ld bc, $0101                                  ; $422d: $01 $01 $01
    inc b                                         ; $4230: $04

jr_07f_4231:
    ld bc, $0101                                  ; $4231: $01 $01 $01
    inc b                                         ; $4234: $04
    ld bc, $4746                                  ; $4235: $01 $46 $47
    ld c, b                                       ; $4238: $48
    pop de                                        ; $4239: $d1
    ld c, c                                       ; $423a: $49
    ld c, d                                       ; $423b: $4a
    ld c, e                                       ; $423c: $4b
    pop de                                        ; $423d: $d1
    ld c, h                                       ; $423e: $4c
    ld c, l                                       ; $423f: $4d
    ld c, [hl]                                    ; $4240: $4e
    ld c, a                                       ; $4241: $4f
    ld d, b                                       ; $4242: $50
    ld d, c                                       ; $4243: $51
    ld d, d                                       ; $4244: $52
    ld d, e                                       ; $4245: $53
    ld bc, $0101                                  ; $4246: $01 $01 $01
    ld bc, $0101                                  ; $4249: $01 $01 $01
    ld bc, $0101                                  ; $424c: $01 $01 $01
    ld bc, $0101                                  ; $424f: $01 $01 $01
    ld bc, $0101                                  ; $4252: $01 $01 $01
    ld bc, $00ff                                  ; $4255: $01 $ff $00
    ld bc, $0238                                  ; $4258: $01 $38 $02
    inc bc                                        ; $425b: $03
    inc b                                         ; $425c: $04
    ld a, [hl-]                                   ; $425d: $3a
    dec b                                         ; $425e: $05
    ld b, $d1                                     ; $425f: $06 $d1
    ld a, $08                                     ; $4261: $3e $08
    add hl, bc                                    ; $4263: $09
    ld a, [bc]                                    ; $4264: $0a
    ld b, d                                       ; $4265: $42
    ld bc, HeaderLogo                             ; $4266: $01 $04 $01
    ld bc, $0401                                  ; $4269: $01 $01 $04
    ld bc, $0101                                  ; $426c: $01 $01 $01
    inc b                                         ; $426f: $04
    ld bc, $0101                                  ; $4270: $01 $01 $01
    inc b                                         ; $4273: $04
    ld bc, $d101                                  ; $4274: $01 $01 $d1
    add hl, sp                                    ; $4277: $39
    pop de                                        ; $4278: $d1
    ld b, [hl]                                    ; $4279: $46
    dec sp                                        ; $427a: $3b
    inc a                                         ; $427b: $3c
    dec a                                         ; $427c: $3d
    ld c, c                                       ; $427d: $49
    ccf                                           ; $427e: $3f
    ld b, b                                       ; $427f: $40
    ld b, c                                       ; $4280: $41
    ld c, h                                       ; $4281: $4c
    ld b, e                                       ; $4282: $43
    ld b, h                                       ; $4283: $44
    ld b, l                                       ; $4284: $45
    ld d, b                                       ; $4285: $50
    ld bc, $0101                                  ; $4286: $01 $01 $01
    ld bc, $0101                                  ; $4289: $01 $01 $01
    ld bc, $0101                                  ; $428c: $01 $01 $01
    ld bc, $0101                                  ; $428f: $01 $01 $01
    ld bc, $0101                                  ; $4292: $01 $01 $01
    ld bc, $5554                                  ; $4295: $01 $54 $55
    ld d, [hl]                                    ; $4298: $56
    ld d, a                                       ; $4299: $57
    ld e, b                                       ; $429a: $58
    ld e, c                                       ; $429b: $59
    ld e, d                                       ; $429c: $5a
    ld e, e                                       ; $429d: $5b
    ld e, h                                       ; $429e: $5c
    ld e, l                                       ; $429f: $5d
    ld e, [hl]                                    ; $42a0: $5e
    ld e, a                                       ; $42a1: $5f
    ld h, b                                       ; $42a2: $60
    ld h, c                                       ; $42a3: $61
    ld h, d                                       ; $42a4: $62
    ld h, e                                       ; $42a5: $63
    ld bc, $0401                                  ; $42a6: $01 $01 $04
    ld bc, $0101                                  ; $42a9: $01 $01 $01
    inc b                                         ; $42ac: $04
    ld bc, $0101                                  ; $42ad: $01 $01 $01
    inc b                                         ; $42b0: $04
    ld bc, $0101                                  ; $42b1: $01 $01 $01
    inc b                                         ; $42b4: $04
    ld bc, $6564                                  ; $42b5: $01 $64 $65
    ld h, [hl]                                    ; $42b8: $66
    ld h, a                                       ; $42b9: $67
    ld l, b                                       ; $42ba: $68
    ld l, c                                       ; $42bb: $69
    ld l, d                                       ; $42bc: $6a
    ld l, e                                       ; $42bd: $6b
    ld l, h                                       ; $42be: $6c
    ld l, l                                       ; $42bf: $6d
    ld l, [hl]                                    ; $42c0: $6e
    ld l, a                                       ; $42c1: $6f
    ld [hl], b                                    ; $42c2: $70
    ld [hl], c                                    ; $42c3: $71
    ld [hl], d                                    ; $42c4: $72
    ld [hl], e                                    ; $42c5: $73
    ld bc, $0101                                  ; $42c6: $01 $01 $01
    ld bc, $0101                                  ; $42c9: $01 $01 $01
    ld bc, $0101                                  ; $42cc: $01 $01 $01
    ld bc, $0101                                  ; $42cf: $01 $01 $01
    ld bc, $0101                                  ; $42d2: $01 $01 $01
    ld bc, $1312                                  ; $42d5: $01 $12 $13
    inc d                                         ; $42d8: $14
    ld d, h                                       ; $42d9: $54
    ld d, $17                                     ; $42da: $16 $17
    jr jr_07f_4336                                ; $42dc: $18 $58

    ld a, [de]                                    ; $42de: $1a
    dec de                                        ; $42df: $1b
    inc e                                         ; $42e0: $1c
    ld e, h                                       ; $42e1: $5c
    ld e, $1f                                     ; $42e2: $1e $1f
    jr nz, jr_07f_4346                            ; $42e4: $20 $60

    ld bc, HeaderLogo                             ; $42e6: $01 $04 $01
    ld bc, $0401                                  ; $42e9: $01 $01 $04
    ld bc, $0101                                  ; $42ec: $01 $01 $01
    inc b                                         ; $42ef: $04
    ld bc, $0101                                  ; $42f0: $01 $01 $01
    inc b                                         ; $42f3: $04
    ld bc, $5501                                  ; $42f4: $01 $01 $55
    ld d, [hl]                                    ; $42f7: $56
    ld d, a                                       ; $42f8: $57
    ld h, h                                       ; $42f9: $64
    ld e, c                                       ; $42fa: $59
    ld e, d                                       ; $42fb: $5a
    ld e, e                                       ; $42fc: $5b
    ld l, b                                       ; $42fd: $68
    ld e, l                                       ; $42fe: $5d
    ld e, [hl]                                    ; $42ff: $5e
    ld e, a                                       ; $4300: $5f
    ld l, h                                       ; $4301: $6c
    ld h, c                                       ; $4302: $61
    ld h, d                                       ; $4303: $62
    ld h, e                                       ; $4304: $63
    ld [hl], b                                    ; $4305: $70
    ld bc, $0101                                  ; $4306: $01 $01 $01
    ld bc, $0101                                  ; $4309: $01 $01 $01
    ld bc, $0101                                  ; $430c: $01 $01 $01
    ld bc, $0101                                  ; $430f: $01 $01 $01
    ld bc, $0101                                  ; $4312: $01 $01 $01
    ld bc, $7574                                  ; $4315: $01 $74 $75
    halt                                          ; $4318: $76
    ld [hl], a                                    ; $4319: $77
    ld a, b                                       ; $431a: $78
    ld a, c                                       ; $431b: $79
    ld a, d                                       ; $431c: $7a
    ld a, e                                       ; $431d: $7b
    ld a, h                                       ; $431e: $7c
    ld a, l                                       ; $431f: $7d
    ld a, [hl]                                    ; $4320: $7e
    ld a, a                                       ; $4321: $7f
    add b                                         ; $4322: $80
    add c                                         ; $4323: $81
    add d                                         ; $4324: $82
    add e                                         ; $4325: $83
    ld bc, $0401                                  ; $4326: $01 $01 $04
    ld bc, $0101                                  ; $4329: $01 $01 $01
    inc b                                         ; $432c: $04
    ld bc, $0101                                  ; $432d: $01 $01 $01
    inc b                                         ; $4330: $04
    ld bc, $0909                                  ; $4331: $01 $09 $09
    add hl, bc                                    ; $4334: $09
    add hl, bc                                    ; $4335: $09

jr_07f_4336:
    add h                                         ; $4336: $84
    add l                                         ; $4337: $85
    add [hl]                                      ; $4338: $86
    add a                                         ; $4339: $87
    adc b                                         ; $433a: $88
    adc c                                         ; $433b: $89
    adc d                                         ; $433c: $8a
    adc e                                         ; $433d: $8b
    adc h                                         ; $433e: $8c
    adc l                                         ; $433f: $8d
    adc [hl]                                      ; $4340: $8e
    adc a                                         ; $4341: $8f
    sub b                                         ; $4342: $90
    sub c                                         ; $4343: $91
    sub d                                         ; $4344: $92
    sub e                                         ; $4345: $93

jr_07f_4346:
    add hl, bc                                    ; $4346: $09
    add hl, bc                                    ; $4347: $09
    add hl, bc                                    ; $4348: $09
    add hl, bc                                    ; $4349: $09
    add hl, bc                                    ; $434a: $09
    add hl, bc                                    ; $434b: $09
    add hl, bc                                    ; $434c: $09
    add hl, bc                                    ; $434d: $09
    add hl, bc                                    ; $434e: $09
    add hl, bc                                    ; $434f: $09
    add hl, bc                                    ; $4350: $09
    add hl, bc                                    ; $4351: $09
    add hl, bc                                    ; $4352: $09
    add hl, bc                                    ; $4353: $09
    add hl, bc                                    ; $4354: $09
    add hl, bc                                    ; $4355: $09
    add hl, hl                                    ; $4356: $29
    ld a, [hl+]                                   ; $4357: $2a
    dec hl                                        ; $4358: $2b
    ld [hl], h                                    ; $4359: $74
    dec l                                         ; $435a: $2d
    ld l, $2f                                     ; $435b: $2e $2f
    ld a, b                                       ; $435d: $78
    ld sp, $3332                                  ; $435e: $31 $32 $33
    ld a, h                                       ; $4361: $7c
    dec [hl]                                      ; $4362: $35
    ld [hl], $37                                  ; $4363: $36 $37
    add b                                         ; $4365: $80
    ld bc, HeaderLogo                             ; $4366: $01 $04 $01
    ld bc, $0401                                  ; $4369: $01 $01 $04
    ld bc, $0101                                  ; $436c: $01 $01 $01
    inc b                                         ; $436f: $04
    ld bc, $0101                                  ; $4370: $01 $01 $01
    inc b                                         ; $4373: $04
    ld bc, $7509                                  ; $4374: $01 $09 $75
    halt                                          ; $4377: $76
    ld [hl], a                                    ; $4378: $77
    add h                                         ; $4379: $84
    ld a, c                                       ; $437a: $79
    ld a, d                                       ; $437b: $7a
    ld a, e                                       ; $437c: $7b
    adc b                                         ; $437d: $88
    ld a, l                                       ; $437e: $7d
    ld a, [hl]                                    ; $437f: $7e
    ld a, a                                       ; $4380: $7f
    adc h                                         ; $4381: $8c
    add c                                         ; $4382: $81
    add d                                         ; $4383: $82
    add e                                         ; $4384: $83
    sub b                                         ; $4385: $90
    ld bc, $0101                                  ; $4386: $01 $01 $01
    add hl, bc                                    ; $4389: $09
    ld bc, $0101                                  ; $438a: $01 $01 $01
    add hl, bc                                    ; $438d: $09
    ld bc, $0101                                  ; $438e: $01 $01 $01
    add hl, bc                                    ; $4391: $09
    add hl, bc                                    ; $4392: $09
    add hl, bc                                    ; $4393: $09
    add hl, bc                                    ; $4394: $09
    add hl, bc                                    ; $4395: $09
    ld b, a                                       ; $4396: $47
    ld c, b                                       ; $4397: $48
    pop de                                        ; $4398: $d1
    rst $38                                       ; $4399: $ff
    ld c, d                                       ; $439a: $4a
    ld c, e                                       ; $439b: $4b
    pop de                                        ; $439c: $d1
    ld [bc], a                                    ; $439d: $02
    ld c, l                                       ; $439e: $4d
    ld c, [hl]                                    ; $439f: $4e
    ld c, a                                       ; $43a0: $4f
    dec b                                         ; $43a1: $05
    ld d, c                                       ; $43a2: $51
    ld d, d                                       ; $43a3: $52
    ld d, e                                       ; $43a4: $53
    ld [$0101], sp                                ; $43a5: $08 $01 $01
    ld bc, $0101                                  ; $43a8: $01 $01 $01
    ld bc, $0101                                  ; $43ab: $01 $01 $01
    ld bc, $0101                                  ; $43ae: $01 $01 $01
    ld bc, $0101                                  ; $43b1: $01 $01 $01
    ld bc, $0001                                  ; $43b4: $01 $01 $00
    ld bc, $d138                                  ; $43b7: $01 $38 $d1
    inc bc                                        ; $43ba: $03
    inc b                                         ; $43bb: $04
    ld a, [hl-]                                   ; $43bc: $3a
    dec sp                                        ; $43bd: $3b
    ld b, $d1                                     ; $43be: $06 $d1
    ld a, $3f                                     ; $43c0: $3e $3f
    add hl, bc                                    ; $43c2: $09
    ld a, [bc]                                    ; $43c3: $0a
    ld b, d                                       ; $43c4: $42
    ld b, e                                       ; $43c5: $43
    ld bc, $0101                                  ; $43c6: $01 $01 $01
    ld bc, $0101                                  ; $43c9: $01 $01 $01
    ld bc, $0101                                  ; $43cc: $01 $01 $01
    ld bc, $0101                                  ; $43cf: $01 $01 $01
    ld bc, $0101                                  ; $43d2: $01 $01 $01
    ld bc, $d139                                  ; $43d5: $01 $39 $d1
    ld b, [hl]                                    ; $43d8: $46
    ld b, a                                       ; $43d9: $47
    inc a                                         ; $43da: $3c
    dec a                                         ; $43db: $3d
    ld c, c                                       ; $43dc: $49
    ld c, d                                       ; $43dd: $4a
    ld b, b                                       ; $43de: $40
    ld b, c                                       ; $43df: $41
    ld c, h                                       ; $43e0: $4c
    ld c, l                                       ; $43e1: $4d
    ld b, h                                       ; $43e2: $44
    ld b, l                                       ; $43e3: $45
    ld d, b                                       ; $43e4: $50
    ld d, c                                       ; $43e5: $51
    inc b                                         ; $43e6: $04
    ld bc, $0101                                  ; $43e7: $01 $01 $01
    inc b                                         ; $43ea: $04
    ld bc, $0101                                  ; $43eb: $01 $01 $01
    inc b                                         ; $43ee: $04
    ld bc, $0101                                  ; $43ef: $01 $01 $01
    inc b                                         ; $43f2: $04
    ld bc, $0101                                  ; $43f3: $01 $01 $01
    ld c, b                                       ; $43f6: $48
    pop de                                        ; $43f7: $d1
    rst $38                                       ; $43f8: $ff
    nop                                           ; $43f9: $00
    ld c, e                                       ; $43fa: $4b
    pop de                                        ; $43fb: $d1
    ld [bc], a                                    ; $43fc: $02
    inc bc                                        ; $43fd: $03
    ld c, [hl]                                    ; $43fe: $4e
    ld c, a                                       ; $43ff: $4f
    dec b                                         ; $4400: $05
    ld b, $52                                     ; $4401: $06 $52
    ld d, e                                       ; $4403: $53
    ld [$0409], sp                                ; $4404: $08 $09 $04
    ld bc, $0101                                  ; $4407: $01 $01 $01
    inc b                                         ; $440a: $04
    ld bc, $0101                                  ; $440b: $01 $01 $01
    inc b                                         ; $440e: $04
    ld bc, $0101                                  ; $440f: $01 $01 $01
    inc b                                         ; $4412: $04
    ld bc, $0101                                  ; $4413: $01 $01 $01
    ld h, l                                       ; $4416: $65
    ld h, [hl]                                    ; $4417: $66
    ld h, a                                       ; $4418: $67
    ld [de], a                                    ; $4419: $12
    ld l, c                                       ; $441a: $69
    ld l, d                                       ; $441b: $6a
    ld l, e                                       ; $441c: $6b
    ld d, $6d                                     ; $441d: $16 $6d
    ld l, [hl]                                    ; $441f: $6e
    ld l, a                                       ; $4420: $6f
    ld a, [de]                                    ; $4421: $1a
    ld [hl], c                                    ; $4422: $71
    ld [hl], d                                    ; $4423: $72
    ld [hl], e                                    ; $4424: $73
    ld e, $01                                     ; $4425: $1e $01
    ld bc, $0101                                  ; $4427: $01 $01 $01
    ld bc, $0101                                  ; $442a: $01 $01 $01
    ld bc, $0101                                  ; $442d: $01 $01 $01
    ld bc, $0101                                  ; $4430: $01 $01 $01
    ld bc, $0101                                  ; $4433: $01 $01 $01
    inc de                                        ; $4436: $13
    inc d                                         ; $4437: $14
    ld d, h                                       ; $4438: $54
    ld d, l                                       ; $4439: $55
    rla                                           ; $443a: $17
    jr @+$5a                                      ; $443b: $18 $58

    ld e, c                                       ; $443d: $59
    dec de                                        ; $443e: $1b
    inc e                                         ; $443f: $1c
    ld e, h                                       ; $4440: $5c
    ld e, l                                       ; $4441: $5d
    rra                                           ; $4442: $1f

Jump_07f_4443:
    jr nz, jr_07f_44a5                            ; $4443: $20 $60

    ld h, c                                       ; $4445: $61
    ld bc, $0101                                  ; $4446: $01 $01 $01
    ld bc, $0101                                  ; $4449: $01 $01 $01
    ld bc, $0101                                  ; $444c: $01 $01 $01
    ld bc, $0101                                  ; $444f: $01 $01 $01
    ld bc, $0101                                  ; $4452: $01 $01 $01
    ld bc, $5756                                  ; $4455: $01 $56 $57
    ld h, h                                       ; $4458: $64
    ld h, l                                       ; $4459: $65
    ld e, d                                       ; $445a: $5a
    ld e, e                                       ; $445b: $5b
    ld l, b                                       ; $445c: $68
    ld l, c                                       ; $445d: $69
    ld e, [hl]                                    ; $445e: $5e
    ld e, a                                       ; $445f: $5f
    ld l, h                                       ; $4460: $6c
    ld l, l                                       ; $4461: $6d
    ld h, d                                       ; $4462: $62
    ld h, e                                       ; $4463: $63
    ld [hl], b                                    ; $4464: $70
    ld [hl], c                                    ; $4465: $71
    inc b                                         ; $4466: $04
    ld bc, $0101                                  ; $4467: $01 $01 $01
    inc b                                         ; $446a: $04
    ld bc, $0101                                  ; $446b: $01 $01 $01
    inc b                                         ; $446e: $04
    ld bc, $0101                                  ; $446f: $01 $01 $01
    inc b                                         ; $4472: $04
    ld bc, $0101                                  ; $4473: $01 $01 $01
    ld h, [hl]                                    ; $4476: $66
    ld h, a                                       ; $4477: $67
    ld [de], a                                    ; $4478: $12
    inc de                                        ; $4479: $13
    ld l, d                                       ; $447a: $6a
    ld l, e                                       ; $447b: $6b
    ld d, $17                                     ; $447c: $16 $17
    ld l, [hl]                                    ; $447e: $6e
    ld l, a                                       ; $447f: $6f
    ld a, [de]                                    ; $4480: $1a
    dec de                                        ; $4481: $1b
    ld [hl], d                                    ; $4482: $72
    ld [hl], e                                    ; $4483: $73
    ld e, $1f                                     ; $4484: $1e $1f
    inc b                                         ; $4486: $04
    ld bc, $0101                                  ; $4487: $01 $01 $01
    inc b                                         ; $448a: $04
    ld bc, $0101                                  ; $448b: $01 $01 $01
    inc b                                         ; $448e: $04
    ld bc, $0101                                  ; $448f: $01 $01 $01
    inc b                                         ; $4492: $04
    ld bc, $0101                                  ; $4493: $01 $01 $01
    add l                                         ; $4496: $85
    add [hl]                                      ; $4497: $86
    add a                                         ; $4498: $87
    add hl, hl                                    ; $4499: $29
    adc c                                         ; $449a: $89
    adc d                                         ; $449b: $8a
    adc e                                         ; $449c: $8b
    dec l                                         ; $449d: $2d
    adc l                                         ; $449e: $8d
    adc [hl]                                      ; $449f: $8e
    adc a                                         ; $44a0: $8f
    ld sp, $9291                                  ; $44a1: $31 $91 $92
    sub e                                         ; $44a4: $93

jr_07f_44a5:
    dec [hl]                                      ; $44a5: $35
    add hl, bc                                    ; $44a6: $09
    add hl, bc                                    ; $44a7: $09
    add hl, bc                                    ; $44a8: $09
    ld bc, $0909                                  ; $44a9: $01 $09 $09
    add hl, bc                                    ; $44ac: $09
    ld bc, $0909                                  ; $44ad: $01 $09 $09
    add hl, bc                                    ; $44b0: $09
    ld bc, $0909                                  ; $44b1: $01 $09 $09
    add hl, bc                                    ; $44b4: $09
    ld bc, $2b2a                                  ; $44b5: $01 $2a $2b
    ld [hl], h                                    ; $44b8: $74
    ld [hl], l                                    ; $44b9: $75
    ld l, $2f                                     ; $44ba: $2e $2f
    ld a, b                                       ; $44bc: $78
    ld a, c                                       ; $44bd: $79
    ld [hl-], a                                   ; $44be: $32
    inc sp                                        ; $44bf: $33
    ld a, h                                       ; $44c0: $7c
    ld a, l                                       ; $44c1: $7d
    ld [hl], $37                                  ; $44c2: $36 $37
    add b                                         ; $44c4: $80
    add c                                         ; $44c5: $81
    ld bc, $0101                                  ; $44c6: $01 $01 $01
    ld bc, $0101                                  ; $44c9: $01 $01 $01
    ld bc, $0101                                  ; $44cc: $01 $01 $01
    ld bc, $0101                                  ; $44cf: $01 $01 $01
    ld bc, $0901                                  ; $44d2: $01 $01 $09
    add hl, bc                                    ; $44d5: $09
    halt                                          ; $44d6: $76
    ld [hl], a                                    ; $44d7: $77
    add h                                         ; $44d8: $84
    add l                                         ; $44d9: $85
    ld a, d                                       ; $44da: $7a
    ld a, e                                       ; $44db: $7b
    adc b                                         ; $44dc: $88
    adc c                                         ; $44dd: $89
    ld a, [hl]                                    ; $44de: $7e
    ld a, a                                       ; $44df: $7f
    adc h                                         ; $44e0: $8c
    adc l                                         ; $44e1: $8d
    add d                                         ; $44e2: $82
    add e                                         ; $44e3: $83
    sub b                                         ; $44e4: $90
    sub c                                         ; $44e5: $91
    inc b                                         ; $44e6: $04
    ld bc, $0909                                  ; $44e7: $01 $09 $09

jr_07f_44ea:
    inc b                                         ; $44ea: $04
    ld bc, $0909                                  ; $44eb: $01 $09 $09
    inc b                                         ; $44ee: $04
    ld bc, $0909                                  ; $44ef: $01 $09 $09
    add hl, bc                                    ; $44f2: $09
    add hl, bc                                    ; $44f3: $09
    add hl, bc                                    ; $44f4: $09
    add hl, bc                                    ; $44f5: $09
    add [hl]                                      ; $44f6: $86
    add a                                         ; $44f7: $87
    add hl, hl                                    ; $44f8: $29
    ld a, [hl+]                                   ; $44f9: $2a
    adc d                                         ; $44fa: $8a
    adc e                                         ; $44fb: $8b
    dec l                                         ; $44fc: $2d
    ld l, $8e                                     ; $44fd: $2e $8e
    adc a                                         ; $44ff: $8f
    ld sp, $9232                                  ; $4500: $31 $32 $92
    sub e                                         ; $4503: $93
    dec [hl]                                      ; $4504: $35
    ld [hl], $0c                                  ; $4505: $36 $0c
    add hl, bc                                    ; $4507: $09
    ld bc, $0c01                                  ; $4508: $01 $01 $0c
    add hl, bc                                    ; $450b: $09
    ld bc, $0c01                                  ; $450c: $01 $01 $0c
    add hl, bc                                    ; $450f: $09
    ld bc, $0901                                  ; $4510: $01 $01 $09
    add hl, bc                                    ; $4513: $09
    ld bc, $0101                                  ; $4514: $01 $01 $01
    jr c, jr_07f_44ea                             ; $4517: $38 $d1

    add hl, sp                                    ; $4519: $39
    inc b                                         ; $451a: $04
    ld a, [hl-]                                   ; $451b: $3a
    dec sp                                        ; $451c: $3b
    inc a                                         ; $451d: $3c
    pop de                                        ; $451e: $d1
    ld a, $3f                                     ; $451f: $3e $3f
    ld b, b                                       ; $4521: $40
    ld a, [bc]                                    ; $4522: $0a
    ld b, d                                       ; $4523: $42
    ld b, e                                       ; $4524: $43
    ld b, h                                       ; $4525: $44
    ld bc, HeaderLogo                             ; $4526: $01 $04 $01
    ld bc, $0401                                  ; $4529: $01 $01 $04
    ld bc, $0101                                  ; $452c: $01 $01 $01
    inc b                                         ; $452f: $04
    ld bc, $0101                                  ; $4530: $01 $01 $01
    inc b                                         ; $4533: $04
    ld bc, $d101                                  ; $4534: $01 $01 $d1
    ld b, [hl]                                    ; $4537: $46
    ld b, a                                       ; $4538: $47
    ld c, b                                       ; $4539: $48
    dec a                                         ; $453a: $3d
    ld c, c                                       ; $453b: $49
    ld c, d                                       ; $453c: $4a
    ld c, e                                       ; $453d: $4b
    ld b, c                                       ; $453e: $41
    ld c, h                                       ; $453f: $4c
    ld c, l                                       ; $4540: $4d
    ld c, [hl]                                    ; $4541: $4e
    ld b, l                                       ; $4542: $45
    ld d, b                                       ; $4543: $50
    ld d, c                                       ; $4544: $51
    ld d, d                                       ; $4545: $52
    ld bc, $0101                                  ; $4546: $01 $01 $01
    ld bc, $0101                                  ; $4549: $01 $01 $01
    ld bc, $0101                                  ; $454c: $01 $01 $01
    ld bc, $0101                                  ; $454f: $01 $01 $01
    ld bc, $0101                                  ; $4552: $01 $01 $01
    ld bc, $ffd1                                  ; $4555: $01 $d1 $ff
    nop                                           ; $4558: $00
    ld bc, $02d1                                  ; $4559: $01 $d1 $02
    inc bc                                        ; $455c: $03
    inc b                                         ; $455d: $04
    ld c, a                                       ; $455e: $4f
    dec b                                         ; $455f: $05
    ld b, $d1                                     ; $4560: $06 $d1
    ld d, e                                       ; $4562: $53
    ld [$0a09], sp                                ; $4563: $08 $09 $0a
    ld bc, $0101                                  ; $4566: $01 $01 $01
    ld bc, $0101                                  ; $4569: $01 $01 $01
    ld bc, $0101                                  ; $456c: $01 $01 $01
    ld bc, $0101                                  ; $456f: $01 $01 $01
    ld bc, $0101                                  ; $4572: $01 $01 $01
    ld bc, $5414                                  ; $4575: $01 $14 $54
    ld d, l                                       ; $4578: $55
    ld d, [hl]                                    ; $4579: $56
    jr @+$5a                                      ; $457a: $18 $58

    ld e, c                                       ; $457c: $59
    ld e, d                                       ; $457d: $5a
    inc e                                         ; $457e: $1c
    ld e, h                                       ; $457f: $5c
    ld e, l                                       ; $4580: $5d
    ld e, [hl]                                    ; $4581: $5e
    jr nz, jr_07f_45e4                            ; $4582: $20 $60

    ld h, c                                       ; $4584: $61
    ld h, d                                       ; $4585: $62
    ld bc, HeaderLogo                             ; $4586: $01 $04 $01
    ld bc, $0401                                  ; $4589: $01 $01 $04
    ld bc, $0101                                  ; $458c: $01 $01 $01
    inc b                                         ; $458f: $04
    ld bc, $0101                                  ; $4590: $01 $01 $01
    inc b                                         ; $4593: $04
    ld bc, $5701                                  ; $4594: $01 $01 $57
    ld h, h                                       ; $4597: $64
    ld h, l                                       ; $4598: $65
    ld h, [hl]                                    ; $4599: $66
    ld e, e                                       ; $459a: $5b
    ld l, b                                       ; $459b: $68
    ld l, c                                       ; $459c: $69
    ld l, d                                       ; $459d: $6a
    ld e, a                                       ; $459e: $5f
    ld l, h                                       ; $459f: $6c
    ld l, l                                       ; $45a0: $6d
    ld l, [hl]                                    ; $45a1: $6e
    ld h, e                                       ; $45a2: $63
    ld [hl], b                                    ; $45a3: $70
    ld [hl], c                                    ; $45a4: $71
    ld [hl], d                                    ; $45a5: $72
    ld bc, $0101                                  ; $45a6: $01 $01 $01
    ld bc, $0101                                  ; $45a9: $01 $01 $01
    ld bc, $0101                                  ; $45ac: $01 $01 $01
    ld bc, $0101                                  ; $45af: $01 $01 $01
    ld bc, $0101                                  ; $45b2: $01 $01 $01
    ld bc, $1267                                  ; $45b5: $01 $67 $12
    inc de                                        ; $45b8: $13
    inc d                                         ; $45b9: $14
    ld l, e                                       ; $45ba: $6b
    ld d, $17                                     ; $45bb: $16 $17
    jr jr_07f_462e                                ; $45bd: $18 $6f

    ld a, [de]                                    ; $45bf: $1a
    dec de                                        ; $45c0: $1b
    inc e                                         ; $45c1: $1c
    ld [hl], e                                    ; $45c2: $73
    ld e, $1f                                     ; $45c3: $1e $1f
    jr nz, @+$03                                  ; $45c5: $20 $01

    ld bc, $0101                                  ; $45c7: $01 $01 $01
    ld bc, $0101                                  ; $45ca: $01 $01 $01
    ld bc, $0101                                  ; $45cd: $01 $01 $01
    ld bc, $0101                                  ; $45d0: $01 $01 $01
    ld bc, $0101                                  ; $45d3: $01 $01 $01
    dec hl                                        ; $45d6: $2b
    ld [hl], h                                    ; $45d7: $74
    ld [hl], l                                    ; $45d8: $75
    halt                                          ; $45d9: $76
    cpl                                           ; $45da: $2f
    ld a, b                                       ; $45db: $78
    ld a, c                                       ; $45dc: $79
    ld a, d                                       ; $45dd: $7a
    inc sp                                        ; $45de: $33
    ld a, h                                       ; $45df: $7c
    ld a, l                                       ; $45e0: $7d
    ld a, [hl]                                    ; $45e1: $7e
    scf                                           ; $45e2: $37
    add b                                         ; $45e3: $80

jr_07f_45e4:
    add c                                         ; $45e4: $81
    add d                                         ; $45e5: $82
    ld bc, HeaderLogo                             ; $45e6: $01 $04 $01
    ld bc, $0401                                  ; $45e9: $01 $01 $04
    ld bc, $0101                                  ; $45ec: $01 $01 $01
    ld bc, $0101                                  ; $45ef: $01 $01 $01
    ld bc, $0909                                  ; $45f2: $01 $09 $09
    add hl, bc                                    ; $45f5: $09
    ld [hl], a                                    ; $45f6: $77
    add h                                         ; $45f7: $84
    add l                                         ; $45f8: $85
    add [hl]                                      ; $45f9: $86
    ld a, e                                       ; $45fa: $7b
    adc b                                         ; $45fb: $88
    adc c                                         ; $45fc: $89
    adc d                                         ; $45fd: $8a
    ld a, a                                       ; $45fe: $7f
    adc h                                         ; $45ff: $8c
    adc l                                         ; $4600: $8d
    adc [hl]                                      ; $4601: $8e
    add e                                         ; $4602: $83
    sub b                                         ; $4603: $90
    sub c                                         ; $4604: $91
    sub d                                         ; $4605: $92
    ld bc, $0909                                  ; $4606: $01 $09 $09
    add hl, bc                                    ; $4609: $09
    ld bc, $0909                                  ; $460a: $01 $09 $09
    add hl, bc                                    ; $460d: $09
    ld bc, $0909                                  ; $460e: $01 $09 $09
    add hl, bc                                    ; $4611: $09
    add hl, bc                                    ; $4612: $09
    add hl, bc                                    ; $4613: $09
    add hl, bc                                    ; $4614: $09
    add hl, bc                                    ; $4615: $09
    add a                                         ; $4616: $87
    add hl, hl                                    ; $4617: $29
    ld a, [hl+]                                   ; $4618: $2a
    dec hl                                        ; $4619: $2b
    adc e                                         ; $461a: $8b
    dec l                                         ; $461b: $2d
    ld l, $2f                                     ; $461c: $2e $2f
    adc a                                         ; $461e: $8f
    ld sp, $3332                                  ; $461f: $31 $32 $33
    sub e                                         ; $4622: $93
    dec [hl]                                      ; $4623: $35
    ld [hl], $37                                  ; $4624: $36 $37
    add hl, bc                                    ; $4626: $09
    ld bc, $0101                                  ; $4627: $01 $01 $01
    add hl, bc                                    ; $462a: $09
    ld bc, $0101                                  ; $462b: $01 $01 $01

jr_07f_462e:
    add hl, bc                                    ; $462e: $09
    ld bc, $0101                                  ; $462f: $01 $01 $01
    add hl, bc                                    ; $4632: $09
    ld bc, $0101                                  ; $4633: $01 $01 $01
    pop de                                        ; $4636: $d1
    pop de                                        ; $4637: $d1
    pop de                                        ; $4638: $d1
    pop de                                        ; $4639: $d1
    pop de                                        ; $463a: $d1
    pop de                                        ; $463b: $d1
    pop de                                        ; $463c: $d1
    pop de                                        ; $463d: $d1
    pop de                                        ; $463e: $d1
    pop de                                        ; $463f: $d1
    pop de                                        ; $4640: $d1
    pop de                                        ; $4641: $d1
    pop de                                        ; $4642: $d1
    pop de                                        ; $4643: $d1
    pop de                                        ; $4644: $d1

Jump_07f_4645:
    pop de                                        ; $4645: $d1
    add e                                         ; $4646: $83
    add e                                         ; $4647: $83
    add e                                         ; $4648: $83
    add e                                         ; $4649: $83
    add e                                         ; $464a: $83
    add e                                         ; $464b: $83
    add e                                         ; $464c: $83
    add e                                         ; $464d: $83
    add e                                         ; $464e: $83
    add e                                         ; $464f: $83
    add e                                         ; $4650: $83
    add e                                         ; $4651: $83
    add e                                         ; $4652: $83
    add h                                         ; $4653: $84
    add e                                         ; $4654: $83
    add e                                         ; $4655: $83
    ld b, [hl]                                    ; $4656: $46
    ld b, a                                       ; $4657: $47
    ld c, b                                       ; $4658: $48
    pop de                                        ; $4659: $d1
    ld c, c                                       ; $465a: $49
    ld c, d                                       ; $465b: $4a
    ld c, e                                       ; $465c: $4b
    pop de                                        ; $465d: $d1
    ld c, h                                       ; $465e: $4c
    ld c, l                                       ; $465f: $4d
    ld c, [hl]                                    ; $4660: $4e
    ld c, a                                       ; $4661: $4f
    ld d, b                                       ; $4662: $50
    ld d, c                                       ; $4663: $51
    ld d, d                                       ; $4664: $52
    ld d, e                                       ; $4665: $53
    ld bc, $0401                                  ; $4666: $01 $01 $04
    ld bc, $0101                                  ; $4669: $01 $01 $01
    inc b                                         ; $466c: $04
    ld bc, $0101                                  ; $466d: $01 $01 $01
    inc b                                         ; $4670: $04
    ld bc, $0101                                  ; $4671: $01 $01 $01
    inc b                                         ; $4674: $04
    ld bc, $00ff                                  ; $4675: $01 $ff $00
    ld bc, $0238                                  ; $4678: $01 $38 $02
    inc bc                                        ; $467b: $03
    inc b                                         ; $467c: $04
    ld a, [hl-]                                   ; $467d: $3a
    dec b                                         ; $467e: $05
    ld b, $d1                                     ; $467f: $06 $d1
    ld a, $08                                     ; $4681: $3e $08
    add hl, bc                                    ; $4683: $09
    ld a, [bc]                                    ; $4684: $0a
    ld b, d                                       ; $4685: $42
    ld bc, $0101                                  ; $4686: $01 $01 $01
    ld bc, $0101                                  ; $4689: $01 $01 $01
    ld bc, $0101                                  ; $468c: $01 $01 $01
    ld bc, $0101                                  ; $468f: $01 $01 $01
    ld bc, $0101                                  ; $4692: $01 $01 $01
    ld bc, $39d1                                  ; $4695: $01 $d1 $39
    pop de                                        ; $4698: $d1
    ld b, [hl]                                    ; $4699: $46
    dec sp                                        ; $469a: $3b
    inc a                                         ; $469b: $3c
    dec a                                         ; $469c: $3d
    ld c, c                                       ; $469d: $49
    ccf                                           ; $469e: $3f
    ld b, b                                       ; $469f: $40
    ld b, c                                       ; $46a0: $41
    ld c, h                                       ; $46a1: $4c
    ld b, e                                       ; $46a2: $43
    ld b, h                                       ; $46a3: $44
    ld b, l                                       ; $46a4: $45
    ld d, b                                       ; $46a5: $50
    ld bc, $0404                                  ; $46a6: $01 $04 $04
    ld bc, $0401                                  ; $46a9: $01 $01 $04
    inc b                                         ; $46ac: $04
    ld bc, $0401                                  ; $46ad: $01 $01 $04
    inc b                                         ; $46b0: $04
    ld bc, $0401                                  ; $46b1: $01 $01 $04
    inc b                                         ; $46b4: $04
    ld bc, $6564                                  ; $46b5: $01 $64 $65
    ld h, [hl]                                    ; $46b8: $66
    ld h, a                                       ; $46b9: $67
    ld l, b                                       ; $46ba: $68
    ld l, c                                       ; $46bb: $69
    ld l, d                                       ; $46bc: $6a
    ld l, e                                       ; $46bd: $6b
    ld l, h                                       ; $46be: $6c
    ld l, l                                       ; $46bf: $6d
    ld l, [hl]                                    ; $46c0: $6e
    ld l, a                                       ; $46c1: $6f
    ld [hl], b                                    ; $46c2: $70
    ld [hl], c                                    ; $46c3: $71
    ld [hl], d                                    ; $46c4: $72
    ld [hl], e                                    ; $46c5: $73
    ld bc, $0401                                  ; $46c6: $01 $01 $04
    ld bc, $0101                                  ; $46c9: $01 $01 $01
    inc b                                         ; $46cc: $04
    ld bc, $0101                                  ; $46cd: $01 $01 $01
    inc b                                         ; $46d0: $04
    ld bc, $0101                                  ; $46d1: $01 $01 $01
    inc b                                         ; $46d4: $04
    ld bc, $1312                                  ; $46d5: $01 $12 $13
    inc d                                         ; $46d8: $14
    ld d, h                                       ; $46d9: $54
    ld d, $17                                     ; $46da: $16 $17
    jr jr_07f_4736                                ; $46dc: $18 $58

    ld a, [de]                                    ; $46de: $1a
    dec de                                        ; $46df: $1b
    inc e                                         ; $46e0: $1c
    ld e, h                                       ; $46e1: $5c
    ld e, $1f                                     ; $46e2: $1e $1f
    jr nz, jr_07f_4746                            ; $46e4: $20 $60

    ld bc, $0101                                  ; $46e6: $01 $01 $01
    ld bc, $0101                                  ; $46e9: $01 $01 $01
    ld bc, $0101                                  ; $46ec: $01 $01 $01
    ld bc, $0101                                  ; $46ef: $01 $01 $01
    ld bc, $0101                                  ; $46f2: $01 $01 $01
    ld bc, $5655                                  ; $46f5: $01 $55 $56
    ld d, a                                       ; $46f8: $57
    ld h, h                                       ; $46f9: $64
    ld e, c                                       ; $46fa: $59
    ld e, d                                       ; $46fb: $5a
    ld e, e                                       ; $46fc: $5b
    ld l, b                                       ; $46fd: $68
    ld e, l                                       ; $46fe: $5d
    ld e, [hl]                                    ; $46ff: $5e
    ld e, a                                       ; $4700: $5f
    ld l, h                                       ; $4701: $6c
    ld h, c                                       ; $4702: $61
    ld h, d                                       ; $4703: $62
    ld h, e                                       ; $4704: $63
    ld [hl], b                                    ; $4705: $70
    ld bc, $0404                                  ; $4706: $01 $04 $04
    ld bc, $0401                                  ; $4709: $01 $01 $04
    ld bc, $0101                                  ; $470c: $01 $01 $01
    inc b                                         ; $470f: $04
    ld bc, $0101                                  ; $4710: $01 $01 $01
    inc b                                         ; $4713: $04
    ld bc, $8401                                  ; $4714: $01 $01 $84
    add l                                         ; $4717: $85
    add [hl]                                      ; $4718: $86
    add a                                         ; $4719: $87
    adc b                                         ; $471a: $88
    adc c                                         ; $471b: $89
    adc d                                         ; $471c: $8a
    adc e                                         ; $471d: $8b
    adc h                                         ; $471e: $8c
    adc l                                         ; $471f: $8d
    adc [hl]                                      ; $4720: $8e
    adc a                                         ; $4721: $8f
    sub b                                         ; $4722: $90
    sub c                                         ; $4723: $91
    sub d                                         ; $4724: $92
    sub e                                         ; $4725: $93
    add hl, bc                                    ; $4726: $09
    add hl, bc                                    ; $4727: $09
    inc c                                         ; $4728: $0c
    add hl, bc                                    ; $4729: $09
    add hl, bc                                    ; $472a: $09
    add hl, bc                                    ; $472b: $09
    inc c                                         ; $472c: $0c
    add hl, bc                                    ; $472d: $09
    add hl, bc                                    ; $472e: $09
    add hl, bc                                    ; $472f: $09
    inc c                                         ; $4730: $0c
    add hl, bc                                    ; $4731: $09
    add hl, bc                                    ; $4732: $09
    add hl, bc                                    ; $4733: $09
    add hl, bc                                    ; $4734: $09
    add hl, bc                                    ; $4735: $09

jr_07f_4736:
    add hl, hl                                    ; $4736: $29
    ld a, [hl+]                                   ; $4737: $2a
    dec hl                                        ; $4738: $2b
    ld [hl], h                                    ; $4739: $74
    dec l                                         ; $473a: $2d
    ld l, $2f                                     ; $473b: $2e $2f
    ld a, b                                       ; $473d: $78
    ld sp, $3332                                  ; $473e: $31 $32 $33
    ld a, h                                       ; $4741: $7c
    dec [hl]                                      ; $4742: $35
    ld [hl], $37                                  ; $4743: $36 $37
    add b                                         ; $4745: $80

jr_07f_4746:
    ld bc, $0101                                  ; $4746: $01 $01 $01
    ld bc, $0101                                  ; $4749: $01 $01 $01
    ld bc, $0101                                  ; $474c: $01 $01 $01
    ld bc, $0101                                  ; $474f: $01 $01 $01
    ld bc, $0101                                  ; $4752: $01 $01 $01
    add hl, bc                                    ; $4755: $09
    ld [hl], l                                    ; $4756: $75
    halt                                          ; $4757: $76
    ld [hl], a                                    ; $4758: $77
    add h                                         ; $4759: $84
    ld a, c                                       ; $475a: $79
    ld a, d                                       ; $475b: $7a
    ld a, e                                       ; $475c: $7b
    adc b                                         ; $475d: $88
    ld a, l                                       ; $475e: $7d
    ld a, [hl]                                    ; $475f: $7e
    ld a, a                                       ; $4760: $7f
    adc h                                         ; $4761: $8c
    add c                                         ; $4762: $81
    add d                                         ; $4763: $82
    add e                                         ; $4764: $83
    sub b                                         ; $4765: $90
    ld bc, HeaderLogo                             ; $4766: $01 $04 $01
    add hl, bc                                    ; $4769: $09
    ld bc, HeaderLogo                             ; $476a: $01 $04 $01
    add hl, bc                                    ; $476d: $09
    ld bc, HeaderLogo                             ; $476e: $01 $04 $01
    add hl, bc                                    ; $4771: $09
    add hl, bc                                    ; $4772: $09
    add hl, bc                                    ; $4773: $09
    add hl, bc                                    ; $4774: $09
    add hl, bc                                    ; $4775: $09
    pop de                                        ; $4776: $d1
    pop de                                        ; $4777: $d1
    pop de                                        ; $4778: $d1
    pop de                                        ; $4779: $d1
    pop de                                        ; $477a: $d1
    pop de                                        ; $477b: $d1
    pop de                                        ; $477c: $d1
    pop de                                        ; $477d: $d1
    pop de                                        ; $477e: $d1
    pop de                                        ; $477f: $d1
    pop de                                        ; $4780: $d1
    pop de                                        ; $4781: $d1
    pop de                                        ; $4782: $d1
    pop de                                        ; $4783: $d1
    pop de                                        ; $4784: $d1
    pop de                                        ; $4785: $d1
    inc bc                                        ; $4786: $03
    inc bc                                        ; $4787: $03
    inc bc                                        ; $4788: $03
    ld b, $03                                     ; $4789: $06 $03
    inc bc                                        ; $478b: $03
    inc bc                                        ; $478c: $03
    ld b, $03                                     ; $478d: $06 $03
    inc bc                                        ; $478f: $03
    inc bc                                        ; $4790: $03
    inc bc                                        ; $4791: $03
    inc bc                                        ; $4792: $03
    inc bc                                        ; $4793: $03
    inc bc                                        ; $4794: $03
    inc bc                                        ; $4795: $03
    jp nc, $0cd3                                  ; $4796: $d2 $d3 $0c

    xor $d6                                       ; $4799: $ee $d6
    rst $10                                       ; $479b: $d7
    dec c                                         ; $479c: $0d
    dec bc                                        ; $479d: $0b
    jp c, $d4db                                   ; $479e: $da $db $d4

    push af                                       ; $47a1: $f5
    sbc $df                                       ; $47a2: $de $df
    ret c                                         ; $47a4: $d8

    reti                                          ; $47a5: $d9


    add [hl]                                      ; $47a6: $86
    add e                                         ; $47a7: $83
    ld [bc], a                                    ; $47a8: $02
    dec b                                         ; $47a9: $05
    and [hl]                                      ; $47aa: $a6
    and e                                         ; $47ab: $a3
    ld [bc], a                                    ; $47ac: $02
    dec b                                         ; $47ad: $05
    add [hl]                                      ; $47ae: $86
    add e                                         ; $47af: $83
    ld [bc], a                                    ; $47b0: $02
    dec b                                         ; $47b1: $05
    add e                                         ; $47b2: $83
    add e                                         ; $47b3: $83
    ld [bc], a                                    ; $47b4: $02
    dec b                                         ; $47b5: $05
    ld sp, hl                                     ; $47b6: $f9
    ld a, [$9594]                                 ; $47b7: $fa $94 $95
    ei                                            ; $47ba: $fb
    sub [hl]                                      ; $47bb: $96
    db $fc                                        ; $47bc: $fc
    sub a                                         ; $47bd: $97
    pop hl                                        ; $47be: $e1
    ld [c], a                                     ; $47bf: $e2
    push de                                       ; $47c0: $d5
    dec h                                         ; $47c1: $25
    db $e4                                        ; $47c2: $e4
    ret c                                         ; $47c3: $d8

    and $fd                                       ; $47c4: $e6 $fd
    dec b                                         ; $47c6: $05
    ld [bc], a                                    ; $47c7: $02
    dec c                                         ; $47c8: $0d
    ld a, [bc]                                    ; $47c9: $0a
    dec b                                         ; $47ca: $05
    dec c                                         ; $47cb: $0d
    ld [bc], a                                    ; $47cc: $02
    ld a, [bc]                                    ; $47cd: $0a
    ld [bc], a                                    ; $47ce: $02
    ld [bc], a                                    ; $47cf: $02
    ld [bc], a                                    ; $47d0: $02
    dec b                                         ; $47d1: $05
    ld [bc], a                                    ; $47d2: $02
    ld [bc], a                                    ; $47d3: $02
    dec b                                         ; $47d4: $05
    dec b                                         ; $47d5: $05
    sbc b                                         ; $47d6: $98
    sbc c                                         ; $47d7: $99
    sbc d                                         ; $47d8: $9a
    sbc e                                         ; $47d9: $9b
    dec c                                         ; $47da: $0d
    pop af                                        ; $47db: $f1
    ei                                            ; $47dc: $fb
    sub [hl]                                      ; $47dd: $96
    db $f4                                        ; $47de: $f4
    push af                                       ; $47df: $f5
    inc h                                         ; $47e0: $24
    ld [c], a                                     ; $47e1: $e2
    ld hl, sp+$21                                 ; $47e2: $f8 $21
    db $e4                                        ; $47e4: $e4
    push hl                                       ; $47e5: $e5
    ld a, [bc]                                    ; $47e6: $0a
    ld a, [bc]                                    ; $47e7: $0a
    ld a, [bc]                                    ; $47e8: $0a
    ld a, [bc]                                    ; $47e9: $0a
    ld [bc], a                                    ; $47ea: $02
    dec b                                         ; $47eb: $05
    dec b                                         ; $47ec: $05
    ld a, [bc]                                    ; $47ed: $0a
    dec b                                         ; $47ee: $05
    dec b                                         ; $47ef: $05
    ld [bc], a                                    ; $47f0: $02
    dec b                                         ; $47f1: $05
    ld [bc], a                                    ; $47f2: $02
    ld [bc], a                                    ; $47f3: $02
    ld [bc], a                                    ; $47f4: $02
    ld [bc], a                                    ; $47f5: $02
    pop de                                        ; $47f6: $d1
    pop de                                        ; $47f7: $d1
    pop de                                        ; $47f8: $d1
    pop de                                        ; $47f9: $d1
    pop de                                        ; $47fa: $d1
    pop de                                        ; $47fb: $d1
    sbc h                                         ; $47fc: $9c
    sbc l                                         ; $47fd: $9d
    pop de                                        ; $47fe: $d1
    pop de                                        ; $47ff: $d1
    pop de                                        ; $4800: $d1
    pop de                                        ; $4801: $d1
    pop de                                        ; $4802: $d1
    pop de                                        ; $4803: $d1
    pop de                                        ; $4804: $d1
    pop de                                        ; $4805: $d1
    inc bc                                        ; $4806: $03
    inc bc                                        ; $4807: $03
    inc bc                                        ; $4808: $03
    inc bc                                        ; $4809: $03
    inc bc                                        ; $480a: $03
    inc bc                                        ; $480b: $03
    dec bc                                        ; $480c: $0b
    dec bc                                        ; $480d: $0b
    inc bc                                        ; $480e: $03
    inc bc                                        ; $480f: $03
    inc bc                                        ; $4810: $03
    inc bc                                        ; $4811: $03
    inc bc                                        ; $4812: $03
    inc bc                                        ; $4813: $03
    inc bc                                        ; $4814: $03
    inc bc                                        ; $4815: $03
    db $ec                                        ; $4816: $ec
    db $ed                                        ; $4817: $ed
    call c, $9e0b                                 ; $4818: $dc $0b $9e
    sbc a                                         ; $481b: $9f
    and b                                         ; $481c: $a0
    and c                                         ; $481d: $a1
    and d                                         ; $481e: $a2
    and e                                         ; $481f: $a3
    and h                                         ; $4820: $a4
    and l                                         ; $4821: $a5
    and [hl]                                      ; $4822: $a6
    and a                                         ; $4823: $a7
    xor b                                         ; $4824: $a8
    xor c                                         ; $4825: $a9
    add e                                         ; $4826: $83
    add e                                         ; $4827: $83
    ld [bc], a                                    ; $4828: $02
    ld [bc], a                                    ; $4829: $02
    adc e                                         ; $482a: $8b
    adc e                                         ; $482b: $8b
    adc e                                         ; $482c: $8b
    adc e                                         ; $482d: $8b
    adc [hl]                                      ; $482e: $8e
    adc e                                         ; $482f: $8b
    adc e                                         ; $4830: $8b
    adc e                                         ; $4831: $8b
    adc [hl]                                      ; $4832: $8e
    adc [hl]                                      ; $4833: $8e
    adc [hl]                                      ; $4834: $8e
    adc [hl]                                      ; $4835: $8e
    ld de, $0bdc                                  ; $4836: $11 $dc $0b
    ld h, $aa                                     ; $4839: $26 $aa
    xor e                                         ; $483b: $ab
    xor h                                         ; $483c: $ac
    xor l                                         ; $483d: $ad
    xor [hl]                                      ; $483e: $ae
    xor a                                         ; $483f: $af
    or b                                          ; $4840: $b0
    or c                                          ; $4841: $b1
    or d                                          ; $4842: $b2
    or e                                          ; $4843: $b3
    or h                                          ; $4844: $b4
    or l                                          ; $4845: $b5
    ld [bc], a                                    ; $4846: $02
    dec b                                         ; $4847: $05
    dec b                                         ; $4848: $05
    dec b                                         ; $4849: $05
    adc e                                         ; $484a: $8b
    adc e                                         ; $484b: $8b
    adc e                                         ; $484c: $8b
    adc e                                         ; $484d: $8b
    adc [hl]                                      ; $484e: $8e
    adc [hl]                                      ; $484f: $8e
    adc e                                         ; $4850: $8b
    adc e                                         ; $4851: $8b
    adc [hl]                                      ; $4852: $8e
    adc [hl]                                      ; $4853: $8e
    adc [hl]                                      ; $4854: $8e
    adc [hl]                                      ; $4855: $8e
    call c, $11dd                                 ; $4856: $dc $dd $11
    add sp, -$4a                                  ; $4859: $e8 $b6
    or a                                          ; $485b: $b7
    cp b                                          ; $485c: $b8
    sbc a                                         ; $485d: $9f
    cp c                                          ; $485e: $b9
    cp d                                          ; $485f: $ba
    cp e                                          ; $4860: $bb
    cp h                                          ; $4861: $bc
    cp l                                          ; $4862: $bd
    cp [hl]                                       ; $4863: $be
    cp a                                          ; $4864: $bf
    ret nz                                        ; $4865: $c0

    ld [bc], a                                    ; $4866: $02
    ld [bc], a                                    ; $4867: $02
    ld [bc], a                                    ; $4868: $02
    dec b                                         ; $4869: $05
    adc e                                         ; $486a: $8b
    adc e                                         ; $486b: $8b
    adc e                                         ; $486c: $8b
    adc e                                         ; $486d: $8b
    adc e                                         ; $486e: $8b
    adc [hl]                                      ; $486f: $8e
    adc [hl]                                      ; $4870: $8e
    adc [hl]                                      ; $4871: $8e
    adc [hl]                                      ; $4872: $8e
    adc [hl]                                      ; $4873: $8e
    adc [hl]                                      ; $4874: $8e
    adc e                                         ; $4875: $8b
    pop de                                        ; $4876: $d1
    pop de                                        ; $4877: $d1
    pop bc                                        ; $4878: $c1
    jp nz, $d1d1                                  ; $4879: $c2 $d1 $d1

    pop de                                        ; $487c: $d1
    pop de                                        ; $487d: $d1
    pop de                                        ; $487e: $d1
    pop de                                        ; $487f: $d1
    pop de                                        ; $4880: $d1
    pop de                                        ; $4881: $d1
    pop de                                        ; $4882: $d1
    pop de                                        ; $4883: $d1
    pop de                                        ; $4884: $d1
    pop de                                        ; $4885: $d1
    inc bc                                        ; $4886: $03
    inc bc                                        ; $4887: $03
    dec bc                                        ; $4888: $0b
    dec bc                                        ; $4889: $0b
    inc bc                                        ; $488a: $03
    inc bc                                        ; $488b: $03
    inc bc                                        ; $488c: $03
    ld b, $03                                     ; $488d: $06 $03
    inc bc                                        ; $488f: $03
    inc bc                                        ; $4890: $03
    ld b, $03                                     ; $4891: $06 $03
    inc bc                                        ; $4893: $03
    inc bc                                        ; $4894: $03
    inc bc                                        ; $4895: $03
    jp $c5c4                                      ; $4896: $c3 $c4 $c5


    add $c7                                       ; $4899: $c6 $c7
    ret z                                         ; $489b: $c8

    ret                                           ; $489c: $c9


    jp z, $cccb                                   ; $489d: $ca $cb $cc

    call $cfce                                    ; $48a0: $cd $ce $cf
    ret nc                                        ; $48a3: $d0

    pop de                                        ; $48a4: $d1
    jp nc, $8b8e                                  ; $48a5: $d2 $8e $8b

    adc [hl]                                      ; $48a8: $8e
    adc [hl]                                      ; $48a9: $8e
    adc [hl]                                      ; $48aa: $8e
    adc [hl]                                      ; $48ab: $8e
    adc [hl]                                      ; $48ac: $8e
    adc [hl]                                      ; $48ad: $8e
    adc e                                         ; $48ae: $8b
    adc e                                         ; $48af: $8b
    adc e                                         ; $48b0: $8b
    adc [hl]                                      ; $48b1: $8e
    adc [hl]                                      ; $48b2: $8e
    adc e                                         ; $48b3: $8b
    adc [hl]                                      ; $48b4: $8e
    adc e                                         ; $48b5: $8b
    db $d3                                        ; $48b6: $d3
    call nc, $d6d5                                ; $48b7: $d4 $d5 $d6
    rst $10                                       ; $48ba: $d7
    ret c                                         ; $48bb: $d8

    reti                                          ; $48bc: $d9


    jp c, $dcdb                                   ; $48bd: $da $db $dc

    db $dd                                        ; $48c0: $dd
    sbc $df                                       ; $48c1: $de $df
    ldh [$e1], a                                  ; $48c3: $e0 $e1
    ld [c], a                                     ; $48c5: $e2
    adc [hl]                                      ; $48c6: $8e
    adc [hl]                                      ; $48c7: $8e
    adc e                                         ; $48c8: $8b
    adc [hl]                                      ; $48c9: $8e
    adc [hl]                                      ; $48ca: $8e
    adc e                                         ; $48cb: $8b
    adc e                                         ; $48cc: $8b
    adc [hl]                                      ; $48cd: $8e
    adc [hl]                                      ; $48ce: $8e
    adc [hl]                                      ; $48cf: $8e
    adc [hl]                                      ; $48d0: $8e
    adc [hl]                                      ; $48d1: $8e
    adc e                                         ; $48d2: $8b
    adc [hl]                                      ; $48d3: $8e
    adc e                                         ; $48d4: $8b
    adc e                                         ; $48d5: $8b
    db $e3                                        ; $48d6: $e3
    db $e4                                        ; $48d7: $e4
    push hl                                       ; $48d8: $e5
    and $e7                                       ; $48d9: $e6 $e7
    add sp, -$17                                  ; $48db: $e8 $e9
    ld [$eceb], a                                 ; $48dd: $ea $eb $ec
    db $ed                                        ; $48e0: $ed
    xor $ef                                       ; $48e1: $ee $ef
    ldh a, [$f1]                                  ; $48e3: $f0 $f1
    ret nc                                        ; $48e5: $d0

    adc e                                         ; $48e6: $8b
    adc [hl]                                      ; $48e7: $8e
    adc [hl]                                      ; $48e8: $8e
    adc e                                         ; $48e9: $8b
    adc e                                         ; $48ea: $8b
    adc e                                         ; $48eb: $8b
    adc e                                         ; $48ec: $8b
    adc e                                         ; $48ed: $8b
    adc e                                         ; $48ee: $8b
    adc e                                         ; $48ef: $8b
    adc e                                         ; $48f0: $8b
    adc [hl]                                      ; $48f1: $8e
    adc e                                         ; $48f2: $8b
    adc e                                         ; $48f3: $8b
    adc [hl]                                      ; $48f4: $8e
    adc [hl]                                      ; $48f5: $8e
    ld a, [c]                                     ; $48f6: $f2
    di                                            ; $48f7: $f3
    db $f4                                        ; $48f8: $f4
    push af                                       ; $48f9: $f5
    or $f7                                        ; $48fa: $f6 $f7
    ld hl, sp-$07                                 ; $48fc: $f8 $f9
    pop de                                        ; $48fe: $d1
    pop de                                        ; $48ff: $d1
    pop de                                        ; $4900: $d1
    pop de                                        ; $4901: $d1
    pop de                                        ; $4902: $d1
    pop de                                        ; $4903: $d1
    pop de                                        ; $4904: $d1
    pop de                                        ; $4905: $d1
    adc e                                         ; $4906: $8b
    adc [hl]                                      ; $4907: $8e
    adc [hl]                                      ; $4908: $8e
    adc [hl]                                      ; $4909: $8e
    adc e                                         ; $490a: $8b
    adc e                                         ; $490b: $8b
    adc e                                         ; $490c: $8b
    adc e                                         ; $490d: $8b
    inc bc                                        ; $490e: $03
    inc bc                                        ; $490f: $03
    inc bc                                        ; $4910: $03
    inc bc                                        ; $4911: $03
    inc bc                                        ; $4912: $03
    inc bc                                        ; $4913: $03
    inc bc                                        ; $4914: $03
    inc bc                                        ; $4915: $03
    ld a, [$fcfb]                                 ; $4916: $fa $fb $fc
    db $fd                                        ; $4919: $fd
    pop de                                        ; $491a: $d1
    cp $d1                                        ; $491b: $fe $d1
    ld [bc], a                                    ; $491d: $02
    pop de                                        ; $491e: $d1
    pop de                                        ; $491f: $d1
    pop de                                        ; $4920: $d1
    pop de                                        ; $4921: $d1
    pop de                                        ; $4922: $d1
    pop de                                        ; $4923: $d1
    pop de                                        ; $4924: $d1
    pop de                                        ; $4925: $d1
    adc [hl]                                      ; $4926: $8e
    adc e                                         ; $4927: $8b
    adc e                                         ; $4928: $8b
    adc e                                         ; $4929: $8b
    add e                                         ; $492a: $83
    adc [hl]                                      ; $492b: $8e
    add e                                         ; $492c: $83
    add [hl]                                      ; $492d: $86
    inc bc                                        ; $492e: $03
    inc bc                                        ; $492f: $03
    inc bc                                        ; $4930: $03
    inc bc                                        ; $4931: $03
    inc bc                                        ; $4932: $03
    inc bc                                        ; $4933: $03
    inc bc                                        ; $4934: $03
    inc bc                                        ; $4935: $03
    rst $38                                       ; $4936: $ff
    nop                                           ; $4937: $00
    ld bc, $d1f3                                  ; $4938: $01 $f3 $d1
    ld [bc], a                                    ; $493b: $02
    or $f7                                        ; $493c: $f6 $f7
    pop de                                        ; $493e: $d1
    pop de                                        ; $493f: $d1
    pop de                                        ; $4940: $d1
    pop de                                        ; $4941: $d1
    pop de                                        ; $4942: $d1
    pop de                                        ; $4943: $d1
    pop de                                        ; $4944: $d1
    pop de                                        ; $4945: $d1
    adc e                                         ; $4946: $8b
    adc [hl]                                      ; $4947: $8e
    adc [hl]                                      ; $4948: $8e
    adc e                                         ; $4949: $8b
    add e                                         ; $494a: $83
    adc e                                         ; $494b: $8b
    adc e                                         ; $494c: $8b
    adc e                                         ; $494d: $8b
    inc bc                                        ; $494e: $03
    inc bc                                        ; $494f: $03
    inc bc                                        ; $4950: $03
    inc bc                                        ; $4951: $03
    inc bc                                        ; $4952: $03
    inc bc                                        ; $4953: $03
    inc bc                                        ; $4954: $03
    inc bc                                        ; $4955: $03
    inc bc                                        ; $4956: $03
    inc b                                         ; $4957: $04
    dec b                                         ; $4958: $05
    sbc c                                         ; $4959: $99
    db $fc                                        ; $495a: $fc
    sub a                                         ; $495b: $97
    dec c                                         ; $495c: $0d
    pop af                                        ; $495d: $f1
    db $e3                                        ; $495e: $e3
    dec h                                         ; $495f: $25
    db $f4                                        ; $4960: $f4
    push af                                       ; $4961: $f5
    and $06                                       ; $4962: $e6 $06
    ld hl, sp+$21                                 ; $4964: $f8 $21
    ld a, [bc]                                    ; $4966: $0a
    ld a, [bc]                                    ; $4967: $0a
    ld a, [bc]                                    ; $4968: $0a
    ld a, [bc]                                    ; $4969: $0a
    ld [bc], a                                    ; $496a: $02
    dec c                                         ; $496b: $0d
    dec b                                         ; $496c: $05
    ld [bc], a                                    ; $496d: $02
    dec b                                         ; $496e: $05
    dec b                                         ; $496f: $05
    dec b                                         ; $4970: $05
    dec b                                         ; $4971: $05
    ld [bc], a                                    ; $4972: $02
    ld a, [bc]                                    ; $4973: $0a
    ld [bc], a                                    ; $4974: $02
    ld [bc], a                                    ; $4975: $02
    sbc d                                         ; $4976: $9a
    sbc e                                         ; $4977: $9b
    inc bc                                        ; $4978: $03
    inc b                                         ; $4979: $04
    ei                                            ; $497a: $fb
    sub [hl]                                      ; $497b: $96
    db $fc                                        ; $497c: $fc
    ld de, $e224                                  ; $497d: $11 $24 $e2
    push de                                       ; $4980: $d5
    dec h                                         ; $4981: $25
    db $e4                                        ; $4982: $e4
    push hl                                       ; $4983: $e5
    and $06                                       ; $4984: $e6 $06
    ld a, [bc]                                    ; $4986: $0a
    ld a, [bc]                                    ; $4987: $0a
    ld a, [bc]                                    ; $4988: $0a
    ld a, [bc]                                    ; $4989: $0a
    ld [bc], a                                    ; $498a: $02
    ld a, [bc]                                    ; $498b: $0a
    ld [bc], a                                    ; $498c: $02
    ld [bc], a                                    ; $498d: $02
    dec b                                         ; $498e: $05
    dec b                                         ; $498f: $05
    dec b                                         ; $4990: $05
    ld [bc], a                                    ; $4991: $02
    dec b                                         ; $4992: $05
    ld [bc], a                                    ; $4993: $02
    dec b                                         ; $4994: $05
    ld a, [bc]                                    ; $4995: $0a
    dec b                                         ; $4996: $05
    sbc c                                         ; $4997: $99
    sbc d                                         ; $4998: $9a
    sbc e                                         ; $4999: $9b
    rlca                                          ; $499a: $07
    ld [$9fb8], sp                                ; $499b: $08 $b8 $9f
    call nc, $bbd5                                ; $499e: $d4 $d5 $bb
    cp h                                          ; $49a1: $bc
    ld hl, sp-$27                                 ; $49a2: $f8 $d9
    cp a                                          ; $49a4: $bf
    ret nz                                        ; $49a5: $c0

    ld a, [bc]                                    ; $49a6: $0a
    ld a, [bc]                                    ; $49a7: $0a
    ld a, [bc]                                    ; $49a8: $0a
    ld a, [bc]                                    ; $49a9: $0a
    adc e                                         ; $49aa: $8b
    adc e                                         ; $49ab: $8b
    adc e                                         ; $49ac: $8b
    adc e                                         ; $49ad: $8b
    ld [bc], a                                    ; $49ae: $02
    ld [bc], a                                    ; $49af: $02
    adc e                                         ; $49b0: $8b
    adc e                                         ; $49b1: $8b
    ld [bc], a                                    ; $49b2: $02
    ld [bc], a                                    ; $49b3: $02
    adc e                                         ; $49b4: $8b
    adc e                                         ; $49b5: $8b
    inc bc                                        ; $49b6: $03
    inc b                                         ; $49b7: $04
    dec b                                         ; $49b8: $05
    sbc c                                         ; $49b9: $99
    and b                                         ; $49ba: $a0
    and c                                         ; $49bb: $a1
    xor d                                         ; $49bc: $aa
    xor e                                         ; $49bd: $ab
    and h                                         ; $49be: $a4
    and l                                         ; $49bf: $a5
    xor [hl]                                      ; $49c0: $ae
    xor a                                         ; $49c1: $af
    xor b                                         ; $49c2: $a8
    xor c                                         ; $49c3: $a9
    or d                                          ; $49c4: $b2
    or e                                          ; $49c5: $b3
    ld a, [bc]                                    ; $49c6: $0a
    ld a, [bc]                                    ; $49c7: $0a
    ld a, [bc]                                    ; $49c8: $0a
    ld a, [bc]                                    ; $49c9: $0a
    adc e                                         ; $49ca: $8b
    adc e                                         ; $49cb: $8b
    adc e                                         ; $49cc: $8b
    adc [hl]                                      ; $49cd: $8e
    adc e                                         ; $49ce: $8b
    adc e                                         ; $49cf: $8b
    adc [hl]                                      ; $49d0: $8e
    adc [hl]                                      ; $49d1: $8e
    adc e                                         ; $49d2: $8b
    adc [hl]                                      ; $49d3: $8e
    adc e                                         ; $49d4: $8b
    adc [hl]                                      ; $49d5: $8e
    jp hl                                         ; $49d6: $e9


    ld de, $0bdc                                  ; $49d7: $11 $dc $0b
    and b                                         ; $49da: $a0
    and c                                         ; $49db: $a1
    xor d                                         ; $49dc: $aa
    xor e                                         ; $49dd: $ab
    and h                                         ; $49de: $a4
    and l                                         ; $49df: $a5
    xor [hl]                                      ; $49e0: $ae
    xor a                                         ; $49e1: $af
    xor b                                         ; $49e2: $a8
    xor c                                         ; $49e3: $a9
    or d                                          ; $49e4: $b2
    or e                                          ; $49e5: $b3
    ld [bc], a                                    ; $49e6: $02
    ld [bc], a                                    ; $49e7: $02
    ld [bc], a                                    ; $49e8: $02
    dec b                                         ; $49e9: $05
    adc [hl]                                      ; $49ea: $8e
    adc e                                         ; $49eb: $8b
    adc e                                         ; $49ec: $8b
    adc e                                         ; $49ed: $8b
    adc e                                         ; $49ee: $8b
    adc [hl]                                      ; $49ef: $8e
    adc e                                         ; $49f0: $8b
    adc e                                         ; $49f1: $8b
    adc e                                         ; $49f2: $8b
    adc [hl]                                      ; $49f3: $8e
    adc e                                         ; $49f4: $8b
    adc e                                         ; $49f5: $8b
    ld de, $e9dc                                  ; $49f6: $11 $dc $e9
    ld h, $ac                                     ; $49f9: $26 $ac
    add hl, bc                                    ; $49fb: $09
    push de                                       ; $49fc: $d5
    pop hl                                        ; $49fd: $e1
    ld a, [bc]                                    ; $49fe: $0a
    ld a, [$9594]                                 ; $49ff: $fa $94 $95
    dec bc                                        ; $4a02: $0b
    call c, $97fc                                 ; $4a03: $dc $fc $97
    ld [bc], a                                    ; $4a06: $02
    dec b                                         ; $4a07: $05
    dec b                                         ; $4a08: $05
    ld [bc], a                                    ; $4a09: $02
    adc e                                         ; $4a0a: $8b
    adc e                                         ; $4a0b: $8b
    ld [bc], a                                    ; $4a0c: $02
    ld [bc], a                                    ; $4a0d: $02
    adc e                                         ; $4a0e: $8b
    ld [bc], a                                    ; $4a0f: $02
    ld a, [bc]                                    ; $4a10: $0a
    dec c                                         ; $4a11: $0d
    adc [hl]                                      ; $4a12: $8e
    ld [bc], a                                    ; $4a13: $02
    ld [bc], a                                    ; $4a14: $02

jr_07f_4a15:
    dec c                                         ; $4a15: $0d
    inc c                                         ; $4a16: $0c
    dec c                                         ; $4a17: $0d
    push hl                                       ; $4a18: $e5
    and $d4                                       ; $4a19: $e6 $d4
    push de                                       ; $4a1b: $d5
    jp hl                                         ; $4a1c: $e9


    ld [$0ed8], a                                 ; $4a1d: $ea $d8 $0e
    db $ed                                        ; $4a20: $ed
    xor $0f                                       ; $4a21: $ee $0f
    db $10                                        ; $4a23: $10
    ld de, $8bd0                                  ; $4a24: $11 $d0 $8b
    adc e                                         ; $4a27: $8b
    adc [hl]                                      ; $4a28: $8e
    adc e                                         ; $4a29: $8b
    ld [bc], a                                    ; $4a2a: $02
    ld [bc], a                                    ; $4a2b: $02
    adc [hl]                                      ; $4a2c: $8e
    adc [hl]                                      ; $4a2d: $8e
    ld [bc], a                                    ; $4a2e: $02
    adc e                                         ; $4a2f: $8b
    adc [hl]                                      ; $4a30: $8e
    adc [hl]                                      ; $4a31: $8e
    adc e                                         ; $4a32: $8b
    adc e                                         ; $4a33: $8b
    adc [hl]                                      ; $4a34: $8e
    adc e                                         ; $4a35: $8b
    push bc                                       ; $4a36: $c5
    add $d3                                       ; $4a37: $c6 $d3
    call nc, $cac9                                ; $4a39: $d4 $c9 $ca
    rst $10                                       ; $4a3c: $d7
    ret c                                         ; $4a3d: $d8

    call $dbce                                    ; $4a3e: $cd $ce $db
    call c, $d2d1                                 ; $4a41: $dc $d1 $d2
    rst $18                                       ; $4a44: $df
    ldh [$8e], a                                  ; $4a45: $e0 $8e
    adc e                                         ; $4a47: $8b
    adc [hl]                                      ; $4a48: $8e

Jump_07f_4a49:
    adc e                                         ; $4a49: $8b
    adc e                                         ; $4a4a: $8b
    adc [hl]                                      ; $4a4b: $8e
    adc e                                         ; $4a4c: $8b
    adc e                                         ; $4a4d: $8b
    adc e                                         ; $4a4e: $8b
    adc e                                         ; $4a4f: $8b
    adc [hl]                                      ; $4a50: $8e
    adc e                                         ; $4a51: $8b
    adc [hl]                                      ; $4a52: $8e
    adc e                                         ; $4a53: $8b
    adc [hl]                                      ; $4a54: $8e
    adc [hl]                                      ; $4a55: $8e
    push bc                                       ; $4a56: $c5
    add $d3                                       ; $4a57: $c6 $d3
    call nc, $cac9                                ; $4a59: $d4 $c9 $ca
    rst $10                                       ; $4a5c: $d7
    ret c                                         ; $4a5d: $d8

    call $dbce                                    ; $4a5e: $cd $ce $db
    ld [de], a                                    ; $4a61: $12
    pop de                                        ; $4a62: $d1
    jp nc, Jump_000_13df                          ; $4a63: $d2 $df $13

    adc [hl]                                      ; $4a66: $8e
    adc [hl]                                      ; $4a67: $8e
    adc e                                         ; $4a68: $8b
    adc e                                         ; $4a69: $8b
    adc [hl]                                      ; $4a6a: $8e
    adc e                                         ; $4a6b: $8b
    adc e                                         ; $4a6c: $8b
    adc e                                         ; $4a6d: $8b
    adc e                                         ; $4a6e: $8b
    adc e                                         ; $4a6f: $8b
    adc e                                         ; $4a70: $8b
    adc e                                         ; $4a71: $8b
    adc e                                         ; $4a72: $8b
    adc e                                         ; $4a73: $8b
    adc e                                         ; $4a74: $8b
    adc e                                         ; $4a75: $8b
    inc d                                         ; $4a76: $14
    dec d                                         ; $4a77: $15
    push de                                       ; $4a78: $d5
    pop hl                                        ; $4a79: $e1
    ld d, $d8                                     ; $4a7a: $16 $d8
    reti                                          ; $4a7c: $d9


    ld b, $d7                                     ; $4a7d: $06 $d7
    call c, $26e9                                 ; $4a7f: $dc $e9 $26
    db $db                                        ; $4a82: $db
    db $eb                                        ; $4a83: $eb
    daa                                           ; $4a84: $27
    jr z, jr_07f_4a15                             ; $4a85: $28 $8e

    adc e                                         ; $4a87: $8b
    ld [bc], a                                    ; $4a88: $02
    dec b                                         ; $4a89: $05
    adc [hl]                                      ; $4a8a: $8e
    ld [bc], a                                    ; $4a8b: $02
    ld [bc], a                                    ; $4a8c: $02
    dec c                                         ; $4a8d: $0d
    and [hl]                                      ; $4a8e: $a6
    ld [bc], a                                    ; $4a8f: $02
    dec b                                         ; $4a90: $05
    ld [bc], a                                    ; $4a91: $02
    add [hl]                                      ; $4a92: $86
    dec b                                         ; $4a93: $05
    dec b                                         ; $4a94: $05
    ld [bc], a                                    ; $4a95: $02
    rst $18                                       ; $4a96: $df
    sbc $f2                                       ; $4a97: $de $f2
    di                                            ; $4a99: $f3
    db $ed                                        ; $4a9a: $ed
    db $ec                                        ; $4a9b: $ec
    or $f7                                        ; $4a9c: $f6 $f7
    ldh a, [$ef]                                  ; $4a9e: $f0 $ef
    pop de                                        ; $4aa0: $d1
    pop de                                        ; $4aa1: $d1
    di                                            ; $4aa2: $f3
    ld a, [c]                                     ; $4aa3: $f2
    pop de                                        ; $4aa4: $d1
    pop de                                        ; $4aa5: $d1
    and e                                         ; $4aa6: $a3
    and [hl]                                      ; $4aa7: $a6
    adc e                                         ; $4aa8: $8b
    adc e                                         ; $4aa9: $8b
    and e                                         ; $4aaa: $a3
    and [hl]                                      ; $4aab: $a6
    adc e                                         ; $4aac: $8b
    adc e                                         ; $4aad: $8b
    and e                                         ; $4aae: $a3
    and [hl]                                      ; $4aaf: $a6
    add e                                         ; $4ab0: $83
    add e                                         ; $4ab1: $83
    and [hl]                                      ; $4ab2: $a6
    and [hl]                                      ; $4ab3: $a6
    add e                                         ; $4ab4: $83
    add e                                         ; $4ab5: $83
    db $f4                                        ; $4ab6: $f4
    push af                                       ; $4ab7: $f5
    ld a, [$f8fb]                                 ; $4ab8: $fa $fb $f8
    ld sp, hl                                     ; $4abb: $f9
    pop de                                        ; $4abc: $d1
    cp $d1                                        ; $4abd: $fe $d1
    pop de                                        ; $4abf: $d1
    pop de                                        ; $4ac0: $d1
    pop de                                        ; $4ac1: $d1
    pop de                                        ; $4ac2: $d1
    pop de                                        ; $4ac3: $d1
    pop de                                        ; $4ac4: $d1
    pop de                                        ; $4ac5: $d1
    adc e                                         ; $4ac6: $8b
    adc e                                         ; $4ac7: $8b
    adc e                                         ; $4ac8: $8b
    adc e                                         ; $4ac9: $8b
    adc e                                         ; $4aca: $8b
    adc e                                         ; $4acb: $8b
    add e                                         ; $4acc: $83
    adc e                                         ; $4acd: $8b
    add e                                         ; $4ace: $83
    add e                                         ; $4acf: $83
    add e                                         ; $4ad0: $83
    add e                                         ; $4ad1: $83
    add e                                         ; $4ad2: $83
    add e                                         ; $4ad3: $83
    add e                                         ; $4ad4: $83
    add e                                         ; $4ad5: $83
    db $f4                                        ; $4ad6: $f4
    push af                                       ; $4ad7: $f5
    rla                                           ; $4ad8: $17
    sbc $f8                                       ; $4ad9: $de $f8
    ld sp, hl                                     ; $4adb: $f9
    pop de                                        ; $4adc: $d1
    db $ec                                        ; $4add: $ec
    pop de                                        ; $4ade: $d1
    pop de                                        ; $4adf: $d1
    pop de                                        ; $4ae0: $d1
    rst $28                                       ; $4ae1: $ef
    pop de                                        ; $4ae2: $d1
    pop de                                        ; $4ae3: $d1
    pop de                                        ; $4ae4: $d1
    ld a, [c]                                     ; $4ae5: $f2
    adc e                                         ; $4ae6: $8b
    adc e                                         ; $4ae7: $8b
    adc e                                         ; $4ae8: $8b
    add [hl]                                      ; $4ae9: $86
    adc e                                         ; $4aea: $8b
    adc e                                         ; $4aeb: $8b
    add [hl]                                      ; $4aec: $86
    add [hl]                                      ; $4aed: $86
    inc bc                                        ; $4aee: $03
    inc bc                                        ; $4aef: $03
    ld b, $83                                     ; $4af0: $06 $83
    inc bc                                        ; $4af2: $03
    inc bc                                        ; $4af3: $03
    inc bc                                        ; $4af4: $03
    add e                                         ; $4af5: $83
    rst $18                                       ; $4af6: $df
    ld a, [$9594]                                 ; $4af7: $fa $94 $95
    db $ed                                        ; $4afa: $ed
    sub [hl]                                      ; $4afb: $96
    db $fc                                        ; $4afc: $fc
    ld de, $e2f0                                  ; $4afd: $11 $f0 $e2
    push de                                       ; $4b00: $d5
    pop hl                                        ; $4b01: $e1
    jr @+$1b                                      ; $4b02: $18 $19

    ld a, [de]                                    ; $4b04: $1a
    dec de                                        ; $4b05: $1b
    add [hl]                                      ; $4b06: $86
    dec b                                         ; $4b07: $05
    ld a, [bc]                                    ; $4b08: $0a
    ld a, [bc]                                    ; $4b09: $0a
    add e                                         ; $4b0a: $83
    ld a, [bc]                                    ; $4b0b: $0a
    ld [bc], a                                    ; $4b0c: $02
    ld [bc], a                                    ; $4b0d: $02
    add e                                         ; $4b0e: $83
    ld [bc], a                                    ; $4b0f: $02
    ld [bc], a                                    ; $4b10: $02
    ld [bc], a                                    ; $4b11: $02
    adc [hl]                                      ; $4b12: $8e
    adc [hl]                                      ; $4b13: $8e
    adc [hl]                                      ; $4b14: $8e
    adc e                                         ; $4b15: $8b
    rst $30                                       ; $4b16: $f7
    or $d1                                        ; $4b17: $f6 $d1
    pop de                                        ; $4b19: $d1
    db $d3                                        ; $4b1a: $d3
    jp nc, $d1d1                                  ; $4b1b: $d2 $d1 $d1

    rst $10                                       ; $4b1e: $d7
    sub $d1                                       ; $4b1f: $d6 $d1
    pop de                                        ; $4b21: $d1
    inc e                                         ; $4b22: $1c
    dec e                                         ; $4b23: $1d
    pop de                                        ; $4b24: $d1
    pop de                                        ; $4b25: $d1
    and [hl]                                      ; $4b26: $a6
    and e                                         ; $4b27: $a3
    add e                                         ; $4b28: $83
    add e                                         ; $4b29: $83
    and [hl]                                      ; $4b2a: $a6
    and e                                         ; $4b2b: $a3
    add e                                         ; $4b2c: $83
    add e                                         ; $4b2d: $83
    add e                                         ; $4b2e: $83
    add e                                         ; $4b2f: $83
    add e                                         ; $4b30: $83
    add e                                         ; $4b31: $83
    adc [hl]                                      ; $4b32: $8e
    adc e                                         ; $4b33: $8b
    add e                                         ; $4b34: $83
    add e                                         ; $4b35: $83
    sbc d                                         ; $4b36: $9a
    sbc e                                         ; $4b37: $9b
    inc bc                                        ; $4b38: $03
    inc b                                         ; $4b39: $04
    xor h                                         ; $4b3a: $ac
    xor l                                         ; $4b3b: $ad
    or [hl]                                       ; $4b3c: $b6
    or a                                          ; $4b3d: $b7
    or b                                          ; $4b3e: $b0
    or c                                          ; $4b3f: $b1
    cp c                                          ; $4b40: $b9
    cp d                                          ; $4b41: $ba
    or h                                          ; $4b42: $b4
    or l                                          ; $4b43: $b5
    cp l                                          ; $4b44: $bd
    cp [hl]                                       ; $4b45: $be
    ld a, [bc]                                    ; $4b46: $0a
    ld a, [bc]                                    ; $4b47: $0a
    ld a, [bc]                                    ; $4b48: $0a
    ld a, [bc]                                    ; $4b49: $0a
    adc [hl]                                      ; $4b4a: $8e
    adc e                                         ; $4b4b: $8b
    adc e                                         ; $4b4c: $8b
    adc e                                         ; $4b4d: $8b
    adc [hl]                                      ; $4b4e: $8e
    adc e                                         ; $4b4f: $8b
    adc e                                         ; $4b50: $8b
    adc e                                         ; $4b51: $8b
    adc [hl]                                      ; $4b52: $8e
    adc e                                         ; $4b53: $8b
    adc e                                         ; $4b54: $8b
    adc e                                         ; $4b55: $8b
    dec b                                         ; $4b56: $05
    sbc c                                         ; $4b57: $99
    sbc d                                         ; $4b58: $9a
    sbc e                                         ; $4b59: $9b
    cp b                                          ; $4b5a: $b8
    sbc a                                         ; $4b5b: $9f
    and b                                         ; $4b5c: $a0
    and c                                         ; $4b5d: $a1
    cp e                                          ; $4b5e: $bb
    cp h                                          ; $4b5f: $bc
    and h                                         ; $4b60: $a4
    and l                                         ; $4b61: $a5
    cp a                                          ; $4b62: $bf
    ret nz                                        ; $4b63: $c0

    xor b                                         ; $4b64: $a8
    xor c                                         ; $4b65: $a9
    ld a, [bc]                                    ; $4b66: $0a
    ld a, [bc]                                    ; $4b67: $0a
    ld a, [bc]                                    ; $4b68: $0a
    ld a, [bc]                                    ; $4b69: $0a
    adc e                                         ; $4b6a: $8b
    adc e                                         ; $4b6b: $8b
    adc e                                         ; $4b6c: $8b
    adc e                                         ; $4b6d: $8b
    adc e                                         ; $4b6e: $8b
    adc e                                         ; $4b6f: $8b
    adc e                                         ; $4b70: $8b
    adc e                                         ; $4b71: $8b
    adc e                                         ; $4b72: $8b
    adc e                                         ; $4b73: $8b
    adc e                                         ; $4b74: $8b
    adc e                                         ; $4b75: $8b
    inc bc                                        ; $4b76: $03
    inc b                                         ; $4b77: $04
    dec b                                         ; $4b78: $05
    sbc c                                         ; $4b79: $99
    xor d                                         ; $4b7a: $aa
    xor e                                         ; $4b7b: $ab
    xor h                                         ; $4b7c: $ac
    xor l                                         ; $4b7d: $ad
    xor [hl]                                      ; $4b7e: $ae
    xor a                                         ; $4b7f: $af
    or b                                          ; $4b80: $b0
    or c                                          ; $4b81: $b1
    or d                                          ; $4b82: $b2
    or e                                          ; $4b83: $b3
    or h                                          ; $4b84: $b4
    or l                                          ; $4b85: $b5
    ld a, [bc]                                    ; $4b86: $0a
    ld a, [bc]                                    ; $4b87: $0a
    ld a, [bc]                                    ; $4b88: $0a
    ld a, [bc]                                    ; $4b89: $0a
    adc e                                         ; $4b8a: $8b
    adc e                                         ; $4b8b: $8b
    adc e                                         ; $4b8c: $8b
    adc [hl]                                      ; $4b8d: $8e
    adc e                                         ; $4b8e: $8b
    adc e                                         ; $4b8f: $8b
    adc [hl]                                      ; $4b90: $8e
    adc [hl]                                      ; $4b91: $8e
    adc e                                         ; $4b92: $8b
    adc [hl]                                      ; $4b93: $8e
    adc e                                         ; $4b94: $8b
    adc [hl]                                      ; $4b95: $8e
    sbc d                                         ; $4b96: $9a
    sbc e                                         ; $4b97: $9b
    inc bc                                        ; $4b98: $03
    inc b                                         ; $4b99: $04
    or [hl]                                       ; $4b9a: $b6
    or a                                          ; $4b9b: $b7
    cp b                                          ; $4b9c: $b8
    sbc a                                         ; $4b9d: $9f
    cp c                                          ; $4b9e: $b9
    cp d                                          ; $4b9f: $ba
    cp e                                          ; $4ba0: $bb
    cp h                                          ; $4ba1: $bc
    cp l                                          ; $4ba2: $bd
    cp [hl]                                       ; $4ba3: $be
    cp a                                          ; $4ba4: $bf
    ret nz                                        ; $4ba5: $c0

    ld a, [bc]                                    ; $4ba6: $0a
    ld a, [bc]                                    ; $4ba7: $0a
    ld a, [bc]                                    ; $4ba8: $0a
    ld a, [bc]                                    ; $4ba9: $0a
    adc [hl]                                      ; $4baa: $8e
    adc e                                         ; $4bab: $8b
    adc e                                         ; $4bac: $8b
    adc e                                         ; $4bad: $8b
    adc [hl]                                      ; $4bae: $8e
    adc e                                         ; $4baf: $8b
    adc [hl]                                      ; $4bb0: $8e
    adc [hl]                                      ; $4bb1: $8e
    adc [hl]                                      ; $4bb2: $8e
    adc e                                         ; $4bb3: $8b
    adc e                                         ; $4bb4: $8b
    adc [hl]                                      ; $4bb5: $8e
    push de                                       ; $4bb6: $d5
    sub $e3                                       ; $4bb7: $d6 $e3
    db $e4                                        ; $4bb9: $e4
    reti                                          ; $4bba: $d9


    jp c, $e8e7                                   ; $4bbb: $da $e7 $e8

    db $dd                                        ; $4bbe: $dd
    sbc $eb                                       ; $4bbf: $de $eb
    db $ec                                        ; $4bc1: $ec
    pop hl                                        ; $4bc2: $e1
    ld [c], a                                     ; $4bc3: $e2
    rst $28                                       ; $4bc4: $ef
    ldh a, [$8b]                                  ; $4bc5: $f0 $8b
    adc e                                         ; $4bc7: $8b
    adc [hl]                                      ; $4bc8: $8e
    adc [hl]                                      ; $4bc9: $8e
    adc e                                         ; $4bca: $8b
    adc [hl]                                      ; $4bcb: $8e
    adc e                                         ; $4bcc: $8b
    adc e                                         ; $4bcd: $8b
    adc [hl]                                      ; $4bce: $8e
    adc e                                         ; $4bcf: $8b
    adc e                                         ; $4bd0: $8b
    adc e                                         ; $4bd1: $8b
    adc [hl]                                      ; $4bd2: $8e
    adc e                                         ; $4bd3: $8b
    adc [hl]                                      ; $4bd4: $8e
    adc e                                         ; $4bd5: $8b
    push hl                                       ; $4bd6: $e5
    and $c5                                       ; $4bd7: $e6 $c5
    add $e9                                       ; $4bd9: $c6 $e9
    ld [$cac9], a                                 ; $4bdb: $ea $c9 $ca
    db $ed                                        ; $4bde: $ed
    xor $cd                                       ; $4bdf: $ee $cd
    adc $f1                                       ; $4be1: $ce $f1
    ret nc                                        ; $4be3: $d0

    pop de                                        ; $4be4: $d1
    jp nc, $8e8e                                  ; $4be5: $d2 $8e $8e

    adc e                                         ; $4be8: $8b
    adc [hl]                                      ; $4be9: $8e
    adc e                                         ; $4bea: $8b
    adc [hl]                                      ; $4beb: $8e
    adc [hl]                                      ; $4bec: $8e
    adc [hl]                                      ; $4bed: $8e
    adc e                                         ; $4bee: $8b
    adc e                                         ; $4bef: $8b
    adc [hl]                                      ; $4bf0: $8e
    adc [hl]                                      ; $4bf1: $8e
    adc [hl]                                      ; $4bf2: $8e
    adc [hl]                                      ; $4bf3: $8e
    adc e                                         ; $4bf4: $8b
    adc [hl]                                      ; $4bf5: $8e
    db $d3                                        ; $4bf6: $d3
    call nc, $d6d5                                ; $4bf7: $d4 $d5 $d6
    rst $10                                       ; $4bfa: $d7
    ret c                                         ; $4bfb: $d8

    reti                                          ; $4bfc: $d9


    jp c, $dcdb                                   ; $4bfd: $da $db $dc

    db $dd                                        ; $4c00: $dd
    sbc $df                                       ; $4c01: $de $df
    ldh [$e1], a                                  ; $4c03: $e0 $e1
    ld [c], a                                     ; $4c05: $e2
    adc [hl]                                      ; $4c06: $8e
    adc e                                         ; $4c07: $8b
    adc [hl]                                      ; $4c08: $8e
    adc [hl]                                      ; $4c09: $8e
    adc e                                         ; $4c0a: $8b
    adc [hl]                                      ; $4c0b: $8e
    adc e                                         ; $4c0c: $8b
    adc e                                         ; $4c0d: $8b
    adc [hl]                                      ; $4c0e: $8e
    adc [hl]                                      ; $4c0f: $8e
    adc [hl]                                      ; $4c10: $8e
    adc [hl]                                      ; $4c11: $8e
    adc e                                         ; $4c12: $8b
    adc [hl]                                      ; $4c13: $8e
    adc [hl]                                      ; $4c14: $8e
    adc e                                         ; $4c15: $8b
    db $e3                                        ; $4c16: $e3
    db $e4                                        ; $4c17: $e4
    push hl                                       ; $4c18: $e5
    and $e7                                       ; $4c19: $e6 $e7
    add sp, -$17                                  ; $4c1b: $e8 $e9
    ld [$eceb], a                                 ; $4c1d: $ea $eb $ec
    db $ed                                        ; $4c20: $ed
    xor $ef                                       ; $4c21: $ee $ef
    ldh a, [$f1]                                  ; $4c23: $f0 $f1
    ret nc                                        ; $4c25: $d0

    adc [hl]                                      ; $4c26: $8e
    adc [hl]                                      ; $4c27: $8e
    adc [hl]                                      ; $4c28: $8e
    adc [hl]                                      ; $4c29: $8e
    adc [hl]                                      ; $4c2a: $8e
    adc e                                         ; $4c2b: $8b
    adc e                                         ; $4c2c: $8b
    adc [hl]                                      ; $4c2d: $8e
    adc [hl]                                      ; $4c2e: $8e
    adc e                                         ; $4c2f: $8b
    adc [hl]                                      ; $4c30: $8e
    adc e                                         ; $4c31: $8b
    adc [hl]                                      ; $4c32: $8e
    adc e                                         ; $4c33: $8b
    adc [hl]                                      ; $4c34: $8e
    adc e                                         ; $4c35: $8b
    db $fc                                        ; $4c36: $fc
    db $fd                                        ; $4c37: $fd
    rst $38                                       ; $4c38: $ff
    nop                                           ; $4c39: $00
    pop de                                        ; $4c3a: $d1
    ld [bc], a                                    ; $4c3b: $02
    pop de                                        ; $4c3c: $d1
    ld [bc], a                                    ; $4c3d: $02
    pop de                                        ; $4c3e: $d1
    pop de                                        ; $4c3f: $d1
    pop de                                        ; $4c40: $d1
    pop de                                        ; $4c41: $d1
    pop de                                        ; $4c42: $d1
    pop de                                        ; $4c43: $d1
    pop de                                        ; $4c44: $d1
    pop de                                        ; $4c45: $d1
    adc [hl]                                      ; $4c46: $8e
    adc e                                         ; $4c47: $8b
    adc e                                         ; $4c48: $8b
    adc e                                         ; $4c49: $8b
    add e                                         ; $4c4a: $83
    add e                                         ; $4c4b: $83
    add e                                         ; $4c4c: $83
    adc [hl]                                      ; $4c4d: $8e
    add e                                         ; $4c4e: $83
    add e                                         ; $4c4f: $83
    add e                                         ; $4c50: $83
    add e                                         ; $4c51: $83
    add e                                         ; $4c52: $83
    add e                                         ; $4c53: $83
    add e                                         ; $4c54: $83
    add e                                         ; $4c55: $83
    ld bc, $f4f3                                  ; $4c56: $01 $f3 $f4
    push af                                       ; $4c59: $f5
    or $f7                                        ; $4c5a: $f6 $f7
    ld hl, sp-$07                                 ; $4c5c: $f8 $f9
    pop de                                        ; $4c5e: $d1
    pop de                                        ; $4c5f: $d1
    pop de                                        ; $4c60: $d1
    pop de                                        ; $4c61: $d1
    pop de                                        ; $4c62: $d1
    pop de                                        ; $4c63: $d1
    pop de                                        ; $4c64: $d1
    pop de                                        ; $4c65: $d1
    adc e                                         ; $4c66: $8b
    adc e                                         ; $4c67: $8b
    adc e                                         ; $4c68: $8b
    adc [hl]                                      ; $4c69: $8e
    adc e                                         ; $4c6a: $8b
    adc e                                         ; $4c6b: $8b
    adc e                                         ; $4c6c: $8b
    adc [hl]                                      ; $4c6d: $8e
    add e                                         ; $4c6e: $83
    add e                                         ; $4c6f: $83
    add e                                         ; $4c70: $83
    add e                                         ; $4c71: $83
    add e                                         ; $4c72: $83
    add e                                         ; $4c73: $83
    add e                                         ; $4c74: $83
    add e                                         ; $4c75: $83
    ld a, [$fcfb]                                 ; $4c76: $fa $fb $fc
    db $fd                                        ; $4c79: $fd
    pop de                                        ; $4c7a: $d1
    cp $d1                                        ; $4c7b: $fe $d1
    ld [bc], a                                    ; $4c7d: $02
    pop de                                        ; $4c7e: $d1
    pop de                                        ; $4c7f: $d1
    pop de                                        ; $4c80: $d1
    pop de                                        ; $4c81: $d1
    pop de                                        ; $4c82: $d1
    pop de                                        ; $4c83: $d1
    pop de                                        ; $4c84: $d1
    pop de                                        ; $4c85: $d1
    adc e                                         ; $4c86: $8b
    adc e                                         ; $4c87: $8b
    adc e                                         ; $4c88: $8b
    adc [hl]                                      ; $4c89: $8e
    add e                                         ; $4c8a: $83
    adc [hl]                                      ; $4c8b: $8e
    add e                                         ; $4c8c: $83
    add e                                         ; $4c8d: $83
    add e                                         ; $4c8e: $83
    add e                                         ; $4c8f: $83
    add e                                         ; $4c90: $83
    add e                                         ; $4c91: $83
    add e                                         ; $4c92: $83
    add e                                         ; $4c93: $83
    add e                                         ; $4c94: $83
    add e                                         ; $4c95: $83
    rst $38                                       ; $4c96: $ff
    nop                                           ; $4c97: $00
    ld bc, $d1f3                                  ; $4c98: $01 $f3 $d1
    ld [bc], a                                    ; $4c9b: $02
    or $f7                                        ; $4c9c: $f6 $f7
    pop de                                        ; $4c9e: $d1
    pop de                                        ; $4c9f: $d1
    pop de                                        ; $4ca0: $d1
    pop de                                        ; $4ca1: $d1
    pop de                                        ; $4ca2: $d1
    pop de                                        ; $4ca3: $d1
    pop de                                        ; $4ca4: $d1
    pop de                                        ; $4ca5: $d1
    adc e                                         ; $4ca6: $8b
    adc e                                         ; $4ca7: $8b
    adc e                                         ; $4ca8: $8b
    adc [hl]                                      ; $4ca9: $8e
    add [hl]                                      ; $4caa: $86
    adc e                                         ; $4cab: $8b
    adc [hl]                                      ; $4cac: $8e
    adc e                                         ; $4cad: $8b
    add e                                         ; $4cae: $83
    add e                                         ; $4caf: $83
    add e                                         ; $4cb0: $83
    add e                                         ; $4cb1: $83
    add e                                         ; $4cb2: $83
    add e                                         ; $4cb3: $83
    add e                                         ; $4cb4: $83
    add e                                         ; $4cb5: $83
    dec b                                         ; $4cb6: $05
    sbc c                                         ; $4cb7: $99
    sbc d                                         ; $4cb8: $9a
    sbc e                                         ; $4cb9: $9b
    and b                                         ; $4cba: $a0
    and c                                         ; $4cbb: $a1
    xor d                                         ; $4cbc: $aa
    xor e                                         ; $4cbd: $ab
    and h                                         ; $4cbe: $a4
    and l                                         ; $4cbf: $a5
    xor [hl]                                      ; $4cc0: $ae
    xor a                                         ; $4cc1: $af
    xor b                                         ; $4cc2: $a8
    xor c                                         ; $4cc3: $a9
    or d                                          ; $4cc4: $b2
    or e                                          ; $4cc5: $b3
    ld a, [bc]                                    ; $4cc6: $0a
    ld a, [bc]                                    ; $4cc7: $0a
    ld a, [bc]                                    ; $4cc8: $0a
    ld a, [bc]                                    ; $4cc9: $0a
    adc e                                         ; $4cca: $8b
    adc e                                         ; $4ccb: $8b
    adc e                                         ; $4ccc: $8b
    adc e                                         ; $4ccd: $8b
    adc e                                         ; $4cce: $8b
    adc [hl]                                      ; $4ccf: $8e
    adc e                                         ; $4cd0: $8b
    adc e                                         ; $4cd1: $8b
    adc e                                         ; $4cd2: $8b
    adc [hl]                                      ; $4cd3: $8e
    adc [hl]                                      ; $4cd4: $8e
    adc e                                         ; $4cd5: $8b
    inc bc                                        ; $4cd6: $03
    inc b                                         ; $4cd7: $04
    dec b                                         ; $4cd8: $05
    sbc c                                         ; $4cd9: $99
    xor h                                         ; $4cda: $ac
    xor l                                         ; $4cdb: $ad
    or [hl]                                       ; $4cdc: $b6
    or a                                          ; $4cdd: $b7
    or b                                          ; $4cde: $b0
    or c                                          ; $4cdf: $b1
    cp c                                          ; $4ce0: $b9
    cp d                                          ; $4ce1: $ba
    or h                                          ; $4ce2: $b4
    or l                                          ; $4ce3: $b5
    cp l                                          ; $4ce4: $bd
    cp [hl]                                       ; $4ce5: $be
    ld a, [bc]                                    ; $4ce6: $0a
    ld a, [bc]                                    ; $4ce7: $0a
    ld a, [bc]                                    ; $4ce8: $0a
    ld a, [bc]                                    ; $4ce9: $0a
    adc e                                         ; $4cea: $8b
    adc e                                         ; $4ceb: $8b
    adc [hl]                                      ; $4cec: $8e
    adc [hl]                                      ; $4ced: $8e
    adc e                                         ; $4cee: $8b
    adc [hl]                                      ; $4cef: $8e
    adc e                                         ; $4cf0: $8b
    adc e                                         ; $4cf1: $8b
    adc [hl]                                      ; $4cf2: $8e
    adc e                                         ; $4cf3: $8b
    adc e                                         ; $4cf4: $8b
    adc [hl]                                      ; $4cf5: $8e
    sbc d                                         ; $4cf6: $9a
    sbc e                                         ; $4cf7: $9b
    inc bc                                        ; $4cf8: $03
    inc b                                         ; $4cf9: $04
    cp b                                          ; $4cfa: $b8
    sbc a                                         ; $4cfb: $9f
    and b                                         ; $4cfc: $a0
    and c                                         ; $4cfd: $a1
    cp e                                          ; $4cfe: $bb
    cp h                                          ; $4cff: $bc
    and h                                         ; $4d00: $a4
    and l                                         ; $4d01: $a5
    cp a                                          ; $4d02: $bf
    ret nz                                        ; $4d03: $c0

    xor b                                         ; $4d04: $a8
    xor c                                         ; $4d05: $a9
    ld a, [bc]                                    ; $4d06: $0a
    ld a, [bc]                                    ; $4d07: $0a
    ld a, [bc]                                    ; $4d08: $0a
    ld a, [bc]                                    ; $4d09: $0a
    adc e                                         ; $4d0a: $8b
    adc e                                         ; $4d0b: $8b
    adc e                                         ; $4d0c: $8b
    adc e                                         ; $4d0d: $8b
    adc [hl]                                      ; $4d0e: $8e
    adc e                                         ; $4d0f: $8b
    adc [hl]                                      ; $4d10: $8e
    adc e                                         ; $4d11: $8b
    adc e                                         ; $4d12: $8b
    adc e                                         ; $4d13: $8b
    adc e                                         ; $4d14: $8b
    adc e                                         ; $4d15: $8b
    dec b                                         ; $4d16: $05
    sbc c                                         ; $4d17: $99
    sbc d                                         ; $4d18: $9a
    sbc e                                         ; $4d19: $9b
    xor d                                         ; $4d1a: $aa
    xor e                                         ; $4d1b: $ab
    xor h                                         ; $4d1c: $ac
    xor l                                         ; $4d1d: $ad
    xor [hl]                                      ; $4d1e: $ae
    xor a                                         ; $4d1f: $af
    or b                                          ; $4d20: $b0
    or c                                          ; $4d21: $b1
    or d                                          ; $4d22: $b2
    or e                                          ; $4d23: $b3
    or h                                          ; $4d24: $b4
    or l                                          ; $4d25: $b5
    ld a, [bc]                                    ; $4d26: $0a
    ld a, [bc]                                    ; $4d27: $0a
    ld a, [bc]                                    ; $4d28: $0a
    ld a, [bc]                                    ; $4d29: $0a
    adc e                                         ; $4d2a: $8b
    adc e                                         ; $4d2b: $8b
    adc e                                         ; $4d2c: $8b
    adc e                                         ; $4d2d: $8b
    adc [hl]                                      ; $4d2e: $8e
    adc e                                         ; $4d2f: $8b
    adc e                                         ; $4d30: $8b
    adc e                                         ; $4d31: $8b
    adc e                                         ; $4d32: $8b
    adc [hl]                                      ; $4d33: $8e
    adc e                                         ; $4d34: $8b
    adc e                                         ; $4d35: $8b
    push bc                                       ; $4d36: $c5
    add $d3                                       ; $4d37: $c6 $d3
    call nc, $cac9                                ; $4d39: $d4 $c9 $ca
    rst $10                                       ; $4d3c: $d7
    ret c                                         ; $4d3d: $d8

    call $dbce                                    ; $4d3e: $cd $ce $db
    call c, $d2d1                                 ; $4d41: $dc $d1 $d2
    rst $18                                       ; $4d44: $df
    ldh [$8b], a                                  ; $4d45: $e0 $8b
    adc [hl]                                      ; $4d47: $8e
    adc e                                         ; $4d48: $8b
    adc [hl]                                      ; $4d49: $8e
    adc e                                         ; $4d4a: $8b
    adc e                                         ; $4d4b: $8b

Jump_07f_4d4c:
    adc [hl]                                      ; $4d4c: $8e
    adc [hl]                                      ; $4d4d: $8e
    adc e                                         ; $4d4e: $8b
    adc [hl]                                      ; $4d4f: $8e
    adc [hl]                                      ; $4d50: $8e
    adc e                                         ; $4d51: $8b
    adc [hl]                                      ; $4d52: $8e
    adc e                                         ; $4d53: $8b
    adc [hl]                                      ; $4d54: $8e
    adc e                                         ; $4d55: $8b
    push de                                       ; $4d56: $d5
    sub $e3                                       ; $4d57: $d6 $e3
    db $e4                                        ; $4d59: $e4
    reti                                          ; $4d5a: $d9


    jp c, $e8e7                                   ; $4d5b: $da $e7 $e8

    db $dd                                        ; $4d5e: $dd
    sbc $eb                                       ; $4d5f: $de $eb
    db $ec                                        ; $4d61: $ec
    pop hl                                        ; $4d62: $e1
    ld [c], a                                     ; $4d63: $e2
    rst $28                                       ; $4d64: $ef
    ldh a, [$8e]                                  ; $4d65: $f0 $8e
    adc [hl]                                      ; $4d67: $8e
    adc [hl]                                      ; $4d68: $8e
    adc [hl]                                      ; $4d69: $8e
    adc e                                         ; $4d6a: $8b
    adc e                                         ; $4d6b: $8b
    adc [hl]                                      ; $4d6c: $8e
    adc [hl]                                      ; $4d6d: $8e
    adc e                                         ; $4d6e: $8b
    adc [hl]                                      ; $4d6f: $8e
    adc e                                         ; $4d70: $8b
    adc e                                         ; $4d71: $8b
    adc [hl]                                      ; $4d72: $8e
    adc [hl]                                      ; $4d73: $8e
    adc e                                         ; $4d74: $8b
    adc e                                         ; $4d75: $8b
    push hl                                       ; $4d76: $e5
    and $c5                                       ; $4d77: $e6 $c5
    add $e9                                       ; $4d79: $c6 $e9
    ld [$cac9], a                                 ; $4d7b: $ea $c9 $ca
    db $ed                                        ; $4d7e: $ed
    xor $cd                                       ; $4d7f: $ee $cd
    adc $f1                                       ; $4d81: $ce $f1
    ret nc                                        ; $4d83: $d0

    pop de                                        ; $4d84: $d1
    jp nc, $8b8e                                  ; $4d85: $d2 $8e $8b

    adc [hl]                                      ; $4d88: $8e
    adc [hl]                                      ; $4d89: $8e
    adc [hl]                                      ; $4d8a: $8e
    adc [hl]                                      ; $4d8b: $8e
    adc e                                         ; $4d8c: $8b
    adc e                                         ; $4d8d: $8b
    adc e                                         ; $4d8e: $8b
    adc [hl]                                      ; $4d8f: $8e
    adc [hl]                                      ; $4d90: $8e
    adc [hl]                                      ; $4d91: $8e
    adc e                                         ; $4d92: $8b
    adc e                                         ; $4d93: $8b
    adc e                                         ; $4d94: $8b
    adc e                                         ; $4d95: $8b
    db $d3                                        ; $4d96: $d3
    call nc, $d6d5                                ; $4d97: $d4 $d5 $d6
    rst $10                                       ; $4d9a: $d7
    ret c                                         ; $4d9b: $d8

    reti                                          ; $4d9c: $d9


    jp c, $dcdb                                   ; $4d9d: $da $db $dc

    db $dd                                        ; $4da0: $dd
    sbc $df                                       ; $4da1: $de $df
    ldh [$e1], a                                  ; $4da3: $e0 $e1
    ld [c], a                                     ; $4da5: $e2
    adc e                                         ; $4da6: $8b
    adc [hl]                                      ; $4da7: $8e
    adc e                                         ; $4da8: $8b
    adc [hl]                                      ; $4da9: $8e
    adc e                                         ; $4daa: $8b
    adc e                                         ; $4dab: $8b
    adc e                                         ; $4dac: $8b
    adc [hl]                                      ; $4dad: $8e
    adc [hl]                                      ; $4dae: $8e
    adc [hl]                                      ; $4daf: $8e
    adc [hl]                                      ; $4db0: $8e
    adc [hl]                                      ; $4db1: $8e
    adc [hl]                                      ; $4db2: $8e
    adc [hl]                                      ; $4db3: $8e
    adc [hl]                                      ; $4db4: $8e
    adc [hl]                                      ; $4db5: $8e
    db $f4                                        ; $4db6: $f4
    push af                                       ; $4db7: $f5
    ld a, [$f8fb]                                 ; $4db8: $fa $fb $f8
    ld sp, hl                                     ; $4dbb: $f9
    pop de                                        ; $4dbc: $d1
    cp $d1                                        ; $4dbd: $fe $d1
    pop de                                        ; $4dbf: $d1
    pop de                                        ; $4dc0: $d1
    pop de                                        ; $4dc1: $d1
    pop de                                        ; $4dc2: $d1
    pop de                                        ; $4dc3: $d1
    pop de                                        ; $4dc4: $d1
    pop de                                        ; $4dc5: $d1
    adc e                                         ; $4dc6: $8b
    adc [hl]                                      ; $4dc7: $8e
    adc e                                         ; $4dc8: $8b
    adc [hl]                                      ; $4dc9: $8e
    adc e                                         ; $4dca: $8b
    adc e                                         ; $4dcb: $8b
    add e                                         ; $4dcc: $83
    adc e                                         ; $4dcd: $8b
    add e                                         ; $4dce: $83
    add e                                         ; $4dcf: $83
    add e                                         ; $4dd0: $83
    add e                                         ; $4dd1: $83
    add e                                         ; $4dd2: $83
    add e                                         ; $4dd3: $83
    add e                                         ; $4dd4: $83
    add e                                         ; $4dd5: $83
    db $fc                                        ; $4dd6: $fc
    db $fd                                        ; $4dd7: $fd
    rst $38                                       ; $4dd8: $ff
    nop                                           ; $4dd9: $00
    pop de                                        ; $4dda: $d1
    ld [bc], a                                    ; $4ddb: $02
    pop de                                        ; $4ddc: $d1
    ld [bc], a                                    ; $4ddd: $02
    pop de                                        ; $4dde: $d1
    pop de                                        ; $4ddf: $d1
    pop de                                        ; $4de0: $d1
    pop de                                        ; $4de1: $d1
    pop de                                        ; $4de2: $d1
    pop de                                        ; $4de3: $d1
    pop de                                        ; $4de4: $d1
    pop de                                        ; $4de5: $d1
    adc [hl]                                      ; $4de6: $8e
    adc [hl]                                      ; $4de7: $8e
    adc e                                         ; $4de8: $8b
    adc e                                         ; $4de9: $8b
    add e                                         ; $4dea: $83
    add [hl]                                      ; $4deb: $86
    add e                                         ; $4dec: $83
    adc e                                         ; $4ded: $8b
    add e                                         ; $4dee: $83
    add e                                         ; $4def: $83
    add e                                         ; $4df0: $83
    add e                                         ; $4df1: $83
    add e                                         ; $4df2: $83
    add e                                         ; $4df3: $83
    add e                                         ; $4df4: $83
    add e                                         ; $4df5: $83
    ld bc, $f4f3                                  ; $4df6: $01 $f3 $f4
    push af                                       ; $4df9: $f5
    or $f7                                        ; $4dfa: $f6 $f7
    ld hl, sp-$07                                 ; $4dfc: $f8 $f9
    pop de                                        ; $4dfe: $d1
    pop de                                        ; $4dff: $d1
    pop de                                        ; $4e00: $d1
    pop de                                        ; $4e01: $d1
    pop de                                        ; $4e02: $d1
    pop de                                        ; $4e03: $d1
    pop de                                        ; $4e04: $d1
    pop de                                        ; $4e05: $d1
    adc [hl]                                      ; $4e06: $8e
    adc [hl]                                      ; $4e07: $8e
    adc e                                         ; $4e08: $8b
    adc [hl]                                      ; $4e09: $8e
    adc [hl]                                      ; $4e0a: $8e
    adc [hl]                                      ; $4e0b: $8e
    adc e                                         ; $4e0c: $8b
    adc [hl]                                      ; $4e0d: $8e
    add e                                         ; $4e0e: $83
    add e                                         ; $4e0f: $83
    add e                                         ; $4e10: $83
    add [hl]                                      ; $4e11: $86
    add e                                         ; $4e12: $83
    add e                                         ; $4e13: $83
    add e                                         ; $4e14: $83
    add e                                         ; $4e15: $83
    ld a, [$fcfb]                                 ; $4e16: $fa $fb $fc
    db $fd                                        ; $4e19: $fd
    pop de                                        ; $4e1a: $d1
    cp $d1                                        ; $4e1b: $fe $d1
    ld [bc], a                                    ; $4e1d: $02
    pop de                                        ; $4e1e: $d1
    pop de                                        ; $4e1f: $d1
    pop de                                        ; $4e20: $d1
    pop de                                        ; $4e21: $d1
    pop de                                        ; $4e22: $d1
    pop de                                        ; $4e23: $d1
    pop de                                        ; $4e24: $d1
    pop de                                        ; $4e25: $d1
    adc e                                         ; $4e26: $8b
    adc e                                         ; $4e27: $8b
    adc [hl]                                      ; $4e28: $8e
    adc e                                         ; $4e29: $8b
    add [hl]                                      ; $4e2a: $86
    adc e                                         ; $4e2b: $8b
    add e                                         ; $4e2c: $83
    add e                                         ; $4e2d: $83
    add e                                         ; $4e2e: $83
    add [hl]                                      ; $4e2f: $86
    add e                                         ; $4e30: $83
    add [hl]                                      ; $4e31: $86
    add e                                         ; $4e32: $83
    add e                                         ; $4e33: $83
    add e                                         ; $4e34: $83
    add e                                         ; $4e35: $83
    inc bc                                        ; $4e36: $03
    inc b                                         ; $4e37: $04
    dec b                                         ; $4e38: $05
    sbc c                                         ; $4e39: $99
    or [hl]                                       ; $4e3a: $b6
    or a                                          ; $4e3b: $b7
    cp b                                          ; $4e3c: $b8
    sbc a                                         ; $4e3d: $9f
    cp c                                          ; $4e3e: $b9
    cp d                                          ; $4e3f: $ba
    cp e                                          ; $4e40: $bb
    cp h                                          ; $4e41: $bc
    cp l                                          ; $4e42: $bd
    cp [hl]                                       ; $4e43: $be
    cp a                                          ; $4e44: $bf
    ret nz                                        ; $4e45: $c0

    ld a, [bc]                                    ; $4e46: $0a
    ld a, [bc]                                    ; $4e47: $0a
    ld a, [bc]                                    ; $4e48: $0a
    ld a, [bc]                                    ; $4e49: $0a
    adc e                                         ; $4e4a: $8b
    adc e                                         ; $4e4b: $8b
    adc e                                         ; $4e4c: $8b
    adc e                                         ; $4e4d: $8b
    adc e                                         ; $4e4e: $8b
    adc e                                         ; $4e4f: $8b
    adc e                                         ; $4e50: $8b
    adc e                                         ; $4e51: $8b
    adc [hl]                                      ; $4e52: $8e
    adc [hl]                                      ; $4e53: $8e
    adc [hl]                                      ; $4e54: $8e
    adc [hl]                                      ; $4e55: $8e
    sbc d                                         ; $4e56: $9a
    sbc e                                         ; $4e57: $9b
    inc bc                                        ; $4e58: $03
    inc b                                         ; $4e59: $04
    and b                                         ; $4e5a: $a0
    and c                                         ; $4e5b: $a1
    xor d                                         ; $4e5c: $aa
    xor e                                         ; $4e5d: $ab
    and h                                         ; $4e5e: $a4
    and l                                         ; $4e5f: $a5
    xor [hl]                                      ; $4e60: $ae
    xor a                                         ; $4e61: $af
    xor b                                         ; $4e62: $a8
    xor c                                         ; $4e63: $a9
    or d                                          ; $4e64: $b2
    or e                                          ; $4e65: $b3
    ld a, [bc]                                    ; $4e66: $0a
    ld a, [bc]                                    ; $4e67: $0a
    ld a, [bc]                                    ; $4e68: $0a
    ld a, [bc]                                    ; $4e69: $0a
    adc e                                         ; $4e6a: $8b
    adc e                                         ; $4e6b: $8b
    adc e                                         ; $4e6c: $8b
    adc e                                         ; $4e6d: $8b
    adc e                                         ; $4e6e: $8b
    adc [hl]                                      ; $4e6f: $8e
    adc [hl]                                      ; $4e70: $8e
    adc [hl]                                      ; $4e71: $8e
    adc e                                         ; $4e72: $8b
    adc e                                         ; $4e73: $8b
    adc [hl]                                      ; $4e74: $8e
    adc e                                         ; $4e75: $8b
    dec b                                         ; $4e76: $05
    sbc c                                         ; $4e77: $99
    sbc d                                         ; $4e78: $9a
    sbc e                                         ; $4e79: $9b
    xor h                                         ; $4e7a: $ac
    xor l                                         ; $4e7b: $ad
    or [hl]                                       ; $4e7c: $b6
    or a                                          ; $4e7d: $b7
    or b                                          ; $4e7e: $b0
    or c                                          ; $4e7f: $b1
    cp c                                          ; $4e80: $b9
    cp d                                          ; $4e81: $ba
    or h                                          ; $4e82: $b4
    or l                                          ; $4e83: $b5
    cp l                                          ; $4e84: $bd
    cp [hl]                                       ; $4e85: $be
    ld a, [bc]                                    ; $4e86: $0a
    ld a, [bc]                                    ; $4e87: $0a
    ld a, [bc]                                    ; $4e88: $0a
    ld a, [bc]                                    ; $4e89: $0a
    adc e                                         ; $4e8a: $8b
    adc e                                         ; $4e8b: $8b
    adc e                                         ; $4e8c: $8b
    adc e                                         ; $4e8d: $8b
    adc [hl]                                      ; $4e8e: $8e
    adc [hl]                                      ; $4e8f: $8e
    adc e                                         ; $4e90: $8b
    adc e                                         ; $4e91: $8b
    adc [hl]                                      ; $4e92: $8e
    adc [hl]                                      ; $4e93: $8e
    adc e                                         ; $4e94: $8b
    adc e                                         ; $4e95: $8b
    db $e3                                        ; $4e96: $e3
    db $e4                                        ; $4e97: $e4
    push hl                                       ; $4e98: $e5
    and $e7                                       ; $4e99: $e6 $e7
    add sp, -$17                                  ; $4e9b: $e8 $e9
    ld [$eceb], a                                 ; $4e9d: $ea $eb $ec
    db $ed                                        ; $4ea0: $ed
    xor $ef                                       ; $4ea1: $ee $ef
    ldh a, [$f1]                                  ; $4ea3: $f0 $f1
    ret nc                                        ; $4ea5: $d0

    adc [hl]                                      ; $4ea6: $8e
    adc [hl]                                      ; $4ea7: $8e
    adc e                                         ; $4ea8: $8b
    adc [hl]                                      ; $4ea9: $8e
    adc [hl]                                      ; $4eaa: $8e
    adc [hl]                                      ; $4eab: $8e
    adc e                                         ; $4eac: $8b
    adc [hl]                                      ; $4ead: $8e
    adc [hl]                                      ; $4eae: $8e
    adc [hl]                                      ; $4eaf: $8e
    adc [hl]                                      ; $4eb0: $8e
    adc [hl]                                      ; $4eb1: $8e
    adc e                                         ; $4eb2: $8b
    adc [hl]                                      ; $4eb3: $8e
    adc [hl]                                      ; $4eb4: $8e
    adc e                                         ; $4eb5: $8b
    push bc                                       ; $4eb6: $c5
    add $d3                                       ; $4eb7: $c6 $d3
    call nc, $cac9                                ; $4eb9: $d4 $c9 $ca
    rst $10                                       ; $4ebc: $d7
    ret c                                         ; $4ebd: $d8

    call $dbce                                    ; $4ebe: $cd $ce $db
    call c, $d2d1                                 ; $4ec1: $dc $d1 $d2
    rst $18                                       ; $4ec4: $df
    ldh [$8b], a                                  ; $4ec5: $e0 $8b
    adc e                                         ; $4ec7: $8b
    adc [hl]                                      ; $4ec8: $8e
    adc [hl]                                      ; $4ec9: $8e
    adc e                                         ; $4eca: $8b
    adc e                                         ; $4ecb: $8b
    adc e                                         ; $4ecc: $8b
    adc [hl]                                      ; $4ecd: $8e
    adc e                                         ; $4ece: $8b
    adc e                                         ; $4ecf: $8b
    adc [hl]                                      ; $4ed0: $8e
    adc e                                         ; $4ed1: $8b
    adc e                                         ; $4ed2: $8b
    adc e                                         ; $4ed3: $8b
    adc [hl]                                      ; $4ed4: $8e
    adc e                                         ; $4ed5: $8b
    push de                                       ; $4ed6: $d5
    sub $e3                                       ; $4ed7: $d6 $e3
    db $e4                                        ; $4ed9: $e4
    reti                                          ; $4eda: $d9


    jp c, $e8e7                                   ; $4edb: $da $e7 $e8

    db $dd                                        ; $4ede: $dd
    sbc $eb                                       ; $4edf: $de $eb
    db $ec                                        ; $4ee1: $ec
    pop hl                                        ; $4ee2: $e1
    ld [c], a                                     ; $4ee3: $e2
    rst $28                                       ; $4ee4: $ef
    ldh a, [$8b]                                  ; $4ee5: $f0 $8b
    adc e                                         ; $4ee7: $8b
    adc e                                         ; $4ee8: $8b
    adc [hl]                                      ; $4ee9: $8e
    adc [hl]                                      ; $4eea: $8e
    adc e                                         ; $4eeb: $8b
    adc e                                         ; $4eec: $8b
    adc [hl]                                      ; $4eed: $8e
    adc e                                         ; $4eee: $8b
    adc [hl]                                      ; $4eef: $8e
    adc e                                         ; $4ef0: $8b
    adc [hl]                                      ; $4ef1: $8e
    adc e                                         ; $4ef2: $8b
    adc e                                         ; $4ef3: $8b
    adc [hl]                                      ; $4ef4: $8e
    adc e                                         ; $4ef5: $8b
    rst $38                                       ; $4ef6: $ff
    nop                                           ; $4ef7: $00
    ld bc, $d1f3                                  ; $4ef8: $01 $f3 $d1
    ld [bc], a                                    ; $4efb: $02
    or $f7                                        ; $4efc: $f6 $f7
    pop de                                        ; $4efe: $d1
    pop de                                        ; $4eff: $d1
    pop de                                        ; $4f00: $d1
    pop de                                        ; $4f01: $d1
    pop de                                        ; $4f02: $d1
    pop de                                        ; $4f03: $d1
    pop de                                        ; $4f04: $d1
    pop de                                        ; $4f05: $d1
    adc e                                         ; $4f06: $8b
    adc [hl]                                      ; $4f07: $8e
    adc e                                         ; $4f08: $8b
    adc e                                         ; $4f09: $8b
    add e                                         ; $4f0a: $83
    adc e                                         ; $4f0b: $8b
    adc e                                         ; $4f0c: $8b
    adc e                                         ; $4f0d: $8b
    add e                                         ; $4f0e: $83
    add e                                         ; $4f0f: $83
    add e                                         ; $4f10: $83
    add e                                         ; $4f11: $83
    add e                                         ; $4f12: $83
    add e                                         ; $4f13: $83
    add e                                         ; $4f14: $83
    add e                                         ; $4f15: $83
    db $f4                                        ; $4f16: $f4
    push af                                       ; $4f17: $f5
    ld a, [$f8fb]                                 ; $4f18: $fa $fb $f8
    ld sp, hl                                     ; $4f1b: $f9
    pop de                                        ; $4f1c: $d1
    cp $d1                                        ; $4f1d: $fe $d1
    pop de                                        ; $4f1f: $d1
    pop de                                        ; $4f20: $d1
    pop de                                        ; $4f21: $d1
    pop de                                        ; $4f22: $d1
    pop de                                        ; $4f23: $d1
    pop de                                        ; $4f24: $d1
    pop de                                        ; $4f25: $d1
    adc [hl]                                      ; $4f26: $8e
    adc e                                         ; $4f27: $8b
    adc [hl]                                      ; $4f28: $8e
    adc e                                         ; $4f29: $8b
    adc e                                         ; $4f2a: $8b
    adc e                                         ; $4f2b: $8b
    add [hl]                                      ; $4f2c: $86
    adc e                                         ; $4f2d: $8b
    add e                                         ; $4f2e: $83
    add e                                         ; $4f2f: $83
    add e                                         ; $4f30: $83
    add e                                         ; $4f31: $83
    add e                                         ; $4f32: $83
    add e                                         ; $4f33: $83
    add e                                         ; $4f34: $83
    add e                                         ; $4f35: $83
    db $fc                                        ; $4f36: $fc
    db $fd                                        ; $4f37: $fd
    rst $38                                       ; $4f38: $ff
    nop                                           ; $4f39: $00
    pop de                                        ; $4f3a: $d1
    ld [bc], a                                    ; $4f3b: $02
    pop de                                        ; $4f3c: $d1
    ld [bc], a                                    ; $4f3d: $02
    pop de                                        ; $4f3e: $d1
    pop de                                        ; $4f3f: $d1
    pop de                                        ; $4f40: $d1
    pop de                                        ; $4f41: $d1
    pop de                                        ; $4f42: $d1
    pop de                                        ; $4f43: $d1
    pop de                                        ; $4f44: $d1
    pop de                                        ; $4f45: $d1
    adc e                                         ; $4f46: $8b
    adc e                                         ; $4f47: $8b
    adc [hl]                                      ; $4f48: $8e
    adc e                                         ; $4f49: $8b
    add [hl]                                      ; $4f4a: $86
    add [hl]                                      ; $4f4b: $86
    add [hl]                                      ; $4f4c: $86
    adc e                                         ; $4f4d: $8b
    add [hl]                                      ; $4f4e: $86
    add e                                         ; $4f4f: $83
    add e                                         ; $4f50: $83
    add e                                         ; $4f51: $83
    add e                                         ; $4f52: $83
    add e                                         ; $4f53: $83
    add e                                         ; $4f54: $83
    add e                                         ; $4f55: $83
    pop de                                        ; $4f56: $d1
    pop de                                        ; $4f57: $d1
    pop de                                        ; $4f58: $d1
    pop de                                        ; $4f59: $d1
    pop de                                        ; $4f5a: $d1
    pop de                                        ; $4f5b: $d1
    pop de                                        ; $4f5c: $d1
    pop de                                        ; $4f5d: $d1
    pop de                                        ; $4f5e: $d1
    pop de                                        ; $4f5f: $d1
    pop de                                        ; $4f60: $d1
    pop de                                        ; $4f61: $d1
    pop de                                        ; $4f62: $d1
    pop de                                        ; $4f63: $d1
    pop de                                        ; $4f64: $d1
    pop de                                        ; $4f65: $d1
    add e                                         ; $4f66: $83
    add e                                         ; $4f67: $83
    add e                                         ; $4f68: $83
    add e                                         ; $4f69: $83
    add e                                         ; $4f6a: $83
    add e                                         ; $4f6b: $83
    add e                                         ; $4f6c: $83
    add e                                         ; $4f6d: $83
    add e                                         ; $4f6e: $83
    add h                                         ; $4f6f: $84
    add e                                         ; $4f70: $83
    add e                                         ; $4f71: $83
    add h                                         ; $4f72: $84
    add h                                         ; $4f73: $84
    add e                                         ; $4f74: $83
    add e                                         ; $4f75: $83
    pop de                                        ; $4f76: $d1
    pop de                                        ; $4f77: $d1
    pop de                                        ; $4f78: $d1
    ld e, $d1                                     ; $4f79: $1e $d1
    pop de                                        ; $4f7b: $d1
    pop de                                        ; $4f7c: $d1
    rra                                           ; $4f7d: $1f
    pop de                                        ; $4f7e: $d1
    pop de                                        ; $4f7f: $d1
    pop de                                        ; $4f80: $d1
    sub $d1                                       ; $4f81: $d6 $d1
    pop de                                        ; $4f83: $d1
    pop de                                        ; $4f84: $d1
    jp c, Jump_000_0303                           ; $4f85: $da $03 $03

    inc bc                                        ; $4f88: $03
    adc [hl]                                      ; $4f89: $8e
    inc bc                                        ; $4f8a: $03
    inc bc                                        ; $4f8b: $03
    inc bc                                        ; $4f8c: $03
    adc [hl]                                      ; $4f8d: $8e
    inc bc                                        ; $4f8e: $03
    inc bc                                        ; $4f8f: $03
    inc bc                                        ; $4f90: $03
    and e                                         ; $4f91: $a3
    inc bc                                        ; $4f92: $03
    inc bc                                        ; $4f93: $03
    inc bc                                        ; $4f94: $03
    add [hl]                                      ; $4f95: $86
    jr nz, jr_07f_4fb9                            ; $4f96: $20 $21

    ld [hl+], a                                   ; $4f98: $22
    inc hl                                        ; $4f99: $23
    inc h                                         ; $4f9a: $24
    call nc, $28d5                                ; $4f9b: $d4 $d5 $28
    rst $10                                       ; $4f9e: $d7
    ret c                                         ; $4f9f: $d8

    sub h                                         ; $4fa0: $94
    db $fd                                        ; $4fa1: $fd
    db $db                                        ; $4fa2: $db
    sub [hl]                                      ; $4fa3: $96
    db $fc                                        ; $4fa4: $fc
    ld de, $8b8b                                  ; $4fa5: $11 $8b $8b
    adc e                                         ; $4fa8: $8b
    adc e                                         ; $4fa9: $8b

jr_07f_4faa:
    adc e                                         ; $4faa: $8b
    ld [bc], a                                    ; $4fab: $02
    ld [bc], a                                    ; $4fac: $02
    ld [bc], a                                    ; $4fad: $02
    and e                                         ; $4fae: $a3
    ld [bc], a                                    ; $4faf: $02
    dec c                                         ; $4fb0: $0d
    dec b                                         ; $4fb1: $05
    add e                                         ; $4fb2: $83
    ld a, [bc]                                    ; $4fb3: $0a
    dec b                                         ; $4fb4: $05
    ld [bc], a                                    ; $4fb5: $02
    dec h                                         ; $4fb6: $25
    pop de                                        ; $4fb7: $d1
    rst $38                                       ; $4fb8: $ff

jr_07f_4fb9:
    nop                                           ; $4fb9: $00
    db $ed                                        ; $4fba: $ed
    db $ec                                        ; $4fbb: $ec
    ld [bc], a                                    ; $4fbc: $02
    inc bc                                        ; $4fbd: $03
    ldh a, [$ef]                                  ; $4fbe: $f0 $ef
    dec b                                         ; $4fc0: $05
    ld b, $fe                                     ; $4fc1: $06 $fe
    rlca                                          ; $4fc3: $07
    ld [$8e09], sp                                ; $4fc4: $08 $09 $8e
    add [hl]                                      ; $4fc7: $86
    ld bc, $a304                                  ; $4fc8: $01 $04 $a3
    and [hl]                                      ; $4fcb: $a6
    ld b, $04                                     ; $4fcc: $06 $04
    and [hl]                                      ; $4fce: $a6
    and [hl]                                      ; $4fcf: $a6
    ld bc, $8304                                  ; $4fd0: $01 $04 $83
    add e                                         ; $4fd3: $83
    ld bc, HeaderLogo                             ; $4fd4: $01 $04 $01
    jr c, jr_07f_4faa                             ; $4fd7: $38 $d1

    add hl, sp                                    ; $4fd9: $39
    inc b                                         ; $4fda: $04
    ld a, [hl-]                                   ; $4fdb: $3a
    dec sp                                        ; $4fdc: $3b
    inc a                                         ; $4fdd: $3c
    pop de                                        ; $4fde: $d1
    ld a, $3f                                     ; $4fdf: $3e $3f
    ld b, b                                       ; $4fe1: $40
    ld a, [bc]                                    ; $4fe2: $0a
    ld b, d                                       ; $4fe3: $42
    ld b, e                                       ; $4fe4: $43
    ld b, h                                       ; $4fe5: $44
    ld bc, $0101                                  ; $4fe6: $01 $01 $01
    ld bc, $0101                                  ; $4fe9: $01 $01 $01
    ld bc, $0101                                  ; $4fec: $01 $01 $01
    ld bc, $0101                                  ; $4fef: $01 $01 $01
    ld bc, $0101                                  ; $4ff2: $01 $01 $01
    ld bc, $d1d1                                  ; $4ff5: $01 $d1 $d1
    pop de                                        ; $4ff8: $d1
    sbc $d1                                       ; $4ff9: $de $d1
    pop de                                        ; $4ffb: $d1
    pop de                                        ; $4ffc: $d1
    db $ec                                        ; $4ffd: $ec
    pop de                                        ; $4ffe: $d1
    pop de                                        ; $4fff: $d1
    pop de                                        ; $5000: $d1
    rst $28                                       ; $5001: $ef
    pop de                                        ; $5002: $d1
    pop de                                        ; $5003: $d1
    pop de                                        ; $5004: $d1
    ld a, [c]                                     ; $5005: $f2
    inc bc                                        ; $5006: $03
    inc bc                                        ; $5007: $03
    inc bc                                        ; $5008: $03
    add [hl]                                      ; $5009: $86
    inc bc                                        ; $500a: $03
    inc bc                                        ; $500b: $03
    inc bc                                        ; $500c: $03
    add [hl]                                      ; $500d: $86
    inc bc                                        ; $500e: $03
    inc bc                                        ; $500f: $03
    inc bc                                        ; $5010: $03
    add e                                         ; $5011: $83
    inc bc                                        ; $5012: $03
    inc bc                                        ; $5013: $03
    inc bc                                        ; $5014: $03
    add e                                         ; $5015: $83
    rst $18                                       ; $5016: $df
    ld [c], a                                     ; $5017: $e2
    push de                                       ; $5018: $d5
    pop hl                                        ; $5019: $e1
    db $ed                                        ; $501a: $ed
    push hl                                       ; $501b: $e5
    reti                                          ; $501c: $d9


    ld c, $f0                                     ; $501d: $0e $f0
    call c, Call_000_110b                         ; $501f: $dc $0b $11
    di                                            ; $5022: $f3
    call nc, $2827                                ; $5023: $d4 $27 $28
    add e                                         ; $5026: $83
    ld [bc], a                                    ; $5027: $02
    dec b                                         ; $5028: $05
    ld [bc], a                                    ; $5029: $02
    add e                                         ; $502a: $83
    dec b                                         ; $502b: $05
    ld [bc], a                                    ; $502c: $02
    add e                                         ; $502d: $83
    add [hl]                                      ; $502e: $86
    ld [bc], a                                    ; $502f: $02
    ld [bc], a                                    ; $5030: $02
    ld [bc], a                                    ; $5031: $02
    add [hl]                                      ; $5032: $86
    ld [bc], a                                    ; $5033: $02
    ld [bc], a                                    ; $5034: $02
    ld [bc], a                                    ; $5035: $02
    rst $30                                       ; $5036: $f7
    or $12                                        ; $5037: $f6 $12
    inc de                                        ; $5039: $13
    rrca                                          ; $503a: $0f
    dec d                                         ; $503b: $15
    ld d, $17                                     ; $503c: $16 $17
    db $10                                        ; $503e: $10
    ld h, $1a                                     ; $503f: $26 $1a
    dec de                                        ; $5041: $1b
    call nc, $1e1d                                ; $5042: $d4 $1d $1e
    rra                                           ; $5045: $1f
    and e                                         ; $5046: $a3
    and e                                         ; $5047: $a3
    ld bc, $8304                                  ; $5048: $01 $04 $83
    add e                                         ; $504b: $83
    ld bc, $8304                                  ; $504c: $01 $04 $83

Jump_07f_504f:
    adc e                                         ; $504f: $8b
    ld bc, $0204                                  ; $5050: $01 $04 $02
    add e                                         ; $5053: $83
    ld bc, $1404                                  ; $5054: $01 $04 $14
    ld d, h                                       ; $5057: $54
    ld d, l                                       ; $5058: $55
    ld d, [hl]                                    ; $5059: $56
    jr jr_07f_50b4                                ; $505a: $18 $58

    ld e, c                                       ; $505c: $59
    ld e, d                                       ; $505d: $5a
    inc e                                         ; $505e: $1c
    ld e, h                                       ; $505f: $5c
    ld e, l                                       ; $5060: $5d
    ld e, [hl]                                    ; $5061: $5e
    jr nz, jr_07f_50c4                            ; $5062: $20 $60

    ld h, c                                       ; $5064: $61
    ld h, d                                       ; $5065: $62
    ld bc, $0101                                  ; $5066: $01 $01 $01
    ld bc, $0101                                  ; $5069: $01 $01 $01
    ld bc, $0101                                  ; $506c: $01 $01 $01
    ld bc, $0101                                  ; $506f: $01 $01 $01
    ld bc, $0101                                  ; $5072: $01 $01 $01
    ld bc, $d1d1                                  ; $5075: $01 $d1 $d1
    pop de                                        ; $5078: $d1
    daa                                           ; $5079: $27
    pop de                                        ; $507a: $d1
    pop de                                        ; $507b: $d1
    pop de                                        ; $507c: $d1
    pop de                                        ; $507d: $d1
    pop de                                        ; $507e: $d1
    pop de                                        ; $507f: $d1
    pop de                                        ; $5080: $d1
    pop de                                        ; $5081: $d1
    pop de                                        ; $5082: $d1
    pop de                                        ; $5083: $d1
    pop de                                        ; $5084: $d1
    pop de                                        ; $5085: $d1
    inc bc                                        ; $5086: $03
    inc bc                                        ; $5087: $03
    inc bc                                        ; $5088: $03
    adc e                                         ; $5089: $8b
    inc bc                                        ; $508a: $03
    inc bc                                        ; $508b: $03
    inc bc                                        ; $508c: $03
    add e                                         ; $508d: $83
    inc bc                                        ; $508e: $03
    inc bc                                        ; $508f: $03
    inc bc                                        ; $5090: $03
    inc bc                                        ; $5091: $03
    inc bc                                        ; $5092: $03
    inc bc                                        ; $5093: $03
    inc bc                                        ; $5094: $03
    inc bc                                        ; $5095: $03
    jr z, jr_07f_50c1                             ; $5096: $28 $29

    reti                                          ; $5098: $d9


    sub l                                         ; $5099: $95
    ld a, [hl+]                                   ; $509a: $2a
    dec hl                                        ; $509b: $2b
    inc l                                         ; $509c: $2c
    sub a                                         ; $509d: $97
    pop de                                        ; $509e: $d1
    rst $28                                       ; $509f: $ef
    ldh a, [$e1]                                  ; $50a0: $f0 $e1
    pop de                                        ; $50a2: $d1
    ld a, [c]                                     ; $50a3: $f2
    di                                            ; $50a4: $f3
    ld b, $8e                                     ; $50a5: $06 $8e
    adc e                                         ; $50a7: $8b
    ld [bc], a                                    ; $50a8: $02
    dec c                                         ; $50a9: $0d
    adc [hl]                                      ; $50aa: $8e
    adc [hl]                                      ; $50ab: $8e
    adc [hl]                                      ; $50ac: $8e
    dec c                                         ; $50ad: $0d
    inc bc                                        ; $50ae: $03
    add e                                         ; $50af: $83
    add e                                         ; $50b0: $83
    ld [bc], a                                    ; $50b1: $02
    inc bc                                        ; $50b2: $03
    add [hl]                                      ; $50b3: $86

jr_07f_50b4:
    add [hl]                                      ; $50b4: $86
    ld a, [bc]                                    ; $50b5: $0a
    inc c                                         ; $50b6: $0c
    reti                                          ; $50b7: $d9


    add hl, hl                                    ; $50b8: $29
    ld a, [hl+]                                   ; $50b9: $2a
    call c, Call_000_2d2c                         ; $50ba: $dc $2c $2d
    ld l, $f4                                     ; $50bd: $2e $f4
    jr nc, jr_07f_50f2                            ; $50bf: $30 $31

jr_07f_50c1:
    ld [hl-], a                                   ; $50c1: $32
    ld hl, sp+$34                                 ; $50c2: $f8 $34

jr_07f_50c4:
    dec [hl]                                      ; $50c4: $35
    ld [hl], $02                                  ; $50c5: $36 $02
    ld [bc], a                                    ; $50c7: $02
    ld bc, $0204                                  ; $50c8: $01 $04 $02
    add e                                         ; $50cb: $83
    ld bc, $0504                                  ; $50cc: $01 $04 $05
    ld [bc], a                                    ; $50cf: $02
    ld bc, $0504                                  ; $50d0: $01 $04 $05
    ld [bc], a                                    ; $50d3: $02
    ld bc, $2b04                                  ; $50d4: $01 $04 $2b
    ld [hl], h                                    ; $50d7: $74
    ld [hl], l                                    ; $50d8: $75
    halt                                          ; $50d9: $76
    cpl                                           ; $50da: $2f
    ld a, b                                       ; $50db: $78
    ld a, c                                       ; $50dc: $79
    ld a, d                                       ; $50dd: $7a
    inc sp                                        ; $50de: $33
    ld a, h                                       ; $50df: $7c
    ld a, l                                       ; $50e0: $7d
    ld a, [hl]                                    ; $50e1: $7e
    scf                                           ; $50e2: $37
    add b                                         ; $50e3: $80
    add c                                         ; $50e4: $81
    add d                                         ; $50e5: $82
    ld bc, $0101                                  ; $50e6: $01 $01 $01
    ld bc, $0101                                  ; $50e9: $01 $01 $01
    ld bc, $0101                                  ; $50ec: $01 $01 $01
    ld bc, $0101                                  ; $50ef: $01 $01 $01

jr_07f_50f2:
    ld bc, $0909                                  ; $50f2: $01 $09 $09
    add hl, bc                                    ; $50f5: $09
    pop de                                        ; $50f6: $d1
    or $f7                                        ; $50f7: $f6 $f7
    ld h, $d1                                     ; $50f9: $26 $d1
    jp nc, $e1d3                                  ; $50fb: $d2 $d3 $e1

    pop de                                        ; $50fe: $d1
    sub $d7                                       ; $50ff: $d6 $d7
    sub l                                         ; $5101: $95
    pop de                                        ; $5102: $d1
    jp c, Jump_000_11db                           ; $5103: $da $db $11

    inc bc                                        ; $5106: $03
    add [hl]                                      ; $5107: $86
    add [hl]                                      ; $5108: $86
    ld [bc], a                                    ; $5109: $02
    ld b, $83                                     ; $510a: $06 $83
    add [hl]                                      ; $510c: $86
    ld [bc], a                                    ; $510d: $02
    ld b, $a6                                     ; $510e: $06 $a6
    and [hl]                                      ; $5110: $a6
    dec c                                         ; $5111: $0d
    ld b, $86                                     ; $5112: $06 $86
    add e                                         ; $5114: $83
    dec b                                         ; $5115: $05
    ld [hl+], a                                   ; $5116: $22
    sbc b                                         ; $5117: $98
    sbc c                                         ; $5118: $99
    sbc d                                         ; $5119: $9a
    inc hl                                        ; $511a: $23
    push de                                       ; $511b: $d5
    pop hl                                        ; $511c: $e1
    call nc, $d9d8                                ; $511d: $d4 $d8 $d9
    ld sp, hl                                     ; $5120: $f9
    ld a, [$f1dc]                                 ; $5121: $fa $dc $f1
    ld de, $0596                                  ; $5124: $11 $96 $05
    ld a, [bc]                                    ; $5127: $0a
    ld a, [bc]                                    ; $5128: $0a
    ld a, [bc]                                    ; $5129: $0a
    dec b                                         ; $512a: $05
    ld [bc], a                                    ; $512b: $02
    ld [bc], a                                    ; $512c: $02
    dec b                                         ; $512d: $05
    ld [bc], a                                    ; $512e: $02
    dec b                                         ; $512f: $05
    dec b                                         ; $5130: $05
    ld [bc], a                                    ; $5131: $02
    ld [bc], a                                    ; $5132: $02
    ld [bc], a                                    ; $5133: $02
    ld [bc], a                                    ; $5134: $02
    ld a, [bc]                                    ; $5135: $0a
    sbc e                                         ; $5136: $9b
    inc bc                                        ; $5137: $03
    inc b                                         ; $5138: $04
    dec b                                         ; $5139: $05
    daa                                           ; $513a: $27
    jr z, jr_07f_5160                             ; $513b: $28 $23

    ldh [$94], a                                  ; $513d: $e0 $94
    sub l                                         ; $513f: $95
    inc c                                         ; $5140: $0c
    xor $fc                                       ; $5141: $ee $fc
    sub a                                         ; $5143: $97
    dec c                                         ; $5144: $0d
    pop af                                        ; $5145: $f1
    ld a, [bc]                                    ; $5146: $0a
    ld a, [bc]                                    ; $5147: $0a
    ld a, [bc]                                    ; $5148: $0a

jr_07f_5149:
    ld a, [bc]                                    ; $5149: $0a
    dec b                                         ; $514a: $05
    dec b                                         ; $514b: $05
    dec b                                         ; $514c: $05
    ld [bc], a                                    ; $514d: $02
    ld a, [bc]                                    ; $514e: $0a
    ld a, [bc]                                    ; $514f: $0a
    ld [bc], a                                    ; $5150: $02
    ld [bc], a                                    ; $5151: $02
    ld [bc], a                                    ; $5152: $02
    ld a, [bc]                                    ; $5153: $0a
    dec b                                         ; $5154: $05
    dec b                                         ; $5155: $05
    pop de                                        ; $5156: $d1
    ld b, [hl]                                    ; $5157: $46
    ld b, a                                       ; $5158: $47
    ld c, b                                       ; $5159: $48
    dec a                                         ; $515a: $3d
    ld c, c                                       ; $515b: $49
    ld c, d                                       ; $515c: $4a
    ld c, e                                       ; $515d: $4b
    ld b, c                                       ; $515e: $41
    ld c, h                                       ; $515f: $4c

jr_07f_5160:
    ld c, l                                       ; $5160: $4d
    ld c, [hl]                                    ; $5161: $4e
    ld b, l                                       ; $5162: $45
    ld d, b                                       ; $5163: $50
    ld d, c                                       ; $5164: $51
    ld d, d                                       ; $5165: $52
    ld bc, $0101                                  ; $5166: $01 $01 $01
    inc b                                         ; $5169: $04
    ld bc, $0101                                  ; $516a: $01 $01 $01
    inc b                                         ; $516d: $04
    ld bc, $0101                                  ; $516e: $01 $01 $01
    inc b                                         ; $5171: $04
    ld bc, $0101                                  ; $5172: $01 $01 $01
    inc b                                         ; $5175: $04
    jr c, jr_07f_5149                             ; $5176: $38 $d1

    add hl, sp                                    ; $5178: $39
    pop de                                        ; $5179: $d1
    ld a, [hl-]                                   ; $517a: $3a
    dec sp                                        ; $517b: $3b
    inc a                                         ; $517c: $3c
    dec a                                         ; $517d: $3d
    ld a, $3f                                     ; $517e: $3e $3f
    ld b, b                                       ; $5180: $40
    ld b, c                                       ; $5181: $41
    ld b, d                                       ; $5182: $42
    ld b, e                                       ; $5183: $43
    ld b, h                                       ; $5184: $44
    ld b, l                                       ; $5185: $45
    ld bc, $0101                                  ; $5186: $01 $01 $01
    ld bc, $0101                                  ; $5189: $01 $01 $01
    ld bc, $0101                                  ; $518c: $01 $01 $01
    ld bc, $0101                                  ; $518f: $01 $01 $01
    ld bc, $0101                                  ; $5192: $01 $01 $01
    ld bc, $6457                                  ; $5195: $01 $57 $64
    ld h, l                                       ; $5198: $65
    ld h, [hl]                                    ; $5199: $66
    ld e, e                                       ; $519a: $5b
    ld l, b                                       ; $519b: $68
    ld l, c                                       ; $519c: $69
    ld l, d                                       ; $519d: $6a
    ld e, a                                       ; $519e: $5f
    ld l, h                                       ; $519f: $6c
    ld l, l                                       ; $51a0: $6d
    ld l, [hl]                                    ; $51a1: $6e
    ld h, e                                       ; $51a2: $63
    ld [hl], b                                    ; $51a3: $70
    ld [hl], c                                    ; $51a4: $71
    ld [hl], d                                    ; $51a5: $72
    ld bc, $0101                                  ; $51a6: $01 $01 $01
    inc b                                         ; $51a9: $04
    ld bc, $0101                                  ; $51aa: $01 $01 $01
    inc b                                         ; $51ad: $04
    ld bc, $0101                                  ; $51ae: $01 $01 $01
    inc b                                         ; $51b1: $04
    ld bc, $0101                                  ; $51b2: $01 $01 $01
    inc b                                         ; $51b5: $04
    ld d, h                                       ; $51b6: $54
    ld d, l                                       ; $51b7: $55
    ld d, [hl]                                    ; $51b8: $56
    ld d, a                                       ; $51b9: $57
    ld e, b                                       ; $51ba: $58
    ld e, c                                       ; $51bb: $59
    ld e, d                                       ; $51bc: $5a
    ld e, e                                       ; $51bd: $5b
    ld e, h                                       ; $51be: $5c
    ld e, l                                       ; $51bf: $5d
    ld e, [hl]                                    ; $51c0: $5e
    ld e, a                                       ; $51c1: $5f
    ld h, b                                       ; $51c2: $60
    ld h, c                                       ; $51c3: $61
    ld h, d                                       ; $51c4: $62
    ld h, e                                       ; $51c5: $63
    ld bc, $0101                                  ; $51c6: $01 $01 $01
    ld bc, $0101                                  ; $51c9: $01 $01 $01
    ld bc, $0101                                  ; $51cc: $01 $01 $01
    ld bc, $0101                                  ; $51cf: $01 $01 $01
    ld bc, $0101                                  ; $51d2: $01 $01 $01
    ld bc, $8477                                  ; $51d5: $01 $77 $84
    add l                                         ; $51d8: $85
    add [hl]                                      ; $51d9: $86
    ld a, e                                       ; $51da: $7b
    adc b                                         ; $51db: $88
    adc c                                         ; $51dc: $89
    adc d                                         ; $51dd: $8a
    ld a, a                                       ; $51de: $7f
    adc h                                         ; $51df: $8c
    adc l                                         ; $51e0: $8d
    adc [hl]                                      ; $51e1: $8e
    add e                                         ; $51e2: $83
    sub b                                         ; $51e3: $90
    sub c                                         ; $51e4: $91
    sub d                                         ; $51e5: $92
    ld bc, $0909                                  ; $51e6: $01 $09 $09
    inc c                                         ; $51e9: $0c
    ld bc, $0909                                  ; $51ea: $01 $09 $09
    inc c                                         ; $51ed: $0c
    ld bc, $0909                                  ; $51ee: $01 $09 $09
    inc c                                         ; $51f1: $0c
    add hl, bc                                    ; $51f2: $09
    add hl, bc                                    ; $51f3: $09
    add hl, bc                                    ; $51f4: $09
    add hl, bc                                    ; $51f5: $09
    ld [hl], h                                    ; $51f6: $74
    ld [hl], l                                    ; $51f7: $75
    halt                                          ; $51f8: $76
    ld [hl], a                                    ; $51f9: $77
    ld a, b                                       ; $51fa: $78
    ld a, c                                       ; $51fb: $79
    ld a, d                                       ; $51fc: $7a
    ld a, e                                       ; $51fd: $7b
    ld a, h                                       ; $51fe: $7c
    ld a, l                                       ; $51ff: $7d
    ld a, [hl]                                    ; $5200: $7e
    ld a, a                                       ; $5201: $7f
    add b                                         ; $5202: $80
    add c                                         ; $5203: $81
    add d                                         ; $5204: $82
    add e                                         ; $5205: $83
    ld bc, $0101                                  ; $5206: $01 $01 $01
    ld bc, $0101                                  ; $5209: $01 $01 $01
    ld bc, $0101                                  ; $520c: $01 $01 $01
    ld bc, $0101                                  ; $520f: $01 $01 $01
    add hl, bc                                    ; $5212: $09
    add hl, bc                                    ; $5213: $09
    add hl, bc                                    ; $5214: $09
    add hl, bc                                    ; $5215: $09
    sbc c                                         ; $5216: $99
    sbc d                                         ; $5217: $9a

jr_07f_5218:
    sbc e                                         ; $5218: $9b
    inc bc                                        ; $5219: $03
    ld [$27eb], a                                 ; $521a: $ea $eb $27
    jr z, jr_07f_5218                             ; $521d: $28 $f9

    ld a, [$fdd9]                                 ; $521f: $fa $d9 $fd
    ei                                            ; $5222: $fb
    sub [hl]                                      ; $5223: $96
    db $fc                                        ; $5224: $fc
    sub a                                         ; $5225: $97
    ld a, [bc]                                    ; $5226: $0a
    ld a, [bc]                                    ; $5227: $0a
    ld a, [bc]                                    ; $5228: $0a
    ld a, [bc]                                    ; $5229: $0a
    ld [bc], a                                    ; $522a: $02
    dec b                                         ; $522b: $05
    dec b                                         ; $522c: $05
    ld [bc], a                                    ; $522d: $02
    ld [bc], a                                    ; $522e: $02
    ld [bc], a                                    ; $522f: $02
    ld [bc], a                                    ; $5230: $02
    dec b                                         ; $5231: $05
    ld [bc], a                                    ; $5232: $02
    dec c                                         ; $5233: $0d
    dec b                                         ; $5234: $05
    ld a, [bc]                                    ; $5235: $0a
    inc b                                         ; $5236: $04
    dec b                                         ; $5237: $05
    sbc c                                         ; $5238: $99
    sbc d                                         ; $5239: $9a
    inc hl                                        ; $523a: $23
    ldh [$e1], a                                  ; $523b: $e0 $e1
    call nc, $d9d8                                ; $523d: $d4 $d8 $d9
    ld sp, hl                                     ; $5240: $f9
    ld a, [$f10d]                                 ; $5241: $fa $0d $f1
    ei                                            ; $5244: $fb
    sub [hl]                                      ; $5245: $96
    ld a, [bc]                                    ; $5246: $0a
    ld a, [bc]                                    ; $5247: $0a
    ld a, [bc]                                    ; $5248: $0a
    ld a, [bc]                                    ; $5249: $0a
    dec b                                         ; $524a: $05
    ld [bc], a                                    ; $524b: $02
    dec b                                         ; $524c: $05
    dec b                                         ; $524d: $05
    ld [bc], a                                    ; $524e: $02
    ld [bc], a                                    ; $524f: $02
    dec b                                         ; $5250: $05
    ld [bc], a                                    ; $5251: $02
    ld [bc], a                                    ; $5252: $02
    ld [bc], a                                    ; $5253: $02
    dec b                                         ; $5254: $05
    dec c                                         ; $5255: $0d
    sbc e                                         ; $5256: $9b
    inc bc                                        ; $5257: $03
    inc b                                         ; $5258: $04
    dec b                                         ; $5259: $05
    push de                                       ; $525a: $d5
    pop hl                                        ; $525b: $e1
    inc hl                                        ; $525c: $23
    ldh [$94], a                                  ; $525d: $e0 $94
    sub l                                         ; $525f: $95
    inc c                                         ; $5260: $0c
    xor $fc                                       ; $5261: $ee $fc
    sub a                                         ; $5263: $97
    call c, Call_000_0af1                         ; $5264: $dc $f1 $0a
    ld a, [bc]                                    ; $5267: $0a
    ld a, [bc]                                    ; $5268: $0a
    ld a, [bc]                                    ; $5269: $0a
    ld [bc], a                                    ; $526a: $02
    dec b                                         ; $526b: $05
    ld [bc], a                                    ; $526c: $02
    dec b                                         ; $526d: $05
    dec c                                         ; $526e: $0d
    dec c                                         ; $526f: $0d
    dec b                                         ; $5270: $05
    ld [bc], a                                    ; $5271: $02
    dec b                                         ; $5272: $05
    ld a, [bc]                                    ; $5273: $0a
    ld [bc], a                                    ; $5274: $02
    dec b                                         ; $5275: $05
    sbc c                                         ; $5276: $99
    sbc d                                         ; $5277: $9a
    sbc e                                         ; $5278: $9b
    inc bc                                        ; $5279: $03
    ld [$27eb], a                                 ; $527a: $ea $eb $27
    pop hl                                        ; $527d: $e1
    db $fd                                        ; $527e: $fd
    ld a, [$9594]                                 ; $527f: $fa $94 $95
    ei                                            ; $5282: $fb
    call c, $970b                                 ; $5283: $dc $0b $97
    ld a, [bc]                                    ; $5286: $0a
    ld a, [bc]                                    ; $5287: $0a
    ld a, [bc]                                    ; $5288: $0a
    ld a, [bc]                                    ; $5289: $0a
    ld [bc], a                                    ; $528a: $02
    dec b                                         ; $528b: $05
    dec b                                         ; $528c: $05
    ld [bc], a                                    ; $528d: $02
    ld [bc], a                                    ; $528e: $02
    ld [bc], a                                    ; $528f: $02
    ld a, [bc]                                    ; $5290: $0a
    ld a, [bc]                                    ; $5291: $0a
    ld [bc], a                                    ; $5292: $02
    ld [bc], a                                    ; $5293: $02
    ld [bc], a                                    ; $5294: $02
    ld a, [bc]                                    ; $5295: $0a
    inc b                                         ; $5296: $04
    dec b                                         ; $5297: $05
    sbc c                                         ; $5298: $99
    sbc d                                         ; $5299: $9a
    inc hl                                        ; $529a: $23
    ldh [$ea], a                                  ; $529b: $e0 $ea
    db $eb                                        ; $529d: $eb
    inc c                                         ; $529e: $0c
    xor $f9                                       ; $529f: $ee $f9
    ld a, [$f10d]                                 ; $52a1: $fa $0d $f1
    ld de, $0adc                                  ; $52a4: $11 $dc $0a
    ld a, [bc]                                    ; $52a7: $0a
    ld a, [bc]                                    ; $52a8: $0a
    ld a, [bc]                                    ; $52a9: $0a
    ld [bc], a                                    ; $52aa: $02
    ld [bc], a                                    ; $52ab: $02
    dec b                                         ; $52ac: $05
    dec b                                         ; $52ad: $05
    ld [bc], a                                    ; $52ae: $02
    dec b                                         ; $52af: $05
    dec b                                         ; $52b0: $05
    ld [bc], a                                    ; $52b1: $02
    ld [bc], a                                    ; $52b2: $02
    ld [bc], a                                    ; $52b3: $02
    ld [bc], a                                    ; $52b4: $02
    ld [bc], a                                    ; $52b5: $02
    sbc e                                         ; $52b6: $9b
    inc bc                                        ; $52b7: $03
    inc b                                         ; $52b8: $04
    dec b                                         ; $52b9: $05
    daa                                           ; $52ba: $27
    jr z, @+$25                                   ; $52bb: $28 $23

    ldh [$94], a                                  ; $52bd: $e0 $94
    sub l                                         ; $52bf: $95
    inc c                                         ; $52c0: $0c
    xor $0b                                       ; $52c1: $ee $0b
    sub a                                         ; $52c3: $97
    dec c                                         ; $52c4: $0d
    pop af                                        ; $52c5: $f1
    ld a, [bc]                                    ; $52c6: $0a
    ld a, [bc]                                    ; $52c7: $0a
    ld a, [bc]                                    ; $52c8: $0a
    ld a, [bc]                                    ; $52c9: $0a
    dec b                                         ; $52ca: $05
    ld [bc], a                                    ; $52cb: $02
    dec b                                         ; $52cc: $05
    ld [bc], a                                    ; $52cd: $02
    ld a, [bc]                                    ; $52ce: $0a
    ld a, [bc]                                    ; $52cf: $0a
    ld [bc], a                                    ; $52d0: $02
    dec b                                         ; $52d1: $05
    ld [bc], a                                    ; $52d2: $02
    ld a, [bc]                                    ; $52d3: $0a
    ld [bc], a                                    ; $52d4: $02
    dec b                                         ; $52d5: $05
    sbc c                                         ; $52d6: $99
    sbc d                                         ; $52d7: $9a
    sbc e                                         ; $52d8: $9b
    inc bc                                        ; $52d9: $03
    ld [$d5eb], a                                 ; $52da: $ea $eb $d5
    pop hl                                        ; $52dd: $e1
    ld sp, hl                                     ; $52de: $f9
    ld a, [$9594]                                 ; $52df: $fa $94 $95
    ei                                            ; $52e2: $fb
    call c, Call_000_110b                         ; $52e3: $dc $0b $11
    ld a, [bc]                                    ; $52e6: $0a
    ld a, [bc]                                    ; $52e7: $0a
    ld a, [bc]                                    ; $52e8: $0a
    ld a, [bc]                                    ; $52e9: $0a
    dec b                                         ; $52ea: $05
    dec b                                         ; $52eb: $05
    ld [bc], a                                    ; $52ec: $02
    ld [bc], a                                    ; $52ed: $02
    ld [bc], a                                    ; $52ee: $02
    ld [bc], a                                    ; $52ef: $02
    ld a, [bc]                                    ; $52f0: $0a
    ld a, [bc]                                    ; $52f1: $0a
    dec b                                         ; $52f2: $05
    dec b                                         ; $52f3: $05
    dec b                                         ; $52f4: $05
    dec b                                         ; $52f5: $05
    inc b                                         ; $52f6: $04
    dec b                                         ; $52f7: $05
    sbc c                                         ; $52f8: $99
    sbc d                                         ; $52f9: $9a
    call nc, Call_000_2e2d                        ; $52fa: $d4 $2d $2e
    cpl                                           ; $52fd: $2f
    inc c                                         ; $52fe: $0c
    xor $f9                                       ; $52ff: $ee $f9
    ret c                                         ; $5301: $d8

    call c, Call_000_110b                         ; $5302: $dc $0b $11
    call c, $0a0a                                 ; $5305: $dc $0a $0a
    ld a, [bc]                                    ; $5308: $0a
    ld a, [bc]                                    ; $5309: $0a
    ld [bc], a                                    ; $530a: $02
    adc e                                         ; $530b: $8b
    adc e                                         ; $530c: $8b
    adc e                                         ; $530d: $8b
    ld [bc], a                                    ; $530e: $02
    ld [bc], a                                    ; $530f: $02
    ld [bc], a                                    ; $5310: $02
    ld [bc], a                                    ; $5311: $02
    dec b                                         ; $5312: $05
    ld [bc], a                                    ; $5313: $02
    ld [bc], a                                    ; $5314: $02
    ld [bc], a                                    ; $5315: $02
    add hl, sp                                    ; $5316: $39
    pop de                                        ; $5317: $d1
    ld b, [hl]                                    ; $5318: $46
    ld b, a                                       ; $5319: $47
    inc a                                         ; $531a: $3c
    dec a                                         ; $531b: $3d
    ld c, c                                       ; $531c: $49
    ld c, d                                       ; $531d: $4a
    ld b, b                                       ; $531e: $40
    ld b, c                                       ; $531f: $41
    ld c, h                                       ; $5320: $4c
    ld c, l                                       ; $5321: $4d
    ld b, h                                       ; $5322: $44
    ld b, l                                       ; $5323: $45
    ld d, b                                       ; $5324: $50
    ld d, c                                       ; $5325: $51
    ld bc, $0401                                  ; $5326: $01 $01 $04
    ld bc, $0101                                  ; $5329: $01 $01 $01
    inc b                                         ; $532c: $04
    ld bc, $0101                                  ; $532d: $01 $01 $01
    inc b                                         ; $5330: $04
    ld bc, $0101                                  ; $5331: $01 $01 $01
    inc b                                         ; $5334: $04
    ld bc, $d148                                  ; $5335: $01 $48 $d1
    rst $38                                       ; $5338: $ff
    nop                                           ; $5339: $00
    ld c, e                                       ; $533a: $4b
    pop de                                        ; $533b: $d1
    ld [bc], a                                    ; $533c: $02
    inc bc                                        ; $533d: $03
    ld c, [hl]                                    ; $533e: $4e
    ld c, a                                       ; $533f: $4f
    dec b                                         ; $5340: $05
    ld b, $52                                     ; $5341: $06 $52
    ld d, e                                       ; $5343: $53
    ld [$0109], sp                                ; $5344: $08 $09 $01
    ld bc, $0101                                  ; $5347: $01 $01 $01
    ld bc, $0101                                  ; $534a: $01 $01 $01
    ld bc, $0101                                  ; $534d: $01 $01 $01
    ld bc, $0101                                  ; $5350: $01 $01 $01
    ld bc, $0101                                  ; $5353: $01 $01 $01
    ld bc, $d138                                  ; $5356: $01 $38 $d1
    add hl, sp                                    ; $5359: $39
    inc b                                         ; $535a: $04
    ld a, [hl-]                                   ; $535b: $3a
    dec sp                                        ; $535c: $3b
    inc a                                         ; $535d: $3c
    pop de                                        ; $535e: $d1
    ld a, $3f                                     ; $535f: $3e $3f
    ld b, b                                       ; $5361: $40
    ld a, [bc]                                    ; $5362: $0a
    ld b, d                                       ; $5363: $42
    ld b, e                                       ; $5364: $43
    ld b, h                                       ; $5365: $44
    inc b                                         ; $5366: $04
    inc b                                         ; $5367: $04
    inc b                                         ; $5368: $04
    ld bc, $0404                                  ; $5369: $01 $04 $04
    inc b                                         ; $536c: $04
    ld bc, $0401                                  ; $536d: $01 $01 $04
    inc b                                         ; $5370: $04
    ld bc, $0401                                  ; $5371: $01 $01 $04
    inc b                                         ; $5374: $04
    ld bc, $5756                                  ; $5375: $01 $56 $57
    ld h, h                                       ; $5378: $64
    ld h, l                                       ; $5379: $65
    ld e, d                                       ; $537a: $5a
    ld e, e                                       ; $537b: $5b
    ld l, b                                       ; $537c: $68
    ld l, c                                       ; $537d: $69
    ld e, [hl]                                    ; $537e: $5e
    ld e, a                                       ; $537f: $5f
    ld l, h                                       ; $5380: $6c
    ld l, l                                       ; $5381: $6d
    ld h, d                                       ; $5382: $62
    ld h, e                                       ; $5383: $63
    ld [hl], b                                    ; $5384: $70
    ld [hl], c                                    ; $5385: $71
    ld bc, $0401                                  ; $5386: $01 $01 $04
    ld bc, $0101                                  ; $5389: $01 $01 $01
    inc b                                         ; $538c: $04
    ld bc, $0101                                  ; $538d: $01 $01 $01
    inc b                                         ; $5390: $04
    ld bc, $0101                                  ; $5391: $01 $01 $01
    inc b                                         ; $5394: $04
    ld bc, $6766                                  ; $5395: $01 $66 $67
    ld [de], a                                    ; $5398: $12
    inc de                                        ; $5399: $13
    ld l, d                                       ; $539a: $6a
    ld l, e                                       ; $539b: $6b
    ld d, $17                                     ; $539c: $16 $17
    ld l, [hl]                                    ; $539e: $6e
    ld l, a                                       ; $539f: $6f
    ld a, [de]                                    ; $53a0: $1a
    dec de                                        ; $53a1: $1b
    ld [hl], d                                    ; $53a2: $72
    ld [hl], e                                    ; $53a3: $73
    ld e, $1f                                     ; $53a4: $1e $1f
    ld bc, $0101                                  ; $53a6: $01 $01 $01
    ld bc, $0101                                  ; $53a9: $01 $01 $01
    ld bc, $0101                                  ; $53ac: $01 $01 $01
    ld bc, $0101                                  ; $53af: $01 $01 $01
    ld bc, $0101                                  ; $53b2: $01 $01 $01
    ld bc, $7776                                  ; $53b5: $01 $76 $77
    add h                                         ; $53b8: $84
    add l                                         ; $53b9: $85
    ld a, d                                       ; $53ba: $7a
    ld a, e                                       ; $53bb: $7b
    adc b                                         ; $53bc: $88
    adc c                                         ; $53bd: $89
    ld a, [hl]                                    ; $53be: $7e
    ld a, a                                       ; $53bf: $7f
    adc h                                         ; $53c0: $8c
    adc l                                         ; $53c1: $8d
    add d                                         ; $53c2: $82
    add e                                         ; $53c3: $83
    sub b                                         ; $53c4: $90
    sub c                                         ; $53c5: $91
    ld bc, $0c01                                  ; $53c6: $01 $01 $0c
    add hl, bc                                    ; $53c9: $09
    ld bc, $0901                                  ; $53ca: $01 $01 $09
    add hl, bc                                    ; $53cd: $09
    ld bc, $0901                                  ; $53ce: $01 $01 $09
    add hl, bc                                    ; $53d1: $09
    add hl, bc                                    ; $53d2: $09
    add hl, bc                                    ; $53d3: $09
    add hl, bc                                    ; $53d4: $09
    add hl, bc                                    ; $53d5: $09
    add [hl]                                      ; $53d6: $86
    add a                                         ; $53d7: $87
    add hl, hl                                    ; $53d8: $29
    ld a, [hl+]                                   ; $53d9: $2a
    adc d                                         ; $53da: $8a
    adc e                                         ; $53db: $8b
    dec l                                         ; $53dc: $2d
    ld l, $8e                                     ; $53dd: $2e $8e
    adc a                                         ; $53df: $8f
    ld sp, $9232                                  ; $53e0: $31 $32 $92
    sub e                                         ; $53e3: $93
    dec [hl]                                      ; $53e4: $35
    ld [hl], $09                                  ; $53e5: $36 $09
    add hl, bc                                    ; $53e7: $09
    ld bc, $0901                                  ; $53e8: $01 $01 $09
    add hl, bc                                    ; $53eb: $09
    ld bc, $0901                                  ; $53ec: $01 $01 $09
    add hl, bc                                    ; $53ef: $09
    ld bc, $0901                                  ; $53f0: $01 $01 $09
    add hl, bc                                    ; $53f3: $09
    ld bc, $9b01                                  ; $53f4: $01 $01 $9b
    inc bc                                        ; $53f7: $03
    inc b                                         ; $53f8: $04
    dec b                                         ; $53f9: $05
    jr nc, jr_07f_542d                            ; $53fa: $30 $31

    cp b                                          ; $53fc: $b8
    sbc a                                         ; $53fd: $9f
    reti                                          ; $53fe: $d9


    ld [hl-], a                                   ; $53ff: $32
    cp e                                          ; $5400: $bb
    cp h                                          ; $5401: $bc
    dec bc                                        ; $5402: $0b
    ld de, $c0bf                                  ; $5403: $11 $bf $c0
    ld a, [bc]                                    ; $5406: $0a
    ld a, [bc]                                    ; $5407: $0a
    ld a, [bc]                                    ; $5408: $0a
    ld a, [bc]                                    ; $5409: $0a
    adc e                                         ; $540a: $8b
    adc e                                         ; $540b: $8b
    adc e                                         ; $540c: $8b
    adc e                                         ; $540d: $8b
    ld [bc], a                                    ; $540e: $02
    adc e                                         ; $540f: $8b
    adc e                                         ; $5410: $8b
    adc [hl]                                      ; $5411: $8e
    ld [bc], a                                    ; $5412: $02
    ld [bc], a                                    ; $5413: $02
    adc e                                         ; $5414: $8b
    adc e                                         ; $5415: $8b
    sbc c                                         ; $5416: $99
    sbc d                                         ; $5417: $9a
    sbc e                                         ; $5418: $9b
    inc bc                                        ; $5419: $03
    and b                                         ; $541a: $a0
    and c                                         ; $541b: $a1
    xor d                                         ; $541c: $aa
    xor e                                         ; $541d: $ab
    and h                                         ; $541e: $a4
    and l                                         ; $541f: $a5
    xor [hl]                                      ; $5420: $ae
    xor a                                         ; $5421: $af
    xor b                                         ; $5422: $a8
    xor c                                         ; $5423: $a9
    or d                                          ; $5424: $b2
    or e                                          ; $5425: $b3
    ld a, [bc]                                    ; $5426: $0a
    ld a, [bc]                                    ; $5427: $0a
    ld a, [bc]                                    ; $5428: $0a
    ld a, [bc]                                    ; $5429: $0a
    adc e                                         ; $542a: $8b
    adc e                                         ; $542b: $8b
    adc e                                         ; $542c: $8b

jr_07f_542d:
    adc e                                         ; $542d: $8b
    adc e                                         ; $542e: $8b
    adc e                                         ; $542f: $8b
    adc e                                         ; $5430: $8b
    adc [hl]                                      ; $5431: $8e
    adc [hl]                                      ; $5432: $8e
    adc e                                         ; $5433: $8b
    adc [hl]                                      ; $5434: $8e
    adc e                                         ; $5435: $8b
    inc b                                         ; $5436: $04
    dec b                                         ; $5437: $05
    sbc c                                         ; $5438: $99
    sbc d                                         ; $5439: $9a
    xor h                                         ; $543a: $ac
    xor l                                         ; $543b: $ad
    or [hl]                                       ; $543c: $b6
    or a                                          ; $543d: $b7
    or b                                          ; $543e: $b0
    or c                                          ; $543f: $b1
    cp c                                          ; $5440: $b9
    cp d                                          ; $5441: $ba
    or h                                          ; $5442: $b4
    or l                                          ; $5443: $b5
    cp l                                          ; $5444: $bd
    cp [hl]                                       ; $5445: $be
    ld a, [bc]                                    ; $5446: $0a
    ld a, [bc]                                    ; $5447: $0a
    ld a, [bc]                                    ; $5448: $0a
    ld a, [bc]                                    ; $5449: $0a
    adc e                                         ; $544a: $8b
    adc e                                         ; $544b: $8b
    adc e                                         ; $544c: $8b
    adc e                                         ; $544d: $8b
    adc e                                         ; $544e: $8b
    adc e                                         ; $544f: $8b
    adc [hl]                                      ; $5450: $8e
    adc e                                         ; $5451: $8b
    adc [hl]                                      ; $5452: $8e
    adc [hl]                                      ; $5453: $8e
    adc e                                         ; $5454: $8b
    adc e                                         ; $5455: $8b
    add hl, sp                                    ; $5456: $39
    pop de                                        ; $5457: $d1
    ld b, [hl]                                    ; $5458: $46
    ld b, a                                       ; $5459: $47
    inc a                                         ; $545a: $3c
    dec a                                         ; $545b: $3d
    ld c, c                                       ; $545c: $49
    ld c, d                                       ; $545d: $4a
    ld b, b                                       ; $545e: $40
    ld b, c                                       ; $545f: $41
    ld c, h                                       ; $5460: $4c
    ld c, l                                       ; $5461: $4d
    ld b, h                                       ; $5462: $44
    ld b, l                                       ; $5463: $45
    ld d, b                                       ; $5464: $50
    ld d, c                                       ; $5465: $51
    inc b                                         ; $5466: $04
    ld bc, $0101                                  ; $5467: $01 $01 $01
    inc b                                         ; $546a: $04
    inc b                                         ; $546b: $04
    ld bc, $0401                                  ; $546c: $01 $01 $04
    inc b                                         ; $546f: $04
    ld bc, $0401                                  ; $5470: $01 $01 $04
    inc b                                         ; $5473: $04
    ld bc, $4801                                  ; $5474: $01 $01 $48
    pop de                                        ; $5477: $d1
    rst $38                                       ; $5478: $ff
    nop                                           ; $5479: $00
    ld c, e                                       ; $547a: $4b
    pop de                                        ; $547b: $d1
    ld [bc], a                                    ; $547c: $02
    inc bc                                        ; $547d: $03
    ld c, [hl]                                    ; $547e: $4e
    ld c, a                                       ; $547f: $4f
    dec b                                         ; $5480: $05
    ld b, $52                                     ; $5481: $06 $52
    ld d, e                                       ; $5483: $53
    ld [$0109], sp                                ; $5484: $08 $09 $01
    ld bc, $0401                                  ; $5487: $01 $01 $04
    ld bc, $0101                                  ; $548a: $01 $01 $01
    inc b                                         ; $548d: $04
    ld bc, $0101                                  ; $548e: $01 $01 $01
    inc b                                         ; $5491: $04
    ld bc, $0101                                  ; $5492: $01 $01 $01
    inc b                                         ; $5495: $04
    ld bc, $d138                                  ; $5496: $01 $38 $d1
    add hl, sp                                    ; $5499: $39
    inc b                                         ; $549a: $04
    ld a, [hl-]                                   ; $549b: $3a
    dec sp                                        ; $549c: $3b
    inc a                                         ; $549d: $3c
    pop de                                        ; $549e: $d1
    ld a, $3f                                     ; $549f: $3e $3f
    ld b, b                                       ; $54a1: $40
    ld a, [bc]                                    ; $54a2: $0a
    ld b, d                                       ; $54a3: $42
    ld b, e                                       ; $54a4: $43
    ld b, h                                       ; $54a5: $44
    ld bc, $0101                                  ; $54a6: $01 $01 $01
    inc b                                         ; $54a9: $04
    ld bc, $0101                                  ; $54aa: $01 $01 $01
    inc b                                         ; $54ad: $04
    ld bc, $0101                                  ; $54ae: $01 $01 $01
    inc b                                         ; $54b1: $04
    ld bc, $0101                                  ; $54b2: $01 $01 $01
    inc b                                         ; $54b5: $04
    ld d, [hl]                                    ; $54b6: $56
    ld d, a                                       ; $54b7: $57
    ld h, h                                       ; $54b8: $64
    ld h, l                                       ; $54b9: $65
    ld e, d                                       ; $54ba: $5a
    ld e, e                                       ; $54bb: $5b
    ld l, b                                       ; $54bc: $68
    ld l, c                                       ; $54bd: $69
    ld e, [hl]                                    ; $54be: $5e
    ld e, a                                       ; $54bf: $5f
    ld l, h                                       ; $54c0: $6c
    ld l, l                                       ; $54c1: $6d
    ld h, d                                       ; $54c2: $62
    ld h, e                                       ; $54c3: $63
    ld [hl], b                                    ; $54c4: $70
    ld [hl], c                                    ; $54c5: $71
    inc b                                         ; $54c6: $04
    inc b                                         ; $54c7: $04
    ld bc, $0401                                  ; $54c8: $01 $01 $04
    ld bc, $0101                                  ; $54cb: $01 $01 $01
    inc b                                         ; $54ce: $04
    ld bc, $0101                                  ; $54cf: $01 $01 $01
    inc b                                         ; $54d2: $04
    ld bc, $0101                                  ; $54d3: $01 $01 $01
    ld h, [hl]                                    ; $54d6: $66
    ld h, a                                       ; $54d7: $67
    ld [de], a                                    ; $54d8: $12
    inc de                                        ; $54d9: $13
    ld l, d                                       ; $54da: $6a
    ld l, e                                       ; $54db: $6b
    ld d, $17                                     ; $54dc: $16 $17
    ld l, [hl]                                    ; $54de: $6e
    ld l, a                                       ; $54df: $6f
    ld a, [de]                                    ; $54e0: $1a
    dec de                                        ; $54e1: $1b
    ld [hl], d                                    ; $54e2: $72
    ld [hl], e                                    ; $54e3: $73
    ld e, $1f                                     ; $54e4: $1e $1f
    ld bc, $0101                                  ; $54e6: $01 $01 $01
    inc b                                         ; $54e9: $04
    ld bc, $0101                                  ; $54ea: $01 $01 $01
    inc b                                         ; $54ed: $04
    ld bc, $0101                                  ; $54ee: $01 $01 $01
    inc b                                         ; $54f1: $04
    ld bc, $0101                                  ; $54f2: $01 $01 $01
    inc b                                         ; $54f5: $04
    inc d                                         ; $54f6: $14
    ld d, h                                       ; $54f7: $54
    ld d, l                                       ; $54f8: $55
    ld d, [hl]                                    ; $54f9: $56
    jr jr_07f_5554                                ; $54fa: $18 $58

    ld e, c                                       ; $54fc: $59
    ld e, d                                       ; $54fd: $5a
    inc e                                         ; $54fe: $1c
    ld e, h                                       ; $54ff: $5c
    ld e, l                                       ; $5500: $5d
    ld e, [hl]                                    ; $5501: $5e
    jr nz, jr_07f_5564                            ; $5502: $20 $60

    ld h, c                                       ; $5504: $61
    ld h, d                                       ; $5505: $62
    ld bc, $0101                                  ; $5506: $01 $01 $01
    inc b                                         ; $5509: $04
    ld bc, $0101                                  ; $550a: $01 $01 $01
    inc b                                         ; $550d: $04
    ld bc, $0101                                  ; $550e: $01 $01 $01
    inc b                                         ; $5511: $04
    ld bc, $0101                                  ; $5512: $01 $01 $01
    inc b                                         ; $5515: $04
    ld a, [hl+]                                   ; $5516: $2a
    dec hl                                        ; $5517: $2b
    ld [hl], h                                    ; $5518: $74
    ld [hl], l                                    ; $5519: $75
    ld l, $2f                                     ; $551a: $2e $2f
    ld a, b                                       ; $551c: $78
    ld a, c                                       ; $551d: $79
    ld [hl-], a                                   ; $551e: $32
    inc sp                                        ; $551f: $33
    ld a, h                                       ; $5520: $7c
    ld a, l                                       ; $5521: $7d
    inc sp                                        ; $5522: $33
    scf                                           ; $5523: $37
    add b                                         ; $5524: $80
    add c                                         ; $5525: $81
    ld bc, $0101                                  ; $5526: $01 $01 $01
    ld bc, $0101                                  ; $5529: $01 $01 $01
    ld bc, $0101                                  ; $552c: $01 $01 $01
    ld bc, $0101                                  ; $552f: $01 $01 $01
    add hl, bc                                    ; $5532: $09
    ld bc, $0909                                  ; $5533: $01 $09 $09
    add [hl]                                      ; $5536: $86
    add a                                         ; $5537: $87
    add hl, hl                                    ; $5538: $29
    ld a, [hl+]                                   ; $5539: $2a
    adc d                                         ; $553a: $8a
    adc e                                         ; $553b: $8b
    dec l                                         ; $553c: $2d
    ld l, $8e                                     ; $553d: $2e $8e
    adc a                                         ; $553f: $8f
    ld sp, $9232                                  ; $5540: $31 $32 $92
    sub e                                         ; $5543: $93
    dec [hl]                                      ; $5544: $35
    ld [hl], $09                                  ; $5545: $36 $09
    add hl, bc                                    ; $5547: $09
    ld bc, $0904                                  ; $5548: $01 $04 $09
    add hl, bc                                    ; $554b: $09
    ld bc, $0904                                  ; $554c: $01 $04 $09
    add hl, bc                                    ; $554f: $09
    ld bc, $0904                                  ; $5550: $01 $04 $09
    add hl, bc                                    ; $5553: $09

jr_07f_5554:
    ld bc, $2b04                                  ; $5554: $01 $04 $2b
    ld [hl], h                                    ; $5557: $74
    ld [hl], l                                    ; $5558: $75
    halt                                          ; $5559: $76
    cpl                                           ; $555a: $2f
    ld a, b                                       ; $555b: $78
    ld a, c                                       ; $555c: $79
    ld a, d                                       ; $555d: $7a
    inc sp                                        ; $555e: $33
    ld a, h                                       ; $555f: $7c
    ld a, l                                       ; $5560: $7d
    ld a, [hl]                                    ; $5561: $7e
    scf                                           ; $5562: $37
    add b                                         ; $5563: $80

jr_07f_5564:
    add c                                         ; $5564: $81
    add d                                         ; $5565: $82
    ld bc, $0101                                  ; $5566: $01 $01 $01
    inc b                                         ; $5569: $04
    ld bc, $0101                                  ; $556a: $01 $01 $01
    inc b                                         ; $556d: $04
    ld bc, $0101                                  ; $556e: $01 $01 $01
    inc b                                         ; $5571: $04
    ld bc, $0909                                  ; $5572: $01 $09 $09
    add hl, bc                                    ; $5575: $09
    sub $d7                                       ; $5576: $d6 $d7
    sbc b                                         ; $5578: $98
    sbc d                                         ; $5579: $9a
    jp c, $fddb                                   ; $557a: $da $db $fd

    ret c                                         ; $557d: $d8

    sbc $df                                       ; $557e: $de $df
    ld de, $ecdc                                  ; $5580: $11 $dc $ec
    db $ed                                        ; $5583: $ed
    pop hl                                        ; $5584: $e1
    db $eb                                        ; $5585: $eb
    and e                                         ; $5586: $a3
    and e                                         ; $5587: $a3
    ld a, [bc]                                    ; $5588: $0a
    ld a, [bc]                                    ; $5589: $0a
    add e                                         ; $558a: $83
    add e                                         ; $558b: $83
    ld [bc], a                                    ; $558c: $02
    ld [bc], a                                    ; $558d: $02
    add [hl]                                      ; $558e: $86
    add e                                         ; $558f: $83
    ld [bc], a                                    ; $5590: $02
    ld [bc], a                                    ; $5591: $02
    add [hl]                                      ; $5592: $86
    add e                                         ; $5593: $83
    ld [bc], a                                    ; $5594: $02
    dec b                                         ; $5595: $05
    sbc e                                         ; $5596: $9b
    inc bc                                        ; $5597: $03
    sbc c                                         ; $5598: $99
    sbc d                                         ; $5599: $9a
    reti                                          ; $559a: $d9


    ld b, $f8                                     ; $559b: $06 $f8
    reti                                          ; $559d: $d9


    jp hl                                         ; $559e: $e9


    ld h, $22                                     ; $559f: $26 $22
    dec bc                                        ; $55a1: $0b
    daa                                           ; $55a2: $27
    pop hl                                        ; $55a3: $e1
    call nc, $0ae0                                ; $55a4: $d4 $e0 $0a
    ld a, [bc]                                    ; $55a7: $0a
    ld a, [bc]                                    ; $55a8: $0a
    ld a, [bc]                                    ; $55a9: $0a
    ld [bc], a                                    ; $55aa: $02
    ld a, [bc]                                    ; $55ab: $0a
    ld [bc], a                                    ; $55ac: $02
    ld [bc], a                                    ; $55ad: $02
    ld [bc], a                                    ; $55ae: $02
    ld [bc], a                                    ; $55af: $02
    dec b                                         ; $55b0: $05
    dec b                                         ; $55b1: $05
    dec b                                         ; $55b2: $05
    dec b                                         ; $55b3: $05
    dec b                                         ; $55b4: $05
    ld [bc], a                                    ; $55b5: $02
    sbc e                                         ; $55b6: $9b
    inc bc                                        ; $55b7: $03
    inc b                                         ; $55b8: $04
    dec b                                         ; $55b9: $05
    db $e4                                        ; $55ba: $e4
    push hl                                       ; $55bb: $e5
    and $06                                       ; $55bc: $e6 $06
    rst $20                                       ; $55be: $e7
    add sp, -$17                                  ; $55bf: $e8 $e9
    ld h, $e1                                     ; $55c1: $26 $e1
    call nc, $e1d5                                ; $55c3: $d4 $d5 $e1
    ld a, [bc]                                    ; $55c6: $0a
    ld a, [bc]                                    ; $55c7: $0a
    ld a, [bc]                                    ; $55c8: $0a
    ld a, [bc]                                    ; $55c9: $0a
    ld [bc], a                                    ; $55ca: $02
    ld [bc], a                                    ; $55cb: $02
    dec b                                         ; $55cc: $05
    ld a, [bc]                                    ; $55cd: $0a
    ld [bc], a                                    ; $55ce: $02
    dec b                                         ; $55cf: $05
    ld [bc], a                                    ; $55d0: $02
    ld [bc], a                                    ; $55d1: $02
    ld [bc], a                                    ; $55d2: $02
    dec b                                         ; $55d3: $05
    ld [bc], a                                    ; $55d4: $02
    ld [bc], a                                    ; $55d5: $02
    inc bc                                        ; $55d6: $03
    inc b                                         ; $55d7: $04
    dec b                                         ; $55d8: $05
    sbc c                                         ; $55d9: $99
    ld hl, sp-$27                                 ; $55da: $f8 $d9
    db $e4                                        ; $55dc: $e4
    push hl                                       ; $55dd: $e5
    call c, Call_000_110b                         ; $55de: $dc $0b $11
    add sp, $23                                   ; $55e1: $e8 $23
    ldh [$e1], a                                  ; $55e3: $e0 $e1
    db $eb                                        ; $55e5: $eb
    ld a, [bc]                                    ; $55e6: $0a
    ld a, [bc]                                    ; $55e7: $0a
    ld a, [bc]                                    ; $55e8: $0a
    ld a, [bc]                                    ; $55e9: $0a
    ld [bc], a                                    ; $55ea: $02
    dec b                                         ; $55eb: $05
    ld [bc], a                                    ; $55ec: $02
    dec b                                         ; $55ed: $05
    ld [bc], a                                    ; $55ee: $02
    ld [bc], a                                    ; $55ef: $02
    ld [bc], a                                    ; $55f0: $02
    ld [bc], a                                    ; $55f1: $02
    ld [bc], a                                    ; $55f2: $02
    ld [bc], a                                    ; $55f3: $02
    ld [bc], a                                    ; $55f4: $02
    ld [bc], a                                    ; $55f5: $02
    pop de                                        ; $55f6: $d1
    sbc $df                                       ; $55f7: $de $df
    pop hl                                        ; $55f9: $e1
    pop de                                        ; $55fa: $d1
    db $ec                                        ; $55fb: $ec
    db $ed                                        ; $55fc: $ed
    ld b, $d1                                     ; $55fd: $06 $d1
    rst $28                                       ; $55ff: $ef
    ldh a, [rNR52]                                ; $5600: $f0 $26
    pop de                                        ; $5602: $d1
    ld a, [c]                                     ; $5603: $f2
    di                                            ; $5604: $f3
    pop hl                                        ; $5605: $e1
    ld bc, $8683                                  ; $5606: $01 $83 $86
    ld [bc], a                                    ; $5609: $02
    ld bc, $8683                                  ; $560a: $01 $83 $86
    ld a, [bc]                                    ; $560d: $0a
    ld bc, $8386                                  ; $560e: $01 $86 $83
    dec b                                         ; $5611: $05
    ld bc, $8386                                  ; $5612: $01 $86 $83
    dec b                                         ; $5615: $05
    rlca                                          ; $5616: $07
    ld [$9fb8], sp                                ; $5617: $08 $b8 $9f
    ld hl, sp-$27                                 ; $561a: $f8 $d9
    cp e                                          ; $561c: $bb
    cp h                                          ; $561d: $bc
    call c, $bf0b                                 ; $561e: $dc $0b $bf
    ret nz                                        ; $5621: $c0

    inc c                                         ; $5622: $0c
    dec c                                         ; $5623: $0d
    push hl                                       ; $5624: $e5
    and $8b                                       ; $5625: $e6 $8b
    adc e                                         ; $5627: $8b
    adc e                                         ; $5628: $8b
    adc e                                         ; $5629: $8b
    ld [bc], a                                    ; $562a: $02
    ld [bc], a                                    ; $562b: $02
    adc e                                         ; $562c: $8b
    adc [hl]                                      ; $562d: $8e
    ld [bc], a                                    ; $562e: $02
    ld [bc], a                                    ; $562f: $02
    adc [hl]                                      ; $5630: $8e
    adc e                                         ; $5631: $8b
    adc e                                         ; $5632: $8b
    adc e                                         ; $5633: $8b
    adc [hl]                                      ; $5634: $8e
    adc e                                         ; $5635: $8b

jr_07f_5636:
    and b                                         ; $5636: $a0
    and c                                         ; $5637: $a1
    xor d                                         ; $5638: $aa
    xor e                                         ; $5639: $ab
    and h                                         ; $563a: $a4
    and l                                         ; $563b: $a5
    xor [hl]                                      ; $563c: $ae
    xor a                                         ; $563d: $af
    xor b                                         ; $563e: $a8
    xor c                                         ; $563f: $a9
    or d                                          ; $5640: $b2
    or e                                          ; $5641: $b3
    push bc                                       ; $5642: $c5
    add $d3                                       ; $5643: $c6 $d3
    call nc, $8b8b                                ; $5645: $d4 $8b $8b
    adc e                                         ; $5648: $8b
    adc e                                         ; $5649: $8b
    adc [hl]                                      ; $564a: $8e
    adc [hl]                                      ; $564b: $8e
    adc [hl]                                      ; $564c: $8e
    adc e                                         ; $564d: $8b
    adc e                                         ; $564e: $8b
    adc e                                         ; $564f: $8b
    adc [hl]                                      ; $5650: $8e
    adc e                                         ; $5651: $8b
    adc e                                         ; $5652: $8b
    adc e                                         ; $5653: $8b
    adc e                                         ; $5654: $8b

jr_07f_5655:
    adc e                                         ; $5655: $8b
    ld h, a                                       ; $5656: $67
    inc [hl]                                      ; $5657: $34
    rst $30                                       ; $5658: $f7
    sub l                                         ; $5659: $95
    ld l, e                                       ; $565a: $6b
    dec [hl]                                      ; $565b: $35
    ld [hl], $37                                  ; $565c: $36 $37
    ld l, a                                       ; $565e: $6f
    jr c, jr_07f_5636                             ; $565f: $38 $d5

    pop hl                                        ; $5661: $e1
    add hl, sp                                    ; $5662: $39
    ret c                                         ; $5663: $d8

    and $06                                       ; $5664: $e6 $06
    ld bc, $838b                                  ; $5666: $01 $8b $83
    dec c                                         ; $5669: $0d
    ld bc, $8b8b                                  ; $566a: $01 $8b $8b
    adc e                                         ; $566d: $8b
    ld bc, $028b                                  ; $566e: $01 $8b $02
    dec b                                         ; $5671: $05
    add hl, bc                                    ; $5672: $09
    ld [bc], a                                    ; $5673: $02
    ld [bc], a                                    ; $5674: $02
    dec c                                         ; $5675: $0d
    ret c                                         ; $5676: $d8

    reti                                          ; $5677: $d9


    jp hl                                         ; $5678: $e9


    ld [$0edc], a                                 ; $5679: $ea $dc $0e
    db $ed                                        ; $567c: $ed
    xor $0f                                       ; $567d: $ee $0f
    db $10                                        ; $567f: $10
    ld de, $dfd0                                  ; $5680: $11 $d0 $df
    sbc $f2                                       ; $5683: $de $f2
    di                                            ; $5685: $f3
    ld [bc], a                                    ; $5686: $02
    ld [bc], a                                    ; $5687: $02
    adc e                                         ; $5688: $8b
    adc e                                         ; $5689: $8b
    ld [bc], a                                    ; $568a: $02
    adc e                                         ; $568b: $8b
    adc [hl]                                      ; $568c: $8e
    adc e                                         ; $568d: $8b
    adc e                                         ; $568e: $8b
    adc e                                         ; $568f: $8b
    adc e                                         ; $5690: $8b
    adc e                                         ; $5691: $8b
    and e                                         ; $5692: $a3
    and [hl]                                      ; $5693: $a6
    adc e                                         ; $5694: $8b
    adc [hl]                                      ; $5695: $8e
    ret                                           ; $5696: $c9


    jp z, $d8d7                                   ; $5697: $ca $d7 $d8

    call $dbce                                    ; $569a: $cd $ce $db
    call c, $d2d1                                 ; $569d: $dc $d1 $d2
    rst $18                                       ; $56a0: $df
    ldh [$f4], a                                  ; $56a1: $e0 $f4
    push af                                       ; $56a3: $f5
    ld a, [$8bfb]                                 ; $56a4: $fa $fb $8b
    adc [hl]                                      ; $56a7: $8e
    adc [hl]                                      ; $56a8: $8e
    adc [hl]                                      ; $56a9: $8e
    adc [hl]                                      ; $56aa: $8e
    adc e                                         ; $56ab: $8b
    adc [hl]                                      ; $56ac: $8e
    adc e                                         ; $56ad: $8b
    adc [hl]                                      ; $56ae: $8e
    adc [hl]                                      ; $56af: $8e
    adc [hl]                                      ; $56b0: $8e
    adc e                                         ; $56b1: $8b
    adc e                                         ; $56b2: $8b
    adc [hl]                                      ; $56b3: $8e
    adc e                                         ; $56b4: $8b
    adc e                                         ; $56b5: $8b
    add a                                         ; $56b6: $87
    ld a, [hl-]                                   ; $56b7: $3a
    dec bc                                        ; $56b8: $0b
    ld h, $8b                                     ; $56b9: $26 $8b
    call nc, $2827                                ; $56bb: $d4 $27 $28
    adc a                                         ; $56be: $8f
    jr nc, jr_07f_5655                            ; $56bf: $30 $94

    sub l                                         ; $56c1: $95
    sub e                                         ; $56c2: $93
    inc [hl]                                      ; $56c3: $34
    dec bc                                        ; $56c4: $0b
    sub a                                         ; $56c5: $97
    add hl, bc                                    ; $56c6: $09
    adc e                                         ; $56c7: $8b
    dec b                                         ; $56c8: $05
    ld [bc], a                                    ; $56c9: $02
    add hl, bc                                    ; $56ca: $09
    ld [bc], a                                    ; $56cb: $02
    ld [bc], a                                    ; $56cc: $02
    ld [bc], a                                    ; $56cd: $02
    add hl, bc                                    ; $56ce: $09
    ld [hl+], a                                   ; $56cf: $22
    dec c                                         ; $56d0: $0d
    ld a, [bc]                                    ; $56d1: $0a
    add hl, bc                                    ; $56d2: $09
    ld [hl+], a                                   ; $56d3: $22
    dec b                                         ; $56d4: $05
    ld a, [bc]                                    ; $56d5: $0a
    db $ed                                        ; $56d6: $ed
    db $ec                                        ; $56d7: $ec
    or $f7                                        ; $56d8: $f6 $f7
    ldh a, [$ef]                                  ; $56da: $f0 $ef
    pop de                                        ; $56dc: $d1

Call_07f_56dd:
    pop de                                        ; $56dd: $d1
    di                                            ; $56de: $f3
    ld a, [c]                                     ; $56df: $f2
    pop de                                        ; $56e0: $d1
    pop de                                        ; $56e1: $d1
    rst $30                                       ; $56e2: $f7
    or $d1                                        ; $56e3: $f6 $d1
    pop de                                        ; $56e5: $d1
    and e                                         ; $56e6: $a3
    and e                                         ; $56e7: $a3
    adc e                                         ; $56e8: $8b
    adc e                                         ; $56e9: $8b
    and e                                         ; $56ea: $a3
    and [hl]                                      ; $56eb: $a6
    add e                                         ; $56ec: $83
    add e                                         ; $56ed: $83
    and [hl]                                      ; $56ee: $a6
    and [hl]                                      ; $56ef: $a6
    add e                                         ; $56f0: $83
    add e                                         ; $56f1: $83
    and [hl]                                      ; $56f2: $a6
    and [hl]                                      ; $56f3: $a6
    add e                                         ; $56f4: $83
    add e                                         ; $56f5: $83
    ld hl, sp-$07                                 ; $56f6: $f8 $f9
    pop de                                        ; $56f8: $d1
    cp $d1                                        ; $56f9: $fe $d1
    pop de                                        ; $56fb: $d1
    pop de                                        ; $56fc: $d1
    pop de                                        ; $56fd: $d1
    pop de                                        ; $56fe: $d1
    pop de                                        ; $56ff: $d1
    pop de                                        ; $5700: $d1
    pop de                                        ; $5701: $d1
    pop de                                        ; $5702: $d1
    pop de                                        ; $5703: $d1
    pop de                                        ; $5704: $d1
    pop de                                        ; $5705: $d1
    adc [hl]                                      ; $5706: $8e
    adc [hl]                                      ; $5707: $8e
    add e                                         ; $5708: $83
    adc e                                         ; $5709: $8b
    add e                                         ; $570a: $83
    add [hl]                                      ; $570b: $86
    add e                                         ; $570c: $83
    add [hl]                                      ; $570d: $86
    add e                                         ; $570e: $83
    add e                                         ; $570f: $83
    add e                                         ; $5710: $83
    add [hl]                                      ; $5711: $86
    add e                                         ; $5712: $83
    add e                                         ; $5713: $83
    add e                                         ; $5714: $83
    add e                                         ; $5715: $83
    sbc d                                         ; $5716: $9a
    sbc e                                         ; $5717: $9b
    inc bc                                        ; $5718: $03
    inc b                                         ; $5719: $04
    reti                                          ; $571a: $d9


    db $fd                                        ; $571b: $fd
    ld hl, sp+$21                                 ; $571c: $f8 $21
    jp hl                                         ; $571e: $e9


    ld de, $dddc                                  ; $571f: $11 $dc $dd
    daa                                           ; $5722: $27
    jr z, jr_07f_5748                             ; $5723: $28 $23

    push de                                       ; $5725: $d5
    ld a, [bc]                                    ; $5726: $0a
    ld a, [bc]                                    ; $5727: $0a
    ld a, [bc]                                    ; $5728: $0a
    ld a, [bc]                                    ; $5729: $0a
    dec b                                         ; $572a: $05
    ld [bc], a                                    ; $572b: $02
    ld [bc], a                                    ; $572c: $02
    ld [bc], a                                    ; $572d: $02
    ld [bc], a                                    ; $572e: $02
    ld [bc], a                                    ; $572f: $02
    ld [bc], a                                    ; $5730: $02
    ld [bc], a                                    ; $5731: $02
    ld [bc], a                                    ; $5732: $02
    ld [bc], a                                    ; $5733: $02
    dec b                                         ; $5734: $05
    ld [bc], a                                    ; $5735: $02
    dec b                                         ; $5736: $05
    sbc b                                         ; $5737: $98
    db $e3                                        ; $5738: $e3
    dec h                                         ; $5739: $25
    db $e4                                        ; $573a: $e4
    push hl                                       ; $573b: $e5
    and $fd                                       ; $573c: $e6 $fd
    rst $20                                       ; $573e: $e7
    add sp, $0b                                   ; $573f: $e8 $0b
    ld de, $ebe1                                  ; $5741: $11 $e1 $eb
    push de                                       ; $5744: $d5
    jr z, jr_07f_5751                             ; $5745: $28 $0a

    ld a, [hl+]                                   ; $5747: $2a

jr_07f_5748:
    ld [bc], a                                    ; $5748: $02
    ld [bc], a                                    ; $5749: $02
    ld [bc], a                                    ; $574a: $02
    ld [bc], a                                    ; $574b: $02
    ld [bc], a                                    ; $574c: $02
    ld [bc], a                                    ; $574d: $02
    ld [bc], a                                    ; $574e: $02
    ld [bc], a                                    ; $574f: $02
    dec b                                         ; $5750: $05

jr_07f_5751:
    dec b                                         ; $5751: $05
    ld [bc], a                                    ; $5752: $02
    ld [bc], a                                    ; $5753: $02
    ld [bc], a                                    ; $5754: $02
    ld [bc], a                                    ; $5755: $02
    db $d3                                        ; $5756: $d3
    jp nc, $d1d1                                  ; $5757: $d2 $d1 $d1

    rst $10                                       ; $575a: $d7
    sub $d1                                       ; $575b: $d6 $d1
    pop de                                        ; $575d: $d1
    db $db                                        ; $575e: $db
    jp c, $d1d1                                   ; $575f: $da $d1 $d1

    rst $18                                       ; $5762: $df
    sbc $d1                                       ; $5763: $de $d1
    pop de                                        ; $5765: $d1
    and e                                         ; $5766: $a3
    and [hl]                                      ; $5767: $a6
    add e                                         ; $5768: $83
    add e                                         ; $5769: $83
    add e                                         ; $576a: $83
    add [hl]                                      ; $576b: $86
    add e                                         ; $576c: $83
    add e                                         ; $576d: $83
    and e                                         ; $576e: $a3
    and e                                         ; $576f: $a3
    add e                                         ; $5770: $83
    add e                                         ; $5771: $83
    and e                                         ; $5772: $a3
    and e                                         ; $5773: $a3
    add e                                         ; $5774: $83
    add e                                         ; $5775: $83
    xor h                                         ; $5776: $ac
    xor l                                         ; $5777: $ad
    or [hl]                                       ; $5778: $b6
    or a                                          ; $5779: $b7
    or b                                          ; $577a: $b0
    or c                                          ; $577b: $b1
    cp c                                          ; $577c: $b9
    cp d                                          ; $577d: $ba
    or h                                          ; $577e: $b4
    or l                                          ; $577f: $b5
    cp l                                          ; $5780: $bd
    cp [hl]                                       ; $5781: $be
    push de                                       ; $5782: $d5
    sub $e3                                       ; $5783: $d6 $e3
    db $e4                                        ; $5785: $e4
    adc e                                         ; $5786: $8b
    adc [hl]                                      ; $5787: $8e
    adc e                                         ; $5788: $8b
    adc e                                         ; $5789: $8b
    adc [hl]                                      ; $578a: $8e
    adc [hl]                                      ; $578b: $8e
    adc e                                         ; $578c: $8b
    adc e                                         ; $578d: $8b
    adc [hl]                                      ; $578e: $8e
    adc [hl]                                      ; $578f: $8e
    adc [hl]                                      ; $5790: $8e
    adc e                                         ; $5791: $8b
    adc e                                         ; $5792: $8b
    adc e                                         ; $5793: $8b
    adc [hl]                                      ; $5794: $8e
    adc e                                         ; $5795: $8b
    cp b                                          ; $5796: $b8
    sbc a                                         ; $5797: $9f
    and b                                         ; $5798: $a0
    and c                                         ; $5799: $a1
    cp e                                          ; $579a: $bb
    cp h                                          ; $579b: $bc
    and h                                         ; $579c: $a4
    and l                                         ; $579d: $a5
    cp a                                          ; $579e: $bf
    ret nz                                        ; $579f: $c0

    xor b                                         ; $57a0: $a8
    xor c                                         ; $57a1: $a9
    push hl                                       ; $57a2: $e5
    and $c5                                       ; $57a3: $e6 $c5
    add $8b                                       ; $57a5: $c6 $8b
    adc e                                         ; $57a7: $8b
    adc e                                         ; $57a8: $8b
    adc e                                         ; $57a9: $8b
    adc e                                         ; $57aa: $8b
    adc [hl]                                      ; $57ab: $8e
    adc [hl]                                      ; $57ac: $8e
    adc [hl]                                      ; $57ad: $8e
    adc e                                         ; $57ae: $8b
    adc [hl]                                      ; $57af: $8e
    adc e                                         ; $57b0: $8b
    adc e                                         ; $57b1: $8b
    adc e                                         ; $57b2: $8b
    adc [hl]                                      ; $57b3: $8e
    adc e                                         ; $57b4: $8b
    adc [hl]                                      ; $57b5: $8e
    xor d                                         ; $57b6: $aa
    xor e                                         ; $57b7: $ab
    xor h                                         ; $57b8: $ac
    xor l                                         ; $57b9: $ad
    xor [hl]                                      ; $57ba: $ae
    xor a                                         ; $57bb: $af
    or b                                          ; $57bc: $b0
    or c                                          ; $57bd: $b1
    or d                                          ; $57be: $b2
    or e                                          ; $57bf: $b3
    or h                                          ; $57c0: $b4
    or l                                          ; $57c1: $b5
    db $d3                                        ; $57c2: $d3
    call nc, $d6d5                                ; $57c3: $d4 $d5 $d6
    adc e                                         ; $57c6: $8b
    adc e                                         ; $57c7: $8b
    adc e                                         ; $57c8: $8b
    adc e                                         ; $57c9: $8b
    adc e                                         ; $57ca: $8b
    adc [hl]                                      ; $57cb: $8e
    adc e                                         ; $57cc: $8b
    adc [hl]                                      ; $57cd: $8e
    adc [hl]                                      ; $57ce: $8e
    adc [hl]                                      ; $57cf: $8e
    adc e                                         ; $57d0: $8b
    adc e                                         ; $57d1: $8b
    adc e                                         ; $57d2: $8b
    adc [hl]                                      ; $57d3: $8e
    adc e                                         ; $57d4: $8b
    adc e                                         ; $57d5: $8b
    or [hl]                                       ; $57d6: $b6
    or a                                          ; $57d7: $b7
    cp b                                          ; $57d8: $b8
    sbc a                                         ; $57d9: $9f
    cp c                                          ; $57da: $b9
    cp d                                          ; $57db: $ba
    cp e                                          ; $57dc: $bb
    cp h                                          ; $57dd: $bc
    cp l                                          ; $57de: $bd
    cp [hl]                                       ; $57df: $be
    cp a                                          ; $57e0: $bf
    ret nz                                        ; $57e1: $c0

    db $e3                                        ; $57e2: $e3
    db $e4                                        ; $57e3: $e4
    push hl                                       ; $57e4: $e5
    and $8b                                       ; $57e5: $e6 $8b
    adc e                                         ; $57e7: $8b
    adc e                                         ; $57e8: $8b
    adc e                                         ; $57e9: $8b
    adc e                                         ; $57ea: $8b
    adc e                                         ; $57eb: $8b
    adc e                                         ; $57ec: $8b
    adc e                                         ; $57ed: $8b
    adc [hl]                                      ; $57ee: $8e
    adc [hl]                                      ; $57ef: $8e
    adc [hl]                                      ; $57f0: $8e
    adc [hl]                                      ; $57f1: $8e
    adc [hl]                                      ; $57f2: $8e
    adc e                                         ; $57f3: $8b
    adc e                                         ; $57f4: $8b
    adc [hl]                                      ; $57f5: $8e
    reti                                          ; $57f6: $d9


    jp c, $e8e7                                   ; $57f7: $da $e7 $e8

    db $dd                                        ; $57fa: $dd
    sbc $eb                                       ; $57fb: $de $eb
    db $ec                                        ; $57fd: $ec
    pop hl                                        ; $57fe: $e1
    ld [c], a                                     ; $57ff: $e2
    rst $28                                       ; $5800: $ef
    ldh a, [$fc]                                  ; $5801: $f0 $fc
    db $fd                                        ; $5803: $fd
    rst $38                                       ; $5804: $ff
    nop                                           ; $5805: $00
    adc [hl]                                      ; $5806: $8e
    adc e                                         ; $5807: $8b
    adc e                                         ; $5808: $8b
    adc [hl]                                      ; $5809: $8e
    adc e                                         ; $580a: $8b
    adc [hl]                                      ; $580b: $8e
    adc e                                         ; $580c: $8b
    adc [hl]                                      ; $580d: $8e
    adc e                                         ; $580e: $8b
    adc e                                         ; $580f: $8b
    adc [hl]                                      ; $5810: $8e
    adc e                                         ; $5811: $8b
    adc e                                         ; $5812: $8b
    adc e                                         ; $5813: $8b
    adc [hl]                                      ; $5814: $8e
    adc e                                         ; $5815: $8b
    jp hl                                         ; $5816: $e9


    ld [$cac9], a                                 ; $5817: $ea $c9 $ca
    db $ed                                        ; $581a: $ed
    xor $cd                                       ; $581b: $ee $cd
    adc $f1                                       ; $581d: $ce $f1
    ret nc                                        ; $581f: $d0

    pop de                                        ; $5820: $d1
    jp nc, $f301                                  ; $5821: $d2 $01 $f3

    db $f4                                        ; $5824: $f4
    push af                                       ; $5825: $f5
    adc e                                         ; $5826: $8b
    adc [hl]                                      ; $5827: $8e
    adc [hl]                                      ; $5828: $8e
    adc e                                         ; $5829: $8b
    adc e                                         ; $582a: $8b
    adc e                                         ; $582b: $8b
    adc e                                         ; $582c: $8b
    adc e                                         ; $582d: $8b
    adc [hl]                                      ; $582e: $8e
    adc [hl]                                      ; $582f: $8e
    adc e                                         ; $5830: $8b
    adc e                                         ; $5831: $8b
    adc [hl]                                      ; $5832: $8e
    adc [hl]                                      ; $5833: $8e
    adc e                                         ; $5834: $8b
    adc e                                         ; $5835: $8b
    rst $10                                       ; $5836: $d7
    ret c                                         ; $5837: $d8

    reti                                          ; $5838: $d9


    jp c, $dcdb                                   ; $5839: $da $db $dc

    db $dd                                        ; $583c: $dd
    sbc $df                                       ; $583d: $de $df
    ldh [$e1], a                                  ; $583f: $e0 $e1
    ld [c], a                                     ; $5841: $e2
    ld a, [$fcfb]                                 ; $5842: $fa $fb $fc
    db $fd                                        ; $5845: $fd
    adc [hl]                                      ; $5846: $8e
    adc e                                         ; $5847: $8b
    adc [hl]                                      ; $5848: $8e
    adc e                                         ; $5849: $8b
    adc e                                         ; $584a: $8b
    adc e                                         ; $584b: $8b
    adc e                                         ; $584c: $8b
    adc e                                         ; $584d: $8b
    adc e                                         ; $584e: $8b
    adc e                                         ; $584f: $8b
    adc e                                         ; $5850: $8b
    adc e                                         ; $5851: $8b
    adc e                                         ; $5852: $8b
    adc e                                         ; $5853: $8b
    adc [hl]                                      ; $5854: $8e
    adc e                                         ; $5855: $8b
    rst $20                                       ; $5856: $e7
    add sp, -$17                                  ; $5857: $e8 $e9
    ld [$eceb], a                                 ; $5859: $ea $eb $ec
    db $ed                                        ; $585c: $ed
    xor $ef                                       ; $585d: $ee $ef
    ldh a, [$f1]                                  ; $585f: $f0 $f1
    ret nc                                        ; $5861: $d0

    rst $38                                       ; $5862: $ff
    nop                                           ; $5863: $00
    ld bc, $8ef3                                  ; $5864: $01 $f3 $8e
    adc e                                         ; $5867: $8b
    adc e                                         ; $5868: $8b
    adc [hl]                                      ; $5869: $8e
    adc e                                         ; $586a: $8b
    adc e                                         ; $586b: $8b
    adc e                                         ; $586c: $8b
    adc e                                         ; $586d: $8b
    adc [hl]                                      ; $586e: $8e
    adc e                                         ; $586f: $8b
    adc e                                         ; $5870: $8b
    adc e                                         ; $5871: $8b
    adc e                                         ; $5872: $8b
    adc [hl]                                      ; $5873: $8e
    adc [hl]                                      ; $5874: $8e
    adc e                                         ; $5875: $8b
    pop de                                        ; $5876: $d1
    ld [bc], a                                    ; $5877: $02
    pop de                                        ; $5878: $d1
    ld [bc], a                                    ; $5879: $02
    pop de                                        ; $587a: $d1
    pop de                                        ; $587b: $d1
    pop de                                        ; $587c: $d1
    pop de                                        ; $587d: $d1
    pop de                                        ; $587e: $d1
    pop de                                        ; $587f: $d1
    pop de                                        ; $5880: $d1
    pop de                                        ; $5881: $d1
    pop de                                        ; $5882: $d1
    pop de                                        ; $5883: $d1
    pop de                                        ; $5884: $d1
    pop de                                        ; $5885: $d1
    add e                                         ; $5886: $83
    add [hl]                                      ; $5887: $86
    add e                                         ; $5888: $83
    adc e                                         ; $5889: $8b
    add [hl]                                      ; $588a: $86
    add e                                         ; $588b: $83
    add e                                         ; $588c: $83
    add e                                         ; $588d: $83
    add e                                         ; $588e: $83
    add e                                         ; $588f: $83
    add e                                         ; $5890: $83
    add e                                         ; $5891: $83
    add e                                         ; $5892: $83
    add e                                         ; $5893: $83
    add e                                         ; $5894: $83
    add e                                         ; $5895: $83
    or $f7                                        ; $5896: $f6 $f7
    ld hl, sp-$07                                 ; $5898: $f8 $f9
    pop de                                        ; $589a: $d1
    pop de                                        ; $589b: $d1
    pop de                                        ; $589c: $d1
    pop de                                        ; $589d: $d1
    pop de                                        ; $589e: $d1
    pop de                                        ; $589f: $d1
    pop de                                        ; $58a0: $d1
    pop de                                        ; $58a1: $d1
    pop de                                        ; $58a2: $d1
    pop de                                        ; $58a3: $d1
    pop de                                        ; $58a4: $d1
    pop de                                        ; $58a5: $d1
    adc e                                         ; $58a6: $8b
    adc e                                         ; $58a7: $8b
    adc e                                         ; $58a8: $8b
    adc e                                         ; $58a9: $8b
    add e                                         ; $58aa: $83
    add e                                         ; $58ab: $83
    add e                                         ; $58ac: $83
    add e                                         ; $58ad: $83
    add e                                         ; $58ae: $83
    add e                                         ; $58af: $83
    add e                                         ; $58b0: $83
    add e                                         ; $58b1: $83
    add e                                         ; $58b2: $83
    add e                                         ; $58b3: $83
    add e                                         ; $58b4: $83
    add e                                         ; $58b5: $83
    pop de                                        ; $58b6: $d1
    cp $d1                                        ; $58b7: $fe $d1
    ld [bc], a                                    ; $58b9: $02
    pop de                                        ; $58ba: $d1
    pop de                                        ; $58bb: $d1
    pop de                                        ; $58bc: $d1
    pop de                                        ; $58bd: $d1
    pop de                                        ; $58be: $d1
    pop de                                        ; $58bf: $d1
    pop de                                        ; $58c0: $d1
    pop de                                        ; $58c1: $d1
    pop de                                        ; $58c2: $d1
    pop de                                        ; $58c3: $d1
    pop de                                        ; $58c4: $d1
    pop de                                        ; $58c5: $d1
    add e                                         ; $58c6: $83
    adc e                                         ; $58c7: $8b
    add e                                         ; $58c8: $83
    add e                                         ; $58c9: $83
    add e                                         ; $58ca: $83
    add e                                         ; $58cb: $83
    add e                                         ; $58cc: $83
    add e                                         ; $58cd: $83
    add e                                         ; $58ce: $83
    add e                                         ; $58cf: $83
    add e                                         ; $58d0: $83
    add e                                         ; $58d1: $83
    add e                                         ; $58d2: $83
    add e                                         ; $58d3: $83
    add e                                         ; $58d4: $83
    add e                                         ; $58d5: $83
    pop de                                        ; $58d6: $d1
    ld [bc], a                                    ; $58d7: $02
    or $f7                                        ; $58d8: $f6 $f7
    pop de                                        ; $58da: $d1
    pop de                                        ; $58db: $d1
    pop de                                        ; $58dc: $d1
    pop de                                        ; $58dd: $d1
    pop de                                        ; $58de: $d1
    pop de                                        ; $58df: $d1
    pop de                                        ; $58e0: $d1
    pop de                                        ; $58e1: $d1
    pop de                                        ; $58e2: $d1
    pop de                                        ; $58e3: $d1
    pop de                                        ; $58e4: $d1
    pop de                                        ; $58e5: $d1
    add e                                         ; $58e6: $83
    adc e                                         ; $58e7: $8b
    adc e                                         ; $58e8: $8b
    adc [hl]                                      ; $58e9: $8e
    add e                                         ; $58ea: $83
    add e                                         ; $58eb: $83
    add e                                         ; $58ec: $83
    add e                                         ; $58ed: $83
    add e                                         ; $58ee: $83
    add e                                         ; $58ef: $83
    add e                                         ; $58f0: $83
    add e                                         ; $58f1: $83
    add e                                         ; $58f2: $83
    add e                                         ; $58f3: $83
    add e                                         ; $58f4: $83
    add e                                         ; $58f5: $83
    and b                                         ; $58f6: $a0
    and c                                         ; $58f7: $a1
    xor d                                         ; $58f8: $aa
    xor e                                         ; $58f9: $ab
    and h                                         ; $58fa: $a4
    and l                                         ; $58fb: $a5
    xor [hl]                                      ; $58fc: $ae
    xor a                                         ; $58fd: $af
    xor b                                         ; $58fe: $a8
    xor c                                         ; $58ff: $a9
    or d                                          ; $5900: $b2
    or e                                          ; $5901: $b3
    push bc                                       ; $5902: $c5
    add $d3                                       ; $5903: $c6 $d3
    call nc, $8b8b                                ; $5905: $d4 $8b $8b
    adc e                                         ; $5908: $8b
    adc e                                         ; $5909: $8b
    adc [hl]                                      ; $590a: $8e
    adc [hl]                                      ; $590b: $8e
    adc [hl]                                      ; $590c: $8e
    adc e                                         ; $590d: $8b
    adc [hl]                                      ; $590e: $8e
    adc e                                         ; $590f: $8b
    adc [hl]                                      ; $5910: $8e
    adc [hl]                                      ; $5911: $8e
    adc e                                         ; $5912: $8b
    adc e                                         ; $5913: $8b
    adc e                                         ; $5914: $8b
    adc [hl]                                      ; $5915: $8e
    xor h                                         ; $5916: $ac
    xor l                                         ; $5917: $ad
    or [hl]                                       ; $5918: $b6
    or a                                          ; $5919: $b7
    or b                                          ; $591a: $b0
    or c                                          ; $591b: $b1
    cp c                                          ; $591c: $b9
    cp d                                          ; $591d: $ba
    or h                                          ; $591e: $b4
    or l                                          ; $591f: $b5
    cp l                                          ; $5920: $bd
    cp [hl]                                       ; $5921: $be
    push de                                       ; $5922: $d5
    sub $e3                                       ; $5923: $d6 $e3
    db $e4                                        ; $5925: $e4
    adc e                                         ; $5926: $8b
    adc e                                         ; $5927: $8b
    adc e                                         ; $5928: $8b
    adc e                                         ; $5929: $8b
    adc e                                         ; $592a: $8b
    adc e                                         ; $592b: $8b
    adc e                                         ; $592c: $8b
    adc e                                         ; $592d: $8b
    adc e                                         ; $592e: $8b
    adc e                                         ; $592f: $8b
    adc e                                         ; $5930: $8b
    adc e                                         ; $5931: $8b
    adc e                                         ; $5932: $8b
    adc e                                         ; $5933: $8b
    adc e                                         ; $5934: $8b
    adc e                                         ; $5935: $8b
    cp b                                          ; $5936: $b8
    sbc a                                         ; $5937: $9f
    and b                                         ; $5938: $a0
    and c                                         ; $5939: $a1
    cp e                                          ; $593a: $bb
    cp h                                          ; $593b: $bc
    and h                                         ; $593c: $a4
    and l                                         ; $593d: $a5
    cp a                                          ; $593e: $bf
    ret nz                                        ; $593f: $c0

    xor b                                         ; $5940: $a8
    xor c                                         ; $5941: $a9
    push hl                                       ; $5942: $e5
    and $c5                                       ; $5943: $e6 $c5
    add $8b                                       ; $5945: $c6 $8b
    adc e                                         ; $5947: $8b
    adc e                                         ; $5948: $8b
    adc e                                         ; $5949: $8b
    adc e                                         ; $594a: $8b
    adc [hl]                                      ; $594b: $8e
    adc e                                         ; $594c: $8b
    adc e                                         ; $594d: $8b
    adc e                                         ; $594e: $8b
    adc e                                         ; $594f: $8b
    adc e                                         ; $5950: $8b
    adc e                                         ; $5951: $8b
    adc e                                         ; $5952: $8b
    adc e                                         ; $5953: $8b
    adc e                                         ; $5954: $8b
    adc e                                         ; $5955: $8b
    xor d                                         ; $5956: $aa
    xor e                                         ; $5957: $ab
    xor h                                         ; $5958: $ac
    xor l                                         ; $5959: $ad
    xor [hl]                                      ; $595a: $ae
    xor a                                         ; $595b: $af
    or b                                          ; $595c: $b0
    or c                                          ; $595d: $b1
    or d                                          ; $595e: $b2
    or e                                          ; $595f: $b3
    or h                                          ; $5960: $b4
    or l                                          ; $5961: $b5
    db $d3                                        ; $5962: $d3
    call nc, $d6d5                                ; $5963: $d4 $d5 $d6
    adc [hl]                                      ; $5966: $8e
    adc e                                         ; $5967: $8b
    adc [hl]                                      ; $5968: $8e
    adc [hl]                                      ; $5969: $8e
    adc e                                         ; $596a: $8b
    adc e                                         ; $596b: $8b
    adc e                                         ; $596c: $8b
    adc e                                         ; $596d: $8b
    adc e                                         ; $596e: $8b
    adc e                                         ; $596f: $8b
    adc [hl]                                      ; $5970: $8e
    adc e                                         ; $5971: $8b
    adc e                                         ; $5972: $8b
    adc e                                         ; $5973: $8b
    adc e                                         ; $5974: $8b
    adc e                                         ; $5975: $8b
    ret                                           ; $5976: $c9


    jp z, $d8d7                                   ; $5977: $ca $d7 $d8

    call $dbce                                    ; $597a: $cd $ce $db
    call c, $d2d1                                 ; $597d: $dc $d1 $d2
    rst $18                                       ; $5980: $df
    ldh [$f4], a                                  ; $5981: $e0 $f4
    push af                                       ; $5983: $f5
    ld a, [$8efb]                                 ; $5984: $fa $fb $8e
    adc [hl]                                      ; $5987: $8e
    adc [hl]                                      ; $5988: $8e
    adc e                                         ; $5989: $8b
    adc e                                         ; $598a: $8b
    adc [hl]                                      ; $598b: $8e
    adc [hl]                                      ; $598c: $8e
    adc [hl]                                      ; $598d: $8e
    adc e                                         ; $598e: $8b
    adc [hl]                                      ; $598f: $8e
    adc e                                         ; $5990: $8b
    adc e                                         ; $5991: $8b
    adc e                                         ; $5992: $8b
    adc [hl]                                      ; $5993: $8e
    adc [hl]                                      ; $5994: $8e
    adc [hl]                                      ; $5995: $8e
    reti                                          ; $5996: $d9


    jp c, $e8e7                                   ; $5997: $da $e7 $e8

    db $dd                                        ; $599a: $dd
    sbc $eb                                       ; $599b: $de $eb
    db $ec                                        ; $599d: $ec
    pop hl                                        ; $599e: $e1
    ld [c], a                                     ; $599f: $e2
    rst $28                                       ; $59a0: $ef
    ldh a, [$fc]                                  ; $59a1: $f0 $fc
    db $fd                                        ; $59a3: $fd
    rst $38                                       ; $59a4: $ff
    nop                                           ; $59a5: $00
    adc [hl]                                      ; $59a6: $8e
    adc e                                         ; $59a7: $8b
    adc e                                         ; $59a8: $8b
    adc e                                         ; $59a9: $8b
    adc [hl]                                      ; $59aa: $8e
    adc [hl]                                      ; $59ab: $8e
    adc [hl]                                      ; $59ac: $8e
    adc e                                         ; $59ad: $8b
    adc [hl]                                      ; $59ae: $8e
    adc e                                         ; $59af: $8b
    adc e                                         ; $59b0: $8b
    adc e                                         ; $59b1: $8b
    adc [hl]                                      ; $59b2: $8e
    adc e                                         ; $59b3: $8b
    adc e                                         ; $59b4: $8b
    adc e                                         ; $59b5: $8b
    jp hl                                         ; $59b6: $e9


    ld [$cac9], a                                 ; $59b7: $ea $c9 $ca
    db $ed                                        ; $59ba: $ed
    xor $cd                                       ; $59bb: $ee $cd
    adc $f1                                       ; $59bd: $ce $f1
    ret nc                                        ; $59bf: $d0

    pop de                                        ; $59c0: $d1
    jp nc, $f301                                  ; $59c1: $d2 $01 $f3

    db $f4                                        ; $59c4: $f4
    push af                                       ; $59c5: $f5
    adc e                                         ; $59c6: $8b
    adc e                                         ; $59c7: $8b
    adc e                                         ; $59c8: $8b
    adc e                                         ; $59c9: $8b
    adc e                                         ; $59ca: $8b
    adc e                                         ; $59cb: $8b
    adc [hl]                                      ; $59cc: $8e
    adc e                                         ; $59cd: $8b
    adc [hl]                                      ; $59ce: $8e
    adc [hl]                                      ; $59cf: $8e
    adc [hl]                                      ; $59d0: $8e
    adc e                                         ; $59d1: $8b
    adc e                                         ; $59d2: $8b
    adc [hl]                                      ; $59d3: $8e
    adc e                                         ; $59d4: $8b
    adc [hl]                                      ; $59d5: $8e
    rst $10                                       ; $59d6: $d7
    ret c                                         ; $59d7: $d8

    reti                                          ; $59d8: $d9


    jp c, $dcdb                                   ; $59d9: $da $db $dc

    db $dd                                        ; $59dc: $dd
    sbc $df                                       ; $59dd: $de $df
    ldh [$e1], a                                  ; $59df: $e0 $e1
    ld [c], a                                     ; $59e1: $e2
    ld a, [$fcfb]                                 ; $59e2: $fa $fb $fc
    db $fd                                        ; $59e5: $fd
    adc [hl]                                      ; $59e6: $8e
    adc e                                         ; $59e7: $8b
    adc e                                         ; $59e8: $8b
    adc [hl]                                      ; $59e9: $8e
    adc [hl]                                      ; $59ea: $8e
    adc e                                         ; $59eb: $8b
    adc [hl]                                      ; $59ec: $8e
    adc e                                         ; $59ed: $8b
    adc e                                         ; $59ee: $8b
    adc e                                         ; $59ef: $8b
    adc e                                         ; $59f0: $8b
    adc e                                         ; $59f1: $8b
    adc e                                         ; $59f2: $8b
    adc [hl]                                      ; $59f3: $8e
    adc e                                         ; $59f4: $8b
    adc e                                         ; $59f5: $8b
    ld hl, sp-$07                                 ; $59f6: $f8 $f9
    pop de                                        ; $59f8: $d1
    cp $d1                                        ; $59f9: $fe $d1
    pop de                                        ; $59fb: $d1
    pop de                                        ; $59fc: $d1
    pop de                                        ; $59fd: $d1
    pop de                                        ; $59fe: $d1
    pop de                                        ; $59ff: $d1
    pop de                                        ; $5a00: $d1
    pop de                                        ; $5a01: $d1
    pop de                                        ; $5a02: $d1
    pop de                                        ; $5a03: $d1
    pop de                                        ; $5a04: $d1
    pop de                                        ; $5a05: $d1
    adc e                                         ; $5a06: $8b
    adc [hl]                                      ; $5a07: $8e
    add e                                         ; $5a08: $83
    adc e                                         ; $5a09: $8b
    add e                                         ; $5a0a: $83
    add e                                         ; $5a0b: $83
    add e                                         ; $5a0c: $83
    add e                                         ; $5a0d: $83
    add e                                         ; $5a0e: $83
    add e                                         ; $5a0f: $83
    add e                                         ; $5a10: $83
    add e                                         ; $5a11: $83
    add e                                         ; $5a12: $83
    add e                                         ; $5a13: $83
    add e                                         ; $5a14: $83
    add e                                         ; $5a15: $83
    pop de                                        ; $5a16: $d1
    ld [bc], a                                    ; $5a17: $02
    pop de                                        ; $5a18: $d1
    ld [bc], a                                    ; $5a19: $02
    pop de                                        ; $5a1a: $d1
    pop de                                        ; $5a1b: $d1
    pop de                                        ; $5a1c: $d1
    pop de                                        ; $5a1d: $d1
    pop de                                        ; $5a1e: $d1
    pop de                                        ; $5a1f: $d1
    pop de                                        ; $5a20: $d1
    pop de                                        ; $5a21: $d1
    pop de                                        ; $5a22: $d1
    pop de                                        ; $5a23: $d1
    pop de                                        ; $5a24: $d1
    pop de                                        ; $5a25: $d1
    add e                                         ; $5a26: $83
    add e                                         ; $5a27: $83
    add e                                         ; $5a28: $83
    adc e                                         ; $5a29: $8b
    add [hl]                                      ; $5a2a: $86
    add [hl]                                      ; $5a2b: $86
    add e                                         ; $5a2c: $83
    add e                                         ; $5a2d: $83
    add e                                         ; $5a2e: $83
    add e                                         ; $5a2f: $83
    add e                                         ; $5a30: $83
    add e                                         ; $5a31: $83
    add e                                         ; $5a32: $83
    add e                                         ; $5a33: $83
    add e                                         ; $5a34: $83
    add e                                         ; $5a35: $83
    or $f7                                        ; $5a36: $f6 $f7
    ld hl, sp-$07                                 ; $5a38: $f8 $f9
    pop de                                        ; $5a3a: $d1
    pop de                                        ; $5a3b: $d1
    pop de                                        ; $5a3c: $d1
    pop de                                        ; $5a3d: $d1
    pop de                                        ; $5a3e: $d1
    pop de                                        ; $5a3f: $d1
    pop de                                        ; $5a40: $d1
    pop de                                        ; $5a41: $d1
    pop de                                        ; $5a42: $d1
    pop de                                        ; $5a43: $d1
    pop de                                        ; $5a44: $d1
    pop de                                        ; $5a45: $d1
    adc e                                         ; $5a46: $8b
    adc [hl]                                      ; $5a47: $8e
    adc [hl]                                      ; $5a48: $8e
    adc e                                         ; $5a49: $8b
    add [hl]                                      ; $5a4a: $86
    add [hl]                                      ; $5a4b: $86
    add e                                         ; $5a4c: $83
    add e                                         ; $5a4d: $83
    add e                                         ; $5a4e: $83
    add e                                         ; $5a4f: $83
    add e                                         ; $5a50: $83
    add e                                         ; $5a51: $83
    add e                                         ; $5a52: $83
    add e                                         ; $5a53: $83
    add e                                         ; $5a54: $83
    add e                                         ; $5a55: $83
    or [hl]                                       ; $5a56: $b6
    or a                                          ; $5a57: $b7
    push hl                                       ; $5a58: $e5
    and $b9                                       ; $5a59: $e6 $b9
    cp d                                          ; $5a5b: $ba
    jp hl                                         ; $5a5c: $e9


    ld [$bebd], a                                 ; $5a5d: $ea $bd $be
    dec sp                                        ; $5a60: $3b
    xor $e3                                       ; $5a61: $ee $e3
    inc a                                         ; $5a63: $3c
    dec a                                         ; $5a64: $3d
    ret nc                                        ; $5a65: $d0

    adc e                                         ; $5a66: $8b
    adc e                                         ; $5a67: $8b
    adc e                                         ; $5a68: $8b
    adc e                                         ; $5a69: $8b
    adc [hl]                                      ; $5a6a: $8e
    adc e                                         ; $5a6b: $8b
    adc e                                         ; $5a6c: $8b
    adc e                                         ; $5a6d: $8b
    adc e                                         ; $5a6e: $8b
    adc [hl]                                      ; $5a6f: $8e
    adc e                                         ; $5a70: $8b
    adc [hl]                                      ; $5a71: $8e
    adc e                                         ; $5a72: $8b
    adc [hl]                                      ; $5a73: $8e
    adc e                                         ; $5a74: $8b
    adc e                                         ; $5a75: $8b
    push bc                                       ; $5a76: $c5
    add $d3                                       ; $5a77: $c6 $d3
    call nc, $cac9                                ; $5a79: $d4 $c9 $ca
    rst $10                                       ; $5a7c: $d7
    ret c                                         ; $5a7d: $d8

    call $dbce                                    ; $5a7e: $cd $ce $db
    call c, $d2d1                                 ; $5a81: $dc $d1 $d2
    rst $18                                       ; $5a84: $df
    ldh [$8e], a                                  ; $5a85: $e0 $8e
    adc [hl]                                      ; $5a87: $8e
    adc e                                         ; $5a88: $8b
    adc [hl]                                      ; $5a89: $8e
    adc [hl]                                      ; $5a8a: $8e
    adc [hl]                                      ; $5a8b: $8e
    adc e                                         ; $5a8c: $8b
    adc [hl]                                      ; $5a8d: $8e
    adc e                                         ; $5a8e: $8b
    adc e                                         ; $5a8f: $8b
    adc e                                         ; $5a90: $8b
    adc [hl]                                      ; $5a91: $8e
    adc e                                         ; $5a92: $8b
    adc e                                         ; $5a93: $8b
    adc [hl]                                      ; $5a94: $8e
    adc e                                         ; $5a95: $8b
    push de                                       ; $5a96: $d5
    sub $e3                                       ; $5a97: $d6 $e3
    db $e4                                        ; $5a99: $e4
    reti                                          ; $5a9a: $d9


    jp c, $e8e7                                   ; $5a9b: $da $e7 $e8

    db $dd                                        ; $5a9e: $dd
    sbc $eb                                       ; $5a9f: $de $eb
    db $ec                                        ; $5aa1: $ec
    pop hl                                        ; $5aa2: $e1
    ld [c], a                                     ; $5aa3: $e2
    rst $28                                       ; $5aa4: $ef
    ldh a, [$8e]                                  ; $5aa5: $f0 $8e
    adc [hl]                                      ; $5aa7: $8e
    adc e                                         ; $5aa8: $8b
    adc [hl]                                      ; $5aa9: $8e
    adc e                                         ; $5aaa: $8b
    adc e                                         ; $5aab: $8b
    adc [hl]                                      ; $5aac: $8e
    adc e                                         ; $5aad: $8b
    adc e                                         ; $5aae: $8b
    adc [hl]                                      ; $5aaf: $8e
    adc [hl]                                      ; $5ab0: $8e
    adc e                                         ; $5ab1: $8b
    adc e                                         ; $5ab2: $8b
    adc e                                         ; $5ab3: $8b
    adc [hl]                                      ; $5ab4: $8e
    adc [hl]                                      ; $5ab5: $8e
    rst $20                                       ; $5ab6: $e7
    add sp, $01                                   ; $5ab7: $e8 $01
    di                                            ; $5ab9: $f3
    db $eb                                        ; $5aba: $eb
    db $ec                                        ; $5abb: $ec
    or $f7                                        ; $5abc: $f6 $f7
    rst $28                                       ; $5abe: $ef
    ldh a, [$d1]                                  ; $5abf: $f0 $d1
    pop de                                        ; $5ac1: $d1
    rst $38                                       ; $5ac2: $ff
    ld a, $d1                                     ; $5ac3: $3e $d1
    pop de                                        ; $5ac5: $d1
    adc e                                         ; $5ac6: $8b
    adc e                                         ; $5ac7: $8b
    adc e                                         ; $5ac8: $8b
    adc e                                         ; $5ac9: $8b
    adc [hl]                                      ; $5aca: $8e
    adc e                                         ; $5acb: $8b
    adc e                                         ; $5acc: $8b
    adc e                                         ; $5acd: $8b
    adc e                                         ; $5ace: $8b
    adc e                                         ; $5acf: $8b
    add e                                         ; $5ad0: $83
    add e                                         ; $5ad1: $83
    adc e                                         ; $5ad2: $8b
    adc e                                         ; $5ad3: $8b
    add e                                         ; $5ad4: $83
    add e                                         ; $5ad5: $83
    db $f4                                        ; $5ad6: $f4
    push af                                       ; $5ad7: $f5
    ld a, [$f8fb]                                 ; $5ad8: $fa $fb $f8
    ld sp, hl                                     ; $5adb: $f9
    pop de                                        ; $5adc: $d1
    cp $d1                                        ; $5add: $fe $d1
    pop de                                        ; $5adf: $d1
    pop de                                        ; $5ae0: $d1
    pop de                                        ; $5ae1: $d1
    pop de                                        ; $5ae2: $d1
    pop de                                        ; $5ae3: $d1
    pop de                                        ; $5ae4: $d1
    pop de                                        ; $5ae5: $d1
    adc e                                         ; $5ae6: $8b
    adc e                                         ; $5ae7: $8b
    adc [hl]                                      ; $5ae8: $8e
    adc [hl]                                      ; $5ae9: $8e
    adc e                                         ; $5aea: $8b
    adc e                                         ; $5aeb: $8b
    add e                                         ; $5aec: $83
    adc e                                         ; $5aed: $8b
    add e                                         ; $5aee: $83
    add e                                         ; $5aef: $83
    add e                                         ; $5af0: $83
    add [hl]                                      ; $5af1: $86
    add e                                         ; $5af2: $83
    add e                                         ; $5af3: $83
    add [hl]                                      ; $5af4: $86
    add e                                         ; $5af5: $83
    db $fc                                        ; $5af6: $fc
    db $fd                                        ; $5af7: $fd
    rst $38                                       ; $5af8: $ff
    nop                                           ; $5af9: $00
    pop de                                        ; $5afa: $d1
    ld [bc], a                                    ; $5afb: $02
    pop de                                        ; $5afc: $d1
    ld [bc], a                                    ; $5afd: $02
    pop de                                        ; $5afe: $d1
    pop de                                        ; $5aff: $d1
    pop de                                        ; $5b00: $d1
    pop de                                        ; $5b01: $d1
    pop de                                        ; $5b02: $d1
    pop de                                        ; $5b03: $d1
    pop de                                        ; $5b04: $d1
    pop de                                        ; $5b05: $d1
    adc [hl]                                      ; $5b06: $8e
    adc [hl]                                      ; $5b07: $8e
    adc e                                         ; $5b08: $8b
    adc e                                         ; $5b09: $8b
    add e                                         ; $5b0a: $83
    add e                                         ; $5b0b: $83
    add e                                         ; $5b0c: $83
    adc e                                         ; $5b0d: $8b
    add e                                         ; $5b0e: $83
    add e                                         ; $5b0f: $83
    add e                                         ; $5b10: $83
    add e                                         ; $5b11: $83
    add e                                         ; $5b12: $83
    add e                                         ; $5b13: $83
    add e                                         ; $5b14: $83
    add e                                         ; $5b15: $83
    pop de                                        ; $5b16: $d1
    ld [bc], a                                    ; $5b17: $02
    pop de                                        ; $5b18: $d1
    pop de                                        ; $5b19: $d1
    pop de                                        ; $5b1a: $d1
    pop de                                        ; $5b1b: $d1
    pop de                                        ; $5b1c: $d1
    pop de                                        ; $5b1d: $d1
    pop de                                        ; $5b1e: $d1
    pop de                                        ; $5b1f: $d1
    pop de                                        ; $5b20: $d1
    pop de                                        ; $5b21: $d1
    pop de                                        ; $5b22: $d1
    pop de                                        ; $5b23: $d1
    pop de                                        ; $5b24: $d1
    pop de                                        ; $5b25: $d1
    add e                                         ; $5b26: $83
    adc e                                         ; $5b27: $8b
    add e                                         ; $5b28: $83
    add e                                         ; $5b29: $83
    add e                                         ; $5b2a: $83
    add e                                         ; $5b2b: $83
    add e                                         ; $5b2c: $83
    add e                                         ; $5b2d: $83
    add e                                         ; $5b2e: $83
    add e                                         ; $5b2f: $83
    add e                                         ; $5b30: $83
    add e                                         ; $5b31: $83
    add e                                         ; $5b32: $83
    add e                                         ; $5b33: $83
    add e                                         ; $5b34: $83
    add e                                         ; $5b35: $83
    rst $28                                       ; $5b36: $ef
    ldh a, [$f9]                                  ; $5b37: $f0 $f9
    ld a, [$f3f2]                                 ; $5b39: $fa $f2 $f3
    ei                                            ; $5b3c: $fb
    call c, $f7f6                                 ; $5b3d: $dc $f6 $f7
    inc h                                         ; $5b40: $24
    ld [c], a                                     ; $5b41: $e2
    jp nc, $e4d3                                  ; $5b42: $d2 $d3 $e4

    push hl                                       ; $5b45: $e5
    add [hl]                                      ; $5b46: $86
    add [hl]                                      ; $5b47: $86
    ld [bc], a                                    ; $5b48: $02
    dec b                                         ; $5b49: $05
    add e                                         ; $5b4a: $83
    add [hl]                                      ; $5b4b: $86
    ld [bc], a                                    ; $5b4c: $02
    dec b                                         ; $5b4d: $05
    add [hl]                                      ; $5b4e: $86
    add [hl]                                      ; $5b4f: $86
    ld [bc], a                                    ; $5b50: $02
    dec b                                         ; $5b51: $05
    add [hl]                                      ; $5b52: $86
    add e                                         ; $5b53: $83
    ld [bc], a                                    ; $5b54: $02
    dec b                                         ; $5b55: $05
    reti                                          ; $5b56: $d9


    sub l                                         ; $5b57: $95
    ret c                                         ; $5b58: $d8

    reti                                          ; $5b59: $d9


    dec bc                                        ; $5b5a: $0b
    ld de, $f10d                                  ; $5b5b: $11 $0d $f1
    push de                                       ; $5b5e: $d5
    pop hl                                        ; $5b5f: $e1
    db $f4                                        ; $5b60: $f4
    push af                                       ; $5b61: $f5
    and $06                                       ; $5b62: $e6 $06
    ret c                                         ; $5b64: $d8

    reti                                          ; $5b65: $d9


    ld [bc], a                                    ; $5b66: $02
    dec c                                         ; $5b67: $0d
    ld [bc], a                                    ; $5b68: $02
    ld [bc], a                                    ; $5b69: $02
    ld [bc], a                                    ; $5b6a: $02
    dec b                                         ; $5b6b: $05
    dec b                                         ; $5b6c: $05
    dec b                                         ; $5b6d: $05
    ld [bc], a                                    ; $5b6e: $02
    ld [bc], a                                    ; $5b6f: $02
    ld [bc], a                                    ; $5b70: $02
    ld [bc], a                                    ; $5b71: $02
    ld [bc], a                                    ; $5b72: $02
    dec c                                         ; $5b73: $0d
    ld [bc], a                                    ; $5b74: $02
    ld [bc], a                                    ; $5b75: $02
    ld sp, hl                                     ; $5b76: $f9
    ret c                                         ; $5b77: $d8

    sub h                                         ; $5b78: $94
    sub l                                         ; $5b79: $95
    ei                                            ; $5b7a: $fb
    call c, Call_000_11fc                         ; $5b7b: $dc $fc $11
    inc h                                         ; $5b7e: $24
    ld [c], a                                     ; $5b7f: $e2
    db $e3                                        ; $5b80: $e3
    dec h                                         ; $5b81: $25
    db $fd                                        ; $5b82: $fd
    push hl                                       ; $5b83: $e5
    reti                                          ; $5b84: $d9


    db $fd                                        ; $5b85: $fd
    dec b                                         ; $5b86: $05
    dec b                                         ; $5b87: $05
    ld a, [bc]                                    ; $5b88: $0a
    dec c                                         ; $5b89: $0d
    ld [bc], a                                    ; $5b8a: $02
    ld [bc], a                                    ; $5b8b: $02
    ld [bc], a                                    ; $5b8c: $02
    ld [bc], a                                    ; $5b8d: $02
    ld [bc], a                                    ; $5b8e: $02
    ld [bc], a                                    ; $5b8f: $02
    dec b                                         ; $5b90: $05
    dec b                                         ; $5b91: $05
    ld [bc], a                                    ; $5b92: $02
    ld [bc], a                                    ; $5b93: $02
    dec b                                         ; $5b94: $05
    ld [bc], a                                    ; $5b95: $02
    inc c                                         ; $5b96: $0c
    reti                                          ; $5b97: $d9


    ld sp, hl                                     ; $5b98: $f9
    ld a, [$0b0d]                                 ; $5b99: $fa $0d $0b
    ei                                            ; $5b9c: $fb
    call c, $d5d4                                 ; $5b9d: $dc $d4 $d5
    pop hl                                        ; $5ba0: $e1
    call nc, Call_000_21d8                        ; $5ba1: $d4 $d8 $21
    db $fd                                        ; $5ba4: $fd
    ret c                                         ; $5ba5: $d8

    dec b                                         ; $5ba6: $05
    ld [bc], a                                    ; $5ba7: $02
    ld [bc], a                                    ; $5ba8: $02
    ld [bc], a                                    ; $5ba9: $02
    ld [bc], a                                    ; $5baa: $02
    dec b                                         ; $5bab: $05
    ld [bc], a                                    ; $5bac: $02
    ld [bc], a                                    ; $5bad: $02
    dec b                                         ; $5bae: $05
    dec b                                         ; $5baf: $05
    dec b                                         ; $5bb0: $05
    ld [bc], a                                    ; $5bb1: $02
    ld [bc], a                                    ; $5bb2: $02
    ld [bc], a                                    ; $5bb3: $02
    ld [bc], a                                    ; $5bb4: $02
    dec b                                         ; $5bb5: $05
    sub $d7                                       ; $5bb6: $d6 $d7
    ld de, $dae8                                  ; $5bb8: $11 $e8 $da
    db $db                                        ; $5bbb: $db
    pop hl                                        ; $5bbc: $e1
    call nc, $dfde                                ; $5bbd: $d4 $de $df
    db $fd                                        ; $5bc0: $fd
    ret c                                         ; $5bc1: $d8

    ccf                                           ; $5bc2: $3f
    ld b, b                                       ; $5bc3: $40
    xor l                                         ; $5bc4: $ad
    or [hl]                                       ; $5bc5: $b6
    and e                                         ; $5bc6: $a3
    and e                                         ; $5bc7: $a3
    ld [bc], a                                    ; $5bc8: $02
    ld [bc], a                                    ; $5bc9: $02
    add e                                         ; $5bca: $83
    add e                                         ; $5bcb: $83
    ld [bc], a                                    ; $5bcc: $02
    ld [bc], a                                    ; $5bcd: $02
    add e                                         ; $5bce: $83
    add e                                         ; $5bcf: $83
    ld [bc], a                                    ; $5bd0: $02
    ld [bc], a                                    ; $5bd1: $02
    adc [hl]                                      ; $5bd2: $8e
    adc e                                         ; $5bd3: $8b
    adc [hl]                                      ; $5bd4: $8e
    adc e                                         ; $5bd5: $8b
    jp hl                                         ; $5bd6: $e9


    ld h, $22                                     ; $5bd7: $26 $22
    db $dd                                        ; $5bd9: $dd
    daa                                           ; $5bda: $27
    pop hl                                        ; $5bdb: $e1
    inc hl                                        ; $5bdc: $23
    ldh [$d9], a                                  ; $5bdd: $e0 $d9
    db $fd                                        ; $5bdf: $fd
    ret c                                         ; $5be0: $d8

    reti                                          ; $5be1: $d9


    or a                                          ; $5be2: $b7
    cp b                                          ; $5be3: $b8
    sbc a                                         ; $5be4: $9f
    and b                                         ; $5be5: $a0
    ld [bc], a                                    ; $5be6: $02
    ld [bc], a                                    ; $5be7: $02
    dec b                                         ; $5be8: $05
    ld [bc], a                                    ; $5be9: $02
    ld [bc], a                                    ; $5bea: $02
    dec b                                         ; $5beb: $05
    dec b                                         ; $5bec: $05
    ld [bc], a                                    ; $5bed: $02
    ld [bc], a                                    ; $5bee: $02
    ld [bc], a                                    ; $5bef: $02
    ld [bc], a                                    ; $5bf0: $02
    ld [bc], a                                    ; $5bf1: $02
    adc e                                         ; $5bf2: $8b
    adc e                                         ; $5bf3: $8b
    adc e                                         ; $5bf4: $8b
    adc e                                         ; $5bf5: $8b
    ld de, $0bdc                                  ; $5bf6: $11 $dc $0b
    ld h, $ea                                     ; $5bf9: $26 $ea
    db $eb                                        ; $5bfb: $eb
    daa                                           ; $5bfc: $27
    jr z, @-$05                                   ; $5bfd: $28 $f9

    ret c                                         ; $5bff: $d8

    sub h                                         ; $5c00: $94
    sub l                                         ; $5c01: $95
    and c                                         ; $5c02: $a1
    xor d                                         ; $5c03: $aa
    xor e                                         ; $5c04: $ab
    xor h                                         ; $5c05: $ac
    ld [bc], a                                    ; $5c06: $02
    dec b                                         ; $5c07: $05
    dec b                                         ; $5c08: $05
    ld [bc], a                                    ; $5c09: $02
    dec b                                         ; $5c0a: $05
    dec b                                         ; $5c0b: $05
    dec b                                         ; $5c0c: $05
    ld [bc], a                                    ; $5c0d: $02
    ld [bc], a                                    ; $5c0e: $02
    dec b                                         ; $5c0f: $05
    dec c                                         ; $5c10: $0d
    dec c                                         ; $5c11: $0d
    adc e                                         ; $5c12: $8b
    adc e                                         ; $5c13: $8b
    adc e                                         ; $5c14: $8b
    adc e                                         ; $5c15: $8b
    ld [hl+], a                                   ; $5c16: $22
    dec bc                                        ; $5c17: $0b
    rst $20                                       ; $5c18: $e7
    add sp, $23                                   ; $5c19: $e8 $23
    ldh [$ea], a                                  ; $5c1b: $e0 $ea
    call nc, $ee0c                                ; $5c1d: $d4 $0c $ee
    db $fd                                        ; $5c20: $fd
    ld a, [$b6ad]                                 ; $5c21: $fa $ad $b6
    or a                                          ; $5c24: $b7
    cp b                                          ; $5c25: $b8
    ld [bc], a                                    ; $5c26: $02
    ld [bc], a                                    ; $5c27: $02
    dec b                                         ; $5c28: $05
    ld [bc], a                                    ; $5c29: $02
    dec b                                         ; $5c2a: $05
    dec b                                         ; $5c2b: $05
    ld [bc], a                                    ; $5c2c: $02
    dec b                                         ; $5c2d: $05
    dec b                                         ; $5c2e: $05
    dec b                                         ; $5c2f: $05
    ld [bc], a                                    ; $5c30: $02
    ld [bc], a                                    ; $5c31: $02
    adc e                                         ; $5c32: $8b
    adc e                                         ; $5c33: $8b
    adc e                                         ; $5c34: $8b
    adc e                                         ; $5c35: $8b
    ld b, c                                       ; $5c36: $41
    ld b, d                                       ; $5c37: $42
    or c                                          ; $5c38: $b1
    cp c                                          ; $5c39: $b9
    ld a, [c]                                     ; $5c3a: $f2
    ld b, e                                       ; $5c3b: $43
    or l                                          ; $5c3c: $b5
    cp l                                          ; $5c3d: $bd
    ld b, h                                       ; $5c3e: $44
    ld b, l                                       ; $5c3f: $45
    ld b, [hl]                                    ; $5c40: $46
    db $e3                                        ; $5c41: $e3
    pop de                                        ; $5c42: $d1
    pop de                                        ; $5c43: $d1
    ld b, a                                       ; $5c44: $47
    rst $20                                       ; $5c45: $e7
    adc [hl]                                      ; $5c46: $8e
    adc e                                         ; $5c47: $8b
    adc [hl]                                      ; $5c48: $8e
    adc e                                         ; $5c49: $8b
    add e                                         ; $5c4a: $83
    adc [hl]                                      ; $5c4b: $8e
    adc [hl]                                      ; $5c4c: $8e
    adc [hl]                                      ; $5c4d: $8e
    adc e                                         ; $5c4e: $8b
    adc e                                         ; $5c4f: $8b
    adc [hl]                                      ; $5c50: $8e
    adc e                                         ; $5c51: $8b
    add e                                         ; $5c52: $83
    add e                                         ; $5c53: $83
    adc [hl]                                      ; $5c54: $8e
    adc [hl]                                      ; $5c55: $8e
    cp d                                          ; $5c56: $ba
    cp e                                          ; $5c57: $bb
    cp h                                          ; $5c58: $bc
    and h                                         ; $5c59: $a4
    cp [hl]                                       ; $5c5a: $be
    cp a                                          ; $5c5b: $bf
    ret nz                                        ; $5c5c: $c0

    xor b                                         ; $5c5d: $a8
    db $e4                                        ; $5c5e: $e4
    push hl                                       ; $5c5f: $e5
    and $c5                                       ; $5c60: $e6 $c5
    add sp, -$17                                  ; $5c62: $e8 $e9
    ld [$8ec9], a                                 ; $5c64: $ea $c9 $8e
    adc [hl]                                      ; $5c67: $8e
    adc [hl]                                      ; $5c68: $8e
    adc [hl]                                      ; $5c69: $8e
    adc e                                         ; $5c6a: $8b
    adc e                                         ; $5c6b: $8b
    adc [hl]                                      ; $5c6c: $8e
    adc [hl]                                      ; $5c6d: $8e
    adc e                                         ; $5c6e: $8b
    adc e                                         ; $5c6f: $8b
    adc [hl]                                      ; $5c70: $8e
    adc [hl]                                      ; $5c71: $8e
    adc e                                         ; $5c72: $8b
    adc [hl]                                      ; $5c73: $8e
    adc e                                         ; $5c74: $8b
    adc [hl]                                      ; $5c75: $8e
    and l                                         ; $5c76: $a5
    xor [hl]                                      ; $5c77: $ae
    xor a                                         ; $5c78: $af
    or b                                          ; $5c79: $b0
    xor c                                         ; $5c7a: $a9
    or d                                          ; $5c7b: $b2
    or e                                          ; $5c7c: $b3
    or h                                          ; $5c7d: $b4
    add $d3                                       ; $5c7e: $c6 $d3
    call nc, $cad5                                ; $5c80: $d4 $d5 $ca
    rst $10                                       ; $5c83: $d7
    ret c                                         ; $5c84: $d8

    reti                                          ; $5c85: $d9


    adc e                                         ; $5c86: $8b
    adc e                                         ; $5c87: $8b
    adc [hl]                                      ; $5c88: $8e
    adc e                                         ; $5c89: $8b
    adc e                                         ; $5c8a: $8b
    adc e                                         ; $5c8b: $8b
    adc e                                         ; $5c8c: $8b
    adc e                                         ; $5c8d: $8b
    adc e                                         ; $5c8e: $8b
    adc e                                         ; $5c8f: $8b
    adc e                                         ; $5c90: $8b
    adc e                                         ; $5c91: $8b
    adc [hl]                                      ; $5c92: $8e
    adc e                                         ; $5c93: $8b
    adc e                                         ; $5c94: $8b
    adc e                                         ; $5c95: $8b
    or c                                          ; $5c96: $b1
    cp c                                          ; $5c97: $b9
    cp d                                          ; $5c98: $ba
    cp e                                          ; $5c99: $bb
    or l                                          ; $5c9a: $b5
    cp l                                          ; $5c9b: $bd
    cp [hl]                                       ; $5c9c: $be
    cp a                                          ; $5c9d: $bf
    sub $e3                                       ; $5c9e: $d6 $e3
    db $e4                                        ; $5ca0: $e4
    push hl                                       ; $5ca1: $e5
    jp c, $e8e7                                   ; $5ca2: $da $e7 $e8

    jp hl                                         ; $5ca5: $e9


    adc [hl]                                      ; $5ca6: $8e
    adc e                                         ; $5ca7: $8b
    adc [hl]                                      ; $5ca8: $8e
    adc e                                         ; $5ca9: $8b
    adc e                                         ; $5caa: $8b
    adc e                                         ; $5cab: $8b
    adc [hl]                                      ; $5cac: $8e
    adc [hl]                                      ; $5cad: $8e
    adc e                                         ; $5cae: $8b
    adc [hl]                                      ; $5caf: $8e
    adc e                                         ; $5cb0: $8b
    adc e                                         ; $5cb1: $8b
    adc e                                         ; $5cb2: $8b
    adc e                                         ; $5cb3: $8b
    adc e                                         ; $5cb4: $8b
    adc [hl]                                      ; $5cb5: $8e
    pop de                                        ; $5cb6: $d1
    pop de                                        ; $5cb7: $d1
    ld c, b                                       ; $5cb8: $48
    ld c, c                                       ; $5cb9: $49
    pop de                                        ; $5cba: $d1
    pop de                                        ; $5cbb: $d1
    pop de                                        ; $5cbc: $d1
    ld c, d                                       ; $5cbd: $4a
    pop de                                        ; $5cbe: $d1
    pop de                                        ; $5cbf: $d1
    ld c, e                                       ; $5cc0: $4b
    ld c, h                                       ; $5cc1: $4c
    pop de                                        ; $5cc2: $d1
    pop de                                        ; $5cc3: $d1
    ld [bc], a                                    ; $5cc4: $02
    pop de                                        ; $5cc5: $d1
    add e                                         ; $5cc6: $83
    add e                                         ; $5cc7: $83
    adc [hl]                                      ; $5cc8: $8e
    adc e                                         ; $5cc9: $8b
    add e                                         ; $5cca: $83
    add [hl]                                      ; $5ccb: $86
    add e                                         ; $5ccc: $83
    adc e                                         ; $5ccd: $8b
    add e                                         ; $5cce: $83
    add [hl]                                      ; $5ccf: $86
    adc [hl]                                      ; $5cd0: $8e
    adc e                                         ; $5cd1: $8b
    add e                                         ; $5cd2: $83
    add e                                         ; $5cd3: $83
    add e                                         ; $5cd4: $83
    add e                                         ; $5cd5: $83
    db $ec                                        ; $5cd6: $ec
    db $ed                                        ; $5cd7: $ed
    xor $cd                                       ; $5cd8: $ee $cd
    ld c, l                                       ; $5cda: $4d
    pop af                                        ; $5cdb: $f1
    ret nc                                        ; $5cdc: $d0

    pop de                                        ; $5cdd: $d1
    ld c, [hl]                                    ; $5cde: $4e
    ld bc, $f4f3                                  ; $5cdf: $01 $f3 $f4
    ld [bc], a                                    ; $5ce2: $02
    or $f7                                        ; $5ce3: $f6 $f7
    ld hl, sp-$75                                 ; $5ce5: $f8 $8b
    adc e                                         ; $5ce7: $8b
    adc e                                         ; $5ce8: $8b
    adc e                                         ; $5ce9: $8b
    adc e                                         ; $5cea: $8b
    adc e                                         ; $5ceb: $8b
    adc e                                         ; $5cec: $8b
    adc e                                         ; $5ced: $8b
    adc e                                         ; $5cee: $8b
    adc [hl]                                      ; $5cef: $8e
    adc e                                         ; $5cf0: $8b
    adc e                                         ; $5cf1: $8b
    adc e                                         ; $5cf2: $8b
    adc e                                         ; $5cf3: $8b
    adc e                                         ; $5cf4: $8b
    adc [hl]                                      ; $5cf5: $8e
    adc $db                                       ; $5cf6: $ce $db
    call c, $d2dd                                 ; $5cf8: $dc $dd $d2
    rst $18                                       ; $5cfb: $df
    ldh [$e1], a                                  ; $5cfc: $e0 $e1
    push af                                       ; $5cfe: $f5
    ld a, [$fcfb]                                 ; $5cff: $fa $fb $fc
    ld sp, hl                                     ; $5d02: $f9
    pop de                                        ; $5d03: $d1
    cp $d1                                        ; $5d04: $fe $d1
    adc e                                         ; $5d06: $8b
    adc e                                         ; $5d07: $8b
    adc e                                         ; $5d08: $8b
    adc e                                         ; $5d09: $8b
    adc e                                         ; $5d0a: $8b
    adc e                                         ; $5d0b: $8b
    adc [hl]                                      ; $5d0c: $8e
    adc [hl]                                      ; $5d0d: $8e
    adc e                                         ; $5d0e: $8b
    adc [hl]                                      ; $5d0f: $8e
    adc [hl]                                      ; $5d10: $8e
    adc [hl]                                      ; $5d11: $8e
    adc e                                         ; $5d12: $8b
    add e                                         ; $5d13: $83
    adc [hl]                                      ; $5d14: $8e
    add [hl]                                      ; $5d15: $86
    sbc $eb                                       ; $5d16: $de $eb
    db $ec                                        ; $5d18: $ec
    db $ed                                        ; $5d19: $ed
    ld [c], a                                     ; $5d1a: $e2
    rst $28                                       ; $5d1b: $ef
    ldh a, [$f1]                                  ; $5d1c: $f0 $f1
    db $fd                                        ; $5d1e: $fd
    rst $38                                       ; $5d1f: $ff
    nop                                           ; $5d20: $00
    ld bc, $d102                                  ; $5d21: $01 $02 $d1
    ld [bc], a                                    ; $5d24: $02
    or $8b                                        ; $5d25: $f6 $8b
    adc e                                         ; $5d27: $8b
    adc e                                         ; $5d28: $8b
    adc [hl]                                      ; $5d29: $8e
    adc e                                         ; $5d2a: $8b
    adc e                                         ; $5d2b: $8b
    adc [hl]                                      ; $5d2c: $8e
    adc [hl]                                      ; $5d2d: $8e
    adc e                                         ; $5d2e: $8b
    adc [hl]                                      ; $5d2f: $8e
    adc [hl]                                      ; $5d30: $8e
    adc e                                         ; $5d31: $8b
    add [hl]                                      ; $5d32: $86
    add e                                         ; $5d33: $83
    adc e                                         ; $5d34: $8b
    adc e                                         ; $5d35: $8b
    sub h                                         ; $5d36: $94
    db $fd                                        ; $5d37: $fd
    ret c                                         ; $5d38: $d8

    xor $0b                                       ; $5d39: $ee $0b
    ld de, $f10d                                  ; $5d3b: $11 $0d $f1
    db $e3                                        ; $5d3e: $e3
    dec h                                         ; $5d3f: $25
    db $f4                                        ; $5d40: $f4
    push af                                       ; $5d41: $f5
    and $06                                       ; $5d42: $e6 $06
    ld hl, sp-$27                                 ; $5d44: $f8 $d9
    dec c                                         ; $5d46: $0d
    dec b                                         ; $5d47: $05
    dec b                                         ; $5d48: $05
    dec b                                         ; $5d49: $05
    ld [bc], a                                    ; $5d4a: $02
    dec b                                         ; $5d4b: $05
    ld [bc], a                                    ; $5d4c: $02
    dec b                                         ; $5d4d: $05
    dec b                                         ; $5d4e: $05
    dec b                                         ; $5d4f: $05
    dec b                                         ; $5d50: $05
    dec b                                         ; $5d51: $05
    dec b                                         ; $5d52: $05
    ld a, [bc]                                    ; $5d53: $0a
    ld [bc], a                                    ; $5d54: $02
    dec b                                         ; $5d55: $05
    db $fd                                        ; $5d56: $fd
    ret c                                         ; $5d57: $d8

    reti                                          ; $5d58: $d9


    sub l                                         ; $5d59: $95
    ld de, $fcdc                                  ; $5d5a: $11 $dc $fc
    sub a                                         ; $5d5d: $97
    pop hl                                        ; $5d5e: $e1
    ld [c], a                                     ; $5d5f: $e2
    db $e3                                        ; $5d60: $e3
    pop hl                                        ; $5d61: $e1
    db $fd                                        ; $5d62: $fd
    push hl                                       ; $5d63: $e5
    reti                                          ; $5d64: $d9


    db $fd                                        ; $5d65: $fd
    ld [bc], a                                    ; $5d66: $02
    ld [bc], a                                    ; $5d67: $02
    dec b                                         ; $5d68: $05
    ld a, [bc]                                    ; $5d69: $0a
    ld [bc], a                                    ; $5d6a: $02
    ld [bc], a                                    ; $5d6b: $02
    ld [bc], a                                    ; $5d6c: $02
    ld a, [bc]                                    ; $5d6d: $0a
    dec b                                         ; $5d6e: $05
    ld [bc], a                                    ; $5d6f: $02
    ld [bc], a                                    ; $5d70: $02
    ld [bc], a                                    ; $5d71: $02
    ld [bc], a                                    ; $5d72: $02
    ld [bc], a                                    ; $5d73: $02
    ld [bc], a                                    ; $5d74: $02
    ld [bc], a                                    ; $5d75: $02
    db $ed                                        ; $5d76: $ed
    db $ec                                        ; $5d77: $ec
    pop de                                        ; $5d78: $d1
    pop de                                        ; $5d79: $d1
    ldh a, [$ef]                                  ; $5d7a: $f0 $ef
    pop de                                        ; $5d7c: $d1
    pop de                                        ; $5d7d: $d1
    di                                            ; $5d7e: $f3
    ld a, [c]                                     ; $5d7f: $f2
    pop de                                        ; $5d80: $d1
    pop de                                        ; $5d81: $d1
    rst $30                                       ; $5d82: $f7
    or $d1                                        ; $5d83: $f6 $d1
    pop de                                        ; $5d85: $d1
    and e                                         ; $5d86: $a3
    and [hl]                                      ; $5d87: $a6
    add e                                         ; $5d88: $83
    add e                                         ; $5d89: $83
    and e                                         ; $5d8a: $a3
    and [hl]                                      ; $5d8b: $a6
    add e                                         ; $5d8c: $83
    add e                                         ; $5d8d: $83
    and [hl]                                      ; $5d8e: $a6
    and [hl]                                      ; $5d8f: $a6
    add e                                         ; $5d90: $83
    add e                                         ; $5d91: $83
    and [hl]                                      ; $5d92: $a6
    and e                                         ; $5d93: $a3
    add e                                         ; $5d94: $83
    add e                                         ; $5d95: $83
    dec bc                                        ; $5d96: $0b
    ld de, $dddc                                  ; $5d97: $11 $dc $dd
    daa                                           ; $5d9a: $27
    jr z, jr_07f_5dc0                             ; $5d9b: $28 $23

    ldh [$94], a                                  ; $5d9d: $e0 $94
    db $fd                                        ; $5d9f: $fd
    ret c                                         ; $5da0: $d8

    reti                                          ; $5da1: $d9


    sbc a                                         ; $5da2: $9f
    and b                                         ; $5da3: $a0
    and c                                         ; $5da4: $a1
    xor d                                         ; $5da5: $aa
    ld [bc], a                                    ; $5da6: $02
    ld [bc], a                                    ; $5da7: $02
    dec b                                         ; $5da8: $05
    ld [bc], a                                    ; $5da9: $02
    dec b                                         ; $5daa: $05
    ld [bc], a                                    ; $5dab: $02
    ld [bc], a                                    ; $5dac: $02
    ld [bc], a                                    ; $5dad: $02
    ld a, [bc]                                    ; $5dae: $0a
    ld [bc], a                                    ; $5daf: $02
    ld [bc], a                                    ; $5db0: $02
    ld [bc], a                                    ; $5db1: $02
    adc e                                         ; $5db2: $8b
    adc e                                         ; $5db3: $8b
    adc e                                         ; $5db4: $8b
    adc e                                         ; $5db5: $8b
    rst $20                                       ; $5db6: $e7
    call c, $11e9                                 ; $5db7: $dc $e9 $11
    pop hl                                        ; $5dba: $e1
    call nc, $e1d5                                ; $5dbb: $d4 $d5 $e1
    db $fd                                        ; $5dbe: $fd
    ret c                                         ; $5dbf: $d8

jr_07f_5dc0:
    reti                                          ; $5dc0: $d9


    db $fd                                        ; $5dc1: $fd
    xor e                                         ; $5dc2: $ab
    xor h                                         ; $5dc3: $ac
    xor l                                         ; $5dc4: $ad
    or [hl]                                       ; $5dc5: $b6
    dec b                                         ; $5dc6: $05
    dec b                                         ; $5dc7: $05
    ld [bc], a                                    ; $5dc8: $02
    ld [bc], a                                    ; $5dc9: $02
    ld [bc], a                                    ; $5dca: $02
    ld [bc], a                                    ; $5dcb: $02
    ld [bc], a                                    ; $5dcc: $02
    ld [bc], a                                    ; $5dcd: $02
    ld [bc], a                                    ; $5dce: $02
    ld [bc], a                                    ; $5dcf: $02
    ld [bc], a                                    ; $5dd0: $02
    ld [bc], a                                    ; $5dd1: $02
    adc e                                         ; $5dd2: $8b
    adc e                                         ; $5dd3: $8b
    adc e                                         ; $5dd4: $8b
    adc e                                         ; $5dd5: $8b
    db $d3                                        ; $5dd6: $d3
    jp nc, $d1d1                                  ; $5dd7: $d2 $d1 $d1

    rst $10                                       ; $5dda: $d7
    sub $d1                                       ; $5ddb: $d6 $d1
    pop de                                        ; $5ddd: $d1
    db $db                                        ; $5dde: $db
    jp c, $d1d1                                   ; $5ddf: $da $d1 $d1

    ld c, a                                       ; $5de2: $4f
    ld d, b                                       ; $5de3: $50
    ld d, c                                       ; $5de4: $51
    pop de                                        ; $5de5: $d1
    and e                                         ; $5de6: $a3
    and e                                         ; $5de7: $a3
    add e                                         ; $5de8: $83
    add e                                         ; $5de9: $83
    add e                                         ; $5dea: $83
    add e                                         ; $5deb: $83
    add e                                         ; $5dec: $83
    add e                                         ; $5ded: $83
    and e                                         ; $5dee: $a3
    and e                                         ; $5def: $a3
    add e                                         ; $5df0: $83
    add e                                         ; $5df1: $83
    adc e                                         ; $5df2: $8b
    adc e                                         ; $5df3: $8b
    adc e                                         ; $5df4: $8b
    add e                                         ; $5df5: $83
    cp h                                          ; $5df6: $bc
    and h                                         ; $5df7: $a4
    and l                                         ; $5df8: $a5
    xor [hl]                                      ; $5df9: $ae
    ret nz                                        ; $5dfa: $c0

    xor b                                         ; $5dfb: $a8
    xor c                                         ; $5dfc: $a9
    or d                                          ; $5dfd: $b2
    and $c5                                       ; $5dfe: $e6 $c5
    add $d3                                       ; $5e00: $c6 $d3
    ld [$cac9], a                                 ; $5e02: $ea $c9 $ca
    rst $10                                       ; $5e05: $d7
    adc e                                         ; $5e06: $8b
    adc e                                         ; $5e07: $8b
    adc e                                         ; $5e08: $8b
    adc e                                         ; $5e09: $8b
    adc [hl]                                      ; $5e0a: $8e
    adc [hl]                                      ; $5e0b: $8e
    adc [hl]                                      ; $5e0c: $8e
    adc [hl]                                      ; $5e0d: $8e
    adc [hl]                                      ; $5e0e: $8e
    adc e                                         ; $5e0f: $8b
    adc e                                         ; $5e10: $8b
    adc [hl]                                      ; $5e11: $8e
    adc e                                         ; $5e12: $8b
    adc e                                         ; $5e13: $8b
    adc [hl]                                      ; $5e14: $8e
    adc [hl]                                      ; $5e15: $8e
    xor a                                         ; $5e16: $af
    or b                                          ; $5e17: $b0
    or c                                          ; $5e18: $b1
    cp c                                          ; $5e19: $b9
    or e                                          ; $5e1a: $b3
    or h                                          ; $5e1b: $b4
    or l                                          ; $5e1c: $b5
    cp l                                          ; $5e1d: $bd
    call nc, $d6d5                                ; $5e1e: $d4 $d5 $d6
    db $e3                                        ; $5e21: $e3
    ret c                                         ; $5e22: $d8

    reti                                          ; $5e23: $d9


    jp c, $8e52                                   ; $5e24: $da $52 $8e

    adc [hl]                                      ; $5e27: $8e
    adc [hl]                                      ; $5e28: $8e
    adc e                                         ; $5e29: $8b
    adc [hl]                                      ; $5e2a: $8e
    adc [hl]                                      ; $5e2b: $8e
    adc [hl]                                      ; $5e2c: $8e
    adc [hl]                                      ; $5e2d: $8e
    adc e                                         ; $5e2e: $8b
    adc [hl]                                      ; $5e2f: $8e
    adc [hl]                                      ; $5e30: $8e
    adc [hl]                                      ; $5e31: $8e
    adc e                                         ; $5e32: $8b
    adc [hl]                                      ; $5e33: $8e
    adc [hl]                                      ; $5e34: $8e
    adc [hl]                                      ; $5e35: $8e
    cp d                                          ; $5e36: $ba
    pop de                                        ; $5e37: $d1
    pop de                                        ; $5e38: $d1
    pop de                                        ; $5e39: $d1
    ld d, e                                       ; $5e3a: $53
    pop de                                        ; $5e3b: $d1
    pop de                                        ; $5e3c: $d1
    pop de                                        ; $5e3d: $d1
    ld d, h                                       ; $5e3e: $54
    ld d, l                                       ; $5e3f: $55
    pop de                                        ; $5e40: $d1
    pop de                                        ; $5e41: $d1
    pop de                                        ; $5e42: $d1
    pop de                                        ; $5e43: $d1
    pop de                                        ; $5e44: $d1
    pop de                                        ; $5e45: $d1
    adc e                                         ; $5e46: $8b
    add e                                         ; $5e47: $83
    add e                                         ; $5e48: $83
    add e                                         ; $5e49: $83
    adc [hl]                                      ; $5e4a: $8e
    add e                                         ; $5e4b: $83
    add e                                         ; $5e4c: $83
    add e                                         ; $5e4d: $83
    adc e                                         ; $5e4e: $8b
    adc e                                         ; $5e4f: $8b
    add e                                         ; $5e50: $83
    add e                                         ; $5e51: $83
    add e                                         ; $5e52: $83
    add e                                         ; $5e53: $83
    add e                                         ; $5e54: $83
    add e                                         ; $5e55: $83
    xor $cd                                       ; $5e56: $ee $cd
    adc $db                                       ; $5e58: $ce $db
    ret nc                                        ; $5e5a: $d0

    pop de                                        ; $5e5b: $d1
    jp nc, $f3df                                  ; $5e5c: $d2 $df $f3

    db $f4                                        ; $5e5f: $f4
    push af                                       ; $5e60: $f5
    ld a, [$f8f7]                                 ; $5e61: $fa $f7 $f8
    ld sp, hl                                     ; $5e64: $f9
    pop de                                        ; $5e65: $d1
    adc e                                         ; $5e66: $8b
    adc e                                         ; $5e67: $8b
    adc e                                         ; $5e68: $8b
    adc [hl]                                      ; $5e69: $8e
    adc [hl]                                      ; $5e6a: $8e
    adc [hl]                                      ; $5e6b: $8e
    adc e                                         ; $5e6c: $8b
    adc [hl]                                      ; $5e6d: $8e
    adc [hl]                                      ; $5e6e: $8e
    adc e                                         ; $5e6f: $8b
    adc e                                         ; $5e70: $8b
    adc e                                         ; $5e71: $8b
    adc [hl]                                      ; $5e72: $8e
    adc e                                         ; $5e73: $8b
    adc e                                         ; $5e74: $8b
    add e                                         ; $5e75: $83
    call c, Call_07f_56dd                         ; $5e76: $dc $dd $56
    pop de                                        ; $5e79: $d1
    ldh [$e1], a                                  ; $5e7a: $e0 $e1
    pop de                                        ; $5e7c: $d1
    pop de                                        ; $5e7d: $d1
    ei                                            ; $5e7e: $fb
    db $fc                                        ; $5e7f: $fc
    pop de                                        ; $5e80: $d1
    pop de                                        ; $5e81: $d1
    cp $d1                                        ; $5e82: $fe $d1
    pop de                                        ; $5e84: $d1
    pop de                                        ; $5e85: $d1
    adc [hl]                                      ; $5e86: $8e
    adc [hl]                                      ; $5e87: $8e
    adc e                                         ; $5e88: $8b
    add e                                         ; $5e89: $83
    adc [hl]                                      ; $5e8a: $8e
    adc e                                         ; $5e8b: $8b
    add e                                         ; $5e8c: $83
    add e                                         ; $5e8d: $83
    adc [hl]                                      ; $5e8e: $8e
    adc e                                         ; $5e8f: $8b
    add e                                         ; $5e90: $83
    add e                                         ; $5e91: $83
    adc [hl]                                      ; $5e92: $8e
    add [hl]                                      ; $5e93: $86
    add [hl]                                      ; $5e94: $86
    add e                                         ; $5e95: $83
    dec c                                         ; $5e96: $0d
    nop                                           ; $5e97: $00
    ld a, [bc]                                    ; $5e98: $0a
    nop                                           ; $5e99: $00
    add b                                         ; $5e9a: $80
    ld a, [bc]                                    ; $5e9b: $0a
    pop de                                        ; $5e9c: $d1
    pop de                                        ; $5e9d: $d1
    jp nc, $d1d3                                  ; $5e9e: $d2 $d3 $d1

    pop de                                        ; $5ea1: $d1
    jp nc, $d1d4                                  ; $5ea2: $d2 $d4 $d1

    pop de                                        ; $5ea5: $d1
    jp nc, $d1d5                                  ; $5ea6: $d2 $d5 $d1

    pop de                                        ; $5ea9: $d1
    jp nc, $80d6                                  ; $5eaa: $d2 $d6 $80

    add b                                         ; $5ead: $80
    add b                                         ; $5eae: $80
    ld bc, $8080                                  ; $5eaf: $01 $80 $80
    add b                                         ; $5eb2: $80
    ld bc, $8080                                  ; $5eb3: $01 $80 $80
    add b                                         ; $5eb6: $80
    ld bc, $8080                                  ; $5eb7: $01 $80 $80
    add b                                         ; $5eba: $80
    ld [bc], a                                    ; $5ebb: $02
    db $d3                                        ; $5ebc: $d3
    rst $10                                       ; $5ebd: $d7
    ret c                                         ; $5ebe: $d8

    ret c                                         ; $5ebf: $d8

    call nc, $dad9                                ; $5ec0: $d4 $d9 $da
    jp c, $dbd5                                   ; $5ec3: $da $d5 $db

    call c, $dddc                                 ; $5ec6: $dc $dc $dd
    sbc $df                                       ; $5ec9: $de $df
    ldh [rNR42], a                                ; $5ecb: $e0 $21
    ld bc, $2101                                  ; $5ecd: $01 $01 $21
    ld hl, $0101                                  ; $5ed0: $21 $01 $01
    ld hl, $0121                                  ; $5ed3: $21 $21 $01
    ld bc, $0221                                  ; $5ed6: $01 $21 $02
    ld [bc], a                                    ; $5ed9: $02
    ld [bc], a                                    ; $5eda: $02
    ld [bc], a                                    ; $5edb: $02
    rst $10                                       ; $5edc: $d7
    db $d3                                        ; $5edd: $d3
    db $d3                                        ; $5ede: $d3
    rst $10                                       ; $5edf: $d7
    reti                                          ; $5ee0: $d9


    call nc, $d9d4                                ; $5ee1: $d4 $d4 $d9
    db $db                                        ; $5ee4: $db
    push de                                       ; $5ee5: $d5
    push de                                       ; $5ee6: $d5
    db $db                                        ; $5ee7: $db
    pop hl                                        ; $5ee8: $e1
    ld [c], a                                     ; $5ee9: $e2
    db $e3                                        ; $5eea: $e3
    db $e4                                        ; $5eeb: $e4
    ld hl, $2101                                  ; $5eec: $21 $01 $21
    ld bc, $0121                                  ; $5eef: $01 $21 $01
    ld hl, $2101                                  ; $5ef2: $21 $01 $21
    ld bc, $0121                                  ; $5ef5: $01 $21 $01
    ld [bc], a                                    ; $5ef8: $02
    ld [bc], a                                    ; $5ef9: $02
    ld [bc], a                                    ; $5efa: $02
    ld [bc], a                                    ; $5efb: $02
    ret c                                         ; $5efc: $d8

    ret c                                         ; $5efd: $d8

    rst $10                                       ; $5efe: $d7
    db $d3                                        ; $5eff: $d3
    jp c, $d9da                                   ; $5f00: $da $da $d9

    call nc, $dcdc                                ; $5f03: $d4 $dc $dc
    db $db                                        ; $5f06: $db
    push de                                       ; $5f07: $d5
    push hl                                       ; $5f08: $e5
    and $e7                                       ; $5f09: $e6 $e7
    sub $01                                       ; $5f0b: $d6 $01
    ld hl, $0121                                  ; $5f0d: $21 $21 $01
    ld bc, $2121                                  ; $5f10: $01 $21 $21
    ld bc, $2101                                  ; $5f13: $01 $01 $21
    ld hl, $0201                                  ; $5f16: $21 $01 $02
    ld [bc], a                                    ; $5f19: $02
    ld [bc], a                                    ; $5f1a: $02
    ld [bc], a                                    ; $5f1b: $02
    pop de                                        ; $5f1c: $d1
    pop de                                        ; $5f1d: $d1
    jp nc, $d1e8                                  ; $5f1e: $d2 $e8 $d1

    pop de                                        ; $5f21: $d1
    jp nc, $d1e9                                  ; $5f22: $d2 $e9 $d1

    pop de                                        ; $5f25: $d1
    jp nc, $d1ea                                  ; $5f26: $d2 $ea $d1

    pop de                                        ; $5f29: $d1
    jp nc, $80eb                                  ; $5f2a: $d2 $eb $80

    add b                                         ; $5f2d: $80
    add b                                         ; $5f2e: $80
    ld [bc], a                                    ; $5f2f: $02
    add b                                         ; $5f30: $80
    add b                                         ; $5f31: $80
    add b                                         ; $5f32: $80
    ld [bc], a                                    ; $5f33: $02
    add b                                         ; $5f34: $80
    add b                                         ; $5f35: $80
    add b                                         ; $5f36: $80
    inc bc                                        ; $5f37: $03
    add b                                         ; $5f38: $80
    add b                                         ; $5f39: $80
    add b                                         ; $5f3a: $80
    inc b                                         ; $5f3b: $04
    db $ec                                        ; $5f3c: $ec
    db $ed                                        ; $5f3d: $ed
    xor $ef                                       ; $5f3e: $ee $ef
    ldh a, [$f1]                                  ; $5f40: $f0 $f1
    ld a, [c]                                     ; $5f42: $f2
    di                                            ; $5f43: $f3
    db $f4                                        ; $5f44: $f4
    push af                                       ; $5f45: $f5
    ld [$ebf6], a                                 ; $5f46: $ea $f6 $eb
    db $eb                                        ; $5f49: $eb
    rst $30                                       ; $5f4a: $f7
    db $eb                                        ; $5f4b: $eb
    ld [bc], a                                    ; $5f4c: $02
    ld [bc], a                                    ; $5f4d: $02
    ld [bc], a                                    ; $5f4e: $02
    ld [bc], a                                    ; $5f4f: $02
    ld [bc], a                                    ; $5f50: $02
    ld [bc], a                                    ; $5f51: $02
    ld [bc], a                                    ; $5f52: $02
    ld [bc], a                                    ; $5f53: $02
    inc bc                                        ; $5f54: $03
    ld [bc], a                                    ; $5f55: $02
    inc hl                                        ; $5f56: $23
    ld [bc], a                                    ; $5f57: $02
    inc b                                         ; $5f58: $04
    inc b                                         ; $5f59: $04
    inc b                                         ; $5f5a: $04
    inc b                                         ; $5f5b: $04
    ld hl, sp-$07                                 ; $5f5c: $f8 $f9
    ld a, [$fcfb]                                 ; $5f5e: $fa $fb $fc
    db $fd                                        ; $5f61: $fd
    cp $ff                                        ; $5f62: $fe $ff
    nop                                           ; $5f64: $00
    ld bc, $02f5                                  ; $5f65: $01 $f5 $02
    db $eb                                        ; $5f68: $eb
    db $eb                                        ; $5f69: $eb
    db $eb                                        ; $5f6a: $eb
    rst $30                                       ; $5f6b: $f7
    ld [bc], a                                    ; $5f6c: $02
    ld [bc], a                                    ; $5f6d: $02
    ld [bc], a                                    ; $5f6e: $02
    ld [bc], a                                    ; $5f6f: $02
    ld [bc], a                                    ; $5f70: $02
    ld [bc], a                                    ; $5f71: $02
    ld [bc], a                                    ; $5f72: $02
    ld [bc], a                                    ; $5f73: $02
    ld [bc], a                                    ; $5f74: $02
    inc bc                                        ; $5f75: $03
    ld h, d                                       ; $5f76: $62
    inc bc                                        ; $5f77: $03
    inc b                                         ; $5f78: $04
    inc b                                         ; $5f79: $04
    inc b                                         ; $5f7a: $04
    inc b                                         ; $5f7b: $04
    inc bc                                        ; $5f7c: $03
    inc b                                         ; $5f7d: $04
    dec b                                         ; $5f7e: $05
    add sp, $06                                   ; $5f7f: $e8 $06
    rlca                                          ; $5f81: $07
    ld [$09e9], sp                                ; $5f82: $08 $e9 $09
    or $00                                        ; $5f85: $f6 $00
    db $f4                                        ; $5f87: $f4
    db $eb                                        ; $5f88: $eb
    db $eb                                        ; $5f89: $eb
    db $eb                                        ; $5f8a: $eb
    db $eb                                        ; $5f8b: $eb
    ld [bc], a                                    ; $5f8c: $02
    ld [bc], a                                    ; $5f8d: $02
    ld [bc], a                                    ; $5f8e: $02
    ld [bc], a                                    ; $5f8f: $02
    ld [bc], a                                    ; $5f90: $02
    ld [bc], a                                    ; $5f91: $02
    ld [bc], a                                    ; $5f92: $02
    ld [bc], a                                    ; $5f93: $02
    inc bc                                        ; $5f94: $03
    ld [bc], a                                    ; $5f95: $02
    ld [bc], a                                    ; $5f96: $02
    inc bc                                        ; $5f97: $03
    inc b                                         ; $5f98: $04
    inc b                                         ; $5f99: $04
    inc b                                         ; $5f9a: $04
    inc b                                         ; $5f9b: $04
    pop de                                        ; $5f9c: $d1
    pop de                                        ; $5f9d: $d1
    jp nc, $d10a                                  ; $5f9e: $d2 $0a $d1

    pop de                                        ; $5fa1: $d1
    jp nc, $d10b                                  ; $5fa2: $d2 $0b $d1

    pop de                                        ; $5fa5: $d1
    jp nc, $d10c                                  ; $5fa6: $d2 $0c $d1

    pop de                                        ; $5fa9: $d1
    jp nc, $800d                                  ; $5faa: $d2 $0d $80

    add b                                         ; $5fad: $80
    add b                                         ; $5fae: $80
    ld b, $80                                     ; $5faf: $06 $80
    add b                                         ; $5fb1: $80
    add b                                         ; $5fb2: $80
    ld b, $80                                     ; $5fb3: $06 $80
    add b                                         ; $5fb5: $80
    add b                                         ; $5fb6: $80
    ld b, $80                                     ; $5fb7: $06 $80
    add b                                         ; $5fb9: $80
    add b                                         ; $5fba: $80
    ld b, $0e                                     ; $5fbb: $06 $0e
    rrca                                          ; $5fbd: $0f
    db $10                                        ; $5fbe: $10
    rrca                                          ; $5fbf: $0f
    ld de, $1312                                  ; $5fc0: $11 $12 $13
    ld [de], a                                    ; $5fc3: $12
    inc d                                         ; $5fc4: $14
    dec d                                         ; $5fc5: $15
    ld d, $15                                     ; $5fc6: $16 $15
    rla                                           ; $5fc8: $17
    jr jr_07f_5fe4                                ; $5fc9: $18 $19

    jr jr_07f_5fd3                                ; $5fcb: $18 $06

    ld b, $06                                     ; $5fcd: $06 $06
    ld b, $07                                     ; $5fcf: $06 $07
    ld b, $06                                     ; $5fd1: $06 $06

jr_07f_5fd3:
    ld b, $06                                     ; $5fd3: $06 $06
    ld b, $07                                     ; $5fd5: $06 $07
    ld b, $07                                     ; $5fd7: $06 $07
    ld b, $06                                     ; $5fd9: $06 $06
    rlca                                          ; $5fdb: $07
    db $10                                        ; $5fdc: $10
    inc c                                         ; $5fdd: $0c
    ld a, [de]                                    ; $5fde: $1a
    ld a, [bc]                                    ; $5fdf: $0a
    inc de                                        ; $5fe0: $13
    dec de                                        ; $5fe1: $1b
    rla                                           ; $5fe2: $17
    inc e                                         ; $5fe3: $1c

jr_07f_5fe4:
    ld d, $1d                                     ; $5fe4: $16 $1d
    ld e, $1f                                     ; $5fe6: $1e $1f
    add hl, de                                    ; $5fe8: $19
    inc e                                         ; $5fe9: $1c
    ld de, $061b                                  ; $5fea: $11 $1b $06
    ld b, $06                                     ; $5fed: $06 $06
    ld b, $07                                     ; $5fef: $06 $07
    rlca                                          ; $5ff1: $07
    ld b, $06                                     ; $5ff2: $06 $06
    rlca                                          ; $5ff4: $07
    ld b, $06                                     ; $5ff5: $06 $06
    rlca                                          ; $5ff7: $07
    ld b, $06                                     ; $5ff8: $06 $06
    ld b, $06                                     ; $5ffa: $06 $06
    ld c, $0f                                     ; $5ffc: $0e $0f
    db $10                                        ; $5ffe: $10
    rrca                                          ; $5fff: $0f
    ld de, $1312                                  ; $6000: $11 $12 $13
    ld [de], a                                    ; $6003: $12
    inc d                                         ; $6004: $14
    dec d                                         ; $6005: $15
    ld d, $15                                     ; $6006: $16 $15
    rla                                           ; $6008: $17
    jr @+$1b                                      ; $6009: $18 $19

    jr nz, jr_07f_6013                            ; $600b: $20 $06

    ld b, $06                                     ; $600d: $06 $06
    ld b, $07                                     ; $600f: $06 $07
    ld b, $06                                     ; $6011: $06 $06

jr_07f_6013:
    rlca                                          ; $6013: $07
    ld b, $07                                     ; $6014: $06 $07
    ld b, $06                                     ; $6016: $06 $06
    ld b, $06                                     ; $6018: $06 $06
    ld b, $04                                     ; $601a: $06 $04
    pop de                                        ; $601c: $d1
    pop de                                        ; $601d: $d1
    jp nc, $d10f                                  ; $601e: $d2 $0f $d1

    pop de                                        ; $6021: $d1
    jp nc, $d121                                  ; $6022: $d2 $21 $d1

    pop de                                        ; $6025: $d1
    jp nc, $d122                                  ; $6026: $d2 $22 $d1

    pop de                                        ; $6029: $d1
    jp nc, $8023                                  ; $602a: $d2 $23 $80

    add b                                         ; $602d: $80
    add b                                         ; $602e: $80
    ld b, $80                                     ; $602f: $06 $80
    add b                                         ; $6031: $80
    add b                                         ; $6032: $80
    ld b, $80                                     ; $6033: $06 $80
    add b                                         ; $6035: $80
    add b                                         ; $6036: $80
    ld b, $80                                     ; $6037: $06 $80
    add b                                         ; $6039: $80
    add b                                         ; $603a: $80
    ld b, $24                                     ; $603b: $06 $24
    rra                                           ; $603d: $1f
    inc d                                         ; $603e: $14
    dec e                                         ; $603f: $1d
    inc de                                        ; $6040: $13
    dec de                                        ; $6041: $1b
    rla                                           ; $6042: $17
    inc e                                         ; $6043: $1c
    ld d, $1d                                     ; $6044: $16 $1d
    ld e, $1f                                     ; $6046: $1e $1f
    add hl, de                                    ; $6048: $19
    inc e                                         ; $6049: $1c
    ld de, $071b                                  ; $604a: $11 $1b $07
    ld b, $07                                     ; $604d: $06 $07
    ld b, $06                                     ; $604f: $06 $06
    rlca                                          ; $6051: $07
    ld b, $06                                     ; $6052: $06 $06
    ld b, $06                                     ; $6054: $06 $06
    rlca                                          ; $6056: $07
    ld b, $07                                     ; $6057: $06 $07
    ld b, $06                                     ; $6059: $06 $06
    ld b, $25                                     ; $605b: $06 $25
    ld h, $27                                     ; $605d: $26 $27
    jr z, jr_07f_608a                             ; $605f: $28 $29

    ld a, [hl+]                                   ; $6061: $2a
    dec hl                                        ; $6062: $2b
    ld [de], a                                    ; $6063: $12
    inc l                                         ; $6064: $2c
    dec l                                         ; $6065: $2d
    ld l, $22                                     ; $6066: $2e $22
    cpl                                           ; $6068: $2f
    jr nc, jr_07f_609b                            ; $6069: $30 $30

    inc hl                                        ; $606b: $23
    inc b                                         ; $606c: $04
    inc b                                         ; $606d: $04
    inc b                                         ; $606e: $04
    ld b, $04                                     ; $606f: $06 $04
    inc b                                         ; $6071: $04
    inc b                                         ; $6072: $04
    ld b, $04                                     ; $6073: $06 $04
    inc b                                         ; $6075: $04
    inc b                                         ; $6076: $04
    ld b, $04                                     ; $6077: $06 $04
    inc b                                         ; $6079: $04
    inc b                                         ; $607a: $04
    ld b, $24                                     ; $607b: $06 $24
    rra                                           ; $607d: $1f
    ld sp, $1332                                  ; $607e: $31 $32 $13
    dec de                                        ; $6081: $1b
    inc sp                                        ; $6082: $33
    inc [hl]                                      ; $6083: $34
    ld d, $1d                                     ; $6084: $16 $1d
    dec [hl]                                      ; $6086: $35
    ld [hl], $19                                  ; $6087: $36 $19
    inc e                                         ; $6089: $1c

jr_07f_608a:
    cpl                                           ; $608a: $2f
    scf                                           ; $608b: $37
    ld b, $07                                     ; $608c: $06 $07
    inc b                                         ; $608e: $04
    inc b                                         ; $608f: $04
    ld b, $06                                     ; $6090: $06 $06
    inc b                                         ; $6092: $04
    inc b                                         ; $6093: $04
    rlca                                          ; $6094: $07
    ld b, $04                                     ; $6095: $06 $04
    inc b                                         ; $6097: $04
    ld b, $07                                     ; $6098: $06 $07
    inc b                                         ; $609a: $04

jr_07f_609b:
    inc b                                         ; $609b: $04
    db $d3                                        ; $609c: $d3
    rst $10                                       ; $609d: $d7
    ret c                                         ; $609e: $d8

    ret c                                         ; $609f: $d8

    call nc, $dad9                                ; $60a0: $d4 $d9 $da
    jp c, $dbd5                                   ; $60a3: $da $d5 $db

    call c, $dddc                                 ; $60a6: $dc $dc $dd
    jr c, @+$3b                                   ; $60a9: $38 $39

    ld a, [hl-]                                   ; $60ab: $3a
    ld hl, $0101                                  ; $60ac: $21 $01 $01
    ld hl, $0121                                  ; $60af: $21 $21 $01
    ld bc, $2121                                  ; $60b2: $01 $21 $21
    ld bc, $2101                                  ; $60b5: $01 $01 $21
    ld [bc], a                                    ; $60b8: $02
    ld [bc], a                                    ; $60b9: $02
    ld [bc], a                                    ; $60ba: $02
    ld [bc], a                                    ; $60bb: $02
    rst $10                                       ; $60bc: $d7
    db $d3                                        ; $60bd: $d3
    db $d3                                        ; $60be: $d3
    rst $10                                       ; $60bf: $d7
    reti                                          ; $60c0: $d9


    call nc, $d9d4                                ; $60c1: $d4 $d4 $d9
    db $db                                        ; $60c4: $db
    push de                                       ; $60c5: $d5
    push de                                       ; $60c6: $d5
    db $db                                        ; $60c7: $db
    dec sp                                        ; $60c8: $3b
    ld [c], a                                     ; $60c9: $e2
    db $e3                                        ; $60ca: $e3

Call_07f_60cb:
    db $e4                                        ; $60cb: $e4
    ld hl, $2101                                  ; $60cc: $21 $01 $21
    ld bc, $0121                                  ; $60cf: $01 $21 $01
    ld hl, $2101                                  ; $60d2: $21 $01 $21
    ld bc, $0121                                  ; $60d5: $01 $21 $01
    ld [bc], a                                    ; $60d8: $02
    ld [bc], a                                    ; $60d9: $02
    ld [bc], a                                    ; $60da: $02
    ld [bc], a                                    ; $60db: $02
    ret c                                         ; $60dc: $d8

    ret c                                         ; $60dd: $d8

    rst $10                                       ; $60de: $d7
    db $d3                                        ; $60df: $d3
    jp c, $d9da                                   ; $60e0: $da $da $d9

    call nc, $dcdc                                ; $60e3: $d4 $dc $dc
    db $db                                        ; $60e6: $db
    push de                                       ; $60e7: $d5
    push hl                                       ; $60e8: $e5
    inc a                                         ; $60e9: $3c
    dec a                                         ; $60ea: $3d
    ld a, $01                                     ; $60eb: $3e $01
    ld hl, $0121                                  ; $60ed: $21 $21 $01
    ld bc, $2121                                  ; $60f0: $01 $21 $21
    ld bc, $2101                                  ; $60f3: $01 $01 $21
    ld hl, $0201                                  ; $60f6: $21 $01 $02
    ld [bc], a                                    ; $60f9: $02
    ld [bc], a                                    ; $60fa: $02
    ld [bc], a                                    ; $60fb: $02
    db $d3                                        ; $60fc: $d3
    rst $10                                       ; $60fd: $d7
    ret c                                         ; $60fe: $d8

    ret c                                         ; $60ff: $d8

    call nc, $dad9                                ; $6100: $d4 $d9 $da
    jp c, $dbd5                                   ; $6103: $da $d5 $db

    call c, Call_000_3fdc                         ; $6106: $dc $dc $3f
    sbc $df                                       ; $6109: $de $df
    ldh [rNR42], a                                ; $610b: $e0 $21
    ld bc, $2101                                  ; $610d: $01 $01 $21
    ld hl, $0101                                  ; $6110: $21 $01 $01
    ld hl, $0121                                  ; $6113: $21 $21 $01
    ld bc, $0221                                  ; $6116: $01 $21 $02
    ld [bc], a                                    ; $6119: $02
    ld [bc], a                                    ; $611a: $02
    ld [bc], a                                    ; $611b: $02
    db $ec                                        ; $611c: $ec
    ld b, b                                       ; $611d: $40
    ld b, c                                       ; $611e: $41
    ld b, d                                       ; $611f: $42
    ldh a, [$f1]                                  ; $6120: $f0 $f1
    ld b, e                                       ; $6122: $43
    ld b, h                                       ; $6123: $44
    ld b, l                                       ; $6124: $45
    ld b, [hl]                                    ; $6125: $46
    push af                                       ; $6126: $f5
    or $f7                                        ; $6127: $f6 $f7
    db $eb                                        ; $6129: $eb
    db $eb                                        ; $612a: $eb
    db $eb                                        ; $612b: $eb
    ld [bc], a                                    ; $612c: $02
    ld [bc], a                                    ; $612d: $02
    ld [bc], a                                    ; $612e: $02
    ld [bc], a                                    ; $612f: $02
    ld [bc], a                                    ; $6130: $02
    ld [bc], a                                    ; $6131: $02
    ld [bc], a                                    ; $6132: $02
    ld [bc], a                                    ; $6133: $02
    inc bc                                        ; $6134: $03
    inc bc                                        ; $6135: $03
    ld [bc], a                                    ; $6136: $02
    ld [bc], a                                    ; $6137: $02
    inc b                                         ; $6138: $04
    inc b                                         ; $6139: $04
    inc b                                         ; $613a: $04
    inc b                                         ; $613b: $04
    ld b, a                                       ; $613c: $47
    ld sp, hl                                     ; $613d: $f9
    ld a, [$fcfb]                                 ; $613e: $fa $fb $fc
    db $fd                                        ; $6141: $fd
    cp $ff                                        ; $6142: $fe $ff
    nop                                           ; $6144: $00
    ld [$f5f4], a                                 ; $6145: $ea $f4 $f5
    db $eb                                        ; $6148: $eb
    rst $30                                       ; $6149: $f7
    db $eb                                        ; $614a: $eb
    db $eb                                        ; $614b: $eb
    ld [bc], a                                    ; $614c: $02
    ld [bc], a                                    ; $614d: $02
    ld [bc], a                                    ; $614e: $02
    ld [bc], a                                    ; $614f: $02
    ld [bc], a                                    ; $6150: $02
    ld [bc], a                                    ; $6151: $02
    ld [bc], a                                    ; $6152: $02
    ld [bc], a                                    ; $6153: $02
    ld [bc], a                                    ; $6154: $02
    inc bc                                        ; $6155: $03
    inc bc                                        ; $6156: $03
    ld [bc], a                                    ; $6157: $02
    inc b                                         ; $6158: $04
    inc b                                         ; $6159: $04
    inc b                                         ; $615a: $04
    inc b                                         ; $615b: $04
    inc bc                                        ; $615c: $03
    ld c, b                                       ; $615d: $48
    ld c, c                                       ; $615e: $49
    ld c, d                                       ; $615f: $4a
    ld b, $07                                     ; $6160: $06 $07
    ld c, e                                       ; $6162: $4b
    ld c, h                                       ; $6163: $4c
    ld [$00f6], a                                 ; $6164: $ea $f6 $00
    ld bc, $ebeb                                  ; $6167: $01 $eb $eb
    rst $30                                       ; $616a: $f7
    db $eb                                        ; $616b: $eb
    ld [bc], a                                    ; $616c: $02
    ld [bc], a                                    ; $616d: $02
    ld [bc], a                                    ; $616e: $02
    ld [bc], a                                    ; $616f: $02
    ld [bc], a                                    ; $6170: $02
    ld [bc], a                                    ; $6171: $02
    ld [bc], a                                    ; $6172: $02
    ld [bc], a                                    ; $6173: $02
    inc hl                                        ; $6174: $23
    ld [bc], a                                    ; $6175: $02
    ld [bc], a                                    ; $6176: $02
    inc bc                                        ; $6177: $03
    inc b                                         ; $6178: $04
    inc b                                         ; $6179: $04
    inc b                                         ; $617a: $04
    inc b                                         ; $617b: $04
    ld c, l                                       ; $617c: $4d
    db $ed                                        ; $617d: $ed
    xor $ef                                       ; $617e: $ee $ef
    ld c, [hl]                                    ; $6180: $4e
    pop af                                        ; $6181: $f1
    ld a, [c]                                     ; $6182: $f2
    di                                            ; $6183: $f3
    push af                                       ; $6184: $f5
    ld [bc], a                                    ; $6185: $02
    add hl, bc                                    ; $6186: $09
    or $eb                                        ; $6187: $f6 $eb
    db $eb                                        ; $6189: $eb
    db $eb                                        ; $618a: $eb
    rst $30                                       ; $618b: $f7
    ld [bc], a                                    ; $618c: $02
    ld [bc], a                                    ; $618d: $02
    ld [bc], a                                    ; $618e: $02
    ld [bc], a                                    ; $618f: $02
    ld [bc], a                                    ; $6190: $02
    ld [bc], a                                    ; $6191: $02
    ld [bc], a                                    ; $6192: $02
    ld [bc], a                                    ; $6193: $02
    ld h, d                                       ; $6194: $62
    inc bc                                        ; $6195: $03
    inc bc                                        ; $6196: $03
    ld [bc], a                                    ; $6197: $02
    inc b                                         ; $6198: $04
    inc b                                         ; $6199: $04
    inc b                                         ; $619a: $04
    inc b                                         ; $619b: $04
    db $10                                        ; $619c: $10
    inc c                                         ; $619d: $0c
    ld a, [de]                                    ; $619e: $1a
    ld a, [bc]                                    ; $619f: $0a
    inc de                                        ; $61a0: $13
    dec de                                        ; $61a1: $1b
    rla                                           ; $61a2: $17
    inc e                                         ; $61a3: $1c
    ld d, $1d                                     ; $61a4: $16 $1d
    ld e, $1f                                     ; $61a6: $1e $1f
    ld c, a                                       ; $61a8: $4f
    inc e                                         ; $61a9: $1c
    jr nz, jr_07f_61fb                            ; $61aa: $20 $4f

    ld b, $06                                     ; $61ac: $06 $06
    ld b, $06                                     ; $61ae: $06 $06
    ld b, $06                                     ; $61b0: $06 $06
    rlca                                          ; $61b2: $07
    ld b, $06                                     ; $61b3: $06 $06
    ld b, $06                                     ; $61b5: $06 $06
    rlca                                          ; $61b7: $07
    inc b                                         ; $61b8: $04
    rlca                                          ; $61b9: $07
    inc b                                         ; $61ba: $04
    inc b                                         ; $61bb: $04
    ld c, $0f                                     ; $61bc: $0e $0f
    db $10                                        ; $61be: $10
    rrca                                          ; $61bf: $0f
    ld de, $1312                                  ; $61c0: $11 $12 $13
    ld [de], a                                    ; $61c3: $12
    inc d                                         ; $61c4: $14
    dec d                                         ; $61c5: $15
    ld d, $15                                     ; $61c6: $16 $15
    rla                                           ; $61c8: $17
    jr nz, jr_07f_621a                            ; $61c9: $20 $4f

    jr jr_07f_61d3                                ; $61cb: $18 $06

    ld b, $06                                     ; $61cd: $06 $06
    ld b, $06                                     ; $61cf: $06 $06
    ld b, $06                                     ; $61d1: $06 $06

jr_07f_61d3:
    rlca                                          ; $61d3: $07
    ld b, $06                                     ; $61d4: $06 $06
    rlca                                          ; $61d6: $07
    ld b, $06                                     ; $61d7: $06 $06
    inc b                                         ; $61d9: $04
    inc b                                         ; $61da: $04
    ld b, $10                                     ; $61db: $06 $10
    inc c                                         ; $61dd: $0c
    ld a, [de]                                    ; $61de: $1a
    ld a, [bc]                                    ; $61df: $0a
    inc de                                        ; $61e0: $13
    dec de                                        ; $61e1: $1b
    rla                                           ; $61e2: $17
    inc e                                         ; $61e3: $1c
    ld d, $1d                                     ; $61e4: $16 $1d
    ld e, $1f                                     ; $61e6: $1e $1f
    add hl, de                                    ; $61e8: $19
    inc e                                         ; $61e9: $1c
    ld de, $061b                                  ; $61ea: $11 $1b $06
    ld b, $06                                     ; $61ed: $06 $06
    ld b, $06                                     ; $61ef: $06 $06
    ld b, $06                                     ; $61f1: $06 $06
    rlca                                          ; $61f3: $07
    ld b, $06                                     ; $61f4: $06 $06
    rlca                                          ; $61f6: $07
    ld b, $07                                     ; $61f7: $06 $07
    ld b, $06                                     ; $61f9: $06 $06

jr_07f_61fb:
    ld b, $0e                                     ; $61fb: $06 $0e
    rrca                                          ; $61fd: $0f
    db $10                                        ; $61fe: $10
    rrca                                          ; $61ff: $0f
    ld de, $1312                                  ; $6200: $11 $12 $13
    ld [de], a                                    ; $6203: $12
    inc d                                         ; $6204: $14
    dec d                                         ; $6205: $15
    ld d, $15                                     ; $6206: $16 $15
    rla                                           ; $6208: $17
    jr nz, jr_07f_625a                            ; $6209: $20 $4f

    jr jr_07f_6213                                ; $620b: $18 $06

    ld b, $06                                     ; $620d: $06 $06
    ld b, $06                                     ; $620f: $06 $06
    ld b, $07                                     ; $6211: $06 $07

jr_07f_6213:
    ld b, $06                                     ; $6213: $06 $06
    rlca                                          ; $6215: $07
    rlca                                          ; $6216: $07
    rlca                                          ; $6217: $07
    ld b, $04                                     ; $6218: $06 $04

jr_07f_621a:
    inc b                                         ; $621a: $04
    ld b, $50                                     ; $621b: $06 $50
    ld d, c                                       ; $621d: $51
    ld d, d                                       ; $621e: $52
    ld d, e                                       ; $621f: $53
    ld d, h                                       ; $6220: $54
    ld d, l                                       ; $6221: $55
    ld d, [hl]                                    ; $6222: $56
    ld d, a                                       ; $6223: $57
    ld e, b                                       ; $6224: $58
    ld e, c                                       ; $6225: $59
    ld e, d                                       ; $6226: $5a
    ld e, e                                       ; $6227: $5b
    ld e, h                                       ; $6228: $5c
    jr nc, jr_07f_6262                            ; $6229: $30 $37

    ld e, h                                       ; $622b: $5c
    inc b                                         ; $622c: $04
    inc b                                         ; $622d: $04
    inc b                                         ; $622e: $04
    inc b                                         ; $622f: $04
    inc b                                         ; $6230: $04
    inc b                                         ; $6231: $04
    inc b                                         ; $6232: $04
    inc b                                         ; $6233: $04
    inc b                                         ; $6234: $04
    inc b                                         ; $6235: $04
    inc b                                         ; $6236: $04
    inc b                                         ; $6237: $04
    inc b                                         ; $6238: $04
    inc b                                         ; $6239: $04
    inc b                                         ; $623a: $04
    inc b                                         ; $623b: $04
    ld e, l                                       ; $623c: $5d
    ld e, [hl]                                    ; $623d: $5e
    ld e, a                                       ; $623e: $5f
    ld h, b                                       ; $623f: $60
    ld h, c                                       ; $6240: $61
    ld h, d                                       ; $6241: $62
    ld h, e                                       ; $6242: $63
    ld h, h                                       ; $6243: $64
    ld h, l                                       ; $6244: $65
    ld h, [hl]                                    ; $6245: $66
    ld h, a                                       ; $6246: $67
    ld l, b                                       ; $6247: $68
    jr nc, jr_07f_6281                            ; $6248: $30 $37

    ld e, h                                       ; $624a: $5c
    jr nc, jr_07f_6251                            ; $624b: $30 $04

    inc b                                         ; $624d: $04
    inc b                                         ; $624e: $04
    inc b                                         ; $624f: $04
    inc b                                         ; $6250: $04

jr_07f_6251:
    inc b                                         ; $6251: $04
    inc b                                         ; $6252: $04
    inc b                                         ; $6253: $04
    inc b                                         ; $6254: $04
    inc b                                         ; $6255: $04
    inc b                                         ; $6256: $04
    inc b                                         ; $6257: $04
    inc b                                         ; $6258: $04
    inc b                                         ; $6259: $04

jr_07f_625a:
    inc b                                         ; $625a: $04
    inc b                                         ; $625b: $04
    ld e, $28                                     ; $625c: $1e $28
    inc h                                         ; $625e: $24
    jr z, jr_07f_62ca                             ; $625f: $28 $69

    ld [de], a                                    ; $6261: $12

jr_07f_6262:
    inc de                                        ; $6262: $13
    ld [de], a                                    ; $6263: $12
    ld a, [de]                                    ; $6264: $1a
    dec d                                         ; $6265: $15
    ld d, $15                                     ; $6266: $16 $15
    ld l, d                                       ; $6268: $6a
    jr jr_07f_6284                                ; $6269: $18 $19

    jr jr_07f_6273                                ; $626b: $18 $06

    rlca                                          ; $626d: $07
    ld b, $07                                     ; $626e: $06 $07
    ld b, $06                                     ; $6270: $06 $06
    rlca                                          ; $6272: $07

jr_07f_6273:
    ld b, $06                                     ; $6273: $06 $06
    ld b, $06                                     ; $6275: $06 $06
    ld b, $06                                     ; $6277: $06 $06
    ld b, $07                                     ; $6279: $06 $07
    ld b, $31                                     ; $627b: $06 $31
    ld [hl-], a                                   ; $627d: $32
    ld d, b                                       ; $627e: $50
    ld d, c                                       ; $627f: $51
    inc sp                                        ; $6280: $33

jr_07f_6281:
    inc [hl]                                      ; $6281: $34
    ld d, h                                       ; $6282: $54
    ld d, l                                       ; $6283: $55

jr_07f_6284:
    dec [hl]                                      ; $6284: $35
    ld [hl], $58                                  ; $6285: $36 $58
    ld e, c                                       ; $6287: $59
    cpl                                           ; $6288: $2f
    scf                                           ; $6289: $37
    ld e, h                                       ; $628a: $5c
    ld l, e                                       ; $628b: $6b
    inc b                                         ; $628c: $04
    inc b                                         ; $628d: $04
    inc b                                         ; $628e: $04
    inc b                                         ; $628f: $04
    inc b                                         ; $6290: $04
    inc b                                         ; $6291: $04
    inc b                                         ; $6292: $04
    inc b                                         ; $6293: $04
    inc b                                         ; $6294: $04
    inc b                                         ; $6295: $04
    inc b                                         ; $6296: $04
    inc b                                         ; $6297: $04
    inc b                                         ; $6298: $04
    inc b                                         ; $6299: $04
    inc b                                         ; $629a: $04
    inc b                                         ; $629b: $04
    ld hl, sp-$07                                 ; $629c: $f8 $f9
    ld a, [$fcfb]                                 ; $629e: $fa $fb $fc
    db $fd                                        ; $62a1: $fd
    cp $ff                                        ; $62a2: $fe $ff
    nop                                           ; $62a4: $00
    db $f4                                        ; $62a5: $f4
    ld b, l                                       ; $62a6: $45
    ld b, [hl]                                    ; $62a7: $46
    db $eb                                        ; $62a8: $eb
    db $eb                                        ; $62a9: $eb
    db $eb                                        ; $62aa: $eb
    db $eb                                        ; $62ab: $eb
    ld [bc], a                                    ; $62ac: $02
    ld [bc], a                                    ; $62ad: $02
    ld [bc], a                                    ; $62ae: $02
    ld [bc], a                                    ; $62af: $02
    ld [bc], a                                    ; $62b0: $02
    ld [bc], a                                    ; $62b1: $02
    ld [bc], a                                    ; $62b2: $02
    ld [bc], a                                    ; $62b3: $02
    ld [bc], a                                    ; $62b4: $02
    inc bc                                        ; $62b5: $03
    inc bc                                        ; $62b6: $03
    inc bc                                        ; $62b7: $03
    inc b                                         ; $62b8: $04
    inc b                                         ; $62b9: $04
    inc b                                         ; $62ba: $04
    inc b                                         ; $62bb: $04
    inc bc                                        ; $62bc: $03
    inc b                                         ; $62bd: $04
    dec b                                         ; $62be: $05
    add sp, $06                                   ; $62bf: $e8 $06
    rlca                                          ; $62c1: $07
    ld [$f5e9], sp                                ; $62c2: $08 $e9 $f5
    or $00                                        ; $62c5: $f6 $00
    ld [$ebf7], a                                 ; $62c7: $ea $f7 $eb

jr_07f_62ca:
    db $eb                                        ; $62ca: $eb
    db $eb                                        ; $62cb: $eb
    ld [bc], a                                    ; $62cc: $02
    ld [bc], a                                    ; $62cd: $02
    ld [bc], a                                    ; $62ce: $02
    ld [bc], a                                    ; $62cf: $02
    ld [bc], a                                    ; $62d0: $02
    ld [bc], a                                    ; $62d1: $02
    ld [bc], a                                    ; $62d2: $02
    ld [bc], a                                    ; $62d3: $02
    ld [bc], a                                    ; $62d4: $02
    ld [bc], a                                    ; $62d5: $02
    ld [bc], a                                    ; $62d6: $02
    inc bc                                        ; $62d7: $03
    inc b                                         ; $62d8: $04
    inc b                                         ; $62d9: $04
    inc b                                         ; $62da: $04
    inc b                                         ; $62db: $04
    db $ec                                        ; $62dc: $ec
    db $ed                                        ; $62dd: $ed
    xor $ef                                       ; $62de: $ee $ef
    ldh a, [$f1]                                  ; $62e0: $f0 $f1
    ld a, [c]                                     ; $62e2: $f2
    di                                            ; $62e3: $f3
    db $f4                                        ; $62e4: $f4
    push af                                       ; $62e5: $f5
    ld [$ebf6], a                                 ; $62e6: $ea $f6 $eb
    rst $30                                       ; $62e9: $f7
    db $eb                                        ; $62ea: $eb
    db $eb                                        ; $62eb: $eb
    ld [bc], a                                    ; $62ec: $02
    ld [bc], a                                    ; $62ed: $02
    ld [bc], a                                    ; $62ee: $02
    ld [bc], a                                    ; $62ef: $02
    ld [bc], a                                    ; $62f0: $02
    ld [bc], a                                    ; $62f1: $02
    ld [bc], a                                    ; $62f2: $02
    ld [bc], a                                    ; $62f3: $02
    inc bc                                        ; $62f4: $03
    ld [bc], a                                    ; $62f5: $02
    inc hl                                        ; $62f6: $23
    ld [bc], a                                    ; $62f7: $02
    inc b                                         ; $62f8: $04
    inc b                                         ; $62f9: $04
    inc b                                         ; $62fa: $04
    inc b                                         ; $62fb: $04
    ld hl, sp-$07                                 ; $62fc: $f8 $f9
    ld a, [$fcfb]                                 ; $62fe: $fa $fb $fc
    db $fd                                        ; $6301: $fd
    cp $ff                                        ; $6302: $fe $ff
    nop                                           ; $6304: $00
    ld bc, $02f5                                  ; $6305: $01 $f5 $02
    db $eb                                        ; $6308: $eb
    db $eb                                        ; $6309: $eb
    rst $30                                       ; $630a: $f7
    db $eb                                        ; $630b: $eb
    ld [bc], a                                    ; $630c: $02
    ld [bc], a                                    ; $630d: $02
    ld [bc], a                                    ; $630e: $02
    ld [bc], a                                    ; $630f: $02
    ld [bc], a                                    ; $6310: $02
    ld [bc], a                                    ; $6311: $02
    ld [bc], a                                    ; $6312: $02
    ld [bc], a                                    ; $6313: $02
    ld [bc], a                                    ; $6314: $02
    inc bc                                        ; $6315: $03
    ld h, d                                       ; $6316: $62
    inc bc                                        ; $6317: $03
    inc b                                         ; $6318: $04
    inc b                                         ; $6319: $04
    inc b                                         ; $631a: $04
    inc b                                         ; $631b: $04
    db $10                                        ; $631c: $10
    inc c                                         ; $631d: $0c
    ld a, [de]                                    ; $631e: $1a
    ld a, [bc]                                    ; $631f: $0a
    inc de                                        ; $6320: $13
    dec de                                        ; $6321: $1b
    rla                                           ; $6322: $17
    inc e                                         ; $6323: $1c
    ld d, $1d                                     ; $6324: $16 $1d
    ld e, $1f                                     ; $6326: $1e $1f
    jr nz, jr_07f_6379                            ; $6328: $20 $4f

    ld de, $0620                                  ; $632a: $11 $20 $06
    ld b, $06                                     ; $632d: $06 $06
    ld b, $06                                     ; $632f: $06 $06
    ld b, $07                                     ; $6331: $06 $07
    ld b, $07                                     ; $6333: $06 $07
    ld b, $06                                     ; $6335: $06 $06
    rlca                                          ; $6337: $07
    inc b                                         ; $6338: $04
    inc b                                         ; $6339: $04
    ld b, $04                                     ; $633a: $06 $04
    ld c, $0f                                     ; $633c: $0e $0f
    db $10                                        ; $633e: $10
    rrca                                          ; $633f: $0f
    ld de, $1312                                  ; $6340: $11 $12 $13
    ld [de], a                                    ; $6343: $12
    inc d                                         ; $6344: $14
    dec d                                         ; $6345: $15
    ld d, $15                                     ; $6346: $16 $15
    ld c, a                                       ; $6348: $4f
    jr jr_07f_6364                                ; $6349: $18 $19

    jr @+$08                                      ; $634b: $18 $06

    ld b, $06                                     ; $634d: $06 $06
    ld b, $06                                     ; $634f: $06 $06
    rlca                                          ; $6351: $07
    ld b, $07                                     ; $6352: $06 $07
    ld b, $06                                     ; $6354: $06 $06
    rlca                                          ; $6356: $07
    ld b, $04                                     ; $6357: $06 $04
    ld b, $06                                     ; $6359: $06 $06
    ld b, $10                                     ; $635b: $06 $10
    inc c                                         ; $635d: $0c
    ld a, [de]                                    ; $635e: $1a
    ld a, [bc]                                    ; $635f: $0a
    inc de                                        ; $6360: $13
    dec de                                        ; $6361: $1b
    rla                                           ; $6362: $17
    inc e                                         ; $6363: $1c

jr_07f_6364:
    ld d, $1d                                     ; $6364: $16 $1d
    ld e, $1f                                     ; $6366: $1e $1f
    add hl, de                                    ; $6368: $19
    inc e                                         ; $6369: $1c
    ld de, $061b                                  ; $636a: $11 $1b $06
    ld b, $06                                     ; $636d: $06 $06
    ld b, $06                                     ; $636f: $06 $06
    ld b, $06                                     ; $6371: $06 $06
    rlca                                          ; $6373: $07
    ld b, $06                                     ; $6374: $06 $06
    ld b, $06                                     ; $6376: $06 $06
    rlca                                          ; $6378: $07

jr_07f_6379:
    ld b, $06                                     ; $6379: $06 $06
    rlca                                          ; $637b: $07
    ld c, $0f                                     ; $637c: $0e $0f
    db $10                                        ; $637e: $10
    rrca                                          ; $637f: $0f
    ld de, $1312                                  ; $6380: $11 $12 $13
    ld hl, $1514                                  ; $6383: $21 $14 $15
    ld d, $22                                     ; $6386: $16 $22
    rla                                           ; $6388: $17
    jr jr_07f_63a4                                ; $6389: $18 $19

    inc hl                                        ; $638b: $23
    ld b, $06                                     ; $638c: $06 $06
    ld b, $06                                     ; $638e: $06 $06
    ld b, $06                                     ; $6390: $06 $06
    rlca                                          ; $6392: $07
    ld b, $06                                     ; $6393: $06 $06
    rlca                                          ; $6395: $07
    ld b, $06                                     ; $6396: $06 $06
    ld b, $06                                     ; $6398: $06 $06
    ld b, $06                                     ; $639a: $06 $06
    ld d, d                                       ; $639c: $52
    ld d, e                                       ; $639d: $53
    ld e, l                                       ; $639e: $5d
    ld e, [hl]                                    ; $639f: $5e
    ld d, [hl]                                    ; $63a0: $56
    ld d, a                                       ; $63a1: $57
    ld h, c                                       ; $63a2: $61
    ld h, d                                       ; $63a3: $62

jr_07f_63a4:
    ld e, d                                       ; $63a4: $5a
    ld e, e                                       ; $63a5: $5b
    ld h, l                                       ; $63a6: $65
    ld h, [hl]                                    ; $63a7: $66
    scf                                           ; $63a8: $37
    ld e, h                                       ; $63a9: $5c
    jr nc, jr_07f_63e3                            ; $63aa: $30 $37

    inc b                                         ; $63ac: $04
    inc b                                         ; $63ad: $04
    inc b                                         ; $63ae: $04
    inc b                                         ; $63af: $04
    inc b                                         ; $63b0: $04
    inc b                                         ; $63b1: $04
    inc b                                         ; $63b2: $04
    inc b                                         ; $63b3: $04
    inc b                                         ; $63b4: $04
    inc b                                         ; $63b5: $04
    inc b                                         ; $63b6: $04
    inc b                                         ; $63b7: $04
    inc b                                         ; $63b8: $04
    inc b                                         ; $63b9: $04
    inc b                                         ; $63ba: $04
    inc b                                         ; $63bb: $04
    ld e, a                                       ; $63bc: $5f
    ld h, b                                       ; $63bd: $60
    inc d                                         ; $63be: $14
    dec e                                         ; $63bf: $1d
    ld h, e                                       ; $63c0: $63
    ld h, h                                       ; $63c1: $64
    ld l, d                                       ; $63c2: $6a
    inc e                                         ; $63c3: $1c
    ld h, a                                       ; $63c4: $67
    ld l, b                                       ; $63c5: $68
    ld c, $1f                                     ; $63c6: $0e $1f
    ld e, h                                       ; $63c8: $5c
    jr nc, jr_07f_6434                            ; $63c9: $30 $69

    dec de                                        ; $63cb: $1b
    inc b                                         ; $63cc: $04
    inc b                                         ; $63cd: $04
    ld b, $07                                     ; $63ce: $06 $07
    inc b                                         ; $63d0: $04
    inc b                                         ; $63d1: $04
    ld b, $06                                     ; $63d2: $06 $06
    inc b                                         ; $63d4: $04
    inc b                                         ; $63d5: $04
    ld b, $06                                     ; $63d6: $06 $06
    inc b                                         ; $63d8: $04
    inc b                                         ; $63d9: $04
    ld b, $06                                     ; $63da: $06 $06
    ld e, $28                                     ; $63dc: $1e $28
    inc h                                         ; $63de: $24
    jr z, jr_07f_63f2                             ; $63df: $28 $11

    ld [de], a                                    ; $63e1: $12
    inc de                                        ; $63e2: $13

jr_07f_63e3:
    ld [de], a                                    ; $63e3: $12
    inc d                                         ; $63e4: $14
    dec d                                         ; $63e5: $15
    ld d, $15                                     ; $63e6: $16 $15
    rla                                           ; $63e8: $17
    jr jr_07f_6404                                ; $63e9: $18 $19

    jr @+$08                                      ; $63eb: $18 $06

    rlca                                          ; $63ed: $07
    ld b, $06                                     ; $63ee: $06 $06
    ld b, $06                                     ; $63f0: $06 $06

jr_07f_63f2:
    ld b, $06                                     ; $63f2: $06 $06
    rlca                                          ; $63f4: $07
    ld b, $07                                     ; $63f5: $06 $07
    ld b, $06                                     ; $63f7: $06 $06
    ld b, $06                                     ; $63f9: $06 $06
    ld b, $24                                     ; $63fb: $06 $24
    rra                                           ; $63fd: $1f
    inc d                                         ; $63fe: $14
    ld a, [bc]                                    ; $63ff: $0a
    inc de                                        ; $6400: $13
    dec de                                        ; $6401: $1b
    rla                                           ; $6402: $17
    dec bc                                        ; $6403: $0b

jr_07f_6404:
    ld d, $1d                                     ; $6404: $16 $1d
    ld e, $0c                                     ; $6406: $1e $0c
    add hl, de                                    ; $6408: $19
    inc e                                         ; $6409: $1c
    ld de, $070d                                  ; $640a: $11 $0d $07
    ld b, $07                                     ; $640d: $06 $07
    ld b, $06                                     ; $640f: $06 $06
    ld b, $06                                     ; $6411: $06 $06
    ld b, $06                                     ; $6413: $06 $06
    rlca                                          ; $6415: $07
    ld b, $06                                     ; $6416: $06 $06
    ld b, $06                                     ; $6418: $06 $06
    ld b, $06                                     ; $641a: $06 $06
    jp nc, $d1d1                                  ; $641c: $d2 $d1 $d1

    pop de                                        ; $641f: $d1
    jp nc, $d1d1                                  ; $6420: $d2 $d1 $d1

    pop de                                        ; $6423: $d1
    jp nc, $d1d1                                  ; $6424: $d2 $d1 $d1

    pop de                                        ; $6427: $d1
    jp nc, $d1d1                                  ; $6428: $d2 $d1 $d1

    pop de                                        ; $642b: $d1
    add b                                         ; $642c: $80
    add b                                         ; $642d: $80
    add b                                         ; $642e: $80
    add b                                         ; $642f: $80
    add b                                         ; $6430: $80
    add b                                         ; $6431: $80
    add b                                         ; $6432: $80
    add b                                         ; $6433: $80

jr_07f_6434:
    add b                                         ; $6434: $80
    add b                                         ; $6435: $80
    add b                                         ; $6436: $80
    add b                                         ; $6437: $80
    add b                                         ; $6438: $80
    add b                                         ; $6439: $80
    add b                                         ; $643a: $80
    add b                                         ; $643b: $80
    ld e, $28                                     ; $643c: $1e $28
    inc h                                         ; $643e: $24
    jr z, @+$13                                   ; $643f: $28 $11

    ld [de], a                                    ; $6441: $12
    inc de                                        ; $6442: $13
    ld [de], a                                    ; $6443: $12
    inc d                                         ; $6444: $14
    dec d                                         ; $6445: $15
    ld l, h                                       ; $6446: $6c
    ld l, l                                       ; $6447: $6d
    rla                                           ; $6448: $17
    jr jr_07f_64b9                                ; $6449: $18 $6e

    ld l, a                                       ; $644b: $6f
    ld b, $07                                     ; $644c: $06 $07
    ld b, $07                                     ; $644e: $06 $07
    rlca                                          ; $6450: $07
    ld b, $06                                     ; $6451: $06 $06
    ld b, $06                                     ; $6453: $06 $06
    ld b, $85                                     ; $6455: $06 $85
    add l                                         ; $6457: $85
    ld b, $07                                     ; $6458: $06 $07
    add l                                         ; $645a: $85
    add l                                         ; $645b: $85
    db $10                                        ; $645c: $10
    inc c                                         ; $645d: $0c
    ld a, [de]                                    ; $645e: $1a
    ld a, [bc]                                    ; $645f: $0a
    inc de                                        ; $6460: $13
    dec de                                        ; $6461: $1b
    rla                                           ; $6462: $17
    inc e                                         ; $6463: $1c
    ld d, $1d                                     ; $6464: $16 $1d
    ld e, $1f                                     ; $6466: $1e $1f
    add hl, de                                    ; $6468: $19
    inc e                                         ; $6469: $1c
    ld de, $061b                                  ; $646a: $11 $1b $06
    ld b, $06                                     ; $646d: $06 $06
    ld b, $06                                     ; $646f: $06 $06
    ld b, $06                                     ; $6471: $06 $06
    ld b, $07                                     ; $6473: $06 $07
    ld b, $06                                     ; $6475: $06 $06
    rlca                                          ; $6477: $07
    ld b, $07                                     ; $6478: $06 $07
    ld b, $06                                     ; $647a: $06 $06
    ld e, $28                                     ; $647c: $1e $28
    db $10                                        ; $647e: $10
    ld [hl], b                                    ; $647f: $70
    ld de, $1312                                  ; $6480: $11 $12 $13
    ld hl, $7271                                  ; $6483: $21 $71 $72
    ld d, $15                                     ; $6486: $16 $15
    ld [hl], e                                    ; $6488: $73
    ld [hl], h                                    ; $6489: $74
    add hl, de                                    ; $648a: $19
    jr jr_07f_6493                                ; $648b: $18 $06

    ld b, $06                                     ; $648d: $06 $06
    inc b                                         ; $648f: $04
    rlca                                          ; $6490: $07
    ld b, $06                                     ; $6491: $06 $06

jr_07f_6493:
    ld b, $85                                     ; $6493: $06 $85
    add l                                         ; $6495: $85
    rlca                                          ; $6496: $07
    ld b, $85                                     ; $6497: $06 $85
    add l                                         ; $6499: $85
    ld b, $06                                     ; $649a: $06 $06
    pop de                                        ; $649c: $d1
    pop de                                        ; $649d: $d1
    jp nc, $d10f                                  ; $649e: $d2 $0f $d1

    pop de                                        ; $64a1: $d1
    jp nc, $d121                                  ; $64a2: $d2 $21 $d1

    pop de                                        ; $64a5: $d1
    ld [hl], l                                    ; $64a6: $75
    halt                                          ; $64a7: $76
    pop de                                        ; $64a8: $d1
    pop de                                        ; $64a9: $d1
    pop de                                        ; $64aa: $d1
    pop de                                        ; $64ab: $d1
    add b                                         ; $64ac: $80
    add b                                         ; $64ad: $80
    add b                                         ; $64ae: $80
    ld b, $80                                     ; $64af: $06 $80
    add b                                         ; $64b1: $80
    add b                                         ; $64b2: $80
    ld b, $80                                     ; $64b3: $06 $80
    add b                                         ; $64b5: $80
    add b                                         ; $64b6: $80
    add b                                         ; $64b7: $80
    add b                                         ; $64b8: $80

jr_07f_64b9:
    add b                                         ; $64b9: $80
    add b                                         ; $64ba: $80
    add b                                         ; $64bb: $80
    inc h                                         ; $64bc: $24
    rra                                           ; $64bd: $1f
    ld [hl], a                                    ; $64be: $77
    ld a, b                                       ; $64bf: $78
    inc de                                        ; $64c0: $13
    dec de                                        ; $64c1: $1b
    ld a, c                                       ; $64c2: $79
    ld a, d                                       ; $64c3: $7a
    halt                                          ; $64c4: $76
    halt                                          ; $64c5: $76
    halt                                          ; $64c6: $76
    halt                                          ; $64c7: $76
    pop de                                        ; $64c8: $d1
    pop de                                        ; $64c9: $d1
    pop de                                        ; $64ca: $d1
    pop de                                        ; $64cb: $d1
    rlca                                          ; $64cc: $07
    ld b, $85                                     ; $64cd: $06 $85
    add l                                         ; $64cf: $85
    ld b, $06                                     ; $64d0: $06 $06
    inc b                                         ; $64d2: $04
    inc b                                         ; $64d3: $04
    add b                                         ; $64d4: $80
    add b                                         ; $64d5: $80
    add b                                         ; $64d6: $80
    add b                                         ; $64d7: $80
    add b                                         ; $64d8: $80
    add b                                         ; $64d9: $80
    add b                                         ; $64da: $80
    add b                                         ; $64db: $80
    ld e, $28                                     ; $64dc: $1e $28
    inc h                                         ; $64de: $24
    jr z, jr_07f_64f2                             ; $64df: $28 $11

    ld [de], a                                    ; $64e1: $12
    inc de                                        ; $64e2: $13
    ld [de], a                                    ; $64e3: $12
    halt                                          ; $64e4: $76
    halt                                          ; $64e5: $76
    halt                                          ; $64e6: $76
    halt                                          ; $64e7: $76
    pop de                                        ; $64e8: $d1
    pop de                                        ; $64e9: $d1
    pop de                                        ; $64ea: $d1
    pop de                                        ; $64eb: $d1
    ld b, $06                                     ; $64ec: $06 $06
    ld b, $06                                     ; $64ee: $06 $06
    ld b, $07                                     ; $64f0: $06 $07

jr_07f_64f2:
    ld b, $06                                     ; $64f2: $06 $06
    add b                                         ; $64f4: $80
    add b                                         ; $64f5: $80
    add b                                         ; $64f6: $80
    add b                                         ; $64f7: $80
    add b                                         ; $64f8: $80
    add b                                         ; $64f9: $80
    add b                                         ; $64fa: $80
    add b                                         ; $64fb: $80
    ld a, e                                       ; $64fc: $7b
    ld a, h                                       ; $64fd: $7c
    inc d                                         ; $64fe: $14
    dec e                                         ; $64ff: $1d
    ld a, c                                       ; $6500: $79
    ld a, d                                       ; $6501: $7a
    rla                                           ; $6502: $17
    inc e                                         ; $6503: $1c
    halt                                          ; $6504: $76
    halt                                          ; $6505: $76
    halt                                          ; $6506: $76
    halt                                          ; $6507: $76
    pop de                                        ; $6508: $d1
    pop de                                        ; $6509: $d1
    pop de                                        ; $650a: $d1
    pop de                                        ; $650b: $d1
    add l                                         ; $650c: $85
    add l                                         ; $650d: $85
    rlca                                          ; $650e: $07
    ld b, $04                                     ; $650f: $06 $04
    inc b                                         ; $6511: $04
    ld b, $06                                     ; $6512: $06 $06
    add b                                         ; $6514: $80
    add b                                         ; $6515: $80
    add b                                         ; $6516: $80
    add b                                         ; $6517: $80
    add b                                         ; $6518: $80
    add b                                         ; $6519: $80
    add b                                         ; $651a: $80
    add b                                         ; $651b: $80
    pop de                                        ; $651c: $d1
    pop de                                        ; $651d: $d1
    pop de                                        ; $651e: $d1
    pop de                                        ; $651f: $d1
    pop de                                        ; $6520: $d1
    pop de                                        ; $6521: $d1
    pop de                                        ; $6522: $d1
    pop de                                        ; $6523: $d1
    pop de                                        ; $6524: $d1
    pop de                                        ; $6525: $d1
    pop de                                        ; $6526: $d1
    pop de                                        ; $6527: $d1
    pop de                                        ; $6528: $d1
    pop de                                        ; $6529: $d1
    pop de                                        ; $652a: $d1
    pop de                                        ; $652b: $d1
    add b                                         ; $652c: $80
    add b                                         ; $652d: $80
    add b                                         ; $652e: $80
    add b                                         ; $652f: $80
    add b                                         ; $6530: $80
    add b                                         ; $6531: $80
    add b                                         ; $6532: $80
    add b                                         ; $6533: $80

jr_07f_6534:
    add b                                         ; $6534: $80
    add b                                         ; $6535: $80
    add b                                         ; $6536: $80
    add b                                         ; $6537: $80
    add b                                         ; $6538: $80
    add b                                         ; $6539: $80
    add b                                         ; $653a: $80
    add b                                         ; $653b: $80
    ld a, l                                       ; $653c: $7d
    inc c                                         ; $653d: $0c
    ld [hl], b                                    ; $653e: $70
    ld a, l                                       ; $653f: $7d
    ld a, [hl]                                    ; $6540: $7e
    dec c                                         ; $6541: $0d
    ld l, d                                       ; $6542: $6a
    dec bc                                        ; $6543: $0b
    ld d, $1d                                     ; $6544: $16 $1d
    ld a, a                                       ; $6546: $7f
    add b                                         ; $6547: $80
    add hl, de                                    ; $6548: $19
    inc e                                         ; $6549: $1c
    add c                                         ; $654a: $81
    add d                                         ; $654b: $82
    inc b                                         ; $654c: $04
    ld b, $04                                     ; $654d: $06 $04
    inc b                                         ; $654f: $04
    ld b, $06                                     ; $6550: $06 $06
    ld b, $06                                     ; $6552: $06 $06
    ld b, $07                                     ; $6554: $06 $07
    add l                                         ; $6556: $85
    adc l                                         ; $6557: $8d
    rlca                                          ; $6558: $07
    ld b, $8d                                     ; $6559: $06 $8d
    adc l                                         ; $655b: $8d
    ld c, $70                                     ; $655c: $0e $70
    ld a, l                                       ; $655e: $7d
    rrca                                          ; $655f: $0f
    ld l, c                                       ; $6560: $69
    ld hl, $217e                                  ; $6561: $21 $7e $21
    inc d                                         ; $6564: $14
    dec d                                         ; $6565: $15
    ld d, $15                                     ; $6566: $16 $15
    rla                                           ; $6568: $17
    jr jr_07f_6584                                ; $6569: $18 $19

    jr jr_07f_6573                                ; $656b: $18 $06

    inc b                                         ; $656d: $04
    inc b                                         ; $656e: $04
    ld b, $06                                     ; $656f: $06 $06
    ld b, $06                                     ; $6571: $06 $06

jr_07f_6573:
    ld b, $07                                     ; $6573: $06 $07
    ld b, $07                                     ; $6575: $06 $07
    ld b, $06                                     ; $6577: $06 $06
    rlca                                          ; $6579: $07
    rlca                                          ; $657a: $07
    ld b, $10                                     ; $657b: $06 $10
    rra                                           ; $657d: $1f
    inc d                                         ; $657e: $14
    dec e                                         ; $657f: $1d
    inc de                                        ; $6580: $13
    dec de                                        ; $6581: $1b
    rla                                           ; $6582: $17
    inc e                                         ; $6583: $1c

jr_07f_6584:
    add e                                         ; $6584: $83
    add h                                         ; $6585: $84
    ld e, $1f                                     ; $6586: $1e $1f
    add l                                         ; $6588: $85
    add [hl]                                      ; $6589: $86
    ld de, $061b                                  ; $658a: $11 $1b $06
    rlca                                          ; $658d: $07
    ld b, $06                                     ; $658e: $06 $06
    ld b, $06                                     ; $6590: $06 $06
    ld b, $07                                     ; $6592: $06 $07
    adc l                                         ; $6594: $8d
    adc l                                         ; $6595: $8d
    ld b, $06                                     ; $6596: $06 $06
    adc l                                         ; $6598: $8d
    adc l                                         ; $6599: $8d
    ld b, $06                                     ; $659a: $06 $06
    ld c, $70                                     ; $659c: $0e $70
    ld a, l                                       ; $659e: $7d
    rrca                                          ; $659f: $0f
    ld de, $7e21                                  ; $65a0: $11 $21 $7e
    ld hl, $1514                                  ; $65a3: $21 $14 $15
    add a                                         ; $65a6: $87
    adc b                                         ; $65a7: $88
    rla                                           ; $65a8: $17
    jr jr_07f_6534                                ; $65a9: $18 $89

    adc d                                         ; $65ab: $8a
    ld b, $04                                     ; $65ac: $06 $04
    inc b                                         ; $65ae: $04
    ld b, $06                                     ; $65af: $06 $06
    ld b, $06                                     ; $65b1: $06 $06
    ld b, $06                                     ; $65b3: $06 $06
    ld b, $8d                                     ; $65b5: $06 $8d
    adc l                                         ; $65b7: $8d
    rlca                                          ; $65b8: $07
    ld b, $8d                                     ; $65b9: $06 $8d
    adc l                                         ; $65bb: $8d
    ld e, $28                                     ; $65bc: $1e $28
    adc e                                         ; $65be: $8b
    adc h                                         ; $65bf: $8c
    ld de, $7912                                  ; $65c0: $11 $12 $79
    ld a, d                                       ; $65c3: $7a
    halt                                          ; $65c4: $76
    halt                                          ; $65c5: $76
    halt                                          ; $65c6: $76
    halt                                          ; $65c7: $76
    pop de                                        ; $65c8: $d1
    pop de                                        ; $65c9: $d1
    pop de                                        ; $65ca: $d1
    pop de                                        ; $65cb: $d1
    ld b, $07                                     ; $65cc: $06 $07
    adc l                                         ; $65ce: $8d
    adc l                                         ; $65cf: $8d
    rlca                                          ; $65d0: $07
    ld b, $04                                     ; $65d1: $06 $04
    inc b                                         ; $65d3: $04
    add b                                         ; $65d4: $80
    add b                                         ; $65d5: $80
    add b                                         ; $65d6: $80
    add b                                         ; $65d7: $80
    add b                                         ; $65d8: $80
    add b                                         ; $65d9: $80
    add b                                         ; $65da: $80
    add b                                         ; $65db: $80
    inc h                                         ; $65dc: $24
    rra                                           ; $65dd: $1f
    inc d                                         ; $65de: $14
    dec e                                         ; $65df: $1d
    inc de                                        ; $65e0: $13
    dec de                                        ; $65e1: $1b
    rla                                           ; $65e2: $17
    inc e                                         ; $65e3: $1c
    halt                                          ; $65e4: $76
    halt                                          ; $65e5: $76
    halt                                          ; $65e6: $76
    halt                                          ; $65e7: $76
    pop de                                        ; $65e8: $d1
    pop de                                        ; $65e9: $d1
    pop de                                        ; $65ea: $d1
    pop de                                        ; $65eb: $d1
    ld b, $06                                     ; $65ec: $06 $06
    rlca                                          ; $65ee: $07
    ld b, $06                                     ; $65ef: $06 $06
    ld b, $06                                     ; $65f1: $06 $06
    ld b, $80                                     ; $65f3: $06 $80
    add b                                         ; $65f5: $80
    add b                                         ; $65f6: $80
    add b                                         ; $65f7: $80
    add b                                         ; $65f8: $80
    add b                                         ; $65f9: $80
    add b                                         ; $65fa: $80
    add b                                         ; $65fb: $80
    adc l                                         ; $65fc: $8d
    adc [hl]                                      ; $65fd: $8e
    inc h                                         ; $65fe: $24
    jr z, jr_07f_667a                             ; $65ff: $28 $79

    ld a, d                                       ; $6601: $7a
    inc de                                        ; $6602: $13
    ld [de], a                                    ; $6603: $12
    halt                                          ; $6604: $76
    halt                                          ; $6605: $76
    halt                                          ; $6606: $76
    halt                                          ; $6607: $76
    pop de                                        ; $6608: $d1
    pop de                                        ; $6609: $d1
    pop de                                        ; $660a: $d1
    pop de                                        ; $660b: $d1
    adc l                                         ; $660c: $8d
    adc l                                         ; $660d: $8d
    ld b, $07                                     ; $660e: $06 $07
    inc b                                         ; $6610: $04
    inc b                                         ; $6611: $04
    ld b, $06                                     ; $6612: $06 $06
    add b                                         ; $6614: $80
    add b                                         ; $6615: $80
    add b                                         ; $6616: $80
    add b                                         ; $6617: $80
    add b                                         ; $6618: $80
    add b                                         ; $6619: $80
    add b                                         ; $661a: $80
    add b                                         ; $661b: $80
    inc h                                         ; $661c: $24
    rra                                           ; $661d: $1f
    adc a                                         ; $661e: $8f
    sub b                                         ; $661f: $90
    inc de                                        ; $6620: $13
    dec de                                        ; $6621: $1b
    ld a, c                                       ; $6622: $79
    ld a, d                                       ; $6623: $7a
    halt                                          ; $6624: $76
    halt                                          ; $6625: $76
    halt                                          ; $6626: $76
    halt                                          ; $6627: $76
    pop de                                        ; $6628: $d1
    pop de                                        ; $6629: $d1
    pop de                                        ; $662a: $d1
    pop de                                        ; $662b: $d1
    ld b, $06                                     ; $662c: $06 $06
    adc l                                         ; $662e: $8d
    adc l                                         ; $662f: $8d
    ld b, $06                                     ; $6630: $06 $06
    inc b                                         ; $6632: $04
    inc b                                         ; $6633: $04
    add b                                         ; $6634: $80
    add b                                         ; $6635: $80
    add b                                         ; $6636: $80
    add b                                         ; $6637: $80
    add b                                         ; $6638: $80
    add b                                         ; $6639: $80
    add b                                         ; $663a: $80
    add b                                         ; $663b: $80
    ld [hl], b                                    ; $663c: $70
    ld a, l                                       ; $663d: $7d
    ld a, [de]                                    ; $663e: $1a
    ld [hl], b                                    ; $663f: $70
    ld a, [hl]                                    ; $6640: $7e
    dec c                                         ; $6641: $0d
    ld l, d                                       ; $6642: $6a
    dec bc                                        ; $6643: $0b
    ld d, $1d                                     ; $6644: $16 $1d
    ld e, $1f                                     ; $6646: $1e $1f
    add hl, de                                    ; $6648: $19
    inc e                                         ; $6649: $1c
    ld de, $041b                                  ; $664a: $11 $1b $04
    inc b                                         ; $664d: $04
    ld b, $04                                     ; $664e: $06 $04
    ld b, $06                                     ; $6650: $06 $06
    ld b, $06                                     ; $6652: $06 $06
    ld b, $06                                     ; $6654: $06 $06
    ld b, $07                                     ; $6656: $06 $07
    ld b, $07                                     ; $6658: $06 $07
    ld b, $06                                     ; $665a: $06 $06
    ld a, l                                       ; $665c: $7d
    rrca                                          ; $665d: $0f
    db $10                                        ; $665e: $10
    jr z, jr_07f_66ca                             ; $665f: $28 $69

    ld hl, $1213                                  ; $6661: $21 $13 $12
    inc d                                         ; $6664: $14
    sub c                                         ; $6665: $91
    sub d                                         ; $6666: $92
    dec d                                         ; $6667: $15
    rla                                           ; $6668: $17
    sub e                                         ; $6669: $93
    sub h                                         ; $666a: $94
    jr jr_07f_6671                                ; $666b: $18 $04

    ld b, $06                                     ; $666d: $06 $06
    ld b, $06                                     ; $666f: $06 $06

jr_07f_6671:
    ld b, $06                                     ; $6671: $06 $06
    ld b, $06                                     ; $6673: $06 $06
    adc l                                         ; $6675: $8d
    adc l                                         ; $6676: $8d
    ld b, $06                                     ; $6677: $06 $06
    adc l                                         ; $6679: $8d

jr_07f_667a:
    adc l                                         ; $667a: $8d
    ld b, $24                                     ; $667b: $06 $24
    rra                                           ; $667d: $1f
    inc d                                         ; $667e: $14
    dec e                                         ; $667f: $1d
    inc de                                        ; $6680: $13
    dec de                                        ; $6681: $1b
    rla                                           ; $6682: $17
    inc e                                         ; $6683: $1c
    ld d, $1d                                     ; $6684: $16 $1d
    ld e, $1f                                     ; $6686: $1e $1f
    add hl, de                                    ; $6688: $19
    inc e                                         ; $6689: $1c
    ld de, $071b                                  ; $668a: $11 $1b $07
    ld b, $06                                     ; $668d: $06 $06
    ld b, $06                                     ; $668f: $06 $06
    ld b, $06                                     ; $6691: $06 $06
    rlca                                          ; $6693: $07
    ld b, $06                                     ; $6694: $06 $06
    ld b, $06                                     ; $6696: $06 $06
    rlca                                          ; $6698: $07
    ld b, $06                                     ; $6699: $06 $06
    ld b, $1e                                     ; $669b: $06 $1e
    jr z, jr_07f_66c3                             ; $669d: $28 $24

    rrca                                          ; $669f: $0f
    ld de, $1312                                  ; $66a0: $11 $12 $13
    ld hl, $9514                                  ; $66a3: $21 $14 $95
    sub [hl]                                      ; $66a6: $96
    ld [hl+], a                                   ; $66a7: $22
    rla                                           ; $66a8: $17
    sub a                                         ; $66a9: $97
    sbc b                                         ; $66aa: $98
    inc hl                                        ; $66ab: $23
    rlca                                          ; $66ac: $07
    ld b, $07                                     ; $66ad: $06 $07
    ld b, $06                                     ; $66af: $06 $06
    ld b, $06                                     ; $66b1: $06 $06
    ld b, $06                                     ; $66b3: $06 $06
    adc l                                         ; $66b5: $8d
    adc l                                         ; $66b6: $8d
    ld b, $06                                     ; $66b7: $06 $06
    adc l                                         ; $66b9: $8d
    adc l                                         ; $66ba: $8d
    ld b, $1e                                     ; $66bb: $06 $1e
    jr z, jr_07f_66e3                             ; $66bd: $28 $24

    jr z, jr_07f_66d2                             ; $66bf: $28 $11

    ld [de], a                                    ; $66c1: $12
    inc de                                        ; $66c2: $13

jr_07f_66c3:
    ld [de], a                                    ; $66c3: $12
    halt                                          ; $66c4: $76
    halt                                          ; $66c5: $76
    halt                                          ; $66c6: $76
    sbc c                                         ; $66c7: $99
    pop de                                        ; $66c8: $d1
    pop de                                        ; $66c9: $d1

jr_07f_66ca:
    pop de                                        ; $66ca: $d1
    jp nc, Jump_000_0606                          ; $66cb: $d2 $06 $06

    rlca                                          ; $66ce: $07
    ld b, $06                                     ; $66cf: $06 $06
    rlca                                          ; $66d1: $07

jr_07f_66d2:
    ld b, $06                                     ; $66d2: $06 $06
    add b                                         ; $66d4: $80
    add b                                         ; $66d5: $80
    add b                                         ; $66d6: $80
    adc b                                         ; $66d7: $88
    add b                                         ; $66d8: $80
    add b                                         ; $66d9: $80
    add b                                         ; $66da: $80
    add b                                         ; $66db: $80
    inc h                                         ; $66dc: $24
    sbc d                                         ; $66dd: $9a
    sbc e                                         ; $66de: $9b
    dec e                                         ; $66df: $1d
    inc de                                        ; $66e0: $13
    ld a, c                                       ; $66e1: $79
    ld a, d                                       ; $66e2: $7a

jr_07f_66e3:
    inc e                                         ; $66e3: $1c
    ld d, $9c                                     ; $66e4: $16 $9c
    sbc l                                         ; $66e6: $9d
    ld l, c                                       ; $66e7: $69
    add hl, de                                    ; $66e8: $19
    ld l, c                                       ; $66e9: $69
    ld hl, $0710                                  ; $66ea: $21 $10 $07
    adc l                                         ; $66ed: $8d
    adc l                                         ; $66ee: $8d
    ld b, $06                                     ; $66ef: $06 $06
    inc b                                         ; $66f1: $04
    inc b                                         ; $66f2: $04
    ld b, $06                                     ; $66f3: $06 $06
    inc c                                         ; $66f5: $0c
    inc c                                         ; $66f6: $0c
    ld b, $06                                     ; $66f7: $06 $06
    ld b, $06                                     ; $66f9: $06 $06
    ld b, $1e                                     ; $66fb: $06 $1e
    jr z, jr_07f_6723                             ; $66fd: $28 $24

    jr z, jr_07f_6712                             ; $66ff: $28 $11

    ld [de], a                                    ; $6701: $12
    inc de                                        ; $6702: $13
    ld [de], a                                    ; $6703: $12
    inc d                                         ; $6704: $14
    dec d                                         ; $6705: $15
    ld d, $15                                     ; $6706: $16 $15
    rla                                           ; $6708: $17
    jr jr_07f_6724                                ; $6709: $18 $19

    jr @+$08                                      ; $670b: $18 $06

    ld b, $06                                     ; $670d: $06 $06
    rlca                                          ; $670f: $07
    ld b, $07                                     ; $6710: $06 $07

jr_07f_6712:
    ld b, $06                                     ; $6712: $06 $06
    ld b, $06                                     ; $6714: $06 $06
    rlca                                          ; $6716: $07
    ld b, $06                                     ; $6717: $06 $06
    ld b, $06                                     ; $6719: $06 $06
    ld b, $24                                     ; $671b: $06 $24
    sbc [hl]                                      ; $671d: $9e
    sbc a                                         ; $671e: $9f
    ld a, [bc]                                    ; $671f: $0a
    inc de                                        ; $6720: $13
    ld a, c                                       ; $6721: $79
    ld a, d                                       ; $6722: $7a

jr_07f_6723:
    dec bc                                        ; $6723: $0b

jr_07f_6724:
    ld d, $9c                                     ; $6724: $16 $9c
    sbc l                                         ; $6726: $9d
    inc c                                         ; $6727: $0c
    add hl, de                                    ; $6728: $19
    ld l, c                                       ; $6729: $69
    ld hl, $060d                                  ; $672a: $21 $0d $06
    adc l                                         ; $672d: $8d
    adc l                                         ; $672e: $8d
    ld b, $06                                     ; $672f: $06 $06
    inc b                                         ; $6731: $04
    inc b                                         ; $6732: $04
    ld b, $07                                     ; $6733: $06 $07
    inc c                                         ; $6735: $0c
    inc c                                         ; $6736: $0c
    ld b, $06                                     ; $6737: $06 $06
    ld b, $06                                     ; $6739: $06 $06
    ld b, $d1                                     ; $673b: $06 $d1
    pop de                                        ; $673d: $d1
    pop de                                        ; $673e: $d1
    jp nc, $d1d1                                  ; $673f: $d2 $d1 $d1

    pop de                                        ; $6742: $d1
    jp nc, $d1d1                                  ; $6743: $d2 $d1 $d1

    pop de                                        ; $6746: $d1
    jp nc, $d1d1                                  ; $6747: $d2 $d1 $d1

    pop de                                        ; $674a: $d1
    jp nc, $8080                                  ; $674b: $d2 $80 $80

    add b                                         ; $674e: $80
    add b                                         ; $674f: $80
    add b                                         ; $6750: $80
    add b                                         ; $6751: $80
    add b                                         ; $6752: $80
    add b                                         ; $6753: $80
    add b                                         ; $6754: $80
    add b                                         ; $6755: $80
    add b                                         ; $6756: $80
    add b                                         ; $6757: $80
    add b                                         ; $6758: $80
    add b                                         ; $6759: $80
    add b                                         ; $675a: $80
    add b                                         ; $675b: $80
    ld c, $28                                     ; $675c: $0e $28
    inc h                                         ; $675e: $24
    jr z, jr_07f_67ca                             ; $675f: $28 $69

    ld [de], a                                    ; $6761: $12
    inc de                                        ; $6762: $13
    ld [de], a                                    ; $6763: $12
    ld a, [de]                                    ; $6764: $1a
    dec d                                         ; $6765: $15
    ld d, $15                                     ; $6766: $16 $15
    ld l, d                                       ; $6768: $6a
    jr jr_07f_6784                                ; $6769: $18 $19

    jr jr_07f_6773                                ; $676b: $18 $06

    ld b, $06                                     ; $676d: $06 $06
    ld b, $06                                     ; $676f: $06 $06
    ld b, $07                                     ; $6771: $06 $07

jr_07f_6773:
    ld b, $06                                     ; $6773: $06 $06
    ld b, $06                                     ; $6775: $06 $06
    ld b, $06                                     ; $6777: $06 $06
    ld b, $06                                     ; $6779: $06 $06
    rlca                                          ; $677b: $07
    inc h                                         ; $677c: $24
    rra                                           ; $677d: $1f
    inc d                                         ; $677e: $14
    dec e                                         ; $677f: $1d
    inc de                                        ; $6780: $13
    dec de                                        ; $6781: $1b
    rla                                           ; $6782: $17
    inc e                                         ; $6783: $1c

jr_07f_6784:
    ld d, $1d                                     ; $6784: $16 $1d
    ld e, $1f                                     ; $6786: $1e $1f
    add hl, de                                    ; $6788: $19
    inc e                                         ; $6789: $1c
    ld de, $071b                                  ; $678a: $11 $1b $07
    ld b, $06                                     ; $678d: $06 $06
    rlca                                          ; $678f: $07
    ld b, $06                                     ; $6790: $06 $06
    rlca                                          ; $6792: $07
    ld b, $06                                     ; $6793: $06 $06
    rlca                                          ; $6795: $07
    ld b, $06                                     ; $6796: $06 $06
    ld b, $06                                     ; $6798: $06 $06
    rlca                                          ; $679a: $07
    rlca                                          ; $679b: $07
    ld e, $28                                     ; $679c: $1e $28
    inc h                                         ; $679e: $24
    rrca                                          ; $679f: $0f
    ld de, $1312                                  ; $67a0: $11 $12 $13
    ld hl, $1514                                  ; $67a3: $21 $14 $15
    ld d, $22                                     ; $67a6: $16 $22
    rla                                           ; $67a8: $17
    jr jr_07f_67c4                                ; $67a9: $18 $19

    inc hl                                        ; $67ab: $23
    ld b, $06                                     ; $67ac: $06 $06
    ld b, $06                                     ; $67ae: $06 $06
    ld b, $07                                     ; $67b0: $06 $07
    ld b, $06                                     ; $67b2: $06 $06
    ld b, $06                                     ; $67b4: $06 $06
    ld b, $06                                     ; $67b6: $06 $06
    ld b, $06                                     ; $67b8: $06 $06
    ld b, $06                                     ; $67ba: $06 $06
    db $10                                        ; $67bc: $10
    and b                                         ; $67bd: $a0
    and c                                         ; $67be: $a1
    dec e                                         ; $67bf: $1d
    ld a, [hl]                                    ; $67c0: $7e
    and d                                         ; $67c1: $a2
    and e                                         ; $67c2: $a3
    inc e                                         ; $67c3: $1c

jr_07f_67c4:
    and h                                         ; $67c4: $a4
    and l                                         ; $67c5: $a5
    and [hl]                                      ; $67c6: $a6
    rra                                           ; $67c7: $1f
    and a                                         ; $67c8: $a7
    ld a, c                                       ; $67c9: $79

jr_07f_67ca:
    ld a, d                                       ; $67ca: $7a
    dec de                                        ; $67cb: $1b
    ld b, $8d                                     ; $67cc: $06 $8d
    adc l                                         ; $67ce: $8d
    ld b, $06                                     ; $67cf: $06 $06
    adc l                                         ; $67d1: $8d
    adc l                                         ; $67d2: $8d
    ld b, $0e                                     ; $67d3: $06 $0e
    adc l                                         ; $67d5: $8d
    adc l                                         ; $67d6: $8d
    ld b, $0e                                     ; $67d7: $06 $0e
    inc b                                         ; $67d9: $04
    inc b                                         ; $67da: $04
    ld b, $1e                                     ; $67db: $06 $1e
    jr z, jr_07f_6803                             ; $67dd: $28 $24

    jr z, @+$13                                   ; $67df: $28 $11

    ld [de], a                                    ; $67e1: $12
    inc de                                        ; $67e2: $13
    ld [de], a                                    ; $67e3: $12
    inc d                                         ; $67e4: $14
    dec d                                         ; $67e5: $15
    ld d, $15                                     ; $67e6: $16 $15
    rla                                           ; $67e8: $17
    jr jr_07f_6804                                ; $67e9: $18 $19

    jr jr_07f_67f3                                ; $67eb: $18 $06

    rlca                                          ; $67ed: $07
    rlca                                          ; $67ee: $07
    ld b, $07                                     ; $67ef: $06 $07
    ld b, $06                                     ; $67f1: $06 $06

jr_07f_67f3:
    ld b, $06                                     ; $67f3: $06 $06
    ld b, $06                                     ; $67f5: $06 $06
    rlca                                          ; $67f7: $07
    ld b, $07                                     ; $67f8: $06 $07
    rlca                                          ; $67fa: $07
    ld b, $24                                     ; $67fb: $06 $24
    xor b                                         ; $67fd: $a8
    xor c                                         ; $67fe: $a9
    db $10                                        ; $67ff: $10
    inc de                                        ; $6800: $13
    xor d                                         ; $6801: $aa
    xor e                                         ; $6802: $ab

jr_07f_6803:
    ld a, [hl]                                    ; $6803: $7e

jr_07f_6804:
    ld d, $ac                                     ; $6804: $16 $ac
    xor l                                         ; $6806: $ad
    and h                                         ; $6807: $a4
    add hl, de                                    ; $6808: $19
    ld a, c                                       ; $6809: $79
    ld a, d                                       ; $680a: $7a
    and a                                         ; $680b: $a7
    ld b, $8d                                     ; $680c: $06 $8d
    adc l                                         ; $680e: $8d
    ld b, $07                                     ; $680f: $06 $07
    adc l                                         ; $6811: $8d
    adc l                                         ; $6812: $8d
    ld b, $06                                     ; $6813: $06 $06
    adc l                                         ; $6815: $8d
    adc l                                         ; $6816: $8d
    ld c, $06                                     ; $6817: $0e $06
    inc b                                         ; $6819: $04
    inc b                                         ; $681a: $04
    ld c, $d1                                     ; $681b: $0e $d1
    pop de                                        ; $681d: $d1
    pop de                                        ; $681e: $d1
    jp nc, $d1d1                                  ; $681f: $d2 $d1 $d1

    pop de                                        ; $6822: $d1
    jp nc, $d1d1                                  ; $6823: $d2 $d1 $d1

    pop de                                        ; $6826: $d1
    ld [hl], l                                    ; $6827: $75
    pop de                                        ; $6828: $d1
    pop de                                        ; $6829: $d1
    pop de                                        ; $682a: $d1
    pop de                                        ; $682b: $d1
    add b                                         ; $682c: $80
    add b                                         ; $682d: $80
    add b                                         ; $682e: $80
    add b                                         ; $682f: $80
    add b                                         ; $6830: $80
    add b                                         ; $6831: $80
    add b                                         ; $6832: $80
    add b                                         ; $6833: $80
    add b                                         ; $6834: $80
    add b                                         ; $6835: $80
    add b                                         ; $6836: $80
    add b                                         ; $6837: $80
    add b                                         ; $6838: $80
    add b                                         ; $6839: $80
    add b                                         ; $683a: $80
    add b                                         ; $683b: $80
    ld a, [de]                                    ; $683c: $1a
    sbc h                                         ; $683d: $9c
    sbc l                                         ; $683e: $9d
    ld l, c                                       ; $683f: $69
    ld l, c                                       ; $6840: $69
    ld l, c                                       ; $6841: $69
    ld hl, $7610                                  ; $6842: $21 $10 $76
    halt                                          ; $6845: $76
    halt                                          ; $6846: $76
    sbc c                                         ; $6847: $99
    pop de                                        ; $6848: $d1
    pop de                                        ; $6849: $d1
    pop de                                        ; $684a: $d1
    jp nc, $0c06                                  ; $684b: $d2 $06 $0c

    inc c                                         ; $684e: $0c
    ld b, $06                                     ; $684f: $06 $06
    ld b, $06                                     ; $6851: $06 $06
    ld b, $80                                     ; $6853: $06 $80
    add b                                         ; $6855: $80
    add b                                         ; $6856: $80
    adc b                                         ; $6857: $88
    add b                                         ; $6858: $80
    add b                                         ; $6859: $80
    add b                                         ; $685a: $80
    add b                                         ; $685b: $80
    inc h                                         ; $685c: $24
    rra                                           ; $685d: $1f
    inc d                                         ; $685e: $14
    dec e                                         ; $685f: $1d
    inc de                                        ; $6860: $13
    dec de                                        ; $6861: $1b
    rla                                           ; $6862: $17
    inc e                                         ; $6863: $1c
    ld d, $1d                                     ; $6864: $16 $1d
    ld e, $1f                                     ; $6866: $1e $1f
    add hl, de                                    ; $6868: $19
    inc e                                         ; $6869: $1c
    ld de, $071b                                  ; $686a: $11 $1b $07
    ld b, $06                                     ; $686d: $06 $06
    rlca                                          ; $686f: $07
    ld b, $07                                     ; $6870: $06 $07
    ld b, $06                                     ; $6872: $06 $06
    rlca                                          ; $6874: $07
    ld b, $06                                     ; $6875: $06 $06
    ld b, $06                                     ; $6877: $06 $06
    ld b, $07                                     ; $6879: $06 $07
    ld b, $1e                                     ; $687b: $06 $1e
    sbc h                                         ; $687d: $9c
    sbc l                                         ; $687e: $9d
    ld l, c                                       ; $687f: $69
    ld de, $2169                                  ; $6880: $11 $69 $21
    db $10                                        ; $6883: $10
    xor [hl]                                      ; $6884: $ae
    halt                                          ; $6885: $76
    halt                                          ; $6886: $76
    halt                                          ; $6887: $76
    jp nc, $d1d1                                  ; $6888: $d2 $d1 $d1

    pop de                                        ; $688b: $d1
    ld b, $0c                                     ; $688c: $06 $0c
    inc c                                         ; $688e: $0c
    ld b, $06                                     ; $688f: $06 $06
    ld b, $06                                     ; $6891: $06 $06
    ld b, $88                                     ; $6893: $06 $88
    add b                                         ; $6895: $80
    add b                                         ; $6896: $80
    add b                                         ; $6897: $80
    add b                                         ; $6898: $80
    add b                                         ; $6899: $80
    add b                                         ; $689a: $80
    add b                                         ; $689b: $80
    pop de                                        ; $689c: $d1
    pop de                                        ; $689d: $d1
    pop de                                        ; $689e: $d1
    ld [hl], l                                    ; $689f: $75
    pop de                                        ; $68a0: $d1
    pop de                                        ; $68a1: $d1
    pop de                                        ; $68a2: $d1
    pop de                                        ; $68a3: $d1
    pop de                                        ; $68a4: $d1
    pop de                                        ; $68a5: $d1
    pop de                                        ; $68a6: $d1
    pop de                                        ; $68a7: $d1
    pop de                                        ; $68a8: $d1
    pop de                                        ; $68a9: $d1
    pop de                                        ; $68aa: $d1
    pop de                                        ; $68ab: $d1
    add b                                         ; $68ac: $80
    add b                                         ; $68ad: $80
    add b                                         ; $68ae: $80
    add b                                         ; $68af: $80
    add b                                         ; $68b0: $80
    add b                                         ; $68b1: $80
    add b                                         ; $68b2: $80
    add b                                         ; $68b3: $80
    add b                                         ; $68b4: $80
    add b                                         ; $68b5: $80
    add b                                         ; $68b6: $80
    add b                                         ; $68b7: $80
    add b                                         ; $68b8: $80
    add b                                         ; $68b9: $80
    add b                                         ; $68ba: $80
    add b                                         ; $68bb: $80
    xor a                                         ; $68bc: $af
    xor a                                         ; $68bd: $af
    xor a                                         ; $68be: $af
    xor a                                         ; $68bf: $af
    or b                                          ; $68c0: $b0
    or b                                          ; $68c1: $b0
    or b                                          ; $68c2: $b0
    or b                                          ; $68c3: $b0
    pop de                                        ; $68c4: $d1
    pop de                                        ; $68c5: $d1
    pop de                                        ; $68c6: $d1
    pop de                                        ; $68c7: $d1
    pop de                                        ; $68c8: $d1
    pop de                                        ; $68c9: $d1
    pop de                                        ; $68ca: $d1
    pop de                                        ; $68cb: $d1
    adc b                                         ; $68cc: $88
    adc b                                         ; $68cd: $88
    adc b                                         ; $68ce: $88
    adc b                                         ; $68cf: $88
    adc b                                         ; $68d0: $88
    adc b                                         ; $68d1: $88
    adc b                                         ; $68d2: $88
    adc b                                         ; $68d3: $88
    add b                                         ; $68d4: $80
    add b                                         ; $68d5: $80
    add b                                         ; $68d6: $80
    add b                                         ; $68d7: $80
    add b                                         ; $68d8: $80
    add b                                         ; $68d9: $80
    add b                                         ; $68da: $80
    add b                                         ; $68db: $80
    or c                                          ; $68dc: $b1
    pop de                                        ; $68dd: $d1
    pop de                                        ; $68de: $d1
    pop de                                        ; $68df: $d1
    pop de                                        ; $68e0: $d1
    pop de                                        ; $68e1: $d1
    pop de                                        ; $68e2: $d1
    pop de                                        ; $68e3: $d1
    pop de                                        ; $68e4: $d1
    pop de                                        ; $68e5: $d1
    pop de                                        ; $68e6: $d1
    pop de                                        ; $68e7: $d1
    pop de                                        ; $68e8: $d1
    pop de                                        ; $68e9: $d1
    pop de                                        ; $68ea: $d1
    pop de                                        ; $68eb: $d1
    adc b                                         ; $68ec: $88
    add b                                         ; $68ed: $80
    add b                                         ; $68ee: $80
    add b                                         ; $68ef: $80
    add b                                         ; $68f0: $80
    add b                                         ; $68f1: $80
    add b                                         ; $68f2: $80
    add b                                         ; $68f3: $80
    add b                                         ; $68f4: $80
    add b                                         ; $68f5: $80
    add b                                         ; $68f6: $80
    add b                                         ; $68f7: $80
    add b                                         ; $68f8: $80
    add b                                         ; $68f9: $80
    add b                                         ; $68fa: $80
    add b                                         ; $68fb: $80
    jp nc, $d1d1                                  ; $68fc: $d2 $d1 $d1

    pop de                                        ; $68ff: $d1
    jp nc, $d1d1                                  ; $6900: $d2 $d1 $d1

    pop de                                        ; $6903: $d1
    or c                                          ; $6904: $b1
    pop de                                        ; $6905: $d1
    pop de                                        ; $6906: $d1
    pop de                                        ; $6907: $d1
    pop de                                        ; $6908: $d1
    pop de                                        ; $6909: $d1
    pop de                                        ; $690a: $d1
    pop de                                        ; $690b: $d1
    add b                                         ; $690c: $80
    add b                                         ; $690d: $80
    add b                                         ; $690e: $80
    add b                                         ; $690f: $80
    add b                                         ; $6910: $80
    add b                                         ; $6911: $80
    add b                                         ; $6912: $80
    add b                                         ; $6913: $80
    adc b                                         ; $6914: $88
    add b                                         ; $6915: $80
    add b                                         ; $6916: $80
    add b                                         ; $6917: $80
    add b                                         ; $6918: $80
    add b                                         ; $6919: $80
    add b                                         ; $691a: $80
    add b                                         ; $691b: $80
    ld a, [bc]                                    ; $691c: $0a
    nop                                           ; $691d: $00
    inc c                                         ; $691e: $0c
    nop                                           ; $691f: $00
    and b                                         ; $6920: $a0
    ld [$d1d1], sp                                ; $6921: $08 $d1 $d1
    pop de                                        ; $6924: $d1
    pop de                                        ; $6925: $d1
    pop de                                        ; $6926: $d1
    pop de                                        ; $6927: $d1
    pop de                                        ; $6928: $d1
    pop de                                        ; $6929: $d1
    pop de                                        ; $692a: $d1
    pop de                                        ; $692b: $d1
    pop de                                        ; $692c: $d1
    pop de                                        ; $692d: $d1
    pop de                                        ; $692e: $d1
    pop de                                        ; $692f: $d1
    pop de                                        ; $6930: $d1
    pop de                                        ; $6931: $d1
    add b                                         ; $6932: $80
    add b                                         ; $6933: $80
    add b                                         ; $6934: $80
    add b                                         ; $6935: $80
    add b                                         ; $6936: $80
    add b                                         ; $6937: $80
    add b                                         ; $6938: $80
    add b                                         ; $6939: $80
    add b                                         ; $693a: $80
    add b                                         ; $693b: $80
    add b                                         ; $693c: $80
    add b                                         ; $693d: $80
    add b                                         ; $693e: $80
    add b                                         ; $693f: $80
    add b                                         ; $6940: $80
    add b                                         ; $6941: $80
    jp nc, $d4d3                                  ; $6942: $d2 $d3 $d4

    push de                                       ; $6945: $d5
    jp nc, $d7d6                                  ; $6946: $d2 $d6 $d7

    ret c                                         ; $6949: $d8

    jp nc, $dad9                                  ; $694a: $d2 $d9 $da

    db $db                                        ; $694d: $db
    jp nc, $dddc                                  ; $694e: $d2 $dc $dd

    sbc $80                                       ; $6951: $de $80
    inc bc                                        ; $6953: $03
    inc bc                                        ; $6954: $03
    inc bc                                        ; $6955: $03
    add b                                         ; $6956: $80
    inc b                                         ; $6957: $04
    inc b                                         ; $6958: $04
    inc b                                         ; $6959: $04
    add b                                         ; $695a: $80
    inc b                                         ; $695b: $04
    inc b                                         ; $695c: $04
    inc b                                         ; $695d: $04
    add b                                         ; $695e: $80
    ld [bc], a                                    ; $695f: $02
    ld [bc], a                                    ; $6960: $02
    ld [bc], a                                    ; $6961: $02
    rst $18                                       ; $6962: $df
    ldh [$d3], a                                  ; $6963: $e0 $d3
    call nc, $d6e1                                ; $6965: $d4 $e1 $d6
    rst $10                                       ; $6968: $d7
    ret c                                         ; $6969: $d8

    ld [c], a                                     ; $696a: $e2
    reti                                          ; $696b: $d9


    jp c, $e3db                                   ; $696c: $da $db $e3

    call c, $dedd                                 ; $696f: $dc $dd $de
    inc bc                                        ; $6972: $03
    inc bc                                        ; $6973: $03
    inc bc                                        ; $6974: $03
    inc bc                                        ; $6975: $03
    inc bc                                        ; $6976: $03
    inc b                                         ; $6977: $04
    inc b                                         ; $6978: $04
    inc b                                         ; $6979: $04
    ld bc, $0404                                  ; $697a: $01 $04 $04
    inc b                                         ; $697d: $04
    ld bc, $0202                                  ; $697e: $01 $02 $02
    ld [bc], a                                    ; $6981: $02
    db $e4                                        ; $6982: $e4
    rst $18                                       ; $6983: $df
    ldh [$d3], a                                  ; $6984: $e0 $d3
    push hl                                       ; $6986: $e5
    sub $d7                                       ; $6987: $d6 $d7
    ret c                                         ; $6989: $d8

    ld [c], a                                     ; $698a: $e2
    reti                                          ; $698b: $d9


    jp c, $e3db                                   ; $698c: $da $db $e3

    call c, $dedd                                 ; $698f: $dc $dd $de
    inc bc                                        ; $6992: $03
    inc bc                                        ; $6993: $03
    inc bc                                        ; $6994: $03
    inc bc                                        ; $6995: $03
    inc bc                                        ; $6996: $03
    inc b                                         ; $6997: $04
    inc b                                         ; $6998: $04
    inc b                                         ; $6999: $04
    ld bc, $0404                                  ; $699a: $01 $04 $04
    inc b                                         ; $699d: $04
    ld bc, $0202                                  ; $699e: $01 $02 $02
    ld [bc], a                                    ; $69a1: $02
    jp nc, $e7e6                                  ; $69a2: $d2 $e6 $e7

    add sp, -$2e                                  ; $69a5: $e8 $d2
    jp hl                                         ; $69a7: $e9


    ld [$d2eb], a                                 ; $69a8: $ea $eb $d2
    db $ec                                        ; $69ab: $ec
    db $ed                                        ; $69ac: $ed
    xor $d2                                       ; $69ad: $ee $d2
    rst $28                                       ; $69af: $ef
    ldh a, [$f1]                                  ; $69b0: $f0 $f1
    add b                                         ; $69b2: $80
    ld [bc], a                                    ; $69b3: $02
    ld [bc], a                                    ; $69b4: $02
    ld [bc], a                                    ; $69b5: $02
    add b                                         ; $69b6: $80
    ld [bc], a                                    ; $69b7: $02
    ld [bc], a                                    ; $69b8: $02
    ld [bc], a                                    ; $69b9: $02
    add b                                         ; $69ba: $80
    inc b                                         ; $69bb: $04
    inc b                                         ; $69bc: $04
    inc b                                         ; $69bd: $04
    add b                                         ; $69be: $80
    ld bc, $0101                                  ; $69bf: $01 $01 $01
    db $e3                                        ; $69c2: $e3
    and $e7                                       ; $69c3: $e6 $e7
    add sp, -$1d                                  ; $69c5: $e8 $e3
    jp hl                                         ; $69c7: $e9


    ld [$e2eb], a                                 ; $69c8: $ea $eb $e2
    db $ec                                        ; $69cb: $ec
    db $ed                                        ; $69cc: $ed
    ld a, [c]                                     ; $69cd: $f2
    di                                            ; $69ce: $f3
    rst $28                                       ; $69cf: $ef
    ldh a, [$f1]                                  ; $69d0: $f0 $f1
    ld bc, $0202                                  ; $69d2: $01 $02 $02
    ld [bc], a                                    ; $69d5: $02
    ld bc, $0202                                  ; $69d6: $01 $02 $02
    ld [bc], a                                    ; $69d9: $02
    ld bc, $0404                                  ; $69da: $01 $04 $04
    inc b                                         ; $69dd: $04
    ld bc, $0101                                  ; $69de: $01 $01 $01
    ld bc, $f4d2                                  ; $69e1: $01 $d2 $f4
    push af                                       ; $69e4: $f5
    or $d2                                        ; $69e5: $f6 $d2
    rst $30                                       ; $69e7: $f7
    ld hl, sp-$07                                 ; $69e8: $f8 $f9
    jp nc, $fbfa                                  ; $69ea: $d2 $fa $fb

    ei                                            ; $69ed: $fb
    jp nc, $fdfc                                  ; $69ee: $d2 $fc $fd

    cp $80                                        ; $69f1: $fe $80
    ld bc, $0101                                  ; $69f3: $01 $01 $01
    add b                                         ; $69f6: $80
    ld bc, $0101                                  ; $69f7: $01 $01 $01
    add b                                         ; $69fa: $80
    inc b                                         ; $69fb: $04
    inc b                                         ; $69fc: $04
    inc b                                         ; $69fd: $04
    add b                                         ; $69fe: $80
    inc bc                                        ; $69ff: $03
    inc bc                                        ; $6a00: $03
    inc bc                                        ; $6a01: $03
    di                                            ; $6a02: $f3
    db $f4                                        ; $6a03: $f4
    push af                                       ; $6a04: $f5
    or $f3                                        ; $6a05: $f6 $f3
    rst $30                                       ; $6a07: $f7
    ld hl, sp-$07                                 ; $6a08: $f8 $f9
    rst $38                                       ; $6a0a: $ff
    ld a, [$fbfb]                                 ; $6a0b: $fa $fb $fb
    nop                                           ; $6a0e: $00
    ld bc, $0302                                  ; $6a0f: $01 $02 $03
    ld bc, $0101                                  ; $6a12: $01 $01 $01
    ld bc, $0101                                  ; $6a15: $01 $01 $01
    ld bc, $0101                                  ; $6a18: $01 $01 $01
    inc b                                         ; $6a1b: $04
    inc b                                         ; $6a1c: $04
    inc b                                         ; $6a1d: $04
    inc bc                                        ; $6a1e: $03
    inc bc                                        ; $6a1f: $03
    inc bc                                        ; $6a20: $03
    inc bc                                        ; $6a21: $03
    di                                            ; $6a22: $f3
    db $f4                                        ; $6a23: $f4
    push af                                       ; $6a24: $f5
    or $f3                                        ; $6a25: $f6 $f3
    rst $30                                       ; $6a27: $f7
    ld hl, sp-$07                                 ; $6a28: $f8 $f9
    rst $38                                       ; $6a2a: $ff
    ld a, [$fbfb]                                 ; $6a2b: $fa $fb $fb
    inc b                                         ; $6a2e: $04
    dec b                                         ; $6a2f: $05
    ld b, $07                                     ; $6a30: $06 $07
    ld bc, $0101                                  ; $6a32: $01 $01 $01
    ld bc, $0101                                  ; $6a35: $01 $01 $01
    ld bc, $0101                                  ; $6a38: $01 $01 $01
    inc b                                         ; $6a3b: $04
    inc b                                         ; $6a3c: $04
    inc b                                         ; $6a3d: $04
    inc bc                                        ; $6a3e: $03
    inc bc                                        ; $6a3f: $03
    inc bc                                        ; $6a40: $03
    inc bc                                        ; $6a41: $03
    jp nc, Jump_000_0908                          ; $6a42: $d2 $08 $09

    ld a, [bc]                                    ; $6a45: $0a
    jp nc, Jump_000_0c0b                          ; $6a46: $d2 $0b $0c

    dec c                                         ; $6a49: $0d
    jp nc, Jump_000_0f0e                          ; $6a4a: $d2 $0e $0f

    db $10                                        ; $6a4d: $10
    jp nc, Jump_000_1211                          ; $6a4e: $d2 $11 $12

    inc de                                        ; $6a51: $13
    add b                                         ; $6a52: $80
    inc bc                                        ; $6a53: $03
    inc bc                                        ; $6a54: $03
    inc bc                                        ; $6a55: $03
    add b                                         ; $6a56: $80
    inc bc                                        ; $6a57: $03
    ld b, $03                                     ; $6a58: $06 $03
    add b                                         ; $6a5a: $80
    inc bc                                        ; $6a5b: $03
    inc bc                                        ; $6a5c: $03
    ld b, $80                                     ; $6a5d: $06 $80
    rlca                                          ; $6a5f: $07
    rlca                                          ; $6a60: $07
    ld b, $14                                     ; $6a61: $06 $14
    dec d                                         ; $6a63: $15
    ld d, $08                                     ; $6a64: $16 $08
    rla                                           ; $6a66: $17
    jr jr_07f_6a82                                ; $6a67: $18 $19

    dec bc                                        ; $6a69: $0b
    ld a, [de]                                    ; $6a6a: $1a
    dec de                                        ; $6a6b: $1b
    inc e                                         ; $6a6c: $1c
    ld c, $1d                                     ; $6a6d: $0e $1d
    ld e, $1f                                     ; $6a6f: $1e $1f
    ld de, $0303                                  ; $6a71: $11 $03 $03
    inc bc                                        ; $6a74: $03
    inc bc                                        ; $6a75: $03
    rlca                                          ; $6a76: $07
    inc bc                                        ; $6a77: $03
    inc bc                                        ; $6a78: $03
    rlca                                          ; $6a79: $07
    inc bc                                        ; $6a7a: $03
    inc bc                                        ; $6a7b: $03
    ld b, $03                                     ; $6a7c: $06 $03
    inc bc                                        ; $6a7e: $03
    rlca                                          ; $6a7f: $07
    inc bc                                        ; $6a80: $03
    rlca                                          ; $6a81: $07

jr_07f_6a82:
    add hl, bc                                    ; $6a82: $09
    ld a, [bc]                                    ; $6a83: $0a
    inc d                                         ; $6a84: $14
    dec d                                         ; $6a85: $15
    inc c                                         ; $6a86: $0c
    dec c                                         ; $6a87: $0d
    rla                                           ; $6a88: $17
    jr jr_07f_6a9a                                ; $6a89: $18 $0f

    db $10                                        ; $6a8b: $10
    ld a, [de]                                    ; $6a8c: $1a
    dec de                                        ; $6a8d: $1b
    ld [de], a                                    ; $6a8e: $12
    inc de                                        ; $6a8f: $13
    dec e                                         ; $6a90: $1d
    ld e, $03                                     ; $6a91: $1e $03
    inc bc                                        ; $6a93: $03
    inc bc                                        ; $6a94: $03
    rlca                                          ; $6a95: $07
    ld b, $03                                     ; $6a96: $06 $03
    inc bc                                        ; $6a98: $03
    inc bc                                        ; $6a99: $03

jr_07f_6a9a:
    inc bc                                        ; $6a9a: $03
    rlca                                          ; $6a9b: $07
    inc bc                                        ; $6a9c: $03
    inc bc                                        ; $6a9d: $03
    inc bc                                        ; $6a9e: $03
    inc bc                                        ; $6a9f: $03
    ld b, $03                                     ; $6aa0: $06 $03
    call nc, $dfd5                                ; $6aa2: $d4 $d5 $df
    ldh [rNR41], a                                ; $6aa5: $e0 $20
    sub $d7                                       ; $6aa7: $d6 $d7
    ret c                                         ; $6aa9: $d8

    ld [c], a                                     ; $6aaa: $e2
    reti                                          ; $6aab: $d9


    jp c, $e3db                                   ; $6aac: $da $db $e3

    call c, $dedd                                 ; $6aaf: $dc $dd $de
    inc bc                                        ; $6ab2: $03
    inc bc                                        ; $6ab3: $03
    inc bc                                        ; $6ab4: $03
    inc bc                                        ; $6ab5: $03
    inc bc                                        ; $6ab6: $03
    inc b                                         ; $6ab7: $04
    inc b                                         ; $6ab8: $04
    inc b                                         ; $6ab9: $04
    ld bc, $0404                                  ; $6aba: $01 $04 $04
    inc b                                         ; $6abd: $04
    ld bc, $0202                                  ; $6abe: $01 $02 $02
    ld [bc], a                                    ; $6ac1: $02
    ld hl, $d5d4                                  ; $6ac2: $21 $d4 $d5
    rst $18                                       ; $6ac5: $df
    ld [hl+], a                                   ; $6ac6: $22
    sub $d7                                       ; $6ac7: $d6 $d7
    ret c                                         ; $6ac9: $d8

    ld [c], a                                     ; $6aca: $e2
    reti                                          ; $6acb: $d9


    jp c, $e3db                                   ; $6acc: $da $db $e3

    call c, $dedd                                 ; $6acf: $dc $dd $de
    inc bc                                        ; $6ad2: $03
    inc bc                                        ; $6ad3: $03
    inc bc                                        ; $6ad4: $03
    inc bc                                        ; $6ad5: $03
    inc bc                                        ; $6ad6: $03
    inc b                                         ; $6ad7: $04
    inc b                                         ; $6ad8: $04
    inc b                                         ; $6ad9: $04
    ld bc, $0404                                  ; $6ada: $01 $04 $04
    inc b                                         ; $6add: $04
    ld bc, $0202                                  ; $6ade: $01 $02 $02
    ld [bc], a                                    ; $6ae1: $02
    inc hl                                        ; $6ae2: $23
    db $d3                                        ; $6ae3: $d3
    call nc, Call_000_24e4                        ; $6ae4: $d4 $e4 $24
    sub $d7                                       ; $6ae7: $d6 $d7
    ret c                                         ; $6ae9: $d8

    ld [c], a                                     ; $6aea: $e2
    reti                                          ; $6aeb: $d9


    jp c, $e3db                                   ; $6aec: $da $db $e3

    call c, $dedd                                 ; $6aef: $dc $dd $de
    inc bc                                        ; $6af2: $03
    inc bc                                        ; $6af3: $03
    inc bc                                        ; $6af4: $03
    inc bc                                        ; $6af5: $03
    inc bc                                        ; $6af6: $03
    inc b                                         ; $6af7: $04
    inc b                                         ; $6af8: $04
    inc b                                         ; $6af9: $04
    ld bc, $0404                                  ; $6afa: $01 $04 $04
    inc b                                         ; $6afd: $04
    ld bc, $0202                                  ; $6afe: $01 $02 $02
    ld [bc], a                                    ; $6b01: $02
    db $e3                                        ; $6b02: $e3
    and $e7                                       ; $6b03: $e6 $e7
    add sp, -$1d                                  ; $6b05: $e8 $e3
    dec h                                         ; $6b07: $25
    ld [$e2eb], a                                 ; $6b08: $ea $eb $e2
    ld h, $ed                                     ; $6b0b: $26 $ed
    ld a, [c]                                     ; $6b0d: $f2
    di                                            ; $6b0e: $f3
    daa                                           ; $6b0f: $27
    jr z, @+$2b                                   ; $6b10: $28 $29

    ld bc, $0202                                  ; $6b12: $01 $02 $02
    ld [bc], a                                    ; $6b15: $02
    ld bc, $0202                                  ; $6b16: $01 $02 $02
    ld [bc], a                                    ; $6b19: $02
    ld bc, $0404                                  ; $6b1a: $01 $04 $04
    inc b                                         ; $6b1d: $04
    ld bc, $0404                                  ; $6b1e: $01 $04 $04
    inc b                                         ; $6b21: $04
    di                                            ; $6b22: $f3
    ld a, [hl+]                                   ; $6b23: $2a
    dec hl                                        ; $6b24: $2b
    inc l                                         ; $6b25: $2c
    di                                            ; $6b26: $f3
    ld a, [hl+]                                   ; $6b27: $2a
    dec l                                         ; $6b28: $2d
    dec l                                         ; $6b29: $2d
    rst $38                                       ; $6b2a: $ff
    ld a, [$2d2d]                                 ; $6b2b: $fa $2d $2d
    ld l, $fc                                     ; $6b2e: $2e $fc
    db $fd                                        ; $6b30: $fd
    cp $01                                        ; $6b31: $fe $01
    inc b                                         ; $6b33: $04
    inc b                                         ; $6b34: $04
    inc b                                         ; $6b35: $04
    ld bc, $0404                                  ; $6b36: $01 $04 $04
    inc b                                         ; $6b39: $04
    ld bc, $0404                                  ; $6b3a: $01 $04 $04
    inc b                                         ; $6b3d: $04
    inc bc                                        ; $6b3e: $03
    inc bc                                        ; $6b3f: $03
    inc bc                                        ; $6b40: $03
    inc bc                                        ; $6b41: $03
    di                                            ; $6b42: $f3
    ld a, [hl+]                                   ; $6b43: $2a
    dec hl                                        ; $6b44: $2b
    inc l                                         ; $6b45: $2c
    di                                            ; $6b46: $f3
    ld a, [hl+]                                   ; $6b47: $2a
    dec l                                         ; $6b48: $2d
    dec l                                         ; $6b49: $2d
    rst $38                                       ; $6b4a: $ff
    ld a, [$2d2d]                                 ; $6b4b: $fa $2d $2d
    nop                                           ; $6b4e: $00
    ld bc, $0302                                  ; $6b4f: $01 $02 $03
    ld bc, $0404                                  ; $6b52: $01 $04 $04
    inc b                                         ; $6b55: $04
    ld bc, $0404                                  ; $6b56: $01 $04 $04
    inc b                                         ; $6b59: $04
    ld bc, $0404                                  ; $6b5a: $01 $04 $04
    inc b                                         ; $6b5d: $04
    inc bc                                        ; $6b5e: $03
    inc bc                                        ; $6b5f: $03
    inc bc                                        ; $6b60: $03
    inc bc                                        ; $6b61: $03
    di                                            ; $6b62: $f3
    ld a, [hl+]                                   ; $6b63: $2a
    dec hl                                        ; $6b64: $2b
    inc l                                         ; $6b65: $2c
    di                                            ; $6b66: $f3
    ld a, [hl+]                                   ; $6b67: $2a
    dec l                                         ; $6b68: $2d
    dec l                                         ; $6b69: $2d

Jump_07f_6b6a:
    rst $38                                       ; $6b6a: $ff
    ld a, [$2d2d]                                 ; $6b6b: $fa $2d $2d
    inc b                                         ; $6b6e: $04
    dec b                                         ; $6b6f: $05
    ld b, $07                                     ; $6b70: $06 $07
    ld bc, $0404                                  ; $6b72: $01 $04 $04
    inc b                                         ; $6b75: $04
    ld bc, $0404                                  ; $6b76: $01 $04 $04
    inc b                                         ; $6b79: $04
    ld bc, $0404                                  ; $6b7a: $01 $04 $04
    inc b                                         ; $6b7d: $04
    inc bc                                        ; $6b7e: $03
    inc bc                                        ; $6b7f: $03
    inc bc                                        ; $6b80: $03
    inc bc                                        ; $6b81: $03
    di                                            ; $6b82: $f3
    db $f4                                        ; $6b83: $f4
    push af                                       ; $6b84: $f5
    or $f3                                        ; $6b85: $f6 $f3
    rst $30                                       ; $6b87: $f7
    ld hl, sp-$07                                 ; $6b88: $f8 $f9
    rst $38                                       ; $6b8a: $ff
    ld a, [$fbfb]                                 ; $6b8b: $fa $fb $fb
    ld l, $fc                                     ; $6b8e: $2e $fc
    db $fd                                        ; $6b90: $fd
    cp $01                                        ; $6b91: $fe $01
    ld bc, $0101                                  ; $6b93: $01 $01 $01
    ld bc, $0101                                  ; $6b96: $01 $01 $01
    ld bc, $0401                                  ; $6b99: $01 $01 $04
    inc b                                         ; $6b9c: $04
    inc b                                         ; $6b9d: $04
    inc bc                                        ; $6b9e: $03
    inc bc                                        ; $6b9f: $03
    inc bc                                        ; $6ba0: $03
    inc bc                                        ; $6ba1: $03
    ld d, $08                                     ; $6ba2: $16 $08
    add hl, bc                                    ; $6ba4: $09
    ld a, [bc]                                    ; $6ba5: $0a
    add hl, de                                    ; $6ba6: $19
    dec bc                                        ; $6ba7: $0b
    inc c                                         ; $6ba8: $0c
    dec c                                         ; $6ba9: $0d
    inc e                                         ; $6baa: $1c
    ld c, $0f                                     ; $6bab: $0e $0f
    db $10                                        ; $6bad: $10
    rra                                           ; $6bae: $1f
    ld de, $1312                                  ; $6baf: $11 $12 $13
    inc bc                                        ; $6bb2: $03
    inc bc                                        ; $6bb3: $03
    rlca                                          ; $6bb4: $07
    inc bc                                        ; $6bb5: $03
    inc bc                                        ; $6bb6: $03
    inc bc                                        ; $6bb7: $03
    inc bc                                        ; $6bb8: $03
    ld b, $07                                     ; $6bb9: $06 $07
    inc bc                                        ; $6bbb: $03
    rlca                                          ; $6bbc: $07
    inc bc                                        ; $6bbd: $03
    inc bc                                        ; $6bbe: $03
    ld b, $03                                     ; $6bbf: $06 $03
    rlca                                          ; $6bc1: $07
    inc d                                         ; $6bc2: $14
    dec d                                         ; $6bc3: $15
    ld d, $08                                     ; $6bc4: $16 $08
    rla                                           ; $6bc6: $17
    jr jr_07f_6be2                                ; $6bc7: $18 $19

    dec bc                                        ; $6bc9: $0b
    ld a, [de]                                    ; $6bca: $1a
    dec de                                        ; $6bcb: $1b
    inc e                                         ; $6bcc: $1c
    ld c, $1d                                     ; $6bcd: $0e $1d
    ld e, $1f                                     ; $6bcf: $1e $1f
    ld de, $0303                                  ; $6bd1: $11 $03 $03
    inc bc                                        ; $6bd4: $03
    inc bc                                        ; $6bd5: $03
    inc bc                                        ; $6bd6: $03
    inc bc                                        ; $6bd7: $03
    rlca                                          ; $6bd8: $07
    inc bc                                        ; $6bd9: $03
    inc bc                                        ; $6bda: $03
    rlca                                          ; $6bdb: $07
    inc bc                                        ; $6bdc: $03
    rlca                                          ; $6bdd: $07
    ld b, $06                                     ; $6bde: $06 $06
    inc bc                                        ; $6be0: $03
    inc bc                                        ; $6be1: $03

jr_07f_6be2:
    add hl, bc                                    ; $6be2: $09
    ld a, [bc]                                    ; $6be3: $0a
    inc d                                         ; $6be4: $14
    dec d                                         ; $6be5: $15
    inc c                                         ; $6be6: $0c
    dec c                                         ; $6be7: $0d
    rla                                           ; $6be8: $17
    jr jr_07f_6bfa                                ; $6be9: $18 $0f

    db $10                                        ; $6beb: $10
    ld a, [de]                                    ; $6bec: $1a
    dec de                                        ; $6bed: $1b
    ld [de], a                                    ; $6bee: $12
    inc de                                        ; $6bef: $13
    dec e                                         ; $6bf0: $1d
    ld e, $03                                     ; $6bf1: $1e $03
    inc bc                                        ; $6bf3: $03
    inc bc                                        ; $6bf4: $03
    inc bc                                        ; $6bf5: $03
    inc bc                                        ; $6bf6: $03
    rlca                                          ; $6bf7: $07
    inc bc                                        ; $6bf8: $03
    inc bc                                        ; $6bf9: $03

jr_07f_6bfa:
    rlca                                          ; $6bfa: $07
    rlca                                          ; $6bfb: $07
    rlca                                          ; $6bfc: $07
    inc bc                                        ; $6bfd: $03
    inc bc                                        ; $6bfe: $03
    rlca                                          ; $6bff: $07
    rlca                                          ; $6c00: $07
    inc bc                                        ; $6c01: $03
    ld d, $08                                     ; $6c02: $16 $08
    add hl, bc                                    ; $6c04: $09
    ld a, [bc]                                    ; $6c05: $0a
    add hl, de                                    ; $6c06: $19
    dec bc                                        ; $6c07: $0b
    inc c                                         ; $6c08: $0c
    dec c                                         ; $6c09: $0d
    inc e                                         ; $6c0a: $1c
    ld c, $0f                                     ; $6c0b: $0e $0f
    db $10                                        ; $6c0d: $10
    rra                                           ; $6c0e: $1f
    ld de, $1312                                  ; $6c0f: $11 $12 $13
    inc bc                                        ; $6c12: $03
    inc bc                                        ; $6c13: $03
    inc bc                                        ; $6c14: $03
    inc bc                                        ; $6c15: $03
    inc bc                                        ; $6c16: $03
    inc bc                                        ; $6c17: $03
    inc bc                                        ; $6c18: $03
    rlca                                          ; $6c19: $07
    inc bc                                        ; $6c1a: $03
    rlca                                          ; $6c1b: $07
    inc bc                                        ; $6c1c: $03
    rlca                                          ; $6c1d: $07
    rlca                                          ; $6c1e: $07
    ld b, $03                                     ; $6c1f: $06 $03
    rlca                                          ; $6c21: $07
    jp nc, $d1d1                                  ; $6c22: $d2 $d1 $d1

    pop de                                        ; $6c25: $d1
    jp nc, $d1d1                                  ; $6c26: $d2 $d1 $d1

    pop de                                        ; $6c29: $d1
    jp nc, $d1d1                                  ; $6c2a: $d2 $d1 $d1

    pop de                                        ; $6c2d: $d1
    jp nc, $d1d1                                  ; $6c2e: $d2 $d1 $d1

    pop de                                        ; $6c31: $d1
    add b                                         ; $6c32: $80
    add b                                         ; $6c33: $80
    add b                                         ; $6c34: $80
    add b                                         ; $6c35: $80
    add b                                         ; $6c36: $80
    add b                                         ; $6c37: $80
    add b                                         ; $6c38: $80
    add b                                         ; $6c39: $80
    add b                                         ; $6c3a: $80
    add b                                         ; $6c3b: $80
    add b                                         ; $6c3c: $80
    add b                                         ; $6c3d: $80
    add b                                         ; $6c3e: $80
    add b                                         ; $6c3f: $80
    add b                                         ; $6c40: $80
    add b                                         ; $6c41: $80
    db $e3                                        ; $6c42: $e3
    and $e7                                       ; $6c43: $e6 $e7
    add sp, -$1d                                  ; $6c45: $e8 $e3
    jp hl                                         ; $6c47: $e9


    cpl                                           ; $6c48: $2f
    db $eb                                        ; $6c49: $eb
    ld [c], a                                     ; $6c4a: $e2
    db $ec                                        ; $6c4b: $ec
    db $ed                                        ; $6c4c: $ed
    ld a, [c]                                     ; $6c4d: $f2
    di                                            ; $6c4e: $f3
    rst $28                                       ; $6c4f: $ef
    ldh a, [$f1]                                  ; $6c50: $f0 $f1
    ld bc, $0202                                  ; $6c52: $01 $02 $02
    ld [bc], a                                    ; $6c55: $02
    ld bc, $0202                                  ; $6c56: $01 $02 $02
    ld [bc], a                                    ; $6c59: $02
    ld bc, $0404                                  ; $6c5a: $01 $04 $04
    inc b                                         ; $6c5d: $04
    ld bc, $0101                                  ; $6c5e: $01 $01 $01
    ld bc, $1514                                  ; $6c61: $01 $14 $15
    ld d, $08                                     ; $6c64: $16 $08
    rla                                           ; $6c66: $17
    jr jr_07f_6c82                                ; $6c67: $18 $19

    dec bc                                        ; $6c69: $0b
    ld a, [de]                                    ; $6c6a: $1a
    dec de                                        ; $6c6b: $1b
    inc e                                         ; $6c6c: $1c
    ld c, $1d                                     ; $6c6d: $0e $1d
    ld e, $1f                                     ; $6c6f: $1e $1f
    ld de, $0303                                  ; $6c71: $11 $03 $03
    inc bc                                        ; $6c74: $03
    inc bc                                        ; $6c75: $03
    inc bc                                        ; $6c76: $03
    inc bc                                        ; $6c77: $03
    inc bc                                        ; $6c78: $03
    rlca                                          ; $6c79: $07
    inc bc                                        ; $6c7a: $03
    inc bc                                        ; $6c7b: $03
    rlca                                          ; $6c7c: $07
    rlca                                          ; $6c7d: $07
    rlca                                          ; $6c7e: $07
    inc bc                                        ; $6c7f: $03
    inc bc                                        ; $6c80: $03
    inc bc                                        ; $6c81: $03

jr_07f_6c82:
    jp nc, Jump_000_3130                          ; $6c82: $d2 $30 $31

    ld [hl-], a                                   ; $6c85: $32
    jp nc, Jump_000_3433                          ; $6c86: $d2 $33 $34

    dec c                                         ; $6c89: $0d
    jp nc, Jump_000_3635                          ; $6c8a: $d2 $35 $36

    db $10                                        ; $6c8d: $10
    jp nc, $3837                                  ; $6c8e: $d2 $37 $38

    inc de                                        ; $6c91: $13
    add b                                         ; $6c92: $80
    inc bc                                        ; $6c93: $03
    inc bc                                        ; $6c94: $03
    inc bc                                        ; $6c95: $03
    add b                                         ; $6c96: $80
    inc b                                         ; $6c97: $04
    inc b                                         ; $6c98: $04
    rlca                                          ; $6c99: $07
    add b                                         ; $6c9a: $80
    inc b                                         ; $6c9b: $04
    inc b                                         ; $6c9c: $04
    inc bc                                        ; $6c9d: $03
    add b                                         ; $6c9e: $80
    inc b                                         ; $6c9f: $04
    inc b                                         ; $6ca0: $04
    inc bc                                        ; $6ca1: $03
    add hl, sp                                    ; $6ca2: $39
    ld a, [hl-]                                   ; $6ca3: $3a
    dec sp                                        ; $6ca4: $3b
    jr nc, @+$19                                  ; $6ca5: $30 $17

    jr jr_07f_6cc2                                ; $6ca7: $18 $19

    dec bc                                        ; $6ca9: $0b
    ld a, [de]                                    ; $6caa: $1a
    dec de                                        ; $6cab: $1b
    inc e                                         ; $6cac: $1c
    ld c, $1d                                     ; $6cad: $0e $1d
    ld e, $1f                                     ; $6caf: $1e $1f
    ld de, $0606                                  ; $6cb1: $11 $06 $06
    inc bc                                        ; $6cb4: $03
    rlca                                          ; $6cb5: $07
    inc bc                                        ; $6cb6: $03
    inc bc                                        ; $6cb7: $03
    ld b, $03                                     ; $6cb8: $06 $03
    inc bc                                        ; $6cba: $03
    rlca                                          ; $6cbb: $07
    inc bc                                        ; $6cbc: $03
    ld b, $07                                     ; $6cbd: $06 $07
    inc bc                                        ; $6cbf: $03
    ld b, $06                                     ; $6cc0: $06 $06

jr_07f_6cc2:
    ld sp, $3932                                  ; $6cc2: $31 $32 $39
    ld a, [hl-]                                   ; $6cc5: $3a
    inc c                                         ; $6cc6: $0c
    dec c                                         ; $6cc7: $0d
    rla                                           ; $6cc8: $17
    jr @+$11                                      ; $6cc9: $18 $0f

    db $10                                        ; $6ccb: $10
    ld a, [de]                                    ; $6ccc: $1a
    dec de                                        ; $6ccd: $1b
    ld [de], a                                    ; $6cce: $12
    inc de                                        ; $6ccf: $13
    dec e                                         ; $6cd0: $1d
    ld e, $03                                     ; $6cd1: $1e $03
    ld b, $03                                     ; $6cd3: $06 $03
    inc bc                                        ; $6cd5: $03
    ld b, $03                                     ; $6cd6: $06 $03
    inc bc                                        ; $6cd8: $03
    ld b, $07                                     ; $6cd9: $06 $07
    inc bc                                        ; $6cdb: $03
    ld b, $06                                     ; $6cdc: $06 $06
    inc bc                                        ; $6cde: $03
    rlca                                          ; $6cdf: $07
    inc bc                                        ; $6ce0: $03
    rlca                                          ; $6ce1: $07
    jp nc, Jump_000_3d3c                          ; $6ce2: $d2 $3c $3d

    ld [hl-], a                                   ; $6ce5: $32
    jp nc, $3837                                  ; $6ce6: $d2 $37 $38

    dec c                                         ; $6ce9: $0d
    jp nc, Jump_000_3d3c                          ; $6cea: $d2 $3c $3d

    db $10                                        ; $6ced: $10
    jp nc, $3837                                  ; $6cee: $d2 $37 $38

    inc de                                        ; $6cf1: $13
    add b                                         ; $6cf2: $80
    inc b                                         ; $6cf3: $04
    inc b                                         ; $6cf4: $04
    rlca                                          ; $6cf5: $07
    add b                                         ; $6cf6: $80
    inc b                                         ; $6cf7: $04
    inc b                                         ; $6cf8: $04
    inc bc                                        ; $6cf9: $03
    add b                                         ; $6cfa: $80
    inc b                                         ; $6cfb: $04
    inc b                                         ; $6cfc: $04
    rlca                                          ; $6cfd: $07
    add b                                         ; $6cfe: $80
    inc b                                         ; $6cff: $04
    inc b                                         ; $6d00: $04
    inc bc                                        ; $6d01: $03
    add hl, sp                                    ; $6d02: $39
    ld a, [hl-]                                   ; $6d03: $3a
    dec sp                                        ; $6d04: $3b
    jr nc, @+$19                                  ; $6d05: $30 $17

    jr jr_07f_6d22                                ; $6d07: $18 $19

    dec bc                                        ; $6d09: $0b
    ld a, [de]                                    ; $6d0a: $1a
    dec de                                        ; $6d0b: $1b
    inc e                                         ; $6d0c: $1c
    ld c, $1d                                     ; $6d0d: $0e $1d
    ld e, $1f                                     ; $6d0f: $1e $1f
    ld de, $0603                                  ; $6d11: $11 $03 $06
    ld b, $03                                     ; $6d14: $06 $03
    rlca                                          ; $6d16: $07
    inc bc                                        ; $6d17: $03
    inc bc                                        ; $6d18: $03
    inc bc                                        ; $6d19: $03
    inc bc                                        ; $6d1a: $03
    inc bc                                        ; $6d1b: $03
    inc bc                                        ; $6d1c: $03
    ld b, $06                                     ; $6d1d: $06 $06
    ld b, $03                                     ; $6d1f: $06 $03
    rlca                                          ; $6d21: $07

jr_07f_6d22:
    ld sp, $3932                                  ; $6d22: $31 $32 $39
    ld a, [hl-]                                   ; $6d25: $3a
    inc c                                         ; $6d26: $0c
    dec c                                         ; $6d27: $0d
    rla                                           ; $6d28: $17
    jr jr_07f_6d3a                                ; $6d29: $18 $0f

    db $10                                        ; $6d2b: $10
    ld a, [de]                                    ; $6d2c: $1a
    dec de                                        ; $6d2d: $1b
    ld [de], a                                    ; $6d2e: $12
    inc de                                        ; $6d2f: $13
    dec e                                         ; $6d30: $1d
    ld e, $07                                     ; $6d31: $1e $07
    inc bc                                        ; $6d33: $03
    rlca                                          ; $6d34: $07
    inc bc                                        ; $6d35: $03
    ld b, $06                                     ; $6d36: $06 $06
    inc bc                                        ; $6d38: $03
    inc bc                                        ; $6d39: $03

jr_07f_6d3a:
    inc bc                                        ; $6d3a: $03
    inc bc                                        ; $6d3b: $03
    rlca                                          ; $6d3c: $07
    rlca                                          ; $6d3d: $07
    inc bc                                        ; $6d3e: $03
    ld b, $06                                     ; $6d3f: $06 $06
    ld b, $d2                                     ; $6d41: $06 $d2
    inc a                                         ; $6d43: $3c
    dec a                                         ; $6d44: $3d
    ld [hl-], a                                   ; $6d45: $32
    jp nc, Jump_000_3f3e                          ; $6d46: $d2 $3e $3f

    dec c                                         ; $6d49: $0d
    jp nc, Jump_07f_4140                          ; $6d4a: $d2 $40 $41

    db $10                                        ; $6d4d: $10
    jp nc, Jump_000_1211                          ; $6d4e: $d2 $11 $12

    inc de                                        ; $6d51: $13
    add b                                         ; $6d52: $80
    inc b                                         ; $6d53: $04
    inc b                                         ; $6d54: $04
    inc bc                                        ; $6d55: $03
    add b                                         ; $6d56: $80
    inc b                                         ; $6d57: $04
    inc b                                         ; $6d58: $04
    inc bc                                        ; $6d59: $03
    add b                                         ; $6d5a: $80
    inc b                                         ; $6d5b: $04
    inc b                                         ; $6d5c: $04
    rlca                                          ; $6d5d: $07
    add b                                         ; $6d5e: $80
    inc bc                                        ; $6d5f: $03
    inc bc                                        ; $6d60: $03
    inc bc                                        ; $6d61: $03
    add hl, sp                                    ; $6d62: $39
    ld a, [hl-]                                   ; $6d63: $3a
    dec sp                                        ; $6d64: $3b
    jr nc, jr_07f_6d7e                            ; $6d65: $30 $17

    jr @+$1b                                      ; $6d67: $18 $19

    dec bc                                        ; $6d69: $0b
    ld a, [de]                                    ; $6d6a: $1a
    dec de                                        ; $6d6b: $1b
    inc e                                         ; $6d6c: $1c
    ld c, $1d                                     ; $6d6d: $0e $1d
    ld e, $1f                                     ; $6d6f: $1e $1f
    ld de, $0706                                  ; $6d71: $11 $06 $07
    inc bc                                        ; $6d74: $03
    ld b, $03                                     ; $6d75: $06 $03
    inc bc                                        ; $6d77: $03
    inc bc                                        ; $6d78: $03
    inc bc                                        ; $6d79: $03
    inc bc                                        ; $6d7a: $03
    ld b, $03                                     ; $6d7b: $06 $03
    rlca                                          ; $6d7d: $07

jr_07f_6d7e:
    ld b, $03                                     ; $6d7e: $06 $03
    inc bc                                        ; $6d80: $03
    ld b, $31                                     ; $6d81: $06 $31
    ld [hl-], a                                   ; $6d83: $32
    add hl, sp                                    ; $6d84: $39
    ld a, [hl-]                                   ; $6d85: $3a
    inc c                                         ; $6d86: $0c
    dec c                                         ; $6d87: $0d
    rla                                           ; $6d88: $17
    jr @+$11                                      ; $6d89: $18 $0f

    db $10                                        ; $6d8b: $10
    ld a, [de]                                    ; $6d8c: $1a
    dec de                                        ; $6d8d: $1b
    ld [de], a                                    ; $6d8e: $12
    inc de                                        ; $6d8f: $13
    dec e                                         ; $6d90: $1d
    ld e, $06                                     ; $6d91: $1e $06
    inc bc                                        ; $6d93: $03
    rlca                                          ; $6d94: $07
    inc bc                                        ; $6d95: $03
    inc bc                                        ; $6d96: $03
    ld b, $03                                     ; $6d97: $06 $03
    ld b, $06                                     ; $6d99: $06 $06
    ld b, $03                                     ; $6d9b: $06 $03
    inc bc                                        ; $6d9d: $03
    inc bc                                        ; $6d9e: $03
    rlca                                          ; $6d9f: $07
    inc bc                                        ; $6da0: $03
    inc bc                                        ; $6da1: $03
    ld b, d                                       ; $6da2: $42
    ld b, e                                       ; $6da3: $43
    ld b, e                                       ; $6da4: $43
    ld b, e                                       ; $6da5: $43
    pop de                                        ; $6da6: $d1
    pop de                                        ; $6da7: $d1
    pop de                                        ; $6da8: $d1
    pop de                                        ; $6da9: $d1
    ld b, h                                       ; $6daa: $44
    ld b, e                                       ; $6dab: $43
    ld b, e                                       ; $6dac: $43
    ld b, e                                       ; $6dad: $43
    jp nc, Jump_07f_4645                          ; $6dae: $d2 $45 $46

    ld b, l                                       ; $6db1: $45
    add b                                         ; $6db2: $80
    add b                                         ; $6db3: $80
    add b                                         ; $6db4: $80
    add b                                         ; $6db5: $80
    add b                                         ; $6db6: $80
    add b                                         ; $6db7: $80
    add b                                         ; $6db8: $80
    add b                                         ; $6db9: $80
    add b                                         ; $6dba: $80
    add b                                         ; $6dbb: $80
    add b                                         ; $6dbc: $80
    add b                                         ; $6dbd: $80
    add b                                         ; $6dbe: $80
    ld [bc], a                                    ; $6dbf: $02
    ld [bc], a                                    ; $6dc0: $02
    ld [bc], a                                    ; $6dc1: $02
    ld b, e                                       ; $6dc2: $43
    ld b, e                                       ; $6dc3: $43
    ld b, a                                       ; $6dc4: $47
    jr nc, @-$2d                                  ; $6dc5: $30 $d1

    pop de                                        ; $6dc7: $d1
    jp nc, $430b                                  ; $6dc8: $d2 $0b $43

    ld b, e                                       ; $6dcb: $43
    ld c, b                                       ; $6dcc: $48
    ld c, $46                                     ; $6dcd: $0e $46
    ld c, c                                       ; $6dcf: $49
    ld c, d                                       ; $6dd0: $4a
    ld de, $8080                                  ; $6dd1: $11 $80 $80
    add b                                         ; $6dd4: $80
    ld b, $80                                     ; $6dd5: $06 $80
    add b                                         ; $6dd7: $80
    add b                                         ; $6dd8: $80
    inc bc                                        ; $6dd9: $03
    add b                                         ; $6dda: $80
    add b                                         ; $6ddb: $80
    add b                                         ; $6ddc: $80
    inc bc                                        ; $6ddd: $03
    ld [bc], a                                    ; $6dde: $02
    ld [bc], a                                    ; $6ddf: $02
    ld [bc], a                                    ; $6de0: $02
    inc bc                                        ; $6de1: $03
    ld sp, $3932                                  ; $6de2: $31 $32 $39
    ld a, [hl-]                                   ; $6de5: $3a
    inc c                                         ; $6de6: $0c
    dec c                                         ; $6de7: $0d
    rla                                           ; $6de8: $17
    jr @+$11                                      ; $6de9: $18 $0f

    db $10                                        ; $6deb: $10
    ld a, [de]                                    ; $6dec: $1a
    dec de                                        ; $6ded: $1b
    ld [de], a                                    ; $6dee: $12
    inc de                                        ; $6def: $13
    dec e                                         ; $6df0: $1d
    ld e, $03                                     ; $6df1: $1e $03
    inc bc                                        ; $6df3: $03
    inc bc                                        ; $6df4: $03
    inc bc                                        ; $6df5: $03
    inc bc                                        ; $6df6: $03
    inc bc                                        ; $6df7: $03
    inc bc                                        ; $6df8: $03
    ld b, $07                                     ; $6df9: $06 $07
    inc bc                                        ; $6dfb: $03
    ld b, $03                                     ; $6dfc: $06 $03
    inc bc                                        ; $6dfe: $03
    rlca                                          ; $6dff: $07
    inc bc                                        ; $6e00: $03
    inc bc                                        ; $6e01: $03
    dec sp                                        ; $6e02: $3b
    jr nc, @+$33                                  ; $6e03: $30 $31

    ld [hl-], a                                   ; $6e05: $32
    add hl, de                                    ; $6e06: $19
    dec bc                                        ; $6e07: $0b
    inc c                                         ; $6e08: $0c
    dec c                                         ; $6e09: $0d
    inc e                                         ; $6e0a: $1c
    ld c, $0f                                     ; $6e0b: $0e $0f
    ld c, e                                       ; $6e0d: $4b
    rra                                           ; $6e0e: $1f
    ld c, h                                       ; $6e0f: $4c
    ld c, l                                       ; $6e10: $4d
    ld c, [hl]                                    ; $6e11: $4e
    ld b, $03                                     ; $6e12: $06 $03
    ld b, $03                                     ; $6e14: $06 $03
    inc bc                                        ; $6e16: $03
    rlca                                          ; $6e17: $07
    rlca                                          ; $6e18: $07
    inc bc                                        ; $6e19: $03
    ld b, $03                                     ; $6e1a: $06 $03
    ld b, $03                                     ; $6e1c: $06 $03
    inc bc                                        ; $6e1e: $03
    inc bc                                        ; $6e1f: $03
    add h                                         ; $6e20: $84
    add h                                         ; $6e21: $84
    add hl, sp                                    ; $6e22: $39
    ld a, [hl-]                                   ; $6e23: $3a
    dec sp                                        ; $6e24: $3b
    jr nc, jr_07f_6e3e                            ; $6e25: $30 $17

    jr jr_07f_6e42                                ; $6e27: $18 $19

    dec bc                                        ; $6e29: $0b
    ld c, a                                       ; $6e2a: $4f
    dec de                                        ; $6e2b: $1b
    inc e                                         ; $6e2c: $1c
    ld c, $50                                     ; $6e2d: $0e $50
    ld c, l                                       ; $6e2f: $4d
    rra                                           ; $6e30: $1f
    ld de, $0306                                  ; $6e31: $11 $06 $03
    rlca                                          ; $6e34: $07
    ld b, $07                                     ; $6e35: $06 $07
    inc bc                                        ; $6e37: $03
    inc bc                                        ; $6e38: $03
    ld b, $06                                     ; $6e39: $06 $06
    rlca                                          ; $6e3b: $07
    rlca                                          ; $6e3c: $07
    inc bc                                        ; $6e3d: $03

jr_07f_6e3e:
    add h                                         ; $6e3e: $84
    and h                                         ; $6e3f: $a4
    inc bc                                        ; $6e40: $03
    inc bc                                        ; $6e41: $03

jr_07f_6e42:
    ld sp, $3932                                  ; $6e42: $31 $32 $39
    ld a, [hl-]                                   ; $6e45: $3a
    inc c                                         ; $6e46: $0c
    dec c                                         ; $6e47: $0d
    rla                                           ; $6e48: $17
    jr jr_07f_6e5a                                ; $6e49: $18 $0f

    db $10                                        ; $6e4b: $10
    ld a, [de]                                    ; $6e4c: $1a
    dec de                                        ; $6e4d: $1b
    ld [de], a                                    ; $6e4e: $12
    inc de                                        ; $6e4f: $13
    dec e                                         ; $6e50: $1d
    ld e, $06                                     ; $6e51: $1e $06
    inc bc                                        ; $6e53: $03
    ld b, $07                                     ; $6e54: $06 $07
    ld b, $03                                     ; $6e56: $06 $03
    inc bc                                        ; $6e58: $03
    inc bc                                        ; $6e59: $03

jr_07f_6e5a:
    ld b, $06                                     ; $6e5a: $06 $06
    rlca                                          ; $6e5c: $07
    ld b, $07                                     ; $6e5d: $06 $07
    inc bc                                        ; $6e5f: $03
    rlca                                          ; $6e60: $07
    ld b, $3b                                     ; $6e61: $06 $3b
    jr nc, jr_07f_6e96                            ; $6e63: $30 $31

    ld [hl-], a                                   ; $6e65: $32
    add hl, de                                    ; $6e66: $19
    dec bc                                        ; $6e67: $0b
    inc c                                         ; $6e68: $0c
    dec c                                         ; $6e69: $0d
    inc e                                         ; $6e6a: $1c
    ld c, $0f                                     ; $6e6b: $0e $0f

Jump_07f_6e6d:
    db $10                                        ; $6e6d: $10
    rra                                           ; $6e6e: $1f
    ld de, $1312                                  ; $6e6f: $11 $12 $13
    inc bc                                        ; $6e72: $03
    ld b, $03                                     ; $6e73: $06 $03
    rlca                                          ; $6e75: $07
    ld b, $03                                     ; $6e76: $06 $03
    rlca                                          ; $6e78: $07
    inc bc                                        ; $6e79: $03
    ld b, $07                                     ; $6e7a: $06 $07
    inc bc                                        ; $6e7c: $03
    inc bc                                        ; $6e7d: $03
    inc bc                                        ; $6e7e: $03
    inc bc                                        ; $6e7f: $03
    ld b, $06                                     ; $6e80: $06 $06
    dec sp                                        ; $6e82: $3b
    ld d, c                                       ; $6e83: $51
    ld d, d                                       ; $6e84: $52
    ld d, e                                       ; $6e85: $53
    ld d, h                                       ; $6e86: $54
    ld d, l                                       ; $6e87: $55
    ld d, [hl]                                    ; $6e88: $56
    ld d, a                                       ; $6e89: $57
    ld e, b                                       ; $6e8a: $58
    ld e, c                                       ; $6e8b: $59
    ld e, d                                       ; $6e8c: $5a
    ld e, e                                       ; $6e8d: $5b
    ld e, h                                       ; $6e8e: $5c
    ld e, l                                       ; $6e8f: $5d
    ld e, [hl]                                    ; $6e90: $5e
    ld e, a                                       ; $6e91: $5f
    rlca                                          ; $6e92: $07
    add h                                         ; $6e93: $84
    add h                                         ; $6e94: $84
    add h                                         ; $6e95: $84

jr_07f_6e96:
    inc bc                                        ; $6e96: $03
    inc b                                         ; $6e97: $04
    inc b                                         ; $6e98: $04
    inc b                                         ; $6e99: $04
    inc bc                                        ; $6e9a: $03
    inc b                                         ; $6e9b: $04
    inc b                                         ; $6e9c: $04
    inc b                                         ; $6e9d: $04
    inc bc                                        ; $6e9e: $03
    inc b                                         ; $6e9f: $04
    inc b                                         ; $6ea0: $04
    inc b                                         ; $6ea1: $04
    ld h, b                                       ; $6ea2: $60
    ld h, c                                       ; $6ea3: $61
    ld h, d                                       ; $6ea4: $62
    jr nc, jr_07f_6f0a                            ; $6ea5: $30 $63

    ld h, h                                       ; $6ea7: $64
    ld h, l                                       ; $6ea8: $65
    ld h, [hl]                                    ; $6ea9: $66
    ld h, a                                       ; $6eaa: $67
    ld l, b                                       ; $6eab: $68
    ld l, c                                       ; $6eac: $69
    ld l, d                                       ; $6ead: $6a
    ld l, e                                       ; $6eae: $6b
    ld l, h                                       ; $6eaf: $6c
    ld l, l                                       ; $6eb0: $6d
    ld l, [hl]                                    ; $6eb1: $6e
    add h                                         ; $6eb2: $84
    add h                                         ; $6eb3: $84
    add h                                         ; $6eb4: $84
    ld b, $04                                     ; $6eb5: $06 $04
    inc b                                         ; $6eb7: $04
    inc b                                         ; $6eb8: $04
    rlca                                          ; $6eb9: $07
    inc b                                         ; $6eba: $04
    inc b                                         ; $6ebb: $04
    inc b                                         ; $6ebc: $04
    inc bc                                        ; $6ebd: $03
    inc b                                         ; $6ebe: $04
    inc b                                         ; $6ebf: $04
    inc b                                         ; $6ec0: $04
    inc bc                                        ; $6ec1: $03
    ld sp, $3932                                  ; $6ec2: $31 $32 $39
    ld a, [hl-]                                   ; $6ec5: $3a
    inc c                                         ; $6ec6: $0c
    dec c                                         ; $6ec7: $0d
    rla                                           ; $6ec8: $17
    jr jr_07f_6eda                                ; $6ec9: $18 $0f

    db $10                                        ; $6ecb: $10
    ld a, [de]                                    ; $6ecc: $1a
    dec de                                        ; $6ecd: $1b
    ld [de], a                                    ; $6ece: $12
    inc de                                        ; $6ecf: $13
    dec e                                         ; $6ed0: $1d
    ld e, $03                                     ; $6ed1: $1e $03
    rlca                                          ; $6ed3: $07
    inc bc                                        ; $6ed4: $03
    ld b, $07                                     ; $6ed5: $06 $07
    inc bc                                        ; $6ed7: $03
    ld b, $06                                     ; $6ed8: $06 $06

jr_07f_6eda:
    inc bc                                        ; $6eda: $03
    ld b, $03                                     ; $6edb: $06 $03
    ld b, $06                                     ; $6edd: $06 $06
    inc bc                                        ; $6edf: $03
    rlca                                          ; $6ee0: $07
    inc bc                                        ; $6ee1: $03
    dec sp                                        ; $6ee2: $3b
    jr nc, jr_07f_6f16                            ; $6ee3: $30 $31

    ld [hl-], a                                   ; $6ee5: $32
    add hl, de                                    ; $6ee6: $19
    dec bc                                        ; $6ee7: $0b
    inc c                                         ; $6ee8: $0c
    dec c                                         ; $6ee9: $0d
    inc e                                         ; $6eea: $1c
    ld c, $0f                                     ; $6eeb: $0e $0f
    db $10                                        ; $6eed: $10
    rra                                           ; $6eee: $1f
    ld de, $1312                                  ; $6eef: $11 $12 $13
    ld b, $06                                     ; $6ef2: $06 $06
    rlca                                          ; $6ef4: $07
    inc bc                                        ; $6ef5: $03
    inc bc                                        ; $6ef6: $03
    rlca                                          ; $6ef7: $07
    inc bc                                        ; $6ef8: $03
    ld b, $06                                     ; $6ef9: $06 $06
    inc bc                                        ; $6efb: $03
    ld b, $06                                     ; $6efc: $06 $06
    ld b, $03                                     ; $6efe: $06 $03
    rlca                                          ; $6f00: $07
    inc bc                                        ; $6f01: $03
    dec sp                                        ; $6f02: $3b
    ld l, a                                       ; $6f03: $6f
    ld [hl], b                                    ; $6f04: $70
    ld [hl], c                                    ; $6f05: $71
    add hl, de                                    ; $6f06: $19
    dec bc                                        ; $6f07: $0b
    ld [hl], d                                    ; $6f08: $72
    ld [hl], e                                    ; $6f09: $73

jr_07f_6f0a:
    inc e                                         ; $6f0a: $1c
    ld c, $0f                                     ; $6f0b: $0e $0f
    db $10                                        ; $6f0d: $10
    rra                                           ; $6f0e: $1f
    ld de, $1312                                  ; $6f0f: $11 $12 $13
    inc bc                                        ; $6f12: $03
    inc bc                                        ; $6f13: $03
    inc b                                         ; $6f14: $04
    inc b                                         ; $6f15: $04

jr_07f_6f16:
    ld b, $03                                     ; $6f16: $06 $03
    inc bc                                        ; $6f18: $03
    rlca                                          ; $6f19: $07
    ld b, $03                                     ; $6f1a: $06 $03
    rlca                                          ; $6f1c: $07
    inc bc                                        ; $6f1d: $03
    inc bc                                        ; $6f1e: $03
    ld b, $06                                     ; $6f1f: $06 $06
    inc bc                                        ; $6f21: $03
    ld [hl], h                                    ; $6f22: $74
    ld [hl], l                                    ; $6f23: $75
    halt                                          ; $6f24: $76
    jr nc, jr_07f_6f9e                            ; $6f25: $30 $77

    ld a, b                                       ; $6f27: $78
    add hl, de                                    ; $6f28: $19
    dec bc                                        ; $6f29: $0b
    ld a, [de]                                    ; $6f2a: $1a
    dec de                                        ; $6f2b: $1b
    inc e                                         ; $6f2c: $1c
    ld c, $1d                                     ; $6f2d: $0e $1d
    ld e, $1f                                     ; $6f2f: $1e $1f
    ld de, $0404                                  ; $6f31: $11 $04 $04
    ld b, $03                                     ; $6f34: $06 $03
    inc bc                                        ; $6f36: $03
    rlca                                          ; $6f37: $07
    inc bc                                        ; $6f38: $03
    inc bc                                        ; $6f39: $03
    ld b, $06                                     ; $6f3a: $06 $06
    ld b, $06                                     ; $6f3c: $06 $06
    inc bc                                        ; $6f3e: $03
    rlca                                          ; $6f3f: $07
    inc bc                                        ; $6f40: $03
    rlca                                          ; $6f41: $07
    ld sp, $3932                                  ; $6f42: $31 $32 $39
    ld a, [hl-]                                   ; $6f45: $3a
    inc c                                         ; $6f46: $0c
    dec c                                         ; $6f47: $0d
    rla                                           ; $6f48: $17
    jr jr_07f_6f5a                                ; $6f49: $18 $0f

    db $10                                        ; $6f4b: $10
    ld a, [de]                                    ; $6f4c: $1a
    dec de                                        ; $6f4d: $1b
    ld [de], a                                    ; $6f4e: $12
    inc de                                        ; $6f4f: $13
    dec e                                         ; $6f50: $1d
    ld e, $07                                     ; $6f51: $1e $07
    inc bc                                        ; $6f53: $03
    ld b, $03                                     ; $6f54: $06 $03
    ld b, $07                                     ; $6f56: $06 $07
    inc bc                                        ; $6f58: $03
    inc bc                                        ; $6f59: $03

jr_07f_6f5a:
    inc bc                                        ; $6f5a: $03
    ld b, $06                                     ; $6f5b: $06 $06
    inc bc                                        ; $6f5d: $03
    inc bc                                        ; $6f5e: $03
    ld b, $03                                     ; $6f5f: $06 $03
    ld b, $3b                                     ; $6f61: $06 $3b
    jr nc, jr_07f_6f96                            ; $6f63: $30 $31

    ld [hl-], a                                   ; $6f65: $32
    add hl, de                                    ; $6f66: $19
    dec bc                                        ; $6f67: $0b
    inc c                                         ; $6f68: $0c
    dec c                                         ; $6f69: $0d
    inc e                                         ; $6f6a: $1c
    ld c, $0f                                     ; $6f6b: $0e $0f
    db $10                                        ; $6f6d: $10
    rra                                           ; $6f6e: $1f
    ld de, $1312                                  ; $6f6f: $11 $12 $13
    ld b, $07                                     ; $6f72: $06 $07
    inc bc                                        ; $6f74: $03
    ld b, $07                                     ; $6f75: $06 $07
    inc bc                                        ; $6f77: $03
    ld b, $03                                     ; $6f78: $06 $03
    inc bc                                        ; $6f7a: $03
    ld b, $07                                     ; $6f7b: $06 $07
    inc bc                                        ; $6f7d: $03
    rlca                                          ; $6f7e: $07
    inc bc                                        ; $6f7f: $03
    ld b, $03                                     ; $6f80: $06 $03
    dec sp                                        ; $6f82: $3b
    ld b, h                                       ; $6f83: $44
    ld b, e                                       ; $6f84: $43
    ld b, e                                       ; $6f85: $43
    add hl, de                                    ; $6f86: $19
    jp nc, $d1d1                                  ; $6f87: $d2 $d1 $d1

    inc e                                         ; $6f8a: $1c
    jp nc, $d1d1                                  ; $6f8b: $d2 $d1 $d1

    rra                                           ; $6f8e: $1f
    jp nc, $d1d1                                  ; $6f8f: $d2 $d1 $d1

    inc bc                                        ; $6f92: $03
    add b                                         ; $6f93: $80
    add b                                         ; $6f94: $80
    add b                                         ; $6f95: $80

jr_07f_6f96:
    inc bc                                        ; $6f96: $03
    add b                                         ; $6f97: $80
    add b                                         ; $6f98: $80
    add b                                         ; $6f99: $80
    inc bc                                        ; $6f9a: $03
    add b                                         ; $6f9b: $80
    add b                                         ; $6f9c: $80
    add b                                         ; $6f9d: $80

jr_07f_6f9e:
    rlca                                          ; $6f9e: $07
    add b                                         ; $6f9f: $80
    add b                                         ; $6fa0: $80
    add b                                         ; $6fa1: $80
    ld b, e                                       ; $6fa2: $43
    ld b, e                                       ; $6fa3: $43
    ld b, e                                       ; $6fa4: $43
    ld b, e                                       ; $6fa5: $43
    pop de                                        ; $6fa6: $d1
    pop de                                        ; $6fa7: $d1
    pop de                                        ; $6fa8: $d1
    pop de                                        ; $6fa9: $d1
    pop de                                        ; $6faa: $d1
    pop de                                        ; $6fab: $d1
    pop de                                        ; $6fac: $d1
    pop de                                        ; $6fad: $d1
    pop de                                        ; $6fae: $d1
    pop de                                        ; $6faf: $d1
    pop de                                        ; $6fb0: $d1
    pop de                                        ; $6fb1: $d1
    add b                                         ; $6fb2: $80
    add b                                         ; $6fb3: $80
    add b                                         ; $6fb4: $80
    add b                                         ; $6fb5: $80
    add b                                         ; $6fb6: $80
    add b                                         ; $6fb7: $80
    add b                                         ; $6fb8: $80
    add b                                         ; $6fb9: $80
    add b                                         ; $6fba: $80
    add b                                         ; $6fbb: $80
    add b                                         ; $6fbc: $80
    add b                                         ; $6fbd: $80
    add b                                         ; $6fbe: $80
    add b                                         ; $6fbf: $80
    add b                                         ; $6fc0: $80
    add b                                         ; $6fc1: $80
    add hl, sp                                    ; $6fc2: $39
    ld a, [hl-]                                   ; $6fc3: $3a
    dec sp                                        ; $6fc4: $3b
    jr nc, jr_07f_6fde                            ; $6fc5: $30 $17

    jr jr_07f_6ffd                                ; $6fc7: $18 $34

    inc sp                                        ; $6fc9: $33
    ld a, [de]                                    ; $6fca: $1a
    dec de                                        ; $6fcb: $1b
    ld [hl], $35                                  ; $6fcc: $36 $35
    dec e                                         ; $6fce: $1d
    ld e, $38                                     ; $6fcf: $1e $38

Jump_07f_6fd1:
    scf                                           ; $6fd1: $37
    inc bc                                        ; $6fd2: $03
    ld b, $03                                     ; $6fd3: $06 $03
    inc bc                                        ; $6fd5: $03
    ld b, $06                                     ; $6fd6: $06 $06
    inc h                                         ; $6fd8: $24
    inc h                                         ; $6fd9: $24
    ld b, $03                                     ; $6fda: $06 $03
    inc h                                         ; $6fdc: $24
    inc h                                         ; $6fdd: $24

jr_07f_6fde:
    inc bc                                        ; $6fde: $03
    rlca                                          ; $6fdf: $07
    inc h                                         ; $6fe0: $24
    inc h                                         ; $6fe1: $24
    add hl, sp                                    ; $6fe2: $39
    ld a, [hl-]                                   ; $6fe3: $3a
    dec a                                         ; $6fe4: $3d
    inc a                                         ; $6fe5: $3c
    rla                                           ; $6fe6: $17
    jr jr_07f_7021                                ; $6fe7: $18 $38

    scf                                           ; $6fe9: $37
    ld a, [de]                                    ; $6fea: $1a
    dec de                                        ; $6feb: $1b
    dec a                                         ; $6fec: $3d
    inc a                                         ; $6fed: $3c
    dec e                                         ; $6fee: $1d
    ld e, $38                                     ; $6fef: $1e $38
    scf                                           ; $6ff1: $37
    rlca                                          ; $6ff2: $07
    inc bc                                        ; $6ff3: $03
    inc h                                         ; $6ff4: $24
    inc h                                         ; $6ff5: $24
    ld b, $06                                     ; $6ff6: $06 $06
    inc h                                         ; $6ff8: $24
    inc h                                         ; $6ff9: $24
    inc bc                                        ; $6ffa: $03
    inc bc                                        ; $6ffb: $03
    inc h                                         ; $6ffc: $24

jr_07f_6ffd:
    inc h                                         ; $6ffd: $24
    ld b, $03                                     ; $6ffe: $06 $03
    inc h                                         ; $7000: $24
    inc h                                         ; $7001: $24
    add hl, sp                                    ; $7002: $39
    ld a, [hl-]                                   ; $7003: $3a
    dec a                                         ; $7004: $3d
    inc a                                         ; $7005: $3c
    rla                                           ; $7006: $17
    jr jr_07f_7048                                ; $7007: $18 $3f

    ld a, $1a                                     ; $7009: $3e $1a
    dec de                                        ; $700b: $1b
    ld b, c                                       ; $700c: $41
    ld b, b                                       ; $700d: $40
    dec e                                         ; $700e: $1d
    ld e, $1f                                     ; $700f: $1e $1f
    ld de, $0703                                  ; $7011: $11 $03 $07
    inc h                                         ; $7014: $24
    inc h                                         ; $7015: $24
    rlca                                          ; $7016: $07
    inc bc                                        ; $7017: $03
    inc h                                         ; $7018: $24
    inc h                                         ; $7019: $24
    ld b, $03                                     ; $701a: $06 $03
    inc h                                         ; $701c: $24
    inc h                                         ; $701d: $24
    rlca                                          ; $701e: $07
    inc bc                                        ; $701f: $03
    inc bc                                        ; $7020: $03

jr_07f_7021:
    inc bc                                        ; $7021: $03
    ld c, b                                       ; $7022: $48
    pop de                                        ; $7023: $d1
    pop de                                        ; $7024: $d1
    pop de                                        ; $7025: $d1
    pop de                                        ; $7026: $d1
    pop de                                        ; $7027: $d1
    pop de                                        ; $7028: $d1
    pop de                                        ; $7029: $d1
    pop de                                        ; $702a: $d1
    pop de                                        ; $702b: $d1
    pop de                                        ; $702c: $d1
    pop de                                        ; $702d: $d1
    pop de                                        ; $702e: $d1
    pop de                                        ; $702f: $d1
    pop de                                        ; $7030: $d1
    pop de                                        ; $7031: $d1
    add b                                         ; $7032: $80
    add b                                         ; $7033: $80
    add b                                         ; $7034: $80
    add b                                         ; $7035: $80
    add b                                         ; $7036: $80
    add b                                         ; $7037: $80
    add b                                         ; $7038: $80
    add b                                         ; $7039: $80
    add b                                         ; $703a: $80
    add b                                         ; $703b: $80
    add b                                         ; $703c: $80
    add b                                         ; $703d: $80
    add b                                         ; $703e: $80
    add b                                         ; $703f: $80
    add b                                         ; $7040: $80
    add b                                         ; $7041: $80
    ld a, c                                       ; $7042: $79
    ld a, d                                       ; $7043: $7a
    ld a, e                                       ; $7044: $7b
    ld a, d                                       ; $7045: $7a
    ld a, c                                       ; $7046: $79
    ld a, h                                       ; $7047: $7c

jr_07f_7048:
    ld a, l                                       ; $7048: $7d
    ld a, h                                       ; $7049: $7c
    ld a, c                                       ; $704a: $79
    ld a, [hl]                                    ; $704b: $7e
    ld a, a                                       ; $704c: $7f
    ld a, [hl]                                    ; $704d: $7e
    ld a, c                                       ; $704e: $79
    add b                                         ; $704f: $80
    add c                                         ; $7050: $81
    add b                                         ; $7051: $80
    add b                                         ; $7052: $80
    ld [bc], a                                    ; $7053: $02
    ld [bc], a                                    ; $7054: $02
    ld [bc], a                                    ; $7055: $02
    add b                                         ; $7056: $80
    ld [bc], a                                    ; $7057: $02
    ld [bc], a                                    ; $7058: $02
    ld [bc], a                                    ; $7059: $02
    add b                                         ; $705a: $80
    ld [bc], a                                    ; $705b: $02
    ld [bc], a                                    ; $705c: $02
    ld [bc], a                                    ; $705d: $02
    add b                                         ; $705e: $80
    ld a, [bc]                                    ; $705f: $0a
    ld a, [bc]                                    ; $7060: $0a
    ld a, [bc]                                    ; $7061: $0a
    ld a, e                                       ; $7062: $7b
    add d                                         ; $7063: $82
    add e                                         ; $7064: $83
    jr nc, jr_07f_70e4                            ; $7065: $30 $7d

    add h                                         ; $7067: $84
    add l                                         ; $7068: $85
    dec bc                                        ; $7069: $0b
    ld a, a                                       ; $706a: $7f
    add [hl]                                      ; $706b: $86
    add a                                         ; $706c: $87
    ld c, $81                                     ; $706d: $0e $81
    adc b                                         ; $706f: $88
    adc c                                         ; $7070: $89
    ld de, $0a02                                  ; $7071: $11 $02 $0a
    ld a, [bc]                                    ; $7074: $0a
    ld b, $02                                     ; $7075: $06 $02
    ld a, [bc]                                    ; $7077: $0a
    ld a, [bc]                                    ; $7078: $0a
    ld b, $02                                     ; $7079: $06 $02
    ld a, [bc]                                    ; $707b: $0a
    ld a, [bc]                                    ; $707c: $0a
    ld b, $0a                                     ; $707d: $06 $0a
    ld a, [bc]                                    ; $707f: $0a
    ld a, [bc]                                    ; $7080: $0a
    ld b, $31                                     ; $7081: $06 $31
    ld [hl-], a                                   ; $7083: $32
    add hl, sp                                    ; $7084: $39
    ld a, [hl-]                                   ; $7085: $3a
    inc c                                         ; $7086: $0c
    dec c                                         ; $7087: $0d
    rla                                           ; $7088: $17
    jr @+$11                                      ; $7089: $18 $0f

    db $10                                        ; $708b: $10
    ld a, [de]                                    ; $708c: $1a
    dec de                                        ; $708d: $1b
    ld [de], a                                    ; $708e: $12
    inc de                                        ; $708f: $13
    dec e                                         ; $7090: $1d
    ld e, $07                                     ; $7091: $1e $07
    inc bc                                        ; $7093: $03
    inc bc                                        ; $7094: $03
    inc bc                                        ; $7095: $03
    inc bc                                        ; $7096: $03
    inc bc                                        ; $7097: $03
    rlca                                          ; $7098: $07
    ld b, $07                                     ; $7099: $06 $07
    rlca                                          ; $709b: $07
    inc bc                                        ; $709c: $03
    rlca                                          ; $709d: $07
    inc bc                                        ; $709e: $03
    rlca                                          ; $709f: $07
    inc bc                                        ; $70a0: $03
    inc bc                                        ; $70a1: $03
    pop de                                        ; $70a2: $d1
    pop de                                        ; $70a3: $d1
    pop de                                        ; $70a4: $d1
    adc d                                         ; $70a5: $8a
    pop de                                        ; $70a6: $d1
    pop de                                        ; $70a7: $d1
    pop de                                        ; $70a8: $d1
    adc d                                         ; $70a9: $8a
    pop de                                        ; $70aa: $d1
    pop de                                        ; $70ab: $d1
    pop de                                        ; $70ac: $d1
    adc d                                         ; $70ad: $8a
    pop de                                        ; $70ae: $d1
    pop de                                        ; $70af: $d1
    pop de                                        ; $70b0: $d1
    pop de                                        ; $70b1: $d1
    add b                                         ; $70b2: $80
    add b                                         ; $70b3: $80
    add b                                         ; $70b4: $80
    adc b                                         ; $70b5: $88
    add b                                         ; $70b6: $80
    add b                                         ; $70b7: $80
    add b                                         ; $70b8: $80
    adc b                                         ; $70b9: $88
    add b                                         ; $70ba: $80
    add b                                         ; $70bb: $80
    add b                                         ; $70bc: $80
    adc b                                         ; $70bd: $88
    add b                                         ; $70be: $80
    add b                                         ; $70bf: $80
    add b                                         ; $70c0: $80
    add b                                         ; $70c1: $80
    ld a, c                                       ; $70c2: $79
    jr nc, jr_07f_70f6                            ; $70c3: $30 $31

    ld [hl-], a                                   ; $70c5: $32
    jp nc, Jump_000_0c0b                          ; $70c6: $d2 $0b $0c

    dec c                                         ; $70c9: $0d
    ld b, d                                       ; $70ca: $42
    ld b, e                                       ; $70cb: $43
    ld b, a                                       ; $70cc: $47
    db $10                                        ; $70cd: $10
    pop de                                        ; $70ce: $d1
    pop de                                        ; $70cf: $d1
    jp nc, $8013                                  ; $70d0: $d2 $13 $80

    ld b, $06                                     ; $70d3: $06 $06
    ld b, $80                                     ; $70d5: $06 $80
    ld b, $03                                     ; $70d7: $06 $03
    inc bc                                        ; $70d9: $03
    add b                                         ; $70da: $80
    add b                                         ; $70db: $80
    add b                                         ; $70dc: $80
    rlca                                          ; $70dd: $07
    add b                                         ; $70de: $80
    add b                                         ; $70df: $80
    add b                                         ; $70e0: $80
    rlca                                          ; $70e1: $07
    add hl, sp                                    ; $70e2: $39
    ld a, [hl-]                                   ; $70e3: $3a

jr_07f_70e4:
    dec sp                                        ; $70e4: $3b
    jr nc, jr_07f_70fe                            ; $70e5: $30 $17

    jr jr_07f_7102                                ; $70e7: $18 $19

    dec bc                                        ; $70e9: $0b
    ld a, [de]                                    ; $70ea: $1a
    dec de                                        ; $70eb: $1b
    inc e                                         ; $70ec: $1c
    ld c, $1d                                     ; $70ed: $0e $1d
    ld e, $1f                                     ; $70ef: $1e $1f
    ld de, $0606                                  ; $70f1: $11 $06 $06
    ld b, $06                                     ; $70f4: $06 $06

jr_07f_70f6:
    rlca                                          ; $70f6: $07
    ld b, $03                                     ; $70f7: $06 $03
    inc bc                                        ; $70f9: $03
    inc bc                                        ; $70fa: $03
    rlca                                          ; $70fb: $07
    inc bc                                        ; $70fc: $03
    inc bc                                        ; $70fd: $03

jr_07f_70fe:
    inc bc                                        ; $70fe: $03
    inc bc                                        ; $70ff: $03
    rlca                                          ; $7100: $07
    inc bc                                        ; $7101: $03

jr_07f_7102:
    ld sp, $3932                                  ; $7102: $31 $32 $39
    ld a, [hl-]                                   ; $7105: $3a
    inc c                                         ; $7106: $0c
    dec c                                         ; $7107: $0d
    rla                                           ; $7108: $17
    jr jr_07f_711a                                ; $7109: $18 $0f

    db $10                                        ; $710b: $10
    ld a, [de]                                    ; $710c: $1a
    dec de                                        ; $710d: $1b
    ld [de], a                                    ; $710e: $12
    inc de                                        ; $710f: $13
    dec e                                         ; $7110: $1d
    ld e, $07                                     ; $7111: $1e $07
    inc bc                                        ; $7113: $03
    inc bc                                        ; $7114: $03
    inc bc                                        ; $7115: $03
    inc bc                                        ; $7116: $03
    inc bc                                        ; $7117: $03
    inc bc                                        ; $7118: $03
    inc bc                                        ; $7119: $03

jr_07f_711a:
    inc bc                                        ; $711a: $03
    rlca                                          ; $711b: $07
    inc bc                                        ; $711c: $03
    rlca                                          ; $711d: $07
    inc bc                                        ; $711e: $03
    rlca                                          ; $711f: $07
    inc bc                                        ; $7120: $03
    inc bc                                        ; $7121: $03
    pop de                                        ; $7122: $d1
    pop de                                        ; $7123: $d1
    jp nc, $d132                                  ; $7124: $d2 $32 $d1

    pop de                                        ; $7127: $d1
    jp nc, $d10d                                  ; $7128: $d2 $0d $d1

    pop de                                        ; $712b: $d1
    jp nc, $d110                                  ; $712c: $d2 $10 $d1

    pop de                                        ; $712f: $d1
    ld b, d                                       ; $7130: $42
    ld b, e                                       ; $7131: $43
    add b                                         ; $7132: $80
    add b                                         ; $7133: $80
    add b                                         ; $7134: $80
    ld b, $80                                     ; $7135: $06 $80
    add b                                         ; $7137: $80
    add b                                         ; $7138: $80
    ld b, $80                                     ; $7139: $06 $80
    add b                                         ; $713b: $80
    add b                                         ; $713c: $80
    ld b, $80                                     ; $713d: $06 $80
    add b                                         ; $713f: $80
    add b                                         ; $7140: $80
    add b                                         ; $7141: $80
    add hl, sp                                    ; $7142: $39
    ld a, [hl-]                                   ; $7143: $3a
    dec sp                                        ; $7144: $3b
    jr nc, @+$19                                  ; $7145: $30 $17

    jr jr_07f_7162                                ; $7147: $18 $19

    dec bc                                        ; $7149: $0b
    ld a, [de]                                    ; $714a: $1a
    dec de                                        ; $714b: $1b
    inc e                                         ; $714c: $1c
    ld c, $43                                     ; $714d: $0e $43
    ld b, e                                       ; $714f: $43
    ld b, e                                       ; $7150: $43
    ld b, e                                       ; $7151: $43
    inc bc                                        ; $7152: $03
    inc bc                                        ; $7153: $03
    rlca                                          ; $7154: $07
    ld b, $07                                     ; $7155: $06 $07
    ld b, $03                                     ; $7157: $06 $03
    ld b, $03                                     ; $7159: $06 $03
    rlca                                          ; $715b: $07
    inc bc                                        ; $715c: $03
    ld b, $80                                     ; $715d: $06 $80
    add b                                         ; $715f: $80
    add b                                         ; $7160: $80
    add b                                         ; $7161: $80

jr_07f_7162:
    ld sp, $3932                                  ; $7162: $31 $32 $39
    ld a, [hl-]                                   ; $7165: $3a
    inc c                                         ; $7166: $0c
    dec c                                         ; $7167: $0d
    rla                                           ; $7168: $17
    jr @+$11                                      ; $7169: $18 $0f

    db $10                                        ; $716b: $10
    ld a, [de]                                    ; $716c: $1a
    dec de                                        ; $716d: $1b
    ld b, e                                       ; $716e: $43
    ld b, e                                       ; $716f: $43
    ld b, e                                       ; $7170: $43
    ld b, e                                       ; $7171: $43
    rlca                                          ; $7172: $07
    inc bc                                        ; $7173: $03
    inc bc                                        ; $7174: $03
    inc bc                                        ; $7175: $03
    inc bc                                        ; $7176: $03
    inc bc                                        ; $7177: $03
    rlca                                          ; $7178: $07
    ld b, $07                                     ; $7179: $06 $07
    rlca                                          ; $717b: $07
    inc bc                                        ; $717c: $03
    rlca                                          ; $717d: $07
    add b                                         ; $717e: $80
    add b                                         ; $717f: $80
    add b                                         ; $7180: $80
    add b                                         ; $7181: $80
    dec sp                                        ; $7182: $3b
    jp nc, $d1d1                                  ; $7183: $d2 $d1 $d1

    add hl, de                                    ; $7186: $19
    jp nc, $d1d1                                  ; $7187: $d2 $d1 $d1

    inc e                                         ; $718a: $1c
    jp nc, $d1d1                                  ; $718b: $d2 $d1 $d1

    rra                                           ; $718e: $1f
    jp nc, $d1d1                                  ; $718f: $d2 $d1 $d1

    rlca                                          ; $7192: $07
    add b                                         ; $7193: $80
    add b                                         ; $7194: $80
    add b                                         ; $7195: $80
    inc bc                                        ; $7196: $03
    add b                                         ; $7197: $80
    add b                                         ; $7198: $80
    add b                                         ; $7199: $80
    inc bc                                        ; $719a: $03
    add b                                         ; $719b: $80
    add b                                         ; $719c: $80
    add b                                         ; $719d: $80
    rlca                                          ; $719e: $07
    add b                                         ; $719f: $80
    add b                                         ; $71a0: $80
    add b                                         ; $71a1: $80
    dec sp                                        ; $71a2: $3b
    jp nc, $d1d1                                  ; $71a3: $d2 $d1 $d1

    add hl, de                                    ; $71a6: $19
    jp nc, $d1d1                                  ; $71a7: $d2 $d1 $d1

    inc e                                         ; $71aa: $1c
    jp nc, $d1d1                                  ; $71ab: $d2 $d1 $d1

    ld b, e                                       ; $71ae: $43
    ld c, b                                       ; $71af: $48
    pop de                                        ; $71b0: $d1
    pop de                                        ; $71b1: $d1
    rlca                                          ; $71b2: $07
    add b                                         ; $71b3: $80
    add b                                         ; $71b4: $80
    add b                                         ; $71b5: $80
    inc bc                                        ; $71b6: $03
    add b                                         ; $71b7: $80
    add b                                         ; $71b8: $80
    add b                                         ; $71b9: $80
    inc bc                                        ; $71ba: $03
    add b                                         ; $71bb: $80
    add b                                         ; $71bc: $80
    add b                                         ; $71bd: $80
    add b                                         ; $71be: $80
    add b                                         ; $71bf: $80
    add b                                         ; $71c0: $80
    add b                                         ; $71c1: $80
    rlca                                          ; $71c2: $07
    nop                                           ; $71c3: $00
    add hl, bc                                    ; $71c4: $09
    nop                                           ; $71c5: $00
    ld b, b                                       ; $71c6: $40
    rlca                                          ; $71c7: $07
    pop de                                        ; $71c8: $d1
    pop de                                        ; $71c9: $d1
    pop de                                        ; $71ca: $d1
    pop de                                        ; $71cb: $d1
    pop de                                        ; $71cc: $d1
    pop de                                        ; $71cd: $d1
    pop de                                        ; $71ce: $d1
    pop de                                        ; $71cf: $d1
    pop de                                        ; $71d0: $d1
    pop de                                        ; $71d1: $d1
    pop de                                        ; $71d2: $d1
    pop de                                        ; $71d3: $d1
    pop de                                        ; $71d4: $d1
    pop de                                        ; $71d5: $d1
    pop de                                        ; $71d6: $d1
    pop de                                        ; $71d7: $d1
    ld [bc], a                                    ; $71d8: $02
    ld [bc], a                                    ; $71d9: $02
    ld [bc], a                                    ; $71da: $02
    ld [bc], a                                    ; $71db: $02
    ld [bc], a                                    ; $71dc: $02
    ld [bc], a                                    ; $71dd: $02
    ld [bc], a                                    ; $71de: $02
    ld [bc], a                                    ; $71df: $02
    ld [bc], a                                    ; $71e0: $02
    ld [bc], a                                    ; $71e1: $02
    ld [bc], a                                    ; $71e2: $02
    ld [bc], a                                    ; $71e3: $02
    ld [bc], a                                    ; $71e4: $02
    ld [bc], a                                    ; $71e5: $02
    ld [bc], a                                    ; $71e6: $02
    ld [bc], a                                    ; $71e7: $02
    pop de                                        ; $71e8: $d1
    pop de                                        ; $71e9: $d1
    pop de                                        ; $71ea: $d1
    pop de                                        ; $71eb: $d1
    pop de                                        ; $71ec: $d1
    pop de                                        ; $71ed: $d1
    pop de                                        ; $71ee: $d1
    pop de                                        ; $71ef: $d1
    pop de                                        ; $71f0: $d1
    jp nc, $d4d3                                  ; $71f1: $d2 $d3 $d4

    push de                                       ; $71f4: $d5
    sub $d7                                       ; $71f5: $d6 $d7
    ret c                                         ; $71f7: $d8

    ld [bc], a                                    ; $71f8: $02
    ld [bc], a                                    ; $71f9: $02
    ld [bc], a                                    ; $71fa: $02
    ld [bc], a                                    ; $71fb: $02
    ld [bc], a                                    ; $71fc: $02
    ld [bc], a                                    ; $71fd: $02
    ld [bc], a                                    ; $71fe: $02
    ld [bc], a                                    ; $71ff: $02
    ld [bc], a                                    ; $7200: $02
    ld [bc], a                                    ; $7201: $02
    ld [bc], a                                    ; $7202: $02
    ld bc, $0202                                  ; $7203: $01 $02 $02
    ld [bc], a                                    ; $7206: $02
    ld bc, $d1d1                                  ; $7207: $01 $d1 $d1
    pop de                                        ; $720a: $d1
    pop de                                        ; $720b: $d1
    pop de                                        ; $720c: $d1
    pop de                                        ; $720d: $d1
    pop de                                        ; $720e: $d1
    pop de                                        ; $720f: $d1
    reti                                          ; $7210: $d9


    jp c, $dcdb                                   ; $7211: $da $db $dc

    db $dd                                        ; $7214: $dd
    sbc $df                                       ; $7215: $de $df
    ldh [rSC], a                                  ; $7217: $e0 $02
    ld [bc], a                                    ; $7219: $02
    ld [bc], a                                    ; $721a: $02
    ld [bc], a                                    ; $721b: $02
    ld [bc], a                                    ; $721c: $02
    ld [bc], a                                    ; $721d: $02
    ld [bc], a                                    ; $721e: $02
    ld [bc], a                                    ; $721f: $02
    ld bc, $0101                                  ; $7220: $01 $01 $01
    ld bc, $0101                                  ; $7223: $01 $01 $01
    ld bc, $d101                                  ; $7226: $01 $01 $d1
    pop de                                        ; $7229: $d1
    pop de                                        ; $722a: $d1
    pop de                                        ; $722b: $d1
    pop de                                        ; $722c: $d1
    pop de                                        ; $722d: $d1
    pop de                                        ; $722e: $d1
    pop de                                        ; $722f: $d1
    pop de                                        ; $7230: $d1
    pop de                                        ; $7231: $d1
    pop de                                        ; $7232: $d1
    pop de                                        ; $7233: $d1
    pop de                                        ; $7234: $d1
    pop de                                        ; $7235: $d1
    pop hl                                        ; $7236: $e1
    ld [c], a                                     ; $7237: $e2
    add d                                         ; $7238: $82
    add d                                         ; $7239: $82
    ld [bc], a                                    ; $723a: $02
    ld [bc], a                                    ; $723b: $02
    add d                                         ; $723c: $82
    add d                                         ; $723d: $82
    ld [bc], a                                    ; $723e: $02
    ld [bc], a                                    ; $723f: $02
    add d                                         ; $7240: $82
    add d                                         ; $7241: $82
    ld [bc], a                                    ; $7242: $02
    ld [bc], a                                    ; $7243: $02
    add d                                         ; $7244: $82
    add d                                         ; $7245: $82
    inc b                                         ; $7246: $04
    inc b                                         ; $7247: $04
    pop de                                        ; $7248: $d1
    pop de                                        ; $7249: $d1
    pop de                                        ; $724a: $d1
    db $e3                                        ; $724b: $e3
    pop de                                        ; $724c: $d1
    pop de                                        ; $724d: $d1
    db $e4                                        ; $724e: $e4
    push hl                                       ; $724f: $e5
    pop de                                        ; $7250: $d1
    and $e7                                       ; $7251: $e6 $e7
    add sp, -$17                                  ; $7253: $e8 $e9
    ld [$eceb], a                                 ; $7255: $ea $eb $ec
    ld [bc], a                                    ; $7258: $02
    ld [bc], a                                    ; $7259: $02
    ld [bc], a                                    ; $725a: $02
    ld [bc], a                                    ; $725b: $02
    ld [bc], a                                    ; $725c: $02
    ld [bc], a                                    ; $725d: $02
    ld [bc], a                                    ; $725e: $02
    ld [bc], a                                    ; $725f: $02
    ld [bc], a                                    ; $7260: $02
    ld [bc], a                                    ; $7261: $02
    ld [bc], a                                    ; $7262: $02
    ld [bc], a                                    ; $7263: $02
    inc b                                         ; $7264: $04
    ld [bc], a                                    ; $7265: $02
    ld [bc], a                                    ; $7266: $02
    ld [bc], a                                    ; $7267: $02
    db $ed                                        ; $7268: $ed
    xor $ef                                       ; $7269: $ee $ef
    ldh a, [$f1]                                  ; $726b: $f0 $f1
    ld a, [c]                                     ; $726d: $f2
    di                                            ; $726e: $f3
    db $f4                                        ; $726f: $f4
    push af                                       ; $7270: $f5
    or $f7                                        ; $7271: $f6 $f7
    ld hl, sp-$07                                 ; $7273: $f8 $f9
    ld a, [$fcfb]                                 ; $7275: $fa $fb $fc
    ld [bc], a                                    ; $7278: $02
    ld [bc], a                                    ; $7279: $02
    ld [bc], a                                    ; $727a: $02
    ld bc, $0202                                  ; $727b: $01 $02 $02
    ld [bc], a                                    ; $727e: $02
    ld bc, $0202                                  ; $727f: $01 $02 $02
    ld [bc], a                                    ; $7282: $02
    ld bc, $0202                                  ; $7283: $01 $02 $02
    ld [bc], a                                    ; $7286: $02
    inc bc                                        ; $7287: $03
    db $fd                                        ; $7288: $fd
    cp $ff                                        ; $7289: $fe $ff
    nop                                           ; $728b: $00
    ld bc, $0302                                  ; $728c: $01 $02 $03
    inc b                                         ; $728f: $04
    dec b                                         ; $7290: $05
    ld b, $07                                     ; $7291: $06 $07
    ld [$0a09], sp                                ; $7293: $08 $09 $0a
    dec bc                                        ; $7296: $0b
    inc c                                         ; $7297: $0c
    ld bc, $0101                                  ; $7298: $01 $01 $01
    ld bc, $0101                                  ; $729b: $01 $01 $01
    ld bc, $0101                                  ; $729e: $01 $01 $01
    ld bc, $0101                                  ; $72a1: $01 $01 $01
    inc bc                                        ; $72a4: $03
    inc bc                                        ; $72a5: $03
    inc bc                                        ; $72a6: $03
    inc bc                                        ; $72a7: $03
    pop de                                        ; $72a8: $d1
    pop de                                        ; $72a9: $d1
    dec c                                         ; $72aa: $0d
    ld c, $d1                                     ; $72ab: $0e $d1
    pop de                                        ; $72ad: $d1
    rrca                                          ; $72ae: $0f
    db $10                                        ; $72af: $10
    pop de                                        ; $72b0: $d1
    pop de                                        ; $72b1: $d1
    ld de, $d112                                  ; $72b2: $11 $12 $d1
    pop de                                        ; $72b5: $d1
    inc de                                        ; $72b6: $13
    inc d                                         ; $72b7: $14
    add d                                         ; $72b8: $82
    add d                                         ; $72b9: $82
    inc b                                         ; $72ba: $04
    inc b                                         ; $72bb: $04
    add d                                         ; $72bc: $82
    add d                                         ; $72bd: $82
    inc b                                         ; $72be: $04
    inc b                                         ; $72bf: $04
    add d                                         ; $72c0: $82
    add d                                         ; $72c1: $82
    inc b                                         ; $72c2: $04
    inc b                                         ; $72c3: $04
    add d                                         ; $72c4: $82
    add d                                         ; $72c5: $82
    inc b                                         ; $72c6: $04
    inc b                                         ; $72c7: $04
    dec d                                         ; $72c8: $15
    ld d, $17                                     ; $72c9: $16 $17
    jr jr_07f_72e6                                ; $72cb: $18 $19

    ld a, [de]                                    ; $72cd: $1a
    dec de                                        ; $72ce: $1b
    inc e                                         ; $72cf: $1c
    dec e                                         ; $72d0: $1d
    ld e, $1f                                     ; $72d1: $1e $1f
    ei                                            ; $72d3: $fb
    jr nz, @+$23                                  ; $72d4: $20 $21

    ei                                            ; $72d6: $fb
    ld [hl+], a                                   ; $72d7: $22
    inc b                                         ; $72d8: $04
    ld [bc], a                                    ; $72d9: $02
    ld [bc], a                                    ; $72da: $02
    ld [bc], a                                    ; $72db: $02
    inc b                                         ; $72dc: $04
    ld [bc], a                                    ; $72dd: $02
    ld [bc], a                                    ; $72de: $02
    ld [bc], a                                    ; $72df: $02
    inc b                                         ; $72e0: $04
    ld [bc], a                                    ; $72e1: $02
    ld [bc], a                                    ; $72e2: $02
    ld [bc], a                                    ; $72e3: $02
    inc b                                         ; $72e4: $04
    ld [bc], a                                    ; $72e5: $02

jr_07f_72e6:
    ld [bc], a                                    ; $72e6: $02
    inc bc                                        ; $72e7: $03
    inc hl                                        ; $72e8: $23
    ei                                            ; $72e9: $fb
    inc h                                         ; $72ea: $24
    dec h                                         ; $72eb: $25
    ld h, $27                                     ; $72ec: $26 $27
    jr z, jr_07f_7319                             ; $72ee: $28 $29

    ld a, [hl+]                                   ; $72f0: $2a
    dec hl                                        ; $72f1: $2b
    inc l                                         ; $72f2: $2c
    dec l                                         ; $72f3: $2d
    ld l, $2f                                     ; $72f4: $2e $2f
    jr nc, jr_07f_7329                            ; $72f6: $30 $31

    ld [bc], a                                    ; $72f8: $02
    ld [bc], a                                    ; $72f9: $02
    inc bc                                        ; $72fa: $03
    inc bc                                        ; $72fb: $03
    ld b, $06                                     ; $72fc: $06 $06
    ld b, $06                                     ; $72fe: $06 $06
    ld b, $06                                     ; $7300: $06 $06
    ld b, $06                                     ; $7302: $06 $06
    ld b, $06                                     ; $7304: $06 $06
    ld b, $06                                     ; $7306: $06 $06
    ld [hl-], a                                   ; $7308: $32
    inc sp                                        ; $7309: $33
    inc [hl]                                      ; $730a: $34
    dec [hl]                                      ; $730b: $35
    ld [hl], $37                                  ; $730c: $36 $37
    jr c, jr_07f_7349                             ; $730e: $38 $39

    ld a, [hl-]                                   ; $7310: $3a
    dec sp                                        ; $7311: $3b
    inc a                                         ; $7312: $3c
    dec a                                         ; $7313: $3d
    ld a, $3f                                     ; $7314: $3e $3f
    ld b, b                                       ; $7316: $40
    ld b, c                                       ; $7317: $41
    inc bc                                        ; $7318: $03

jr_07f_7319:
    inc bc                                        ; $7319: $03
    inc bc                                        ; $731a: $03
    inc bc                                        ; $731b: $03
    inc bc                                        ; $731c: $03
    inc bc                                        ; $731d: $03
    inc bc                                        ; $731e: $03
    inc bc                                        ; $731f: $03
    inc bc                                        ; $7320: $03
    inc bc                                        ; $7321: $03
    inc bc                                        ; $7322: $03
    inc bc                                        ; $7323: $03
    inc bc                                        ; $7324: $03
    inc bc                                        ; $7325: $03
    inc bc                                        ; $7326: $03
    inc bc                                        ; $7327: $03
    pop de                                        ; $7328: $d1

jr_07f_7329:
    pop de                                        ; $7329: $d1
    ld b, d                                       ; $732a: $42
    ld b, e                                       ; $732b: $43
    pop de                                        ; $732c: $d1
    pop de                                        ; $732d: $d1
    ld b, h                                       ; $732e: $44
    ld b, l                                       ; $732f: $45
    pop de                                        ; $7330: $d1
    pop de                                        ; $7331: $d1
    ld b, [hl]                                    ; $7332: $46
    ld b, a                                       ; $7333: $47
    pop de                                        ; $7334: $d1
    pop de                                        ; $7335: $d1
    ld c, b                                       ; $7336: $48
    ld c, c                                       ; $7337: $49
    add d                                         ; $7338: $82
    add d                                         ; $7339: $82
    inc b                                         ; $733a: $04
    inc b                                         ; $733b: $04
    add d                                         ; $733c: $82
    add d                                         ; $733d: $82
    inc b                                         ; $733e: $04
    inc b                                         ; $733f: $04
    add d                                         ; $7340: $82
    add d                                         ; $7341: $82
    rlca                                          ; $7342: $07
    rlca                                          ; $7343: $07
    add d                                         ; $7344: $82
    add d                                         ; $7345: $82
    rlca                                          ; $7346: $07
    inc bc                                        ; $7347: $03
    ld c, d                                       ; $7348: $4a

jr_07f_7349:
    ei                                            ; $7349: $fb
    ld c, e                                       ; $734a: $4b
    ld c, h                                       ; $734b: $4c
    ld c, l                                       ; $734c: $4d
    ld c, [hl]                                    ; $734d: $4e
    ld c, a                                       ; $734e: $4f
    ld d, b                                       ; $734f: $50
    ld d, c                                       ; $7350: $51
    ld d, d                                       ; $7351: $52
    ld d, e                                       ; $7352: $53
    ld d, h                                       ; $7353: $54
    ld d, l                                       ; $7354: $55
    ld d, [hl]                                    ; $7355: $56
    ld d, a                                       ; $7356: $57
    ld e, b                                       ; $7357: $58
    inc b                                         ; $7358: $04
    ld [bc], a                                    ; $7359: $02
    inc bc                                        ; $735a: $03
    inc bc                                        ; $735b: $03
    inc b                                         ; $735c: $04
    rlca                                          ; $735d: $07
    inc bc                                        ; $735e: $03
    inc bc                                        ; $735f: $03
    rlca                                          ; $7360: $07
    rlca                                          ; $7361: $07
    inc bc                                        ; $7362: $03
    inc bc                                        ; $7363: $03
    inc bc                                        ; $7364: $03
    inc bc                                        ; $7365: $03
    inc bc                                        ; $7366: $03
    inc bc                                        ; $7367: $03
    ld e, c                                       ; $7368: $59
    ld e, d                                       ; $7369: $5a
    ld e, e                                       ; $736a: $5b
    ld e, h                                       ; $736b: $5c
    ld e, l                                       ; $736c: $5d
    ld e, [hl]                                    ; $736d: $5e
    ld e, a                                       ; $736e: $5f
    ld h, b                                       ; $736f: $60
    ld h, c                                       ; $7370: $61
    ld h, d                                       ; $7371: $62
    ld h, e                                       ; $7372: $63
    ld h, h                                       ; $7373: $64
    ld h, l                                       ; $7374: $65
    ld h, [hl]                                    ; $7375: $66
    ld h, a                                       ; $7376: $67
    ld c, c                                       ; $7377: $49
    inc bc                                        ; $7378: $03
    inc bc                                        ; $7379: $03
    inc bc                                        ; $737a: $03
    inc bc                                        ; $737b: $03
    inc bc                                        ; $737c: $03
    inc bc                                        ; $737d: $03
    inc bc                                        ; $737e: $03
    inc bc                                        ; $737f: $03
    inc bc                                        ; $7380: $03
    inc bc                                        ; $7381: $03
    inc bc                                        ; $7382: $03
    inc bc                                        ; $7383: $03
    inc bc                                        ; $7384: $03
    inc bc                                        ; $7385: $03
    inc bc                                        ; $7386: $03
    inc bc                                        ; $7387: $03
    ld l, b                                       ; $7388: $68
    ld l, c                                       ; $7389: $69
    ld l, d                                       ; $738a: $6a
    ld c, h                                       ; $738b: $4c
    ld l, e                                       ; $738c: $6b
    ld l, h                                       ; $738d: $6c
    ld c, a                                       ; $738e: $4f
    ld d, b                                       ; $738f: $50
    ld l, l                                       ; $7390: $6d
    ld d, d                                       ; $7391: $52
    ld d, e                                       ; $7392: $53
    ld d, h                                       ; $7393: $54
    ld d, l                                       ; $7394: $55
    ld d, [hl]                                    ; $7395: $56
    ld d, a                                       ; $7396: $57
    ld e, b                                       ; $7397: $58
    inc bc                                        ; $7398: $03
    inc bc                                        ; $7399: $03
    inc bc                                        ; $739a: $03
    inc bc                                        ; $739b: $03
    inc bc                                        ; $739c: $03
    inc bc                                        ; $739d: $03
    inc bc                                        ; $739e: $03
    inc bc                                        ; $739f: $03
    inc bc                                        ; $73a0: $03
    inc bc                                        ; $73a1: $03
    inc bc                                        ; $73a2: $03
    inc bc                                        ; $73a3: $03
    inc bc                                        ; $73a4: $03
    inc bc                                        ; $73a5: $03
    inc bc                                        ; $73a6: $03
    inc bc                                        ; $73a7: $03
    pop de                                        ; $73a8: $d1
    pop de                                        ; $73a9: $d1
    pop de                                        ; $73aa: $d1
    pop de                                        ; $73ab: $d1
    pop de                                        ; $73ac: $d1
    pop de                                        ; $73ad: $d1
    pop de                                        ; $73ae: $d1
    pop de                                        ; $73af: $d1
    ld l, [hl]                                    ; $73b0: $6e
    db $d3                                        ; $73b1: $d3
    jp nc, Jump_07f_6fd1                          ; $73b2: $d2 $d1 $6f

    rst $10                                       ; $73b5: $d7
    sub $d5                                       ; $73b6: $d6 $d5
    ld [bc], a                                    ; $73b8: $02
    ld [bc], a                                    ; $73b9: $02
    ld [bc], a                                    ; $73ba: $02
    ld [bc], a                                    ; $73bb: $02
    ld [bc], a                                    ; $73bc: $02
    ld [bc], a                                    ; $73bd: $02
    ld [bc], a                                    ; $73be: $02
    ld [bc], a                                    ; $73bf: $02
    ld bc, $2222                                  ; $73c0: $01 $22 $22
    ld [bc], a                                    ; $73c3: $02
    ld bc, $2222                                  ; $73c4: $01 $22 $22
    ld [hl+], a                                   ; $73c7: $22
    ld [hl], b                                    ; $73c8: $70
    rst $28                                       ; $73c9: $ef
    xor $ed                                       ; $73ca: $ee $ed
    ld [hl], c                                    ; $73cc: $71
    di                                            ; $73cd: $f3
    ld a, [c]                                     ; $73ce: $f2
    pop af                                        ; $73cf: $f1
    ld [hl], d                                    ; $73d0: $72
    rst $30                                       ; $73d1: $f7
    or $f5                                        ; $73d2: $f6 $f5
    ld [hl], e                                    ; $73d4: $73
    ei                                            ; $73d5: $fb
    ld a, [$0174]                                 ; $73d6: $fa $74 $01
    ld [hl+], a                                   ; $73d9: $22
    ld [hl+], a                                   ; $73da: $22
    ld [hl+], a                                   ; $73db: $22
    ld bc, $2222                                  ; $73dc: $01 $22 $22
    ld [hl+], a                                   ; $73df: $22
    ld bc, $2222                                  ; $73e0: $01 $22 $22
    ld [hl+], a                                   ; $73e3: $22
    inc bc                                        ; $73e4: $03
    ld [hl+], a                                   ; $73e5: $22
    ld [hl+], a                                   ; $73e6: $22
    ld [bc], a                                    ; $73e7: $02
    db $e3                                        ; $73e8: $e3
    pop de                                        ; $73e9: $d1
    pop de                                        ; $73ea: $d1
    pop de                                        ; $73eb: $d1
    ld [hl], l                                    ; $73ec: $75
    halt                                          ; $73ed: $76
    pop de                                        ; $73ee: $d1
    pop de                                        ; $73ef: $d1
    ld [hl], a                                    ; $73f0: $77
    ld a, b                                       ; $73f1: $78
    ld a, c                                       ; $73f2: $79
    pop de                                        ; $73f3: $d1
    ld a, d                                       ; $73f4: $7a
    ld a, e                                       ; $73f5: $7b
    ld a, h                                       ; $73f6: $7c
    ld a, l                                       ; $73f7: $7d
    ld [hl+], a                                   ; $73f8: $22
    ld [bc], a                                    ; $73f9: $02
    ld [bc], a                                    ; $73fa: $02
    ld [bc], a                                    ; $73fb: $02
    ld [bc], a                                    ; $73fc: $02
    ld [bc], a                                    ; $73fd: $02
    ld [bc], a                                    ; $73fe: $02
    ld [bc], a                                    ; $73ff: $02
    ld [bc], a                                    ; $7400: $02
    ld [bc], a                                    ; $7401: $02
    ld [bc], a                                    ; $7402: $02
    ld [bc], a                                    ; $7403: $02
    ld [bc], a                                    ; $7404: $02
    ld [bc], a                                    ; $7405: $02
    ld [bc], a                                    ; $7406: $02
    ld [bc], a                                    ; $7407: $02
    ld a, [hl]                                    ; $7408: $7e
    ld a, a                                       ; $7409: $7f
    ei                                            ; $740a: $fb
    inc hl                                        ; $740b: $23
    add b                                         ; $740c: $80
    add c                                         ; $740d: $81
    add d                                         ; $740e: $82
    ei                                            ; $740f: $fb
    add e                                         ; $7410: $83
    add h                                         ; $7411: $84
    add l                                         ; $7412: $85
    add [hl]                                      ; $7413: $86
    add a                                         ; $7414: $87
    adc b                                         ; $7415: $88
    adc c                                         ; $7416: $89
    adc d                                         ; $7417: $8a
    inc bc                                        ; $7418: $03
    inc bc                                        ; $7419: $03
    ld [hl+], a                                   ; $741a: $22
    ld [hl+], a                                   ; $741b: $22
    dec bc                                        ; $741c: $0b
    dec bc                                        ; $741d: $0b
    dec bc                                        ; $741e: $0b
    ld [hl+], a                                   ; $741f: $22
    dec bc                                        ; $7420: $0b
    dec bc                                        ; $7421: $0b
    dec bc                                        ; $7422: $0b
    dec bc                                        ; $7423: $0b
    dec bc                                        ; $7424: $0b
    dec bc                                        ; $7425: $0b
    dec bc                                        ; $7426: $0b
    dec bc                                        ; $7427: $0b
    adc e                                         ; $7428: $8b
    adc h                                         ; $7429: $8c
    adc l                                         ; $742a: $8d
    adc [hl]                                      ; $742b: $8e
    inc e                                         ; $742c: $1c
    adc a                                         ; $742d: $8f
    sub b                                         ; $742e: $90
    sub c                                         ; $742f: $91
    ei                                            ; $7430: $fb
    rra                                           ; $7431: $1f
    ld e, $92                                     ; $7432: $1e $92
    sub e                                         ; $7434: $93
    ei                                            ; $7435: $fb
    ld hl, $0a94                                  ; $7436: $21 $94 $0a
    ld a, [bc]                                    ; $7439: $0a
    ld a, [bc]                                    ; $743a: $0a
    ld a, [bc]                                    ; $743b: $0a
    ld [hl+], a                                   ; $743c: $22
    ld a, [bc]                                    ; $743d: $0a
    ld a, [bc]                                    ; $743e: $0a
    ld a, [bc]                                    ; $743f: $0a
    ld [hl+], a                                   ; $7440: $22
    ld [hl+], a                                   ; $7441: $22
    ld [hl+], a                                   ; $7442: $22
    ld a, [bc]                                    ; $7443: $0a
    dec bc                                        ; $7444: $0b
    ld [hl+], a                                   ; $7445: $22
    ld [hl+], a                                   ; $7446: $22
    ld a, [bc]                                    ; $7447: $0a
    sub l                                         ; $7448: $95
    pop de                                        ; $7449: $d1
    pop de                                        ; $744a: $d1
    pop de                                        ; $744b: $d1
    sub [hl]                                      ; $744c: $96
    sub a                                         ; $744d: $97
    pop de                                        ; $744e: $d1
    pop de                                        ; $744f: $d1
    sbc b                                         ; $7450: $98
    sbc c                                         ; $7451: $99
    pop de                                        ; $7452: $d1
    pop de                                        ; $7453: $d1
    sbc d                                         ; $7454: $9a
    sbc e                                         ; $7455: $9b
    pop de                                        ; $7456: $d1
    pop de                                        ; $7457: $d1
    ld a, [bc]                                    ; $7458: $0a
    ld [bc], a                                    ; $7459: $02
    add d                                         ; $745a: $82
    add d                                         ; $745b: $82
    ld a, [bc]                                    ; $745c: $0a
    ld a, [bc]                                    ; $745d: $0a
    add d                                         ; $745e: $82
    add d                                         ; $745f: $82
    ld a, [bc]                                    ; $7460: $0a
    ld a, [bc]                                    ; $7461: $0a
    add d                                         ; $7462: $82
    add d                                         ; $7463: $82
    ld a, [bc]                                    ; $7464: $0a
    ld a, [bc]                                    ; $7465: $0a
    add d                                         ; $7466: $82
    add d                                         ; $7467: $82
    sbc h                                         ; $7468: $9c
    sbc l                                         ; $7469: $9d
    sbc [hl]                                      ; $746a: $9e
    ld e, h                                       ; $746b: $5c
    ld e, l                                       ; $746c: $5d
    ld e, [hl]                                    ; $746d: $5e
    ld e, a                                       ; $746e: $5f
    ld h, b                                       ; $746f: $60
    ld h, c                                       ; $7470: $61
    ld h, d                                       ; $7471: $62
    ld h, e                                       ; $7472: $63
    ld h, h                                       ; $7473: $64
    ld h, l                                       ; $7474: $65
    ld h, [hl]                                    ; $7475: $66
    ld h, a                                       ; $7476: $67
    ld c, c                                       ; $7477: $49
    dec bc                                        ; $7478: $0b
    dec bc                                        ; $7479: $0b
    dec bc                                        ; $747a: $0b
    inc bc                                        ; $747b: $03
    inc bc                                        ; $747c: $03
    inc bc                                        ; $747d: $03
    inc bc                                        ; $747e: $03
    inc bc                                        ; $747f: $03
    inc bc                                        ; $7480: $03
    inc bc                                        ; $7481: $03
    inc bc                                        ; $7482: $03
    inc bc                                        ; $7483: $03
    inc bc                                        ; $7484: $03
    inc bc                                        ; $7485: $03
    inc bc                                        ; $7486: $03
    inc bc                                        ; $7487: $03
    ld l, b                                       ; $7488: $68
    sbc a                                         ; $7489: $9f
    ei                                            ; $748a: $fb
    and b                                         ; $748b: $a0
    ld l, e                                       ; $748c: $6b
    ld l, h                                       ; $748d: $6c
    and c                                         ; $748e: $a1
    ei                                            ; $748f: $fb
    ld l, l                                       ; $7490: $6d
    ld d, d                                       ; $7491: $52
    ld d, e                                       ; $7492: $53
    and d                                         ; $7493: $a2
    and e                                         ; $7494: $a3
    and h                                         ; $7495: $a4
    and l                                         ; $7496: $a5
    and [hl]                                      ; $7497: $a6
    inc bc                                        ; $7498: $03
    dec bc                                        ; $7499: $0b
    ld [hl+], a                                   ; $749a: $22
    ld a, [bc]                                    ; $749b: $0a
    inc bc                                        ; $749c: $03
    inc bc                                        ; $749d: $03
    dec bc                                        ; $749e: $0b
    ld [hl+], a                                   ; $749f: $22
    inc bc                                        ; $74a0: $03
    inc bc                                        ; $74a1: $03
    inc bc                                        ; $74a2: $03
    dec bc                                        ; $74a3: $0b
    dec c                                         ; $74a4: $0d
    dec c                                         ; $74a5: $0d
    dec c                                         ; $74a6: $0d
    dec c                                         ; $74a7: $0d
    and a                                         ; $74a8: $a7
    xor b                                         ; $74a9: $a8
    pop de                                        ; $74aa: $d1
    pop de                                        ; $74ab: $d1
    xor c                                         ; $74ac: $a9
    xor d                                         ; $74ad: $aa
    pop de                                        ; $74ae: $d1
    pop de                                        ; $74af: $d1
    ei                                            ; $74b0: $fb
    xor e                                         ; $74b1: $ab
    pop de                                        ; $74b2: $d1
    pop de                                        ; $74b3: $d1
    xor h                                         ; $74b4: $ac
    xor l                                         ; $74b5: $ad
    pop de                                        ; $74b6: $d1
    pop de                                        ; $74b7: $d1
    ld a, [bc]                                    ; $74b8: $0a
    ld a, [bc]                                    ; $74b9: $0a
    add d                                         ; $74ba: $82
    add d                                         ; $74bb: $82
    ld a, [bc]                                    ; $74bc: $0a
    ld a, [bc]                                    ; $74bd: $0a
    add d                                         ; $74be: $82
    add d                                         ; $74bf: $82
    ld [hl+], a                                   ; $74c0: $22
    ld a, [bc]                                    ; $74c1: $0a
    add d                                         ; $74c2: $82
    add d                                         ; $74c3: $82
    ld [$8208], sp                                ; $74c4: $08 $08 $82
    add d                                         ; $74c7: $82
    pop de                                        ; $74c8: $d1
    pop de                                        ; $74c9: $d1
    xor [hl]                                      ; $74ca: $ae
    dec h                                         ; $74cb: $25
    pop de                                        ; $74cc: $d1
    pop de                                        ; $74cd: $d1
    xor a                                         ; $74ce: $af
    or b                                          ; $74cf: $b0
    pop de                                        ; $74d0: $d1
    pop de                                        ; $74d1: $d1
    or c                                          ; $74d2: $b1
    or d                                          ; $74d3: $b2
    pop de                                        ; $74d4: $d1
    pop de                                        ; $74d5: $d1
    or e                                          ; $74d6: $b3
    or h                                          ; $74d7: $b4
    add d                                         ; $74d8: $82
    add d                                         ; $74d9: $82
    add hl, bc                                    ; $74da: $09
    inc bc                                        ; $74db: $03
    add d                                         ; $74dc: $82
    add d                                         ; $74dd: $82
    add hl, bc                                    ; $74de: $09
    add hl, bc                                    ; $74df: $09
    add d                                         ; $74e0: $82
    add d                                         ; $74e1: $82
    add hl, bc                                    ; $74e2: $09
    add hl, bc                                    ; $74e3: $09
    add d                                         ; $74e4: $82
    add d                                         ; $74e5: $82
    add hl, bc                                    ; $74e6: $09
    add hl, bc                                    ; $74e7: $09
    ld [hl-], a                                   ; $74e8: $32
    inc sp                                        ; $74e9: $33
    inc [hl]                                      ; $74ea: $34
    dec [hl]                                      ; $74eb: $35
    or l                                          ; $74ec: $b5
    or [hl]                                       ; $74ed: $b6
    jr c, jr_07f_7529                             ; $74ee: $38 $39

    or a                                          ; $74f0: $b7
    cp b                                          ; $74f1: $b8
    inc a                                         ; $74f2: $3c
    dec a                                         ; $74f3: $3d
    cp c                                          ; $74f4: $b9
    cp d                                          ; $74f5: $ba
    ld b, b                                       ; $74f6: $40
    ld b, c                                       ; $74f7: $41
    inc bc                                        ; $74f8: $03
    inc bc                                        ; $74f9: $03
    inc bc                                        ; $74fa: $03
    inc bc                                        ; $74fb: $03
    add hl, bc                                    ; $74fc: $09
    add hl, bc                                    ; $74fd: $09
    inc bc                                        ; $74fe: $03
    inc bc                                        ; $74ff: $03
    add hl, bc                                    ; $7500: $09
    add hl, bc                                    ; $7501: $09
    inc bc                                        ; $7502: $03
    inc bc                                        ; $7503: $03
    add hl, bc                                    ; $7504: $09
    add hl, bc                                    ; $7505: $09
    rlca                                          ; $7506: $07
    inc bc                                        ; $7507: $03
    ld a, [hl]                                    ; $7508: $7e
    cp e                                          ; $7509: $bb
    cp h                                          ; $750a: $bc
    dec h                                         ; $750b: $25
    add b                                         ; $750c: $80
    add c                                         ; $750d: $81
    cp l                                          ; $750e: $bd
    cp [hl]                                       ; $750f: $be
    add e                                         ; $7510: $83
    add h                                         ; $7511: $84
    add l                                         ; $7512: $85
    cp a                                          ; $7513: $bf
    add a                                         ; $7514: $87
    adc b                                         ; $7515: $88
    adc c                                         ; $7516: $89
    adc d                                         ; $7517: $8a
    inc bc                                        ; $7518: $03
    dec bc                                        ; $7519: $0b
    dec bc                                        ; $751a: $0b
    inc bc                                        ; $751b: $03
    dec bc                                        ; $751c: $0b
    dec bc                                        ; $751d: $0b
    dec bc                                        ; $751e: $0b
    dec bc                                        ; $751f: $0b
    dec bc                                        ; $7520: $0b
    dec bc                                        ; $7521: $0b
    dec bc                                        ; $7522: $0b
    dec bc                                        ; $7523: $0b
    dec bc                                        ; $7524: $0b
    dec bc                                        ; $7525: $0b
    dec bc                                        ; $7526: $0b
    dec bc                                        ; $7527: $0b
    ld [hl-], a                                   ; $7528: $32

jr_07f_7529:
    inc sp                                        ; $7529: $33
    inc [hl]                                      ; $752a: $34
    dec [hl]                                      ; $752b: $35
    ret nz                                        ; $752c: $c0

    scf                                           ; $752d: $37
    jr c, @+$3b                                   ; $752e: $38 $39

    pop bc                                        ; $7530: $c1
    jp nz, $c4c3                                  ; $7531: $c2 $c3 $c4

    push bc                                       ; $7534: $c5
    add $c7                                       ; $7535: $c6 $c7
    ret z                                         ; $7537: $c8

    inc bc                                        ; $7538: $03
    inc bc                                        ; $7539: $03
    inc bc                                        ; $753a: $03
    inc bc                                        ; $753b: $03
    dec bc                                        ; $753c: $0b
    inc bc                                        ; $753d: $03
    inc bc                                        ; $753e: $03
    inc bc                                        ; $753f: $03
    ld a, [bc]                                    ; $7540: $0a
    ld a, [bc]                                    ; $7541: $0a
    ld a, [bc]                                    ; $7542: $0a
    ld a, [bc]                                    ; $7543: $0a
    ld a, [bc]                                    ; $7544: $0a
    ld a, [bc]                                    ; $7545: $0a
    ld a, [bc]                                    ; $7546: $0a
    ld a, [bc]                                    ; $7547: $0a
    pop de                                        ; $7548: $d1
    pop de                                        ; $7549: $d1
    ret                                           ; $754a: $c9


    jp z, $d1d1                                   ; $754b: $ca $d1 $d1

    bit 4, b                                      ; $754e: $cb $60
    pop de                                        ; $7550: $d1
    pop de                                        ; $7551: $d1
    call z, $d1cd                                 ; $7552: $cc $cd $d1
    pop de                                        ; $7555: $d1
    pop de                                        ; $7556: $d1
    call z, $8282                                 ; $7557: $cc $82 $82
    add hl, bc                                    ; $755a: $09
    add hl, bc                                    ; $755b: $09
    add d                                         ; $755c: $82
    add d                                         ; $755d: $82
    rrca                                          ; $755e: $0f
    rlca                                          ; $755f: $07
    add d                                         ; $7560: $82
    add d                                         ; $7561: $82
    adc a                                         ; $7562: $8f
    dec bc                                        ; $7563: $0b
    add d                                         ; $7564: $82
    add d                                         ; $7565: $82
    add e                                         ; $7566: $83
    adc e                                         ; $7567: $8b
    jp z, $6ace                                   ; $7568: $ca $ce $6a

    ld c, h                                       ; $756b: $4c
    ld l, e                                       ; $756c: $6b
    ld l, h                                       ; $756d: $6c
    ld c, a                                       ; $756e: $4f
    ld d, b                                       ; $756f: $50
    ld l, l                                       ; $7570: $6d
    ld d, d                                       ; $7571: $52
    ld d, e                                       ; $7572: $53
    ld d, h                                       ; $7573: $54
    add hl, bc                                    ; $7574: $09
    ld d, [hl]                                    ; $7575: $56
    ld d, a                                       ; $7576: $57
    ld e, b                                       ; $7577: $58
    add hl, bc                                    ; $7578: $09
    add hl, bc                                    ; $7579: $09
    rlca                                          ; $757a: $07
    inc bc                                        ; $757b: $03
    rlca                                          ; $757c: $07
    rlca                                          ; $757d: $07
    rlca                                          ; $757e: $07
    inc bc                                        ; $757f: $03
    inc bc                                        ; $7580: $03
    inc bc                                        ; $7581: $03
    inc bc                                        ; $7582: $03
    inc bc                                        ; $7583: $03
    inc bc                                        ; $7584: $03
    inc bc                                        ; $7585: $03
    inc bc                                        ; $7586: $03
    inc bc                                        ; $7587: $03
    rst $08                                       ; $7588: $cf
    ret nc                                        ; $7589: $d0

    pop de                                        ; $758a: $d1
    jp nc, $d4d3                                  ; $758b: $d2 $d3 $d4

    push de                                       ; $758e: $d5
    sub $6d                                       ; $758f: $d6 $6d
    rst $10                                       ; $7591: $d7
    ret c                                         ; $7592: $d8

    ld d, h                                       ; $7593: $54
    ld d, l                                       ; $7594: $55
    ld d, [hl]                                    ; $7595: $56
    ld d, a                                       ; $7596: $57
    ld e, b                                       ; $7597: $58
    ld a, [bc]                                    ; $7598: $0a
    ld a, [bc]                                    ; $7599: $0a
    ld a, [bc]                                    ; $759a: $0a
    ld a, [bc]                                    ; $759b: $0a
    ld a, [bc]                                    ; $759c: $0a
    ld a, [bc]                                    ; $759d: $0a
    ld a, [bc]                                    ; $759e: $0a
    ld a, [bc]                                    ; $759f: $0a
    rlca                                          ; $75a0: $07
    ld a, [bc]                                    ; $75a1: $0a
    ld a, [bc]                                    ; $75a2: $0a
    rlca                                          ; $75a3: $07
    rlca                                          ; $75a4: $07
    rlca                                          ; $75a5: $07
    rlca                                          ; $75a6: $07
    rlca                                          ; $75a7: $07
    pop de                                        ; $75a8: $d1
    pop de                                        ; $75a9: $d1
    pop de                                        ; $75aa: $d1
    pop de                                        ; $75ab: $d1
    pop de                                        ; $75ac: $d1
    pop de                                        ; $75ad: $d1
    pop de                                        ; $75ae: $d1
    pop de                                        ; $75af: $d1
    pop de                                        ; $75b0: $d1
    pop de                                        ; $75b1: $d1
    pop de                                        ; $75b2: $d1
    pop de                                        ; $75b3: $d1
    pop de                                        ; $75b4: $d1
    pop de                                        ; $75b5: $d1
    pop de                                        ; $75b6: $d1
    pop de                                        ; $75b7: $d1
    add d                                         ; $75b8: $82
    add d                                         ; $75b9: $82
    add e                                         ; $75ba: $83
    add e                                         ; $75bb: $83
    add d                                         ; $75bc: $82
    add d                                         ; $75bd: $82
    add e                                         ; $75be: $83
    add e                                         ; $75bf: $83
    add d                                         ; $75c0: $82
    add d                                         ; $75c1: $82
    add e                                         ; $75c2: $83
    add e                                         ; $75c3: $83
    add d                                         ; $75c4: $82
    add d                                         ; $75c5: $82
    add e                                         ; $75c6: $83
    add e                                         ; $75c7: $83
    call z, $34d9                                 ; $75c8: $cc $d9 $34
    dec [hl]                                      ; $75cb: $35
    pop de                                        ; $75cc: $d1
    call z, $39da                                 ; $75cd: $cc $da $39
    pop de                                        ; $75d0: $d1
    pop de                                        ; $75d1: $d1
    call z, $d1db                                 ; $75d2: $cc $db $d1
    pop de                                        ; $75d5: $d1
    pop de                                        ; $75d6: $d1
    call z, $0b8b                                 ; $75d7: $cc $8b $0b
    inc bc                                        ; $75da: $03
    inc bc                                        ; $75db: $03
    add e                                         ; $75dc: $83
    adc e                                         ; $75dd: $8b
    dec bc                                        ; $75de: $0b
    inc bc                                        ; $75df: $03
    add e                                         ; $75e0: $83
    add e                                         ; $75e1: $83
    adc e                                         ; $75e2: $8b
    dec bc                                        ; $75e3: $0b
    add e                                         ; $75e4: $83
    add e                                         ; $75e5: $83
    add e                                         ; $75e6: $83
    adc e                                         ; $75e7: $8b
    ld a, [hl]                                    ; $75e8: $7e
    cp e                                          ; $75e9: $bb
    cp h                                          ; $75ea: $bc
    dec h                                         ; $75eb: $25
    add b                                         ; $75ec: $80
    add c                                         ; $75ed: $81
    cp l                                          ; $75ee: $bd
    cp [hl]                                       ; $75ef: $be
    add e                                         ; $75f0: $83
    add h                                         ; $75f1: $84
    add l                                         ; $75f2: $85
    cp a                                          ; $75f3: $bf
    call c, $8988                                 ; $75f4: $dc $88 $89
    adc d                                         ; $75f7: $8a
    inc bc                                        ; $75f8: $03
    dec bc                                        ; $75f9: $0b
    dec bc                                        ; $75fa: $0b
    inc bc                                        ; $75fb: $03
    dec bc                                        ; $75fc: $0b
    dec bc                                        ; $75fd: $0b
    dec bc                                        ; $75fe: $0b
    dec bc                                        ; $75ff: $0b
    dec bc                                        ; $7600: $0b
    dec bc                                        ; $7601: $0b
    dec bc                                        ; $7602: $0b
    dec bc                                        ; $7603: $0b
    dec bc                                        ; $7604: $0b
    dec bc                                        ; $7605: $0b
    dec bc                                        ; $7606: $0b
    dec bc                                        ; $7607: $0b
    ld [hl-], a                                   ; $7608: $32
    inc sp                                        ; $7609: $33
    inc [hl]                                      ; $760a: $34
    dec [hl]                                      ; $760b: $35
    ret nz                                        ; $760c: $c0

    scf                                           ; $760d: $37
    jr c, @+$3b                                   ; $760e: $38 $39

    ld a, [hl-]                                   ; $7610: $3a
    dec sp                                        ; $7611: $3b
    inc a                                         ; $7612: $3c
    dec a                                         ; $7613: $3d
    db $dd                                        ; $7614: $dd
    ccf                                           ; $7615: $3f
    ld b, b                                       ; $7616: $40
    ld b, c                                       ; $7617: $41
    inc bc                                        ; $7618: $03
    inc bc                                        ; $7619: $03
    inc bc                                        ; $761a: $03
    inc bc                                        ; $761b: $03
    dec bc                                        ; $761c: $0b
    inc bc                                        ; $761d: $03
    inc bc                                        ; $761e: $03
    inc bc                                        ; $761f: $03
    inc bc                                        ; $7620: $03
    inc bc                                        ; $7621: $03
    inc bc                                        ; $7622: $03
    inc bc                                        ; $7623: $03
    dec bc                                        ; $7624: $0b
    inc bc                                        ; $7625: $03
    inc bc                                        ; $7626: $03
    inc bc                                        ; $7627: $03
    pop de                                        ; $7628: $d1
    pop de                                        ; $7629: $d1
    pop de                                        ; $762a: $d1
    pop de                                        ; $762b: $d1
    pop de                                        ; $762c: $d1
    pop de                                        ; $762d: $d1
    pop de                                        ; $762e: $d1
    pop de                                        ; $762f: $d1
    pop de                                        ; $7630: $d1
    pop de                                        ; $7631: $d1
    pop de                                        ; $7632: $d1
    pop de                                        ; $7633: $d1
    pop de                                        ; $7634: $d1
    pop de                                        ; $7635: $d1
    pop de                                        ; $7636: $d1
    pop de                                        ; $7637: $d1
    add e                                         ; $7638: $83
    add e                                         ; $7639: $83
    add e                                         ; $763a: $83
    add e                                         ; $763b: $83
    add e                                         ; $763c: $83
    add e                                         ; $763d: $83
    add e                                         ; $763e: $83
    add e                                         ; $763f: $83
    add e                                         ; $7640: $83
    add e                                         ; $7641: $83
    add e                                         ; $7642: $83
    add e                                         ; $7643: $83
    add e                                         ; $7644: $83
    add e                                         ; $7645: $83
    add e                                         ; $7646: $83
    add e                                         ; $7647: $83
    call z, $9ede                                 ; $7648: $cc $de $9e
    ld e, h                                       ; $764b: $5c
    pop de                                        ; $764c: $d1
    call z, Call_07f_60cb                         ; $764d: $cc $cb $60
    pop de                                        ; $7650: $d1
    pop de                                        ; $7651: $d1
    pop de                                        ; $7652: $d1
    rst $18                                       ; $7653: $df
    pop de                                        ; $7654: $d1
    pop de                                        ; $7655: $d1
    pop de                                        ; $7656: $d1
    pop de                                        ; $7657: $d1
    adc e                                         ; $7658: $8b
    dec bc                                        ; $7659: $0b
    dec bc                                        ; $765a: $0b
    inc bc                                        ; $765b: $03
    add e                                         ; $765c: $83
    adc e                                         ; $765d: $8b
    dec bc                                        ; $765e: $0b
    inc bc                                        ; $765f: $03
    add e                                         ; $7660: $83
    add e                                         ; $7661: $83
    add e                                         ; $7662: $83
    adc e                                         ; $7663: $8b
    add e                                         ; $7664: $83
    add e                                         ; $7665: $83
    add e                                         ; $7666: $83
    add e                                         ; $7667: $83
    ld l, b                                       ; $7668: $68
    ld l, c                                       ; $7669: $69
    ld l, d                                       ; $766a: $6a
    ld c, h                                       ; $766b: $4c
    ld l, e                                       ; $766c: $6b
    ld l, h                                       ; $766d: $6c
    ld c, a                                       ; $766e: $4f
    ld d, b                                       ; $766f: $50
    ld l, l                                       ; $7670: $6d
    ld d, d                                       ; $7671: $52
    ld d, e                                       ; $7672: $53
    ld d, h                                       ; $7673: $54
    add hl, bc                                    ; $7674: $09
    ld a, [bc]                                    ; $7675: $0a

Jump_07f_7676:
    dec bc                                        ; $7676: $0b
    inc c                                         ; $7677: $0c
    inc bc                                        ; $7678: $03
    inc bc                                        ; $7679: $03
    inc bc                                        ; $767a: $03

Jump_07f_767b:
    inc bc                                        ; $767b: $03
    inc bc                                        ; $767c: $03
    inc bc                                        ; $767d: $03
    inc bc                                        ; $767e: $03
    inc bc                                        ; $767f: $03
    inc bc                                        ; $7680: $03
    inc bc                                        ; $7681: $03
    inc bc                                        ; $7682: $03
    inc bc                                        ; $7683: $03
    inc bc                                        ; $7684: $03
    inc bc                                        ; $7685: $03
    inc bc                                        ; $7686: $03
    inc bc                                        ; $7687: $03
    ld a, [hl]                                    ; $7688: $7e
    cp e                                          ; $7689: $bb
    cp h                                          ; $768a: $bc
    dec h                                         ; $768b: $25
    add b                                         ; $768c: $80
    add c                                         ; $768d: $81
    cp l                                          ; $768e: $bd
    cp [hl]                                       ; $768f: $be
    add e                                         ; $7690: $83
    add h                                         ; $7691: $84
    add l                                         ; $7692: $85
    cp a                                          ; $7693: $bf
    add a                                         ; $7694: $87
    adc b                                         ; $7695: $88
    adc c                                         ; $7696: $89
    adc d                                         ; $7697: $8a
    inc bc                                        ; $7698: $03
    dec bc                                        ; $7699: $0b
    dec bc                                        ; $769a: $0b
    inc bc                                        ; $769b: $03
    dec bc                                        ; $769c: $0b
    dec bc                                        ; $769d: $0b
    dec bc                                        ; $769e: $0b
    rrca                                          ; $769f: $0f
    dec bc                                        ; $76a0: $0b
    dec bc                                        ; $76a1: $0b
    dec bc                                        ; $76a2: $0b
    rrca                                          ; $76a3: $0f
    dec bc                                        ; $76a4: $0b
    dec bc                                        ; $76a5: $0b
    dec bc                                        ; $76a6: $0b
    rrca                                          ; $76a7: $0f
    ldh [$e1], a                                  ; $76a8: $e0 $e1
    ld [c], a                                     ; $76aa: $e2
    db $e3                                        ; $76ab: $e3
    db $e4                                        ; $76ac: $e4
    push hl                                       ; $76ad: $e5
    and $e7                                       ; $76ae: $e6 $e7
    add sp, -$17                                  ; $76b0: $e8 $e9
    ld [$eceb], a                                 ; $76b2: $ea $eb $ec
    db $ed                                        ; $76b5: $ed
    xor $ef                                       ; $76b6: $ee $ef
    dec c                                         ; $76b8: $0d
    dec c                                         ; $76b9: $0d
    dec c                                         ; $76ba: $0d
    dec c                                         ; $76bb: $0d
    dec c                                         ; $76bc: $0d
    dec c                                         ; $76bd: $0d
    dec c                                         ; $76be: $0d
    dec c                                         ; $76bf: $0d
    dec c                                         ; $76c0: $0d
    dec c                                         ; $76c1: $0d
    dec c                                         ; $76c2: $0d
    dec c                                         ; $76c3: $0d
    dec c                                         ; $76c4: $0d
    dec c                                         ; $76c5: $0d
    dec c                                         ; $76c6: $0d
    dec c                                         ; $76c7: $0d
    ldh a, [$f1]                                  ; $76c8: $f0 $f1
    pop de                                        ; $76ca: $d1
    pop de                                        ; $76cb: $d1
    ld a, [c]                                     ; $76cc: $f2
    di                                            ; $76cd: $f3
    pop de                                        ; $76ce: $d1
    pop de                                        ; $76cf: $d1
    db $f4                                        ; $76d0: $f4
    push af                                       ; $76d1: $f5
    pop de                                        ; $76d2: $d1
    pop de                                        ; $76d3: $d1
    or $f7                                        ; $76d4: $f6 $f7
    pop de                                        ; $76d6: $d1
    pop de                                        ; $76d7: $d1
    ld [$8208], sp                                ; $76d8: $08 $08 $82
    add d                                         ; $76db: $82
    ld [$8208], sp                                ; $76dc: $08 $08 $82
    add d                                         ; $76df: $82
    ld [$8208], sp                                ; $76e0: $08 $08 $82
    add d                                         ; $76e3: $82
    ld [$8208], sp                                ; $76e4: $08 $08 $82
    add d                                         ; $76e7: $82
    sbc h                                         ; $76e8: $9c
    sbc l                                         ; $76e9: $9d
    sbc [hl]                                      ; $76ea: $9e
    ld e, h                                       ; $76eb: $5c
    ld e, l                                       ; $76ec: $5d
    ld e, [hl]                                    ; $76ed: $5e
    ld e, a                                       ; $76ee: $5f
    ld h, b                                       ; $76ef: $60
    ld h, c                                       ; $76f0: $61
    ld h, d                                       ; $76f1: $62
    ld h, e                                       ; $76f2: $63
    ld h, h                                       ; $76f3: $64
    ld h, l                                       ; $76f4: $65
    ld h, [hl]                                    ; $76f5: $66
    ld h, a                                       ; $76f6: $67
    ld c, c                                       ; $76f7: $49
    rrca                                          ; $76f8: $0f
    dec bc                                        ; $76f9: $0b
    dec bc                                        ; $76fa: $0b
    rlca                                          ; $76fb: $07
    rlca                                          ; $76fc: $07
    inc bc                                        ; $76fd: $03
    inc bc                                        ; $76fe: $03
    rlca                                          ; $76ff: $07
    rlca                                          ; $7700: $07
    inc bc                                        ; $7701: $03
    inc bc                                        ; $7702: $03
    inc bc                                        ; $7703: $03
    rlca                                          ; $7704: $07
    inc bc                                        ; $7705: $03
    inc bc                                        ; $7706: $03
    inc bc                                        ; $7707: $03
    ld hl, sp-$07                                 ; $7708: $f8 $f9
    ld a, [$6bfb]                                 ; $770a: $fa $fb $6b
    ld l, h                                       ; $770d: $6c
    ld c, a                                       ; $770e: $4f
    ld d, b                                       ; $770f: $50
    ld l, l                                       ; $7710: $6d
    ld d, d                                       ; $7711: $52
    or [hl]                                       ; $7712: $b6
    or l                                          ; $7713: $b5
    ld d, l                                       ; $7714: $55
    ld d, [hl]                                    ; $7715: $56
    cp b                                          ; $7716: $b8
    or a                                          ; $7717: $b7
    dec c                                         ; $7718: $0d
    dec c                                         ; $7719: $0d
    dec c                                         ; $771a: $0d
    dec c                                         ; $771b: $0d
    rlca                                          ; $771c: $07
    rlca                                          ; $771d: $07
    rlca                                          ; $771e: $07
    rlca                                          ; $771f: $07
    inc bc                                        ; $7720: $03
    inc bc                                        ; $7721: $03
    add hl, hl                                    ; $7722: $29
    add hl, hl                                    ; $7723: $29
    inc bc                                        ; $7724: $03
    inc bc                                        ; $7725: $03
    add hl, hl                                    ; $7726: $29
    add hl, hl                                    ; $7727: $29
    db $fc                                        ; $7728: $fc
    db $fd                                        ; $7729: $fd
    pop de                                        ; $772a: $d1
    pop de                                        ; $772b: $d1
    ld e, l                                       ; $772c: $5d
    xor [hl]                                      ; $772d: $ae
    pop de                                        ; $772e: $d1
    pop de                                        ; $772f: $d1
    or b                                          ; $7730: $b0
    cp $d1                                        ; $7731: $fe $d1
    pop de                                        ; $7733: $d1
    rst $38                                       ; $7734: $ff
    pop de                                        ; $7735: $d1
    pop de                                        ; $7736: $d1
    pop de                                        ; $7737: $d1
    dec c                                         ; $7738: $0d
    dec c                                         ; $7739: $0d
    add d                                         ; $773a: $82
    add d                                         ; $773b: $82
    rlca                                          ; $773c: $07
    add hl, hl                                    ; $773d: $29
    add d                                         ; $773e: $82
    add d                                         ; $773f: $82
    add hl, hl                                    ; $7740: $29
    add hl, bc                                    ; $7741: $09
    add d                                         ; $7742: $82
    add d                                         ; $7743: $82
    add hl, bc                                    ; $7744: $09
    add c                                         ; $7745: $81
    add d                                         ; $7746: $82
    add d                                         ; $7747: $82
    ld a, [hl]                                    ; $7748: $7e
    cp e                                          ; $7749: $bb
    cp h                                          ; $774a: $bc
    dec h                                         ; $774b: $25
    add b                                         ; $774c: $80
    add c                                         ; $774d: $81
    cp l                                          ; $774e: $bd
    cp [hl]                                       ; $774f: $be
    add e                                         ; $7750: $83
    add h                                         ; $7751: $84
    add l                                         ; $7752: $85
    cp a                                          ; $7753: $bf
    add a                                         ; $7754: $87
    adc b                                         ; $7755: $88
    adc c                                         ; $7756: $89
    nop                                           ; $7757: $00
    inc bc                                        ; $7758: $03
    dec bc                                        ; $7759: $0b
    dec bc                                        ; $775a: $0b
    inc bc                                        ; $775b: $03
    dec bc                                        ; $775c: $0b
    dec bc                                        ; $775d: $0b
    dec bc                                        ; $775e: $0b
    dec bc                                        ; $775f: $0b
    dec bc                                        ; $7760: $0b
    dec bc                                        ; $7761: $0b
    dec bc                                        ; $7762: $0b
    dec bc                                        ; $7763: $0b
    dec bc                                        ; $7764: $0b
    dec bc                                        ; $7765: $0b
    dec bc                                        ; $7766: $0b
    dec bc                                        ; $7767: $0b
    ld [hl-], a                                   ; $7768: $32
    inc sp                                        ; $7769: $33
    cp d                                          ; $776a: $ba
    ld bc, $02c0                                  ; $776b: $01 $c0 $02
    inc bc                                        ; $776e: $03
    pop de                                        ; $776f: $d1
    inc b                                         ; $7770: $04
    call z, $d1d1                                 ; $7771: $cc $d1 $d1
    call z, $d1d1                                 ; $7774: $cc $d1 $d1
    pop de                                        ; $7777: $d1
    inc bc                                        ; $7778: $03
    rlca                                          ; $7779: $07
    add hl, hl                                    ; $777a: $29
    add hl, bc                                    ; $777b: $09
    dec bc                                        ; $777c: $0b
    rrca                                          ; $777d: $0f
    add hl, bc                                    ; $777e: $09
    ld bc, $af0b                                  ; $777f: $01 $0b $af
    add d                                         ; $7782: $82
    add d                                         ; $7783: $82
    xor e                                         ; $7784: $ab
    add e                                         ; $7785: $83
    add d                                         ; $7786: $82
    add d                                         ; $7787: $82
    pop de                                        ; $7788: $d1
    pop de                                        ; $7789: $d1
    pop de                                        ; $778a: $d1
    pop de                                        ; $778b: $d1
    pop de                                        ; $778c: $d1
    pop de                                        ; $778d: $d1
    pop de                                        ; $778e: $d1
    pop de                                        ; $778f: $d1
    pop de                                        ; $7790: $d1
    pop de                                        ; $7791: $d1
    pop de                                        ; $7792: $d1
    pop de                                        ; $7793: $d1
    pop de                                        ; $7794: $d1
    pop de                                        ; $7795: $d1
    pop de                                        ; $7796: $d1
    pop de                                        ; $7797: $d1
    ld bc, $0201                                  ; $7798: $01 $01 $02
    ld [bc], a                                    ; $779b: $02
    ld [bc], a                                    ; $779c: $02
    ld [bc], a                                    ; $779d: $02
    ld [bc], a                                    ; $779e: $02
    ld [bc], a                                    ; $779f: $02
    ld [bc], a                                    ; $77a0: $02
    ld [bc], a                                    ; $77a1: $02
    ld [bc], a                                    ; $77a2: $02
    ld [bc], a                                    ; $77a3: $02
    ld [bc], a                                    ; $77a4: $02
    ld [bc], a                                    ; $77a5: $02
    ld [bc], a                                    ; $77a6: $02
    ld [bc], a                                    ; $77a7: $02
    sbc h                                         ; $77a8: $9c
    sbc l                                         ; $77a9: $9d
    dec b                                         ; $77aa: $05
    call z, Call_000_065d                         ; $77ab: $cc $5d $06
    call z, $dfd1                                 ; $77ae: $cc $d1 $df
    pop de                                        ; $77b1: $d1
    pop de                                        ; $77b2: $d1
    pop de                                        ; $77b3: $d1
    pop de                                        ; $77b4: $d1
    pop de                                        ; $77b5: $d1
    pop de                                        ; $77b6: $d1
    pop de                                        ; $77b7: $d1
    dec bc                                        ; $77b8: $0b
    dec bc                                        ; $77b9: $0b
    dec bc                                        ; $77ba: $0b
    xor e                                         ; $77bb: $ab
    inc bc                                        ; $77bc: $03
    dec bc                                        ; $77bd: $0b
    xor e                                         ; $77be: $ab
    add e                                         ; $77bf: $83
    xor e                                         ; $77c0: $ab
    add e                                         ; $77c1: $83
    add e                                         ; $77c2: $83
    add e                                         ; $77c3: $83
    add e                                         ; $77c4: $83
    add e                                         ; $77c5: $83
    add e                                         ; $77c6: $83
    add e                                         ; $77c7: $83
    pop de                                        ; $77c8: $d1
    pop de                                        ; $77c9: $d1
    pop de                                        ; $77ca: $d1
    pop de                                        ; $77cb: $d1
    pop de                                        ; $77cc: $d1
    pop de                                        ; $77cd: $d1
    pop de                                        ; $77ce: $d1
    pop de                                        ; $77cf: $d1
    pop de                                        ; $77d0: $d1
    pop de                                        ; $77d1: $d1
    pop de                                        ; $77d2: $d1
    pop de                                        ; $77d3: $d1
    pop de                                        ; $77d4: $d1
    pop de                                        ; $77d5: $d1
    pop de                                        ; $77d6: $d1
    pop de                                        ; $77d7: $d1
    add e                                         ; $77d8: $83
    add e                                         ; $77d9: $83
    add d                                         ; $77da: $82
    add d                                         ; $77db: $82
    add e                                         ; $77dc: $83
    add e                                         ; $77dd: $83
    add d                                         ; $77de: $82
    add d                                         ; $77df: $82
    add e                                         ; $77e0: $83
    add e                                         ; $77e1: $83
    add d                                         ; $77e2: $82
    add d                                         ; $77e3: $82
    add e                                         ; $77e4: $83
    add e                                         ; $77e5: $83
    add d                                         ; $77e6: $82
    add d                                         ; $77e7: $82
    rlca                                          ; $77e8: $07
    rlca                                          ; $77e9: $07
    rlca                                          ; $77ea: $07
    rlca                                          ; $77eb: $07
    pop de                                        ; $77ec: $d1
    pop de                                        ; $77ed: $d1
    pop de                                        ; $77ee: $d1
    pop de                                        ; $77ef: $d1
    pop de                                        ; $77f0: $d1
    pop de                                        ; $77f1: $d1
    pop de                                        ; $77f2: $d1
    pop de                                        ; $77f3: $d1
    pop de                                        ; $77f4: $d1
    pop de                                        ; $77f5: $d1
    pop de                                        ; $77f6: $d1
    pop de                                        ; $77f7: $d1
    adc e                                         ; $77f8: $8b
    adc e                                         ; $77f9: $8b
    adc e                                         ; $77fa: $8b
    adc e                                         ; $77fb: $8b
    add e                                         ; $77fc: $83
    add e                                         ; $77fd: $83
    add e                                         ; $77fe: $83
    add e                                         ; $77ff: $83
    add e                                         ; $7800: $83
    add e                                         ; $7801: $83
    add e                                         ; $7802: $83
    add e                                         ; $7803: $83
    add e                                         ; $7804: $83
    add e                                         ; $7805: $83
    add e                                         ; $7806: $83
    add e                                         ; $7807: $83
    pop de                                        ; $7808: $d1
    pop de                                        ; $7809: $d1
    pop de                                        ; $780a: $d1
    pop de                                        ; $780b: $d1
    pop de                                        ; $780c: $d1
    pop de                                        ; $780d: $d1
    pop de                                        ; $780e: $d1
    pop de                                        ; $780f: $d1
    pop de                                        ; $7810: $d1
    jp nc, $d4d3                                  ; $7811: $d2 $d3 $d4

    push de                                       ; $7814: $d5
    sub $d7                                       ; $7815: $d6 $d7
    ld [$0202], sp                                ; $7817: $08 $02 $02
    ld [bc], a                                    ; $781a: $02
    ld [bc], a                                    ; $781b: $02
    ld [bc], a                                    ; $781c: $02
    ld [bc], a                                    ; $781d: $02
    ld [bc], a                                    ; $781e: $02
    ld [bc], a                                    ; $781f: $02
    ld [bc], a                                    ; $7820: $02
    ld [bc], a                                    ; $7821: $02
    ld [bc], a                                    ; $7822: $02
    ld bc, $0202                                  ; $7823: $01 $02 $02
    ld [bc], a                                    ; $7826: $02
    add hl, bc                                    ; $7827: $09
    pop de                                        ; $7828: $d1
    pop de                                        ; $7829: $d1
    pop de                                        ; $782a: $d1
    pop de                                        ; $782b: $d1
    pop de                                        ; $782c: $d1
    pop de                                        ; $782d: $d1
    pop de                                        ; $782e: $d1
    pop de                                        ; $782f: $d1
    add hl, bc                                    ; $7830: $09
    ld a, [bc]                                    ; $7831: $0a
    dec bc                                        ; $7832: $0b
    inc c                                         ; $7833: $0c
    db $dd                                        ; $7834: $dd
    dec c                                         ; $7835: $0d
    ld c, $0f                                     ; $7836: $0e $0f
    ld [bc], a                                    ; $7838: $02
    ld [bc], a                                    ; $7839: $02
    ld [bc], a                                    ; $783a: $02
    ld [bc], a                                    ; $783b: $02
    ld [bc], a                                    ; $783c: $02
    ld [bc], a                                    ; $783d: $02
    ld [bc], a                                    ; $783e: $02
    ld [bc], a                                    ; $783f: $02
    add hl, bc                                    ; $7840: $09
    add hl, bc                                    ; $7841: $09
    add hl, bc                                    ; $7842: $09
    add hl, bc                                    ; $7843: $09
    ld bc, $0909                                  ; $7844: $01 $09 $09
    add hl, bc                                    ; $7847: $09
    pop de                                        ; $7848: $d1
    pop de                                        ; $7849: $d1
    pop de                                        ; $784a: $d1
    pop de                                        ; $784b: $d1
    pop de                                        ; $784c: $d1
    pop de                                        ; $784d: $d1
    pop de                                        ; $784e: $d1
    pop de                                        ; $784f: $d1
    ld l, [hl]                                    ; $7850: $6e
    db $d3                                        ; $7851: $d3
    jp nc, $10d1                                  ; $7852: $d2 $d1 $10

    rst $10                                       ; $7855: $d7
    sub $d5                                       ; $7856: $d6 $d5
    ld [bc], a                                    ; $7858: $02
    ld [bc], a                                    ; $7859: $02
    ld [bc], a                                    ; $785a: $02
    ld [bc], a                                    ; $785b: $02
    ld [bc], a                                    ; $785c: $02
    ld [bc], a                                    ; $785d: $02
    ld [bc], a                                    ; $785e: $02
    ld [bc], a                                    ; $785f: $02
    ld bc, $2222                                  ; $7860: $01 $22 $22
    ld [bc], a                                    ; $7863: $02
    add hl, bc                                    ; $7864: $09
    ld [hl+], a                                   ; $7865: $22
    ld [hl+], a                                   ; $7866: $22
    ld [hl+], a                                   ; $7867: $22
    db $ed                                        ; $7868: $ed
    xor $ef                                       ; $7869: $ee $ef
    ld de, $f2f1                                  ; $786b: $11 $f1 $f2
    di                                            ; $786e: $f3
    ld [de], a                                    ; $786f: $12
    push af                                       ; $7870: $f5
    or $f7                                        ; $7871: $f6 $f7
    inc de                                        ; $7873: $13
    ld sp, hl                                     ; $7874: $f9
    ld a, [$fcfb]                                 ; $7875: $fa $fb $fc
    ld [bc], a                                    ; $7878: $02
    ld [bc], a                                    ; $7879: $02
    ld [bc], a                                    ; $787a: $02
    add hl, bc                                    ; $787b: $09
    ld [bc], a                                    ; $787c: $02
    ld [bc], a                                    ; $787d: $02
    ld [bc], a                                    ; $787e: $02
    add hl, bc                                    ; $787f: $09
    ld [bc], a                                    ; $7880: $02
    ld [bc], a                                    ; $7881: $02
    ld [bc], a                                    ; $7882: $02
    add hl, bc                                    ; $7883: $09
    ld [bc], a                                    ; $7884: $02
    ld [bc], a                                    ; $7885: $02
    ld [bc], a                                    ; $7886: $02
    inc bc                                        ; $7887: $03
    inc d                                         ; $7888: $14
    dec d                                         ; $7889: $15
    ld d, $17                                     ; $788a: $16 $17
    jr jr_07f_78a7                                ; $788c: $18 $19

    ld a, [de]                                    ; $788e: $1a
    dec de                                        ; $788f: $1b
    inc e                                         ; $7890: $1c
    ld b, $07                                     ; $7891: $06 $07
    dec e                                         ; $7893: $1d
    add hl, bc                                    ; $7894: $09
    ld a, [bc]                                    ; $7895: $0a
    dec bc                                        ; $7896: $0b
    inc c                                         ; $7897: $0c
    add hl, bc                                    ; $7898: $09
    add hl, bc                                    ; $7899: $09
    add hl, bc                                    ; $789a: $09
    add hl, bc                                    ; $789b: $09
    add hl, bc                                    ; $789c: $09
    add hl, bc                                    ; $789d: $09
    add hl, bc                                    ; $789e: $09
    add hl, bc                                    ; $789f: $09
    add hl, bc                                    ; $78a0: $09
    ld bc, $0901                                  ; $78a1: $01 $01 $09
    inc bc                                        ; $78a4: $03
    inc bc                                        ; $78a5: $03
    inc bc                                        ; $78a6: $03

jr_07f_78a7:
    inc bc                                        ; $78a7: $03
    ld e, $ef                                     ; $78a8: $1e $ef
    xor $ed                                       ; $78aa: $ee $ed
    rra                                           ; $78ac: $1f
    di                                            ; $78ad: $f3
    ld a, [c]                                     ; $78ae: $f2
    pop af                                        ; $78af: $f1
    jr nz, @-$07                                  ; $78b0: $20 $f7

    or $f5                                        ; $78b2: $f6 $f5
    ld [hl], e                                    ; $78b4: $73
    ei                                            ; $78b5: $fb
    ld a, [$0974]                                 ; $78b6: $fa $74 $09
    ld [hl+], a                                   ; $78b9: $22
    ld [hl+], a                                   ; $78ba: $22
    ld [hl+], a                                   ; $78bb: $22
    add hl, bc                                    ; $78bc: $09
    ld [hl+], a                                   ; $78bd: $22
    ld [hl+], a                                   ; $78be: $22
    ld [hl+], a                                   ; $78bf: $22
    add hl, bc                                    ; $78c0: $09
    ld [hl+], a                                   ; $78c1: $22
    ld [hl+], a                                   ; $78c2: $22
    ld [hl+], a                                   ; $78c3: $22
    inc bc                                        ; $78c4: $03
    ld [hl+], a                                   ; $78c5: $22
    ld [hl+], a                                   ; $78c6: $22
    ld [bc], a                                    ; $78c7: $02
    ld hl, $d122                                  ; $78c8: $21 $22 $d1
    pop de                                        ; $78cb: $d1
    inc hl                                        ; $78cc: $23
    inc h                                         ; $78cd: $24
    pop de                                        ; $78ce: $d1
    pop de                                        ; $78cf: $d1
    db $f4                                        ; $78d0: $f4
    dec h                                         ; $78d1: $25
    pop de                                        ; $78d2: $d1
    pop de                                        ; $78d3: $d1
    or $f7                                        ; $78d4: $f6 $f7
    pop de                                        ; $78d6: $d1
    pop de                                        ; $78d7: $d1
    ld [$0208], sp                                ; $78d8: $08 $08 $02
    ld [bc], a                                    ; $78db: $02
    ld [$0208], sp                                ; $78dc: $08 $08 $02
    ld [bc], a                                    ; $78df: $02
    ld [$0208], sp                                ; $78e0: $08 $08 $02
    ld [bc], a                                    ; $78e3: $02
    ld [$0208], sp                                ; $78e4: $08 $08 $02
    ld [bc], a                                    ; $78e7: $02
    and a                                         ; $78e8: $a7
    xor b                                         ; $78e9: $a8
    pop de                                        ; $78ea: $d1
    pop de                                        ; $78eb: $d1
    xor c                                         ; $78ec: $a9
    xor d                                         ; $78ed: $aa
    pop de                                        ; $78ee: $d1
    pop de                                        ; $78ef: $d1
    ei                                            ; $78f0: $fb
    xor e                                         ; $78f1: $ab
    pop de                                        ; $78f2: $d1
    pop de                                        ; $78f3: $d1
    ld h, $27                                     ; $78f4: $26 $27
    pop de                                        ; $78f6: $d1
    pop de                                        ; $78f7: $d1
    ld a, [bc]                                    ; $78f8: $0a
    ld a, [bc]                                    ; $78f9: $0a
    ld [bc], a                                    ; $78fa: $02
    ld [bc], a                                    ; $78fb: $02
    ld a, [bc]                                    ; $78fc: $0a
    ld a, [bc]                                    ; $78fd: $0a
    ld [bc], a                                    ; $78fe: $02
    ld [bc], a                                    ; $78ff: $02
    ld [hl+], a                                   ; $7900: $22
    ld a, [bc]                                    ; $7901: $0a
    ld [bc], a                                    ; $7902: $02
    ld [bc], a                                    ; $7903: $02
    ld [$0208], sp                                ; $7904: $08 $08 $02
    ld [bc], a                                    ; $7907: $02
    ld b, $00                                     ; $7908: $06 $00
    add hl, bc                                    ; $790a: $09
    nop                                           ; $790b: $00
    ld b, b                                       ; $790c: $40
    dec b                                         ; $790d: $05
    pop de                                        ; $790e: $d1
    jp nc, $d4d3                                  ; $790f: $d2 $d3 $d4

    pop de                                        ; $7912: $d1
    jp nc, $d6d5                                  ; $7913: $d2 $d5 $d6

    pop de                                        ; $7916: $d1
    jp nc, $d8d7                                  ; $7917: $d2 $d7 $d8

    pop de                                        ; $791a: $d1
    jp nc, $dad9                                  ; $791b: $d2 $d9 $da

    add b                                         ; $791e: $80
    add b                                         ; $791f: $80
    ld bc, $8001                                  ; $7920: $01 $01 $80
    add b                                         ; $7923: $80
    ld bc, $8001                                  ; $7924: $01 $01 $80
    add b                                         ; $7927: $80
    dec b                                         ; $7928: $05
    dec b                                         ; $7929: $05
    add b                                         ; $792a: $80
    add b                                         ; $792b: $80
    dec b                                         ; $792c: $05
    dec b                                         ; $792d: $05
    db $db                                        ; $792e: $db
    call c, $dedd                                 ; $792f: $dc $dd $de
    rst $18                                       ; $7932: $df
    ldh [$e1], a                                  ; $7933: $e0 $e1
    ld [c], a                                     ; $7935: $e2
    db $e3                                        ; $7936: $e3
    db $e4                                        ; $7937: $e4
    push hl                                       ; $7938: $e5
    and $e7                                       ; $7939: $e6 $e7
    add sp, -$17                                  ; $793b: $e8 $e9
    ld [$0101], a                                 ; $793d: $ea $01 $01
    ld [bc], a                                    ; $7940: $02
    ld [bc], a                                    ; $7941: $02
    ld bc, $0201                                  ; $7942: $01 $01 $02
    ld [bc], a                                    ; $7945: $02
    dec b                                         ; $7946: $05
    ld bc, $0202                                  ; $7947: $01 $02 $02
    dec b                                         ; $794a: $05
    ld bc, $0202                                  ; $794b: $01 $02 $02
    db $eb                                        ; $794e: $eb
    db $ec                                        ; $794f: $ec
    db $ed                                        ; $7950: $ed
    xor $ef                                       ; $7951: $ee $ef
    ldh a, [$f1]                                  ; $7953: $f0 $f1
    ld a, [c]                                     ; $7955: $f2
    di                                            ; $7956: $f3
    db $f4                                        ; $7957: $f4
    push af                                       ; $7958: $f5
    or $f7                                        ; $7959: $f6 $f7
    ld hl, sp-$07                                 ; $795b: $f8 $f9
    ld a, [$0202]                                 ; $795d: $fa $02 $02
    ld [bc], a                                    ; $7960: $02
    ld [bc], a                                    ; $7961: $02
    ld [bc], a                                    ; $7962: $02
    ld [bc], a                                    ; $7963: $02
    ld [bc], a                                    ; $7964: $02
    ld [bc], a                                    ; $7965: $02
    ld [bc], a                                    ; $7966: $02
    ld [bc], a                                    ; $7967: $02
    ld [bc], a                                    ; $7968: $02
    ld [bc], a                                    ; $7969: $02
    ld [bc], a                                    ; $796a: $02
    ld [bc], a                                    ; $796b: $02
    ld [bc], a                                    ; $796c: $02
    ld [bc], a                                    ; $796d: $02
    ei                                            ; $796e: $fb
    db $fc                                        ; $796f: $fc
    call c, $fddc                                 ; $7970: $dc $dc $fd
    cp $e0                                        ; $7973: $fe $e0
    ldh [rIE], a                                  ; $7975: $e0 $ff
    nop                                           ; $7977: $00
    db $e4                                        ; $7978: $e4
    db $e4                                        ; $7979: $e4
    ld bc, $e802                                  ; $797a: $01 $02 $e8
    add sp, $02                                   ; $797d: $e8 $02
    ld bc, $0101                                  ; $797f: $01 $01 $01
    ld [bc], a                                    ; $7982: $02
    ld bc, $0101                                  ; $7983: $01 $01 $01
    ld [bc], a                                    ; $7986: $02
    ld bc, $0101                                  ; $7987: $01 $01 $01
    ld [bc], a                                    ; $798a: $02
    ld bc, $0101                                  ; $798b: $01 $01 $01
    pop de                                        ; $798e: $d1
    jp nc, $0403                                  ; $798f: $d2 $03 $04

    pop de                                        ; $7992: $d1
    jp nc, $0605                                  ; $7993: $d2 $05 $06

    pop de                                        ; $7996: $d1
    jp nc, Jump_000_0807                          ; $7997: $d2 $07 $08

    pop de                                        ; $799a: $d1
    jp nc, $0a09                                  ; $799b: $d2 $09 $0a

    add b                                         ; $799e: $80
    add b                                         ; $799f: $80
    dec b                                         ; $79a0: $05
    dec b                                         ; $79a1: $05
    add b                                         ; $79a2: $80
    add b                                         ; $79a3: $80
    dec b                                         ; $79a4: $05
    dec b                                         ; $79a5: $05
    add b                                         ; $79a6: $80
    add b                                         ; $79a7: $80
    dec b                                         ; $79a8: $05
    dec b                                         ; $79a9: $05
    add b                                         ; $79aa: $80
    add b                                         ; $79ab: $80
    rlca                                          ; $79ac: $07
    rlca                                          ; $79ad: $07
    dec bc                                        ; $79ae: $0b
    inc c                                         ; $79af: $0c
    dec c                                         ; $79b0: $0d
    dec c                                         ; $79b1: $0d
    ld c, $0a                                     ; $79b2: $0e $0a
    rrca                                          ; $79b4: $0f
    db $10                                        ; $79b5: $10
    ld de, $1312                                  ; $79b6: $11 $12 $13
    inc d                                         ; $79b9: $14
    rrca                                          ; $79ba: $0f
    db $10                                        ; $79bb: $10
    add hl, bc                                    ; $79bc: $09
    ld a, [bc]                                    ; $79bd: $0a
    dec b                                         ; $79be: $05
    ld bc, $0101                                  ; $79bf: $01 $01 $01
    dec b                                         ; $79c2: $05
    rlca                                          ; $79c3: $07
    rlca                                          ; $79c4: $07
    rlca                                          ; $79c5: $07
    dec b                                         ; $79c6: $05
    rlca                                          ; $79c7: $07
    ld b, $06                                     ; $79c8: $06 $06
    rlca                                          ; $79ca: $07
    rlca                                          ; $79cb: $07
    ld b, $06                                     ; $79cc: $06 $06
    dec c                                         ; $79ce: $0d
    dec c                                         ; $79cf: $0d
    dec c                                         ; $79d0: $0d
    dec c                                         ; $79d1: $0d
    add hl, bc                                    ; $79d2: $09
    ld a, [bc]                                    ; $79d3: $0a
    rrca                                          ; $79d4: $0f
    db $10                                        ; $79d5: $10
    dec d                                         ; $79d6: $15
    ld [de], a                                    ; $79d7: $12
    inc de                                        ; $79d8: $13
    inc d                                         ; $79d9: $14
    rrca                                          ; $79da: $0f
    db $10                                        ; $79db: $10
    add hl, bc                                    ; $79dc: $09
    ld a, [bc]                                    ; $79dd: $0a
    ld bc, $0101                                  ; $79de: $01 $01 $01
    ld bc, $0707                                  ; $79e1: $01 $07 $07
    rlca                                          ; $79e4: $07
    rlca                                          ; $79e5: $07
    ld b, $06                                     ; $79e6: $06 $06
    ld b, $06                                     ; $79e8: $06 $06
    ld b, $06                                     ; $79ea: $06 $06
    ld b, $06                                     ; $79ec: $06 $06
    dec c                                         ; $79ee: $0d
    ld d, $0c                                     ; $79ef: $16 $0c
    inc c                                         ; $79f1: $0c
    add hl, bc                                    ; $79f2: $09
    ld a, [bc]                                    ; $79f3: $0a
    rrca                                          ; $79f4: $0f
    db $10                                        ; $79f5: $10
    dec d                                         ; $79f6: $15
    rla                                           ; $79f7: $17
    jr jr_07f_7a13                                ; $79f8: $18 $19

    rrca                                          ; $79fa: $0f
    ld a, [de]                                    ; $79fb: $1a
    dec de                                        ; $79fc: $1b
    inc e                                         ; $79fd: $1c
    ld bc, $0101                                  ; $79fe: $01 $01 $01
    ld bc, $0707                                  ; $7a01: $01 $07 $07
    rlca                                          ; $7a04: $07
    rlca                                          ; $7a05: $07
    ld b, $03                                     ; $7a06: $06 $03
    inc bc                                        ; $7a08: $03
    inc bc                                        ; $7a09: $03
    ld b, $03                                     ; $7a0a: $06 $03
    inc bc                                        ; $7a0c: $03
    inc bc                                        ; $7a0d: $03
    pop de                                        ; $7a0e: $d1
    jp nc, Jump_000_1215                          ; $7a0f: $d2 $15 $12

    pop de                                        ; $7a12: $d1

jr_07f_7a13:
    jp nc, Jump_000_100f                          ; $7a13: $d2 $0f $10

    pop de                                        ; $7a16: $d1
    jp nc, Jump_000_1413                          ; $7a17: $d2 $13 $14

    pop de                                        ; $7a1a: $d1
    jp nc, $0a09                                  ; $7a1b: $d2 $09 $0a

    add b                                         ; $7a1e: $80
    add b                                         ; $7a1f: $80
    rlca                                          ; $7a20: $07
    ld b, $80                                     ; $7a21: $06 $80
    add b                                         ; $7a23: $80
    rlca                                          ; $7a24: $07
    ld b, $80                                     ; $7a25: $06 $80
    add b                                         ; $7a27: $80
    rlca                                          ; $7a28: $07
    ld b, $80                                     ; $7a29: $06 $80
    add b                                         ; $7a2b: $80
    rlca                                          ; $7a2c: $07
    ld b, $13                                     ; $7a2d: $06 $13
    dec e                                         ; $7a2f: $1d
    dec d                                         ; $7a30: $15
    ld [de], a                                    ; $7a31: $12
    add hl, bc                                    ; $7a32: $09
    ld a, [bc]                                    ; $7a33: $0a
    rrca                                          ; $7a34: $0f
    db $10                                        ; $7a35: $10
    dec d                                         ; $7a36: $15
    ld [de], a                                    ; $7a37: $12
    ld e, $1f                                     ; $7a38: $1e $1f
    rrca                                          ; $7a3a: $0f
    db $10                                        ; $7a3b: $10
    jr nz, jr_07f_7a4d                            ; $7a3c: $20 $0f

    ld b, $06                                     ; $7a3e: $06 $06
    ld b, $06                                     ; $7a40: $06 $06
    ld b, $06                                     ; $7a42: $06 $06
    ld b, $06                                     ; $7a44: $06 $06
    ld b, $06                                     ; $7a46: $06 $06
    ld [bc], a                                    ; $7a48: $02
    ld [bc], a                                    ; $7a49: $02
    ld b, $06                                     ; $7a4a: $06 $06
    ld [bc], a                                    ; $7a4c: $02

jr_07f_7a4d:
    ld [bc], a                                    ; $7a4d: $02
    ld hl, $1522                                  ; $7a4e: $21 $22 $15
    ld [de], a                                    ; $7a51: $12
    inc hl                                        ; $7a52: $23
    inc h                                         ; $7a53: $24
    rrca                                          ; $7a54: $0f
    db $10                                        ; $7a55: $10
    rra                                           ; $7a56: $1f
    rra                                           ; $7a57: $1f
    dec h                                         ; $7a58: $25
    ld h, $0f                                     ; $7a59: $26 $0f
    daa                                           ; $7a5b: $27
    jr z, @+$2b                                   ; $7a5c: $28 $29

    ld [bc], a                                    ; $7a5e: $02
    ld [bc], a                                    ; $7a5f: $02
    ld b, $06                                     ; $7a60: $06 $06
    ld [bc], a                                    ; $7a62: $02
    ld [bc], a                                    ; $7a63: $02
    ld b, $06                                     ; $7a64: $06 $06
    ld [bc], a                                    ; $7a66: $02
    ld [bc], a                                    ; $7a67: $02
    ld [bc], a                                    ; $7a68: $02
    ld [bc], a                                    ; $7a69: $02
    ld [bc], a                                    ; $7a6a: $02
    ld [bc], a                                    ; $7a6b: $02
    ld [bc], a                                    ; $7a6c: $02
    ld [bc], a                                    ; $7a6d: $02
    inc de                                        ; $7a6e: $13
    ld a, [hl+]                                   ; $7a6f: $2a
    dec hl                                        ; $7a70: $2b
    inc l                                         ; $7a71: $2c
    add hl, bc                                    ; $7a72: $09
    ld a, [bc]                                    ; $7a73: $0a
    rrca                                          ; $7a74: $0f
    db $10                                        ; $7a75: $10
    dec d                                         ; $7a76: $15
    ld [de], a                                    ; $7a77: $12
    inc de                                        ; $7a78: $13
    inc d                                         ; $7a79: $14
    rrca                                          ; $7a7a: $0f
    db $10                                        ; $7a7b: $10
    add hl, bc                                    ; $7a7c: $09
    ld a, [bc]                                    ; $7a7d: $0a
    ld b, $03                                     ; $7a7e: $06 $03
    inc bc                                        ; $7a80: $03
    inc bc                                        ; $7a81: $03
    ld b, $06                                     ; $7a82: $06 $06
    ld b, $06                                     ; $7a84: $06 $06
    ld b, $06                                     ; $7a86: $06 $06
    ld b, $06                                     ; $7a88: $06 $06
    ld b, $06                                     ; $7a8a: $06 $06
    ld b, $06                                     ; $7a8c: $06 $06
    inc de                                        ; $7a8e: $13
    dec e                                         ; $7a8f: $1d
    dec l                                         ; $7a90: $2d
    ld l, $09                                     ; $7a91: $2e $09
    ld a, [bc]                                    ; $7a93: $0a
    cpl                                           ; $7a94: $2f
    jr nc, jr_07f_7aac                            ; $7a95: $30 $15

    ld [de], a                                    ; $7a97: $12
    ld sp, $0f32                                  ; $7a98: $31 $32 $0f
    db $10                                        ; $7a9b: $10
    add hl, bc                                    ; $7a9c: $09
    ld a, [bc]                                    ; $7a9d: $0a
    ld b, $07                                     ; $7a9e: $06 $07
    ld [bc], a                                    ; $7aa0: $02
    ld [bc], a                                    ; $7aa1: $02
    ld b, $07                                     ; $7aa2: $06 $07
    ld [bc], a                                    ; $7aa4: $02
    ld [bc], a                                    ; $7aa5: $02
    ld b, $07                                     ; $7aa6: $06 $07
    ld [bc], a                                    ; $7aa8: $02
    ld [bc], a                                    ; $7aa9: $02
    ld b, $07                                     ; $7aaa: $06 $07

jr_07f_7aac:
    rlca                                          ; $7aac: $07
    rlca                                          ; $7aad: $07
    ld l, $33                                     ; $7aae: $2e $33
    inc [hl]                                      ; $7ab0: $34
    dec [hl]                                      ; $7ab1: $35
    ld [hl], $36                                  ; $7ab2: $36 $36
    jr nc, jr_07f_7ae5                            ; $7ab4: $30 $2f

    scf                                           ; $7ab6: $37
    scf                                           ; $7ab7: $37
    jr c, @+$3b                                   ; $7ab8: $38 $39

    rrca                                          ; $7aba: $0f
    db $10                                        ; $7abb: $10
    add hl, bc                                    ; $7abc: $09
    ld a, [bc]                                    ; $7abd: $0a
    ld [bc], a                                    ; $7abe: $02
    ld [bc], a                                    ; $7abf: $02
    ld [bc], a                                    ; $7ac0: $02
    ld [bc], a                                    ; $7ac1: $02
    ld [bc], a                                    ; $7ac2: $02
    ld [bc], a                                    ; $7ac3: $02
    ld [hl+], a                                   ; $7ac4: $22
    ld [hl+], a                                   ; $7ac5: $22
    ld [bc], a                                    ; $7ac6: $02
    ld [bc], a                                    ; $7ac7: $02
    ld [bc], a                                    ; $7ac8: $02
    ld [bc], a                                    ; $7ac9: $02
    rlca                                          ; $7aca: $07
    rlca                                          ; $7acb: $07
    rlca                                          ; $7acc: $07
    rlca                                          ; $7acd: $07
    inc de                                        ; $7ace: $13
    dec e                                         ; $7acf: $1d
    dec d                                         ; $7ad0: $15
    ld [de], a                                    ; $7ad1: $12
    add hl, bc                                    ; $7ad2: $09
    ld a, [bc]                                    ; $7ad3: $0a
    rrca                                          ; $7ad4: $0f
    db $10                                        ; $7ad5: $10
    dec d                                         ; $7ad6: $15
    ld [de], a                                    ; $7ad7: $12
    inc de                                        ; $7ad8: $13
    inc d                                         ; $7ad9: $14
    rrca                                          ; $7ada: $0f
    db $10                                        ; $7adb: $10
    add hl, bc                                    ; $7adc: $09
    ld a, [bc]                                    ; $7add: $0a
    rlca                                          ; $7ade: $07
    ld b, $06                                     ; $7adf: $06 $06
    ld b, $07                                     ; $7ae1: $06 $07
    ld b, $06                                     ; $7ae3: $06 $06

jr_07f_7ae5:
    rlca                                          ; $7ae5: $07
    rlca                                          ; $7ae6: $07
    ld b, $06                                     ; $7ae7: $06 $06
    rlca                                          ; $7ae9: $07
    rlca                                          ; $7aea: $07
    ld b, $06                                     ; $7aeb: $06 $06
    rlca                                          ; $7aed: $07
    call c, $dcdc                                 ; $7aee: $dc $dc $dc
    jp nc, $e0e0                                  ; $7af1: $d2 $e0 $e0

    ldh [$d2], a                                  ; $7af4: $e0 $d2
    db $e4                                        ; $7af6: $e4
    db $e4                                        ; $7af7: $e4
    db $e4                                        ; $7af8: $e4
    jp nc, Jump_000_3b3a                          ; $7af9: $d2 $3a $3b

    inc a                                         ; $7afc: $3c
    jp nc, $0101                                  ; $7afd: $d2 $01 $01

    ld bc, $0180                                  ; $7b00: $01 $80 $01
    ld bc, $8001                                  ; $7b03: $01 $01 $80
    ld bc, $0101                                  ; $7b06: $01 $01 $01
    add b                                         ; $7b09: $80
    ld [bc], a                                    ; $7b0a: $02
    ld [bc], a                                    ; $7b0b: $02
    ld [bc], a                                    ; $7b0c: $02
    add b                                         ; $7b0d: $80
    pop de                                        ; $7b0e: $d1
    pop de                                        ; $7b0f: $d1
    pop de                                        ; $7b10: $d1
    pop de                                        ; $7b11: $d1
    pop de                                        ; $7b12: $d1
    pop de                                        ; $7b13: $d1
    pop de                                        ; $7b14: $d1
    pop de                                        ; $7b15: $d1
    pop de                                        ; $7b16: $d1
    pop de                                        ; $7b17: $d1
    pop de                                        ; $7b18: $d1
    pop de                                        ; $7b19: $d1
    pop de                                        ; $7b1a: $d1
    pop de                                        ; $7b1b: $d1
    pop de                                        ; $7b1c: $d1
    pop de                                        ; $7b1d: $d1
    add b                                         ; $7b1e: $80
    add b                                         ; $7b1f: $80
    add b                                         ; $7b20: $80
    add b                                         ; $7b21: $80
    add b                                         ; $7b22: $80
    add b                                         ; $7b23: $80
    add b                                         ; $7b24: $80
    add b                                         ; $7b25: $80
    add b                                         ; $7b26: $80
    add b                                         ; $7b27: $80
    add b                                         ; $7b28: $80
    add b                                         ; $7b29: $80
    add b                                         ; $7b2a: $80
    add b                                         ; $7b2b: $80
    add b                                         ; $7b2c: $80
    add b                                         ; $7b2d: $80
    dec a                                         ; $7b2e: $3d
    ld a, $3f                                     ; $7b2f: $3e $3f
    jp nc, Jump_07f_4140                          ; $7b31: $d2 $40 $41

    ld b, d                                       ; $7b34: $42
    jp nc, Jump_07f_4443                          ; $7b35: $d2 $43 $44

    ld b, l                                       ; $7b38: $45
    jp nc, Jump_000_100f                          ; $7b39: $d2 $0f $10

    add hl, bc                                    ; $7b3c: $09
    jp nc, $0202                                  ; $7b3d: $d2 $02 $02

    ld [bc], a                                    ; $7b40: $02
    add b                                         ; $7b41: $80
    ld [bc], a                                    ; $7b42: $02
    ld [bc], a                                    ; $7b43: $02
    ld [bc], a                                    ; $7b44: $02
    add b                                         ; $7b45: $80
    ld [bc], a                                    ; $7b46: $02
    ld [bc], a                                    ; $7b47: $02
    ld [bc], a                                    ; $7b48: $02
    add b                                         ; $7b49: $80
    rlca                                          ; $7b4a: $07
    rlca                                          ; $7b4b: $07
    rlca                                          ; $7b4c: $07
    add b                                         ; $7b4d: $80
    inc de                                        ; $7b4e: $13
    dec e                                         ; $7b4f: $1d
    dec d                                         ; $7b50: $15
    jp nc, $0a09                                  ; $7b51: $d2 $09 $0a

    rrca                                          ; $7b54: $0f
    jp nc, Jump_000_1215                          ; $7b55: $d2 $15 $12

    inc de                                        ; $7b58: $13
    jp nc, Jump_000_100f                          ; $7b59: $d2 $0f $10

    add hl, bc                                    ; $7b5c: $09
    jp nc, Jump_000_0606                          ; $7b5d: $d2 $06 $06

    rlca                                          ; $7b60: $07
    add b                                         ; $7b61: $80
    ld b, $06                                     ; $7b62: $06 $06
    rlca                                          ; $7b64: $07
    add b                                         ; $7b65: $80
    ld b, $06                                     ; $7b66: $06 $06
    rlca                                          ; $7b68: $07
    add b                                         ; $7b69: $80
    ld b, $06                                     ; $7b6a: $06 $06
    rlca                                          ; $7b6c: $07
    add b                                         ; $7b6d: $80
    ld b, [hl]                                    ; $7b6e: $46
    ld b, a                                       ; $7b6f: $47
    ld c, b                                       ; $7b70: $48
    jp nc, Jump_07f_4a49                          ; $7b71: $d2 $49 $4a

    ld c, e                                       ; $7b74: $4b
    jp nc, Jump_07f_4d4c                          ; $7b75: $d2 $4c $4d

    ld c, [hl]                                    ; $7b78: $4e
    jp nc, Jump_07f_504f                          ; $7b79: $d2 $4f $50

    ld d, c                                       ; $7b7c: $51
    jp nc, Jump_000_0404                          ; $7b7d: $d2 $04 $04

    inc b                                         ; $7b80: $04
    add b                                         ; $7b81: $80
    inc b                                         ; $7b82: $04
    inc b                                         ; $7b83: $04
    inc b                                         ; $7b84: $04
    add b                                         ; $7b85: $80
    inc b                                         ; $7b86: $04
    inc b                                         ; $7b87: $04
    inc b                                         ; $7b88: $04
    add b                                         ; $7b89: $80
    inc b                                         ; $7b8a: $04
    inc b                                         ; $7b8b: $04
    inc b                                         ; $7b8c: $04
    add b                                         ; $7b8d: $80
    inc de                                        ; $7b8e: $13
    dec e                                         ; $7b8f: $1d
    dec d                                         ; $7b90: $15
    ld [de], a                                    ; $7b91: $12
    add hl, bc                                    ; $7b92: $09
    ld d, d                                       ; $7b93: $52
    ld d, e                                       ; $7b94: $53
    ld d, d                                       ; $7b95: $52
    dec d                                         ; $7b96: $15
    ld d, h                                       ; $7b97: $54
    ld d, l                                       ; $7b98: $55
    ld d, h                                       ; $7b99: $54
    rrca                                          ; $7b9a: $0f
    ld d, [hl]                                    ; $7b9b: $56
    ld d, a                                       ; $7b9c: $57
    ld e, b                                       ; $7b9d: $58
    ld b, $06                                     ; $7b9e: $06 $06
    ld b, $06                                     ; $7ba0: $06 $06
    ld b, $01                                     ; $7ba2: $06 $01
    ld bc, $0621                                  ; $7ba4: $01 $21 $06
    ld bc, $2101                                  ; $7ba7: $01 $01 $21
    ld b, $02                                     ; $7baa: $06 $02
    ld [bc], a                                    ; $7bac: $02
    ld [bc], a                                    ; $7bad: $02
    inc de                                        ; $7bae: $13
    dec e                                         ; $7baf: $1d
    dec d                                         ; $7bb0: $15
    ld [de], a                                    ; $7bb1: $12
    add hl, bc                                    ; $7bb2: $09
    ld a, [bc]                                    ; $7bb3: $0a
    rrca                                          ; $7bb4: $0f
    ld d, d                                       ; $7bb5: $52
    dec d                                         ; $7bb6: $15
    ld [de], a                                    ; $7bb7: $12
    inc de                                        ; $7bb8: $13
    ld d, h                                       ; $7bb9: $54
    rrca                                          ; $7bba: $0f
    db $10                                        ; $7bbb: $10
    add hl, bc                                    ; $7bbc: $09
    ld d, [hl]                                    ; $7bbd: $56
    ld b, $06                                     ; $7bbe: $06 $06
    ld b, $06                                     ; $7bc0: $06 $06
    ld b, $06                                     ; $7bc2: $06 $06
    ld b, $01                                     ; $7bc4: $06 $01
    ld b, $06                                     ; $7bc6: $06 $06
    ld b, $01                                     ; $7bc8: $06 $01
    ld b, $06                                     ; $7bca: $06 $06
    ld b, $02                                     ; $7bcc: $06 $02
    inc de                                        ; $7bce: $13
    dec e                                         ; $7bcf: $1d
    dec d                                         ; $7bd0: $15
    ld [de], a                                    ; $7bd1: $12
    ld d, e                                       ; $7bd2: $53
    ld d, d                                       ; $7bd3: $52
    rrca                                          ; $7bd4: $0f
    db $10                                        ; $7bd5: $10
    ld d, l                                       ; $7bd6: $55
    ld d, h                                       ; $7bd7: $54
    inc de                                        ; $7bd8: $13
    inc d                                         ; $7bd9: $14
    ld d, a                                       ; $7bda: $57
    ld e, b                                       ; $7bdb: $58
    add hl, bc                                    ; $7bdc: $09
    ld a, [bc]                                    ; $7bdd: $0a
    ld b, $06                                     ; $7bde: $06 $06
    ld b, $07                                     ; $7be0: $06 $07
    ld bc, $0621                                  ; $7be2: $01 $21 $06
    rlca                                          ; $7be5: $07
    ld bc, $0621                                  ; $7be6: $01 $21 $06
    rlca                                          ; $7be9: $07
    ld [bc], a                                    ; $7bea: $02
    ld [bc], a                                    ; $7beb: $02
    ld b, $07                                     ; $7bec: $06 $07
    inc de                                        ; $7bee: $13
    ld e, c                                       ; $7bef: $59
    ld e, d                                       ; $7bf0: $5a
    ld e, e                                       ; $7bf1: $5b
    add hl, bc                                    ; $7bf2: $09
    ld a, [bc]                                    ; $7bf3: $0a
    rrca                                          ; $7bf4: $0f
    db $10                                        ; $7bf5: $10
    dec d                                         ; $7bf6: $15
    ld d, d                                       ; $7bf7: $52
    ld d, e                                       ; $7bf8: $53
    ld e, h                                       ; $7bf9: $5c
    rrca                                          ; $7bfa: $0f
    ld d, h                                       ; $7bfb: $54
    ld e, l                                       ; $7bfc: $5d
    ld e, [hl]                                    ; $7bfd: $5e
    ld b, $02                                     ; $7bfe: $06 $02
    ld [bc], a                                    ; $7c00: $02
    ld [bc], a                                    ; $7c01: $02
    ld b, $06                                     ; $7c02: $06 $06
    ld b, $06                                     ; $7c04: $06 $06
    ld b, $01                                     ; $7c06: $06 $01
    ld bc, $0601                                  ; $7c08: $01 $01 $06
    ld bc, $0101                                  ; $7c0b: $01 $01 $01
    inc de                                        ; $7c0e: $13
    dec e                                         ; $7c0f: $1d
    dec d                                         ; $7c10: $15
    ld e, a                                       ; $7c11: $5f
    add hl, bc                                    ; $7c12: $09
    ld a, [bc]                                    ; $7c13: $0a
    rrca                                          ; $7c14: $0f
    db $10                                        ; $7c15: $10
    dec d                                         ; $7c16: $15
    ld [de], a                                    ; $7c17: $12
    inc de                                        ; $7c18: $13
    ld d, d                                       ; $7c19: $52
    rrca                                          ; $7c1a: $0f
    db $10                                        ; $7c1b: $10
    add hl, bc                                    ; $7c1c: $09
    ld d, h                                       ; $7c1d: $54
    ld b, $06                                     ; $7c1e: $06 $06
    ld b, $02                                     ; $7c20: $06 $02
    ld b, $06                                     ; $7c22: $06 $06
    ld b, $06                                     ; $7c24: $06 $06
    ld b, $06                                     ; $7c26: $06 $06
    ld b, $01                                     ; $7c28: $06 $01
    ld b, $06                                     ; $7c2a: $06 $06
    ld b, $01                                     ; $7c2c: $06 $01
    ld e, d                                       ; $7c2e: $5a
    ld h, b                                       ; $7c2f: $60
    dec d                                         ; $7c30: $15
    ld [de], a                                    ; $7c31: $12
    add hl, bc                                    ; $7c32: $09
    ld a, [bc]                                    ; $7c33: $0a
    rrca                                          ; $7c34: $0f
    db $10                                        ; $7c35: $10
    ld d, e                                       ; $7c36: $53
    ld d, d                                       ; $7c37: $52
    inc de                                        ; $7c38: $13
    inc d                                         ; $7c39: $14
    ld d, l                                       ; $7c3a: $55
    ld d, h                                       ; $7c3b: $54
    add hl, bc                                    ; $7c3c: $09
    ld a, [bc]                                    ; $7c3d: $0a
    ld [bc], a                                    ; $7c3e: $02
    ld [bc], a                                    ; $7c3f: $02
    ld b, $07                                     ; $7c40: $06 $07
    ld b, $06                                     ; $7c42: $06 $06
    ld b, $07                                     ; $7c44: $06 $07
    ld bc, $0621                                  ; $7c46: $01 $21 $06
    rlca                                          ; $7c49: $07
    ld bc, $0621                                  ; $7c4a: $01 $21 $06
    ld b, $13                                     ; $7c4d: $06 $13
    ld d, [hl]                                    ; $7c4f: $56
    ld d, a                                       ; $7c50: $57
    ld e, b                                       ; $7c51: $58
    add hl, bc                                    ; $7c52: $09
    ld h, c                                       ; $7c53: $61
    ld e, d                                       ; $7c54: $5a
    ld e, e                                       ; $7c55: $5b
    dec d                                         ; $7c56: $15
    ld [de], a                                    ; $7c57: $12
    inc de                                        ; $7c58: $13
    inc d                                         ; $7c59: $14
    rrca                                          ; $7c5a: $0f
    ld d, d                                       ; $7c5b: $52
    ld d, e                                       ; $7c5c: $53
    ld d, d                                       ; $7c5d: $52
    ld b, $02                                     ; $7c5e: $06 $02
    ld [bc], a                                    ; $7c60: $02
    ld [bc], a                                    ; $7c61: $02
    ld b, $02                                     ; $7c62: $06 $02
    ld [bc], a                                    ; $7c64: $02
    ld [bc], a                                    ; $7c65: $02
    ld b, $06                                     ; $7c66: $06 $06
    ld b, $06                                     ; $7c68: $06 $06
    ld b, $01                                     ; $7c6a: $06 $01
    ld bc, $1321                                  ; $7c6c: $01 $21 $13
    dec e                                         ; $7c6f: $1d
    dec d                                         ; $7c70: $15
    ld d, [hl]                                    ; $7c71: $56
    add hl, bc                                    ; $7c72: $09
    ld a, [bc]                                    ; $7c73: $0a
    rrca                                          ; $7c74: $0f
    ld h, d                                       ; $7c75: $62
    dec d                                         ; $7c76: $15
    ld [de], a                                    ; $7c77: $12
    inc de                                        ; $7c78: $13
    inc d                                         ; $7c79: $14
    rrca                                          ; $7c7a: $0f
    db $10                                        ; $7c7b: $10
    add hl, bc                                    ; $7c7c: $09
    ld d, d                                       ; $7c7d: $52
    ld b, $06                                     ; $7c7e: $06 $06
    ld b, $02                                     ; $7c80: $06 $02
    ld b, $06                                     ; $7c82: $06 $06
    ld b, $02                                     ; $7c84: $06 $02
    ld b, $06                                     ; $7c86: $06 $06
    ld b, $06                                     ; $7c88: $06 $06
    ld b, $06                                     ; $7c8a: $06 $06
    ld b, $01                                     ; $7c8c: $06 $01
    ld d, a                                       ; $7c8e: $57
    ld e, b                                       ; $7c8f: $58
    dec d                                         ; $7c90: $15
    ld [de], a                                    ; $7c91: $12
    ld e, d                                       ; $7c92: $5a
    ld h, b                                       ; $7c93: $60
    rrca                                          ; $7c94: $0f
    db $10                                        ; $7c95: $10
    dec d                                         ; $7c96: $15
    ld [de], a                                    ; $7c97: $12
    inc de                                        ; $7c98: $13
    inc d                                         ; $7c99: $14
    ld d, e                                       ; $7c9a: $53
    ld d, d                                       ; $7c9b: $52
    add hl, bc                                    ; $7c9c: $09
    ld a, [bc]                                    ; $7c9d: $0a
    ld [bc], a                                    ; $7c9e: $02
    ld [bc], a                                    ; $7c9f: $02
    ld b, $06                                     ; $7ca0: $06 $06
    ld [bc], a                                    ; $7ca2: $02
    ld [bc], a                                    ; $7ca3: $02
    ld b, $06                                     ; $7ca4: $06 $06
    ld b, $06                                     ; $7ca6: $06 $06
    ld b, $06                                     ; $7ca8: $06 $06
    ld bc, $0621                                  ; $7caa: $01 $21 $06
    ld b, $13                                     ; $7cad: $06 $13
    ld d, h                                       ; $7caf: $54
    ld d, l                                       ; $7cb0: $55
    ld d, h                                       ; $7cb1: $54
    add hl, bc                                    ; $7cb2: $09
    ld d, [hl]                                    ; $7cb3: $56
    ld d, a                                       ; $7cb4: $57
    ld e, b                                       ; $7cb5: $58
    dec d                                         ; $7cb6: $15
    ld e, a                                       ; $7cb7: $5f
    ld e, d                                       ; $7cb8: $5a
    ld h, b                                       ; $7cb9: $60
    rrca                                          ; $7cba: $0f
    db $10                                        ; $7cbb: $10
    add hl, bc                                    ; $7cbc: $09
    ld a, [bc]                                    ; $7cbd: $0a
    ld b, $01                                     ; $7cbe: $06 $01
    ld bc, $0621                                  ; $7cc0: $01 $21 $06
    ld [bc], a                                    ; $7cc3: $02
    ld [bc], a                                    ; $7cc4: $02
    ld [bc], a                                    ; $7cc5: $02
    ld b, $02                                     ; $7cc6: $06 $02
    ld [bc], a                                    ; $7cc8: $02
    ld [bc], a                                    ; $7cc9: $02
    ld b, $06                                     ; $7cca: $06 $06
    ld b, $06                                     ; $7ccc: $06 $06
    inc de                                        ; $7cce: $13
    dec e                                         ; $7ccf: $1d
    dec d                                         ; $7cd0: $15
    ld d, h                                       ; $7cd1: $54
    add hl, bc                                    ; $7cd2: $09
    ld a, [bc]                                    ; $7cd3: $0a
    rrca                                          ; $7cd4: $0f
    ld d, [hl]                                    ; $7cd5: $56
    dec d                                         ; $7cd6: $15
    ld [de], a                                    ; $7cd7: $12
    inc de                                        ; $7cd8: $13
    ld e, c                                       ; $7cd9: $59
    rrca                                          ; $7cda: $0f
    db $10                                        ; $7cdb: $10
    add hl, bc                                    ; $7cdc: $09
    ld a, [bc]                                    ; $7cdd: $0a
    ld b, $06                                     ; $7cde: $06 $06
    ld b, $01                                     ; $7ce0: $06 $01
    ld b, $06                                     ; $7ce2: $06 $06
    ld b, $02                                     ; $7ce4: $06 $02
    ld b, $06                                     ; $7ce6: $06 $06
    ld b, $02                                     ; $7ce8: $06 $02
    ld b, $06                                     ; $7cea: $06 $06
    ld b, $06                                     ; $7cec: $06 $06
    ld h, e                                       ; $7cee: $63
    ld d, h                                       ; $7cef: $54
    dec d                                         ; $7cf0: $15
    ld [de], a                                    ; $7cf1: $12
    ld d, a                                       ; $7cf2: $57
    ld e, b                                       ; $7cf3: $58
    rrca                                          ; $7cf4: $0f
    db $10                                        ; $7cf5: $10
    ld e, d                                       ; $7cf6: $5a
    ld e, e                                       ; $7cf7: $5b
    inc de                                        ; $7cf8: $13
    inc d                                         ; $7cf9: $14
    rrca                                          ; $7cfa: $0f
    db $10                                        ; $7cfb: $10
    add hl, bc                                    ; $7cfc: $09
    ld a, [bc]                                    ; $7cfd: $0a
    ld bc, $0621                                  ; $7cfe: $01 $21 $06
    ld b, $02                                     ; $7d01: $06 $02
    ld [bc], a                                    ; $7d03: $02
    ld b, $06                                     ; $7d04: $06 $06
    ld [bc], a                                    ; $7d06: $02
    ld [bc], a                                    ; $7d07: $02
    ld b, $06                                     ; $7d08: $06 $06
    ld b, $06                                     ; $7d0a: $06 $06
    ld b, $06                                     ; $7d0c: $06 $06
    ld h, h                                       ; $7d0e: $64
    ld h, l                                       ; $7d0f: $65
    ld h, [hl]                                    ; $7d10: $66
    jp nc, $6867                                  ; $7d11: $d2 $67 $68

    ld l, c                                       ; $7d14: $69
    jp nc, Jump_07f_6b6a                          ; $7d15: $d2 $6a $6b

    ld l, h                                       ; $7d18: $6c
    jp nc, Jump_07f_6e6d                          ; $7d19: $d2 $6d $6e

    ld l, a                                       ; $7d1c: $6f
    jp nc, Jump_000_0505                          ; $7d1d: $d2 $05 $05

    dec b                                         ; $7d20: $05
    add b                                         ; $7d21: $80
    dec b                                         ; $7d22: $05
    dec b                                         ; $7d23: $05
    dec b                                         ; $7d24: $05
    add b                                         ; $7d25: $80
    inc b                                         ; $7d26: $04
    inc b                                         ; $7d27: $04
    inc b                                         ; $7d28: $04
    add b                                         ; $7d29: $80
    inc b                                         ; $7d2a: $04
    inc b                                         ; $7d2b: $04
    inc b                                         ; $7d2c: $04
    add b                                         ; $7d2d: $80
    ld [hl], b                                    ; $7d2e: $70
    ld [hl], c                                    ; $7d2f: $71
    ld [hl], d                                    ; $7d30: $72
    jp nc, Jump_000_0a73                          ; $7d31: $d2 $73 $0a

    ld [hl], h                                    ; $7d34: $74
    jp nc, Jump_000_1215                          ; $7d35: $d2 $15 $12

    inc de                                        ; $7d38: $13
    ld [hl], l                                    ; $7d39: $75
    rrca                                          ; $7d3a: $0f
    db $10                                        ; $7d3b: $10
    add hl, bc                                    ; $7d3c: $09
    db $fc                                        ; $7d3d: $fc
    ld bc, $0101                                  ; $7d3e: $01 $01 $01
    add b                                         ; $7d41: $80
    ld bc, $0107                                  ; $7d42: $01 $07 $01
    add b                                         ; $7d45: $80
    rlca                                          ; $7d46: $07
    rlca                                          ; $7d47: $07
    rlca                                          ; $7d48: $07
    add b                                         ; $7d49: $80
    ld b, $06                                     ; $7d4a: $06 $06
    rlca                                          ; $7d4c: $07
    ld bc, $d1d1                                  ; $7d4d: $01 $d1 $d1
    pop de                                        ; $7d50: $d1
    pop de                                        ; $7d51: $d1
    pop de                                        ; $7d52: $d1
    pop de                                        ; $7d53: $d1
    pop de                                        ; $7d54: $d1
    pop de                                        ; $7d55: $d1
    halt                                          ; $7d56: $76
    halt                                          ; $7d57: $76
    ld [hl], a                                    ; $7d58: $77
    pop de                                        ; $7d59: $d1
    call c, $d2dc                                 ; $7d5a: $dc $dc $d2
    pop de                                        ; $7d5d: $d1
    add b                                         ; $7d5e: $80
    add b                                         ; $7d5f: $80
    add b                                         ; $7d60: $80
    add b                                         ; $7d61: $80
    add b                                         ; $7d62: $80
    add b                                         ; $7d63: $80
    add b                                         ; $7d64: $80
    add b                                         ; $7d65: $80
    add b                                         ; $7d66: $80
    add b                                         ; $7d67: $80
    add b                                         ; $7d68: $80
    add b                                         ; $7d69: $80
    ld bc, $8001                                  ; $7d6a: $01 $01 $80
    add b                                         ; $7d6d: $80
    inc de                                        ; $7d6e: $13
    dec e                                         ; $7d6f: $1d
    dec d                                         ; $7d70: $15
    cp $09                                        ; $7d71: $fe $09
    ld a, [bc]                                    ; $7d73: $0a
    rrca                                          ; $7d74: $0f
    nop                                           ; $7d75: $00
    dec d                                         ; $7d76: $15
    ld [de], a                                    ; $7d77: $12
    inc de                                        ; $7d78: $13
    ld [bc], a                                    ; $7d79: $02
    rrca                                          ; $7d7a: $0f
    db $10                                        ; $7d7b: $10
    add hl, bc                                    ; $7d7c: $09
    ld a, b                                       ; $7d7d: $78
    ld b, $06                                     ; $7d7e: $06 $06
    rlca                                          ; $7d80: $07
    ld bc, $0606                                  ; $7d81: $01 $06 $06
    rlca                                          ; $7d84: $07
    ld bc, $0606                                  ; $7d85: $01 $06 $06
    rlca                                          ; $7d88: $07
    ld bc, $0606                                  ; $7d89: $01 $06 $06
    rlca                                          ; $7d8c: $07
    ld bc, $e0e0                                  ; $7d8d: $01 $e0 $e0
    ld a, c                                       ; $7d90: $79
    pop de                                        ; $7d91: $d1
    db $e4                                        ; $7d92: $e4
    db $e4                                        ; $7d93: $e4
    ld a, c                                       ; $7d94: $79
    pop de                                        ; $7d95: $d1
    add sp, -$18                                  ; $7d96: $e8 $e8
    ld a, c                                       ; $7d98: $79
    pop de                                        ; $7d99: $d1
    inc c                                         ; $7d9a: $0c
    inc c                                         ; $7d9b: $0c
    ld a, c                                       ; $7d9c: $79
    pop de                                        ; $7d9d: $d1
    ld bc, $8001                                  ; $7d9e: $01 $01 $80
    add b                                         ; $7da1: $80
    ld bc, $8001                                  ; $7da2: $01 $01 $80
    add b                                         ; $7da5: $80
    ld bc, $8001                                  ; $7da6: $01 $01 $80
    add b                                         ; $7da9: $80
    ld bc, $8001                                  ; $7daa: $01 $01 $80
    add b                                         ; $7dad: $80
    inc de                                        ; $7dae: $13
    dec e                                         ; $7daf: $1d
    dec d                                         ; $7db0: $15
    ld [de], a                                    ; $7db1: $12
    add hl, bc                                    ; $7db2: $09
    ld a, [bc]                                    ; $7db3: $0a
    rrca                                          ; $7db4: $0f
    db $10                                        ; $7db5: $10
    dec d                                         ; $7db6: $15
    ld [de], a                                    ; $7db7: $12
    inc de                                        ; $7db8: $13
    ld a, d                                       ; $7db9: $7a
    rrca                                          ; $7dba: $0f
    db $10                                        ; $7dbb: $10
    add hl, bc                                    ; $7dbc: $09
    jp nc, Jump_000_0606                          ; $7dbd: $d2 $06 $06

    rlca                                          ; $7dc0: $07
    rlca                                          ; $7dc1: $07
    ld b, $06                                     ; $7dc2: $06 $06
    ld b, $06                                     ; $7dc4: $06 $06
    ld b, $06                                     ; $7dc6: $06 $06
    ld b, $80                                     ; $7dc8: $06 $80
    ld b, $06                                     ; $7dca: $06 $06
    ld b, $80                                     ; $7dcc: $06 $80
    inc de                                        ; $7dce: $13
    dec e                                         ; $7dcf: $1d
    ld a, c                                       ; $7dd0: $79
    ld a, e                                       ; $7dd1: $7b
    add hl, bc                                    ; $7dd2: $09
    ld a, [bc]                                    ; $7dd3: $0a
    jp nc, Jump_07f_767b                          ; $7dd4: $d2 $7b $76

    halt                                          ; $7dd7: $76
    ld a, h                                       ; $7dd8: $7c
    ld a, e                                       ; $7dd9: $7b
    pop de                                        ; $7dda: $d1
    pop de                                        ; $7ddb: $d1
    pop de                                        ; $7ddc: $d1
    pop de                                        ; $7ddd: $d1
    rlca                                          ; $7dde: $07
    rlca                                          ; $7ddf: $07
    add b                                         ; $7de0: $80
    add b                                         ; $7de1: $80
    ld b, $07                                     ; $7de2: $06 $07
    add b                                         ; $7de4: $80
    add b                                         ; $7de5: $80
    add b                                         ; $7de6: $80
    add b                                         ; $7de7: $80
    add b                                         ; $7de8: $80
    add b                                         ; $7de9: $80
    add b                                         ; $7dea: $80
    add b                                         ; $7deb: $80
    add b                                         ; $7dec: $80
    add b                                         ; $7ded: $80
    pop de                                        ; $7dee: $d1
    jp nc, Jump_000_1215                          ; $7def: $d2 $15 $12

    pop de                                        ; $7df2: $d1
    ld [hl], l                                    ; $7df3: $75
    halt                                          ; $7df4: $76
    halt                                          ; $7df5: $76
    pop de                                        ; $7df6: $d1
    pop de                                        ; $7df7: $d1
    pop de                                        ; $7df8: $d1
    pop de                                        ; $7df9: $d1
    pop de                                        ; $7dfa: $d1
    pop de                                        ; $7dfb: $d1
    pop de                                        ; $7dfc: $d1
    pop de                                        ; $7dfd: $d1
    add b                                         ; $7dfe: $80
    add b                                         ; $7dff: $80
    rlca                                          ; $7e00: $07
    ld b, $80                                     ; $7e01: $06 $80
    add b                                         ; $7e03: $80
    add b                                         ; $7e04: $80
    add b                                         ; $7e05: $80
    add b                                         ; $7e06: $80
    add b                                         ; $7e07: $80
    add b                                         ; $7e08: $80
    add b                                         ; $7e09: $80
    add b                                         ; $7e0a: $80
    add b                                         ; $7e0b: $80
    add b                                         ; $7e0c: $80
    add b                                         ; $7e0d: $80
    inc de                                        ; $7e0e: $13
    dec e                                         ; $7e0f: $1d
    dec d                                         ; $7e10: $15
    ld [de], a                                    ; $7e11: $12
    halt                                          ; $7e12: $76
    halt                                          ; $7e13: $76
    halt                                          ; $7e14: $76
    halt                                          ; $7e15: $76
    pop de                                        ; $7e16: $d1
    pop de                                        ; $7e17: $d1
    pop de                                        ; $7e18: $d1
    pop de                                        ; $7e19: $d1
    pop de                                        ; $7e1a: $d1
    pop de                                        ; $7e1b: $d1
    pop de                                        ; $7e1c: $d1
    pop de                                        ; $7e1d: $d1
    ld b, $06                                     ; $7e1e: $06 $06
    ld b, $06                                     ; $7e20: $06 $06
    add b                                         ; $7e22: $80
    add b                                         ; $7e23: $80
    add b                                         ; $7e24: $80
    add b                                         ; $7e25: $80
    add b                                         ; $7e26: $80
    add b                                         ; $7e27: $80
    add b                                         ; $7e28: $80
    add b                                         ; $7e29: $80
    add b                                         ; $7e2a: $80
    add b                                         ; $7e2b: $80
    add b                                         ; $7e2c: $80
    add b                                         ; $7e2d: $80
    inc de                                        ; $7e2e: $13
    dec e                                         ; $7e2f: $1d
    dec d                                         ; $7e30: $15
    jp nc, Jump_07f_7676                          ; $7e31: $d2 $76 $76

    halt                                          ; $7e34: $76
    ld a, h                                       ; $7e35: $7c
    pop de                                        ; $7e36: $d1
    pop de                                        ; $7e37: $d1
    pop de                                        ; $7e38: $d1
    pop de                                        ; $7e39: $d1
    pop de                                        ; $7e3a: $d1
    pop de                                        ; $7e3b: $d1
    pop de                                        ; $7e3c: $d1
    pop de                                        ; $7e3d: $d1
    ld b, $06                                     ; $7e3e: $06 $06
    rlca                                          ; $7e40: $07
    add b                                         ; $7e41: $80
    add b                                         ; $7e42: $80
    add b                                         ; $7e43: $80
    add b                                         ; $7e44: $80
    add b                                         ; $7e45: $80
    add b                                         ; $7e46: $80
    add b                                         ; $7e47: $80
    add b                                         ; $7e48: $80
    add b                                         ; $7e49: $80
    add b                                         ; $7e4a: $80
    add b                                         ; $7e4b: $80
    add b                                         ; $7e4c: $80
    add b                                         ; $7e4d: $80

    db $34, $01, $00, $00, $00, $01, $00, $02, $00, $03, $00, $00, $10, $00, $11, $00
    db $12, $00, $13, $00, $00, $20, $00, $04, $00, $05, $00, $06, $00, $00, $07, $00
    db $14, $00, $15, $00, $16, $00, $00, $17, $00, $21, $00, $08, $00, $09, $00, $00
    db $0a, $00, $0b, $00, $18, $00, $19, $00, $00, $1a, $00, $1b, $00, $22, $00, $0c
    db $00, $00, $0d, $00, $0e, $00, $0f, $00, $1c, $00, $01, $1d, $00, $1e, $00, $1f
    db $00, $23, $24, $00, $00, $24, $00, $25, $00, $26, $00, $33, $00, $04, $34, $00
    db $35, $00, $36, $24, $00, $27, $00, $00, $28, $00, $29, $00, $2a, $00, $37, $00
    db $00, $38, $00, $39, $00, $3a, $00, $43, $00, $00, $2b, $00, $2c, $00, $2d, $00
    db $2e, $00, $00, $3b, $00, $3c, $00, $3d, $00, $3e, $00, $00, $44, $00, $2f, $00
    db $30, $00, $31, $00, $00, $32, $00, $3f, $00, $40, $00, $41, $00, $10, $42, $00
    db $45, $24, $00, $46, $00, $47, $00, $00, $48, $00, $53, $00, $54, $00, $55, $00
    db $40, $56, $24, $10, $49, $00, $4a, $00, $4b, $00, $01, $57, $00, $58, $00, $59
    db $00, $5a, $24, $10, $00, $4c, $00, $4d, $00, $4e, $00, $5b, $00, $04, $5c, $00
    db $5d, $00, $5e, $48, $00, $4f, $00, $00, $50, $00, $51, $00, $52, $00, $5f, $00
    db $00, $60, $00, $61, $00, $62, $00, $63, $00, $00, $64, $00, $65, $00, $66, $00
    db $67, $00, $00, $72, $00, $73, $00, $74, $00, $75, $00, $00, $82, $00, $68, $00
    db $69, $00, $6a, $00, $00, $6b, $00, $76, $00, $77, $00, $78, $00, $10, $79, $00
    db $83, $24, $00, $6c, $00, $6d, $00, $00, $6e, $00, $7a, $00, $7b, $00, $7c, $00
    db $40, $7d, $24, $10, $6f, $00, $70, $00, $71, $00, $01, $7e, $00, $7f, $00, $80
    db $00, $81, $24, $10, $00, $84, $00, $85, $00, $86, $00, $8e, $00, $04, $8f, $00
    db $90, $00, $91, $48, $00, $87, $00, $00, $88, $00, $89, $00, $8a, $00, $92, $00
    db $00, $93, $00, $94, $00, $95, $00, $98, $00, $10, $8b, $00, $8c, $02, $00, $8d
    db $00, $96, $00, $40, $97, $0a, $10, $99, $00, $2e, $00, $00, $00, $00, $01, $00
    db $02, $00, $03, $00, $00, $10, $00, $04, $00, $05, $00, $06, $00, $00, $07, $00
    db $11, $00, $08, $00, $09, $00, $00, $0a, $00, $0b, $00, $12, $00, $0c, $00, $00
    db $0d, $00, $0e, $00, $0f, $00, $13, $00, $44, $14, $02, $00, $15, $00, $16, $08
    db $00

    ld h, b                                       ; $7fef: $60
    ld c, l                                       ; $7ff0: $4d
    call nc, $0d03                                ; $7ff1: $d4 $03 $0d
    ld d, h                                       ; $7ff4: $54
    add b                                         ; $7ff5: $80
    nop                                           ; $7ff6: $00
    add b                                         ; $7ff7: $80
    ld bc, $067f                                  ; $7ff8: $01 $7f $06
    ld h, b                                       ; $7ffb: $60
    ld c, l                                       ; $7ffc: $4d
    nop                                           ; $7ffd: $00
    nop                                           ; $7ffe: $00
    rst $38                                       ; $7fff: $ff
