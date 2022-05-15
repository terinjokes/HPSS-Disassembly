; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $081", ROMX[$4000], BANK[$81]

    add c                                         ; $4000: $81
    ld sp, $3332                                  ; $4001: $31 $32 $33
    inc [hl]                                      ; $4004: $34
    dec [hl]                                      ; $4005: $35
    ld [hl], $37                                  ; $4006: $36 $37
    jr c, @+$3b                                   ; $4008: $38 $39

    jr nc, jr_081_403d                            ; $400a: $30 $31

    ld [hl-], a                                   ; $400c: $32
    inc sp                                        ; $400d: $33
    inc [hl]                                      ; $400e: $34
    dec [hl]                                      ; $400f: $35
    add hl, de                                    ; $4010: $19
    nop                                           ; $4011: $00
    inc d                                         ; $4012: $14
    nop                                           ; $4013: $00
    add b                                         ; $4014: $80
    add hl, sp                                    ; $4015: $39
    pop de                                        ; $4016: $d1
    jp nc, $d4d3                                  ; $4017: $d2 $d3 $d4

    push de                                       ; $401a: $d5
    sub $d7                                       ; $401b: $d6 $d7
    ret c                                         ; $401d: $d8

    reti                                          ; $401e: $d9


    jp c, $dcdb                                   ; $401f: $da $db $dc

    db $dd                                        ; $4022: $dd
    sbc $df                                       ; $4023: $de $df
    ldh [$82], a                                  ; $4025: $e0 $82
    add d                                         ; $4027: $82
    add d                                         ; $4028: $82
    add d                                         ; $4029: $82
    add d                                         ; $402a: $82
    add d                                         ; $402b: $82
    add d                                         ; $402c: $82
    add d                                         ; $402d: $82
    add d                                         ; $402e: $82
    add d                                         ; $402f: $82
    add d                                         ; $4030: $82
    add d                                         ; $4031: $82
    add d                                         ; $4032: $82
    add e                                         ; $4033: $83
    and d                                         ; $4034: $a2
    and d                                         ; $4035: $a2
    pop hl                                        ; $4036: $e1
    db $dd                                        ; $4037: $dd
    ld [c], a                                     ; $4038: $e2
    db $e3                                        ; $4039: $e3
    db $e4                                        ; $403a: $e4
    db $dd                                        ; $403b: $dd
    push hl                                       ; $403c: $e5

jr_081_403d:
    and $e7                                       ; $403d: $e6 $e7
    db $dd                                        ; $403f: $dd
    add sp, -$17                                  ; $4040: $e8 $e9
    ld [$ebdd], a                                 ; $4042: $ea $dd $eb
    db $ec                                        ; $4045: $ec
    add d                                         ; $4046: $82
    add d                                         ; $4047: $82
    inc b                                         ; $4048: $04
    inc b                                         ; $4049: $04
    add d                                         ; $404a: $82
    add d                                         ; $404b: $82
    inc b                                         ; $404c: $04
    inc b                                         ; $404d: $04
    add d                                         ; $404e: $82
    add d                                         ; $404f: $82
    inc b                                         ; $4050: $04
    inc b                                         ; $4051: $04
    and d                                         ; $4052: $a2
    add d                                         ; $4053: $82
    inc b                                         ; $4054: $04
    inc b                                         ; $4055: $04
    db $ed                                        ; $4056: $ed
    xor $ef                                       ; $4057: $ee $ef
    ldh a, [$f1]                                  ; $4059: $f0 $f1
    ld a, [c]                                     ; $405b: $f2
    di                                            ; $405c: $f3
    db $f4                                        ; $405d: $f4
    push af                                       ; $405e: $f5
    or $f7                                        ; $405f: $f6 $f7
    ld hl, sp-$07                                 ; $4061: $f8 $f9
    ld a, [$fbfb]                                 ; $4063: $fa $fb $fb
    inc b                                         ; $4066: $04
    inc b                                         ; $4067: $04
    inc b                                         ; $4068: $04
    inc b                                         ; $4069: $04
    inc b                                         ; $406a: $04
    inc b                                         ; $406b: $04
    inc b                                         ; $406c: $04
    inc b                                         ; $406d: $04
    inc b                                         ; $406e: $04
    inc b                                         ; $406f: $04
    inc b                                         ; $4070: $04
    inc b                                         ; $4071: $04
    inc b                                         ; $4072: $04
    inc b                                         ; $4073: $04
    inc b                                         ; $4074: $04
    inc b                                         ; $4075: $04
    db $fc                                        ; $4076: $fc
    db $fd                                        ; $4077: $fd
    cp $ff                                        ; $4078: $fe $ff
    nop                                           ; $407a: $00
    ld bc, $0302                                  ; $407b: $01 $02 $03
    inc b                                         ; $407e: $04
    dec b                                         ; $407f: $05
    ld b, $07                                     ; $4080: $06 $07
    ld [$eceb], sp                                ; $4082: $08 $eb $ec
    ld sp, hl                                     ; $4085: $f9
    inc b                                         ; $4086: $04
    inc b                                         ; $4087: $04
    inc b                                         ; $4088: $04
    inc b                                         ; $4089: $04
    inc b                                         ; $408a: $04
    inc b                                         ; $408b: $04
    inc b                                         ; $408c: $04
    inc b                                         ; $408d: $04
    inc b                                         ; $408e: $04
    inc b                                         ; $408f: $04
    inc b                                         ; $4090: $04
    inc b                                         ; $4091: $04
    inc b                                         ; $4092: $04
    inc b                                         ; $4093: $04
    inc b                                         ; $4094: $04
    inc b                                         ; $4095: $04
    db $dd                                        ; $4096: $dd
    add hl, bc                                    ; $4097: $09
    pop de                                        ; $4098: $d1
    jp nc, Jump_000_0ae1                          ; $4099: $d2 $e1 $0a

    dec bc                                        ; $409c: $0b
    sub $0c                                       ; $409d: $d6 $0c
    ret c                                         ; $409f: $d8

    dec c                                         ; $40a0: $0d
    jp c, $dc0e                                   ; $40a1: $da $0e $dc

    rst $20                                       ; $40a4: $e7
    rrca                                          ; $40a5: $0f
    add d                                         ; $40a6: $82
    add d                                         ; $40a7: $82
    add d                                         ; $40a8: $82
    add d                                         ; $40a9: $82
    and d                                         ; $40aa: $a2
    add d                                         ; $40ab: $82
    add d                                         ; $40ac: $82
    add d                                         ; $40ad: $82
    add d                                         ; $40ae: $82
    add d                                         ; $40af: $82
    add d                                         ; $40b0: $82
    add d                                         ; $40b1: $82
    add d                                         ; $40b2: $82
    add d                                         ; $40b3: $82
    add d                                         ; $40b4: $82
    inc hl                                        ; $40b5: $23
    db $10                                        ; $40b6: $10
    ld de, $1312                                  ; $40b7: $11 $12 $13
    inc d                                         ; $40ba: $14
    dec d                                         ; $40bb: $15
    ld d, $17                                     ; $40bc: $16 $17
    jr jr_081_40d9                                ; $40be: $18 $19

    ld a, [de]                                    ; $40c0: $1a
    dec de                                        ; $40c1: $1b
    inc e                                         ; $40c2: $1c
    inc e                                         ; $40c3: $1c
    dec e                                         ; $40c4: $1d
    ld e, $a2                                     ; $40c5: $1e $a2
    and d                                         ; $40c7: $a2
    inc b                                         ; $40c8: $04
    inc b                                         ; $40c9: $04
    and d                                         ; $40ca: $a2
    and d                                         ; $40cb: $a2
    inc b                                         ; $40cc: $04
    inc b                                         ; $40cd: $04
    and d                                         ; $40ce: $a2
    and d                                         ; $40cf: $a2
    inc b                                         ; $40d0: $04
    inc b                                         ; $40d1: $04
    ld bc, $0401                                  ; $40d2: $01 $01 $04
    inc b                                         ; $40d5: $04
    rra                                           ; $40d6: $1f
    jr nz, jr_081_40fa                            ; $40d7: $20 $21

jr_081_40d9:
    ld hl, $2322                                  ; $40d9: $21 $22 $23
    inc h                                         ; $40dc: $24
    inc h                                         ; $40dd: $24
    dec h                                         ; $40de: $25
    jr nz, jr_081_4102                            ; $40df: $20 $21

    ld hl, $261d                                  ; $40e1: $21 $1d $26
    daa                                           ; $40e4: $27
    daa                                           ; $40e5: $27
    inc b                                         ; $40e6: $04
    inc b                                         ; $40e7: $04
    inc b                                         ; $40e8: $04
    inc b                                         ; $40e9: $04
    inc b                                         ; $40ea: $04
    inc b                                         ; $40eb: $04
    inc b                                         ; $40ec: $04
    inc b                                         ; $40ed: $04
    inc b                                         ; $40ee: $04
    inc b                                         ; $40ef: $04
    inc b                                         ; $40f0: $04
    inc b                                         ; $40f1: $04
    inc h                                         ; $40f2: $24
    inc b                                         ; $40f3: $04
    inc b                                         ; $40f4: $04
    inc b                                         ; $40f5: $04
    jr nz, jr_081_410a                            ; $40f6: $20 $12

    inc de                                        ; $40f8: $13
    rra                                           ; $40f9: $1f

jr_081_40fa:
    jr z, jr_081_4112                             ; $40fa: $28 $16

    rla                                           ; $40fc: $17
    ld [hl+], a                                   ; $40fd: $22
    add hl, hl                                    ; $40fe: $29
    ld a, [de]                                    ; $40ff: $1a
    dec de                                        ; $4100: $1b
    dec h                                         ; $4101: $25

jr_081_4102:
    ld h, $2a                                     ; $4102: $26 $2a
    ld e, $2b                                     ; $4104: $1e $2b
    inc h                                         ; $4106: $24
    inc b                                         ; $4107: $04
    inc b                                         ; $4108: $04
    inc b                                         ; $4109: $04

jr_081_410a:
    inc b                                         ; $410a: $04
    inc b                                         ; $410b: $04
    inc b                                         ; $410c: $04
    inc b                                         ; $410d: $04
    inc b                                         ; $410e: $04
    inc b                                         ; $410f: $04
    inc b                                         ; $4110: $04
    inc b                                         ; $4111: $04

jr_081_4112:
    inc h                                         ; $4112: $24
    inc b                                         ; $4113: $04
    inc b                                         ; $4114: $04
    inc b                                         ; $4115: $04
    rst $18                                       ; $4116: $df
    ldh [$ea], a                                  ; $4117: $e0 $ea
    db $dd                                        ; $4119: $dd
    pop de                                        ; $411a: $d1
    jp nc, Jump_000_1110                          ; $411b: $d2 $10 $11

    push de                                       ; $411e: $d5
    sub $14                                       ; $411f: $d6 $14
    dec d                                         ; $4121: $15
    reti                                          ; $4122: $d9


    jp c, $1918                                   ; $4123: $da $18 $19

    and d                                         ; $4126: $a2
    and d                                         ; $4127: $a2
    and d                                         ; $4128: $a2
    add d                                         ; $4129: $82
    add d                                         ; $412a: $82
    add d                                         ; $412b: $82
    and d                                         ; $412c: $a2
    and d                                         ; $412d: $a2
    add d                                         ; $412e: $82
    add d                                         ; $412f: $82
    and d                                         ; $4130: $a2
    and d                                         ; $4131: $a2
    add d                                         ; $4132: $82
    add d                                         ; $4133: $82
    and d                                         ; $4134: $a2
    and d                                         ; $4135: $a2
    inc e                                         ; $4136: $1c
    inc e                                         ; $4137: $1c
    inc e                                         ; $4138: $1c
    inc l                                         ; $4139: $2c
    inc e                                         ; $413a: $1c
    inc e                                         ; $413b: $1c
    inc e                                         ; $413c: $1c
    dec l                                         ; $413d: $2d
    inc e                                         ; $413e: $1c
    ld l, $2f                                     ; $413f: $2e $2f
    inc e                                         ; $4141: $1c
    inc e                                         ; $4142: $1c
    inc e                                         ; $4143: $1c
    inc e                                         ; $4144: $1c
    inc e                                         ; $4145: $1c
    ld bc, $0101                                  ; $4146: $01 $01 $01
    inc bc                                        ; $4149: $03
    ld bc, $0101                                  ; $414a: $01 $01 $01
    inc bc                                        ; $414d: $03
    ld bc, $0101                                  ; $414e: $01 $01 $01
    ld bc, $0101                                  ; $4151: $01 $01 $01
    ld bc, $3001                                  ; $4154: $01 $01 $30
    ld sp, $3332                                  ; $4157: $31 $32 $33
    inc [hl]                                      ; $415a: $34
    dec [hl]                                      ; $415b: $35
    ld [hl], $37                                  ; $415c: $36 $37
    jr c, jr_081_4199                             ; $415e: $38 $39

    ld a, [hl-]                                   ; $4160: $3a
    dec sp                                        ; $4161: $3b
    inc e                                         ; $4162: $1c
    inc e                                         ; $4163: $1c
    inc e                                         ; $4164: $1c
    inc e                                         ; $4165: $1c
    inc bc                                        ; $4166: $03
    inc bc                                        ; $4167: $03
    inc bc                                        ; $4168: $03
    inc bc                                        ; $4169: $03
    inc bc                                        ; $416a: $03
    inc bc                                        ; $416b: $03
    inc bc                                        ; $416c: $03
    inc bc                                        ; $416d: $03
    ld b, e                                       ; $416e: $43
    ld h, e                                       ; $416f: $63
    inc bc                                        ; $4170: $03
    ld h, e                                       ; $4171: $63
    ld bc, $0101                                  ; $4172: $01 $01 $01
    ld bc, $3130                                  ; $4175: $01 $30 $31
    inc a                                         ; $4178: $3c
    dec a                                         ; $4179: $3d
    inc [hl]                                      ; $417a: $34
    dec [hl]                                      ; $417b: $35
    ld [hl], $37                                  ; $417c: $36 $37
    ld a, [hl-]                                   ; $417e: $3a
    add hl, sp                                    ; $417f: $39
    jr c, @+$3d                                   ; $4180: $38 $3b

    inc e                                         ; $4182: $1c
    inc e                                         ; $4183: $1c
    ld a, $1c                                     ; $4184: $3e $1c
    inc bc                                        ; $4186: $03
    inc bc                                        ; $4187: $03
    inc bc                                        ; $4188: $03
    inc bc                                        ; $4189: $03
    inc bc                                        ; $418a: $03
    inc bc                                        ; $418b: $03
    inc bc                                        ; $418c: $03
    inc bc                                        ; $418d: $03
    inc hl                                        ; $418e: $23
    ld b, e                                       ; $418f: $43
    ld h, e                                       ; $4190: $63
    ld h, e                                       ; $4191: $63
    ld bc, $0101                                  ; $4192: $01 $01 $01
    ld bc, $0f3f                                  ; $4195: $01 $3f $0f
    inc e                                         ; $4198: $1c

jr_081_4199:
    ld b, b                                       ; $4199: $40
    ld b, c                                       ; $419a: $41
    pop hl                                        ; $419b: $e1
    db $dd                                        ; $419c: $dd
    ld b, d                                       ; $419d: $42
    ret c                                         ; $419e: $d8

    db $e4                                        ; $419f: $e4
    db $dd                                        ; $41a0: $dd
    db $dd                                        ; $41a1: $dd
    call c, $dde7                                 ; $41a2: $dc $e7 $dd
    db $dd                                        ; $41a5: $dd
    add d                                         ; $41a6: $82
    inc hl                                        ; $41a7: $23
    ld bc, $8201                                  ; $41a8: $01 $01 $82
    add d                                         ; $41ab: $82
    ld [bc], a                                    ; $41ac: $02
    ld bc, $8282                                  ; $41ad: $01 $82 $82
    ld [bc], a                                    ; $41b0: $02
    ld [bc], a                                    ; $41b1: $02
    add d                                         ; $41b2: $82
    add d                                         ; $41b3: $82
    ld [bc], a                                    ; $41b4: $02
    ld [bc], a                                    ; $41b5: $02
    ld b, e                                       ; $41b6: $43
    inc e                                         ; $41b7: $1c
    inc e                                         ; $41b8: $1c
    ld b, h                                       ; $41b9: $44
    ld b, l                                       ; $41ba: $45
    inc e                                         ; $41bb: $1c
    ld a, $46                                     ; $41bc: $3e $46
    db $dd                                        ; $41be: $dd
    inc e                                         ; $41bf: $1c
    inc e                                         ; $41c0: $1c
    ld b, h                                       ; $41c1: $44
    db $dd                                        ; $41c2: $dd
    inc e                                         ; $41c3: $1c
    inc e                                         ; $41c4: $1c
    ld b, a                                       ; $41c5: $47
    ld bc, $0101                                  ; $41c6: $01 $01 $01
    inc bc                                        ; $41c9: $03
    ld bc, $0101                                  ; $41ca: $01 $01 $01
    dec b                                         ; $41cd: $05
    ld [bc], a                                    ; $41ce: $02
    ld bc, $4301                                  ; $41cf: $01 $01 $43
    ld [bc], a                                    ; $41d2: $02
    ld bc, $2301                                  ; $41d3: $01 $01 $23
    ld c, b                                       ; $41d6: $48
    ld b, h                                       ; $41d7: $44
    ld c, b                                       ; $41d8: $48
    ld c, c                                       ; $41d9: $49
    ld c, d                                       ; $41da: $4a
    ld c, e                                       ; $41db: $4b
    ld c, h                                       ; $41dc: $4c
    ld c, l                                       ; $41dd: $4d
    ld c, b                                       ; $41de: $48
    ld b, h                                       ; $41df: $44
    ld c, b                                       ; $41e0: $48
    ld c, c                                       ; $41e1: $49
    ld c, c                                       ; $41e2: $49
    ld c, b                                       ; $41e3: $48
    ld b, h                                       ; $41e4: $44
    ld b, a                                       ; $41e5: $47
    inc bc                                        ; $41e6: $03
    inc bc                                        ; $41e7: $03
    inc bc                                        ; $41e8: $03
    inc bc                                        ; $41e9: $03
    dec b                                         ; $41ea: $05
    dec b                                         ; $41eb: $05
    dec b                                         ; $41ec: $05
    dec b                                         ; $41ed: $05
    ld b, e                                       ; $41ee: $43
    ld b, e                                       ; $41ef: $43
    ld b, e                                       ; $41f0: $43
    ld b, e                                       ; $41f1: $43
    inc hl                                        ; $41f2: $23
    inc hl                                        ; $41f3: $23
    inc hl                                        ; $41f4: $23
    inc hl                                        ; $41f5: $23
    ld b, a                                       ; $41f6: $47
    ld b, h                                       ; $41f7: $44
    ld c, b                                       ; $41f8: $48
    ld c, c                                       ; $41f9: $49
    ld c, [hl]                                    ; $41fa: $4e
    ld c, a                                       ; $41fb: $4f
    ld d, b                                       ; $41fc: $50
    ld d, c                                       ; $41fd: $51
    ld b, a                                       ; $41fe: $47
    ld b, h                                       ; $41ff: $44
    ld c, b                                       ; $4200: $48
    ld c, c                                       ; $4201: $49
    ld c, c                                       ; $4202: $49
    ld c, b                                       ; $4203: $48
    ld b, h                                       ; $4204: $44
    ld c, b                                       ; $4205: $48
    inc bc                                        ; $4206: $03
    inc bc                                        ; $4207: $03
    inc bc                                        ; $4208: $03
    inc bc                                        ; $4209: $03
    dec b                                         ; $420a: $05
    dec b                                         ; $420b: $05
    dec b                                         ; $420c: $05
    dec b                                         ; $420d: $05
    ld b, e                                       ; $420e: $43
    ld b, e                                       ; $420f: $43
    ld b, e                                       ; $4210: $43
    ld b, e                                       ; $4211: $43
    inc hl                                        ; $4212: $23
    inc hl                                        ; $4213: $23
    inc hl                                        ; $4214: $23
    inc hl                                        ; $4215: $23
    ld d, d                                       ; $4216: $52
    ld d, d                                       ; $4217: $52
    ld [c], a                                     ; $4218: $e2
    db $e3                                        ; $4219: $e3
    ld d, d                                       ; $421a: $52
    ld d, d                                       ; $421b: $52
    push hl                                       ; $421c: $e5
    and $52                                       ; $421d: $e6 $52
    ld d, d                                       ; $421f: $52
    add sp, -$17                                  ; $4220: $e8 $e9
    ld d, d                                       ; $4222: $52
    ld d, d                                       ; $4223: $52
    db $eb                                        ; $4224: $eb
    db $ec                                        ; $4225: $ec
    ld [bc], a                                    ; $4226: $02
    ld [bc], a                                    ; $4227: $02
    inc b                                         ; $4228: $04
    inc b                                         ; $4229: $04
    ld [bc], a                                    ; $422a: $02
    ld [bc], a                                    ; $422b: $02
    inc b                                         ; $422c: $04
    inc b                                         ; $422d: $04
    ld [bc], a                                    ; $422e: $02
    ld [bc], a                                    ; $422f: $02
    inc b                                         ; $4230: $04
    inc b                                         ; $4231: $04
    ld [bc], a                                    ; $4232: $02
    ld [bc], a                                    ; $4233: $02
    inc b                                         ; $4234: $04
    inc b                                         ; $4235: $04
    ld d, d                                       ; $4236: $52
    ld d, e                                       ; $4237: $53
    ld [de], a                                    ; $4238: $12
    inc de                                        ; $4239: $13
    ld d, e                                       ; $423a: $53
    inc e                                         ; $423b: $1c
    ld d, $17                                     ; $423c: $16 $17
    inc e                                         ; $423e: $1c
    inc e                                         ; $423f: $1c
    ld a, [de]                                    ; $4240: $1a
    dec de                                        ; $4241: $1b
    dec sp                                        ; $4242: $3b
    jr c, jr_081_4262                             ; $4243: $38 $1d

    ld e, $02                                     ; $4245: $1e $02
    ld [bc], a                                    ; $4247: $02
    inc b                                         ; $4248: $04
    inc b                                         ; $4249: $04
    ld [bc], a                                    ; $424a: $02
    ld bc, $0404                                  ; $424b: $01 $04 $04
    ld bc, $0401                                  ; $424e: $01 $01 $04
    inc b                                         ; $4251: $04
    inc bc                                        ; $4252: $03
    inc bc                                        ; $4253: $03
    inc b                                         ; $4254: $04
    inc b                                         ; $4255: $04
    ld d, h                                       ; $4256: $54
    ld d, l                                       ; $4257: $55
    inc a                                         ; $4258: $3c
    inc sp                                        ; $4259: $33
    inc [hl]                                      ; $425a: $34
    dec [hl]                                      ; $425b: $35
    ld [hl], $37                                  ; $425c: $36 $37
    ld a, [hl-]                                   ; $425e: $3a
    ld d, [hl]                                    ; $425f: $56
    ld d, a                                       ; $4260: $57
    ld e, b                                       ; $4261: $58

jr_081_4262:
    inc e                                         ; $4262: $1c
    ld e, c                                       ; $4263: $59
    ld e, d                                       ; $4264: $5a
    ld e, e                                       ; $4265: $5b
    inc bc                                        ; $4266: $03
    inc bc                                        ; $4267: $03
    inc bc                                        ; $4268: $03
    inc bc                                        ; $4269: $03
    inc bc                                        ; $426a: $03
    inc bc                                        ; $426b: $03
    inc bc                                        ; $426c: $03
    inc bc                                        ; $426d: $03
    inc hl                                        ; $426e: $23
    ld h, e                                       ; $426f: $63
    inc bc                                        ; $4270: $03
    inc bc                                        ; $4271: $03
    ld bc, $0303                                  ; $4272: $01 $03 $03
    inc bc                                        ; $4275: $03
    ld e, h                                       ; $4276: $5c
    ld sp, $333c                                  ; $4277: $31 $3c $33
    inc [hl]                                      ; $427a: $34
    dec [hl]                                      ; $427b: $35
    ld [hl], $37                                  ; $427c: $36 $37
    ld d, [hl]                                    ; $427e: $56
    ld a, [hl-]                                   ; $427f: $3a
    dec sp                                        ; $4280: $3b
    jr c, jr_081_42e0                             ; $4281: $38 $5d

    inc e                                         ; $4283: $1c
    ld a, $1c                                     ; $4284: $3e $1c
    inc bc                                        ; $4286: $03
    inc bc                                        ; $4287: $03
    inc bc                                        ; $4288: $03
    inc bc                                        ; $4289: $03
    inc bc                                        ; $428a: $03
    inc bc                                        ; $428b: $03
    inc bc                                        ; $428c: $03
    inc bc                                        ; $428d: $03
    ld b, e                                       ; $428e: $43
    inc bc                                        ; $428f: $03
    ld b, e                                       ; $4290: $43
    ld b, e                                       ; $4291: $43
    inc bc                                        ; $4292: $03
    ld bc, $0101                                  ; $4293: $01 $01 $01
    ld e, h                                       ; $4296: $5c
    ld sp, $3d3c                                  ; $4297: $31 $3c $3d
    inc [hl]                                      ; $429a: $34
    dec [hl]                                      ; $429b: $35
    ld [hl], $37                                  ; $429c: $36 $37
    add hl, sp                                    ; $429e: $39
    ld a, [hl-]                                   ; $429f: $3a
    dec sp                                        ; $42a0: $3b
    ld a, [hl-]                                   ; $42a1: $3a
    inc e                                         ; $42a2: $1c
    inc e                                         ; $42a3: $1c
    inc e                                         ; $42a4: $1c
    ld a, $03                                     ; $42a5: $3e $03
    inc bc                                        ; $42a7: $03
    inc bc                                        ; $42a8: $03
    inc bc                                        ; $42a9: $03
    inc bc                                        ; $42aa: $03
    inc bc                                        ; $42ab: $03
    inc bc                                        ; $42ac: $03
    inc bc                                        ; $42ad: $03
    ld h, e                                       ; $42ae: $63
    inc bc                                        ; $42af: $03
    ld b, e                                       ; $42b0: $43
    inc bc                                        ; $42b1: $03
    ld bc, $0101                                  ; $42b2: $01 $01 $01
    ld bc, $5554                                  ; $42b5: $01 $54 $55
    inc a                                         ; $42b8: $3c
    ld sp, $3534                                  ; $42b9: $31 $34 $35
    ld [hl], $37                                  ; $42bc: $36 $37
    dec sp                                        ; $42be: $3b
    jr c, jr_081_42fa                             ; $42bf: $38 $39

    ld a, [hl-]                                   ; $42c1: $3a
    inc e                                         ; $42c2: $1c
    inc e                                         ; $42c3: $1c
    inc e                                         ; $42c4: $1c
    ld b, b                                       ; $42c5: $40
    inc bc                                        ; $42c6: $03
    inc bc                                        ; $42c7: $03
    inc hl                                        ; $42c8: $23
    inc hl                                        ; $42c9: $23
    inc bc                                        ; $42ca: $03
    inc bc                                        ; $42cb: $03
    inc bc                                        ; $42cc: $03
    inc bc                                        ; $42cd: $03
    ld b, e                                       ; $42ce: $43
    ld b, e                                       ; $42cf: $43
    ld h, e                                       ; $42d0: $63
    inc bc                                        ; $42d1: $03
    ld bc, $0101                                  ; $42d2: $01 $01 $01
    ld bc, $5d47                                  ; $42d5: $01 $47 $5d
    ld e, [hl]                                    ; $42d8: $5e
    ld e, a                                       ; $42d9: $5f
    ld h, b                                       ; $42da: $60
    ld e, l                                       ; $42db: $5d
    ld [hl], $37                                  ; $42dc: $36 $37
    ld b, a                                       ; $42de: $47
    ld h, c                                       ; $42df: $61

jr_081_42e0:
    ld d, a                                       ; $42e0: $57
    ld e, b                                       ; $42e1: $58
    ld b, h                                       ; $42e2: $44
    ld e, c                                       ; $42e3: $59
    ld e, d                                       ; $42e4: $5a
    ld e, e                                       ; $42e5: $5b
    inc bc                                        ; $42e6: $03
    ld h, e                                       ; $42e7: $63
    inc bc                                        ; $42e8: $03
    inc bc                                        ; $42e9: $03
    dec b                                         ; $42ea: $05
    inc hl                                        ; $42eb: $23
    inc bc                                        ; $42ec: $03
    inc bc                                        ; $42ed: $03
    ld b, e                                       ; $42ee: $43
    ld h, e                                       ; $42ef: $63
    inc bc                                        ; $42f0: $03
    inc bc                                        ; $42f1: $03
    inc hl                                        ; $42f2: $23
    inc bc                                        ; $42f3: $03
    inc bc                                        ; $42f4: $03
    inc bc                                        ; $42f5: $03
    ld e, c                                       ; $42f6: $59
    ld b, a                                       ; $42f7: $47
    ld c, c                                       ; $42f8: $49
    ld c, b                                       ; $42f9: $48

jr_081_42fa:
    ld h, c                                       ; $42fa: $61
    ld h, b                                       ; $42fb: $60
    ld d, c                                       ; $42fc: $51
    ld d, b                                       ; $42fd: $50
    ld e, l                                       ; $42fe: $5d
    ld b, a                                       ; $42ff: $47
    ld c, c                                       ; $4300: $49
    ld c, b                                       ; $4301: $48
    ld e, l                                       ; $4302: $5d
    ld b, h                                       ; $4303: $44
    ld c, b                                       ; $4304: $48
    ld b, h                                       ; $4305: $44
    ld h, e                                       ; $4306: $63
    inc hl                                        ; $4307: $23
    inc hl                                        ; $4308: $23
    inc hl                                        ; $4309: $23
    inc bc                                        ; $430a: $03
    dec h                                         ; $430b: $25
    dec h                                         ; $430c: $25
    dec h                                         ; $430d: $25
    ld b, e                                       ; $430e: $43
    ld h, e                                       ; $430f: $63
    ld h, e                                       ; $4310: $63
    ld h, e                                       ; $4311: $63
    inc bc                                        ; $4312: $03
    inc bc                                        ; $4313: $03
    inc bc                                        ; $4314: $03
    inc bc                                        ; $4315: $03
    ld b, h                                       ; $4316: $44
    ld b, a                                       ; $4317: $47
    ld c, c                                       ; $4318: $49
    ld c, b                                       ; $4319: $48
    ld c, a                                       ; $431a: $4f
    ld c, [hl]                                    ; $431b: $4e
    ld c, l                                       ; $431c: $4d
    ld c, h                                       ; $431d: $4c
    ld b, h                                       ; $431e: $44
    ld b, a                                       ; $431f: $47
    ld c, c                                       ; $4320: $49
    ld c, b                                       ; $4321: $48
    ld c, b                                       ; $4322: $48
    ld c, c                                       ; $4323: $49
    ld b, a                                       ; $4324: $47
    ld b, h                                       ; $4325: $44
    inc hl                                        ; $4326: $23
    inc hl                                        ; $4327: $23
    inc hl                                        ; $4328: $23
    inc hl                                        ; $4329: $23
    dec h                                         ; $432a: $25
    dec h                                         ; $432b: $25
    dec h                                         ; $432c: $25
    dec h                                         ; $432d: $25
    ld h, e                                       ; $432e: $63
    ld h, e                                       ; $432f: $63
    ld h, e                                       ; $4330: $63
    ld h, e                                       ; $4331: $63
    inc bc                                        ; $4332: $03
    inc bc                                        ; $4333: $03
    inc bc                                        ; $4334: $03
    inc bc                                        ; $4335: $03
    ld b, h                                       ; $4336: $44
    ld c, b                                       ; $4337: $48
    ld b, h                                       ; $4338: $44
    ld b, d                                       ; $4339: $42
    ld c, e                                       ; $433a: $4b
    ld c, d                                       ; $433b: $4a
    ld b, [hl]                                    ; $433c: $46
    inc e                                         ; $433d: $1c
    ld b, h                                       ; $433e: $44
    ld c, b                                       ; $433f: $48
    ld b, h                                       ; $4340: $44
    inc e                                         ; $4341: $1c
    ld c, b                                       ; $4342: $48
    ld c, c                                       ; $4343: $49
    ld b, a                                       ; $4344: $47
    ld h, d                                       ; $4345: $62
    inc hl                                        ; $4346: $23
    inc hl                                        ; $4347: $23
    inc hl                                        ; $4348: $23
    ld bc, $2525                                  ; $4349: $01 $25 $25
    dec h                                         ; $434c: $25
    ld bc, $6363                                  ; $434d: $01 $63 $63
    ld h, e                                       ; $4350: $63
    ld bc, $0303                                  ; $4351: $01 $03 $03
    inc bc                                        ; $4354: $03
    ld bc, $5252                                  ; $4355: $01 $52 $52
    ld h, e                                       ; $4358: $63
    ld h, h                                       ; $4359: $64
    ld d, d                                       ; $435a: $52
    ld d, d                                       ; $435b: $52
    ld h, l                                       ; $435c: $65
    ld h, [hl]                                    ; $435d: $66
    ld d, d                                       ; $435e: $52
    ld d, d                                       ; $435f: $52
    ld h, a                                       ; $4360: $67
    ld l, b                                       ; $4361: $68
    ld d, d                                       ; $4362: $52
    ld d, d                                       ; $4363: $52
    ld l, c                                       ; $4364: $69
    ld h, h                                       ; $4365: $64
    ld [bc], a                                    ; $4366: $02
    ld [bc], a                                    ; $4367: $02
    ld bc, $0201                                  ; $4368: $01 $01 $02
    ld [bc], a                                    ; $436b: $02
    ld bc, $0201                                  ; $436c: $01 $01 $02
    ld [bc], a                                    ; $436f: $02
    ld bc, $0201                                  ; $4370: $01 $01 $02
    ld [bc], a                                    ; $4373: $02
    ld bc, $6701                                  ; $4374: $01 $01 $67
    ld l, b                                       ; $4377: $68
    ld l, d                                       ; $4378: $6a
    ld l, e                                       ; $4379: $6b
    ld h, e                                       ; $437a: $63
    ld l, h                                       ; $437b: $6c
    ld l, l                                       ; $437c: $6d
    ld h, d                                       ; $437d: $62
    ld h, l                                       ; $437e: $65
    ld h, [hl]                                    ; $437f: $66
    ld l, c                                       ; $4380: $69
    ld l, h                                       ; $4381: $6c
    ld l, l                                       ; $4382: $6d
    ld l, b                                       ; $4383: $68
    ld l, d                                       ; $4384: $6a
    inc e                                         ; $4385: $1c
    ld bc, $0101                                  ; $4386: $01 $01 $01
    ld bc, $0101                                  ; $4389: $01 $01 $01
    ld bc, $0101                                  ; $438c: $01 $01 $01
    ld bc, $0101                                  ; $438f: $01 $01 $01
    ld bc, $0101                                  ; $4392: $01 $01 $01
    ld bc, $5352                                  ; $4395: $01 $52 $53
    ld l, d                                       ; $4398: $6a
    ld h, [hl]                                    ; $4399: $66
    ld d, e                                       ; $439a: $53
    inc e                                         ; $439b: $1c
    ld h, a                                       ; $439c: $67
    ld l, b                                       ; $439d: $68
    inc e                                         ; $439e: $1c
    inc e                                         ; $439f: $1c
    ld l, d                                       ; $43a0: $6a
    ld h, h                                       ; $43a1: $64
    inc e                                         ; $43a2: $1c
    inc e                                         ; $43a3: $1c
    ld h, a                                       ; $43a4: $67
    ld h, [hl]                                    ; $43a5: $66
    ld [bc], a                                    ; $43a6: $02
    ld [bc], a                                    ; $43a7: $02
    ld bc, $0201                                  ; $43a8: $01 $01 $02
    ld bc, $0101                                  ; $43ab: $01 $01 $01
    ld bc, $0101                                  ; $43ae: $01 $01 $01
    ld bc, $0101                                  ; $43b1: $01 $01 $01
    ld bc, $6301                                  ; $43b4: $01 $01 $63
    ld l, h                                       ; $43b7: $6c
    ld h, a                                       ; $43b8: $67
    inc e                                         ; $43b9: $1c
    ld h, l                                       ; $43ba: $65
    ld h, [hl]                                    ; $43bb: $66
    ld l, c                                       ; $43bc: $69
    inc e                                         ; $43bd: $1c
    ld l, l                                       ; $43be: $6d
    ld l, h                                       ; $43bf: $6c
    inc e                                         ; $43c0: $1c
    inc e                                         ; $43c1: $1c
    ld h, e                                       ; $43c2: $63
    ld l, e                                       ; $43c3: $6b
    inc e                                         ; $43c4: $1c
    inc e                                         ; $43c5: $1c
    ld bc, $0101                                  ; $43c6: $01 $01 $01
    ld bc, $0101                                  ; $43c9: $01 $01 $01
    ld bc, $0101                                  ; $43cc: $01 $01 $01
    ld bc, $0101                                  ; $43cf: $01 $01 $01
    ld bc, $0101                                  ; $43d2: $01 $01 $01
    ld bc, $313c                                  ; $43d5: $01 $3c $31
    jr nc, jr_081_440d                            ; $43d8: $30 $33

    inc [hl]                                      ; $43da: $34
    dec [hl]                                      ; $43db: $35
    ld [hl], $37                                  ; $43dc: $36 $37
    dec sp                                        ; $43de: $3b
    ld a, [hl-]                                   ; $43df: $3a
    add hl, sp                                    ; $43e0: $39
    jr c, jr_081_4426                             ; $43e1: $38 $43

    inc e                                         ; $43e3: $1c
    inc e                                         ; $43e4: $1c
    ld l, e                                       ; $43e5: $6b
    inc hl                                        ; $43e6: $23
    inc hl                                        ; $43e7: $23
    inc hl                                        ; $43e8: $23
    inc hl                                        ; $43e9: $23
    inc bc                                        ; $43ea: $03
    inc bc                                        ; $43eb: $03
    inc bc                                        ; $43ec: $03
    inc bc                                        ; $43ed: $03
    ld h, e                                       ; $43ee: $63
    inc hl                                        ; $43ef: $23
    ld b, e                                       ; $43f0: $43
    ld h, e                                       ; $43f1: $63
    ld bc, $0101                                  ; $43f2: $01 $01 $01
    ld bc, $3132                                  ; $43f5: $01 $32 $31
    jr nc, jr_081_4426                            ; $43f8: $30 $2c

    inc [hl]                                      ; $43fa: $34
    dec [hl]                                      ; $43fb: $35
    ld d, [hl]                                    ; $43fc: $56
    inc e                                         ; $43fd: $1c
    dec sp                                        ; $43fe: $3b
    ld a, [hl-]                                   ; $43ff: $3a
    inc e                                         ; $4400: $1c
    inc e                                         ; $4401: $1c
    inc e                                         ; $4402: $1c
    ld l, h                                       ; $4403: $6c
    ld h, a                                       ; $4404: $67
    ld h, d                                       ; $4405: $62
    inc hl                                        ; $4406: $23
    inc hl                                        ; $4407: $23
    inc hl                                        ; $4408: $23
    inc hl                                        ; $4409: $23
    inc bc                                        ; $440a: $03
    inc bc                                        ; $440b: $03
    ld b, e                                       ; $440c: $43

jr_081_440d:
    ld bc, $2363                                  ; $440d: $01 $63 $23
    ld bc, $0101                                  ; $4410: $01 $01 $01
    ld bc, $0101                                  ; $4413: $01 $01 $01
    inc e                                         ; $4416: $1c
    inc e                                         ; $4417: $1c
    inc e                                         ; $4418: $1c
    ld l, b                                       ; $4419: $68
    inc e                                         ; $441a: $1c
    inc e                                         ; $441b: $1c
    inc e                                         ; $441c: $1c
    ld l, e                                       ; $441d: $6b
    inc e                                         ; $441e: $1c
    ld l, h                                       ; $441f: $6c
    ld h, a                                       ; $4420: $67
    ld h, d                                       ; $4421: $62
    ld l, d                                       ; $4422: $6a
    ld l, e                                       ; $4423: $6b
    ld h, e                                       ; $4424: $63
    ld h, h                                       ; $4425: $64

jr_081_4426:
    ld bc, $0101                                  ; $4426: $01 $01 $01
    ld bc, $0101                                  ; $4429: $01 $01 $01
    ld bc, $0101                                  ; $442c: $01 $01 $01
    ld bc, $0101                                  ; $442f: $01 $01 $01
    ld bc, $0101                                  ; $4432: $01 $01 $01
    ld bc, $1c67                                  ; $4435: $01 $67 $1c
    inc e                                         ; $4438: $1c
    inc e                                         ; $4439: $1c
    inc e                                         ; $443a: $1c
    ld a, $1c                                     ; $443b: $3e $1c
    ld l, [hl]                                    ; $443d: $6e
    ld l, d                                       ; $443e: $6a
    inc e                                         ; $443f: $1c
    inc e                                         ; $4440: $1c
    ld l, a                                       ; $4441: $6f
    ld h, a                                       ; $4442: $67
    ld h, d                                       ; $4443: $62
    inc e                                         ; $4444: $1c
    ld [hl], b                                    ; $4445: $70
    ld bc, $0101                                  ; $4446: $01 $01 $01
    ld bc, $0101                                  ; $4449: $01 $01 $01
    ld bc, $0182                                  ; $444c: $01 $82 $01
    ld bc, $8201                                  ; $444f: $01 $01 $82
    ld bc, $0101                                  ; $4452: $01 $01 $01
    add d                                         ; $4455: $82
    ld b, l                                       ; $4456: $45
    inc e                                         ; $4457: $1c
    ld l, c                                       ; $4458: $69
    ld l, h                                       ; $4459: $6c
    inc e                                         ; $445a: $1c
    ld h, d                                       ; $445b: $62
    ld h, e                                       ; $445c: $63
    ld h, h                                       ; $445d: $64
    ld l, c                                       ; $445e: $69
    ld l, b                                       ; $445f: $68
    ld h, l                                       ; $4460: $65
    ld h, [hl]                                    ; $4461: $66
    ld l, d                                       ; $4462: $6a
    ld h, h                                       ; $4463: $64
    ld l, l                                       ; $4464: $6d
    ld l, b                                       ; $4465: $68
    ld bc, $0101                                  ; $4466: $01 $01 $01
    ld bc, $0101                                  ; $4469: $01 $01 $01
    ld bc, $0101                                  ; $446c: $01 $01 $01
    ld bc, $0101                                  ; $446f: $01 $01 $01
    ld bc, $0101                                  ; $4472: $01 $01 $01
    ld bc, $6267                                  ; $4475: $01 $67 $62
    ld h, e                                       ; $4478: $63
    ld h, h                                       ; $4479: $64
    ld l, l                                       ; $447a: $6d
    ld l, b                                       ; $447b: $68
    ld h, l                                       ; $447c: $65
    ld h, [hl]                                    ; $447d: $66
    ld h, e                                       ; $447e: $63
    ld h, h                                       ; $447f: $64
    ld l, c                                       ; $4480: $69
    ld l, h                                       ; $4481: $6c
    ld h, l                                       ; $4482: $65
    ld h, d                                       ; $4483: $62
    ld l, d                                       ; $4484: $6a
    inc e                                         ; $4485: $1c
    ld bc, $0101                                  ; $4486: $01 $01 $01
    ld bc, $0101                                  ; $4489: $01 $01 $01
    ld bc, $0101                                  ; $448c: $01 $01 $01
    ld bc, $0101                                  ; $448f: $01 $01 $01
    ld bc, $0101                                  ; $4492: $01 $01 $01
    ld bc, $686d                                  ; $4495: $01 $6d $68
    ld h, a                                       ; $4498: $67
    ld l, h                                       ; $4499: $6c
    ld l, d                                       ; $449a: $6a
    ld l, e                                       ; $449b: $6b
    ld l, c                                       ; $449c: $69
    ld l, e                                       ; $449d: $6b
    ld h, a                                       ; $449e: $67
    inc e                                         ; $449f: $1c
    ld a, $1c                                     ; $44a0: $3e $1c
    inc e                                         ; $44a2: $1c
    ld [hl], c                                    ; $44a3: $71
    inc e                                         ; $44a4: $1c
    inc e                                         ; $44a5: $1c
    ld bc, $0101                                  ; $44a6: $01 $01 $01
    ld bc, $0101                                  ; $44a9: $01 $01 $01
    ld bc, $0101                                  ; $44ac: $01 $01 $01
    ld bc, $0101                                  ; $44af: $01 $01 $01
    ld bc, $0107                                  ; $44b2: $01 $07 $01
    ld bc, $4067                                  ; $44b5: $01 $67 $40
    ld b, e                                       ; $44b8: $43
    ld [hl], d                                    ; $44b9: $72
    inc e                                         ; $44ba: $1c
    ld b, d                                       ; $44bb: $42
    ld b, l                                       ; $44bc: $45
    inc e                                         ; $44bd: $1c
    inc e                                         ; $44be: $1c
    inc e                                         ; $44bf: $1c
    inc e                                         ; $44c0: $1c
    inc e                                         ; $44c1: $1c
    ld [hl], e                                    ; $44c2: $73
    ld [hl], h                                    ; $44c3: $74
    ld [hl], l                                    ; $44c4: $75
    halt                                          ; $44c5: $76
    ld bc, $0101                                  ; $44c6: $01 $01 $01
    add d                                         ; $44c9: $82
    ld bc, $0101                                  ; $44ca: $01 $01 $01
    ld bc, $0101                                  ; $44cd: $01 $01 $01
    ld bc, $0101                                  ; $44d0: $01 $01 $01
    ld bc, $0101                                  ; $44d3: $01 $01 $01
    ld [hl], a                                    ; $44d6: $77
    ld a, b                                       ; $44d7: $78
    ld a, c                                       ; $44d8: $79
    ld a, d                                       ; $44d9: $7a
    ld a, e                                       ; $44da: $7b
    ld a, h                                       ; $44db: $7c
    ld a, l                                       ; $44dc: $7d
    ld a, [hl]                                    ; $44dd: $7e
    ld a, a                                       ; $44de: $7f
    add b                                         ; $44df: $80
    add c                                         ; $44e0: $81
    add d                                         ; $44e1: $82
    add e                                         ; $44e2: $83
    add h                                         ; $44e3: $84
    add l                                         ; $44e4: $85
    add [hl]                                      ; $44e5: $86
    ld b, $06                                     ; $44e6: $06 $06
    ld b, $06                                     ; $44e8: $06 $06
    ld b, $06                                     ; $44ea: $06 $06
    ld b, $06                                     ; $44ec: $06 $06
    ld b, $0e                                     ; $44ee: $06 $0e
    ld c, $0e                                     ; $44f0: $0e $0e
    ld c, $0e                                     ; $44f2: $0e $0e
    ld c, $0e                                     ; $44f4: $0e $0e
    add e                                         ; $44f6: $83
    add h                                         ; $44f7: $84
    add l                                         ; $44f8: $85
    add [hl]                                      ; $44f9: $86
    add a                                         ; $44fa: $87
    adc b                                         ; $44fb: $88
    adc c                                         ; $44fc: $89
    adc d                                         ; $44fd: $8a
    ld [hl], a                                    ; $44fe: $77
    ld a, b                                       ; $44ff: $78
    ld a, c                                       ; $4500: $79
    ld a, d                                       ; $4501: $7a
    ld a, e                                       ; $4502: $7b
    ld a, h                                       ; $4503: $7c
    ld a, l                                       ; $4504: $7d
    ld a, [hl]                                    ; $4505: $7e
    ld c, $0e                                     ; $4506: $0e $0e
    ld c, $0e                                     ; $4508: $0e $0e
    ld c, $0e                                     ; $450a: $0e $0e
    ld c, $0e                                     ; $450c: $0e $0e
    ld b, $06                                     ; $450e: $06 $06
    ld b, $06                                     ; $4510: $06 $06
    ld b, $06                                     ; $4512: $06 $06
    ld b, $06                                     ; $4514: $06 $06
    adc e                                         ; $4516: $8b
    adc h                                         ; $4517: $8c
    adc l                                         ; $4518: $8d
    adc [hl]                                      ; $4519: $8e
    adc a                                         ; $451a: $8f
    sub b                                         ; $451b: $90
    sub c                                         ; $451c: $91
    sub d                                         ; $451d: $92
    sub e                                         ; $451e: $93
    sub h                                         ; $451f: $94
    sub l                                         ; $4520: $95
    sub [hl]                                      ; $4521: $96
    sub a                                         ; $4522: $97
    sbc b                                         ; $4523: $98
    sbc b                                         ; $4524: $98
    sbc c                                         ; $4525: $99
    ld c, $0e                                     ; $4526: $0e $0e
    ld c, $0e                                     ; $4528: $0e $0e
    ld c, $0e                                     ; $452a: $0e $0e
    ld c, $0e                                     ; $452c: $0e $0e
    ld c, $0e                                     ; $452e: $0e $0e
    ld c, $0e                                     ; $4530: $0e $0e
    ld c, $0e                                     ; $4532: $0e $0e
    ld c, $0e                                     ; $4534: $0e $0e
    sbc d                                         ; $4536: $9a
    sbc e                                         ; $4537: $9b
    sbc h                                         ; $4538: $9c
    sbc l                                         ; $4539: $9d
    sbc [hl]                                      ; $453a: $9e
    sbc e                                         ; $453b: $9b
    sbc a                                         ; $453c: $9f
    and b                                         ; $453d: $a0
    and c                                         ; $453e: $a1
    and d                                         ; $453f: $a2
    and e                                         ; $4540: $a3
    and h                                         ; $4541: $a4
    and l                                         ; $4542: $a5
    sbc b                                         ; $4543: $98
    sbc b                                         ; $4544: $98
    sbc c                                         ; $4545: $99
    ld c, $0e                                     ; $4546: $0e $0e
    ld c, $0e                                     ; $4548: $0e $0e
    ld c, $0e                                     ; $454a: $0e $0e
    ld c, $0e                                     ; $454c: $0e $0e
    ld c, $0e                                     ; $454e: $0e $0e
    ld c, $0e                                     ; $4550: $0e $0e
    ld c, $0e                                     ; $4552: $0e $0e
    ld c, $0e                                     ; $4554: $0e $0e
    add a                                         ; $4556: $87
    adc b                                         ; $4557: $88
    adc c                                         ; $4558: $89
    adc d                                         ; $4559: $8a
    ld [hl], a                                    ; $455a: $77
    ld a, b                                       ; $455b: $78
    ld a, c                                       ; $455c: $79
    ld a, d                                       ; $455d: $7a
    ld a, e                                       ; $455e: $7b

Call_081_455f:
    ld a, h                                       ; $455f: $7c
    ld a, l                                       ; $4560: $7d
    ld a, [hl]                                    ; $4561: $7e
    inc e                                         ; $4562: $1c
    inc e                                         ; $4563: $1c
    inc e                                         ; $4564: $1c
    inc e                                         ; $4565: $1c
    ld c, $0e                                     ; $4566: $0e $0e
    ld c, $0e                                     ; $4568: $0e $0e
    ld b, $06                                     ; $456a: $06 $06
    ld b, $06                                     ; $456c: $06 $06
    ld b, $06                                     ; $456e: $06 $06
    ld b, $06                                     ; $4570: $06 $06
    ld bc, $0101                                  ; $4572: $01 $01 $01
    ld bc, $807f                                  ; $4575: $01 $7f $80
    add c                                         ; $4578: $81
    add d                                         ; $4579: $82
    add e                                         ; $457a: $83
    add h                                         ; $457b: $84
    add l                                         ; $457c: $85
    add [hl]                                      ; $457d: $86
    add a                                         ; $457e: $87
    adc b                                         ; $457f: $88
    adc c                                         ; $4580: $89
    adc d                                         ; $4581: $8a
    ld [hl], a                                    ; $4582: $77
    ld a, b                                       ; $4583: $78
    ld a, c                                       ; $4584: $79
    ld a, d                                       ; $4585: $7a
    ld b, $0e                                     ; $4586: $06 $0e
    ld c, $0e                                     ; $4588: $0e $0e
    ld c, $0e                                     ; $458a: $0e $0e
    ld c, $0e                                     ; $458c: $0e $0e
    ld c, $0e                                     ; $458e: $0e $0e
    ld c, $0e                                     ; $4590: $0e $0e
    ld b, $06                                     ; $4592: $06 $06
    ld b, $06                                     ; $4594: $06 $06
    and [hl]                                      ; $4596: $a6
    inc e                                         ; $4597: $1c
    inc e                                         ; $4598: $1c
    and a                                         ; $4599: $a7
    xor b                                         ; $459a: $a8
    xor c                                         ; $459b: $a9
    xor d                                         ; $459c: $aa
    xor e                                         ; $459d: $ab
    xor h                                         ; $459e: $ac
    xor l                                         ; $459f: $ad
    xor [hl]                                      ; $45a0: $ae
    xor a                                         ; $45a1: $af
    xor h                                         ; $45a2: $ac
    xor [hl]                                      ; $45a3: $ae
    xor l                                         ; $45a4: $ad
    or b                                          ; $45a5: $b0
    ld c, $06                                     ; $45a6: $0e $06
    ld b, $0e                                     ; $45a8: $06 $0e
    ld c, $0e                                     ; $45aa: $0e $0e
    ld c, $0e                                     ; $45ac: $0e $0e
    ld c, $0e                                     ; $45ae: $0e $0e
    ld c, $0e                                     ; $45b0: $0e $0e
    ld c, $2e                                     ; $45b2: $0e $2e
    ld l, $2e                                     ; $45b4: $2e $2e
    or c                                          ; $45b6: $b1
    inc e                                         ; $45b7: $1c
    inc e                                         ; $45b8: $1c
    and a                                         ; $45b9: $a7
    or d                                          ; $45ba: $b2
    xor c                                         ; $45bb: $a9
    xor d                                         ; $45bc: $aa
    xor e                                         ; $45bd: $ab
    or e                                          ; $45be: $b3
    or h                                          ; $45bf: $b4
    or b                                          ; $45c0: $b0
    xor l                                         ; $45c1: $ad
    or h                                          ; $45c2: $b4
    or e                                          ; $45c3: $b3
    xor a                                         ; $45c4: $af
    xor [hl]                                      ; $45c5: $ae
    ld c, $06                                     ; $45c6: $0e $06
    ld b, $0e                                     ; $45c8: $06 $0e
    ld c, $0e                                     ; $45ca: $0e $0e
    ld c, $0e                                     ; $45cc: $0e $0e
    ld c, $0e                                     ; $45ce: $0e $0e
    ld c, $0e                                     ; $45d0: $0e $0e
    ld l, $2e                                     ; $45d2: $2e $2e
    ld l, $2e                                     ; $45d4: $2e $2e
    or l                                          ; $45d6: $b5
    or [hl]                                       ; $45d7: $b6
    or a                                          ; $45d8: $b7
    cp b                                          ; $45d9: $b8
    cp c                                          ; $45da: $b9
    cp d                                          ; $45db: $ba
    cp e                                          ; $45dc: $bb
    cp h                                          ; $45dd: $bc
    cp l                                          ; $45de: $bd
    cp [hl]                                       ; $45df: $be
    cp a                                          ; $45e0: $bf
    ret nz                                        ; $45e1: $c0

    pop bc                                        ; $45e2: $c1
    jp nz, $c4c3                                  ; $45e3: $c2 $c3 $c4

    adc d                                         ; $45e6: $8a

Call_081_45e7:
    adc d                                         ; $45e7: $8a
    adc d                                         ; $45e8: $8a
    adc d                                         ; $45e9: $8a
    adc d                                         ; $45ea: $8a
    adc d                                         ; $45eb: $8a
    adc d                                         ; $45ec: $8a
    adc d                                         ; $45ed: $8a
    adc d                                         ; $45ee: $8a
    adc d                                         ; $45ef: $8a
    adc d                                         ; $45f0: $8a
    adc d                                         ; $45f1: $8a
    adc d                                         ; $45f2: $8a
    adc d                                         ; $45f3: $8a
    adc d                                         ; $45f4: $8a
    adc d                                         ; $45f5: $8a
    ld a, e                                       ; $45f6: $7b
    ld a, h                                       ; $45f7: $7c
    ld a, l                                       ; $45f8: $7d
    ld a, [hl]                                    ; $45f9: $7e
    push bc                                       ; $45fa: $c5
    inc e                                         ; $45fb: $1c
    inc e                                         ; $45fc: $1c
    inc e                                         ; $45fd: $1c
    add $2e                                       ; $45fe: $c6 $2e
    cpl                                           ; $4600: $2f
    inc e                                         ; $4601: $1c
    rst $00                                       ; $4602: $c7
    inc e                                         ; $4603: $1c
    inc e                                         ; $4604: $1c
    ret z                                         ; $4605: $c8

    ld b, $06                                     ; $4606: $06 $06
    ld b, $06                                     ; $4608: $06 $06
    adc d                                         ; $460a: $8a
    ld bc, $0101                                  ; $460b: $01 $01 $01
    adc d                                         ; $460e: $8a
    ld bc, $0101                                  ; $460f: $01 $01 $01
    adc d                                         ; $4612: $8a
    ld bc, $2b01                                  ; $4613: $01 $01 $2b
    inc e                                         ; $4616: $1c
    inc e                                         ; $4617: $1c
    ld d, [hl]                                    ; $4618: $56
    ld e, a                                       ; $4619: $5f
    inc e                                         ; $461a: $1c
    ret z                                         ; $461b: $c8

    ld [hl], $37                                  ; $461c: $36 $37
    ld d, [hl]                                    ; $461e: $56
    ret                                           ; $461f: $c9


    ld d, a                                       ; $4620: $57
    ld e, b                                       ; $4621: $58
    jp z, $cccb                                   ; $4622: $ca $cb $cc

    ld e, e                                       ; $4625: $5b
    ld bc, $2301                                  ; $4626: $01 $01 $23
    inc bc                                        ; $4629: $03
    ld bc, $032b                                  ; $462a: $01 $2b $03
    inc bc                                        ; $462d: $03
    inc hl                                        ; $462e: $23
    dec bc                                        ; $462f: $0b
    inc bc                                        ; $4630: $03
    inc bc                                        ; $4631: $03
    dec bc                                        ; $4632: $0b
    dec bc                                        ; $4633: $0b
    dec bc                                        ; $4634: $0b
    inc bc                                        ; $4635: $03
    call $cfce                                    ; $4636: $cd $ce $cf
    ret nc                                        ; $4639: $d0

    pop de                                        ; $463a: $d1
    jp nc, $d3cf                                  ; $463b: $d2 $cf $d3

    call nc, $d6d5                                ; $463e: $d4 $d5 $d6
    rst $10                                       ; $4641: $d7
    ret c                                         ; $4642: $d8

    reti                                          ; $4643: $d9


    jp c, Jump_000_0bd0                           ; $4644: $da $d0 $0b

    dec bc                                        ; $4647: $0b
    dec bc                                        ; $4648: $0b
    dec bc                                        ; $4649: $0b
    dec bc                                        ; $464a: $0b
    dec bc                                        ; $464b: $0b
    dec hl                                        ; $464c: $2b
    dec bc                                        ; $464d: $0b
    dec bc                                        ; $464e: $0b
    dec bc                                        ; $464f: $0b
    dec bc                                        ; $4650: $0b
    dec bc                                        ; $4651: $0b
    dec bc                                        ; $4652: $0b
    dec bc                                        ; $4653: $0b
    dec bc                                        ; $4654: $0b
    dec bc                                        ; $4655: $0b
    db $db                                        ; $4656: $db
    call c, $dedd                                 ; $4657: $dc $dd $de
    inc e                                         ; $465a: $1c
    rst $18                                       ; $465b: $df
    ldh [rNR32], a                                ; $465c: $e0 $1c
    inc e                                         ; $465e: $1c
    pop hl                                        ; $465f: $e1
    ld [c], a                                     ; $4660: $e2
    ld [hl], c                                    ; $4661: $71
    inc e                                         ; $4662: $1c
    ld a, $1c                                     ; $4663: $3e $1c
    ret z                                         ; $4665: $c8

    adc d                                         ; $4666: $8a
    adc d                                         ; $4667: $8a
    adc d                                         ; $4668: $8a
    adc d                                         ; $4669: $8a
    ld bc, $0b0b                                  ; $466a: $01 $0b $0b
    ld bc, $0b01                                  ; $466d: $01 $01 $0b
    dec bc                                        ; $4670: $0b
    rlca                                          ; $4671: $07
    ld bc, $0101                                  ; $4672: $01 $01 $01
    dec hl                                        ; $4675: $2b
    db $e3                                        ; $4676: $e3
    inc e                                         ; $4677: $1c
    ld d, [hl]                                    ; $4678: $56
    ld e, a                                       ; $4679: $5f
    inc e                                         ; $467a: $1c
    ret z                                         ; $467b: $c8

    ld [hl], $e4                                  ; $467c: $36 $e4
    ld d, [hl]                                    ; $467e: $56
    ret                                           ; $467f: $c9


    ld d, a                                       ; $4680: $57
    ld e, b                                       ; $4681: $58
    jp z, $e6e5                                   ; $4682: $ca $e5 $e6

    ld e, e                                       ; $4685: $5b
    adc d                                         ; $4686: $8a
    ld bc, $0323                                  ; $4687: $01 $23 $03
    ld bc, $032b                                  ; $468a: $01 $2b $03
    dec bc                                        ; $468d: $0b
    inc hl                                        ; $468e: $23
    dec bc                                        ; $468f: $0b
    inc bc                                        ; $4690: $03
    inc bc                                        ; $4691: $03
    dec bc                                        ; $4692: $0b
    dec bc                                        ; $4693: $0b
    dec bc                                        ; $4694: $0b
    inc bc                                        ; $4695: $03
    ld d, h                                       ; $4696: $54
    ld d, l                                       ; $4697: $55
    ld e, [hl]                                    ; $4698: $5e
    ld e, a                                       ; $4699: $5f
    rst $20                                       ; $469a: $e7
    dec [hl]                                      ; $469b: $35
    ld [hl], $c8                                  ; $469c: $36 $c8
    add sp, -$37                                  ; $469e: $e8 $c9
    ld d, [hl]                                    ; $46a0: $56
    inc e                                         ; $46a1: $1c
    jp z, Jump_000_1cc8                           ; $46a2: $ca $c8 $1c

    ld [hl], c                                    ; $46a5: $71
    inc bc                                        ; $46a6: $03
    inc bc                                        ; $46a7: $03
    inc bc                                        ; $46a8: $03
    inc bc                                        ; $46a9: $03
    dec bc                                        ; $46aa: $0b
    inc bc                                        ; $46ab: $03
    inc bc                                        ; $46ac: $03
    ld c, e                                       ; $46ad: $4b
    dec bc                                        ; $46ae: $0b
    dec bc                                        ; $46af: $0b
    ld b, e                                       ; $46b0: $43
    ld bc, $4b0b                                  ; $46b1: $01 $0b $4b
    ld bc, $e907                                  ; $46b4: $01 $07 $e9
    ld [$eceb], a                                 ; $46b7: $ea $eb $ec
    db $ed                                        ; $46ba: $ed
    db $d3                                        ; $46bb: $d3
    rst $08                                       ; $46bc: $cf
    xor $ef                                       ; $46bd: $ee $ef
    push de                                       ; $46bf: $d5
    sub $d7                                       ; $46c0: $d6 $d7
    ldh a, [$d9]                                  ; $46c2: $f0 $d9
    jp c, Jump_000_0bf1                           ; $46c4: $da $f1 $0b

    dec bc                                        ; $46c7: $0b
    dec bc                                        ; $46c8: $0b
    dec bc                                        ; $46c9: $0b
    dec bc                                        ; $46ca: $0b
    dec hl                                        ; $46cb: $2b
    dec bc                                        ; $46cc: $0b
    dec bc                                        ; $46cd: $0b
    dec bc                                        ; $46ce: $0b
    dec bc                                        ; $46cf: $0b
    dec bc                                        ; $46d0: $0b
    dec bc                                        ; $46d1: $0b
    dec bc                                        ; $46d2: $0b
    dec bc                                        ; $46d3: $0b
    dec bc                                        ; $46d4: $0b
    dec bc                                        ; $46d5: $0b
    ld a, [c]                                     ; $46d6: $f2
    di                                            ; $46d7: $f3
    db $f4                                        ; $46d8: $f4
    sbc d                                         ; $46d9: $9a
    push af                                       ; $46da: $f5
    or $f4                                        ; $46db: $f6 $f4
    sbc [hl]                                      ; $46dd: $9e
    rst $30                                       ; $46de: $f7
    di                                            ; $46df: $f3
    ld hl, sp-$5f                                 ; $46e0: $f8 $a1
    and l                                         ; $46e2: $a5
    sbc b                                         ; $46e3: $98
    sbc b                                         ; $46e4: $98
    sbc c                                         ; $46e5: $99
    ld c, $0e                                     ; $46e6: $0e $0e
    ld c, $2e                                     ; $46e8: $0e $2e
    ld c, $0e                                     ; $46ea: $0e $0e
    ld c, $2e                                     ; $46ec: $0e $2e
    ld c, $0e                                     ; $46ee: $0e $0e
    ld c, $2e                                     ; $46f0: $0e $2e
    ld c, $0e                                     ; $46f2: $0e $0e
    ld c, $0e                                     ; $46f4: $0e $0e
    adc [hl]                                      ; $46f6: $8e
    adc l                                         ; $46f7: $8d
    adc h                                         ; $46f8: $8c
    adc e                                         ; $46f9: $8b
    sub d                                         ; $46fa: $92
    sub c                                         ; $46fb: $91
    sub b                                         ; $46fc: $90
    adc a                                         ; $46fd: $8f
    sub [hl]                                      ; $46fe: $96
    sub l                                         ; $46ff: $95
    sub h                                         ; $4700: $94
    sub e                                         ; $4701: $93
    and l                                         ; $4702: $a5
    sbc b                                         ; $4703: $98
    sbc b                                         ; $4704: $98
    ld sp, hl                                     ; $4705: $f9
    ld l, $2e                                     ; $4706: $2e $2e
    ld l, $2e                                     ; $4708: $2e $2e
    ld l, $2e                                     ; $470a: $2e $2e
    ld l, $2e                                     ; $470c: $2e $2e
    ld l, $2e                                     ; $470e: $2e $2e
    ld l, $2e                                     ; $4710: $2e $2e
    ld c, $0e                                     ; $4712: $0e $0e
    ld c, $0e                                     ; $4714: $0e $0e
    or c                                          ; $4716: $b1
    inc e                                         ; $4717: $1c
    inc e                                         ; $4718: $1c
    and a                                         ; $4719: $a7
    or d                                          ; $471a: $b2
    xor c                                         ; $471b: $a9
    xor d                                         ; $471c: $aa
    xor e                                         ; $471d: $ab
    xor [hl]                                      ; $471e: $ae
    xor a                                         ; $471f: $af
    or e                                          ; $4720: $b3
    or h                                          ; $4721: $b4
    xor l                                         ; $4722: $ad
    or b                                          ; $4723: $b0
    or h                                          ; $4724: $b4
    or e                                          ; $4725: $b3
    ld c, $06                                     ; $4726: $0e $06
    ld b, $0e                                     ; $4728: $06 $0e
    ld c, $0e                                     ; $472a: $0e $0e
    ld c, $0e                                     ; $472c: $0e $0e
    ld c, $0e                                     ; $472e: $0e $0e
    ld c, $0e                                     ; $4730: $0e $0e
    ld l, $2e                                     ; $4732: $2e $2e
    ld l, $2e                                     ; $4734: $2e $2e
    or c                                          ; $4736: $b1
    inc e                                         ; $4737: $1c
    inc e                                         ; $4738: $1c
    ld a, [$a9b2]                                 ; $4739: $fa $b2 $a9
    xor d                                         ; $473c: $aa
    ei                                            ; $473d: $fb
    or b                                          ; $473e: $b0
    xor l                                         ; $473f: $ad
    xor [hl]                                      ; $4740: $ae
    xor h                                         ; $4741: $ac
    xor a                                         ; $4742: $af
    xor [hl]                                      ; $4743: $ae
    xor l                                         ; $4744: $ad
    xor h                                         ; $4745: $ac
    ld c, $06                                     ; $4746: $0e $06
    ld b, $0e                                     ; $4748: $06 $0e
    ld c, $0e                                     ; $474a: $0e $0e
    ld c, $0e                                     ; $474c: $0e $0e
    ld c, $0e                                     ; $474e: $0e $0e
    ld c, $2e                                     ; $4750: $0e $2e
    ld l, $2e                                     ; $4752: $2e $2e
    ld l, $2e                                     ; $4754: $2e $2e
    add a                                         ; $4756: $87
    adc b                                         ; $4757: $88
    adc c                                         ; $4758: $89
    adc d                                         ; $4759: $8a
    ld [hl], a                                    ; $475a: $77
    ld a, b                                       ; $475b: $78
    ld a, c                                       ; $475c: $79
    ld a, d                                       ; $475d: $7a
    ld a, e                                       ; $475e: $7b
    ld a, h                                       ; $475f: $7c
    ld a, l                                       ; $4760: $7d
    ld a, [hl]                                    ; $4761: $7e
    ld l, b                                       ; $4762: $68
    ld h, l                                       ; $4763: $65
    ld h, [hl]                                    ; $4764: $66
    ld l, e                                       ; $4765: $6b
    ld c, $0e                                     ; $4766: $0e $0e
    ld c, $0e                                     ; $4768: $0e $0e
    ld b, $06                                     ; $476a: $06 $06
    ld b, $06                                     ; $476c: $06 $06
    ld b, $06                                     ; $476e: $06 $06
    ld b, $06                                     ; $4770: $06 $06
    ld bc, $0101                                  ; $4772: $01 $01 $01
    ld bc, $fdfc                                  ; $4775: $01 $fc $fd
    db $ec                                        ; $4778: $ec
    call $fffe                                    ; $4779: $cd $fe $ff
    xor $d1                                       ; $477c: $ee $d1
    nop                                           ; $477e: $00
    ld bc, $d1d7                                  ; $477f: $01 $d7 $d1
    ld [bc], a                                    ; $4782: $02
    inc bc                                        ; $4783: $03
    inc b                                         ; $4784: $04
    call nc, $0b0b                                ; $4785: $d4 $0b $0b
    dec bc                                        ; $4788: $0b
    dec hl                                        ; $4789: $2b
    dec bc                                        ; $478a: $0b
    dec bc                                        ; $478b: $0b
    dec bc                                        ; $478c: $0b
    dec hl                                        ; $478d: $2b
    dec bc                                        ; $478e: $0b
    dec bc                                        ; $478f: $0b
    dec bc                                        ; $4790: $0b
    dec hl                                        ; $4791: $2b
    dec hl                                        ; $4792: $2b
    dec hl                                        ; $4793: $2b
    dec hl                                        ; $4794: $2b
    dec hl                                        ; $4795: $2b
    ld e, a                                       ; $4796: $5f
    ld d, l                                       ; $4797: $55
    ret z                                         ; $4798: $c8

    ld h, d                                       ; $4799: $62
    scf                                           ; $479a: $37
    dec [hl]                                      ; $479b: $35
    ld [hl], $56                                  ; $479c: $36 $56
    scf                                           ; $479e: $37
    db $e4                                        ; $479f: $e4
    rst $20                                       ; $47a0: $e7
    ld e, b                                       ; $47a1: $58
    ld e, b                                       ; $47a2: $58
    push hl                                       ; $47a3: $e5
    ld e, d                                       ; $47a4: $5a
    ld e, e                                       ; $47a5: $5b
    inc hl                                        ; $47a6: $23
    inc bc                                        ; $47a7: $03
    dec bc                                        ; $47a8: $0b
    ld bc, $0323                                  ; $47a9: $01 $23 $03
    inc bc                                        ; $47ac: $03
    inc bc                                        ; $47ad: $03
    inc hl                                        ; $47ae: $23
    dec bc                                        ; $47af: $0b
    dec bc                                        ; $47b0: $0b
    inc bc                                        ; $47b1: $03
    inc hl                                        ; $47b2: $23
    dec bc                                        ; $47b3: $0b
    inc bc                                        ; $47b4: $03
    inc bc                                        ; $47b5: $03
    ld a, e                                       ; $47b6: $7b
    ld a, h                                       ; $47b7: $7c
    ld a, l                                       ; $47b8: $7d
    ld a, [hl]                                    ; $47b9: $7e
    ld h, a                                       ; $47ba: $67
    ld h, d                                       ; $47bb: $62
    ld l, d                                       ; $47bc: $6a
    inc e                                         ; $47bd: $1c
    ret z                                         ; $47be: $c8

    inc e                                         ; $47bf: $1c
    inc e                                         ; $47c0: $1c
    ld a, $ca                                     ; $47c1: $3e $ca
    ld d, [hl]                                    ; $47c3: $56
    inc e                                         ; $47c4: $1c
    inc e                                         ; $47c5: $1c
    ld b, $06                                     ; $47c6: $06 $06
    ld b, $06                                     ; $47c8: $06 $06
    ld bc, $0101                                  ; $47ca: $01 $01 $01
    ld bc, $010b                                  ; $47cd: $01 $0b $01
    ld bc, $0b01                                  ; $47d0: $01 $01 $0b
    inc bc                                        ; $47d3: $03
    ld bc, $6701                                  ; $47d4: $01 $01 $67
    ld l, l                                       ; $47d7: $6d
    ld h, a                                       ; $47d8: $67
    or l                                          ; $47d9: $b5
    ld l, c                                       ; $47da: $69
    ld l, e                                       ; $47db: $6b
    ld l, [hl]                                    ; $47dc: $6e
    cp c                                          ; $47dd: $b9
    inc e                                         ; $47de: $1c
    inc e                                         ; $47df: $1c
    ld l, a                                       ; $47e0: $6f
    cp l                                          ; $47e1: $bd
    inc e                                         ; $47e2: $1c
    inc e                                         ; $47e3: $1c
    ld [hl], b                                    ; $47e4: $70
    pop bc                                        ; $47e5: $c1
    ld bc, $0101                                  ; $47e6: $01 $01 $01
    adc d                                         ; $47e9: $8a
    ld bc, $8201                                  ; $47ea: $01 $01 $82
    adc d                                         ; $47ed: $8a
    ld bc, $8201                                  ; $47ee: $01 $01 $82
    adc d                                         ; $47f1: $8a
    ld bc, $8201                                  ; $47f2: $01 $01 $82
    adc d                                         ; $47f5: $8a
    dec b                                         ; $47f6: $05
    ld b, $07                                     ; $47f7: $06 $07
    ret c                                         ; $47f9: $d8

    ld [$eeff], sp                                ; $47fa: $08 $ff $ee
    jp hl                                         ; $47fd: $e9


    rst $08                                       ; $47fe: $cf
    db $d3                                        ; $47ff: $d3
    rst $10                                       ; $4800: $d7
    db $ed                                        ; $4801: $ed
    reti                                          ; $4802: $d9


    db $d3                                        ; $4803: $d3
    rst $08                                       ; $4804: $cf
    add hl, bc                                    ; $4805: $09
    dec hl                                        ; $4806: $2b
    dec hl                                        ; $4807: $2b
    dec hl                                        ; $4808: $2b
    dec hl                                        ; $4809: $2b
    dec bc                                        ; $480a: $0b
    dec bc                                        ; $480b: $0b
    dec bc                                        ; $480c: $0b
    dec hl                                        ; $480d: $2b
    dec hl                                        ; $480e: $2b
    dec bc                                        ; $480f: $0b
    dec bc                                        ; $4810: $0b
    dec hl                                        ; $4811: $2b
    dec bc                                        ; $4812: $0b
    dec hl                                        ; $4813: $2b
    dec bc                                        ; $4814: $0b
    dec bc                                        ; $4815: $0b
    ld e, e                                       ; $4816: $5b
    ld d, l                                       ; $4817: $55
    set 1, h                                      ; $4818: $cb $cc
    ld e, a                                       ; $481a: $5f
    dec [hl]                                      ; $481b: $35
    ld [hl], $37                                  ; $481c: $36 $37
    ret z                                         ; $481e: $c8

    ret                                           ; $481f: $c9


    ld d, a                                       ; $4820: $57
    and $1c                                       ; $4821: $e6 $1c
    ret z                                         ; $4823: $c8

    ld e, d                                       ; $4824: $5a
    ld e, e                                       ; $4825: $5b
    inc hl                                        ; $4826: $23
    inc bc                                        ; $4827: $03
    dec bc                                        ; $4828: $0b
    dec bc                                        ; $4829: $0b
    inc hl                                        ; $482a: $23
    inc bc                                        ; $482b: $03
    inc bc                                        ; $482c: $03
    inc bc                                        ; $482d: $03
    ld l, e                                       ; $482e: $6b
    dec bc                                        ; $482f: $0b
    inc bc                                        ; $4830: $03
    dec bc                                        ; $4831: $0b
    ld bc, $036b                                  ; $4832: $01 $6b $03
    inc bc                                        ; $4835: $03
    ld d, h                                       ; $4836: $54
    ld d, l                                       ; $4837: $55
    ld a, [bc]                                    ; $4838: $0a
    dec bc                                        ; $4839: $0b
    inc [hl]                                      ; $483a: $34
    dec [hl]                                      ; $483b: $35
    ld [hl], $37                                  ; $483c: $36 $37
    add sp, -$37                                  ; $483e: $e8 $c9
    ld d, a                                       ; $4840: $57
    ld e, b                                       ; $4841: $58
    jp z, Jump_081_5ae5                           ; $4842: $ca $e5 $5a

    ld e, e                                       ; $4845: $5b
    inc bc                                        ; $4846: $03
    inc bc                                        ; $4847: $03
    dec bc                                        ; $4848: $0b
    dec bc                                        ; $4849: $0b
    inc bc                                        ; $484a: $03
    inc bc                                        ; $484b: $03
    inc bc                                        ; $484c: $03
    inc bc                                        ; $484d: $03
    dec bc                                        ; $484e: $0b
    dec bc                                        ; $484f: $0b
    inc bc                                        ; $4850: $03
    inc bc                                        ; $4851: $03
    dec bc                                        ; $4852: $0b
    dec bc                                        ; $4853: $0b
    inc bc                                        ; $4854: $03
    inc bc                                        ; $4855: $03
    inc e                                         ; $4856: $1c
    ld [hl], c                                    ; $4857: $71
    ld [hl], d                                    ; $4858: $72
    db $db                                        ; $4859: $db
    ret z                                         ; $485a: $c8

    add hl, sp                                    ; $485b: $39
    inc e                                         ; $485c: $1c
    inc e                                         ; $485d: $1c
    add sp, -$37                                  ; $485e: $e8 $c9
    ld a, [bc]                                    ; $4860: $0a
    dec bc                                        ; $4861: $0b
    and $e5                                       ; $4862: $e6 $e5
    ld e, d                                       ; $4864: $5a
    ld e, e                                       ; $4865: $5b
    ld bc, $8207                                  ; $4866: $01 $07 $82
    adc d                                         ; $4869: $8a
    dec bc                                        ; $486a: $0b
    inc hl                                        ; $486b: $23
    ld bc, $0b01                                  ; $486c: $01 $01 $0b
    dec bc                                        ; $486f: $0b
    dec bc                                        ; $4870: $0b
    dec bc                                        ; $4871: $0b
    dec bc                                        ; $4872: $0b
    dec bc                                        ; $4873: $0b
    inc bc                                        ; $4874: $03
    inc bc                                        ; $4875: $03
    inc e                                         ; $4876: $1c
    ld b, d                                       ; $4877: $42
    ld b, l                                       ; $4878: $45
    inc e                                         ; $4879: $1c
    inc e                                         ; $487a: $1c
    inc e                                         ; $487b: $1c
    inc e                                         ; $487c: $1c
    inc e                                         ; $487d: $1c
    inc e                                         ; $487e: $1c
    inc e                                         ; $487f: $1c
    ld h, d                                       ; $4880: $62
    ld l, d                                       ; $4881: $6a
    ld l, e                                       ; $4882: $6b
    ld l, c                                       ; $4883: $69
    ld l, h                                       ; $4884: $6c
    inc e                                         ; $4885: $1c
    ld bc, $0101                                  ; $4886: $01 $01 $01
    ld bc, $0101                                  ; $4889: $01 $01 $01
    ld bc, $0101                                  ; $488c: $01 $01 $01
    ld bc, $0101                                  ; $488f: $01 $01 $01
    ld bc, $0101                                  ; $4892: $01 $01 $01
    ld bc, $1c1c                                  ; $4895: $01 $1c $1c
    inc e                                         ; $4898: $1c
    ld a, $3e                                     ; $4899: $3e $3e
    inc e                                         ; $489b: $1c
    inc e                                         ; $489c: $1c
    inc e                                         ; $489d: $1c
    inc e                                         ; $489e: $1c
    inc e                                         ; $489f: $1c

jr_081_48a0:
    ld [hl], e                                    ; $48a0: $73
    ld b, b                                       ; $48a1: $40
    inc e                                         ; $48a2: $1c
    inc c                                         ; $48a3: $0c
    inc e                                         ; $48a4: $1c
    ld b, d                                       ; $48a5: $42
    ld bc, $0101                                  ; $48a6: $01 $01 $01
    ld bc, $0101                                  ; $48a9: $01 $01 $01
    ld bc, $0101                                  ; $48ac: $01 $01 $01
    ld bc, $0101                                  ; $48af: $01 $01 $01
    ld bc, $0109                                  ; $48b2: $01 $09 $01
    ld bc, $dd1c                                  ; $48b5: $01 $1c $dd
    ld [$1ce0], a                                 ; $48b8: $ea $e0 $1c
    ld de, $d210                                  ; $48bb: $11 $10 $d2
    ld b, e                                       ; $48be: $43
    dec d                                         ; $48bf: $15
    inc d                                         ; $48c0: $14
    sub $45                                       ; $48c1: $d6 $45
    add hl, de                                    ; $48c3: $19
    jr jr_081_48a0                                ; $48c4: $18 $da

    ld bc, $8282                                  ; $48c6: $01 $82 $82
    add d                                         ; $48c9: $82
    ld bc, $8282                                  ; $48ca: $01 $82 $82
    and d                                         ; $48cd: $a2
    ld bc, $8282                                  ; $48ce: $01 $82 $82
    and d                                         ; $48d1: $a2
    ld bc, $8282                                  ; $48d2: $01 $82 $82
    and d                                         ; $48d5: $a2
    rst $18                                       ; $48d6: $df
    dec c                                         ; $48d7: $0d
    pop hl                                        ; $48d8: $e1
    call nc, Call_000_0ed1                        ; $48d9: $d4 $d1 $0e
    db $e4                                        ; $48dc: $e4
    ret c                                         ; $48dd: $d8

    push de                                       ; $48de: $d5
    rrca                                          ; $48df: $0f
    rst $20                                       ; $48e0: $e7
    call c, $10d9                                 ; $48e1: $dc $d9 $10
    ld [$82e0], a                                 ; $48e4: $ea $e0 $82
    adc d                                         ; $48e7: $8a
    and d                                         ; $48e8: $a2
    and d                                         ; $48e9: $a2
    and d                                         ; $48ea: $a2
    adc d                                         ; $48eb: $8a
    and d                                         ; $48ec: $a2
    and d                                         ; $48ed: $a2
    and d                                         ; $48ee: $a2
    adc d                                         ; $48ef: $8a
    and d                                         ; $48f0: $a2
    and d                                         ; $48f1: $a2
    and d                                         ; $48f2: $a2
    adc d                                         ; $48f3: $8a
    add d                                         ; $48f4: $82
    add d                                         ; $48f5: $82
    ld h, h                                       ; $48f6: $64
    ld l, h                                       ; $48f7: $6c
    inc e                                         ; $48f8: $1c
    inc e                                         ; $48f9: $1c
    ld h, [hl]                                    ; $48fa: $66
    inc e                                         ; $48fb: $1c
    ld [hl], c                                    ; $48fc: $71
    ld de, $1c1c                                  ; $48fd: $11 $1c $1c
    ld [de], a                                    ; $4900: $12
    inc de                                        ; $4901: $13
    inc e                                         ; $4902: $1c
    ld de, $1c76                                  ; $4903: $11 $76 $1c
    ld bc, $0101                                  ; $4906: $01 $01 $01
    ld bc, $0101                                  ; $4909: $01 $01 $01
    rlca                                          ; $490c: $07
    add hl, bc                                    ; $490d: $09
    ld bc, $0901                                  ; $490e: $01 $01 $09
    add hl, bc                                    ; $4911: $09
    ld bc, $0109                                  ; $4912: $01 $09 $01
    ld bc, $1112                                  ; $4915: $01 $12 $11
    halt                                          ; $4918: $76
    inc e                                         ; $4919: $1c
    halt                                          ; $491a: $76
    inc de                                        ; $491b: $13
    ld [hl], e                                    ; $491c: $73
    inc e                                         ; $491d: $1c
    ld [hl], e                                    ; $491e: $73
    inc c                                         ; $491f: $0c
    ld [de], a                                    ; $4920: $12
    inc de                                        ; $4921: $13
    inc e                                         ; $4922: $1c
    inc e                                         ; $4923: $1c
    halt                                          ; $4924: $76
    inc c                                         ; $4925: $0c
    add hl, bc                                    ; $4926: $09
    add hl, bc                                    ; $4927: $09
    ld bc, $0101                                  ; $4928: $01 $01 $01
    add hl, bc                                    ; $492b: $09
    ld bc, $0101                                  ; $492c: $01 $01 $01
    add hl, bc                                    ; $492f: $09
    add hl, bc                                    ; $4930: $09
    add hl, bc                                    ; $4931: $09
    ld bc, $0101                                  ; $4932: $01 $01 $01
    add hl, bc                                    ; $4935: $09
    inc e                                         ; $4936: $1c
    inc e                                         ; $4937: $1c
    inc e                                         ; $4938: $1c
    rrca                                          ; $4939: $0f
    inc e                                         ; $493a: $1c
    inc e                                         ; $493b: $1c

jr_081_493c:
    inc e                                         ; $493c: $1c
    inc e                                         ; $493d: $1c
    inc e                                         ; $493e: $1c
    inc e                                         ; $493f: $1c
    inc e                                         ; $4940: $1c
    inc e                                         ; $4941: $1c
    ld [de], a                                    ; $4942: $12
    inc de                                        ; $4943: $13
    inc e                                         ; $4944: $1c
    inc e                                         ; $4945: $1c
    ld bc, $0101                                  ; $4946: $01 $01 $01
    inc bc                                        ; $4949: $03
    ld bc, $0101                                  ; $494a: $01 $01 $01
    ld bc, $0101                                  ; $494d: $01 $01 $01
    ld bc, $0901                                  ; $4950: $01 $01 $09
    add hl, bc                                    ; $4953: $09
    ld bc, $1c01                                  ; $4954: $01 $01 $1c
    ld de, $d210                                  ; $4957: $11 $10 $d2
    inc e                                         ; $495a: $1c
    dec d                                         ; $495b: $15
    inc d                                         ; $495c: $14
    sub $1c                                       ; $495d: $d6 $1c
    add hl, de                                    ; $495f: $19
    jr jr_081_493c                                ; $4960: $18 $da

    ld l, $2f                                     ; $4962: $2e $2f
    inc e                                         ; $4964: $1c
    rrca                                          ; $4965: $0f
    ld bc, $8282                                  ; $4966: $01 $82 $82
    and d                                         ; $4969: $a2
    ld bc, $8282                                  ; $496a: $01 $82 $82
    and d                                         ; $496d: $a2
    ld bc, $8282                                  ; $496e: $01 $82 $82
    and d                                         ; $4971: $a2
    ld bc, $0101                                  ; $4972: $01 $01 $01
    inc bc                                        ; $4975: $03
    or [hl]                                       ; $4976: $b6
    or a                                          ; $4977: $b7
    cp b                                          ; $4978: $b8
    inc e                                         ; $4979: $1c
    cp d                                          ; $497a: $ba
    cp e                                          ; $497b: $bb
    cp h                                          ; $497c: $bc
    push bc                                       ; $497d: $c5
    cp [hl]                                       ; $497e: $be
    cp a                                          ; $497f: $bf
    ret nz                                        ; $4980: $c0

    add $c2                                       ; $4981: $c6 $c2
    jp $c7c4                                      ; $4983: $c3 $c4 $c7


    adc d                                         ; $4986: $8a
    adc d                                         ; $4987: $8a
    adc d                                         ; $4988: $8a
    ld bc, $8a8a                                  ; $4989: $01 $8a $8a
    adc d                                         ; $498c: $8a
    adc d                                         ; $498d: $8a
    adc d                                         ; $498e: $8a
    adc d                                         ; $498f: $8a
    adc d                                         ; $4990: $8a
    adc d                                         ; $4991: $8a
    adc d                                         ; $4992: $8a
    adc d                                         ; $4993: $8a
    adc d                                         ; $4994: $8a
    adc d                                         ; $4995: $8a
    inc e                                         ; $4996: $1c
    inc e                                         ; $4997: $1c
    ld b, b                                       ; $4998: $40
    ld b, e                                       ; $4999: $43
    inc e                                         ; $499a: $1c
    inc d                                         ; $499b: $14
    ld b, d                                       ; $499c: $42
    ld b, l                                       ; $499d: $45
    inc e                                         ; $499e: $1c
    dec d                                         ; $499f: $15
    inc e                                         ; $49a0: $1c
    inc e                                         ; $49a1: $1c
    ld b, b                                       ; $49a2: $40
    ld b, e                                       ; $49a3: $43
    inc e                                         ; $49a4: $1c
    inc e                                         ; $49a5: $1c
    ld bc, $0101                                  ; $49a6: $01 $01 $01
    ld bc, $0b01                                  ; $49a9: $01 $01 $0b
    ld bc, $0101                                  ; $49ac: $01 $01 $01
    dec bc                                        ; $49af: $0b
    ld bc, $0101                                  ; $49b0: $01 $01 $01
    ld bc, $0101                                  ; $49b3: $01 $01 $01
    ld [hl], e                                    ; $49b6: $73
    ld de, $1c76                                  ; $49b7: $11 $76 $1c
    inc e                                         ; $49ba: $1c
    inc e                                         ; $49bb: $1c
    ld [hl], e                                    ; $49bc: $73
    ld de, $1c1c                                  ; $49bd: $11 $1c $1c
    ld a, $1c                                     ; $49c0: $3e $1c
    inc e                                         ; $49c2: $1c
    inc e                                         ; $49c3: $1c
    inc e                                         ; $49c4: $1c
    inc e                                         ; $49c5: $1c
    ld bc, $0109                                  ; $49c6: $01 $09 $01
    ld bc, $0101                                  ; $49c9: $01 $01 $01
    ld bc, $0109                                  ; $49cc: $01 $09 $01
    ld bc, $0101                                  ; $49cf: $01 $01 $01
    ld bc, $0101                                  ; $49d2: $01 $01 $01
    ld bc, $1c1c                                  ; $49d5: $01 $1c $1c
    inc e                                         ; $49d8: $1c
    db $dd                                        ; $49d9: $dd
    inc e                                         ; $49da: $1c
    inc e                                         ; $49db: $1c
    ld l, c                                       ; $49dc: $69
    ld de, $621c                                  ; $49dd: $11 $1c $62
    ld l, d                                       ; $49e0: $6a
    dec d                                         ; $49e1: $15
    ld l, c                                       ; $49e2: $69
    ld l, h                                       ; $49e3: $6c
    ld l, c                                       ; $49e4: $69
    add hl, de                                    ; $49e5: $19
    ld bc, $0101                                  ; $49e6: $01 $01 $01
    add d                                         ; $49e9: $82
    ld bc, $0101                                  ; $49ea: $01 $01 $01
    add d                                         ; $49ed: $82
    ld bc, $0101                                  ; $49ee: $01 $01 $01
    add d                                         ; $49f1: $82
    ld bc, $0101                                  ; $49f2: $01 $01 $01
    add d                                         ; $49f5: $82
    call c, $dedd                                 ; $49f6: $dc $dd $de
    db $e3                                        ; $49f9: $e3
    rst $18                                       ; $49fa: $df
    ldh [rNR32], a                                ; $49fb: $e0 $1c
    inc e                                         ; $49fd: $1c
    pop hl                                        ; $49fe: $e1
    ld [c], a                                     ; $49ff: $e2
    ld l, $2f                                     ; $4a00: $2e $2f
    ret z                                         ; $4a02: $c8

    add hl, sp                                    ; $4a03: $39
    inc e                                         ; $4a04: $1c
    inc e                                         ; $4a05: $1c
    adc d                                         ; $4a06: $8a
    adc d                                         ; $4a07: $8a
    adc d                                         ; $4a08: $8a
    adc d                                         ; $4a09: $8a
    dec bc                                        ; $4a0a: $0b
    dec bc                                        ; $4a0b: $0b
    ld bc, $0b01                                  ; $4a0c: $01 $01 $0b
    dec bc                                        ; $4a0f: $0b
    ld bc, $0b01                                  ; $4a10: $01 $01 $0b
    inc hl                                        ; $4a13: $23
    ld bc, $4201                                  ; $4a14: $01 $01 $42
    ld b, l                                       ; $4a17: $45
    inc e                                         ; $4a18: $1c
    inc e                                         ; $4a19: $1c
    inc e                                         ; $4a1a: $1c
    ld h, a                                       ; $4a1b: $67
    ld h, d                                       ; $4a1c: $62
    ld l, d                                       ; $4a1d: $6a
    inc e                                         ; $4a1e: $1c
    inc e                                         ; $4a1f: $1c
    ld l, h                                       ; $4a20: $6c
    ld h, a                                       ; $4a21: $67
    inc e                                         ; $4a22: $1c
    inc e                                         ; $4a23: $1c
    inc e                                         ; $4a24: $1c
    ld l, c                                       ; $4a25: $69
    ld bc, $0101                                  ; $4a26: $01 $01 $01
    ld bc, $0101                                  ; $4a29: $01 $01 $01
    ld bc, $0101                                  ; $4a2c: $01 $01 $01
    ld bc, $0101                                  ; $4a2f: $01 $01 $01
    ld bc, $0101                                  ; $4a32: $01 $01 $01
    ld bc, $676c                                  ; $4a35: $01 $6c $67
    inc e                                         ; $4a38: $1c
    ld h, d                                       ; $4a39: $62
    ld h, a                                       ; $4a3a: $67
    ld h, d                                       ; $4a3b: $62
    ld l, e                                       ; $4a3c: $6b
    ld l, c                                       ; $4a3d: $69
    ld l, c                                       ; $4a3e: $69
    ld l, h                                       ; $4a3f: $6c
    ld h, a                                       ; $4a40: $67
    ld h, d                                       ; $4a41: $62
    ld l, e                                       ; $4a42: $6b
    ld l, e                                       ; $4a43: $6b
    ld l, c                                       ; $4a44: $69
    ld l, h                                       ; $4a45: $6c
    ld bc, $0101                                  ; $4a46: $01 $01 $01
    ld bc, $0101                                  ; $4a49: $01 $01 $01
    ld bc, $0101                                  ; $4a4c: $01 $01 $01
    ld bc, $0101                                  ; $4a4f: $01 $01 $01
    ld bc, $0101                                  ; $4a52: $01 $01 $01
    ld bc, $626a                                  ; $4a55: $01 $6a $62
    ld l, d                                       ; $4a58: $6a
    inc e                                         ; $4a59: $1c
    ld l, c                                       ; $4a5a: $69
    ld l, h                                       ; $4a5b: $6c
    ld l, e                                       ; $4a5c: $6b
    inc e                                         ; $4a5d: $1c
    ld l, d                                       ; $4a5e: $6a
    ld l, e                                       ; $4a5f: $6b
    ld h, d                                       ; $4a60: $62
    inc e                                         ; $4a61: $1c
    ld h, a                                       ; $4a62: $67
    ld l, c                                       ; $4a63: $69
    inc e                                         ; $4a64: $1c
    ld h, a                                       ; $4a65: $67
    ld bc, $0101                                  ; $4a66: $01 $01 $01
    ld bc, $0101                                  ; $4a69: $01 $01 $01
    ld bc, $0101                                  ; $4a6c: $01 $01 $01
    ld bc, $0101                                  ; $4a6f: $01 $01 $01
    ld bc, $0101                                  ; $4a72: $01 $01 $01
    ld bc, $d2d3                                  ; $4a75: $01 $d3 $d2
    pop de                                        ; $4a78: $d1
    ld c, $d7                                     ; $4a79: $0e $d7
    sub $d5                                       ; $4a7b: $d6 $d5
    rrca                                          ; $4a7d: $0f
    db $db                                        ; $4a7e: $db
    jp c, $10d9                                   ; $4a7f: $da $d9 $10

    rst $18                                       ; $4a82: $df
    sbc $1c                                       ; $4a83: $de $1c
    inc e                                         ; $4a85: $1c
    and d                                         ; $4a86: $a2
    and d                                         ; $4a87: $a2
    and d                                         ; $4a88: $a2
    adc d                                         ; $4a89: $8a
    and d                                         ; $4a8a: $a2
    and d                                         ; $4a8b: $a2
    and d                                         ; $4a8c: $a2
    adc d                                         ; $4a8d: $8a
    and d                                         ; $4a8e: $a2
    and d                                         ; $4a8f: $a2
    and d                                         ; $4a90: $a2
    adc d                                         ; $4a91: $8a
    add d                                         ; $4a92: $82
    inc hl                                        ; $4a93: $23
    ld bc, $d101                                  ; $4a94: $01 $01 $d1
    add hl, bc                                    ; $4a97: $09
    inc e                                         ; $4a98: $1c
    inc e                                         ; $4a99: $1c
    dec bc                                        ; $4a9a: $0b
    ld a, [bc]                                    ; $4a9b: $0a
    pop hl                                        ; $4a9c: $e1
    inc e                                         ; $4a9d: $1c

jr_081_4a9e:
    dec c                                         ; $4a9e: $0d
    ret c                                         ; $4a9f: $d8

    inc c                                         ; $4aa0: $0c
    inc e                                         ; $4aa1: $1c
    rst $20                                       ; $4aa2: $e7
    call c, Call_000_1c0e                         ; $4aa3: $dc $0e $1c
    and d                                         ; $4aa6: $a2
    and d                                         ; $4aa7: $a2
    ld bc, $a201                                  ; $4aa8: $01 $01 $a2
    and d                                         ; $4aab: $a2
    add d                                         ; $4aac: $82
    ld bc, $a2a2                                  ; $4aad: $01 $a2 $a2
    and d                                         ; $4ab0: $a2
    ld bc, $a2a2                                  ; $4ab1: $01 $a2 $a2
    and d                                         ; $4ab4: $a2
    ld bc, $e0ea                                  ; $4ab5: $01 $ea $e0
    rst $18                                       ; $4ab8: $df
    dec c                                         ; $4ab9: $0d
    db $10                                        ; $4aba: $10
    jp nc, Jump_000_0ed1                          ; $4abb: $d2 $d1 $0e

    inc d                                         ; $4abe: $14
    sub $d5                                       ; $4abf: $d6 $d5
    rrca                                          ; $4ac1: $0f
    jr jr_081_4a9e                                ; $4ac2: $18 $da

    reti                                          ; $4ac4: $d9


    db $10                                        ; $4ac5: $10
    add d                                         ; $4ac6: $82
    add d                                         ; $4ac7: $82
    add d                                         ; $4ac8: $82
    adc d                                         ; $4ac9: $8a
    add d                                         ; $4aca: $82
    and d                                         ; $4acb: $a2
    and d                                         ; $4acc: $a2
    adc d                                         ; $4acd: $8a
    add d                                         ; $4ace: $82
    and d                                         ; $4acf: $a2
    and d                                         ; $4ad0: $a2
    adc d                                         ; $4ad1: $8a
    add d                                         ; $4ad2: $82
    and d                                         ; $4ad3: $a2
    and d                                         ; $4ad4: $a2
    adc d                                         ; $4ad5: $8a
    inc e                                         ; $4ad6: $1c
    rrca                                          ; $4ad7: $0f
    inc e                                         ; $4ad8: $1c
    inc e                                         ; $4ad9: $1c
    inc e                                         ; $4ada: $1c
    ccf                                           ; $4adb: $3f
    inc e                                         ; $4adc: $1c
    inc e                                         ; $4add: $1c
    pop hl                                        ; $4ade: $e1
    ld b, c                                       ; $4adf: $41
    pop hl                                        ; $4ae0: $e1
    inc e                                         ; $4ae1: $1c
    inc c                                         ; $4ae2: $0c
    ret c                                         ; $4ae3: $d8

    db $e4                                        ; $4ae4: $e4
    inc e                                         ; $4ae5: $1c
    ld bc, $0103                                  ; $4ae6: $01 $03 $01
    ld bc, $8201                                  ; $4ae9: $01 $01 $82
    ld bc, $a201                                  ; $4aec: $01 $01 $a2
    add d                                         ; $4aef: $82
    add d                                         ; $4af0: $82
    ld bc, $8282                                  ; $4af1: $01 $82 $82
    add d                                         ; $4af4: $82
    ld bc, $eae0                                  ; $4af5: $01 $e0 $ea
    ccf                                           ; $4af8: $3f
    db $dd                                        ; $4af9: $dd
    jp nc, $d4d3                                  ; $4afa: $d2 $d3 $d4

    pop hl                                        ; $4afd: $e1
    sub $d7                                       ; $4afe: $d6 $d7
    ret c                                         ; $4b00: $d8

    db $e4                                        ; $4b01: $e4
    jp c, $dcdb                                   ; $4b02: $da $db $dc

    rst $20                                       ; $4b05: $e7
    and d                                         ; $4b06: $a2
    and d                                         ; $4b07: $a2
    add d                                         ; $4b08: $82
    ld [bc], a                                    ; $4b09: $02
    add d                                         ; $4b0a: $82
    add d                                         ; $4b0b: $82
    add d                                         ; $4b0c: $82
    add d                                         ; $4b0d: $82
    add d                                         ; $4b0e: $82
    add d                                         ; $4b0f: $82
    add d                                         ; $4b10: $82
    add d                                         ; $4b11: $82
    add d                                         ; $4b12: $82
    add d                                         ; $4b13: $82
    add d                                         ; $4b14: $82
    add d                                         ; $4b15: $82
    ld a, $1c                                     ; $4b16: $3e $1c
    inc e                                         ; $4b18: $1c
    ld h, b                                       ; $4b19: $60
    db $dd                                        ; $4b1a: $dd
    inc e                                         ; $4b1b: $1c
    inc e                                         ; $4b1c: $1c
    ld b, a                                       ; $4b1d: $47
    db $dd                                        ; $4b1e: $dd
    inc e                                         ; $4b1f: $1c
    inc e                                         ; $4b20: $1c
    ld [hl], c                                    ; $4b21: $71
    db $dd                                        ; $4b22: $dd
    ld l, $2f                                     ; $4b23: $2e $2f
    inc e                                         ; $4b25: $1c
    ld bc, $0101                                  ; $4b26: $01 $01 $01
    dec h                                         ; $4b29: $25
    ld [bc], a                                    ; $4b2a: $02
    ld bc, $6301                                  ; $4b2b: $01 $01 $63
    ld [bc], a                                    ; $4b2e: $02
    ld bc, $0701                                  ; $4b2f: $01 $01 $07
    ld [bc], a                                    ; $4b32: $02
    ld bc, $0101                                  ; $4b33: $01 $01 $01
    ld d, c                                       ; $4b36: $51
    ld d, b                                       ; $4b37: $50
    ld c, a                                       ; $4b38: $4f
    ld c, [hl]                                    ; $4b39: $4e
    ld c, c                                       ; $4b3a: $49
    ld c, b                                       ; $4b3b: $48
    ld b, h                                       ; $4b3c: $44
    ld b, a                                       ; $4b3d: $47
    inc e                                         ; $4b3e: $1c
    inc e                                         ; $4b3f: $1c
    inc e                                         ; $4b40: $1c
    inc e                                         ; $4b41: $1c
    inc e                                         ; $4b42: $1c
    inc e                                         ; $4b43: $1c
    ld de, $2516                                  ; $4b44: $11 $16 $25
    dec h                                         ; $4b47: $25
    dec h                                         ; $4b48: $25
    dec h                                         ; $4b49: $25
    ld h, e                                       ; $4b4a: $63
    ld h, e                                       ; $4b4b: $63
    ld h, e                                       ; $4b4c: $63
    ld h, e                                       ; $4b4d: $63
    ld bc, $0101                                  ; $4b4e: $01 $01 $01
    ld bc, $0101                                  ; $4b51: $01 $01 $01
    add hl, bc                                    ; $4b54: $09
    add hl, bc                                    ; $4b55: $09
    ld c, l                                       ; $4b56: $4d
    ld c, h                                       ; $4b57: $4c
    ld c, e                                       ; $4b58: $4b
    ld c, d                                       ; $4b59: $4a
    ld c, c                                       ; $4b5a: $49
    ld c, b                                       ; $4b5b: $48
    ld b, h                                       ; $4b5c: $44
    ld c, b                                       ; $4b5d: $48
    inc de                                        ; $4b5e: $13
    ld [hl], l                                    ; $4b5f: $75
    ld de, $171c                                  ; $4b60: $11 $1c $17
    ld [de], a                                    ; $4b63: $12
    inc e                                         ; $4b64: $1c
    inc e                                         ; $4b65: $1c
    dec h                                         ; $4b66: $25
    dec h                                         ; $4b67: $25
    dec h                                         ; $4b68: $25
    dec h                                         ; $4b69: $25
    ld h, e                                       ; $4b6a: $63
    ld h, e                                       ; $4b6b: $63
    ld h, e                                       ; $4b6c: $63
    ld h, e                                       ; $4b6d: $63
    add hl, bc                                    ; $4b6e: $09
    ld bc, $0109                                  ; $4b6f: $01 $09 $01
    add hl, bc                                    ; $4b72: $09
    add hl, bc                                    ; $4b73: $09
    ld bc, $de01                                  ; $4b74: $01 $01 $de
    rst $18                                       ; $4b77: $df
    ldh [$ea], a                                  ; $4b78: $e0 $ea
    add hl, bc                                    ; $4b7a: $09
    pop de                                        ; $4b7b: $d1
    jp nc, Jump_000_0a10                          ; $4b7c: $d2 $10 $0a

    dec bc                                        ; $4b7f: $0b
    sub $14                                       ; $4b80: $d6 $14
    ret c                                         ; $4b82: $d8

    dec c                                         ; $4b83: $0d
    jp c, $8318                                   ; $4b84: $da $18 $83

    and d                                         ; $4b87: $a2
    and d                                         ; $4b88: $a2
    and d                                         ; $4b89: $a2
    add d                                         ; $4b8a: $82
    add d                                         ; $4b8b: $82
    add d                                         ; $4b8c: $82
    and d                                         ; $4b8d: $a2
    add d                                         ; $4b8e: $82
    add d                                         ; $4b8f: $82
    add d                                         ; $4b90: $82
    and d                                         ; $4b91: $a2
    add d                                         ; $4b92: $82
    add d                                         ; $4b93: $82
    add d                                         ; $4b94: $82
    and d                                         ; $4b95: $a2
    db $dd                                        ; $4b96: $dd
    inc e                                         ; $4b97: $1c
    inc e                                         ; $4b98: $1c
    inc e                                         ; $4b99: $1c
    ld de, $1c1c                                  ; $4b9a: $11 $1c $1c
    inc e                                         ; $4b9d: $1c
    dec d                                         ; $4b9e: $15
    inc e                                         ; $4b9f: $1c
    inc e                                         ; $4ba0: $1c
    ld de, $0c19                                  ; $4ba1: $11 $19 $0c
    ld [de], a                                    ; $4ba4: $12
    inc e                                         ; $4ba5: $1c
    ld [bc], a                                    ; $4ba6: $02
    ld bc, $0101                                  ; $4ba7: $01 $01 $01
    and d                                         ; $4baa: $a2
    ld bc, $0101                                  ; $4bab: $01 $01 $01
    and d                                         ; $4bae: $a2
    ld bc, $0901                                  ; $4baf: $01 $01 $09
    and d                                         ; $4bb2: $a2
    add hl, bc                                    ; $4bb3: $09
    add hl, bc                                    ; $4bb4: $09
    ld bc, $111c                                  ; $4bb5: $01 $1c $11
    ld [hl], h                                    ; $4bb8: $74
    ld [hl], l                                    ; $4bb9: $75
    ld [de], a                                    ; $4bba: $12
    ld d, $0c                                     ; $4bbb: $16 $0c
    ld [de], a                                    ; $4bbd: $12
    ld [hl], h                                    ; $4bbe: $74
    inc c                                         ; $4bbf: $0c
    inc e                                         ; $4bc0: $1c
    halt                                          ; $4bc1: $76
    inc e                                         ; $4bc2: $1c
    inc e                                         ; $4bc3: $1c
    inc e                                         ; $4bc4: $1c
    inc e                                         ; $4bc5: $1c
    ld bc, $0109                                  ; $4bc6: $01 $09 $01
    ld bc, $0909                                  ; $4bc9: $01 $09 $09
    add hl, bc                                    ; $4bcc: $09
    add hl, bc                                    ; $4bcd: $09
    ld bc, $0109                                  ; $4bce: $01 $09 $01
    ld bc, $0101                                  ; $4bd1: $01 $01 $01
    ld bc, $1101                                  ; $4bd4: $01 $01 $11
    ld b, b                                       ; $4bd7: $40
    ld b, e                                       ; $4bd8: $43
    inc e                                         ; $4bd9: $1c
    inc e                                         ; $4bda: $1c
    ld b, d                                       ; $4bdb: $42
    ld b, l                                       ; $4bdc: $45
    inc e                                         ; $4bdd: $1c
    inc c                                         ; $4bde: $0c
    inc e                                         ; $4bdf: $1c
    inc e                                         ; $4be0: $1c
    inc e                                         ; $4be1: $1c
    ld [hl], e                                    ; $4be2: $73
    ld de, $711c                                  ; $4be3: $11 $1c $71
    add hl, bc                                    ; $4be6: $09
    ld bc, $0101                                  ; $4be7: $01 $01 $01
    ld bc, $0101                                  ; $4bea: $01 $01 $01
    ld bc, $0109                                  ; $4bed: $01 $09 $01
    ld bc, $0101                                  ; $4bf0: $01 $01 $01
    add hl, bc                                    ; $4bf3: $09
    ld bc, $dc07                                  ; $4bf4: $01 $07 $dc
    rst $20                                       ; $4bf7: $e7
    rrca                                          ; $4bf8: $0f
    inc e                                         ; $4bf9: $1c
    ldh [$ea], a                                  ; $4bfa: $e0 $ea
    db $dd                                        ; $4bfc: $dd
    inc e                                         ; $4bfd: $1c
    jp nc, Jump_000_1110                          ; $4bfe: $d2 $10 $11

    pop hl                                        ; $4c01: $e1
    sub $14                                       ; $4c02: $d6 $14
    dec d                                         ; $4c04: $15
    inc c                                         ; $4c05: $0c
    add d                                         ; $4c06: $82
    add d                                         ; $4c07: $82
    inc hl                                        ; $4c08: $23
    ld bc, $a2a2                                  ; $4c09: $01 $a2 $a2
    ld [bc], a                                    ; $4c0c: $02
    ld bc, $a282                                  ; $4c0d: $01 $82 $a2
    and d                                         ; $4c10: $a2
    and d                                         ; $4c11: $a2
    add d                                         ; $4c12: $82
    and d                                         ; $4c13: $a2
    and d                                         ; $4c14: $a2
    add d                                         ; $4c15: $82
    inc e                                         ; $4c16: $1c
    inc e                                         ; $4c17: $1c
    ld [hl], c                                    ; $4c18: $71
    inc e                                         ; $4c19: $1c
    ccf                                           ; $4c1a: $3f
    inc e                                         ; $4c1b: $1c
    inc e                                         ; $4c1c: $1c
    inc e                                         ; $4c1d: $1c
    ld b, c                                       ; $4c1e: $41
    pop hl                                        ; $4c1f: $e1
    ld l, e                                       ; $4c20: $6b
    ld l, c                                       ; $4c21: $69
    ret c                                         ; $4c22: $d8

    db $e4                                        ; $4c23: $e4
    db $dd                                        ; $4c24: $dd
    ld l, d                                       ; $4c25: $6a
    ld bc, $0701                                  ; $4c26: $01 $01 $07
    ld bc, $0182                                  ; $4c29: $01 $82 $01
    ld bc, $8201                                  ; $4c2c: $01 $01 $82
    add d                                         ; $4c2f: $82
    ld bc, $8201                                  ; $4c30: $01 $01 $82
    add d                                         ; $4c33: $82
    ld [bc], a                                    ; $4c34: $02
    ld bc, $3e1c                                  ; $4c35: $01 $1c $3e
    inc e                                         ; $4c38: $1c
    inc e                                         ; $4c39: $1c
    inc e                                         ; $4c3a: $1c
    inc e                                         ; $4c3b: $1c
    inc e                                         ; $4c3c: $1c
    inc e                                         ; $4c3d: $1c
    db $dd                                        ; $4c3e: $dd
    inc e                                         ; $4c3f: $1c
    ld h, d                                       ; $4c40: $62
    ld l, d                                       ; $4c41: $6a
    ld l, e                                       ; $4c42: $6b
    ld l, c                                       ; $4c43: $69
    ld l, h                                       ; $4c44: $6c
    ld l, b                                       ; $4c45: $68
    ld bc, $0101                                  ; $4c46: $01 $01 $01
    ld bc, $0101                                  ; $4c49: $01 $01 $01
    ld bc, $0201                                  ; $4c4c: $01 $01 $02
    ld bc, $0101                                  ; $4c4f: $01 $01 $01
    ld bc, $0101                                  ; $4c52: $01 $01 $01
    ld bc, $1c1c                                  ; $4c55: $01 $1c $1c
    ld [hl], e                                    ; $4c58: $73
    inc e                                         ; $4c59: $1c
    ld [hl], c                                    ; $4c5a: $71
    inc e                                         ; $4c5b: $1c
    inc e                                         ; $4c5c: $1c
    inc de                                        ; $4c5d: $13
    ld l, e                                       ; $4c5e: $6b
    ld l, c                                       ; $4c5f: $69
    ld l, h                                       ; $4c60: $6c
    inc e                                         ; $4c61: $1c
    ld h, l                                       ; $4c62: $65
    ld h, [hl]                                    ; $4c63: $66
    ld h, e                                       ; $4c64: $63
    ld l, c                                       ; $4c65: $69
    ld bc, $0101                                  ; $4c66: $01 $01 $01
    ld bc, $0107                                  ; $4c69: $01 $07 $01
    ld bc, $0109                                  ; $4c6c: $01 $09 $01
    ld bc, $0101                                  ; $4c6f: $01 $01 $01
    ld bc, $0101                                  ; $4c72: $01 $01 $01
    ld bc, $18da                                  ; $4c75: $01 $da $18
    add hl, de                                    ; $4c78: $19
    ld c, $0f                                     ; $4c79: $0e $0f
    db $dd                                        ; $4c7b: $dd
    dec c                                         ; $4c7c: $0d
    rst $18                                       ; $4c7d: $df
    pop hl                                        ; $4c7e: $e1
    db $dd                                        ; $4c7f: $dd
    ld c, $d1                                     ; $4c80: $0e $d1
    db $e4                                        ; $4c82: $e4
    db $dd                                        ; $4c83: $dd
    rrca                                          ; $4c84: $0f
    push de                                       ; $4c85: $d5
    add d                                         ; $4c86: $82
    and d                                         ; $4c87: $a2
    and d                                         ; $4c88: $a2
    add d                                         ; $4c89: $82
    inc hl                                        ; $4c8a: $23
    ld [bc], a                                    ; $4c8b: $02
    xor d                                         ; $4c8c: $aa
    and d                                         ; $4c8d: $a2
    add d                                         ; $4c8e: $82
    ld [bc], a                                    ; $4c8f: $02
    xor d                                         ; $4c90: $aa
    add d                                         ; $4c91: $82
    add d                                         ; $4c92: $82
    ld [bc], a                                    ; $4c93: $02
    xor d                                         ; $4c94: $aa
    add d                                         ; $4c95: $82
    call c, $dde7                                 ; $4c96: $dc $e7 $dd
    ld h, a                                       ; $4c99: $67
    ldh [$ea], a                                  ; $4c9a: $e0 $ea
    ccf                                           ; $4c9c: $3f
    db $dd                                        ; $4c9d: $dd
    jp nc, $d4d3                                  ; $4c9e: $d2 $d3 $d4

    pop hl                                        ; $4ca1: $e1
    sub $d7                                       ; $4ca2: $d6 $d7
    ret c                                         ; $4ca4: $d8

    db $e4                                        ; $4ca5: $e4
    add d                                         ; $4ca6: $82
    add d                                         ; $4ca7: $82
    ld [bc], a                                    ; $4ca8: $02
    ld bc, $a2a2                                  ; $4ca9: $01 $a2 $a2
    add d                                         ; $4cac: $82
    ld [bc], a                                    ; $4cad: $02
    add d                                         ; $4cae: $82
    add d                                         ; $4caf: $82
    add d                                         ; $4cb0: $82
    add d                                         ; $4cb1: $82
    add d                                         ; $4cb2: $82
    add d                                         ; $4cb3: $82
    add d                                         ; $4cb4: $82
    add d                                         ; $4cb5: $82
    ld h, d                                       ; $4cb6: $62
    jr @+$1b                                      ; $4cb7: $18 $19

    ld l, c                                       ; $4cb9: $69
    ld l, h                                       ; $4cba: $6c
    ld a, [de]                                    ; $4cbb: $1a
    dec de                                        ; $4cbc: $1b
    inc e                                         ; $4cbd: $1c
    db $dd                                        ; $4cbe: $dd
    inc e                                         ; $4cbf: $1c
    dec e                                         ; $4cc0: $1d
    inc e                                         ; $4cc1: $1c
    db $dd                                        ; $4cc2: $dd
    inc de                                        ; $4cc3: $13
    ld [hl], l                                    ; $4cc4: $75
    ld e, $01                                     ; $4cc5: $1e $01
    ld a, [bc]                                    ; $4cc7: $0a
    ld a, [bc]                                    ; $4cc8: $0a
    ld bc, $0a01                                  ; $4cc9: $01 $01 $0a
    ld a, [bc]                                    ; $4ccc: $0a
    ld bc, $0a02                                  ; $4ccd: $01 $02 $0a
    ld a, [bc]                                    ; $4cd0: $0a
    ld bc, $0902                                  ; $4cd1: $01 $02 $09
    ld bc, $6c09                                  ; $4cd4: $01 $09 $6c
    ld l, b                                       ; $4cd7: $68
    ld h, l                                       ; $4cd8: $65
    ld h, [hl]                                    ; $4cd9: $66
    inc e                                         ; $4cda: $1c
    ld l, c                                       ; $4cdb: $69
    ld l, h                                       ; $4cdc: $6c
    ld l, b                                       ; $4cdd: $68
    inc e                                         ; $4cde: $1c
    inc e                                         ; $4cdf: $1c
    ld l, e                                       ; $4ce0: $6b
    ld l, c                                       ; $4ce1: $69
    halt                                          ; $4ce2: $76
    inc de                                        ; $4ce3: $13
    inc e                                         ; $4ce4: $1c
    ld l, d                                       ; $4ce5: $6a
    ld bc, $0101                                  ; $4ce6: $01 $01 $01
    ld bc, $0101                                  ; $4ce9: $01 $01 $01
    ld bc, $0101                                  ; $4cec: $01 $01 $01
    ld bc, $0101                                  ; $4cef: $01 $01 $01
    ld bc, $0109                                  ; $4cf2: $01 $09 $01
    ld bc, $5d46                                  ; $4cf5: $01 $46 $5d
    ld e, [hl]                                    ; $4cf8: $5e
    ld e, a                                       ; $4cf9: $5f
    ld b, h                                       ; $4cfa: $44
    ld e, l                                       ; $4cfb: $5d
    ld [hl], $37                                  ; $4cfc: $36 $37
    inc e                                         ; $4cfe: $1c
    ld d, [hl]                                    ; $4cff: $56
    ld d, a                                       ; $4d00: $57
    ld e, b                                       ; $4d01: $58
    ret z                                         ; $4d02: $c8

    push hl                                       ; $4d03: $e5
    ld e, d                                       ; $4d04: $5a
    ld e, e                                       ; $4d05: $5b
    dec h                                         ; $4d06: $25
    ld h, e                                       ; $4d07: $63
    inc bc                                        ; $4d08: $03
    inc bc                                        ; $4d09: $03
    ld h, e                                       ; $4d0a: $63
    inc hl                                        ; $4d0b: $23
    inc bc                                        ; $4d0c: $03
    inc bc                                        ; $4d0d: $03
    ld bc, $0323                                  ; $4d0e: $01 $23 $03
    inc bc                                        ; $4d11: $03
    dec hl                                        ; $4d12: $2b
    dec bc                                        ; $4d13: $0b
    inc bc                                        ; $4d14: $03
    inc bc                                        ; $4d15: $03
    ld e, c                                       ; $4d16: $59
    ld b, [hl]                                    ; $4d17: $46
    ld c, d                                       ; $4d18: $4a
    ld c, e                                       ; $4d19: $4b
    ld h, c                                       ; $4d1a: $61
    ld b, h                                       ; $4d1b: $44
    ld c, b                                       ; $4d1c: $48
    ld b, h                                       ; $4d1d: $44
    ret z                                         ; $4d1e: $c8

    inc e                                         ; $4d1f: $1c
    inc e                                         ; $4d20: $1c
    inc e                                         ; $4d21: $1c
    jp z, Jump_000_1c56                           ; $4d22: $ca $56 $1c

    ld a, $63                                     ; $4d25: $3e $63
    dec b                                         ; $4d27: $05
    dec b                                         ; $4d28: $05
    dec b                                         ; $4d29: $05
    inc bc                                        ; $4d2a: $03
    ld b, e                                       ; $4d2b: $43
    ld b, e                                       ; $4d2c: $43
    ld b, e                                       ; $4d2d: $43
    dec bc                                        ; $4d2e: $0b
    ld bc, $0101                                  ; $4d2f: $01 $01 $01
    dec bc                                        ; $4d32: $0b
    inc bc                                        ; $4d33: $03
    ld bc, $4c01                                  ; $4d34: $01 $01 $4c
    ld c, l                                       ; $4d37: $4d
    ld c, [hl]                                    ; $4d38: $4e
    ld c, a                                       ; $4d39: $4f
    ld c, b                                       ; $4d3a: $48
    ld c, c                                       ; $4d3b: $49
    ld b, a                                       ; $4d3c: $47
    ld b, h                                       ; $4d3d: $44
    inc e                                         ; $4d3e: $1c
    inc e                                         ; $4d3f: $1c
    inc e                                         ; $4d40: $1c
    ld l, $73                                     ; $4d41: $2e $73
    rra                                           ; $4d43: $1f
    halt                                          ; $4d44: $76
    inc e                                         ; $4d45: $1c
    dec b                                         ; $4d46: $05
    dec b                                         ; $4d47: $05
    dec b                                         ; $4d48: $05
    dec b                                         ; $4d49: $05
    ld b, e                                       ; $4d4a: $43
    ld b, e                                       ; $4d4b: $43
    ld b, e                                       ; $4d4c: $43
    ld b, e                                       ; $4d4d: $43
    ld bc, $0101                                  ; $4d4e: $01 $01 $01
    ld bc, $0901                                  ; $4d51: $01 $01 $09
    ld bc, $5001                                  ; $4d54: $01 $01 $50
    ld d, c                                       ; $4d57: $51
    ld h, b                                       ; $4d58: $60
    ld l, h                                       ; $4d59: $6c
    ld c, b                                       ; $4d5a: $48
    ld c, c                                       ; $4d5b: $49
    ld b, a                                       ; $4d5c: $47
    ld l, e                                       ; $4d5d: $6b
    cpl                                           ; $4d5e: $2f
    inc e                                         ; $4d5f: $1c
    inc e                                         ; $4d60: $1c
    ld l, d                                       ; $4d61: $6a
    inc e                                         ; $4d62: $1c
    inc d                                         ; $4d63: $14
    ld l, h                                       ; $4d64: $6c
    ld h, e                                       ; $4d65: $63
    dec b                                         ; $4d66: $05
    dec b                                         ; $4d67: $05
    dec b                                         ; $4d68: $05
    ld bc, $4343                                  ; $4d69: $01 $43 $43
    ld b, e                                       ; $4d6c: $43
    ld bc, $0101                                  ; $4d6d: $01 $01 $01
    ld bc, $0101                                  ; $4d70: $01 $01 $01
    dec bc                                        ; $4d73: $0b
    ld bc, $2001                                  ; $4d74: $01 $01 $20
    ld d, l                                       ; $4d77: $55
    ld e, [hl]                                    ; $4d78: $5e
    ld e, a                                       ; $4d79: $5f
    ld hl, $3635                                  ; $4d7a: $21 $35 $36
    scf                                           ; $4d7d: $37
    dec l                                         ; $4d7e: $2d
    ret                                           ; $4d7f: $c9


    db $e4                                        ; $4d80: $e4
    rst $20                                       ; $4d81: $e7
    inc e                                         ; $4d82: $1c
    ret z                                         ; $4d83: $c8

    ld e, d                                       ; $4d84: $5a
    ld e, e                                       ; $4d85: $5b
    dec bc                                        ; $4d86: $0b
    inc bc                                        ; $4d87: $03
    inc bc                                        ; $4d88: $03
    inc bc                                        ; $4d89: $03
    dec bc                                        ; $4d8a: $0b
    inc bc                                        ; $4d8b: $03
    inc bc                                        ; $4d8c: $03
    inc bc                                        ; $4d8d: $03
    inc bc                                        ; $4d8e: $03
    dec bc                                        ; $4d8f: $0b
    dec bc                                        ; $4d90: $0b
    dec bc                                        ; $4d91: $0b
    ld bc, $036b                                  ; $4d92: $01 $6b $03
    inc bc                                        ; $4d95: $03
    ld d, h                                       ; $4d96: $54
    ld d, l                                       ; $4d97: $55
    ret z                                         ; $4d98: $c8

    inc e                                         ; $4d99: $1c
    inc [hl]                                      ; $4d9a: $34
    dec [hl]                                      ; $4d9b: $35
    ld [hl], $56                                  ; $4d9c: $36 $56
    add sp, -$37                                  ; $4d9e: $e8 $c9
    ld d, a                                       ; $4da0: $57
    ld e, b                                       ; $4da1: $58
    jp z, $cccb                                   ; $4da2: $ca $cb $cc

    ld e, e                                       ; $4da5: $5b
    inc bc                                        ; $4da6: $03
    inc bc                                        ; $4da7: $03
    dec bc                                        ; $4da8: $0b
    ld bc, $0303                                  ; $4da9: $01 $03 $03
    inc bc                                        ; $4dac: $03
    inc bc                                        ; $4dad: $03
    dec bc                                        ; $4dae: $0b
    dec bc                                        ; $4daf: $0b
    inc bc                                        ; $4db0: $03
    inc bc                                        ; $4db1: $03
    dec bc                                        ; $4db2: $0b
    dec bc                                        ; $4db3: $0b
    dec bc                                        ; $4db4: $0b
    inc bc                                        ; $4db5: $03
    inc e                                         ; $4db6: $1c
    inc de                                        ; $4db7: $13
    rla                                           ; $4db8: $17
    ld de, $1c1c                                  ; $4db9: $11 $1c $1c
    ld [de], a                                    ; $4dbc: $12
    ld d, $0a                                     ; $4dbd: $16 $0a
    dec bc                                        ; $4dbf: $0b
    inc e                                         ; $4dc0: $1c
    inc e                                         ; $4dc1: $1c
    jp z, $0ae5                                   ; $4dc2: $ca $e5 $0a

    dec bc                                        ; $4dc5: $0b
    ld bc, $0909                                  ; $4dc6: $01 $09 $09
    add hl, bc                                    ; $4dc9: $09
    ld bc, $0901                                  ; $4dca: $01 $01 $09
    add hl, bc                                    ; $4dcd: $09
    dec bc                                        ; $4dce: $0b
    dec bc                                        ; $4dcf: $0b
    ld bc, $0b01                                  ; $4dd0: $01 $01 $0b
    dec bc                                        ; $4dd3: $0b
    dec bc                                        ; $4dd4: $0b
    dec bc                                        ; $4dd5: $0b
    inc e                                         ; $4dd6: $1c
    dec d                                         ; $4dd7: $15
    ld l, e                                       ; $4dd8: $6b
    ld l, c                                       ; $4dd9: $69
    ld [hl], e                                    ; $4dda: $73
    inc e                                         ; $4ddb: $1c
    ld h, d                                       ; $4ddc: $62
    inc e                                         ; $4ddd: $1c
    ld [de], a                                    ; $4dde: $12
    inc e                                         ; $4ddf: $1c
    ld l, h                                       ; $4de0: $6c
    inc e                                         ; $4de1: $1c
    ld a, [hl-]                                   ; $4de2: $3a
    dec sp                                        ; $4de3: $3b
    jr c, jr_081_4e1f                             ; $4de4: $38 $39

    ld bc, $010b                                  ; $4de6: $01 $0b $01
    ld bc, $0101                                  ; $4de9: $01 $01 $01
    ld bc, $0901                                  ; $4dec: $01 $01 $09
    ld bc, $0101                                  ; $4def: $01 $01 $01
    ld b, e                                       ; $4df2: $43
    inc bc                                        ; $4df3: $03
    inc bc                                        ; $4df4: $03
    inc hl                                        ; $4df5: $23
    inc e                                         ; $4df6: $1c
    inc e                                         ; $4df7: $1c
    ld d, [hl]                                    ; $4df8: $56
    ld e, a                                       ; $4df9: $5f
    inc e                                         ; $4dfa: $1c
    inc e                                         ; $4dfb: $1c
    inc e                                         ; $4dfc: $1c
    ret z                                         ; $4dfd: $c8

    inc e                                         ; $4dfe: $1c
    inc e                                         ; $4dff: $1c
    ld a, $1c                                     ; $4e00: $3e $1c
    ld l, h                                       ; $4e02: $6c
    inc e                                         ; $4e03: $1c
    inc e                                         ; $4e04: $1c
    inc e                                         ; $4e05: $1c
    ld bc, $6301                                  ; $4e06: $01 $01 $63
    inc bc                                        ; $4e09: $03
    ld bc, $0101                                  ; $4e0a: $01 $01 $01
    ld l, e                                       ; $4e0d: $6b
    ld bc, $0101                                  ; $4e0e: $01 $01 $01
    ld bc, $0101                                  ; $4e11: $01 $01 $01
    ld bc, $5401                                  ; $4e14: $01 $01 $54
    ld d, l                                       ; $4e17: $55
    ld e, [hl]                                    ; $4e18: $5e
    ld e, a                                       ; $4e19: $5f
    inc [hl]                                      ; $4e1a: $34
    dec [hl]                                      ; $4e1b: $35
    and $37                                       ; $4e1c: $e6 $37
    ld d, [hl]                                    ; $4e1e: $56

jr_081_4e1f:
    ret                                           ; $4e1f: $c9


    ld d, a                                       ; $4e20: $57
    ld e, b                                       ; $4e21: $58
    inc e                                         ; $4e22: $1c
    dec bc                                        ; $4e23: $0b
    ld a, [bc]                                    ; $4e24: $0a
    ld e, e                                       ; $4e25: $5b
    inc bc                                        ; $4e26: $03
    inc bc                                        ; $4e27: $03
    inc bc                                        ; $4e28: $03
    inc bc                                        ; $4e29: $03
    inc bc                                        ; $4e2a: $03
    inc bc                                        ; $4e2b: $03
    dec bc                                        ; $4e2c: $0b
    inc bc                                        ; $4e2d: $03
    ld h, e                                       ; $4e2e: $63
    dec bc                                        ; $4e2f: $0b
    inc bc                                        ; $4e30: $03
    inc bc                                        ; $4e31: $03
    ld bc, $6b6b                                  ; $4e32: $01 $6b $6b
    inc bc                                        ; $4e35: $03
    ld d, h                                       ; $4e36: $54
    ld d, l                                       ; $4e37: $55
    ld e, [hl]                                    ; $4e38: $5e
    ld e, a                                       ; $4e39: $5f
    inc [hl]                                      ; $4e3a: $34
    db $e4                                        ; $4e3b: $e4
    rst $20                                       ; $4e3c: $e7
    scf                                           ; $4e3d: $37
    add sp, -$37                                  ; $4e3e: $e8 $c9
    set 1, h                                      ; $4e40: $cb $cc
    jp z, Jump_081_5ae5                           ; $4e42: $ca $e5 $5a

    ld e, e                                       ; $4e45: $5b
    inc bc                                        ; $4e46: $03
    inc bc                                        ; $4e47: $03
    inc bc                                        ; $4e48: $03
    inc bc                                        ; $4e49: $03
    inc bc                                        ; $4e4a: $03
    dec bc                                        ; $4e4b: $0b
    dec bc                                        ; $4e4c: $0b
    inc bc                                        ; $4e4d: $03
    dec bc                                        ; $4e4e: $0b
    dec bc                                        ; $4e4f: $0b
    dec bc                                        ; $4e50: $0b
    dec bc                                        ; $4e51: $0b
    dec bc                                        ; $4e52: $0b
    dec bc                                        ; $4e53: $0b
    inc bc                                        ; $4e54: $03
    inc bc                                        ; $4e55: $03
    ld d, h                                       ; $4e56: $54
    ld d, l                                       ; $4e57: $55
    ld e, [hl]                                    ; $4e58: $5e
    ld e, a                                       ; $4e59: $5f
    inc [hl]                                      ; $4e5a: $34
    dec [hl]                                      ; $4e5b: $35
    ld [hl], $37                                  ; $4e5c: $36 $37
    add sp, -$37                                  ; $4e5e: $e8 $c9
    ld d, a                                       ; $4e60: $57
    ld e, b                                       ; $4e61: $58
    jp z, Jump_081_5ae5                           ; $4e62: $ca $e5 $5a

    ld e, e                                       ; $4e65: $5b
    inc bc                                        ; $4e66: $03
    inc bc                                        ; $4e67: $03
    inc bc                                        ; $4e68: $03
    inc bc                                        ; $4e69: $03
    inc bc                                        ; $4e6a: $03
    inc bc                                        ; $4e6b: $03
    inc bc                                        ; $4e6c: $03
    inc bc                                        ; $4e6d: $03
    dec bc                                        ; $4e6e: $0b
    dec bc                                        ; $4e6f: $0b
    inc bc                                        ; $4e70: $03
    inc bc                                        ; $4e71: $03
    dec bc                                        ; $4e72: $0b
    dec bc                                        ; $4e73: $0b
    inc bc                                        ; $4e74: $03
    inc bc                                        ; $4e75: $03
    ld h, e                                       ; $4e76: $63
    ld h, [hl]                                    ; $4e77: $66
    ld l, h                                       ; $4e78: $6c
    ld h, a                                       ; $4e79: $67
    ld h, l                                       ; $4e7a: $65
    ld l, b                                       ; $4e7b: $68
    ld h, l                                       ; $4e7c: $65
    ld l, c                                       ; $4e7d: $69
    ld l, l                                       ; $4e7e: $6d
    ld h, h                                       ; $4e7f: $64
    ld l, l                                       ; $4e80: $6d
    ld l, b                                       ; $4e81: $68
    ld l, e                                       ; $4e82: $6b
    ld h, [hl]                                    ; $4e83: $66
    ld l, h                                       ; $4e84: $6c
    ld h, h                                       ; $4e85: $64
    ld bc, $0101                                  ; $4e86: $01 $01 $01
    ld bc, $0101                                  ; $4e89: $01 $01 $01
    ld bc, $0101                                  ; $4e8c: $01 $01 $01
    ld bc, $0101                                  ; $4e8f: $01 $01 $01
    ld bc, $0101                                  ; $4e92: $01 $01 $01
    ld bc, $1c6b                                  ; $4e95: $01 $6b $1c
    inc e                                         ; $4e98: $1c
    ld a, [hl-]                                   ; $4e99: $3a
    ld h, e                                       ; $4e9a: $63
    ld l, d                                       ; $4e9b: $6a
    ld l, e                                       ; $4e9c: $6b
    inc e                                         ; $4e9d: $1c
    ld h, l                                       ; $4e9e: $65
    ld h, [hl]                                    ; $4e9f: $66
    ld h, e                                       ; $4ea0: $63
    ld l, d                                       ; $4ea1: $6a
    ld l, l                                       ; $4ea2: $6d
    ld l, b                                       ; $4ea3: $68
    ld h, l                                       ; $4ea4: $65
    ld h, a                                       ; $4ea5: $67
    ld bc, $0101                                  ; $4ea6: $01 $01 $01
    inc bc                                        ; $4ea9: $03
    ld bc, $0101                                  ; $4eaa: $01 $01 $01
    ld bc, $0101                                  ; $4ead: $01 $01 $01
    ld bc, $0101                                  ; $4eb0: $01 $01 $01
    ld bc, $0101                                  ; $4eb3: $01 $01 $01
    dec sp                                        ; $4eb6: $3b
    jr c, @+$3b                                   ; $4eb7: $38 $39

    jr c, jr_081_4ed7                             ; $4eb9: $38 $1c

    inc e                                         ; $4ebb: $1c
    inc e                                         ; $4ebc: $1c
    ld a, $1c                                     ; $4ebd: $3e $1c
    ld l, c                                       ; $4ebf: $69
    ld l, h                                       ; $4ec0: $6c
    ld h, a                                       ; $4ec1: $67
    ld h, e                                       ; $4ec2: $63
    ld h, h                                       ; $4ec3: $64
    ld l, e                                       ; $4ec4: $6b
    inc e                                         ; $4ec5: $1c
    ld b, e                                       ; $4ec6: $43
    ld b, e                                       ; $4ec7: $43
    ld h, e                                       ; $4ec8: $63
    ld b, e                                       ; $4ec9: $43
    ld bc, $0101                                  ; $4eca: $01 $01 $01
    ld bc, $0101                                  ; $4ecd: $01 $01 $01
    ld bc, $0101                                  ; $4ed0: $01 $01 $01
    ld bc, $0101                                  ; $4ed3: $01 $01 $01
    add hl, sp                                    ; $4ed6: $39

jr_081_4ed7:
    dec bc                                        ; $4ed7: $0b
    ld a, [bc]                                    ; $4ed8: $0a
    ld e, e                                       ; $4ed9: $5b
    inc e                                         ; $4eda: $1c
    inc e                                         ; $4edb: $1c
    inc e                                         ; $4edc: $1c
    ld a, [hl-]                                   ; $4edd: $3a
    inc e                                         ; $4ede: $1c
    inc e                                         ; $4edf: $1c
    inc e                                         ; $4ee0: $1c
    inc e                                         ; $4ee1: $1c
    or l                                          ; $4ee2: $b5
    or [hl]                                       ; $4ee3: $b6
    or a                                          ; $4ee4: $b7
    cp b                                          ; $4ee5: $b8
    ld h, e                                       ; $4ee6: $63
    ld l, e                                       ; $4ee7: $6b
    ld l, e                                       ; $4ee8: $6b
    ld b, e                                       ; $4ee9: $43
    ld bc, $0101                                  ; $4eea: $01 $01 $01
    inc bc                                        ; $4eed: $03
    ld bc, $0101                                  ; $4eee: $01 $01 $01
    ld bc, $8a8a                                  ; $4ef1: $01 $8a $8a
    adc d                                         ; $4ef4: $8a
    adc d                                         ; $4ef5: $8a
    ld h, h                                       ; $4ef6: $64
    ld l, l                                       ; $4ef7: $6d
    ld l, b                                       ; $4ef8: $68
    ld l, e                                       ; $4ef9: $6b
    ld h, [hl]                                    ; $4efa: $66
    ld h, e                                       ; $4efb: $63
    ld h, a                                       ; $4efc: $67
    ld h, d                                       ; $4efd: $62
    ld l, b                                       ; $4efe: $68
    ld l, c                                       ; $4eff: $69
    ld l, h                                       ; $4f00: $6c
    inc e                                         ; $4f01: $1c
    ld h, d                                       ; $4f02: $62
    ld l, d                                       ; $4f03: $6a
    inc e                                         ; $4f04: $1c
    ld l, c                                       ; $4f05: $69
    ld bc, $0101                                  ; $4f06: $01 $01 $01
    ld bc, $0101                                  ; $4f09: $01 $01 $01
    ld bc, $0101                                  ; $4f0c: $01 $01 $01
    ld bc, $0101                                  ; $4f0f: $01 $01 $01
    ld bc, $0101                                  ; $4f12: $01 $01 $01
    ld bc, $6c69                                  ; $4f15: $01 $69 $6c
    inc e                                         ; $4f18: $1c
    ld a, $1c                                     ; $4f19: $3e $1c
    ld l, e                                       ; $4f1b: $6b
    inc e                                         ; $4f1c: $1c
    inc e                                         ; $4f1d: $1c
    ld h, d                                       ; $4f1e: $62
    inc e                                         ; $4f1f: $1c
    inc e                                         ; $4f20: $1c
    ld [hl+], a                                   ; $4f21: $22
    inc e                                         ; $4f22: $1c
    inc e                                         ; $4f23: $1c
    inc e                                         ; $4f24: $1c
    inc hl                                        ; $4f25: $23
    ld bc, $0101                                  ; $4f26: $01 $01 $01
    ld bc, $0101                                  ; $4f29: $01 $01 $01
    ld bc, $0101                                  ; $4f2c: $01 $01 $01
    ld bc, $0c01                                  ; $4f2f: $01 $01 $0c
    ld bc, $0101                                  ; $4f32: $01 $01 $01
    inc c                                         ; $4f35: $0c
    inc e                                         ; $4f36: $1c
    inc e                                         ; $4f37: $1c
    halt                                          ; $4f38: $76
    ld e, $1c                                     ; $4f39: $1e $1c
    inc de                                        ; $4f3b: $13
    rra                                           ; $4f3c: $1f
    ld [hl], h                                    ; $4f3d: $74
    inc h                                         ; $4f3e: $24
    dec h                                         ; $4f3f: $25
    ld [de], a                                    ; $4f40: $12
    inc e                                         ; $4f41: $1c
    ld h, $27                                     ; $4f42: $26 $27
    inc e                                         ; $4f44: $1c
    inc e                                         ; $4f45: $1c
    ld bc, $0101                                  ; $4f46: $01 $01 $01
    add hl, bc                                    ; $4f49: $09
    ld bc, $0909                                  ; $4f4a: $01 $09 $09
    ld bc, $0c0c                                  ; $4f4d: $01 $0c $0c
    add hl, bc                                    ; $4f50: $09
    ld bc, $0c0c                                  ; $4f51: $01 $0c $0c
    ld bc, $1601                                  ; $4f54: $01 $01 $16
    inc de                                        ; $4f57: $13
    inc e                                         ; $4f58: $1c
    inc e                                         ; $4f59: $1c
    halt                                          ; $4f5a: $76
    inc e                                         ; $4f5b: $1c
    inc e                                         ; $4f5c: $1c
    inc e                                         ; $4f5d: $1c
    ld a, $1c                                     ; $4f5e: $3e $1c
    inc e                                         ; $4f60: $1c
    ld d, [hl]                                    ; $4f61: $56
    inc e                                         ; $4f62: $1c
    inc e                                         ; $4f63: $1c
    ret z                                         ; $4f64: $c8

    ld e, e                                       ; $4f65: $5b
    add hl, bc                                    ; $4f66: $09
    add hl, bc                                    ; $4f67: $09
    ld bc, $0101                                  ; $4f68: $01 $01 $01
    ld bc, $0101                                  ; $4f6b: $01 $01 $01
    ld bc, $0101                                  ; $4f6e: $01 $01 $01
    inc hl                                        ; $4f71: $23
    ld bc, $2b01                                  ; $4f72: $01 $01 $2b
    inc bc                                        ; $4f75: $03
    ld l, h                                       ; $4f76: $6c
    inc e                                         ; $4f77: $1c
    inc e                                         ; $4f78: $1c
    inc e                                         ; $4f79: $1c
    inc e                                         ; $4f7a: $1c
    inc e                                         ; $4f7b: $1c
    inc e                                         ; $4f7c: $1c
    inc e                                         ; $4f7d: $1c
    ld [hl], c                                    ; $4f7e: $71
    inc e                                         ; $4f7f: $1c
    inc e                                         ; $4f80: $1c
    inc e                                         ; $4f81: $1c
    ld a, [hl-]                                   ; $4f82: $3a
    dec sp                                        ; $4f83: $3b
    jr c, jr_081_4fbf                             ; $4f84: $38 $39

    ld bc, $0101                                  ; $4f86: $01 $01 $01
    ld bc, $0101                                  ; $4f89: $01 $01 $01
    ld bc, $0701                                  ; $4f8c: $01 $01 $07
    ld bc, $0101                                  ; $4f8f: $01 $01 $01
    ld b, e                                       ; $4f92: $43
    inc bc                                        ; $4f93: $03
    inc bc                                        ; $4f94: $03
    inc hl                                        ; $4f95: $23
    ld l, $2f                                     ; $4f96: $2e $2f
    inc e                                         ; $4f98: $1c
    inc e                                         ; $4f99: $1c
    inc e                                         ; $4f9a: $1c
    ld [hl], c                                    ; $4f9b: $71
    inc e                                         ; $4f9c: $1c
    inc e                                         ; $4f9d: $1c
    inc e                                         ; $4f9e: $1c
    inc e                                         ; $4f9f: $1c
    inc e                                         ; $4fa0: $1c
    add hl, sp                                    ; $4fa1: $39
    add hl, sp                                    ; $4fa2: $39
    dec bc                                        ; $4fa3: $0b
    ld a, [bc]                                    ; $4fa4: $0a
    ld e, e                                       ; $4fa5: $5b
    ld bc, $0101                                  ; $4fa6: $01 $01 $01
    ld bc, $0701                                  ; $4fa9: $01 $01 $07
    ld bc, $0101                                  ; $4fac: $01 $01 $01
    ld bc, $0301                                  ; $4faf: $01 $01 $03
    inc hl                                        ; $4fb2: $23
    dec hl                                        ; $4fb3: $2b
    dec hl                                        ; $4fb4: $2b
    inc bc                                        ; $4fb5: $03
    jr z, jr_081_4fd4                             ; $4fb6: $28 $1c

    inc e                                         ; $4fb8: $1c
    inc e                                         ; $4fb9: $1c
    inc e                                         ; $4fba: $1c
    inc e                                         ; $4fbb: $1c
    dec bc                                        ; $4fbc: $0b
    ld a, [bc]                                    ; $4fbd: $0a
    dec bc                                        ; $4fbe: $0b

jr_081_4fbf:
    ld a, [bc]                                    ; $4fbf: $0a
    ld d, a                                       ; $4fc0: $57
    ld e, b                                       ; $4fc1: $58
    jp z, Jump_081_5ae5                           ; $4fc2: $ca $e5 $5a

    rrc e                                         ; $4fc5: $cb $0b
    ld bc, $0101                                  ; $4fc7: $01 $01 $01
    ld bc, $2b01                                  ; $4fca: $01 $01 $2b
    dec hl                                        ; $4fcd: $2b
    dec hl                                        ; $4fce: $2b
    dec hl                                        ; $4fcf: $2b
    inc bc                                        ; $4fd0: $03
    inc bc                                        ; $4fd1: $03
    dec bc                                        ; $4fd2: $0b
    dec bc                                        ; $4fd3: $0b

jr_081_4fd4:
    inc bc                                        ; $4fd4: $03
    dec bc                                        ; $4fd5: $0b
    add hl, sp                                    ; $4fd6: $39
    ret z                                         ; $4fd7: $c8

    ld e, [hl]                                    ; $4fd8: $5e
    ld e, a                                       ; $4fd9: $5f
    inc [hl]                                      ; $4fda: $34
    and $36                                       ; $4fdb: $e6 $36
    scf                                           ; $4fdd: $37
    add sp, -$37                                  ; $4fde: $e8 $c9
    ld d, a                                       ; $4fe0: $57
    ld e, b                                       ; $4fe1: $58
    call z, Call_081_5ae5                         ; $4fe2: $cc $e5 $5a
    ld e, e                                       ; $4fe5: $5b
    inc bc                                        ; $4fe6: $03
    dec hl                                        ; $4fe7: $2b
    inc bc                                        ; $4fe8: $03
    inc bc                                        ; $4fe9: $03
    inc bc                                        ; $4fea: $03
    dec bc                                        ; $4feb: $0b
    inc bc                                        ; $4fec: $03
    inc bc                                        ; $4fed: $03
    dec bc                                        ; $4fee: $0b
    dec bc                                        ; $4fef: $0b
    inc bc                                        ; $4ff0: $03
    inc bc                                        ; $4ff1: $03
    dec bc                                        ; $4ff2: $0b
    dec bc                                        ; $4ff3: $0b
    inc bc                                        ; $4ff4: $03
    inc bc                                        ; $4ff5: $03
    ld d, h                                       ; $4ff6: $54
    and $5e                                       ; $4ff7: $e6 $5e
    ld e, a                                       ; $4ff9: $5f
    inc [hl]                                      ; $4ffa: $34
    dec [hl]                                      ; $4ffb: $35
    ld [hl], $37                                  ; $4ffc: $36 $37
    add sp, -$37                                  ; $4ffe: $e8 $c9
    ld d, a                                       ; $5000: $57
    ld e, b                                       ; $5001: $58
    jp z, $cbe5                                   ; $5002: $ca $e5 $cb

    call z, Call_000_0b03                         ; $5005: $cc $03 $0b
    inc bc                                        ; $5008: $03
    inc bc                                        ; $5009: $03
    inc bc                                        ; $500a: $03
    inc bc                                        ; $500b: $03
    inc bc                                        ; $500c: $03
    inc bc                                        ; $500d: $03
    dec bc                                        ; $500e: $0b
    dec bc                                        ; $500f: $0b
    inc bc                                        ; $5010: $03
    inc bc                                        ; $5011: $03
    dec bc                                        ; $5012: $0b
    dec bc                                        ; $5013: $0b
    dec bc                                        ; $5014: $0b
    dec bc                                        ; $5015: $0b
    ld d, h                                       ; $5016: $54
    ld d, l                                       ; $5017: $55
    ld e, [hl]                                    ; $5018: $5e
    ld e, a                                       ; $5019: $5f
    inc [hl]                                      ; $501a: $34
    dec [hl]                                      ; $501b: $35
    ld [hl], $37                                  ; $501c: $36 $37
    add sp, -$35                                  ; $501e: $e8 $cb
    call z, $ca58                                 ; $5020: $cc $58 $ca
    push hl                                       ; $5023: $e5
    ld e, d                                       ; $5024: $5a
    ld e, e                                       ; $5025: $5b
    inc bc                                        ; $5026: $03
    inc bc                                        ; $5027: $03
    inc bc                                        ; $5028: $03
    inc bc                                        ; $5029: $03
    inc bc                                        ; $502a: $03
    inc bc                                        ; $502b: $03
    inc bc                                        ; $502c: $03
    inc bc                                        ; $502d: $03
    dec bc                                        ; $502e: $0b
    dec bc                                        ; $502f: $0b
    dec bc                                        ; $5030: $0b
    inc bc                                        ; $5031: $03
    dec bc                                        ; $5032: $0b
    dec bc                                        ; $5033: $0b
    inc bc                                        ; $5034: $03
    inc bc                                        ; $5035: $03
    db $e4                                        ; $5036: $e4
    rst $20                                       ; $5037: $e7
    ld e, [hl]                                    ; $5038: $5e
    ld e, a                                       ; $5039: $5f
    inc [hl]                                      ; $503a: $34
    dec [hl]                                      ; $503b: $35
    ld [hl], $37                                  ; $503c: $36 $37
    add sp, -$37                                  ; $503e: $e8 $c9
    ld d, a                                       ; $5040: $57
    ld e, b                                       ; $5041: $58
    jp z, Jump_081_5ae5                           ; $5042: $ca $e5 $5a

    ld e, e                                       ; $5045: $5b
    dec bc                                        ; $5046: $0b
    dec bc                                        ; $5047: $0b
    inc bc                                        ; $5048: $03
    inc bc                                        ; $5049: $03
    inc bc                                        ; $504a: $03
    inc bc                                        ; $504b: $03
    inc bc                                        ; $504c: $03
    inc bc                                        ; $504d: $03
    dec bc                                        ; $504e: $0b
    dec bc                                        ; $504f: $0b
    inc bc                                        ; $5050: $03
    inc bc                                        ; $5051: $03
    dec bc                                        ; $5052: $0b
    dec bc                                        ; $5053: $0b
    inc bc                                        ; $5054: $03
    inc bc                                        ; $5055: $03
    ld d, h                                       ; $5056: $54
    ld d, l                                       ; $5057: $55
    ld e, [hl]                                    ; $5058: $5e
    ld d, [hl]                                    ; $5059: $56
    inc [hl]                                      ; $505a: $34
    dec [hl]                                      ; $505b: $35
    ld hl, $e61c                                  ; $505c: $21 $1c $e6
    ret                                           ; $505f: $c9


    dec l                                         ; $5060: $2d
    inc e                                         ; $5061: $1c
    jp z, $1c20                                   ; $5062: $ca $20 $1c

    inc e                                         ; $5065: $1c
    inc bc                                        ; $5066: $03
    inc bc                                        ; $5067: $03
    inc bc                                        ; $5068: $03
    ld b, e                                       ; $5069: $43
    inc bc                                        ; $506a: $03
    inc bc                                        ; $506b: $03
    dec hl                                        ; $506c: $2b
    ld bc, $0b0b                                  ; $506d: $01 $0b $0b
    inc hl                                        ; $5070: $23
    ld bc, $6b0b                                  ; $5071: $01 $0b $6b
    ld bc, $3501                                  ; $5074: $01 $01 $35
    ld [hl], $37                                  ; $5077: $36 $37
    inc [hl]                                      ; $5079: $34
    dec sp                                        ; $507a: $3b
    add hl, sp                                    ; $507b: $39
    jr c, jr_081_50b9                             ; $507c: $38 $3b

    inc e                                         ; $507e: $1c
    ld a, $1c                                     ; $507f: $3e $1c
    inc e                                         ; $5081: $1c
    inc e                                         ; $5082: $1c
    inc e                                         ; $5083: $1c
    inc e                                         ; $5084: $1c
    inc e                                         ; $5085: $1c
    inc bc                                        ; $5086: $03
    inc bc                                        ; $5087: $03
    inc bc                                        ; $5088: $03
    inc bc                                        ; $5089: $03
    ld b, e                                       ; $508a: $43
    ld b, e                                       ; $508b: $43
    ld h, e                                       ; $508c: $63
    ld h, e                                       ; $508d: $63
    ld bc, $0101                                  ; $508e: $01 $01 $01
    ld bc, $0101                                  ; $5091: $01 $01 $01
    ld bc, $5b01                                  ; $5094: $01 $01 $5b
    ld a, [bc]                                    ; $5097: $0a
    dec bc                                        ; $5098: $0b
    add hl, sp                                    ; $5099: $39
    ld a, [hl-]                                   ; $509a: $3a
    inc e                                         ; $509b: $1c
    inc e                                         ; $509c: $1c
    dec l                                         ; $509d: $2d
    inc e                                         ; $509e: $1c
    inc e                                         ; $509f: $1c
    inc e                                         ; $50a0: $1c
    ld hl, $3e1c                                  ; $50a1: $21 $1c $3e
    add hl, hl                                    ; $50a4: $29
    ld e, e                                       ; $50a5: $5b
    ld h, e                                       ; $50a6: $63
    ld c, e                                       ; $50a7: $4b
    ld c, e                                       ; $50a8: $4b
    ld b, e                                       ; $50a9: $43
    inc hl                                        ; $50aa: $23
    ld bc, $4301                                  ; $50ab: $01 $01 $43
    ld bc, $0101                                  ; $50ae: $01 $01 $01
    ld c, e                                       ; $50b1: $4b
    ld bc, $0b01                                  ; $50b2: $01 $01 $0b
    inc bc                                        ; $50b5: $03
    ld d, h                                       ; $50b6: $54
    db $e4                                        ; $50b7: $e4
    rst $20                                       ; $50b8: $e7

jr_081_50b9:
    ld e, a                                       ; $50b9: $5f
    inc [hl]                                      ; $50ba: $34
    dec [hl]                                      ; $50bb: $35
    ld [hl], $37                                  ; $50bc: $36 $37
    set 1, h                                      ; $50be: $cb $cc
    ld d, a                                       ; $50c0: $57
    ld e, b                                       ; $50c1: $58
    jp z, Jump_081_5ae5                           ; $50c2: $ca $e5 $5a

    ld e, e                                       ; $50c5: $5b
    inc bc                                        ; $50c6: $03
    dec bc                                        ; $50c7: $0b
    dec bc                                        ; $50c8: $0b
    inc bc                                        ; $50c9: $03
    inc bc                                        ; $50ca: $03
    inc bc                                        ; $50cb: $03
    inc bc                                        ; $50cc: $03
    inc bc                                        ; $50cd: $03
    dec bc                                        ; $50ce: $0b
    dec bc                                        ; $50cf: $0b
    inc bc                                        ; $50d0: $03
    inc bc                                        ; $50d1: $03
    dec bc                                        ; $50d2: $0b
    dec bc                                        ; $50d3: $0b
    inc bc                                        ; $50d4: $03
    inc bc                                        ; $50d5: $03
    ld d, h                                       ; $50d6: $54
    ld a, [hl+]                                   ; $50d7: $2a
    inc e                                         ; $50d8: $1c
    inc e                                         ; $50d9: $1c
    dec hl                                        ; $50da: $2b
    inc e                                         ; $50db: $1c
    inc c                                         ; $50dc: $0c
    ld [de], a                                    ; $50dd: $12
    inc l                                         ; $50de: $2c
    inc e                                         ; $50df: $1c
    inc e                                         ; $50e0: $1c
    inc e                                         ; $50e1: $1c
    add hl, hl                                    ; $50e2: $29
    inc e                                         ; $50e3: $1c
    inc e                                         ; $50e4: $1c
    ld [hl], e                                    ; $50e5: $73
    inc bc                                        ; $50e6: $03
    dec bc                                        ; $50e7: $0b
    ld bc, $0b01                                  ; $50e8: $01 $01 $0b
    ld bc, $0909                                  ; $50eb: $01 $09 $09
    dec bc                                        ; $50ee: $0b
    ld bc, $0101                                  ; $50ef: $01 $01 $01
    ld l, e                                       ; $50f2: $6b
    ld bc, $0101                                  ; $50f3: $01 $01 $01
    inc e                                         ; $50f6: $1c
    dec bc                                        ; $50f7: $0b
    ld a, [bc]                                    ; $50f8: $0a
    ld e, a                                       ; $50f9: $5f
    ret z                                         ; $50fa: $c8

    dec [hl]                                      ; $50fb: $35
    ld [hl], $37                                  ; $50fc: $36 $37
    add sp, -$37                                  ; $50fe: $e8 $c9
    set 1, h                                      ; $5100: $cb $cc
    db $e4                                        ; $5102: $e4
    rst $20                                       ; $5103: $e7
    ld e, d                                       ; $5104: $5a
    ld e, e                                       ; $5105: $5b
    ld bc, $2b2b                                  ; $5106: $01 $2b $2b
    inc bc                                        ; $5109: $03
    dec hl                                        ; $510a: $2b
    inc bc                                        ; $510b: $03
    inc bc                                        ; $510c: $03
    inc bc                                        ; $510d: $03
    dec bc                                        ; $510e: $0b
    dec bc                                        ; $510f: $0b
    dec bc                                        ; $5110: $0b
    dec bc                                        ; $5111: $0b
    dec bc                                        ; $5112: $0b
    dec bc                                        ; $5113: $0b
    inc bc                                        ; $5114: $03
    inc bc                                        ; $5115: $03
    and $55                                       ; $5116: $e6 $55
    ld e, [hl]                                    ; $5118: $5e
    ld e, a                                       ; $5119: $5f
    inc [hl]                                      ; $511a: $34
    dec [hl]                                      ; $511b: $35
    ld [hl], $c8                                  ; $511c: $36 $c8
    add sp, -$37                                  ; $511e: $e8 $c9
    ld d, [hl]                                    ; $5120: $56
    or l                                          ; $5121: $b5
    ld a, [bc]                                    ; $5122: $0a
    dec bc                                        ; $5123: $0b
    ld l, [hl]                                    ; $5124: $6e
    cp c                                          ; $5125: $b9
    dec bc                                        ; $5126: $0b
    inc bc                                        ; $5127: $03
    inc bc                                        ; $5128: $03
    inc bc                                        ; $5129: $03
    inc bc                                        ; $512a: $03
    inc bc                                        ; $512b: $03
    inc bc                                        ; $512c: $03
    ld c, e                                       ; $512d: $4b
    dec bc                                        ; $512e: $0b
    dec bc                                        ; $512f: $0b
    ld b, e                                       ; $5130: $43
    adc d                                         ; $5131: $8a
    ld c, e                                       ; $5132: $4b
    ld c, e                                       ; $5133: $4b
    add d                                         ; $5134: $82
    adc d                                         ; $5135: $8a
    ld d, [hl]                                    ; $5136: $56
    inc e                                         ; $5137: $1c
    inc e                                         ; $5138: $1c
    inc e                                         ; $5139: $1c
    inc e                                         ; $513a: $1c
    inc e                                         ; $513b: $1c
    inc e                                         ; $513c: $1c
    inc e                                         ; $513d: $1c
    or [hl]                                       ; $513e: $b6
    or a                                          ; $513f: $b7
    cp b                                          ; $5140: $b8
    inc e                                         ; $5141: $1c
    cp d                                          ; $5142: $ba
    cp e                                          ; $5143: $bb
    cp h                                          ; $5144: $bc
    push bc                                       ; $5145: $c5
    ld b, e                                       ; $5146: $43
    ld bc, $0101                                  ; $5147: $01 $01 $01
    ld bc, $0101                                  ; $514a: $01 $01 $01
    ld bc, $8a8a                                  ; $514d: $01 $8a $8a
    adc d                                         ; $5150: $8a
    ld bc, $8a8a                                  ; $5151: $01 $8a $8a
    adc d                                         ; $5154: $8a
    adc d                                         ; $5155: $8a
    dec l                                         ; $5156: $2d
    ld bc, $d700                                  ; $5157: $01 $00 $d7
    db $ed                                        ; $515a: $ed
    db $fd                                        ; $515b: $fd
    db $fc                                        ; $515c: $fc
    ret nc                                        ; $515d: $d0

    rst $28                                       ; $515e: $ef
    push de                                       ; $515f: $d5
    sub $cf                                       ; $5160: $d6 $cf
    ldh a, [rDIV]                                 ; $5162: $f0 $04
    inc bc                                        ; $5164: $03
    ld [bc], a                                    ; $5165: $02
    dec bc                                        ; $5166: $0b
    dec hl                                        ; $5167: $2b
    dec hl                                        ; $5168: $2b
    dec hl                                        ; $5169: $2b
    dec bc                                        ; $516a: $0b
    dec hl                                        ; $516b: $2b
    dec hl                                        ; $516c: $2b
    dec hl                                        ; $516d: $2b
    dec bc                                        ; $516e: $0b
    dec bc                                        ; $516f: $0b
    dec bc                                        ; $5170: $0b
    dec hl                                        ; $5171: $2b
    dec bc                                        ; $5172: $0b
    dec bc                                        ; $5173: $0b
    dec bc                                        ; $5174: $0b
    dec bc                                        ; $5175: $0b
    ld d, h                                       ; $5176: $54
    ld d, l                                       ; $5177: $55
    ld e, [hl]                                    ; $5178: $5e
    ld d, [hl]                                    ; $5179: $56
    inc [hl]                                      ; $517a: $34
    dec [hl]                                      ; $517b: $35
    ret z                                         ; $517c: $c8

    inc e                                         ; $517d: $1c
    add sp, $56                                   ; $517e: $e8 $56
    inc e                                         ; $5180: $1c
    inc e                                         ; $5181: $1c
    ret z                                         ; $5182: $c8

    inc e                                         ; $5183: $1c
    inc d                                         ; $5184: $14
    inc e                                         ; $5185: $1c
    inc bc                                        ; $5186: $03
    inc bc                                        ; $5187: $03
    inc bc                                        ; $5188: $03
    ld b, e                                       ; $5189: $43
    inc bc                                        ; $518a: $03
    inc bc                                        ; $518b: $03
    ld c, e                                       ; $518c: $4b
    ld bc, $430b                                  ; $518d: $01 $0b $43
    ld bc, $4b01                                  ; $5190: $01 $01 $4b
    ld bc, $010b                                  ; $5193: $01 $0b $01
    inc e                                         ; $5196: $1c
    inc e                                         ; $5197: $1c
    ld l, a                                       ; $5198: $6f
    cp l                                          ; $5199: $bd
    inc e                                         ; $519a: $1c
    inc e                                         ; $519b: $1c
    ld [hl], b                                    ; $519c: $70
    pop bc                                        ; $519d: $c1
    inc e                                         ; $519e: $1c
    inc e                                         ; $519f: $1c
    ld [hl], d                                    ; $51a0: $72
    db $db                                        ; $51a1: $db
    ld a, $1c                                     ; $51a2: $3e $1c
    inc e                                         ; $51a4: $1c
    inc e                                         ; $51a5: $1c
    ld bc, $8201                                  ; $51a6: $01 $01 $82
    adc d                                         ; $51a9: $8a
    ld bc, $8201                                  ; $51aa: $01 $01 $82
    adc d                                         ; $51ad: $8a
    ld bc, $8201                                  ; $51ae: $01 $01 $82
    adc d                                         ; $51b1: $8a
    ld bc, $0101                                  ; $51b2: $01 $01 $01
    ld bc, $bfbe                                  ; $51b5: $01 $be $bf
    ret nz                                        ; $51b8: $c0

    add $c2                                       ; $51b9: $c6 $c2
    jp $c7c4                                      ; $51bb: $c3 $c4 $c7


    call c, $dedd                                 ; $51be: $dc $dd $de
    db $e3                                        ; $51c1: $e3
    rst $18                                       ; $51c2: $df
    ldh [rNR32], a                                ; $51c3: $e0 $1c
    inc e                                         ; $51c5: $1c
    adc d                                         ; $51c6: $8a
    adc d                                         ; $51c7: $8a
    adc d                                         ; $51c8: $8a
    adc d                                         ; $51c9: $8a
    adc d                                         ; $51ca: $8a
    adc d                                         ; $51cb: $8a
    adc d                                         ; $51cc: $8a
    adc d                                         ; $51cd: $8a
    adc d                                         ; $51ce: $8a
    adc d                                         ; $51cf: $8a
    adc d                                         ; $51d0: $8a
    adc d                                         ; $51d1: $8a
    dec bc                                        ; $51d2: $0b
    dec bc                                        ; $51d3: $0b
    ld bc, $2d01                                  ; $51d4: $01 $01 $2d
    rlca                                          ; $51d7: $07
    ld b, $05                                     ; $51d8: $06 $05
    db $ed                                        ; $51da: $ed
    rst $10                                       ; $51db: $d7
    nop                                           ; $51dc: $00
    ld bc, $d0ef                                  ; $51dd: $01 $ef $d0
    db $fc                                        ; $51e0: $fc
    db $fd                                        ; $51e1: $fd
    ldh a, [$d9]                                  ; $51e2: $f0 $d9
    jp c, Jump_000_0bf1                           ; $51e4: $da $f1 $0b

    dec bc                                        ; $51e7: $0b
    dec bc                                        ; $51e8: $0b
    dec bc                                        ; $51e9: $0b
    dec bc                                        ; $51ea: $0b
    dec bc                                        ; $51eb: $0b
    dec bc                                        ; $51ec: $0b
    dec bc                                        ; $51ed: $0b
    dec bc                                        ; $51ee: $0b
    dec bc                                        ; $51ef: $0b
    dec bc                                        ; $51f0: $0b
    dec bc                                        ; $51f1: $0b
    dec bc                                        ; $51f2: $0b
    dec bc                                        ; $51f3: $0b
    dec bc                                        ; $51f4: $0b
    dec bc                                        ; $51f5: $0b
    inc e                                         ; $51f6: $1c
    inc e                                         ; $51f7: $1c
    dec d                                         ; $51f8: $15
    inc e                                         ; $51f9: $1c
    inc e                                         ; $51fa: $1c
    ld a, $1c                                     ; $51fb: $3e $1c
    inc e                                         ; $51fd: $1c
    ld [hl], c                                    ; $51fe: $71
    inc e                                         ; $51ff: $1c
    inc e                                         ; $5200: $1c
    inc e                                         ; $5201: $1c
    inc e                                         ; $5202: $1c
    inc e                                         ; $5203: $1c
    ld [hl], e                                    ; $5204: $73
    ld de, $0101                                  ; $5205: $11 $01 $01
    dec bc                                        ; $5208: $0b
    ld bc, $0101                                  ; $5209: $01 $01 $01
    ld bc, $0701                                  ; $520c: $01 $01 $07
    ld bc, $0101                                  ; $520f: $01 $01 $01
    ld bc, $0101                                  ; $5212: $01 $01 $01
    add hl, bc                                    ; $5215: $09
    inc e                                         ; $5216: $1c
    inc e                                         ; $5217: $1c
    ld [hl], c                                    ; $5218: $71
    inc e                                         ; $5219: $1c
    inc e                                         ; $521a: $1c
    ld [de], a                                    ; $521b: $12
    inc e                                         ; $521c: $1c
    inc e                                         ; $521d: $1c
    ld [de], a                                    ; $521e: $12
    ld [hl], l                                    ; $521f: $75
    ld [hl], e                                    ; $5220: $73
    inc e                                         ; $5221: $1c
    rla                                           ; $5222: $17
    inc c                                         ; $5223: $0c
    ld [de], a                                    ; $5224: $12
    inc e                                         ; $5225: $1c
    ld bc, $0701                                  ; $5226: $01 $01 $07
    ld bc, $0901                                  ; $5229: $01 $01 $09
    ld bc, $0901                                  ; $522c: $01 $01 $09
    ld bc, $0101                                  ; $522f: $01 $01 $01
    add hl, bc                                    ; $5232: $09
    add hl, bc                                    ; $5233: $09
    add hl, bc                                    ; $5234: $09
    ld bc, $e2e1                                  ; $5235: $01 $e1 $e2
    ld b, b                                       ; $5238: $40
    ld b, e                                       ; $5239: $43
    inc e                                         ; $523a: $1c
    inc e                                         ; $523b: $1c
    ld b, d                                       ; $523c: $42
    ld b, l                                       ; $523d: $45
    inc e                                         ; $523e: $1c
    inc e                                         ; $523f: $1c
    inc e                                         ; $5240: $1c
    inc e                                         ; $5241: $1c
    inc e                                         ; $5242: $1c
    inc e                                         ; $5243: $1c
    inc e                                         ; $5244: $1c
    inc e                                         ; $5245: $1c
    dec bc                                        ; $5246: $0b
    dec bc                                        ; $5247: $0b
    ld bc, $0101                                  ; $5248: $01 $01 $01
    ld bc, $0101                                  ; $524b: $01 $01 $01
    ld bc, $0101                                  ; $524e: $01 $01 $01
    ld bc, $0101                                  ; $5251: $01 $01 $01
    ld bc, $2d01                                  ; $5254: $01 $01 $2d
    ld [$eceb], a                                 ; $5257: $ea $eb $ec
    db $ed                                        ; $525a: $ed
    rst $10                                       ; $525b: $d7
    nop                                           ; $525c: $00
    ld bc, $d0ef                                  ; $525d: $01 $ef $d0
    db $fc                                        ; $5260: $fc
    db $fd                                        ; $5261: $fd
    ldh a, [$d9]                                  ; $5262: $f0 $d9
    jp c, Jump_000_0bf1                           ; $5264: $da $f1 $0b

    dec bc                                        ; $5267: $0b
    dec bc                                        ; $5268: $0b
    dec bc                                        ; $5269: $0b
    dec bc                                        ; $526a: $0b
    dec bc                                        ; $526b: $0b
    dec bc                                        ; $526c: $0b
    dec bc                                        ; $526d: $0b
    dec bc                                        ; $526e: $0b
    dec bc                                        ; $526f: $0b
    dec bc                                        ; $5270: $0b
    dec bc                                        ; $5271: $0b
    dec bc                                        ; $5272: $0b
    dec bc                                        ; $5273: $0b
    dec bc                                        ; $5274: $0b
    dec bc                                        ; $5275: $0b
    halt                                          ; $5276: $76
    rra                                           ; $5277: $1f
    ld [hl], h                                    ; $5278: $74
    ld [hl], l                                    ; $5279: $75
    rla                                           ; $527a: $17
    rra                                           ; $527b: $1f
    ld [hl], h                                    ; $527c: $74
    inc c                                         ; $527d: $0c
    ld e, $13                                     ; $527e: $1e $13
    inc e                                         ; $5280: $1c
    inc e                                         ; $5281: $1c
    halt                                          ; $5282: $76
    inc e                                         ; $5283: $1c
    inc e                                         ; $5284: $1c
    ld [hl], c                                    ; $5285: $71
    ld bc, $0109                                  ; $5286: $01 $09 $01
    ld bc, $0909                                  ; $5289: $01 $09 $09
    ld bc, $0909                                  ; $528c: $01 $09 $09
    add hl, bc                                    ; $528f: $09
    ld bc, $0101                                  ; $5290: $01 $01 $01
    ld bc, $0701                                  ; $5293: $01 $01 $07
    ld e, $16                                     ; $5296: $1e $16
    halt                                          ; $5298: $76
    inc c                                         ; $5299: $0c
    inc e                                         ; $529a: $1c
    inc e                                         ; $529b: $1c
    inc e                                         ; $529c: $1c
    ld de, $1c1c                                  ; $529d: $11 $1c $1c
    inc e                                         ; $52a0: $1c
    inc e                                         ; $52a1: $1c
    inc e                                         ; $52a2: $1c
    inc e                                         ; $52a3: $1c
    inc e                                         ; $52a4: $1c
    inc e                                         ; $52a5: $1c
    add hl, bc                                    ; $52a6: $09
    add hl, bc                                    ; $52a7: $09
    ld bc, $0109                                  ; $52a8: $01 $09 $01
    ld bc, $0901                                  ; $52ab: $01 $01 $09
    ld bc, $0101                                  ; $52ae: $01 $01 $01
    ld bc, $0101                                  ; $52b1: $01 $01 $01
    ld bc, $1c01                                  ; $52b4: $01 $01 $1c
    inc e                                         ; $52b7: $1c
    ld a, $1c                                     ; $52b8: $3e $1c
    inc e                                         ; $52ba: $1c
    inc e                                         ; $52bb: $1c
    inc e                                         ; $52bc: $1c
    inc e                                         ; $52bd: $1c
    ld [hl], e                                    ; $52be: $73
    inc e                                         ; $52bf: $1c
    ld [hl], c                                    ; $52c0: $71
    inc e                                         ; $52c1: $1c
    inc e                                         ; $52c2: $1c
    inc de                                        ; $52c3: $13
    inc e                                         ; $52c4: $1c
    inc e                                         ; $52c5: $1c
    ld bc, $0101                                  ; $52c6: $01 $01 $01
    ld bc, $0101                                  ; $52c9: $01 $01 $01
    ld bc, $0101                                  ; $52cc: $01 $01 $01
    ld bc, $0107                                  ; $52cf: $01 $07 $01
    ld bc, $0109                                  ; $52d2: $01 $09 $01
    ld bc, $ea2d                                  ; $52d5: $01 $2d $ea
    db $eb                                        ; $52d8: $eb
    db $ec                                        ; $52d9: $ec
    db $ed                                        ; $52da: $ed
    inc b                                         ; $52db: $04
    inc bc                                        ; $52dc: $03
    ld [bc], a                                    ; $52dd: $02
    rst $28                                       ; $52de: $ef
    rlca                                          ; $52df: $07
    ld b, $05                                     ; $52e0: $06 $05
    ldh a, [$d9]                                  ; $52e2: $f0 $d9
    jp c, $0bd7                                   ; $52e4: $da $d7 $0b

    dec bc                                        ; $52e7: $0b
    dec bc                                        ; $52e8: $0b
    dec bc                                        ; $52e9: $0b
    dec bc                                        ; $52ea: $0b
    dec bc                                        ; $52eb: $0b
    dec bc                                        ; $52ec: $0b
    dec bc                                        ; $52ed: $0b
    dec bc                                        ; $52ee: $0b
    dec bc                                        ; $52ef: $0b
    dec bc                                        ; $52f0: $0b
    dec bc                                        ; $52f1: $0b
    dec bc                                        ; $52f2: $0b
    dec bc                                        ; $52f3: $0b
    dec bc                                        ; $52f4: $0b
    dec bc                                        ; $52f5: $0b
    ld [$eceb], a                                 ; $52f6: $ea $eb $ec
    ldh a, [$08]                                  ; $52f9: $f0 $08
    rst $38                                       ; $52fb: $ff
    xor $2e                                       ; $52fc: $ee $2e
    db $d3                                        ; $52fe: $d3
    sub $d7                                       ; $52ff: $d6 $d7
    cpl                                           ; $5301: $2f
    reti                                          ; $5302: $d9


    jp c, Jump_000_09f1                           ; $5303: $da $f1 $09

    dec bc                                        ; $5306: $0b
    dec bc                                        ; $5307: $0b
    dec bc                                        ; $5308: $0b
    ld l, e                                       ; $5309: $6b
    dec bc                                        ; $530a: $0b
    dec bc                                        ; $530b: $0b
    dec bc                                        ; $530c: $0b
    dec bc                                        ; $530d: $0b
    dec bc                                        ; $530e: $0b
    dec bc                                        ; $530f: $0b
    dec bc                                        ; $5310: $0b
    dec bc                                        ; $5311: $0b
    dec bc                                        ; $5312: $0b
    dec bc                                        ; $5313: $0b
    dec bc                                        ; $5314: $0b
    dec bc                                        ; $5315: $0b
    jr nc, jr_081_5349                            ; $5316: $30 $31

    ret z                                         ; $5318: $c8

    ld e, a                                       ; $5319: $5f
    ld [hl-], a                                   ; $531a: $32
    inc sp                                        ; $531b: $33
    inc e                                         ; $531c: $1c
    ld d, [hl]                                    ; $531d: $56
    inc [hl]                                      ; $531e: $34
    dec [hl]                                      ; $531f: $35
    inc e                                         ; $5320: $1c
    inc e                                         ; $5321: $1c
    inc e                                         ; $5322: $1c
    inc e                                         ; $5323: $1c
    ld [hl], e                                    ; $5324: $73
    inc e                                         ; $5325: $1c
    ld a, [bc]                                    ; $5326: $0a
    ld a, [bc]                                    ; $5327: $0a
    ld l, e                                       ; $5328: $6b
    inc bc                                        ; $5329: $03
    ld a, [bc]                                    ; $532a: $0a
    ld a, [bc]                                    ; $532b: $0a
    ld bc, $0a63                                  ; $532c: $01 $63 $0a
    ld a, [bc]                                    ; $532f: $0a
    ld bc, $0101                                  ; $5330: $01 $01 $01
    ld bc, $0101                                  ; $5333: $01 $01 $01
    ld d, h                                       ; $5336: $54
    ld d, l                                       ; $5337: $55
    ld e, [hl]                                    ; $5338: $5e
    ld e, a                                       ; $5339: $5f
    inc [hl]                                      ; $533a: $34
    dec [hl]                                      ; $533b: $35
    set 1, h                                      ; $533c: $cb $cc
    dec bc                                        ; $533e: $0b
    ld a, [bc]                                    ; $533f: $0a
    ld d, a                                       ; $5340: $57
    db $e4                                        ; $5341: $e4
    inc e                                         ; $5342: $1c
    inc e                                         ; $5343: $1c
    add hl, sp                                    ; $5344: $39
    ret z                                         ; $5345: $c8

    inc bc                                        ; $5346: $03
    inc bc                                        ; $5347: $03
    inc bc                                        ; $5348: $03

jr_081_5349:
    inc bc                                        ; $5349: $03
    inc bc                                        ; $534a: $03
    inc bc                                        ; $534b: $03
    dec bc                                        ; $534c: $0b
    dec bc                                        ; $534d: $0b
    ld l, e                                       ; $534e: $6b
    ld l, e                                       ; $534f: $6b
    inc bc                                        ; $5350: $03
    dec bc                                        ; $5351: $0b
    ld bc, $4301                                  ; $5352: $01 $01 $43
    ld l, e                                       ; $5355: $6b
    ld d, h                                       ; $5356: $54
    ld d, l                                       ; $5357: $55
    ld e, [hl]                                    ; $5358: $5e
    ld e, a                                       ; $5359: $5f
    inc [hl]                                      ; $535a: $34
    dec [hl]                                      ; $535b: $35
    ld [hl], $37                                  ; $535c: $36 $37
    rst $20                                       ; $535e: $e7
    ret                                           ; $535f: $c9


    ld d, a                                       ; $5360: $57
    ld e, b                                       ; $5361: $58
    jp z, Jump_081_5ae5                           ; $5362: $ca $e5 $5a

    and $03                                       ; $5365: $e6 $03
    inc bc                                        ; $5367: $03
    inc bc                                        ; $5368: $03
    inc bc                                        ; $5369: $03
    inc bc                                        ; $536a: $03
    inc bc                                        ; $536b: $03
    inc bc                                        ; $536c: $03
    inc bc                                        ; $536d: $03
    dec bc                                        ; $536e: $0b
    dec bc                                        ; $536f: $0b
    inc bc                                        ; $5370: $03
    inc bc                                        ; $5371: $03
    dec bc                                        ; $5372: $0b
    dec bc                                        ; $5373: $0b
    inc bc                                        ; $5374: $03
    dec bc                                        ; $5375: $0b
    ld [$eceb], a                                 ; $5376: $ea $eb $ec
    ldh a, [$08]                                  ; $5379: $f0 $08
    db $d3                                        ; $537b: $d3
    rst $08                                       ; $537c: $cf
    ld l, $d5                                     ; $537d: $2e $d5
    sub $d7                                       ; $537f: $d6 $d7
    cpl                                           ; $5381: $2f
    reti                                          ; $5382: $d9


    jp c, Jump_000_09f1                           ; $5383: $da $f1 $09

    dec bc                                        ; $5386: $0b
    dec bc                                        ; $5387: $0b
    dec bc                                        ; $5388: $0b
    ld l, e                                       ; $5389: $6b
    dec bc                                        ; $538a: $0b
    dec hl                                        ; $538b: $2b
    dec bc                                        ; $538c: $0b
    dec bc                                        ; $538d: $0b
    dec bc                                        ; $538e: $0b
    dec bc                                        ; $538f: $0b
    dec bc                                        ; $5390: $0b
    dec bc                                        ; $5391: $0b
    dec bc                                        ; $5392: $0b
    dec bc                                        ; $5393: $0b
    dec bc                                        ; $5394: $0b
    dec bc                                        ; $5395: $0b
    ld b, b                                       ; $5396: $40
    ld b, e                                       ; $5397: $43
    ld d, $13                                     ; $5398: $16 $13
    ld b, d                                       ; $539a: $42
    ld b, l                                       ; $539b: $45
    ld [hl], l                                    ; $539c: $75
    ld e, $1c                                     ; $539d: $1e $1c
    inc e                                         ; $539f: $1c
    ld [hl], e                                    ; $53a0: $73
    ld de, $1c1c                                  ; $53a1: $11 $1c $1c
    ld [de], a                                    ; $53a4: $12
    inc e                                         ; $53a5: $1c
    ld bc, $0901                                  ; $53a6: $01 $01 $09
    add hl, bc                                    ; $53a9: $09
    ld bc, $0101                                  ; $53aa: $01 $01 $01
    add hl, bc                                    ; $53ad: $09
    ld bc, $0101                                  ; $53ae: $01 $01 $01
    add hl, bc                                    ; $53b1: $09
    ld bc, $0901                                  ; $53b2: $01 $01 $09
    ld bc, $2e1c                                  ; $53b5: $01 $1c $2e
    cpl                                           ; $53b8: $2f
    inc e                                         ; $53b9: $1c
    ld [de], a                                    ; $53ba: $12
    inc c                                         ; $53bb: $0c
    inc e                                         ; $53bc: $1c
    ld [hl], c                                    ; $53bd: $71
    ld [hl], l                                    ; $53be: $75
    ld e, $76                                     ; $53bf: $1e $76
    inc e                                         ; $53c1: $1c
    inc e                                         ; $53c2: $1c
    inc de                                        ; $53c3: $13
    ld [hl], l                                    ; $53c4: $75
    ld [hl], h                                    ; $53c5: $74
    ld bc, $0101                                  ; $53c6: $01 $01 $01
    ld bc, $0909                                  ; $53c9: $01 $09 $09
    ld bc, $0107                                  ; $53cc: $01 $07 $01
    add hl, bc                                    ; $53cf: $09
    ld bc, $0101                                  ; $53d0: $01 $01 $01
    add hl, bc                                    ; $53d3: $09
    ld bc, $5601                                  ; $53d4: $01 $01 $56
    ld d, l                                       ; $53d7: $55
    ld e, [hl]                                    ; $53d8: $5e
    ld e, a                                       ; $53d9: $5f
    inc e                                         ; $53da: $1c
    add hl, sp                                    ; $53db: $39
    dec bc                                        ; $53dc: $0b
    ld a, [bc]                                    ; $53dd: $0a
    inc e                                         ; $53de: $1c
    inc e                                         ; $53df: $1c
    inc e                                         ; $53e0: $1c
    inc e                                         ; $53e1: $1c
    halt                                          ; $53e2: $76
    inc e                                         ; $53e3: $1c
    inc e                                         ; $53e4: $1c
    ld [hl], c                                    ; $53e5: $71
    ld h, e                                       ; $53e6: $63
    inc bc                                        ; $53e7: $03
    inc bc                                        ; $53e8: $03
    inc bc                                        ; $53e9: $03
    ld bc, $6b43                                  ; $53ea: $01 $43 $6b
    ld l, e                                       ; $53ed: $6b
    ld bc, $0101                                  ; $53ee: $01 $01 $01
    ld bc, $0101                                  ; $53f1: $01 $01 $01
    ld bc, $0407                                  ; $53f4: $01 $07 $04
    inc bc                                        ; $53f7: $03
    ld [bc], a                                    ; $53f8: $02
    ldh a, [rTAC]                                 ; $53f9: $f0 $07
    ld b, $05                                     ; $53fb: $06 $05
    ld l, $d5                                     ; $53fd: $2e $d5
    sub $d7                                       ; $53ff: $d6 $d7
    cpl                                           ; $5401: $2f
    reti                                          ; $5402: $d9


    db $d3                                        ; $5403: $d3
    rst $08                                       ; $5404: $cf
    add hl, bc                                    ; $5405: $09
    dec bc                                        ; $5406: $0b
    dec bc                                        ; $5407: $0b
    dec bc                                        ; $5408: $0b
    ld l, e                                       ; $5409: $6b
    dec bc                                        ; $540a: $0b
    dec bc                                        ; $540b: $0b
    dec bc                                        ; $540c: $0b
    dec bc                                        ; $540d: $0b
    dec bc                                        ; $540e: $0b
    dec bc                                        ; $540f: $0b
    dec bc                                        ; $5410: $0b
    dec bc                                        ; $5411: $0b
    dec bc                                        ; $5412: $0b
    dec hl                                        ; $5413: $2b
    dec bc                                        ; $5414: $0b
    dec bc                                        ; $5415: $0b
    inc e                                         ; $5416: $1c
    ld de, $1c1c                                  ; $5417: $11 $1c $1c
    inc e                                         ; $541a: $1c
    ld [hl], c                                    ; $541b: $71
    inc e                                         ; $541c: $1c
    ld h, d                                       ; $541d: $62
    inc e                                         ; $541e: $1c
    inc e                                         ; $541f: $1c
    ld h, a                                       ; $5420: $67
    ld l, h                                       ; $5421: $6c
    inc e                                         ; $5422: $1c
    ld l, e                                       ; $5423: $6b
    inc e                                         ; $5424: $1c
    ld l, e                                       ; $5425: $6b
    ld bc, $0109                                  ; $5426: $01 $09 $01
    ld bc, $0701                                  ; $5429: $01 $01 $07
    ld bc, $0101                                  ; $542c: $01 $01 $01
    ld bc, $0101                                  ; $542f: $01 $01 $01
    ld bc, $0101                                  ; $5432: $01 $01 $01
    ld bc, $401c                                  ; $5435: $01 $1c $40
    ld b, e                                       ; $5438: $43
    inc e                                         ; $5439: $1c
    inc e                                         ; $543a: $1c
    ld b, d                                       ; $543b: $42
    ld b, l                                       ; $543c: $45
    inc e                                         ; $543d: $1c
    inc e                                         ; $543e: $1c
    ld h, d                                       ; $543f: $62
    inc e                                         ; $5440: $1c
    ld l, e                                       ; $5441: $6b
    ld l, c                                       ; $5442: $69
    ld l, h                                       ; $5443: $6c
    ld h, a                                       ; $5444: $67
    ld h, d                                       ; $5445: $62
    ld bc, $0101                                  ; $5446: $01 $01 $01
    ld bc, $0101                                  ; $5449: $01 $01 $01
    ld bc, $0101                                  ; $544c: $01 $01 $01
    ld bc, $0101                                  ; $544f: $01 $01 $01
    ld bc, $0101                                  ; $5452: $01 $01 $01
    ld bc, $7473                                  ; $5455: $01 $73 $74
    halt                                          ; $5458: $76
    inc e                                         ; $5459: $1c
    inc e                                         ; $545a: $1c
    inc e                                         ; $545b: $1c
    inc e                                         ; $545c: $1c
    inc e                                         ; $545d: $1c
    ld l, c                                       ; $545e: $69
    inc e                                         ; $545f: $1c
    ld h, a                                       ; $5460: $67
    inc e                                         ; $5461: $1c
    inc e                                         ; $5462: $1c
    ld l, e                                       ; $5463: $6b
    ld h, e                                       ; $5464: $63
    ld l, h                                       ; $5465: $6c
    ld bc, $0101                                  ; $5466: $01 $01 $01
    ld bc, $0101                                  ; $5469: $01 $01 $01
    ld bc, $0101                                  ; $546c: $01 $01 $01
    ld bc, $0101                                  ; $546f: $01 $01 $01
    ld bc, $0101                                  ; $5472: $01 $01 $01
    ld bc, $cfd3                                  ; $5475: $01 $d3 $cf
    db $ec                                        ; $5478: $ec
    ldh a, [$08]                                  ; $5479: $f0 $08
    rst $38                                       ; $547b: $ff
    xor $2e                                       ; $547c: $ee $2e
    push de                                       ; $547e: $d5
    sub $d7                                       ; $547f: $d6 $d7
    cpl                                           ; $5481: $2f
    nop                                           ; $5482: $00
    ld bc, $09f1                                  ; $5483: $01 $f1 $09
    dec hl                                        ; $5486: $2b
    dec bc                                        ; $5487: $0b
    dec bc                                        ; $5488: $0b
    ld l, e                                       ; $5489: $6b
    dec bc                                        ; $548a: $0b
    dec bc                                        ; $548b: $0b
    dec bc                                        ; $548c: $0b
    dec bc                                        ; $548d: $0b
    dec bc                                        ; $548e: $0b
    dec bc                                        ; $548f: $0b
    dec bc                                        ; $5490: $0b
    dec bc                                        ; $5491: $0b
    dec bc                                        ; $5492: $0b
    dec bc                                        ; $5493: $0b
    dec bc                                        ; $5494: $0b
    dec bc                                        ; $5495: $0b
    inc e                                         ; $5496: $1c
    inc e                                         ; $5497: $1c
    ld l, d                                       ; $5498: $6a
    ld h, h                                       ; $5499: $64
    inc e                                         ; $549a: $1c
    ld l, h                                       ; $549b: $6c
    ld l, l                                       ; $549c: $6d
    ld l, h                                       ; $549d: $6c
    ld l, d                                       ; $549e: $6a
    ld h, [hl]                                    ; $549f: $66
    ld l, c                                       ; $54a0: $69
    ld h, h                                       ; $54a1: $64
    ld h, a                                       ; $54a2: $67
    ld l, b                                       ; $54a3: $68
    ld h, l                                       ; $54a4: $65
    ld h, [hl]                                    ; $54a5: $66
    ld bc, $0101                                  ; $54a6: $01 $01 $01
    ld bc, $0101                                  ; $54a9: $01 $01 $01
    ld bc, $0101                                  ; $54ac: $01 $01 $01
    ld bc, $0101                                  ; $54af: $01 $01 $01
    ld bc, $0101                                  ; $54b2: $01 $01 $01
    ld bc, $6b6a                                  ; $54b5: $01 $6a $6b
    ld l, c                                       ; $54b8: $69
    ld l, h                                       ; $54b9: $6c
    ld h, l                                       ; $54ba: $65
    ld h, d                                       ; $54bb: $62
    ld l, l                                       ; $54bc: $6d
    ld h, [hl]                                    ; $54bd: $66
    ld l, l                                       ; $54be: $6d
    ld h, [hl]                                    ; $54bf: $66
    ld h, e                                       ; $54c0: $63
    ld l, b                                       ; $54c1: $68
    ld h, e                                       ; $54c2: $63
    ld l, b                                       ; $54c3: $68
    ld h, l                                       ; $54c4: $65
    ld h, h                                       ; $54c5: $64
    ld bc, $0101                                  ; $54c6: $01 $01 $01
    ld bc, $0101                                  ; $54c9: $01 $01 $01
    ld bc, $0101                                  ; $54cc: $01 $01 $01
    ld bc, $0101                                  ; $54cf: $01 $01 $01
    ld bc, $0101                                  ; $54d2: $01 $01 $01
    ld bc, $6867                                  ; $54d5: $01 $67 $68
    ld h, l                                       ; $54d8: $65
    ld h, [hl]                                    ; $54d9: $66
    ld h, e                                       ; $54da: $63
    ld h, h                                       ; $54db: $64
    ld l, l                                       ; $54dc: $6d
    ld h, d                                       ; $54dd: $62
    ld h, l                                       ; $54de: $65
    ld l, e                                       ; $54df: $6b
    ld l, c                                       ; $54e0: $69
    inc e                                         ; $54e1: $1c
    ld l, c                                       ; $54e2: $69
    ld l, h                                       ; $54e3: $6c
    inc e                                         ; $54e4: $1c
    inc e                                         ; $54e5: $1c
    ld bc, $0101                                  ; $54e6: $01 $01 $01
    ld bc, $0101                                  ; $54e9: $01 $01 $01
    ld bc, $0101                                  ; $54ec: $01 $01 $01
    ld bc, $0101                                  ; $54ef: $01 $01 $01
    ld bc, $0101                                  ; $54f2: $01 $01 $01
    ld bc, $5554                                  ; $54f5: $01 $54 $55
    ld a, [bc]                                    ; $54f8: $0a
    dec bc                                        ; $54f9: $0b
    inc [hl]                                      ; $54fa: $34
    dec [hl]                                      ; $54fb: $35
    ld [hl], $37                                  ; $54fc: $36 $37
    add sp, -$37                                  ; $54fe: $e8 $c9
    set 1, h                                      ; $5500: $cb $cc
    jp z, Jump_081_5ae5                           ; $5502: $ca $e5 $5a

    ld e, e                                       ; $5505: $5b
    inc bc                                        ; $5506: $03
    inc bc                                        ; $5507: $03
    dec bc                                        ; $5508: $0b
    dec bc                                        ; $5509: $0b
    inc bc                                        ; $550a: $03
    inc bc                                        ; $550b: $03
    inc bc                                        ; $550c: $03
    inc bc                                        ; $550d: $03
    dec bc                                        ; $550e: $0b
    dec bc                                        ; $550f: $0b
    dec bc                                        ; $5510: $0b
    dec bc                                        ; $5511: $0b
    dec bc                                        ; $5512: $0b
    dec bc                                        ; $5513: $0b
    inc bc                                        ; $5514: $03
    inc bc                                        ; $5515: $03
    ld l, h                                       ; $5516: $6c
    ld l, e                                       ; $5517: $6b
    ld l, c                                       ; $5518: $69
    ld l, h                                       ; $5519: $6c
    ret z                                         ; $551a: $c8

    add hl, sp                                    ; $551b: $39
    ld l, h                                       ; $551c: $6c
    ld h, a                                       ; $551d: $67
    add sp, -$37                                  ; $551e: $e8 $c9
    ld a, [bc]                                    ; $5520: $0a
    dec bc                                        ; $5521: $0b
    jp z, $e7e4                                   ; $5522: $ca $e4 $e7

    ld e, e                                       ; $5525: $5b
    ld bc, $0101                                  ; $5526: $01 $01 $01
    ld bc, $230b                                  ; $5529: $01 $0b $23
    ld bc, $0b01                                  ; $552c: $01 $01 $0b
    dec bc                                        ; $552f: $0b
    dec bc                                        ; $5530: $0b
    dec bc                                        ; $5531: $0b
    dec bc                                        ; $5532: $0b
    dec bc                                        ; $5533: $0b
    dec bc                                        ; $5534: $0b
    inc bc                                        ; $5535: $03
    ld h, a                                       ; $5536: $67
    ld h, d                                       ; $5537: $62
    ld l, d                                       ; $5538: $6a
    ld l, e                                       ; $5539: $6b
    ld l, c                                       ; $553a: $69
    ld l, h                                       ; $553b: $6c
    ld h, d                                       ; $553c: $62
    ld l, d                                       ; $553d: $6a
    inc e                                         ; $553e: $1c
    inc e                                         ; $553f: $1c
    ld l, h                                       ; $5540: $6c
    inc e                                         ; $5541: $1c
    ret z                                         ; $5542: $c8

    add hl, sp                                    ; $5543: $39
    inc e                                         ; $5544: $1c
    inc e                                         ; $5545: $1c
    ld bc, $0101                                  ; $5546: $01 $01 $01
    ld bc, $0101                                  ; $5549: $01 $01 $01
    ld bc, $0101                                  ; $554c: $01 $01 $01
    ld bc, $0101                                  ; $554f: $01 $01 $01
    dec bc                                        ; $5552: $0b
    inc hl                                        ; $5553: $23
    ld bc, $6201                                  ; $5554: $01 $01 $62
    inc e                                         ; $5557: $1c
    ld l, e                                       ; $5558: $6b
    inc e                                         ; $5559: $1c
    inc e                                         ; $555a: $1c
    ld h, a                                       ; $555b: $67
    inc e                                         ; $555c: $1c
    dec c                                         ; $555d: $0d
    ld l, e                                       ; $555e: $6b
    inc e                                         ; $555f: $1c
    inc e                                         ; $5560: $1c
    ld c, $1c                                     ; $5561: $0e $1c
    ld a, $1c                                     ; $5563: $3e $1c
    rrca                                          ; $5565: $0f
    ld bc, $0101                                  ; $5566: $01 $01 $01
    ld bc, $0101                                  ; $5569: $01 $01 $01
    ld bc, $01aa                                  ; $556c: $01 $aa $01
    ld bc, $aa01                                  ; $556f: $01 $01 $aa
    ld bc, $0101                                  ; $5572: $01 $01 $01
    xor d                                         ; $5575: $aa
    ld d, h                                       ; $5576: $54
    ld d, l                                       ; $5577: $55
    ld e, [hl]                                    ; $5578: $5e
    ld e, a                                       ; $5579: $5f
    inc [hl]                                      ; $557a: $34
    dec [hl]                                      ; $557b: $35
    ld [hl], $37                                  ; $557c: $36 $37
    ret z                                         ; $557e: $c8

    ret                                           ; $557f: $c9


    ld d, a                                       ; $5580: $57
    and $1c                                       ; $5581: $e6 $1c
    ld d, [hl]                                    ; $5583: $56
    ld e, d                                       ; $5584: $5a
    ld e, e                                       ; $5585: $5b
    inc bc                                        ; $5586: $03
    inc bc                                        ; $5587: $03
    inc bc                                        ; $5588: $03
    inc bc                                        ; $5589: $03
    inc bc                                        ; $558a: $03
    inc bc                                        ; $558b: $03
    inc bc                                        ; $558c: $03
    inc bc                                        ; $558d: $03
    ld l, e                                       ; $558e: $6b
    dec bc                                        ; $558f: $0b
    inc bc                                        ; $5590: $03
    dec bc                                        ; $5591: $0b
    ld bc, $0363                                  ; $5592: $01 $63 $03
    inc bc                                        ; $5595: $03
    ld d, h                                       ; $5596: $54
    ld d, l                                       ; $5597: $55
    ld e, [hl]                                    ; $5598: $5e
    ld e, a                                       ; $5599: $5f
    inc [hl]                                      ; $559a: $34
    dec [hl]                                      ; $559b: $35
    ld [hl], $e6                                  ; $559c: $36 $e6
    add sp, -$37                                  ; $559e: $e8 $c9
    ld d, a                                       ; $55a0: $57
    ld e, b                                       ; $55a1: $58
    jp z, Jump_081_5ae5                           ; $55a2: $ca $e5 $5a

    ld e, e                                       ; $55a5: $5b
    inc bc                                        ; $55a6: $03
    inc bc                                        ; $55a7: $03
    inc bc                                        ; $55a8: $03
    inc bc                                        ; $55a9: $03
    inc bc                                        ; $55aa: $03
    inc bc                                        ; $55ab: $03
    inc bc                                        ; $55ac: $03
    dec bc                                        ; $55ad: $0b
    dec bc                                        ; $55ae: $0b
    dec bc                                        ; $55af: $0b
    inc bc                                        ; $55b0: $03
    inc bc                                        ; $55b1: $03
    dec bc                                        ; $55b2: $0b
    dec bc                                        ; $55b3: $0b
    inc bc                                        ; $55b4: $03
    inc bc                                        ; $55b5: $03
    ld d, h                                       ; $55b6: $54
    ld d, l                                       ; $55b7: $55
    ld a, [bc]                                    ; $55b8: $0a
    dec bc                                        ; $55b9: $0b
    inc [hl]                                      ; $55ba: $34
    dec [hl]                                      ; $55bb: $35
    ld [hl], $37                                  ; $55bc: $36 $37
    add sp, -$37                                  ; $55be: $e8 $c9
    ld d, a                                       ; $55c0: $57
    ld e, b                                       ; $55c1: $58
    jp z, $cccb                                   ; $55c2: $ca $cb $cc

    ld e, e                                       ; $55c5: $5b
    inc bc                                        ; $55c6: $03
    inc bc                                        ; $55c7: $03
    dec bc                                        ; $55c8: $0b
    dec bc                                        ; $55c9: $0b
    inc bc                                        ; $55ca: $03
    inc bc                                        ; $55cb: $03
    inc bc                                        ; $55cc: $03
    inc bc                                        ; $55cd: $03
    dec bc                                        ; $55ce: $0b
    dec bc                                        ; $55cf: $0b
    inc bc                                        ; $55d0: $03
    inc bc                                        ; $55d1: $03
    dec bc                                        ; $55d2: $0b
    dec bc                                        ; $55d3: $0b
    dec bc                                        ; $55d4: $0b
    inc bc                                        ; $55d5: $03
    inc e                                         ; $55d6: $1c
    inc e                                         ; $55d7: $1c
    inc e                                         ; $55d8: $1c
    db $10                                        ; $55d9: $10
    ld a, [bc]                                    ; $55da: $0a
    dec bc                                        ; $55db: $0b
    add hl, sp                                    ; $55dc: $39
    inc e                                         ; $55dd: $1c
    add sp, -$37                                  ; $55de: $e8 $c9
    ld d, a                                       ; $55e0: $57
    ld d, [hl]                                    ; $55e1: $56
    jp z, Jump_081_5ae5                           ; $55e2: $ca $e5 $5a

    ld e, e                                       ; $55e5: $5b
    ld bc, $0101                                  ; $55e6: $01 $01 $01
    xor d                                         ; $55e9: $aa
    dec bc                                        ; $55ea: $0b
    dec bc                                        ; $55eb: $0b
    inc hl                                        ; $55ec: $23
    ld bc, $0b0b                                  ; $55ed: $01 $0b $0b
    inc bc                                        ; $55f0: $03
    inc bc                                        ; $55f1: $03
    dec bc                                        ; $55f2: $0b
    dec bc                                        ; $55f3: $0b
    inc bc                                        ; $55f4: $03
    inc bc                                        ; $55f5: $03
    inc e                                         ; $55f6: $1c
    ld [hl], $5e                                  ; $55f7: $36 $5e
    ld e, a                                       ; $55f9: $5f
    inc e                                         ; $55fa: $1c
    ld e, l                                       ; $55fb: $5d
    ld [hl], $37                                  ; $55fc: $36 $37
    ld l, d                                       ; $55fe: $6a
    ld h, c                                       ; $55ff: $61
    ld d, a                                       ; $5600: $57
    bit 5, l                                      ; $5601: $cb $6d
    ld e, c                                       ; $5603: $59
    db $e4                                        ; $5604: $e4
    rst $20                                       ; $5605: $e7
    ld bc, $030b                                  ; $5606: $01 $0b $03
    inc bc                                        ; $5609: $03
    ld bc, $0323                                  ; $560a: $01 $23 $03
    inc bc                                        ; $560d: $03
    ld bc, $0363                                  ; $560e: $01 $63 $03
    dec bc                                        ; $5611: $0b
    ld bc, $0b03                                  ; $5612: $01 $03 $0b
    dec bc                                        ; $5615: $0b
    ld d, h                                       ; $5616: $54
    ld d, l                                       ; $5617: $55
    ret z                                         ; $5618: $c8

    ld e, a                                       ; $5619: $5f
    inc [hl]                                      ; $561a: $34
    dec [hl]                                      ; $561b: $35
    ld e, l                                       ; $561c: $5d
    ld d, [hl]                                    ; $561d: $56
    call z, Call_081_61c9                         ; $561e: $cc $c9 $61
    inc e                                         ; $5621: $1c
    jp z, $59e5                                   ; $5622: $ca $e5 $59

    inc e                                         ; $5625: $1c
    inc bc                                        ; $5626: $03
    inc bc                                        ; $5627: $03
    ld l, e                                       ; $5628: $6b
    inc bc                                        ; $5629: $03
    inc bc                                        ; $562a: $03
    inc bc                                        ; $562b: $03
    inc bc                                        ; $562c: $03
    ld h, e                                       ; $562d: $63
    dec bc                                        ; $562e: $0b
    dec bc                                        ; $562f: $0b
    ld b, e                                       ; $5630: $43
    ld bc, $0b0b                                  ; $5631: $01 $0b $0b
    inc hl                                        ; $5634: $23
    ld bc, $5554                                  ; $5635: $01 $54 $55
    ld e, [hl]                                    ; $5638: $5e
    ld e, a                                       ; $5639: $5f
    inc [hl]                                      ; $563a: $34
    dec [hl]                                      ; $563b: $35
    ld [hl], $e4                                  ; $563c: $36 $e4
    dec bc                                        ; $563e: $0b
    ld a, [bc]                                    ; $563f: $0a
    ld d, a                                       ; $5640: $57
    ld e, b                                       ; $5641: $58
    inc e                                         ; $5642: $1c
    inc e                                         ; $5643: $1c
    add hl, sp                                    ; $5644: $39
    ret z                                         ; $5645: $c8

    inc bc                                        ; $5646: $03
    inc bc                                        ; $5647: $03
    inc bc                                        ; $5648: $03
    inc bc                                        ; $5649: $03
    inc bc                                        ; $564a: $03
    inc bc                                        ; $564b: $03
    inc bc                                        ; $564c: $03
    dec bc                                        ; $564d: $0b
    ld l, e                                       ; $564e: $6b
    ld l, e                                       ; $564f: $6b
    inc bc                                        ; $5650: $03
    inc bc                                        ; $5651: $03
    ld bc, $4301                                  ; $5652: $01 $01 $43
    ld l, e                                       ; $5655: $6b
    ld d, h                                       ; $5656: $54
    ld d, l                                       ; $5657: $55
    ld e, [hl]                                    ; $5658: $5e
    ld e, a                                       ; $5659: $5f
    rst $20                                       ; $565a: $e7
    dec [hl]                                      ; $565b: $35
    ld [hl], $e6                                  ; $565c: $36 $e6
    add sp, -$37                                  ; $565e: $e8 $c9
    ld d, a                                       ; $5660: $57
    ld e, b                                       ; $5661: $58
    jp z, $e6e5                                   ; $5662: $ca $e5 $e6

    ld e, e                                       ; $5665: $5b
    inc bc                                        ; $5666: $03
    inc bc                                        ; $5667: $03
    inc bc                                        ; $5668: $03
    inc bc                                        ; $5669: $03
    dec bc                                        ; $566a: $0b
    inc bc                                        ; $566b: $03
    inc bc                                        ; $566c: $03
    dec bc                                        ; $566d: $0b
    dec bc                                        ; $566e: $0b
    dec bc                                        ; $566f: $0b
    inc bc                                        ; $5670: $03
    inc bc                                        ; $5671: $03
    dec bc                                        ; $5672: $0b
    dec bc                                        ; $5673: $0b
    dec bc                                        ; $5674: $0b
    inc bc                                        ; $5675: $03
    ld l, c                                       ; $5676: $69
    ld e, l                                       ; $5677: $5d
    ld e, [hl]                                    ; $5678: $5e
    ld e, a                                       ; $5679: $5f
    inc e                                         ; $567a: $1c
    ld e, l                                       ; $567b: $5d
    ld [hl], $37                                  ; $567c: $36 $37
    inc e                                         ; $567e: $1c
    ld h, c                                       ; $567f: $61
    ld d, a                                       ; $5680: $57
    ld e, b                                       ; $5681: $58
    inc e                                         ; $5682: $1c
    ld e, c                                       ; $5683: $59
    ld e, d                                       ; $5684: $5a
    ld e, e                                       ; $5685: $5b
    ld bc, $0363                                  ; $5686: $01 $63 $03
    inc bc                                        ; $5689: $03
    ld bc, $0323                                  ; $568a: $01 $23 $03
    inc bc                                        ; $568d: $03
    ld bc, $0363                                  ; $568e: $01 $63 $03
    inc bc                                        ; $5691: $03
    ld bc, $0303                                  ; $5692: $01 $03 $03
    inc bc                                        ; $5695: $03
    and $55                                       ; $5696: $e6 $55
    ld e, l                                       ; $5698: $5d
    inc e                                         ; $5699: $1c
    inc [hl]                                      ; $569a: $34
    dec [hl]                                      ; $569b: $35
    ld [hl], $1c                                  ; $569c: $36 $1c
    add sp, -$37                                  ; $569e: $e8 $c9
    ld e, l                                       ; $56a0: $5d
    inc e                                         ; $56a1: $1c
    jp z, $36e5                                   ; $56a2: $ca $e5 $36

    ld l, e                                       ; $56a5: $6b
    dec bc                                        ; $56a6: $0b
    inc bc                                        ; $56a7: $03
    ld b, e                                       ; $56a8: $43
    ld bc, $0303                                  ; $56a9: $01 $03 $03
    ld l, e                                       ; $56ac: $6b
    ld bc, $0b0b                                  ; $56ad: $01 $0b $0b
    ld b, e                                       ; $56b0: $43
    ld bc, $0b0b                                  ; $56b1: $01 $0b $0b
    ld l, e                                       ; $56b4: $6b
    ld bc, $1c3e                                  ; $56b5: $01 $3e $1c
    inc e                                         ; $56b8: $1c
    inc e                                         ; $56b9: $1c
    inc e                                         ; $56ba: $1c
    inc e                                         ; $56bb: $1c
    ld l, d                                       ; $56bc: $6a
    ld l, e                                       ; $56bd: $6b
    ld l, c                                       ; $56be: $69
    ld l, h                                       ; $56bf: $6c
    ld l, c                                       ; $56c0: $69
    ld l, h                                       ; $56c1: $6c
    ld l, c                                       ; $56c2: $69
    ld h, d                                       ; $56c3: $62
    ld l, d                                       ; $56c4: $6a
    ld l, e                                       ; $56c5: $6b
    ld bc, $0101                                  ; $56c6: $01 $01 $01
    ld bc, $0101                                  ; $56c9: $01 $01 $01
    ld bc, $0101                                  ; $56cc: $01 $01 $01
    ld bc, $0101                                  ; $56cf: $01 $01 $01
    ld bc, $0101                                  ; $56d2: $01 $01 $01
    ld bc, $55c8                                  ; $56d5: $01 $c8 $55
    ld e, [hl]                                    ; $56d8: $5e
    ld e, a                                       ; $56d9: $5f
    inc e                                         ; $56da: $1c
    ld d, [hl]                                    ; $56db: $56
    ld [hl], $37                                  ; $56dc: $36 $37
    ld l, d                                       ; $56de: $6a
    ld l, e                                       ; $56df: $6b
    add hl, sp                                    ; $56e0: $39
    dec bc                                        ; $56e1: $0b
    ld l, c                                       ; $56e2: $69
    ld l, h                                       ; $56e3: $6c
    ld h, a                                       ; $56e4: $67
    ld l, e                                       ; $56e5: $6b
    ld l, e                                       ; $56e6: $6b
    inc bc                                        ; $56e7: $03
    inc bc                                        ; $56e8: $03
    inc bc                                        ; $56e9: $03
    ld bc, $0363                                  ; $56ea: $01 $63 $03
    inc bc                                        ; $56ed: $03
    ld bc, $4301                                  ; $56ee: $01 $01 $43
    ld l, e                                       ; $56f1: $6b
    ld bc, $0101                                  ; $56f2: $01 $01 $01
    ld bc, $dc0e                                  ; $56f5: $01 $0e $dc
    rst $20                                       ; $56f8: $e7
    inc e                                         ; $56f9: $1c
    rst $18                                       ; $56fa: $df
    ldh [$ea], a                                  ; $56fb: $e0 $ea
    inc e                                         ; $56fd: $1c
    pop de                                        ; $56fe: $d1
    jp nc, Jump_000_1110                          ; $56ff: $d2 $10 $11

    push de                                       ; $5702: $d5
    sub $14                                       ; $5703: $d6 $14
    dec d                                         ; $5705: $15
    add d                                         ; $5706: $82
    add d                                         ; $5707: $82
    add d                                         ; $5708: $82
    ld bc, $a2a2                                  ; $5709: $01 $a2 $a2
    and d                                         ; $570c: $a2
    ld bc, $8282                                  ; $570d: $01 $82 $82
    and d                                         ; $5710: $a2
    and d                                         ; $5711: $a2
    add d                                         ; $5712: $82
    add d                                         ; $5713: $82
    and d                                         ; $5714: $a2
    and d                                         ; $5715: $a2
    reti                                          ; $5716: $d9


    jp c, $1918                                   ; $5717: $da $18 $19

    inc e                                         ; $571a: $1c
    rrca                                          ; $571b: $0f
    inc e                                         ; $571c: $1c
    inc e                                         ; $571d: $1c
    inc e                                         ; $571e: $1c
    inc e                                         ; $571f: $1c
    inc e                                         ; $5720: $1c
    inc e                                         ; $5721: $1c
    ret z                                         ; $5722: $c8

    add hl, sp                                    ; $5723: $39
    inc e                                         ; $5724: $1c
    inc e                                         ; $5725: $1c
    add d                                         ; $5726: $82
    add d                                         ; $5727: $82
    and d                                         ; $5728: $a2
    and d                                         ; $5729: $a2
    ld bc, $0123                                  ; $572a: $01 $23 $01
    ld bc, $0101                                  ; $572d: $01 $01 $01
    ld bc, $0b01                                  ; $5730: $01 $01 $0b
    inc hl                                        ; $5733: $23
    ld bc, $5401                                  ; $5734: $01 $01 $54
    ld d, l                                       ; $5737: $55
    ld a, [bc]                                    ; $5738: $0a
    dec bc                                        ; $5739: $0b
    inc [hl]                                      ; $573a: $34
    dec [hl]                                      ; $573b: $35
    ld [hl], $37                                  ; $573c: $36 $37
    add sp, -$37                                  ; $573e: $e8 $c9
    db $e4                                        ; $5740: $e4
    rst $20                                       ; $5741: $e7
    jp z, Jump_081_5ae5                           ; $5742: $ca $e5 $5a

    ld e, e                                       ; $5745: $5b
    inc bc                                        ; $5746: $03
    inc bc                                        ; $5747: $03
    dec bc                                        ; $5748: $0b
    dec bc                                        ; $5749: $0b
    inc bc                                        ; $574a: $03
    inc bc                                        ; $574b: $03
    inc bc                                        ; $574c: $03
    inc bc                                        ; $574d: $03
    dec bc                                        ; $574e: $0b
    dec bc                                        ; $574f: $0b
    dec bc                                        ; $5750: $0b
    dec bc                                        ; $5751: $0b
    dec bc                                        ; $5752: $0b
    dec bc                                        ; $5753: $0b
    inc bc                                        ; $5754: $03
    inc bc                                        ; $5755: $03
    ld d, h                                       ; $5756: $54
    set 1, h                                      ; $5757: $cb $cc
    ld e, a                                       ; $5759: $5f
    inc [hl]                                      ; $575a: $34
    dec [hl]                                      ; $575b: $35
    ld [hl], $37                                  ; $575c: $36 $37
    ld a, [bc]                                    ; $575e: $0a
    ret                                           ; $575f: $c9


    ld d, a                                       ; $5760: $57
    ld e, b                                       ; $5761: $58
    ld l, c                                       ; $5762: $69
    add hl, sp                                    ; $5763: $39
    dec bc                                        ; $5764: $0b
    ld a, [bc]                                    ; $5765: $0a
    inc bc                                        ; $5766: $03
    dec bc                                        ; $5767: $0b
    dec bc                                        ; $5768: $0b
    inc bc                                        ; $5769: $03
    inc bc                                        ; $576a: $03
    inc bc                                        ; $576b: $03
    inc bc                                        ; $576c: $03
    inc bc                                        ; $576d: $03
    ld l, e                                       ; $576e: $6b
    dec bc                                        ; $576f: $0b
    inc bc                                        ; $5770: $03
    inc bc                                        ; $5771: $03
    ld bc, $6b43                                  ; $5772: $01 $43 $6b
    ld l, e                                       ; $5775: $6b
    rst $20                                       ; $5776: $e7
    db $dd                                        ; $5777: $dd
    db $10                                        ; $5778: $10
    reti                                          ; $5779: $d9


    ld [$dd6a], a                                 ; $577a: $ea $6a $dd
    db $dd                                        ; $577d: $dd
    db $10                                        ; $577e: $10
    ld de, $6a62                                  ; $577f: $11 $62 $6a
    inc d                                         ; $5782: $14
    dec d                                         ; $5783: $15
    ld l, b                                       ; $5784: $68
    pop hl                                        ; $5785: $e1
    add d                                         ; $5786: $82
    ld [bc], a                                    ; $5787: $02
    xor d                                         ; $5788: $aa
    add d                                         ; $5789: $82
    and d                                         ; $578a: $a2
    ld bc, $0202                                  ; $578b: $01 $02 $02
    and d                                         ; $578e: $a2
    and d                                         ; $578f: $a2
    ld bc, $a201                                  ; $5790: $01 $01 $a2
    and d                                         ; $5793: $a2
    ld bc, $da22                                  ; $5794: $01 $22 $da
    db $db                                        ; $5797: $db
    call c, $dee7                                 ; $5798: $dc $e7 $de
    rst $18                                       ; $579b: $df
    ldh [$ea], a                                  ; $579c: $e0 $ea
    add hl, bc                                    ; $579e: $09
    pop de                                        ; $579f: $d1
    jp nc, Jump_000_0a10                          ; $57a0: $d2 $10 $0a

    dec bc                                        ; $57a3: $0b
    sub $14                                       ; $57a4: $d6 $14
    add d                                         ; $57a6: $82
    add d                                         ; $57a7: $82
    add d                                         ; $57a8: $82
    add d                                         ; $57a9: $82
    inc bc                                        ; $57aa: $03
    and d                                         ; $57ab: $a2
    and d                                         ; $57ac: $a2
    and d                                         ; $57ad: $a2
    add d                                         ; $57ae: $82
    add d                                         ; $57af: $82
    add d                                         ; $57b0: $82
    and d                                         ; $57b1: $a2
    add d                                         ; $57b2: $82
    add d                                         ; $57b3: $82
    add d                                         ; $57b4: $82
    and d                                         ; $57b5: $a2
    db $dd                                        ; $57b6: $dd
    inc e                                         ; $57b7: $1c
    ld [de], a                                    ; $57b8: $12
    ld [hl], h                                    ; $57b9: $74
    db $dd                                        ; $57ba: $dd
    inc e                                         ; $57bb: $1c
    inc c                                         ; $57bc: $0c
    rla                                           ; $57bd: $17
    ld de, $751c                                  ; $57be: $11 $1c $75
    halt                                          ; $57c1: $76
    dec d                                         ; $57c2: $15
    inc e                                         ; $57c3: $1c
    inc de                                        ; $57c4: $13
    inc e                                         ; $57c5: $1c
    ld [bc], a                                    ; $57c6: $02
    ld bc, $0109                                  ; $57c7: $01 $09 $01
    add d                                         ; $57ca: $82
    ld bc, $0909                                  ; $57cb: $01 $09 $09
    and d                                         ; $57ce: $a2
    ld bc, $0101                                  ; $57cf: $01 $01 $01
    and d                                         ; $57d2: $a2
    ld bc, $0109                                  ; $57d3: $01 $09 $01
    ld [hl], l                                    ; $57d6: $75
    ld e, $12                                     ; $57d7: $1e $12
    inc e                                         ; $57d9: $1c
    rra                                           ; $57da: $1f
    ld [hl], h                                    ; $57db: $74
    ld [hl], l                                    ; $57dc: $75
    inc c                                         ; $57dd: $0c
    inc e                                         ; $57de: $1c
    inc e                                         ; $57df: $1c
    inc e                                         ; $57e0: $1c
    inc e                                         ; $57e1: $1c
    inc e                                         ; $57e2: $1c
    inc e                                         ; $57e3: $1c
    ld l, h                                       ; $57e4: $6c
    ld h, a                                       ; $57e5: $67
    ld bc, $0909                                  ; $57e6: $01 $09 $09
    ld bc, $0109                                  ; $57e9: $01 $09 $01
    ld bc, $0109                                  ; $57ec: $01 $09 $01
    ld bc, $0101                                  ; $57ef: $01 $01 $01
    ld bc, $0101                                  ; $57f2: $01 $01 $01
    ld bc, $1918                                  ; $57f5: $01 $18 $19
    ld l, e                                       ; $57f8: $6b
    inc c                                         ; $57f9: $0c
    ld l, h                                       ; $57fa: $6c
    ld h, a                                       ; $57fb: $67
    db $dd                                        ; $57fc: $dd
    ld c, $3f                                     ; $57fd: $0e $3f
    ld l, c                                       ; $57ff: $69
    dec c                                         ; $5800: $0d
    rst $18                                       ; $5801: $df
    ld b, c                                       ; $5802: $41
    pop hl                                        ; $5803: $e1
    ld c, $d1                                     ; $5804: $0e $d1
    and d                                         ; $5806: $a2
    and d                                         ; $5807: $a2
    ld bc, $0182                                  ; $5808: $01 $82 $01
    ld bc, $8202                                  ; $580b: $01 $02 $82
    add d                                         ; $580e: $82
    ld bc, $a2aa                                  ; $580f: $01 $aa $a2
    add d                                         ; $5812: $82
    add d                                         ; $5813: $82
    xor d                                         ; $5814: $aa
    add d                                         ; $5815: $82
    ret c                                         ; $5816: $d8

    dec c                                         ; $5817: $0d
    jp c, $dc18                                   ; $5818: $da $18 $dc

    rst $20                                       ; $581b: $e7
    rrca                                          ; $581c: $0f
    inc e                                         ; $581d: $1c
    ldh [$ea], a                                  ; $581e: $e0 $ea
    inc e                                         ; $5820: $1c
    inc e                                         ; $5821: $1c
    jp nc, Jump_000_1110                          ; $5822: $d2 $10 $11

    inc e                                         ; $5825: $1c
    add d                                         ; $5826: $82
    add d                                         ; $5827: $82
    add d                                         ; $5828: $82
    and d                                         ; $5829: $a2
    add d                                         ; $582a: $82
    add d                                         ; $582b: $82
    inc hl                                        ; $582c: $23
    ld bc, $a2a2                                  ; $582d: $01 $a2 $a2
    ld bc, $8201                                  ; $5830: $01 $01 $82
    and d                                         ; $5833: $a2
    and d                                         ; $5834: $a2
    ld bc, $7619                                  ; $5835: $01 $19 $76
    inc e                                         ; $5838: $1c
    inc e                                         ; $5839: $1c
    inc e                                         ; $583a: $1c
    inc e                                         ; $583b: $1c
    inc e                                         ; $583c: $1c
    ld h, d                                       ; $583d: $62
    ld [hl], c                                    ; $583e: $71
    inc e                                         ; $583f: $1c
    ld l, c                                       ; $5840: $69
    ld l, h                                       ; $5841: $6c
    inc e                                         ; $5842: $1c
    ld h, d                                       ; $5843: $62
    ld l, l                                       ; $5844: $6d
    ld l, b                                       ; $5845: $68
    and d                                         ; $5846: $a2
    ld bc, $0101                                  ; $5847: $01 $01 $01
    ld bc, $0101                                  ; $584a: $01 $01 $01
    ld bc, $0107                                  ; $584d: $01 $07 $01
    ld bc, $0101                                  ; $5850: $01 $01 $01
    ld bc, $0101                                  ; $5853: $01 $01 $01
    ld l, c                                       ; $5856: $69
    ld l, h                                       ; $5857: $6c
    ld h, e                                       ; $5858: $63
    ld l, c                                       ; $5859: $69
    ld l, d                                       ; $585a: $6a
    ld l, b                                       ; $585b: $68
    ld h, l                                       ; $585c: $65
    ld h, [hl]                                    ; $585d: $66
    ld h, e                                       ; $585e: $63
    ld h, d                                       ; $585f: $62
    ld l, l                                       ; $5860: $6d
    ld l, b                                       ; $5861: $68
    ld l, c                                       ; $5862: $69
    ld h, [hl]                                    ; $5863: $66
    ld h, e                                       ; $5864: $63
    ld l, c                                       ; $5865: $69
    ld bc, $0101                                  ; $5866: $01 $01 $01
    ld bc, $0101                                  ; $5869: $01 $01 $01
    ld bc, $0101                                  ; $586c: $01 $01 $01
    ld bc, $0101                                  ; $586f: $01 $01 $01
    ld bc, $0101                                  ; $5872: $01 $01 $01
    ld bc, $e4d8                                  ; $5875: $01 $d8 $e4
    rrca                                          ; $5878: $0f
    push de                                       ; $5879: $d5
    call c, $10e7                                 ; $587a: $dc $e7 $10
    reti                                          ; $587d: $d9


    ldh [$ea], a                                  ; $587e: $e0 $ea
    ccf                                           ; $5880: $3f
    db $dd                                        ; $5881: $dd
    jp nc, $d4d3                                  ; $5882: $d2 $d3 $d4

    pop hl                                        ; $5885: $e1
    add d                                         ; $5886: $82
    add d                                         ; $5887: $82
    xor d                                         ; $5888: $aa
    add d                                         ; $5889: $82
    add d                                         ; $588a: $82
    add d                                         ; $588b: $82
    xor d                                         ; $588c: $aa
    add d                                         ; $588d: $82
    and d                                         ; $588e: $a2
    and d                                         ; $588f: $a2
    add d                                         ; $5890: $82
    add d                                         ; $5891: $82
    add d                                         ; $5892: $82
    add d                                         ; $5893: $82
    add d                                         ; $5894: $82
    add d                                         ; $5895: $82
    sub $14                                       ; $5896: $d6 $14
    dec d                                         ; $5898: $15
    inc e                                         ; $5899: $1c
    jp c, $1918                                   ; $589a: $da $18 $19

    inc e                                         ; $589d: $1c
    rrca                                          ; $589e: $0f
    inc e                                         ; $589f: $1c
    inc e                                         ; $58a0: $1c
    ld l, c                                       ; $58a1: $69
    inc e                                         ; $58a2: $1c
    inc e                                         ; $58a3: $1c
    inc e                                         ; $58a4: $1c
    ld l, d                                       ; $58a5: $6a
    add d                                         ; $58a6: $82
    and d                                         ; $58a7: $a2
    and d                                         ; $58a8: $a2
    ld bc, $a282                                  ; $58a9: $01 $82 $a2
    and d                                         ; $58ac: $a2
    ld bc, $0123                                  ; $58ad: $01 $23 $01
    ld bc, $0101                                  ; $58b0: $01 $01 $01
    ld bc, $0101                                  ; $58b3: $01 $01 $01
    ld l, e                                       ; $58b6: $6b
    ld h, [hl]                                    ; $58b7: $66
    ld h, e                                       ; $58b8: $63
    ld h, h                                       ; $58b9: $64
    ld l, l                                       ; $58ba: $6d
    ld l, b                                       ; $58bb: $68
    ld h, l                                       ; $58bc: $65
    ld h, [hl]                                    ; $58bd: $66
    ld h, e                                       ; $58be: $63
    ld h, h                                       ; $58bf: $64
    ld h, d                                       ; $58c0: $62
    ld l, d                                       ; $58c1: $6a
    ld h, l                                       ; $58c2: $65
    ld l, c                                       ; $58c3: $69
    inc e                                         ; $58c4: $1c
    inc e                                         ; $58c5: $1c
    ld bc, $0101                                  ; $58c6: $01 $01 $01
    ld bc, $0101                                  ; $58c9: $01 $01 $01
    ld bc, $0101                                  ; $58cc: $01 $01 $01
    ld bc, $0101                                  ; $58cf: $01 $01 $01
    ld bc, $0101                                  ; $58d2: $01 $01 $01
    ld bc, $686d                                  ; $58d5: $01 $6d $68
    ld l, c                                       ; $58d8: $69
    inc e                                         ; $58d9: $1c
    ld h, e                                       ; $58da: $63
    ld h, d                                       ; $58db: $62
    inc e                                         ; $58dc: $1c
    inc e                                         ; $58dd: $1c
    inc e                                         ; $58de: $1c
    inc e                                         ; $58df: $1c
    inc e                                         ; $58e0: $1c
    or l                                          ; $58e1: $b5
    inc e                                         ; $58e2: $1c
    inc e                                         ; $58e3: $1c
    ld l, [hl]                                    ; $58e4: $6e
    cp c                                          ; $58e5: $b9
    ld bc, $0101                                  ; $58e6: $01 $01 $01
    ld bc, $0101                                  ; $58e9: $01 $01 $01
    ld bc, $0101                                  ; $58ec: $01 $01 $01
    ld bc, $8a01                                  ; $58ef: $01 $01 $8a
    ld bc, $8201                                  ; $58f2: $01 $01 $82
    adc d                                         ; $58f5: $8a
    sub $d7                                       ; $58f6: $d6 $d7
    ret c                                         ; $58f8: $d8

    db $e4                                        ; $58f9: $e4
    jp c, $dcdb                                   ; $58fa: $da $db $dc

    rst $20                                       ; $58fd: $e7
    sbc $df                                       ; $58fe: $de $df
    ldh [$ea], a                                  ; $5900: $e0 $ea
    add hl, bc                                    ; $5902: $09
    pop de                                        ; $5903: $d1
    jp nc, $8210                                  ; $5904: $d2 $10 $82

    add d                                         ; $5907: $82
    add d                                         ; $5908: $82
    add d                                         ; $5909: $82
    add d                                         ; $590a: $82
    add d                                         ; $590b: $82
    add d                                         ; $590c: $82
    add d                                         ; $590d: $82
    inc bc                                        ; $590e: $03
    and d                                         ; $590f: $a2
    and d                                         ; $5910: $a2
    and d                                         ; $5911: $a2
    add d                                         ; $5912: $82
    add d                                         ; $5913: $82
    add d                                         ; $5914: $82
    and d                                         ; $5915: $a2
    inc e                                         ; $5916: $1c
    ld a, $6c                                     ; $5917: $3e $6c
    ld h, h                                       ; $5919: $64
    ld a, $1c                                     ; $591a: $3e $1c
    inc e                                         ; $591c: $1c
    ld l, d                                       ; $591d: $6a
    inc e                                         ; $591e: $1c
    inc e                                         ; $591f: $1c
    ld l, h                                       ; $5920: $6c
    ld h, a                                       ; $5921: $67
    ld de, $6b1c                                  ; $5922: $11 $1c $6b
    ld l, c                                       ; $5925: $69
    ld bc, $0101                                  ; $5926: $01 $01 $01
    ld bc, $0101                                  ; $5929: $01 $01 $01
    ld bc, $0101                                  ; $592c: $01 $01 $01
    ld bc, $0101                                  ; $592f: $01 $01 $01
    and d                                         ; $5932: $a2
    ld bc, $0101                                  ; $5933: $01 $01 $01
    ld h, d                                       ; $5936: $62
    inc e                                         ; $5937: $1c
    inc e                                         ; $5938: $1c
    ld a, $1c                                     ; $5939: $3e $1c
    inc d                                         ; $593b: $14
    inc e                                         ; $593c: $1c
    inc e                                         ; $593d: $1c
    inc e                                         ; $593e: $1c
    dec d                                         ; $593f: $15
    inc e                                         ; $5940: $1c
    inc e                                         ; $5941: $1c
    ld l, h                                       ; $5942: $6c
    inc e                                         ; $5943: $1c
    inc e                                         ; $5944: $1c
    inc e                                         ; $5945: $1c
    ld bc, $0101                                  ; $5946: $01 $01 $01
    ld bc, $0b01                                  ; $5949: $01 $01 $0b
    ld bc, $0101                                  ; $594c: $01 $01 $01
    dec bc                                        ; $594f: $0b
    ld bc, $0101                                  ; $5950: $01 $01 $01
    ld bc, $0101                                  ; $5953: $01 $01 $01
    inc e                                         ; $5956: $1c
    inc e                                         ; $5957: $1c
    ld l, a                                       ; $5958: $6f
    cp l                                          ; $5959: $bd
    inc e                                         ; $595a: $1c
    inc e                                         ; $595b: $1c
    ld [hl], b                                    ; $595c: $70
    pop bc                                        ; $595d: $c1
    ld a, $1c                                     ; $595e: $3e $1c
    ld [hl], d                                    ; $5960: $72
    db $db                                        ; $5961: $db
    inc e                                         ; $5962: $1c
    inc e                                         ; $5963: $1c
    inc e                                         ; $5964: $1c
    inc e                                         ; $5965: $1c
    ld bc, $8201                                  ; $5966: $01 $01 $82
    adc d                                         ; $5969: $8a
    ld bc, $8201                                  ; $596a: $01 $01 $82
    adc d                                         ; $596d: $8a
    ld bc, $8201                                  ; $596e: $01 $01 $82
    adc d                                         ; $5971: $8a
    ld bc, $0101                                  ; $5972: $01 $01 $01
    ld bc, $6a62                                  ; $5975: $01 $62 $6a
    ld h, l                                       ; $5978: $65
    ld l, c                                       ; $5979: $69
    inc e                                         ; $597a: $1c
    ld h, a                                       ; $597b: $67
    ld h, d                                       ; $597c: $62
    ld l, b                                       ; $597d: $68
    halt                                          ; $597e: $76
    inc e                                         ; $597f: $1c
    ld l, h                                       ; $5980: $6c
    ld h, d                                       ; $5981: $62
    inc e                                         ; $5982: $1c
    inc e                                         ; $5983: $1c
    inc e                                         ; $5984: $1c
    ld l, h                                       ; $5985: $6c
    ld bc, $0101                                  ; $5986: $01 $01 $01
    ld bc, $0101                                  ; $5989: $01 $01 $01
    ld bc, $0101                                  ; $598c: $01 $01 $01
    ld bc, $0101                                  ; $598f: $01 $01 $01
    ld bc, $0101                                  ; $5992: $01 $01 $01
    ld bc, $6463                                  ; $5995: $01 $63 $64
    ld l, l                                       ; $5998: $6d
    ld l, b                                       ; $5999: $68
    ld l, h                                       ; $599a: $6c
    ld h, [hl]                                    ; $599b: $66
    ld h, e                                       ; $599c: $63
    ld h, h                                       ; $599d: $64
    ld l, l                                       ; $599e: $6d
    ld l, e                                       ; $599f: $6b
    ld h, l                                       ; $59a0: $65
    ld h, [hl]                                    ; $59a1: $66
    ld h, a                                       ; $59a2: $67
    ld h, h                                       ; $59a3: $64
    ld l, l                                       ; $59a4: $6d
    ld l, b                                       ; $59a5: $68
    ld bc, $0101                                  ; $59a6: $01 $01 $01
    ld bc, $0101                                  ; $59a9: $01 $01 $01
    ld bc, $0101                                  ; $59ac: $01 $01 $01
    ld bc, $0101                                  ; $59af: $01 $01 $01
    ld bc, $0101                                  ; $59b2: $01 $01 $01
    ld bc, $6665                                  ; $59b5: $01 $65 $66
    ld h, d                                       ; $59b8: $62
    ld l, [hl]                                    ; $59b9: $6e
    ld l, e                                       ; $59ba: $6b
    ld l, c                                       ; $59bb: $69
    ld l, h                                       ; $59bc: $6c
    ld l, a                                       ; $59bd: $6f
    ld h, e                                       ; $59be: $63
    ld l, e                                       ; $59bf: $6b
    inc e                                         ; $59c0: $1c
    ld [hl], b                                    ; $59c1: $70
    ld h, l                                       ; $59c2: $65
    ld h, [hl]                                    ; $59c3: $66
    ld l, d                                       ; $59c4: $6a
    ld [hl], d                                    ; $59c5: $72
    ld bc, $0101                                  ; $59c6: $01 $01 $01
    add d                                         ; $59c9: $82
    ld bc, $0101                                  ; $59ca: $01 $01 $01
    add d                                         ; $59cd: $82
    ld bc, $0101                                  ; $59ce: $01 $01 $01
    add d                                         ; $59d1: $82
    ld bc, $0101                                  ; $59d2: $01 $01 $01
    add d                                         ; $59d5: $82
    cp c                                          ; $59d6: $b9
    cp d                                          ; $59d7: $ba
    cp e                                          ; $59d8: $bb
    cp h                                          ; $59d9: $bc
    cp l                                          ; $59da: $bd
    cp [hl]                                       ; $59db: $be
    cp a                                          ; $59dc: $bf
    ret nz                                        ; $59dd: $c0

    pop bc                                        ; $59de: $c1
    jp nz, $c4c3                                  ; $59df: $c2 $c3 $c4

    db $db                                        ; $59e2: $db
    call c, $dedd                                 ; $59e3: $dc $dd $de
    adc d                                         ; $59e6: $8a
    adc d                                         ; $59e7: $8a
    adc d                                         ; $59e8: $8a
    adc d                                         ; $59e9: $8a
    adc d                                         ; $59ea: $8a
    adc d                                         ; $59eb: $8a
    adc d                                         ; $59ec: $8a
    adc d                                         ; $59ed: $8a
    adc d                                         ; $59ee: $8a
    adc d                                         ; $59ef: $8a
    adc d                                         ; $59f0: $8a
    adc d                                         ; $59f1: $8a
    adc d                                         ; $59f2: $8a
    adc d                                         ; $59f3: $8a
    adc d                                         ; $59f4: $8a
    adc d                                         ; $59f5: $8a
    ld l, h                                       ; $59f6: $6c
    ld h, a                                       ; $59f7: $67
    inc e                                         ; $59f8: $1c
    inc e                                         ; $59f9: $1c
    ld l, e                                       ; $59fa: $6b
    ld h, [hl]                                    ; $59fb: $66
    ld l, h                                       ; $59fc: $6c
    inc e                                         ; $59fd: $1c
    ld h, d                                       ; $59fe: $62
    ld l, d                                       ; $59ff: $6a
    inc e                                         ; $5a00: $1c
    inc e                                         ; $5a01: $1c
    inc e                                         ; $5a02: $1c
    inc e                                         ; $5a03: $1c
    inc e                                         ; $5a04: $1c
    inc e                                         ; $5a05: $1c
    ld bc, $0101                                  ; $5a06: $01 $01 $01
    ld bc, $0101                                  ; $5a09: $01 $01 $01
    ld bc, $0101                                  ; $5a0c: $01 $01 $01
    ld bc, $0101                                  ; $5a0f: $01 $01 $01
    ld bc, $0101                                  ; $5a12: $01 $01 $01
    ld bc, $6c69                                  ; $5a15: $01 $69 $6c
    ld h, e                                       ; $5a18: $63
    ld h, h                                       ; $5a19: $64
    inc e                                         ; $5a1a: $1c
    inc e                                         ; $5a1b: $1c
    ld l, c                                       ; $5a1c: $69
    ld h, [hl]                                    ; $5a1d: $66
    inc e                                         ; $5a1e: $1c
    inc e                                         ; $5a1f: $1c
    inc e                                         ; $5a20: $1c
    ld l, h                                       ; $5a21: $6c
    halt                                          ; $5a22: $76
    inc c                                         ; $5a23: $0c
    inc e                                         ; $5a24: $1c
    inc e                                         ; $5a25: $1c
    ld bc, $0101                                  ; $5a26: $01 $01 $01
    ld bc, $0101                                  ; $5a29: $01 $01 $01
    ld bc, $0101                                  ; $5a2c: $01 $01 $01
    ld bc, $0101                                  ; $5a2f: $01 $01 $01
    ld bc, $0109                                  ; $5a32: $01 $09 $01
    ld bc, $686d                                  ; $5a35: $01 $6d $68
    ld h, a                                       ; $5a38: $67
    inc e                                         ; $5a39: $1c
    ld h, e                                       ; $5a3a: $63
    ld h, h                                       ; $5a3b: $64
    ld l, l                                       ; $5a3c: $6d
    ld l, h                                       ; $5a3d: $6c
    ld h, l                                       ; $5a3e: $65
    ld h, [hl]                                    ; $5a3f: $66
    ld l, d                                       ; $5a40: $6a
    ld l, e                                       ; $5a41: $6b
    ld l, c                                       ; $5a42: $69
    ld l, b                                       ; $5a43: $68
    ld h, l                                       ; $5a44: $65
    ld h, d                                       ; $5a45: $62
    ld bc, $0101                                  ; $5a46: $01 $01 $01
    ld bc, $0101                                  ; $5a49: $01 $01 $01
    ld bc, $0101                                  ; $5a4c: $01 $01 $01
    ld bc, $0101                                  ; $5a4f: $01 $01 $01
    ld bc, $0101                                  ; $5a52: $01 $01 $01
    ld bc, $df1c                                  ; $5a55: $01 $1c $df
    ldh [rNR32], a                                ; $5a58: $e0 $1c
    inc e                                         ; $5a5a: $1c
    pop hl                                        ; $5a5b: $e1
    ld [c], a                                     ; $5a5c: $e2
    inc e                                         ; $5a5d: $1c
    inc e                                         ; $5a5e: $1c
    inc e                                         ; $5a5f: $1c
    ld [hl], e                                    ; $5a60: $73
    ld e, $76                                     ; $5a61: $1e $76
    inc c                                         ; $5a63: $0c
    rra                                           ; $5a64: $1f
    ld [hl], h                                    ; $5a65: $74
    ld bc, $0b0b                                  ; $5a66: $01 $0b $0b
    ld bc, $0b01                                  ; $5a69: $01 $01 $0b
    dec bc                                        ; $5a6c: $0b
    ld bc, $0101                                  ; $5a6d: $01 $01 $01
    ld bc, $0109                                  ; $5a70: $01 $09 $01
    add hl, bc                                    ; $5a73: $09
    add hl, bc                                    ; $5a74: $09
    ld bc, $1c71                                  ; $5a75: $01 $71 $1c
    ld [de], a                                    ; $5a78: $12
    inc de                                        ; $5a79: $13
    inc e                                         ; $5a7a: $1c
    inc e                                         ; $5a7b: $1c
    inc e                                         ; $5a7c: $1c
    inc e                                         ; $5a7d: $1c
    or [hl]                                       ; $5a7e: $b6
    or a                                          ; $5a7f: $b7
    cp b                                          ; $5a80: $b8
    inc e                                         ; $5a81: $1c
    cp d                                          ; $5a82: $ba
    cp e                                          ; $5a83: $bb
    cp h                                          ; $5a84: $bc
    push bc                                       ; $5a85: $c5
    rlca                                          ; $5a86: $07
    ld bc, $0909                                  ; $5a87: $01 $09 $09
    ld bc, $0101                                  ; $5a8a: $01 $01 $01
    ld bc, $8a8a                                  ; $5a8d: $01 $8a $8a
    adc d                                         ; $5a90: $8a
    ld bc, $8a8a                                  ; $5a91: $01 $8a $8a
    adc d                                         ; $5a94: $8a
    adc d                                         ; $5a95: $8a
    rla                                           ; $5a96: $17
    rra                                           ; $5a97: $1f
    halt                                          ; $5a98: $76
    inc e                                         ; $5a99: $1c
    ld [de], a                                    ; $5a9a: $12
    ld d, $1c                                     ; $5a9b: $16 $1c
    inc e                                         ; $5a9d: $1c
    inc e                                         ; $5a9e: $1c
    inc c                                         ; $5a9f: $0c
    inc e                                         ; $5aa0: $1c
    inc e                                         ; $5aa1: $1c
    inc e                                         ; $5aa2: $1c
    inc e                                         ; $5aa3: $1c
    halt                                          ; $5aa4: $76
    inc e                                         ; $5aa5: $1c
    add hl, bc                                    ; $5aa6: $09
    add hl, bc                                    ; $5aa7: $09
    ld bc, $0901                                  ; $5aa8: $01 $01 $09
    add hl, bc                                    ; $5aab: $09
    ld bc, $0101                                  ; $5aac: $01 $01 $01
    add hl, bc                                    ; $5aaf: $09
    ld bc, $0101                                  ; $5ab0: $01 $01 $01
    ld bc, $0101                                  ; $5ab3: $01 $01 $01
    ld l, d                                       ; $5ab6: $6a
    ld h, h                                       ; $5ab7: $64
    ld l, l                                       ; $5ab8: $6d
    ld l, b                                       ; $5ab9: $68
    inc e                                         ; $5aba: $1c
    ld h, d                                       ; $5abb: $62
    ld h, e                                       ; $5abc: $63
    ld h, h                                       ; $5abd: $64
    ld a, $1c                                     ; $5abe: $3e $1c
    ld l, h                                       ; $5ac0: $6c
    ld h, [hl]                                    ; $5ac1: $66
    inc e                                         ; $5ac2: $1c
    inc e                                         ; $5ac3: $1c
    inc e                                         ; $5ac4: $1c
    ld l, c                                       ; $5ac5: $69
    ld bc, $0101                                  ; $5ac6: $01 $01 $01
    ld bc, $0101                                  ; $5ac9: $01 $01 $01
    ld bc, $0101                                  ; $5acc: $01 $01 $01
    ld bc, $0101                                  ; $5acf: $01 $01 $01
    ld bc, $0101                                  ; $5ad2: $01 $01 $01
    ld bc, $1c67                                  ; $5ad5: $01 $67 $1c
    halt                                          ; $5ad8: $76
    inc c                                         ; $5ad9: $0c
    ld l, e                                       ; $5ada: $6b
    inc e                                         ; $5adb: $1c
    inc e                                         ; $5adc: $1c
    inc e                                         ; $5add: $1c
    ld h, d                                       ; $5ade: $62
    inc e                                         ; $5adf: $1c
    inc e                                         ; $5ae0: $1c
    inc e                                         ; $5ae1: $1c
    ld l, h                                       ; $5ae2: $6c
    ld h, a                                       ; $5ae3: $67
    inc e                                         ; $5ae4: $1c

Call_081_5ae5:
Jump_081_5ae5:
    ld [de], a                                    ; $5ae5: $12
    ld bc, $0101                                  ; $5ae6: $01 $01 $01
    add hl, bc                                    ; $5ae9: $09
    ld bc, $0101                                  ; $5aea: $01 $01 $01
    ld bc, $0101                                  ; $5aed: $01 $01 $01
    ld bc, $0101                                  ; $5af0: $01 $01 $01
    ld bc, $0901                                  ; $5af3: $01 $01 $09
    inc e                                         ; $5af6: $1c
    inc e                                         ; $5af7: $1c
    inc e                                         ; $5af8: $1c
    inc e                                         ; $5af9: $1c
    inc e                                         ; $5afa: $1c
    inc e                                         ; $5afb: $1c
    inc e                                         ; $5afc: $1c
    inc e                                         ; $5afd: $1c
    ld b, b                                       ; $5afe: $40
    ld b, e                                       ; $5aff: $43
    inc e                                         ; $5b00: $1c
    inc e                                         ; $5b01: $1c
    ld b, d                                       ; $5b02: $42
    ld b, l                                       ; $5b03: $45
    inc e                                         ; $5b04: $1c
    ld [de], a                                    ; $5b05: $12
    ld bc, $0101                                  ; $5b06: $01 $01 $01
    ld bc, $0101                                  ; $5b09: $01 $01 $01
    ld bc, $0101                                  ; $5b0c: $01 $01 $01
    ld bc, $0101                                  ; $5b0f: $01 $01 $01
    ld bc, $0101                                  ; $5b12: $01 $01 $01
    add hl, bc                                    ; $5b15: $09
    inc e                                         ; $5b16: $1c
    inc e                                         ; $5b17: $1c
    inc e                                         ; $5b18: $1c
    inc e                                         ; $5b19: $1c
    inc e                                         ; $5b1a: $1c
    ld [hl], c                                    ; $5b1b: $71
    inc e                                         ; $5b1c: $1c
    inc e                                         ; $5b1d: $1c
    inc e                                         ; $5b1e: $1c
    inc e                                         ; $5b1f: $1c
    ld de, $0c76                                  ; $5b20: $11 $76 $0c
    ld [de], a                                    ; $5b23: $12
    ld e, $16                                     ; $5b24: $1e $16
    ld bc, $0101                                  ; $5b26: $01 $01 $01
    ld bc, $0701                                  ; $5b29: $01 $01 $07
    ld bc, $0101                                  ; $5b2c: $01 $01 $01
    ld bc, $0109                                  ; $5b2f: $01 $09 $01
    add hl, bc                                    ; $5b32: $09
    add hl, bc                                    ; $5b33: $09
    add hl, bc                                    ; $5b34: $09
    add hl, bc                                    ; $5b35: $09
    ld l, e                                       ; $5b36: $6b
    ld l, c                                       ; $5b37: $69
    ld de, $1376                                  ; $5b38: $11 $76 $13
    ld [hl], e                                    ; $5b3b: $73
    rla                                           ; $5b3c: $17
    ld [hl], e                                    ; $5b3d: $73
    ld [hl], h                                    ; $5b3e: $74
    ld [hl], l                                    ; $5b3f: $75
    inc c                                         ; $5b40: $0c
    inc e                                         ; $5b41: $1c
    rla                                           ; $5b42: $17
    halt                                          ; $5b43: $76
    inc e                                         ; $5b44: $1c
    inc e                                         ; $5b45: $1c
    ld bc, $0901                                  ; $5b46: $01 $01 $09
    ld bc, $0109                                  ; $5b49: $01 $09 $01
    add hl, bc                                    ; $5b4c: $09
    ld bc, $0101                                  ; $5b4d: $01 $01 $01
    add hl, bc                                    ; $5b50: $09
    ld bc, $0109                                  ; $5b51: $01 $09 $01
    ld bc, $c501                                  ; $5b54: $01 $01 $c5
    inc e                                         ; $5b57: $1c
    inc e                                         ; $5b58: $1c
    inc e                                         ; $5b59: $1c
    add $1c                                       ; $5b5a: $c6 $1c
    ld a, $1c                                     ; $5b5c: $3e $1c
    rst $00                                       ; $5b5e: $c7
    inc e                                         ; $5b5f: $1c
    inc e                                         ; $5b60: $1c
    ld de, $1ce3                                  ; $5b61: $11 $e3 $1c
    ld [de], a                                    ; $5b64: $12
    inc de                                        ; $5b65: $13
    adc d                                         ; $5b66: $8a
    ld bc, $0101                                  ; $5b67: $01 $01 $01
    adc d                                         ; $5b6a: $8a
    ld bc, $0101                                  ; $5b6b: $01 $01 $01
    adc d                                         ; $5b6e: $8a
    ld bc, $0901                                  ; $5b6f: $01 $01 $09
    adc d                                         ; $5b72: $8a
    ld bc, $0909                                  ; $5b73: $01 $09 $09
    ld [de], a                                    ; $5b76: $12
    inc e                                         ; $5b77: $1c
    inc l                                         ; $5b78: $2c
    ld e, a                                       ; $5b79: $5f
    halt                                          ; $5b7a: $76
    inc e                                         ; $5b7b: $1c
    dec hl                                        ; $5b7c: $2b
    scf                                           ; $5b7d: $37
    inc e                                         ; $5b7e: $1c
    ld a, [hl+]                                   ; $5b7f: $2a
    and $58                                       ; $5b80: $e6 $58
    inc e                                         ; $5b82: $1c
    jr nz, @+$5c                                  ; $5b83: $20 $5a

    ld e, e                                       ; $5b85: $5b
    add hl, bc                                    ; $5b86: $09
    ld bc, $036b                                  ; $5b87: $01 $6b $03
    ld bc, $6b01                                  ; $5b8a: $01 $01 $6b
    inc bc                                        ; $5b8d: $03
    ld bc, $0b6b                                  ; $5b8e: $01 $6b $0b
    inc bc                                        ; $5b91: $03
    ld bc, $030b                                  ; $5b92: $01 $0b $03
    inc bc                                        ; $5b95: $03
    ld d, h                                       ; $5b96: $54
    ld d, l                                       ; $5b97: $55
    ld e, [hl]                                    ; $5b98: $5e
    dec hl                                        ; $5b99: $2b
    inc [hl]                                      ; $5b9a: $34
    dec [hl]                                      ; $5b9b: $35
    ld [hl], $2c                                  ; $5b9c: $36 $2c
    add sp, -$37                                  ; $5b9e: $e8 $c9
    ld d, a                                       ; $5ba0: $57
    add hl, hl                                    ; $5ba1: $29
    jp z, Jump_000_2b55                           ; $5ba2: $ca $55 $2b

    inc e                                         ; $5ba5: $1c
    inc bc                                        ; $5ba6: $03
    inc bc                                        ; $5ba7: $03
    inc bc                                        ; $5ba8: $03
    dec bc                                        ; $5ba9: $0b
    inc bc                                        ; $5baa: $03
    inc bc                                        ; $5bab: $03
    inc bc                                        ; $5bac: $03
    dec bc                                        ; $5bad: $0b
    dec bc                                        ; $5bae: $0b
    dec bc                                        ; $5baf: $0b
    inc bc                                        ; $5bb0: $03
    ld l, e                                       ; $5bb1: $6b
    dec bc                                        ; $5bb2: $0b
    inc bc                                        ; $5bb3: $03
    dec bc                                        ; $5bb4: $0b
    ld bc, $1c1c                                  ; $5bb5: $01 $1c $1c
    ld [hl], c                                    ; $5bb8: $71
    ld d, $1c                                     ; $5bb9: $16 $1c
    inc e                                         ; $5bbb: $1c
    ld de, $1c76                                  ; $5bbc: $11 $76 $1c
    inc e                                         ; $5bbf: $1c
    inc de                                        ; $5bc0: $13
    inc e                                         ; $5bc1: $1c
    ld a, $1c                                     ; $5bc2: $3e $1c
    inc e                                         ; $5bc4: $1c
    inc e                                         ; $5bc5: $1c
    ld bc, $0701                                  ; $5bc6: $01 $01 $07
    add hl, bc                                    ; $5bc9: $09
    ld bc, $0901                                  ; $5bca: $01 $01 $09
    ld bc, $0101                                  ; $5bcd: $01 $01 $01
    add hl, bc                                    ; $5bd0: $09
    ld bc, $0101                                  ; $5bd1: $01 $01 $01
    ld bc, $1c01                                  ; $5bd4: $01 $01 $1c
    ld de, $0c16                                  ; $5bd7: $11 $16 $0c
    ld [de], a                                    ; $5bda: $12
    ld [hl], h                                    ; $5bdb: $74
    ld [hl], e                                    ; $5bdc: $73
    inc e                                         ; $5bdd: $1c
    ld d, $0c                                     ; $5bde: $16 $0c
    inc e                                         ; $5be0: $1c
    ld a, [hl+]                                   ; $5be1: $2a
    ld [hl], e                                    ; $5be2: $73
    inc e                                         ; $5be3: $1c
    inc e                                         ; $5be4: $1c
    jr nz, jr_081_5be8                            ; $5be5: $20 $01

    add hl, bc                                    ; $5be7: $09

jr_081_5be8:
    add hl, bc                                    ; $5be8: $09
    add hl, bc                                    ; $5be9: $09
    add hl, bc                                    ; $5bea: $09
    ld bc, $0101                                  ; $5beb: $01 $01 $01
    add hl, bc                                    ; $5bee: $09
    add hl, bc                                    ; $5bef: $09
    ld bc, $016b                                  ; $5bf0: $01 $6b $01
    ld bc, $0b01                                  ; $5bf3: $01 $01 $0b
    dec l                                         ; $5bf6: $2d
    ld d, l                                       ; $5bf7: $55
    ld e, [hl]                                    ; $5bf8: $5e
    ld e, a                                       ; $5bf9: $5f
    ld hl, $3635                                  ; $5bfa: $21 $35 $36
    scf                                           ; $5bfd: $37
    add sp, -$37                                  ; $5bfe: $e8 $c9
    ld d, a                                       ; $5c00: $57
    ld e, b                                       ; $5c01: $58
    jp z, $e4e5                                   ; $5c02: $ca $e5 $e4

    rst $20                                       ; $5c05: $e7
    ld b, e                                       ; $5c06: $43
    inc bc                                        ; $5c07: $03
    inc bc                                        ; $5c08: $03
    inc bc                                        ; $5c09: $03
    ld c, e                                       ; $5c0a: $4b
    inc bc                                        ; $5c0b: $03
    inc bc                                        ; $5c0c: $03
    inc bc                                        ; $5c0d: $03
    dec bc                                        ; $5c0e: $0b
    dec bc                                        ; $5c0f: $0b
    inc bc                                        ; $5c10: $03
    inc bc                                        ; $5c11: $03
    dec bc                                        ; $5c12: $0b
    dec bc                                        ; $5c13: $0b
    dec bc                                        ; $5c14: $0b
    dec bc                                        ; $5c15: $0b
    ld d, h                                       ; $5c16: $54
    dec [hl]                                      ; $5c17: $35
    inc l                                         ; $5c18: $2c
    inc e                                         ; $5c19: $1c
    inc [hl]                                      ; $5c1a: $34
    ret                                           ; $5c1b: $c9


    add hl, hl                                    ; $5c1c: $29
    inc e                                         ; $5c1d: $1c
    add sp, $20                                   ; $5c1e: $e8 $20
    inc e                                         ; $5c20: $1c
    inc e                                         ; $5c21: $1c
    jp z, $1c2a                                   ; $5c22: $ca $2a $1c

    inc e                                         ; $5c25: $1c
    inc bc                                        ; $5c26: $03
    inc bc                                        ; $5c27: $03
    dec bc                                        ; $5c28: $0b
    ld bc, $0b03                                  ; $5c29: $01 $03 $0b
    ld l, e                                       ; $5c2c: $6b
    ld bc, $6b0b                                  ; $5c2d: $01 $0b $6b
    ld bc, $0b01                                  ; $5c30: $01 $01 $0b
    dec bc                                        ; $5c33: $0b
    ld bc, $1c01                                  ; $5c34: $01 $01 $1c
    inc e                                         ; $5c37: $1c
    inc e                                         ; $5c38: $1c
    inc e                                         ; $5c39: $1c
    inc e                                         ; $5c3a: $1c
    inc e                                         ; $5c3b: $1c
    ld a, $1c                                     ; $5c3c: $3e $1c
    inc e                                         ; $5c3e: $1c
    inc e                                         ; $5c3f: $1c
    inc e                                         ; $5c40: $1c
    inc e                                         ; $5c41: $1c
    ld a, $1c                                     ; $5c42: $3e $1c
    inc e                                         ; $5c44: $1c
    inc e                                         ; $5c45: $1c
    ld bc, $0101                                  ; $5c46: $01 $01 $01
    ld bc, $0101                                  ; $5c49: $01 $01 $01
    ld bc, $0101                                  ; $5c4c: $01 $01 $01
    ld bc, $0101                                  ; $5c4f: $01 $01 $01
    ld bc, $0101                                  ; $5c52: $01 $01 $01
    ld bc, $1c1c                                  ; $5c55: $01 $1c $1c
    dec l                                         ; $5c58: $2d
    ld e, a                                       ; $5c59: $5f
    inc e                                         ; $5c5a: $1c
    inc e                                         ; $5c5b: $1c
    ld hl, $3e37                                  ; $5c5c: $21 $37 $3e
    add hl, hl                                    ; $5c5f: $29
    ld d, a                                       ; $5c60: $57
    ld e, b                                       ; $5c61: $58
    inc e                                         ; $5c62: $1c
    inc l                                         ; $5c63: $2c
    ld e, d                                       ; $5c64: $5a
    rlc c                                         ; $5c65: $cb $01
    ld bc, $0343                                  ; $5c67: $01 $43 $03
    ld bc, $4b01                                  ; $5c6a: $01 $01 $4b
    inc bc                                        ; $5c6d: $03
    ld bc, $030b                                  ; $5c6e: $01 $0b $03
    inc bc                                        ; $5c71: $03
    ld bc, $036b                                  ; $5c72: $01 $6b $03
    dec bc                                        ; $5c75: $0b
    ld d, h                                       ; $5c76: $54
    ld d, l                                       ; $5c77: $55
    ld e, [hl]                                    ; $5c78: $5e
    ld e, a                                       ; $5c79: $5f
    inc [hl]                                      ; $5c7a: $34
    dec [hl]                                      ; $5c7b: $35
    ld [hl], $37                                  ; $5c7c: $36 $37
    add sp, -$37                                  ; $5c7e: $e8 $c9
    ld d, a                                       ; $5c80: $57
    dec hl                                        ; $5c81: $2b
    call z, Call_081_5ae5                         ; $5c82: $cc $e5 $5a
    inc l                                         ; $5c85: $2c
    inc bc                                        ; $5c86: $03
    inc bc                                        ; $5c87: $03
    inc bc                                        ; $5c88: $03
    inc bc                                        ; $5c89: $03
    inc bc                                        ; $5c8a: $03
    inc bc                                        ; $5c8b: $03
    inc bc                                        ; $5c8c: $03
    inc bc                                        ; $5c8d: $03
    dec bc                                        ; $5c8e: $0b
    dec bc                                        ; $5c8f: $0b
    inc bc                                        ; $5c90: $03
    dec bc                                        ; $5c91: $0b
    dec bc                                        ; $5c92: $0b
    dec bc                                        ; $5c93: $0b
    inc bc                                        ; $5c94: $03
    dec bc                                        ; $5c95: $0b
    ld hl, $1c1c                                  ; $5c96: $21 $1c $1c
    inc e                                         ; $5c99: $1c
    dec l                                         ; $5c9a: $2d
    inc e                                         ; $5c9b: $1c
    ld [hl], c                                    ; $5c9c: $71
    inc e                                         ; $5c9d: $1c
    inc e                                         ; $5c9e: $1c
    inc e                                         ; $5c9f: $1c
    inc e                                         ; $5ca0: $1c
    inc e                                         ; $5ca1: $1c
    inc e                                         ; $5ca2: $1c
    inc e                                         ; $5ca3: $1c
    inc e                                         ; $5ca4: $1c
    inc e                                         ; $5ca5: $1c
    dec hl                                        ; $5ca6: $2b
    ld bc, $0101                                  ; $5ca7: $01 $01 $01
    inc hl                                        ; $5caa: $23
    ld bc, $0107                                  ; $5cab: $01 $07 $01
    ld bc, $0101                                  ; $5cae: $01 $01 $01
    ld bc, $0101                                  ; $5cb1: $01 $01 $01
    ld bc, $1c01                                  ; $5cb4: $01 $01 $1c
    or l                                          ; $5cb7: $b5
    or [hl]                                       ; $5cb8: $b6
    or a                                          ; $5cb9: $b7
    ld l, [hl]                                    ; $5cba: $6e
    cp c                                          ; $5cbb: $b9
    cp d                                          ; $5cbc: $ba
    cp e                                          ; $5cbd: $bb
    ld l, a                                       ; $5cbe: $6f
    cp l                                          ; $5cbf: $bd
    cp [hl]                                       ; $5cc0: $be
    cp a                                          ; $5cc1: $bf
    ld [hl], b                                    ; $5cc2: $70
    pop bc                                        ; $5cc3: $c1
    jp nz, $01c3                                  ; $5cc4: $c2 $c3 $01

    adc d                                         ; $5cc7: $8a
    adc d                                         ; $5cc8: $8a
    adc d                                         ; $5cc9: $8a
    add d                                         ; $5cca: $82
    adc d                                         ; $5ccb: $8a
    adc d                                         ; $5ccc: $8a
    adc d                                         ; $5ccd: $8a
    add d                                         ; $5cce: $82
    adc d                                         ; $5ccf: $8a
    adc d                                         ; $5cd0: $8a
    adc d                                         ; $5cd1: $8a
    add d                                         ; $5cd2: $82
    adc d                                         ; $5cd3: $8a
    adc d                                         ; $5cd4: $8a
    adc d                                         ; $5cd5: $8a
    inc e                                         ; $5cd6: $1c
    dec hl                                        ; $5cd7: $2b
    ld e, [hl]                                    ; $5cd8: $5e
    ld e, a                                       ; $5cd9: $5f
    add hl, hl                                    ; $5cda: $29
    dec [hl]                                      ; $5cdb: $35
    ld [hl], $37                                  ; $5cdc: $36 $37
    inc l                                         ; $5cde: $2c
    ret                                           ; $5cdf: $c9


    ld d, a                                       ; $5ce0: $57
    ld e, b                                       ; $5ce1: $58
    dec hl                                        ; $5ce2: $2b
    push hl                                       ; $5ce3: $e5
    ld e, d                                       ; $5ce4: $5a
    ld e, e                                       ; $5ce5: $5b
    ld bc, $036b                                  ; $5ce6: $01 $6b $03
    inc bc                                        ; $5ce9: $03
    dec bc                                        ; $5cea: $0b
    inc bc                                        ; $5ceb: $03
    inc bc                                        ; $5cec: $03
    inc bc                                        ; $5ced: $03
    ld l, e                                       ; $5cee: $6b
    dec bc                                        ; $5cef: $0b
    inc bc                                        ; $5cf0: $03
    inc bc                                        ; $5cf1: $03
    ld l, e                                       ; $5cf2: $6b
    dec bc                                        ; $5cf3: $0b
    inc bc                                        ; $5cf4: $03
    inc bc                                        ; $5cf5: $03
    ld d, h                                       ; $5cf6: $54
    ld d, l                                       ; $5cf7: $55
    ld e, [hl]                                    ; $5cf8: $5e
    add hl, hl                                    ; $5cf9: $29
    inc [hl]                                      ; $5cfa: $34
    dec [hl]                                      ; $5cfb: $35
    dec hl                                        ; $5cfc: $2b
    inc e                                         ; $5cfd: $1c
    add sp, -$37                                  ; $5cfe: $e8 $c9
    inc l                                         ; $5d00: $2c
    inc e                                         ; $5d01: $1c
    and $e5                                       ; $5d02: $e6 $e5
    add hl, hl                                    ; $5d04: $29
    inc e                                         ; $5d05: $1c
    inc bc                                        ; $5d06: $03
    inc bc                                        ; $5d07: $03
    inc bc                                        ; $5d08: $03
    ld l, e                                       ; $5d09: $6b
    inc bc                                        ; $5d0a: $03
    inc bc                                        ; $5d0b: $03
    dec bc                                        ; $5d0c: $0b
    ld bc, $0b0b                                  ; $5d0d: $01 $0b $0b
    dec bc                                        ; $5d10: $0b
    ld bc, $0b0b                                  ; $5d11: $01 $0b $0b
    ld l, e                                       ; $5d14: $6b
    ld bc, $1c3e                                  ; $5d15: $01 $3e $1c
    inc e                                         ; $5d18: $1c
    inc e                                         ; $5d19: $1c
    inc e                                         ; $5d1a: $1c
    inc e                                         ; $5d1b: $1c
    inc e                                         ; $5d1c: $1c
    inc e                                         ; $5d1d: $1c
    inc e                                         ; $5d1e: $1c
    inc e                                         ; $5d1f: $1c
    ld l, h                                       ; $5d20: $6c
    inc e                                         ; $5d21: $1c
    inc e                                         ; $5d22: $1c
    ld l, d                                       ; $5d23: $6a
    ld h, [hl]                                    ; $5d24: $66
    ld l, c                                       ; $5d25: $69
    ld bc, $0101                                  ; $5d26: $01 $01 $01
    ld bc, $0101                                  ; $5d29: $01 $01 $01
    ld bc, $0101                                  ; $5d2c: $01 $01 $01
    ld bc, $0101                                  ; $5d2f: $01 $01 $01
    ld bc, $0101                                  ; $5d32: $01 $01 $01
    ld bc, $db72                                  ; $5d35: $01 $72 $db
    call c, Call_000_1cdd                         ; $5d38: $dc $dd $1c
    inc e                                         ; $5d3b: $1c
    rst $18                                       ; $5d3c: $df
    ldh [rNR32], a                                ; $5d3d: $e0 $1c
    inc e                                         ; $5d3f: $1c
    pop hl                                        ; $5d40: $e1
    ld [c], a                                     ; $5d41: $e2
    inc e                                         ; $5d42: $1c
    inc e                                         ; $5d43: $1c
    inc e                                         ; $5d44: $1c
    inc e                                         ; $5d45: $1c
    add d                                         ; $5d46: $82
    adc d                                         ; $5d47: $8a
    adc d                                         ; $5d48: $8a
    adc d                                         ; $5d49: $8a
    ld bc, $0b01                                  ; $5d4a: $01 $01 $0b
    dec bc                                        ; $5d4d: $0b
    ld bc, $0b01                                  ; $5d4e: $01 $01 $0b
    dec bc                                        ; $5d51: $0b
    ld bc, $0101                                  ; $5d52: $01 $01 $01
    ld bc, $1c1c                                  ; $5d55: $01 $1c $1c
    inc e                                         ; $5d58: $1c
    inc e                                         ; $5d59: $1c
    inc e                                         ; $5d5a: $1c
    ld b, b                                       ; $5d5b: $40
    ld b, e                                       ; $5d5c: $43
    inc e                                         ; $5d5d: $1c
    inc e                                         ; $5d5e: $1c
    ld b, d                                       ; $5d5f: $42
    ld b, l                                       ; $5d60: $45
    ld h, a                                       ; $5d61: $67
    inc e                                         ; $5d62: $1c
    inc e                                         ; $5d63: $1c
    ld l, e                                       ; $5d64: $6b
    ld l, c                                       ; $5d65: $69
    ld bc, $0101                                  ; $5d66: $01 $01 $01
    ld bc, $0101                                  ; $5d69: $01 $01 $01
    ld bc, $0101                                  ; $5d6c: $01 $01 $01
    ld bc, $0101                                  ; $5d6f: $01 $01 $01
    ld bc, $0101                                  ; $5d72: $01 $01 $01
    ld bc, $671c                                  ; $5d75: $01 $1c $67
    ld h, d                                       ; $5d78: $62
    ld l, d                                       ; $5d79: $6a
    ld l, e                                       ; $5d7a: $6b
    ld l, c                                       ; $5d7b: $69
    ld l, h                                       ; $5d7c: $6c
    ld h, e                                       ; $5d7d: $63
    ld h, d                                       ; $5d7e: $62
    ld h, l                                       ; $5d7f: $65
    ld l, b                                       ; $5d80: $68
    ld h, l                                       ; $5d81: $65
    ld h, h                                       ; $5d82: $64
    ld l, l                                       ; $5d83: $6d
    ld h, h                                       ; $5d84: $64
    ld l, l                                       ; $5d85: $6d
    ld bc, $0101                                  ; $5d86: $01 $01 $01
    ld bc, $0101                                  ; $5d89: $01 $01 $01
    ld bc, $0101                                  ; $5d8c: $01 $01 $01
    ld bc, $0101                                  ; $5d8f: $01 $01 $01
    ld bc, $0101                                  ; $5d92: $01 $01 $01
    ld bc, $1c6b                                  ; $5d95: $01 $6b $1c
    inc e                                         ; $5d98: $1c
    inc e                                         ; $5d99: $1c
    ld h, h                                       ; $5d9a: $64
    ld l, d                                       ; $5d9b: $6a
    inc e                                         ; $5d9c: $1c
    inc e                                         ; $5d9d: $1c
    ld h, [hl]                                    ; $5d9e: $66
    ld h, e                                       ; $5d9f: $63
    ld h, h                                       ; $5da0: $64
    ld l, d                                       ; $5da1: $6a
    ld l, b                                       ; $5da2: $68
    ld l, c                                       ; $5da3: $69
    ld l, h                                       ; $5da4: $6c
    inc e                                         ; $5da5: $1c
    ld bc, $0101                                  ; $5da6: $01 $01 $01
    ld bc, $0101                                  ; $5da9: $01 $01 $01
    ld bc, $0101                                  ; $5dac: $01 $01 $01
    ld bc, $0101                                  ; $5daf: $01 $01 $01
    ld bc, $0101                                  ; $5db2: $01 $01 $01
    ld bc, $d32d                                  ; $5db5: $01 $2d $d3
    rst $08                                       ; $5db8: $cf
    ret nc                                        ; $5db9: $d0

    db $ed                                        ; $5dba: $ed
    ld [$d3cf], sp                                ; $5dbb: $08 $cf $d3
    rst $28                                       ; $5dbe: $ef
    push de                                       ; $5dbf: $d5
    sub $d7                                       ; $5dc0: $d6 $d7
    ldh a, [$d9]                                  ; $5dc2: $f0 $d9
    jp c, Jump_000_0bd0                           ; $5dc4: $da $d0 $0b

    dec hl                                        ; $5dc7: $2b
    dec bc                                        ; $5dc8: $0b
    dec bc                                        ; $5dc9: $0b
    dec bc                                        ; $5dca: $0b
    dec bc                                        ; $5dcb: $0b
    dec hl                                        ; $5dcc: $2b
    dec bc                                        ; $5dcd: $0b
    dec bc                                        ; $5dce: $0b
    dec bc                                        ; $5dcf: $0b
    dec bc                                        ; $5dd0: $0b
    dec bc                                        ; $5dd1: $0b
    dec bc                                        ; $5dd2: $0b
    dec bc                                        ; $5dd3: $0b
    dec bc                                        ; $5dd4: $0b
    dec bc                                        ; $5dd5: $0b
    inc e                                         ; $5dd6: $1c
    inc e                                         ; $5dd7: $1c
    ld h, d                                       ; $5dd8: $62
    ld h, l                                       ; $5dd9: $65
    inc e                                         ; $5dda: $1c
    ld l, c                                       ; $5ddb: $69
    ld h, h                                       ; $5ddc: $64
    ld l, l                                       ; $5ddd: $6d
    inc e                                         ; $5dde: $1c
    ld l, e                                       ; $5ddf: $6b
    ld h, [hl]                                    ; $5de0: $66
    ld h, e                                       ; $5de1: $63
    ld h, a                                       ; $5de2: $67
    ld l, l                                       ; $5de3: $6d
    ld l, b                                       ; $5de4: $68
    ld l, e                                       ; $5de5: $6b
    ld bc, $0101                                  ; $5de6: $01 $01 $01
    ld bc, $0101                                  ; $5de9: $01 $01 $01
    ld bc, $0101                                  ; $5dec: $01 $01 $01
    ld bc, $0101                                  ; $5def: $01 $01 $01
    ld bc, $0101                                  ; $5df2: $01 $01 $01
    ld bc, $6366                                  ; $5df5: $01 $66 $63
    ld h, [hl]                                    ; $5df8: $66
    ld h, e                                       ; $5df9: $63
    ld l, b                                       ; $5dfa: $68
    ld h, l                                       ; $5dfb: $65
    ld l, e                                       ; $5dfc: $6b
    ld l, c                                       ; $5dfd: $69
    ld h, a                                       ; $5dfe: $67
    ld h, d                                       ; $5dff: $62
    ld l, d                                       ; $5e00: $6a
    inc e                                         ; $5e01: $1c
    inc e                                         ; $5e02: $1c
    inc e                                         ; $5e03: $1c
    inc e                                         ; $5e04: $1c
    inc e                                         ; $5e05: $1c
    ld bc, $0101                                  ; $5e06: $01 $01 $01
    ld bc, $0101                                  ; $5e09: $01 $01 $01
    ld bc, $0101                                  ; $5e0c: $01 $01 $01
    ld bc, $0101                                  ; $5e0f: $01 $01 $01
    ld bc, $0101                                  ; $5e12: $01 $01 $01
    ld bc, $6a62                                  ; $5e15: $01 $62 $6a
    ld l, e                                       ; $5e18: $6b
    inc e                                         ; $5e19: $1c
    ld l, h                                       ; $5e1a: $6c
    inc e                                         ; $5e1b: $1c
    inc e                                         ; $5e1c: $1c
    inc e                                         ; $5e1d: $1c
    inc e                                         ; $5e1e: $1c
    ld a, $1c                                     ; $5e1f: $3e $1c
    inc e                                         ; $5e21: $1c
    inc e                                         ; $5e22: $1c
    inc e                                         ; $5e23: $1c
    inc e                                         ; $5e24: $1c
    inc e                                         ; $5e25: $1c
    ld bc, $0101                                  ; $5e26: $01 $01 $01
    ld bc, $0101                                  ; $5e29: $01 $01 $01
    ld bc, $0101                                  ; $5e2c: $01 $01 $01
    ld bc, $0101                                  ; $5e2f: $01 $01 $01
    ld bc, $0101                                  ; $5e32: $01 $01 $01
    ld bc, $ea2d                                  ; $5e35: $01 $2d $ea
    db $eb                                        ; $5e38: $eb
    db $ec                                        ; $5e39: $ec
    db $ed                                        ; $5e3a: $ed
    db $d3                                        ; $5e3b: $d3
    rst $08                                       ; $5e3c: $cf
    xor $ef                                       ; $5e3d: $ee $ef
    push de                                       ; $5e3f: $d5
    sub $d7                                       ; $5e40: $d6 $d7
    ldh a, [$d9]                                  ; $5e42: $f0 $d9
    jp c, Jump_000_0bf1                           ; $5e44: $da $f1 $0b

    dec bc                                        ; $5e47: $0b
    dec bc                                        ; $5e48: $0b
    dec bc                                        ; $5e49: $0b
    dec bc                                        ; $5e4a: $0b
    dec hl                                        ; $5e4b: $2b
    dec bc                                        ; $5e4c: $0b
    dec bc                                        ; $5e4d: $0b
    dec bc                                        ; $5e4e: $0b
    dec bc                                        ; $5e4f: $0b
    dec bc                                        ; $5e50: $0b
    dec bc                                        ; $5e51: $0b
    dec bc                                        ; $5e52: $0b
    dec bc                                        ; $5e53: $0b
    dec bc                                        ; $5e54: $0b

Call_081_5e55:
Jump_081_5e55:
    dec bc                                        ; $5e55: $0b
    cp b                                          ; $5e56: $b8
    ld l, h                                       ; $5e57: $6c
    ld h, a                                       ; $5e58: $67
    inc e                                         ; $5e59: $1c
    cp h                                          ; $5e5a: $bc
    push bc                                       ; $5e5b: $c5
    inc e                                         ; $5e5c: $1c
    inc e                                         ; $5e5d: $1c
    ret nz                                        ; $5e5e: $c0

    add $1c                                       ; $5e5f: $c6 $1c
    inc e                                         ; $5e61: $1c
    call nz, $1cc7                                ; $5e62: $c4 $c7 $1c
    halt                                          ; $5e65: $76
    adc d                                         ; $5e66: $8a
    ld bc, $0101                                  ; $5e67: $01 $01 $01
    adc d                                         ; $5e6a: $8a
    adc d                                         ; $5e6b: $8a
    ld bc, $8a01                                  ; $5e6c: $01 $01 $8a
    adc d                                         ; $5e6f: $8a
    ld bc, $8a01                                  ; $5e70: $01 $01 $8a
    adc d                                         ; $5e73: $8a
    ld bc, $1c01                                  ; $5e74: $01 $01 $1c
    inc e                                         ; $5e77: $1c
    inc c                                         ; $5e78: $0c
    inc e                                         ; $5e79: $1c
    inc e                                         ; $5e7a: $1c
    halt                                          ; $5e7b: $76
    inc e                                         ; $5e7c: $1c
    halt                                          ; $5e7d: $76
    inc de                                        ; $5e7e: $13
    inc e                                         ; $5e7f: $1c
    inc de                                        ; $5e80: $13
    ld [hl], l                                    ; $5e81: $75
    inc e                                         ; $5e82: $1c
    ld [de], a                                    ; $5e83: $12
    ld [hl], l                                    ; $5e84: $75
    ld [de], a                                    ; $5e85: $12
    ld bc, $0901                                  ; $5e86: $01 $01 $09
    ld bc, $0101                                  ; $5e89: $01 $01 $01
    ld bc, $0901                                  ; $5e8c: $01 $01 $09
    ld bc, $0109                                  ; $5e8f: $01 $09 $01
    ld bc, $0109                                  ; $5e92: $01 $09 $01
    add hl, bc                                    ; $5e95: $09
    inc e                                         ; $5e96: $1c
    inc e                                         ; $5e97: $1c
    ld de, $1c1c                                  ; $5e98: $11 $1c $1c
    ld [de], a                                    ; $5e9b: $12
    inc e                                         ; $5e9c: $1c
    inc e                                         ; $5e9d: $1c
    ld de, $1c76                                  ; $5e9e: $11 $76 $1c
    ld [hl], c                                    ; $5ea1: $71
    ld [hl], h                                    ; $5ea2: $74
    inc e                                         ; $5ea3: $1c
    inc e                                         ; $5ea4: $1c
    inc e                                         ; $5ea5: $1c
    ld bc, $0901                                  ; $5ea6: $01 $01 $09
    ld bc, $0901                                  ; $5ea9: $01 $01 $09
    ld bc, $0901                                  ; $5eac: $01 $01 $09
    ld bc, $0701                                  ; $5eaf: $01 $01 $07
    ld bc, $0101                                  ; $5eb2: $01 $01 $01
    ld bc, $e3de                                  ; $5eb5: $01 $de $e3
    inc de                                        ; $5eb8: $13
    ld e, $1c                                     ; $5eb9: $1e $1c
    inc e                                         ; $5ebb: $1c
    inc e                                         ; $5ebc: $1c
    inc e                                         ; $5ebd: $1c
    inc e                                         ; $5ebe: $1c
    inc e                                         ; $5ebf: $1c
    or l                                          ; $5ec0: $b5
    or [hl]                                       ; $5ec1: $b6
    inc e                                         ; $5ec2: $1c
    ld l, [hl]                                    ; $5ec3: $6e
    cp c                                          ; $5ec4: $b9
    cp d                                          ; $5ec5: $ba
    adc d                                         ; $5ec6: $8a
    adc d                                         ; $5ec7: $8a
    add hl, bc                                    ; $5ec8: $09
    add hl, bc                                    ; $5ec9: $09
    ld bc, $0101                                  ; $5eca: $01 $01 $01
    ld bc, $0101                                  ; $5ecd: $01 $01 $01
    adc d                                         ; $5ed0: $8a
    adc d                                         ; $5ed1: $8a
    ld bc, $8a82                                  ; $5ed2: $01 $82 $8a
    adc d                                         ; $5ed5: $8a
    ld d, $17                                     ; $5ed6: $16 $17
    rra                                           ; $5ed8: $1f
    ld d, $1c                                     ; $5ed9: $16 $1c
    inc e                                         ; $5edb: $1c
    inc e                                         ; $5edc: $1c
    inc e                                         ; $5edd: $1c
    or a                                          ; $5ede: $b7
    cp b                                          ; $5edf: $b8
    inc e                                         ; $5ee0: $1c
    inc e                                         ; $5ee1: $1c
    cp e                                          ; $5ee2: $bb
    cp h                                          ; $5ee3: $bc
    push bc                                       ; $5ee4: $c5
    inc e                                         ; $5ee5: $1c
    add hl, bc                                    ; $5ee6: $09
    add hl, bc                                    ; $5ee7: $09
    add hl, bc                                    ; $5ee8: $09
    add hl, bc                                    ; $5ee9: $09
    ld bc, $0101                                  ; $5eea: $01 $01 $01
    ld bc, $8a8a                                  ; $5eed: $01 $8a $8a
    ld bc, $8a01                                  ; $5ef0: $01 $01 $8a
    adc d                                         ; $5ef3: $8a
    adc d                                         ; $5ef4: $8a
    ld bc, $1217                                  ; $5ef5: $01 $17 $12
    inc e                                         ; $5ef8: $1c
    inc e                                         ; $5ef9: $1c
    ld de, $1c16                                  ; $5efa: $11 $16 $1c
    inc e                                         ; $5efd: $1c
    inc e                                         ; $5efe: $1c
    inc e                                         ; $5eff: $1c
    ld de, $1c1c                                  ; $5f00: $11 $1c $1c
    inc e                                         ; $5f03: $1c
    inc e                                         ; $5f04: $1c
    inc e                                         ; $5f05: $1c
    add hl, bc                                    ; $5f06: $09
    add hl, bc                                    ; $5f07: $09
    ld bc, $0901                                  ; $5f08: $01 $01 $09
    add hl, bc                                    ; $5f0b: $09
    ld bc, $0101                                  ; $5f0c: $01 $01 $01
    ld bc, $0109                                  ; $5f0f: $01 $09 $01
    ld bc, $0101                                  ; $5f12: $01 $01 $01
    ld bc, $fdfc                                  ; $5f15: $01 $fc $fd
    db $ec                                        ; $5f18: $ec
    ldh a, [$fe]                                  ; $5f19: $f0 $fe
    rst $38                                       ; $5f1b: $ff
    xor $2e                                       ; $5f1c: $ee $2e
    nop                                           ; $5f1e: $00
    ld bc, $2fd7                                  ; $5f1f: $01 $d7 $2f
    ld [bc], a                                    ; $5f22: $02
    inc bc                                        ; $5f23: $03
    inc b                                         ; $5f24: $04
    add hl, bc                                    ; $5f25: $09
    dec bc                                        ; $5f26: $0b
    dec bc                                        ; $5f27: $0b
    dec bc                                        ; $5f28: $0b
    ld l, e                                       ; $5f29: $6b
    dec bc                                        ; $5f2a: $0b
    dec bc                                        ; $5f2b: $0b
    dec bc                                        ; $5f2c: $0b
    dec bc                                        ; $5f2d: $0b
    dec bc                                        ; $5f2e: $0b
    dec bc                                        ; $5f2f: $0b
    dec bc                                        ; $5f30: $0b
    dec bc                                        ; $5f31: $0b
    dec hl                                        ; $5f32: $2b
    dec hl                                        ; $5f33: $2b
    dec hl                                        ; $5f34: $2b
    dec bc                                        ; $5f35: $0b
    ld h, e                                       ; $5f36: $63
    ld l, e                                       ; $5f37: $6b
    ld l, l                                       ; $5f38: $6d
    ld l, b                                       ; $5f39: $68
    ld h, a                                       ; $5f3a: $67
    ld h, [hl]                                    ; $5f3b: $66
    ld h, e                                       ; $5f3c: $63
    ld h, h                                       ; $5f3d: $64
    inc e                                         ; $5f3e: $1c
    ld l, h                                       ; $5f3f: $6c
    ld h, l                                       ; $5f40: $65
    ld h, d                                       ; $5f41: $62
    inc e                                         ; $5f42: $1c
    inc e                                         ; $5f43: $1c
    ld l, c                                       ; $5f44: $69
    inc e                                         ; $5f45: $1c
    ld bc, $0101                                  ; $5f46: $01 $01 $01
    ld bc, $0101                                  ; $5f49: $01 $01 $01
    ld bc, $0101                                  ; $5f4c: $01 $01 $01
    ld bc, $0101                                  ; $5f4f: $01 $01 $01
    ld bc, $0101                                  ; $5f52: $01 $01 $01
    ld bc, $6465                                  ; $5f55: $01 $65 $64
    ld l, l                                       ; $5f58: $6d

Jump_081_5f59:
    ld h, d                                       ; $5f59: $62
    ld l, c                                       ; $5f5a: $69
    ld h, [hl]                                    ; $5f5b: $66
    ld l, c                                       ; $5f5c: $69
    inc e                                         ; $5f5d: $1c
    inc e                                         ; $5f5e: $1c
    ld h, d                                       ; $5f5f: $62
    inc e                                         ; $5f60: $1c
    ld l, e                                       ; $5f61: $6b
    ld h, a                                       ; $5f62: $67
    inc e                                         ; $5f63: $1c
    inc e                                         ; $5f64: $1c
    inc e                                         ; $5f65: $1c
    ld bc, $0101                                  ; $5f66: $01 $01 $01
    ld bc, $0101                                  ; $5f69: $01 $01 $01
    ld bc, $0101                                  ; $5f6c: $01 $01 $01
    ld bc, $0101                                  ; $5f6f: $01 $01 $01
    ld bc, $0101                                  ; $5f72: $01 $01 $01
    ld bc, $1c6a                                  ; $5f75: $01 $6a $1c
    ld b, b                                       ; $5f78: $40
    ld b, e                                       ; $5f79: $43
    inc e                                         ; $5f7a: $1c
    inc e                                         ; $5f7b: $1c
    ld b, d                                       ; $5f7c: $42
    ld b, l                                       ; $5f7d: $45
    inc e                                         ; $5f7e: $1c
    inc e                                         ; $5f7f: $1c
    inc e                                         ; $5f80: $1c
    inc e                                         ; $5f81: $1c
    inc e                                         ; $5f82: $1c
    inc c                                         ; $5f83: $0c
    inc e                                         ; $5f84: $1c
    inc e                                         ; $5f85: $1c
    ld bc, $0101                                  ; $5f86: $01 $01 $01
    ld bc, $0101                                  ; $5f89: $01 $01 $01
    ld bc, $0101                                  ; $5f8c: $01 $01 $01
    ld bc, $0101                                  ; $5f8f: $01 $01 $01
    ld bc, $0109                                  ; $5f92: $01 $09 $01
    ld bc, $0605                                  ; $5f95: $01 $05 $06
    rlca                                          ; $5f98: $07
    ldh a, [$08]                                  ; $5f99: $f0 $08
    rst $38                                       ; $5f9b: $ff
    xor $2e                                       ; $5f9c: $ee $2e
    rst $08                                       ; $5f9e: $cf
    db $d3                                        ; $5f9f: $d3
    rst $10                                       ; $5fa0: $d7
    cpl                                           ; $5fa1: $2f
    reti                                          ; $5fa2: $d9


    db $d3                                        ; $5fa3: $d3
    rst $08                                       ; $5fa4: $cf
    add hl, bc                                    ; $5fa5: $09
    dec hl                                        ; $5fa6: $2b
    dec hl                                        ; $5fa7: $2b
    dec hl                                        ; $5fa8: $2b
    ld l, e                                       ; $5fa9: $6b
    dec bc                                        ; $5faa: $0b
    dec bc                                        ; $5fab: $0b
    dec bc                                        ; $5fac: $0b
    dec bc                                        ; $5fad: $0b
    dec hl                                        ; $5fae: $2b
    dec bc                                        ; $5faf: $0b
    dec bc                                        ; $5fb0: $0b
    dec bc                                        ; $5fb1: $0b
    dec bc                                        ; $5fb2: $0b
    dec hl                                        ; $5fb3: $2b
    dec bc                                        ; $5fb4: $0b
    dec bc                                        ; $5fb5: $0b
    inc e                                         ; $5fb6: $1c
    inc e                                         ; $5fb7: $1c
    inc e                                         ; $5fb8: $1c
    inc e                                         ; $5fb9: $1c
    inc e                                         ; $5fba: $1c
    inc e                                         ; $5fbb: $1c
    inc e                                         ; $5fbc: $1c
    ld [hl], c                                    ; $5fbd: $71
    inc e                                         ; $5fbe: $1c
    inc e                                         ; $5fbf: $1c
    inc de                                        ; $5fc0: $13
    ld [hl], e                                    ; $5fc1: $73
    inc e                                         ; $5fc2: $1c
    halt                                          ; $5fc3: $76
    ld e, $16                                     ; $5fc4: $1e $16
    ld bc, $0101                                  ; $5fc6: $01 $01 $01
    ld bc, $0101                                  ; $5fc9: $01 $01 $01
    ld bc, $0107                                  ; $5fcc: $01 $07 $01
    ld bc, $0109                                  ; $5fcf: $01 $09 $01
    ld bc, $0901                                  ; $5fd2: $01 $01 $09
    add hl, bc                                    ; $5fd5: $09
    inc e                                         ; $5fd6: $1c
    inc e                                         ; $5fd7: $1c
    inc e                                         ; $5fd8: $1c
    inc de                                        ; $5fd9: $13
    inc e                                         ; $5fda: $1c
    ld de, $0c17                                  ; $5fdb: $11 $17 $0c
    ld [hl], h                                    ; $5fde: $74
    ld [hl], l                                    ; $5fdf: $75
    ld [hl], e                                    ; $5fe0: $73
    inc e                                         ; $5fe1: $1c
    rla                                           ; $5fe2: $17
    inc c                                         ; $5fe3: $0c
    inc e                                         ; $5fe4: $1c
    inc e                                         ; $5fe5: $1c
    ld bc, $0101                                  ; $5fe6: $01 $01 $01
    add hl, bc                                    ; $5fe9: $09
    ld bc, $0909                                  ; $5fea: $01 $09 $09
    add hl, bc                                    ; $5fed: $09
    ld bc, $0101                                  ; $5fee: $01 $01 $01
    ld bc, $0909                                  ; $5ff1: $01 $09 $09
    ld bc, $7301                                  ; $5ff4: $01 $01 $73
    inc e                                         ; $5ff7: $1c
    or l                                          ; $5ff8: $b5
    or [hl]                                       ; $5ff9: $b6
    inc e                                         ; $5ffa: $1c
    ld l, [hl]                                    ; $5ffb: $6e
    cp c                                          ; $5ffc: $b9
    cp d                                          ; $5ffd: $ba
    inc e                                         ; $5ffe: $1c
    ld l, a                                       ; $5fff: $6f
    cp l                                          ; $6000: $bd
    cp [hl]                                       ; $6001: $be
    inc e                                         ; $6002: $1c
    ld [hl], b                                    ; $6003: $70
    pop bc                                        ; $6004: $c1
    jp nz, $0101                                  ; $6005: $c2 $01 $01

    adc d                                         ; $6008: $8a
    adc d                                         ; $6009: $8a
    ld bc, $8a82                                  ; $600a: $01 $82 $8a
    adc d                                         ; $600d: $8a
    ld bc, $8a82                                  ; $600e: $01 $82 $8a
    adc d                                         ; $6011: $8a
    ld bc, $8a82                                  ; $6012: $01 $82 $8a
    adc d                                         ; $6015: $8a
    inc e                                         ; $6016: $1c
    inc e                                         ; $6017: $1c
    inc e                                         ; $6018: $1c
    halt                                          ; $6019: $76
    inc e                                         ; $601a: $1c
    inc e                                         ; $601b: $1c
    inc e                                         ; $601c: $1c
    inc e                                         ; $601d: $1c
    inc e                                         ; $601e: $1c
    ld l, $2f                                     ; $601f: $2e $2f
    inc e                                         ; $6021: $1c
    inc e                                         ; $6022: $1c
    inc e                                         ; $6023: $1c
    inc e                                         ; $6024: $1c
    inc e                                         ; $6025: $1c
    ld bc, $0101                                  ; $6026: $01 $01 $01
    ld bc, $0101                                  ; $6029: $01 $01 $01
    ld bc, $0101                                  ; $602c: $01 $01 $01
    ld bc, $0101                                  ; $602f: $01 $01 $01
    ld bc, $0101                                  ; $6032: $01 $01 $01
    ld bc, $161e                                  ; $6035: $01 $1e $16
    halt                                          ; $6038: $76
    inc e                                         ; $6039: $1c
    inc e                                         ; $603a: $1c
    inc e                                         ; $603b: $1c
    inc e                                         ; $603c: $1c
    ld de, $1c1c                                  ; $603d: $11 $1c $1c
    inc e                                         ; $6040: $1c
    inc e                                         ; $6041: $1c
    inc e                                         ; $6042: $1c
    ld h, d                                       ; $6043: $62
    ld l, d                                       ; $6044: $6a
    ld l, e                                       ; $6045: $6b
    add hl, bc                                    ; $6046: $09
    add hl, bc                                    ; $6047: $09
    ld bc, $0101                                  ; $6048: $01 $01 $01
    ld bc, $0901                                  ; $604b: $01 $01 $09
    ld bc, $0101                                  ; $604e: $01 $01 $01
    ld bc, $0101                                  ; $6051: $01 $01 $01
    ld bc, $1c01                                  ; $6054: $01 $01 $1c
    ld [hl], d                                    ; $6057: $72
    db $db                                        ; $6058: $db
    call c, Call_000_1c1c                         ; $6059: $dc $1c $1c
    inc e                                         ; $605c: $1c
    rst $18                                       ; $605d: $df
    inc e                                         ; $605e: $1c
    ld a, $1c                                     ; $605f: $3e $1c
    pop hl                                        ; $6061: $e1
    inc e                                         ; $6062: $1c
    inc e                                         ; $6063: $1c
    inc e                                         ; $6064: $1c
    inc e                                         ; $6065: $1c
    ld bc, $8a82                                  ; $6066: $01 $82 $8a
    adc d                                         ; $6069: $8a
    ld bc, $0101                                  ; $606a: $01 $01 $01
    dec bc                                        ; $606d: $0b
    ld bc, $0101                                  ; $606e: $01 $01 $01
    dec bc                                        ; $6071: $0b
    ld bc, $0101                                  ; $6072: $01 $01 $01
    ld bc, $711c                                  ; $6075: $01 $1c $71
    inc e                                         ; $6078: $1c
    ld l, e                                       ; $6079: $6b
    inc e                                         ; $607a: $1c
    ld l, h                                       ; $607b: $6c
    ld h, a                                       ; $607c: $67
    ld l, b                                       ; $607d: $68
    inc e                                         ; $607e: $1c
    inc e                                         ; $607f: $1c
    ld l, c                                       ; $6080: $69
    ld l, h                                       ; $6081: $6c
    inc e                                         ; $6082: $1c
    inc e                                         ; $6083: $1c
    ld b, b                                       ; $6084: $40
    ld b, e                                       ; $6085: $43
    ld bc, $0107                                  ; $6086: $01 $07 $01
    ld bc, $0101                                  ; $6089: $01 $01 $01
    ld bc, $0101                                  ; $608c: $01 $01 $01
    ld bc, $0101                                  ; $608f: $01 $01 $01
    ld bc, $0101                                  ; $6092: $01 $01 $01
    ld bc, $6c69                                  ; $6095: $01 $69 $6c
    ld h, a                                       ; $6098: $67
    ld h, d                                       ; $6099: $62
    ld l, d                                       ; $609a: $6a
    ld h, [hl]                                    ; $609b: $66
    ld h, e                                       ; $609c: $63
    ld h, h                                       ; $609d: $64
    ld l, l                                       ; $609e: $6d
    ld h, d                                       ; $609f: $62
    ld h, l                                       ; $60a0: $65
    ld h, [hl]                                    ; $60a1: $66
    ld l, c                                       ; $60a2: $69
    ld h, h                                       ; $60a3: $64
    ld h, d                                       ; $60a4: $62
    ld l, b                                       ; $60a5: $68
    ld bc, $0101                                  ; $60a6: $01 $01 $01
    ld bc, $0101                                  ; $60a9: $01 $01 $01
    ld bc, $0101                                  ; $60ac: $01 $01 $01
    ld bc, $0101                                  ; $60af: $01 $01 $01
    ld bc, $0101                                  ; $60b2: $01 $01 $01
    ld bc, $6b6a                                  ; $60b5: $01 $6a $6b
    inc e                                         ; $60b8: $1c
    inc e                                         ; $60b9: $1c
    ld h, a                                       ; $60ba: $67
    ld h, d                                       ; $60bb: $62
    ld l, d                                       ; $60bc: $6a
    ld l, h                                       ; $60bd: $6c
    ld h, e                                       ; $60be: $63
    ld h, [hl]                                    ; $60bf: $66
    ld h, a                                       ; $60c0: $67
    ld l, e                                       ; $60c1: $6b
    ld h, l                                       ; $60c2: $65
    ld l, b                                       ; $60c3: $68
    ld h, l                                       ; $60c4: $65
    ld h, [hl]                                    ; $60c5: $66
    ld bc, $0101                                  ; $60c6: $01 $01 $01
    ld bc, $0101                                  ; $60c9: $01 $01 $01
    ld bc, $0101                                  ; $60cc: $01 $01 $01
    ld bc, $0101                                  ; $60cf: $01 $01 $01
    ld bc, $0101                                  ; $60d2: $01 $01 $01
    ld bc, $5d1c                                  ; $60d5: $01 $1c $5d
    ld e, [hl]                                    ; $60d8: $5e
    and $1c                                       ; $60d9: $e6 $1c
    ld [hl], $36                                  ; $60db: $36 $36
    scf                                           ; $60dd: $37
    inc d                                         ; $60de: $14
    inc e                                         ; $60df: $1c
    dec hl                                        ; $60e0: $2b
    ld e, b                                       ; $60e1: $58
    dec d                                         ; $60e2: $15
    inc e                                         ; $60e3: $1c
    inc l                                         ; $60e4: $2c
    db $e4                                        ; $60e5: $e4
    ld bc, $0363                                  ; $60e6: $01 $63 $03
    dec bc                                        ; $60e9: $0b
    ld bc, $034b                                  ; $60ea: $01 $4b $03
    inc bc                                        ; $60ed: $03
    dec bc                                        ; $60ee: $0b
    ld bc, $032b                                  ; $60ef: $01 $2b $03
    dec bc                                        ; $60f2: $0b
    ld bc, $0b2b                                  ; $60f3: $01 $2b $0b
    ld d, h                                       ; $60f6: $54
    ld d, l                                       ; $60f7: $55
    add hl, hl                                    ; $60f8: $29
    ld h, d                                       ; $60f9: $62
    inc [hl]                                      ; $60fa: $34
    dec [hl]                                      ; $60fb: $35
    inc l                                         ; $60fc: $2c
    ld l, h                                       ; $60fd: $6c
    add sp, -$37                                  ; $60fe: $e8 $c9
    dec hl                                        ; $6100: $2b
    inc e                                         ; $6101: $1c
    rst $20                                       ; $6102: $e7
    push hl                                       ; $6103: $e5
    ld e, d                                       ; $6104: $5a
    add hl, hl                                    ; $6105: $29
    inc bc                                        ; $6106: $03
    inc bc                                        ; $6107: $03
    dec hl                                        ; $6108: $2b
    ld bc, $0303                                  ; $6109: $01 $03 $03
    ld c, e                                       ; $610c: $4b
    ld bc, $0b0b                                  ; $610d: $01 $0b $0b
    ld c, e                                       ; $6110: $4b
    ld bc, $0b0b                                  ; $6111: $01 $0b $0b
    inc bc                                        ; $6114: $03
    dec hl                                        ; $6115: $2b
    ld l, c                                       ; $6116: $69
    ld l, h                                       ; $6117: $6c
    ld h, a                                       ; $6118: $67
    ld h, d                                       ; $6119: $62
    ld l, d                                       ; $611a: $6a
    ld l, e                                       ; $611b: $6b
    ld l, d                                       ; $611c: $6a
    ld h, d                                       ; $611d: $62
    ld h, a                                       ; $611e: $67
    ld l, h                                       ; $611f: $6c
    ld h, a                                       ; $6120: $67
    inc e                                         ; $6121: $1c
    ld l, d                                       ; $6122: $6a
    ld l, e                                       ; $6123: $6b
    inc e                                         ; $6124: $1c
    ld a, $01                                     ; $6125: $3e $01
    ld bc, $0101                                  ; $6127: $01 $01 $01
    ld bc, $0101                                  ; $612a: $01 $01 $01
    ld bc, $0101                                  ; $612d: $01 $01 $01
    ld bc, $0101                                  ; $6130: $01 $01 $01
    ld bc, $0101                                  ; $6133: $01 $01 $01
    ld l, c                                       ; $6136: $69
    ld l, h                                       ; $6137: $6c
    ld h, a                                       ; $6138: $67
    ld h, d                                       ; $6139: $62
    inc e                                         ; $613a: $1c
    inc e                                         ; $613b: $1c
    ccf                                           ; $613c: $3f
    inc e                                         ; $613d: $1c
    inc e                                         ; $613e: $1c
    pop hl                                        ; $613f: $e1
    ld b, c                                       ; $6140: $41
    pop hl                                        ; $6141: $e1
    inc e                                         ; $6142: $1c
    db $e4                                        ; $6143: $e4
    ret c                                         ; $6144: $d8

    inc c                                         ; $6145: $0c
    ld bc, $0101                                  ; $6146: $01 $01 $01
    ld bc, $0101                                  ; $6149: $01 $01 $01
    and d                                         ; $614c: $a2
    ld bc, $a201                                  ; $614d: $01 $01 $a2
    and d                                         ; $6150: $a2
    add d                                         ; $6151: $82
    ld bc, $a2a2                                  ; $6152: $01 $a2 $a2

Jump_081_6155:
    and d                                         ; $6155: $a2
    or a                                          ; $6156: $b7
    cp b                                          ; $6157: $b8
    add hl, hl                                    ; $6158: $29
    ld e, a                                       ; $6159: $5f
    cp e                                          ; $615a: $bb
    cp h                                          ; $615b: $bc
    push bc                                       ; $615c: $c5
    dec hl                                        ; $615d: $2b
    cp a                                          ; $615e: $bf
    ret nz                                        ; $615f: $c0

    add $2c                                       ; $6160: $c6 $2c
    jp $c7c4                                      ; $6162: $c3 $c4 $c7


    add hl, hl                                    ; $6165: $29
    adc d                                         ; $6166: $8a
    adc d                                         ; $6167: $8a
    ld c, e                                       ; $6168: $4b
    inc bc                                        ; $6169: $03
    adc d                                         ; $616a: $8a
    adc d                                         ; $616b: $8a
    adc d                                         ; $616c: $8a
    dec hl                                        ; $616d: $2b
    adc d                                         ; $616e: $8a
    adc d                                         ; $616f: $8a
    adc d                                         ; $6170: $8a
    dec hl                                        ; $6171: $2b
    adc d                                         ; $6172: $8a
    adc d                                         ; $6173: $8a
    adc d                                         ; $6174: $8a
    ld c, e                                       ; $6175: $4b
    ld d, h                                       ; $6176: $54
    ld d, l                                       ; $6177: $55
    ld e, [hl]                                    ; $6178: $5e
    inc l                                         ; $6179: $2c
    inc [hl]                                      ; $617a: $34
    set 1, h                                      ; $617b: $cb $cc
    dec hl                                        ; $617d: $2b
    add sp, -$37                                  ; $617e: $e8 $c9
    ld d, a                                       ; $6180: $57
    ld e, b                                       ; $6181: $58
    jp z, Jump_081_5ae5                           ; $6182: $ca $e5 $5a

    ld e, e                                       ; $6185: $5b
    inc bc                                        ; $6186: $03
    inc bc                                        ; $6187: $03
    inc bc                                        ; $6188: $03
    ld c, e                                       ; $6189: $4b
    inc bc                                        ; $618a: $03
    dec bc                                        ; $618b: $0b
    dec bc                                        ; $618c: $0b
    ld c, e                                       ; $618d: $4b
    dec bc                                        ; $618e: $0b
    dec bc                                        ; $618f: $0b
    inc bc                                        ; $6190: $03
    inc bc                                        ; $6191: $03
    dec bc                                        ; $6192: $0b
    dec bc                                        ; $6193: $0b
    inc bc                                        ; $6194: $03
    inc bc                                        ; $6195: $03
    ld h, a                                       ; $6196: $67
    inc e                                         ; $6197: $1c
    inc e                                         ; $6198: $1c
    inc e                                         ; $6199: $1c
    inc e                                         ; $619a: $1c
    ld b, b                                       ; $619b: $40
    ld b, e                                       ; $619c: $43
    inc e                                         ; $619d: $1c
    ld e, l                                       ; $619e: $5d
    ld b, d                                       ; $619f: $42
    ld b, l                                       ; $61a0: $45
    pop hl                                        ; $61a1: $e1
    ld h, c                                       ; $61a2: $61
    inc e                                         ; $61a3: $1c
    inc e                                         ; $61a4: $1c
    db $e4                                        ; $61a5: $e4
    ld bc, $0101                                  ; $61a6: $01 $01 $01
    ld bc, $0101                                  ; $61a9: $01 $01 $01
    ld bc, $0301                                  ; $61ac: $01 $01 $03
    ld bc, $a201                                  ; $61af: $01 $01 $a2
    ld b, e                                       ; $61b2: $43
    ld bc, $a201                                  ; $61b3: $01 $01 $a2
    inc e                                         ; $61b6: $1c
    rst $20                                       ; $61b7: $e7
    call c, Call_000_3f0e                         ; $61b8: $dc $0e $3f
    ld [$dfe0], a                                 ; $61bb: $ea $e0 $df
    call nc, $d2d3                                ; $61be: $d4 $d3 $d2
    pop de                                        ; $61c1: $d1
    ret c                                         ; $61c2: $d8

    rst $10                                       ; $61c3: $d7
    sub $d5                                       ; $61c4: $d6 $d5
    ld bc, $a2a2                                  ; $61c6: $01 $a2 $a2

Call_081_61c9:
    and d                                         ; $61c9: $a2
    and d                                         ; $61ca: $a2
    add d                                         ; $61cb: $82
    add d                                         ; $61cc: $82
    add d                                         ; $61cd: $82
    and d                                         ; $61ce: $a2
    and d                                         ; $61cf: $a2
    and d                                         ; $61d0: $a2
    and d                                         ; $61d1: $a2
    and d                                         ; $61d2: $a2
    and d                                         ; $61d3: $a2
    and d                                         ; $61d4: $a2
    and d                                         ; $61d5: $a2
    db $dd                                        ; $61d6: $dd
    sbc $e3                                       ; $61d7: $de $e3
    ld e, l                                       ; $61d9: $5d
    ldh [rNR32], a                                ; $61da: $e0 $1c
    inc e                                         ; $61dc: $1c
    ld h, c                                       ; $61dd: $61
    ld [c], a                                     ; $61de: $e2
    inc e                                         ; $61df: $1c
    inc e                                         ; $61e0: $1c
    ld e, c                                       ; $61e1: $59
    ld l, $2f                                     ; $61e2: $2e $2f
    inc e                                         ; $61e4: $1c
    ld e, l                                       ; $61e5: $5d
    adc d                                         ; $61e6: $8a
    adc d                                         ; $61e7: $8a
    adc d                                         ; $61e8: $8a
    inc hl                                        ; $61e9: $23
    dec bc                                        ; $61ea: $0b
    ld bc, $6301                                  ; $61eb: $01 $01 $63
    dec bc                                        ; $61ee: $0b
    ld bc, $0301                                  ; $61ef: $01 $01 $03
    ld bc, $0101                                  ; $61f2: $01 $01 $01
    ld h, e                                       ; $61f5: $63
    ld d, h                                       ; $61f6: $54
    and $5e                                       ; $61f7: $e6 $5e
    ld e, a                                       ; $61f9: $5f
    inc [hl]                                      ; $61fa: $34
    dec [hl]                                      ; $61fb: $35
    ld [hl], $37                                  ; $61fc: $36 $37
    add sp, -$37                                  ; $61fe: $e8 $c9
    ld d, a                                       ; $6200: $57
    ld e, b                                       ; $6201: $58
    jp z, Jump_081_5ae5                           ; $6202: $ca $e5 $5a

    ld e, e                                       ; $6205: $5b
    inc bc                                        ; $6206: $03
    dec bc                                        ; $6207: $0b
    inc bc                                        ; $6208: $03
    inc bc                                        ; $6209: $03
    inc bc                                        ; $620a: $03
    inc bc                                        ; $620b: $03
    inc bc                                        ; $620c: $03
    inc bc                                        ; $620d: $03
    dec bc                                        ; $620e: $0b
    dec bc                                        ; $620f: $0b
    inc bc                                        ; $6210: $03
    inc bc                                        ; $6211: $03
    dec bc                                        ; $6212: $0b
    dec bc                                        ; $6213: $0b
    inc bc                                        ; $6214: $03
    inc bc                                        ; $6215: $03
    ld e, c                                       ; $6216: $59
    inc e                                         ; $6217: $1c
    inc e                                         ; $6218: $1c
    rst $20                                       ; $6219: $e7
    ld e, l                                       ; $621a: $5d
    ld a, $1c                                     ; $621b: $3e $1c
    ld [$1c61], a                                 ; $621d: $ea $61 $1c
    ld de, $5910                                  ; $6220: $11 $10 $59
    inc e                                         ; $6223: $1c
    dec d                                         ; $6224: $15
    inc d                                         ; $6225: $14
    inc hl                                        ; $6226: $23
    ld bc, $a201                                  ; $6227: $01 $01 $a2
    inc bc                                        ; $622a: $03
    ld bc, $8201                                  ; $622b: $01 $01 $82
    ld b, e                                       ; $622e: $43
    ld bc, $8282                                  ; $622f: $01 $82 $82
    inc hl                                        ; $6232: $23
    ld bc, $8282                                  ; $6233: $01 $82 $82
    call c, $dadb                                 ; $6236: $dc $db $da
    reti                                          ; $6239: $d9


    ldh [$df], a                                  ; $623a: $e0 $df
    sbc $1c                                       ; $623c: $de $1c
    jp nc, Jump_000_09d1                          ; $623e: $d2 $d1 $09

    inc e                                         ; $6241: $1c
    sub $0b                                       ; $6242: $d6 $0b
    ld a, [bc]                                    ; $6244: $0a
    pop hl                                        ; $6245: $e1
    and d                                         ; $6246: $a2
    and d                                         ; $6247: $a2
    and d                                         ; $6248: $a2
    and d                                         ; $6249: $a2
    add d                                         ; $624a: $82
    add d                                         ; $624b: $82
    inc hl                                        ; $624c: $23
    ld bc, $a2a2                                  ; $624d: $01 $a2 $a2
    and d                                         ; $6250: $a2
    ld bc, $a2a2                                  ; $6251: $01 $a2 $a2
    and d                                         ; $6254: $a2
    add d                                         ; $6255: $82
    inc e                                         ; $6256: $1c
    ld [hl], c                                    ; $6257: $71
    inc e                                         ; $6258: $1c
    ld [hl], $1c                                  ; $6259: $36 $1c
    inc e                                         ; $625b: $1c
    inc e                                         ; $625c: $1c
    ld e, l                                       ; $625d: $5d
    ld l, c                                       ; $625e: $69
    inc e                                         ; $625f: $1c
    inc e                                         ; $6260: $1c
    ld h, c                                       ; $6261: $61
    ld h, e                                       ; $6262: $63
    ld l, e                                       ; $6263: $6b
    inc e                                         ; $6264: $1c
    ld e, c                                       ; $6265: $59
    ld bc, $0107                                  ; $6266: $01 $07 $01
    ld c, e                                       ; $6269: $4b
    ld bc, $0101                                  ; $626a: $01 $01 $01
    inc hl                                        ; $626d: $23
    ld bc, $0101                                  ; $626e: $01 $01 $01
    ld h, e                                       ; $6271: $63
    ld bc, $0101                                  ; $6272: $01 $01 $01
    inc bc                                        ; $6275: $03
    ld d, h                                       ; $6276: $54
    ld d, l                                       ; $6277: $55
    db $e4                                        ; $6278: $e4
    rst $20                                       ; $6279: $e7
    inc [hl]                                      ; $627a: $34
    set 1, h                                      ; $627b: $cb $cc
    scf                                           ; $627d: $37
    add sp, -$37                                  ; $627e: $e8 $c9
    ld d, a                                       ; $6280: $57
    ld e, b                                       ; $6281: $58
    jp z, Jump_081_5ae5                           ; $6282: $ca $e5 $5a

    ld e, e                                       ; $6285: $5b
    inc bc                                        ; $6286: $03
    inc bc                                        ; $6287: $03
    dec bc                                        ; $6288: $0b
    dec bc                                        ; $6289: $0b
    inc bc                                        ; $628a: $03
    dec bc                                        ; $628b: $0b
    dec bc                                        ; $628c: $0b
    inc bc                                        ; $628d: $03
    dec bc                                        ; $628e: $0b
    dec bc                                        ; $628f: $0b
    inc bc                                        ; $6290: $03
    inc bc                                        ; $6291: $03
    dec bc                                        ; $6292: $0b
    dec bc                                        ; $6293: $0b
    inc bc                                        ; $6294: $03
    inc bc                                        ; $6295: $03
    ld e, l                                       ; $6296: $5d
    inc e                                         ; $6297: $1c
    add hl, de                                    ; $6298: $19
    jr jr_081_62d1                                ; $6299: $18 $36

    inc e                                         ; $629b: $1c
    inc e                                         ; $629c: $1c
    inc e                                         ; $629d: $1c
    add hl, hl                                    ; $629e: $29
    ld l, $2f                                     ; $629f: $2e $2f
    inc e                                         ; $62a1: $1c
    inc l                                         ; $62a2: $2c
    inc e                                         ; $62a3: $1c
    inc e                                         ; $62a4: $1c
    inc e                                         ; $62a5: $1c
    ld b, e                                       ; $62a6: $43
    ld bc, $8282                                  ; $62a7: $01 $82 $82
    ld l, e                                       ; $62aa: $6b
    ld bc, $0101                                  ; $62ab: $01 $01 $01
    dec hl                                        ; $62ae: $2b
    ld bc, $0101                                  ; $62af: $01 $01 $01
    ld c, e                                       ; $62b2: $4b
    ld bc, $0101                                  ; $62b3: $01 $01 $01
    jp c, $d80d                                   ; $62b6: $da $0d $d8

    inc c                                         ; $62b9: $0c
    rrca                                          ; $62ba: $0f
    rst $20                                       ; $62bb: $e7
    call c, $dd0e                                 ; $62bc: $dc $0e $dd
    ld [$dfe0], a                                 ; $62bf: $ea $e0 $df
    ld de, $d210                                  ; $62c2: $11 $10 $d2
    pop de                                        ; $62c5: $d1
    and d                                         ; $62c6: $a2
    and d                                         ; $62c7: $a2
    and d                                         ; $62c8: $a2
    and d                                         ; $62c9: $a2
    inc bc                                        ; $62ca: $03
    and d                                         ; $62cb: $a2
    and d                                         ; $62cc: $a2
    and d                                         ; $62cd: $a2
    add d                                         ; $62ce: $82
    add d                                         ; $62cf: $82
    add d                                         ; $62d0: $82

jr_081_62d1:
    add d                                         ; $62d1: $82
    add d                                         ; $62d2: $82
    add d                                         ; $62d3: $82
    and d                                         ; $62d4: $a2
    and d                                         ; $62d5: $a2
    ld l, d                                       ; $62d6: $6a
    inc e                                         ; $62d7: $1c
    inc e                                         ; $62d8: $1c
    ccf                                           ; $62d9: $3f
    ld a, $1c                                     ; $62da: $3e $1c
    pop hl                                        ; $62dc: $e1
    ld b, c                                       ; $62dd: $41
    inc e                                         ; $62de: $1c
    inc e                                         ; $62df: $1c
    inc c                                         ; $62e0: $0c
    ret c                                         ; $62e1: $d8

    inc e                                         ; $62e2: $1c
    inc e                                         ; $62e3: $1c
    ld c, $dc                                     ; $62e4: $0e $dc
    ld bc, $0101                                  ; $62e6: $01 $01 $01
    add d                                         ; $62e9: $82
    ld bc, $a201                                  ; $62ea: $01 $01 $a2
    add d                                         ; $62ed: $82
    ld bc, $8201                                  ; $62ee: $01 $01 $82
    add d                                         ; $62f1: $82
    ld bc, $8201                                  ; $62f2: $01 $01 $82
    add d                                         ; $62f5: $82
    inc e                                         ; $62f6: $1c
    dec c                                         ; $62f7: $0d
    rst $18                                       ; $62f8: $df
    ldh [$0d], a                                  ; $62f9: $e0 $0d
    ld c, $d1                                     ; $62fb: $0e $d1
    jp nc, Jump_000_0f0e                          ; $62fd: $d2 $0e $0f

    push de                                       ; $6300: $d5
    sub $0f                                       ; $6301: $d6 $0f
    db $10                                        ; $6303: $10
    reti                                          ; $6304: $d9


    jp c, $aa01                                   ; $6305: $da $01 $aa

    and d                                         ; $6308: $a2
    and d                                         ; $6309: $a2
    adc d                                         ; $630a: $8a
    xor d                                         ; $630b: $aa
    add d                                         ; $630c: $82
    add d                                         ; $630d: $82
    adc d                                         ; $630e: $8a
    xor d                                         ; $630f: $aa
    add d                                         ; $6310: $82
    add d                                         ; $6311: $82
    adc d                                         ; $6312: $8a
    xor d                                         ; $6313: $aa
    add d                                         ; $6314: $82
    add d                                         ; $6315: $82
    db $10                                        ; $6316: $10
    inc e                                         ; $6317: $1c
    inc e                                         ; $6318: $1c
    rrca                                          ; $6319: $0f
    inc e                                         ; $631a: $1c
    inc e                                         ; $631b: $1c
    inc e                                         ; $631c: $1c
    inc e                                         ; $631d: $1c
    inc e                                         ; $631e: $1c
    inc e                                         ; $631f: $1c
    inc e                                         ; $6320: $1c
    pop hl                                        ; $6321: $e1
    inc e                                         ; $6322: $1c
    inc e                                         ; $6323: $1c
    inc e                                         ; $6324: $1c
    db $e4                                        ; $6325: $e4
    adc d                                         ; $6326: $8a
    ld bc, $2301                                  ; $6327: $01 $01 $23
    ld bc, $0101                                  ; $632a: $01 $01 $01
    ld bc, $0101                                  ; $632d: $01 $01 $01
    ld bc, $01a2                                  ; $6330: $01 $a2 $01
    ld bc, $a201                                  ; $6333: $01 $01 $a2
    inc e                                         ; $6336: $1c
    inc e                                         ; $6337: $1c
    inc e                                         ; $6338: $1c
    rst $20                                       ; $6339: $e7
    inc e                                         ; $633a: $1c
    inc e                                         ; $633b: $1c
    ccf                                           ; $633c: $3f
    ld [$e10d], a                                 ; $633d: $ea $0d $e1
    call nc, $0ed3                                ; $6340: $d4 $d3 $0e
    db $e4                                        ; $6343: $e4
    ret c                                         ; $6344: $d8

    rst $10                                       ; $6345: $d7
    ld bc, $0101                                  ; $6346: $01 $01 $01
    and d                                         ; $6349: $a2
    ld bc, $a201                                  ; $634a: $01 $01 $a2
    add d                                         ; $634d: $82
    adc d                                         ; $634e: $8a
    and d                                         ; $634f: $a2
    and d                                         ; $6350: $a2
    and d                                         ; $6351: $a2
    adc d                                         ; $6352: $8a
    and d                                         ; $6353: $a2
    and d                                         ; $6354: $a2
    and d                                         ; $6355: $a2
    ld a, [bc]                                    ; $6356: $0a
    dec bc                                        ; $6357: $0b
    sub $14                                       ; $6358: $d6 $14
    ret c                                         ; $635a: $d8

    dec c                                         ; $635b: $0d
    jp c, $dc18                                   ; $635c: $da $18 $dc

    rst $20                                       ; $635f: $e7
    rrca                                          ; $6360: $0f
    inc e                                         ; $6361: $1c
    ldh [$ea], a                                  ; $6362: $e0 $ea
    db $dd                                        ; $6364: $dd
    inc e                                         ; $6365: $1c
    add d                                         ; $6366: $82
    add d                                         ; $6367: $82
    add d                                         ; $6368: $82
    and d                                         ; $6369: $a2
    add d                                         ; $636a: $82
    add d                                         ; $636b: $82
    add d                                         ; $636c: $82
    and d                                         ; $636d: $a2
    add d                                         ; $636e: $82
    add d                                         ; $636f: $82
    inc hl                                        ; $6370: $23
    ld bc, $a2a2                                  ; $6371: $01 $a2 $a2
    add d                                         ; $6374: $82
    ld bc, $1c15                                  ; $6375: $01 $15 $1c
    ld h, d                                       ; $6378: $62
    ld h, [hl]                                    ; $6379: $66
    add hl, de                                    ; $637a: $19
    inc e                                         ; $637b: $1c
    ld l, h                                       ; $637c: $6c
    ld h, a                                       ; $637d: $67
    inc e                                         ; $637e: $1c
    inc e                                         ; $637f: $1c
    ld l, e                                       ; $6380: $6b
    ld h, h                                       ; $6381: $64
    inc e                                         ; $6382: $1c
    ld [de], a                                    ; $6383: $12
    ld h, d                                       ; $6384: $62
    ld h, [hl]                                    ; $6385: $66
    and d                                         ; $6386: $a2
    ld bc, $0101                                  ; $6387: $01 $01 $01
    and d                                         ; $638a: $a2
    ld bc, $0101                                  ; $638b: $01 $01 $01
    ld bc, $0101                                  ; $638e: $01 $01 $01
    ld bc, $0901                                  ; $6391: $01 $01 $09
    ld bc, $6b01                                  ; $6394: $01 $01 $6b
    inc e                                         ; $6397: $1c
    ld b, b                                       ; $6398: $40
    ld b, e                                       ; $6399: $43
    ld h, d                                       ; $639a: $62
    ld l, d                                       ; $639b: $6a
    ld b, d                                       ; $639c: $42
    ld b, l                                       ; $639d: $45
    ld l, h                                       ; $639e: $6c
    ld l, b                                       ; $639f: $68
    ld h, d                                       ; $63a0: $62
    inc e                                         ; $63a1: $1c
    ld h, e                                       ; $63a2: $63
    ld l, c                                       ; $63a3: $69
    ld l, l                                       ; $63a4: $6d
    ld h, a                                       ; $63a5: $67
    ld bc, $0101                                  ; $63a6: $01 $01 $01
    ld bc, $0101                                  ; $63a9: $01 $01 $01
    ld bc, $0101                                  ; $63ac: $01 $01 $01
    ld bc, $0101                                  ; $63af: $01 $01 $01
    ld bc, $0101                                  ; $63b2: $01 $01 $01
    ld bc, $1c1c                                  ; $63b5: $01 $1c $1c
    inc e                                         ; $63b8: $1c
    inc e                                         ; $63b9: $1c
    ld de, $0c1c                                  ; $63ba: $11 $1c $0c
    inc e                                         ; $63bd: $1c
    inc e                                         ; $63be: $1c
    ld [hl], e                                    ; $63bf: $73
    inc e                                         ; $63c0: $1c
    halt                                          ; $63c1: $76
    ld [hl], c                                    ; $63c2: $71
    inc e                                         ; $63c3: $1c
    inc e                                         ; $63c4: $1c
    ld [hl], e                                    ; $63c5: $73
    ld bc, $0101                                  ; $63c6: $01 $01 $01
    ld bc, $0109                                  ; $63c9: $01 $09 $01
    add hl, bc                                    ; $63cc: $09
    ld bc, $0101                                  ; $63cd: $01 $01 $01
    ld bc, $0701                                  ; $63d0: $01 $01 $07
    ld bc, $0101                                  ; $63d3: $01 $01 $01
    jp nc, Jump_000_1110                          ; $63d6: $d2 $10 $11

    inc e                                         ; $63d9: $1c
    sub $14                                       ; $63da: $d6 $14
    dec d                                         ; $63dc: $15
    ld [de], a                                    ; $63dd: $12
    jp c, $1918                                   ; $63de: $da $18 $19

    ld e, $0f                                     ; $63e1: $1e $0f
    ccf                                           ; $63e3: $3f
    inc de                                        ; $63e4: $13
    inc e                                         ; $63e5: $1c
    add d                                         ; $63e6: $82
    and d                                         ; $63e7: $a2
    and d                                         ; $63e8: $a2
    ld bc, $a282                                  ; $63e9: $01 $82 $a2
    and d                                         ; $63ec: $a2
    add hl, bc                                    ; $63ed: $09
    add d                                         ; $63ee: $82
    and d                                         ; $63ef: $a2
    and d                                         ; $63f0: $a2
    add hl, bc                                    ; $63f1: $09
    inc hl                                        ; $63f2: $23
    add d                                         ; $63f3: $82
    add hl, bc                                    ; $63f4: $09
    ld bc, $1c11                                  ; $63f5: $01 $11 $1c
    ld l, h                                       ; $63f8: $6c
    ld h, a                                       ; $63f9: $67
    rra                                           ; $63fa: $1f
    ld [hl], e                                    ; $63fb: $73
    inc e                                         ; $63fc: $1c
    ld l, c                                       ; $63fd: $69
    inc e                                         ; $63fe: $1c
    inc e                                         ; $63ff: $1c
    ld h, d                                       ; $6400: $62
    ld l, d                                       ; $6401: $6a
    inc e                                         ; $6402: $1c
    inc e                                         ; $6403: $1c
    inc e                                         ; $6404: $1c
    ld h, a                                       ; $6405: $67
    add hl, bc                                    ; $6406: $09
    ld bc, $0101                                  ; $6407: $01 $01 $01
    add hl, bc                                    ; $640a: $09
    ld bc, $0101                                  ; $640b: $01 $01 $01
    ld bc, $0101                                  ; $640e: $01 $01 $01
    ld bc, $0101                                  ; $6411: $01 $01 $01
    ld bc, $6501                                  ; $6414: $01 $01 $65
    ld h, [hl]                                    ; $6417: $66
    ld l, e                                       ; $6418: $6b
    ld l, c                                       ; $6419: $69
    ld l, l                                       ; $641a: $6d
    ld l, b                                       ; $641b: $68
    ld h, l                                       ; $641c: $65
    ld l, d                                       ; $641d: $6a
    ld h, e                                       ; $641e: $63
    ld h, h                                       ; $641f: $64
    ld l, l                                       ; $6420: $6d
    ld l, b                                       ; $6421: $68
    ld h, l                                       ; $6422: $65
    ld h, [hl]                                    ; $6423: $66
    ld h, e                                       ; $6424: $63
    ld h, h                                       ; $6425: $64
    ld bc, $0101                                  ; $6426: $01 $01 $01
    ld bc, $0101                                  ; $6429: $01 $01 $01
    ld bc, $0101                                  ; $642c: $01 $01 $01
    ld bc, $0101                                  ; $642f: $01 $01 $01
    ld bc, $0101                                  ; $6432: $01 $01 $01
    ld bc, $1c1c                                  ; $6435: $01 $1c $1c
    ld l, $2f                                     ; $6438: $2e $2f
    ld h, d                                       ; $643a: $62
    inc e                                         ; $643b: $1c
    inc e                                         ; $643c: $1c
    inc e                                         ; $643d: $1c
    ld l, h                                       ; $643e: $6c
    ld h, a                                       ; $643f: $67
    ld h, d                                       ; $6440: $62
    inc e                                         ; $6441: $1c
    ld l, l                                       ; $6442: $6d
    ld l, c                                       ; $6443: $69
    ld l, h                                       ; $6444: $6c
    ld h, a                                       ; $6445: $67
    ld bc, $0101                                  ; $6446: $01 $01 $01
    ld bc, $0101                                  ; $6449: $01 $01 $01
    ld bc, $0101                                  ; $644c: $01 $01 $01
    ld bc, $0101                                  ; $644f: $01 $01 $01
    ld bc, $0101                                  ; $6452: $01 $01 $01
    ld bc, $41e1                                  ; $6455: $01 $e1 $41
    pop hl                                        ; $6458: $e1
    inc e                                         ; $6459: $1c
    inc c                                         ; $645a: $0c
    ret c                                         ; $645b: $d8

    db $e4                                        ; $645c: $e4
    inc e                                         ; $645d: $1c
    ld c, $dc                                     ; $645e: $0e $dc
    rst $20                                       ; $6460: $e7
    inc e                                         ; $6461: $1c
    rst $18                                       ; $6462: $df
    ldh [$ea], a                                  ; $6463: $e0 $ea
    ccf                                           ; $6465: $3f
    and d                                         ; $6466: $a2
    add d                                         ; $6467: $82
    add d                                         ; $6468: $82
    ld bc, $8282                                  ; $6469: $01 $82 $82
    add d                                         ; $646c: $82
    ld bc, $8282                                  ; $646d: $01 $82 $82
    add d                                         ; $6470: $82
    ld bc, $a2a2                                  ; $6471: $01 $a2 $a2
    and d                                         ; $6474: $a2
    add d                                         ; $6475: $82
    ld b, b                                       ; $6476: $40
    ld b, e                                       ; $6477: $43
    ld l, e                                       ; $6478: $6b
    ld l, c                                       ; $6479: $69
    ld b, d                                       ; $647a: $42
    ld b, l                                       ; $647b: $45
    inc e                                         ; $647c: $1c
    ld l, d                                       ; $647d: $6a
    inc e                                         ; $647e: $1c
    inc e                                         ; $647f: $1c
    inc e                                         ; $6480: $1c
    inc e                                         ; $6481: $1c
    inc e                                         ; $6482: $1c
    inc e                                         ; $6483: $1c
    inc e                                         ; $6484: $1c
    ld l, c                                       ; $6485: $69
    ld bc, $0101                                  ; $6486: $01 $01 $01
    ld bc, $0101                                  ; $6489: $01 $01 $01
    ld bc, $0101                                  ; $648c: $01 $01 $01
    ld bc, $0101                                  ; $648f: $01 $01 $01
    ld bc, $0101                                  ; $6492: $01 $01 $01
    ld bc, $686d                                  ; $6495: $01 $6d $68
    ld h, d                                       ; $6498: $62
    ld h, [hl]                                    ; $6499: $66
    ld h, e                                       ; $649a: $63
    ld h, h                                       ; $649b: $64
    ld l, h                                       ; $649c: $6c
    ld h, a                                       ; $649d: $67
    ld h, d                                       ; $649e: $62
    ld h, [hl]                                    ; $649f: $66
    ld h, e                                       ; $64a0: $63
    ld l, c                                       ; $64a1: $69
    ld l, h                                       ; $64a2: $6c
    ld l, b                                       ; $64a3: $68
    ld h, d                                       ; $64a4: $62
    ld l, d                                       ; $64a5: $6a
    ld bc, $0101                                  ; $64a6: $01 $01 $01
    ld bc, $0101                                  ; $64a9: $01 $01 $01
    ld bc, $0101                                  ; $64ac: $01 $01 $01
    ld bc, $0101                                  ; $64af: $01 $01 $01
    ld bc, $0101                                  ; $64b2: $01 $01 $01
    ld bc, $6463                                  ; $64b5: $01 $63 $64
    ld l, l                                       ; $64b8: $6d
    ld l, c                                       ; $64b9: $69
    ld h, l                                       ; $64ba: $65
    ld h, [hl]                                    ; $64bb: $66
    ld h, e                                       ; $64bc: $63
    ld h, h                                       ; $64bd: $64
    ld l, e                                       ; $64be: $6b
    ld l, b                                       ; $64bf: $68
    ld h, l                                       ; $64c0: $65
    ld h, [hl]                                    ; $64c1: $66
    inc e                                         ; $64c2: $1c
    ld l, d                                       ; $64c3: $6a
    ld l, e                                       ; $64c4: $6b
    ld l, b                                       ; $64c5: $68
    ld bc, $0101                                  ; $64c6: $01 $01 $01
    ld bc, $0101                                  ; $64c9: $01 $01 $01
    ld bc, $0101                                  ; $64cc: $01 $01 $01
    ld bc, $0101                                  ; $64cf: $01 $01 $01
    ld bc, $0101                                  ; $64d2: $01 $01 $01
    ld bc, $1ce1                                  ; $64d5: $01 $e1 $1c
    inc e                                         ; $64d8: $1c
    inc e                                         ; $64d9: $1c
    db $e4                                        ; $64da: $e4
    ld l, $2f                                     ; $64db: $2e $2f
    inc e                                         ; $64dd: $1c
    rst $20                                       ; $64de: $e7
    inc e                                         ; $64df: $1c
    inc e                                         ; $64e0: $1c
    ld l, c                                       ; $64e1: $69
    ld [$1cdd], a                                 ; $64e2: $ea $dd $1c
    ld [hl], c                                    ; $64e5: $71
    add d                                         ; $64e6: $82
    ld bc, $0101                                  ; $64e7: $01 $01 $01
    add d                                         ; $64ea: $82
    ld bc, $0101                                  ; $64eb: $01 $01 $01
    add d                                         ; $64ee: $82
    ld bc, $0101                                  ; $64ef: $01 $01 $01
    and d                                         ; $64f2: $a2
    add d                                         ; $64f3: $82
    ld bc, $6b07                                  ; $64f4: $01 $07 $6b
    ld h, h                                       ; $64f7: $64
    ld l, l                                       ; $64f8: $6d
    ld h, a                                       ; $64f9: $67
    ld h, d                                       ; $64fa: $62
    ld h, [hl]                                    ; $64fb: $66
    ld h, e                                       ; $64fc: $63
    ld h, h                                       ; $64fd: $64
    inc e                                         ; $64fe: $1c
    ld h, a                                       ; $64ff: $67
    ld h, l                                       ; $6500: $65
    ld l, d                                       ; $6501: $6a
    ld l, e                                       ; $6502: $6b
    ld l, c                                       ; $6503: $69
    ld l, l                                       ; $6504: $6d
    ld l, b                                       ; $6505: $68
    ld bc, $0101                                  ; $6506: $01 $01 $01
    ld bc, $0101                                  ; $6509: $01 $01 $01
    ld bc, $0101                                  ; $650c: $01 $01 $01
    ld bc, $0101                                  ; $650f: $01 $01 $01
    ld bc, $0101                                  ; $6512: $01 $01 $01
    ld bc, $1c1c                                  ; $6515: $01 $1c $1c
    ld a, $1c                                     ; $6518: $3e $1c
    ld l, e                                       ; $651a: $6b
    inc e                                         ; $651b: $1c
    inc e                                         ; $651c: $1c
    inc e                                         ; $651d: $1c
    ld h, e                                       ; $651e: $63
    ld l, d                                       ; $651f: $6a
    ld l, e                                       ; $6520: $6b
    ld l, c                                       ; $6521: $69
    ld l, h                                       ; $6522: $6c
    ld h, [hl]                                    ; $6523: $66
    ld h, d                                       ; $6524: $62
    ld l, d                                       ; $6525: $6a
    ld bc, $0101                                  ; $6526: $01 $01 $01
    ld bc, $0101                                  ; $6529: $01 $01 $01
    ld bc, $0101                                  ; $652c: $01 $01 $01
    ld bc, $0101                                  ; $652f: $01 $01 $01
    ld bc, $0101                                  ; $6532: $01 $01 $01
    ld bc, $e2e1                                  ; $6535: $01 $e1 $e2
    ld [hl], c                                    ; $6538: $71
    inc e                                         ; $6539: $1c
    inc e                                         ; $653a: $1c
    inc e                                         ; $653b: $1c
    inc e                                         ; $653c: $1c
    inc e                                         ; $653d: $1c
    inc e                                         ; $653e: $1c
    ld [de], a                                    ; $653f: $12
    inc de                                        ; $6540: $13
    ld [hl], e                                    ; $6541: $73
    ld de, $7576                                  ; $6542: $11 $76 $75
    ld e, $0b                                     ; $6545: $1e $0b
    dec bc                                        ; $6547: $0b
    rlca                                          ; $6548: $07
    ld bc, $0101                                  ; $6549: $01 $01 $01
    ld bc, $0101                                  ; $654c: $01 $01 $01
    add hl, bc                                    ; $654f: $09
    add hl, bc                                    ; $6550: $09
    ld bc, $0109                                  ; $6551: $01 $09 $01
    ld bc, $1c09                                  ; $6554: $01 $09 $1c
    ld [hl], e                                    ; $6557: $73
    ld de, $0c76                                  ; $6558: $11 $76 $0c
    ld [de], a                                    ; $655b: $12
    ld d, $74                                     ; $655c: $16 $74
    rra                                           ; $655e: $1f
    ld [hl], h                                    ; $655f: $74
    ld [hl], l                                    ; $6560: $75
    rla                                           ; $6561: $17
    ld d, $17                                     ; $6562: $16 $17
    ld de, $0176                                  ; $6564: $11 $76 $01
    ld bc, $0109                                  ; $6567: $01 $09 $01
    add hl, bc                                    ; $656a: $09
    add hl, bc                                    ; $656b: $09
    add hl, bc                                    ; $656c: $09
    ld bc, $0109                                  ; $656d: $01 $09 $01
    ld bc, $0909                                  ; $6570: $01 $09 $09
    add hl, bc                                    ; $6573: $09
    add hl, bc                                    ; $6574: $09
    ld bc, $1716                                  ; $6575: $01 $16 $17
    ld [hl], h                                    ; $6578: $74
    ld [hl], l                                    ; $6579: $75
    ld [hl], l                                    ; $657a: $75
    ld e, $17                                     ; $657b: $1e $17
    halt                                          ; $657d: $76
    rra                                           ; $657e: $1f
    ld [de], a                                    ; $657f: $12
    inc de                                        ; $6580: $13
    inc e                                         ; $6581: $1c
    ld de, $1c1c                                  ; $6582: $11 $1c $1c
    ld [de], a                                    ; $6585: $12
    add hl, bc                                    ; $6586: $09
    add hl, bc                                    ; $6587: $09
    ld bc, $0101                                  ; $6588: $01 $01 $01
    add hl, bc                                    ; $658b: $09
    add hl, bc                                    ; $658c: $09
    ld bc, $0909                                  ; $658d: $01 $09 $09
    add hl, bc                                    ; $6590: $09
    ld bc, $0109                                  ; $6591: $01 $09 $01
    ld bc, $1309                                  ; $6594: $01 $09 $13
    ld l, $2f                                     ; $6597: $2e $2f
    dec l                                         ; $6599: $2d
    inc e                                         ; $659a: $1c
    inc e                                         ; $659b: $1c
    inc e                                         ; $659c: $1c
    ld hl, $1c1c                                  ; $659d: $21 $1c $1c
    ld a, [hl+]                                   ; $65a0: $2a
    ld e, b                                       ; $65a1: $58
    inc de                                        ; $65a2: $13
    inc e                                         ; $65a3: $1c
    jr nz, jr_081_6601                            ; $65a4: $20 $5b

    add hl, bc                                    ; $65a6: $09
    ld bc, $4301                                  ; $65a7: $01 $01 $43
    ld bc, $0101                                  ; $65aa: $01 $01 $01
    ld c, e                                       ; $65ad: $4b
    ld bc, $6b01                                  ; $65ae: $01 $01 $6b
    inc bc                                        ; $65b1: $03
    add hl, bc                                    ; $65b2: $09
    ld bc, $030b                                  ; $65b3: $01 $0b $03
    inc e                                         ; $65b6: $1c
    ld [hl], e                                    ; $65b7: $73
    ld de, $1c76                                  ; $65b8: $11 $76 $1c
    inc e                                         ; $65bb: $1c
    ld a, $1c                                     ; $65bc: $3e $1c
    inc e                                         ; $65be: $1c
    inc e                                         ; $65bf: $1c
    inc e                                         ; $65c0: $1c
    ld [hl], c                                    ; $65c1: $71
    ld h, d                                       ; $65c2: $62
    inc e                                         ; $65c3: $1c
    ld h, d                                       ; $65c4: $62
    inc e                                         ; $65c5: $1c
    ld bc, $0901                                  ; $65c6: $01 $01 $09
    ld bc, $0101                                  ; $65c9: $01 $01 $01
    ld bc, $0101                                  ; $65cc: $01 $01 $01
    ld bc, $0701                                  ; $65cf: $01 $01 $07
    ld bc, $0101                                  ; $65d2: $01 $01 $01
    ld bc, $120c                                  ; $65d5: $01 $0c $12
    inc de                                        ; $65d8: $13
    ld [hl], e                                    ; $65d9: $73
    inc e                                         ; $65da: $1c
    inc e                                         ; $65db: $1c
    inc e                                         ; $65dc: $1c
    inc e                                         ; $65dd: $1c
    inc e                                         ; $65de: $1c
    ld l, $2f                                     ; $65df: $2e $2f
    inc e                                         ; $65e1: $1c
    ld l, e                                       ; $65e2: $6b
    inc e                                         ; $65e3: $1c
    inc e                                         ; $65e4: $1c
    inc e                                         ; $65e5: $1c
    add hl, bc                                    ; $65e6: $09
    add hl, bc                                    ; $65e7: $09
    add hl, bc                                    ; $65e8: $09
    ld bc, $0101                                  ; $65e9: $01 $01 $01
    ld bc, $0101                                  ; $65ec: $01 $01 $01
    ld bc, $0101                                  ; $65ef: $01 $01 $01
    ld bc, $0101                                  ; $65f2: $01 $01 $01
    ld bc, $1c1c                                  ; $65f5: $01 $1c $1c
    ld de, $1c76                                  ; $65f8: $11 $76 $1c
    ld [de], a                                    ; $65fb: $12
    inc de                                        ; $65fc: $13
    inc e                                         ; $65fd: $1c
    ld de, $1c1c                                  ; $65fe: $11 $1c $1c

jr_081_6601:
    inc e                                         ; $6601: $1c
    inc e                                         ; $6602: $1c
    inc e                                         ; $6603: $1c
    inc e                                         ; $6604: $1c
    inc e                                         ; $6605: $1c
    ld bc, $0901                                  ; $6606: $01 $01 $09

jr_081_6609:
    ld bc, $0901                                  ; $6609: $01 $01 $09
    add hl, bc                                    ; $660c: $09
    ld bc, $0109                                  ; $660d: $01 $09 $01
    ld bc, $0101                                  ; $6610: $01 $01 $01
    ld bc, $0101                                  ; $6613: $01 $01 $01
    inc e                                         ; $6616: $1c
    dec l                                         ; $6617: $2d
    db $e4                                        ; $6618: $e4
    rst $20                                       ; $6619: $e7
    inc e                                         ; $661a: $1c
    ld hl, $3736                                  ; $661b: $21 $36 $37
    ld a, [hl+]                                   ; $661e: $2a
    ret                                           ; $661f: $c9


    ld d, a                                       ; $6620: $57
    ld e, b                                       ; $6621: $58
    jr nz, jr_081_6609                            ; $6622: $20 $e5

    ld e, d                                       ; $6624: $5a
    rlc c                                         ; $6625: $cb $01
    ld b, e                                       ; $6627: $43
    dec bc                                        ; $6628: $0b
    dec bc                                        ; $6629: $0b
    ld bc, $034b                                  ; $662a: $01 $4b $03
    inc bc                                        ; $662d: $03
    ld l, e                                       ; $662e: $6b
    dec bc                                        ; $662f: $0b
    inc bc                                        ; $6630: $03
    inc bc                                        ; $6631: $03
    dec bc                                        ; $6632: $0b
    dec bc                                        ; $6633: $0b
    inc bc                                        ; $6634: $03
    dec bc                                        ; $6635: $0b
    ld l, h                                       ; $6636: $6c
    ld h, a                                       ; $6637: $67
    inc e                                         ; $6638: $1c
    ld h, a                                       ; $6639: $67
    ld l, l                                       ; $663a: $6d
    ld l, c                                       ; $663b: $69
    ld l, e                                       ; $663c: $6b
    ld l, c                                       ; $663d: $69
    ld h, e                                       ; $663e: $63
    ld h, h                                       ; $663f: $64
    ld h, d                                       ; $6640: $62
    ld l, d                                       ; $6641: $6a
    ld h, l                                       ; $6642: $65
    ld h, [hl]                                    ; $6643: $66
    ld h, e                                       ; $6644: $63
    ld h, h                                       ; $6645: $64
    ld bc, $0101                                  ; $6646: $01 $01 $01
    ld bc, $0101                                  ; $6649: $01 $01 $01
    ld bc, $0101                                  ; $664c: $01 $01 $01
    ld bc, $0101                                  ; $664f: $01 $01 $01
    ld bc, $0101                                  ; $6652: $01 $01 $01
    ld bc, $6a1c                                  ; $6655: $01 $1c $6a
    inc e                                         ; $6658: $1c
    ld l, c                                       ; $6659: $69
    ld l, h                                       ; $665a: $6c
    ld h, a                                       ; $665b: $67
    ld h, d                                       ; $665c: $62
    ld l, d                                       ; $665d: $6a
    ld h, l                                       ; $665e: $65
    ld l, c                                       ; $665f: $69
    ld h, e                                       ; $6660: $63
    ld h, a                                       ; $6661: $67
    ld l, l                                       ; $6662: $6d
    ld l, b                                       ; $6663: $68
    ld l, e                                       ; $6664: $6b
    inc e                                         ; $6665: $1c
    ld bc, $0101                                  ; $6666: $01 $01 $01
    ld bc, $0101                                  ; $6669: $01 $01 $01
    ld bc, $0101                                  ; $666c: $01 $01 $01
    ld bc, $0101                                  ; $666f: $01 $01 $01
    ld bc, $0101                                  ; $6672: $01 $01 $01
    ld bc, $691c                                  ; $6675: $01 $1c $69
    ld l, h                                       ; $6678: $6c
    add hl, hl                                    ; $6679: $29
    ld h, d                                       ; $667a: $62
    ld l, d                                       ; $667b: $6a
    inc e                                         ; $667c: $1c
    inc l                                         ; $667d: $2c
    inc e                                         ; $667e: $1c
    inc e                                         ; $667f: $1c
    inc e                                         ; $6680: $1c
    dec hl                                        ; $6681: $2b
    inc d                                         ; $6682: $14
    inc e                                         ; $6683: $1c
    add hl, hl                                    ; $6684: $29
    ld e, e                                       ; $6685: $5b
    ld bc, $0101                                  ; $6686: $01 $01 $01
    dec bc                                        ; $6689: $0b
    ld bc, $0101                                  ; $668a: $01 $01 $01
    ld l, e                                       ; $668d: $6b
    ld bc, $0101                                  ; $668e: $01 $01 $01
    ld l, e                                       ; $6691: $6b
    dec bc                                        ; $6692: $0b
    ld bc, $030b                                  ; $6693: $01 $0b $03
    ld d, h                                       ; $6696: $54
    ld d, l                                       ; $6697: $55
    ld e, [hl]                                    ; $6698: $5e
    ld e, a                                       ; $6699: $5f
    and $35                                       ; $669a: $e6 $35
    ld [hl], $37                                  ; $669c: $36 $37
    add sp, -$37                                  ; $669e: $e8 $c9
    ld d, a                                       ; $66a0: $57
    ld e, b                                       ; $66a1: $58
    jp z, Jump_081_5ae5                           ; $66a2: $ca $e5 $5a

    ld e, e                                       ; $66a5: $5b
    inc bc                                        ; $66a6: $03
    inc bc                                        ; $66a7: $03
    inc bc                                        ; $66a8: $03
    inc bc                                        ; $66a9: $03
    dec bc                                        ; $66aa: $0b
    inc bc                                        ; $66ab: $03
    inc bc                                        ; $66ac: $03
    inc bc                                        ; $66ad: $03
    dec bc                                        ; $66ae: $0b
    dec bc                                        ; $66af: $0b
    inc bc                                        ; $66b0: $03
    inc bc                                        ; $66b1: $03
    dec bc                                        ; $66b2: $0b
    dec bc                                        ; $66b3: $0b
    inc bc                                        ; $66b4: $03
    inc bc                                        ; $66b5: $03
    ld l, e                                       ; $66b6: $6b
    ld l, c                                       ; $66b7: $69
    ld h, l                                       ; $66b8: $65
    ld h, [hl]                                    ; $66b9: $66
    ld h, d                                       ; $66ba: $62
    ld l, d                                       ; $66bb: $6a
    ld l, l                                       ; $66bc: $6d
    ld l, b                                       ; $66bd: $68
    ld l, h                                       ; $66be: $6c
    ld h, [hl]                                    ; $66bf: $66
    ld h, e                                       ; $66c0: $63
    ld h, a                                       ; $66c1: $67
    ld l, l                                       ; $66c2: $6d
    ld l, b                                       ; $66c3: $68
    ld l, e                                       ; $66c4: $6b
    ld l, c                                       ; $66c5: $69
    ld bc, $0101                                  ; $66c6: $01 $01 $01
    ld bc, $0101                                  ; $66c9: $01 $01 $01
    ld bc, $0101                                  ; $66cc: $01 $01 $01
    ld bc, $0101                                  ; $66cf: $01 $01 $01
    ld bc, $0101                                  ; $66d2: $01 $01 $01
    ld bc, $6763                                  ; $66d5: $01 $63 $67
    ld b, b                                       ; $66d8: $40
    ld b, e                                       ; $66d9: $43
    ld l, e                                       ; $66da: $6b
    inc e                                         ; $66db: $1c
    ld b, d                                       ; $66dc: $42
    ld b, l                                       ; $66dd: $45
    ld h, d                                       ; $66de: $62
    inc e                                         ; $66df: $1c
    inc e                                         ; $66e0: $1c
    ld [de], a                                    ; $66e1: $12
    inc e                                         ; $66e2: $1c
    ld h, a                                       ; $66e3: $67
    ld de, $011c                                  ; $66e4: $11 $1c $01
    ld bc, $0101                                  ; $66e7: $01 $01 $01
    ld bc, $0101                                  ; $66ea: $01 $01 $01
    ld bc, $0101                                  ; $66ed: $01 $01 $01
    ld bc, $0109                                  ; $66f0: $01 $09 $01
    ld bc, $0109                                  ; $66f3: $01 $09 $01
    dec d                                         ; $66f6: $15
    inc e                                         ; $66f7: $1c
    inc l                                         ; $66f8: $2c
    ld e, a                                       ; $66f9: $5f
    inc e                                         ; $66fa: $1c
    inc e                                         ; $66fb: $1c
    dec hl                                        ; $66fc: $2b
    scf                                           ; $66fd: $37
    inc e                                         ; $66fe: $1c
    add hl, hl                                    ; $66ff: $29
    ld d, a                                       ; $6700: $57
    ld e, b                                       ; $6701: $58
    inc e                                         ; $6702: $1c
    inc l                                         ; $6703: $2c
    ld e, d                                       ; $6704: $5a
    ld e, e                                       ; $6705: $5b
    dec bc                                        ; $6706: $0b
    ld bc, $036b                                  ; $6707: $01 $6b $03
    ld bc, $6b01                                  ; $670a: $01 $01 $6b
    inc bc                                        ; $670d: $03
    ld bc, $030b                                  ; $670e: $01 $0b $03
    inc bc                                        ; $6711: $03
    ld bc, $036b                                  ; $6712: $01 $6b $03
    inc bc                                        ; $6715: $03
    ld d, h                                       ; $6716: $54
    ld d, l                                       ; $6717: $55
    ld e, [hl]                                    ; $6718: $5e
    dec hl                                        ; $6719: $2b
    inc [hl]                                      ; $671a: $34
    dec [hl]                                      ; $671b: $35
    ld [hl], $2c                                  ; $671c: $36 $2c
    add sp, -$37                                  ; $671e: $e8 $c9
    ld d, a                                       ; $6720: $57
    add hl, hl                                    ; $6721: $29
    and $e5                                       ; $6722: $e6 $e5
    dec hl                                        ; $6724: $2b
    inc e                                         ; $6725: $1c
    inc bc                                        ; $6726: $03
    inc bc                                        ; $6727: $03
    inc bc                                        ; $6728: $03
    dec bc                                        ; $6729: $0b
    inc bc                                        ; $672a: $03
    inc bc                                        ; $672b: $03
    inc bc                                        ; $672c: $03
    dec bc                                        ; $672d: $0b
    dec bc                                        ; $672e: $0b
    dec bc                                        ; $672f: $0b
    inc bc                                        ; $6730: $03
    ld l, e                                       ; $6731: $6b
    dec bc                                        ; $6732: $0b
    dec bc                                        ; $6733: $0b
    dec bc                                        ; $6734: $0b
    ld bc, $5554                                  ; $6735: $01 $54 $55
    ld e, [hl]                                    ; $6738: $5e
    ld e, a                                       ; $6739: $5f
    inc [hl]                                      ; $673a: $34
    and $36                                       ; $673b: $e6 $36
    scf                                           ; $673d: $37
    add sp, -$37                                  ; $673e: $e8 $c9
    ld d, a                                       ; $6740: $57
    ld e, b                                       ; $6741: $58
    jp z, Jump_081_5ae5                           ; $6742: $ca $e5 $5a

    ld e, e                                       ; $6745: $5b
    inc bc                                        ; $6746: $03
    inc bc                                        ; $6747: $03
    inc bc                                        ; $6748: $03
    inc bc                                        ; $6749: $03
    inc bc                                        ; $674a: $03
    dec bc                                        ; $674b: $0b
    inc bc                                        ; $674c: $03
    inc bc                                        ; $674d: $03
    dec bc                                        ; $674e: $0b
    dec bc                                        ; $674f: $0b
    inc bc                                        ; $6750: $03
    inc bc                                        ; $6751: $03
    dec bc                                        ; $6752: $0b
    dec bc                                        ; $6753: $0b
    inc bc                                        ; $6754: $03
    inc bc                                        ; $6755: $03
    ld d, h                                       ; $6756: $54
    jr nz, @+$1e                                  ; $6757: $20 $1c

    ld l, c                                       ; $6759: $69
    inc [hl]                                      ; $675a: $34
    ld a, [hl+]                                   ; $675b: $2a
    inc e                                         ; $675c: $1c
    ld l, d                                       ; $675d: $6a
    ld hl, $401c                                  ; $675e: $21 $1c $40
    ld b, e                                       ; $6761: $43
    dec l                                         ; $6762: $2d
    inc e                                         ; $6763: $1c
    ld b, d                                       ; $6764: $42
    ld b, l                                       ; $6765: $45
    inc bc                                        ; $6766: $03
    ld l, e                                       ; $6767: $6b
    ld bc, $0301                                  ; $6768: $01 $01 $03
    dec bc                                        ; $676b: $0b
    ld bc, $2b01                                  ; $676c: $01 $01 $2b
    ld bc, $0101                                  ; $676f: $01 $01 $01
    inc hl                                        ; $6772: $23
    ld bc, $0101                                  ; $6773: $01 $01 $01
    ld h, h                                       ; $6776: $64
    ld l, l                                       ; $6777: $6d
    ld l, b                                       ; $6778: $68
    ld h, l                                       ; $6779: $65
    ld l, e                                       ; $677a: $6b
    ld l, c                                       ; $677b: $69
    ld h, h                                       ; $677c: $64
    ld l, l                                       ; $677d: $6d
    inc e                                         ; $677e: $1c
    ld l, d                                       ; $677f: $6a
    ld l, e                                       ; $6780: $6b
    ld l, c                                       ; $6781: $69
    inc e                                         ; $6782: $1c
    inc e                                         ; $6783: $1c
    inc e                                         ; $6784: $1c
    ld l, d                                       ; $6785: $6a
    ld bc, $0101                                  ; $6786: $01 $01 $01
    ld bc, $0101                                  ; $6789: $01 $01 $01
    ld bc, $0101                                  ; $678c: $01 $01 $01
    ld bc, $0101                                  ; $678f: $01 $01 $01
    ld bc, $0101                                  ; $6792: $01 $01 $01
    ld bc, $696b                                  ; $6795: $01 $6b $69
    inc e                                         ; $6798: $1c
    inc e                                         ; $6799: $1c
    ld l, b                                       ; $679a: $68
    ld l, d                                       ; $679b: $6a
    ld l, e                                       ; $679c: $6b
    inc e                                         ; $679d: $1c
    ld h, h                                       ; $679e: $64
    ld l, l                                       ; $679f: $6d
    ld h, d                                       ; $67a0: $62
    inc e                                         ; $67a1: $1c
    ld l, e                                       ; $67a2: $6b
    ld h, e                                       ; $67a3: $63
    ld l, h                                       ; $67a4: $6c
    ld h, a                                       ; $67a5: $67
    ld bc, $0101                                  ; $67a6: $01 $01 $01
    ld bc, $0101                                  ; $67a9: $01 $01 $01
    ld bc, $0101                                  ; $67ac: $01 $01 $01
    ld bc, $0101                                  ; $67af: $01 $01 $01
    ld bc, $0101                                  ; $67b2: $01 $01 $01
    ld bc, $5554                                  ; $67b5: $01 $54 $55
    ld e, [hl]                                    ; $67b8: $5e
    jr nz, jr_081_67ef                            ; $67b9: $20 $34

    dec [hl]                                      ; $67bb: $35
    ld [hl], $2a                                  ; $67bc: $36 $2a
    add sp, -$37                                  ; $67be: $e8 $c9
    ld hl, $cc6e                                  ; $67c0: $21 $6e $cc
    push hl                                       ; $67c3: $e5
    dec l                                         ; $67c4: $2d
    ld l, a                                       ; $67c5: $6f
    inc bc                                        ; $67c6: $03
    inc bc                                        ; $67c7: $03
    inc bc                                        ; $67c8: $03
    ld l, e                                       ; $67c9: $6b
    inc bc                                        ; $67ca: $03
    inc bc                                        ; $67cb: $03
    inc bc                                        ; $67cc: $03
    dec bc                                        ; $67cd: $0b
    dec bc                                        ; $67ce: $0b
    dec bc                                        ; $67cf: $0b
    dec hl                                        ; $67d0: $2b
    add d                                         ; $67d1: $82
    dec bc                                        ; $67d2: $0b
    dec bc                                        ; $67d3: $0b
    inc hl                                        ; $67d4: $23
    add d                                         ; $67d5: $82
    inc e                                         ; $67d6: $1c
    inc e                                         ; $67d7: $1c
    inc e                                         ; $67d8: $1c
    inc e                                         ; $67d9: $1c
    or l                                          ; $67da: $b5
    or [hl]                                       ; $67db: $b6
    or a                                          ; $67dc: $b7
    cp b                                          ; $67dd: $b8
    cp c                                          ; $67de: $b9
    cp d                                          ; $67df: $ba
    cp e                                          ; $67e0: $bb
    cp h                                          ; $67e1: $bc
    cp l                                          ; $67e2: $bd
    cp [hl]                                       ; $67e3: $be
    cp a                                          ; $67e4: $bf
    ret nz                                        ; $67e5: $c0

    ld bc, $0101                                  ; $67e6: $01 $01 $01
    ld bc, $8a8a                                  ; $67e9: $01 $8a $8a
    adc d                                         ; $67ec: $8a
    adc d                                         ; $67ed: $8a
    adc d                                         ; $67ee: $8a

jr_081_67ef:
    adc d                                         ; $67ef: $8a
    adc d                                         ; $67f0: $8a
    adc d                                         ; $67f1: $8a
    adc d                                         ; $67f2: $8a
    adc d                                         ; $67f3: $8a
    adc d                                         ; $67f4: $8a
    adc d                                         ; $67f5: $8a
    inc e                                         ; $67f6: $1c
    inc e                                         ; $67f7: $1c
    inc e                                         ; $67f8: $1c
    inc e                                         ; $67f9: $1c
    inc e                                         ; $67fa: $1c
    inc e                                         ; $67fb: $1c
    ld l, e                                       ; $67fc: $6b
    inc e                                         ; $67fd: $1c
    push bc                                       ; $67fe: $c5
    inc e                                         ; $67ff: $1c
    inc e                                         ; $6800: $1c
    ld l, d                                       ; $6801: $6a
    add $1c                                       ; $6802: $c6 $1c
    inc e                                         ; $6804: $1c
    ld h, a                                       ; $6805: $67
    ld bc, $0101                                  ; $6806: $01 $01 $01
    ld bc, $0101                                  ; $6809: $01 $01 $01
    ld bc, $8a01                                  ; $680c: $01 $01 $8a
    ld bc, $0101                                  ; $680f: $01 $01 $01
    adc d                                         ; $6812: $8a
    ld bc, $0101                                  ; $6813: $01 $01 $01
    ld h, d                                       ; $6816: $62
    ld l, d                                       ; $6817: $6a
    ld h, h                                       ; $6818: $64
    ld l, c                                       ; $6819: $69
    inc e                                         ; $681a: $1c
    ld h, a                                       ; $681b: $67
    ld h, d                                       ; $681c: $62
    ld l, d                                       ; $681d: $6a
    inc e                                         ; $681e: $1c
    inc e                                         ; $681f: $1c
    inc e                                         ; $6820: $1c
    ld h, a                                       ; $6821: $67
    ld h, d                                       ; $6822: $62
    inc e                                         ; $6823: $1c
    inc e                                         ; $6824: $1c
    ld l, c                                       ; $6825: $69
    ld bc, $0101                                  ; $6826: $01 $01 $01
    ld bc, $0101                                  ; $6829: $01 $01 $01
    ld bc, $0101                                  ; $682c: $01 $01 $01
    ld bc, $0101                                  ; $682f: $01 $01 $01
    ld bc, $0101                                  ; $6832: $01 $01 $01
    ld bc, $2054                                  ; $6835: $01 $54 $20
    inc e                                         ; $6838: $1c
    ld [hl], b                                    ; $6839: $70
    inc [hl]                                      ; $683a: $34
    ld a, [hl+]                                   ; $683b: $2a
    inc e                                         ; $683c: $1c
    ld [hl], d                                    ; $683d: $72
    ld hl, $4340                                  ; $683e: $21 $40 $43
    inc e                                         ; $6841: $1c
    dec l                                         ; $6842: $2d
    ld b, d                                       ; $6843: $42
    ld b, l                                       ; $6844: $45
    inc e                                         ; $6845: $1c
    inc bc                                        ; $6846: $03
    ld l, e                                       ; $6847: $6b
    ld bc, $0382                                  ; $6848: $01 $82 $03
    dec bc                                        ; $684b: $0b
    ld bc, $2b82                                  ; $684c: $01 $82 $2b
    ld bc, $0101                                  ; $684f: $01 $01 $01
    inc hl                                        ; $6852: $23
    ld bc, $0101                                  ; $6853: $01 $01 $01
    pop bc                                        ; $6856: $c1
    jp nz, $c4c3                                  ; $6857: $c2 $c3 $c4

    db $db                                        ; $685a: $db
    call c, $dedd                                 ; $685b: $dc $dd $de
    inc e                                         ; $685e: $1c
    rst $18                                       ; $685f: $df
    ldh [rNR32], a                                ; $6860: $e0 $1c
    inc e                                         ; $6862: $1c
    pop hl                                        ; $6863: $e1
    ld [c], a                                     ; $6864: $e2
    inc de                                        ; $6865: $13
    adc d                                         ; $6866: $8a

Jump_081_6867:
    adc d                                         ; $6867: $8a
    adc d                                         ; $6868: $8a
    adc d                                         ; $6869: $8a
    adc d                                         ; $686a: $8a
    adc d                                         ; $686b: $8a
    adc d                                         ; $686c: $8a
    adc d                                         ; $686d: $8a
    ld bc, $0b0b                                  ; $686e: $01 $0b $0b
    ld bc, $0b01                                  ; $6871: $01 $01 $0b
    dec bc                                        ; $6874: $0b
    add hl, bc                                    ; $6875: $09
    rst $00                                       ; $6876: $c7
    inc e                                         ; $6877: $1c
    inc e                                         ; $6878: $1c
    ld l, c                                       ; $6879: $69
    db $e3                                        ; $687a: $e3
    inc e                                         ; $687b: $1c
    ld [hl], c                                    ; $687c: $71
    inc e                                         ; $687d: $1c
    inc e                                         ; $687e: $1c
    inc e                                         ; $687f: $1c
    inc e                                         ; $6880: $1c
    inc de                                        ; $6881: $13
    ld [hl], e                                    ; $6882: $73
    ld de, $7476                                  ; $6883: $11 $76 $74
    adc d                                         ; $6886: $8a
    ld bc, $0101                                  ; $6887: $01 $01 $01
    adc d                                         ; $688a: $8a
    ld bc, $0107                                  ; $688b: $01 $07 $01
    ld bc, $0101                                  ; $688e: $01 $01 $01
    add hl, bc                                    ; $6891: $09
    ld bc, $0109                                  ; $6892: $01 $09 $01
    ld bc, $2e1c                                  ; $6895: $01 $1c $2e
    cpl                                           ; $6898: $2f
    inc e                                         ; $6899: $1c
    inc e                                         ; $689a: $1c
    inc e                                         ; $689b: $1c
    inc e                                         ; $689c: $1c
    ld h, a                                       ; $689d: $67
    ld [hl], e                                    ; $689e: $73
    inc e                                         ; $689f: $1c
    ld l, e                                       ; $68a0: $6b
    ld l, c                                       ; $68a1: $69
    ld [de], a                                    ; $68a2: $12
    inc e                                         ; $68a3: $1c
    ld h, d                                       ; $68a4: $62
    ld h, e                                       ; $68a5: $63
    ld bc, $0101                                  ; $68a6: $01 $01 $01
    ld bc, $0101                                  ; $68a9: $01 $01 $01
    ld bc, $0101                                  ; $68ac: $01 $01 $01
    ld bc, $0101                                  ; $68af: $01 $01 $01
    add hl, bc                                    ; $68b2: $09
    ld bc, $0101                                  ; $68b3: $01 $01 $01
    inc e                                         ; $68b6: $1c
    inc e                                         ; $68b7: $1c
    inc e                                         ; $68b8: $1c
    ld de, $1c1c                                  ; $68b9: $11 $1c $1c
    ld [de], a                                    ; $68bc: $12
    ld e, $1c                                     ; $68bd: $1e $1c
    ld de, $741f                                  ; $68bf: $11 $1f $74
    ld [de], a                                    ; $68c2: $12
    ld e, $16                                     ; $68c3: $1e $16
    ld de, $0101                                  ; $68c5: $11 $01 $01
    ld bc, $0109                                  ; $68c8: $01 $09 $01
    ld bc, $0909                                  ; $68cb: $01 $09 $09
    ld bc, $0909                                  ; $68ce: $01 $09 $09
    ld bc, $0909                                  ; $68d1: $01 $09 $09
    add hl, bc                                    ; $68d4: $09
    add hl, bc                                    ; $68d5: $09
    halt                                          ; $68d6: $76
    ld [hl], h                                    ; $68d7: $74
    ld [hl], l                                    ; $68d8: $75
    ld e, $16                                     ; $68d9: $1e $16
    rla                                           ; $68db: $17
    rra                                           ; $68dc: $1f
    ld de, $1e75                                  ; $68dd: $11 $75 $1e
    ld [hl], e                                    ; $68e0: $73
    inc e                                         ; $68e1: $1c
    rra                                           ; $68e2: $1f
    inc c                                         ; $68e3: $0c
    inc e                                         ; $68e4: $1c
    ld l, c                                       ; $68e5: $69
    ld bc, $0101                                  ; $68e6: $01 $01 $01
    add hl, bc                                    ; $68e9: $09
    add hl, bc                                    ; $68ea: $09
    add hl, bc                                    ; $68eb: $09
    add hl, bc                                    ; $68ec: $09
    add hl, bc                                    ; $68ed: $09
    ld bc, $0109                                  ; $68ee: $01 $09 $01
    ld bc, $0909                                  ; $68f1: $01 $09 $09
    ld bc, $1601                                  ; $68f4: $01 $01 $16
    inc de                                        ; $68f7: $13
    rra                                           ; $68f8: $1f
    ld de, $0c76                                  ; $68f9: $11 $76 $0c
    ld [de], a                                    ; $68fc: $12
    inc e                                         ; $68fd: $1c
    inc e                                         ; $68fe: $1c
    inc e                                         ; $68ff: $1c
    ld a, $1c                                     ; $6900: $3e $1c
    inc e                                         ; $6902: $1c
    ld a, $1c                                     ; $6903: $3e $1c
    ld l, d                                       ; $6905: $6a
    add hl, bc                                    ; $6906: $09
    add hl, bc                                    ; $6907: $09
    add hl, bc                                    ; $6908: $09
    add hl, bc                                    ; $6909: $09
    ld bc, $0909                                  ; $690a: $01 $09 $09
    ld bc, $0101                                  ; $690d: $01 $01 $01
    ld bc, $0101                                  ; $6910: $01 $01 $01
    ld bc, $0101                                  ; $6913: $01 $01 $01
    inc e                                         ; $6916: $1c
    ld l, c                                       ; $6917: $69
    ld l, h                                       ; $6918: $6c
    ld h, l                                       ; $6919: $65
    inc e                                         ; $691a: $1c
    ld l, d                                       ; $691b: $6a
    ld h, h                                       ; $691c: $64
    ld l, l                                       ; $691d: $6d
    ld l, h                                       ; $691e: $6c
    ld h, a                                       ; $691f: $67
    ld h, [hl]                                    ; $6920: $66
    ld h, e                                       ; $6921: $63
    ld l, e                                       ; $6922: $6b
    ld l, l                                       ; $6923: $6d
    ld l, b                                       ; $6924: $68
    ld h, a                                       ; $6925: $67
    ld bc, $0101                                  ; $6926: $01 $01 $01
    ld bc, $0101                                  ; $6929: $01 $01 $01
    ld bc, $0101                                  ; $692c: $01 $01 $01
    ld bc, $0101                                  ; $692f: $01 $01 $01
    ld bc, $0101                                  ; $6932: $01 $01 $01
    ld bc, $6f3e                                  ; $6935: $01 $3e $6f
    cp l                                          ; $6938: $bd
    cp [hl]                                       ; $6939: $be
    inc e                                         ; $693a: $1c
    ld [hl], b                                    ; $693b: $70
    pop bc                                        ; $693c: $c1
    jp nz, Jump_081_721c                          ; $693d: $c2 $1c $72

    db $db                                        ; $6940: $db
    call c, Call_000_1c1c                         ; $6941: $dc $1c $1c
    inc e                                         ; $6944: $1c
    rst $18                                       ; $6945: $df
    ld bc, $8a82                                  ; $6946: $01 $82 $8a
    adc d                                         ; $6949: $8a
    ld bc, $8a82                                  ; $694a: $01 $82 $8a
    adc d                                         ; $694d: $8a
    ld bc, $8a82                                  ; $694e: $01 $82 $8a
    adc d                                         ; $6951: $8a
    ld bc, $0101                                  ; $6952: $01 $01 $01
    dec bc                                        ; $6955: $0b
    cp a                                          ; $6956: $bf
    ret nz                                        ; $6957: $c0

    add $1c                                       ; $6958: $c6 $1c
    jp $c7c4                                      ; $695a: $c3 $c4 $c7


    inc e                                         ; $695d: $1c
    db $dd                                        ; $695e: $dd
    sbc $e3                                       ; $695f: $de $e3
    inc e                                         ; $6961: $1c
    ldh [rNR32], a                                ; $6962: $e0 $1c
    inc e                                         ; $6964: $1c
    inc e                                         ; $6965: $1c
    adc d                                         ; $6966: $8a
    adc d                                         ; $6967: $8a
    adc d                                         ; $6968: $8a
    ld bc, $8a8a                                  ; $6969: $01 $8a $8a
    adc d                                         ; $696c: $8a
    ld bc, $8a8a                                  ; $696d: $01 $8a $8a
    adc d                                         ; $6970: $8a
    ld bc, $010b                                  ; $6971: $01 $0b $01
    ld bc, $3e01                                  ; $6974: $01 $01 $3e
    inc e                                         ; $6977: $1c
    ld [hl], c                                    ; $6978: $71
    inc e                                         ; $6979: $1c
    inc e                                         ; $697a: $1c
    inc e                                         ; $697b: $1c
    inc e                                         ; $697c: $1c
    inc e                                         ; $697d: $1c
    inc e                                         ; $697e: $1c
    ld a, $1c                                     ; $697f: $3e $1c
    inc e                                         ; $6981: $1c
    ld [hl], c                                    ; $6982: $71
    inc e                                         ; $6983: $1c
    inc e                                         ; $6984: $1c
    inc e                                         ; $6985: $1c
    ld bc, $0701                                  ; $6986: $01 $01 $07
    ld bc, $0101                                  ; $6989: $01 $01 $01
    ld bc, $0101                                  ; $698c: $01 $01 $01
    ld bc, $0101                                  ; $698f: $01 $01 $01
    rlca                                          ; $6992: $07
    ld bc, $0101                                  ; $6993: $01 $01 $01
    inc e                                         ; $6996: $1c
    inc e                                         ; $6997: $1c
    inc e                                         ; $6998: $1c
    pop hl                                        ; $6999: $e1
    inc e                                         ; $699a: $1c
    ld a, $1c                                     ; $699b: $3e $1c
    inc e                                         ; $699d: $1c
    inc e                                         ; $699e: $1c
    inc e                                         ; $699f: $1c
    inc e                                         ; $69a0: $1c
    inc e                                         ; $69a1: $1c
    ld l, h                                       ; $69a2: $6c
    inc e                                         ; $69a3: $1c
    ld [hl], c                                    ; $69a4: $71
    inc e                                         ; $69a5: $1c
    ld bc, $0101                                  ; $69a6: $01 $01 $01
    dec bc                                        ; $69a9: $0b
    ld bc, $0101                                  ; $69aa: $01 $01 $01
    ld bc, $0101                                  ; $69ad: $01 $01 $01
    ld bc, $0101                                  ; $69b0: $01 $01 $01
    ld bc, $0107                                  ; $69b3: $01 $07 $01
    ld [c], a                                     ; $69b6: $e2
    inc e                                         ; $69b7: $1c
    inc e                                         ; $69b8: $1c
    inc e                                         ; $69b9: $1c
    ld b, b                                       ; $69ba: $40
    ld b, e                                       ; $69bb: $43
    inc e                                         ; $69bc: $1c
    inc e                                         ; $69bd: $1c
    ld b, d                                       ; $69be: $42
    ld b, l                                       ; $69bf: $45
    inc e                                         ; $69c0: $1c
    or l                                          ; $69c1: $b5
    inc e                                         ; $69c2: $1c
    inc e                                         ; $69c3: $1c
    ld l, [hl]                                    ; $69c4: $6e
    cp c                                          ; $69c5: $b9
    dec bc                                        ; $69c6: $0b
    ld bc, $0101                                  ; $69c7: $01 $01 $01
    ld bc, $0101                                  ; $69ca: $01 $01 $01
    ld bc, $0101                                  ; $69cd: $01 $01 $01
    ld bc, $018a                                  ; $69d0: $01 $8a $01
    ld bc, $8a82                                  ; $69d3: $01 $82 $8a
    inc e                                         ; $69d6: $1c
    inc e                                         ; $69d7: $1c
    inc e                                         ; $69d8: $1c
    inc e                                         ; $69d9: $1c
    inc e                                         ; $69da: $1c
    inc e                                         ; $69db: $1c
    inc e                                         ; $69dc: $1c
    inc e                                         ; $69dd: $1c
    or [hl]                                       ; $69de: $b6
    or a                                          ; $69df: $b7
    cp b                                          ; $69e0: $b8
    inc e                                         ; $69e1: $1c
    cp d                                          ; $69e2: $ba
    cp e                                          ; $69e3: $bb
    cp h                                          ; $69e4: $bc
    push bc                                       ; $69e5: $c5
    ld bc, $0101                                  ; $69e6: $01 $01 $01
    ld bc, $0101                                  ; $69e9: $01 $01 $01
    ld bc, $8a01                                  ; $69ec: $01 $01 $8a
    adc d                                         ; $69ef: $8a
    adc d                                         ; $69f0: $8a
    ld bc, $8a8a                                  ; $69f1: $01 $8a $8a
    adc d                                         ; $69f4: $8a
    adc d                                         ; $69f5: $8a
    ld h, h                                       ; $69f6: $64
    ld l, c                                       ; $69f7: $69
    inc e                                         ; $69f8: $1c
    inc e                                         ; $69f9: $1c
    ld h, d                                       ; $69fa: $62
    ld l, d                                       ; $69fb: $6a
    inc e                                         ; $69fc: $1c
    inc e                                         ; $69fd: $1c
    ld l, b                                       ; $69fe: $68
    ld h, a                                       ; $69ff: $67
    ld h, d                                       ; $6a00: $62
    ld l, d                                       ; $6a01: $6a
    ld h, h                                       ; $6a02: $64
    ld l, l                                       ; $6a03: $6d
    ld l, b                                       ; $6a04: $68
    ld h, l                                       ; $6a05: $65
    ld bc, $0101                                  ; $6a06: $01 $01 $01
    ld bc, $0101                                  ; $6a09: $01 $01 $01
    ld bc, $0101                                  ; $6a0c: $01 $01 $01
    ld bc, $0101                                  ; $6a0f: $01 $01 $01
    ld bc, $0101                                  ; $6a12: $01 $01 $01
    ld bc, $1c3e                                  ; $6a15: $01 $3e $1c
    ld l, a                                       ; $6a18: $6f
    cp l                                          ; $6a19: $bd
    inc e                                         ; $6a1a: $1c
    inc e                                         ; $6a1b: $1c
    ld [hl], b                                    ; $6a1c: $70
    pop bc                                        ; $6a1d: $c1
    ld l, h                                       ; $6a1e: $6c
    inc e                                         ; $6a1f: $1c
    ld [hl], d                                    ; $6a20: $72
    db $db                                        ; $6a21: $db
    ld l, e                                       ; $6a22: $6b
    ld l, c                                       ; $6a23: $69
    inc e                                         ; $6a24: $1c
    inc e                                         ; $6a25: $1c
    ld bc, $8201                                  ; $6a26: $01 $01 $82
    adc d                                         ; $6a29: $8a
    ld bc, $8201                                  ; $6a2a: $01 $01 $82
    adc d                                         ; $6a2d: $8a
    ld bc, $8201                                  ; $6a2e: $01 $01 $82
    adc d                                         ; $6a31: $8a
    ld bc, $0101                                  ; $6a32: $01 $01 $01
    ld bc, $6366                                  ; $6a35: $01 $66 $63
    ld l, e                                       ; $6a38: $6b
    ld l, c                                       ; $6a39: $69
    ld l, b                                       ; $6a3a: $68
    ld h, a                                       ; $6a3b: $67
    ld h, d                                       ; $6a3c: $62
    inc e                                         ; $6a3d: $1c
    ld l, e                                       ; $6a3e: $6b
    ld l, c                                       ; $6a3f: $69
    inc e                                         ; $6a40: $1c
    ld h, a                                       ; $6a41: $67
    ld h, d                                       ; $6a42: $62
    inc e                                         ; $6a43: $1c
    ld l, e                                       ; $6a44: $6b
    ld a, $01                                     ; $6a45: $3e $01
    ld bc, $0101                                  ; $6a47: $01 $01 $01
    ld bc, $0101                                  ; $6a4a: $01 $01 $01
    ld bc, $0101                                  ; $6a4d: $01 $01 $01
    ld bc, $0101                                  ; $6a50: $01 $01 $01
    ld bc, $0101                                  ; $6a53: $01 $01 $01
    ld h, d                                       ; $6a56: $62
    ld l, d                                       ; $6a57: $6a
    ld l, e                                       ; $6a58: $6b
    inc e                                         ; $6a59: $1c
    ld l, h                                       ; $6a5a: $6c
    inc e                                         ; $6a5b: $1c
    inc e                                         ; $6a5c: $1c
    inc e                                         ; $6a5d: $1c
    inc e                                         ; $6a5e: $1c
    inc e                                         ; $6a5f: $1c
    inc e                                         ; $6a60: $1c
    inc c                                         ; $6a61: $0c
    inc e                                         ; $6a62: $1c
    inc e                                         ; $6a63: $1c
    ld [hl], e                                    ; $6a64: $73
    ld e, $01                                     ; $6a65: $1e $01
    ld bc, $0101                                  ; $6a67: $01 $01 $01
    ld bc, $0101                                  ; $6a6a: $01 $01 $01
    ld bc, $0101                                  ; $6a6d: $01 $01 $01
    ld bc, $0109                                  ; $6a70: $01 $09 $01
    ld bc, $0901                                  ; $6a73: $01 $01 $09
    pop hl                                        ; $6a76: $e1
    ld [c], a                                     ; $6a77: $e2
    inc e                                         ; $6a78: $1c
    inc de                                        ; $6a79: $13
    ld [hl], e                                    ; $6a7a: $73
    ld e, $76                                     ; $6a7b: $1e $76
    inc e                                         ; $6a7d: $1c
    rra                                           ; $6a7e: $1f
    inc de                                        ; $6a7f: $13
    inc e                                         ; $6a80: $1c
    inc e                                         ; $6a81: $1c
    halt                                          ; $6a82: $76
    inc e                                         ; $6a83: $1c
    inc d                                         ; $6a84: $14
    inc e                                         ; $6a85: $1c
    dec bc                                        ; $6a86: $0b
    dec bc                                        ; $6a87: $0b
    ld bc, $0109                                  ; $6a88: $01 $09 $01
    add hl, bc                                    ; $6a8b: $09
    ld bc, $0901                                  ; $6a8c: $01 $01 $09
    add hl, bc                                    ; $6a8f: $09
    ld bc, $0101                                  ; $6a90: $01 $01 $01
    ld bc, $010b                                  ; $6a93: $01 $0b $01
    inc e                                         ; $6a96: $1c
    inc e                                         ; $6a97: $1c
    ld b, d                                       ; $6a98: $42
    ld b, l                                       ; $6a99: $45
    inc de                                        ; $6a9a: $13
    inc e                                         ; $6a9b: $1c
    inc e                                         ; $6a9c: $1c
    inc e                                         ; $6a9d: $1c
    inc e                                         ; $6a9e: $1c
    ld [de], a                                    ; $6a9f: $12
    inc de                                        ; $6aa0: $13
    inc e                                         ; $6aa1: $1c
    inc e                                         ; $6aa2: $1c
    inc e                                         ; $6aa3: $1c
    inc c                                         ; $6aa4: $0c
    ld [hl], h                                    ; $6aa5: $74
    ld bc, $0101                                  ; $6aa6: $01 $01 $01
    ld bc, $0109                                  ; $6aa9: $01 $09 $01
    ld bc, $0101                                  ; $6aac: $01 $01 $01
    add hl, bc                                    ; $6aaf: $09
    add hl, bc                                    ; $6ab0: $09
    ld bc, $0101                                  ; $6ab1: $01 $01 $01
    add hl, bc                                    ; $6ab4: $09
    ld bc, $6b1c                                  ; $6ab5: $01 $1c $6b
    ld h, e                                       ; $6ab8: $63
    ld h, a                                       ; $6ab9: $67
    inc e                                         ; $6aba: $1c
    inc e                                         ; $6abb: $1c
    ld l, e                                       ; $6abc: $6b
    ld l, c                                       ; $6abd: $69
    ld l, $2f                                     ; $6abe: $2e $2f
    inc e                                         ; $6ac0: $1c
    ld l, d                                       ; $6ac1: $6a
    inc de                                        ; $6ac2: $13
    inc e                                         ; $6ac3: $1c
    inc e                                         ; $6ac4: $1c
    ld a, $01                                     ; $6ac5: $3e $01
    ld bc, $0101                                  ; $6ac7: $01 $01 $01
    ld bc, $0101                                  ; $6aca: $01 $01 $01
    ld bc, $0101                                  ; $6acd: $01 $01 $01
    ld bc, $0901                                  ; $6ad0: $01 $01 $09
    ld bc, $0101                                  ; $6ad3: $01 $01 $01
    ld l, l                                       ; $6ad6: $6d
    ld h, h                                       ; $6ad7: $64
    ld l, l                                       ; $6ad8: $6d
    ld l, b                                       ; $6ad9: $68
    ld l, h                                       ; $6ada: $6c
    ld h, [hl]                                    ; $6adb: $66
    ld h, d                                       ; $6adc: $62
    ld h, h                                       ; $6add: $64
    ld l, e                                       ; $6ade: $6b
    ld l, c                                       ; $6adf: $69
    ld h, l                                       ; $6ae0: $65
    ld h, d                                       ; $6ae1: $62
    inc e                                         ; $6ae2: $1c
    ld l, d                                       ; $6ae3: $6a
    ld l, e                                       ; $6ae4: $6b
    ld l, h                                       ; $6ae5: $6c
    ld bc, $0101                                  ; $6ae6: $01 $01 $01
    ld bc, $0101                                  ; $6ae9: $01 $01 $01
    ld bc, $0101                                  ; $6aec: $01 $01 $01
    ld bc, $0101                                  ; $6aef: $01 $01 $01
    ld bc, $0101                                  ; $6af2: $01 $01 $01
    ld bc, $1c3e                                  ; $6af5: $01 $3e $1c
    inc e                                         ; $6af8: $1c
    halt                                          ; $6af9: $76
    inc e                                         ; $6afa: $1c
    inc e                                         ; $6afb: $1c
    inc e                                         ; $6afc: $1c
    ld [hl], c                                    ; $6afd: $71
    inc e                                         ; $6afe: $1c
    or l                                          ; $6aff: $b5
    or [hl]                                       ; $6b00: $b6
    or a                                          ; $6b01: $b7
    ld l, [hl]                                    ; $6b02: $6e
    cp c                                          ; $6b03: $b9
    cp d                                          ; $6b04: $ba
    cp e                                          ; $6b05: $bb
    ld bc, $0101                                  ; $6b06: $01 $01 $01
    ld bc, $0101                                  ; $6b09: $01 $01 $01
    ld bc, $0107                                  ; $6b0c: $01 $07 $01
    adc d                                         ; $6b0f: $8a
    adc d                                         ; $6b10: $8a
    adc d                                         ; $6b11: $8a
    add d                                         ; $6b12: $82
    adc d                                         ; $6b13: $8a
    adc d                                         ; $6b14: $8a
    adc d                                         ; $6b15: $8a
    rra                                           ; $6b16: $1f
    ld [hl], h                                    ; $6b17: $74
    inc de                                        ; $6b18: $13
    inc e                                         ; $6b19: $1c
    inc e                                         ; $6b1a: $1c
    halt                                          ; $6b1b: $76
    rra                                           ; $6b1c: $1f
    ld e, $b8                                     ; $6b1d: $1e $b8
    inc e                                         ; $6b1f: $1c
    ld de, $bc74                                  ; $6b20: $11 $74 $bc
    push bc                                       ; $6b23: $c5
    inc e                                         ; $6b24: $1c
    ld [hl], e                                    ; $6b25: $73
    add hl, bc                                    ; $6b26: $09
    ld bc, $0109                                  ; $6b27: $01 $09 $01
    ld bc, $0901                                  ; $6b2a: $01 $01 $09
    add hl, bc                                    ; $6b2d: $09
    adc d                                         ; $6b2e: $8a
    ld bc, $0109                                  ; $6b2f: $01 $09 $01
    adc d                                         ; $6b32: $8a
    adc d                                         ; $6b33: $8a
    ld bc, $1c01                                  ; $6b34: $01 $01 $1c
    inc e                                         ; $6b37: $1c
    ld b, b                                       ; $6b38: $40
    ld b, e                                       ; $6b39: $43
    inc de                                        ; $6b3a: $13
    inc e                                         ; $6b3b: $1c
    ld b, d                                       ; $6b3c: $42
    ld b, l                                       ; $6b3d: $45
    ld [hl], l                                    ; $6b3e: $75
    ld [de], a                                    ; $6b3f: $12
    inc e                                         ; $6b40: $1c
    inc e                                         ; $6b41: $1c
    rra                                           ; $6b42: $1f
    ld e, $0c                                     ; $6b43: $1e $0c
    inc e                                         ; $6b45: $1c
    ld bc, $0101                                  ; $6b46: $01 $01 $01
    ld bc, $0109                                  ; $6b49: $01 $09 $01
    ld bc, $0101                                  ; $6b4c: $01 $01 $01
    add hl, bc                                    ; $6b4f: $09
    ld bc, $0901                                  ; $6b50: $01 $01 $09
    add hl, bc                                    ; $6b53: $09
    add hl, bc                                    ; $6b54: $09
    ld bc, $bd6f                                  ; $6b55: $01 $6f $bd
    cp [hl]                                       ; $6b58: $be
    cp a                                          ; $6b59: $bf
    ld [hl], b                                    ; $6b5a: $70
    pop bc                                        ; $6b5b: $c1
    jp nz, Jump_081_72c3                          ; $6b5c: $c2 $c3 $72

    db $db                                        ; $6b5f: $db
    call c, Call_000_1cdd                         ; $6b60: $dc $dd $1c
    inc e                                         ; $6b63: $1c
    rst $18                                       ; $6b64: $df
    ldh [$82], a                                  ; $6b65: $e0 $82
    adc d                                         ; $6b67: $8a
    adc d                                         ; $6b68: $8a
    adc d                                         ; $6b69: $8a
    add d                                         ; $6b6a: $82
    adc d                                         ; $6b6b: $8a
    adc d                                         ; $6b6c: $8a
    adc d                                         ; $6b6d: $8a
    add d                                         ; $6b6e: $82
    adc d                                         ; $6b6f: $8a
    adc d                                         ; $6b70: $8a
    adc d                                         ; $6b71: $8a
    ld bc, $0b01                                  ; $6b72: $01 $01 $0b
    dec bc                                        ; $6b75: $0b
    ret nz                                        ; $6b76: $c0

    add $1c                                       ; $6b77: $c6 $1c
    ld [de], a                                    ; $6b79: $12
    call nz, $1cc7                                ; $6b7a: $c4 $c7 $1c
    inc e                                         ; $6b7d: $1c
    sbc $e3                                       ; $6b7e: $de $e3
    inc e                                         ; $6b80: $1c
    inc e                                         ; $6b81: $1c
    inc e                                         ; $6b82: $1c
    inc e                                         ; $6b83: $1c
    ld l, h                                       ; $6b84: $6c
    ld h, a                                       ; $6b85: $67
    adc d                                         ; $6b86: $8a
    adc d                                         ; $6b87: $8a
    ld bc, $8a09                                  ; $6b88: $01 $09 $8a
    adc d                                         ; $6b8b: $8a
    ld bc, $8a01                                  ; $6b8c: $01 $01 $8a
    adc d                                         ; $6b8f: $8a
    ld bc, $0101                                  ; $6b90: $01 $01 $01
    ld bc, $0101                                  ; $6b93: $01 $01 $01
    inc e                                         ; $6b96: $1c
    ld [hl], e                                    ; $6b97: $73
    inc e                                         ; $6b98: $1c
    halt                                          ; $6b99: $76
    ld [de], a                                    ; $6b9a: $12
    inc e                                         ; $6b9b: $1c
    inc de                                        ; $6b9c: $13
    inc e                                         ; $6b9d: $1c
    halt                                          ; $6b9e: $76
    inc e                                         ; $6b9f: $1c
    inc e                                         ; $6ba0: $1c
    ld [hl], c                                    ; $6ba1: $71
    ld h, d                                       ; $6ba2: $62
    ld l, d                                       ; $6ba3: $6a
    inc e                                         ; $6ba4: $1c
    inc e                                         ; $6ba5: $1c
    ld bc, $0101                                  ; $6ba6: $01 $01 $01
    ld bc, $0109                                  ; $6ba9: $01 $09 $01
    add hl, bc                                    ; $6bac: $09
    ld bc, $0101                                  ; $6bad: $01 $01 $01
    ld bc, $0107                                  ; $6bb0: $01 $07 $01
    ld bc, $0101                                  ; $6bb3: $01 $01 $01
    ld a, $1c                                     ; $6bb6: $3e $1c
    pop hl                                        ; $6bb8: $e1
    ld [c], a                                     ; $6bb9: $e2
    inc e                                         ; $6bba: $1c
    inc e                                         ; $6bbb: $1c
    ld h, d                                       ; $6bbc: $62
    ld l, b                                       ; $6bbd: $68
    inc e                                         ; $6bbe: $1c
    ld l, c                                       ; $6bbf: $69
    ld h, e                                       ; $6bc0: $63
    ld h, h                                       ; $6bc1: $64
    ld h, d                                       ; $6bc2: $62
    ld l, b                                       ; $6bc3: $68
    ld h, l                                       ; $6bc4: $65
    ld l, c                                       ; $6bc5: $69
    ld bc, $0b01                                  ; $6bc6: $01 $01 $0b
    dec bc                                        ; $6bc9: $0b
    ld bc, $0101                                  ; $6bca: $01 $01 $01
    ld bc, $0101                                  ; $6bcd: $01 $01 $01
    ld bc, $0101                                  ; $6bd0: $01 $01 $01
    ld bc, $0101                                  ; $6bd3: $01 $01 $01
    ld l, h                                       ; $6bd6: $6c
    ld h, h                                       ; $6bd7: $64
    ld l, l                                       ; $6bd8: $6d
    ld l, c                                       ; $6bd9: $69
    ld h, l                                       ; $6bda: $65
    ld h, [hl]                                    ; $6bdb: $66
    ld h, e                                       ; $6bdc: $63
    scf                                           ; $6bdd: $37
    ld l, l                                       ; $6bde: $6d
    ld l, b                                       ; $6bdf: $68
    ld h, l                                       ; $6be0: $65
    jr c, jr_081_6c4f                             ; $6be1: $38 $6c

    ld h, h                                       ; $6be3: $64
    ld l, l                                       ; $6be4: $6d
    add hl, sp                                    ; $6be5: $39
    ld bc, $0101                                  ; $6be6: $01 $01 $01
    ld bc, $0101                                  ; $6be9: $01 $01 $01
    ld bc, $0109                                  ; $6bec: $01 $09 $01
    ld bc, $0901                                  ; $6bef: $01 $01 $09
    ld bc, $0101                                  ; $6bf2: $01 $01 $01
    add hl, bc                                    ; $6bf5: $09
    ld l, h                                       ; $6bf6: $6c
    ld h, a                                       ; $6bf7: $67
    ld h, d                                       ; $6bf8: $62
    inc e                                         ; $6bf9: $1c
    ld a, [hl-]                                   ; $6bfa: $3a
    ld l, c                                       ; $6bfb: $69
    ld l, h                                       ; $6bfc: $6c
    ld h, a                                       ; $6bfd: $67
    dec sp                                        ; $6bfe: $3b
    ld h, [hl]                                    ; $6bff: $66
    ld l, e                                       ; $6c00: $6b
    ld l, c                                       ; $6c01: $69
    inc a                                         ; $6c02: $3c
    ld l, b                                       ; $6c03: $68
    ld h, l                                       ; $6c04: $65
    ld h, a                                       ; $6c05: $67
    ld bc, $0101                                  ; $6c06: $01 $01 $01
    ld bc, $0109                                  ; $6c09: $01 $09 $01
    ld bc, $0901                                  ; $6c0c: $01 $01 $09
    ld bc, $0101                                  ; $6c0f: $01 $01 $01
    add hl, bc                                    ; $6c12: $09
    ld bc, $0101                                  ; $6c13: $01 $01 $01
    ld h, l                                       ; $6c16: $65
    ld h, [hl]                                    ; $6c17: $66
    ld l, d                                       ; $6c18: $6a
    ld e, l                                       ; $6c19: $5d
    ld l, l                                       ; $6c1a: $6d
    ld l, b                                       ; $6c1b: $68
    ld h, l                                       ; $6c1c: $65
    ld [hl], $63                                  ; $6c1d: $36 $63
    ld h, h                                       ; $6c1f: $64
    ld l, l                                       ; $6c20: $6d
    ld l, h                                       ; $6c21: $6c
    ld h, a                                       ; $6c22: $67
    ld h, [hl]                                    ; $6c23: $66
    ld h, e                                       ; $6c24: $63
    ld l, e                                       ; $6c25: $6b
    ld bc, $0101                                  ; $6c26: $01 $01 $01
    ld h, e                                       ; $6c29: $63
    ld bc, $0101                                  ; $6c2a: $01 $01 $01
    ld c, e                                       ; $6c2d: $4b
    ld bc, $0101                                  ; $6c2e: $01 $01 $01
    ld bc, $0101                                  ; $6c31: $01 $01 $01
    ld bc, $5401                                  ; $6c34: $01 $01 $54
    ld d, l                                       ; $6c37: $55
    ld e, [hl]                                    ; $6c38: $5e
    ld e, a                                       ; $6c39: $5f
    inc [hl]                                      ; $6c3a: $34
    dec [hl]                                      ; $6c3b: $35
    ld [hl], $37                                  ; $6c3c: $36 $37
    dec hl                                        ; $6c3e: $2b
    and $57                                       ; $6c3f: $e6 $57
    ld e, b                                       ; $6c41: $58
    inc l                                         ; $6c42: $2c
    push hl                                       ; $6c43: $e5
    ld e, d                                       ; $6c44: $5a
    ld e, e                                       ; $6c45: $5b
    inc bc                                        ; $6c46: $03
    inc bc                                        ; $6c47: $03
    inc bc                                        ; $6c48: $03
    inc bc                                        ; $6c49: $03
    inc bc                                        ; $6c4a: $03
    inc bc                                        ; $6c4b: $03
    inc bc                                        ; $6c4c: $03
    inc bc                                        ; $6c4d: $03
    dec hl                                        ; $6c4e: $2b

jr_081_6c4f:
    dec bc                                        ; $6c4f: $0b
    inc bc                                        ; $6c50: $03
    inc bc                                        ; $6c51: $03
    dec hl                                        ; $6c52: $2b
    dec bc                                        ; $6c53: $0b
    inc bc                                        ; $6c54: $03
    inc bc                                        ; $6c55: $03
    dec hl                                        ; $6c56: $2b

jr_081_6c57:
    inc e                                         ; $6c57: $1c
    ld [hl], c                                    ; $6c58: $71
    inc e                                         ; $6c59: $1c
    inc [hl]                                      ; $6c5a: $34
    add hl, hl                                    ; $6c5b: $29
    inc e                                         ; $6c5c: $1c
    inc e                                         ; $6c5d: $1c
    add sp, $2c                                   ; $6c5e: $e8 $2c
    inc e                                         ; $6c60: $1c
    inc de                                        ; $6c61: $13
    jp z, $1c2b                                   ; $6c62: $ca $2b $1c

    inc c                                         ; $6c65: $0c
    ld c, e                                       ; $6c66: $4b
    ld bc, $0107                                  ; $6c67: $01 $07 $01
    inc bc                                        ; $6c6a: $03
    dec hl                                        ; $6c6b: $2b
    ld bc, $0b01                                  ; $6c6c: $01 $01 $0b
    ld c, e                                       ; $6c6f: $4b
    ld bc, $0b09                                  ; $6c70: $01 $09 $0b
    ld c, e                                       ; $6c73: $4b
    ld bc, $1509                                  ; $6c74: $01 $09 $15
    inc d                                         ; $6c77: $14
    sub $d5                                       ; $6c78: $d6 $d5
    add hl, de                                    ; $6c7a: $19
    jr jr_081_6c57                                ; $6c7b: $18 $da

    reti                                          ; $6c7d: $d9


    inc e                                         ; $6c7e: $1c
    inc e                                         ; $6c7f: $1c
    rrca                                          ; $6c80: $0f
    inc e                                         ; $6c81: $1c
    ld [de], a                                    ; $6c82: $12
    inc e                                         ; $6c83: $1c
    inc e                                         ; $6c84: $1c
    inc e                                         ; $6c85: $1c
    add d                                         ; $6c86: $82
    add d                                         ; $6c87: $82
    and d                                         ; $6c88: $a2
    and d                                         ; $6c89: $a2
    add d                                         ; $6c8a: $82
    add d                                         ; $6c8b: $82
    and d                                         ; $6c8c: $a2
    and d                                         ; $6c8d: $a2
    ld bc, $0301                                  ; $6c8e: $01 $01 $03
    ld bc, $0109                                  ; $6c91: $01 $09 $01
    ld bc, $6901                                  ; $6c94: $01 $01 $69
    ld l, h                                       ; $6c97: $6c
    ld l, l                                       ; $6c98: $6d
    ld h, d                                       ; $6c99: $62
    inc e                                         ; $6c9a: $1c
    ld l, e                                       ; $6c9b: $6b
    ld l, c                                       ; $6c9c: $69
    ld h, h                                       ; $6c9d: $64
    inc e                                         ; $6c9e: $1c
    inc e                                         ; $6c9f: $1c
    ld l, d                                       ; $6ca0: $6a
    ld h, [hl]                                    ; $6ca1: $66
    inc e                                         ; $6ca2: $1c
    inc e                                         ; $6ca3: $1c
    inc e                                         ; $6ca4: $1c
    ld h, d                                       ; $6ca5: $62
    ld bc, $0101                                  ; $6ca6: $01 $01 $01
    ld bc, $0101                                  ; $6ca9: $01 $01 $01
    ld bc, $0101                                  ; $6cac: $01 $01 $01
    ld bc, $0101                                  ; $6caf: $01 $01 $01
    ld bc, $0101                                  ; $6cb2: $01 $01 $01
    ld bc, $5529                                  ; $6cb5: $01 $29 $55
    ld e, [hl]                                    ; $6cb8: $5e
    ld e, a                                       ; $6cb9: $5f
    ld h, a                                       ; $6cba: $67
    dec hl                                        ; $6cbb: $2b
    ld [hl], $37                                  ; $6cbc: $36 $37
    ld l, c                                       ; $6cbe: $69
    inc l                                         ; $6cbf: $2c
    ld d, a                                       ; $6cc0: $57
    ld e, b                                       ; $6cc1: $58
    ld l, d                                       ; $6cc2: $6a
    add hl, hl                                    ; $6cc3: $29
    ld e, d                                       ; $6cc4: $5a
    ld e, e                                       ; $6cc5: $5b
    ld c, e                                       ; $6cc6: $4b
    inc bc                                        ; $6cc7: $03
    inc bc                                        ; $6cc8: $03
    inc bc                                        ; $6cc9: $03
    ld bc, $032b                                  ; $6cca: $01 $2b $03
    inc bc                                        ; $6ccd: $03
    ld bc, $032b                                  ; $6cce: $01 $2b $03
    inc bc                                        ; $6cd1: $03
    ld bc, $034b                                  ; $6cd2: $01 $4b $03
    inc bc                                        ; $6cd5: $03
    ld d, h                                       ; $6cd6: $54
    ld d, l                                       ; $6cd7: $55
    ld e, l                                       ; $6cd8: $5d
    inc e                                         ; $6cd9: $1c
    inc [hl]                                      ; $6cda: $34
    dec [hl]                                      ; $6cdb: $35
    add hl, hl                                    ; $6cdc: $29
    inc e                                         ; $6cdd: $1c
    add sp, -$37                                  ; $6cde: $e8 $c9
    inc l                                         ; $6ce0: $2c
    ld b, b                                       ; $6ce1: $40
    jp z, Jump_000_2be6                           ; $6ce2: $ca $e6 $2b

    ld b, d                                       ; $6ce5: $42
    inc bc                                        ; $6ce6: $03
    inc bc                                        ; $6ce7: $03
    ld b, e                                       ; $6ce8: $43
    ld bc, $0303                                  ; $6ce9: $01 $03 $03
    dec hl                                        ; $6cec: $2b
    ld bc, $0b0b                                  ; $6ced: $01 $0b $0b
    ld c, e                                       ; $6cf0: $4b
    ld bc, $0b0b                                  ; $6cf1: $01 $0b $0b
    ld c, e                                       ; $6cf4: $4b
    ld bc, $1376                                  ; $6cf5: $01 $76 $13
    ld l, $2f                                     ; $6cf8: $2e $2f
    ld [hl], e                                    ; $6cfa: $73
    inc c                                         ; $6cfb: $0c
    ld [de], a                                    ; $6cfc: $12
    inc de                                        ; $6cfd: $13
    ld b, e                                       ; $6cfe: $43
    ld de, $0c76                                  ; $6cff: $11 $76 $0c
    ld b, l                                       ; $6d02: $45
    inc e                                         ; $6d03: $1c
    ld [hl], e                                    ; $6d04: $73
    ld de, $0901                                  ; $6d05: $11 $01 $09
    ld bc, $0101                                  ; $6d08: $01 $01 $01
    add hl, bc                                    ; $6d0b: $09
    add hl, bc                                    ; $6d0c: $09
    add hl, bc                                    ; $6d0d: $09
    ld bc, $0109                                  ; $6d0e: $01 $09 $01
    add hl, bc                                    ; $6d11: $09
    ld bc, $0101                                  ; $6d12: $01 $01 $01
    add hl, bc                                    ; $6d15: $09
    inc e                                         ; $6d16: $1c
    inc e                                         ; $6d17: $1c
    inc e                                         ; $6d18: $1c
    ld l, c                                       ; $6d19: $69
    ld de, $3e1c                                  ; $6d1a: $11 $1c $3e
    inc e                                         ; $6d1d: $1c
    inc e                                         ; $6d1e: $1c
    inc e                                         ; $6d1f: $1c
    inc e                                         ; $6d20: $1c
    inc d                                         ; $6d21: $14
    ld b, b                                       ; $6d22: $40
    ld b, e                                       ; $6d23: $43
    inc e                                         ; $6d24: $1c
    dec d                                         ; $6d25: $15
    ld bc, $0101                                  ; $6d26: $01 $01 $01
    ld bc, $0109                                  ; $6d29: $01 $09 $01
    ld bc, $0101                                  ; $6d2c: $01 $01 $01
    ld bc, $0b01                                  ; $6d2f: $01 $01 $0b
    ld bc, $0101                                  ; $6d32: $01 $01 $01
    dec bc                                        ; $6d35: $0b
    inc e                                         ; $6d36: $1c
    ld e, l                                       ; $6d37: $5d
    ld e, [hl]                                    ; $6d38: $5e
    rr h                                          ; $6d39: $cb $1c
    add hl, hl                                    ; $6d3b: $29
    ld [hl], $37                                  ; $6d3c: $36 $37
    inc e                                         ; $6d3e: $1c
    inc e                                         ; $6d3f: $1c
    ret z                                         ; $6d40: $c8

    ld e, b                                       ; $6d41: $58
    inc e                                         ; $6d42: $1c
    inc e                                         ; $6d43: $1c
    inc e                                         ; $6d44: $1c
    ld d, [hl]                                    ; $6d45: $56
    ld bc, $0323                                  ; $6d46: $01 $23 $03
    dec bc                                        ; $6d49: $0b
    ld bc, $034b                                  ; $6d4a: $01 $4b $03
    inc bc                                        ; $6d4d: $03
    ld bc, $6b01                                  ; $6d4e: $01 $01 $6b
    inc bc                                        ; $6d51: $03
    ld bc, $0101                                  ; $6d52: $01 $01 $01
    ld h, e                                       ; $6d55: $63
    call z, Call_081_5e55                         ; $6d56: $cc $55 $5e
    ld d, [hl]                                    ; $6d59: $56
    inc [hl]                                      ; $6d5a: $34
    dec [hl]                                      ; $6d5b: $35
    ld [hl], $37                                  ; $6d5c: $36 $37
    add sp, -$37                                  ; $6d5e: $e8 $c9
    ld d, a                                       ; $6d60: $57
    ld e, b                                       ; $6d61: $58
    jp z, $e7e4                                   ; $6d62: $ca $e4 $e7

    ld e, e                                       ; $6d65: $5b
    dec bc                                        ; $6d66: $0b
    inc bc                                        ; $6d67: $03
    inc bc                                        ; $6d68: $03
    inc bc                                        ; $6d69: $03
    inc bc                                        ; $6d6a: $03
    inc bc                                        ; $6d6b: $03

Jump_081_6d6c:
    inc bc                                        ; $6d6c: $03
    inc bc                                        ; $6d6d: $03
    dec bc                                        ; $6d6e: $0b
    dec bc                                        ; $6d6f: $0b
    inc bc                                        ; $6d70: $03
    inc bc                                        ; $6d71: $03
    dec bc                                        ; $6d72: $0b
    dec bc                                        ; $6d73: $0b
    dec bc                                        ; $6d74: $0b
    inc bc                                        ; $6d75: $03
    inc e                                         ; $6d76: $1c
    inc e                                         ; $6d77: $1c
    inc e                                         ; $6d78: $1c
    inc de                                        ; $6d79: $13
    ret z                                         ; $6d7a: $c8

    add hl, sp                                    ; $6d7b: $39
    inc e                                         ; $6d7c: $1c
    ld a, $e8                                     ; $6d7d: $3e $e8
    ret                                           ; $6d7f: $c9


    ld a, [bc]                                    ; $6d80: $0a
    dec bc                                        ; $6d81: $0b
    jp z, Jump_081_5ae5                           ; $6d82: $ca $e5 $5a

    ld e, e                                       ; $6d85: $5b
    ld bc, $0101                                  ; $6d86: $01 $01 $01
    add hl, bc                                    ; $6d89: $09
    dec bc                                        ; $6d8a: $0b
    inc hl                                        ; $6d8b: $23
    ld bc, $0b01                                  ; $6d8c: $01 $01 $0b
    dec bc                                        ; $6d8f: $0b
    dec bc                                        ; $6d90: $0b
    dec bc                                        ; $6d91: $0b
    dec bc                                        ; $6d92: $0b
    dec bc                                        ; $6d93: $0b
    inc bc                                        ; $6d94: $03
    inc bc                                        ; $6d95: $03
    ld b, d                                       ; $6d96: $42
    ld b, l                                       ; $6d97: $45
    inc e                                         ; $6d98: $1c
    inc e                                         ; $6d99: $1c
    inc e                                         ; $6d9a: $1c
    inc e                                         ; $6d9b: $1c
    inc e                                         ; $6d9c: $1c
    pop hl                                        ; $6d9d: $e1
    inc e                                         ; $6d9e: $1c
    inc e                                         ; $6d9f: $1c
    inc e                                         ; $6da0: $1c
    inc c                                         ; $6da1: $0c
    ld l, e                                       ; $6da2: $6b
    inc e                                         ; $6da3: $1c
    inc e                                         ; $6da4: $1c
    ld c, $01                                     ; $6da5: $0e $01
    ld bc, $0101                                  ; $6da7: $01 $01 $01
    ld bc, $0101                                  ; $6daa: $01 $01 $01
    and d                                         ; $6dad: $a2
    ld bc, $0101                                  ; $6dae: $01 $01 $01
    add d                                         ; $6db1: $82
    ld bc, $0101                                  ; $6db2: $01 $01 $01
    add d                                         ; $6db5: $82
    ccf                                           ; $6db6: $3f
    inc e                                         ; $6db7: $1c
    ld a, $1c                                     ; $6db8: $3e $1c
    ld b, c                                       ; $6dba: $41
    pop hl                                        ; $6dbb: $e1
    inc e                                         ; $6dbc: $1c
    inc e                                         ; $6dbd: $1c
    ret c                                         ; $6dbe: $d8

    db $e4                                        ; $6dbf: $e4
    inc e                                         ; $6dc0: $1c
    ld [hl], c                                    ; $6dc1: $71
    call c, $1ce7                                 ; $6dc2: $dc $e7 $1c
    inc e                                         ; $6dc5: $1c
    add d                                         ; $6dc6: $82
    ld bc, $0101                                  ; $6dc7: $01 $01 $01
    add d                                         ; $6dca: $82
    add d                                         ; $6dcb: $82
    ld bc, $8201                                  ; $6dcc: $01 $01 $82
    add d                                         ; $6dcf: $82
    ld bc, $8207                                  ; $6dd0: $01 $07 $82
    add d                                         ; $6dd3: $82
    ld bc, $c801                                  ; $6dd4: $01 $01 $c8
    ld d, l                                       ; $6dd7: $55
    ld e, [hl]                                    ; $6dd8: $5e
    ld e, a                                       ; $6dd9: $5f
    inc e                                         ; $6dda: $1c
    ld d, [hl]                                    ; $6ddb: $56
    ld [hl], $37                                  ; $6ddc: $36 $37
    inc e                                         ; $6dde: $1c
    inc e                                         ; $6ddf: $1c
    add hl, sp                                    ; $6de0: $39
    ret z                                         ; $6de1: $c8

    inc e                                         ; $6de2: $1c
    ld l, d                                       ; $6de3: $6a
    ld l, e                                       ; $6de4: $6b
    inc e                                         ; $6de5: $1c
    ld l, e                                       ; $6de6: $6b
    inc bc                                        ; $6de7: $03
    inc bc                                        ; $6de8: $03
    inc bc                                        ; $6de9: $03
    ld bc, $0363                                  ; $6dea: $01 $63 $03
    inc bc                                        ; $6ded: $03
    ld bc, $4301                                  ; $6dee: $01 $01 $43
    ld l, e                                       ; $6df1: $6b
    ld bc, $0101                                  ; $6df2: $01 $01 $01
    ld bc, $5554                                  ; $6df5: $01 $54 $55
    ld e, [hl]                                    ; $6df8: $5e
    ld e, a                                       ; $6df9: $5f
    inc [hl]                                      ; $6dfa: $34
    dec [hl]                                      ; $6dfb: $35
    ld [hl], $cb                                  ; $6dfc: $36 $cb
    and $c9                                       ; $6dfe: $e6 $c9
    ld d, a                                       ; $6e00: $57
    ld e, b                                       ; $6e01: $58
    dec bc                                        ; $6e02: $0b
    ld a, [bc]                                    ; $6e03: $0a
    ld e, d                                       ; $6e04: $5a
    ld e, e                                       ; $6e05: $5b
    inc bc                                        ; $6e06: $03
    inc bc                                        ; $6e07: $03
    inc bc                                        ; $6e08: $03
    inc bc                                        ; $6e09: $03
    inc bc                                        ; $6e0a: $03
    inc bc                                        ; $6e0b: $03
    inc bc                                        ; $6e0c: $03
    dec bc                                        ; $6e0d: $0b
    dec bc                                        ; $6e0e: $0b
    dec bc                                        ; $6e0f: $0b
    inc bc                                        ; $6e10: $03
    inc bc                                        ; $6e11: $03
    ld l, e                                       ; $6e12: $6b

jr_081_6e13:
    ld l, e                                       ; $6e13: $6b
    inc bc                                        ; $6e14: $03
    inc bc                                        ; $6e15: $03
    rrca                                          ; $6e16: $0f
    rst $20                                       ; $6e17: $e7
    call c, Call_000_10db                         ; $6e18: $dc $db $10
    ld [$dfe0], a                                 ; $6e1b: $ea $e0 $df
    ld de, $d210                                  ; $6e1e: $11 $10 $d2
    pop de                                        ; $6e21: $d1
    dec d                                         ; $6e22: $15
    inc d                                         ; $6e23: $14
    sub $0b                                       ; $6e24: $d6 $0b
    adc d                                         ; $6e26: $8a
    and d                                         ; $6e27: $a2
    and d                                         ; $6e28: $a2
    and d                                         ; $6e29: $a2
    adc d                                         ; $6e2a: $8a
    add d                                         ; $6e2b: $82
    add d                                         ; $6e2c: $82
    add d                                         ; $6e2d: $82
    add d                                         ; $6e2e: $82
    add d                                         ; $6e2f: $82
    and d                                         ; $6e30: $a2
    and d                                         ; $6e31: $a2
    add d                                         ; $6e32: $82
    add d                                         ; $6e33: $82
    and d                                         ; $6e34: $a2
    and d                                         ; $6e35: $a2
    add hl, de                                    ; $6e36: $19
    jr jr_081_6e13                                ; $6e37: $18 $da

    dec c                                         ; $6e39: $0d
    inc e                                         ; $6e3a: $1c
    inc e                                         ; $6e3b: $1c
    rrca                                          ; $6e3c: $0f
    rst $20                                       ; $6e3d: $e7
    ld [de], a                                    ; $6e3e: $12
    inc e                                         ; $6e3f: $1c
    db $dd                                        ; $6e40: $dd
    ld [$0c76], a                                 ; $6e41: $ea $76 $0c
    ld de, $8210                                  ; $6e44: $11 $10 $82
    add d                                         ; $6e47: $82
    and d                                         ; $6e48: $a2
    and d                                         ; $6e49: $a2
    ld bc, $0301                                  ; $6e4a: $01 $01 $03
    and d                                         ; $6e4d: $a2
    add hl, bc                                    ; $6e4e: $09
    ld bc, $8282                                  ; $6e4f: $01 $82 $82
    ld bc, $8209                                  ; $6e52: $01 $09 $82
    add d                                         ; $6e55: $82
    ld [hl], e                                    ; $6e56: $73
    inc e                                         ; $6e57: $1c
    dec d                                         ; $6e58: $15
    inc d                                         ; $6e59: $14
    inc e                                         ; $6e5a: $1c
    inc e                                         ; $6e5b: $1c
    add hl, de                                    ; $6e5c: $19
    jr @+$1e                                      ; $6e5d: $18 $1c

    ld a, $1c                                     ; $6e5f: $3e $1c
    inc e                                         ; $6e61: $1c
    ld a, [bc]                                    ; $6e62: $0a
    dec bc                                        ; $6e63: $0b
    dec sp                                        ; $6e64: $3b
    add hl, sp                                    ; $6e65: $39
    ld bc, $8201                                  ; $6e66: $01 $01 $82
    add d                                         ; $6e69: $82
    ld bc, $8201                                  ; $6e6a: $01 $01 $82
    add d                                         ; $6e6d: $82
    ld bc, $0101                                  ; $6e6e: $01 $01 $01
    ld bc, $0b0b                                  ; $6e71: $01 $0b $0b
    inc bc                                        ; $6e74: $03
    inc bc                                        ; $6e75: $03
    ld d, h                                       ; $6e76: $54
    ld d, l                                       ; $6e77: $55
    ld e, [hl]                                    ; $6e78: $5e
    ld e, a                                       ; $6e79: $5f
    call z, Call_000_3635                         ; $6e7a: $cc $35 $36
    scf                                           ; $6e7d: $37
    add sp, -$37                                  ; $6e7e: $e8 $c9
    db $e4                                        ; $6e80: $e4
    rst $20                                       ; $6e81: $e7
    jp z, Jump_081_5ae5                           ; $6e82: $ca $e5 $5a

    ld e, e                                       ; $6e85: $5b
    inc bc                                        ; $6e86: $03
    inc bc                                        ; $6e87: $03
    inc bc                                        ; $6e88: $03
    inc bc                                        ; $6e89: $03
    dec bc                                        ; $6e8a: $0b
    inc bc                                        ; $6e8b: $03
    inc bc                                        ; $6e8c: $03
    inc bc                                        ; $6e8d: $03
    dec bc                                        ; $6e8e: $0b
    dec bc                                        ; $6e8f: $0b
    dec bc                                        ; $6e90: $0b
    dec bc                                        ; $6e91: $0b
    dec bc                                        ; $6e92: $0b
    dec bc                                        ; $6e93: $0b
    inc bc                                        ; $6e94: $03
    inc bc                                        ; $6e95: $03
    db $10                                        ; $6e96: $10
    ld de, $1c1c                                  ; $6e97: $11 $1c $1c
    inc d                                         ; $6e9a: $14
    dec d                                         ; $6e9b: $15
    inc e                                         ; $6e9c: $1c
    ld a, $18                                     ; $6e9d: $3e $18
    add hl, de                                    ; $6e9f: $19
    ld [hl], e                                    ; $6ea0: $73
    inc e                                         ; $6ea1: $1c
    inc e                                         ; $6ea2: $1c
    inc e                                         ; $6ea3: $1c
    ld [de], a                                    ; $6ea4: $12
    inc de                                        ; $6ea5: $13
    and d                                         ; $6ea6: $a2
    and d                                         ; $6ea7: $a2
    ld bc, $a201                                  ; $6ea8: $01 $01 $a2
    and d                                         ; $6eab: $a2
    ld bc, $a201                                  ; $6eac: $01 $01 $a2
    and d                                         ; $6eaf: $a2
    ld bc, $0101                                  ; $6eb0: $01 $01 $01
    ld bc, $0909                                  ; $6eb3: $01 $09 $09
    inc e                                         ; $6eb6: $1c
    ld l, d                                       ; $6eb7: $6a
    ld h, e                                       ; $6eb8: $63
    ld h, h                                       ; $6eb9: $64
    inc e                                         ; $6eba: $1c
    inc e                                         ; $6ebb: $1c
    ld h, d                                       ; $6ebc: $62
    ld h, [hl]                                    ; $6ebd: $66
    inc e                                         ; $6ebe: $1c
    dec a                                         ; $6ebf: $3d
    ld a, $67                                     ; $6ec0: $3e $67
    inc e                                         ; $6ec2: $1c
    ccf                                           ; $6ec3: $3f
    ld b, b                                       ; $6ec4: $40
    inc e                                         ; $6ec5: $1c
    ld bc, $0101                                  ; $6ec6: $01 $01 $01
    ld bc, $0101                                  ; $6ec9: $01 $01 $01
    ld bc, $0101                                  ; $6ecc: $01 $01 $01
    add hl, bc                                    ; $6ecf: $09
    add hl, bc                                    ; $6ed0: $09
    ld bc, $0901                                  ; $6ed1: $01 $01 $09
    add hl, bc                                    ; $6ed4: $09
    ld bc, $696d                                  ; $6ed5: $01 $6d $69
    ld h, l                                       ; $6ed8: $65
    ld h, [hl]                                    ; $6ed9: $66
    ld h, e                                       ; $6eda: $63
    ld h, h                                       ; $6edb: $64
    ld l, l                                       ; $6edc: $6d
    ld l, b                                       ; $6edd: $68
    ld h, h                                       ; $6ede: $64
    ld l, l                                       ; $6edf: $6d
    ld h, d                                       ; $6ee0: $62
    ld l, d                                       ; $6ee1: $6a
    ld l, e                                       ; $6ee2: $6b
    ld l, c                                       ; $6ee3: $69
    ld l, h                                       ; $6ee4: $6c
    inc e                                         ; $6ee5: $1c
    ld bc, $0101                                  ; $6ee6: $01 $01 $01
    ld bc, $0101                                  ; $6ee9: $01 $01 $01
    ld bc, $0101                                  ; $6eec: $01 $01 $01
    ld bc, $0101                                  ; $6eef: $01 $01 $01
    ld bc, $0101                                  ; $6ef2: $01 $01 $01
    ld bc, $111c                                  ; $6ef5: $01 $1c $11
    halt                                          ; $6ef8: $76
    inc c                                         ; $6ef9: $0c
    inc e                                         ; $6efa: $1c
    inc e                                         ; $6efb: $1c
    ld [hl], e                                    ; $6efc: $73
    rra                                           ; $6efd: $1f
    inc e                                         ; $6efe: $1c
    inc e                                         ; $6eff: $1c
    ld [de], a                                    ; $6f00: $12
    ld d, $1c                                     ; $6f01: $16 $1c
    ld de, $0c1c                                  ; $6f03: $11 $1c $0c
    ld bc, $0109                                  ; $6f06: $01 $09 $01
    add hl, bc                                    ; $6f09: $09
    ld bc, $0101                                  ; $6f0a: $01 $01 $01
    add hl, bc                                    ; $6f0d: $09
    ld bc, $0901                                  ; $6f0e: $01 $01 $09
    add hl, bc                                    ; $6f11: $09
    ld bc, $0109                                  ; $6f12: $01 $09 $01
    add hl, bc                                    ; $6f15: $09
    ld [de], a                                    ; $6f16: $12
    ld b, c                                       ; $6f17: $41
    ld b, d                                       ; $6f18: $42
    ld l, d                                       ; $6f19: $6a
    halt                                          ; $6f1a: $76
    inc c                                         ; $6f1b: $0c
    inc e                                         ; $6f1c: $1c
    inc e                                         ; $6f1d: $1c
    rla                                           ; $6f1e: $17
    ld de, $0c76                                  ; $6f1f: $11 $76 $0c
    ld e, $16                                     ; $6f22: $1e $16
    rla                                           ; $6f24: $17
    ld de, $0909                                  ; $6f25: $11 $09 $09
    add hl, bc                                    ; $6f28: $09
    ld bc, $0901                                  ; $6f29: $01 $01 $09
    ld bc, $0901                                  ; $6f2c: $01 $01 $09
    add hl, bc                                    ; $6f2f: $09
    ld bc, $0909                                  ; $6f30: $01 $09 $09
    add hl, bc                                    ; $6f33: $09
    add hl, bc                                    ; $6f34: $09
    add hl, bc                                    ; $6f35: $09
    inc e                                         ; $6f36: $1c
    ld b, b                                       ; $6f37: $40
    ld b, e                                       ; $6f38: $43
    inc e                                         ; $6f39: $1c
    ld l, h                                       ; $6f3a: $6c
    ld b, d                                       ; $6f3b: $42
    ld b, l                                       ; $6f3c: $45
    inc c                                         ; $6f3d: $0c
    inc e                                         ; $6f3e: $1c
    inc e                                         ; $6f3f: $1c
    ld [hl], e                                    ; $6f40: $73
    ld [hl], l                                    ; $6f41: $75
    halt                                          ; $6f42: $76
    inc c                                         ; $6f43: $0c
    rla                                           ; $6f44: $17
    inc de                                        ; $6f45: $13
    ld bc, $0101                                  ; $6f46: $01 $01 $01
    ld bc, $0101                                  ; $6f49: $01 $01 $01
    ld bc, $0109                                  ; $6f4c: $01 $09 $01
    ld bc, $0101                                  ; $6f4f: $01 $01 $01
    ld bc, $0909                                  ; $6f52: $01 $09 $09
    add hl, bc                                    ; $6f55: $09
    pop hl                                        ; $6f56: $e1
    rrca                                          ; $6f57: $0f
    inc e                                         ; $6f58: $1c
    inc e                                         ; $6f59: $1c
    db $e4                                        ; $6f5a: $e4
    ld [hl], e                                    ; $6f5b: $73
    rra                                           ; $6f5c: $1f
    halt                                          ; $6f5d: $76
    rst $20                                       ; $6f5e: $e7
    inc e                                         ; $6f5f: $1c
    ccf                                           ; $6f60: $3f
    ld [hl], e                                    ; $6f61: $73
    ld [$41e1], a                                 ; $6f62: $ea $e1 $41
    pop hl                                        ; $6f65: $e1
    add d                                         ; $6f66: $82
    inc hl                                        ; $6f67: $23
    ld bc, $8201                                  ; $6f68: $01 $01 $82
    ld bc, $0109                                  ; $6f6b: $01 $09 $01
    add d                                         ; $6f6e: $82
    ld bc, $0182                                  ; $6f6f: $01 $82 $01
    and d                                         ; $6f72: $a2
    and d                                         ; $6f73: $a2
    add d                                         ; $6f74: $82
    add d                                         ; $6f75: $82
    ld b, b                                       ; $6f76: $40
    ld b, e                                       ; $6f77: $43
    inc e                                         ; $6f78: $1c
    inc e                                         ; $6f79: $1c
    ld b, d                                       ; $6f7a: $42
    ld b, l                                       ; $6f7b: $45
    inc e                                         ; $6f7c: $1c
    ld l, c                                       ; $6f7d: $69
    inc e                                         ; $6f7e: $1c
    inc e                                         ; $6f7f: $1c
    inc e                                         ; $6f80: $1c
    ccf                                           ; $6f81: $3f
    inc e                                         ; $6f82: $1c
    inc e                                         ; $6f83: $1c
    pop hl                                        ; $6f84: $e1
    ld b, c                                       ; $6f85: $41
    ld bc, $0101                                  ; $6f86: $01 $01 $01
    ld bc, $0101                                  ; $6f89: $01 $01 $01
    ld bc, $0101                                  ; $6f8c: $01 $01 $01
    ld bc, $8201                                  ; $6f8f: $01 $01 $82
    ld bc, $a201                                  ; $6f92: $01 $01 $a2
    add d                                         ; $6f95: $82
    halt                                          ; $6f96: $76
    inc c                                         ; $6f97: $0c
    ld [de], a                                    ; $6f98: $12
    inc de                                        ; $6f99: $13
    inc e                                         ; $6f9a: $1c
    inc e                                         ; $6f9b: $1c
    inc e                                         ; $6f9c: $1c
    inc e                                         ; $6f9d: $1c
    ld l, e                                       ; $6f9e: $6b
    ld l, c                                       ; $6f9f: $69
    inc e                                         ; $6fa0: $1c
    pop hl                                        ; $6fa1: $e1
    pop hl                                        ; $6fa2: $e1
    ld l, d                                       ; $6fa3: $6a
    ld l, e                                       ; $6fa4: $6b
    inc c                                         ; $6fa5: $0c
    ld bc, $0909                                  ; $6fa6: $01 $09 $09
    add hl, bc                                    ; $6fa9: $09
    ld bc, $0101                                  ; $6faa: $01 $01 $01
    ld bc, $0101                                  ; $6fad: $01 $01 $01
    ld bc, $82a2                                  ; $6fb0: $01 $a2 $82
    ld bc, $8201                                  ; $6fb3: $01 $01 $82
    inc e                                         ; $6fb6: $1c
    ld de, $0c76                                  ; $6fb7: $11 $76 $0c
    ccf                                           ; $6fba: $3f
    inc e                                         ; $6fbb: $1c
    inc e                                         ; $6fbc: $1c
    ld l, c                                       ; $6fbd: $69
    ld b, c                                       ; $6fbe: $41
    pop hl                                        ; $6fbf: $e1
    ld h, d                                       ; $6fc0: $62
    ld l, d                                       ; $6fc1: $6a
    ret c                                         ; $6fc2: $d8

    db $e4                                        ; $6fc3: $e4
    ld l, h                                       ; $6fc4: $6c
    inc e                                         ; $6fc5: $1c
    ld bc, $0109                                  ; $6fc6: $01 $09 $01
    add hl, bc                                    ; $6fc9: $09
    add d                                         ; $6fca: $82
    ld bc, $0101                                  ; $6fcb: $01 $01 $01
    add d                                         ; $6fce: $82
    add d                                         ; $6fcf: $82
    ld bc, $8201                                  ; $6fd0: $01 $01 $82
    add d                                         ; $6fd3: $82
    ld bc, $1001                                  ; $6fd4: $01 $01 $10
    ld b, e                                       ; $6fd7: $43
    ret c                                         ; $6fd8: $d8

    db $e4                                        ; $6fd9: $e4
    inc d                                         ; $6fda: $14
    ld b, h                                       ; $6fdb: $44
    call c, Call_081_45e7                         ; $6fdc: $dc $e7 $45
    ld b, [hl]                                    ; $6fdf: $46
    ldh [$ea], a                                  ; $6fe0: $e0 $ea
    ld c, $d1                                     ; $6fe2: $0e $d1
    jp nc, $a210                                  ; $6fe4: $d2 $10 $a2

    adc d                                         ; $6fe7: $8a
    add d                                         ; $6fe8: $82
    add d                                         ; $6fe9: $82
    and d                                         ; $6fea: $a2
    adc d                                         ; $6feb: $8a
    add d                                         ; $6fec: $82
    add d                                         ; $6fed: $82
    adc d                                         ; $6fee: $8a
    adc d                                         ; $6fef: $8a
    and d                                         ; $6ff0: $a2
    and d                                         ; $6ff1: $a2
    xor d                                         ; $6ff2: $aa
    add d                                         ; $6ff3: $82
    add d                                         ; $6ff4: $82
    and d                                         ; $6ff5: $a2
    inc e                                         ; $6ff6: $1c
    inc e                                         ; $6ff7: $1c
    inc c                                         ; $6ff8: $0c
    ret c                                         ; $6ff9: $d8

    inc e                                         ; $6ffa: $1c
    ccf                                           ; $6ffb: $3f
    ld c, $dc                                     ; $6ffc: $0e $dc
    pop hl                                        ; $6ffe: $e1
    ld b, c                                       ; $6fff: $41
    rst $18                                       ; $7000: $df
    ldh [rSCX], a                                 ; $7001: $e0 $43
    ret c                                         ; $7003: $d8

    ld b, a                                       ; $7004: $47
    jp nc, $0101                                  ; $7005: $d2 $01 $01

    add d                                         ; $7008: $82
    add d                                         ; $7009: $82
    ld bc, $8282                                  ; $700a: $01 $82 $82
    add d                                         ; $700d: $82
    and d                                         ; $700e: $a2
    add d                                         ; $700f: $82
    and d                                         ; $7010: $a2
    and d                                         ; $7011: $a2
    adc d                                         ; $7012: $8a
    add d                                         ; $7013: $82
    adc d                                         ; $7014: $8a
    add d                                         ; $7015: $82
    db $e4                                        ; $7016: $e4
    inc e                                         ; $7017: $1c
    inc e                                         ; $7018: $1c
    ld c, $e7                                     ; $7019: $0e $e7
    inc e                                         ; $701b: $1c
    dec c                                         ; $701c: $0d
    rst $18                                       ; $701d: $df
    ld [$0e1c], a                                 ; $701e: $ea $1c $0e
    pop de                                        ; $7021: $d1
    db $10                                        ; $7022: $10
    ld de, $d50f                                  ; $7023: $11 $0f $d5
    add d                                         ; $7026: $82
    ld bc, $8201                                  ; $7027: $01 $01 $82
    add d                                         ; $702a: $82
    ld bc, $a2aa                                  ; $702b: $01 $aa $a2
    and d                                         ; $702e: $a2
    ld bc, $82aa                                  ; $702f: $01 $aa $82
    and d                                         ; $7032: $a2
    and d                                         ; $7033: $a2
    xor d                                         ; $7034: $aa
    add d                                         ; $7035: $82
    call c, $1ce7                                 ; $7036: $dc $e7 $1c
    ld c, b                                       ; $7039: $48
    ldh [$ea], a                                  ; $703a: $e0 $ea
    inc e                                         ; $703c: $1c
    ld c, c                                       ; $703d: $49
    jp nc, Jump_000_1110                          ; $703e: $d2 $10 $11

    ld c, d                                       ; $7041: $4a
    sub $14                                       ; $7042: $d6 $14
    dec d                                         ; $7044: $15
    ld c, d                                       ; $7045: $4a
    add d                                         ; $7046: $82
    add d                                         ; $7047: $82
    ld bc, $a20f                                  ; $7048: $01 $0f $a2
    and d                                         ; $704b: $a2
    ld bc, $820f                                  ; $704c: $01 $0f $82
    and d                                         ; $704f: $a2
    and d                                         ; $7050: $a2
    rrca                                          ; $7051: $0f
    add d                                         ; $7052: $82
    and d                                         ; $7053: $a2
    and d                                         ; $7054: $a2
    rrca                                          ; $7055: $0f
    ld h, e                                       ; $7056: $63
    ld l, d                                       ; $7057: $6a
    ld h, d                                       ; $7058: $62
    inc e                                         ; $7059: $1c
    ld l, h                                       ; $705a: $6c
    ld h, a                                       ; $705b: $67
    inc e                                         ; $705c: $1c
    ld h, a                                       ; $705d: $67
    ld l, e                                       ; $705e: $6b
    inc e                                         ; $705f: $1c
    inc e                                         ; $7060: $1c
    inc e                                         ; $7061: $1c
    inc e                                         ; $7062: $1c
    inc e                                         ; $7063: $1c
    inc e                                         ; $7064: $1c
    ld [de], a                                    ; $7065: $12
    ld bc, $0101                                  ; $7066: $01 $01 $01
    ld bc, $0101                                  ; $7069: $01 $01 $01
    ld bc, $0101                                  ; $706c: $01 $01 $01
    ld bc, $0101                                  ; $706f: $01 $01 $01
    ld bc, $0101                                  ; $7072: $01 $01 $01
    add hl, bc                                    ; $7075: $09
    ld l, e                                       ; $7076: $6b
    inc e                                         ; $7077: $1c
    ld [hl], c                                    ; $7078: $71
    inc e                                         ; $7079: $1c
    inc e                                         ; $707a: $1c
    halt                                          ; $707b: $76
    inc e                                         ; $707c: $1c
    inc e                                         ; $707d: $1c
    ld de, $0c1c                                  ; $707e: $11 $1c $0c
    inc e                                         ; $7081: $1c
    inc de                                        ; $7082: $13
    ld [hl], e                                    ; $7083: $73
    ld de, $011c                                  ; $7084: $11 $1c $01
    ld bc, $0107                                  ; $7087: $01 $07 $01
    ld bc, $0101                                  ; $708a: $01 $01 $01
    ld bc, $0109                                  ; $708d: $01 $09 $01
    add hl, bc                                    ; $7090: $09
    ld bc, $0109                                  ; $7091: $01 $09 $01
    add hl, bc                                    ; $7094: $09
    ld bc, $2b1c                                  ; $7095: $01 $1c $2b
    ld e, [hl]                                    ; $7098: $5e
    ld e, a                                       ; $7099: $5f
    add hl, hl                                    ; $709a: $29
    dec [hl]                                      ; $709b: $35
    ld [hl], $37                                  ; $709c: $36 $37
    inc l                                         ; $709e: $2c
    ret                                           ; $709f: $c9


    db $e4                                        ; $70a0: $e4
    rst $20                                       ; $70a1: $e7
    dec hl                                        ; $70a2: $2b
    push hl                                       ; $70a3: $e5
    ld e, d                                       ; $70a4: $5a
    rlc c                                         ; $70a5: $cb $01
    ld l, e                                       ; $70a7: $6b
    inc bc                                        ; $70a8: $03
    inc bc                                        ; $70a9: $03
    dec bc                                        ; $70aa: $0b
    inc bc                                        ; $70ab: $03
    inc bc                                        ; $70ac: $03
    inc bc                                        ; $70ad: $03
    ld l, e                                       ; $70ae: $6b
    dec bc                                        ; $70af: $0b
    dec bc                                        ; $70b0: $0b
    dec bc                                        ; $70b1: $0b
    ld l, e                                       ; $70b2: $6b
    dec bc                                        ; $70b3: $0b
    inc bc                                        ; $70b4: $03
    dec bc                                        ; $70b5: $0b
    ld d, h                                       ; $70b6: $54
    ld d, l                                       ; $70b7: $55
    inc l                                         ; $70b8: $2c
    inc e                                         ; $70b9: $1c
    inc [hl]                                      ; $70ba: $34
    dec [hl]                                      ; $70bb: $35
    add hl, hl                                    ; $70bc: $29
    inc de                                        ; $70bd: $13
    add sp, $2b                                   ; $70be: $e8 $2b
    inc e                                         ; $70c0: $1c
    inc c                                         ; $70c1: $0c
    call z, Call_000_1c2c                         ; $70c2: $cc $2c $1c
    inc e                                         ; $70c5: $1c
    inc bc                                        ; $70c6: $03
    inc bc                                        ; $70c7: $03
    dec bc                                        ; $70c8: $0b
    ld bc, $0303                                  ; $70c9: $01 $03 $03
    ld l, e                                       ; $70cc: $6b
    add hl, bc                                    ; $70cd: $09
    dec bc                                        ; $70ce: $0b
    dec bc                                        ; $70cf: $0b
    ld bc, $0b09                                  ; $70d0: $01 $09 $0b
    dec bc                                        ; $70d3: $0b
    ld bc, $1c01                                  ; $70d4: $01 $01 $1c
    inc e                                         ; $70d7: $1c
    ld de, $1276                                  ; $70d8: $11 $76 $12
    ld [hl], l                                    ; $70db: $75
    ld e, $16                                     ; $70dc: $1e $16
    rla                                           ; $70de: $17
    rra                                           ; $70df: $1f
    ld [hl], h                                    ; $70e0: $74
    ld [de], a                                    ; $70e1: $12
    ld [hl], e                                    ; $70e2: $73
    inc e                                         ; $70e3: $1c
    inc e                                         ; $70e4: $1c
    ld a, $01                                     ; $70e5: $3e $01
    ld bc, $0109                                  ; $70e7: $01 $09 $01
    add hl, bc                                    ; $70ea: $09
    ld bc, $0909                                  ; $70eb: $01 $09 $09
    add hl, bc                                    ; $70ee: $09
    add hl, bc                                    ; $70ef: $09
    ld bc, $0109                                  ; $70f0: $01 $09 $01
    ld bc, $0101                                  ; $70f3: $01 $01 $01
    ld [hl], h                                    ; $70f6: $74
    ld [de], a                                    ; $70f7: $12
    inc e                                         ; $70f8: $1c
    add hl, hl                                    ; $70f9: $29
    ld de, $1c1c                                  ; $70fa: $11 $1c $1c
    inc l                                         ; $70fd: $2c
    inc e                                         ; $70fe: $1c
    inc e                                         ; $70ff: $1c
    inc e                                         ; $7100: $1c
    dec hl                                        ; $7101: $2b
    inc e                                         ; $7102: $1c
    inc e                                         ; $7103: $1c
    add hl, hl                                    ; $7104: $29
    ld e, e                                       ; $7105: $5b
    ld bc, $0109                                  ; $7106: $01 $09 $01
    dec bc                                        ; $7109: $0b
    add hl, bc                                    ; $710a: $09
    ld bc, $6b01                                  ; $710b: $01 $01 $6b
    ld bc, $0101                                  ; $710e: $01 $01 $01
    ld l, e                                       ; $7111: $6b
    ld bc, $0b01                                  ; $7112: $01 $01 $0b
    inc bc                                        ; $7115: $03
    ld d, h                                       ; $7116: $54
    ld d, l                                       ; $7117: $55
    ld e, [hl]                                    ; $7118: $5e
    ld e, a                                       ; $7119: $5f
    inc [hl]                                      ; $711a: $34
    dec [hl]                                      ; $711b: $35
    ld [hl], $37                                  ; $711c: $36 $37
    add sp, -$37                                  ; $711e: $e8 $c9
    ld d, a                                       ; $7120: $57
    ld e, b                                       ; $7121: $58
    and $e5                                       ; $7122: $e6 $e5
    ld e, d                                       ; $7124: $5a
    ld e, e                                       ; $7125: $5b
    inc bc                                        ; $7126: $03
    inc bc                                        ; $7127: $03
    inc bc                                        ; $7128: $03
    inc bc                                        ; $7129: $03
    inc bc                                        ; $712a: $03
    inc bc                                        ; $712b: $03
    inc bc                                        ; $712c: $03
    inc bc                                        ; $712d: $03
    dec bc                                        ; $712e: $0b
    dec bc                                        ; $712f: $0b
    inc bc                                        ; $7130: $03
    inc bc                                        ; $7131: $03
    dec bc                                        ; $7132: $0b
    dec bc                                        ; $7133: $0b
    inc bc                                        ; $7134: $03
    inc bc                                        ; $7135: $03
    ld d, h                                       ; $7136: $54
    add hl, hl                                    ; $7137: $29
    ld b, b                                       ; $7138: $40
    ld b, e                                       ; $7139: $43
    dec hl                                        ; $713a: $2b
    inc e                                         ; $713b: $1c
    ld b, d                                       ; $713c: $42
    ld b, l                                       ; $713d: $45
    inc l                                         ; $713e: $2c
    inc e                                         ; $713f: $1c
    inc e                                         ; $7140: $1c
    inc e                                         ; $7141: $1c
    add hl, hl                                    ; $7142: $29
    inc e                                         ; $7143: $1c
    ld l, c                                       ; $7144: $69
    ld l, h                                       ; $7145: $6c
    inc bc                                        ; $7146: $03
    ld l, e                                       ; $7147: $6b
    ld bc, $0b01                                  ; $7148: $01 $01 $0b
    ld bc, $0101                                  ; $714b: $01 $01 $01
    dec bc                                        ; $714e: $0b
    ld bc, $0101                                  ; $714f: $01 $01 $01
    ld l, e                                       ; $7152: $6b
    ld bc, $0101                                  ; $7153: $01 $01 $01
    inc e                                         ; $7156: $1c
    ld l, d                                       ; $7157: $6a
    inc e                                         ; $7158: $1c
    inc e                                         ; $7159: $1c
    ld l, h                                       ; $715a: $6c
    inc e                                         ; $715b: $1c
    inc e                                         ; $715c: $1c
    inc e                                         ; $715d: $1c
    inc e                                         ; $715e: $1c
    inc e                                         ; $715f: $1c
    inc e                                         ; $7160: $1c
    ld l, $1c                                     ; $7161: $2e $1c
    inc e                                         ; $7163: $1c
    inc e                                         ; $7164: $1c
    inc e                                         ; $7165: $1c
    ld bc, $0101                                  ; $7166: $01 $01 $01
    ld bc, $0101                                  ; $7169: $01 $01 $01
    ld bc, $0101                                  ; $716c: $01 $01 $01
    ld bc, $0101                                  ; $716f: $01 $01 $01
    ld bc, $0101                                  ; $7172: $01 $01 $01
    ld bc, $1c69                                  ; $7175: $01 $69 $1c
    inc l                                         ; $7178: $2c
    ld e, a                                       ; $7179: $5f
    inc e                                         ; $717a: $1c
    inc e                                         ; $717b: $1c
    dec hl                                        ; $717c: $2b
    scf                                           ; $717d: $37
    cpl                                           ; $717e: $2f
    add hl, hl                                    ; $717f: $29
    ld d, a                                       ; $7180: $57
    ld e, b                                       ; $7181: $58
    inc e                                         ; $7182: $1c
    ld c, e                                       ; $7183: $4b
    ld e, b                                       ; $7184: $58
    ld d, a                                       ; $7185: $57
    ld bc, $6b01                                  ; $7186: $01 $01 $6b
    inc bc                                        ; $7189: $03
    ld bc, $6b01                                  ; $718a: $01 $01 $6b
    inc bc                                        ; $718d: $03
    ld bc, $030b                                  ; $718e: $01 $0b $03
    inc bc                                        ; $7191: $03
    ld bc, $030b                                  ; $7192: $01 $0b $03
    inc bc                                        ; $7195: $03
    ld d, h                                       ; $7196: $54
    ld d, l                                       ; $7197: $55
    ld e, [hl]                                    ; $7198: $5e
    dec hl                                        ; $7199: $2b
    inc [hl]                                      ; $719a: $34
    and $36                                       ; $719b: $e6 $36
    inc l                                         ; $719d: $2c
    add sp, -$37                                  ; $719e: $e8 $c9
    ld d, a                                       ; $71a0: $57
    add hl, hl                                    ; $71a1: $29
    ld c, h                                       ; $71a2: $4c
    ld c, l                                       ; $71a3: $4d
    ld c, [hl]                                    ; $71a4: $4e
    inc e                                         ; $71a5: $1c
    inc bc                                        ; $71a6: $03
    inc bc                                        ; $71a7: $03
    inc bc                                        ; $71a8: $03
    dec bc                                        ; $71a9: $0b
    inc bc                                        ; $71aa: $03
    dec bc                                        ; $71ab: $0b
    inc bc                                        ; $71ac: $03
    dec bc                                        ; $71ad: $0b
    dec bc                                        ; $71ae: $0b
    dec bc                                        ; $71af: $0b
    inc bc                                        ; $71b0: $03
    ld l, e                                       ; $71b1: $6b
    dec bc                                        ; $71b2: $0b
    dec bc                                        ; $71b3: $0b
    dec bc                                        ; $71b4: $0b
    ld bc, $621c                                  ; $71b5: $01 $1c $62
    ld l, d                                       ; $71b8: $6a
    ld h, e                                       ; $71b9: $63
    inc e                                         ; $71ba: $1c
    inc e                                         ; $71bb: $1c
    ld h, a                                       ; $71bc: $67
    ld h, d                                       ; $71bd: $62
    inc e                                         ; $71be: $1c
    inc e                                         ; $71bf: $1c
    ld l, c                                       ; $71c0: $69
    inc e                                         ; $71c1: $1c
    inc e                                         ; $71c2: $1c
    inc e                                         ; $71c3: $1c
    inc e                                         ; $71c4: $1c
    inc e                                         ; $71c5: $1c
    ld bc, $0101                                  ; $71c6: $01 $01 $01
    ld bc, $0101                                  ; $71c9: $01 $01 $01
    ld bc, $0101                                  ; $71cc: $01 $01 $01
    ld bc, $0101                                  ; $71cf: $01 $01 $01
    ld bc, $0101                                  ; $71d2: $01 $01 $01
    ld bc, $4f4f                                  ; $71d5: $01 $4f $4f
    ld c, a                                       ; $71d8: $4f
    ld c, a                                       ; $71d9: $4f
    ld d, b                                       ; $71da: $50
    ld d, b                                       ; $71db: $50
    ld d, b                                       ; $71dc: $50
    ld d, b                                       ; $71dd: $50
    ld b, b                                       ; $71de: $40
    ld b, e                                       ; $71df: $43
    inc e                                         ; $71e0: $1c
    ld l, $42                                     ; $71e1: $2e $42
    ld b, l                                       ; $71e3: $45
    inc e                                         ; $71e4: $1c
    inc e                                         ; $71e5: $1c
    rrca                                          ; $71e6: $0f
    rrca                                          ; $71e7: $0f
    rrca                                          ; $71e8: $0f
    rrca                                          ; $71e9: $0f
    rrca                                          ; $71ea: $0f
    rrca                                          ; $71eb: $0f
    rrca                                          ; $71ec: $0f
    rrca                                          ; $71ed: $0f
    ld bc, $0101                                  ; $71ee: $01 $01 $01
    ld bc, $0101                                  ; $71f1: $01 $01 $01
    ld bc, $4f01                                  ; $71f4: $01 $01 $4f
    ld d, c                                       ; $71f7: $51
    ld d, d                                       ; $71f8: $52
    ld c, [hl]                                    ; $71f9: $4e
    ld d, b                                       ; $71fa: $50
    ld d, e                                       ; $71fb: $53
    ld d, h                                       ; $71fc: $54
    ld d, l                                       ; $71fd: $55
    cpl                                           ; $71fe: $2f
    ld c, [hl]                                    ; $71ff: $4e
    ld d, [hl]                                    ; $7200: $56
    ld d, a                                       ; $7201: $57
    inc l                                         ; $7202: $2c
    ret                                           ; $7203: $c9


    ld d, a                                       ; $7204: $57
    ld a, [bc]                                    ; $7205: $0a
    rrca                                          ; $7206: $0f
    rrca                                          ; $7207: $0f
    dec bc                                        ; $7208: $0b
    dec bc                                        ; $7209: $0b
    rrca                                          ; $720a: $0f
    rrca                                          ; $720b: $0f
    dec bc                                        ; $720c: $0b
    adc a                                         ; $720d: $8f
    ld bc, $0b6b                                  ; $720e: $01 $6b $0b
    adc a                                         ; $7211: $8f
    ld l, e                                       ; $7212: $6b
    dec bc                                        ; $7213: $0b
    inc bc                                        ; $7214: $03
    dec bc                                        ; $7215: $0b
    ld e, b                                       ; $7216: $58
    ld e, c                                       ; $7217: $59
    ld c, a                                       ; $7218: $4f
    ld c, a                                       ; $7219: $4f
    ld e, d                                       ; $721a: $5a
    ld e, e                                       ; $721b: $5b

Jump_081_721c:
    ld d, b                                       ; $721c: $50
    ld d, b                                       ; $721d: $50
    ld e, h                                       ; $721e: $5c
    ld l, $2f                                     ; $721f: $2e $2f
    ld b, b                                       ; $7221: $40
    dec bc                                        ; $7222: $0b
    db $dd                                        ; $7223: $dd
    inc e                                         ; $7224: $1c
    ld b, d                                       ; $7225: $42
    rrca                                          ; $7226: $0f
    rrca                                          ; $7227: $0f
    rrca                                          ; $7228: $0f
    rrca                                          ; $7229: $0f
    adc a                                         ; $722a: $8f
    rrca                                          ; $722b: $0f
    rrca                                          ; $722c: $0f
    rrca                                          ; $722d: $0f
    adc a                                         ; $722e: $8f
    ld bc, $0101                                  ; $722f: $01 $01 $01
    dec bc                                        ; $7232: $0b
    rlca                                          ; $7233: $07
    ld bc, $4f01                                  ; $7234: $01 $01 $4f
    ld c, a                                       ; $7237: $4f
    ld e, l                                       ; $7238: $5d
    inc e                                         ; $7239: $1c
    ld d, b                                       ; $723a: $50
    ld d, b                                       ; $723b: $50
    ld e, [hl]                                    ; $723c: $5e
    inc e                                         ; $723d: $1c
    ld b, e                                       ; $723e: $43
    inc e                                         ; $723f: $1c
    ld c, d                                       ; $7240: $4a
    dec c                                         ; $7241: $0d
    ld b, l                                       ; $7242: $45
    inc e                                         ; $7243: $1c
    ld c, d                                       ; $7244: $4a
    ld c, $0f                                     ; $7245: $0e $0f
    rrca                                          ; $7247: $0f
    rrca                                          ; $7248: $0f
    ld bc, $0f0f                                  ; $7249: $01 $0f $0f
    rrca                                          ; $724c: $0f
    ld bc, $0101                                  ; $724d: $01 $01 $01
    cpl                                           ; $7250: $2f
    xor d                                         ; $7251: $aa
    ld bc, $2f01                                  ; $7252: $01 $01 $2f
    xor d                                         ; $7255: $aa
    halt                                          ; $7256: $76
    ld [hl], h                                    ; $7257: $74
    ld [de], a                                    ; $7258: $12
    ld e, $73                                     ; $7259: $1e $73
    ld de, $0c1c                                  ; $725b: $11 $1c $0c
    ld [hl], l                                    ; $725e: $75
    inc de                                        ; $725f: $13
    inc e                                         ; $7260: $1c
    inc e                                         ; $7261: $1c
    halt                                          ; $7262: $76
    inc e                                         ; $7263: $1c
    inc e                                         ; $7264: $1c
    ld l, $01                                     ; $7265: $2e $01
    ld bc, $0909                                  ; $7267: $01 $09 $09
    ld bc, $0109                                  ; $726a: $01 $09 $01
    add hl, bc                                    ; $726d: $09
    ld bc, $0109                                  ; $726e: $01 $09 $01
    ld bc, $0101                                  ; $7271: $01 $01 $01
    ld bc, $7301                                  ; $7274: $01 $01 $73
    inc e                                         ; $7277: $1c
    ld h, d                                       ; $7278: $62
    ld l, d                                       ; $7279: $6a
    inc e                                         ; $727a: $1c
    ld l, c                                       ; $727b: $69
    ld l, h                                       ; $727c: $6c
    inc e                                         ; $727d: $1c
    ld h, d                                       ; $727e: $62
    inc e                                         ; $727f: $1c
    inc e                                         ; $7280: $1c
    inc e                                         ; $7281: $1c
    cpl                                           ; $7282: $2f
    inc e                                         ; $7283: $1c
    inc e                                         ; $7284: $1c
    ld l, d                                       ; $7285: $6a
    ld bc, $0101                                  ; $7286: $01 $01 $01
    ld bc, $0101                                  ; $7289: $01 $01 $01
    ld bc, $0101                                  ; $728c: $01 $01 $01
    ld bc, $0101                                  ; $728f: $01 $01 $01
    ld bc, $0101                                  ; $7292: $01 $01 $01
    ld bc, $1c1c                                  ; $7295: $01 $1c $1c
    ld l, h                                       ; $7298: $6c
    ld h, l                                       ; $7299: $65
    inc e                                         ; $729a: $1c
    ld l, d                                       ; $729b: $6a
    ld h, h                                       ; $729c: $64
    ld l, c                                       ; $729d: $69
    ld l, h                                       ; $729e: $6c
    ld h, l                                       ; $729f: $65
    ld h, [hl]                                    ; $72a0: $66
    ld l, d                                       ; $72a1: $6a
    ld l, e                                       ; $72a2: $6b
    ld l, l                                       ; $72a3: $6d
    ld l, h                                       ; $72a4: $6c
    ld h, a                                       ; $72a5: $67
    ld bc, $0101                                  ; $72a6: $01 $01 $01
    ld bc, $0101                                  ; $72a9: $01 $01 $01
    ld bc, $0101                                  ; $72ac: $01 $01 $01
    ld bc, $0101                                  ; $72af: $01 $01 $01
    ld bc, $0101                                  ; $72b2: $01 $01 $01
    ld bc, $6a62                                  ; $72b5: $01 $62 $6a
    ld h, h                                       ; $72b8: $64
    ld l, c                                       ; $72b9: $69
    ld l, h                                       ; $72ba: $6c
    ld h, l                                       ; $72bb: $65
    ld h, d                                       ; $72bc: $62
    ld b, b                                       ; $72bd: $40
    ld h, h                                       ; $72be: $64
    ld l, l                                       ; $72bf: $6d
    ld l, h                                       ; $72c0: $6c
    ld b, d                                       ; $72c1: $42
    ld h, [hl]                                    ; $72c2: $66

Jump_081_72c3:
    ld l, d                                       ; $72c3: $6a
    ld [hl], c                                    ; $72c4: $71
    inc e                                         ; $72c5: $1c
    ld bc, $0101                                  ; $72c6: $01 $01 $01
    ld bc, $0101                                  ; $72c9: $01 $01 $01
    ld bc, $0101                                  ; $72cc: $01 $01 $01
    ld bc, $0101                                  ; $72cf: $01 $01 $01
    ld bc, $0701                                  ; $72d2: $01 $01 $07
    ld bc, $1c1c                                  ; $72d5: $01 $1c $1c
    ld [hl], c                                    ; $72d8: $71
    inc e                                         ; $72d9: $1c
    inc e                                         ; $72da: $1c
    inc e                                         ; $72db: $1c
    inc e                                         ; $72dc: $1c
    inc e                                         ; $72dd: $1c
    ld l, d                                       ; $72de: $6a
    ld l, e                                       ; $72df: $6b
    ld l, c                                       ; $72e0: $69
    inc e                                         ; $72e1: $1c
    ld l, b                                       ; $72e2: $68
    ld h, l                                       ; $72e3: $65
    ld h, [hl]                                    ; $72e4: $66
    ld l, e                                       ; $72e5: $6b
    ld bc, $0701                                  ; $72e6: $01 $01 $07
    ld bc, $0101                                  ; $72e9: $01 $01 $01
    ld bc, $0101                                  ; $72ec: $01 $01 $01
    ld bc, $0101                                  ; $72ef: $01 $01 $01
    ld bc, $0101                                  ; $72f2: $01 $01 $01
    ld bc, $1c1c                                  ; $72f5: $01 $1c $1c
    ld l, h                                       ; $72f8: $6c
    inc e                                         ; $72f9: $1c
    inc e                                         ; $72fa: $1c
    inc e                                         ; $72fb: $1c
    inc e                                         ; $72fc: $1c
    ld l, c                                       ; $72fd: $69
    inc e                                         ; $72fe: $1c
    ld a, $1c                                     ; $72ff: $3e $1c
    ld l, d                                       ; $7301: $6a
    ld l, c                                       ; $7302: $69
    inc e                                         ; $7303: $1c
    ld l, h                                       ; $7304: $6c
    ld h, l                                       ; $7305: $65
    ld bc, $0101                                  ; $7306: $01 $01 $01
    ld bc, $0101                                  ; $7309: $01 $01 $01
    ld bc, $0101                                  ; $730c: $01 $01 $01
    ld bc, $0101                                  ; $730f: $01 $01 $01
    ld bc, $0101                                  ; $7312: $01 $01 $01
    ld bc, $6362                                  ; $7315: $01 $62 $63
    ld h, h                                       ; $7318: $64
    ld l, c                                       ; $7319: $69
    ld l, b                                       ; $731a: $68
    ld h, l                                       ; $731b: $65
    ld h, d                                       ; $731c: $62
    inc e                                         ; $731d: $1c
    ld h, h                                       ; $731e: $64
    ld l, c                                       ; $731f: $69
    inc e                                         ; $7320: $1c
    ld h, a                                       ; $7321: $67
    ld h, d                                       ; $7322: $62
    inc e                                         ; $7323: $1c
    ld l, e                                       ; $7324: $6b
    inc e                                         ; $7325: $1c
    ld bc, $0101                                  ; $7326: $01 $01 $01
    ld bc, $0101                                  ; $7329: $01 $01 $01
    ld bc, $0101                                  ; $732c: $01 $01 $01
    ld bc, $0101                                  ; $732f: $01 $01 $01
    ld bc, $0101                                  ; $7332: $01 $01 $01
    ld bc, $676c                                  ; $7335: $01 $6c $67
    inc e                                         ; $7338: $1c
    inc e                                         ; $7339: $1c
    ld l, e                                       ; $733a: $6b
    ld a, $1c                                     ; $733b: $3e $1c
    inc e                                         ; $733d: $1c
    inc e                                         ; $733e: $1c
    inc e                                         ; $733f: $1c
    inc e                                         ; $7340: $1c
    ld l, c                                       ; $7341: $69
    inc e                                         ; $7342: $1c
    ld h, a                                       ; $7343: $67
    ld h, d                                       ; $7344: $62
    ld h, l                                       ; $7345: $65
    ld bc, $0101                                  ; $7346: $01 $01 $01
    ld bc, $0101                                  ; $7349: $01 $01 $01
    ld bc, $0101                                  ; $734c: $01 $01 $01
    ld bc, $0101                                  ; $734f: $01 $01 $01
    ld bc, $0101                                  ; $7352: $01 $01 $01
    ld bc, $6c64                                  ; $7355: $01 $64 $6c
    ld h, a                                       ; $7358: $67
    inc e                                         ; $7359: $1c
    inc e                                         ; $735a: $1c
    inc e                                         ; $735b: $1c
    ld l, $2f                                     ; $735c: $2e $2f
    inc e                                         ; $735e: $1c
    ccf                                           ; $735f: $3f
    inc e                                         ; $7360: $1c
    inc e                                         ; $7361: $1c
    pop hl                                        ; $7362: $e1
    ld b, c                                       ; $7363: $41
    pop hl                                        ; $7364: $e1
    inc e                                         ; $7365: $1c
    ld bc, $0101                                  ; $7366: $01 $01 $01
    ld bc, $0101                                  ; $7369: $01 $01 $01
    ld bc, $0101                                  ; $736c: $01 $01 $01
    add d                                         ; $736f: $82
    ld bc, $a201                                  ; $7370: $01 $01 $a2
    add d                                         ; $7373: $82
    add d                                         ; $7374: $82
    ld bc, $1c1c                                  ; $7375: $01 $1c $1c
    ld l, e                                       ; $7378: $6b
    ld l, c                                       ; $7379: $69
    inc e                                         ; $737a: $1c
    ld h, a                                       ; $737b: $67
    ld h, d                                       ; $737c: $62
    inc e                                         ; $737d: $1c
    ld l, e                                       ; $737e: $6b
    inc e                                         ; $737f: $1c
    inc e                                         ; $7380: $1c
    inc e                                         ; $7381: $1c
    inc e                                         ; $7382: $1c
    ccf                                           ; $7383: $3f
    inc e                                         ; $7384: $1c
    ld b, b                                       ; $7385: $40
    ld bc, $0101                                  ; $7386: $01 $01 $01
    ld bc, $0101                                  ; $7389: $01 $01 $01
    ld bc, $0101                                  ; $738c: $01 $01 $01
    ld bc, $0101                                  ; $738f: $01 $01 $01
    ld bc, $0182                                  ; $7392: $01 $82 $01
    ld bc, $1c1c                                  ; $7395: $01 $1c $1c
    inc e                                         ; $7398: $1c
    inc e                                         ; $7399: $1c
    inc e                                         ; $739a: $1c
    inc e                                         ; $739b: $1c
    inc e                                         ; $739c: $1c
    ld h, a                                       ; $739d: $67
    inc e                                         ; $739e: $1c
    inc e                                         ; $739f: $1c
    ld l, e                                       ; $73a0: $6b
    inc e                                         ; $73a1: $1c
    ld b, e                                       ; $73a2: $43
    inc e                                         ; $73a3: $1c
    ccf                                           ; $73a4: $3f
    inc e                                         ; $73a5: $1c
    ld bc, $0101                                  ; $73a6: $01 $01 $01
    ld bc, $0101                                  ; $73a9: $01 $01 $01
    ld bc, $0101                                  ; $73ac: $01 $01 $01
    ld bc, $0101                                  ; $73af: $01 $01 $01
    ld bc, $8201                                  ; $73b2: $01 $01 $82
    ld bc, $696b                                  ; $73b5: $01 $6b $69
    ld h, h                                       ; $73b8: $64
    ld l, l                                       ; $73b9: $6d
    ld l, b                                       ; $73ba: $68
    ld l, d                                       ; $73bb: $6a
    ld l, e                                       ; $73bc: $6b
    inc e                                         ; $73bd: $1c
    ld l, h                                       ; $73be: $6c
    inc e                                         ; $73bf: $1c
    inc e                                         ; $73c0: $1c
    ccf                                           ; $73c1: $3f
    inc e                                         ; $73c2: $1c
    inc e                                         ; $73c3: $1c
    pop hl                                        ; $73c4: $e1
    ld b, c                                       ; $73c5: $41
    ld bc, $0101                                  ; $73c6: $01 $01 $01
    ld bc, $0101                                  ; $73c9: $01 $01 $01
    ld bc, $0101                                  ; $73cc: $01 $01 $01
    ld bc, $8201                                  ; $73cf: $01 $01 $82
    ld bc, $a201                                  ; $73d2: $01 $01 $a2
    add d                                         ; $73d5: $82
    inc c                                         ; $73d6: $0c
    ret c                                         ; $73d7: $d8

    db $e4                                        ; $73d8: $e4
    inc e                                         ; $73d9: $1c
    ld c, $dc                                     ; $73da: $0e $dc
    rst $20                                       ; $73dc: $e7
    inc e                                         ; $73dd: $1c
    rst $18                                       ; $73de: $df
    ldh [$ea], a                                  ; $73df: $e0 $ea
    inc e                                         ; $73e1: $1c
    pop de                                        ; $73e2: $d1
    jp nc, Jump_000_1110                          ; $73e3: $d2 $10 $11

    add d                                         ; $73e6: $82
    add d                                         ; $73e7: $82
    add d                                         ; $73e8: $82
    ld bc, $8282                                  ; $73e9: $01 $82 $82
    add d                                         ; $73ec: $82
    ld bc, $a2a2                                  ; $73ed: $01 $a2 $a2
    and d                                         ; $73f0: $a2
    ld bc, $8282                                  ; $73f1: $01 $82 $82
    and d                                         ; $73f4: $a2
    and d                                         ; $73f5: $a2
    pop hl                                        ; $73f6: $e1
    ld b, c                                       ; $73f7: $41
    pop hl                                        ; $73f8: $e1
    ld b, d                                       ; $73f9: $42
    inc c                                         ; $73fa: $0c
    ret c                                         ; $73fb: $d8

    db $e4                                        ; $73fc: $e4
    inc e                                         ; $73fd: $1c
    ld c, $dc                                     ; $73fe: $0e $dc
    rst $20                                       ; $7400: $e7
    inc e                                         ; $7401: $1c
    rst $18                                       ; $7402: $df
    ldh [$ea], a                                  ; $7403: $e0 $ea
    pop hl                                        ; $7405: $e1
    and d                                         ; $7406: $a2
    add d                                         ; $7407: $82
    add d                                         ; $7408: $82
    ld bc, $8282                                  ; $7409: $01 $82 $82
    add d                                         ; $740c: $82
    ld bc, $8282                                  ; $740d: $01 $82 $82
    add d                                         ; $7410: $82
    ld bc, $a2a2                                  ; $7411: $01 $a2 $a2
    and d                                         ; $7414: $a2
    and d                                         ; $7415: $a2
    ld b, l                                       ; $7416: $45
    pop hl                                        ; $7417: $e1
    ld b, c                                       ; $7418: $41
    pop hl                                        ; $7419: $e1
    inc e                                         ; $741a: $1c
    inc c                                         ; $741b: $0c
    ret c                                         ; $741c: $d8

    db $e4                                        ; $741d: $e4
    ccf                                           ; $741e: $3f
    ld c, $dc                                     ; $741f: $0e $dc
    rst $20                                       ; $7421: $e7
    ld b, c                                       ; $7422: $41
    rst $18                                       ; $7423: $df
    ldh [$ea], a                                  ; $7424: $e0 $ea
    ld bc, $82a2                                  ; $7426: $01 $a2 $82
    add d                                         ; $7429: $82
    ld bc, $8282                                  ; $742a: $01 $82 $82
    add d                                         ; $742d: $82
    add d                                         ; $742e: $82
    add d                                         ; $742f: $82
    add d                                         ; $7430: $82
    add d                                         ; $7431: $82
    add d                                         ; $7432: $82
    and d                                         ; $7433: $a2
    and d                                         ; $7434: $a2
    and d                                         ; $7435: $a2
    inc e                                         ; $7436: $1c
    ld a, $0c                                     ; $7437: $3e $0c
    ret c                                         ; $7439: $d8

    inc e                                         ; $743a: $1c
    inc e                                         ; $743b: $1c
    ld c, $dc                                     ; $743c: $0e $dc
    inc e                                         ; $743e: $1c
    dec c                                         ; $743f: $0d
    rst $18                                       ; $7440: $df
    ldh [rNR32], a                                ; $7441: $e0 $1c
    ld c, $d1                                     ; $7443: $0e $d1
    jp nc, $0101                                  ; $7445: $d2 $01 $01

    add d                                         ; $7448: $82
    add d                                         ; $7449: $82
    ld bc, $8201                                  ; $744a: $01 $01 $82
    add d                                         ; $744d: $82
    ld bc, $a2aa                                  ; $744e: $01 $aa $a2
    and d                                         ; $7451: $a2
    ld bc, $822a                                  ; $7452: $01 $2a $82
    add d                                         ; $7455: $82
    inc e                                         ; $7456: $1c
    inc e                                         ; $7457: $1c
    inc e                                         ; $7458: $1c
    inc e                                         ; $7459: $1c
    ld b, e                                       ; $745a: $43
    inc e                                         ; $745b: $1c
    inc e                                         ; $745c: $1c
    ld h, a                                       ; $745d: $67
    ld b, l                                       ; $745e: $45
    inc e                                         ; $745f: $1c
    ld l, e                                       ; $7460: $6b
    ld l, c                                       ; $7461: $69
    inc e                                         ; $7462: $1c
    ld h, a                                       ; $7463: $67
    ld h, d                                       ; $7464: $62
    inc e                                         ; $7465: $1c
    ld bc, $0101                                  ; $7466: $01 $01 $01
    ld bc, $0101                                  ; $7469: $01 $01 $01
    ld bc, $0101                                  ; $746c: $01 $01 $01
    ld bc, $0101                                  ; $746f: $01 $01 $01
    ld bc, $0101                                  ; $7472: $01 $01 $01
    ld bc, $0c1c                                  ; $7475: $01 $1c $0c
    ld [de], a                                    ; $7478: $12
    inc e                                         ; $7479: $1c
    inc e                                         ; $747a: $1c
    inc e                                         ; $747b: $1c
    inc e                                         ; $747c: $1c
    or l                                          ; $747d: $b5
    inc e                                         ; $747e: $1c
    inc e                                         ; $747f: $1c
    ld l, [hl]                                    ; $7480: $6e
    cp c                                          ; $7481: $b9
    ld a, $1c                                     ; $7482: $3e $1c
    ld l, a                                       ; $7484: $6f
    cp l                                          ; $7485: $bd
    ld bc, $0909                                  ; $7486: $01 $09 $09
    ld bc, $0101                                  ; $7489: $01 $01 $01
    ld bc, $018a                                  ; $748c: $01 $8a $01
    ld bc, $8a82                                  ; $748f: $01 $82 $8a
    ld bc, $8201                                  ; $7492: $01 $01 $82
    adc d                                         ; $7495: $8a
    inc e                                         ; $7496: $1c
    inc e                                         ; $7497: $1c
    dec d                                         ; $7498: $15
    inc e                                         ; $7499: $1c
    or [hl]                                       ; $749a: $b6
    or a                                          ; $749b: $b7
    cp b                                          ; $749c: $b8
    inc e                                         ; $749d: $1c
    cp d                                          ; $749e: $ba
    cp e                                          ; $749f: $bb
    cp h                                          ; $74a0: $bc
    push bc                                       ; $74a1: $c5
    cp [hl]                                       ; $74a2: $be
    cp a                                          ; $74a3: $bf
    ret nz                                        ; $74a4: $c0

    add $01                                       ; $74a5: $c6 $01
    ld bc, $010b                                  ; $74a7: $01 $0b $01
    adc d                                         ; $74aa: $8a
    adc d                                         ; $74ab: $8a
    adc d                                         ; $74ac: $8a
    ld bc, $8a8a                                  ; $74ad: $01 $8a $8a
    adc d                                         ; $74b0: $8a
    adc d                                         ; $74b1: $8a
    adc d                                         ; $74b2: $8a
    adc d                                         ; $74b3: $8a
    adc d                                         ; $74b4: $8a
    adc d                                         ; $74b5: $8a
    ld l, e                                       ; $74b6: $6b
    inc e                                         ; $74b7: $1c
    inc e                                         ; $74b8: $1c
    inc e                                         ; $74b9: $1c
    inc e                                         ; $74ba: $1c
    inc e                                         ; $74bb: $1c
    inc e                                         ; $74bc: $1c
    ld [hl], c                                    ; $74bd: $71
    ld l, h                                       ; $74be: $6c
    ld h, a                                       ; $74bf: $67
    ld h, d                                       ; $74c0: $62
    inc e                                         ; $74c1: $1c
    ld h, [hl]                                    ; $74c2: $66
    ld h, e                                       ; $74c3: $63
    ld h, h                                       ; $74c4: $64
    ld h, a                                       ; $74c5: $67
    ld bc, $0101                                  ; $74c6: $01 $01 $01
    ld bc, $0101                                  ; $74c9: $01 $01 $01
    ld bc, $0107                                  ; $74cc: $01 $07 $01
    ld bc, $0101                                  ; $74cf: $01 $01 $01
    ld bc, $0101                                  ; $74d2: $01 $01 $01
    ld bc, $1c1c                                  ; $74d5: $01 $1c $1c
    ld [hl], b                                    ; $74d8: $70
    pop bc                                        ; $74d9: $c1
    inc e                                         ; $74da: $1c
    inc e                                         ; $74db: $1c
    ld [hl], d                                    ; $74dc: $72
    db $db                                        ; $74dd: $db
    ld l, e                                       ; $74de: $6b
    ld l, c                                       ; $74df: $69
    inc e                                         ; $74e0: $1c
    inc e                                         ; $74e1: $1c
    ld l, b                                       ; $74e2: $68
    ld l, d                                       ; $74e3: $6a
    ld l, e                                       ; $74e4: $6b
    ld l, c                                       ; $74e5: $69
    ld bc, $8201                                  ; $74e6: $01 $01 $82
    adc d                                         ; $74e9: $8a
    ld bc, $8201                                  ; $74ea: $01 $01 $82
    adc d                                         ; $74ed: $8a
    ld bc, $0101                                  ; $74ee: $01 $01 $01
    ld bc, $0101                                  ; $74f1: $01 $01 $01
    ld bc, $c201                                  ; $74f4: $01 $01 $c2
    jp $c7c4                                      ; $74f7: $c3 $c4 $c7


    call c, $dedd                                 ; $74fa: $dc $dd $de
    db $e3                                        ; $74fd: $e3
    rst $18                                       ; $74fe: $df
    ldh [rNR32], a                                ; $74ff: $e0 $1c
    inc e                                         ; $7501: $1c
    pop hl                                        ; $7502: $e1
    ld [c], a                                     ; $7503: $e2
    inc e                                         ; $7504: $1c
    inc e                                         ; $7505: $1c
    adc d                                         ; $7506: $8a
    adc d                                         ; $7507: $8a
    adc d                                         ; $7508: $8a
    adc d                                         ; $7509: $8a
    adc d                                         ; $750a: $8a
    adc d                                         ; $750b: $8a
    adc d                                         ; $750c: $8a
    adc d                                         ; $750d: $8a
    dec bc                                        ; $750e: $0b
    dec bc                                        ; $750f: $0b
    ld bc, $0b01                                  ; $7510: $01 $01 $0b
    dec bc                                        ; $7513: $0b
    ld bc, $6201                                  ; $7514: $01 $01 $62
    ld l, d                                       ; $7517: $6a
    ld h, [hl]                                    ; $7518: $66
    ld h, e                                       ; $7519: $63
    inc e                                         ; $751a: $1c
    inc e                                         ; $751b: $1c
    ld h, d                                       ; $751c: $62
    ld l, d                                       ; $751d: $6a
    inc e                                         ; $751e: $1c
    inc e                                         ; $751f: $1c
    inc e                                         ; $7520: $1c
    inc e                                         ; $7521: $1c
    pop hl                                        ; $7522: $e1
    inc e                                         ; $7523: $1c
    inc e                                         ; $7524: $1c
    pop hl                                        ; $7525: $e1
    ld bc, $0101                                  ; $7526: $01 $01 $01
    ld bc, $0101                                  ; $7529: $01 $01 $01
    ld bc, $0101                                  ; $752c: $01 $01 $01
    ld bc, $0101                                  ; $752f: $01 $01 $01
    add d                                         ; $7532: $82
    ld bc, $a201                                  ; $7533: $01 $01 $a2
    ld l, h                                       ; $7536: $6c
    ld h, a                                       ; $7537: $67
    ld h, d                                       ; $7538: $62
    inc e                                         ; $7539: $1c
    ld l, e                                       ; $753a: $6b
    inc e                                         ; $753b: $1c
    inc e                                         ; $753c: $1c
    inc e                                         ; $753d: $1c
    ccf                                           ; $753e: $3f
    inc e                                         ; $753f: $1c
    ld l, $2f                                     ; $7540: $2e $2f
    ld b, c                                       ; $7542: $41
    pop hl                                        ; $7543: $e1
    inc e                                         ; $7544: $1c
    inc e                                         ; $7545: $1c
    ld bc, $0101                                  ; $7546: $01 $01 $01
    ld bc, $0101                                  ; $7549: $01 $01 $01
    ld bc, $8201                                  ; $754c: $01 $01 $82
    ld bc, $0101                                  ; $754f: $01 $01 $01
    add d                                         ; $7552: $82
    add d                                         ; $7553: $82
    ld bc, $1c01                                  ; $7554: $01 $01 $1c
    ccf                                           ; $7557: $3f
    inc e                                         ; $7558: $1c
    inc e                                         ; $7559: $1c
    pop hl                                        ; $755a: $e1
    ld b, c                                       ; $755b: $41
    pop hl                                        ; $755c: $e1
    inc e                                         ; $755d: $1c
    inc c                                         ; $755e: $0c
    ret c                                         ; $755f: $d8

    db $e4                                        ; $7560: $e4
    inc e                                         ; $7561: $1c
    ld c, $dc                                     ; $7562: $0e $dc
    rst $20                                       ; $7564: $e7
    inc e                                         ; $7565: $1c
    ld bc, $0182                                  ; $7566: $01 $82 $01
    ld bc, $82a2                                  ; $7569: $01 $a2 $82
    add d                                         ; $756c: $82
    ld bc, $8282                                  ; $756d: $01 $82 $82
    add d                                         ; $7570: $82
    ld bc, $8282                                  ; $7571: $01 $82 $82
    add d                                         ; $7574: $82
    ld bc, $1ce4                                  ; $7575: $01 $e4 $1c
    inc e                                         ; $7578: $1c
    inc c                                         ; $7579: $0c
    rst $20                                       ; $757a: $e7
    inc e                                         ; $757b: $1c
    ccf                                           ; $757c: $3f
    ld c, $ea                                     ; $757d: $0e $ea
    pop hl                                        ; $757f: $e1
    ld b, c                                       ; $7580: $41
    rst $18                                       ; $7581: $df
    db $10                                        ; $7582: $10
    ld b, e                                       ; $7583: $43
    ret c                                         ; $7584: $d8

    ld b, a                                       ; $7585: $47
    add d                                         ; $7586: $82
    ld bc, $8201                                  ; $7587: $01 $01 $82
    add d                                         ; $758a: $82
    ld bc, $8282                                  ; $758b: $01 $82 $82
    and d                                         ; $758e: $a2
    and d                                         ; $758f: $a2
    add d                                         ; $7590: $82
    and d                                         ; $7591: $a2
    and d                                         ; $7592: $a2
    adc d                                         ; $7593: $8a
    add d                                         ; $7594: $82
    adc d                                         ; $7595: $8a
    ret c                                         ; $7596: $d8

    db $e4                                        ; $7597: $e4
    inc e                                         ; $7598: $1c
    dec c                                         ; $7599: $0d
    call c, $1ce7                                 ; $759a: $dc $e7 $1c
    ld c, $e0                                     ; $759d: $0e $e0
    ld [$0f1c], a                                 ; $759f: $ea $1c $0f
    jp nc, Jump_000_1110                          ; $75a2: $d2 $10 $11

    db $10                                        ; $75a5: $10
    add d                                         ; $75a6: $82
    add d                                         ; $75a7: $82
    ld bc, $82aa                                  ; $75a8: $01 $aa $82
    add d                                         ; $75ab: $82
    ld bc, $a2aa                                  ; $75ac: $01 $aa $a2
    and d                                         ; $75af: $a2
    ld bc, $82aa                                  ; $75b0: $01 $aa $82
    and d                                         ; $75b3: $a2
    and d                                         ; $75b4: $a2
    xor d                                         ; $75b5: $aa
    rst $18                                       ; $75b6: $df
    ldh [$ea], a                                  ; $75b7: $e0 $ea
    inc e                                         ; $75b9: $1c
    pop de                                        ; $75ba: $d1
    jp nc, Jump_000_1110                          ; $75bb: $d2 $10 $11

    push de                                       ; $75be: $d5
    sub $14                                       ; $75bf: $d6 $14
    dec d                                         ; $75c1: $15
    reti                                          ; $75c2: $d9


    jp c, $1918                                   ; $75c3: $da $18 $19

    and d                                         ; $75c6: $a2
    and d                                         ; $75c7: $a2
    and d                                         ; $75c8: $a2
    ld bc, $8282                                  ; $75c9: $01 $82 $82
    and d                                         ; $75cc: $a2
    and d                                         ; $75cd: $a2
    add d                                         ; $75ce: $82
    add d                                         ; $75cf: $82
    and d                                         ; $75d0: $a2
    and d                                         ; $75d1: $a2
    add d                                         ; $75d2: $82
    add d                                         ; $75d3: $82
    and d                                         ; $75d4: $a2
    and d                                         ; $75d5: $a2
    inc e                                         ; $75d6: $1c
    ld h, a                                       ; $75d7: $67
    inc e                                         ; $75d8: $1c
    inc e                                         ; $75d9: $1c
    inc e                                         ; $75da: $1c
    or l                                          ; $75db: $b5
    or [hl]                                       ; $75dc: $b6
    or a                                          ; $75dd: $b7
    ld l, [hl]                                    ; $75de: $6e
    cp c                                          ; $75df: $b9
    cp d                                          ; $75e0: $ba
    cp e                                          ; $75e1: $bb
    ld l, a                                       ; $75e2: $6f
    cp l                                          ; $75e3: $bd
    cp [hl]                                       ; $75e4: $be
    cp a                                          ; $75e5: $bf
    ld bc, $0101                                  ; $75e6: $01 $01 $01
    ld bc, $8a01                                  ; $75e9: $01 $01 $8a
    adc d                                         ; $75ec: $8a
    adc d                                         ; $75ed: $8a
    add d                                         ; $75ee: $82
    adc d                                         ; $75ef: $8a
    adc d                                         ; $75f0: $8a
    adc d                                         ; $75f1: $8a
    add d                                         ; $75f2: $82
    adc d                                         ; $75f3: $8a
    adc d                                         ; $75f4: $8a
    adc d                                         ; $75f5: $8a
    ld l, e                                       ; $75f6: $6b
    ld l, c                                       ; $75f7: $69
    ld l, h                                       ; $75f8: $6c
    ld h, [hl]                                    ; $75f9: $66
    cp b                                          ; $75fa: $b8
    inc e                                         ; $75fb: $1c
    ld l, e                                       ; $75fc: $6b
    ld l, c                                       ; $75fd: $69
    cp h                                          ; $75fe: $bc
    push bc                                       ; $75ff: $c5
    inc e                                         ; $7600: $1c
    inc e                                         ; $7601: $1c
    ret nz                                        ; $7602: $c0

    add $1c                                       ; $7603: $c6 $1c
    inc e                                         ; $7605: $1c
    ld bc, $0101                                  ; $7606: $01 $01 $01
    ld bc, $018a                                  ; $7609: $01 $8a $01
    ld bc, $8a01                                  ; $760c: $01 $01 $8a
    adc d                                         ; $760f: $8a
    ld bc, $8a01                                  ; $7610: $01 $01 $8a
    adc d                                         ; $7613: $8a
    ld bc, $6301                                  ; $7614: $01 $01 $63
    ld l, d                                       ; $7617: $6a
    ld l, l                                       ; $7618: $6d
    ld l, c                                       ; $7619: $69
    ld l, h                                       ; $761a: $6c
    ld h, [hl]                                    ; $761b: $66
    ld h, d                                       ; $761c: $62
    ld h, h                                       ; $761d: $64
    ld l, e                                       ; $761e: $6b
    ld l, c                                       ; $761f: $69
    ld h, l                                       ; $7620: $65
    ld h, a                                       ; $7621: $67
    inc e                                         ; $7622: $1c
    inc e                                         ; $7623: $1c
    ld l, e                                       ; $7624: $6b
    ld l, c                                       ; $7625: $69
    ld bc, $0101                                  ; $7626: $01 $01 $01
    ld bc, $0101                                  ; $7629: $01 $01 $01
    ld bc, $0101                                  ; $762c: $01 $01 $01
    ld bc, $0101                                  ; $762f: $01 $01 $01
    ld bc, $0101                                  ; $7632: $01 $01 $01
    ld bc, $c170                                  ; $7635: $01 $70 $c1
    jp nz, Jump_081_72c3                          ; $7638: $c2 $c3 $72

    db $db                                        ; $763b: $db
    call c, Call_000_1cdd                         ; $763c: $dc $dd $1c
    inc e                                         ; $763f: $1c
    rst $18                                       ; $7640: $df
    ldh [$3e], a                                  ; $7641: $e0 $3e
    inc e                                         ; $7643: $1c
    pop hl                                        ; $7644: $e1
    ld [c], a                                     ; $7645: $e2
    add d                                         ; $7646: $82
    adc d                                         ; $7647: $8a
    adc d                                         ; $7648: $8a
    adc d                                         ; $7649: $8a
    add d                                         ; $764a: $82
    adc d                                         ; $764b: $8a
    adc d                                         ; $764c: $8a
    adc d                                         ; $764d: $8a
    ld bc, $0b01                                  ; $764e: $01 $01 $0b
    dec bc                                        ; $7651: $0b
    ld bc, $0b01                                  ; $7652: $01 $01 $0b
    dec bc                                        ; $7655: $0b
    call nz, $1cc7                                ; $7656: $c4 $c7 $1c
    ld l, $de                                     ; $7659: $2e $de
    db $e3                                        ; $765b: $e3
    inc e                                         ; $765c: $1c
    inc e                                         ; $765d: $1c
    inc e                                         ; $765e: $1c
    inc e                                         ; $765f: $1c
    ld a, $1c                                     ; $7660: $3e $1c
    inc e                                         ; $7662: $1c
    inc e                                         ; $7663: $1c
    ld l, c                                       ; $7664: $69
    ld l, h                                       ; $7665: $6c
    adc d                                         ; $7666: $8a
    adc d                                         ; $7667: $8a
    ld bc, $8a01                                  ; $7668: $01 $01 $8a
    adc d                                         ; $766b: $8a
    ld bc, $0101                                  ; $766c: $01 $01 $01
    ld bc, $0101                                  ; $766f: $01 $01 $01
    ld bc, $0101                                  ; $7672: $01 $01 $01
    ld bc, $1c2f                                  ; $7675: $01 $2f $1c
    inc e                                         ; $7678: $1c
    ld l, h                                       ; $7679: $6c
    inc e                                         ; $767a: $1c
    inc e                                         ; $767b: $1c
    ld h, a                                       ; $767c: $67
    ld h, [hl]                                    ; $767d: $66
    ld l, d                                       ; $767e: $6a
    ld l, e                                       ; $767f: $6b
    ld l, l                                       ; $7680: $6d
    ld l, b                                       ; $7681: $68
    ld l, l                                       ; $7682: $6d
    ld h, [hl]                                    ; $7683: $66
    ld h, e                                       ; $7684: $63
    ld h, h                                       ; $7685: $64
    ld bc, $0101                                  ; $7686: $01 $01 $01
    ld bc, $0101                                  ; $7689: $01 $01 $01
    ld bc, $0101                                  ; $768c: $01 $01 $01
    ld bc, $0101                                  ; $768f: $01 $01 $01
    ld bc, $0101                                  ; $7692: $01 $01 $01
    ld bc, $1c1c                                  ; $7695: $01 $1c $1c
    inc e                                         ; $7698: $1c
    inc e                                         ; $7699: $1c
    inc e                                         ; $769a: $1c
    inc e                                         ; $769b: $1c
    ccf                                           ; $769c: $3f
    ld l, $1c                                     ; $769d: $2e $1c
    pop hl                                        ; $769f: $e1
    ld b, c                                       ; $76a0: $41
    pop hl                                        ; $76a1: $e1
    inc e                                         ; $76a2: $1c
    inc c                                         ; $76a3: $0c
    ret c                                         ; $76a4: $d8

    db $e4                                        ; $76a5: $e4
    ld bc, $0101                                  ; $76a6: $01 $01 $01
    ld bc, $0101                                  ; $76a9: $01 $01 $01
    add d                                         ; $76ac: $82
    ld bc, $a201                                  ; $76ad: $01 $01 $a2
    add d                                         ; $76b0: $82
    add d                                         ; $76b1: $82
    ld bc, $8282                                  ; $76b2: $01 $82 $82
    add d                                         ; $76b5: $82
    inc e                                         ; $76b6: $1c
    inc e                                         ; $76b7: $1c
    inc e                                         ; $76b8: $1c
    ccf                                           ; $76b9: $3f
    cpl                                           ; $76ba: $2f
    inc e                                         ; $76bb: $1c
    pop hl                                        ; $76bc: $e1
    ld b, c                                       ; $76bd: $41
    inc e                                         ; $76be: $1c
    inc e                                         ; $76bf: $1c
    inc c                                         ; $76c0: $0c
    ret c                                         ; $76c1: $d8

    inc e                                         ; $76c2: $1c
    inc e                                         ; $76c3: $1c
    ld c, $dc                                     ; $76c4: $0e $dc
    ld bc, $0101                                  ; $76c6: $01 $01 $01
    add d                                         ; $76c9: $82
    ld bc, $a201                                  ; $76ca: $01 $01 $a2
    add d                                         ; $76cd: $82
    ld bc, $8201                                  ; $76ce: $01 $01 $82
    add d                                         ; $76d1: $82
    ld bc, $8201                                  ; $76d2: $01 $01 $82
    add d                                         ; $76d5: $82
    ld l, c                                       ; $76d6: $69
    ld l, b                                       ; $76d7: $68
    ld h, l                                       ; $76d8: $65
    ld l, e                                       ; $76d9: $6b
    pop hl                                        ; $76da: $e1
    ld l, e                                       ; $76db: $6b
    ld l, c                                       ; $76dc: $69
    pop hl                                        ; $76dd: $e1
    db $e4                                        ; $76de: $e4
    inc e                                         ; $76df: $1c
    inc e                                         ; $76e0: $1c
    inc c                                         ; $76e1: $0c
    rst $20                                       ; $76e2: $e7
    inc e                                         ; $76e3: $1c
    ccf                                           ; $76e4: $3f
    ld c, $01                                     ; $76e5: $0e $01
    ld bc, $0101                                  ; $76e7: $01 $01 $01
    add d                                         ; $76ea: $82
    ld bc, $a201                                  ; $76eb: $01 $01 $a2
    add d                                         ; $76ee: $82
    ld bc, $8201                                  ; $76ef: $01 $01 $82
    add d                                         ; $76f2: $82
    ld bc, $8282                                  ; $76f3: $01 $82 $82
    inc e                                         ; $76f6: $1c
    ld c, $dc                                     ; $76f7: $0e $dc
    rst $20                                       ; $76f9: $e7
    dec c                                         ; $76fa: $0d
    rst $18                                       ; $76fb: $df
    ldh [$ea], a                                  ; $76fc: $e0 $ea
    ld c, $d1                                     ; $76fe: $0e $d1
    jp nc, $0f10                                  ; $7700: $d2 $10 $0f

    push de                                       ; $7703: $d5
    sub $14                                       ; $7704: $d6 $14
    ld bc, $8282                                  ; $7706: $01 $82 $82
    add d                                         ; $7709: $82
    xor d                                         ; $770a: $aa
    and d                                         ; $770b: $a2
    and d                                         ; $770c: $a2
    and d                                         ; $770d: $a2
    xor d                                         ; $770e: $aa
    add d                                         ; $770f: $82
    add d                                         ; $7710: $82
    and d                                         ; $7711: $a2
    xor d                                         ; $7712: $aa
    add d                                         ; $7713: $82
    add d                                         ; $7714: $82
    and d                                         ; $7715: $a2
    inc e                                         ; $7716: $1c
    dec c                                         ; $7717: $0d
    rst $18                                       ; $7718: $df
    ldh [rNR32], a                                ; $7719: $e0 $1c
    ld c, $d1                                     ; $771b: $0e $d1
    jp nc, Jump_000_0f11                          ; $771d: $d2 $11 $0f

    push de                                       ; $7720: $d5
    sub $15                                       ; $7721: $d6 $15
    db $10                                        ; $7723: $10
    reti                                          ; $7724: $d9


    jp c, $aa01                                   ; $7725: $da $01 $aa

    and d                                         ; $7728: $a2
    and d                                         ; $7729: $a2
    ld bc, $82aa                                  ; $772a: $01 $aa $82
    add d                                         ; $772d: $82
    and d                                         ; $772e: $a2
    xor d                                         ; $772f: $aa
    add d                                         ; $7730: $82
    add d                                         ; $7731: $82
    and d                                         ; $7732: $a2
    xor d                                         ; $7733: $aa
    add d                                         ; $7734: $82
    add d                                         ; $7735: $82
    ld [$41e1], a                                 ; $7736: $ea $e1 $41
    rst $18                                       ; $7739: $df
    db $10                                        ; $773a: $10
    ld b, e                                       ; $773b: $43
    ret c                                         ; $773c: $d8

    ld b, a                                       ; $773d: $47
    inc d                                         ; $773e: $14
    ld b, h                                       ; $773f: $44
    call c, Call_081_455f                         ; $7740: $dc $5f $45
    ld b, [hl]                                    ; $7743: $46
    ldh [$60], a                                  ; $7744: $e0 $60
    and d                                         ; $7746: $a2
    and d                                         ; $7747: $a2
    add d                                         ; $7748: $82
    and d                                         ; $7749: $a2
    and d                                         ; $774a: $a2
    adc d                                         ; $774b: $8a
    add d                                         ; $774c: $82
    adc d                                         ; $774d: $8a
    and d                                         ; $774e: $a2
    adc d                                         ; $774f: $8a
    add d                                         ; $7750: $82
    adc d                                         ; $7751: $8a
    adc d                                         ; $7752: $8a
    adc d                                         ; $7753: $8a
    and d                                         ; $7754: $a2
    adc d                                         ; $7755: $8a
    ld h, d                                       ; $7756: $62
    inc e                                         ; $7757: $1c
    dec c                                         ; $7758: $0d
    rst $18                                       ; $7759: $df
    ld l, h                                       ; $775a: $6c
    inc e                                         ; $775b: $1c
    ld c, $d1                                     ; $775c: $0e $d1
    ld h, e                                       ; $775e: $63
    ld l, c                                       ; $775f: $69
    rrca                                          ; $7760: $0f
    push de                                       ; $7761: $d5
    ld h, d                                       ; $7762: $62
    ld l, d                                       ; $7763: $6a
    db $10                                        ; $7764: $10
    reti                                          ; $7765: $d9


    ld bc, $aa01                                  ; $7766: $01 $01 $aa
    and d                                         ; $7769: $a2
    ld bc, $aa01                                  ; $776a: $01 $01 $aa
    add d                                         ; $776d: $82
    ld bc, $aa01                                  ; $776e: $01 $01 $aa
    add d                                         ; $7771: $82
    ld bc, $aa01                                  ; $7772: $01 $01 $aa
    add d                                         ; $7775: $82
    ldh [$ea], a                                  ; $7776: $e0 $ea
    inc e                                         ; $7778: $1c
    inc e                                         ; $7779: $1c
    jp nc, Jump_000_1110                          ; $777a: $d2 $10 $11

    ld l, d                                       ; $777d: $6a
    sub $14                                       ; $777e: $d6 $14
    dec d                                         ; $7780: $15
    ld h, a                                       ; $7781: $67
    jp c, $1918                                   ; $7782: $da $18 $19

    ld l, h                                       ; $7785: $6c
    and d                                         ; $7786: $a2
    and d                                         ; $7787: $a2
    ld bc, $8201                                  ; $7788: $01 $01 $82
    and d                                         ; $778b: $a2
    and d                                         ; $778c: $a2
    ld bc, $a282                                  ; $778d: $01 $82 $a2
    and d                                         ; $7790: $a2
    ld bc, $a282                                  ; $7791: $01 $82 $a2
    and d                                         ; $7794: $a2
    ld bc, $626c                                  ; $7795: $01 $6c $62
    ld l, d                                       ; $7798: $6a
    ld l, e                                       ; $7799: $6b
    ld l, c                                       ; $779a: $69
    ld l, h                                       ; $779b: $6c
    ld h, a                                       ; $779c: $67
    ld h, d                                       ; $779d: $62
    ld l, d                                       ; $779e: $6a
    ld l, e                                       ; $779f: $6b
    ld l, e                                       ; $77a0: $6b
    inc e                                         ; $77a1: $1c
    ld h, a                                       ; $77a2: $67
    ld h, a                                       ; $77a3: $67
    inc e                                         ; $77a4: $1c
    pop hl                                        ; $77a5: $e1
    ld bc, $0101                                  ; $77a6: $01 $01 $01
    ld bc, $0101                                  ; $77a9: $01 $01 $01
    ld bc, $0101                                  ; $77ac: $01 $01 $01
    ld bc, $0101                                  ; $77af: $01 $01 $01
    ld bc, $0101                                  ; $77b2: $01 $01 $01
    and d                                         ; $77b5: $a2
    ld l, c                                       ; $77b6: $69
    ld l, h                                       ; $77b7: $6c
    dec sp                                        ; $77b8: $3b
    add hl, sp                                    ; $77b9: $39
    ld l, d                                       ; $77ba: $6a
    inc e                                         ; $77bb: $1c
    inc e                                         ; $77bc: $1c
    inc e                                         ; $77bd: $1c
    ccf                                           ; $77be: $3f
    inc e                                         ; $77bf: $1c
    inc e                                         ; $77c0: $1c
    inc e                                         ; $77c1: $1c
    ld b, c                                       ; $77c2: $41
    pop hl                                        ; $77c3: $e1
    ld a, $1c                                     ; $77c4: $3e $1c
    ld bc, $4301                                  ; $77c6: $01 $01 $43
    ld b, e                                       ; $77c9: $43
    ld bc, $0101                                  ; $77ca: $01 $01 $01
    ld bc, $0182                                  ; $77cd: $01 $82 $01
    ld bc, $8201                                  ; $77d0: $01 $01 $82
    add d                                         ; $77d3: $82
    ld bc, $6701                                  ; $77d4: $01 $01 $67
    ld l, b                                       ; $77d7: $68
    ld l, c                                       ; $77d8: $69
    inc e                                         ; $77d9: $1c
    ld h, e                                       ; $77da: $63
    ld h, h                                       ; $77db: $64
    ld l, l                                       ; $77dc: $6d
    ld l, e                                       ; $77dd: $6b
    ld h, l                                       ; $77de: $65
    ld h, [hl]                                    ; $77df: $66
    ld h, a                                       ; $77e0: $67
    ld h, d                                       ; $77e1: $62
    ld l, l                                       ; $77e2: $6d
    ld l, e                                       ; $77e3: $6b
    inc e                                         ; $77e4: $1c
    inc e                                         ; $77e5: $1c
    ld bc, $0101                                  ; $77e6: $01 $01 $01
    ld bc, $0101                                  ; $77e9: $01 $01 $01
    ld bc, $0101                                  ; $77ec: $01 $01 $01
    ld bc, $0101                                  ; $77ef: $01 $01 $01
    ld bc, $0101                                  ; $77f2: $01 $01 $01
    ld bc, $1c0f                                  ; $77f5: $01 $0f $1c
    ld l, c                                       ; $77f8: $69
    ld l, e                                       ; $77f9: $6b
    inc e                                         ; $77fa: $1c
    inc e                                         ; $77fb: $1c
    ld l, d                                       ; $77fc: $6a
    ld l, e                                       ; $77fd: $6b
    inc e                                         ; $77fe: $1c
    inc e                                         ; $77ff: $1c
    inc e                                         ; $7800: $1c
    ld h, d                                       ; $7801: $62
    inc e                                         ; $7802: $1c
    ccf                                           ; $7803: $3f
    inc e                                         ; $7804: $1c
    inc e                                         ; $7805: $1c
    inc hl                                        ; $7806: $23
    ld bc, $0101                                  ; $7807: $01 $01 $01
    ld bc, $0101                                  ; $780a: $01 $01 $01
    ld bc, $0101                                  ; $780d: $01 $01 $01
    ld bc, $0101                                  ; $7810: $01 $01 $01
    add d                                         ; $7813: $82
    ld bc, $6701                                  ; $7814: $01 $01 $67
    ld b, b                                       ; $7817: $40
    ld b, e                                       ; $7818: $43
    inc c                                         ; $7819: $0c
    inc e                                         ; $781a: $1c
    ld b, d                                       ; $781b: $42
    ld b, l                                       ; $781c: $45
    ld c, $1c                                     ; $781d: $0e $1c
    inc e                                         ; $781f: $1c
    dec c                                         ; $7820: $0d
    rst $18                                       ; $7821: $df
    inc e                                         ; $7822: $1c
    ld [de], a                                    ; $7823: $12
    ld c, $d1                                     ; $7824: $0e $d1
    ld bc, $0101                                  ; $7826: $01 $01 $01
    add d                                         ; $7829: $82
    ld bc, $0101                                  ; $782a: $01 $01 $01
    add d                                         ; $782d: $82
    ld bc, $aa01                                  ; $782e: $01 $01 $aa
    and d                                         ; $7831: $a2
    ld bc, $aa09                                  ; $7832: $01 $09 $aa
    add d                                         ; $7835: $82
    ret c                                         ; $7836: $d8

    db $e4                                        ; $7837: $e4
    inc e                                         ; $7838: $1c
    inc e                                         ; $7839: $1c
    call c, $1ce7                                 ; $783a: $dc $e7 $1c
    inc e                                         ; $783d: $1c
    ldh [$ea], a                                  ; $783e: $e0 $ea
    ccf                                           ; $7840: $3f
    inc e                                         ; $7841: $1c
    jp nc, $d4d3                                  ; $7842: $d2 $d3 $d4

    pop hl                                        ; $7845: $e1
    add d                                         ; $7846: $82
    add d                                         ; $7847: $82
    ld bc, $8201                                  ; $7848: $01 $01 $82
    add d                                         ; $784b: $82
    ld bc, $a201                                  ; $784c: $01 $01 $a2
    and d                                         ; $784f: $a2
    add d                                         ; $7850: $82
    ld bc, $8282                                  ; $7851: $01 $82 $82
    add d                                         ; $7854: $82
    add d                                         ; $7855: $82
    ccf                                           ; $7856: $3f
    inc e                                         ; $7857: $1c
    inc e                                         ; $7858: $1c
    inc e                                         ; $7859: $1c
    ld b, c                                       ; $785a: $41
    pop hl                                        ; $785b: $e1
    inc e                                         ; $785c: $1c
    ld a, $d8                                     ; $785d: $3e $d8
    db $e4                                        ; $785f: $e4
    inc e                                         ; $7860: $1c
    inc e                                         ; $7861: $1c
    call c, $1ce7                                 ; $7862: $dc $e7 $1c
    dec c                                         ; $7865: $0d
    add d                                         ; $7866: $82
    ld bc, $0101                                  ; $7867: $01 $01 $01
    add d                                         ; $786a: $82
    add d                                         ; $786b: $82
    ld bc, $8201                                  ; $786c: $01 $01 $82
    add d                                         ; $786f: $82
    ld bc, $8201                                  ; $7870: $01 $01 $82
    add d                                         ; $7873: $82
    ld bc, $e1aa                                  ; $7874: $01 $aa $e1
    ld b, c                                       ; $7877: $41
    pop hl                                        ; $7878: $e1
    inc e                                         ; $7879: $1c
    inc c                                         ; $787a: $0c
    ret c                                         ; $787b: $d8

    db $e4                                        ; $787c: $e4
    ld [de], a                                    ; $787d: $12
    ld c, $dc                                     ; $787e: $0e $dc
    rst $20                                       ; $7880: $e7
    inc e                                         ; $7881: $1c
    rst $18                                       ; $7882: $df
    ldh [$ea], a                                  ; $7883: $e0 $ea
    ccf                                           ; $7885: $3f
    and d                                         ; $7886: $a2
    add d                                         ; $7887: $82
    add d                                         ; $7888: $82
    ld bc, $8282                                  ; $7889: $01 $82 $82
    add d                                         ; $788c: $82
    add hl, bc                                    ; $788d: $09
    add d                                         ; $788e: $82
    add d                                         ; $788f: $82
    add d                                         ; $7890: $82
    ld bc, $a2a2                                  ; $7891: $01 $a2 $a2
    and d                                         ; $7894: $a2
    add d                                         ; $7895: $82
    ld de, $0f76                                  ; $7896: $11 $76 $0f
    push de                                       ; $7899: $d5
    inc de                                        ; $789a: $13
    inc e                                         ; $789b: $1c
    db $10                                        ; $789c: $10
    reti                                          ; $789d: $d9


    inc e                                         ; $789e: $1c
    ld b, b                                       ; $789f: $40
    ld b, e                                       ; $78a0: $43
    inc e                                         ; $78a1: $1c
    inc e                                         ; $78a2: $1c
    ld b, d                                       ; $78a3: $42
    ld b, l                                       ; $78a4: $45
    inc e                                         ; $78a5: $1c
    add hl, bc                                    ; $78a6: $09
    ld bc, $82aa                                  ; $78a7: $01 $aa $82
    add hl, bc                                    ; $78aa: $09
    ld bc, $82aa                                  ; $78ab: $01 $aa $82
    ld bc, $0101                                  ; $78ae: $01 $01 $01
    ld bc, $0101                                  ; $78b1: $01 $01 $01
    ld bc, $e001                                  ; $78b4: $01 $01 $e0
    ld [$0e1c], a                                 ; $78b7: $ea $1c $0e
    jp nc, Jump_000_1110                          ; $78ba: $d2 $10 $11

    rrca                                          ; $78bd: $0f
    sub $14                                       ; $78be: $d6 $14
    dec d                                         ; $78c0: $15
    db $10                                        ; $78c1: $10
    jp c, $1918                                   ; $78c2: $da $18 $19

    inc e                                         ; $78c5: $1c
    and d                                         ; $78c6: $a2
    and d                                         ; $78c7: $a2
    ld bc, $82aa                                  ; $78c8: $01 $aa $82
    and d                                         ; $78cb: $a2
    and d                                         ; $78cc: $a2
    xor d                                         ; $78cd: $aa
    add d                                         ; $78ce: $82
    and d                                         ; $78cf: $a2
    and d                                         ; $78d0: $a2
    xor d                                         ; $78d1: $aa
    add d                                         ; $78d2: $82
    and d                                         ; $78d3: $a2
    and d                                         ; $78d4: $a2
    ld bc, $d2d1                                  ; $78d5: $01 $d1 $d2
    db $d3                                        ; $78d8: $d3
    call nc, $d6d5                                ; $78d9: $d4 $d5 $d6
    rst $10                                       ; $78dc: $d7
    ret c                                         ; $78dd: $d8

    reti                                          ; $78de: $d9


    jp c, $dcdb                                   ; $78df: $da $db $dc

    inc e                                         ; $78e2: $1c
    sbc $df                                       ; $78e3: $de $df
    ldh [$82], a                                  ; $78e5: $e0 $82
    add d                                         ; $78e7: $82
    add d                                         ; $78e8: $82
    add d                                         ; $78e9: $82
    add d                                         ; $78ea: $82
    add d                                         ; $78eb: $82
    add d                                         ; $78ec: $82
    add d                                         ; $78ed: $82
    add d                                         ; $78ee: $82
    add d                                         ; $78ef: $82
    add d                                         ; $78f0: $82
    add d                                         ; $78f1: $82
    ld bc, $a203                                  ; $78f2: $01 $03 $a2
    and d                                         ; $78f5: $a2
    pop hl                                        ; $78f6: $e1
    inc e                                         ; $78f7: $1c
    inc e                                         ; $78f8: $1c
    pop hl                                        ; $78f9: $e1
    db $e4                                        ; $78fa: $e4
    inc e                                         ; $78fb: $1c
    inc e                                         ; $78fc: $1c
    inc c                                         ; $78fd: $0c
    rst $20                                       ; $78fe: $e7
    inc e                                         ; $78ff: $1c
    inc e                                         ; $7900: $1c
    ld c, $ea                                     ; $7901: $0e $ea
    inc e                                         ; $7903: $1c
    dec c                                         ; $7904: $0d
    rst $18                                       ; $7905: $df
    add d                                         ; $7906: $82
    ld bc, $a201                                  ; $7907: $01 $01 $a2
    add d                                         ; $790a: $82
    ld bc, $8201                                  ; $790b: $01 $01 $82
    add d                                         ; $790e: $82
    ld bc, $8201                                  ; $790f: $01 $01 $82
    and d                                         ; $7912: $a2
    ld bc, $a2aa                                  ; $7913: $01 $aa $a2
    dec sp                                        ; $7916: $3b
    add hl, sp                                    ; $7917: $39
    jr c, jr_081_7955                             ; $7918: $38 $3b

    ld a, $1c                                     ; $791a: $3e $1c
    ccf                                           ; $791c: $3f
    inc e                                         ; $791d: $1c
    inc e                                         ; $791e: $1c
    pop hl                                        ; $791f: $e1
    ld b, c                                       ; $7920: $41
    pop hl                                        ; $7921: $e1
    inc e                                         ; $7922: $1c
    inc c                                         ; $7923: $0c
    ret c                                         ; $7924: $d8

    db $e4                                        ; $7925: $e4
    ld b, e                                       ; $7926: $43
    ld b, e                                       ; $7927: $43
    ld h, e                                       ; $7928: $63
    ld h, e                                       ; $7929: $63
    ld bc, $8201                                  ; $792a: $01 $01 $82
    ld bc, $a201                                  ; $792d: $01 $01 $a2
    add d                                         ; $7930: $82
    add d                                         ; $7931: $82
    ld bc, $8282                                  ; $7932: $01 $82 $82
    add d                                         ; $7935: $82
    inc e                                         ; $7936: $1c
    ld c, $dc                                     ; $7937: $0e $dc
    rst $20                                       ; $7939: $e7
    dec c                                         ; $793a: $0d
    rst $18                                       ; $793b: $df
    ldh [$ea], a                                  ; $793c: $e0 $ea
    ld c, $d1                                     ; $793e: $0e $d1
    jp nc, Jump_000_0fd3                          ; $7940: $d2 $d3 $0f

    push de                                       ; $7943: $d5
    sub $d7                                       ; $7944: $d6 $d7
    ld bc, $8282                                  ; $7946: $01 $82 $82
    add d                                         ; $7949: $82
    xor d                                         ; $794a: $aa
    and d                                         ; $794b: $a2
    and d                                         ; $794c: $a2
    and d                                         ; $794d: $a2
    xor d                                         ; $794e: $aa
    add d                                         ; $794f: $82
    add d                                         ; $7950: $82
    add d                                         ; $7951: $82
    xor d                                         ; $7952: $aa
    add d                                         ; $7953: $82
    add d                                         ; $7954: $82

jr_081_7955:
    add d                                         ; $7955: $82
    db $10                                        ; $7956: $10
    reti                                          ; $7957: $d9


    jp c, Jump_000_1cdb                           ; $7958: $da $db $1c

    inc e                                         ; $795b: $1c
    sbc $df                                       ; $795c: $de $df
    inc e                                         ; $795e: $1c
    inc e                                         ; $795f: $1c
    add hl, bc                                    ; $7960: $09
    pop de                                        ; $7961: $d1
    ld de, $0ae1                                  ; $7962: $11 $e1 $0a
    dec bc                                        ; $7965: $0b
    xor d                                         ; $7966: $aa
    add d                                         ; $7967: $82
    add d                                         ; $7968: $82
    add d                                         ; $7969: $82
    ld bc, $0301                                  ; $796a: $01 $01 $03
    and d                                         ; $796d: $a2
    ld bc, $8201                                  ; $796e: $01 $01 $82
    add d                                         ; $7971: $82
    and d                                         ; $7972: $a2
    and d                                         ; $7973: $a2
    add d                                         ; $7974: $82
    add d                                         ; $7975: $82
    dec d                                         ; $7976: $15
    inc c                                         ; $7977: $0c
    ret c                                         ; $7978: $d8

    dec c                                         ; $7979: $0d
    add hl, de                                    ; $797a: $19
    ld c, $dc                                     ; $797b: $0e $dc
    rst $20                                       ; $797d: $e7
    dec c                                         ; $797e: $0d
    rst $18                                       ; $797f: $df
    ldh [$ea], a                                  ; $7980: $e0 $ea
    ld c, $d1                                     ; $7982: $0e $d1
    jp nc, $a210                                  ; $7984: $d2 $10 $a2

    add d                                         ; $7987: $82
    add d                                         ; $7988: $82
    add d                                         ; $7989: $82
    and d                                         ; $798a: $a2
    add d                                         ; $798b: $82
    add d                                         ; $798c: $82
    add d                                         ; $798d: $82
    xor d                                         ; $798e: $aa
    and d                                         ; $798f: $a2
    and d                                         ; $7990: $a2
    and d                                         ; $7991: $a2
    xor d                                         ; $7992: $aa
    add d                                         ; $7993: $82
    add d                                         ; $7994: $82
    and d                                         ; $7995: $a2
    ld [$0600], sp                                ; $7996: $08 $00 $06
    nop                                           ; $7999: $00
    ldh [rTIMA], a                                ; $799a: $e0 $05
    pop de                                        ; $799c: $d1
    jp nc, $d4d3                                  ; $799d: $d2 $d3 $d4

    pop de                                        ; $79a0: $d1
    jp nc, $d6d5                                  ; $79a1: $d2 $d5 $d6

    pop de                                        ; $79a4: $d1
    jp nc, $d8d7                                  ; $79a5: $d2 $d7 $d8

    pop de                                        ; $79a8: $d1
    jp nc, $dad9                                  ; $79a9: $d2 $d9 $da

    add b                                         ; $79ac: $80
    add b                                         ; $79ad: $80
    dec b                                         ; $79ae: $05
    dec b                                         ; $79af: $05
    add b                                         ; $79b0: $80
    add b                                         ; $79b1: $80
    dec b                                         ; $79b2: $05
    dec b                                         ; $79b3: $05
    add b                                         ; $79b4: $80
    add b                                         ; $79b5: $80
    dec b                                         ; $79b6: $05
    dec b                                         ; $79b7: $05
    add b                                         ; $79b8: $80
    add b                                         ; $79b9: $80
    dec b                                         ; $79ba: $05
    dec b                                         ; $79bb: $05
    db $db                                        ; $79bc: $db
    call c, $dedd                                 ; $79bd: $dc $dd $de
    rst $18                                       ; $79c0: $df
    ldh [$e1], a                                  ; $79c1: $e0 $e1
    ld [c], a                                     ; $79c3: $e2
    db $e3                                        ; $79c4: $e3
    db $e4                                        ; $79c5: $e4
    push hl                                       ; $79c6: $e5
    and $e7                                       ; $79c7: $e6 $e7
    add sp, -$17                                  ; $79c9: $e8 $e9
    ld [$0505], a                                 ; $79cb: $ea $05 $05
    ld bc, $0501                                  ; $79ce: $01 $01 $05
    dec b                                         ; $79d1: $05
    ld bc, $0501                                  ; $79d2: $01 $01 $05
    dec b                                         ; $79d5: $05
    ld [bc], a                                    ; $79d6: $02
    ld [bc], a                                    ; $79d7: $02
    dec b                                         ; $79d8: $05
    dec b                                         ; $79d9: $05
    ld [bc], a                                    ; $79da: $02
    ld [bc], a                                    ; $79db: $02
    db $eb                                        ; $79dc: $eb
    db $ec                                        ; $79dd: $ec
    db $ed                                        ; $79de: $ed
    xor $ef                                       ; $79df: $ee $ef
    ldh a, [$f1]                                  ; $79e1: $f0 $f1
    ld a, [c]                                     ; $79e3: $f2
    di                                            ; $79e4: $f3
    db $f4                                        ; $79e5: $f4
    push af                                       ; $79e6: $f5
    or $f7                                        ; $79e7: $f6 $f7
    ld hl, sp-$07                                 ; $79e9: $f8 $f9
    ld a, [$0101]                                 ; $79eb: $fa $01 $01
    ld bc, $0101                                  ; $79ee: $01 $01 $01
    ld bc, $0101                                  ; $79f1: $01 $01 $01
    ld [bc], a                                    ; $79f4: $02
    ld [bc], a                                    ; $79f5: $02
    ld [bc], a                                    ; $79f6: $02
    ld [bc], a                                    ; $79f7: $02
    ld [bc], a                                    ; $79f8: $02
    ld [bc], a                                    ; $79f9: $02
    ld [bc], a                                    ; $79fa: $02
    ld [bc], a                                    ; $79fb: $02
    ei                                            ; $79fc: $fb
    db $fc                                        ; $79fd: $fc
    db $fd                                        ; $79fe: $fd
    cp $ff                                        ; $79ff: $fe $ff
    nop                                           ; $7a01: $00
    ld bc, $0302                                  ; $7a02: $01 $02 $03
    inc b                                         ; $7a05: $04
    dec b                                         ; $7a06: $05
    ld b, $07                                     ; $7a07: $06 $07
    ld [$0a09], sp                                ; $7a09: $08 $09 $0a
    ld bc, $0501                                  ; $7a0c: $01 $01 $05
    dec b                                         ; $7a0f: $05
    ld bc, $0501                                  ; $7a10: $01 $01 $05
    dec b                                         ; $7a13: $05
    ld [bc], a                                    ; $7a14: $02
    ld [bc], a                                    ; $7a15: $02
    dec b                                         ; $7a16: $05
    dec b                                         ; $7a17: $05
    ld [bc], a                                    ; $7a18: $02
    ld [bc], a                                    ; $7a19: $02
    dec b                                         ; $7a1a: $05
    dec b                                         ; $7a1b: $05
    pop de                                        ; $7a1c: $d1
    jp nc, Jump_000_0c0b                          ; $7a1d: $d2 $0b $0c

    pop de                                        ; $7a20: $d1
    jp nc, Jump_000_0e0d                          ; $7a21: $d2 $0d $0e

    pop de                                        ; $7a24: $d1
    jp nc, Jump_000_100f                          ; $7a25: $d2 $0f $10

    pop de                                        ; $7a28: $d1
    jp nc, Jump_000_1211                          ; $7a29: $d2 $11 $12

    add b                                         ; $7a2c: $80
    add b                                         ; $7a2d: $80
    dec b                                         ; $7a2e: $05
    dec b                                         ; $7a2f: $05
    add b                                         ; $7a30: $80
    add b                                         ; $7a31: $80
    rlca                                          ; $7a32: $07
    rlca                                          ; $7a33: $07
    add b                                         ; $7a34: $80
    add b                                         ; $7a35: $80
    ld b, $03                                     ; $7a36: $06 $03
    add b                                         ; $7a38: $80
    add b                                         ; $7a39: $80
    ld b, $06                                     ; $7a3a: $06 $06
    inc de                                        ; $7a3c: $13
    inc d                                         ; $7a3d: $14
    dec d                                         ; $7a3e: $15
    ld d, $17                                     ; $7a3f: $16 $17
    jr jr_081_7a5c                                ; $7a41: $18 $19

    ld a, [de]                                    ; $7a43: $1a
    dec de                                        ; $7a44: $1b
    inc e                                         ; $7a45: $1c
    dec e                                         ; $7a46: $1d
    ld e, $1f                                     ; $7a47: $1e $1f
    jr nz, @+$23                                  ; $7a49: $20 $21

    ld [hl+], a                                   ; $7a4b: $22
    dec b                                         ; $7a4c: $05
    dec b                                         ; $7a4d: $05
    ld [bc], a                                    ; $7a4e: $02
    ld [bc], a                                    ; $7a4f: $02
    rlca                                          ; $7a50: $07
    rlca                                          ; $7a51: $07
    ld [bc], a                                    ; $7a52: $02
    ld [bc], a                                    ; $7a53: $02
    ld b, $07                                     ; $7a54: $06 $07
    ld [bc], a                                    ; $7a56: $02
    ld [bc], a                                    ; $7a57: $02
    inc bc                                        ; $7a58: $03
    rlca                                          ; $7a59: $07
    rlca                                          ; $7a5a: $07
    rlca                                          ; $7a5b: $07

jr_081_7a5c:
    inc hl                                        ; $7a5c: $23
    inc h                                         ; $7a5d: $24
    dec h                                         ; $7a5e: $25
    ld h, $27                                     ; $7a5f: $26 $27
    jr z, jr_081_7a8c                             ; $7a61: $28 $29

    ld a, [hl+]                                   ; $7a63: $2a
    dec hl                                        ; $7a64: $2b
    inc l                                         ; $7a65: $2c
    dec l                                         ; $7a66: $2d
    ld l, $2f                                     ; $7a67: $2e $2f
    ld [de], a                                    ; $7a69: $12
    rra                                           ; $7a6a: $1f
    jr nz, jr_081_7a6f                            ; $7a6b: $20 $02

    ld [bc], a                                    ; $7a6d: $02
    ld [bc], a                                    ; $7a6e: $02

jr_081_7a6f:
    ld [bc], a                                    ; $7a6f: $02
    ld [bc], a                                    ; $7a70: $02
    ld [bc], a                                    ; $7a71: $02
    ld [bc], a                                    ; $7a72: $02
    ld [bc], a                                    ; $7a73: $02
    ld [bc], a                                    ; $7a74: $02
    ld [bc], a                                    ; $7a75: $02
    ld [bc], a                                    ; $7a76: $02
    ld [bc], a                                    ; $7a77: $02
    rlca                                          ; $7a78: $07
    rlca                                          ; $7a79: $07
    rlca                                          ; $7a7a: $07
    rlca                                          ; $7a7b: $07
    jr nc, @+$33                                  ; $7a7c: $30 $31

    ld [hl-], a                                   ; $7a7e: $32
    inc c                                         ; $7a7f: $0c
    inc sp                                        ; $7a80: $33
    inc [hl]                                      ; $7a81: $34
    dec c                                         ; $7a82: $0d
    ld c, $35                                     ; $7a83: $0e $35
    ld [hl], $0f                                  ; $7a85: $36 $0f
    db $10                                        ; $7a87: $10
    ld hl, $2f22                                  ; $7a88: $21 $22 $2f
    ld [de], a                                    ; $7a8b: $12

jr_081_7a8c:
    ld [bc], a                                    ; $7a8c: $02
    ld [bc], a                                    ; $7a8d: $02
    dec b                                         ; $7a8e: $05
    dec b                                         ; $7a8f: $05
    ld [bc], a                                    ; $7a90: $02
    ld [bc], a                                    ; $7a91: $02
    rlca                                          ; $7a92: $07
    rlca                                          ; $7a93: $07
    ld [bc], a                                    ; $7a94: $02
    ld [bc], a                                    ; $7a95: $02
    rlca                                          ; $7a96: $07
    ld b, $07                                     ; $7a97: $06 $07
    rlca                                          ; $7a99: $07
    rlca                                          ; $7a9a: $07
    inc bc                                        ; $7a9b: $03
    pop de                                        ; $7a9c: $d1
    jp nc, $3837                                  ; $7a9d: $d2 $37 $38

    pop de                                        ; $7aa0: $d1
    jp nc, Jump_000_3a39                          ; $7aa1: $d2 $39 $3a

    pop de                                        ; $7aa4: $d1
    jp nc, $3c3b                                  ; $7aa5: $d2 $3b $3c

    pop de                                        ; $7aa8: $d1
    jp nc, Jump_000_3d3b                          ; $7aa9: $d2 $3b $3d

    add b                                         ; $7aac: $80
    add b                                         ; $7aad: $80
    ld b, $06                                     ; $7aae: $06 $06
    add b                                         ; $7ab0: $80
    add b                                         ; $7ab1: $80
    add h                                         ; $7ab2: $84
    add h                                         ; $7ab3: $84
    add b                                         ; $7ab4: $80
    add b                                         ; $7ab5: $80
    add h                                         ; $7ab6: $84
    add h                                         ; $7ab7: $84
    add b                                         ; $7ab8: $80
    add b                                         ; $7ab9: $80
    inc b                                         ; $7aba: $04
    inc b                                         ; $7abb: $04
    ld a, $3f                                     ; $7abc: $3e $3f
    ld b, b                                       ; $7abe: $40
    ld b, c                                       ; $7abf: $41
    ld b, d                                       ; $7ac0: $42
    ld b, e                                       ; $7ac1: $43
    ld b, h                                       ; $7ac2: $44
    ld b, l                                       ; $7ac3: $45
    ld b, [hl]                                    ; $7ac4: $46
    ld b, a                                       ; $7ac5: $47
    ld c, b                                       ; $7ac6: $48
    ld c, c                                       ; $7ac7: $49
    ld c, d                                       ; $7ac8: $4a
    ld c, e                                       ; $7ac9: $4b
    ld c, h                                       ; $7aca: $4c
    ld c, l                                       ; $7acb: $4d
    ld b, $06                                     ; $7acc: $06 $06
    ld b, $03                                     ; $7ace: $06 $03
    add h                                         ; $7ad0: $84
    add h                                         ; $7ad1: $84
    ld b, $06                                     ; $7ad2: $06 $06
    add h                                         ; $7ad4: $84
    add h                                         ; $7ad5: $84
    ld b, $06                                     ; $7ad6: $06 $06
    inc b                                         ; $7ad8: $04
    inc b                                         ; $7ad9: $04
    ld b, $06                                     ; $7ada: $06 $06
    ld c, [hl]                                    ; $7adc: $4e
    ld c, a                                       ; $7add: $4f
    ld d, b                                       ; $7ade: $50
    ld d, c                                       ; $7adf: $51
    ld d, d                                       ; $7ae0: $52
    ld d, e                                       ; $7ae1: $53
    ld d, h                                       ; $7ae2: $54
    ld d, l                                       ; $7ae3: $55
    ld d, [hl]                                    ; $7ae4: $56
    ld d, a                                       ; $7ae5: $57
    ld e, b                                       ; $7ae6: $58
    ld e, c                                       ; $7ae7: $59
    ld e, d                                       ; $7ae8: $5a
    ld e, e                                       ; $7ae9: $5b
    ld e, h                                       ; $7aea: $5c
    ld e, l                                       ; $7aeb: $5d
    inc bc                                        ; $7aec: $03
    ld b, $06                                     ; $7aed: $06 $06
    inc bc                                        ; $7aef: $03
    ld b, $06                                     ; $7af0: $06 $06
    dec b                                         ; $7af2: $05
    ld b, $05                                     ; $7af3: $06 $05
    dec b                                         ; $7af5: $05
    dec b                                         ; $7af6: $05
    ld b, $05                                     ; $7af7: $06 $05
    dec b                                         ; $7af9: $05
    dec b                                         ; $7afa: $05
    rlca                                          ; $7afb: $07
    ld b, b                                       ; $7afc: $40
    ld b, c                                       ; $7afd: $41
    ld c, [hl]                                    ; $7afe: $4e
    ld c, a                                       ; $7aff: $4f
    ld e, [hl]                                    ; $7b00: $5e
    ld b, l                                       ; $7b01: $45
    ld d, d                                       ; $7b02: $52
    ld d, e                                       ; $7b03: $53
    ld e, a                                       ; $7b04: $5f
    ld h, b                                       ; $7b05: $60
    ld h, c                                       ; $7b06: $61
    ld h, d                                       ; $7b07: $62
    ld h, e                                       ; $7b08: $63
    ld h, h                                       ; $7b09: $64
    ld h, l                                       ; $7b0a: $65
    ld h, [hl]                                    ; $7b0b: $66
    ld b, $03                                     ; $7b0c: $06 $03
    ld b, $06                                     ; $7b0e: $06 $06
    ld b, $06                                     ; $7b10: $06 $06
    ld b, $03                                     ; $7b12: $06 $03
    inc bc                                        ; $7b14: $03
    ld b, $03                                     ; $7b15: $06 $03
    ld b, $06                                     ; $7b17: $06 $06
    ld bc, $0101                                  ; $7b19: $01 $01 $01
    pop de                                        ; $7b1c: $d1
    jp nc, Jump_081_6867                          ; $7b1d: $d2 $67 $68

    pop de                                        ; $7b20: $d1
    jp nc, $6a69                                  ; $7b21: $d2 $69 $6a

    pop de                                        ; $7b24: $d1
    jp nc, Jump_000_106b                          ; $7b25: $d2 $6b $10

    pop de                                        ; $7b28: $d1
    jp nc, Jump_081_6d6c                          ; $7b29: $d2 $6c $6d

    add b                                         ; $7b2c: $80
    add b                                         ; $7b2d: $80
    inc b                                         ; $7b2e: $04
    inc b                                         ; $7b2f: $04
    add b                                         ; $7b30: $80
    add b                                         ; $7b31: $80
    ld b, $06                                     ; $7b32: $06 $06
    add b                                         ; $7b34: $80
    add b                                         ; $7b35: $80
    ld b, $06                                     ; $7b36: $06 $06
    add b                                         ; $7b38: $80
    add b                                         ; $7b39: $80
    add h                                         ; $7b3a: $84
    add h                                         ; $7b3b: $84
    ld l, [hl]                                    ; $7b3c: $6e
    ld l, a                                       ; $7b3d: $6f
    ld [hl], b                                    ; $7b3e: $70
    ld [hl], c                                    ; $7b3f: $71
    ld [hl], d                                    ; $7b40: $72
    ld [hl], e                                    ; $7b41: $73
    ld [hl], h                                    ; $7b42: $74
    ld [hl], l                                    ; $7b43: $75
    dec de                                        ; $7b44: $1b
    inc e                                         ; $7b45: $1c
    halt                                          ; $7b46: $76
    ld [hl], a                                    ; $7b47: $77
    ld a, b                                       ; $7b48: $78
    ld a, c                                       ; $7b49: $79
    ld hl, $0422                                  ; $7b4a: $21 $22 $04
    inc b                                         ; $7b4d: $04
    ld b, $06                                     ; $7b4e: $06 $06
    ld b, $06                                     ; $7b50: $06 $06
    ld b, $06                                     ; $7b52: $06 $06
    ld b, $03                                     ; $7b54: $06 $03
    ld b, $03                                     ; $7b56: $06 $03
    ld b, $06                                     ; $7b58: $06 $06
    inc bc                                        ; $7b5a: $03
    ld b, $7a                                     ; $7b5b: $06 $7a
    ld a, e                                       ; $7b5d: $7b
    ld a, h                                       ; $7b5e: $7c
    ld a, l                                       ; $7b5f: $7d
    ld a, [hl]                                    ; $7b60: $7e
    ld a, a                                       ; $7b61: $7f
    add b                                         ; $7b62: $80
    ld a, l                                       ; $7b63: $7d
    rrca                                          ; $7b64: $0f
    db $10                                        ; $7b65: $10
    dec de                                        ; $7b66: $1b
    inc e                                         ; $7b67: $1c
    cpl                                           ; $7b68: $2f
    ld [de], a                                    ; $7b69: $12
    rra                                           ; $7b6a: $1f
    jr nz, jr_081_7b72                            ; $7b6b: $20 $05

    dec b                                         ; $7b6d: $05
    dec b                                         ; $7b6e: $05
    rlca                                          ; $7b6f: $07
    dec b                                         ; $7b70: $05
    dec b                                         ; $7b71: $05

jr_081_7b72:
    dec c                                         ; $7b72: $0d
    rlca                                          ; $7b73: $07
    rlca                                          ; $7b74: $07
    rlca                                          ; $7b75: $07
    rlca                                          ; $7b76: $07
    rlca                                          ; $7b77: $07
    inc bc                                        ; $7b78: $03
    ld b, $03                                     ; $7b79: $06 $03
    inc bc                                        ; $7b7b: $03
    add c                                         ; $7b7c: $81
    add d                                         ; $7b7d: $82
    add e                                         ; $7b7e: $83
    add h                                         ; $7b7f: $84
    add c                                         ; $7b80: $81
    add l                                         ; $7b81: $85
    add [hl]                                      ; $7b82: $86
    add a                                         ; $7b83: $87
    halt                                          ; $7b84: $76
    adc b                                         ; $7b85: $88
    adc c                                         ; $7b86: $89
    adc d                                         ; $7b87: $8a
    ld hl, $8c8b                                  ; $7b88: $21 $8b $8c
    adc l                                         ; $7b8b: $8d
    ld c, $09                                     ; $7b8c: $0e $09
    add hl, bc                                    ; $7b8e: $09
    add hl, bc                                    ; $7b8f: $09
    dec bc                                        ; $7b90: $0b
    add hl, bc                                    ; $7b91: $09
    add hl, bc                                    ; $7b92: $09
    add hl, bc                                    ; $7b93: $09
    ld b, $09                                     ; $7b94: $06 $09
    add hl, bc                                    ; $7b96: $09
    add hl, bc                                    ; $7b97: $09
    ld b, $09                                     ; $7b98: $06 $09
    add hl, bc                                    ; $7b9a: $09
    add hl, bc                                    ; $7b9b: $09
    adc [hl]                                      ; $7b9c: $8e
    adc a                                         ; $7b9d: $8f
    call nc, $9190                                ; $7b9e: $d4 $90 $91
    sub d                                         ; $7ba1: $92
    sub e                                         ; $7ba2: $93
    sub h                                         ; $7ba3: $94
    sub l                                         ; $7ba4: $95
    sub [hl]                                      ; $7ba5: $96
    sub a                                         ; $7ba6: $97
    sbc b                                         ; $7ba7: $98
    sbc c                                         ; $7ba8: $99
    sbc d                                         ; $7ba9: $9a
    jp c, Jump_000_0d9b                           ; $7baa: $da $9b $0d

    dec c                                         ; $7bad: $0d
    dec b                                         ; $7bae: $05
    dec c                                         ; $7baf: $0d
    dec c                                         ; $7bb0: $0d
    dec c                                         ; $7bb1: $0d
    dec c                                         ; $7bb2: $0d
    dec c                                         ; $7bb3: $0d
    dec c                                         ; $7bb4: $0d
    dec c                                         ; $7bb5: $0d
    dec c                                         ; $7bb6: $0d
    dec c                                         ; $7bb7: $0d
    dec c                                         ; $7bb8: $0d
    dec c                                         ; $7bb9: $0d
    dec b                                         ; $7bba: $05
    dec c                                         ; $7bbb: $0d
    sbc h                                         ; $7bbc: $9c
    sbc l                                         ; $7bbd: $9d
    sbc [hl]                                      ; $7bbe: $9e
    sbc a                                         ; $7bbf: $9f
    and b                                         ; $7bc0: $a0
    and c                                         ; $7bc1: $a1
    and d                                         ; $7bc2: $a2
    and e                                         ; $7bc3: $a3
    and h                                         ; $7bc4: $a4
    and l                                         ; $7bc5: $a5
    and [hl]                                      ; $7bc6: $a6
    and a                                         ; $7bc7: $a7
    xor b                                         ; $7bc8: $a8
    xor c                                         ; $7bc9: $a9
    xor d                                         ; $7bca: $aa
    reti                                          ; $7bcb: $d9


    dec c                                         ; $7bcc: $0d
    dec c                                         ; $7bcd: $0d
    dec c                                         ; $7bce: $0d
    dec c                                         ; $7bcf: $0d
    dec c                                         ; $7bd0: $0d
    dec c                                         ; $7bd1: $0d
    dec c                                         ; $7bd2: $0d
    dec c                                         ; $7bd3: $0d
    dec c                                         ; $7bd4: $0d
    dec c                                         ; $7bd5: $0d
    dec c                                         ; $7bd6: $0d
    dec c                                         ; $7bd7: $0d
    dec c                                         ; $7bd8: $0d
    dec c                                         ; $7bd9: $0d
    dec c                                         ; $7bda: $0d
    dec b                                         ; $7bdb: $05
    xor e                                         ; $7bdc: $ab
    xor h                                         ; $7bdd: $ac
    xor l                                         ; $7bde: $ad
    xor [hl]                                      ; $7bdf: $ae
    xor a                                         ; $7be0: $af
    or b                                          ; $7be1: $b0
    or c                                          ; $7be2: $b1
    dec sp                                        ; $7be3: $3b
    or d                                          ; $7be4: $b2
    or e                                          ; $7be5: $b3
    or h                                          ; $7be6: $b4
    or l                                          ; $7be7: $b5
    or [hl]                                       ; $7be8: $b6
    or a                                          ; $7be9: $b7
    cp b                                          ; $7bea: $b8
    cp c                                          ; $7beb: $b9
    dec c                                         ; $7bec: $0d
    dec c                                         ; $7bed: $0d
    dec c                                         ; $7bee: $0d
    dec c                                         ; $7bef: $0d
    dec c                                         ; $7bf0: $0d
    dec c                                         ; $7bf1: $0d
    dec c                                         ; $7bf2: $0d
    dec b                                         ; $7bf3: $05
    dec c                                         ; $7bf4: $0d
    dec c                                         ; $7bf5: $0d
    dec c                                         ; $7bf6: $0d
    dec c                                         ; $7bf7: $0d
    dec c                                         ; $7bf8: $0d
    dec c                                         ; $7bf9: $0d
    dec c                                         ; $7bfa: $0d
    dec c                                         ; $7bfb: $0d
    jp nc, $d1d1                                  ; $7bfc: $d2 $d1 $d1

    pop de                                        ; $7bff: $d1
    jp nc, $d1d1                                  ; $7c00: $d2 $d1 $d1

    pop de                                        ; $7c03: $d1
    jp nc, $d1d1                                  ; $7c04: $d2 $d1 $d1

    pop de                                        ; $7c07: $d1
    jp nc, $d1d1                                  ; $7c08: $d2 $d1 $d1

    pop de                                        ; $7c0b: $d1
    add b                                         ; $7c0c: $80
    add b                                         ; $7c0d: $80
    add b                                         ; $7c0e: $80
    add b                                         ; $7c0f: $80
    add b                                         ; $7c10: $80
    add b                                         ; $7c11: $80
    add b                                         ; $7c12: $80
    add b                                         ; $7c13: $80
    add b                                         ; $7c14: $80
    add b                                         ; $7c15: $80
    add b                                         ; $7c16: $80
    add b                                         ; $7c17: $80
    add b                                         ; $7c18: $80
    add b                                         ; $7c19: $80
    add b                                         ; $7c1a: $80
    add b                                         ; $7c1b: $80
    inc c                                         ; $7c1c: $0c
    inc de                                        ; $7c1d: $13
    inc c                                         ; $7c1e: $0c
    inc de                                        ; $7c1f: $13
    rla                                           ; $7c20: $17
    jr jr_081_7c97                                ; $7c21: $18 $74

    ld [hl], l                                    ; $7c23: $75
    dec de                                        ; $7c24: $1b
    inc e                                         ; $7c25: $1c
    halt                                          ; $7c26: $76
    ld [hl], a                                    ; $7c27: $77
    rra                                           ; $7c28: $1f
    jr nz, @+$23                                  ; $7c29: $20 $21

    ld [hl+], a                                   ; $7c2b: $22
    dec b                                         ; $7c2c: $05
    dec b                                         ; $7c2d: $05
    dec b                                         ; $7c2e: $05
    dec b                                         ; $7c2f: $05
    rlca                                          ; $7c30: $07
    rlca                                          ; $7c31: $07
    rlca                                          ; $7c32: $07
    rlca                                          ; $7c33: $07
    inc bc                                        ; $7c34: $03
    inc bc                                        ; $7c35: $03
    ld b, $03                                     ; $7c36: $06 $03
    inc bc                                        ; $7c38: $03
    ld b, $03                                     ; $7c39: $06 $03
    inc bc                                        ; $7c3b: $03
    cp d                                          ; $7c3c: $ba
    cp e                                          ; $7c3d: $bb
    cp h                                          ; $7c3e: $bc
    dec bc                                        ; $7c3f: $0b
    dec c                                         ; $7c40: $0d
    ld c, $17                                     ; $7c41: $0e $17
    jr jr_081_7c54                                ; $7c43: $18 $0f

    db $10                                        ; $7c45: $10
    dec de                                        ; $7c46: $1b
    inc e                                         ; $7c47: $1c
    cpl                                           ; $7c48: $2f
    ld [de], a                                    ; $7c49: $12
    rra                                           ; $7c4a: $1f
    jr nz, @+$0f                                  ; $7c4b: $20 $0d

    dec c                                         ; $7c4d: $0d
    dec c                                         ; $7c4e: $0d
    dec b                                         ; $7c4f: $05
    rlca                                          ; $7c50: $07
    rlca                                          ; $7c51: $07
    rlca                                          ; $7c52: $07
    rlca                                          ; $7c53: $07

jr_081_7c54:
    inc bc                                        ; $7c54: $03
    inc bc                                        ; $7c55: $03
    ld b, $03                                     ; $7c56: $06 $03
    inc bc                                        ; $7c58: $03
    ld b, $03                                     ; $7c59: $06 $03
    ld b, $0c                                     ; $7c5b: $06 $0c
    inc de                                        ; $7c5d: $13
    cp l                                          ; $7c5e: $bd
    cp [hl]                                       ; $7c5f: $be
    ld [hl], h                                    ; $7c60: $74
    ld [hl], l                                    ; $7c61: $75
    dec c                                         ; $7c62: $0d
    ld c, $76                                     ; $7c63: $0e $76
    ld [hl], a                                    ; $7c65: $77
    rrca                                          ; $7c66: $0f
    db $10                                        ; $7c67: $10
    ld hl, $2f22                                  ; $7c68: $21 $22 $2f
    ld [de], a                                    ; $7c6b: $12
    dec b                                         ; $7c6c: $05
    dec b                                         ; $7c6d: $05
    dec c                                         ; $7c6e: $0d
    dec c                                         ; $7c6f: $0d
    rlca                                          ; $7c70: $07
    rlca                                          ; $7c71: $07
    rlca                                          ; $7c72: $07
    rlca                                          ; $7c73: $07
    ld b, $06                                     ; $7c74: $06 $06
    inc bc                                        ; $7c76: $03
    rlca                                          ; $7c77: $07
    inc bc                                        ; $7c78: $03
    ld b, $06                                     ; $7c79: $06 $06
    rlca                                          ; $7c7b: $07
    jp nc, $d1d1                                  ; $7c7c: $d2 $d1 $d1

    pop de                                        ; $7c7f: $d1
    jp nc, $d1d1                                  ; $7c80: $d2 $d1 $d1

    pop de                                        ; $7c83: $d1
    jp nc, $d1d1                                  ; $7c84: $d2 $d1 $d1

    pop de                                        ; $7c87: $d1
    cp a                                          ; $7c88: $bf
    ret nz                                        ; $7c89: $c0

    pop bc                                        ; $7c8a: $c1
    pop de                                        ; $7c8b: $d1
    add b                                         ; $7c8c: $80
    add b                                         ; $7c8d: $80
    add b                                         ; $7c8e: $80
    add b                                         ; $7c8f: $80
    add b                                         ; $7c90: $80
    add b                                         ; $7c91: $80
    add b                                         ; $7c92: $80
    add b                                         ; $7c93: $80
    add b                                         ; $7c94: $80
    add b                                         ; $7c95: $80
    add b                                         ; $7c96: $80

jr_081_7c97:
    add b                                         ; $7c97: $80
    adc b                                         ; $7c98: $88
    adc b                                         ; $7c99: $88
    adc b                                         ; $7c9a: $88
    add b                                         ; $7c9b: $80
    ld d, b                                       ; $7c9c: $50
    ld d, c                                       ; $7c9d: $51
    ld b, b                                       ; $7c9e: $40
    ld b, c                                       ; $7c9f: $41
    jp nz, Jump_081_5e55                          ; $7ca0: $c2 $55 $5e

    ld b, l                                       ; $7ca3: $45
    jp Jump_081_5f59                              ; $7ca4: $c3 $59 $5f


    ld h, b                                       ; $7ca7: $60
    call nz, $635d                                ; $7ca8: $c4 $5d $63
    ld c, l                                       ; $7cab: $4d
    ld b, $03                                     ; $7cac: $06 $03
    ld b, $06                                     ; $7cae: $06 $06
    dec bc                                        ; $7cb0: $0b
    ld b, $06                                     ; $7cb1: $06 $06
    inc bc                                        ; $7cb3: $03
    ld c, $03                                     ; $7cb4: $0e $03
    ld b, $06                                     ; $7cb6: $06 $06
    ld c, $06                                     ; $7cb8: $0e $06
    inc bc                                        ; $7cba: $03
    ld b, $4e                                     ; $7cbb: $06 $4e
    ld c, a                                       ; $7cbd: $4f
    ld d, b                                       ; $7cbe: $50
    ld d, c                                       ; $7cbf: $51
    ld d, d                                       ; $7cc0: $52
    ld d, e                                       ; $7cc1: $53
    jp nz, Jump_081_6155                          ; $7cc2: $c2 $55 $61

    ld h, d                                       ; $7cc5: $62
    jp $c559                                      ; $7cc6: $c3 $59 $c5


    add $c4                                       ; $7cc9: $c6 $c4
    ld e, l                                       ; $7ccb: $5d
    inc bc                                        ; $7ccc: $03
    ld b, $06                                     ; $7ccd: $06 $06
    ld b, $06                                     ; $7ccf: $06 $06
    ld b, $0b                                     ; $7cd1: $06 $0b
    ld b, $06                                     ; $7cd3: $06 $06
    inc bc                                        ; $7cd5: $03
    ld c, $03                                     ; $7cd6: $0e $03
    dec bc                                        ; $7cd8: $0b
    ld c, $0e                                     ; $7cd9: $0e $0e
    ld b, $40                                     ; $7cdb: $06 $40
    ld b, c                                       ; $7cdd: $41
    ld c, [hl]                                    ; $7cde: $4e
    ld c, a                                       ; $7cdf: $4f
    ld e, [hl]                                    ; $7ce0: $5e
    ld b, l                                       ; $7ce1: $45
    ld d, d                                       ; $7ce2: $52
    ld d, e                                       ; $7ce3: $53
    ld e, a                                       ; $7ce4: $5f
    ld h, b                                       ; $7ce5: $60
    ld h, c                                       ; $7ce6: $61
    ld h, d                                       ; $7ce7: $62
    ld h, e                                       ; $7ce8: $63
    ld c, l                                       ; $7ce9: $4d
    push bc                                       ; $7cea: $c5
    add $06                                       ; $7ceb: $c6 $06
    inc bc                                        ; $7ced: $03
    ld b, $07                                     ; $7cee: $06 $07
    inc bc                                        ; $7cf0: $03
    ld b, $03                                     ; $7cf1: $06 $03
    rlca                                          ; $7cf3: $07
    inc bc                                        ; $7cf4: $03
    ld b, $06                                     ; $7cf5: $06 $06
    rlca                                          ; $7cf7: $07
    ld b, $03                                     ; $7cf8: $06 $03
    ld c, $0f                                     ; $7cfa: $0e $0f
    rst $00                                       ; $7cfc: $c7
    db $db                                        ; $7cfd: $db
    jp nc, $c8d1                                  ; $7cfe: $d2 $d1 $c8

    ret                                           ; $7d01: $c9


    jp z, $cbd1                                   ; $7d02: $ca $d1 $cb

    call z, $d1ca                                 ; $7d05: $cc $ca $d1
    call $cae7                                    ; $7d08: $cd $e7 $ca
    pop de                                        ; $7d0b: $d1
    dec c                                         ; $7d0c: $0d
    dec b                                         ; $7d0d: $05
    add b                                         ; $7d0e: $80
    add b                                         ; $7d0f: $80
    dec c                                         ; $7d10: $0d
    dec c                                         ; $7d11: $0d
    adc b                                         ; $7d12: $88
    add b                                         ; $7d13: $80
    dec c                                         ; $7d14: $0d
    dec c                                         ; $7d15: $0d
    adc b                                         ; $7d16: $88
    add b                                         ; $7d17: $80
    dec c                                         ; $7d18: $0d
    dec b                                         ; $7d19: $05
    adc b                                         ; $7d1a: $88
    add b                                         ; $7d1b: $80
    adc $7d                                       ; $7d1c: $ce $7d
    add c                                         ; $7d1e: $81
    ld [hl], c                                    ; $7d1f: $71
    rla                                           ; $7d20: $17
    jr @-$2f                                      ; $7d21: $18 $cf

    ret nc                                        ; $7d23: $d0

    dec de                                        ; $7d24: $1b
    inc e                                         ; $7d25: $1c
    pop de                                        ; $7d26: $d1
    jp nc, $201f                                  ; $7d27: $d2 $1f $20

    db $d3                                        ; $7d2a: $d3
    call nc, $060b                                ; $7d2b: $d4 $0b $06
    ld c, $03                                     ; $7d2e: $0e $03
    rlca                                          ; $7d30: $07
    ld b, $0b                                     ; $7d31: $06 $0b
    ld c, $07                                     ; $7d33: $0e $07
    ld b, $09                                     ; $7d35: $06 $09
    add hl, bc                                    ; $7d37: $09
    rlca                                          ; $7d38: $07
    inc bc                                        ; $7d39: $03
    add hl, bc                                    ; $7d3a: $09
    add hl, bc                                    ; $7d3b: $09
    push de                                       ; $7d3c: $d5
    sub $d7                                       ; $7d3d: $d6 $d7
    ret c                                         ; $7d3f: $d8

    reti                                          ; $7d40: $d9


    jp c, $dcdb                                   ; $7d41: $da $db $dc

    db $dd                                        ; $7d44: $dd
    sbc $df                                       ; $7d45: $de $df
    ldh [$e1], a                                  ; $7d47: $e0 $e1
    ld [c], a                                     ; $7d49: $e2
    db $e3                                        ; $7d4a: $e3
    db $e4                                        ; $7d4b: $e4
    dec bc                                        ; $7d4c: $0b

jr_081_7d4d:
    ld c, $0b                                     ; $7d4d: $0e $0b
    dec bc                                        ; $7d4f: $0b
    ld c, $09                                     ; $7d50: $0e $09
    add hl, bc                                    ; $7d52: $09
    add hl, bc                                    ; $7d53: $09
    add hl, bc                                    ; $7d54: $09
    add hl, bc                                    ; $7d55: $09
    add hl, bc                                    ; $7d56: $09
    add hl, bc                                    ; $7d57: $09
    add hl, bc                                    ; $7d58: $09
    add hl, bc                                    ; $7d59: $09
    add hl, bc                                    ; $7d5a: $09
    add hl, bc                                    ; $7d5b: $09
    push hl                                       ; $7d5c: $e5
    ld [hl], c                                    ; $7d5d: $71
    push de                                       ; $7d5e: $d5
    sub $e6                                       ; $7d5f: $d6 $e6
    ld [hl], l                                    ; $7d61: $75
    dec c                                         ; $7d62: $0d
    ld c, $e7                                     ; $7d63: $0e $e7
    ld [hl], a                                    ; $7d65: $77
    rrca                                          ; $7d66: $0f
    db $10                                        ; $7d67: $10
    add sp, $22                                   ; $7d68: $e8 $22
    cpl                                           ; $7d6a: $2f
    ld [de], a                                    ; $7d6b: $12
    dec bc                                        ; $7d6c: $0b
    ld b, $0b                                     ; $7d6d: $06 $0b
    rrca                                          ; $7d6f: $0f
    add hl, bc                                    ; $7d70: $09
    ld b, $06                                     ; $7d71: $06 $06
    rlca                                          ; $7d73: $07
    add hl, bc                                    ; $7d74: $09
    inc bc                                        ; $7d75: $03
    ld b, $06                                     ; $7d76: $06 $06
    add hl, bc                                    ; $7d78: $09
    ld b, $03                                     ; $7d79: $06 $03
    ld b, $e9                                     ; $7d7b: $06 $e9
    inc de                                        ; $7d7d: $13
    jp z, Jump_000_17d1                           ; $7d7e: $ca $d1 $17

    jr jr_081_7d4d                                ; $7d81: $18 $ca

    ld [$1c1b], a                                 ; $7d83: $ea $1b $1c
    jp nc, $ebea                                  ; $7d86: $d2 $ea $eb

    ret nz                                        ; $7d89: $c0

    db $ec                                        ; $7d8a: $ec
    ld [$050d], a                                 ; $7d8b: $ea $0d $05
    adc b                                         ; $7d8e: $88
    add b                                         ; $7d8f: $80
    rlca                                          ; $7d90: $07
    rlca                                          ; $7d91: $07
    adc b                                         ; $7d92: $88
    adc b                                         ; $7d93: $88
    ld b, $07                                     ; $7d94: $06 $07
    add b                                         ; $7d96: $80
    adc b                                         ; $7d97: $88
    adc b                                         ; $7d98: $88
    adc b                                         ; $7d99: $88
    adc b                                         ; $7d9a: $88
    adc b                                         ; $7d9b: $88
    pop de                                        ; $7d9c: $d1
    jp nc, $eeed                                  ; $7d9d: $d2 $ed $ee

    pop de                                        ; $7da0: $d1
    jp nc, $f0ef                                  ; $7da1: $d2 $ef $f0

    pop de                                        ; $7da4: $d1
    jp nc, $f2f1                                  ; $7da5: $d2 $f1 $f2

    pop de                                        ; $7da8: $d1
    jp nc, $f4f3                                  ; $7da9: $d2 $f3 $f4

    add b                                         ; $7dac: $80
    add b                                         ; $7dad: $80
    adc h                                         ; $7dae: $8c
    adc h                                         ; $7daf: $8c
    add b                                         ; $7db0: $80
    add b                                         ; $7db1: $80
    adc h                                         ; $7db2: $8c
    adc h                                         ; $7db3: $8c
    add b                                         ; $7db4: $80
    add b                                         ; $7db5: $80
    adc h                                         ; $7db6: $8c
    adc h                                         ; $7db7: $8c
    add b                                         ; $7db8: $80
    add b                                         ; $7db9: $80
    adc h                                         ; $7dba: $8c
    adc h                                         ; $7dbb: $8c
    push af                                       ; $7dbc: $f5
    or $f7                                        ; $7dbd: $f6 $f7
    ld b, c                                       ; $7dbf: $41
    ld hl, sp-$07                                 ; $7dc0: $f8 $f9
    ld a, [$fcfb]                                 ; $7dc2: $fa $fb $fc
    db $fd                                        ; $7dc5: $fd
    cp $ff                                        ; $7dc6: $fe $ff
    nop                                           ; $7dc8: $00
    ld bc, $0302                                  ; $7dc9: $01 $02 $03
    adc h                                         ; $7dcc: $8c
    adc h                                         ; $7dcd: $8c
    ld c, $06                                     ; $7dce: $0e $06
    adc h                                         ; $7dd0: $8c
    adc h                                         ; $7dd1: $8c
    adc h                                         ; $7dd2: $8c
    ld c, $8c                                     ; $7dd3: $0e $8c
    adc h                                         ; $7dd5: $8c
    adc h                                         ; $7dd6: $8c
    adc h                                         ; $7dd7: $8c
    adc h                                         ; $7dd8: $8c
    adc h                                         ; $7dd9: $8c
    adc h                                         ; $7dda: $8c
    adc h                                         ; $7ddb: $8c
    ld c, [hl]                                    ; $7ddc: $4e
    ld c, a                                       ; $7ddd: $4f
    ld d, b                                       ; $7dde: $50
    ld d, c                                       ; $7ddf: $51
    ld d, d                                       ; $7de0: $52
    ld d, e                                       ; $7de1: $53
    jp nz, $0455                                  ; $7de2: $c2 $55 $04

    ld h, d                                       ; $7de5: $62
    jp $0559                                      ; $7de6: $c3 $59 $05


    add $c4                                       ; $7de9: $c6 $c4
    ld e, l                                       ; $7deb: $5d
    ld b, $03                                     ; $7dec: $06 $03
    ld b, $03                                     ; $7dee: $06 $03
    ld b, $06                                     ; $7df0: $06 $06
    dec bc                                        ; $7df2: $0b
    inc bc                                        ; $7df3: $03
    ld c, $06                                     ; $7df4: $0e $06
    ld c, $06                                     ; $7df6: $0e $06
    ld c, $0e                                     ; $7df8: $0e $0e
    ld c, $03                                     ; $7dfa: $0e $03
    ld b, b                                       ; $7dfc: $40
    ld b, $07                                     ; $7dfd: $06 $07
    ld [$455e], sp                                ; $7dff: $08 $5e $45
    ld d, d                                       ; $7e02: $52
    ld d, e                                       ; $7e03: $53
    ld e, a                                       ; $7e04: $5f
    ld h, b                                       ; $7e05: $60
    ld h, c                                       ; $7e06: $61
    ld h, d                                       ; $7e07: $62
    ld h, e                                       ; $7e08: $63
    ld c, l                                       ; $7e09: $4d
    push bc                                       ; $7e0a: $c5
    add $03                                       ; $7e0b: $c6 $03
    add hl, bc                                    ; $7e0d: $09
    add hl, bc                                    ; $7e0e: $09
    add hl, bc                                    ; $7e0f: $09
    ld b, $07                                     ; $7e10: $06 $07
    rlca                                          ; $7e12: $07
    rlca                                          ; $7e13: $07
    inc bc                                        ; $7e14: $03
    ld b, $03                                     ; $7e15: $06 $03
    ld b, $06                                     ; $7e17: $06 $06
    inc bc                                        ; $7e19: $03
    ld c, $0e                                     ; $7e1a: $0e $0e
    pop de                                        ; $7e1c: $d1
    jp nc, $0a09                                  ; $7e1d: $d2 $09 $0a

    pop de                                        ; $7e20: $d1
    cp a                                          ; $7e21: $bf
    ret nz                                        ; $7e22: $c0

    ret nz                                        ; $7e23: $c0

    pop de                                        ; $7e24: $d1
    pop de                                        ; $7e25: $d1
    pop de                                        ; $7e26: $d1
    pop de                                        ; $7e27: $d1
    pop de                                        ; $7e28: $d1
    pop de                                        ; $7e29: $d1
    pop de                                        ; $7e2a: $d1
    pop de                                        ; $7e2b: $d1
    add b                                         ; $7e2c: $80
    add b                                         ; $7e2d: $80
    adc h                                         ; $7e2e: $8c
    adc h                                         ; $7e2f: $8c
    add b                                         ; $7e30: $80
    adc b                                         ; $7e31: $88
    adc b                                         ; $7e32: $88
    adc b                                         ; $7e33: $88
    add b                                         ; $7e34: $80
    add b                                         ; $7e35: $80
    add b                                         ; $7e36: $80
    add b                                         ; $7e37: $80
    add b                                         ; $7e38: $80
    add b                                         ; $7e39: $80
    add b                                         ; $7e3a: $80
    add b                                         ; $7e3b: $80
    dec bc                                        ; $7e3c: $0b
    inc c                                         ; $7e3d: $0c
    dec c                                         ; $7e3e: $0d
    ld c, $c0                                     ; $7e3f: $0e $c0
    ret nz                                        ; $7e41: $c0

    ret nz                                        ; $7e42: $c0

    ret nz                                        ; $7e43: $c0

    pop de                                        ; $7e44: $d1
    pop de                                        ; $7e45: $d1
    pop de                                        ; $7e46: $d1
    pop de                                        ; $7e47: $d1
    pop de                                        ; $7e48: $d1
    pop de                                        ; $7e49: $d1
    pop de                                        ; $7e4a: $d1
    pop de                                        ; $7e4b: $d1
    adc h                                         ; $7e4c: $8c
    adc h                                         ; $7e4d: $8c
    adc h                                         ; $7e4e: $8c
    adc h                                         ; $7e4f: $8c
    adc b                                         ; $7e50: $88
    adc b                                         ; $7e51: $88
    adc b                                         ; $7e52: $88
    adc b                                         ; $7e53: $88
    add b                                         ; $7e54: $80
    add b                                         ; $7e55: $80
    add b                                         ; $7e56: $80
    add b                                         ; $7e57: $80
    add b                                         ; $7e58: $80
    add b                                         ; $7e59: $80
    add b                                         ; $7e5a: $80
    add b                                         ; $7e5b: $80
    rrca                                          ; $7e5c: $0f
    sub $ce                                       ; $7e5d: $d6 $ce
    ld a, l                                       ; $7e5f: $7d
    ret nz                                        ; $7e60: $c0

    ret nz                                        ; $7e61: $c0

    ret nz                                        ; $7e62: $c0

    ret nz                                        ; $7e63: $c0

    pop de                                        ; $7e64: $d1
    pop de                                        ; $7e65: $d1
    pop de                                        ; $7e66: $d1
    pop de                                        ; $7e67: $d1
    pop de                                        ; $7e68: $d1
    pop de                                        ; $7e69: $d1
    pop de                                        ; $7e6a: $d1
    pop de                                        ; $7e6b: $d1
    ld c, $0e                                     ; $7e6c: $0e $0e
    ld c, $06                                     ; $7e6e: $0e $06
    adc b                                         ; $7e70: $88
    adc b                                         ; $7e71: $88
    adc b                                         ; $7e72: $88
    adc b                                         ; $7e73: $88
    add b                                         ; $7e74: $80
    add b                                         ; $7e75: $80
    add b                                         ; $7e76: $80
    add b                                         ; $7e77: $80
    add b                                         ; $7e78: $80
    add b                                         ; $7e79: $80
    add b                                         ; $7e7a: $80
    add b                                         ; $7e7b: $80
    add c                                         ; $7e7c: $81
    ld [hl], c                                    ; $7e7d: $71
    push de                                       ; $7e7e: $d5
    sub $c0                                       ; $7e7f: $d6 $c0
    ret nz                                        ; $7e81: $c0

    ret nz                                        ; $7e82: $c0

    ret nz                                        ; $7e83: $c0

    pop de                                        ; $7e84: $d1
    pop de                                        ; $7e85: $d1
    pop de                                        ; $7e86: $d1
    pop de                                        ; $7e87: $d1
    pop de                                        ; $7e88: $d1
    pop de                                        ; $7e89: $d1
    pop de                                        ; $7e8a: $d1
    pop de                                        ; $7e8b: $d1
    dec bc                                        ; $7e8c: $0b
    ld b, $0e                                     ; $7e8d: $06 $0e
    dec bc                                        ; $7e8f: $0b
    adc b                                         ; $7e90: $88
    adc b                                         ; $7e91: $88
    adc b                                         ; $7e92: $88
    adc b                                         ; $7e93: $88
    add b                                         ; $7e94: $80
    add b                                         ; $7e95: $80
    add b                                         ; $7e96: $80
    add b                                         ; $7e97: $80
    add b                                         ; $7e98: $80
    add b                                         ; $7e99: $80
    add b                                         ; $7e9a: $80
    add b                                         ; $7e9b: $80
    ld d, b                                       ; $7e9c: $50
    ld d, c                                       ; $7e9d: $51
    db $10                                        ; $7e9e: $10
    ld de, $55c2                                  ; $7e9f: $11 $c2 $55
    ld [de], a                                    ; $7ea2: $12
    inc de                                        ; $7ea3: $13
    jp Jump_081_5f59                              ; $7ea4: $c3 $59 $5f


    inc d                                         ; $7ea7: $14
    call nz, $635d                                ; $7ea8: $c4 $5d $63
    ld c, l                                       ; $7eab: $4d
    rlca                                          ; $7eac: $07
    ld b, $09                                     ; $7ead: $06 $09
    add hl, bc                                    ; $7eaf: $09
    rrca                                          ; $7eb0: $0f
    inc bc                                        ; $7eb1: $03
    dec bc                                        ; $7eb2: $0b
    add hl, bc                                    ; $7eb3: $09
    ld c, $06                                     ; $7eb4: $0e $06
    inc bc                                        ; $7eb6: $03
    ld c, $0e                                     ; $7eb7: $0e $0e
    inc bc                                        ; $7eb9: $03
    ld b, $06                                     ; $7eba: $06 $06
    dec d                                         ; $7ebc: $15
    ld d, $17                                     ; $7ebd: $16 $17
    jr jr_081_7eda                                ; $7ebf: $18 $19

    ld a, [de]                                    ; $7ec1: $1a
    dec de                                        ; $7ec2: $1b
    inc e                                         ; $7ec3: $1c
    dec e                                         ; $7ec4: $1d
    ld e, $1f                                     ; $7ec5: $1e $1f
    jr nz, @-$39                                  ; $7ec7: $20 $c5

    add $c4                                       ; $7ec9: $c6 $c4
    ld e, l                                       ; $7ecb: $5d
    add hl, bc                                    ; $7ecc: $09
    add hl, bc                                    ; $7ecd: $09
    add hl, bc                                    ; $7ece: $09
    add hl, bc                                    ; $7ecf: $09
    add hl, bc                                    ; $7ed0: $09
    add hl, bc                                    ; $7ed1: $09
    add hl, bc                                    ; $7ed2: $09
    add hl, bc                                    ; $7ed3: $09
    dec bc                                        ; $7ed4: $0b
    ld c, $0e                                     ; $7ed5: $0e $0e
    dec bc                                        ; $7ed7: $0b
    ld c, $0e                                     ; $7ed8: $0e $0e

jr_081_7eda:
    dec bc                                        ; $7eda: $0b
    ld b, $21                                     ; $7edb: $06 $21
    ld b, c                                       ; $7edd: $41
    ld c, [hl]                                    ; $7ede: $4e
    ld c, a                                       ; $7edf: $4f
    ld [hl+], a                                   ; $7ee0: $22
    ld b, l                                       ; $7ee1: $45
    ld d, d                                       ; $7ee2: $52
    ld d, e                                       ; $7ee3: $53
    inc hl                                        ; $7ee4: $23
    ld h, b                                       ; $7ee5: $60
    ld h, c                                       ; $7ee6: $61
    ld h, d                                       ; $7ee7: $62
    ld h, e                                       ; $7ee8: $63
    ld c, l                                       ; $7ee9: $4d
    push bc                                       ; $7eea: $c5
    add $09                                       ; $7eeb: $c6 $09
    inc bc                                        ; $7eed: $03
    ld b, $07                                     ; $7eee: $06 $07
    add hl, bc                                    ; $7ef0: $09
    ld b, $03                                     ; $7ef1: $06 $03
    rlca                                          ; $7ef3: $07
    ld c, $06                                     ; $7ef4: $0e $06
    ld b, $07                                     ; $7ef6: $06 $07
    inc bc                                        ; $7ef8: $03
    ld b, $0b                                     ; $7ef9: $06 $0b
    rrca                                          ; $7efb: $0f
    adc $7d                                       ; $7efc: $ce $7d
    add c                                         ; $7efe: $81
    ld [hl], c                                    ; $7eff: $71
    ret nz                                        ; $7f00: $c0

    ret nz                                        ; $7f01: $c0

    ret nz                                        ; $7f02: $c0

    ret nz                                        ; $7f03: $c0

    pop de                                        ; $7f04: $d1
    pop de                                        ; $7f05: $d1
    pop de                                        ; $7f06: $d1
    pop de                                        ; $7f07: $d1
    pop de                                        ; $7f08: $d1
    pop de                                        ; $7f09: $d1
    pop de                                        ; $7f0a: $d1
    pop de                                        ; $7f0b: $d1
    ld c, $06                                     ; $7f0c: $0e $06
    ld c, $03                                     ; $7f0e: $0e $03
    adc b                                         ; $7f10: $88
    adc b                                         ; $7f11: $88
    adc b                                         ; $7f12: $88
    adc b                                         ; $7f13: $88
    add b                                         ; $7f14: $80
    add b                                         ; $7f15: $80
    add b                                         ; $7f16: $80
    add b                                         ; $7f17: $80
    add b                                         ; $7f18: $80
    add b                                         ; $7f19: $80
    add b                                         ; $7f1a: $80
    add b                                         ; $7f1b: $80
    push de                                       ; $7f1c: $d5
    sub $ce                                       ; $7f1d: $d6 $ce
    ld a, l                                       ; $7f1f: $7d
    ret nz                                        ; $7f20: $c0

    ret nz                                        ; $7f21: $c0

    ret nz                                        ; $7f22: $c0

    ret nz                                        ; $7f23: $c0

    pop de                                        ; $7f24: $d1
    pop de                                        ; $7f25: $d1
    pop de                                        ; $7f26: $d1
    pop de                                        ; $7f27: $d1
    pop de                                        ; $7f28: $d1
    pop de                                        ; $7f29: $d1
    pop de                                        ; $7f2a: $d1
    pop de                                        ; $7f2b: $d1
    ld c, $0e                                     ; $7f2c: $0e $0e
    ld c, $03                                     ; $7f2e: $0e $03
    adc b                                         ; $7f30: $88
    adc b                                         ; $7f31: $88
    adc b                                         ; $7f32: $88
    adc b                                         ; $7f33: $88
    add b                                         ; $7f34: $80
    add b                                         ; $7f35: $80
    add b                                         ; $7f36: $80
    add b                                         ; $7f37: $80
    add b                                         ; $7f38: $80
    add b                                         ; $7f39: $80
    add b                                         ; $7f3a: $80
    add b                                         ; $7f3b: $80
    add c                                         ; $7f3c: $81
    ld [hl], c                                    ; $7f3d: $71
    push de                                       ; $7f3e: $d5
    sub $c0                                       ; $7f3f: $d6 $c0
    ret nz                                        ; $7f41: $c0

    ret nz                                        ; $7f42: $c0

    ret nz                                        ; $7f43: $c0

    pop de                                        ; $7f44: $d1
    pop de                                        ; $7f45: $d1
    pop de                                        ; $7f46: $d1
    pop de                                        ; $7f47: $d1
    pop de                                        ; $7f48: $d1
    pop de                                        ; $7f49: $d1
    pop de                                        ; $7f4a: $d1
    pop de                                        ; $7f4b: $d1
    dec bc                                        ; $7f4c: $0b
    ld b, $0e                                     ; $7f4d: $06 $0e
    rrca                                          ; $7f4f: $0f
    adc b                                         ; $7f50: $88
    adc b                                         ; $7f51: $88
    adc b                                         ; $7f52: $88
    adc b                                         ; $7f53: $88
    add b                                         ; $7f54: $80
    add b                                         ; $7f55: $80
    add b                                         ; $7f56: $80
    add b                                         ; $7f57: $80
    add b                                         ; $7f58: $80
    add b                                         ; $7f59: $80
    add b                                         ; $7f5a: $80
    add b                                         ; $7f5b: $80
    jp nc, $d1d1                                  ; $7f5c: $d2 $d1 $d1

    pop de                                        ; $7f5f: $d1
    db $ec                                        ; $7f60: $ec
    pop de                                        ; $7f61: $d1
    pop de                                        ; $7f62: $d1
    pop de                                        ; $7f63: $d1
    pop de                                        ; $7f64: $d1
    pop de                                        ; $7f65: $d1
    pop de                                        ; $7f66: $d1
    pop de                                        ; $7f67: $d1
    pop de                                        ; $7f68: $d1
    pop de                                        ; $7f69: $d1
    pop de                                        ; $7f6a: $d1
    pop de                                        ; $7f6b: $d1
    add b                                         ; $7f6c: $80
    add b                                         ; $7f6d: $80
    add b                                         ; $7f6e: $80
    add b                                         ; $7f6f: $80
    adc b                                         ; $7f70: $88
    add b                                         ; $7f71: $80
    add b                                         ; $7f72: $80
    add b                                         ; $7f73: $80
    add b                                         ; $7f74: $80
    add b                                         ; $7f75: $80
    add b                                         ; $7f76: $80
    add b                                         ; $7f77: $80
    add b                                         ; $7f78: $80
    add b                                         ; $7f79: $80
    add b                                         ; $7f7a: $80
    add b                                         ; $7f7b: $80
    ld d, e                                       ; $7f7c: $53
    nop                                           ; $7f7d: $00
    ld b, b                                       ; $7f7e: $40
    nop                                           ; $7f7f: $00
    ld bc, $0920                                  ; $7f80: $01 $20 $09
    nop                                           ; $7f83: $00
    ld a, [bc]                                    ; $7f84: $0a
    nop                                           ; $7f85: $00
    dec bc                                        ; $7f86: $0b
    nop                                           ; $7f87: $00
    ld b, b                                       ; $7f88: $40
    inc c                                         ; $7f89: $0c
    rrca                                          ; $7f8a: $0f
    jr z, jr_081_7f8d                             ; $7f8b: $28 $00

jr_081_7f8d:
    dec c                                         ; $7f8d: $0d
    nop                                           ; $7f8e: $00
    ld c, $00                                     ; $7f8f: $0e $00
    rrca                                          ; $7f91: $0f
    nop                                           ; $7f92: $00
    nop                                           ; $7f93: $00
    stop                                          ; $7f94: $10 $00
    ld bc, $0200                                  ; $7f96: $01 $00 $02
    nop                                           ; $7f99: $00
    inc bc                                        ; $7f9a: $03
    nop                                           ; $7f9b: $00
    nop                                           ; $7f9c: $00
    inc b                                         ; $7f9d: $04
    nop                                           ; $7f9e: $00
    ld de, $1200                                  ; $7f9f: $11 $00 $12
    nop                                           ; $7fa2: $00
    inc de                                        ; $7fa3: $13
    nop                                           ; $7fa4: $00
    nop                                           ; $7fa5: $00
    inc d                                         ; $7fa6: $14
    nop                                           ; $7fa7: $00
    dec b                                         ; $7fa8: $05
    nop                                           ; $7fa9: $00
    ld b, $00                                     ; $7faa: $06 $00
    rlca                                          ; $7fac: $07
    ld [bc], a                                    ; $7fad: $02
    nop                                           ; $7fae: $00
    ld [$1500], sp                                ; $7faf: $08 $00 $15
    nop                                           ; $7fb2: $00
    ld d, $3b                                     ; $7fb3: $16 $3b
    db $10                                        ; $7fb5: $10
    rla                                           ; $7fb6: $17
    nop                                           ; $7fb7: $00
    nop                                           ; $7fb8: $00
    jr jr_081_7fbb                                ; $7fb9: $18 $00

jr_081_7fbb:
    add hl, de                                    ; $7fbb: $19
    nop                                           ; $7fbc: $00
    ld a, [de]                                    ; $7fbd: $1a
    nop                                           ; $7fbe: $00
    inc hl                                        ; $7fbf: $23
    jr nz, jr_081_7fc2                            ; $7fc0: $20 $00

jr_081_7fc2:
    inc h                                         ; $7fc2: $24
    ld c, e                                       ; $7fc3: $4b
    db $10                                        ; $7fc4: $10
    dec de                                        ; $7fc5: $1b
    nop                                           ; $7fc6: $00
    inc e                                         ; $7fc7: $1c
    nop                                           ; $7fc8: $00
    dec e                                         ; $7fc9: $1d
    ld [bc], a                                    ; $7fca: $02
    nop                                           ; $7fcb: $00
    ld e, $00                                     ; $7fcc: $1e $00
    dec h                                         ; $7fce: $25
    nop                                           ; $7fcf: $00
    ld h, $5b                                     ; $7fd0: $26 $5b
    db $10                                        ; $7fd2: $10
    rra                                           ; $7fd3: $1f
    nop                                           ; $7fd4: $00
    nop                                           ; $7fd5: $00
    jr nz, jr_081_7fd8                            ; $7fd6: $20 $00

jr_081_7fd8:
    ld hl, $2200                                  ; $7fd8: $21 $00 $22
    nop                                           ; $7fdb: $00
    daa                                           ; $7fdc: $27
    jr nz, jr_081_7fdf                            ; $7fdd: $20 $00

jr_081_7fdf:
    jr z, @+$6d                                   ; $7fdf: $28 $6b

    db $10                                        ; $7fe1: $10
    ld [de], a                                    ; $7fe2: $12
    nop                                           ; $7fe3: $00
    nop                                           ; $7fe4: $00
    ld [de], a                                    ; $7fe5: $12
    nop                                           ; $7fe6: $00
    nop                                           ; $7fe7: $00
    ld [de], a                                    ; $7fe8: $12
    nop                                           ; $7fe9: $00
    nop                                           ; $7fea: $00
    ld [de], a                                    ; $7feb: $12
    nop                                           ; $7fec: $00
    nop                                           ; $7fed: $00
    ld [de], a                                    ; $7fee: $12
    nop                                           ; $7fef: $00
    nop                                           ; $7ff0: $00
    ld [de], a                                    ; $7ff1: $12
    nop                                           ; $7ff2: $00
    nop                                           ; $7ff3: $00
    ld [bc], a                                    ; $7ff4: $02
    nop                                           ; $7ff5: $00
    ld b, h                                       ; $7ff6: $44
    ld bc, $006d                                  ; $7ff7: $01 $6d $00
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
