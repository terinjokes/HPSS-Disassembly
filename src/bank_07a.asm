; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $07a", ROMX[$4000], BANK[$7a]

    ld a, d                                       ; $4000: $7a
    ld sp, $3332                                  ; $4001: $31 $32 $33
    inc [hl]                                      ; $4004: $34
    dec [hl]                                      ; $4005: $35
    ld [hl], $37                                  ; $4006: $36 $37
    jr c, jr_07a_4043                             ; $4008: $38 $39

    jr nc, jr_07a_403d                            ; $400a: $30 $31

    ld [hl-], a                                   ; $400c: $32
    inc sp                                        ; $400d: $33
    inc [hl]                                      ; $400e: $34
    dec [hl]                                      ; $400f: $35
    inc de                                        ; $4010: $13
    nop                                           ; $4011: $00
    ld a, [bc]                                    ; $4012: $0a
    nop                                           ; $4013: $00
    ld b, b                                       ; $4014: $40
    inc de                                        ; $4015: $13
    pop de                                        ; $4016: $d1
    pop de                                        ; $4017: $d1
    pop de                                        ; $4018: $d1
    jp nc, $d1d1                                  ; $4019: $d2 $d1 $d1

    pop de                                        ; $401c: $d1
    db $d3                                        ; $401d: $d3
    pop de                                        ; $401e: $d1
    pop de                                        ; $401f: $d1
    pop de                                        ; $4020: $d1
    call nc, $d1d1                                ; $4021: $d4 $d1 $d1
    pop de                                        ; $4024: $d1
    push de                                       ; $4025: $d5
    inc b                                         ; $4026: $04
    inc b                                         ; $4027: $04
    add h                                         ; $4028: $84
    add h                                         ; $4029: $84
    inc b                                         ; $402a: $04
    inc b                                         ; $402b: $04
    add h                                         ; $402c: $84
    add [hl]                                      ; $402d: $86
    inc b                                         ; $402e: $04
    inc b                                         ; $402f: $04
    add h                                         ; $4030: $84
    add a                                         ; $4031: $87
    inc b                                         ; $4032: $04
    inc b                                         ; $4033: $04
    add h                                         ; $4034: $84
    add h                                         ; $4035: $84
    sub $d7                                       ; $4036: $d6 $d7
    ret c                                         ; $4038: $d8

    reti                                          ; $4039: $d9


    jp c, $dcdb                                   ; $403a: $da $db $dc

jr_07a_403d:
    db $dd                                        ; $403d: $dd
    sbc $df                                       ; $403e: $de $df
    ldh [$e1], a                                  ; $4040: $e0 $e1
    ld [c], a                                     ; $4042: $e2

jr_07a_4043:
    db $e3                                        ; $4043: $e3
    db $e4                                        ; $4044: $e4
    push hl                                       ; $4045: $e5
    inc b                                         ; $4046: $04
    ld b, $06                                     ; $4047: $06 $06
    inc b                                         ; $4049: $04
    inc b                                         ; $404a: $04
    inc b                                         ; $404b: $04
    rlca                                          ; $404c: $07
    ld b, $06                                     ; $404d: $06 $06
    inc b                                         ; $404f: $04
    inc b                                         ; $4050: $04
    inc b                                         ; $4051: $04
    ld b, $06                                     ; $4052: $06 $06
    inc b                                         ; $4054: $04
    inc b                                         ; $4055: $04
    and $e7                                       ; $4056: $e6 $e7
    add sp, -$17                                  ; $4058: $e8 $e9
    ld [$eceb], a                                 ; $405a: $ea $eb $ec
    db $ed                                        ; $405d: $ed
    xor $ef                                       ; $405e: $ee $ef
    ldh a, [$f1]                                  ; $4060: $f0 $f1
    ld a, [c]                                     ; $4062: $f2
    di                                            ; $4063: $f3
    db $f4                                        ; $4064: $f4
    push af                                       ; $4065: $f5
    ld b, $04                                     ; $4066: $06 $04
    inc b                                         ; $4068: $04
    inc b                                         ; $4069: $04
    ld b, $04                                     ; $406a: $06 $04
    inc b                                         ; $406c: $04
    ld b, $07                                     ; $406d: $06 $07
    inc b                                         ; $406f: $04
    inc b                                         ; $4070: $04
    rlca                                          ; $4071: $07
    inc b                                         ; $4072: $04
    ld b, $04                                     ; $4073: $06 $04
    inc b                                         ; $4075: $04
    or $d1                                        ; $4076: $f6 $d1
    pop de                                        ; $4078: $d1
    pop de                                        ; $4079: $d1
    db $d3                                        ; $407a: $d3
    pop de                                        ; $407b: $d1
    pop de                                        ; $407c: $d1
    pop de                                        ; $407d: $d1
    call nc, $d1d1                                ; $407e: $d4 $d1 $d1
    pop de                                        ; $4081: $d1
    push de                                       ; $4082: $d5
    pop de                                        ; $4083: $d1
    pop de                                        ; $4084: $d1
    pop de                                        ; $4085: $d1
    inc b                                         ; $4086: $04
    inc b                                         ; $4087: $04
    inc b                                         ; $4088: $04
    inc b                                         ; $4089: $04
    daa                                           ; $408a: $27
    inc b                                         ; $408b: $04
    inc b                                         ; $408c: $04
    inc b                                         ; $408d: $04
    inc h                                         ; $408e: $24
    inc b                                         ; $408f: $04
    inc b                                         ; $4090: $04
    inc b                                         ; $4091: $04
    and a                                         ; $4092: $a7
    add h                                         ; $4093: $84
    inc b                                         ; $4094: $04
    inc b                                         ; $4095: $04
    pop de                                        ; $4096: $d1
    pop de                                        ; $4097: $d1
    pop de                                        ; $4098: $d1
    rst $30                                       ; $4099: $f7
    pop de                                        ; $409a: $d1
    pop de                                        ; $409b: $d1
    pop de                                        ; $409c: $d1
    or $d1                                        ; $409d: $f6 $d1
    pop de                                        ; $409f: $d1
    pop de                                        ; $40a0: $d1
    jp nc, $d1d1                                  ; $40a1: $d2 $d1 $d1

    pop de                                        ; $40a4: $d1
    db $d3                                        ; $40a5: $d3
    inc b                                         ; $40a6: $04
    inc b                                         ; $40a7: $04
    add h                                         ; $40a8: $84
    and h                                         ; $40a9: $a4
    inc b                                         ; $40aa: $04
    inc b                                         ; $40ab: $04
    add h                                         ; $40ac: $84
    and a                                         ; $40ad: $a7
    inc b                                         ; $40ae: $04
    inc b                                         ; $40af: $04
    add h                                         ; $40b0: $84
    add h                                         ; $40b1: $84
    inc b                                         ; $40b2: $04
    inc b                                         ; $40b3: $04
    add h                                         ; $40b4: $84
    add [hl]                                      ; $40b5: $86
    ld hl, sp-$07                                 ; $40b6: $f8 $f9
    ld a, [$fcfb]                                 ; $40b8: $fa $fb $fc
    db $fd                                        ; $40bb: $fd
    db $fc                                        ; $40bc: $fc
    cp $ff                                        ; $40bd: $fe $ff
    nop                                           ; $40bf: $00
    ld bc, $0302                                  ; $40c0: $01 $02 $03
    inc b                                         ; $40c3: $04
    dec b                                         ; $40c4: $05
    ld b, $06                                     ; $40c5: $06 $06
    inc b                                         ; $40c7: $04
    dec b                                         ; $40c8: $05
    dec b                                         ; $40c9: $05
    dec b                                         ; $40ca: $05
    ld [bc], a                                    ; $40cb: $02
    ld [bc], a                                    ; $40cc: $02
    ld [bc], a                                    ; $40cd: $02
    ld [bc], a                                    ; $40ce: $02
    dec b                                         ; $40cf: $05
    ld [bc], a                                    ; $40d0: $02
    ld [bc], a                                    ; $40d1: $02
    dec b                                         ; $40d2: $05
    ld [bc], a                                    ; $40d3: $02
    dec b                                         ; $40d4: $05
    ld [bc], a                                    ; $40d5: $02
    rlca                                          ; $40d6: $07
    ld [$0a09], sp                                ; $40d7: $08 $09 $0a
    dec bc                                        ; $40da: $0b
    inc c                                         ; $40db: $0c
    dec c                                         ; $40dc: $0d
    db $fd                                        ; $40dd: $fd
    ld c, $0f                                     ; $40de: $0e $0f
    rst $38                                       ; $40e0: $ff
    nop                                           ; $40e1: $00
    db $10                                        ; $40e2: $10
    ld de, $1312                                  ; $40e3: $11 $12 $13
    dec b                                         ; $40e6: $05
    dec b                                         ; $40e7: $05
    dec b                                         ; $40e8: $05
    dec b                                         ; $40e9: $05
    ld [bc], a                                    ; $40ea: $02
    ld [bc], a                                    ; $40eb: $02
    ld [bc], a                                    ; $40ec: $02
    ld [bc], a                                    ; $40ed: $02
    ld [bc], a                                    ; $40ee: $02
    ld [bc], a                                    ; $40ef: $02
    ld [bc], a                                    ; $40f0: $02
    ld [bc], a                                    ; $40f1: $02
    ld [bc], a                                    ; $40f2: $02
    ld [bc], a                                    ; $40f3: $02
    ld [bc], a                                    ; $40f4: $02
    ld [bc], a                                    ; $40f5: $02
    jp nc, $d1d1                                  ; $40f6: $d2 $d1 $d1

    pop de                                        ; $40f9: $d1
    db $d3                                        ; $40fa: $d3
    pop de                                        ; $40fb: $d1
    pop de                                        ; $40fc: $d1
    pop de                                        ; $40fd: $d1
    call nc, $d1d1                                ; $40fe: $d4 $d1 $d1
    pop de                                        ; $4101: $d1
    push de                                       ; $4102: $d5
    pop de                                        ; $4103: $d1
    pop de                                        ; $4104: $d1
    pop de                                        ; $4105: $d1
    and [hl]                                      ; $4106: $a6
    add h                                         ; $4107: $84
    inc b                                         ; $4108: $04
    inc b                                         ; $4109: $04
    and h                                         ; $410a: $a4
    add h                                         ; $410b: $84
    inc b                                         ; $410c: $04
    inc b                                         ; $410d: $04
    and a                                         ; $410e: $a7
    add h                                         ; $410f: $84

Call_07a_4110:
    inc b                                         ; $4110: $04
    inc b                                         ; $4111: $04
    and [hl]                                      ; $4112: $a6
    add h                                         ; $4113: $84
    inc b                                         ; $4114: $04
    inc b                                         ; $4115: $04
    pop de                                        ; $4116: $d1
    pop de                                        ; $4117: $d1
    pop de                                        ; $4118: $d1
    call nc, $d1d1                                ; $4119: $d4 $d1 $d1
    pop de                                        ; $411c: $d1
    push de                                       ; $411d: $d5
    pop de                                        ; $411e: $d1
    pop de                                        ; $411f: $d1
    pop de                                        ; $4120: $d1
    rst $30                                       ; $4121: $f7
    pop de                                        ; $4122: $d1
    pop de                                        ; $4123: $d1
    pop de                                        ; $4124: $d1
    or $04                                        ; $4125: $f6 $04
    inc b                                         ; $4127: $04
    add h                                         ; $4128: $84
    add h                                         ; $4129: $84
    inc b                                         ; $412a: $04
    inc b                                         ; $412b: $04
    add h                                         ; $412c: $84
    add a                                         ; $412d: $87
    inc b                                         ; $412e: $04
    inc b                                         ; $412f: $04
    add h                                         ; $4130: $84
    and a                                         ; $4131: $a7
    inc b                                         ; $4132: $04
    inc b                                         ; $4133: $04
    add h                                         ; $4134: $84
    and h                                         ; $4135: $a4
    inc d                                         ; $4136: $14
    dec d                                         ; $4137: $15
    ld d, $17                                     ; $4138: $16 $17
    jr jr_07a_4155                                ; $413a: $18 $19

    ld a, [de]                                    ; $413c: $1a
    dec de                                        ; $413d: $1b
    inc e                                         ; $413e: $1c
    dec e                                         ; $413f: $1d
    ld a, [$1efb]                                 ; $4140: $fa $fb $1e
    rra                                           ; $4143: $1f

jr_07a_4144:
    jr nz, jr_07a_4144                            ; $4144: $20 $fe

    ld [bc], a                                    ; $4146: $02
    dec b                                         ; $4147: $05
    ld [bc], a                                    ; $4148: $02
    ld [bc], a                                    ; $4149: $02
    dec b                                         ; $414a: $05
    ld [bc], a                                    ; $414b: $02
    dec b                                         ; $414c: $05
    ld [bc], a                                    ; $414d: $02
    dec b                                         ; $414e: $05
    dec b                                         ; $414f: $05
    dec b                                         ; $4150: $05
    dec b                                         ; $4151: $05
    dec b                                         ; $4152: $05
    dec b                                         ; $4153: $05
    dec b                                         ; $4154: $05

jr_07a_4155:
    dec b                                         ; $4155: $05
    ld hl, $2322                                  ; $4156: $21 $22 $23
    ld [hl+], a                                   ; $4159: $22
    rst $30                                       ; $415a: $f7
    pop de                                        ; $415b: $d1
    pop de                                        ; $415c: $d1
    pop de                                        ; $415d: $d1
    inc h                                         ; $415e: $24
    dec h                                         ; $415f: $25
    ld h, $27                                     ; $4160: $26 $27
    rst $10                                       ; $4162: $d7
    sub $28                                       ; $4163: $d6 $28
    add hl, hl                                    ; $4165: $29
    add h                                         ; $4166: $84
    add h                                         ; $4167: $84
    add [hl]                                      ; $4168: $86
    add h                                         ; $4169: $84
    add h                                         ; $416a: $84
    add h                                         ; $416b: $84
    add h                                         ; $416c: $84
    add h                                         ; $416d: $84
    ld h, $26                                     ; $416e: $26 $26
    inc b                                         ; $4170: $04
    inc b                                         ; $4171: $04
    daa                                           ; $4172: $27
    daa                                           ; $4173: $27
    inc b                                         ; $4174: $04
    ld b, $2a                                     ; $4175: $06 $2a
    pop de                                        ; $4177: $d1
    pop de                                        ; $4178: $d1
    pop de                                        ; $4179: $d1
    pop de                                        ; $417a: $d1
    pop de                                        ; $417b: $d1
    pop de                                        ; $417c: $d1
    pop de                                        ; $417d: $d1
    push de                                       ; $417e: $d5
    pop de                                        ; $417f: $d1
    pop de                                        ; $4180: $d1
    pop de                                        ; $4181: $d1
    inc h                                         ; $4182: $24
    dec h                                         ; $4183: $25
    pop de                                        ; $4184: $d1
    pop de                                        ; $4185: $d1
    add h                                         ; $4186: $84
    add h                                         ; $4187: $84
    inc b                                         ; $4188: $04
    inc b                                         ; $4189: $04
    add h                                         ; $418a: $84
    add h                                         ; $418b: $84
    inc b                                         ; $418c: $04
    inc b                                         ; $418d: $04
    inc h                                         ; $418e: $24
    inc b                                         ; $418f: $04
    inc b                                         ; $4190: $04
    inc b                                         ; $4191: $04
    ld h, $24                                     ; $4192: $26 $24
    inc b                                         ; $4194: $04
    inc b                                         ; $4195: $04
    pop de                                        ; $4196: $d1
    pop de                                        ; $4197: $d1
    pop de                                        ; $4198: $d1
    jp nc, $d1d1                                  ; $4199: $d2 $d1 $d1

    pop de                                        ; $419c: $d1
    db $d3                                        ; $419d: $d3
    pop de                                        ; $419e: $d1
    pop de                                        ; $419f: $d1
    pop de                                        ; $41a0: $d1
    call nc, $d1d1                                ; $41a1: $d4 $d1 $d1
    pop de                                        ; $41a4: $d1
    push de                                       ; $41a5: $d5
    inc b                                         ; $41a6: $04
    inc b                                         ; $41a7: $04
    add h                                         ; $41a8: $84
    add [hl]                                      ; $41a9: $86
    inc b                                         ; $41aa: $04
    inc b                                         ; $41ab: $04
    add h                                         ; $41ac: $84
    add a                                         ; $41ad: $87
    inc b                                         ; $41ae: $04
    inc b                                         ; $41af: $04
    add h                                         ; $41b0: $84
    add h                                         ; $41b1: $84
    inc b                                         ; $41b2: $04
    inc b                                         ; $41b3: $04
    add h                                         ; $41b4: $84
    add [hl]                                      ; $41b5: $86
    rst $38                                       ; $41b6: $ff
    nop                                           ; $41b7: $00
    ld bc, $1202                                  ; $41b8: $01 $02 $12
    inc de                                        ; $41bb: $13
    dec hl                                        ; $41bc: $2b
    inc l                                         ; $41bd: $2c
    dec l                                         ; $41be: $2d
    ld l, $2f                                     ; $41bf: $2e $2f
    jr nc, jr_07a_41db                            ; $41c1: $30 $18

    ld sp, $3332                                  ; $41c3: $31 $32 $33
    dec b                                         ; $41c6: $05
    dec b                                         ; $41c7: $05
    dec b                                         ; $41c8: $05
    dec b                                         ; $41c9: $05
    dec b                                         ; $41ca: $05
    dec b                                         ; $41cb: $05
    dec b                                         ; $41cc: $05
    dec b                                         ; $41cd: $05
    dec b                                         ; $41ce: $05
    dec b                                         ; $41cf: $05
    dec b                                         ; $41d0: $05
    dec b                                         ; $41d1: $05
    dec b                                         ; $41d2: $05
    dec b                                         ; $41d3: $05
    dec b                                         ; $41d4: $05
    dec b                                         ; $41d5: $05
    db $db                                        ; $41d6: $db
    jp c, Jump_000_3534                           ; $41d7: $da $34 $35

    rst $18                                       ; $41da: $df

jr_07a_41db:
    sbc $36                                       ; $41db: $de $36
    scf                                           ; $41dd: $37
    db $e3                                        ; $41de: $e3
    ld [c], a                                     ; $41df: $e2
    jr c, jr_07a_421b                             ; $41e0: $38 $39

    ld sp, hl                                     ; $41e2: $f9
    ld hl, sp+$3a                                 ; $41e3: $f8 $3a
    dec sp                                        ; $41e5: $3b
    inc h                                         ; $41e6: $24
    inc h                                         ; $41e7: $24
    ld b, $07                                     ; $41e8: $06 $07
    inc h                                         ; $41ea: $24
    ld h, $07                                     ; $41eb: $26 $07
    inc b                                         ; $41ed: $04
    ld h, $24                                     ; $41ee: $26 $24
    rlca                                          ; $41f0: $07
    ld b, $24                                     ; $41f1: $06 $24
    ld h, $06                                     ; $41f3: $26 $06
    inc b                                         ; $41f5: $04
    rst $10                                       ; $41f6: $d7
    sub $d1                                       ; $41f7: $d6 $d1
    pop de                                        ; $41f9: $d1
    db $db                                        ; $41fa: $db
    jp c, $d1d5                                   ; $41fb: $da $d5 $d1

    rst $18                                       ; $41fe: $df
    sbc $d2                                       ; $41ff: $de $d2
    pop de                                        ; $4201: $d1
    db $e3                                        ; $4202: $e3
    ld [c], a                                     ; $4203: $e2
    db $d3                                        ; $4204: $d3
    pop de                                        ; $4205: $d1
    inc h                                         ; $4206: $24
    ld h, $04                                     ; $4207: $26 $04
    inc b                                         ; $4209: $04
    inc h                                         ; $420a: $24
    inc h                                         ; $420b: $24
    inc h                                         ; $420c: $24
    inc b                                         ; $420d: $04
    ld h, $27                                     ; $420e: $26 $27
    ld h, $04                                     ; $4210: $26 $04
    ld h, $26                                     ; $4212: $26 $26
    daa                                           ; $4214: $27

jr_07a_4215:
    inc b                                         ; $4215: $04
    pop de                                        ; $4216: $d1
    pop de                                        ; $4217: $d1
    pop de                                        ; $4218: $d1
    pop de                                        ; $4219: $d1
    pop de                                        ; $421a: $d1

jr_07a_421b:
    pop de                                        ; $421b: $d1
    pop de                                        ; $421c: $d1
    pop de                                        ; $421d: $d1
    pop de                                        ; $421e: $d1
    pop de                                        ; $421f: $d1
    pop de                                        ; $4220: $d1
    pop de                                        ; $4221: $d1
    pop de                                        ; $4222: $d1
    pop de                                        ; $4223: $d1
    pop de                                        ; $4224: $d1
    pop de                                        ; $4225: $d1
    add h                                         ; $4226: $84
    add h                                         ; $4227: $84
    add h                                         ; $4228: $84
    add h                                         ; $4229: $84
    add h                                         ; $422a: $84
    inc b                                         ; $422b: $04
    inc b                                         ; $422c: $04
    inc b                                         ; $422d: $04
    add h                                         ; $422e: $84
    inc b                                         ; $422f: $04
    inc b                                         ; $4230: $04
    inc b                                         ; $4231: $04
    add h                                         ; $4232: $84
    inc b                                         ; $4233: $04
    inc b                                         ; $4234: $04
    inc b                                         ; $4235: $04
    pop de                                        ; $4236: $d1
    pop de                                        ; $4237: $d1
    pop de                                        ; $4238: $d1
    pop de                                        ; $4239: $d1
    pop de                                        ; $423a: $d1
    pop de                                        ; $423b: $d1
    pop de                                        ; $423c: $d1
    ld h, $d1                                     ; $423d: $26 $d1
    dec h                                         ; $423f: $25
    inc h                                         ; $4240: $24
    jr z, jr_07a_4215                             ; $4241: $28 $d2

    sub $d7                                       ; $4243: $d6 $d7
    inc [hl]                                      ; $4245: $34
    inc b                                         ; $4246: $04
    inc b                                         ; $4247: $04
    inc b                                         ; $4248: $04
    inc b                                         ; $4249: $04
    inc b                                         ; $424a: $04
    inc b                                         ; $424b: $04
    inc b                                         ; $424c: $04
    rlca                                          ; $424d: $07
    inc b                                         ; $424e: $04
    rlca                                          ; $424f: $07
    inc b                                         ; $4250: $04
    rlca                                          ; $4251: $07
    inc b                                         ; $4252: $04
    ld b, $04                                     ; $4253: $06 $04
    rlca                                          ; $4255: $07
    pop de                                        ; $4256: $d1
    pop de                                        ; $4257: $d1
    pop de                                        ; $4258: $d1
    pop de                                        ; $4259: $d1
    daa                                           ; $425a: $27
    inc a                                         ; $425b: $3c
    dec a                                         ; $425c: $3d
    ld a, $29                                     ; $425d: $3e $29
    ccf                                           ; $425f: $3f
    ld b, b                                       ; $4260: $40
    ld b, c                                       ; $4261: $41
    dec [hl]                                      ; $4262: $35
    ret c                                         ; $4263: $d8

    reti                                          ; $4264: $d9


    and $04                                       ; $4265: $e6 $04
    inc b                                         ; $4267: $04
    inc b                                         ; $4268: $04
    inc b                                         ; $4269: $04
    inc b                                         ; $426a: $04
    ld b, $04                                     ; $426b: $06 $04
    ld b, $06                                     ; $426d: $06 $06
    inc b                                         ; $426f: $04
    inc b                                         ; $4270: $04
    inc b                                         ; $4271: $04
    inc b                                         ; $4272: $04
    inc b                                         ; $4273: $04
    ld b, $06                                     ; $4274: $06 $06
    db $d3                                        ; $4276: $d3
    jp c, Jump_000_36db                           ; $4277: $da $db $36

    call nc, $dfde                                ; $427a: $d4 $de $df
    jr c, @-$29                                   ; $427d: $38 $d5

    ld [c], a                                     ; $427f: $e2
    db $e3                                        ; $4280: $e3
    ld a, [hl-]                                   ; $4281: $3a
    rst $30                                       ; $4282: $f7
    ld hl, sp-$07                                 ; $4283: $f8 $f9
    ld b, d                                       ; $4285: $42
    rlca                                          ; $4286: $07
    inc b                                         ; $4287: $04
    ld b, $06                                     ; $4288: $06 $06
    ld b, $06                                     ; $428a: $06 $06
    inc b                                         ; $428c: $04
    ld b, $04                                     ; $428d: $06 $04
    inc b                                         ; $428f: $04
    ld b, $04                                     ; $4290: $06 $04
    ld h, $04                                     ; $4292: $26 $04
    inc b                                         ; $4294: $04
    dec b                                         ; $4295: $05
    scf                                           ; $4296: $37
    call c, $eadd                                 ; $4297: $dc $dd $ea
    add hl, sp                                    ; $429a: $39
    ldh [$e1], a                                  ; $429b: $e0 $e1
    xor $3b                                       ; $429d: $ee $3b
    db $e4                                        ; $429f: $e4
    push hl                                       ; $42a0: $e5
    ld a, [c]                                     ; $42a1: $f2
    ld b, e                                       ; $42a2: $43
    inc b                                         ; $42a3: $04
    dec b                                         ; $42a4: $05
    ld b, $06                                     ; $42a5: $06 $06
    rlca                                          ; $42a7: $07
    inc b                                         ; $42a8: $04
    ld b, $04                                     ; $42a9: $06 $04
    ld b, $07                                     ; $42ab: $06 $07
    inc b                                         ; $42ad: $04
    ld b, $04                                     ; $42ae: $06 $04
    ld b, $07                                     ; $42b0: $06 $07
    dec b                                         ; $42b2: $05
    dec b                                         ; $42b3: $05
    dec b                                         ; $42b4: $05
    dec b                                         ; $42b5: $05
    or $44                                        ; $42b6: $f6 $44
    ld b, l                                       ; $42b8: $45
    ld b, [hl]                                    ; $42b9: $46
    jp nc, $4447                                  ; $42ba: $d2 $47 $44

    ld c, b                                       ; $42bd: $48
    db $d3                                        ; $42be: $d3
    ei                                            ; $42bf: $fb
    ld c, c                                       ; $42c0: $49
    ld c, d                                       ; $42c1: $4a
    call nc, Call_07a_4c4b                        ; $42c2: $d4 $4b $4c
    ld c, l                                       ; $42c5: $4d
    ld h, $05                                     ; $42c6: $26 $05
    ld [bc], a                                    ; $42c8: $02
    ld [bc], a                                    ; $42c9: $02
    rlca                                          ; $42ca: $07
    ld [bc], a                                    ; $42cb: $02
    inc bc                                        ; $42cc: $03
    ld bc, $0204                                  ; $42cd: $01 $04 $02
    ld bc, $0701                                  ; $42d0: $01 $01 $07
    ld [bc], a                                    ; $42d3: $02
    ld bc, $1403                                  ; $42d4: $01 $03 $14
    dec d                                         ; $42d7: $15
    ld d, $17                                     ; $42d8: $16 $17
    ld c, [hl]                                    ; $42da: $4e
    ld c, a                                       ; $42db: $4f
    ld a, [de]                                    ; $42dc: $1a
    ld d, b                                       ; $42dd: $50
    ld d, c                                       ; $42de: $51
    ld d, d                                       ; $42df: $52
    ld d, e                                       ; $42e0: $53
    ld d, h                                       ; $42e1: $54
    ld d, l                                       ; $42e2: $55
    ld d, [hl]                                    ; $42e3: $56
    ld d, a                                       ; $42e4: $57
    ld c, e                                       ; $42e5: $4b
    ld bc, $0103                                  ; $42e6: $01 $03 $01
    ld bc, $0103                                  ; $42e9: $01 $03 $01
    inc bc                                        ; $42ec: $03
    ld bc, $0102                                  ; $42ed: $01 $02 $01
    ld [bc], a                                    ; $42f0: $02
    ld bc, $0101                                  ; $42f1: $01 $01 $01
    ld bc, $d501                                  ; $42f4: $01 $01 $d5
    ld e, b                                       ; $42f7: $58
    ld c, $59                                     ; $42f8: $0e $59
    rst $30                                       ; $42fa: $f7
    ld e, d                                       ; $42fb: $5a
    ld e, e                                       ; $42fc: $5b
    ld b, d                                       ; $42fd: $42
    or $30                                        ; $42fe: $f6 $30
    ld b, l                                       ; $4300: $45
    ld b, [hl]                                    ; $4301: $46
    jp nc, $4447                                  ; $4302: $d2 $47 $44

    ld c, b                                       ; $4305: $48
    rlca                                          ; $4306: $07
    ld [bc], a                                    ; $4307: $02
    inc bc                                        ; $4308: $03
    ld bc, $0224                                  ; $4309: $01 $24 $02
    ld bc, $2603                                  ; $430c: $01 $03 $26
    ld [bc], a                                    ; $430f: $02
    ld [bc], a                                    ; $4310: $02
    ld bc, $0204                                  ; $4311: $01 $04 $02
    ld bc, $ff02                                  ; $4314: $01 $02 $ff
    ld e, h                                       ; $4317: $5c
    ld hl, $5d22                                  ; $4318: $21 $22 $5d
    ld e, [hl]                                    ; $431b: $5e
    rst $30                                       ; $431c: $f7
    pop de                                        ; $431d: $d1
    ld e, a                                       ; $431e: $5f
    ld h, b                                       ; $431f: $60
    or $d1                                        ; $4320: $f6 $d1
    ld c, [hl]                                    ; $4322: $4e
    ld h, c                                       ; $4323: $61
    rst $30                                       ; $4324: $f7
    pop de                                        ; $4325: $d1
    ld bc, $8402                                  ; $4326: $01 $02 $84
    add a                                         ; $4329: $87
    inc bc                                        ; $432a: $03
    ld [bc], a                                    ; $432b: $02
    add a                                         ; $432c: $87
    add h                                         ; $432d: $84
    inc bc                                        ; $432e: $03
    ld [bc], a                                    ; $432f: $02
    rlca                                          ; $4330: $07
    inc b                                         ; $4331: $04
    ld bc, $0602                                  ; $4332: $01 $02 $06
    inc b                                         ; $4335: $04
    pop de                                        ; $4336: $d1
    pop de                                        ; $4337: $d1
    pop de                                        ; $4338: $d1
    pop de                                        ; $4339: $d1
    ld h, d                                       ; $433a: $62
    ld h, e                                       ; $433b: $63
    ld h, h                                       ; $433c: $64
    ld h, $65                                     ; $433d: $26 $65
    ld h, [hl]                                    ; $433f: $66
    ld h, a                                       ; $4340: $67
    ld l, b                                       ; $4341: $68
    ld l, c                                       ; $4342: $69
    ld l, d                                       ; $4343: $6a
    ld l, e                                       ; $4344: $6b
    ld l, h                                       ; $4345: $6c
    inc b                                         ; $4346: $04
    inc b                                         ; $4347: $04
    inc b                                         ; $4348: $04
    inc b                                         ; $4349: $04
    inc b                                         ; $434a: $04
    inc b                                         ; $434b: $04
    inc b                                         ; $434c: $04
    ld b, $06                                     ; $434d: $06 $06
    inc b                                         ; $434f: $04
    inc b                                         ; $4350: $04
    inc b                                         ; $4351: $04
    inc b                                         ; $4352: $04
    rlca                                          ; $4353: $07
    inc b                                         ; $4354: $04
    inc b                                         ; $4355: $04
    pop de                                        ; $4356: $d1
    pop de                                        ; $4357: $d1
    pop de                                        ; $4358: $d1
    pop de                                        ; $4359: $d1
    daa                                           ; $435a: $27
    inc a                                         ; $435b: $3c
    dec a                                         ; $435c: $3d
    ld a, $29                                     ; $435d: $3e $29
    ccf                                           ; $435f: $3f
    ld b, b                                       ; $4360: $40
    ld b, c                                       ; $4361: $41
    dec [hl]                                      ; $4362: $35
    ret c                                         ; $4363: $d8

    reti                                          ; $4364: $d9


    and $04                                       ; $4365: $e6 $04
    inc b                                         ; $4367: $04
    inc b                                         ; $4368: $04
    inc b                                         ; $4369: $04
    inc b                                         ; $436a: $04
    inc b                                         ; $436b: $04
    inc b                                         ; $436c: $04
    inc b                                         ; $436d: $04
    inc b                                         ; $436e: $04
    inc b                                         ; $436f: $04
    ld b, $07                                     ; $4370: $06 $07
    inc b                                         ; $4372: $04
    ld b, $07                                     ; $4373: $06 $07
    rlca                                          ; $4375: $07
    pop de                                        ; $4376: $d1
    pop de                                        ; $4377: $d1
    pop de                                        ; $4378: $d1
    pop de                                        ; $4379: $d1
    ld h, d                                       ; $437a: $62
    ld h, e                                       ; $437b: $63
    ld h, h                                       ; $437c: $64
    ld a, $65                                     ; $437d: $3e $65
    ld h, [hl]                                    ; $437f: $66
    ld l, l                                       ; $4380: $6d
    inc h                                         ; $4381: $24
    ld l, c                                       ; $4382: $69
    ld l, d                                       ; $4383: $6a
    jp hl                                         ; $4384: $e9


    rst $10                                       ; $4385: $d7
    inc b                                         ; $4386: $04
    inc b                                         ; $4387: $04
    inc b                                         ; $4388: $04
    inc b                                         ; $4389: $04
    inc b                                         ; $438a: $04
    ld b, $04                                     ; $438b: $06 $04
    inc b                                         ; $438d: $04
    inc b                                         ; $438e: $04
    inc b                                         ; $438f: $04
    rlca                                          ; $4390: $07
    inc h                                         ; $4391: $24
    ld b, $07                                     ; $4392: $06 $07
    rlca                                          ; $4394: $07
    ld h, $d1                                     ; $4395: $26 $d1
    pop de                                        ; $4397: $d1
    pop de                                        ; $4398: $d1
    pop de                                        ; $4399: $d1
    pop de                                        ; $439a: $d1
    pop de                                        ; $439b: $d1
    pop de                                        ; $439c: $d1
    pop de                                        ; $439d: $d1
    dec h                                         ; $439e: $25
    pop de                                        ; $439f: $d1
    pop de                                        ; $43a0: $d1
    pop de                                        ; $43a1: $d1
    sub $f6                                       ; $43a2: $d6 $f6
    pop de                                        ; $43a4: $d1
    pop de                                        ; $43a5: $d1
    inc b                                         ; $43a6: $04
    inc b                                         ; $43a7: $04
    inc b                                         ; $43a8: $04
    inc b                                         ; $43a9: $04
    inc b                                         ; $43aa: $04
    inc b                                         ; $43ab: $04
    inc b                                         ; $43ac: $04
    inc b                                         ; $43ad: $04
    inc h                                         ; $43ae: $24
    inc b                                         ; $43af: $04
    inc b                                         ; $43b0: $04
    inc b                                         ; $43b1: $04

jr_07a_43b2:
    inc h                                         ; $43b2: $24
    inc b                                         ; $43b3: $04
    inc b                                         ; $43b4: $04
    inc b                                         ; $43b5: $04
    ld l, [hl]                                    ; $43b6: $6e
    ld l, a                                       ; $43b7: $6f
    ld [hl], b                                    ; $43b8: $70
    ld [hl], c                                    ; $43b9: $71
    ld [hl], d                                    ; $43ba: $72
    ld [hl], e                                    ; $43bb: $73
    pop af                                        ; $43bc: $f1
    jr c, jr_07a_43b2                             ; $43bd: $38 $f3

    db $f4                                        ; $43bf: $f4
    push af                                       ; $43c0: $f5
    ld a, [hl-]                                   ; $43c1: $3a
    ld [hl], h                                    ; $43c2: $74
    ld b, d                                       ; $43c3: $42
    ld e, l                                       ; $43c4: $5d
    ld e, [hl]                                    ; $43c5: $5e
    rlca                                          ; $43c6: $07
    inc b                                         ; $43c7: $04
    inc b                                         ; $43c8: $04
    inc b                                         ; $43c9: $04
    ld b, $06                                     ; $43ca: $06 $06
    inc b                                         ; $43cc: $04
    inc b                                         ; $43cd: $04
    inc b                                         ; $43ce: $04
    inc b                                         ; $43cf: $04
    ld b, $07                                     ; $43d0: $06 $07
    dec b                                         ; $43d2: $05
    dec b                                         ; $43d3: $05
    dec b                                         ; $43d4: $05
    dec b                                         ; $43d5: $05
    scf                                           ; $43d6: $37
    call c, $eadd                                 ; $43d7: $dc $dd $ea
    add hl, sp                                    ; $43da: $39
    ldh [$e1], a                                  ; $43db: $e0 $e1
    xor $3b                                       ; $43dd: $ee $3b
    db $e4                                        ; $43df: $e4
    push hl                                       ; $43e0: $e5
    ld a, [c]                                     ; $43e1: $f2
    ld [hl], l                                    ; $43e2: $75
    ld e, d                                       ; $43e3: $5a
    halt                                          ; $43e4: $76
    ld [hl], a                                    ; $43e5: $77
    ld b, $04                                     ; $43e6: $06 $04
    ld b, $06                                     ; $43e8: $06 $06
    rlca                                          ; $43ea: $07
    ld b, $04                                     ; $43eb: $06 $04
    inc b                                         ; $43ed: $04
    inc b                                         ; $43ee: $04
    inc b                                         ; $43ef: $04
    ld b, $04                                     ; $43f0: $06 $04
    dec b                                         ; $43f2: $05
    dec b                                         ; $43f3: $05
    dec b                                         ; $43f4: $05
    dec b                                         ; $43f5: $05
    ld l, [hl]                                    ; $43f6: $6e
    ld l, a                                       ; $43f7: $6f
    db $ed                                        ; $43f8: $ed
    db $db                                        ; $43f9: $db
    ld [hl], d                                    ; $43fa: $72
    ld [hl], e                                    ; $43fb: $73
    pop af                                        ; $43fc: $f1
    rst $18                                       ; $43fd: $df
    di                                            ; $43fe: $f3
    db $f4                                        ; $43ff: $f4
    push af                                       ; $4400: $f5
    db $e3                                        ; $4401: $e3
    ld a, b                                       ; $4402: $78
    ld e, [hl]                                    ; $4403: $5e
    ld [hl], l                                    ; $4404: $75
    ld sp, hl                                     ; $4405: $f9
    inc b                                         ; $4406: $04
    rlca                                          ; $4407: $07
    ld b, $26                                     ; $4408: $06 $26
    ld b, $06                                     ; $440a: $06 $06
    ld b, $27                                     ; $440c: $06 $27
    inc b                                         ; $440e: $04
    inc b                                         ; $440f: $04
    inc b                                         ; $4410: $04
    daa                                           ; $4411: $27
    dec b                                         ; $4412: $05
    dec b                                         ; $4413: $05
    dec b                                         ; $4414: $05
    daa                                           ; $4415: $27
    jp c, $d1d2                                   ; $4416: $da $d2 $d1

    pop de                                        ; $4419: $d1
    sbc $d3                                       ; $441a: $de $d3
    pop de                                        ; $441c: $d1
    pop de                                        ; $441d: $d1
    ld [c], a                                     ; $441e: $e2
    call nc, $d1d1                                ; $441f: $d4 $d1 $d1
    ld hl, sp-$2b                                 ; $4422: $f8 $d5
    pop de                                        ; $4424: $d1
    pop de                                        ; $4425: $d1
    ld h, $27                                     ; $4426: $26 $27
    inc b                                         ; $4428: $04
    inc b                                         ; $4429: $04
    inc h                                         ; $442a: $24
    ld h, $04                                     ; $442b: $26 $04
    inc b                                         ; $442d: $04
    inc h                                         ; $442e: $24
    ld h, $04                                     ; $442f: $26 $04
    inc b                                         ; $4431: $04
    inc h                                         ; $4432: $24
    inc h                                         ; $4433: $24
    inc b                                         ; $4434: $04
    inc b                                         ; $4435: $04
    ld b, l                                       ; $4436: $45
    ld b, [hl]                                    ; $4437: $46
    ld e, a                                       ; $4438: $5f
    ld h, b                                       ; $4439: $60
    ld a, c                                       ; $443a: $79
    ld a, d                                       ; $443b: $7a
    ld c, [hl]                                    ; $443c: $4e
    ld h, c                                       ; $443d: $61
    ld a, e                                       ; $443e: $7b
    ld a, h                                       ; $443f: $7c
    ld d, c                                       ; $4440: $51
    ld d, d                                       ; $4441: $52
    ld c, h                                       ; $4442: $4c
    ld c, l                                       ; $4443: $4d
    ld d, l                                       ; $4444: $55
    ld d, [hl]                                    ; $4445: $56
    ld bc, $0101                                  ; $4446: $01 $01 $01
    inc bc                                        ; $4449: $03
    ld [bc], a                                    ; $444a: $02
    ld bc, $0302                                  ; $444b: $01 $02 $03
    ld bc, $0103                                  ; $444e: $01 $03 $01
    ld [bc], a                                    ; $4451: $02
    inc bc                                        ; $4452: $03
    ld bc, $0303                                  ; $4453: $01 $03 $03
    ld a, l                                       ; $4456: $7d
    ld a, [hl]                                    ; $4457: $7e
    ld a, a                                       ; $4458: $7f
    add b                                         ; $4459: $80
    add c                                         ; $445a: $81
    ld b, a                                       ; $445b: $47
    ld b, h                                       ; $445c: $44
    ld c, b                                       ; $445d: $48
    ld d, e                                       ; $445e: $53
    ei                                            ; $445f: $fb
    ld c, c                                       ; $4460: $49
    ld c, d                                       ; $4461: $4a
    ld d, a                                       ; $4462: $57
    ld c, e                                       ; $4463: $4b
    ld c, h                                       ; $4464: $4c
    ld c, l                                       ; $4465: $4d
    ld bc, $0101                                  ; $4466: $01 $01 $01
    dec bc                                        ; $4469: $0b
    add hl, bc                                    ; $446a: $09
    ld bc, $0203                                  ; $446b: $01 $03 $02
    ld bc, $0101                                  ; $446e: $01 $01 $01
    inc bc                                        ; $4471: $03
    ld bc, $0103                                  ; $4472: $01 $03 $01
    ld bc, $6082                                  ; $4475: $01 $82 $60
    ld a, l                                       ; $4478: $7d
    jr nc, jr_07a_44c9                            ; $4479: $30 $4e

    ld h, c                                       ; $447b: $61
    add c                                         ; $447c: $81
    ld b, a                                       ; $447d: $47
    ld d, c                                       ; $447e: $51
    ld d, d                                       ; $447f: $52
    ld d, e                                       ; $4480: $53
    ei                                            ; $4481: $fb
    ld d, l                                       ; $4482: $55
    ld d, [hl]                                    ; $4483: $56
    ld d, a                                       ; $4484: $57
    ld c, e                                       ; $4485: $4b
    add hl, bc                                    ; $4486: $09
    ld bc, $0201                                  ; $4487: $01 $01 $02
    ld bc, $0903                                  ; $448a: $01 $03 $09
    ld bc, $0101                                  ; $448d: $01 $01 $01
    inc bc                                        ; $4490: $03
    ld bc, $0203                                  ; $4491: $01 $03 $02
    ld bc, $4701                                  ; $4494: $01 $01 $47
    rst $30                                       ; $4497: $f7
    pop de                                        ; $4498: $d1
    pop de                                        ; $4499: $d1
    ld b, h                                       ; $449a: $44
    or $d1                                        ; $449b: $f6 $d1
    pop de                                        ; $449d: $d1
    ld c, c                                       ; $449e: $49
    jp nc, $d1d1                                  ; $449f: $d2 $d1 $d1

    ld c, h                                       ; $44a2: $4c
    db $d3                                        ; $44a3: $d3
    pop de                                        ; $44a4: $d1
    pop de                                        ; $44a5: $d1
    dec b                                         ; $44a6: $05
    rlca                                          ; $44a7: $07
    inc b                                         ; $44a8: $04
    inc b                                         ; $44a9: $04
    ld [bc], a                                    ; $44aa: $02
    inc b                                         ; $44ab: $04
    inc b                                         ; $44ac: $04
    inc b                                         ; $44ad: $04
    ld [bc], a                                    ; $44ae: $02
    ld h, $04                                     ; $44af: $26 $04
    inc b                                         ; $44b1: $04
    ld [bc], a                                    ; $44b2: $02
    daa                                           ; $44b3: $27
    inc b                                         ; $44b4: $04
    inc b                                         ; $44b5: $04
    add e                                         ; $44b6: $83
    add h                                         ; $44b7: $84
    add l                                         ; $44b8: $85
    add [hl]                                      ; $44b9: $86
    pop de                                        ; $44ba: $d1
    pop de                                        ; $44bb: $d1
    pop de                                        ; $44bc: $d1
    pop de                                        ; $44bd: $d1
    pop de                                        ; $44be: $d1
    pop de                                        ; $44bf: $d1
    pop de                                        ; $44c0: $d1
    pop de                                        ; $44c1: $d1
    pop de                                        ; $44c2: $d1
    pop de                                        ; $44c3: $d1
    pop de                                        ; $44c4: $d1
    pop de                                        ; $44c5: $d1
    adc h                                         ; $44c6: $8c
    adc [hl]                                      ; $44c7: $8e
    adc a                                         ; $44c8: $8f

jr_07a_44c9:
    adc h                                         ; $44c9: $8c
    add h                                         ; $44ca: $84
    add h                                         ; $44cb: $84
    add h                                         ; $44cc: $84
    add h                                         ; $44cd: $84
    inc b                                         ; $44ce: $04
    inc b                                         ; $44cf: $04
    inc b                                         ; $44d0: $04

Call_07a_44d1:
    inc b                                         ; $44d1: $04
    inc b                                         ; $44d2: $04
    inc b                                         ; $44d3: $04
    inc b                                         ; $44d4: $04
    inc b                                         ; $44d5: $04
    add a                                         ; $44d6: $87
    adc b                                         ; $44d7: $88
    ld [hl+], a                                   ; $44d8: $22
    ld hl, $d1d1                                  ; $44d9: $21 $d1 $d1
    pop de                                        ; $44dc: $d1
    rst $30                                       ; $44dd: $f7
    pop de                                        ; $44de: $d1
    pop de                                        ; $44df: $d1
    pop de                                        ; $44e0: $d1
    or $d1                                        ; $44e1: $f6 $d1
    pop de                                        ; $44e3: $d1
    pop de                                        ; $44e4: $d1
    rst $30                                       ; $44e5: $f7
    adc a                                         ; $44e6: $8f
    adc a                                         ; $44e7: $8f
    and h                                         ; $44e8: $a4
    and [hl]                                      ; $44e9: $a6
    add h                                         ; $44ea: $84
    add h                                         ; $44eb: $84
    add h                                         ; $44ec: $84
    and h                                         ; $44ed: $a4
    inc b                                         ; $44ee: $04
    inc b                                         ; $44ef: $04
    add h                                         ; $44f0: $84
    and a                                         ; $44f1: $a7
    inc b                                         ; $44f2: $04
    inc b                                         ; $44f3: $04
    add h                                         ; $44f4: $84
    and h                                         ; $44f5: $a4
    rst $38                                       ; $44f6: $ff
    ld e, h                                       ; $44f7: $5c
    adc c                                         ; $44f8: $89
    ld e, b                                       ; $44f9: $58
    ld e, l                                       ; $44fa: $5d
    adc d                                         ; $44fb: $8a
    adc e                                         ; $44fc: $8b
    adc h                                         ; $44fd: $8c
    ld e, a                                       ; $44fe: $5f
    adc l                                         ; $44ff: $8d
    adc [hl]                                      ; $4500: $8e
    adc a                                         ; $4501: $8f
    ld c, [hl]                                    ; $4502: $4e
    ld h, c                                       ; $4503: $61
    add c                                         ; $4504: $81
    ld b, a                                       ; $4505: $47
    ld bc, $0901                                  ; $4506: $01 $01 $09
    inc bc                                        ; $4509: $03
    ld [bc], a                                    ; $450a: $02
    dec bc                                        ; $450b: $0b
    add hl, bc                                    ; $450c: $09
    add hl, bc                                    ; $450d: $09
    ld [bc], a                                    ; $450e: $02
    add hl, bc                                    ; $450f: $09
    dec bc                                        ; $4510: $0b
    add hl, bc                                    ; $4511: $09
    ld [bc], a                                    ; $4512: $02
    ld [bc], a                                    ; $4513: $02
    add hl, bc                                    ; $4514: $09
    inc bc                                        ; $4515: $03
    ld c, $d4                                     ; $4516: $0e $d4
    pop de                                        ; $4518: $d1
    pop de                                        ; $4519: $d1
    sub b                                         ; $451a: $90
    push de                                       ; $451b: $d5
    pop de                                        ; $451c: $d1
    pop de                                        ; $451d: $d1
    sub c                                         ; $451e: $91
    inc h                                         ; $451f: $24
    dec h                                         ; $4520: $25
    ld h, $44                                     ; $4521: $26 $44
    rst $10                                       ; $4523: $d7
    sub $28                                       ; $4524: $d6 $28
    ld [bc], a                                    ; $4526: $02
    inc h                                         ; $4527: $24
    inc b                                         ; $4528: $04
    inc b                                         ; $4529: $04
    ld a, [bc]                                    ; $452a: $0a
    ld h, $04                                     ; $452b: $26 $04
    inc b                                         ; $452d: $04
    ld a, [bc]                                    ; $452e: $0a
    inc h                                         ; $452f: $24
    daa                                           ; $4530: $27
    inc b                                         ; $4531: $04
    ld [bc], a                                    ; $4532: $02
    ld h, $24                                     ; $4533: $26 $24
    ld b, $d1                                     ; $4535: $06 $d1
    pop de                                        ; $4537: $d1
    pop de                                        ; $4538: $d1
    push de                                       ; $4539: $d5
    pop de                                        ; $453a: $d1
    pop de                                        ; $453b: $d1
    pop de                                        ; $453c: $d1
    rst $30                                       ; $453d: $f7
    pop de                                        ; $453e: $d1
    pop de                                        ; $453f: $d1
    pop de                                        ; $4540: $d1
    or $d1                                        ; $4541: $f6 $d1
    pop de                                        ; $4543: $d1
    pop de                                        ; $4544: $d1
    jp nc, Jump_000_0404                          ; $4545: $d2 $04 $04

    inc b                                         ; $4548: $04
    inc b                                         ; $4549: $04
    inc b                                         ; $454a: $04
    inc b                                         ; $454b: $04
    inc b                                         ; $454c: $04
    daa                                           ; $454d: $27
    inc b                                         ; $454e: $04
    inc b                                         ; $454f: $04
    inc b                                         ; $4550: $04
    inc h                                         ; $4551: $24
    inc b                                         ; $4552: $04
    inc b                                         ; $4553: $04
    inc b                                         ; $4554: $04
    inc b                                         ; $4555: $04
    jr z, jr_07a_4581                             ; $4556: $28 $29

    ccf                                           ; $4558: $3f
    ld b, b                                       ; $4559: $40
    inc [hl]                                      ; $455a: $34
    dec [hl]                                      ; $455b: $35
    ret c                                         ; $455c: $d8

    reti                                          ; $455d: $d9


    ld [hl], $37                                  ; $455e: $36 $37
    call c, Call_000_38dd                         ; $4560: $dc $dd $38
    add hl, sp                                    ; $4563: $39
    ldh [$e1], a                                  ; $4564: $e0 $e1
    inc b                                         ; $4566: $04
    ld b, $04                                     ; $4567: $06 $04
    rlca                                          ; $4569: $07
    inc b                                         ; $456a: $04
    inc b                                         ; $456b: $04
    inc b                                         ; $456c: $04
    rlca                                          ; $456d: $07
    rlca                                          ; $456e: $07
    rlca                                          ; $456f: $07
    inc b                                         ; $4570: $04
    ld b, $06                                     ; $4571: $06 $06
    rlca                                          ; $4573: $07
    ld b, $04                                     ; $4574: $06 $04
    ld b, c                                       ; $4576: $41
    ld h, l                                       ; $4577: $65
    sub d                                         ; $4578: $92
    dec [hl]                                      ; $4579: $35
    and $69                                       ; $457a: $e6 $69
    sub e                                         ; $457c: $93
    scf                                           ; $457d: $37
    ld [$946e], a                                 ; $457e: $ea $6e $94

jr_07a_4581:
    sub l                                         ; $4581: $95
    xor $72                                       ; $4582: $ee $72
    sub [hl]                                      ; $4584: $96
    sub a                                         ; $4585: $97
    inc b                                         ; $4586: $04
    ld b, $0c                                     ; $4587: $06 $0c
    ld b, $06                                     ; $4589: $06 $06
    inc b                                         ; $458b: $04
    ld c, $04                                     ; $458c: $0e $04
    inc b                                         ; $458e: $04
    inc b                                         ; $458f: $04
    ld c, $0f                                     ; $4590: $0e $0f
    inc b                                         ; $4592: $04
    ld b, $0c                                     ; $4593: $06 $0c
    ld c, $d8                                     ; $4595: $0e $d8
    rst $20                                       ; $4597: $e7
    add sp, $69                                   ; $4598: $e8 $69
    call c, $eceb                                 ; $459a: $dc $eb $ec
    ld l, [hl]                                    ; $459d: $6e
    ldh [$ef], a                                  ; $459e: $e0 $ef
    ldh a, [$72]                                  ; $45a0: $f0 $72
    db $e4                                        ; $45a2: $e4
    push hl                                       ; $45a3: $e5
    ld a, [c]                                     ; $45a4: $f2
    di                                            ; $45a5: $f3
    ld b, $04                                     ; $45a6: $06 $04
    inc b                                         ; $45a8: $04
    rlca                                          ; $45a9: $07
    ld b, $04                                     ; $45aa: $06 $04
    inc b                                         ; $45ac: $04
    ld b, $04                                     ; $45ad: $06 $04
    inc b                                         ; $45af: $04
    inc b                                         ; $45b0: $04
    rlca                                          ; $45b1: $07
    inc b                                         ; $45b2: $04
    inc b                                         ; $45b3: $04
    ld b, $07                                     ; $45b4: $06 $07
    pop de                                        ; $45b6: $d1
    pop de                                        ; $45b7: $d1
    pop de                                        ; $45b8: $d1
    db $d3                                        ; $45b9: $d3
    pop de                                        ; $45ba: $d1
    pop de                                        ; $45bb: $d1
    pop de                                        ; $45bc: $d1
    call nc, $d1d1                                ; $45bd: $d4 $d1 $d1
    pop de                                        ; $45c0: $d1
    push de                                       ; $45c1: $d5
    pop de                                        ; $45c2: $d1
    pop de                                        ; $45c3: $d1
    pop de                                        ; $45c4: $d1
    rst $30                                       ; $45c5: $f7
    inc b                                         ; $45c6: $04
    inc b                                         ; $45c7: $04
    inc b                                         ; $45c8: $04
    rlca                                          ; $45c9: $07
    inc b                                         ; $45ca: $04
    inc b                                         ; $45cb: $04
    inc b                                         ; $45cc: $04
    ld b, $04                                     ; $45cd: $06 $04
    inc b                                         ; $45cf: $04
    inc b                                         ; $45d0: $04
    inc b                                         ; $45d1: $04
    inc b                                         ; $45d2: $04
    inc b                                         ; $45d3: $04
    inc b                                         ; $45d4: $04
    daa                                           ; $45d5: $27
    ld a, [hl-]                                   ; $45d6: $3a
    dec sp                                        ; $45d7: $3b
    db $e4                                        ; $45d8: $e4
    push hl                                       ; $45d9: $e5
    jr nc, jr_07a_4608                            ; $45da: $30 $2c

    sbc b                                         ; $45dc: $98
    ld de, $302f                                  ; $45dd: $11 $2f $30
    sbc c                                         ; $45e0: $99
    sbc d                                         ; $45e1: $9a
    ld [hl-], a                                   ; $45e2: $32
    inc sp                                        ; $45e3: $33
    sbc e                                         ; $45e4: $9b
    sbc h                                         ; $45e5: $9c
    ld b, $04                                     ; $45e6: $06 $04
    inc b                                         ; $45e8: $04
    inc b                                         ; $45e9: $04
    dec b                                         ; $45ea: $05
    dec b                                         ; $45eb: $05
    dec c                                         ; $45ec: $0d
    dec b                                         ; $45ed: $05
    dec b                                         ; $45ee: $05
    dec b                                         ; $45ef: $05
    dec c                                         ; $45f0: $0d
    dec c                                         ; $45f1: $0d
    dec b                                         ; $45f2: $05
    dec b                                         ; $45f3: $05
    dec c                                         ; $45f4: $0d
    dec c                                         ; $45f5: $0d
    ld a, [c]                                     ; $45f6: $f2
    di                                            ; $45f7: $f3
    db $f4                                        ; $45f8: $f4
    ld [bc], a                                    ; $45f9: $02
    ld [de], a                                    ; $45fa: $12
    inc de                                        ; $45fb: $13
    dec hl                                        ; $45fc: $2b
    inc l                                         ; $45fd: $2c
    dec l                                         ; $45fe: $2d
    sbc l                                         ; $45ff: $9d
    sbc [hl]                                      ; $4600: $9e
    sbc a                                         ; $4601: $9f
    and b                                         ; $4602: $a0
    and c                                         ; $4603: $a1
    and d                                         ; $4604: $a2
    and e                                         ; $4605: $a3
    ld b, $04                                     ; $4606: $06 $04

jr_07a_4608:
    inc b                                         ; $4608: $04
    ld [bc], a                                    ; $4609: $02
    dec b                                         ; $460a: $05
    dec b                                         ; $460b: $05
    dec b                                         ; $460c: $05
    dec b                                         ; $460d: $05
    dec b                                         ; $460e: $05
    dec c                                         ; $460f: $0d
    dec c                                         ; $4610: $0d
    dec c                                         ; $4611: $0d
    dec c                                         ; $4612: $0d
    dec c                                         ; $4613: $0d
    dec c                                         ; $4614: $0d
    dec c                                         ; $4615: $0d
    ld c, $0f                                     ; $4616: $0e $0f
    rst $38                                       ; $4618: $ff
    nop                                           ; $4619: $00
    sbc b                                         ; $461a: $98
    ld de, $1312                                  ; $461b: $11 $12 $13
    and h                                         ; $461e: $a4
    and l                                         ; $461f: $a5
    dec l                                         ; $4620: $2d
    ld l, $a6                                     ; $4621: $2e $a6
    and a                                         ; $4623: $a7
    jr @+$33                                      ; $4624: $18 $31

    ld [bc], a                                    ; $4626: $02
    ld [bc], a                                    ; $4627: $02
    ld [bc], a                                    ; $4628: $02
    ld [bc], a                                    ; $4629: $02
    ld a, [bc]                                    ; $462a: $0a
    dec b                                         ; $462b: $05
    ld [bc], a                                    ; $462c: $02
    ld [bc], a                                    ; $462d: $02
    dec c                                         ; $462e: $0d
    ld a, [bc]                                    ; $462f: $0a
    dec b                                         ; $4630: $05
    ld [bc], a                                    ; $4631: $02
    dec c                                         ; $4632: $0d
    ld a, [bc]                                    ; $4633: $0a
    ld [bc], a                                    ; $4634: $02
    ld [bc], a                                    ; $4635: $02
    pop de                                        ; $4636: $d1
    pop de                                        ; $4637: $d1
    pop de                                        ; $4638: $d1
    or $d1                                        ; $4639: $f6 $d1
    pop de                                        ; $463b: $d1
    pop de                                        ; $463c: $d1
    jp nc, $d1d1                                  ; $463d: $d2 $d1 $d1

    pop de                                        ; $4640: $d1
    db $d3                                        ; $4641: $d3
    pop de                                        ; $4642: $d1
    pop de                                        ; $4643: $d1
    pop de                                        ; $4644: $d1
    call nc, Call_000_0404                        ; $4645: $d4 $04 $04
    inc b                                         ; $4648: $04
    ld h, $04                                     ; $4649: $26 $04
    inc b                                         ; $464b: $04
    inc b                                         ; $464c: $04
    ld b, $04                                     ; $464d: $06 $04
    inc b                                         ; $464f: $04
    inc b                                         ; $4650: $04
    inc b                                         ; $4651: $04
    inc b                                         ; $4652: $04
    inc b                                         ; $4653: $04
    inc b                                         ; $4654: $04
    rlca                                          ; $4655: $07
    ld a, [$a9a8]                                 ; $4656: $fa $a8 $a9
    xor d                                         ; $4659: $aa
    db $fc                                        ; $465a: $fc
    xor e                                         ; $465b: $ab
    xor h                                         ; $465c: $ac
    xor l                                         ; $465d: $ad
    ld bc, $0e02                                  ; $465e: $01 $02 $0e
    rrca                                          ; $4661: $0f
    dec hl                                        ; $4662: $2b
    inc l                                         ; $4663: $2c
    sbc b                                         ; $4664: $98
    ld de, $0d05                                  ; $4665: $11 $05 $0d
    dec c                                         ; $4668: $0d
    dec c                                         ; $4669: $0d
    dec b                                         ; $466a: $05
    dec c                                         ; $466b: $0d
    dec c                                         ; $466c: $0d
    dec c                                         ; $466d: $0d
    dec b                                         ; $466e: $05
    dec b                                         ; $466f: $05
    ld [bc], a                                    ; $4670: $02
    dec b                                         ; $4671: $05

jr_07a_4672:
    dec b                                         ; $4672: $05
    ld [bc], a                                    ; $4673: $02
    dec c                                         ; $4674: $0d
    dec b                                         ; $4675: $05
    xor [hl]                                      ; $4676: $ae
    ld a, [bc]                                    ; $4677: $0a
    ld a, [$affb]                                 ; $4678: $fa $fb $af
    ld hl, $8622                                  ; $467b: $21 $22 $86
    ld hl, $d122                                  ; $467e: $21 $22 $d1
    pop de                                        ; $4681: $d1
    push de                                       ; $4682: $d5
    pop de                                        ; $4683: $d1
    pop de                                        ; $4684: $d1
    pop de                                        ; $4685: $d1
    dec c                                         ; $4686: $0d
    dec b                                         ; $4687: $05
    dec b                                         ; $4688: $05
    ld [bc], a                                    ; $4689: $02
    dec c                                         ; $468a: $0d
    add [hl]                                      ; $468b: $86
    add a                                         ; $468c: $87
    adc h                                         ; $468d: $8c

jr_07a_468e:
    add h                                         ; $468e: $84
    add h                                         ; $468f: $84
    add h                                         ; $4690: $84
    add h                                         ; $4691: $84
    and h                                         ; $4692: $a4
    add h                                         ; $4693: $84
    inc b                                         ; $4694: $04
    inc b                                         ; $4695: $04
    rlca                                          ; $4696: $07
    ld [$0a09], sp                                ; $4697: $08 $09 $0a
    add a                                         ; $469a: $87
    adc b                                         ; $469b: $88
    inc hl                                        ; $469c: $23
    ld [hl+], a                                   ; $469d: $22
    pop de                                        ; $469e: $d1
    pop de                                        ; $469f: $d1
    pop de                                        ; $46a0: $d1
    pop de                                        ; $46a1: $d1
    pop de                                        ; $46a2: $d1
    pop de                                        ; $46a3: $d1
    pop de                                        ; $46a4: $d1
    pop de                                        ; $46a5: $d1
    ld [bc], a                                    ; $46a6: $02
    ld [bc], a                                    ; $46a7: $02
    ld [bc], a                                    ; $46a8: $02
    ld [bc], a                                    ; $46a9: $02
    adc a                                         ; $46aa: $8f
    adc h                                         ; $46ab: $8c
    add [hl]                                      ; $46ac: $86
    add a                                         ; $46ad: $87
    add h                                         ; $46ae: $84
    add h                                         ; $46af: $84
    add h                                         ; $46b0: $84
    add h                                         ; $46b1: $84
    inc b                                         ; $46b2: $04
    inc b                                         ; $46b3: $04
    inc b                                         ; $46b4: $04
    inc b                                         ; $46b5: $04
    pop de                                        ; $46b6: $d1
    pop de                                        ; $46b7: $d1
    pop de                                        ; $46b8: $d1
    push de                                       ; $46b9: $d5
    pop de                                        ; $46ba: $d1
    pop de                                        ; $46bb: $d1
    pop de                                        ; $46bc: $d1
    rst $30                                       ; $46bd: $f7
    daa                                           ; $46be: $27
    inc a                                         ; $46bf: $3c
    dec h                                         ; $46c0: $25
    inc h                                         ; $46c1: $24
    add hl, hl                                    ; $46c2: $29
    ccf                                           ; $46c3: $3f
    sub $d7                                       ; $46c4: $d6 $d7
    inc b                                         ; $46c6: $04
    inc b                                         ; $46c7: $04
    inc b                                         ; $46c8: $04
    ld b, $04                                     ; $46c9: $06 $04
    inc b                                         ; $46cb: $04
    inc b                                         ; $46cc: $04
    inc h                                         ; $46cd: $24
    inc b                                         ; $46ce: $04
    inc b                                         ; $46cf: $04
    inc b                                         ; $46d0: $04
    ld b, $04                                     ; $46d1: $06 $04
    inc b                                         ; $46d3: $04
    ld b, $06                                     ; $46d4: $06 $06
    cpl                                           ; $46d6: $2f
    jr nc, jr_07a_4672                            ; $46d7: $30 $99

    sbc d                                         ; $46d9: $9a
    ld [hl-], a                                   ; $46da: $32
    or b                                          ; $46db: $b0
    or c                                          ; $46dc: $b1
    and a                                         ; $46dd: $a7
    ld a, [$b3b2]                                 ; $46de: $fa $b2 $b3
    ld [$fefc], sp                                ; $46e1: $08 $fc $fe
    dec bc                                        ; $46e4: $0b
    inc c                                         ; $46e5: $0c
    dec b                                         ; $46e6: $05
    dec b                                         ; $46e7: $05
    ld a, [bc]                                    ; $46e8: $0a
    ld a, [bc]                                    ; $46e9: $0a
    dec b                                         ; $46ea: $05
    ld a, [bc]                                    ; $46eb: $0a
    ld a, [bc]                                    ; $46ec: $0a
    ld a, [bc]                                    ; $46ed: $0a
    ld [bc], a                                    ; $46ee: $02
    ld a, [bc]                                    ; $46ef: $0a
    ld a, [bc]                                    ; $46f0: $0a
    ld [bc], a                                    ; $46f1: $02
    ld [bc], a                                    ; $46f2: $02
    ld [bc], a                                    ; $46f3: $02
    ld [bc], a                                    ; $46f4: $02
    ld [bc], a                                    ; $46f5: $02
    rst $30                                       ; $46f6: $f7
    pop de                                        ; $46f7: $d1
    pop de                                        ; $46f8: $d1
    pop de                                        ; $46f9: $d1
    or $b4                                        ; $46fa: $f6 $b4
    pop de                                        ; $46fc: $d1
    pop de                                        ; $46fd: $d1
    inc h                                         ; $46fe: $24
    dec h                                         ; $46ff: $25
    daa                                           ; $4700: $27
    ld h, $d7                                     ; $4701: $26 $d7
    sub $29                                       ; $4703: $d6 $29
    jr z, jr_07a_468e                             ; $4705: $28 $87

    add h                                         ; $4707: $84
    inc b                                         ; $4708: $04
    inc b                                         ; $4709: $04
    inc b                                         ; $470a: $04
    inc c                                         ; $470b: $0c
    inc b                                         ; $470c: $04
    inc b                                         ; $470d: $04
    ld h, $27                                     ; $470e: $26 $27
    inc h                                         ; $4710: $24
    inc h                                         ; $4711: $24
    daa                                           ; $4712: $27
    daa                                           ; $4713: $27
    inc h                                         ; $4714: $24
    ld h, $d1                                     ; $4715: $26 $d1
    jp nc, Jump_000_2726                          ; $4717: $d2 $26 $27

    pop de                                        ; $471a: $d1
    db $d3                                        ; $471b: $d3
    jr z, @+$2b                                   ; $471c: $28 $29

    dec h                                         ; $471e: $25
    inc h                                         ; $471f: $24
    inc [hl]                                      ; $4720: $34
    dec [hl]                                      ; $4721: $35
    sub $d7                                       ; $4722: $d6 $d7
    ld [hl], $37                                  ; $4724: $36 $37
    inc b                                         ; $4726: $04
    inc b                                         ; $4727: $04
    inc b                                         ; $4728: $04
    inc b                                         ; $4729: $04
    inc b                                         ; $472a: $04
    inc b                                         ; $472b: $04
    ld b, $04                                     ; $472c: $06 $04
    ld b, $04                                     ; $472e: $06 $04
    rlca                                          ; $4730: $07
    ld b, $04                                     ; $4731: $06 $04
    inc b                                         ; $4733: $04
    inc b                                         ; $4734: $04
    inc b                                         ; $4735: $04
    ld l, d                                       ; $4736: $6a
    jp hl                                         ; $4737: $e9


    rst $30                                       ; $4738: $f7
    pop de                                        ; $4739: $d1
    ld l, a                                       ; $473a: $6f
    db $ed                                        ; $473b: $ed
    or $d1                                        ; $473c: $f6 $d1
    ld [hl], e                                    ; $473e: $73
    pop af                                        ; $473f: $f1
    jp nc, $f4d1                                  ; $4740: $d2 $d1 $f4

    push af                                       ; $4743: $f5
    db $d3                                        ; $4744: $d3
    pop de                                        ; $4745: $d1
    ld b, $04                                     ; $4746: $06 $04
    inc b                                         ; $4748: $04
    inc b                                         ; $4749: $04
    inc b                                         ; $474a: $04
    rlca                                          ; $474b: $07
    rlca                                          ; $474c: $07
    inc b                                         ; $474d: $04
    inc b                                         ; $474e: $04
    ld b, $a4                                     ; $474f: $06 $a4
    add h                                         ; $4751: $84
    ld b, $04                                     ; $4752: $06 $04
    and a                                         ; $4754: $a7
    add h                                         ; $4755: $84
    ld bc, $d4b5                                  ; $4756: $01 $b5 $d4
    pop de                                        ; $4759: $d1
    dec hl                                        ; $475a: $2b
    inc l                                         ; $475b: $2c
    push de                                       ; $475c: $d5
    pop de                                        ; $475d: $d1
    cpl                                           ; $475e: $2f
    jr nc, @-$07                                  ; $475f: $30 $f7

    pop de                                        ; $4761: $d1
    ld [hl-], a                                   ; $4762: $32
    inc sp                                        ; $4763: $33
    or $d1                                        ; $4764: $f6 $d1
    ld [bc], a                                    ; $4766: $02
    ld a, [bc]                                    ; $4767: $0a
    and h                                         ; $4768: $a4
    add h                                         ; $4769: $84
    ld [bc], a                                    ; $476a: $02
    ld [bc], a                                    ; $476b: $02
    and [hl]                                      ; $476c: $a6
    add h                                         ; $476d: $84
    ld [bc], a                                    ; $476e: $02
    ld [bc], a                                    ; $476f: $02
    add a                                         ; $4770: $87
    add h                                         ; $4771: $84
    ld [bc], a                                    ; $4772: $02
    ld [bc], a                                    ; $4773: $02
    add [hl]                                      ; $4774: $86
    add h                                         ; $4775: $84
    ld a, [$2221]                                 ; $4776: $fa $21 $22
    pop de                                        ; $4779: $d1
    add e                                         ; $477a: $83
    add h                                         ; $477b: $84
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
    ld [bc], a                                    ; $4786: $02
    add h                                         ; $4787: $84
    add h                                         ; $4788: $84
    inc b                                         ; $4789: $04
    adc h                                         ; $478a: $8c
    adc h                                         ; $478b: $8c
    add h                                         ; $478c: $84
    inc b                                         ; $478d: $04
    add h                                         ; $478e: $84
    add h                                         ; $478f: $84
    inc b                                         ; $4790: $04
    inc b                                         ; $4791: $04
    inc b                                         ; $4792: $04
    inc b                                         ; $4793: $04
    inc b                                         ; $4794: $04
    inc b                                         ; $4795: $04
    inc a                                         ; $4796: $3c
    jp nc, $d1d1                                  ; $4797: $d2 $d1 $d1

    ccf                                           ; $479a: $3f
    db $d3                                        ; $479b: $d3
    or [hl]                                       ; $479c: $b6
    or a                                          ; $479d: $b7
    ret c                                         ; $479e: $d8

    call nc, $b9b8                                ; $479f: $d4 $b8 $b9
    call c, $bad5                                 ; $47a2: $dc $d5 $ba
    cp e                                          ; $47a5: $bb
    inc b                                         ; $47a6: $04
    inc h                                         ; $47a7: $24
    inc b                                         ; $47a8: $04
    inc b                                         ; $47a9: $04
    rlca                                          ; $47aa: $07
    inc h                                         ; $47ab: $24
    inc c                                         ; $47ac: $0c
    inc c                                         ; $47ad: $0c
    inc b                                         ; $47ae: $04
    inc h                                         ; $47af: $24
    rrca                                          ; $47b0: $0f
    rrca                                          ; $47b1: $0f
    rlca                                          ; $47b2: $07
    inc h                                         ; $47b3: $24
    cpl                                           ; $47b4: $2f
    cpl                                           ; $47b5: $2f
    pop de                                        ; $47b6: $d1
    pop de                                        ; $47b7: $d1
    pop de                                        ; $47b8: $d1
    jp nc, $bbbc                                  ; $47b9: $d2 $bc $bb

    cp d                                          ; $47bc: $ba
    db $d3                                        ; $47bd: $d3
    cp l                                          ; $47be: $bd
    cp [hl]                                       ; $47bf: $be
    cp a                                          ; $47c0: $bf
    call nc, $b7bc                                ; $47c1: $d4 $bc $b7
    or [hl]                                       ; $47c4: $b6
    push de                                       ; $47c5: $d5
    inc b                                         ; $47c6: $04
    inc b                                         ; $47c7: $04
    inc b                                         ; $47c8: $04
    inc h                                         ; $47c9: $24
    inc c                                         ; $47ca: $0c
    inc c                                         ; $47cb: $0c
    inc c                                         ; $47cc: $0c
    inc h                                         ; $47cd: $24
    rrca                                          ; $47ce: $0f
    inc c                                         ; $47cf: $0c
    inc c                                         ; $47d0: $0c
    inc h                                         ; $47d1: $24
    inc l                                         ; $47d2: $2c
    cpl                                           ; $47d3: $2f
    inc l                                         ; $47d4: $2c
    inc h                                         ; $47d5: $24
    pop de                                        ; $47d6: $d1
    pop de                                        ; $47d7: $d1
    pop de                                        ; $47d8: $d1
    rst $30                                       ; $47d9: $f7
    pop de                                        ; $47da: $d1
    pop de                                        ; $47db: $d1
    pop de                                        ; $47dc: $d1
    or $d1                                        ; $47dd: $f6 $d1
    pop de                                        ; $47df: $d1
    pop de                                        ; $47e0: $d1
    jp nc, $d1d1                                  ; $47e1: $d2 $d1 $d1

    pop de                                        ; $47e4: $d1
    ret nz                                        ; $47e5: $c0

    inc b                                         ; $47e6: $04
    inc b                                         ; $47e7: $04
    add h                                         ; $47e8: $84
    and h                                         ; $47e9: $a4
    inc b                                         ; $47ea: $04
    inc b                                         ; $47eb: $04
    add h                                         ; $47ec: $84
    and [hl]                                      ; $47ed: $a6
    inc b                                         ; $47ee: $04
    inc b                                         ; $47ef: $04
    add h                                         ; $47f0: $84
    add a                                         ; $47f1: $87
    inc b                                         ; $47f2: $04
    inc b                                         ; $47f3: $04
    add h                                         ; $47f4: $84
    adc h                                         ; $47f5: $8c
    add hl, bc                                    ; $47f6: $09
    pop bc                                        ; $47f7: $c1
    jp nz, $c4c3                                  ; $47f8: $c2 $c3 $c4

    push bc                                       ; $47fb: $c5
    add $c7                                       ; $47fc: $c6 $c7
    rrca                                          ; $47fe: $0f
    ret z                                         ; $47ff: $c8

    ret                                           ; $4800: $c9


    jp z, $8386                                   ; $4801: $ca $86 $83

    add h                                         ; $4804: $84
    add l                                         ; $4805: $85
    dec b                                         ; $4806: $05
    dec c                                         ; $4807: $0d
    dec c                                         ; $4808: $0d
    ld a, [bc]                                    ; $4809: $0a
    dec c                                         ; $480a: $0d
    dec c                                         ; $480b: $0d
    dec c                                         ; $480c: $0d
    dec c                                         ; $480d: $0d
    dec b                                         ; $480e: $05
    dec c                                         ; $480f: $0d
    ld a, [bc]                                    ; $4810: $0a
    ld a, [bc]                                    ; $4811: $0a
    adc h                                         ; $4812: $8c
    adc h                                         ; $4813: $8c
    adc [hl]                                      ; $4814: $8e
    adc h                                         ; $4815: $8c
    set 1, h                                      ; $4816: $cb $cc
    add hl, bc                                    ; $4818: $09
    ld a, [bc]                                    ; $4819: $0a
    call Call_000_0d0c                            ; $481a: $cd $0c $0d
    db $fd                                        ; $481d: $fd
    adc $0f                                       ; $481e: $ce $0f
    rst $38                                       ; $4820: $ff
    nop                                           ; $4821: $00
    ld [hl+], a                                   ; $4822: $22
    ld hl, $d0cf                                  ; $4823: $21 $cf $d0
    dec c                                         ; $4826: $0d
    ld a, [bc]                                    ; $4827: $0a
    ld [bc], a                                    ; $4828: $02
    dec b                                         ; $4829: $05
    ld a, [bc]                                    ; $482a: $0a
    dec b                                         ; $482b: $05
    ld [bc], a                                    ; $482c: $02
    ld [bc], a                                    ; $482d: $02
    dec c                                         ; $482e: $0d
    ld [bc], a                                    ; $482f: $02
    ld [bc], a                                    ; $4830: $02
    ld [bc], a                                    ; $4831: $02
    and [hl]                                      ; $4832: $a6
    and h                                         ; $4833: $a4
    ld a, [bc]                                    ; $4834: $0a
    ld a, [bc]                                    ; $4835: $0a
    ld sp, hl                                     ; $4836: $f9
    ld hl, sp-$2c                                 ; $4837: $f8 $d4
    pop de                                        ; $4839: $d1
    db $fc                                        ; $483a: $fc
    cp $d5                                        ; $483b: $fe $d5
    pop de                                        ; $483d: $d1
    ld bc, $f702                                  ; $483e: $01 $02 $f7
    pop de                                        ; $4841: $d1
    pop de                                        ; $4842: $d1
    jp nc, $b4f6                                  ; $4843: $d2 $f6 $b4

    inc h                                         ; $4846: $24
    inc h                                         ; $4847: $24
    inc h                                         ; $4848: $24
    inc b                                         ; $4849: $04
    ld [bc], a                                    ; $484a: $02
    dec b                                         ; $484b: $05
    daa                                           ; $484c: $27
    inc b                                         ; $484d: $04
    ld [bc], a                                    ; $484e: $02
    ld [bc], a                                    ; $484f: $02
    ld b, $04                                     ; $4850: $06 $04
    ld a, [bc]                                    ; $4852: $0a
    ld a, [bc]                                    ; $4853: $0a
    inc b                                         ; $4854: $04
    inc c                                         ; $4855: $0c
    pop de                                        ; $4856: $d1
    pop de                                        ; $4857: $d1
    pop de                                        ; $4858: $d1
    pop de                                        ; $4859: $d1
    pop de                                        ; $485a: $d1
    pop de                                        ; $485b: $d1
    pop de                                        ; $485c: $d1
    inc a                                         ; $485d: $3c
    pop de                                        ; $485e: $d1
    pop de                                        ; $485f: $d1
    pop de                                        ; $4860: $d1
    rst $30                                       ; $4861: $f7
    pop de                                        ; $4862: $d1
    pop de                                        ; $4863: $d1

jr_07a_4864:
    pop de                                        ; $4864: $d1
    or $04                                        ; $4865: $f6 $04
    inc b                                         ; $4867: $04
    add h                                         ; $4868: $84
    add h                                         ; $4869: $84
    inc b                                         ; $486a: $04
    inc b                                         ; $486b: $04
    inc b                                         ; $486c: $04
    inc b                                         ; $486d: $04
    inc b                                         ; $486e: $04
    inc b                                         ; $486f: $04
    inc b                                         ; $4870: $04
    ld h, $04                                     ; $4871: $26 $04
    inc b                                         ; $4873: $04
    inc b                                         ; $4874: $04
    daa                                           ; $4875: $27
    pop de                                        ; $4876: $d1
    pop de                                        ; $4877: $d1
    pop de                                        ; $4878: $d1
    pop de                                        ; $4879: $d1
    dec h                                         ; $487a: $25
    inc h                                         ; $487b: $24
    add hl, hl                                    ; $487c: $29
    ccf                                           ; $487d: $3f
    sub $d7                                       ; $487e: $d6 $d7
    dec [hl]                                      ; $4880: $35
    ret c                                         ; $4881: $d8

    jp c, $37db                                   ; $4882: $da $db $37

    call c, $8484                                 ; $4885: $dc $84 $84
    add h                                         ; $4888: $84
    add h                                         ; $4889: $84
    rlca                                          ; $488a: $07
    inc b                                         ; $488b: $04
    inc b                                         ; $488c: $04
    inc b                                         ; $488d: $04
    inc b                                         ; $488e: $04
    ld b, $04                                     ; $488f: $06 $04
    rlca                                          ; $4891: $07
    rlca                                          ; $4892: $07
    inc b                                         ; $4893: $04
    rlca                                          ; $4894: $07
    rlca                                          ; $4895: $07
    pop de                                        ; $4896: $d1
    rst $30                                       ; $4897: $f7
    dec l                                         ; $4898: $2d
    ld l, $d3                                     ; $4899: $2e $d3
    call nc, Call_000_3118                        ; $489b: $d4 $18 $31
    push de                                       ; $489e: $d5
    sub $09                                       ; $489f: $d6 $09
    ld a, [bc]                                    ; $48a1: $0a
    rst $10                                       ; $48a2: $d7
    ret c                                         ; $48a3: $d8

    dec c                                         ; $48a4: $0d
    db $fd                                        ; $48a5: $fd
    add h                                         ; $48a6: $84
    and h                                         ; $48a7: $a4
    ld [bc], a                                    ; $48a8: $02
    ld [bc], a                                    ; $48a9: $02
    rrca                                          ; $48aa: $0f
    ld c, $02                                     ; $48ab: $0e $02
    ld [bc], a                                    ; $48ad: $02
    ld c, $0f                                     ; $48ae: $0e $0f
    ld [bc], a                                    ; $48b0: $02
    ld [bc], a                                    ; $48b1: $02
    ld c, $0f                                     ; $48b2: $0e $0f
    ld [bc], a                                    ; $48b4: $02
    ld bc, $302f                                  ; $48b5: $01 $2f $30
    inc h                                         ; $48b8: $24
    dec h                                         ; $48b9: $25
    ld [hl-], a                                   ; $48ba: $32
    inc sp                                        ; $48bb: $33
    rst $10                                       ; $48bc: $d7
    sub $fa                                       ; $48bd: $d6 $fa
    ei                                            ; $48bf: $fb
    db $db                                        ; $48c0: $db
    jp c, $fefc                                   ; $48c1: $da $fc $fe

    rst $18                                       ; $48c4: $df
    sbc $02                                       ; $48c5: $de $02
    ld [bc], a                                    ; $48c7: $02
    inc h                                         ; $48c8: $24
    ld h, $02                                     ; $48c9: $26 $02
    ld [bc], a                                    ; $48cb: $02
    ld h, $24                                     ; $48cc: $26 $24
    ld [bc], a                                    ; $48ce: $02
    ld [bc], a                                    ; $48cf: $02
    ld h, $26                                     ; $48d0: $26 $26
    ld bc, $2702                                  ; $48d2: $01 $02 $27
    inc h                                         ; $48d5: $24
    sbc $df                                       ; $48d6: $de $df
    add hl, sp                                    ; $48d8: $39
    ldh [$e2], a                                  ; $48d9: $e0 $e2
    db $e3                                        ; $48db: $e3
    dec sp                                        ; $48dc: $3b
    db $e4                                        ; $48dd: $e4
    ld hl, sp-$07                                 ; $48de: $f8 $f9
    ld a, l                                       ; $48e0: $7d
    jr nc, jr_07a_4864                            ; $48e1: $30 $81

    ld h, c                                       ; $48e3: $61
    add c                                         ; $48e4: $81
    ld b, a                                       ; $48e5: $47
    inc b                                         ; $48e6: $04
    inc b                                         ; $48e7: $04
    ld b, $04                                     ; $48e8: $06 $04
    inc b                                         ; $48ea: $04
    ld b, $04                                     ; $48eb: $06 $04
    inc b                                         ; $48ed: $04
    inc b                                         ; $48ee: $04
    inc b                                         ; $48ef: $04
    dec b                                         ; $48f0: $05
    dec b                                         ; $48f1: $05
    dec c                                         ; $48f2: $0d
    ld [bc], a                                    ; $48f3: $02
    add hl, bc                                    ; $48f4: $09
    ld bc, $dad9                                  ; $48f5: $01 $d9 $da
    rst $38                                       ; $48f8: $ff
    nop                                           ; $48f9: $00
    db $db                                        ; $48fa: $db
    call c, $0403                                 ; $48fb: $dc $03 $04
    ld b, l                                       ; $48fe: $45
    ld b, [hl]                                    ; $48ff: $46
    inc d                                         ; $4900: $14
    dec d                                         ; $4901: $15
    ld b, h                                       ; $4902: $44
    ld c, b                                       ; $4903: $48
    ld c, [hl]                                    ; $4904: $4e
    ld c, a                                       ; $4905: $4f
    ld c, $0c                                     ; $4906: $0e $0c
    ld [bc], a                                    ; $4908: $02
    ld bc, $0c0c                                  ; $4909: $01 $0c $0c
    ld [bc], a                                    ; $490c: $02
    ld bc, $0205                                  ; $490d: $01 $05 $02
    ld bc, $0301                                  ; $4910: $01 $01 $03
    ld bc, $0301                                  ; $4913: $01 $01 $03
    ld bc, $e302                                  ; $4916: $01 $02 $e3
    ld [c], a                                     ; $4919: $e2
    dec b                                         ; $491a: $05
    ld b, $f9                                     ; $491b: $06 $f9
    ld hl, sp+$16                                 ; $491d: $f8 $16
    rla                                           ; $491f: $17
    ld b, l                                       ; $4920: $45
    ld b, [hl]                                    ; $4921: $46
    ld a, [de]                                    ; $4922: $1a
    db $dd                                        ; $4923: $dd
    ld b, h                                       ; $4924: $44
    ld c, b                                       ; $4925: $48
    ld bc, $2702                                  ; $4926: $01 $02 $27
    ld h, $01                                     ; $4929: $26 $01
    ld [bc], a                                    ; $492b: $02
    inc h                                         ; $492c: $24
    ld h, $01                                     ; $492d: $26 $01
    ld bc, $0502                                  ; $492f: $01 $02 $05
    ld bc, $0309                                  ; $4932: $01 $09 $03
    ld bc, $d1d1                                  ; $4935: $01 $d1 $d1
    pop de                                        ; $4938: $d1
    rst $30                                       ; $4939: $f7
    pop de                                        ; $493a: $d1
    pop de                                        ; $493b: $d1
    pop de                                        ; $493c: $d1
    or $d1                                        ; $493d: $f6 $d1
    pop de                                        ; $493f: $d1
    pop de                                        ; $4940: $d1
    jp nc, $d1d1                                  ; $4941: $d2 $d1 $d1

    pop de                                        ; $4944: $d1
    db $d3                                        ; $4945: $d3
    inc b                                         ; $4946: $04
    inc b                                         ; $4947: $04
    add h                                         ; $4948: $84
    and a                                         ; $4949: $a7
    inc b                                         ; $494a: $04
    inc b                                         ; $494b: $04
    add h                                         ; $494c: $84
    and [hl]                                      ; $494d: $a6
    inc b                                         ; $494e: $04
    inc b                                         ; $494f: $04
    add h                                         ; $4950: $84
    add h                                         ; $4951: $84
    inc b                                         ; $4952: $04
    inc b                                         ; $4953: $04
    add h                                         ; $4954: $84
    add h                                         ; $4955: $84
    ld d, c                                       ; $4956: $51
    ld d, d                                       ; $4957: $52
    ld d, e                                       ; $4958: $53
    ei                                            ; $4959: $fb
    ld d, l                                       ; $495a: $55
    ld d, [hl]                                    ; $495b: $56
    ld d, a                                       ; $495c: $57
    sbc $ff                                       ; $495d: $de $ff
    ld e, h                                       ; $495f: $5c
    rst $18                                       ; $4960: $df
    ldh [$e1], a                                  ; $4961: $e0 $e1
    ld [c], a                                     ; $4963: $e2
    db $e3                                        ; $4964: $e3
    db $e4                                        ; $4965: $e4
    ld [bc], a                                    ; $4966: $02
    ld bc, $0303                                  ; $4967: $01 $03 $03
    ld [bc], a                                    ; $496a: $02
    ld bc, $0a03                                  ; $496b: $01 $03 $0a
    ld [bc], a                                    ; $496e: $02
    ld bc, $0909                                  ; $496f: $01 $09 $09
    ld a, [bc]                                    ; $4972: $0a
    add hl, bc                                    ; $4973: $09
    ld a, [bc]                                    ; $4974: $0a
    add hl, bc                                    ; $4975: $09
    ld c, c                                       ; $4976: $49
    ld c, d                                       ; $4977: $4a
    ld d, c                                       ; $4978: $51
    ld d, d                                       ; $4979: $52
    push hl                                       ; $497a: $e5
    and $55                                       ; $497b: $e6 $55
    ld d, [hl]                                    ; $497d: $56
    rst $20                                       ; $497e: $e7
    ld e, c                                       ; $497f: $59
    rst $38                                       ; $4980: $ff
    ld e, h                                       ; $4981: $5c
    add sp, -$17                                  ; $4982: $e8 $e9
    ld hl, $0122                                  ; $4984: $21 $22 $01
    ld [bc], a                                    ; $4987: $02
    ld bc, $0a01                                  ; $4988: $01 $01 $0a
    dec bc                                        ; $498b: $0b
    ld bc, $0903                                  ; $498c: $01 $03 $09
    inc bc                                        ; $498f: $03
    ld bc, $0b02                                  ; $4990: $01 $02 $0b
    add hl, bc                                    ; $4993: $09
    add h                                         ; $4994: $84
    add h                                         ; $4995: $84
    ld d, e                                       ; $4996: $53
    ei                                            ; $4997: $fb
    ld [$57eb], a                                 ; $4998: $ea $eb $57
    ld c, e                                       ; $499b: $4b
    ld c, h                                       ; $499c: $4c
    db $ec                                        ; $499d: $ec
    adc c                                         ; $499e: $89
    ld e, b                                       ; $499f: $58
    ld c, $59                                     ; $49a0: $0e $59
    add e                                         ; $49a2: $83
    add h                                         ; $49a3: $84
    add l                                         ; $49a4: $85
    add [hl]                                      ; $49a5: $86
    inc bc                                        ; $49a6: $03
    ld bc, $0909                                  ; $49a7: $01 $09 $09
    inc bc                                        ; $49aa: $03
    ld bc, $0b01                                  ; $49ab: $01 $01 $0b
    add hl, bc                                    ; $49ae: $09
    ld bc, $0303                                  ; $49af: $01 $03 $03
    adc a                                         ; $49b2: $8f
    adc [hl]                                      ; $49b3: $8e
    adc h                                         ; $49b4: $8c
    adc a                                         ; $49b5: $8f
    pop de                                        ; $49b6: $d1
    pop de                                        ; $49b7: $d1
    pop de                                        ; $49b8: $d1
    pop de                                        ; $49b9: $d1
    pop de                                        ; $49ba: $d1
    pop de                                        ; $49bb: $d1
    pop de                                        ; $49bc: $d1
    pop de                                        ; $49bd: $d1
    pop de                                        ; $49be: $d1
    pop de                                        ; $49bf: $d1
    pop de                                        ; $49c0: $d1
    pop de                                        ; $49c1: $d1
    pop de                                        ; $49c2: $d1
    pop de                                        ; $49c3: $d1
    pop de                                        ; $49c4: $d1
    dec h                                         ; $49c5: $25
    inc b                                         ; $49c6: $04
    inc b                                         ; $49c7: $04
    inc b                                         ; $49c8: $04
    inc b                                         ; $49c9: $04
    inc b                                         ; $49ca: $04
    inc b                                         ; $49cb: $04
    inc b                                         ; $49cc: $04
    inc b                                         ; $49cd: $04
    inc b                                         ; $49ce: $04
    inc b                                         ; $49cf: $04
    inc b                                         ; $49d0: $04
    inc b                                         ; $49d1: $04
    inc b                                         ; $49d2: $04
    inc b                                         ; $49d3: $04
    inc b                                         ; $49d4: $04
    inc b                                         ; $49d5: $04
    db $d3                                        ; $49d6: $d3
    ei                                            ; $49d7: $fb
    db $ed                                        ; $49d8: $ed
    xor $d4                                       ; $49d9: $ee $d4
    ld c, e                                       ; $49db: $4b
    rst $28                                       ; $49dc: $ef
    ldh a, [$d5]                                  ; $49dd: $f0 $d5
    ld e, b                                       ; $49df: $58
    ld c, $59                                     ; $49e0: $0e $59
    inc h                                         ; $49e2: $24
    ld e, d                                       ; $49e3: $5a
    ld e, e                                       ; $49e4: $5b
    ld b, d                                       ; $49e5: $42
    rlca                                          ; $49e6: $07
    ld [bc], a                                    ; $49e7: $02
    add hl, bc                                    ; $49e8: $09
    add hl, bc                                    ; $49e9: $09
    rlca                                          ; $49ea: $07
    ld [bc], a                                    ; $49eb: $02
    dec bc                                        ; $49ec: $0b
    add hl, bc                                    ; $49ed: $09
    inc b                                         ; $49ee: $04
    ld [bc], a                                    ; $49ef: $02
    ld bc, $0702                                  ; $49f0: $01 $02 $07
    ld [bc], a                                    ; $49f3: $02
    ld [bc], a                                    ; $49f4: $02
    ld bc, $52f1                                  ; $49f5: $01 $f1 $52
    or $d1                                        ; $49f8: $f6 $d1
    ld a, [c]                                     ; $49fa: $f2
    ld d, [hl]                                    ; $49fb: $56
    jp nc, $ffd1                                  ; $49fc: $d2 $d1 $ff

    ld e, h                                       ; $49ff: $5c
    db $d3                                        ; $4a00: $d3
    pop de                                        ; $4a01: $d1
    ld e, l                                       ; $4a02: $5d
    ld e, [hl]                                    ; $4a03: $5e
    call nc, Call_000_09d1                        ; $4a04: $d4 $d1 $09
    ld [bc], a                                    ; $4a07: $02
    ld b, $04                                     ; $4a08: $06 $04
    dec bc                                        ; $4a0a: $0b
    ld [bc], a                                    ; $4a0b: $02
    daa                                           ; $4a0c: $27
    inc b                                         ; $4a0d: $04
    ld bc, $2702                                  ; $4a0e: $01 $02 $27
    inc b                                         ; $4a11: $04
    inc bc                                        ; $4a12: $03
    ld [bc], a                                    ; $4a13: $02
    inc h                                         ; $4a14: $24
    inc b                                         ; $4a15: $04
    ld h, $27                                     ; $4a16: $26 $27
    inc a                                         ; $4a18: $3c
    dec a                                         ; $4a19: $3d
    jr z, @+$2b                                   ; $4a1a: $28 $29

    ccf                                           ; $4a1c: $3f
    ld b, b                                       ; $4a1d: $40
    inc [hl]                                      ; $4a1e: $34
    dec [hl]                                      ; $4a1f: $35
    ret c                                         ; $4a20: $d8

    reti                                          ; $4a21: $d9


    ld [hl], $37                                  ; $4a22: $36 $37
    call c, Call_000_07dd                         ; $4a24: $dc $dd $07
    inc b                                         ; $4a27: $04
    inc b                                         ; $4a28: $04
    inc b                                         ; $4a29: $04
    inc b                                         ; $4a2a: $04
    inc b                                         ; $4a2b: $04
    inc b                                         ; $4a2c: $04
    rlca                                          ; $4a2d: $07
    inc b                                         ; $4a2e: $04
    ld b, $04                                     ; $4a2f: $06 $04
    inc b                                         ; $4a31: $04
    ld b, $04                                     ; $4a32: $06 $04
    inc b                                         ; $4a34: $04
    ld b, $3e                                     ; $4a35: $06 $3e
    ld h, d                                       ; $4a37: $62
    dec h                                         ; $4a38: $25
    inc h                                         ; $4a39: $24
    ld b, c                                       ; $4a3a: $41
    ld h, l                                       ; $4a3b: $65
    sub $d7                                       ; $4a3c: $d6 $d7
    and $69                                       ; $4a3e: $e6 $69
    jp c, $eadb                                   ; $4a40: $da $db $ea

    ld l, [hl]                                    ; $4a43: $6e
    sbc $df                                       ; $4a44: $de $df
    inc b                                         ; $4a46: $04
    inc b                                         ; $4a47: $04
    inc b                                         ; $4a48: $04
    ld b, $06                                     ; $4a49: $06 $06
    inc b                                         ; $4a4b: $04
    rlca                                          ; $4a4c: $07
    inc b                                         ; $4a4d: $04
    inc b                                         ; $4a4e: $04
    inc b                                         ; $4a4f: $04
    ld b, $04                                     ; $4a50: $06 $04
    rlca                                          ; $4a52: $07
    ld b, $04                                     ; $4a53: $06 $04
    rlca                                          ; $4a55: $07
    rst $10                                       ; $4a56: $d7
    jr nc, jr_07a_4a9e                            ; $4a57: $30 $45

    ld b, [hl]                                    ; $4a59: $46
    db $db                                        ; $4a5a: $db
    ld b, a                                       ; $4a5b: $47
    ld b, h                                       ; $4a5c: $44
    ld c, b                                       ; $4a5d: $48
    rst $18                                       ; $4a5e: $df
    di                                            ; $4a5f: $f3
    db $f4                                        ; $4a60: $f4
    push af                                       ; $4a61: $f5
    db $e3                                        ; $4a62: $e3
    or $f7                                        ; $4a63: $f6 $f7
    ld hl, sp+$04                                 ; $4a65: $f8 $04
    ld [bc], a                                    ; $4a67: $02
    inc bc                                        ; $4a68: $03
    ld bc, $0206                                  ; $4a69: $01 $06 $02
    inc bc                                        ; $4a6c: $03
    ld [bc], a                                    ; $4a6d: $02
    ld b, $0a                                     ; $4a6e: $06 $0a
    add hl, bc                                    ; $4a70: $09
    dec bc                                        ; $4a71: $0b
    inc b                                         ; $4a72: $04
    ld a, [bc]                                    ; $4a73: $0a
    add hl, bc                                    ; $4a74: $09
    dec bc                                        ; $4a75: $0b
    ld e, a                                       ; $4a76: $5f
    ld h, b                                       ; $4a77: $60
    push de                                       ; $4a78: $d5
    pop de                                        ; $4a79: $d1
    ld c, [hl]                                    ; $4a7a: $4e
    ld h, c                                       ; $4a7b: $61
    call nc, $f9d1                                ; $4a7c: $d4 $d1 $f9
    ld a, [$2524]                                 ; $4a7f: $fa $24 $25
    ei                                            ; $4a82: $fb
    db $fc                                        ; $4a83: $fc
    rst $10                                       ; $4a84: $d7
    sub $01                                       ; $4a85: $d6 $01
    ld [bc], a                                    ; $4a87: $02
    inc h                                         ; $4a88: $24
    inc b                                         ; $4a89: $04
    ld bc, $2702                                  ; $4a8a: $01 $02 $27
    inc b                                         ; $4a8d: $04
    ld a, [bc]                                    ; $4a8e: $0a
    ld a, [bc]                                    ; $4a8f: $0a
    inc h                                         ; $4a90: $24
    inc h                                         ; $4a91: $24
    add hl, bc                                    ; $4a92: $09
    ld a, [bc]                                    ; $4a93: $0a
    ld h, $24                                     ; $4a94: $26 $24
    jr c, jr_07a_4ad1                             ; $4a96: $38 $39

    ldh [$e1], a                                  ; $4a98: $e0 $e1
    ld a, [hl-]                                   ; $4a9a: $3a
    dec sp                                        ; $4a9b: $3b
    db $e4                                        ; $4a9c: $e4
    push hl                                       ; $4a9d: $e5

jr_07a_4a9e:
    ld e, a                                       ; $4a9e: $5f
    db $fd                                        ; $4a9f: $fd
    cp $ff                                        ; $4aa0: $fe $ff
    ld c, [hl]                                    ; $4aa2: $4e
    nop                                           ; $4aa3: $00
    ld bc, $0402                                  ; $4aa4: $01 $02 $04
    ld b, $04                                     ; $4aa7: $06 $04
    inc b                                         ; $4aa9: $04
    ld b, $04                                     ; $4aaa: $06 $04
    inc b                                         ; $4aac: $04
    ld b, $05                                     ; $4aad: $06 $05
    dec c                                         ; $4aaf: $0d
    dec c                                         ; $4ab0: $0d
    dec c                                         ; $4ab1: $0d
    ld [bc], a                                    ; $4ab2: $02
    add hl, bc                                    ; $4ab3: $09
    add hl, bc                                    ; $4ab4: $09
    dec bc                                        ; $4ab5: $0b
    xor $72                                       ; $4ab6: $ee $72
    ld [c], a                                     ; $4ab8: $e2
    db $e3                                        ; $4ab9: $e3
    ld a, [c]                                     ; $4aba: $f2
    di                                            ; $4abb: $f3
    ld hl, sp-$07                                 ; $4abc: $f8 $f9
    inc bc                                        ; $4abe: $03
    ld b, [hl]                                    ; $4abf: $46
    inc d                                         ; $4ac0: $14
    dec d                                         ; $4ac1: $15
    ld b, h                                       ; $4ac2: $44
    ld c, b                                       ; $4ac3: $48
    ld c, [hl]                                    ; $4ac4: $4e
    ld c, a                                       ; $4ac5: $4f
    ld b, $04                                     ; $4ac6: $06 $04
    ld b, $07                                     ; $4ac8: $06 $07
    ld b, $06                                     ; $4aca: $06 $06
    inc b                                         ; $4acc: $04
    rlca                                          ; $4acd: $07
    dec c                                         ; $4ace: $0d
    dec b                                         ; $4acf: $05
    dec b                                         ; $4ad0: $05

jr_07a_4ad1:
    ld [bc], a                                    ; $4ad1: $02
    ld bc, $0201                                  ; $4ad2: $01 $01 $02
    ld bc, $58f9                                  ; $4ad5: $01 $f9 $58
    ld c, $59                                     ; $4ad8: $0e $59
    dec b                                         ; $4ada: $05
    ld b, $74                                     ; $4adb: $06 $74
    ld b, d                                       ; $4add: $42
    ld d, $17                                     ; $4ade: $16 $17
    ld b, l                                       ; $4ae0: $45
    ld b, [hl]                                    ; $4ae1: $46
    ld a, [de]                                    ; $4ae2: $1a
    db $dd                                        ; $4ae3: $dd
    ld b, h                                       ; $4ae4: $44
    ld c, b                                       ; $4ae5: $48
    ld b, $02                                     ; $4ae6: $06 $02
    ld bc, $0202                                  ; $4ae8: $01 $02 $02
    ld [bc], a                                    ; $4aeb: $02
    ld [bc], a                                    ; $4aec: $02
    ld bc, $0101                                  ; $4aed: $01 $01 $01
    inc bc                                        ; $4af0: $03
    ld bc, $0a01                                  ; $4af1: $01 $01 $0a
    ld bc, $ff01                                  ; $4af4: $01 $01 $ff
    ld e, h                                       ; $4af7: $5c
    db $db                                        ; $4af8: $db
    jp c, $5e5d                                   ; $4af9: $da $5d $5e

    rst $18                                       ; $4afc: $df
    sbc $5f                                       ; $4afd: $de $5f
    ld h, b                                       ; $4aff: $60
    db $e3                                        ; $4b00: $e3
    ld [c], a                                     ; $4b01: $e2
    ld c, [hl]                                    ; $4b02: $4e
    ld h, c                                       ; $4b03: $61
    ld sp, hl                                     ; $4b04: $f9
    ld hl, sp+$01                                 ; $4b05: $f8 $01
    ld [bc], a                                    ; $4b07: $02
    daa                                           ; $4b08: $27
    ld h, $03                                     ; $4b09: $26 $03
    ld [bc], a                                    ; $4b0b: $02
    daa                                           ; $4b0c: $27
    inc h                                         ; $4b0d: $24
    ld bc, $2402                                  ; $4b0e: $01 $02 $24
    ld h, $03                                     ; $4b11: $26 $03
    ld [bc], a                                    ; $4b13: $02
    inc h                                         ; $4b14: $24
    inc h                                         ; $4b15: $24
    inc b                                         ; $4b16: $04
    dec b                                         ; $4b17: $05
    ld b, $07                                     ; $4b18: $06 $07
    ld [$0a09], sp                                ; $4b1a: $08 $09 $0a
    dec bc                                        ; $4b1d: $0b
    rst $38                                       ; $4b1e: $ff
    ld e, h                                       ; $4b1f: $5c
    adc c                                         ; $4b20: $89
    ld e, b                                       ; $4b21: $58
    add a                                         ; $4b22: $87
    adc b                                         ; $4b23: $88
    inc hl                                        ; $4b24: $23
    ld [hl+], a                                   ; $4b25: $22
    dec bc                                        ; $4b26: $0b
    ld a, [bc]                                    ; $4b27: $0a
    ld a, [bc]                                    ; $4b28: $0a
    add hl, bc                                    ; $4b29: $09
    dec bc                                        ; $4b2a: $0b
    add hl, bc                                    ; $4b2b: $09
    add hl, bc                                    ; $4b2c: $09
    ld a, [bc]                                    ; $4b2d: $0a
    inc bc                                        ; $4b2e: $03
    inc bc                                        ; $4b2f: $03
    add hl, bc                                    ; $4b30: $09
    inc bc                                        ; $4b31: $03
    adc h                                         ; $4b32: $8c
    adc a                                         ; $4b33: $8f
    add h                                         ; $4b34: $84
    add [hl]                                      ; $4b35: $86
    inc c                                         ; $4b36: $0c
    dec c                                         ; $4b37: $0d
    ld c, $0f                                     ; $4b38: $0e $0f
    ld c, h                                       ; $4b3a: $4c
    ld c, l                                       ; $4b3b: $4d
    ld d, l                                       ; $4b3c: $55
    db $10                                        ; $4b3d: $10
    ld c, $59                                     ; $4b3e: $0e $59
    rst $38                                       ; $4b40: $ff
    ld e, h                                       ; $4b41: $5c
    add e                                         ; $4b42: $83
    add h                                         ; $4b43: $84
    add l                                         ; $4b44: $85
    add [hl]                                      ; $4b45: $86
    dec bc                                        ; $4b46: $0b
    add hl, bc                                    ; $4b47: $09
    add hl, bc                                    ; $4b48: $09
    dec bc                                        ; $4b49: $0b
    ld bc, $0303                                  ; $4b4a: $01 $03 $03
    add hl, bc                                    ; $4b4d: $09
    ld bc, $0101                                  ; $4b4e: $01 $01 $01
    inc bc                                        ; $4b51: $03
    adc a                                         ; $4b52: $8f
    adc h                                         ; $4b53: $8c
    adc [hl]                                      ; $4b54: $8e
    adc a                                         ; $4b55: $8f
    ld de, $49fb                                  ; $4b56: $11 $fb $49
    ld c, d                                       ; $4b59: $4a
    ld d, a                                       ; $4b5a: $57
    ld c, e                                       ; $4b5b: $4b
    ld c, h                                       ; $4b5c: $4c
    ld c, l                                       ; $4b5d: $4d
    adc c                                         ; $4b5e: $89
    ld e, b                                       ; $4b5f: $58
    ld c, $59                                     ; $4b60: $0e $59
    add a                                         ; $4b62: $87
    ld [hl+], a                                   ; $4b63: $22
    ld hl, $090f                                  ; $4b64: $21 $0f $09
    inc bc                                        ; $4b67: $03
    ld [bc], a                                    ; $4b68: $02
    inc bc                                        ; $4b69: $03
    ld [bc], a                                    ; $4b6a: $02
    ld bc, $0201                                  ; $4b6b: $01 $01 $02
    add hl, bc                                    ; $4b6e: $09
    ld [bc], a                                    ; $4b6f: $02
    ld bc, $8f01                                  ; $4b70: $01 $01 $8f
    and h                                         ; $4b73: $a4
    and h                                         ; $4b74: $a4
    ld bc, $c151                                  ; $4b75: $01 $51 $c1
    jp nz, Jump_000_12c3                          ; $4b78: $c2 $c3 $12

    push bc                                       ; $4b7b: $c5
    add $c7                                       ; $4b7c: $c6 $c7
    inc de                                        ; $4b7e: $13
    ret z                                         ; $4b7f: $c8

    ret                                           ; $4b80: $c9


    jp z, $1312                                   ; $4b81: $ca $12 $13

    dec hl                                        ; $4b84: $2b
    inc l                                         ; $4b85: $2c
    ld bc, $0a09                                  ; $4b86: $01 $09 $0a
    dec c                                         ; $4b89: $0d
    add hl, bc                                    ; $4b8a: $09
    add hl, bc                                    ; $4b8b: $09
    dec bc                                        ; $4b8c: $0b
    add hl, bc                                    ; $4b8d: $09
    add hl, bc                                    ; $4b8e: $09
    dec bc                                        ; $4b8f: $0b
    add hl, bc                                    ; $4b90: $09
    add hl, bc                                    ; $4b91: $09
    ld bc, $0102                                  ; $4b92: $01 $02 $01
    ld bc, $d1d1                                  ; $4b95: $01 $d1 $d1
    pop de                                        ; $4b98: $d1
    or $d1                                        ; $4b99: $f6 $d1
    pop de                                        ; $4b9b: $d1
    pop de                                        ; $4b9c: $d1
    jp nc, $d1d1                                  ; $4b9d: $d2 $d1 $d1

    pop de                                        ; $4ba0: $d1
    db $d3                                        ; $4ba1: $d3
    pop de                                        ; $4ba2: $d1
    pop de                                        ; $4ba3: $d1
    pop de                                        ; $4ba4: $d1
    call nc, Call_000_0404                        ; $4ba5: $d4 $04 $04
    add h                                         ; $4ba8: $84
    and [hl]                                      ; $4ba9: $a6
    inc b                                         ; $4baa: $04
    inc b                                         ; $4bab: $04
    add h                                         ; $4bac: $84
    add h                                         ; $4bad: $84
    inc b                                         ; $4bae: $04
    inc b                                         ; $4baf: $04
    add h                                         ; $4bb0: $84
    add a                                         ; $4bb1: $87
    inc b                                         ; $4bb2: $04
    inc b                                         ; $4bb3: $04
    add h                                         ; $4bb4: $84
    add h                                         ; $4bb5: $84
    ld d, c                                       ; $4bb6: $51
    inc d                                         ; $4bb7: $14
    dec d                                         ; $4bb8: $15
    ei                                            ; $4bb9: $fb
    ld d, l                                       ; $4bba: $55
    add hl, bc                                    ; $4bbb: $09
    ld a, [bc]                                    ; $4bbc: $0a
    dec bc                                        ; $4bbd: $0b
    rst $38                                       ; $4bbe: $ff
    ld e, h                                       ; $4bbf: $5c
    adc c                                         ; $4bc0: $89
    ld e, b                                       ; $4bc1: $58
    ld e, l                                       ; $4bc2: $5d
    ld e, [hl]                                    ; $4bc3: $5e
    ld [hl], l                                    ; $4bc4: $75
    ld e, d                                       ; $4bc5: $5a
    ld [bc], a                                    ; $4bc6: $02
    add hl, bc                                    ; $4bc7: $09
    ld a, [bc]                                    ; $4bc8: $0a
    ld bc, $0b02                                  ; $4bc9: $01 $02 $0b
    add hl, bc                                    ; $4bcc: $09
    add hl, bc                                    ; $4bcd: $09
    ld [bc], a                                    ; $4bce: $02
    ld bc, $0309                                  ; $4bcf: $01 $09 $03
    ld [bc], a                                    ; $4bd2: $02
    ld bc, $0103                                  ; $4bd3: $01 $03 $01
    ld c, c                                       ; $4bd6: $49
    db $db                                        ; $4bd7: $db
    jp c, Jump_07a_4c34                           ; $4bd8: $da $34 $4c

    rst $18                                       ; $4bdb: $df
    sbc $36                                       ; $4bdc: $de $36
    ld c, $e3                                     ; $4bde: $0e $e3
    ld [c], a                                     ; $4be0: $e2
    jr c, jr_07a_4c3e                             ; $4be1: $38 $5b

    ld sp, hl                                     ; $4be3: $f9
    ld hl, sp+$3a                                 ; $4be4: $f8 $3a
    ld [bc], a                                    ; $4be6: $02
    daa                                           ; $4be7: $27
    inc h                                         ; $4be8: $24
    rlca                                          ; $4be9: $07
    ld [bc], a                                    ; $4bea: $02
    daa                                           ; $4beb: $27
    ld h, $04                                     ; $4bec: $26 $04
    ld [bc], a                                    ; $4bee: $02
    inc h                                         ; $4bef: $24
    ld h, $07                                     ; $4bf0: $26 $07
    ld [bc], a                                    ; $4bf2: $02
    inc h                                         ; $4bf3: $24
    ld h, $04                                     ; $4bf4: $26 $04
    pop de                                        ; $4bf6: $d1
    pop de                                        ; $4bf7: $d1
    pop de                                        ; $4bf8: $d1
    pop de                                        ; $4bf9: $d1
    pop de                                        ; $4bfa: $d1
    pop de                                        ; $4bfb: $d1
    pop de                                        ; $4bfc: $d1
    pop de                                        ; $4bfd: $d1
    pop de                                        ; $4bfe: $d1
    pop de                                        ; $4bff: $d1
    pop de                                        ; $4c00: $d1
    pop de                                        ; $4c01: $d1
    inc h                                         ; $4c02: $24
    dec h                                         ; $4c03: $25
    ld h, $27                                     ; $4c04: $26 $27
    inc b                                         ; $4c06: $04
    inc b                                         ; $4c07: $04
    inc b                                         ; $4c08: $04
    inc b                                         ; $4c09: $04
    inc b                                         ; $4c0a: $04
    inc b                                         ; $4c0b: $04
    inc b                                         ; $4c0c: $04
    inc b                                         ; $4c0d: $04
    inc b                                         ; $4c0e: $04
    inc b                                         ; $4c0f: $04
    inc b                                         ; $4c10: $04
    inc b                                         ; $4c11: $04
    daa                                           ; $4c12: $27
    daa                                           ; $4c13: $27
    inc b                                         ; $4c14: $04
    inc b                                         ; $4c15: $04
    pop de                                        ; $4c16: $d1
    pop de                                        ; $4c17: $d1
    pop de                                        ; $4c18: $d1
    push de                                       ; $4c19: $d5
    pop de                                        ; $4c1a: $d1
    pop de                                        ; $4c1b: $d1
    pop de                                        ; $4c1c: $d1
    call nc, $d1d1                                ; $4c1d: $d4 $d1 $d1
    pop de                                        ; $4c20: $d1
    or $3c                                        ; $4c21: $f6 $3c
    pop de                                        ; $4c23: $d1
    pop de                                        ; $4c24: $d1
    jp nc, Jump_000_0404                          ; $4c25: $d2 $04 $04

    add h                                         ; $4c28: $84
    add a                                         ; $4c29: $87
    inc b                                         ; $4c2a: $04
    inc b                                         ; $4c2b: $04
    add h                                         ; $4c2c: $84
    add h                                         ; $4c2d: $84
    inc b                                         ; $4c2e: $04
    inc b                                         ; $4c2f: $04
    add h                                         ; $4c30: $84
    and a                                         ; $4c31: $a7
    inc b                                         ; $4c32: $04
    inc b                                         ; $4c33: $04

Jump_07a_4c34:
    add h                                         ; $4c34: $84
    add h                                         ; $4c35: $84
    ld e, a                                       ; $4c36: $5f
    db $fd                                        ; $4c37: $fd
    cp $ff                                        ; $4c38: $fe $ff
    ld c, [hl]                                    ; $4c3a: $4e
    nop                                           ; $4c3b: $00
    ld d, $47                                     ; $4c3c: $16 $47

jr_07a_4c3e:
    ld d, c                                       ; $4c3e: $51
    ld d, d                                       ; $4c3f: $52
    ld d, e                                       ; $4c40: $53
    ei                                            ; $4c41: $fb
    ld d, l                                       ; $4c42: $55
    ld d, [hl]                                    ; $4c43: $56
    ld d, a                                       ; $4c44: $57
    ld c, e                                       ; $4c45: $4b
    ld [bc], a                                    ; $4c46: $02
    add hl, bc                                    ; $4c47: $09
    ld a, [bc]                                    ; $4c48: $0a
    add hl, bc                                    ; $4c49: $09
    ld [bc], a                                    ; $4c4a: $02

Call_07a_4c4b:
    add hl, bc                                    ; $4c4b: $09
    add hl, bc                                    ; $4c4c: $09
    inc bc                                        ; $4c4d: $03
    ld [bc], a                                    ; $4c4e: $02
    inc bc                                        ; $4c4f: $03
    ld bc, $0201                                  ; $4c50: $01 $01 $02
    ld [bc], a                                    ; $4c53: $02
    ld bc, $0301                                  ; $4c54: $01 $01 $03
    ld b, [hl]                                    ; $4c57: $46
    ld e, a                                       ; $4c58: $5f
    ld h, b                                       ; $4c59: $60
    ld b, h                                       ; $4c5a: $44
    ld c, b                                       ; $4c5b: $48
    ld c, [hl]                                    ; $4c5c: $4e
    ld h, c                                       ; $4c5d: $61
    ld c, c                                       ; $4c5e: $49
    ld c, d                                       ; $4c5f: $4a
    ld d, c                                       ; $4c60: $51
    pop bc                                        ; $4c61: $c1
    ld c, h                                       ; $4c62: $4c
    ld c, l                                       ; $4c63: $4d
    ld [de], a                                    ; $4c64: $12
    push bc                                       ; $4c65: $c5
    add hl, bc                                    ; $4c66: $09
    ld [bc], a                                    ; $4c67: $02
    dec b                                         ; $4c68: $05
    dec b                                         ; $4c69: $05
    ld [bc], a                                    ; $4c6a: $02
    ld bc, $0102                                  ; $4c6b: $01 $02 $01
    ld bc, $0301                                  ; $4c6e: $01 $01 $03
    add hl, bc                                    ; $4c71: $09
    inc bc                                        ; $4c72: $03
    ld [bc], a                                    ; $4c73: $02
    add hl, bc                                    ; $4c74: $09
    add hl, bc                                    ; $4c75: $09
    rst $10                                       ; $4c76: $d7
    sub $28                                       ; $4c77: $d6 $28
    add hl, hl                                    ; $4c79: $29
    db $db                                        ; $4c7a: $db
    jp c, Jump_000_3534                           ; $4c7b: $da $34 $35

    rst $18                                       ; $4c7e: $df
    sbc $36                                       ; $4c7f: $de $36
    scf                                           ; $4c81: $37
    db $e3                                        ; $4c82: $e3
    ld [c], a                                     ; $4c83: $e2
    jr c, jr_07a_4cbf                             ; $4c84: $38 $39

    daa                                           ; $4c86: $27
    ld h, $04                                     ; $4c87: $26 $04
    inc b                                         ; $4c89: $04
    inc h                                         ; $4c8a: $24
    inc h                                         ; $4c8b: $24
    inc b                                         ; $4c8c: $04
    inc b                                         ; $4c8d: $04
    inc h                                         ; $4c8e: $24
    inc h                                         ; $4c8f: $24
    ld b, $04                                     ; $4c90: $06 $04
    ld h, $24                                     ; $4c92: $26 $24
    rlca                                          ; $4c94: $07
    rlca                                          ; $4c95: $07
    ccf                                           ; $4c96: $3f
    rst $30                                       ; $4c97: $f7
    pop de                                        ; $4c98: $d1
    ld [hl+], a                                   ; $4c99: $22
    ret c                                         ; $4c9a: $d8

    or $d1                                        ; $4c9b: $f6 $d1
    pop de                                        ; $4c9d: $d1
    call c, $d1d2                                 ; $4c9e: $dc $d2 $d1
    pop de                                        ; $4ca1: $d1
    ldh [rNR50], a                                ; $4ca2: $e0 $24
    dec h                                         ; $4ca4: $25
    ld h, $04                                     ; $4ca5: $26 $04
    rlca                                          ; $4ca7: $07
    inc b                                         ; $4ca8: $04
    and h                                         ; $4ca9: $a4
    ld b, $07                                     ; $4caa: $06 $07
    inc b                                         ; $4cac: $04
    inc b                                         ; $4cad: $04
    rlca                                          ; $4cae: $07
    inc h                                         ; $4caf: $24
    inc b                                         ; $4cb0: $04
    inc b                                         ; $4cb1: $04
    ld b, $24                                     ; $4cb2: $06 $24
    daa                                           ; $4cb4: $27
    inc b                                         ; $4cb5: $04
    ld hl, $895c                                  ; $4cb6: $21 $5c $89
    ld e, b                                       ; $4cb9: $58
    add e                                         ; $4cba: $83
    add h                                         ; $4cbb: $84
    add l                                         ; $4cbc: $85
    add [hl]                                      ; $4cbd: $86
    pop de                                        ; $4cbe: $d1

jr_07a_4cbf:
    pop de                                        ; $4cbf: $d1
    pop de                                        ; $4cc0: $d1
    pop de                                        ; $4cc1: $d1
    daa                                           ; $4cc2: $27
    inc a                                         ; $4cc3: $3c
    dec a                                         ; $4cc4: $3d
    ld a, $a4                                     ; $4cc5: $3e $a4
    ld [bc], a                                    ; $4cc7: $02
    dec bc                                        ; $4cc8: $0b
    ld bc, $8e8c                                  ; $4cc9: $01 $8c $8e
    adc [hl]                                      ; $4ccc: $8e
    adc a                                         ; $4ccd: $8f
    inc b                                         ; $4cce: $04
    add h                                         ; $4ccf: $84
    add h                                         ; $4cd0: $84
    add h                                         ; $4cd1: $84
    ld b, $04                                     ; $4cd2: $06 $04
    inc b                                         ; $4cd4: $04
    inc b                                         ; $4cd5: $04
    ld c, $59                                     ; $4cd6: $0e $59
    inc de                                        ; $4cd8: $13
    ret z                                         ; $4cd9: $c8

    add a                                         ; $4cda: $87
    adc b                                         ; $4cdb: $88
    inc hl                                        ; $4cdc: $23
    ld [hl+], a                                   ; $4cdd: $22
    pop de                                        ; $4cde: $d1
    pop de                                        ; $4cdf: $d1
    pop de                                        ; $4ce0: $d1
    pop de                                        ; $4ce1: $d1
    ld h, d                                       ; $4ce2: $62
    ld h, e                                       ; $4ce3: $63
    ld h, h                                       ; $4ce4: $64
    ld h, $01                                     ; $4ce5: $26 $01
    inc bc                                        ; $4ce7: $03
    add hl, bc                                    ; $4ce8: $09
    add hl, bc                                    ; $4ce9: $09
    adc a                                         ; $4cea: $8f
    adc h                                         ; $4ceb: $8c
    add [hl]                                      ; $4cec: $86
    add h                                         ; $4ced: $84
    add h                                         ; $4cee: $84
    add h                                         ; $4cef: $84
    add h                                         ; $4cf0: $84
    add h                                         ; $4cf1: $84
    inc b                                         ; $4cf2: $04
    inc b                                         ; $4cf3: $04
    inc b                                         ; $4cf4: $04
    inc b                                         ; $4cf5: $04
    ld sp, hl                                     ; $4cf6: $f9
    ld hl, sp+$3a                                 ; $4cf7: $f8 $3a
    dec sp                                        ; $4cf9: $3b
    call Call_000_0d0c                            ; $4cfa: $cd $0c $0d
    db $fd                                        ; $4cfd: $fd
    adc $0f                                       ; $4cfe: $ce $0f
    rst $38                                       ; $4d00: $ff
    nop                                           ; $4d01: $00
    sbc b                                         ; $4d02: $98
    ld de, $1312                                  ; $4d03: $11 $12 $13
    inc h                                         ; $4d06: $24
    ld h, $06                                     ; $4d07: $26 $06
    rlca                                          ; $4d09: $07
    ld a, [bc]                                    ; $4d0a: $0a
    dec b                                         ; $4d0b: $05
    dec b                                         ; $4d0c: $05
    dec b                                         ; $4d0d: $05
    add hl, bc                                    ; $4d0e: $09
    ld bc, $0102                                  ; $4d0f: $01 $02 $01
    add hl, bc                                    ; $4d12: $09
    ld [bc], a                                    ; $4d13: $02
    ld bc, $e402                                  ; $4d14: $01 $02 $e4
    rst $10                                       ; $4d17: $d7
    sub $28                                       ; $4d18: $d6 $28
    nop                                           ; $4d1a: $00
    db $db                                        ; $4d1b: $db
    jp c, $0134                                   ; $4d1c: $da $34 $01

    rst $18                                       ; $4d1f: $df
    sbc $36                                       ; $4d20: $de $36
    dec hl                                        ; $4d22: $2b
    db $e3                                        ; $4d23: $e3
    ld [c], a                                     ; $4d24: $e2
    jr c, jr_07a_4d2b                             ; $4d25: $38 $04

    daa                                           ; $4d27: $27
    ld h, $07                                     ; $4d28: $26 $07
    dec b                                         ; $4d2a: $05

jr_07a_4d2b:
    inc h                                         ; $4d2b: $24
    daa                                           ; $4d2c: $27
    ld b, $02                                     ; $4d2d: $06 $02
    ld h, $24                                     ; $4d2f: $26 $24
    inc b                                         ; $4d31: $04
    ld [bc], a                                    ; $4d32: $02
    inc h                                         ; $4d33: $24
    ld h, $04                                     ; $4d34: $26 $04
    add hl, hl                                    ; $4d36: $29
    ccf                                           ; $4d37: $3f
    ld b, b                                       ; $4d38: $40
    ld h, a                                       ; $4d39: $67
    dec [hl]                                      ; $4d3a: $35
    ret c                                         ; $4d3b: $d8

    reti                                          ; $4d3c: $d9


    ld l, e                                       ; $4d3d: $6b
    scf                                           ; $4d3e: $37
    call c, Call_07a_70dd                         ; $4d3f: $dc $dd $70
    add hl, sp                                    ; $4d42: $39
    ldh [$e1], a                                  ; $4d43: $e0 $e1
    xor $04                                       ; $4d45: $ee $04
    inc b                                         ; $4d47: $04
    inc b                                         ; $4d48: $04
    inc b                                         ; $4d49: $04
    ld b, $06                                     ; $4d4a: $06 $06
    ld b, $04                                     ; $4d4c: $06 $04
    ld b, $06                                     ; $4d4e: $06 $06
    inc b                                         ; $4d50: $04
    inc b                                         ; $4d51: $04
    inc b                                         ; $4d52: $04
    inc b                                         ; $4d53: $04
    inc b                                         ; $4d54: $04
    inc b                                         ; $4d55: $04
    ld l, b                                       ; $4d56: $68
    ld h, [hl]                                    ; $4d57: $66
    ld l, l                                       ; $4d58: $6d
    jr z, jr_07a_4dc7                             ; $4d59: $28 $6c

    ld l, d                                       ; $4d5b: $6a
    jp hl                                         ; $4d5c: $e9


    inc [hl]                                      ; $4d5d: $34
    ld [hl], c                                    ; $4d5e: $71
    ld l, a                                       ; $4d5f: $6f
    db $ed                                        ; $4d60: $ed
    ld [hl], $72                                  ; $4d61: $36 $72
    ld [hl], e                                    ; $4d63: $73
    pop af                                        ; $4d64: $f1
    jr c, jr_07a_4d6b                             ; $4d65: $38 $04

    inc b                                         ; $4d67: $04
    inc b                                         ; $4d68: $04
    ld b, $04                                     ; $4d69: $06 $04

jr_07a_4d6b:
    ld b, $04                                     ; $4d6b: $06 $04
    ld b, $04                                     ; $4d6d: $06 $04
    inc b                                         ; $4d6f: $04
    ld b, $04                                     ; $4d70: $06 $04
    inc b                                         ; $4d72: $04
    inc b                                         ; $4d73: $04
    inc b                                         ; $4d74: $04
    rlca                                          ; $4d75: $07
    dec [hl]                                      ; $4d76: $35
    ret c                                         ; $4d77: $d8

    jp c, $37db                                   ; $4d78: $da $db $37

    call c, $dfde                                 ; $4d7b: $dc $de $df
    add hl, sp                                    ; $4d7e: $39
    ldh [$e2], a                                  ; $4d7f: $e0 $e2
    db $e3                                        ; $4d81: $e3
    dec sp                                        ; $4d82: $3b
    db $e4                                        ; $4d83: $e4
    ld hl, sp-$07                                 ; $4d84: $f8 $f9
    inc b                                         ; $4d86: $04
    ld b, $06                                     ; $4d87: $06 $06
    inc b                                         ; $4d89: $04
    ld b, $07                                     ; $4d8a: $06 $07
    rlca                                          ; $4d8c: $07
    inc b                                         ; $4d8d: $04
    inc b                                         ; $4d8e: $04
    ld b, $04                                     ; $4d8f: $06 $04
    ld b, $06                                     ; $4d91: $06 $06
    inc b                                         ; $4d93: $04
    ld b, $04                                     ; $4d94: $06 $04
    ld bc, $0e02                                  ; $4d96: $01 $02 $0e
    rrca                                          ; $4d99: $0f
    dec hl                                        ; $4d9a: $2b
    inc l                                         ; $4d9b: $2c
    sbc b                                         ; $4d9c: $98
    ld de, $302f                                  ; $4d9d: $11 $2f $30
    sbc c                                         ; $4da0: $99
    sbc d                                         ; $4da1: $9a
    rla                                           ; $4da2: $17
    jr @+$1b                                      ; $4da3: $18 $19

    ld a, [de]                                    ; $4da5: $1a
    ld [bc], a                                    ; $4da6: $02
    ld [bc], a                                    ; $4da7: $02
    ld [bc], a                                    ; $4da8: $02
    ld [bc], a                                    ; $4da9: $02
    ld [bc], a                                    ; $4daa: $02
    ld bc, $0209                                  ; $4dab: $01 $09 $02
    ld [bc], a                                    ; $4dae: $02
    ld bc, $0a09                                  ; $4daf: $01 $09 $0a
    ld a, [bc]                                    ; $4db2: $0a
    add hl, bc                                    ; $4db3: $09
    add hl, bc                                    ; $4db4: $09
    ld a, [bc]                                    ; $4db5: $0a
    db $db                                        ; $4db6: $db
    jp c, Jump_000_3435                           ; $4db7: $da $35 $34

    rst $18                                       ; $4dba: $df
    sbc $37                                       ; $4dbb: $de $37
    ld [hl], $e3                                  ; $4dbd: $36 $e3
    ld [c], a                                     ; $4dbf: $e2
    add hl, sp                                    ; $4dc0: $39
    jr c, @-$05                                   ; $4dc1: $38 $f9

    ld hl, sp+$3b                                 ; $4dc3: $f8 $3b
    ld a, [hl-]                                   ; $4dc5: $3a
    inc h                                         ; $4dc6: $24

jr_07a_4dc7:
    ld h, $24                                     ; $4dc7: $26 $24
    daa                                           ; $4dc9: $27
    inc h                                         ; $4dca: $24
    ld h, $26                                     ; $4dcb: $26 $26
    ld h, $27                                     ; $4dcd: $26 $27
    inc h                                         ; $4dcf: $24
    ld h, $24                                     ; $4dd0: $26 $24
    inc h                                         ; $4dd2: $24
    ld h, $24                                     ; $4dd3: $26 $24
    inc h                                         ; $4dd5: $24
    jp c, $38db                                   ; $4dd6: $da $db $38

    add hl, sp                                    ; $4dd9: $39
    sbc $df                                       ; $4dda: $de $df
    ld a, [hl-]                                   ; $4ddc: $3a
    dec sp                                        ; $4ddd: $3b
    ld [c], a                                     ; $4dde: $e2
    db $e3                                        ; $4ddf: $e3
    ld c, $59                                     ; $4de0: $0e $59
    ld hl, sp-$07                                 ; $4de2: $f8 $f9
    ld e, e                                       ; $4de4: $5b
    ld b, d                                       ; $4de5: $42
    rlca                                          ; $4de6: $07
    ld b, $06                                     ; $4de7: $06 $06
    rlca                                          ; $4de9: $07
    rlca                                          ; $4dea: $07
    inc b                                         ; $4deb: $04
    inc b                                         ; $4dec: $04
    ld b, $06                                     ; $4ded: $06 $06
    inc b                                         ; $4def: $04
    dec b                                         ; $4df0: $05
    dec b                                         ; $4df1: $05
    inc b                                         ; $4df2: $04
    inc b                                         ; $4df3: $04
    ld [bc], a                                    ; $4df4: $02
    ld bc, $307d                                  ; $4df5: $01 $7d $30
    ld b, l                                       ; $4df8: $45
    ld b, [hl]                                    ; $4df9: $46
    add c                                         ; $4dfa: $81
    ld b, a                                       ; $4dfb: $47
    ld b, h                                       ; $4dfc: $44
    ld c, b                                       ; $4dfd: $48
    dec de                                        ; $4dfe: $1b
    jp Jump_000_1ccb                              ; $4dff: $c3 $cb $1c


    add $c7                                       ; $4e02: $c6 $c7
    call Call_000_054d                            ; $4e04: $cd $4d $05
    dec b                                         ; $4e07: $05
    dec b                                         ; $4e08: $05
    ld [bc], a                                    ; $4e09: $02
    dec bc                                        ; $4e0a: $0b
    ld bc, $0203                                  ; $4e0b: $01 $03 $02
    add hl, bc                                    ; $4e0e: $09
    dec bc                                        ; $4e0f: $0b
    dec bc                                        ; $4e10: $0b
    add hl, bc                                    ; $4e11: $09
    ld a, [bc]                                    ; $4e12: $0a
    add hl, bc                                    ; $4e13: $09
    dec bc                                        ; $4e14: $0b
    inc bc                                        ; $4e15: $03
    inc d                                         ; $4e16: $14
    dec d                                         ; $4e17: $15
    ld d, $17                                     ; $4e18: $16 $17
    ld c, [hl]                                    ; $4e1a: $4e
    ld c, a                                       ; $4e1b: $4f
    ld a, [de]                                    ; $4e1c: $1a
    db $dd                                        ; $4e1d: $dd
    ld d, c                                       ; $4e1e: $51
    ld d, d                                       ; $4e1f: $52
    ld d, e                                       ; $4e20: $53
    ei                                            ; $4e21: $fb
    ld d, l                                       ; $4e22: $55
    ld d, [hl]                                    ; $4e23: $56
    ld d, a                                       ; $4e24: $57
    ld c, e                                       ; $4e25: $4b
    ld bc, $0301                                  ; $4e26: $01 $01 $03
    ld bc, $0301                                  ; $4e29: $01 $01 $03
    ld bc, $0309                                  ; $4e2c: $01 $09 $03
    inc bc                                        ; $4e2f: $03
    ld [bc], a                                    ; $4e30: $02
    ld bc, $0101                                  ; $4e31: $01 $01 $01
    ld bc, $4502                                  ; $4e34: $01 $02 $45
    ld b, [hl]                                    ; $4e37: $46
    ld e, a                                       ; $4e38: $5f
    ld h, b                                       ; $4e39: $60
    ld b, h                                       ; $4e3a: $44
    ld c, b                                       ; $4e3b: $48
    ld c, [hl]                                    ; $4e3c: $4e
    ld h, c                                       ; $4e3d: $61
    ld c, c                                       ; $4e3e: $49
    ld c, d                                       ; $4e3f: $4a
    dec e                                         ; $4e40: $1d
    ld e, $4c                                     ; $4e41: $1e $4c
    ld c, l                                       ; $4e43: $4d
    ld d, l                                       ; $4e44: $55
    rra                                           ; $4e45: $1f
    ld [bc], a                                    ; $4e46: $02
    dec b                                         ; $4e47: $05

Call_07a_4e48:
    dec b                                         ; $4e48: $05
    dec b                                         ; $4e49: $05
    ld bc, $0301                                  ; $4e4a: $01 $01 $03
    ld [bc], a                                    ; $4e4d: $02
    inc bc                                        ; $4e4e: $03
    ld bc, $090a                                  ; $4e4f: $01 $0a $09
    ld bc, $0101                                  ; $4e52: $01 $01 $01
    add hl, bc                                    ; $4e55: $09
    ld a, l                                       ; $4e56: $7d
    jr nc, jr_07a_4e9e                            ; $4e57: $30 $45

    ld b, [hl]                                    ; $4e59: $46
    add c                                         ; $4e5a: $81
    ld b, a                                       ; $4e5b: $47
    ld b, h                                       ; $4e5c: $44
    ld c, b                                       ; $4e5d: $48
    jr nz, @-$0b                                  ; $4e5e: $20 $f3

    ld c, c                                       ; $4e60: $49
    ld c, d                                       ; $4e61: $4a
    ld hl, $4c4b                                  ; $4e62: $21 $4b $4c
    ld c, l                                       ; $4e65: $4d
    dec b                                         ; $4e66: $05
    ld [bc], a                                    ; $4e67: $02
    ld bc, $0901                                  ; $4e68: $01 $01 $09
    inc bc                                        ; $4e6b: $03
    inc bc                                        ; $4e6c: $03
    ld bc, $0909                                  ; $4e6d: $01 $09 $09
    inc bc                                        ; $4e70: $03
    inc bc                                        ; $4e71: $03
    dec bc                                        ; $4e72: $0b
    ld bc, $0101                                  ; $4e73: $01 $01 $01
    ret                                           ; $4e76: $c9


    jp z, Jump_07a_59ce                           ; $4e77: $ca $ce $59

    add e                                         ; $4e7a: $83
    add h                                         ; $4e7b: $84
    ld [hl+], a                                   ; $4e7c: $22
    ld hl, $d1d1                                  ; $4e7d: $21 $d1 $d1
    pop de                                        ; $4e80: $d1
    call nc, $d427                                ; $4e81: $d4 $27 $d4
    pop de                                        ; $4e84: $d1
    push de                                       ; $4e85: $d5
    add hl, bc                                    ; $4e86: $09
    add hl, bc                                    ; $4e87: $09
    add hl, bc                                    ; $4e88: $09
    ld bc, $8f8f                                  ; $4e89: $01 $8f $8f
    and [hl]                                      ; $4e8c: $a6
    and h                                         ; $4e8d: $a4
    add h                                         ; $4e8e: $84
    add h                                         ; $4e8f: $84
    add h                                         ; $4e90: $84
    add a                                         ; $4e91: $87
    inc b                                         ; $4e92: $04
    inc h                                         ; $4e93: $24
    inc b                                         ; $4e94: $04
    add h                                         ; $4e95: $84
    rst $38                                       ; $4e96: $ff
    ld e, h                                       ; $4e97: $5c
    adc c                                         ; $4e98: $89
    ld [bc], a                                    ; $4e99: $02
    ld [de], a                                    ; $4e9a: $12
    inc de                                        ; $4e9b: $13
    dec hl                                        ; $4e9c: $2b
    inc l                                         ; $4e9d: $2c

jr_07a_4e9e:
    dec l                                         ; $4e9e: $2d
    ld l, $2f                                     ; $4e9f: $2e $2f
    jr nc, @+$1a                                  ; $4ea1: $30 $18

    ld sp, $3332                                  ; $4ea3: $31 $32 $33
    ld bc, $0903                                  ; $4ea6: $01 $03 $09
    ld bc, $0101                                  ; $4ea9: $01 $01 $01
    ld bc, $0203                                  ; $4eac: $01 $03 $02
    ld bc, $0103                                  ; $4eaf: $01 $03 $01
    ld [bc], a                                    ; $4eb2: $02
    ld bc, $0101                                  ; $4eb3: $01 $01 $01
    ld c, $0f                                     ; $4eb6: $0e $0f
    rst $38                                       ; $4eb8: $ff
    ld hl, $1198                                  ; $4eb9: $21 $98 $11
    ld [de], a                                    ; $4ebc: $12
    db $d3                                        ; $4ebd: $d3
    sbc c                                         ; $4ebe: $99
    sbc d                                         ; $4ebf: $9a
    dec l                                         ; $4ec0: $2d
    call nc, $a7b1                                ; $4ec1: $d4 $b1 $a7
    jr @+$26                                      ; $4ec4: $18 $24

    ld bc, $0101                                  ; $4ec6: $01 $01 $01
    add h                                         ; $4ec9: $84
    add hl, bc                                    ; $4eca: $09
    ld bc, $a402                                  ; $4ecb: $01 $02 $a4
    add hl, bc                                    ; $4ece: $09
    add hl, bc                                    ; $4ecf: $09
    ld [bc], a                                    ; $4ed0: $02
    inc h                                         ; $4ed1: $24
    dec bc                                        ; $4ed2: $0b
    add hl, bc                                    ; $4ed3: $09
    ld [bc], a                                    ; $4ed4: $02
    inc h                                         ; $4ed5: $24
    ld [hl+], a                                   ; $4ed6: $22
    ld hl, $590e                                  ; $4ed7: $21 $0e $59
    pop de                                        ; $4eda: $d1
    ld [hl+], a                                   ; $4edb: $22
    add e                                         ; $4edc: $83
    add h                                         ; $4edd: $84
    pop de                                        ; $4ede: $d1
    pop de                                        ; $4edf: $d1
    pop de                                        ; $4ee0: $d1
    pop de                                        ; $4ee1: $d1
    call nc, $d1d1                                ; $4ee2: $d4 $d1 $d1
    pop de                                        ; $4ee5: $d1
    add [hl]                                      ; $4ee6: $86
    and h                                         ; $4ee7: $a4
    ld [bc], a                                    ; $4ee8: $02
    ld bc, $8484                                  ; $4ee9: $01 $84 $84
    adc [hl]                                      ; $4eec: $8e
    adc a                                         ; $4eed: $8f
    inc b                                         ; $4eee: $04
    add h                                         ; $4eef: $84
    add h                                         ; $4ef0: $84
    add h                                         ; $4ef1: $84
    inc h                                         ; $4ef2: $24
    inc b                                         ; $4ef3: $04
    inc b                                         ; $4ef4: $04
    inc b                                         ; $4ef5: $04
    add hl, hl                                    ; $4ef6: $29
    push de                                       ; $4ef7: $d5
    pop de                                        ; $4ef8: $d1
    rst $30                                       ; $4ef9: $f7
    dec [hl]                                      ; $4efa: $35
    rst $30                                       ; $4efb: $f7
    pop de                                        ; $4efc: $d1
    ld [hl+], a                                   ; $4efd: $22
    scf                                           ; $4efe: $37
    or $d1                                        ; $4eff: $f6 $d1
    pop de                                        ; $4f01: $d1
    add hl, sp                                    ; $4f02: $39
    jp nc, $d1d1                                  ; $4f03: $d2 $d1 $d1

    inc b                                         ; $4f06: $04
    daa                                           ; $4f07: $27
    inc b                                         ; $4f08: $04
    and h                                         ; $4f09: $a4
    inc b                                         ; $4f0a: $04
    inc b                                         ; $4f0b: $04
    inc b                                         ; $4f0c: $04
    and h                                         ; $4f0d: $a4
    inc b                                         ; $4f0e: $04
    add [hl]                                      ; $4f0f: $86
    add h                                         ; $4f10: $84
    add h                                         ; $4f11: $84
    rlca                                          ; $4f12: $07
    and a                                         ; $4f13: $a7
    add h                                         ; $4f14: $84
    inc b                                         ; $4f15: $04
    ld [hl+], a                                   ; $4f16: $22
    inc hl                                        ; $4f17: $23
    inc h                                         ; $4f18: $24
    ei                                            ; $4f19: $fb
    ld hl, $0a09                                  ; $4f1a: $21 $09 $0a
    dec h                                         ; $4f1d: $25
    jp nc, $0100                                  ; $4f1e: $d2 $00 $01

    ld [bc], a                                    ; $4f21: $02
    ld [hl+], a                                   ; $4f22: $22
    ld hl, $2c2b                                  ; $4f23: $21 $2b $2c
    ld a, [bc]                                    ; $4f26: $0a
    add hl, bc                                    ; $4f27: $09
    add hl, bc                                    ; $4f28: $09
    ld bc, $09a7                                  ; $4f29: $01 $a7 $09
    add hl, bc                                    ; $4f2c: $09
    add hl, bc                                    ; $4f2d: $09
    add a                                         ; $4f2e: $87
    ld [bc], a                                    ; $4f2f: $02
    ld [bc], a                                    ; $4f30: $02
    ld [bc], a                                    ; $4f31: $02
    and h                                         ; $4f32: $a4
    and h                                         ; $4f33: $a4
    ld [bc], a                                    ; $4f34: $02
    ld [bc], a                                    ; $4f35: $02
    rlca                                          ; $4f36: $07
    ld [$d709], sp                                ; $4f37: $08 $09 $d7
    dec bc                                        ; $4f3a: $0b
    inc c                                         ; $4f3b: $0c
    dec c                                         ; $4f3c: $0d
    db $db                                        ; $4f3d: $db
    ld c, $0f                                     ; $4f3e: $0e $0f
    rst $38                                       ; $4f40: $ff
    rst $18                                       ; $4f41: $df
    sbc b                                         ; $4f42: $98
    ld de, $e312                                  ; $4f43: $11 $12 $e3
    ld bc, $0201                                  ; $4f46: $01 $01 $02
    ld h, $01                                     ; $4f49: $26 $01
    ld [bc], a                                    ; $4f4b: $02
    ld [bc], a                                    ; $4f4c: $02
    inc h                                         ; $4f4d: $24
    ld bc, $0202                                  ; $4f4e: $01 $02 $02
    ld h, $0a                                     ; $4f51: $26 $0a
    ld [bc], a                                    ; $4f53: $02
    ld [bc], a                                    ; $4f54: $02
    inc h                                         ; $4f55: $24
    push de                                       ; $4f56: $d5
    pop de                                        ; $4f57: $d1
    pop de                                        ; $4f58: $d1
    pop de                                        ; $4f59: $d1
    rst $30                                       ; $4f5a: $f7
    pop de                                        ; $4f5b: $d1
    pop de                                        ; $4f5c: $d1
    pop de                                        ; $4f5d: $d1
    or $d1                                        ; $4f5e: $f6 $d1
    pop de                                        ; $4f60: $d1
    pop de                                        ; $4f61: $d1
    jp nc, $d1d1                                  ; $4f62: $d2 $d1 $d1

    pop de                                        ; $4f65: $d1
    daa                                           ; $4f66: $27
    inc b                                         ; $4f67: $04
    inc b                                         ; $4f68: $04
    inc b                                         ; $4f69: $04
    ld b, $04                                     ; $4f6a: $06 $04
    inc b                                         ; $4f6c: $04
    inc b                                         ; $4f6d: $04
    inc b                                         ; $4f6e: $04
    inc b                                         ; $4f6f: $04
    inc b                                         ; $4f70: $04
    inc b                                         ; $4f71: $04
    daa                                           ; $4f72: $27
    inc b                                         ; $4f73: $04
    inc b                                         ; $4f74: $04
    inc b                                         ; $4f75: $04
    ldh [$f7], a                                  ; $4f76: $e0 $f7
    cp a                                          ; $4f78: $bf
    cp [hl]                                       ; $4f79: $be
    db $e4                                        ; $4f7a: $e4
    or $b6                                        ; $4f7b: $f6 $b6
    or a                                          ; $4f7d: $b7
    rst $38                                       ; $4f7e: $ff
    jp nc, $b9b8                                  ; $4f7f: $d2 $b8 $b9

    ld e, l                                       ; $4f82: $5d
    db $d3                                        ; $4f83: $d3
    cp d                                          ; $4f84: $ba
    cp e                                          ; $4f85: $bb
    ld b, $04                                     ; $4f86: $06 $04
    cpl                                           ; $4f88: $2f
    cpl                                           ; $4f89: $2f
    inc b                                         ; $4f8a: $04
    inc b                                         ; $4f8b: $04
    rrca                                          ; $4f8c: $0f
    inc c                                         ; $4f8d: $0c
    dec b                                         ; $4f8e: $05
    inc h                                         ; $4f8f: $24
    inc c                                         ; $4f90: $0c
    rrca                                          ; $4f91: $0f
    ld bc, $2f24                                  ; $4f92: $01 $24 $2f
    inc l                                         ; $4f95: $2c
    cp l                                          ; $4f96: $bd
    cp c                                          ; $4f97: $b9
    cp b                                          ; $4f98: $b8
    rst $30                                       ; $4f99: $f7
    cp h                                          ; $4f9a: $bc
    cp e                                          ; $4f9b: $bb
    cp d                                          ; $4f9c: $ba
    or $bd                                        ; $4f9d: $f6 $bd
    cp [hl]                                       ; $4f9f: $be
    cp a                                          ; $4fa0: $bf
    jp nc, $b7bc                                  ; $4fa1: $d2 $bc $b7

    or [hl]                                       ; $4fa4: $b6
    db $d3                                        ; $4fa5: $d3
    cpl                                           ; $4fa6: $2f
    cpl                                           ; $4fa7: $2f
    cpl                                           ; $4fa8: $2f
    add h                                         ; $4fa9: $84
    rrca                                          ; $4faa: $0f
    inc c                                         ; $4fab: $0c
    rrca                                          ; $4fac: $0f
    add h                                         ; $4fad: $84
    rrca                                          ; $4fae: $0f
    inc c                                         ; $4faf: $0c
    rrca                                          ; $4fb0: $0f
    and h                                         ; $4fb1: $a4
    cpl                                           ; $4fb2: $2f
    cpl                                           ; $4fb3: $2f
    cpl                                           ; $4fb4: $2f
    and h                                         ; $4fb5: $a4
    ld e, a                                       ; $4fb6: $5f
    ld h, b                                       ; $4fb7: $60
    rla                                           ; $4fb8: $17
    ld b, l                                       ; $4fb9: $45
    ld c, [hl]                                    ; $4fba: $4e
    ld h, c                                       ; $4fbb: $61
    db $dd                                        ; $4fbc: $dd
    ld b, h                                       ; $4fbd: $44
    ld d, c                                       ; $4fbe: $51
    ld d, d                                       ; $4fbf: $52
    ld d, e                                       ; $4fc0: $53
    ei                                            ; $4fc1: $fb
    ld d, l                                       ; $4fc2: $55
    ld d, [hl]                                    ; $4fc3: $56
    ld d, a                                       ; $4fc4: $57
    ld h, $03                                     ; $4fc5: $26 $03
    ld [bc], a                                    ; $4fc7: $02
    dec b                                         ; $4fc8: $05
    dec b                                         ; $4fc9: $05
    ld bc, $0901                                  ; $4fca: $01 $01 $09
    ld bc, $0101                                  ; $4fcd: $01 $01 $01
    ld bc, $0301                                  ; $4fd0: $01 $01 $03
    ld bc, $0903                                  ; $4fd3: $01 $03 $09
    ld b, [hl]                                    ; $4fd6: $46
    ld e, a                                       ; $4fd7: $5f
    ld e, a                                       ; $4fd8: $5f
    call nc, Call_07a_4e48                        ; $4fd9: $d4 $48 $4e
    ld c, [hl]                                    ; $4fdc: $4e
    push de                                       ; $4fdd: $d5
    ld c, d                                       ; $4fde: $4a
    dec e                                         ; $4fdf: $1d
    ld d, c                                       ; $4fe0: $51
    rst $30                                       ; $4fe1: $f7
    daa                                           ; $4fe2: $27
    ld c, l                                       ; $4fe3: $4d
    ld d, l                                       ; $4fe4: $55
    or $05                                        ; $4fe5: $f6 $05
    dec b                                         ; $4fe7: $05
    dec b                                         ; $4fe8: $05
    and h                                         ; $4fe9: $a4
    ld bc, $0502                                  ; $4fea: $01 $02 $05
    and [hl]                                      ; $4fed: $a6
    ld bc, $050a                                  ; $4fee: $01 $0a $05
    add a                                         ; $4ff1: $87
    add hl, bc                                    ; $4ff2: $09
    ld [bc], a                                    ; $4ff3: $02
    dec b                                         ; $4ff4: $05
    add h                                         ; $4ff5: $84
    rst $38                                       ; $4ff6: $ff
    ld e, h                                       ; $4ff7: $5c
    adc c                                         ; $4ff8: $89
    ld e, b                                       ; $4ff9: $58
    add [hl]                                      ; $4ffa: $86
    add a                                         ; $4ffb: $87
    adc b                                         ; $4ffc: $88
    inc hl                                        ; $4ffd: $23
    pop de                                        ; $4ffe: $d1
    pop de                                        ; $4fff: $d1
    pop de                                        ; $5000: $d1
    pop de                                        ; $5001: $d1
    pop de                                        ; $5002: $d1
    pop de                                        ; $5003: $d1
    pop de                                        ; $5004: $d1
    pop de                                        ; $5005: $d1
    ld bc, $0903                                  ; $5006: $01 $03 $09
    inc bc                                        ; $5009: $03
    adc h                                         ; $500a: $8c
    adc h                                         ; $500b: $8c
    adc h                                         ; $500c: $8c
    add a                                         ; $500d: $87
    add h                                         ; $500e: $84
    add h                                         ; $500f: $84
    add h                                         ; $5010: $84
    add h                                         ; $5011: $84
    inc b                                         ; $5012: $04
    inc b                                         ; $5013: $04
    inc b                                         ; $5014: $04
    inc b                                         ; $5015: $04
    ld c, $59                                     ; $5016: $0e $59
    ld hl, $2222                                  ; $5018: $21 $22 $22
    add e                                         ; $501b: $83
    add h                                         ; $501c: $84
    pop de                                        ; $501d: $d1
    pop de                                        ; $501e: $d1
    pop de                                        ; $501f: $d1
    pop de                                        ; $5020: $d1
    pop de                                        ; $5021: $d1
    pop de                                        ; $5022: $d1
    pop de                                        ; $5023: $d1
    pop de                                        ; $5024: $d1
    pop de                                        ; $5025: $d1
    ld bc, $8402                                  ; $5026: $01 $02 $84
    add h                                         ; $5029: $84
    add h                                         ; $502a: $84
    adc a                                         ; $502b: $8f
    adc h                                         ; $502c: $8c
    add h                                         ; $502d: $84
    add h                                         ; $502e: $84
    add h                                         ; $502f: $84
    add h                                         ; $5030: $84
    add h                                         ; $5031: $84
    inc b                                         ; $5032: $04
    inc b                                         ; $5033: $04
    inc b                                         ; $5034: $04
    inc b                                         ; $5035: $04
    pop de                                        ; $5036: $d1
    pop de                                        ; $5037: $d1
    pop de                                        ; $5038: $d1
    call nc, $d1d1                                ; $5039: $d4 $d1 $d1
    pop de                                        ; $503c: $d1
    push de                                       ; $503d: $d5
    pop de                                        ; $503e: $d1
    pop de                                        ; $503f: $d1
    pop de                                        ; $5040: $d1
    rst $30                                       ; $5041: $f7
    pop de                                        ; $5042: $d1
    pop de                                        ; $5043: $d1
    pop de                                        ; $5044: $d1
    or $04                                        ; $5045: $f6 $04
    inc b                                         ; $5047: $04
    add h                                         ; $5048: $84
    add h                                         ; $5049: $84
    inc b                                         ; $504a: $04
    inc b                                         ; $504b: $04
    add h                                         ; $504c: $84
    add a                                         ; $504d: $87
    inc b                                         ; $504e: $04
    inc b                                         ; $504f: $04
    add h                                         ; $5050: $84
    and [hl]                                      ; $5051: $a6
    inc b                                         ; $5052: $04
    inc b                                         ; $5053: $04
    add h                                         ; $5054: $84
    and [hl]                                      ; $5055: $a6
    ld e, a                                       ; $5056: $5f
    ld h, b                                       ; $5057: $60
    jr z, @+$2b                                   ; $5058: $28 $29

    ld c, [hl]                                    ; $505a: $4e
    ld h, c                                       ; $505b: $61
    add c                                         ; $505c: $81
    ld b, a                                       ; $505d: $47
    ld d, c                                       ; $505e: $51
    pop bc                                        ; $505f: $c1
    dec de                                        ; $5060: $1b
    jp $c512                                      ; $5061: $c3 $12 $c5


    add $c7                                       ; $5064: $c6 $c7
    ld [bc], a                                    ; $5066: $02
    inc bc                                        ; $5067: $03
    add hl, bc                                    ; $5068: $09
    add hl, bc                                    ; $5069: $09
    ld [bc], a                                    ; $506a: $02
    inc bc                                        ; $506b: $03
    ld a, [bc]                                    ; $506c: $0a
    ld bc, $0b02                                  ; $506d: $01 $02 $0b
    add hl, bc                                    ; $5070: $09
    dec bc                                        ; $5071: $0b
    ld a, [bc]                                    ; $5072: $0a
    add hl, bc                                    ; $5073: $09
    dec bc                                        ; $5074: $0b
    add hl, bc                                    ; $5075: $09
    ld a, [hl+]                                   ; $5076: $2a
    ld b, [hl]                                    ; $5077: $46
    rst $30                                       ; $5078: $f7
    pop de                                        ; $5079: $d1
    ld b, h                                       ; $507a: $44
    ld c, b                                       ; $507b: $48
    or $d1                                        ; $507c: $f6 $d1
    rr h                                          ; $507e: $cb $1c
    rst $30                                       ; $5080: $f7
    pop de                                        ; $5081: $d1
    call $f64d                                    ; $5082: $cd $4d $f6
    pop de                                        ; $5085: $d1
    add hl, bc                                    ; $5086: $09
    ld bc, $8484                                  ; $5087: $01 $84 $84
    inc bc                                        ; $508a: $03
    ld [bc], a                                    ; $508b: $02
    add a                                         ; $508c: $87
    add h                                         ; $508d: $84
    dec bc                                        ; $508e: $0b
    ld a, [bc]                                    ; $508f: $0a
    add [hl]                                      ; $5090: $86
    add h                                         ; $5091: $84
    add hl, bc                                    ; $5092: $09
    ld [bc], a                                    ; $5093: $02
    add a                                         ; $5094: $87
    add h                                         ; $5095: $84
    pop de                                        ; $5096: $d1
    pop de                                        ; $5097: $d1
    pop de                                        ; $5098: $d1
    jp nc, $d1d1                                  ; $5099: $d2 $d1 $d1

    pop de                                        ; $509c: $d1
    db $d3                                        ; $509d: $d3
    pop de                                        ; $509e: $d1
    pop de                                        ; $509f: $d1
    pop de                                        ; $50a0: $d1
    call nc, $d1d1                                ; $50a1: $d4 $d1 $d1
    pop de                                        ; $50a4: $d1
    push de                                       ; $50a5: $d5
    inc b                                         ; $50a6: $04
    inc b                                         ; $50a7: $04
    add h                                         ; $50a8: $84
    add a                                         ; $50a9: $87
    inc b                                         ; $50aa: $04
    inc b                                         ; $50ab: $04
    add h                                         ; $50ac: $84
    add a                                         ; $50ad: $87
    inc b                                         ; $50ae: $04
    inc b                                         ; $50af: $04
    add h                                         ; $50b0: $84
    add h                                         ; $50b1: $84
    inc b                                         ; $50b2: $04
    inc b                                         ; $50b3: $04
    add h                                         ; $50b4: $84
    add h                                         ; $50b5: $84
    inc de                                        ; $50b6: $13
    ret z                                         ; $50b7: $c8

    ret                                           ; $50b8: $c9


    jp z, $5e5d                                   ; $50b9: $ca $5d $5e

    ld [hl], l                                    ; $50bc: $75
    ld e, d                                       ; $50bd: $5a
    ld e, a                                       ; $50be: $5f
    ld h, b                                       ; $50bf: $60
    ld a, l                                       ; $50c0: $7d
    jr nc, jr_07a_5111                            ; $50c1: $30 $4e

    ld h, c                                       ; $50c3: $61
    add c                                         ; $50c4: $81
    ld b, a                                       ; $50c5: $47
    ld a, [bc]                                    ; $50c6: $0a
    add hl, bc                                    ; $50c7: $09
    add hl, bc                                    ; $50c8: $09
    ld a, [bc]                                    ; $50c9: $0a
    ld [bc], a                                    ; $50ca: $02
    ld [bc], a                                    ; $50cb: $02
    ld bc, $0201                                  ; $50cc: $01 $01 $02
    ld bc, $0303                                  ; $50cf: $01 $03 $03
    ld [bc], a                                    ; $50d2: $02
    ld bc, $010b                                  ; $50d3: $01 $0b $01
    adc $59                                       ; $50d6: $ce $59
    jp nc, $5bd1                                  ; $50d8: $d2 $d1 $5b

    ld b, d                                       ; $50db: $42
    db $d3                                        ; $50dc: $d3
    pop de                                        ; $50dd: $d1
    ld b, l                                       ; $50de: $45
    ld b, [hl]                                    ; $50df: $46
    call nc, Call_07a_44d1                        ; $50e0: $d4 $d1 $44
    ld c, b                                       ; $50e3: $48
    push de                                       ; $50e4: $d5
    pop de                                        ; $50e5: $d1
    add hl, bc                                    ; $50e6: $09
    ld [bc], a                                    ; $50e7: $02
    and a                                         ; $50e8: $a7
    add h                                         ; $50e9: $84
    ld bc, $a602                                  ; $50ea: $01 $02 $a6
    add h                                         ; $50ed: $84
    ld [bc], a                                    ; $50ee: $02
    ld [bc], a                                    ; $50ef: $02
    and [hl]                                      ; $50f0: $a6
    add h                                         ; $50f1: $84
    ld [bc], a                                    ; $50f2: $02
    ld [bc], a                                    ; $50f3: $02
    and [hl]                                      ; $50f4: $a6
    add h                                         ; $50f5: $84
    pop de                                        ; $50f6: $d1
    pop de                                        ; $50f7: $d1
    add a                                         ; $50f8: $87
    ld [hl+], a                                   ; $50f9: $22
    pop de                                        ; $50fa: $d1
    pop de                                        ; $50fb: $d1
    pop de                                        ; $50fc: $d1
    pop de                                        ; $50fd: $d1
    pop de                                        ; $50fe: $d1
    pop de                                        ; $50ff: $d1
    pop de                                        ; $5100: $d1
    pop de                                        ; $5101: $d1
    pop de                                        ; $5102: $d1
    pop de                                        ; $5103: $d1
    pop de                                        ; $5104: $d1
    pop de                                        ; $5105: $d1
    add h                                         ; $5106: $84
    add h                                         ; $5107: $84
    adc h                                         ; $5108: $8c
    and h                                         ; $5109: $a4
    inc b                                         ; $510a: $04
    inc b                                         ; $510b: $04
    inc b                                         ; $510c: $04
    add h                                         ; $510d: $84
    inc b                                         ; $510e: $04
    inc b                                         ; $510f: $04
    inc b                                         ; $5110: $04

jr_07a_5111:
    inc b                                         ; $5111: $04
    inc b                                         ; $5112: $04
    inc b                                         ; $5113: $04
    inc b                                         ; $5114: $04
    inc b                                         ; $5115: $04
    ld hl, $2f2e                                  ; $5116: $21 $2e $2f
    jr nc, @+$24                                  ; $5119: $30 $22

    ld hl, $3332                                  ; $511b: $21 $32 $33
    pop de                                        ; $511e: $d1
    rst $30                                       ; $511f: $f7
    ld a, [$b4fb]                                 ; $5120: $fa $fb $b4
    or $fc                                        ; $5123: $f6 $fc
    cp $a4                                        ; $5125: $fe $a4
    ld bc, $0102                                  ; $5127: $01 $02 $01
    and h                                         ; $512a: $a4
    and h                                         ; $512b: $a4
    ld [bc], a                                    ; $512c: $02
    ld [bc], a                                    ; $512d: $02
    add h                                         ; $512e: $84
    and a                                         ; $512f: $a7
    ld [bc], a                                    ; $5130: $02
    ld [bc], a                                    ; $5131: $02
    xor h                                         ; $5132: $ac
    and a                                         ; $5133: $a7
    ld [bc], a                                    ; $5134: $02
    ld [bc], a                                    ; $5135: $02
    pop de                                        ; $5136: $d1
    jp nc, $0201                                  ; $5137: $d2 $01 $02

    pop de                                        ; $513a: $d1
    ld [hl+], a                                   ; $513b: $22
    ld hl, $d12b                                  ; $513c: $21 $2b $d1
    pop de                                        ; $513f: $d1
    pop de                                        ; $5140: $d1
    add e                                         ; $5141: $83
    pop de                                        ; $5142: $d1
    pop de                                        ; $5143: $d1
    pop de                                        ; $5144: $d1
    pop de                                        ; $5145: $d1
    add h                                         ; $5146: $84
    add h                                         ; $5147: $84
    ld [bc], a                                    ; $5148: $02
    ld [bc], a                                    ; $5149: $02
    add h                                         ; $514a: $84
    and h                                         ; $514b: $a4
    and h                                         ; $514c: $a4
    adc l                                         ; $514d: $8d
    inc b                                         ; $514e: $04
    inc b                                         ; $514f: $04
    add h                                         ; $5150: $84
    adc h                                         ; $5151: $8c
    inc b                                         ; $5152: $04
    inc b                                         ; $5153: $04
    inc b                                         ; $5154: $04
    add h                                         ; $5155: $84
    sbc c                                         ; $5156: $99
    sbc d                                         ; $5157: $9a
    dec l                                         ; $5158: $2d
    ld l, $b1                                     ; $5159: $2e $b1
    and a                                         ; $515b: $a7
    jr @+$2e                                      ; $515c: $18 $2c

    rlca                                          ; $515e: $07
    ld [$2d09], sp                                ; $515f: $08 $09 $2d
    dec bc                                        ; $5162: $0b
    inc c                                         ; $5163: $0c
    dec c                                         ; $5164: $0d
    db $fd                                        ; $5165: $fd
    ld a, [bc]                                    ; $5166: $0a
    ld a, [bc]                                    ; $5167: $0a
    ld [bc], a                                    ; $5168: $02
    ld [bc], a                                    ; $5169: $02
    ld a, [bc]                                    ; $516a: $0a
    ld a, [bc]                                    ; $516b: $0a
    ld [bc], a                                    ; $516c: $02
    ld a, [bc]                                    ; $516d: $0a
    ld [bc], a                                    ; $516e: $02
    ld [bc], a                                    ; $516f: $02
    ld [bc], a                                    ; $5170: $02
    ld a, [bc]                                    ; $5171: $0a
    ld [bc], a                                    ; $5172: $02
    ld [bc], a                                    ; $5173: $02
    ld [bc], a                                    ; $5174: $02
    ld [bc], a                                    ; $5175: $02
    cpl                                           ; $5176: $2f
    ld sp, hl                                     ; $5177: $f9
    ld hl, sp+$3a                                 ; $5178: $f8 $3a
    ld l, $2f                                     ; $517a: $2e $2f
    or c                                          ; $517c: $b1
    and a                                         ; $517d: $a7
    jr nc, jr_07a_51b1                            ; $517e: $30 $31

    rlca                                          ; $5180: $07
    ld [$fefc], sp                                ; $5181: $08 $fc $fe
    dec bc                                        ; $5184: $0b
    inc c                                         ; $5185: $0c
    ld [bc], a                                    ; $5186: $02
    inc h                                         ; $5187: $24
    inc h                                         ; $5188: $24
    ld b, $0a                                     ; $5189: $06 $0a
    ld a, [bc]                                    ; $518b: $0a
    dec c                                         ; $518c: $0d
    dec c                                         ; $518d: $0d
    dec c                                         ; $518e: $0d
    ld a, [bc]                                    ; $518f: $0a
    dec b                                         ; $5190: $05
    ld [bc], a                                    ; $5191: $02
    ld [bc], a                                    ; $5192: $02
    ld [bc], a                                    ; $5193: $02
    ld [bc], a                                    ; $5194: $02
    dec b                                         ; $5195: $05
    dec sp                                        ; $5196: $3b
    db $e4                                        ; $5197: $e4
    push hl                                       ; $5198: $e5
    ld a, [c]                                     ; $5199: $f2
    jr jr_07a_51cd                                ; $519a: $18 $31

    ld [hl-], a                                   ; $519c: $32
    inc sp                                        ; $519d: $33
    add hl, bc                                    ; $519e: $09
    pop bc                                        ; $519f: $c1
    jp nz, $c4c3                                  ; $51a0: $c2 $c3 $c4

    push bc                                       ; $51a3: $c5
    add $c7                                       ; $51a4: $c6 $c7
    inc b                                         ; $51a6: $04
    inc b                                         ; $51a7: $04
    ld b, $04                                     ; $51a8: $06 $04
    dec b                                         ; $51aa: $05
    dec b                                         ; $51ab: $05
    dec b                                         ; $51ac: $05
    dec b                                         ; $51ad: $05
    dec b                                         ; $51ae: $05
    dec c                                         ; $51af: $0d
    dec c                                         ; $51b0: $0d

jr_07a_51b1:
    dec c                                         ; $51b1: $0d
    dec c                                         ; $51b2: $0d
    ld a, [bc]                                    ; $51b3: $0a
    dec c                                         ; $51b4: $0d
    ld a, [bc]                                    ; $51b5: $0a
    di                                            ; $51b6: $f3
    db $f4                                        ; $51b7: $f4
    push af                                       ; $51b8: $f5
    ld a, [hl-]                                   ; $51b9: $3a
    or c                                          ; $51ba: $b1
    and a                                         ; $51bb: $a7
    jr jr_07a_51ef                                ; $51bc: $18 $31

    set 1, h                                      ; $51be: $cb $cc
    add hl, bc                                    ; $51c0: $09
    ld a, [bc]                                    ; $51c1: $0a
    call Call_000_0d0c                            ; $51c2: $cd $0c $0d
    db $fd                                        ; $51c5: $fd
    inc b                                         ; $51c6: $04
    ld b, $04                                     ; $51c7: $06 $04
    ld b, $0d                                     ; $51c9: $06 $0d
    dec c                                         ; $51cb: $0d
    dec b                                         ; $51cc: $05

jr_07a_51cd:
    dec b                                         ; $51cd: $05
    dec c                                         ; $51ce: $0d
    dec c                                         ; $51cf: $0d
    dec b                                         ; $51d0: $05
    ld [bc], a                                    ; $51d1: $02
    dec c                                         ; $51d2: $0d
    ld [bc], a                                    ; $51d3: $02
    ld [bc], a                                    ; $51d4: $02
    ld [bc], a                                    ; $51d5: $02
    ld [hl-], a                                   ; $51d6: $32
    inc sp                                        ; $51d7: $33
    inc [hl]                                      ; $51d8: $34
    dec [hl]                                      ; $51d9: $35
    ld [hl], $37                                  ; $51da: $36 $37
    ld [de], a                                    ; $51dc: $12
    inc de                                        ; $51dd: $13
    add h                                         ; $51de: $84
    add l                                         ; $51df: $85
    add [hl]                                      ; $51e0: $86
    add a                                         ; $51e1: $87
    pop de                                        ; $51e2: $d1
    pop de                                        ; $51e3: $d1
    pop de                                        ; $51e4: $d1
    pop de                                        ; $51e5: $d1
    dec c                                         ; $51e6: $0d
    ld a, [bc]                                    ; $51e7: $0a
    dec c                                         ; $51e8: $0d
    ld a, [bc]                                    ; $51e9: $0a
    ld a, [bc]                                    ; $51ea: $0a
    dec c                                         ; $51eb: $0d
    ld [bc], a                                    ; $51ec: $02
    dec b                                         ; $51ed: $05
    adc h                                         ; $51ee: $8c

jr_07a_51ef:
    adc [hl]                                      ; $51ef: $8e
    adc [hl]                                      ; $51f0: $8e
    adc h                                         ; $51f1: $8c
    add h                                         ; $51f2: $84
    add h                                         ; $51f3: $84
    add h                                         ; $51f4: $84
    add h                                         ; $51f5: $84
    ld bc, $0e02                                  ; $51f6: $01 $02 $0e
    rrca                                          ; $51f9: $0f
    dec hl                                        ; $51fa: $2b
    inc l                                         ; $51fb: $2c
    sbc b                                         ; $51fc: $98
    ld de, $2388                                  ; $51fd: $11 $88 $23
    ld [hl+], a                                   ; $5200: $22
    add e                                         ; $5201: $83
    pop de                                        ; $5202: $d1
    pop de                                        ; $5203: $d1
    pop de                                        ; $5204: $d1
    pop de                                        ; $5205: $d1
    dec b                                         ; $5206: $05
    ld [bc], a                                    ; $5207: $02
    ld [bc], a                                    ; $5208: $02
    ld [bc], a                                    ; $5209: $02
    dec b                                         ; $520a: $05
    dec b                                         ; $520b: $05
    dec c                                         ; $520c: $0d
    dec b                                         ; $520d: $05
    adc a                                         ; $520e: $8f
    add h                                         ; $520f: $84
    add a                                         ; $5210: $87
    adc h                                         ; $5211: $8c
    add h                                         ; $5212: $84
    add h                                         ; $5213: $84
    add h                                         ; $5214: $84
    add h                                         ; $5215: $84
    inc de                                        ; $5216: $13
    ret z                                         ; $5217: $c8

    ret                                           ; $5218: $c9


    jp z, $1312                                   ; $5219: $ca $12 $13

    dec hl                                        ; $521c: $2b
    inc l                                         ; $521d: $2c
    add h                                         ; $521e: $84
    add l                                         ; $521f: $85
    add [hl]                                      ; $5220: $86
    add a                                         ; $5221: $87
    pop de                                        ; $5222: $d1
    pop de                                        ; $5223: $d1
    pop de                                        ; $5224: $d1
    pop de                                        ; $5225: $d1
    ld a, [bc]                                    ; $5226: $0a
    ld a, [bc]                                    ; $5227: $0a
    ld a, [bc]                                    ; $5228: $0a
    ld a, [bc]                                    ; $5229: $0a
    dec b                                         ; $522a: $05
    dec b                                         ; $522b: $05
    dec b                                         ; $522c: $05
    dec b                                         ; $522d: $05
    adc a                                         ; $522e: $8f
    adc a                                         ; $522f: $8f
    adc [hl]                                      ; $5230: $8e
    adc h                                         ; $5231: $8c

jr_07a_5232:
    add h                                         ; $5232: $84
    add h                                         ; $5233: $84
    add h                                         ; $5234: $84
    add h                                         ; $5235: $84
    adc $0f                                       ; $5236: $ce $0f
    rst $38                                       ; $5238: $ff
    nop                                           ; $5239: $00
    sbc b                                         ; $523a: $98
    ld de, $1312                                  ; $523b: $11 $12 $13
    adc b                                         ; $523e: $88
    inc hl                                        ; $523f: $23
    ld [hl+], a                                   ; $5240: $22
    add e                                         ; $5241: $83
    pop de                                        ; $5242: $d1
    pop de                                        ; $5243: $d1
    pop de                                        ; $5244: $d1
    pop de                                        ; $5245: $d1
    ld a, [bc]                                    ; $5246: $0a
    ld [bc], a                                    ; $5247: $02
    ld [bc], a                                    ; $5248: $02
    ld [bc], a                                    ; $5249: $02
    dec c                                         ; $524a: $0d
    ld [bc], a                                    ; $524b: $02
    ld [bc], a                                    ; $524c: $02
    dec b                                         ; $524d: $05
    adc h                                         ; $524e: $8c
    add [hl]                                      ; $524f: $86
    add a                                         ; $5250: $87
    adc h                                         ; $5251: $8c
    add h                                         ; $5252: $84
    add h                                         ; $5253: $84
    add h                                         ; $5254: $84
    add h                                         ; $5255: $84
    dec sp                                        ; $5256: $3b
    db $d3                                        ; $5257: $d3
    pop de                                        ; $5258: $d1
    pop de                                        ; $5259: $d1
    ld [hl-], a                                   ; $525a: $32
    call nc, $d1d1                                ; $525b: $d4 $d1 $d1
    ld a, [$d1d5]                                 ; $525e: $fa $d5 $d1
    pop de                                        ; $5261: $d1
    db $fc                                        ; $5262: $fc
    rst $30                                       ; $5263: $f7
    pop de                                        ; $5264: $d1
    pop de                                        ; $5265: $d1
    inc b                                         ; $5266: $04
    and h                                         ; $5267: $a4
    add h                                         ; $5268: $84
    inc b                                         ; $5269: $04
    dec b                                         ; $526a: $05
    and a                                         ; $526b: $a7
    add h                                         ; $526c: $84
    inc b                                         ; $526d: $04
    ld [bc], a                                    ; $526e: $02
    and [hl]                                      ; $526f: $a6
    add h                                         ; $5270: $84
    inc b                                         ; $5271: $04
    ld [bc], a                                    ; $5272: $02
    add a                                         ; $5273: $87
    add h                                         ; $5274: $84
    inc b                                         ; $5275: $04
    pop de                                        ; $5276: $d1
    db $d3                                        ; $5277: $d3
    cp $ff                                        ; $5278: $fe $ff
    pop de                                        ; $527a: $d1
    ld [hl+], a                                   ; $527b: $22
    ld hl, $d133                                  ; $527c: $21 $33 $d1
    pop de                                        ; $527f: $d1
    call nc, $d1fb                                ; $5280: $d4 $fb $d1
    pop de                                        ; $5283: $d1
    push de                                       ; $5284: $d5
    cp $84                                        ; $5285: $fe $84
    add h                                         ; $5287: $84
    ld a, [bc]                                    ; $5288: $0a
    ld a, [bc]                                    ; $5289: $0a
    inc b                                         ; $528a: $04
    and h                                         ; $528b: $a4
    and h                                         ; $528c: $a4
    ld [bc], a                                    ; $528d: $02
    inc b                                         ; $528e: $04
    add h                                         ; $528f: $84
    add a                                         ; $5290: $87
    dec b                                         ; $5291: $05
    inc b                                         ; $5292: $04
    add h                                         ; $5293: $84
    add [hl]                                      ; $5294: $86
    dec b                                         ; $5295: $05
    jr c, jr_07a_5232                             ; $5296: $38 $9a

    dec l                                         ; $5298: $2d
    ld sp, hl                                     ; $5299: $f9
    or c                                          ; $529a: $b1
    and a                                         ; $529b: $a7
    jr jr_07a_52cf                                ; $529c: $18 $31

    rlca                                          ; $529e: $07
    ld [$0a09], sp                                ; $529f: $08 $09 $0a
    dec bc                                        ; $52a2: $0b
    inc c                                         ; $52a3: $0c
    dec c                                         ; $52a4: $0d
    db $fd                                        ; $52a5: $fd
    ld a, [bc]                                    ; $52a6: $0a
    ld a, [bc]                                    ; $52a7: $0a
    ld [bc], a                                    ; $52a8: $02
    inc h                                         ; $52a9: $24
    ld a, [bc]                                    ; $52aa: $0a
    dec c                                         ; $52ab: $0d
    dec b                                         ; $52ac: $05
    dec b                                         ; $52ad: $05
    dec b                                         ; $52ae: $05
    dec b                                         ; $52af: $05
    dec b                                         ; $52b0: $05
    dec b                                         ; $52b1: $05
    dec b                                         ; $52b2: $05
    dec b                                         ; $52b3: $05
    dec b                                         ; $52b4: $05
    dec b                                         ; $52b5: $05
    db $d3                                        ; $52b6: $d3
    pop de                                        ; $52b7: $d1
    pop de                                        ; $52b8: $d1
    pop de                                        ; $52b9: $d1
    call nc, $d1d1                                ; $52ba: $d4 $d1 $d1
    pop de                                        ; $52bd: $d1
    push de                                       ; $52be: $d5
    pop de                                        ; $52bf: $d1
    pop de                                        ; $52c0: $d1
    pop de                                        ; $52c1: $d1
    rst $30                                       ; $52c2: $f7
    pop de                                        ; $52c3: $d1
    pop de                                        ; $52c4: $d1
    pop de                                        ; $52c5: $d1
    inc h                                         ; $52c6: $24
    inc b                                         ; $52c7: $04
    inc b                                         ; $52c8: $04
    inc b                                         ; $52c9: $04
    and h                                         ; $52ca: $a4
    inc b                                         ; $52cb: $04
    inc b                                         ; $52cc: $04
    inc b                                         ; $52cd: $04
    and [hl]                                      ; $52ce: $a6

jr_07a_52cf:
    inc b                                         ; $52cf: $04
    inc b                                         ; $52d0: $04
    inc b                                         ; $52d1: $04
    add a                                         ; $52d2: $87
    inc b                                         ; $52d3: $04
    inc b                                         ; $52d4: $04
    inc b                                         ; $52d5: $04
    ld bc, $d1f6                                  ; $52d6: $01 $f6 $d1
    pop de                                        ; $52d9: $d1
    ld hl, $d122                                  ; $52da: $21 $22 $d1
    pop de                                        ; $52dd: $d1
    add h                                         ; $52de: $84
    pop de                                        ; $52df: $d1
    pop de                                        ; $52e0: $d1
    pop de                                        ; $52e1: $d1
    pop de                                        ; $52e2: $d1
    pop de                                        ; $52e3: $d1
    pop de                                        ; $52e4: $d1
    pop de                                        ; $52e5: $d1
    dec b                                         ; $52e6: $05
    add h                                         ; $52e7: $84
    add h                                         ; $52e8: $84
    inc b                                         ; $52e9: $04
    add h                                         ; $52ea: $84
    add h                                         ; $52eb: $84
    add h                                         ; $52ec: $84
    inc b                                         ; $52ed: $04
    adc h                                         ; $52ee: $8c
    add h                                         ; $52ef: $84
    inc b                                         ; $52f0: $04
    inc b                                         ; $52f1: $04
    add h                                         ; $52f2: $84
    add h                                         ; $52f3: $84
    inc b                                         ; $52f4: $04
    inc b                                         ; $52f5: $04
    pop de                                        ; $52f6: $d1
    pop de                                        ; $52f7: $d1
    ld [hl+], a                                   ; $52f8: $22
    ld hl, $d1d1                                  ; $52f9: $21 $d1 $d1
    pop de                                        ; $52fc: $d1
    add e                                         ; $52fd: $83
    pop de                                        ; $52fe: $d1
    pop de                                        ; $52ff: $d1
    pop de                                        ; $5300: $d1
    pop de                                        ; $5301: $d1
    pop de                                        ; $5302: $d1
    pop de                                        ; $5303: $d1
    pop de                                        ; $5304: $d1
    pop de                                        ; $5305: $d1
    inc b                                         ; $5306: $04
    inc b                                         ; $5307: $04
    and h                                         ; $5308: $a4
    and h                                         ; $5309: $a4
    inc b                                         ; $530a: $04
    inc b                                         ; $530b: $04
    inc b                                         ; $530c: $04
    adc h                                         ; $530d: $8c
    inc b                                         ; $530e: $04
    inc b                                         ; $530f: $04
    inc b                                         ; $5310: $04
    inc b                                         ; $5311: $04
    inc b                                         ; $5312: $04
    inc b                                         ; $5313: $04
    inc b                                         ; $5314: $04
    inc b                                         ; $5315: $04
    ld c, $0f                                     ; $5316: $0e $0f
    rst $38                                       ; $5318: $ff
    nop                                           ; $5319: $00
    add h                                         ; $531a: $84
    add l                                         ; $531b: $85
    add [hl]                                      ; $531c: $86
    add a                                         ; $531d: $87
    pop de                                        ; $531e: $d1
    pop de                                        ; $531f: $d1
    pop de                                        ; $5320: $d1
    pop de                                        ; $5321: $d1
    pop de                                        ; $5322: $d1
    pop de                                        ; $5323: $d1
    pop de                                        ; $5324: $d1
    pop de                                        ; $5325: $d1
    dec b                                         ; $5326: $05
    dec b                                         ; $5327: $05
    dec b                                         ; $5328: $05
    dec b                                         ; $5329: $05
    adc [hl]                                      ; $532a: $8e
    adc [hl]                                      ; $532b: $8e
    adc a                                         ; $532c: $8f
    adc a                                         ; $532d: $8f
    add h                                         ; $532e: $84
    add h                                         ; $532f: $84
    add h                                         ; $5330: $84
    add h                                         ; $5331: $84
    inc b                                         ; $5332: $04
    inc b                                         ; $5333: $04
    inc b                                         ; $5334: $04
    inc b                                         ; $5335: $04
    or $d1                                        ; $5336: $f6 $d1
    pop de                                        ; $5338: $d1
    pop de                                        ; $5339: $d1
    adc b                                         ; $533a: $88
    pop de                                        ; $533b: $d1
    pop de                                        ; $533c: $d1
    pop de                                        ; $533d: $d1
    pop de                                        ; $533e: $d1
    pop de                                        ; $533f: $d1
    pop de                                        ; $5340: $d1
    pop de                                        ; $5341: $d1
    pop de                                        ; $5342: $d1
    pop de                                        ; $5343: $d1
    pop de                                        ; $5344: $d1
    pop de                                        ; $5345: $d1
    add h                                         ; $5346: $84
    inc b                                         ; $5347: $04
    inc b                                         ; $5348: $04
    inc b                                         ; $5349: $04
    adc h                                         ; $534a: $8c
    inc b                                         ; $534b: $04
    inc b                                         ; $534c: $04
    inc b                                         ; $534d: $04
    add h                                         ; $534e: $84
    inc b                                         ; $534f: $04
    inc b                                         ; $5350: $04
    inc b                                         ; $5351: $04
    inc b                                         ; $5352: $04
    inc b                                         ; $5353: $04
    inc b                                         ; $5354: $04
    inc b                                         ; $5355: $04
    inc c                                         ; $5356: $0c
    nop                                           ; $5357: $00
    inc c                                         ; $5358: $0c
    nop                                           ; $5359: $00
    add b                                         ; $535a: $80
    dec bc                                        ; $535b: $0b
    pop de                                        ; $535c: $d1
    pop de                                        ; $535d: $d1
    pop de                                        ; $535e: $d1
    pop de                                        ; $535f: $d1
    pop de                                        ; $5360: $d1
    pop de                                        ; $5361: $d1
    pop de                                        ; $5362: $d1
    pop de                                        ; $5363: $d1
    pop de                                        ; $5364: $d1
    pop de                                        ; $5365: $d1
    pop de                                        ; $5366: $d1
    pop de                                        ; $5367: $d1
    pop de                                        ; $5368: $d1
    pop de                                        ; $5369: $d1
    pop de                                        ; $536a: $d1
    pop de                                        ; $536b: $d1
    add h                                         ; $536c: $84
    add h                                         ; $536d: $84
    add h                                         ; $536e: $84
    add h                                         ; $536f: $84
    inc b                                         ; $5370: $04
    inc b                                         ; $5371: $04
    inc b                                         ; $5372: $04
    inc b                                         ; $5373: $04
    inc b                                         ; $5374: $04
    inc b                                         ; $5375: $04
    inc b                                         ; $5376: $04
    inc b                                         ; $5377: $04
    inc b                                         ; $5378: $04
    inc b                                         ; $5379: $04
    inc b                                         ; $537a: $04
    inc b                                         ; $537b: $04
    pop de                                        ; $537c: $d1
    pop de                                        ; $537d: $d1
    jp nc, $d1d3                                  ; $537e: $d2 $d3 $d1

    pop de                                        ; $5381: $d1
    call nc, $d1d5                                ; $5382: $d4 $d5 $d1
    sub $d7                                       ; $5385: $d6 $d7
    ret c                                         ; $5387: $d8

    pop de                                        ; $5388: $d1
    reti                                          ; $5389: $d9


    jp c, $04db                                   ; $538a: $da $db $04

    inc b                                         ; $538d: $04
    inc b                                         ; $538e: $04
    inc b                                         ; $538f: $04
    inc b                                         ; $5390: $04
    inc b                                         ; $5391: $04
    inc b                                         ; $5392: $04
    dec b                                         ; $5393: $05
    inc b                                         ; $5394: $04
    inc b                                         ; $5395: $04
    ld b, $02                                     ; $5396: $06 $02
    inc b                                         ; $5398: $04
    rlca                                          ; $5399: $07
    rlca                                          ; $539a: $07
    ld [bc], a                                    ; $539b: $02
    call c, $dedd                                 ; $539c: $dc $dd $de
    rst $18                                       ; $539f: $df
    ldh [$e1], a                                  ; $53a0: $e0 $e1
    ld [c], a                                     ; $53a2: $e2
    db $e3                                        ; $53a3: $e3
    db $e4                                        ; $53a4: $e4
    push hl                                       ; $53a5: $e5
    and $e7                                       ; $53a6: $e6 $e7
    add sp, -$17                                  ; $53a8: $e8 $e9
    ld [$06eb], a                                 ; $53aa: $ea $eb $06
    rlca                                          ; $53ad: $07
    inc b                                         ; $53ae: $04
    inc b                                         ; $53af: $04
    ld [bc], a                                    ; $53b0: $02
    ld [bc], a                                    ; $53b1: $02
    dec b                                         ; $53b2: $05
    inc b                                         ; $53b3: $04
    ld bc, $0502                                  ; $53b4: $01 $02 $05
    ld b, $01                                     ; $53b7: $06 $01
    ld bc, $0402                                  ; $53b9: $01 $02 $04
    pop de                                        ; $53bc: $d1
    pop de                                        ; $53bd: $d1
    pop de                                        ; $53be: $d1
    pop de                                        ; $53bf: $d1
    pop de                                        ; $53c0: $d1
    pop de                                        ; $53c1: $d1
    pop de                                        ; $53c2: $d1
    pop de                                        ; $53c3: $d1
    db $ec                                        ; $53c4: $ec
    pop de                                        ; $53c5: $d1
    pop de                                        ; $53c6: $d1
    pop de                                        ; $53c7: $d1
    sub $d1                                       ; $53c8: $d6 $d1
    pop de                                        ; $53ca: $d1
    pop de                                        ; $53cb: $d1
    inc b                                         ; $53cc: $04
    inc b                                         ; $53cd: $04
    inc b                                         ; $53ce: $04
    inc b                                         ; $53cf: $04
    inc b                                         ; $53d0: $04
    inc b                                         ; $53d1: $04
    inc b                                         ; $53d2: $04
    inc b                                         ; $53d3: $04
    inc b                                         ; $53d4: $04
    inc b                                         ; $53d5: $04
    inc b                                         ; $53d6: $04
    inc b                                         ; $53d7: $04
    ld h, $04                                     ; $53d8: $26 $04
    inc b                                         ; $53da: $04
    inc b                                         ; $53db: $04
    pop de                                        ; $53dc: $d1
    db $ed                                        ; $53dd: $ed
    xor $ef                                       ; $53de: $ee $ef
    pop de                                        ; $53e0: $d1
    ldh a, [$eb]                                  ; $53e1: $f0 $eb
    pop af                                        ; $53e3: $f1
    pop de                                        ; $53e4: $d1
    ld a, [c]                                     ; $53e5: $f2
    rst $20                                       ; $53e6: $e7
    di                                            ; $53e7: $f3
    pop de                                        ; $53e8: $d1
    db $ec                                        ; $53e9: $ec
    db $e3                                        ; $53ea: $e3
    db $f4                                        ; $53eb: $f4
    inc b                                         ; $53ec: $04
    ld b, $04                                     ; $53ed: $06 $04
    ld [bc], a                                    ; $53ef: $02
    inc b                                         ; $53f0: $04
    rlca                                          ; $53f1: $07
    ld h, [hl]                                    ; $53f2: $66
    ld [bc], a                                    ; $53f3: $02
    inc b                                         ; $53f4: $04
    inc b                                         ; $53f5: $04
    ld h, a                                       ; $53f6: $67
    ld [bc], a                                    ; $53f7: $02
    inc b                                         ; $53f8: $04
    inc h                                         ; $53f9: $24
    ld h, h                                       ; $53fa: $64
    dec b                                         ; $53fb: $05
    push af                                       ; $53fc: $f5
    or $f7                                        ; $53fd: $f6 $f7
    xor $f8                                       ; $53ff: $ee $f8
    ld sp, hl                                     ; $5401: $f9
    ld a, [$fbda]                                 ; $5402: $fa $da $fb
    db $fc                                        ; $5405: $fc
    db $fd                                        ; $5406: $fd
    rst $10                                       ; $5407: $d7
    cp $ff                                        ; $5408: $fe $ff
    nop                                           ; $540a: $00
    call nc, $0101                                ; $540b: $d4 $01 $01
    ld [bc], a                                    ; $540e: $02
    ld h, a                                       ; $540f: $67
    ld bc, $0201                                  ; $5410: $01 $01 $02
    ld h, [hl]                                    ; $5413: $66
    ld bc, $0502                                  ; $5414: $01 $02 $05
    ld h, h                                       ; $5417: $64
    ld [bc], a                                    ; $5418: $02
    ld [bc], a                                    ; $5419: $02
    dec b                                         ; $541a: $05
    ld h, h                                       ; $541b: $64
    reti                                          ; $541c: $d9


    pop de                                        ; $541d: $d1
    pop de                                        ; $541e: $d1
    pop de                                        ; $541f: $d1
    db $ed                                        ; $5420: $ed
    pop de                                        ; $5421: $d1
    pop de                                        ; $5422: $d1
    pop de                                        ; $5423: $d1
    ldh a, [$d1]                                  ; $5424: $f0 $d1
    pop de                                        ; $5426: $d1
    pop de                                        ; $5427: $d1
    ld a, [c]                                     ; $5428: $f2
    pop de                                        ; $5429: $d1
    pop de                                        ; $542a: $d1
    pop de                                        ; $542b: $d1
    daa                                           ; $542c: $27
    inc b                                         ; $542d: $04
    inc b                                         ; $542e: $04
    inc b                                         ; $542f: $04
    inc h                                         ; $5430: $24
    inc b                                         ; $5431: $04
    inc b                                         ; $5432: $04
    inc b                                         ; $5433: $04
    ld h, $04                                     ; $5434: $26 $04
    inc b                                         ; $5436: $04
    inc b                                         ; $5437: $04
    ld h, $04                                     ; $5438: $26 $04
    inc b                                         ; $543a: $04
    inc b                                         ; $543b: $04
    pop de                                        ; $543c: $d1
    sub $01                                       ; $543d: $d6 $01
    ld [bc], a                                    ; $543f: $02
    pop de                                        ; $5440: $d1
    reti                                          ; $5441: $d9


    inc bc                                        ; $5442: $03
    inc b                                         ; $5443: $04
    pop de                                        ; $5444: $d1
    db $ed                                        ; $5445: $ed
    dec b                                         ; $5446: $05
    ld b, $d1                                     ; $5447: $06 $d1
    ldh a, [rTAC]                                 ; $5449: $f0 $07
    ld [$0704], sp                                ; $544b: $08 $04 $07
    dec b                                         ; $544e: $05
    dec b                                         ; $544f: $05
    inc b                                         ; $5450: $04
    inc b                                         ; $5451: $04
    ld [bc], a                                    ; $5452: $02
    ld [bc], a                                    ; $5453: $02
    inc b                                         ; $5454: $04
    inc b                                         ; $5455: $04
    ld [bc], a                                    ; $5456: $02
    ld [bc], a                                    ; $5457: $02
    inc b                                         ; $5458: $04
    inc b                                         ; $5459: $04
    ld [bc], a                                    ; $545a: $02
    ld [bc], a                                    ; $545b: $02
    add hl, bc                                    ; $545c: $09
    ld a, [bc]                                    ; $545d: $0a
    dec bc                                        ; $545e: $0b
    inc c                                         ; $545f: $0c
    dec c                                         ; $5460: $0d
    ld c, $0f                                     ; $5461: $0e $0f
    db $10                                        ; $5463: $10
    ld de, $1312                                  ; $5464: $11 $12 $13
    inc d                                         ; $5467: $14
    dec d                                         ; $5468: $15
    ld d, $17                                     ; $5469: $16 $17
    jr jr_07a_5472                                ; $546b: $18 $05

    dec b                                         ; $546d: $05
    dec b                                         ; $546e: $05
    dec b                                         ; $546f: $05
    ld [bc], a                                    ; $5470: $02
    ld [bc], a                                    ; $5471: $02

jr_07a_5472:
    ld [bc], a                                    ; $5472: $02
    ld [bc], a                                    ; $5473: $02
    ld bc, $0201                                  ; $5474: $01 $01 $02
    ld [bc], a                                    ; $5477: $02
    ld bc, $0101                                  ; $5478: $01 $01 $01
    ld [bc], a                                    ; $547b: $02
    db $ec                                        ; $547c: $ec
    pop de                                        ; $547d: $d1
    pop de                                        ; $547e: $d1
    pop de                                        ; $547f: $d1
    sub $d1                                       ; $5480: $d6 $d1
    pop de                                        ; $5482: $d1
    pop de                                        ; $5483: $d1
    reti                                          ; $5484: $d9


    pop de                                        ; $5485: $d1
    pop de                                        ; $5486: $d1
    pop de                                        ; $5487: $d1
    db $ed                                        ; $5488: $ed
    pop de                                        ; $5489: $d1
    pop de                                        ; $548a: $d1
    pop de                                        ; $548b: $d1
    rlca                                          ; $548c: $07
    inc b                                         ; $548d: $04
    inc b                                         ; $548e: $04
    inc b                                         ; $548f: $04
    inc h                                         ; $5490: $24
    inc b                                         ; $5491: $04
    inc b                                         ; $5492: $04
    inc b                                         ; $5493: $04
    ld h, $04                                     ; $5494: $26 $04
    inc b                                         ; $5496: $04
    inc b                                         ; $5497: $04
    inc h                                         ; $5498: $24
    inc b                                         ; $5499: $04
    inc b                                         ; $549a: $04
    inc b                                         ; $549b: $04
    pop de                                        ; $549c: $d1
    ld a, [c]                                     ; $549d: $f2
    add hl, de                                    ; $549e: $19
    ld a, [de]                                    ; $549f: $1a
    pop de                                        ; $54a0: $d1
    db $ec                                        ; $54a1: $ec
    dec de                                        ; $54a2: $1b
    inc e                                         ; $54a3: $1c
    pop de                                        ; $54a4: $d1
    sub $01                                       ; $54a5: $d6 $01
    ld [bc], a                                    ; $54a7: $02
    pop de                                        ; $54a8: $d1
    reti                                          ; $54a9: $d9


    inc bc                                        ; $54aa: $03
    inc b                                         ; $54ab: $04
    inc b                                         ; $54ac: $04
    rlca                                          ; $54ad: $07
    ld [bc], a                                    ; $54ae: $02
    ld bc, $2604                                  ; $54af: $01 $04 $26
    ld [bc], a                                    ; $54b2: $02
    ld bc, $0404                                  ; $54b3: $01 $04 $04
    ld [bc], a                                    ; $54b6: $02
    ld bc, $0604                                  ; $54b7: $01 $04 $06
    ld [bc], a                                    ; $54ba: $02
    ld bc, $1e1d                                  ; $54bb: $01 $1d $1e
    rra                                           ; $54be: $1f
    jr nz, jr_07a_54e2                            ; $54bf: $20 $21

    ld [hl+], a                                   ; $54c1: $22
    inc hl                                        ; $54c2: $23
    inc h                                         ; $54c3: $24
    add hl, bc                                    ; $54c4: $09
    dec h                                         ; $54c5: $25
    ld h, $27                                     ; $54c6: $26 $27
    dec c                                         ; $54c8: $0d
    jr z, jr_07a_54f4                             ; $54c9: $28 $29

    ld a, [hl+]                                   ; $54cb: $2a
    ld [bc], a                                    ; $54cc: $02
    ld bc, $0202                                  ; $54cd: $01 $02 $02
    ld bc, $0101                                  ; $54d0: $01 $01 $01
    ld [bc], a                                    ; $54d3: $02
    ld [bc], a                                    ; $54d4: $02
    ld bc, $0201                                  ; $54d5: $01 $01 $02
    ld bc, $0201                                  ; $54d8: $01 $01 $02
    ld [bc], a                                    ; $54db: $02
    ldh a, [$d1]                                  ; $54dc: $f0 $d1
    pop de                                        ; $54de: $d1
    pop de                                        ; $54df: $d1
    ld a, [c]                                     ; $54e0: $f2
    pop de                                        ; $54e1: $d1

jr_07a_54e2:
    pop de                                        ; $54e2: $d1
    pop de                                        ; $54e3: $d1
    db $ec                                        ; $54e4: $ec
    pop de                                        ; $54e5: $d1
    pop de                                        ; $54e6: $d1
    pop de                                        ; $54e7: $d1
    sub $d1                                       ; $54e8: $d6 $d1
    pop de                                        ; $54ea: $d1
    pop de                                        ; $54eb: $d1
    daa                                           ; $54ec: $27
    inc b                                         ; $54ed: $04
    inc b                                         ; $54ee: $04
    inc b                                         ; $54ef: $04
    inc h                                         ; $54f0: $24
    inc b                                         ; $54f1: $04
    inc b                                         ; $54f2: $04
    inc b                                         ; $54f3: $04

jr_07a_54f4:
    inc b                                         ; $54f4: $04
    inc b                                         ; $54f5: $04
    inc b                                         ; $54f6: $04
    inc b                                         ; $54f7: $04
    ld h, $04                                     ; $54f8: $26 $04
    inc b                                         ; $54fa: $04
    inc b                                         ; $54fb: $04
    pop de                                        ; $54fc: $d1
    pop de                                        ; $54fd: $d1
    pop de                                        ; $54fe: $d1
    pop de                                        ; $54ff: $d1
    pop de                                        ; $5500: $d1
    pop de                                        ; $5501: $d1
    pop de                                        ; $5502: $d1
    pop de                                        ; $5503: $d1
    pop de                                        ; $5504: $d1
    pop de                                        ; $5505: $d1
    pop de                                        ; $5506: $d1
    pop de                                        ; $5507: $d1
    pop de                                        ; $5508: $d1
    dec hl                                        ; $5509: $2b
    inc l                                         ; $550a: $2c
    dec l                                         ; $550b: $2d
    inc b                                         ; $550c: $04
    inc b                                         ; $550d: $04
    inc b                                         ; $550e: $04
    inc b                                         ; $550f: $04
    inc b                                         ; $5510: $04
    inc b                                         ; $5511: $04
    inc b                                         ; $5512: $04
    inc b                                         ; $5513: $04
    inc b                                         ; $5514: $04
    inc b                                         ; $5515: $04
    inc b                                         ; $5516: $04
    inc b                                         ; $5517: $04
    inc b                                         ; $5518: $04
    inc b                                         ; $5519: $04
    ld b, $04                                     ; $551a: $06 $04
    pop de                                        ; $551c: $d1
    pop de                                        ; $551d: $d1
    pop de                                        ; $551e: $d1
    pop de                                        ; $551f: $d1
    pop de                                        ; $5520: $d1
    pop de                                        ; $5521: $d1
    pop de                                        ; $5522: $d1
    pop de                                        ; $5523: $d1
    pop de                                        ; $5524: $d1
    pop de                                        ; $5525: $d1
    pop de                                        ; $5526: $d1
    pop de                                        ; $5527: $d1
    ld l, $2f                                     ; $5528: $2e $2f
    jr nc, jr_07a_555d                            ; $552a: $30 $31

    inc b                                         ; $552c: $04
    inc b                                         ; $552d: $04
    inc b                                         ; $552e: $04
    inc b                                         ; $552f: $04
    inc b                                         ; $5530: $04
    inc b                                         ; $5531: $04
    inc b                                         ; $5532: $04
    inc b                                         ; $5533: $04
    inc b                                         ; $5534: $04
    inc b                                         ; $5535: $04
    inc b                                         ; $5536: $04
    inc b                                         ; $5537: $04
    inc b                                         ; $5538: $04
    ld b, $06                                     ; $5539: $06 $06
    inc b                                         ; $553b: $04
    pop de                                        ; $553c: $d1
    pop de                                        ; $553d: $d1
    pop de                                        ; $553e: $d1
    pop de                                        ; $553f: $d1
    pop de                                        ; $5540: $d1
    pop de                                        ; $5541: $d1
    pop de                                        ; $5542: $d1
    pop de                                        ; $5543: $d1
    pop de                                        ; $5544: $d1
    pop de                                        ; $5545: $d1
    pop de                                        ; $5546: $d1
    pop de                                        ; $5547: $d1
    ld [hl-], a                                   ; $5548: $32

Jump_07a_5549:
    dec hl                                        ; $5549: $2b
    inc l                                         ; $554a: $2c
    dec l                                         ; $554b: $2d
    inc b                                         ; $554c: $04
    inc b                                         ; $554d: $04
    inc b                                         ; $554e: $04
    inc b                                         ; $554f: $04
    inc b                                         ; $5550: $04
    inc b                                         ; $5551: $04
    inc b                                         ; $5552: $04
    inc b                                         ; $5553: $04
    inc b                                         ; $5554: $04
    inc b                                         ; $5555: $04
    inc b                                         ; $5556: $04
    inc b                                         ; $5557: $04
    rlca                                          ; $5558: $07
    inc b                                         ; $5559: $04
    ld b, $04                                     ; $555a: $06 $04
    pop de                                        ; $555c: $d1

jr_07a_555d:
    pop de                                        ; $555d: $d1
    pop de                                        ; $555e: $d1
    pop de                                        ; $555f: $d1
    pop de                                        ; $5560: $d1
    pop de                                        ; $5561: $d1
    pop de                                        ; $5562: $d1
    pop de                                        ; $5563: $d1
    pop de                                        ; $5564: $d1
    pop de                                        ; $5565: $d1
    pop de                                        ; $5566: $d1
    pop de                                        ; $5567: $d1
    pop de                                        ; $5568: $d1
    pop de                                        ; $5569: $d1
    dec l                                         ; $556a: $2d
    ld l, $04                                     ; $556b: $2e $04
    inc b                                         ; $556d: $04
    inc b                                         ; $556e: $04
    inc b                                         ; $556f: $04
    inc b                                         ; $5570: $04
    inc b                                         ; $5571: $04
    inc b                                         ; $5572: $04
    inc b                                         ; $5573: $04
    inc b                                         ; $5574: $04
    inc b                                         ; $5575: $04
    inc b                                         ; $5576: $04
    inc b                                         ; $5577: $04
    inc b                                         ; $5578: $04
    inc b                                         ; $5579: $04
    ld b, $04                                     ; $557a: $06 $04
    pop de                                        ; $557c: $d1
    pop de                                        ; $557d: $d1
    pop de                                        ; $557e: $d1
    pop de                                        ; $557f: $d1
    pop de                                        ; $5580: $d1
    pop de                                        ; $5581: $d1
    pop de                                        ; $5582: $d1
    pop de                                        ; $5583: $d1
    pop de                                        ; $5584: $d1
    pop de                                        ; $5585: $d1
    pop de                                        ; $5586: $d1
    pop de                                        ; $5587: $d1
    cpl                                           ; $5588: $2f
    jr nc, jr_07a_55bc                            ; $5589: $30 $31

    ld [hl-], a                                   ; $558b: $32
    inc b                                         ; $558c: $04
    inc b                                         ; $558d: $04
    inc b                                         ; $558e: $04
    inc b                                         ; $558f: $04
    inc b                                         ; $5590: $04
    inc b                                         ; $5591: $04
    inc b                                         ; $5592: $04
    inc b                                         ; $5593: $04
    inc b                                         ; $5594: $04
    inc b                                         ; $5595: $04
    inc b                                         ; $5596: $04
    inc b                                         ; $5597: $04
    inc b                                         ; $5598: $04
    inc b                                         ; $5599: $04
    inc b                                         ; $559a: $04
    ld b, $d1                                     ; $559b: $06 $d1
    pop de                                        ; $559d: $d1
    pop de                                        ; $559e: $d1
    pop de                                        ; $559f: $d1
    pop de                                        ; $55a0: $d1
    pop de                                        ; $55a1: $d1
    pop de                                        ; $55a2: $d1
    ldh a, [$d1]                                  ; $55a3: $f0 $d1
    pop de                                        ; $55a5: $d1
    pop de                                        ; $55a6: $d1
    ld a, [c]                                     ; $55a7: $f2
    pop de                                        ; $55a8: $d1
    pop de                                        ; $55a9: $d1
    pop de                                        ; $55aa: $d1
    db $ec                                        ; $55ab: $ec
    inc b                                         ; $55ac: $04
    inc b                                         ; $55ad: $04
    inc b                                         ; $55ae: $04
    inc b                                         ; $55af: $04
    inc b                                         ; $55b0: $04
    inc b                                         ; $55b1: $04
    inc b                                         ; $55b2: $04
    ld b, $04                                     ; $55b3: $06 $04
    inc b                                         ; $55b5: $04
    inc b                                         ; $55b6: $04
    rlca                                          ; $55b7: $07
    inc b                                         ; $55b8: $04
    inc b                                         ; $55b9: $04
    add h                                         ; $55ba: $84
    and h                                         ; $55bb: $a4

jr_07a_55bc:
    inc sp                                        ; $55bc: $33
    inc [hl]                                      ; $55bd: $34
    dec [hl]                                      ; $55be: $35
    ld [hl], $37                                  ; $55bf: $36 $37
    jr c, jr_07a_55fc                             ; $55c1: $38 $39

    ld a, [hl-]                                   ; $55c3: $3a
    dec sp                                        ; $55c4: $3b
    inc a                                         ; $55c5: $3c
    dec a                                         ; $55c6: $3d
    ld a, $3f                                     ; $55c7: $3e $3f
    ld b, b                                       ; $55c9: $40
    ld b, c                                       ; $55ca: $41
    ld b, d                                       ; $55cb: $42
    daa                                           ; $55cc: $27
    ld h, $04                                     ; $55cd: $26 $04
    inc b                                         ; $55cf: $04
    ld h, $24                                     ; $55d0: $26 $24
    ld b, $06                                     ; $55d2: $06 $06
    inc h                                         ; $55d4: $24
    inc h                                         ; $55d5: $24
    inc b                                         ; $55d6: $04
    inc b                                         ; $55d7: $04
    ld h, $26                                     ; $55d8: $26 $26
    ld b, $04                                     ; $55da: $06 $04
    ld b, e                                       ; $55dc: $43
    ld b, h                                       ; $55dd: $44
    ld b, l                                       ; $55de: $45
    ld b, [hl]                                    ; $55df: $46
    ld b, a                                       ; $55e0: $47
    ld c, b                                       ; $55e1: $48
    ld c, c                                       ; $55e2: $49
    ld c, d                                       ; $55e3: $4a
    ld c, e                                       ; $55e4: $4b
    ld c, h                                       ; $55e5: $4c
    ld c, l                                       ; $55e6: $4d
    ld c, [hl]                                    ; $55e7: $4e
    ld c, a                                       ; $55e8: $4f
    ld d, b                                       ; $55e9: $50
    ld d, c                                       ; $55ea: $51
    ld d, d                                       ; $55eb: $52
    rlca                                          ; $55ec: $07
    rlca                                          ; $55ed: $07
    inc b                                         ; $55ee: $04
    rlca                                          ; $55ef: $07
    rlca                                          ; $55f0: $07
    rlca                                          ; $55f1: $07
    ld b, $07                                     ; $55f2: $06 $07
    rlca                                          ; $55f4: $07
    rlca                                          ; $55f5: $07
    inc b                                         ; $55f6: $04
    inc b                                         ; $55f7: $04
    inc b                                         ; $55f8: $04
    inc b                                         ; $55f9: $04
    ld b, $04                                     ; $55fa: $06 $04

jr_07a_55fc:
    inc [hl]                                      ; $55fc: $34
    inc sp                                        ; $55fd: $33
    ld [hl-], a                                   ; $55fe: $32
    ld sp, $3738                                  ; $55ff: $31 $38 $37
    ld b, [hl]                                    ; $5602: $46
    ld b, l                                       ; $5603: $45
    inc a                                         ; $5604: $3c
    dec sp                                        ; $5605: $3b
    ld c, d                                       ; $5606: $4a
    ld c, c                                       ; $5607: $49
    ld b, b                                       ; $5608: $40
    ccf                                           ; $5609: $3f
    ld c, [hl]                                    ; $560a: $4e
    ld c, l                                       ; $560b: $4d
    ld b, $04                                     ; $560c: $06 $04
    ld h, $24                                     ; $560e: $26 $24
    inc b                                         ; $5610: $04
    ld b, $24                                     ; $5611: $06 $24
    inc h                                         ; $5613: $24
    inc b                                         ; $5614: $04
    rlca                                          ; $5615: $07
    ld h, $26                                     ; $5616: $26 $26
    inc b                                         ; $5618: $04
    rlca                                          ; $5619: $07
    ld h, $24                                     ; $561a: $26 $24
    pop de                                        ; $561c: $d1
    pop de                                        ; $561d: $d1
    pop de                                        ; $561e: $d1
    sub $d1                                       ; $561f: $d6 $d1
    pop de                                        ; $5621: $d1
    pop de                                        ; $5622: $d1
    reti                                          ; $5623: $d9


    pop de                                        ; $5624: $d1
    pop de                                        ; $5625: $d1
    pop de                                        ; $5626: $d1
    db $ed                                        ; $5627: $ed
    pop de                                        ; $5628: $d1
    pop de                                        ; $5629: $d1
    pop de                                        ; $562a: $d1
    ldh a, [rDIV]                                 ; $562b: $f0 $04
    inc b                                         ; $562d: $04
    add h                                         ; $562e: $84
    add a                                         ; $562f: $87
    inc b                                         ; $5630: $04
    inc b                                         ; $5631: $04
    add h                                         ; $5632: $84
    add a                                         ; $5633: $87
    inc b                                         ; $5634: $04
    inc b                                         ; $5635: $04
    add h                                         ; $5636: $84
    add h                                         ; $5637: $84
    inc b                                         ; $5638: $04
    inc b                                         ; $5639: $04
    add h                                         ; $563a: $84
    add h                                         ; $563b: $84
    ld d, e                                       ; $563c: $53
    ld d, h                                       ; $563d: $54
    ld d, l                                       ; $563e: $55
    ld d, [hl]                                    ; $563f: $56
    ld d, a                                       ; $5640: $57
    ld e, b                                       ; $5641: $58
    ld e, c                                       ; $5642: $59
    ld e, d                                       ; $5643: $5a
    ld e, e                                       ; $5644: $5b
    ld e, h                                       ; $5645: $5c
    ld e, l                                       ; $5646: $5d
    ld e, [hl]                                    ; $5647: $5e
    ld e, a                                       ; $5648: $5f
    ld h, b                                       ; $5649: $60
    ld h, c                                       ; $564a: $61
    ld h, d                                       ; $564b: $62
    ld h, $26                                     ; $564c: $26 $26
    inc b                                         ; $564e: $04
    inc b                                         ; $564f: $04
    ld h, $26                                     ; $5650: $26 $26
    dec b                                         ; $5652: $05
    dec b                                         ; $5653: $05
    dec b                                         ; $5654: $05
    dec b                                         ; $5655: $05
    dec b                                         ; $5656: $05
    dec b                                         ; $5657: $05
    dec b                                         ; $5658: $05
    dec b                                         ; $5659: $05
    dec b                                         ; $565a: $05
    dec b                                         ; $565b: $05
    ld h, e                                       ; $565c: $63
    ld h, h                                       ; $565d: $64
    ld h, l                                       ; $565e: $65
    ld h, [hl]                                    ; $565f: $66
    ld h, a                                       ; $5660: $67
    ld l, b                                       ; $5661: $68
    ld l, c                                       ; $5662: $69
    ld l, d                                       ; $5663: $6a
    ld l, e                                       ; $5664: $6b
    ld l, h                                       ; $5665: $6c
    ld l, l                                       ; $5666: $6d
    ld e, h                                       ; $5667: $5c
    ld l, [hl]                                    ; $5668: $6e
    ld l, a                                       ; $5669: $6f
    ld [hl], b                                    ; $566a: $70
    ld h, b                                       ; $566b: $60
    ld b, $06                                     ; $566c: $06 $06
    inc b                                         ; $566e: $04
    inc b                                         ; $566f: $04
    dec b                                         ; $5670: $05
    dec b                                         ; $5671: $05
    dec b                                         ; $5672: $05
    dec b                                         ; $5673: $05
    dec b                                         ; $5674: $05
    dec b                                         ; $5675: $05
    dec b                                         ; $5676: $05
    dec b                                         ; $5677: $05
    dec b                                         ; $5678: $05
    dec b                                         ; $5679: $05
    dec b                                         ; $567a: $05
    dec b                                         ; $567b: $05
    ld d, h                                       ; $567c: $54
    ld d, e                                       ; $567d: $53
    ld d, d                                       ; $567e: $52
    ld d, c                                       ; $567f: $51
    ld e, b                                       ; $5680: $58
    ld d, a                                       ; $5681: $57
    ld h, [hl]                                    ; $5682: $66
    ld h, l                                       ; $5683: $65
    ld e, l                                       ; $5684: $5d
    ld [bc], a                                    ; $5685: $02
    ld [hl], c                                    ; $5686: $71
    ld [hl], d                                    ; $5687: $72
    ld h, c                                       ; $5688: $61
    ld [hl], e                                    ; $5689: $73
    ld [hl], h                                    ; $568a: $74
    ld [hl], l                                    ; $568b: $75
    ld b, $04                                     ; $568c: $06 $04
    ld h, $26                                     ; $568e: $26 $26
    inc b                                         ; $5690: $04
    inc b                                         ; $5691: $04
    inc h                                         ; $5692: $24
    inc h                                         ; $5693: $24
    dec b                                         ; $5694: $05
    dec b                                         ; $5695: $05
    dec b                                         ; $5696: $05
    dec b                                         ; $5697: $05
    dec b                                         ; $5698: $05
    dec b                                         ; $5699: $05
    ld [bc], a                                    ; $569a: $02
    ld [bc], a                                    ; $569b: $02
    pop de                                        ; $569c: $d1
    pop de                                        ; $569d: $d1
    pop de                                        ; $569e: $d1
    ld a, [c]                                     ; $569f: $f2
    pop de                                        ; $56a0: $d1
    pop de                                        ; $56a1: $d1
    pop de                                        ; $56a2: $d1
    db $ec                                        ; $56a3: $ec
    pop de                                        ; $56a4: $d1
    pop de                                        ; $56a5: $d1
    pop de                                        ; $56a6: $d1
    sub $d1                                       ; $56a7: $d6 $d1
    pop de                                        ; $56a9: $d1
    pop de                                        ; $56aa: $d1
    halt                                          ; $56ab: $76
    inc b                                         ; $56ac: $04
    inc b                                         ; $56ad: $04
    add h                                         ; $56ae: $84
    add a                                         ; $56af: $87
    inc b                                         ; $56b0: $04
    inc b                                         ; $56b1: $04
    add h                                         ; $56b2: $84
    and [hl]                                      ; $56b3: $a6
    inc b                                         ; $56b4: $04
    inc b                                         ; $56b5: $04
    add h                                         ; $56b6: $84
    add h                                         ; $56b7: $84
    inc b                                         ; $56b8: $04
    inc b                                         ; $56b9: $04
    add h                                         ; $56ba: $84
    add [hl]                                      ; $56bb: $86
    ld [hl], a                                    ; $56bc: $77
    ld a, b                                       ; $56bd: $78
    ld a, c                                       ; $56be: $79
    ld a, d                                       ; $56bf: $7a
    ld a, e                                       ; $56c0: $7b
    ld a, h                                       ; $56c1: $7c
    ld a, l                                       ; $56c2: $7d
    ld a, [hl]                                    ; $56c3: $7e
    ld a, a                                       ; $56c4: $7f
    add b                                         ; $56c5: $80
    add c                                         ; $56c6: $81
    add d                                         ; $56c7: $82
    add e                                         ; $56c8: $83
    add h                                         ; $56c9: $84
    add l                                         ; $56ca: $85
    ld e, d                                       ; $56cb: $5a
    dec b                                         ; $56cc: $05
    dec b                                         ; $56cd: $05
    dec b                                         ; $56ce: $05
    dec b                                         ; $56cf: $05
    dec b                                         ; $56d0: $05
    dec b                                         ; $56d1: $05
    dec b                                         ; $56d2: $05
    dec b                                         ; $56d3: $05
    dec b                                         ; $56d4: $05
    dec c                                         ; $56d5: $0d
    dec c                                         ; $56d6: $0d
    dec c                                         ; $56d7: $0d
    xor h                                         ; $56d8: $ac
    xor h                                         ; $56d9: $ac
    dec c                                         ; $56da: $0d
    dec b                                         ; $56db: $05
    ld de, $7786                                  ; $56dc: $11 $86 $77
    ld a, b                                       ; $56df: $78
    add a                                         ; $56e0: $87
    adc b                                         ; $56e1: $88
    adc c                                         ; $56e2: $89
    adc d                                         ; $56e3: $8a
    adc e                                         ; $56e4: $8b
    adc h                                         ; $56e5: $8c
    adc l                                         ; $56e6: $8d
    adc [hl]                                      ; $56e7: $8e
    ld h, a                                       ; $56e8: $67
    adc a                                         ; $56e9: $8f
    sub b                                         ; $56ea: $90
    sub c                                         ; $56eb: $91
    dec b                                         ; $56ec: $05
    dec c                                         ; $56ed: $0d
    dec b                                         ; $56ee: $05
    dec b                                         ; $56ef: $05
    dec c                                         ; $56f0: $0d
    dec c                                         ; $56f1: $0d
    dec c                                         ; $56f2: $0d
    ld a, [bc]                                    ; $56f3: $0a
    dec c                                         ; $56f4: $0d
    dec c                                         ; $56f5: $0d
    ld a, [bc]                                    ; $56f6: $0a
    dec c                                         ; $56f7: $0d
    dec b                                         ; $56f8: $05
    ld a, [bc]                                    ; $56f9: $0a
    dec c                                         ; $56fa: $0d
    ld a, [bc]                                    ; $56fb: $0a
    ld a, c                                       ; $56fc: $79
    ld a, d                                       ; $56fd: $7a
    ld de, $9286                                  ; $56fe: $11 $86 $92
    ld a, [hl]                                    ; $5701: $7e
    add a                                         ; $5702: $87
    adc b                                         ; $5703: $88
    sub e                                         ; $5704: $93
    sub h                                         ; $5705: $94
    adc e                                         ; $5706: $8b
    adc h                                         ; $5707: $8c
    sub l                                         ; $5708: $95
    sub [hl]                                      ; $5709: $96
    sub a                                         ; $570a: $97
    sbc b                                         ; $570b: $98
    ld [bc], a                                    ; $570c: $02
    ld [bc], a                                    ; $570d: $02
    dec b                                         ; $570e: $05
    ld a, [bc]                                    ; $570f: $0a
    dec c                                         ; $5710: $0d
    ld [bc], a                                    ; $5711: $02
    ld a, [bc]                                    ; $5712: $0a
    ld a, [bc]                                    ; $5713: $0a
    ld a, [bc]                                    ; $5714: $0a
    ld a, [bc]                                    ; $5715: $0a
    ld a, [bc]                                    ; $5716: $0a
    ld a, [bc]                                    ; $5717: $0a
    ld a, [bc]                                    ; $5718: $0a
    ld a, [bc]                                    ; $5719: $0a
    ld a, [bc]                                    ; $571a: $0a
    ld a, [bc]                                    ; $571b: $0a
    pop de                                        ; $571c: $d1
    db $ed                                        ; $571d: $ed
    sbc c                                         ; $571e: $99
    sbc d                                         ; $571f: $9a
    pop de                                        ; $5720: $d1
    ldh a, [$9b]                                  ; $5721: $f0 $9b
    sbc h                                         ; $5723: $9c
    pop de                                        ; $5724: $d1
    ld a, [c]                                     ; $5725: $f2
    sbc l                                         ; $5726: $9d
    sbc [hl]                                      ; $5727: $9e
    pop de                                        ; $5728: $d1
    db $ec                                        ; $5729: $ec
    sbc a                                         ; $572a: $9f
    and b                                         ; $572b: $a0
    inc b                                         ; $572c: $04
    ld b, $0b                                     ; $572d: $06 $0b
    dec bc                                        ; $572f: $0b
    inc b                                         ; $5730: $04
    inc b                                         ; $5731: $04
    dec bc                                        ; $5732: $0b
    dec bc                                        ; $5733: $0b
    inc b                                         ; $5734: $04
    ld b, $0b                                     ; $5735: $06 $0b
    add hl, bc                                    ; $5737: $09
    inc b                                         ; $5738: $04
    daa                                           ; $5739: $27
    dec bc                                        ; $573a: $0b
    dec bc                                        ; $573b: $0b
    ld de, $a2a1                                  ; $573c: $11 $a1 $a2
    inc d                                         ; $573f: $14
    and e                                         ; $5740: $a3
    and h                                         ; $5741: $a4
    and l                                         ; $5742: $a5
    and [hl]                                      ; $5743: $a6
    and a                                         ; $5744: $a7
    xor b                                         ; $5745: $a8
    xor c                                         ; $5746: $a9
    xor d                                         ; $5747: $aa
    xor e                                         ; $5748: $ab
    xor h                                         ; $5749: $ac
    xor l                                         ; $574a: $ad
    xor [hl]                                      ; $574b: $ae
    ld bc, $0b0b                                  ; $574c: $01 $0b $0b
    ld [bc], a                                    ; $574f: $02
    dec bc                                        ; $5750: $0b
    dec bc                                        ; $5751: $0b
    dec bc                                        ; $5752: $0b
    dec bc                                        ; $5753: $0b
    add hl, bc                                    ; $5754: $09
    add hl, bc                                    ; $5755: $09
    dec bc                                        ; $5756: $0b
    ld a, [bc]                                    ; $5757: $0a
    dec bc                                        ; $5758: $0b
    dec bc                                        ; $5759: $0b
    dec bc                                        ; $575a: $0b
    dec bc                                        ; $575b: $0b
    inc [hl]                                      ; $575c: $34
    inc sp                                        ; $575d: $33
    dec l                                         ; $575e: $2d
    inc sp                                        ; $575f: $33
    jr c, jr_07a_5799                             ; $5760: $38 $37

    dec [hl]                                      ; $5762: $35
    scf                                           ; $5763: $37
    inc a                                         ; $5764: $3c
    dec sp                                        ; $5765: $3b
    add hl, sp                                    ; $5766: $39
    dec sp                                        ; $5767: $3b
    ld b, b                                       ; $5768: $40
    ccf                                           ; $5769: $3f
    dec a                                         ; $576a: $3d
    ccf                                           ; $576b: $3f
    inc b                                         ; $576c: $04
    rlca                                          ; $576d: $07
    inc b                                         ; $576e: $04
    inc h                                         ; $576f: $24
    rlca                                          ; $5770: $07
    inc b                                         ; $5771: $04
    ld b, $24                                     ; $5772: $06 $24
    ld b, $04                                     ; $5774: $06 $04
    inc b                                         ; $5776: $04
    daa                                           ; $5777: $27
    inc b                                         ; $5778: $04
    ld b, $07                                     ; $5779: $06 $07
    ld h, $d1                                     ; $577b: $26 $d1
    pop de                                        ; $577d: $d1
    pop de                                        ; $577e: $d1
    pop de                                        ; $577f: $d1
    inc [hl]                                      ; $5780: $34
    inc sp                                        ; $5781: $33
    ld sp, $3832                                  ; $5782: $31 $32 $38
    scf                                           ; $5785: $37
    ld b, l                                       ; $5786: $45
    ld b, [hl]                                    ; $5787: $46
    inc a                                         ; $5788: $3c
    dec sp                                        ; $5789: $3b
    ld c, c                                       ; $578a: $49
    ld c, d                                       ; $578b: $4a
    inc b                                         ; $578c: $04
    inc b                                         ; $578d: $04
    inc b                                         ; $578e: $04
    inc b                                         ; $578f: $04
    ld b, $04                                     ; $5790: $06 $04
    ld b, $04                                     ; $5792: $06 $04
    inc b                                         ; $5794: $04
    ld b, $04                                     ; $5795: $06 $04
    ld b, $06                                     ; $5797: $06 $06

jr_07a_5799:
    ld b, $07                                     ; $5799: $06 $07
    rlca                                          ; $579b: $07
    pop de                                        ; $579c: $d1
    sub $01                                       ; $579d: $d6 $01
    xor c                                         ; $579f: $a9
    inc sp                                        ; $57a0: $33
    inc [hl]                                      ; $57a1: $34
    xor [hl]                                      ; $57a2: $ae
    xor l                                         ; $57a3: $ad
    scf                                           ; $57a4: $37
    jr c, jr_07a_57ac                             ; $57a5: $38 $05

    and d                                         ; $57a7: $a2
    dec sp                                        ; $57a8: $3b
    inc a                                         ; $57a9: $3c
    and [hl]                                      ; $57aa: $a6
    and l                                         ; $57ab: $a5

jr_07a_57ac:
    inc b                                         ; $57ac: $04
    inc b                                         ; $57ad: $04
    ld [bc], a                                    ; $57ae: $02
    dec hl                                        ; $57af: $2b
    daa                                           ; $57b0: $27
    ld h, $2b                                     ; $57b1: $26 $2b
    dec hl                                        ; $57b3: $2b
    inc h                                         ; $57b4: $24
    inc h                                         ; $57b5: $24
    ld [bc], a                                    ; $57b6: $02
    dec hl                                        ; $57b7: $2b
    ld h, $24                                     ; $57b8: $26 $24
    dec hl                                        ; $57ba: $2b
    dec hl                                        ; $57bb: $2b
    add hl, bc                                    ; $57bc: $09
    dec h                                         ; $57bd: $25
    ld h, $9d                                     ; $57be: $26 $9d
    xor h                                         ; $57c0: $ac
    xor e                                         ; $57c1: $ab
    and b                                         ; $57c2: $a0
    sbc a                                         ; $57c3: $9f
    and c                                         ; $57c4: $a1
    xor a                                         ; $57c5: $af
    sbc d                                         ; $57c6: $9a
    sbc c                                         ; $57c7: $99
    and h                                         ; $57c8: $a4
    and e                                         ; $57c9: $a3
    sbc h                                         ; $57ca: $9c
    sbc e                                         ; $57cb: $9b
    ld bc, $0101                                  ; $57cc: $01 $01 $01
    dec hl                                        ; $57cf: $2b
    dec hl                                        ; $57d0: $2b
    dec hl                                        ; $57d1: $2b
    dec hl                                        ; $57d2: $2b
    dec hl                                        ; $57d3: $2b
    dec hl                                        ; $57d4: $2b
    add hl, bc                                    ; $57d5: $09
    dec hl                                        ; $57d6: $2b
    dec hl                                        ; $57d7: $2b
    dec hl                                        ; $57d8: $2b
    dec hl                                        ; $57d9: $2b
    dec hl                                        ; $57da: $2b
    dec hl                                        ; $57db: $2b
    ld d, h                                       ; $57dc: $54
    ld d, e                                       ; $57dd: $53
    ld b, c                                       ; $57de: $41
    ld d, e                                       ; $57df: $53
    ld e, b                                       ; $57e0: $58
    ld d, a                                       ; $57e1: $57
    ld d, l                                       ; $57e2: $55
    ld d, a                                       ; $57e3: $57
    or b                                          ; $57e4: $b0
    or c                                          ; $57e5: $b1
    ld a, c                                       ; $57e6: $79
    ld a, d                                       ; $57e7: $7a
    or d                                          ; $57e8: $b2
    or e                                          ; $57e9: $b3
    sub d                                         ; $57ea: $92
    ld a, [hl]                                    ; $57eb: $7e
    inc b                                         ; $57ec: $04
    ld b, $06                                     ; $57ed: $06 $06
    inc h                                         ; $57ef: $24
    inc b                                         ; $57f0: $04
    ld b, $04                                     ; $57f1: $06 $04
    daa                                           ; $57f3: $27
    ld a, [bc]                                    ; $57f4: $0a
    dec c                                         ; $57f5: $0d
    dec b                                         ; $57f6: $05
    dec b                                         ; $57f7: $05
    ld a, [bc]                                    ; $57f8: $0a
    ld a, [bc]                                    ; $57f9: $0a
    ld a, [bc]                                    ; $57fa: $0a
    ld [bc], a                                    ; $57fb: $02
    ld b, b                                       ; $57fc: $40
    ccf                                           ; $57fd: $3f
    ld c, l                                       ; $57fe: $4d
    ld c, [hl]                                    ; $57ff: $4e
    ld d, h                                       ; $5800: $54
    ld d, e                                       ; $5801: $53
    ld d, c                                       ; $5802: $51
    ld d, d                                       ; $5803: $52
    ld e, b                                       ; $5804: $58
    ld d, a                                       ; $5805: $57
    ld h, l                                       ; $5806: $65
    ld h, [hl]                                    ; $5807: $66
    or h                                          ; $5808: $b4
    or l                                          ; $5809: $b5
    or [hl]                                       ; $580a: $b6
    or a                                          ; $580b: $b7
    inc b                                         ; $580c: $04
    ld b, $06                                     ; $580d: $06 $06
    ld b, $04                                     ; $580f: $06 $04
    inc b                                         ; $5811: $04
    inc b                                         ; $5812: $04
    ld b, $06                                     ; $5813: $06 $06
    inc b                                         ; $5815: $04
    inc b                                         ; $5816: $04
    inc b                                         ; $5817: $04
    ld a, [bc]                                    ; $5818: $0a
    dec c                                         ; $5819: $0d
    dec c                                         ; $581a: $0d
    dec c                                         ; $581b: $0d
    ccf                                           ; $581c: $3f
    ld b, b                                       ; $581d: $40
    cp b                                          ; $581e: $b8
    cp c                                          ; $581f: $b9
    ld d, e                                       ; $5820: $53
    ld d, h                                       ; $5821: $54
    cp d                                          ; $5822: $ba
    cp e                                          ; $5823: $bb
    ld d, a                                       ; $5824: $57
    ld e, b                                       ; $5825: $58
    ld bc, $bc02                                  ; $5826: $01 $02 $bc
    ld a, [hl+]                                   ; $5829: $2a
    inc bc                                        ; $582a: $03
    inc b                                         ; $582b: $04
    inc h                                         ; $582c: $24
    daa                                           ; $582d: $27
    ld a, [bc]                                    ; $582e: $0a
    add hl, bc                                    ; $582f: $09
    inc h                                         ; $5830: $24
    ld h, $0a                                     ; $5831: $26 $0a
    add hl, bc                                    ; $5833: $09
    ld h, $24                                     ; $5834: $26 $24
    ld [bc], a                                    ; $5836: $02
    ld bc, $020d                                  ; $5837: $01 $0d $02
    ld bc, $bd01                                  ; $583a: $01 $01 $bd
    cp [hl]                                       ; $583d: $be
    cp a                                          ; $583e: $bf
    ret nz                                        ; $583f: $c0

    ld hl, $c2c1                                  ; $5840: $21 $c1 $c2
    jp $c409                                      ; $5843: $c3 $09 $c4


    push bc                                       ; $5846: $c5
    add $0d                                       ; $5847: $c6 $0d
    jr z, @+$2b                                   ; $5849: $28 $29

    ld a, [hl+]                                   ; $584b: $2a
    add hl, bc                                    ; $584c: $09
    add hl, bc                                    ; $584d: $09
    ld a, [bc]                                    ; $584e: $0a
    add hl, bc                                    ; $584f: $09
    ld [bc], a                                    ; $5850: $02
    add hl, bc                                    ; $5851: $09
    add hl, bc                                    ; $5852: $09
    add hl, bc                                    ; $5853: $09
    ld bc, $0909                                  ; $5854: $01 $09 $09
    add hl, bc                                    ; $5857: $09
    ld bc, $0101                                  ; $5858: $01 $01 $01
    ld [bc], a                                    ; $585b: $02
    rst $00                                       ; $585c: $c7
    cp c                                          ; $585d: $b9
    ret z                                         ; $585e: $c8

    cp c                                          ; $585f: $b9
    ret                                           ; $5860: $c9


    cp e                                          ; $5861: $bb
    ld e, c                                       ; $5862: $59
    ld e, d                                       ; $5863: $5a
    add h                                         ; $5864: $84
    add e                                         ; $5865: $83
    jp z, $d6cb                                   ; $5866: $ca $cb $d6

    pop de                                        ; $5869: $d1
    pop de                                        ; $586a: $d1
    pop de                                        ; $586b: $d1
    add hl, bc                                    ; $586c: $09
    add hl, bc                                    ; $586d: $09
    ld a, [bc]                                    ; $586e: $0a
    add hl, bc                                    ; $586f: $09
    add hl, bc                                    ; $5870: $09
    add hl, bc                                    ; $5871: $09
    ld bc, $8c02                                  ; $5872: $01 $02 $8c
    adc [hl]                                      ; $5875: $8e
    adc h                                         ; $5876: $8c
    adc a                                         ; $5877: $8f
    and [hl]                                      ; $5878: $a6
    add h                                         ; $5879: $84
    add h                                         ; $587a: $84
    add h                                         ; $587b: $84
    ld [hl], a                                    ; $587c: $77
    call z, $cecd                                 ; $587d: $cc $cd $ce
    adc c                                         ; $5880: $89
    adc d                                         ; $5881: $8a
    sub d                                         ; $5882: $92
    ld a, [hl]                                    ; $5883: $7e
    adc l                                         ; $5884: $8d
    rst $08                                       ; $5885: $cf
    ret z                                         ; $5886: $c8

    cp c                                          ; $5887: $b9
    ret nc                                        ; $5888: $d0

    ld l, d                                       ; $5889: $6a
    ld e, c                                       ; $588a: $59
    ld e, d                                       ; $588b: $5a
    ld [bc], a                                    ; $588c: $02
    ld a, [bc]                                    ; $588d: $0a
    ld a, [bc]                                    ; $588e: $0a
    ld a, [bc]                                    ; $588f: $0a
    ld a, [bc]                                    ; $5890: $0a
    ld a, [bc]                                    ; $5891: $0a
    ld a, [bc]                                    ; $5892: $0a
    ld bc, $0a0a                                  ; $5893: $01 $0a $0a
    add hl, bc                                    ; $5896: $09
    ld a, [bc]                                    ; $5897: $0a
    ld a, [bc]                                    ; $5898: $0a
    ld bc, $0102                                  ; $5899: $01 $02 $01
    pop de                                        ; $589c: $d1

jr_07a_589d:
    inc d                                         ; $589d: $14
    dec b                                         ; $589e: $05
    ld b, $17                                     ; $589f: $06 $17
    jr @+$09                                      ; $58a1: $18 $07

    jp nc, $208b                                  ; $58a3: $d2 $8b $20

    rst $00                                       ; $58a6: $c7
    cp c                                          ; $58a7: $b9
    db $d3                                        ; $58a8: $d3
    call nc, $d6d5                                ; $58a9: $d4 $d5 $d6
    add hl, bc                                    ; $58ac: $09
    ld bc, $0102                                  ; $58ad: $01 $02 $01
    ld bc, $0201                                  ; $58b0: $01 $01 $02
    ld a, [bc]                                    ; $58b3: $0a
    add hl, bc                                    ; $58b4: $09
    ld bc, $0909                                  ; $58b5: $01 $09 $09
    add hl, bc                                    ; $58b8: $09
    add hl, bc                                    ; $58b9: $09
    add hl, bc                                    ; $58ba: $09
    add hl, bc                                    ; $58bb: $09
    ld de, $d712                                  ; $58bc: $11 $12 $d7
    inc d                                         ; $58bf: $14
    dec d                                         ; $58c0: $15
    ld d, $17                                     ; $58c1: $16 $17
    jr jr_07a_589d                                ; $58c3: $18 $d8

    ld e, $1f                                     ; $58c5: $1e $1f
    jr nz, jr_07a_58ea                            ; $58c7: $20 $21

    reti                                          ; $58c9: $d9


    jp c, Jump_000_01db                           ; $58ca: $da $db $01

    ld [bc], a                                    ; $58cd: $02
    add hl, bc                                    ; $58ce: $09
    ld [bc], a                                    ; $58cf: $02
    ld bc, $0101                                  ; $58d0: $01 $01 $01
    ld [bc], a                                    ; $58d3: $02
    ld a, [bc]                                    ; $58d4: $0a
    ld [bc], a                                    ; $58d5: $02
    ld bc, $0202                                  ; $58d6: $01 $02 $02
    add hl, bc                                    ; $58d9: $09
    ld a, [bc]                                    ; $58da: $0a
    ld a, [bc]                                    ; $58db: $0a
    reti                                          ; $58dc: $d9


    pop de                                        ; $58dd: $d1
    pop de                                        ; $58de: $d1
    pop de                                        ; $58df: $d1
    db $ed                                        ; $58e0: $ed

jr_07a_58e1:
    pop de                                        ; $58e1: $d1
    pop de                                        ; $58e2: $d1
    pop de                                        ; $58e3: $d1
    ldh a, [$d1]                                  ; $58e4: $f0 $d1
    pop de                                        ; $58e6: $d1
    pop de                                        ; $58e7: $d1
    ld a, [c]                                     ; $58e8: $f2
    pop de                                        ; $58e9: $d1

jr_07a_58ea:
    pop de                                        ; $58ea: $d1
    pop de                                        ; $58eb: $d1
    daa                                           ; $58ec: $27
    inc b                                         ; $58ed: $04
    inc b                                         ; $58ee: $04
    inc b                                         ; $58ef: $04
    inc h                                         ; $58f0: $24
    inc b                                         ; $58f1: $04
    inc b                                         ; $58f2: $04
    inc b                                         ; $58f3: $04
    ld h, $04                                     ; $58f4: $26 $04
    inc b                                         ; $58f6: $04
    inc b                                         ; $58f7: $04
    daa                                           ; $58f8: $27
    inc b                                         ; $58f9: $04
    inc b                                         ; $58fa: $04
    inc b                                         ; $58fb: $04
    inc [hl]                                      ; $58fc: $34
    call c, $dedd                                 ; $58fd: $dc $dd $de
    jr c, jr_07a_58e1                             ; $5900: $38 $df

    ldh [$e1], a                                  ; $5902: $e0 $e1
    inc a                                         ; $5904: $3c
    ld [c], a                                     ; $5905: $e2
    db $e3                                        ; $5906: $e3
    db $e4                                        ; $5907: $e4
    ld b, b                                       ; $5908: $40
    push hl                                       ; $5909: $e5
    and $41                                       ; $590a: $e6 $41
    inc h                                         ; $590c: $24
    ld c, $0c                                     ; $590d: $0e $0c
    rrca                                          ; $590f: $0f
    ld h, $0e                                     ; $5910: $26 $0e
    inc c                                         ; $5912: $0c
    rrca                                          ; $5913: $0f
    inc h                                         ; $5914: $24
    ld c, $0c                                     ; $5915: $0e $0c
    rrca                                          ; $5917: $0f
    ld h, $0c                                     ; $5918: $26 $0c
    ld c, $04                                     ; $591a: $0e $04
    rst $20                                       ; $591c: $e7
    add sp, -$17                                  ; $591d: $e8 $e9
    ld b, l                                       ; $591f: $45
    ld [$eceb], a                                 ; $5920: $ea $eb $ec
    ld c, c                                       ; $5923: $49
    db $ed                                        ; $5924: $ed
    xor $ef                                       ; $5925: $ee $ef
    ld c, l                                       ; $5927: $4d
    ld b, d                                       ; $5928: $42
    ld c, a                                       ; $5929: $4f
    ld d, b                                       ; $592a: $50
    ld d, c                                       ; $592b: $51
    rrca                                          ; $592c: $0f
    ld c, $0c                                     ; $592d: $0e $0c
    rlca                                          ; $592f: $07
    rrca                                          ; $5930: $0f
    ld c, $0c                                     ; $5931: $0e $0c
    rlca                                          ; $5933: $07
    rrca                                          ; $5934: $0f
    ld c, $0e                                     ; $5935: $0e $0e
    inc b                                         ; $5937: $04
    inc b                                         ; $5938: $04
    inc b                                         ; $5939: $04
    inc b                                         ; $593a: $04
    ld b, $46                                     ; $593b: $06 $46
    call c, Call_000_35dd                         ; $593d: $dc $dd $35
    ld c, d                                       ; $5940: $4a
    rst $18                                       ; $5941: $df
    ldh [$39], a                                  ; $5942: $e0 $39
    ld c, [hl]                                    ; $5944: $4e
    ld [c], a                                     ; $5945: $e2
    db $e3                                        ; $5946: $e3
    dec a                                         ; $5947: $3d
    ld d, d                                       ; $5948: $52
    push hl                                       ; $5949: $e5
    and $41                                       ; $594a: $e6 $41
    rlca                                          ; $594c: $07
    inc c                                         ; $594d: $0c
    ld c, $04                                     ; $594e: $0e $04
    inc b                                         ; $5950: $04
    rrca                                          ; $5951: $0f
    ld c, $06                                     ; $5952: $0e $06
    inc b                                         ; $5954: $04
    inc c                                         ; $5955: $0c
    inc c                                         ; $5956: $0c
    ld b, $06                                     ; $5957: $06 $06
    inc c                                         ; $5959: $0c
    rrca                                          ; $595a: $0f
    inc b                                         ; $595b: $04
    inc [hl]                                      ; $595c: $34
    inc sp                                        ; $595d: $33
    pop de                                        ; $595e: $d1
    pop de                                        ; $595f: $d1
    jr c, jr_07a_5999                             ; $5960: $38 $37

    ldh a, [$d1]                                  ; $5962: $f0 $d1
    inc a                                         ; $5964: $3c
    dec sp                                        ; $5965: $3b
    ld a, [c]                                     ; $5966: $f2
    pop de                                        ; $5967: $d1
    ld b, b                                       ; $5968: $40
    ccf                                           ; $5969: $3f
    db $ec                                        ; $596a: $ec
    pop de                                        ; $596b: $d1
    inc b                                         ; $596c: $04
    rlca                                          ; $596d: $07
    inc b                                         ; $596e: $04
    inc b                                         ; $596f: $04
    inc b                                         ; $5970: $04
    ld b, $24                                     ; $5971: $06 $24
    inc b                                         ; $5973: $04
    ld b, $04                                     ; $5974: $06 $04
    ld h, $04                                     ; $5976: $26 $04
    ld b, $06                                     ; $5978: $06 $06
    ld b, $04                                     ; $597a: $06 $04
    ld d, h                                       ; $597c: $54
    ldh a, [$f1]                                  ; $597d: $f0 $f1
    ld d, l                                       ; $597f: $55
    ld e, b                                       ; $5980: $58
    ld a, [c]                                     ; $5981: $f2
    di                                            ; $5982: $f3
    db $f4                                        ; $5983: $f4
    ld de, $7786                                  ; $5984: $11 $86 $77
    ld a, b                                       ; $5987: $78
    add a                                         ; $5988: $87
    adc b                                         ; $5989: $88
    ld a, e                                       ; $598a: $7b
    adc d                                         ; $598b: $8a
    daa                                           ; $598c: $27
    inc c                                         ; $598d: $0c
    inc c                                         ; $598e: $0c
    rlca                                          ; $598f: $07
    daa                                           ; $5990: $27
    dec c                                         ; $5991: $0d
    dec c                                         ; $5992: $0d
    dec c                                         ; $5993: $0d
    ld [bc], a                                    ; $5994: $02
    ld a, [bc]                                    ; $5995: $0a
    ld [bc], a                                    ; $5996: $02
    ld [bc], a                                    ; $5997: $02
    ld a, [bc]                                    ; $5998: $0a

jr_07a_5999:
    ld a, [bc]                                    ; $5999: $0a
    ld [bc], a                                    ; $599a: $02
    ld a, [bc]                                    ; $599b: $0a
    ld d, [hl]                                    ; $599c: $56
    ld h, e                                       ; $599d: $63
    ld h, h                                       ; $599e: $64
    ld h, l                                       ; $599f: $65
    ld h, c                                       ; $59a0: $61
    ld [hl], e                                    ; $59a1: $73
    ld [hl], h                                    ; $59a2: $74
    ld [hl], l                                    ; $59a3: $75
    ld a, c                                       ; $59a4: $79
    ld a, d                                       ; $59a5: $7a
    ld de, $9286                                  ; $59a6: $11 $86 $92
    ld a, [hl]                                    ; $59a9: $7e
    add a                                         ; $59aa: $87
    push af                                       ; $59ab: $f5
    rlca                                          ; $59ac: $07
    inc b                                         ; $59ad: $04
    ld b, $04                                     ; $59ae: $06 $04
    dec b                                         ; $59b0: $05
    dec b                                         ; $59b1: $05
    dec b                                         ; $59b2: $05
    dec b                                         ; $59b3: $05
    dec b                                         ; $59b4: $05
    ld [bc], a                                    ; $59b5: $02
    dec b                                         ; $59b6: $05
    dec c                                         ; $59b7: $0d
    ld a, [bc]                                    ; $59b8: $0a
    dec b                                         ; $59b9: $05
    ld a, [bc]                                    ; $59ba: $0a
    dec c                                         ; $59bb: $0d
    ld h, [hl]                                    ; $59bc: $66
    ldh a, [$f1]                                  ; $59bd: $f0 $f1
    ld d, l                                       ; $59bf: $55
    ld e, a                                       ; $59c0: $5f
    ld h, b                                       ; $59c1: $60
    ld h, c                                       ; $59c2: $61
    ld [hl], e                                    ; $59c3: $73
    or $f7                                        ; $59c4: $f6 $f7
    ld hl, sp+$7a                                 ; $59c6: $f8 $7a
    ld sp, hl                                     ; $59c8: $f9
    ld a, [$7efb]                                 ; $59c9: $fa $fb $7e
    inc b                                         ; $59cc: $04
    inc c                                         ; $59cd: $0c

Jump_07a_59ce:
    rrca                                          ; $59ce: $0f
    rlca                                          ; $59cf: $07
    dec b                                         ; $59d0: $05
    dec b                                         ; $59d1: $05
    dec b                                         ; $59d2: $05
    dec b                                         ; $59d3: $05
    dec c                                         ; $59d4: $0d
    dec c                                         ; $59d5: $0d
    dec c                                         ; $59d6: $0d
    dec b                                         ; $59d7: $05
    dec c                                         ; $59d8: $0d
    dec c                                         ; $59d9: $0d
    dec c                                         ; $59da: $0d
    dec b                                         ; $59db: $05
    ld d, h                                       ; $59dc: $54
    ld d, e                                       ; $59dd: $53
    sub $d1                                       ; $59de: $d6 $d1
    ld e, b                                       ; $59e0: $58
    ld d, a                                       ; $59e1: $57
    reti                                          ; $59e2: $d9


    pop de                                        ; $59e3: $d1
    ld de, $ed86                                  ; $59e4: $11 $86 $ed
    pop de                                        ; $59e7: $d1
    add a                                         ; $59e8: $87
    adc b                                         ; $59e9: $88
    ldh a, [$d1]                                  ; $59ea: $f0 $d1
    inc b                                         ; $59ec: $04
    rlca                                          ; $59ed: $07
    and a                                         ; $59ee: $a7
    add h                                         ; $59ef: $84
    inc b                                         ; $59f0: $04
    inc b                                         ; $59f1: $04
    and [hl]                                      ; $59f2: $a6
    add h                                         ; $59f3: $84
    dec b                                         ; $59f4: $05
    dec c                                         ; $59f5: $0d
    and [hl]                                      ; $59f6: $a6
    add h                                         ; $59f7: $84
    dec c                                         ; $59f8: $0d
    dec c                                         ; $59f9: $0d
    and a                                         ; $59fa: $a7
    add h                                         ; $59fb: $84
    adc e                                         ; $59fc: $8b
    db $fc                                        ; $59fd: $fc
    db $fd                                        ; $59fe: $fd
    cp $67                                        ; $59ff: $fe $67
    adc a                                         ; $5a01: $8f
    sub b                                         ; $5a02: $90
    ld l, d                                       ; $5a03: $6a
    rst $38                                       ; $5a04: $ff
    nop                                           ; $5a05: $00
    ld bc, $d183                                  ; $5a06: $01 $83 $d1
    pop de                                        ; $5a09: $d1
    pop de                                        ; $5a0a: $d1
    pop de                                        ; $5a0b: $d1
    ld a, [bc]                                    ; $5a0c: $0a
    ld a, [bc]                                    ; $5a0d: $0a
    ld a, [bc]                                    ; $5a0e: $0a
    ld a, [bc]                                    ; $5a0f: $0a
    ld bc, $0a0a                                  ; $5a10: $01 $0a $0a
    ld [bc], a                                    ; $5a13: $02
    adc a                                         ; $5a14: $8f
    adc [hl]                                      ; $5a15: $8e
    adc [hl]                                      ; $5a16: $8e
    adc a                                         ; $5a17: $8f
    add h                                         ; $5a18: $84
    add h                                         ; $5a19: $84
    add h                                         ; $5a1a: $84
    add h                                         ; $5a1b: $84
    ret z                                         ; $5a1c: $c8

    cp c                                          ; $5a1d: $b9
    adc e                                         ; $5a1e: $8b
    adc h                                         ; $5a1f: $8c
    ld e, c                                       ; $5a20: $59
    ld e, d                                       ; $5a21: $5a
    ld h, a                                       ; $5a22: $67
    adc a                                         ; $5a23: $8f
    add e                                         ; $5a24: $83
    add h                                         ; $5a25: $84
    ld [hl], c                                    ; $5a26: $71
    ld [hl], d                                    ; $5a27: $72
    pop de                                        ; $5a28: $d1
    halt                                          ; $5a29: $76
    ld [bc], a                                    ; $5a2a: $02
    jp z, $0a0a                                   ; $5a2b: $ca $0a $0a

    dec c                                         ; $5a2e: $0d
    ld a, [bc]                                    ; $5a2f: $0a
    ld [bc], a                                    ; $5a30: $02
    ld [bc], a                                    ; $5a31: $02
    ld [bc], a                                    ; $5a32: $02
    dec c                                         ; $5a33: $0d
    xor h                                         ; $5a34: $ac
    xor h                                         ; $5a35: $ac
    ld [bc], a                                    ; $5a36: $02
    ld [bc], a                                    ; $5a37: $02
    add h                                         ; $5a38: $84
    add h                                         ; $5a39: $84
    adc [hl]                                      ; $5a3a: $8e
    adc a                                         ; $5a3b: $8f
    inc bc                                        ; $5a3c: $03
    inc b                                         ; $5a3d: $04
    dec b                                         ; $5a3e: $05
    cp c                                          ; $5a3f: $b9
    sub b                                         ; $5a40: $90
    ld l, d                                       ; $5a41: $6a
    ld e, c                                       ; $5a42: $59
    ld e, d                                       ; $5a43: $5a
    ld e, e                                       ; $5a44: $5b
    ld e, h                                       ; $5a45: $5c
    ld e, l                                       ; $5a46: $5d
    ld [bc], a                                    ; $5a47: $02
    set 7, a                                      ; $5a48: $cb $ff
    nop                                           ; $5a4a: $00
    ld bc, $0d0d                                  ; $5a4b: $01 $0d $0d
    dec c                                         ; $5a4e: $0d
    dec c                                         ; $5a4f: $0d
    ld a, [bc]                                    ; $5a50: $0a
    dec b                                         ; $5a51: $05
    dec b                                         ; $5a52: $05
    dec b                                         ; $5a53: $05
    dec b                                         ; $5a54: $05
    ld [bc], a                                    ; $5a55: $02
    dec b                                         ; $5a56: $05
    dec b                                         ; $5a57: $05
    adc h                                         ; $5a58: $8c
    adc h                                         ; $5a59: $8c
    adc [hl]                                      ; $5a5a: $8e

Jump_07a_5a5b:
    adc a                                         ; $5a5b: $8f
    adc e                                         ; $5a5c: $8b
    adc h                                         ; $5a5d: $8c
    ld a, [c]                                     ; $5a5e: $f2
    pop de                                        ; $5a5f: $d1
    ld h, a                                       ; $5a60: $67
    adc a                                         ; $5a61: $8f
    db $ec                                        ; $5a62: $ec
    pop de                                        ; $5a63: $d1
    add h                                         ; $5a64: $84
    add e                                         ; $5a65: $83
    add e                                         ; $5a66: $83
    pop de                                        ; $5a67: $d1
    add e                                         ; $5a68: $83
    pop de                                        ; $5a69: $d1
    pop de                                        ; $5a6a: $d1
    pop de                                        ; $5a6b: $d1
    dec c                                         ; $5a6c: $0d
    dec c                                         ; $5a6d: $0d
    and a                                         ; $5a6e: $a7
    add h                                         ; $5a6f: $84
    dec b                                         ; $5a70: $05
    dec c                                         ; $5a71: $0d
    add [hl]                                      ; $5a72: $86
    add h                                         ; $5a73: $84
    adc [hl]                                      ; $5a74: $8e
    adc a                                         ; $5a75: $8f
    adc h                                         ; $5a76: $8c
    add h                                         ; $5a77: $84
    adc h                                         ; $5a78: $8c
    add h                                         ; $5a79: $84
    add h                                         ; $5a7a: $84
    inc b                                         ; $5a7b: $04
    pop de                                        ; $5a7c: $d1
    jp z, $ffcb                                   ; $5a7d: $ca $cb $ff

    pop de                                        ; $5a80: $d1
    pop de                                        ; $5a81: $d1
    pop de                                        ; $5a82: $d1
    pop de                                        ; $5a83: $d1
    pop de                                        ; $5a84: $d1
    pop de                                        ; $5a85: $d1
    pop de                                        ; $5a86: $d1
    pop de                                        ; $5a87: $d1
    pop de                                        ; $5a88: $d1
    pop de                                        ; $5a89: $d1
    pop de                                        ; $5a8a: $d1
    pop de                                        ; $5a8b: $d1
    add h                                         ; $5a8c: $84
    adc h                                         ; $5a8d: $8c
    adc h                                         ; $5a8e: $8c
    adc [hl]                                      ; $5a8f: $8e
    inc b                                         ; $5a90: $04
    add h                                         ; $5a91: $84
    add h                                         ; $5a92: $84
    add h                                         ; $5a93: $84
    inc b                                         ; $5a94: $04
    inc b                                         ; $5a95: $04
    inc b                                         ; $5a96: $04
    inc b                                         ; $5a97: $04
    inc b                                         ; $5a98: $04
    inc b                                         ; $5a99: $04
    inc b                                         ; $5a9a: $04
    inc b                                         ; $5a9b: $04
    nop                                           ; $5a9c: $00
    ld bc, $7683                                  ; $5a9d: $01 $83 $76
    pop de                                        ; $5aa0: $d1
    pop de                                        ; $5aa1: $d1
    pop de                                        ; $5aa2: $d1
    pop de                                        ; $5aa3: $d1
    pop de                                        ; $5aa4: $d1
    pop de                                        ; $5aa5: $d1
    pop de                                        ; $5aa6: $d1
    pop de                                        ; $5aa7: $d1
    pop de                                        ; $5aa8: $d1
    pop de                                        ; $5aa9: $d1
    pop de                                        ; $5aaa: $d1
    pop de                                        ; $5aab: $d1
    adc h                                         ; $5aac: $8c
    adc [hl]                                      ; $5aad: $8e
    adc h                                         ; $5aae: $8c
    add a                                         ; $5aaf: $87
    add h                                         ; $5ab0: $84
    add h                                         ; $5ab1: $84
    add h                                         ; $5ab2: $84
    add h                                         ; $5ab3: $84
    inc b                                         ; $5ab4: $04
    inc b                                         ; $5ab5: $04
    inc b                                         ; $5ab6: $04
    inc b                                         ; $5ab7: $04

jr_07a_5ab8:
    inc b                                         ; $5ab8: $04
    inc b                                         ; $5ab9: $04
    inc b                                         ; $5aba: $04
    inc b                                         ; $5abb: $04
    ld [bc], a                                    ; $5abc: $02
    jp z, $ffcb                                   ; $5abd: $ca $cb $ff

    pop de                                        ; $5ac0: $d1
    pop de                                        ; $5ac1: $d1
    pop de                                        ; $5ac2: $d1
    pop de                                        ; $5ac3: $d1
    pop de                                        ; $5ac4: $d1
    pop de                                        ; $5ac5: $d1
    pop de                                        ; $5ac6: $d1
    pop de                                        ; $5ac7: $d1
    pop de                                        ; $5ac8: $d1
    pop de                                        ; $5ac9: $d1
    pop de                                        ; $5aca: $d1
    pop de                                        ; $5acb: $d1
    adc a                                         ; $5acc: $8f
    adc h                                         ; $5acd: $8c
    adc h                                         ; $5ace: $8c
    adc [hl]                                      ; $5acf: $8e
    add h                                         ; $5ad0: $84
    add h                                         ; $5ad1: $84
    add h                                         ; $5ad2: $84
    add h                                         ; $5ad3: $84
    inc b                                         ; $5ad4: $04
    inc b                                         ; $5ad5: $04
    inc b                                         ; $5ad6: $04
    inc b                                         ; $5ad7: $04
    inc b                                         ; $5ad8: $04
    inc b                                         ; $5ad9: $04
    inc b                                         ; $5ada: $04
    inc b                                         ; $5adb: $04
    nop                                           ; $5adc: $00
    ld bc, $8383                                  ; $5add: $01 $83 $83
    pop de                                        ; $5ae0: $d1
    pop de                                        ; $5ae1: $d1
    pop de                                        ; $5ae2: $d1
    pop de                                        ; $5ae3: $d1
    pop de                                        ; $5ae4: $d1
    pop de                                        ; $5ae5: $d1
    pop de                                        ; $5ae6: $d1
    inc sp                                        ; $5ae7: $33
    pop de                                        ; $5ae8: $d1
    pop de                                        ; $5ae9: $d1
    ldh a, [$37]                                  ; $5aea: $f0 $37
    adc h                                         ; $5aec: $8c
    adc a                                         ; $5aed: $8f
    adc h                                         ; $5aee: $8c
    xor [hl]                                      ; $5aef: $ae
    add h                                         ; $5af0: $84
    add h                                         ; $5af1: $84
    add h                                         ; $5af2: $84
    add h                                         ; $5af3: $84
    add h                                         ; $5af4: $84
    add h                                         ; $5af5: $84
    add h                                         ; $5af6: $84
    daa                                           ; $5af7: $27
    inc b                                         ; $5af8: $04
    inc b                                         ; $5af9: $04
    inc b                                         ; $5afa: $04
    ld h, $84                                     ; $5afb: $26 $84
    sbc c                                         ; $5afd: $99
    sbc d                                         ; $5afe: $9a
    ld b, $d6                                     ; $5aff: $06 $d6
    sbc e                                         ; $5b01: $9b
    sbc h                                         ; $5b02: $9c
    and e                                         ; $5b03: $a3
    inc [hl]                                      ; $5b04: $34
    inc d                                         ; $5b05: $14
    dec b                                         ; $5b06: $05
    sbc l                                         ; $5b07: $9d
    jr c, jr_07a_5ab8                             ; $5b08: $38 $ae

    xor l                                         ; $5b0a: $ad
    xor h                                         ; $5b0b: $ac
    xor h                                         ; $5b0c: $ac
    dec bc                                        ; $5b0d: $0b
    dec bc                                        ; $5b0e: $0b
    add hl, bc                                    ; $5b0f: $09
    add h                                         ; $5b10: $84
    dec bc                                        ; $5b11: $0b
    dec bc                                        ; $5b12: $0b
    dec bc                                        ; $5b13: $0b
    ld h, $02                                     ; $5b14: $26 $02
    ld bc, $262b                                  ; $5b16: $01 $2b $26
    dec hl                                        ; $5b19: $2b
    dec hl                                        ; $5b1a: $2b
    dec hl                                        ; $5b1b: $2b
    and c                                         ; $5b1c: $a1
    and d                                         ; $5b1d: $a2
    ld h, $07                                     ; $5b1e: $26 $07
    and h                                         ; $5b20: $a4
    and l                                         ; $5b21: $a5
    and [hl]                                      ; $5b22: $a6
    sbc a                                         ; $5b23: $9f
    ld de, $d712                                  ; $5b24: $11 $12 $d7
    sbc l                                         ; $5b27: $9d
    xor e                                         ; $5b28: $ab
    and b                                         ; $5b29: $a0
    sbc a                                         ; $5b2a: $9f
    and [hl]                                      ; $5b2b: $a6
    dec bc                                        ; $5b2c: $0b
    dec bc                                        ; $5b2d: $0b
    ld bc, $0b0a                                  ; $5b2e: $01 $0a $0b
    dec bc                                        ; $5b31: $0b
    dec bc                                        ; $5b32: $0b
    dec hl                                        ; $5b33: $2b
    ld bc, $0901                                  ; $5b34: $01 $01 $09
    dec hl                                        ; $5b37: $2b
    dec hl                                        ; $5b38: $2b
    dec hl                                        ; $5b39: $2b
    dec hl                                        ; $5b3a: $2b
    dec bc                                        ; $5b3b: $0b
    db $ec                                        ; $5b3c: $ec
    pop de                                        ; $5b3d: $d1
    pop de                                        ; $5b3e: $d1
    pop de                                        ; $5b3f: $d1
    sub $d1                                       ; $5b40: $d6 $d1
    pop de                                        ; $5b42: $d1
    pop de                                        ; $5b43: $d1
    inc [hl]                                      ; $5b44: $34
    inc sp                                        ; $5b45: $33

jr_07a_5b46:
    ld sp, $3832                                  ; $5b46: $31 $32 $38
    scf                                           ; $5b49: $37
    ld [$0609], sp                                ; $5b4a: $08 $09 $06
    inc b                                         ; $5b4d: $04
    inc b                                         ; $5b4e: $04
    inc b                                         ; $5b4f: $04
    daa                                           ; $5b50: $27
    inc b                                         ; $5b51: $04
    inc b                                         ; $5b52: $04
    inc b                                         ; $5b53: $04
    ld b, $04                                     ; $5b54: $06 $04
    inc b                                         ; $5b56: $04
    inc b                                         ; $5b57: $04
    inc b                                         ; $5b58: $04
    ld b, $0f                                     ; $5b59: $06 $0f
    rrca                                          ; $5b5b: $0f
    pop de                                        ; $5b5c: $d1
    pop de                                        ; $5b5d: $d1
    ld a, [c]                                     ; $5b5e: $f2
    dec sp                                        ; $5b5f: $3b
    pop de                                        ; $5b60: $d1
    pop de                                        ; $5b61: $d1
    db $ec                                        ; $5b62: $ec
    ccf                                           ; $5b63: $3f
    pop de                                        ; $5b64: $d1
    pop de                                        ; $5b65: $d1
    sub $53                                       ; $5b66: $d6 $53
    pop de                                        ; $5b68: $d1
    pop de                                        ; $5b69: $d1
    reti                                          ; $5b6a: $d9


    ld d, a                                       ; $5b6b: $57
    inc b                                         ; $5b6c: $04
    add h                                         ; $5b6d: $84
    add h                                         ; $5b6e: $84
    ld h, $04                                     ; $5b6f: $26 $04
    add h                                         ; $5b71: $84
    and a                                         ; $5b72: $a7
    inc h                                         ; $5b73: $24
    inc b                                         ; $5b74: $04
    add h                                         ; $5b75: $84
    add [hl]                                      ; $5b76: $86
    ld h, $04                                     ; $5b77: $26 $04
    add h                                         ; $5b79: $84
    add h                                         ; $5b7a: $84
    inc h                                         ; $5b7b: $24
    inc a                                         ; $5b7c: $3c
    jr nz, jr_07a_5b46                            ; $5b7d: $20 $c7

    and d                                         ; $5b7f: $a2
    ld b, b                                       ; $5b80: $40
    sbc a                                         ; $5b81: $9f
    and [hl]                                      ; $5b82: $a6
    and l                                         ; $5b83: $a5
    ld d, h                                       ; $5b84: $54
    sbc l                                         ; $5b85: $9d
    ld bc, $5802                                  ; $5b86: $01 $02 $58
    and [hl]                                      ; $5b89: $a6
    sbc a                                         ; $5b8a: $9f
    and b                                         ; $5b8b: $a0
    inc h                                         ; $5b8c: $24
    ld [bc], a                                    ; $5b8d: $02
    add hl, bc                                    ; $5b8e: $09
    dec hl                                        ; $5b8f: $2b
    inc h                                         ; $5b90: $24
    dec bc                                        ; $5b91: $0b
    dec hl                                        ; $5b92: $2b
    dec hl                                        ; $5b93: $2b
    inc h                                         ; $5b94: $24
    dec bc                                        ; $5b95: $0b
    ld bc, $2401                                  ; $5b96: $01 $01 $24
    dec hl                                        ; $5b99: $2b
    dec bc                                        ; $5b9a: $0b
    dec bc                                        ; $5b9b: $0b
    and c                                         ; $5b9c: $a1
    ld a, [bc]                                    ; $5b9d: $0a
    sbc d                                         ; $5b9e: $9a
    sbc c                                         ; $5b9f: $99
    and h                                         ; $5ba0: $a4
    and e                                         ; $5ba1: $a3
    sbc h                                         ; $5ba2: $9c
    sbc e                                         ; $5ba3: $9b
    add hl, bc                                    ; $5ba4: $09
    sbc l                                         ; $5ba5: $9d
    ld h, $27                                     ; $5ba6: $26 $27
    xor e                                         ; $5ba8: $ab
    xor h                                         ; $5ba9: $ac
    xor l                                         ; $5baa: $ad
    xor [hl]                                      ; $5bab: $ae
    dec hl                                        ; $5bac: $2b
    add hl, bc                                    ; $5bad: $09
    dec hl                                        ; $5bae: $2b
    dec hl                                        ; $5baf: $2b
    dec hl                                        ; $5bb0: $2b
    dec hl                                        ; $5bb1: $2b
    dec hl                                        ; $5bb2: $2b
    dec hl                                        ; $5bb3: $2b
    ld bc, $010b                                  ; $5bb4: $01 $0b $01
    ld [bc], a                                    ; $5bb7: $02
    dec bc                                        ; $5bb8: $0b
    dec bc                                        ; $5bb9: $0b
    dec bc                                        ; $5bba: $0b
    dec bc                                        ; $5bbb: $0b
    inc a                                         ; $5bbc: $3c
    dec sp                                        ; $5bbd: $3b
    dec bc                                        ; $5bbe: $0b
    inc c                                         ; $5bbf: $0c
    ld b, b                                       ; $5bc0: $40
    ccf                                           ; $5bc1: $3f
    dec c                                         ; $5bc2: $0d
    ld c, $54                                     ; $5bc3: $0e $54
    ld d, e                                       ; $5bc5: $53
    ld d, c                                       ; $5bc6: $51
    ld d, d                                       ; $5bc7: $52
    ld e, b                                       ; $5bc8: $58
    ld d, a                                       ; $5bc9: $57
    ld h, l                                       ; $5bca: $65
    ld h, [hl]                                    ; $5bcb: $66
    ld b, $04                                     ; $5bcc: $06 $04
    rrca                                          ; $5bce: $0f
    rrca                                          ; $5bcf: $0f
    ld b, $04                                     ; $5bd0: $06 $04
    rrca                                          ; $5bd2: $0f
    rrca                                          ; $5bd3: $0f
    inc b                                         ; $5bd4: $04
    ld b, $04                                     ; $5bd5: $06 $04
    ld b, $04                                     ; $5bd7: $06 $04
    ld b, $04                                     ; $5bd9: $06 $04
    inc b                                         ; $5bdb: $04
    pop de                                        ; $5bdc: $d1
    pop de                                        ; $5bdd: $d1
    db $ed                                        ; $5bde: $ed
    ld [de], a                                    ; $5bdf: $12
    pop de                                        ; $5be0: $d1
    pop de                                        ; $5be1: $d1
    ldh a, [rIF]                                  ; $5be2: $f0 $0f
    pop de                                        ; $5be4: $d1
    pop de                                        ; $5be5: $d1
    ld a, [c]                                     ; $5be6: $f2
    ld e, $d1                                     ; $5be7: $1e $d1
    pop de                                        ; $5be9: $d1
    db $ec                                        ; $5bea: $ec
    ld [hl+], a                                   ; $5beb: $22
    inc b                                         ; $5bec: $04
    add h                                         ; $5bed: $84
    add a                                         ; $5bee: $87
    dec b                                         ; $5bef: $05
    inc b                                         ; $5bf0: $04
    add h                                         ; $5bf1: $84
    add h                                         ; $5bf2: $84
    ld a, [bc]                                    ; $5bf3: $0a
    inc b                                         ; $5bf4: $04
    add h                                         ; $5bf5: $84
    add [hl]                                      ; $5bf6: $86
    ld [bc], a                                    ; $5bf7: $02
    inc b                                         ; $5bf8: $04
    add h                                         ; $5bf9: $84
    and [hl]                                      ; $5bfa: $a6
    ld [bc], a                                    ; $5bfb: $02
    rst $10                                       ; $5bfc: $d7
    db $10                                        ; $5bfd: $10
    ld de, $1312                                  ; $5bfe: $11 $12 $13
    inc d                                         ; $5c01: $14
    dec d                                         ; $5c02: $15
    ld d, $17                                     ; $5c03: $16 $17
    jr jr_07a_5c20                                ; $5c05: $18 $19

    cp c                                          ; $5c07: $b9
    inc hl                                        ; $5c08: $23
    inc h                                         ; $5c09: $24
    cp d                                          ; $5c0a: $ba
    cp e                                          ; $5c0b: $bb
    ld a, [bc]                                    ; $5c0c: $0a
    add hl, bc                                    ; $5c0d: $09
    add hl, bc                                    ; $5c0e: $09
    add hl, bc                                    ; $5c0f: $09
    add hl, bc                                    ; $5c10: $09
    add hl, bc                                    ; $5c11: $09
    add hl, bc                                    ; $5c12: $09
    ld a, [bc]                                    ; $5c13: $0a
    add hl, bc                                    ; $5c14: $09
    add hl, bc                                    ; $5c15: $09
    ld a, [bc]                                    ; $5c16: $0a
    ld a, [bc]                                    ; $5c17: $0a
    ld bc, $0902                                  ; $5c18: $01 $02 $09
    ld a, [bc]                                    ; $5c1b: $0a
    ld a, [de]                                    ; $5c1c: $1a
    dec de                                        ; $5c1d: $1b
    inc e                                         ; $5c1e: $1c
    dec e                                         ; $5c1f: $1d

jr_07a_5c20:
    dec d                                         ; $5c20: $15
    ld d, $1e                                     ; $5c21: $16 $1e
    rra                                           ; $5c23: $1f
    ret c                                         ; $5c24: $d8

    ld e, $1f                                     ; $5c25: $1e $1f
    jr nz, jr_07a_5c4a                            ; $5c27: $20 $21

    ld [hl+], a                                   ; $5c29: $22
    inc hl                                        ; $5c2a: $23
    inc h                                         ; $5c2b: $24
    add hl, bc                                    ; $5c2c: $09
    ld a, [bc]                                    ; $5c2d: $0a
    add hl, bc                                    ; $5c2e: $09
    add hl, bc                                    ; $5c2f: $09
    ld bc, $0901                                  ; $5c30: $01 $01 $09
    add hl, bc                                    ; $5c33: $09
    ld a, [bc]                                    ; $5c34: $0a
    ld [bc], a                                    ; $5c35: $02
    ld bc, $0109                                  ; $5c36: $01 $09 $01
    ld bc, $0201                                  ; $5c39: $01 $01 $02
    ld hl, $1122                                  ; $5c3c: $21 $22 $11
    ld [de], a                                    ; $5c3f: $12
    inc hl                                        ; $5c40: $23
    inc h                                         ; $5c41: $24
    dec d                                         ; $5c42: $15
    ld d, $25                                     ; $5c43: $16 $25
    cp c                                          ; $5c45: $b9
    ret c                                         ; $5c46: $d8

    ld e, $ba                                     ; $5c47: $1e $ba
    cp e                                          ; $5c49: $bb

jr_07a_5c4a:
    ld hl, $0a22                                  ; $5c4a: $21 $22 $0a
    dec c                                         ; $5c4d: $0d
    dec b                                         ; $5c4e: $05
    dec b                                         ; $5c4f: $05
    add hl, bc                                    ; $5c50: $09
    ld a, [bc]                                    ; $5c51: $0a
    ld [bc], a                                    ; $5c52: $02
    ld [bc], a                                    ; $5c53: $02
    add hl, bc                                    ; $5c54: $09
    ld a, [bc]                                    ; $5c55: $0a
    add hl, bc                                    ; $5c56: $09
    ld [bc], a                                    ; $5c57: $02
    ld a, [bc]                                    ; $5c58: $0a
    add hl, bc                                    ; $5c59: $09
    ld bc, $d101                                  ; $5c5a: $01 $01 $d1
    pop de                                        ; $5c5d: $d1
    sub $25                                       ; $5c5e: $d6 $25
    pop de                                        ; $5c60: $d1
    pop de                                        ; $5c61: $d1
    halt                                          ; $5c62: $76
    ld [bc], a                                    ; $5c63: $02
    pop de                                        ; $5c64: $d1
    pop de                                        ; $5c65: $d1
    pop de                                        ; $5c66: $d1
    pop de                                        ; $5c67: $d1
    pop de                                        ; $5c68: $d1
    pop de                                        ; $5c69: $d1
    pop de                                        ; $5c6a: $d1
    pop de                                        ; $5c6b: $d1
    inc b                                         ; $5c6c: $04
    add h                                         ; $5c6d: $84
    add h                                         ; $5c6e: $84
    ld [bc], a                                    ; $5c6f: $02
    inc b                                         ; $5c70: $04
    add h                                         ; $5c71: $84
    add h                                         ; $5c72: $84
    adc a                                         ; $5c73: $8f
    inc b                                         ; $5c74: $04
    add h                                         ; $5c75: $84
    add h                                         ; $5c76: $84
    add h                                         ; $5c77: $84
    inc b                                         ; $5c78: $04
    inc b                                         ; $5c79: $04
    inc b                                         ; $5c7a: $04
    inc b                                         ; $5c7b: $04
    ld h, $27                                     ; $5c7c: $26 $27
    ld bc, $ca02                                  ; $5c7e: $01 $02 $ca
    set 7, a                                      ; $5c81: $cb $ff
    nop                                           ; $5c83: $00
    pop de                                        ; $5c84: $d1
    pop de                                        ; $5c85: $d1
    pop de                                        ; $5c86: $d1
    pop de                                        ; $5c87: $d1
    pop de                                        ; $5c88: $d1
    pop de                                        ; $5c89: $d1
    pop de                                        ; $5c8a: $d1
    pop de                                        ; $5c8b: $d1
    ld bc, $0101                                  ; $5c8c: $01 $01 $01
    ld bc, $8c8c                                  ; $5c8f: $01 $8c $8c
    adc a                                         ; $5c92: $8f
    adc a                                         ; $5c93: $8f
    add h                                         ; $5c94: $84
    add h                                         ; $5c95: $84
    add h                                         ; $5c96: $84
    add h                                         ; $5c97: $84
    inc b                                         ; $5c98: $04
    inc b                                         ; $5c99: $04
    inc b                                         ; $5c9a: $04
    inc b                                         ; $5c9b: $04
    add hl, bc                                    ; $5c9c: $09
    dec h                                         ; $5c9d: $25
    ld h, $27                                     ; $5c9e: $26 $27
    ld bc, $0083                                  ; $5ca0: $01 $83 $00
    ld bc, $d1d1                                  ; $5ca3: $01 $d1 $d1
    pop de                                        ; $5ca6: $d1
    pop de                                        ; $5ca7: $d1
    pop de                                        ; $5ca8: $d1
    pop de                                        ; $5ca9: $d1
    pop de                                        ; $5caa: $d1
    pop de                                        ; $5cab: $d1
    ld bc, $0101                                  ; $5cac: $01 $01 $01
    ld bc, $8c8e                                  ; $5caf: $01 $8e $8c
    adc a                                         ; $5cb2: $8f
    adc [hl]                                      ; $5cb3: $8e
    add h                                         ; $5cb4: $84
    add h                                         ; $5cb5: $84
    add h                                         ; $5cb6: $84
    add h                                         ; $5cb7: $84
    inc b                                         ; $5cb8: $04
    inc b                                         ; $5cb9: $04
    inc b                                         ; $5cba: $04
    inc b                                         ; $5cbb: $04
    ld bc, $0902                                  ; $5cbc: $01 $02 $09
    dec h                                         ; $5cbf: $25
    add e                                         ; $5cc0: $83
    halt                                          ; $5cc1: $76
    ld [bc], a                                    ; $5cc2: $02
    jp z, $d1d1                                   ; $5cc3: $ca $d1 $d1

    pop de                                        ; $5cc6: $d1
    pop de                                        ; $5cc7: $d1
    pop de                                        ; $5cc8: $d1
    pop de                                        ; $5cc9: $d1
    pop de                                        ; $5cca: $d1
    pop de                                        ; $5ccb: $d1
    ld [bc], a                                    ; $5ccc: $02
    ld [bc], a                                    ; $5ccd: $02
    ld [bc], a                                    ; $5cce: $02
    ld bc, $868e                                  ; $5ccf: $01 $8e $86
    adc h                                         ; $5cd2: $8c
    adc [hl]                                      ; $5cd3: $8e
    add h                                         ; $5cd4: $84

Call_07a_5cd5:
    add h                                         ; $5cd5: $84
    add h                                         ; $5cd6: $84
    add h                                         ; $5cd7: $84
    inc b                                         ; $5cd8: $04
    inc b                                         ; $5cd9: $04
    inc b                                         ; $5cda: $04
    inc b                                         ; $5cdb: $04
    pop de                                        ; $5cdc: $d1
    pop de                                        ; $5cdd: $d1
    pop de                                        ; $5cde: $d1
    pop de                                        ; $5cdf: $d1
    pop de                                        ; $5ce0: $d1
    pop de                                        ; $5ce1: $d1
    inc sp                                        ; $5ce2: $33
    inc [hl]                                      ; $5ce3: $34
    inc sp                                        ; $5ce4: $33
    inc [hl]                                      ; $5ce5: $34
    scf                                           ; $5ce6: $37
    jr c, jr_07a_5d20                             ; $5ce7: $38 $37

    jr c, jr_07a_5d26                             ; $5ce9: $38 $3b

    inc a                                         ; $5ceb: $3c
    inc b                                         ; $5cec: $04
    inc b                                         ; $5ced: $04
    inc b                                         ; $5cee: $04
    inc b                                         ; $5cef: $04
    inc b                                         ; $5cf0: $04
    inc b                                         ; $5cf1: $04
    inc h                                         ; $5cf2: $24
    ld h, $26                                     ; $5cf3: $26 $26
    daa                                           ; $5cf5: $27
    ld h, $24                                     ; $5cf6: $26 $24
    ld h, $24                                     ; $5cf8: $26 $24
    ld h, $26                                     ; $5cfa: $26 $26
    dec hl                                        ; $5cfc: $2b
    inc l                                         ; $5cfd: $2c
    dec l                                         ; $5cfe: $2d
    ld l, $dc                                     ; $5cff: $2e $dc
    db $dd                                        ; $5d01: $dd
    dec [hl]                                      ; $5d02: $35
    ld [hl], $df                                  ; $5d03: $36 $df
    ldh [$39], a                                  ; $5d05: $e0 $39
    ld a, [hl-]                                   ; $5d07: $3a
    ld [c], a                                     ; $5d08: $e2
    db $e3                                        ; $5d09: $e3
    dec a                                         ; $5d0a: $3d
    ld a, $06                                     ; $5d0b: $3e $06
    rlca                                          ; $5d0d: $07
    inc b                                         ; $5d0e: $04
    inc b                                         ; $5d0f: $04
    inc c                                         ; $5d10: $0c
    inc c                                         ; $5d11: $0c
    ld b, $04                                     ; $5d12: $06 $04
    inc c                                         ; $5d14: $0c
    ld c, $04                                     ; $5d15: $0e $04
    inc b                                         ; $5d17: $04
    inc c                                         ; $5d18: $0c
    inc c                                         ; $5d19: $0c
    inc b                                         ; $5d1a: $04
    ld b, $2f                                     ; $5d1b: $06 $2f
    jr nc, jr_07a_5d50                            ; $5d1d: $30 $31

    ld [hl-], a                                   ; $5d1f: $32

jr_07a_5d20:
    add sp, -$17                                  ; $5d20: $e8 $e9
    ld b, l                                       ; $5d22: $45
    ld b, [hl]                                    ; $5d23: $46
    db $eb                                        ; $5d24: $eb
    db $ec                                        ; $5d25: $ec

jr_07a_5d26:
    ld c, c                                       ; $5d26: $49
    ld c, d                                       ; $5d27: $4a
    xor $ef                                       ; $5d28: $ee $ef
    ld c, l                                       ; $5d2a: $4d
    ld c, [hl]                                    ; $5d2b: $4e
    inc b                                         ; $5d2c: $04
    rlca                                          ; $5d2d: $07
    ld b, $04                                     ; $5d2e: $06 $04
    ld c, $0c                                     ; $5d30: $0e $0c
    inc b                                         ; $5d32: $04
    inc b                                         ; $5d33: $04
    ld c, $0e                                     ; $5d34: $0e $0e
    ld b, $07                                     ; $5d36: $06 $07
    ld c, $0c                                     ; $5d38: $0e $0c
    ld b, $04                                     ; $5d3a: $06 $04
    reti                                          ; $5d3c: $d9


    pop de                                        ; $5d3d: $d1
    pop de                                        ; $5d3e: $d1
    pop de                                        ; $5d3f: $d1
    db $ed                                        ; $5d40: $ed
    pop de                                        ; $5d41: $d1
    pop de                                        ; $5d42: $d1
    pop de                                        ; $5d43: $d1
    ldh a, [$d1]                                  ; $5d44: $f0 $d1
    pop de                                        ; $5d46: $d1
    pop de                                        ; $5d47: $d1
    ld a, [c]                                     ; $5d48: $f2
    pop de                                        ; $5d49: $d1
    pop de                                        ; $5d4a: $d1
    pop de                                        ; $5d4b: $d1
    ld h, $04                                     ; $5d4c: $26 $04
    inc b                                         ; $5d4e: $04
    inc b                                         ; $5d4f: $04

jr_07a_5d50:
    inc h                                         ; $5d50: $24
    inc b                                         ; $5d51: $04
    inc b                                         ; $5d52: $04
    inc b                                         ; $5d53: $04
    and [hl]                                      ; $5d54: $a6
    add h                                         ; $5d55: $84
    inc b                                         ; $5d56: $04
    inc b                                         ; $5d57: $04
    and h                                         ; $5d58: $a4
    add h                                         ; $5d59: $84
    inc b                                         ; $5d5a: $04
    inc b                                         ; $5d5b: $04
    dec sp                                        ; $5d5c: $3b
    inc a                                         ; $5d5d: $3c
    ccf                                           ; $5d5e: $3f
    ld b, b                                       ; $5d5f: $40
    ccf                                           ; $5d60: $3f
    ld b, b                                       ; $5d61: $40
    ld d, e                                       ; $5d62: $53
    ld d, h                                       ; $5d63: $54
    ld d, e                                       ; $5d64: $53
    ld d, h                                       ; $5d65: $54
    ld d, a                                       ; $5d66: $57
    ld e, b                                       ; $5d67: $58
    ld d, a                                       ; $5d68: $57
    ld e, b                                       ; $5d69: $58
    inc bc                                        ; $5d6a: $03
    inc b                                         ; $5d6b: $04
    inc h                                         ; $5d6c: $24
    ld h, $26                                     ; $5d6d: $26 $26
    ld h, $24                                     ; $5d6f: $26 $24
    ld h, $24                                     ; $5d71: $26 $24
    inc h                                         ; $5d73: $24
    inc h                                         ; $5d74: $24
    inc h                                         ; $5d75: $24
    inc h                                         ; $5d76: $24
    ld h, $24                                     ; $5d77: $26 $24
    inc h                                         ; $5d79: $24
    dec b                                         ; $5d7a: $05
    ld [bc], a                                    ; $5d7b: $02
    push hl                                       ; $5d7c: $e5
    and $41                                       ; $5d7d: $e6 $41
    ld b, d                                       ; $5d7f: $42
    ldh a, [$f1]                                  ; $5d80: $f0 $f1
    ld d, l                                       ; $5d82: $55
    ld d, [hl]                                    ; $5d83: $56
    db $fd                                        ; $5d84: $fd
    ld h, $27                                     ; $5d85: $26 $27
    daa                                           ; $5d87: $27
    dec c                                         ; $5d88: $0d
    jr z, jr_07a_5db4                             ; $5d89: $28 $29

    ld a, [hl+]                                   ; $5d8b: $2a
    ld c, $0e                                     ; $5d8c: $0e $0e
    ld b, $04                                     ; $5d8e: $06 $04
    inc c                                         ; $5d90: $0c
    ld c, $04                                     ; $5d91: $0e $04
    inc b                                         ; $5d93: $04
    dec c                                         ; $5d94: $0d
    dec c                                         ; $5d95: $0d
    dec c                                         ; $5d96: $0d
    dec b                                         ; $5d97: $05
    ld [bc], a                                    ; $5d98: $02
    ld bc, $0202                                  ; $5d99: $01 $02 $02
    ld c, a                                       ; $5d9c: $4f
    ld d, b                                       ; $5d9d: $50
    ld d, c                                       ; $5d9e: $51
    ld d, d                                       ; $5d9f: $52
    ld h, e                                       ; $5da0: $63
    ld h, h                                       ; $5da1: $64
    ld h, l                                       ; $5da2: $65
    ld h, [hl]                                    ; $5da3: $66
    jr z, jr_07a_5dcf                             ; $5da4: $28 $29

    ld a, [hl+]                                   ; $5da6: $2a
    dec hl                                        ; $5da7: $2b
    inc l                                         ; $5da8: $2c
    dec l                                         ; $5da9: $2d
    ld l, $2f                                     ; $5daa: $2e $2f
    inc b                                         ; $5dac: $04
    rlca                                          ; $5dad: $07
    rlca                                          ; $5dae: $07
    rlca                                          ; $5daf: $07
    inc b                                         ; $5db0: $04
    ld b, $06                                     ; $5db1: $06 $06
    inc b                                         ; $5db3: $04

jr_07a_5db4:
    dec c                                         ; $5db4: $0d
    dec c                                         ; $5db5: $0d
    dec c                                         ; $5db6: $0d
    dec c                                         ; $5db7: $0d
    ld a, [bc]                                    ; $5db8: $0a
    ld a, [bc]                                    ; $5db9: $0a
    ld a, [bc]                                    ; $5dba: $0a
    ld a, [bc]                                    ; $5dbb: $0a
    db $ec                                        ; $5dbc: $ec
    pop de                                        ; $5dbd: $d1
    pop de                                        ; $5dbe: $d1
    pop de                                        ; $5dbf: $d1
    sub $d1                                       ; $5dc0: $d6 $d1
    pop de                                        ; $5dc2: $d1
    pop de                                        ; $5dc3: $d1
    reti                                          ; $5dc4: $d9


    pop de                                        ; $5dc5: $d1
    pop de                                        ; $5dc6: $d1
    pop de                                        ; $5dc7: $d1
    db $ed                                        ; $5dc8: $ed
    pop de                                        ; $5dc9: $d1
    pop de                                        ; $5dca: $d1
    pop de                                        ; $5dcb: $d1
    add [hl]                                      ; $5dcc: $86
    add h                                         ; $5dcd: $84
    inc b                                         ; $5dce: $04

jr_07a_5dcf:
    inc b                                         ; $5dcf: $04
    and h                                         ; $5dd0: $a4
    add h                                         ; $5dd1: $84
    inc b                                         ; $5dd2: $04
    inc b                                         ; $5dd3: $04
    and a                                         ; $5dd4: $a7
    add h                                         ; $5dd5: $84
    inc b                                         ; $5dd6: $04
    inc b                                         ; $5dd7: $04
    and a                                         ; $5dd8: $a7
    add h                                         ; $5dd9: $84
    inc b                                         ; $5dda: $04
    inc b                                         ; $5ddb: $04
    rst $10                                       ; $5ddc: $d7
    inc d                                         ; $5ddd: $14
    dec b                                         ; $5dde: $05
    ld b, $17                                     ; $5ddf: $06 $17

jr_07a_5de1:
    jr jr_07a_5dea                                ; $5de1: $18 $07

    jp nc, $201f                                  ; $5de3: $d2 $1f $20

    rst $00                                       ; $5de6: $c7
    jr nc, jr_07a_5e0c                            ; $5de7: $30 $23

    inc h                                         ; $5de9: $24

jr_07a_5dea:
    ld sp, $0d32                                  ; $5dea: $31 $32 $0d
    ld [bc], a                                    ; $5ded: $02
    ld [bc], a                                    ; $5dee: $02
    ld bc, $0102                                  ; $5def: $01 $02 $01
    ld bc, $020a                                  ; $5df2: $01 $0a $02
    ld bc, $0a0a                                  ; $5df5: $01 $0a $0a
    ld bc, $0901                                  ; $5df8: $01 $01 $09
    add hl, bc                                    ; $5dfb: $09
    ld de, $1e12                                  ; $5dfc: $11 $12 $1e
    rra                                           ; $5dff: $1f
    dec d                                         ; $5e00: $15
    ld d, $f2                                     ; $5e01: $16 $f2
    inc sp                                        ; $5e03: $33
    inc [hl]                                      ; $5e04: $34
    dec [hl]                                      ; $5e05: $35
    db $ec                                        ; $5e06: $ec
    ld [hl], $37                                  ; $5e07: $36 $37
    jr c, jr_07a_5de1                             ; $5e09: $38 $d6

    add hl, sp                                    ; $5e0b: $39

jr_07a_5e0c:
    ld [bc], a                                    ; $5e0c: $02
    ld bc, $0202                                  ; $5e0d: $01 $02 $02
    ld bc, $2401                                  ; $5e10: $01 $01 $24
    inc c                                         ; $5e13: $0c
    add hl, bc                                    ; $5e14: $09
    add hl, bc                                    ; $5e15: $09
    inc b                                         ; $5e16: $04
    inc c                                         ; $5e17: $0c
    add hl, bc                                    ; $5e18: $09
    add hl, bc                                    ; $5e19: $09
    inc h                                         ; $5e1a: $24
    inc c                                         ; $5e1b: $0c
    ld [hl+], a                                   ; $5e1c: $22
    inc hl                                        ; $5e1d: $23
    inc h                                         ; $5e1e: $24
    cp d                                          ; $5e1f: $ba
    ld a, [hl-]                                   ; $5e20: $3a
    dec sp                                        ; $5e21: $3b
    inc a                                         ; $5e22: $3c
    dec a                                         ; $5e23: $3d
    ld a, $3f                                     ; $5e24: $3e $3f
    ld b, b                                       ; $5e26: $40
    ld b, c                                       ; $5e27: $41
    ld b, d                                       ; $5e28: $42
    ld b, e                                       ; $5e29: $43
    ld b, h                                       ; $5e2a: $44
    ld b, l                                       ; $5e2b: $45
    ld bc, $0201                                  ; $5e2c: $01 $01 $02
    ld a, [bc]                                    ; $5e2f: $0a
    inc c                                         ; $5e30: $0c
    inc c                                         ; $5e31: $0c
    inc c                                         ; $5e32: $0c
    inc c                                         ; $5e33: $0c
    inc c                                         ; $5e34: $0c
    inc c                                         ; $5e35: $0c
    inc c                                         ; $5e36: $0c
    inc c                                         ; $5e37: $0c
    inc c                                         ; $5e38: $0c
    inc c                                         ; $5e39: $0c
    inc c                                         ; $5e3a: $0c
    inc c                                         ; $5e3b: $0c
    ldh a, [$d1]                                  ; $5e3c: $f0 $d1
    pop de                                        ; $5e3e: $d1
    pop de                                        ; $5e3f: $d1
    ld a, [c]                                     ; $5e40: $f2
    pop de                                        ; $5e41: $d1
    pop de                                        ; $5e42: $d1
    pop de                                        ; $5e43: $d1
    db $ec                                        ; $5e44: $ec
    pop de                                        ; $5e45: $d1
    pop de                                        ; $5e46: $d1
    pop de                                        ; $5e47: $d1
    sub $d1                                       ; $5e48: $d6 $d1
    pop de                                        ; $5e4a: $d1
    pop de                                        ; $5e4b: $d1
    and h                                         ; $5e4c: $a4
    add h                                         ; $5e4d: $84
    inc b                                         ; $5e4e: $04
    inc b                                         ; $5e4f: $04
    and h                                         ; $5e50: $a4
    add h                                         ; $5e51: $84
    inc b                                         ; $5e52: $04
    inc b                                         ; $5e53: $04
    add h                                         ; $5e54: $84
    add h                                         ; $5e55: $84
    inc b                                         ; $5e56: $04
    inc b                                         ; $5e57: $04
    and h                                         ; $5e58: $a4
    add h                                         ; $5e59: $84
    inc b                                         ; $5e5a: $04
    inc b                                         ; $5e5b: $04
    ld h, $27                                     ; $5e5c: $26 $27
    ld b, [hl]                                    ; $5e5e: $46
    ld b, a                                       ; $5e5f: $47
    set 7, a                                      ; $5e60: $cb $ff
    nop                                           ; $5e62: $00
    ld bc, $d1d1                                  ; $5e63: $01 $d1 $d1
    pop de                                        ; $5e66: $d1
    pop de                                        ; $5e67: $d1
    pop de                                        ; $5e68: $d1
    pop de                                        ; $5e69: $d1
    pop de                                        ; $5e6a: $d1
    pop de                                        ; $5e6b: $d1
    ld [bc], a                                    ; $5e6c: $02
    ld [bc], a                                    ; $5e6d: $02
    add hl, bc                                    ; $5e6e: $09
    ld a, [bc]                                    ; $5e6f: $0a
    adc a                                         ; $5e70: $8f
    adc [hl]                                      ; $5e71: $8e
    adc a                                         ; $5e72: $8f
    adc h                                         ; $5e73: $8c
    add h                                         ; $5e74: $84
    add h                                         ; $5e75: $84
    add h                                         ; $5e76: $84
    add h                                         ; $5e77: $84
    inc b                                         ; $5e78: $04
    inc b                                         ; $5e79: $04
    inc b                                         ; $5e7a: $04
    inc b                                         ; $5e7b: $04
    add h                                         ; $5e7c: $84
    add e                                         ; $5e7d: $83
    add e                                         ; $5e7e: $83
    ld c, b                                       ; $5e7f: $48
    add e                                         ; $5e80: $83
    pop de                                        ; $5e81: $d1
    pop de                                        ; $5e82: $d1
    ld c, c                                       ; $5e83: $49
    pop de                                        ; $5e84: $d1
    pop de                                        ; $5e85: $d1
    pop de                                        ; $5e86: $d1
    pop de                                        ; $5e87: $d1
    pop de                                        ; $5e88: $d1
    pop de                                        ; $5e89: $d1
    pop de                                        ; $5e8a: $d1
    pop de                                        ; $5e8b: $d1
    adc h                                         ; $5e8c: $8c
    adc [hl]                                      ; $5e8d: $8e
    adc h                                         ; $5e8e: $8c
    inc c                                         ; $5e8f: $0c
    adc h                                         ; $5e90: $8c
    add h                                         ; $5e91: $84
    add h                                         ; $5e92: $84
    inc c                                         ; $5e93: $0c
    add h                                         ; $5e94: $84
    inc b                                         ; $5e95: $04
    inc b                                         ; $5e96: $04
    inc b                                         ; $5e97: $04
    inc b                                         ; $5e98: $04
    inc b                                         ; $5e99: $04
    inc b                                         ; $5e9a: $04
    inc b                                         ; $5e9b: $04
    ld c, d                                       ; $5e9c: $4a
    ld c, e                                       ; $5e9d: $4b
    ld c, d                                       ; $5e9e: $4a
    ld c, h                                       ; $5e9f: $4c
    ld c, l                                       ; $5ea0: $4d
    ld c, [hl]                                    ; $5ea1: $4e
    ld c, a                                       ; $5ea2: $4f
    ld d, b                                       ; $5ea3: $50
    pop de                                        ; $5ea4: $d1
    pop de                                        ; $5ea5: $d1
    pop de                                        ; $5ea6: $d1
    pop de                                        ; $5ea7: $d1
    pop de                                        ; $5ea8: $d1
    pop de                                        ; $5ea9: $d1
    pop de                                        ; $5eaa: $d1
    pop de                                        ; $5eab: $d1
    inc c                                         ; $5eac: $0c
    inc c                                         ; $5ead: $0c
    inc c                                         ; $5eae: $0c
    inc c                                         ; $5eaf: $0c
    inc c                                         ; $5eb0: $0c
    inc c                                         ; $5eb1: $0c
    inc c                                         ; $5eb2: $0c
    inc c                                         ; $5eb3: $0c
    inc b                                         ; $5eb4: $04
    inc b                                         ; $5eb5: $04
    inc b                                         ; $5eb6: $04
    inc b                                         ; $5eb7: $04
    inc b                                         ; $5eb8: $04
    inc b                                         ; $5eb9: $04
    inc b                                         ; $5eba: $04
    inc b                                         ; $5ebb: $04
    add e                                         ; $5ebc: $83
    pop de                                        ; $5ebd: $d1
    pop de                                        ; $5ebe: $d1
    pop de                                        ; $5ebf: $d1
    pop de                                        ; $5ec0: $d1
    pop de                                        ; $5ec1: $d1
    pop de                                        ; $5ec2: $d1
    pop de                                        ; $5ec3: $d1
    pop de                                        ; $5ec4: $d1
    pop de                                        ; $5ec5: $d1
    pop de                                        ; $5ec6: $d1
    pop de                                        ; $5ec7: $d1
    pop de                                        ; $5ec8: $d1
    pop de                                        ; $5ec9: $d1
    pop de                                        ; $5eca: $d1
    pop de                                        ; $5ecb: $d1
    adc h                                         ; $5ecc: $8c
    add h                                         ; $5ecd: $84
    inc b                                         ; $5ece: $04
    inc b                                         ; $5ecf: $04
    add h                                         ; $5ed0: $84
    inc b                                         ; $5ed1: $04
    inc b                                         ; $5ed2: $04
    inc b                                         ; $5ed3: $04
    inc b                                         ; $5ed4: $04
    inc b                                         ; $5ed5: $04
    inc b                                         ; $5ed6: $04
    inc b                                         ; $5ed7: $04
    inc b                                         ; $5ed8: $04
    inc b                                         ; $5ed9: $04
    inc b                                         ; $5eda: $04
    inc b                                         ; $5edb: $04
    inc h                                         ; $5edc: $24
    nop                                           ; $5edd: $00
    ld b, $00                                     ; $5ede: $06 $00
    ret nz                                        ; $5ee0: $c0

    dec bc                                        ; $5ee1: $0b
    pop de                                        ; $5ee2: $d1
    jp nc, $d4d3                                  ; $5ee3: $d2 $d3 $d4

    push de                                       ; $5ee6: $d5
    sub $d7                                       ; $5ee7: $d6 $d7
    ret c                                         ; $5ee9: $d8

    reti                                          ; $5eea: $d9


    jp c, $dcdb                                   ; $5eeb: $da $db $dc

    db $dd                                        ; $5eee: $dd
    sbc $df                                       ; $5eef: $de $df
    ldh [rTIMA], a                                ; $5ef1: $e0 $05
    dec b                                         ; $5ef3: $05
    dec b                                         ; $5ef4: $05
    dec b                                         ; $5ef5: $05
    dec b                                         ; $5ef6: $05
    dec b                                         ; $5ef7: $05
    dec b                                         ; $5ef8: $05
    dec b                                         ; $5ef9: $05
    dec b                                         ; $5efa: $05
    dec b                                         ; $5efb: $05
    dec b                                         ; $5efc: $05
    dec b                                         ; $5efd: $05
    dec b                                         ; $5efe: $05
    dec b                                         ; $5eff: $05
    dec b                                         ; $5f00: $05
    dec b                                         ; $5f01: $05
    pop hl                                        ; $5f02: $e1
    ld [c], a                                     ; $5f03: $e2
    db $e3                                        ; $5f04: $e3
    db $e4                                        ; $5f05: $e4
    push hl                                       ; $5f06: $e5
    and $e7                                       ; $5f07: $e6 $e7
    add sp, -$17                                  ; $5f09: $e8 $e9
    ld [$eceb], a                                 ; $5f0b: $ea $eb $ec
    db $ed                                        ; $5f0e: $ed
    xor $ef                                       ; $5f0f: $ee $ef
    ldh a, [rTMA]                                 ; $5f11: $f0 $06
    ld b, $06                                     ; $5f13: $06 $06
    ld b, $06                                     ; $5f15: $06 $06
    ld b, $06                                     ; $5f17: $06 $06
    ld b, $01                                     ; $5f19: $06 $01
    ld bc, $0101                                  ; $5f1b: $01 $01 $01
    ld bc, $0101                                  ; $5f1e: $01 $01 $01
    ld bc, $f1f1                                  ; $5f21: $01 $f1 $f1
    pop af                                        ; $5f24: $f1
    pop af                                        ; $5f25: $f1
    pop af                                        ; $5f26: $f1
    pop af                                        ; $5f27: $f1
    pop af                                        ; $5f28: $f1
    pop af                                        ; $5f29: $f1
    pop af                                        ; $5f2a: $f1
    pop af                                        ; $5f2b: $f1
    pop af                                        ; $5f2c: $f1
    pop af                                        ; $5f2d: $f1
    pop af                                        ; $5f2e: $f1
    pop af                                        ; $5f2f: $f1
    pop af                                        ; $5f30: $f1
    pop af                                        ; $5f31: $f1
    add h                                         ; $5f32: $84
    add h                                         ; $5f33: $84
    add h                                         ; $5f34: $84
    add h                                         ; $5f35: $84
    inc b                                         ; $5f36: $04
    inc b                                         ; $5f37: $04
    inc b                                         ; $5f38: $04
    inc b                                         ; $5f39: $04
    inc b                                         ; $5f3a: $04
    inc b                                         ; $5f3b: $04
    inc b                                         ; $5f3c: $04
    inc b                                         ; $5f3d: $04
    inc b                                         ; $5f3e: $04
    inc b                                         ; $5f3f: $04
    inc b                                         ; $5f40: $04
    inc b                                         ; $5f41: $04
    ld a, [c]                                     ; $5f42: $f2
    ld a, [c]                                     ; $5f43: $f2
    ld a, [c]                                     ; $5f44: $f2
    ld a, [c]                                     ; $5f45: $f2
    di                                            ; $5f46: $f3
    db $f4                                        ; $5f47: $f4
    db $f4                                        ; $5f48: $f4
    db $f4                                        ; $5f49: $f4
    push af                                       ; $5f4a: $f5
    or $f7                                        ; $5f4b: $f6 $f7
    ld hl, sp-$0b                                 ; $5f4d: $f8 $f5
    ld sp, hl                                     ; $5f4f: $f9
    ld a, [$00fb]                                 ; $5f50: $fa $fb $00
    nop                                           ; $5f53: $00
    nop                                           ; $5f54: $00
    nop                                           ; $5f55: $00
    nop                                           ; $5f56: $00
    nop                                           ; $5f57: $00
    nop                                           ; $5f58: $00
    nop                                           ; $5f59: $00
    nop                                           ; $5f5a: $00
    ld [bc], a                                    ; $5f5b: $02
    ld [bc], a                                    ; $5f5c: $02
    ld [bc], a                                    ; $5f5d: $02
    nop                                           ; $5f5e: $00
    ld [bc], a                                    ; $5f5f: $02
    ld [bc], a                                    ; $5f60: $02
    ld [bc], a                                    ; $5f61: $02
    ld a, [c]                                     ; $5f62: $f2
    ld a, [c]                                     ; $5f63: $f2
    ld a, [c]                                     ; $5f64: $f2
    ld a, [c]                                     ; $5f65: $f2
    db $f4                                        ; $5f66: $f4
    db $f4                                        ; $5f67: $f4
    db $f4                                        ; $5f68: $f4
    db $f4                                        ; $5f69: $f4
    db $fc                                        ; $5f6a: $fc
    db $fc                                        ; $5f6b: $fc
    db $fc                                        ; $5f6c: $fc
    db $fc                                        ; $5f6d: $fc
    db $d3                                        ; $5f6e: $d3
    call nc, $d6d5                                ; $5f6f: $d4 $d5 $d6
    nop                                           ; $5f72: $00
    nop                                           ; $5f73: $00
    nop                                           ; $5f74: $00
    nop                                           ; $5f75: $00
    nop                                           ; $5f76: $00
    nop                                           ; $5f77: $00
    nop                                           ; $5f78: $00
    nop                                           ; $5f79: $00
    ld [bc], a                                    ; $5f7a: $02
    ld [bc], a                                    ; $5f7b: $02
    ld [bc], a                                    ; $5f7c: $02
    ld [bc], a                                    ; $5f7d: $02
    dec b                                         ; $5f7e: $05
    dec b                                         ; $5f7f: $05
    dec b                                         ; $5f80: $05
    dec b                                         ; $5f81: $05
    ld a, [c]                                     ; $5f82: $f2
    ld a, [c]                                     ; $5f83: $f2
    ld a, [c]                                     ; $5f84: $f2
    ld a, [c]                                     ; $5f85: $f2
    db $f4                                        ; $5f86: $f4
    db $f4                                        ; $5f87: $f4
    db $f4                                        ; $5f88: $f4
    di                                            ; $5f89: $f3
    ld hl, sp-$09                                 ; $5f8a: $f8 $f7
    or $f5                                        ; $5f8c: $f6 $f5
    ei                                            ; $5f8e: $fb
    ld a, [$f5f9]                                 ; $5f8f: $fa $f9 $f5
    nop                                           ; $5f92: $00
    nop                                           ; $5f93: $00
    nop                                           ; $5f94: $00

jr_07a_5f95:
    nop                                           ; $5f95: $00
    nop                                           ; $5f96: $00
    nop                                           ; $5f97: $00
    nop                                           ; $5f98: $00
    jr nz, jr_07a_5f9d                            ; $5f99: $20 $02

    ld [hl+], a                                   ; $5f9b: $22
    ld [hl+], a                                   ; $5f9c: $22

jr_07a_5f9d:
    jr nz, jr_07a_5fc1                            ; $5f9d: $20 $22

    ld [hl+], a                                   ; $5f9f: $22
    ld [hl+], a                                   ; $5fa0: $22
    jr nz, jr_07a_5f95                            ; $5fa1: $20 $f2

    ld a, [c]                                     ; $5fa3: $f2
    ld a, [c]                                     ; $5fa4: $f2
    ld a, [c]                                     ; $5fa5: $f2
    db $fd                                        ; $5fa6: $fd
    db $fd                                        ; $5fa7: $fd
    db $fd                                        ; $5fa8: $fd
    db $fd                                        ; $5fa9: $fd
    ld a, [c]                                     ; $5faa: $f2
    ld a, [c]                                     ; $5fab: $f2
    ld a, [c]                                     ; $5fac: $f2
    ld a, [c]                                     ; $5fad: $f2
    ld a, [c]                                     ; $5fae: $f2
    ld a, [c]                                     ; $5faf: $f2
    ld a, [c]                                     ; $5fb0: $f2
    ld a, [c]                                     ; $5fb1: $f2
    nop                                           ; $5fb2: $00
    nop                                           ; $5fb3: $00
    nop                                           ; $5fb4: $00
    nop                                           ; $5fb5: $00
    nop                                           ; $5fb6: $00
    nop                                           ; $5fb7: $00
    nop                                           ; $5fb8: $00
    nop                                           ; $5fb9: $00
    nop                                           ; $5fba: $00
    nop                                           ; $5fbb: $00
    nop                                           ; $5fbc: $00
    nop                                           ; $5fbd: $00
    nop                                           ; $5fbe: $00
    nop                                           ; $5fbf: $00
    nop                                           ; $5fc0: $00

jr_07a_5fc1:
    nop                                           ; $5fc1: $00
    push af                                       ; $5fc2: $f5
    ld sp, hl                                     ; $5fc3: $f9
    ld a, [$f5fb]                                 ; $5fc4: $fa $fb $f5
    cp $fa                                        ; $5fc7: $fe $fa
    rst $38                                       ; $5fc9: $ff
    push af                                       ; $5fca: $f5
    nop                                           ; $5fcb: $00
    ld bc, $f502                                  ; $5fcc: $01 $02 $f5
    nop                                           ; $5fcf: $00
    inc bc                                        ; $5fd0: $03
    inc b                                         ; $5fd1: $04
    nop                                           ; $5fd2: $00
    ld [bc], a                                    ; $5fd3: $02
    ld [bc], a                                    ; $5fd4: $02
    ld [bc], a                                    ; $5fd5: $02
    nop                                           ; $5fd6: $00
    inc bc                                        ; $5fd7: $03
    ld [bc], a                                    ; $5fd8: $02
    ld [bc], a                                    ; $5fd9: $02
    add b                                         ; $5fda: $80
    inc bc                                        ; $5fdb: $03
    inc bc                                        ; $5fdc: $03
    inc bc                                        ; $5fdd: $03
    add b                                         ; $5fde: $80
    inc bc                                        ; $5fdf: $03
    inc bc                                        ; $5fe0: $03
    inc bc                                        ; $5fe1: $03
    rst $10                                       ; $5fe2: $d7
    ret c                                         ; $5fe3: $d8

    reti                                          ; $5fe4: $d9


    jp c, Jump_000_0505                           ; $5fe5: $da $05 $05

    dec b                                         ; $5fe8: $05
    dec b                                         ; $5fe9: $05
    ld b, $06                                     ; $5fea: $06 $06
    ld b, $06                                     ; $5fec: $06 $06
    rlca                                          ; $5fee: $07
    ld [$0a09], sp                                ; $5fef: $08 $09 $0a
    dec b                                         ; $5ff2: $05
    dec b                                         ; $5ff3: $05
    dec b                                         ; $5ff4: $05
    dec b                                         ; $5ff5: $05
    ld [bc], a                                    ; $5ff6: $02
    ld [bc], a                                    ; $5ff7: $02
    ld [bc], a                                    ; $5ff8: $02
    ld [bc], a                                    ; $5ff9: $02
    ld [bc], a                                    ; $5ffa: $02
    ld [bc], a                                    ; $5ffb: $02
    ld [bc], a                                    ; $5ffc: $02
    ld [bc], a                                    ; $5ffd: $02
    ld bc, $0101                                  ; $5ffe: $01 $01 $01
    ld bc, $fafb                                  ; $6001: $01 $fb $fa
    ld sp, hl                                     ; $6004: $f9
    push af                                       ; $6005: $f5
    rst $38                                       ; $6006: $ff
    ld a, [$f5fe]                                 ; $6007: $fa $fe $f5
    ld [bc], a                                    ; $600a: $02
    ld bc, $f500                                  ; $600b: $01 $00 $f5
    inc b                                         ; $600e: $04
    inc bc                                        ; $600f: $03
    nop                                           ; $6010: $00
    dec bc                                        ; $6011: $0b
    ld [hl+], a                                   ; $6012: $22
    ld [hl+], a                                   ; $6013: $22
    ld [hl+], a                                   ; $6014: $22
    jr nz, jr_07a_6039                            ; $6015: $20 $22

    ld [hl+], a                                   ; $6017: $22
    inc hl                                        ; $6018: $23
    jr nz, jr_07a_603e                            ; $6019: $20 $23

    inc hl                                        ; $601b: $23
    inc hl                                        ; $601c: $23
    jr nz, jr_07a_6042                            ; $601d: $20 $23

    inc hl                                        ; $601f: $23
    inc hl                                        ; $6020: $23
    ld h, b                                       ; $6021: $60
    ld a, [c]                                     ; $6022: $f2
    ld a, [c]                                     ; $6023: $f2
    ld a, [c]                                     ; $6024: $f2
    ld a, [c]                                     ; $6025: $f2
    ld a, [c]                                     ; $6026: $f2
    ld a, [c]                                     ; $6027: $f2
    ld a, [c]                                     ; $6028: $f2
    ld a, [c]                                     ; $6029: $f2
    ld a, [c]                                     ; $602a: $f2
    ld a, [c]                                     ; $602b: $f2
    ld a, [c]                                     ; $602c: $f2
    ld a, [c]                                     ; $602d: $f2
    db $fd                                        ; $602e: $fd
    db $fd                                        ; $602f: $fd
    db $fd                                        ; $6030: $fd
    db $fd                                        ; $6031: $fd
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00
    nop                                           ; $6036: $00
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00

jr_07a_6039:
    nop                                           ; $6039: $00
    nop                                           ; $603a: $00
    nop                                           ; $603b: $00
    nop                                           ; $603c: $00
    nop                                           ; $603d: $00

jr_07a_603e:
    ld b, b                                       ; $603e: $40
    ld b, b                                       ; $603f: $40
    ld b, b                                       ; $6040: $40
    ld b, b                                       ; $6041: $40

jr_07a_6042:
    push af                                       ; $6042: $f5
    inc c                                         ; $6043: $0c
    inc bc                                        ; $6044: $03
    inc b                                         ; $6045: $04
    push af                                       ; $6046: $f5
    dec c                                         ; $6047: $0d
    ld c, $0f                                     ; $6048: $0e $0f
    push af                                       ; $604a: $f5
    pop af                                        ; $604b: $f1
    db $10                                        ; $604c: $10
    ld de, $12f5                                  ; $604d: $11 $f5 $12
    inc de                                        ; $6050: $13
    inc d                                         ; $6051: $14
    add b                                         ; $6052: $80
    inc bc                                        ; $6053: $03
    inc bc                                        ; $6054: $03
    inc bc                                        ; $6055: $03
    add b                                         ; $6056: $80
    inc bc                                        ; $6057: $03
    inc bc                                        ; $6058: $03
    inc bc                                        ; $6059: $03
    add b                                         ; $605a: $80
    inc bc                                        ; $605b: $03
    inc bc                                        ; $605c: $03
    inc bc                                        ; $605d: $03
    add b                                         ; $605e: $80
    ld bc, $0101                                  ; $605f: $01 $01 $01
    dec d                                         ; $6062: $15
    ld d, $17                                     ; $6063: $16 $17
    jr @+$1b                                      ; $6065: $18 $19

    ld a, [de]                                    ; $6067: $1a
    dec de                                        ; $6068: $1b
    inc e                                         ; $6069: $1c
    dec e                                         ; $606a: $1d
    ld e, $1f                                     ; $606b: $1e $1f
    jr nz, jr_07a_6090                            ; $606d: $20 $21

    ld [hl+], a                                   ; $606f: $22
    inc hl                                        ; $6070: $23
    inc h                                         ; $6071: $24
    ld bc, $0101                                  ; $6072: $01 $01 $01
    ld bc, $0701                                  ; $6075: $01 $01 $07
    ld bc, $0701                                  ; $6078: $01 $01 $07
    ld bc, $0107                                  ; $607b: $01 $07 $01
    ld bc, $0107                                  ; $607e: $01 $07 $01
    ld bc, $0304                                  ; $6081: $01 $04 $03
    inc c                                         ; $6084: $0c
    dec h                                         ; $6085: $25
    rrca                                          ; $6086: $0f
    ld c, $0d                                     ; $6087: $0e $0d
    ld h, $11                                     ; $6089: $26 $11
    db $10                                        ; $608b: $10
    pop af                                        ; $608c: $f1
    ld h, $13                                     ; $608d: $26 $13
    inc d                                         ; $608f: $14

jr_07a_6090:
    daa                                           ; $6090: $27
    ld h, $23                                     ; $6091: $26 $23
    inc hl                                        ; $6093: $23
    inc hl                                        ; $6094: $23
    inc b                                         ; $6095: $04
    inc hl                                        ; $6096: $23
    inc hl                                        ; $6097: $23
    inc hl                                        ; $6098: $23
    inc b                                         ; $6099: $04
    inc hl                                        ; $609a: $23
    inc hl                                        ; $609b: $23
    inc bc                                        ; $609c: $03
    inc b                                         ; $609d: $04
    ld bc, $0101                                  ; $609e: $01 $01 $01
    inc b                                         ; $60a1: $04
    jr z, jr_07a_60cc                             ; $60a2: $28 $28

    jr z, @+$2a                                   ; $60a4: $28 $28

    add hl, hl                                    ; $60a6: $29
    add hl, hl                                    ; $60a7: $29
    add hl, hl                                    ; $60a8: $29
    add hl, hl                                    ; $60a9: $29
    add hl, hl                                    ; $60aa: $29
    add hl, hl                                    ; $60ab: $29
    add hl, hl                                    ; $60ac: $29
    add hl, hl                                    ; $60ad: $29
    add hl, hl                                    ; $60ae: $29
    add hl, hl                                    ; $60af: $29
    add hl, hl                                    ; $60b0: $29
    add hl, hl                                    ; $60b1: $29
    inc b                                         ; $60b2: $04
    inc b                                         ; $60b3: $04
    inc b                                         ; $60b4: $04
    inc b                                         ; $60b5: $04
    inc b                                         ; $60b6: $04
    inc b                                         ; $60b7: $04
    inc b                                         ; $60b8: $04
    inc b                                         ; $60b9: $04
    inc b                                         ; $60ba: $04
    inc b                                         ; $60bb: $04
    inc b                                         ; $60bc: $04
    inc b                                         ; $60bd: $04
    inc b                                         ; $60be: $04
    inc b                                         ; $60bf: $04
    inc b                                         ; $60c0: $04
    inc b                                         ; $60c1: $04
    push af                                       ; $60c2: $f5
    ld sp, hl                                     ; $60c3: $f9
    ld a, [$f5fb]                                 ; $60c4: $fa $fb $f5
    cp $fa                                        ; $60c7: $fe $fa
    rst $38                                       ; $60c9: $ff
    push af                                       ; $60ca: $f5
    nop                                           ; $60cb: $00

jr_07a_60cc:
    ld bc, $0b02                                  ; $60cc: $01 $02 $0b
    nop                                           ; $60cf: $00
    inc bc                                        ; $60d0: $03
    inc b                                         ; $60d1: $04
    nop                                           ; $60d2: $00
    ld [bc], a                                    ; $60d3: $02
    ld [bc], a                                    ; $60d4: $02
    ld [bc], a                                    ; $60d5: $02
    nop                                           ; $60d6: $00
    inc bc                                        ; $60d7: $03
    ld [bc], a                                    ; $60d8: $02
    ld [bc], a                                    ; $60d9: $02
    nop                                           ; $60da: $00
    inc bc                                        ; $60db: $03
    inc bc                                        ; $60dc: $03
    inc bc                                        ; $60dd: $03
    ld b, b                                       ; $60de: $40
    inc bc                                        ; $60df: $03
    inc bc                                        ; $60e0: $03
    inc bc                                        ; $60e1: $03
    rst $10                                       ; $60e2: $d7
    ret c                                         ; $60e3: $d8

    reti                                          ; $60e4: $d9


    jp c, Jump_000_0505                           ; $60e5: $da $05 $05

    dec b                                         ; $60e8: $05
    dec b                                         ; $60e9: $05
    ld b, $06                                     ; $60ea: $06 $06
    ld b, $06                                     ; $60ec: $06 $06
    rlca                                          ; $60ee: $07
    ld [$0a09], sp                                ; $60ef: $08 $09 $0a
    dec b                                         ; $60f2: $05
    dec b                                         ; $60f3: $05
    dec b                                         ; $60f4: $05
    dec b                                         ; $60f5: $05
    ld [bc], a                                    ; $60f6: $02
    ld [bc], a                                    ; $60f7: $02
    ld [bc], a                                    ; $60f8: $02
    ld [bc], a                                    ; $60f9: $02
    ld [bc], a                                    ; $60fa: $02
    ld [bc], a                                    ; $60fb: $02
    ld [bc], a                                    ; $60fc: $02
    ld [bc], a                                    ; $60fd: $02
    ld bc, $0701                                  ; $60fe: $01 $01 $07
    ld bc, $0c2a                                  ; $6101: $01 $2a $0c
    inc bc                                        ; $6104: $03
    inc b                                         ; $6105: $04
    dec hl                                        ; $6106: $2b
    dec c                                         ; $6107: $0d
    ld c, $0f                                     ; $6108: $0e $0f
    dec hl                                        ; $610a: $2b
    pop af                                        ; $610b: $f1
    db $10                                        ; $610c: $10
    ld de, $122b                                  ; $610d: $11 $2b $12
    inc de                                        ; $6110: $13
    inc d                                         ; $6111: $14
    inc b                                         ; $6112: $04
    inc bc                                        ; $6113: $03
    inc bc                                        ; $6114: $03
    inc bc                                        ; $6115: $03
    inc b                                         ; $6116: $04
    inc bc                                        ; $6117: $03
    inc bc                                        ; $6118: $03
    inc bc                                        ; $6119: $03
    inc b                                         ; $611a: $04
    inc bc                                        ; $611b: $03
    inc bc                                        ; $611c: $03
    inc bc                                        ; $611d: $03
    inc b                                         ; $611e: $04
    ld bc, $0101                                  ; $611f: $01 $01 $01
    dec d                                         ; $6122: $15
    ld d, $17                                     ; $6123: $16 $17
    jr @+$1b                                      ; $6125: $18 $19

    ld a, [de]                                    ; $6127: $1a
    dec de                                        ; $6128: $1b
    inc e                                         ; $6129: $1c
    dec e                                         ; $612a: $1d
    ld e, $1f                                     ; $612b: $1e $1f
    jr nz, jr_07a_6150                            ; $612d: $20 $21

    ld [hl+], a                                   ; $612f: $22
    inc hl                                        ; $6130: $23
    inc h                                         ; $6131: $24
    rlca                                          ; $6132: $07
    ld bc, $0101                                  ; $6133: $01 $01 $01
    ld bc, $0707                                  ; $6136: $01 $07 $07
    ld bc, $0101                                  ; $6139: $01 $01 $01
    rlca                                          ; $613c: $07
    rlca                                          ; $613d: $07
    ld bc, $0107                                  ; $613e: $01 $07 $01
    rlca                                          ; $6141: $07
    ld a, [c]                                     ; $6142: $f2
    ld a, [c]                                     ; $6143: $f2
    ld a, [c]                                     ; $6144: $f2
    ld a, [c]                                     ; $6145: $f2
    dec bc                                        ; $6146: $0b
    pop de                                        ; $6147: $d1
    pop de                                        ; $6148: $d1
    pop de                                        ; $6149: $d1
    push af                                       ; $614a: $f5
    jp nc, $d2d2                                  ; $614b: $d2 $d2 $d2

    push af                                       ; $614e: $f5
    db $d3                                        ; $614f: $d3

jr_07a_6150:
    call nc, $00d5                                ; $6150: $d4 $d5 $00
    nop                                           ; $6153: $00
    nop                                           ; $6154: $00
    nop                                           ; $6155: $00
    nop                                           ; $6156: $00
    dec b                                         ; $6157: $05
    dec b                                         ; $6158: $05
    dec b                                         ; $6159: $05
    nop                                           ; $615a: $00
    dec b                                         ; $615b: $05
    dec b                                         ; $615c: $05
    dec b                                         ; $615d: $05
    nop                                           ; $615e: $00
    dec b                                         ; $615f: $05
    dec b                                         ; $6160: $05
    dec b                                         ; $6161: $05
    rst $10                                       ; $6162: $d7
    ret c                                         ; $6163: $d8

    reti                                          ; $6164: $d9


    jp c, Jump_000_0505                           ; $6165: $da $05 $05

    dec b                                         ; $6168: $05
    dec b                                         ; $6169: $05
    ld b, $06                                     ; $616a: $06 $06
    ld b, $06                                     ; $616c: $06 $06
    add hl, bc                                    ; $616e: $09
    ld a, [bc]                                    ; $616f: $0a
    inc l                                         ; $6170: $2c
    dec l                                         ; $6171: $2d
    dec b                                         ; $6172: $05
    dec b                                         ; $6173: $05
    dec b                                         ; $6174: $05
    dec b                                         ; $6175: $05
    ld [bc], a                                    ; $6176: $02
    ld [bc], a                                    ; $6177: $02
    ld [bc], a                                    ; $6178: $02
    ld [bc], a                                    ; $6179: $02
    ld [bc], a                                    ; $617a: $02
    ld [bc], a                                    ; $617b: $02
    ld [bc], a                                    ; $617c: $02
    ld [bc], a                                    ; $617d: $02
    ld bc, $0101                                  ; $617e: $01 $01 $01
    ld bc, $d7f5                                  ; $6181: $01 $f5 $d7
    ret c                                         ; $6184: $d8

    reti                                          ; $6185: $d9


    push af                                       ; $6186: $f5
    db $db                                        ; $6187: $db
    call c, $f5db                                 ; $6188: $dc $db $f5
    db $dd                                        ; $618b: $dd
    sbc $dd                                       ; $618c: $de $dd
    dec bc                                        ; $618e: $0b
    rst $18                                       ; $618f: $df
    ldh [$df], a                                  ; $6190: $e0 $df
    nop                                           ; $6192: $00
    dec b                                         ; $6193: $05
    dec b                                         ; $6194: $05
    dec b                                         ; $6195: $05
    nop                                           ; $6196: $00
    dec b                                         ; $6197: $05
    dec b                                         ; $6198: $05
    dec b                                         ; $6199: $05
    nop                                           ; $619a: $00
    dec b                                         ; $619b: $05
    dec b                                         ; $619c: $05
    dec b                                         ; $619d: $05
    ld b, b                                       ; $619e: $40
    dec b                                         ; $619f: $05
    dec b                                         ; $61a0: $05
    dec b                                         ; $61a1: $05
    ld a, [hl+]                                   ; $61a2: $2a
    inc c                                         ; $61a3: $0c
    inc bc                                        ; $61a4: $03
    inc b                                         ; $61a5: $04
    dec hl                                        ; $61a6: $2b
    dec c                                         ; $61a7: $0d
    ld c, $0f                                     ; $61a8: $0e $0f
    dec hl                                        ; $61aa: $2b
    pop af                                        ; $61ab: $f1
    db $10                                        ; $61ac: $10
    ld de, $142b                                  ; $61ad: $11 $2b $14
    daa                                           ; $61b0: $27
    ld l, $04                                     ; $61b1: $2e $04
    inc bc                                        ; $61b3: $03
    inc bc                                        ; $61b4: $03
    inc bc                                        ; $61b5: $03
    inc b                                         ; $61b6: $04
    inc bc                                        ; $61b7: $03
    inc bc                                        ; $61b8: $03
    inc bc                                        ; $61b9: $03
    inc b                                         ; $61ba: $04
    inc bc                                        ; $61bb: $03
    inc bc                                        ; $61bc: $03
    inc bc                                        ; $61bd: $03
    inc b                                         ; $61be: $04
    ld bc, $0101                                  ; $61bf: $01 $01 $01
    rla                                           ; $61c2: $17
    jr jr_07a_61f4                                ; $61c3: $18 $2f

    jr nc, jr_07a_61e2                            ; $61c5: $30 $1b

    inc e                                         ; $61c7: $1c
    ld sp, $1f32                                  ; $61c8: $31 $32 $1f
    jr nz, @+$35                                  ; $61cb: $20 $33

    inc [hl]                                      ; $61cd: $34
    inc hl                                        ; $61ce: $23
    inc h                                         ; $61cf: $24
    dec [hl]                                      ; $61d0: $35
    ld [hl], $01                                  ; $61d1: $36 $01
    ld bc, $0101                                  ; $61d3: $01 $01 $01
    ld bc, $0701                                  ; $61d6: $01 $01 $07
    ld bc, $0701                                  ; $61d9: $01 $01 $07
    ld bc, $0701                                  ; $61dc: $01 $01 $07
    ld bc, $0107                                  ; $61df: $01 $07 $01

jr_07a_61e2:
    inc b                                         ; $61e2: $04
    inc bc                                        ; $61e3: $03
    inc c                                         ; $61e4: $0c
    dec h                                         ; $61e5: $25
    rrca                                          ; $61e6: $0f
    ld c, $0d                                     ; $61e7: $0e $0d
    ld h, $11                                     ; $61e9: $26 $11
    db $10                                        ; $61eb: $10
    pop af                                        ; $61ec: $f1
    ld h, $27                                     ; $61ed: $26 $27
    ld l, $37                                     ; $61ef: $2e $37
    ld h, $23                                     ; $61f1: $26 $23
    inc hl                                        ; $61f3: $23

jr_07a_61f4:
    inc hl                                        ; $61f4: $23
    inc b                                         ; $61f5: $04
    inc hl                                        ; $61f6: $23
    inc hl                                        ; $61f7: $23
    inc hl                                        ; $61f8: $23
    inc b                                         ; $61f9: $04
    inc hl                                        ; $61fa: $23
    inc hl                                        ; $61fb: $23
    inc bc                                        ; $61fc: $03
    inc b                                         ; $61fd: $04
    ld bc, $0101                                  ; $61fe: $01 $01 $01
    inc b                                         ; $6201: $04
    ld a, [hl+]                                   ; $6202: $2a
    pop hl                                        ; $6203: $e1
    ld [c], a                                     ; $6204: $e2
    db $e3                                        ; $6205: $e3
    dec hl                                        ; $6206: $2b
    push hl                                       ; $6207: $e5
    and $e7                                       ; $6208: $e6 $e7
    dec hl                                        ; $620a: $2b
    jp hl                                         ; $620b: $e9


    ld [$2beb], a                                 ; $620c: $ea $eb $2b
    db $ed                                        ; $620f: $ed
    xor $ed                                       ; $6210: $ee $ed
    inc b                                         ; $6212: $04
    ld b, $06                                     ; $6213: $06 $06
    ld b, $04                                     ; $6215: $06 $04
    ld b, $06                                     ; $6217: $06 $06
    ld b, $04                                     ; $6219: $06 $04
    ld bc, $0101                                  ; $621b: $01 $01 $01
    inc b                                         ; $621e: $04
    ld bc, $0101                                  ; $621f: $01 $01 $01
    ld a, [c]                                     ; $6222: $f2
    ld a, [c]                                     ; $6223: $f2
    ld a, [c]                                     ; $6224: $f2
    ld a, [c]                                     ; $6225: $f2
    pop de                                        ; $6226: $d1
    dec bc                                        ; $6227: $0b
    di                                            ; $6228: $f3
    db $f4                                        ; $6229: $f4
    jp nc, $f5f5                                  ; $622a: $d2 $f5 $f5

    or $d6                                        ; $622d: $f6 $d6
    push af                                       ; $622f: $f5
    push af                                       ; $6230: $f5
    ld sp, hl                                     ; $6231: $f9
    nop                                           ; $6232: $00
    nop                                           ; $6233: $00
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    dec b                                         ; $6236: $05
    jr nz, jr_07a_6239                            ; $6237: $20 $00

jr_07a_6239:
    nop                                           ; $6239: $00
    dec b                                         ; $623a: $05
    jr nz, jr_07a_623d                            ; $623b: $20 $00

jr_07a_623d:
    ld [bc], a                                    ; $623d: $02
    dec b                                         ; $623e: $05
    jr nz, jr_07a_6241                            ; $623f: $20 $00

jr_07a_6241:
    ld [bc], a                                    ; $6241: $02
    ld a, [c]                                     ; $6242: $f2
    ld a, [c]                                     ; $6243: $f2
    ld a, [c]                                     ; $6244: $f2
    ld a, [c]                                     ; $6245: $f2
    db $f4                                        ; $6246: $f4
    db $f4                                        ; $6247: $f4
    db $f4                                        ; $6248: $f4
    db $f4                                        ; $6249: $f4
    rst $30                                       ; $624a: $f7
    ld hl, sp-$04                                 ; $624b: $f8 $fc
    db $fc                                        ; $624d: $fc
    ld a, [$d3fb]                                 ; $624e: $fa $fb $d3
    call nc, RST_00                               ; $6251: $d4 $00 $00
    nop                                           ; $6254: $00
    nop                                           ; $6255: $00
    nop                                           ; $6256: $00
    nop                                           ; $6257: $00
    nop                                           ; $6258: $00
    nop                                           ; $6259: $00
    ld [bc], a                                    ; $625a: $02
    ld [bc], a                                    ; $625b: $02
    ld [bc], a                                    ; $625c: $02
    ld [bc], a                                    ; $625d: $02
    ld [bc], a                                    ; $625e: $02
    ld [bc], a                                    ; $625f: $02
    dec b                                         ; $6260: $05
    dec b                                         ; $6261: $05
    ld a, [c]                                     ; $6262: $f2
    ld a, [c]                                     ; $6263: $f2
    ld a, [c]                                     ; $6264: $f2
    ld a, [c]                                     ; $6265: $f2
    db $f4                                        ; $6266: $f4
    db $f4                                        ; $6267: $f4
    db $f4                                        ; $6268: $f4
    db $f4                                        ; $6269: $f4
    db $fc                                        ; $626a: $fc
    db $fc                                        ; $626b: $fc
    ld hl, sp-$09                                 ; $626c: $f8 $f7
    push de                                       ; $626e: $d5
    sub $fb                                       ; $626f: $d6 $fb
    ld a, [$0000]                                 ; $6271: $fa $00 $00
    nop                                           ; $6274: $00
    nop                                           ; $6275: $00
    nop                                           ; $6276: $00
    nop                                           ; $6277: $00
    nop                                           ; $6278: $00
    nop                                           ; $6279: $00
    ld [bc], a                                    ; $627a: $02
    ld [bc], a                                    ; $627b: $02
    ld [bc], a                                    ; $627c: $02
    ld [hl+], a                                   ; $627d: $22
    dec b                                         ; $627e: $05
    dec b                                         ; $627f: $05
    ld [hl+], a                                   ; $6280: $22
    ld [hl+], a                                   ; $6281: $22
    ld a, [c]                                     ; $6282: $f2
    ld a, [c]                                     ; $6283: $f2
    ld a, [c]                                     ; $6284: $f2
    ld a, [c]                                     ; $6285: $f2
    db $f4                                        ; $6286: $f4
    di                                            ; $6287: $f3
    db $fd                                        ; $6288: $fd
    db $fd                                        ; $6289: $fd
    or $f5                                        ; $628a: $f6 $f5
    ld a, [c]                                     ; $628c: $f2
    ld a, [c]                                     ; $628d: $f2
    ld sp, hl                                     ; $628e: $f9
    push af                                       ; $628f: $f5
    ld a, [c]                                     ; $6290: $f2
    ld a, [c]                                     ; $6291: $f2
    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    nop                                           ; $6294: $00
    nop                                           ; $6295: $00
    nop                                           ; $6296: $00
    jr nz, jr_07a_6299                            ; $6297: $20 $00

jr_07a_6299:
    nop                                           ; $6299: $00
    ld [hl+], a                                   ; $629a: $22
    jr nz, jr_07a_629d                            ; $629b: $20 $00

jr_07a_629d:
    nop                                           ; $629d: $00
    ld [hl+], a                                   ; $629e: $22
    jr nz, jr_07a_62a1                            ; $629f: $20 $00

jr_07a_62a1:
    nop                                           ; $62a1: $00
    jp c, $f5f5                                   ; $62a2: $da $f5 $f5

    ld sp, hl                                     ; $62a5: $f9
    call c, $f5f5                                 ; $62a6: $dc $f5 $f5
    cp $de                                        ; $62a9: $fe $de
    push af                                       ; $62ab: $f5
    push af                                       ; $62ac: $f5
    nop                                           ; $62ad: $00
    ldh [$0b], a                                  ; $62ae: $e0 $0b
    dec bc                                        ; $62b0: $0b
    nop                                           ; $62b1: $00
    dec b                                         ; $62b2: $05
    jr nz, jr_07a_62b5                            ; $62b3: $20 $00

jr_07a_62b5:
    ld [bc], a                                    ; $62b5: $02
    dec b                                         ; $62b6: $05
    jr nz, jr_07a_62b9                            ; $62b7: $20 $00

jr_07a_62b9:
    inc bc                                        ; $62b9: $03
    dec b                                         ; $62ba: $05
    jr nz, jr_07a_62bd                            ; $62bb: $20 $00

jr_07a_62bd:
    inc bc                                        ; $62bd: $03
    dec b                                         ; $62be: $05
    ld h, b                                       ; $62bf: $60
    ld b, b                                       ; $62c0: $40
    inc bc                                        ; $62c1: $03
    ld a, [$d7fb]                                 ; $62c2: $fa $fb $d7
    ret c                                         ; $62c5: $d8

    ld a, [$05ff]                                 ; $62c6: $fa $ff $05
    dec b                                         ; $62c9: $05
    ld bc, $0602                                  ; $62ca: $01 $02 $06
    ld b, $03                                     ; $62cd: $06 $03
    inc b                                         ; $62cf: $04
    rlca                                          ; $62d0: $07
    ld [$0202], sp                                ; $62d1: $08 $02 $02
    dec b                                         ; $62d4: $05
    dec b                                         ; $62d5: $05
    ld [bc], a                                    ; $62d6: $02
    ld [bc], a                                    ; $62d7: $02
    ld [bc], a                                    ; $62d8: $02
    ld [bc], a                                    ; $62d9: $02
    inc bc                                        ; $62da: $03
    inc bc                                        ; $62db: $03
    ld [bc], a                                    ; $62dc: $02
    ld [bc], a                                    ; $62dd: $02
    inc bc                                        ; $62de: $03
    inc bc                                        ; $62df: $03
    ld bc, $d901                                  ; $62e0: $01 $01 $d9
    jp c, $fafb                                   ; $62e3: $da $fb $fa

    dec b                                         ; $62e6: $05
    dec b                                         ; $62e7: $05
    rst $38                                       ; $62e8: $ff
    ld a, [$0606]                                 ; $62e9: $fa $06 $06
    ld [bc], a                                    ; $62ec: $02
    ld bc, $0a09                                  ; $62ed: $01 $09 $0a
    inc b                                         ; $62f0: $04
    inc bc                                        ; $62f1: $03
    dec b                                         ; $62f2: $05
    dec b                                         ; $62f3: $05
    ld [hl+], a                                   ; $62f4: $22
    ld [hl+], a                                   ; $62f5: $22
    ld [bc], a                                    ; $62f6: $02
    ld [bc], a                                    ; $62f7: $02
    ld [hl+], a                                   ; $62f8: $22
    ld [hl+], a                                   ; $62f9: $22
    ld [bc], a                                    ; $62fa: $02
    ld [bc], a                                    ; $62fb: $02
    inc hl                                        ; $62fc: $23
    inc hl                                        ; $62fd: $23
    ld bc, $2301                                  ; $62fe: $01 $01 $23
    inc hl                                        ; $6301: $23
    ld sp, hl                                     ; $6302: $f9
    push af                                       ; $6303: $f5
    ld a, [c]                                     ; $6304: $f2
    ld a, [c]                                     ; $6305: $f2
    cp $f5                                        ; $6306: $fe $f5
    ld a, [c]                                     ; $6308: $f2
    ld a, [c]                                     ; $6309: $f2
    nop                                           ; $630a: $00
    push af                                       ; $630b: $f5
    ld a, [c]                                     ; $630c: $f2
    ld a, [c]                                     ; $630d: $f2
    nop                                           ; $630e: $00
    dec bc                                        ; $630f: $0b
    db $fd                                        ; $6310: $fd
    db $fd                                        ; $6311: $fd
    ld [hl+], a                                   ; $6312: $22
    jr nz, jr_07a_6315                            ; $6313: $20 $00

jr_07a_6315:
    nop                                           ; $6315: $00
    inc hl                                        ; $6316: $23
    jr nz, jr_07a_6319                            ; $6317: $20 $00

jr_07a_6319:
    nop                                           ; $6319: $00
    inc hl                                        ; $631a: $23
    jr nz, jr_07a_631d                            ; $631b: $20 $00

jr_07a_631d:
    nop                                           ; $631d: $00
    inc hl                                        ; $631e: $23
    ld h, b                                       ; $631f: $60
    ld b, b                                       ; $6320: $40
    ld b, b                                       ; $6321: $40
    db $e4                                        ; $6322: $e4
    ld a, [hl+]                                   ; $6323: $2a
    dec h                                         ; $6324: $25
    inc c                                         ; $6325: $0c
    add sp, $2b                                   ; $6326: $e8 $2b
    ld h, $0d                                     ; $6328: $26 $0d
    db $ec                                        ; $632a: $ec
    dec hl                                        ; $632b: $2b
    ld h, $f1                                     ; $632c: $26 $f1
    xor $2b                                       ; $632e: $ee $2b
    ld h, $12                                     ; $6330: $26 $12
    ld b, $24                                     ; $6332: $06 $24
    inc h                                         ; $6334: $24
    inc bc                                        ; $6335: $03
    ld b, $24                                     ; $6336: $06 $24
    inc h                                         ; $6338: $24
    inc bc                                        ; $6339: $03
    ld bc, $2424                                  ; $633a: $01 $24 $24
    inc bc                                        ; $633d: $03
    ld bc, $2424                                  ; $633e: $01 $24 $24
    ld bc, $0403                                  ; $6341: $01 $03 $04
    dec d                                         ; $6344: $15
    ld d, $0e                                     ; $6345: $16 $0e
    rrca                                          ; $6347: $0f
    add hl, de                                    ; $6348: $19
    ld a, [de]                                    ; $6349: $1a
    db $10                                        ; $634a: $10
    ld de, $1e1d                                  ; $634b: $11 $1d $1e
    inc de                                        ; $634e: $13
    inc d                                         ; $634f: $14
    ld hl, $0322                                  ; $6350: $21 $22 $03
    inc bc                                        ; $6353: $03
    ld bc, $0301                                  ; $6354: $01 $01 $03
    inc bc                                        ; $6357: $03
    ld bc, $0307                                  ; $6358: $01 $07 $03
    inc bc                                        ; $635b: $03
    rlca                                          ; $635c: $07
    ld bc, $0101                                  ; $635d: $01 $01 $01
    ld bc, $1701                                  ; $6360: $01 $01 $17
    jr jr_07a_6369                                ; $6363: $18 $04

    inc bc                                        ; $6365: $03
    dec de                                        ; $6366: $1b
    inc e                                         ; $6367: $1c
    rrca                                          ; $6368: $0f

jr_07a_6369:
    ld c, $1f                                     ; $6369: $0e $1f
    jr nz, jr_07a_637e                            ; $636b: $20 $11

    db $10                                        ; $636d: $10
    inc hl                                        ; $636e: $23
    inc h                                         ; $636f: $24
    inc de                                        ; $6370: $13
    inc d                                         ; $6371: $14
    rlca                                          ; $6372: $07
    ld bc, $2323                                  ; $6373: $01 $23 $23
    ld bc, $2301                                  ; $6376: $01 $01 $23
    inc hl                                        ; $6379: $23
    ld bc, $2301                                  ; $637a: $01 $01 $23
    inc hl                                        ; $637d: $23

jr_07a_637e:
    rlca                                          ; $637e: $07
    ld bc, $0101                                  ; $637f: $01 $01 $01
    inc c                                         ; $6382: $0c
    dec h                                         ; $6383: $25
    jr z, @+$2a                                   ; $6384: $28 $28

    dec c                                         ; $6386: $0d
    ld h, $29                                     ; $6387: $26 $29
    add hl, hl                                    ; $6389: $29
    pop af                                        ; $638a: $f1
    ld h, $29                                     ; $638b: $26 $29
    add hl, hl                                    ; $638d: $29
    daa                                           ; $638e: $27
    ld h, $29                                     ; $638f: $26 $29
    add hl, hl                                    ; $6391: $29
    inc hl                                        ; $6392: $23
    inc b                                         ; $6393: $04
    inc b                                         ; $6394: $04
    inc b                                         ; $6395: $04
    inc hl                                        ; $6396: $23
    inc b                                         ; $6397: $04
    inc b                                         ; $6398: $04
    inc b                                         ; $6399: $04
    inc bc                                        ; $639a: $03
    inc b                                         ; $639b: $04
    inc b                                         ; $639c: $04
    inc b                                         ; $639d: $04
    ld bc, $0404                                  ; $639e: $01 $04 $04
    inc b                                         ; $63a1: $04
    ld a, [c]                                     ; $63a2: $f2
    ld a, [c]                                     ; $63a3: $f2
    ld a, [c]                                     ; $63a4: $f2
    ld a, [c]                                     ; $63a5: $f2
    db $fd                                        ; $63a6: $fd
    db $fd                                        ; $63a7: $fd
    di                                            ; $63a8: $f3
    db $f4                                        ; $63a9: $f4
    ld a, [c]                                     ; $63aa: $f2
    ld a, [c]                                     ; $63ab: $f2
    push af                                       ; $63ac: $f5
    or $f2                                        ; $63ad: $f6 $f2
    ld a, [c]                                     ; $63af: $f2
    push af                                       ; $63b0: $f5
    ld sp, hl                                     ; $63b1: $f9
    nop                                           ; $63b2: $00
    nop                                           ; $63b3: $00
    nop                                           ; $63b4: $00
    nop                                           ; $63b5: $00
    nop                                           ; $63b6: $00
    nop                                           ; $63b7: $00
    nop                                           ; $63b8: $00
    nop                                           ; $63b9: $00
    nop                                           ; $63ba: $00
    nop                                           ; $63bb: $00
    nop                                           ; $63bc: $00
    ld [bc], a                                    ; $63bd: $02
    nop                                           ; $63be: $00
    nop                                           ; $63bf: $00
    nop                                           ; $63c0: $00
    ld [bc], a                                    ; $63c1: $02
    ld a, [c]                                     ; $63c2: $f2
    ld a, [c]                                     ; $63c3: $f2
    push af                                       ; $63c4: $f5
    ld sp, hl                                     ; $63c5: $f9
    ld a, [c]                                     ; $63c6: $f2
    ld a, [c]                                     ; $63c7: $f2
    push af                                       ; $63c8: $f5
    cp $f2                                        ; $63c9: $fe $f2
    ld a, [c]                                     ; $63cb: $f2
    push af                                       ; $63cc: $f5
    nop                                           ; $63cd: $00
    db $fd                                        ; $63ce: $fd
    db $fd                                        ; $63cf: $fd
    dec bc                                        ; $63d0: $0b
    nop                                           ; $63d1: $00
    nop                                           ; $63d2: $00
    nop                                           ; $63d3: $00
    nop                                           ; $63d4: $00
    ld [bc], a                                    ; $63d5: $02
    nop                                           ; $63d6: $00
    nop                                           ; $63d7: $00
    nop                                           ; $63d8: $00
    inc bc                                        ; $63d9: $03
    nop                                           ; $63da: $00
    nop                                           ; $63db: $00
    nop                                           ; $63dc: $00
    inc bc                                        ; $63dd: $03
    ld b, b                                       ; $63de: $40
    ld b, b                                       ; $63df: $40
    ld b, b                                       ; $63e0: $40
    inc bc                                        ; $63e1: $03
    reti                                          ; $63e2: $d9


    jp c, $fafb                                   ; $63e3: $da $fb $fa

    dec b                                         ; $63e6: $05
    dec b                                         ; $63e7: $05
    rst $38                                       ; $63e8: $ff
    ld a, [$0606]                                 ; $63e9: $fa $06 $06
    ld [bc], a                                    ; $63ec: $02
    ld bc, $0a09                                  ; $63ed: $01 $09 $0a
    inc b                                         ; $63f0: $04
    inc bc                                        ; $63f1: $03
    dec b                                         ; $63f2: $05
    dec b                                         ; $63f3: $05
    ld [hl+], a                                   ; $63f4: $22
    ld [hl+], a                                   ; $63f5: $22
    ld [bc], a                                    ; $63f6: $02
    ld [bc], a                                    ; $63f7: $02
    ld [hl+], a                                   ; $63f8: $22
    ld [hl+], a                                   ; $63f9: $22
    ld [bc], a                                    ; $63fa: $02
    ld [bc], a                                    ; $63fb: $02
    inc hl                                        ; $63fc: $23
    inc hl                                        ; $63fd: $23
    rlca                                          ; $63fe: $07
    ld bc, $2323                                  ; $63ff: $01 $23 $23
    jr z, @+$2a                                   ; $6402: $28 $28

    ld a, [hl+]                                   ; $6404: $2a
    inc c                                         ; $6405: $0c
    add hl, hl                                    ; $6406: $29
    add hl, hl                                    ; $6407: $29
    dec hl                                        ; $6408: $2b
    dec c                                         ; $6409: $0d
    add hl, hl                                    ; $640a: $29
    add hl, hl                                    ; $640b: $29
    dec hl                                        ; $640c: $2b
    pop af                                        ; $640d: $f1
    add hl, hl                                    ; $640e: $29
    add hl, hl                                    ; $640f: $29
    dec hl                                        ; $6410: $2b
    ld [de], a                                    ; $6411: $12
    inc b                                         ; $6412: $04
    inc b                                         ; $6413: $04
    inc b                                         ; $6414: $04
    inc bc                                        ; $6415: $03
    inc b                                         ; $6416: $04
    inc b                                         ; $6417: $04
    inc b                                         ; $6418: $04
    inc bc                                        ; $6419: $03
    inc b                                         ; $641a: $04
    inc b                                         ; $641b: $04
    inc b                                         ; $641c: $04
    inc bc                                        ; $641d: $03
    inc b                                         ; $641e: $04
    inc b                                         ; $641f: $04
    inc b                                         ; $6420: $04
    ld bc, $0403                                  ; $6421: $01 $03 $04
    dec d                                         ; $6424: $15
    ld d, $0e                                     ; $6425: $16 $0e
    rrca                                          ; $6427: $0f
    add hl, de                                    ; $6428: $19
    ld a, [de]                                    ; $6429: $1a
    db $10                                        ; $642a: $10
    ld de, $1e1d                                  ; $642b: $11 $1d $1e
    inc de                                        ; $642e: $13
    inc d                                         ; $642f: $14
    ld hl, $0322                                  ; $6430: $21 $22 $03
    inc bc                                        ; $6433: $03
    rlca                                          ; $6434: $07
    ld bc, $0303                                  ; $6435: $01 $03 $03
    ld bc, $0307                                  ; $6438: $01 $07 $03
    inc bc                                        ; $643b: $03
    ld bc, $0101                                  ; $643c: $01 $01 $01
    ld bc, $0701                                  ; $643f: $01 $01 $07
    rla                                           ; $6442: $17
    jr jr_07a_6449                                ; $6443: $18 $04

    inc bc                                        ; $6445: $03
    dec de                                        ; $6446: $1b
    inc e                                         ; $6447: $1c
    rrca                                          ; $6448: $0f

jr_07a_6449:
    ld c, $1f                                     ; $6449: $0e $1f
    jr nz, jr_07a_645e                            ; $644b: $20 $11

    db $10                                        ; $644d: $10
    inc hl                                        ; $644e: $23
    inc h                                         ; $644f: $24
    inc de                                        ; $6450: $13
    inc d                                         ; $6451: $14
    ld bc, $2301                                  ; $6452: $01 $01 $23
    inc hl                                        ; $6455: $23
    rlca                                          ; $6456: $07
    ld bc, $2323                                  ; $6457: $01 $23 $23
    rlca                                          ; $645a: $07
    rlca                                          ; $645b: $07
    inc hl                                        ; $645c: $23
    inc hl                                        ; $645d: $23

jr_07a_645e:
    ld bc, $0107                                  ; $645e: $01 $07 $01
    ld bc, $f2f2                                  ; $6461: $01 $f2 $f2
    ld a, [c]                                     ; $6464: $f2
    ld a, [c]                                     ; $6465: $f2
    db $f4                                        ; $6466: $f4
    di                                            ; $6467: $f3
    dec bc                                        ; $6468: $0b
    pop de                                        ; $6469: $d1
    or $f5                                        ; $646a: $f6 $f5
    push af                                       ; $646c: $f5
    jp nc, $f5f9                                  ; $646d: $d2 $f9 $f5

    push af                                       ; $6470: $f5
    db $d3                                        ; $6471: $d3
    nop                                           ; $6472: $00
    nop                                           ; $6473: $00
    nop                                           ; $6474: $00
    nop                                           ; $6475: $00
    nop                                           ; $6476: $00
    jr nz, jr_07a_6479                            ; $6477: $20 $00

jr_07a_6479:
    dec b                                         ; $6479: $05
    ld [hl+], a                                   ; $647a: $22
    jr nz, jr_07a_647d                            ; $647b: $20 $00

jr_07a_647d:
    dec b                                         ; $647d: $05
    ld [hl+], a                                   ; $647e: $22
    jr nz, jr_07a_6481                            ; $647f: $20 $00

jr_07a_6481:
    dec b                                         ; $6481: $05
    ld a, [$d7fb]                                 ; $6482: $fa $fb $d7
    ret c                                         ; $6485: $d8

    ld a, [$05ff]                                 ; $6486: $fa $ff $05
    dec b                                         ; $6489: $05
    ld bc, $0602                                  ; $648a: $01 $02 $06
    ld b, $03                                     ; $648d: $06 $03
    inc b                                         ; $648f: $04
    add hl, bc                                    ; $6490: $09
    ld a, [bc]                                    ; $6491: $0a
    ld [bc], a                                    ; $6492: $02
    ld [bc], a                                    ; $6493: $02
    dec b                                         ; $6494: $05
    dec b                                         ; $6495: $05
    ld [bc], a                                    ; $6496: $02
    ld [bc], a                                    ; $6497: $02
    ld [bc], a                                    ; $6498: $02
    ld [bc], a                                    ; $6499: $02
    inc bc                                        ; $649a: $03
    inc bc                                        ; $649b: $03
    ld [bc], a                                    ; $649c: $02
    ld [bc], a                                    ; $649d: $02
    inc bc                                        ; $649e: $03
    inc bc                                        ; $649f: $03
    ld bc, $d901                                  ; $64a0: $01 $01 $d9
    jp c, $fafb                                   ; $64a3: $da $fb $fa

    dec b                                         ; $64a6: $05
    dec b                                         ; $64a7: $05
    rst $38                                       ; $64a8: $ff
    ld a, [$0606]                                 ; $64a9: $fa $06 $06
    ld [bc], a                                    ; $64ac: $02
    ld bc, $2d2c                                  ; $64ad: $01 $2c $2d
    inc b                                         ; $64b0: $04
    inc bc                                        ; $64b1: $03
    dec b                                         ; $64b2: $05
    dec b                                         ; $64b3: $05
    ld [hl+], a                                   ; $64b4: $22
    ld [hl+], a                                   ; $64b5: $22
    ld [bc], a                                    ; $64b6: $02
    ld [bc], a                                    ; $64b7: $02
    ld [hl+], a                                   ; $64b8: $22
    ld [hl+], a                                   ; $64b9: $22
    ld [bc], a                                    ; $64ba: $02
    ld [bc], a                                    ; $64bb: $02
    inc hl                                        ; $64bc: $23
    inc hl                                        ; $64bd: $23
    ld bc, $2301                                  ; $64be: $01 $01 $23
    inc hl                                        ; $64c1: $23
    ld sp, hl                                     ; $64c2: $f9
    push af                                       ; $64c3: $f5
    push af                                       ; $64c4: $f5
    rst $10                                       ; $64c5: $d7
    cp $f5                                        ; $64c6: $fe $f5
    push af                                       ; $64c8: $f5
    db $db                                        ; $64c9: $db
    nop                                           ; $64ca: $00
    push af                                       ; $64cb: $f5
    push af                                       ; $64cc: $f5
    db $dd                                        ; $64cd: $dd
    nop                                           ; $64ce: $00
    dec bc                                        ; $64cf: $0b
    dec bc                                        ; $64d0: $0b
    rst $18                                       ; $64d1: $df
    ld [hl+], a                                   ; $64d2: $22
    jr nz, jr_07a_64d5                            ; $64d3: $20 $00

jr_07a_64d5:
    dec b                                         ; $64d5: $05
    inc hl                                        ; $64d6: $23
    jr nz, jr_07a_64d9                            ; $64d7: $20 $00

jr_07a_64d9:
    dec b                                         ; $64d9: $05
    inc hl                                        ; $64da: $23
    jr nz, jr_07a_64dd                            ; $64db: $20 $00

jr_07a_64dd:
    dec b                                         ; $64dd: $05
    inc hl                                        ; $64de: $23
    ld h, b                                       ; $64df: $60
    ld b, b                                       ; $64e0: $40
    dec b                                         ; $64e1: $05
    jr z, @+$2a                                   ; $64e2: $28 $28

    ld a, [hl+]                                   ; $64e4: $2a
    inc c                                         ; $64e5: $0c
    add hl, hl                                    ; $64e6: $29
    add hl, hl                                    ; $64e7: $29
    dec hl                                        ; $64e8: $2b
    dec c                                         ; $64e9: $0d
    add hl, hl                                    ; $64ea: $29
    add hl, hl                                    ; $64eb: $29
    dec hl                                        ; $64ec: $2b
    pop af                                        ; $64ed: $f1
    add hl, hl                                    ; $64ee: $29
    add hl, hl                                    ; $64ef: $29
    dec hl                                        ; $64f0: $2b
    inc d                                         ; $64f1: $14
    inc b                                         ; $64f2: $04
    inc b                                         ; $64f3: $04
    inc b                                         ; $64f4: $04
    inc bc                                        ; $64f5: $03
    inc b                                         ; $64f6: $04
    inc b                                         ; $64f7: $04
    inc b                                         ; $64f8: $04
    inc bc                                        ; $64f9: $03
    inc b                                         ; $64fa: $04
    inc b                                         ; $64fb: $04
    inc b                                         ; $64fc: $04
    inc bc                                        ; $64fd: $03
    inc b                                         ; $64fe: $04
    inc b                                         ; $64ff: $04
    inc b                                         ; $6500: $04
    ld bc, $0403                                  ; $6501: $01 $03 $04
    rla                                           ; $6504: $17
    jr @+$10                                      ; $6505: $18 $0e

    rrca                                          ; $6507: $0f
    dec de                                        ; $6508: $1b
    inc e                                         ; $6509: $1c
    db $10                                        ; $650a: $10
    ld de, $201f                                  ; $650b: $11 $1f $20
    daa                                           ; $650e: $27
    ld l, $23                                     ; $650f: $2e $23
    inc h                                         ; $6511: $24
    inc bc                                        ; $6512: $03
    inc bc                                        ; $6513: $03
    ld bc, $0301                                  ; $6514: $01 $01 $03
    inc bc                                        ; $6517: $03
    ld bc, $0301                                  ; $6518: $01 $01 $03
    inc bc                                        ; $651b: $03
    ld bc, $0107                                  ; $651c: $01 $07 $01
    ld bc, $0107                                  ; $651f: $01 $07 $01
    cpl                                           ; $6522: $2f
    jr nc, jr_07a_6529                            ; $6523: $30 $04

    inc bc                                        ; $6525: $03
    ld sp, $0f32                                  ; $6526: $31 $32 $0f

jr_07a_6529:
    ld c, $33                                     ; $6529: $0e $33
    inc [hl]                                      ; $652b: $34
    ld de, $3510                                  ; $652c: $11 $10 $35
    ld [hl], $27                                  ; $652f: $36 $27
    ld l, $01                                     ; $6531: $2e $01
    ld bc, $2323                                  ; $6533: $01 $23 $23
    rlca                                          ; $6536: $07
    ld bc, $2323                                  ; $6537: $01 $23 $23
    ld bc, $2301                                  ; $653a: $01 $01 $23
    inc hl                                        ; $653d: $23
    rlca                                          ; $653e: $07
    ld bc, $0101                                  ; $653f: $01 $01 $01
    inc c                                         ; $6542: $0c
    dec h                                         ; $6543: $25
    ld a, [hl+]                                   ; $6544: $2a
    pop hl                                        ; $6545: $e1
    dec c                                         ; $6546: $0d
    ld h, $2b                                     ; $6547: $26 $2b
    push hl                                       ; $6549: $e5
    pop af                                        ; $654a: $f1
    ld h, $2b                                     ; $654b: $26 $2b
    jp hl                                         ; $654d: $e9


    scf                                           ; $654e: $37
    ld h, $2b                                     ; $654f: $26 $2b
    db $ed                                        ; $6551: $ed
    inc hl                                        ; $6552: $23
    inc b                                         ; $6553: $04
    inc b                                         ; $6554: $04
    ld b, $23                                     ; $6555: $06 $23
    inc b                                         ; $6557: $04
    inc b                                         ; $6558: $04
    ld b, $03                                     ; $6559: $06 $03

jr_07a_655b:
    inc b                                         ; $655b: $04
    inc b                                         ; $655c: $04
    ld bc, $0401                                  ; $655d: $01 $01 $04
    inc b                                         ; $6560: $04
    ld bc, $f2f2                                  ; $6561: $01 $f2 $f2
    ld a, [c]                                     ; $6564: $f2
    ld a, [c]                                     ; $6565: $f2
    pop de                                        ; $6566: $d1
    pop de                                        ; $6567: $d1
    pop de                                        ; $6568: $d1
    dec bc                                        ; $6569: $0b
    jp nc, $d2d2                                  ; $656a: $d2 $d2 $d2

    push af                                       ; $656d: $f5
    call nc, $d6d5                                ; $656e: $d4 $d5 $d6
    push af                                       ; $6571: $f5
    nop                                           ; $6572: $00
    nop                                           ; $6573: $00
    nop                                           ; $6574: $00
    nop                                           ; $6575: $00
    dec b                                         ; $6576: $05
    dec b                                         ; $6577: $05
    dec b                                         ; $6578: $05
    jr nz, jr_07a_6580                            ; $6579: $20 $05

    dec b                                         ; $657b: $05
    dec b                                         ; $657c: $05
    jr nz, jr_07a_6584                            ; $657d: $20 $05

    dec b                                         ; $657f: $05

jr_07a_6580:
    dec b                                         ; $6580: $05
    jr nz, jr_07a_655b                            ; $6581: $20 $d8

    reti                                          ; $6583: $d9


jr_07a_6584:
    jp c, $dcf5                                   ; $6584: $da $f5 $dc

    db $db                                        ; $6587: $db
    call c, $def5                                 ; $6588: $dc $f5 $de
    db $dd                                        ; $658b: $dd
    sbc $f5                                       ; $658c: $de $f5
    ldh [$df], a                                  ; $658e: $e0 $df
    ldh [$0b], a                                  ; $6590: $e0 $0b
    dec b                                         ; $6592: $05
    dec b                                         ; $6593: $05
    dec b                                         ; $6594: $05
    jr nz, jr_07a_659c                            ; $6595: $20 $05

    dec b                                         ; $6597: $05
    dec b                                         ; $6598: $05
    jr nz, jr_07a_65a0                            ; $6599: $20 $05

    dec b                                         ; $659b: $05

jr_07a_659c:
    dec b                                         ; $659c: $05
    jr nz, jr_07a_65a4                            ; $659d: $20 $05

    dec b                                         ; $659f: $05

jr_07a_65a0:
    dec b                                         ; $65a0: $05
    ld h, b                                       ; $65a1: $60
    ld [c], a                                     ; $65a2: $e2
    db $e3                                        ; $65a3: $e3

jr_07a_65a4:
    db $e4                                        ; $65a4: $e4
    ld a, [hl+]                                   ; $65a5: $2a
    and $e7                                       ; $65a6: $e6 $e7
    add sp, $2b                                   ; $65a8: $e8 $2b
    ld [$eceb], a                                 ; $65aa: $ea $eb $ec
    dec hl                                        ; $65ad: $2b
    xor $ed                                       ; $65ae: $ee $ed
    xor $2b                                       ; $65b0: $ee $2b
    ld b, $06                                     ; $65b2: $06 $06
    ld b, $24                                     ; $65b4: $06 $24
    ld b, $06                                     ; $65b6: $06 $06
    ld b, $24                                     ; $65b8: $06 $24
    ld bc, $0101                                  ; $65ba: $01 $01 $01
    inc h                                         ; $65bd: $24
    ld bc, $0101                                  ; $65be: $01 $01 $01
    inc h                                         ; $65c1: $24
    dec h                                         ; $65c2: $25
    inc c                                         ; $65c3: $0c
    inc bc                                        ; $65c4: $03
    inc b                                         ; $65c5: $04
    ld h, $0d                                     ; $65c6: $26 $0d
    ld c, $0f                                     ; $65c8: $0e $0f
    ld h, $f1                                     ; $65ca: $26 $f1
    db $10                                        ; $65cc: $10
    ld de, $1226                                  ; $65cd: $11 $26 $12
    inc de                                        ; $65d0: $13
    inc d                                         ; $65d1: $14
    inc h                                         ; $65d2: $24
    inc bc                                        ; $65d3: $03
    inc bc                                        ; $65d4: $03
    inc bc                                        ; $65d5: $03
    inc h                                         ; $65d6: $24
    inc bc                                        ; $65d7: $03
    inc bc                                        ; $65d8: $03
    inc bc                                        ; $65d9: $03
    inc h                                         ; $65da: $24
    inc bc                                        ; $65db: $03
    inc bc                                        ; $65dc: $03
    inc bc                                        ; $65dd: $03
    inc h                                         ; $65de: $24
    ld bc, $0101                                  ; $65df: $01 $01 $01
    dec d                                         ; $65e2: $15
    ld d, $17                                     ; $65e3: $16 $17
    jr @+$1b                                      ; $65e5: $18 $19

    ld a, [de]                                    ; $65e7: $1a
    dec de                                        ; $65e8: $1b
    inc e                                         ; $65e9: $1c
    dec e                                         ; $65ea: $1d
    ld e, $1f                                     ; $65eb: $1e $1f
    jr nz, jr_07a_6610                            ; $65ed: $20 $21

    ld [hl+], a                                   ; $65ef: $22
    inc hl                                        ; $65f0: $23
    inc h                                         ; $65f1: $24
    ld bc, $0701                                  ; $65f2: $01 $01 $07
    ld bc, $0701                                  ; $65f5: $01 $01 $07
    ld bc, $0701                                  ; $65f8: $01 $01 $07
    ld bc, $0101                                  ; $65fb: $01 $01 $01
    ld bc, $0701                                  ; $65fe: $01 $01 $07
    ld bc, $fafb                                  ; $6601: $01 $fb $fa
    ld sp, hl                                     ; $6604: $f9
    push af                                       ; $6605: $f5
    rst $38                                       ; $6606: $ff
    ld a, [$f5fe]                                 ; $6607: $fa $fe $f5
    ld [bc], a                                    ; $660a: $02
    ld bc, $f500                                  ; $660b: $01 $00 $f5
    inc b                                         ; $660e: $04
    inc bc                                        ; $660f: $03

jr_07a_6610:
    nop                                           ; $6610: $00
    push af                                       ; $6611: $f5
    ld [hl+], a                                   ; $6612: $22
    ld [hl+], a                                   ; $6613: $22
    ld [hl+], a                                   ; $6614: $22
    jr nz, jr_07a_6639                            ; $6615: $20 $22

    ld [hl+], a                                   ; $6617: $22
    inc hl                                        ; $6618: $23
    jr nz, @+$25                                  ; $6619: $20 $23

    inc hl                                        ; $661b: $23
    inc hl                                        ; $661c: $23
    and b                                         ; $661d: $a0
    inc hl                                        ; $661e: $23
    inc hl                                        ; $661f: $23
    inc hl                                        ; $6620: $23
    and b                                         ; $6621: $a0
    dec d                                         ; $6622: $15
    ld d, $17                                     ; $6623: $16 $17
    jr jr_07a_6640                                ; $6625: $18 $19

    ld a, [de]                                    ; $6627: $1a
    dec de                                        ; $6628: $1b
    inc e                                         ; $6629: $1c
    dec e                                         ; $662a: $1d
    ld e, $1f                                     ; $662b: $1e $1f
    jr nz, jr_07a_6650                            ; $662d: $20 $21

    ld [hl+], a                                   ; $662f: $22
    inc hl                                        ; $6630: $23
    inc h                                         ; $6631: $24
    ld bc, $0107                                  ; $6632: $01 $07 $01
    ld bc, $0101                                  ; $6635: $01 $01 $01
    rlca                                          ; $6638: $07

jr_07a_6639:
    ld bc, $0707                                  ; $6639: $01 $07 $07
    ld bc, $0107                                  ; $663c: $01 $07 $01
    rlca                                          ; $663f: $07

jr_07a_6640:
    rlca                                          ; $6640: $07
    rlca                                          ; $6641: $07
    inc b                                         ; $6642: $04
    inc bc                                        ; $6643: $03
    inc c                                         ; $6644: $0c
    push af                                       ; $6645: $f5
    rrca                                          ; $6646: $0f
    ld c, $0d                                     ; $6647: $0e $0d
    push af                                       ; $6649: $f5
    ld de, $f110                                  ; $664a: $11 $10 $f1
    push af                                       ; $664d: $f5
    inc de                                        ; $664e: $13
    inc d                                         ; $664f: $14

jr_07a_6650:
    daa                                           ; $6650: $27
    push af                                       ; $6651: $f5
    inc hl                                        ; $6652: $23
    inc hl                                        ; $6653: $23
    inc hl                                        ; $6654: $23
    and b                                         ; $6655: $a0
    inc hl                                        ; $6656: $23
    inc hl                                        ; $6657: $23
    inc hl                                        ; $6658: $23
    and b                                         ; $6659: $a0
    inc hl                                        ; $665a: $23
    inc hl                                        ; $665b: $23
    inc bc                                        ; $665c: $03
    and b                                         ; $665d: $a0
    ld bc, $0101                                  ; $665e: $01 $01 $01
    and b                                         ; $6661: $a0
    push af                                       ; $6662: $f5
    jr c, jr_07a_669e                             ; $6663: $38 $39

    ld a, [hl-]                                   ; $6665: $3a
    push af                                       ; $6666: $f5
    dec sp                                        ; $6667: $3b
    inc a                                         ; $6668: $3c
    dec a                                         ; $6669: $3d
    di                                            ; $666a: $f3
    db $f4                                        ; $666b: $f4
    db $f4                                        ; $666c: $f4
    db $f4                                        ; $666d: $f4
    pop af                                        ; $666e: $f1
    pop af                                        ; $666f: $f1
    pop af                                        ; $6670: $f1
    pop af                                        ; $6671: $f1
    add b                                         ; $6672: $80
    ld bc, $0107                                  ; $6673: $01 $07 $01
    add b                                         ; $6676: $80
    ld bc, $0701                                  ; $6677: $01 $01 $07
    ret nz                                        ; $667a: $c0

    add b                                         ; $667b: $80
    add b                                         ; $667c: $80
    add b                                         ; $667d: $80
    add h                                         ; $667e: $84
    add h                                         ; $667f: $84
    add h                                         ; $6680: $84
    add h                                         ; $6681: $84
    ld a, $3f                                     ; $6682: $3e $3f
    ld b, b                                       ; $6684: $40
    jr c, jr_07a_66c8                             ; $6685: $38 $41

    ld b, d                                       ; $6687: $42
    ld b, e                                       ; $6688: $43
    dec sp                                        ; $6689: $3b
    db $f4                                        ; $668a: $f4
    db $f4                                        ; $668b: $f4
    db $f4                                        ; $668c: $f4
    db $f4                                        ; $668d: $f4
    pop af                                        ; $668e: $f1
    pop af                                        ; $668f: $f1
    pop af                                        ; $6690: $f1
    pop af                                        ; $6691: $f1
    rlca                                          ; $6692: $07
    ld bc, $0701                                  ; $6693: $01 $01 $07
    ld bc, $0107                                  ; $6696: $01 $07 $01
    ld bc, $8080                                  ; $6699: $01 $80 $80
    add b                                         ; $669c: $80
    add b                                         ; $669d: $80

jr_07a_669e:
    add h                                         ; $669e: $84
    add h                                         ; $669f: $84
    add h                                         ; $66a0: $84
    add h                                         ; $66a1: $84
    add hl, sp                                    ; $66a2: $39
    ld a, [hl-]                                   ; $66a3: $3a
    ld a, $44                                     ; $66a4: $3e $44
    inc a                                         ; $66a6: $3c
    dec a                                         ; $66a7: $3d
    ld b, c                                       ; $66a8: $41
    ld [$f4f4], sp                                ; $66a9: $08 $f4 $f4
    db $f4                                        ; $66ac: $f4
    db $f4                                        ; $66ad: $f4
    pop af                                        ; $66ae: $f1
    pop af                                        ; $66af: $f1
    pop af                                        ; $66b0: $f1
    pop af                                        ; $66b1: $f1
    ld bc, $0101                                  ; $66b2: $01 $01 $01
    inc b                                         ; $66b5: $04
    rlca                                          ; $66b6: $07
    rlca                                          ; $66b7: $07
    ld bc, $8001                                  ; $66b8: $01 $01 $80
    add b                                         ; $66bb: $80
    add b                                         ; $66bc: $80
    add b                                         ; $66bd: $80
    add h                                         ; $66be: $84
    add h                                         ; $66bf: $84
    add h                                         ; $66c0: $84
    add h                                         ; $66c1: $84
    ld b, l                                       ; $66c2: $45
    ld b, l                                       ; $66c3: $45
    ld b, l                                       ; $66c4: $45
    ld b, l                                       ; $66c5: $45
    dec a                                         ; $66c6: $3d
    ld b, c                                       ; $66c7: $41

jr_07a_66c8:
    ld b, d                                       ; $66c8: $42
    ld b, e                                       ; $66c9: $43
    db $f4                                        ; $66ca: $f4
    db $f4                                        ; $66cb: $f4
    db $f4                                        ; $66cc: $f4
    db $f4                                        ; $66cd: $f4
    pop af                                        ; $66ce: $f1
    pop af                                        ; $66cf: $f1
    pop af                                        ; $66d0: $f1
    pop af                                        ; $66d1: $f1
    inc b                                         ; $66d2: $04
    inc b                                         ; $66d3: $04
    inc b                                         ; $66d4: $04
    inc b                                         ; $66d5: $04
    ld bc, $0107                                  ; $66d6: $01 $07 $01
    ld bc, $8080                                  ; $66d9: $01 $80 $80
    add b                                         ; $66dc: $80
    add b                                         ; $66dd: $80
    add h                                         ; $66de: $84
    add h                                         ; $66df: $84
    add h                                         ; $66e0: $84
    add h                                         ; $66e1: $84
    ld b, [hl]                                    ; $66e2: $46
    jr c, jr_07a_671e                             ; $66e3: $38 $39

    ld a, [hl-]                                   ; $66e5: $3a
    add hl, bc                                    ; $66e6: $09
    dec sp                                        ; $66e7: $3b
    inc a                                         ; $66e8: $3c
    dec a                                         ; $66e9: $3d
    db $f4                                        ; $66ea: $f4
    db $f4                                        ; $66eb: $f4
    db $f4                                        ; $66ec: $f4
    db $f4                                        ; $66ed: $f4
    pop af                                        ; $66ee: $f1
    pop af                                        ; $66ef: $f1
    pop af                                        ; $66f0: $f1
    pop af                                        ; $66f1: $f1
    inc b                                         ; $66f2: $04
    ld bc, $0701                                  ; $66f3: $01 $01 $07
    ld bc, $0701                                  ; $66f6: $01 $01 $07
    ld bc, $8080                                  ; $66f9: $01 $80 $80
    add b                                         ; $66fc: $80
    add b                                         ; $66fd: $80
    add h                                         ; $66fe: $84
    add h                                         ; $66ff: $84
    add h                                         ; $6700: $84
    add h                                         ; $6701: $84
    ld a, $3f                                     ; $6702: $3e $3f
    ld b, b                                       ; $6704: $40
    jr c, jr_07a_6748                             ; $6705: $38 $41

    ld b, d                                       ; $6707: $42
    ld b, e                                       ; $6708: $43
    dec sp                                        ; $6709: $3b
    db $f4                                        ; $670a: $f4
    db $f4                                        ; $670b: $f4
    db $f4                                        ; $670c: $f4
    db $f4                                        ; $670d: $f4
    pop af                                        ; $670e: $f1
    pop af                                        ; $670f: $f1
    pop af                                        ; $6710: $f1
    pop af                                        ; $6711: $f1
    ld bc, $0701                                  ; $6712: $01 $01 $07
    ld bc, $0107                                  ; $6715: $01 $07 $01
    ld bc, $8007                                  ; $6718: $01 $07 $80
    add b                                         ; $671b: $80
    add b                                         ; $671c: $80
    add b                                         ; $671d: $80

jr_07a_671e:
    add h                                         ; $671e: $84
    add h                                         ; $671f: $84
    add h                                         ; $6720: $84
    add h                                         ; $6721: $84
    add hl, sp                                    ; $6722: $39
    ld a, [hl-]                                   ; $6723: $3a
    ld a, $44                                     ; $6724: $3e $44
    inc a                                         ; $6726: $3c
    dec a                                         ; $6727: $3d
    ld b, c                                       ; $6728: $41
    ld [$f4f4], sp                                ; $6729: $08 $f4 $f4
    db $f4                                        ; $672c: $f4
    db $f4                                        ; $672d: $f4
    pop af                                        ; $672e: $f1
    pop af                                        ; $672f: $f1
    pop af                                        ; $6730: $f1
    pop af                                        ; $6731: $f1
    rlca                                          ; $6732: $07
    ld bc, $0401                                  ; $6733: $01 $01 $04
    ld bc, $0107                                  ; $6736: $01 $07 $01
    ld bc, $8080                                  ; $6739: $01 $80 $80
    add b                                         ; $673c: $80
    add b                                         ; $673d: $80
    add h                                         ; $673e: $84
    add h                                         ; $673f: $84
    add h                                         ; $6740: $84
    add h                                         ; $6741: $84
    ld b, [hl]                                    ; $6742: $46
    ld a, [hl-]                                   ; $6743: $3a
    ld a, $3f                                     ; $6744: $3e $3f
    add hl, bc                                    ; $6746: $09
    dec a                                         ; $6747: $3d

jr_07a_6748:
    ld b, c                                       ; $6748: $41
    ld b, d                                       ; $6749: $42
    db $f4                                        ; $674a: $f4
    db $f4                                        ; $674b: $f4
    db $f4                                        ; $674c: $f4
    db $f4                                        ; $674d: $f4
    pop af                                        ; $674e: $f1
    pop af                                        ; $674f: $f1
    pop af                                        ; $6750: $f1
    pop af                                        ; $6751: $f1
    inc b                                         ; $6752: $04
    ld bc, $0701                                  ; $6753: $01 $01 $07
    ld bc, $0701                                  ; $6756: $01 $01 $07
    ld bc, $8080                                  ; $6759: $01 $80 $80
    add b                                         ; $675c: $80
    add b                                         ; $675d: $80
    add h                                         ; $675e: $84
    add h                                         ; $675f: $84
    add h                                         ; $6760: $84
    add h                                         ; $6761: $84
    ld b, b                                       ; $6762: $40
    jr c, jr_07a_679e                             ; $6763: $38 $39

    ld a, [hl-]                                   ; $6765: $3a
    ld b, e                                       ; $6766: $43
    dec sp                                        ; $6767: $3b
    inc a                                         ; $6768: $3c
    dec a                                         ; $6769: $3d
    db $f4                                        ; $676a: $f4
    db $f4                                        ; $676b: $f4
    db $f4                                        ; $676c: $f4
    db $f4                                        ; $676d: $f4
    pop af                                        ; $676e: $f1
    pop af                                        ; $676f: $f1
    pop af                                        ; $6770: $f1
    pop af                                        ; $6771: $f1
    ld bc, $0707                                  ; $6772: $01 $07 $07
    ld bc, $0107                                  ; $6775: $01 $07 $01
    rlca                                          ; $6778: $07
    rlca                                          ; $6779: $07
    add b                                         ; $677a: $80
    add b                                         ; $677b: $80
    add b                                         ; $677c: $80
    add b                                         ; $677d: $80
    add h                                         ; $677e: $84
    add h                                         ; $677f: $84
    add h                                         ; $6780: $84
    add h                                         ; $6781: $84
    ld a, $3f                                     ; $6782: $3e $3f
    ld b, b                                       ; $6784: $40
    ld b, h                                       ; $6785: $44
    ld b, c                                       ; $6786: $41
    ld b, d                                       ; $6787: $42
    ld b, e                                       ; $6788: $43
    ld a, [bc]                                    ; $6789: $0a
    db $f4                                        ; $678a: $f4
    db $f4                                        ; $678b: $f4
    db $f4                                        ; $678c: $f4
    db $f4                                        ; $678d: $f4
    pop af                                        ; $678e: $f1
    pop af                                        ; $678f: $f1
    pop af                                        ; $6790: $f1
    ld b, a                                       ; $6791: $47
    rlca                                          ; $6792: $07
    ld bc, $0401                                  ; $6793: $01 $01 $04
    ld bc, $0107                                  ; $6796: $01 $07 $01
    ld bc, $8080                                  ; $6799: $01 $80 $80
    add b                                         ; $679c: $80
    add b                                         ; $679d: $80

jr_07a_679e:
    add h                                         ; $679e: $84
    add h                                         ; $679f: $84
    add h                                         ; $67a0: $84
    add h                                         ; $67a1: $84
    ld b, [hl]                                    ; $67a2: $46
    rst $28                                       ; $67a3: $ef
    ldh a, [$ef]                                  ; $67a4: $f0 $ef
    ld c, b                                       ; $67a6: $48
    ld c, c                                       ; $67a7: $49
    ld c, c                                       ; $67a8: $49
    ld c, c                                       ; $67a9: $49
    ld c, d                                       ; $67aa: $4a
    ld c, e                                       ; $67ab: $4b
    ld c, e                                       ; $67ac: $4b
    ld c, e                                       ; $67ad: $4b
    ld c, h                                       ; $67ae: $4c
    ld c, l                                       ; $67af: $4d
    ld c, l                                       ; $67b0: $4d
    ld c, l                                       ; $67b1: $4d
    inc b                                         ; $67b2: $04
    ld bc, $0101                                  ; $67b3: $01 $01 $01
    rlca                                          ; $67b6: $07
    inc b                                         ; $67b7: $04
    inc b                                         ; $67b8: $04
    inc b                                         ; $67b9: $04
    add b                                         ; $67ba: $80
    inc b                                         ; $67bb: $04
    inc b                                         ; $67bc: $04
    inc b                                         ; $67bd: $04
    add h                                         ; $67be: $84
    inc b                                         ; $67bf: $04
    inc b                                         ; $67c0: $04
    inc b                                         ; $67c1: $04
    pop af                                        ; $67c2: $f1
    pop af                                        ; $67c3: $f1
    pop af                                        ; $67c4: $f1
    ld b, a                                       ; $67c5: $47
    pop af                                        ; $67c6: $f1
    pop af                                        ; $67c7: $f1
    pop af                                        ; $67c8: $f1
    ld b, a                                       ; $67c9: $47
    pop af                                        ; $67ca: $f1
    pop af                                        ; $67cb: $f1
    pop af                                        ; $67cc: $f1
    pop af                                        ; $67cd: $f1
    pop af                                        ; $67ce: $f1
    pop af                                        ; $67cf: $f1
    pop af                                        ; $67d0: $f1
    pop af                                        ; $67d1: $f1
    add h                                         ; $67d2: $84
    add h                                         ; $67d3: $84
    add h                                         ; $67d4: $84
    add h                                         ; $67d5: $84
    inc b                                         ; $67d6: $04
    inc b                                         ; $67d7: $04
    inc b                                         ; $67d8: $04
    inc b                                         ; $67d9: $04
    inc b                                         ; $67da: $04
    inc b                                         ; $67db: $04
    inc b                                         ; $67dc: $04
    inc b                                         ; $67dd: $04
    inc b                                         ; $67de: $04
    inc b                                         ; $67df: $04
    inc b                                         ; $67e0: $04
    inc b                                         ; $67e1: $04
    ld c, h                                       ; $67e2: $4c
    rst $28                                       ; $67e3: $ef
    ldh a, [$ef]                                  ; $67e4: $f0 $ef
    ld c, h                                       ; $67e6: $4c
    rst $28                                       ; $67e7: $ef
    ldh a, [$ef]                                  ; $67e8: $f0 $ef
    pop af                                        ; $67ea: $f1
    pop af                                        ; $67eb: $f1
    pop af                                        ; $67ec: $f1
    pop af                                        ; $67ed: $f1
    pop af                                        ; $67ee: $f1
    pop af                                        ; $67ef: $f1
    pop af                                        ; $67f0: $f1
    pop af                                        ; $67f1: $f1
    add h                                         ; $67f2: $84
    ld bc, $0101                                  ; $67f3: $01 $01 $01
    inc b                                         ; $67f6: $04
    ld b, c                                       ; $67f7: $41
    ld b, c                                       ; $67f8: $41
    ld b, c                                       ; $67f9: $41
    inc b                                         ; $67fa: $04
    inc b                                         ; $67fb: $04
    inc b                                         ; $67fc: $04
    inc b                                         ; $67fd: $04
    inc b                                         ; $67fe: $04
    inc b                                         ; $67ff: $04
    inc b                                         ; $6800: $04
    inc b                                         ; $6801: $04
    ldh a, [rDMA]                                 ; $6802: $f0 $46
    ld b, h                                       ; $6804: $44
    jr c, jr_07a_6850                             ; $6805: $38 $49

    ld c, b                                       ; $6807: $48
    add hl, bc                                    ; $6808: $09
    dec sp                                        ; $6809: $3b
    ld c, e                                       ; $680a: $4b
    ld c, d                                       ; $680b: $4a
    db $f4                                        ; $680c: $f4
    db $f4                                        ; $680d: $f4
    ld c, l                                       ; $680e: $4d
    ld c, h                                       ; $680f: $4c
    ld b, a                                       ; $6810: $47
    pop af                                        ; $6811: $f1
    ld bc, $2424                                  ; $6812: $01 $24 $24
    ld bc, $2704                                  ; $6815: $01 $04 $27
    ld bc, $0401                                  ; $6818: $01 $01 $04
    and b                                         ; $681b: $a0
    add b                                         ; $681c: $80
    add b                                         ; $681d: $80
    inc b                                         ; $681e: $04
    and h                                         ; $681f: $a4
    and h                                         ; $6820: $a4
    add h                                         ; $6821: $84
    add hl, sp                                    ; $6822: $39
    ld a, [hl-]                                   ; $6823: $3a
    ld a, $3f                                     ; $6824: $3e $3f
    inc a                                         ; $6826: $3c
    dec a                                         ; $6827: $3d
    ld b, c                                       ; $6828: $41
    ld b, d                                       ; $6829: $42
    db $f4                                        ; $682a: $f4
    db $f4                                        ; $682b: $f4
    db $f4                                        ; $682c: $f4
    db $f4                                        ; $682d: $f4
    pop af                                        ; $682e: $f1
    pop af                                        ; $682f: $f1
    pop af                                        ; $6830: $f1
    pop af                                        ; $6831: $f1
    rlca                                          ; $6832: $07
    ld bc, $0707                                  ; $6833: $01 $07 $07
    ld bc, $0707                                  ; $6836: $01 $07 $07
    ld bc, $8080                                  ; $6839: $01 $80 $80
    add b                                         ; $683c: $80
    add b                                         ; $683d: $80
    add h                                         ; $683e: $84
    add h                                         ; $683f: $84
    add h                                         ; $6840: $84
    add h                                         ; $6841: $84
    ld b, b                                       ; $6842: $40
    jr c, jr_07a_687e                             ; $6843: $38 $39

    ld a, [hl-]                                   ; $6845: $3a
    ld b, e                                       ; $6846: $43
    dec sp                                        ; $6847: $3b
    inc a                                         ; $6848: $3c
    dec a                                         ; $6849: $3d
    db $f4                                        ; $684a: $f4
    db $f4                                        ; $684b: $f4
    db $f4                                        ; $684c: $f4
    db $f4                                        ; $684d: $f4
    pop af                                        ; $684e: $f1
    pop af                                        ; $684f: $f1

jr_07a_6850:
    pop af                                        ; $6850: $f1
    pop af                                        ; $6851: $f1
    ld bc, $0107                                  ; $6852: $01 $07 $01
    rlca                                          ; $6855: $07
    rlca                                          ; $6856: $07
    ld bc, $0107                                  ; $6857: $01 $07 $01
    add b                                         ; $685a: $80
    add b                                         ; $685b: $80
    add b                                         ; $685c: $80
    add b                                         ; $685d: $80
    add h                                         ; $685e: $84
    add h                                         ; $685f: $84
    add h                                         ; $6860: $84
    add h                                         ; $6861: $84
    ld a, $44                                     ; $6862: $3e $44
    ld b, l                                       ; $6864: $45
    ld b, l                                       ; $6865: $45
    ld b, c                                       ; $6866: $41
    ld [$413d], sp                                ; $6867: $08 $3d $41
    db $f4                                        ; $686a: $f4
    db $f4                                        ; $686b: $f4
    db $f4                                        ; $686c: $f4
    db $f4                                        ; $686d: $f4
    pop af                                        ; $686e: $f1
    pop af                                        ; $686f: $f1
    pop af                                        ; $6870: $f1
    pop af                                        ; $6871: $f1
    ld bc, $0404                                  ; $6872: $01 $04 $04
    inc b                                         ; $6875: $04
    ld bc, $0101                                  ; $6876: $01 $01 $01
    rlca                                          ; $6879: $07
    add b                                         ; $687a: $80
    add b                                         ; $687b: $80
    add b                                         ; $687c: $80
    add b                                         ; $687d: $80

jr_07a_687e:
    add h                                         ; $687e: $84
    add h                                         ; $687f: $84
    add h                                         ; $6880: $84
    add h                                         ; $6881: $84
    ldh a, [$4c]                                  ; $6882: $f0 $4c
    ld b, a                                       ; $6884: $47
    pop af                                        ; $6885: $f1
    ldh a, [$4c]                                  ; $6886: $f0 $4c
    ld b, a                                       ; $6888: $47
    pop af                                        ; $6889: $f1
    pop af                                        ; $688a: $f1
    pop af                                        ; $688b: $f1
    pop af                                        ; $688c: $f1
    pop af                                        ; $688d: $f1
    pop af                                        ; $688e: $f1
    pop af                                        ; $688f: $f1
    pop af                                        ; $6890: $f1
    pop af                                        ; $6891: $f1
    ld bc, $a4a4                                  ; $6892: $01 $a4 $a4
    add h                                         ; $6895: $84
    ld b, c                                       ; $6896: $41
    inc h                                         ; $6897: $24
    inc h                                         ; $6898: $24
    inc b                                         ; $6899: $04
    inc b                                         ; $689a: $04
    inc b                                         ; $689b: $04
    inc b                                         ; $689c: $04
    inc b                                         ; $689d: $04
    inc b                                         ; $689e: $04
    inc b                                         ; $689f: $04
    inc b                                         ; $68a0: $04
    inc b                                         ; $68a1: $04
    ld b, l                                       ; $68a2: $45
    ld b, l                                       ; $68a3: $45
    ld b, [hl]                                    ; $68a4: $46
    jr c, jr_07a_68e9                             ; $68a5: $38 $42

    ld b, e                                       ; $68a7: $43
    add hl, bc                                    ; $68a8: $09
    dec sp                                        ; $68a9: $3b
    db $f4                                        ; $68aa: $f4
    db $f4                                        ; $68ab: $f4
    db $f4                                        ; $68ac: $f4
    db $f4                                        ; $68ad: $f4
    pop af                                        ; $68ae: $f1
    pop af                                        ; $68af: $f1
    pop af                                        ; $68b0: $f1
    pop af                                        ; $68b1: $f1
    inc b                                         ; $68b2: $04
    inc b                                         ; $68b3: $04
    inc b                                         ; $68b4: $04
    ld bc, $0101                                  ; $68b5: $01 $01 $01
    ld bc, $8001                                  ; $68b8: $01 $01 $80
    add b                                         ; $68bb: $80
    add b                                         ; $68bc: $80
    add b                                         ; $68bd: $80
    add h                                         ; $68be: $84
    add h                                         ; $68bf: $84
    add h                                         ; $68c0: $84
    add h                                         ; $68c1: $84
    add hl, sp                                    ; $68c2: $39
    ld a, [hl-]                                   ; $68c3: $3a
    ld a, $3f                                     ; $68c4: $3e $3f
    inc a                                         ; $68c6: $3c
    dec a                                         ; $68c7: $3d
    ld b, c                                       ; $68c8: $41
    ld b, d                                       ; $68c9: $42
    db $f4                                        ; $68ca: $f4
    db $f4                                        ; $68cb: $f4
    db $f4                                        ; $68cc: $f4
    db $f4                                        ; $68cd: $f4
    pop af                                        ; $68ce: $f1
    pop af                                        ; $68cf: $f1
    pop af                                        ; $68d0: $f1
    pop af                                        ; $68d1: $f1
    ld bc, $0107                                  ; $68d2: $01 $07 $01
    ld bc, $0107                                  ; $68d5: $01 $07 $01
    rlca                                          ; $68d8: $07
    ld bc, $8080                                  ; $68d9: $01 $80 $80
    add b                                         ; $68dc: $80
    add b                                         ; $68dd: $80
    add h                                         ; $68de: $84
    add h                                         ; $68df: $84
    add h                                         ; $68e0: $84
    add h                                         ; $68e1: $84
    ld b, b                                       ; $68e2: $40
    jr c, jr_07a_691e                             ; $68e3: $38 $39

    ld a, [hl-]                                   ; $68e5: $3a
    ld b, e                                       ; $68e6: $43
    dec sp                                        ; $68e7: $3b
    inc a                                         ; $68e8: $3c

jr_07a_68e9:
    dec a                                         ; $68e9: $3d
    db $f4                                        ; $68ea: $f4
    db $f4                                        ; $68eb: $f4
    db $f4                                        ; $68ec: $f4
    db $f4                                        ; $68ed: $f4
    pop af                                        ; $68ee: $f1
    pop af                                        ; $68ef: $f1
    pop af                                        ; $68f0: $f1
    pop af                                        ; $68f1: $f1
    rlca                                          ; $68f2: $07
    ld bc, $0107                                  ; $68f3: $01 $07 $01
    ld bc, $0107                                  ; $68f6: $01 $07 $01
    rlca                                          ; $68f9: $07
    add b                                         ; $68fa: $80
    add b                                         ; $68fb: $80
    add b                                         ; $68fc: $80
    add b                                         ; $68fd: $80
    add h                                         ; $68fe: $84
    add h                                         ; $68ff: $84
    add h                                         ; $6900: $84
    add h                                         ; $6901: $84
    ld b, l                                       ; $6902: $45
    ld b, l                                       ; $6903: $45
    ld b, [hl]                                    ; $6904: $46
    ld a, [hl-]                                   ; $6905: $3a
    ld b, d                                       ; $6906: $42
    ld b, e                                       ; $6907: $43
    add hl, bc                                    ; $6908: $09
    dec a                                         ; $6909: $3d
    db $f4                                        ; $690a: $f4
    db $f4                                        ; $690b: $f4
    db $f4                                        ; $690c: $f4
    db $f4                                        ; $690d: $f4
    pop af                                        ; $690e: $f1
    pop af                                        ; $690f: $f1
    pop af                                        ; $6910: $f1
    pop af                                        ; $6911: $f1
    inc b                                         ; $6912: $04
    inc b                                         ; $6913: $04
    inc b                                         ; $6914: $04
    ld bc, $0101                                  ; $6915: $01 $01 $01
    ld bc, $8001                                  ; $6918: $01 $01 $80
    add b                                         ; $691b: $80
    add b                                         ; $691c: $80
    add b                                         ; $691d: $80

jr_07a_691e:
    add h                                         ; $691e: $84
    add h                                         ; $691f: $84
    add h                                         ; $6920: $84
    add h                                         ; $6921: $84
    ld a, $3f                                     ; $6922: $3e $3f
    ld b, b                                       ; $6924: $40
    jr c, jr_07a_6968                             ; $6925: $38 $41

    ld b, d                                       ; $6927: $42
    ld b, e                                       ; $6928: $43
    dec sp                                        ; $6929: $3b
    db $f4                                        ; $692a: $f4
    db $f4                                        ; $692b: $f4
    db $f4                                        ; $692c: $f4
    db $f4                                        ; $692d: $f4
    pop af                                        ; $692e: $f1
    pop af                                        ; $692f: $f1
    pop af                                        ; $6930: $f1
    pop af                                        ; $6931: $f1
    ld bc, $0107                                  ; $6932: $01 $07 $01
    rlca                                          ; $6935: $07
    rlca                                          ; $6936: $07
    ld bc, $0107                                  ; $6937: $01 $07 $01
    add b                                         ; $693a: $80
    add b                                         ; $693b: $80
    add b                                         ; $693c: $80
    add b                                         ; $693d: $80
    add h                                         ; $693e: $84
    add h                                         ; $693f: $84
    add h                                         ; $6940: $84
    add h                                         ; $6941: $84
    add hl, sp                                    ; $6942: $39
    ld a, [hl-]                                   ; $6943: $3a
    ld a, $3f                                     ; $6944: $3e $3f
    inc a                                         ; $6946: $3c
    dec a                                         ; $6947: $3d
    ld b, c                                       ; $6948: $41
    ld b, d                                       ; $6949: $42
    db $f4                                        ; $694a: $f4
    db $f4                                        ; $694b: $f4
    db $f4                                        ; $694c: $f4
    db $f4                                        ; $694d: $f4
    pop af                                        ; $694e: $f1
    pop af                                        ; $694f: $f1
    pop af                                        ; $6950: $f1
    pop af                                        ; $6951: $f1
    rlca                                          ; $6952: $07
    ld bc, $0107                                  ; $6953: $01 $07 $01
    rlca                                          ; $6956: $07
    rlca                                          ; $6957: $07
    ld bc, $8007                                  ; $6958: $01 $07 $80
    add b                                         ; $695b: $80
    add b                                         ; $695c: $80
    add b                                         ; $695d: $80
    add h                                         ; $695e: $84
    add h                                         ; $695f: $84
    add h                                         ; $6960: $84
    add h                                         ; $6961: $84
    ld b, b                                       ; $6962: $40
    ld b, h                                       ; $6963: $44
    ld b, [hl]                                    ; $6964: $46
    rst $28                                       ; $6965: $ef
    ld b, e                                       ; $6966: $43
    ld a, [bc]                                    ; $6967: $0a

jr_07a_6968:
    ld c, b                                       ; $6968: $48
    ld c, c                                       ; $6969: $49
    db $f4                                        ; $696a: $f4
    db $f4                                        ; $696b: $f4
    ld c, d                                       ; $696c: $4a
    ld c, e                                       ; $696d: $4b
    pop af                                        ; $696e: $f1
    ld b, a                                       ; $696f: $47
    ld c, h                                       ; $6970: $4c
    ld c, l                                       ; $6971: $4d
    ld bc, $0404                                  ; $6972: $01 $04 $04
    ld bc, $0101                                  ; $6975: $01 $01 $01
    rlca                                          ; $6978: $07
    inc b                                         ; $6979: $04
    add b                                         ; $697a: $80
    add b                                         ; $697b: $80
    add b                                         ; $697c: $80
    inc b                                         ; $697d: $04
    add h                                         ; $697e: $84
    add h                                         ; $697f: $84
    add h                                         ; $6980: $84
    inc b                                         ; $6981: $04
    pop af                                        ; $6982: $f1
    ld b, a                                       ; $6983: $47
    ld c, h                                       ; $6984: $4c
    rst $28                                       ; $6985: $ef
    pop af                                        ; $6986: $f1
    ld b, a                                       ; $6987: $47
    ld c, h                                       ; $6988: $4c
    rst $28                                       ; $6989: $ef
    pop af                                        ; $698a: $f1
    pop af                                        ; $698b: $f1
    pop af                                        ; $698c: $f1
    pop af                                        ; $698d: $f1
    pop af                                        ; $698e: $f1
    pop af                                        ; $698f: $f1
    pop af                                        ; $6990: $f1
    pop af                                        ; $6991: $f1
    add h                                         ; $6992: $84
    add h                                         ; $6993: $84
    add h                                         ; $6994: $84
    ld bc, $0404                                  ; $6995: $01 $04 $04
    inc b                                         ; $6998: $04
    ld b, c                                       ; $6999: $41
    inc b                                         ; $699a: $04
    inc b                                         ; $699b: $04
    inc b                                         ; $699c: $04
    inc b                                         ; $699d: $04
    inc b                                         ; $699e: $04
    inc b                                         ; $699f: $04
    inc b                                         ; $69a0: $04
    inc b                                         ; $69a1: $04
    ldh a, [$ef]                                  ; $69a2: $f0 $ef
    ldh a, [rDMA]                                 ; $69a4: $f0 $46
    ld c, c                                       ; $69a6: $49
    ld c, c                                       ; $69a7: $49
    ld c, c                                       ; $69a8: $49
    ld c, b                                       ; $69a9: $48
    ld c, e                                       ; $69aa: $4b
    ld c, e                                       ; $69ab: $4b
    ld c, e                                       ; $69ac: $4b
    ld c, d                                       ; $69ad: $4a
    ld c, l                                       ; $69ae: $4d
    ld c, l                                       ; $69af: $4d
    ld c, l                                       ; $69b0: $4d
    ld c, h                                       ; $69b1: $4c
    ld bc, $0101                                  ; $69b2: $01 $01 $01
    inc h                                         ; $69b5: $24
    inc b                                         ; $69b6: $04
    inc b                                         ; $69b7: $04
    inc b                                         ; $69b8: $04
    daa                                           ; $69b9: $27
    inc b                                         ; $69ba: $04
    inc b                                         ; $69bb: $04
    inc b                                         ; $69bc: $04
    and b                                         ; $69bd: $a0
    inc b                                         ; $69be: $04
    inc b                                         ; $69bf: $04
    inc b                                         ; $69c0: $04
    and h                                         ; $69c1: $a4
    ld b, h                                       ; $69c2: $44
    jr c, jr_07a_69fe                             ; $69c3: $38 $39

    ld a, [hl-]                                   ; $69c5: $3a
    add hl, bc                                    ; $69c6: $09
    dec sp                                        ; $69c7: $3b
    inc a                                         ; $69c8: $3c
    dec a                                         ; $69c9: $3d
    db $f4                                        ; $69ca: $f4
    db $f4                                        ; $69cb: $f4
    db $f4                                        ; $69cc: $f4
    db $f4                                        ; $69cd: $f4
    ld b, a                                       ; $69ce: $47
    pop af                                        ; $69cf: $f1
    pop af                                        ; $69d0: $f1
    pop af                                        ; $69d1: $f1
    inc h                                         ; $69d2: $24
    ld bc, $0107                                  ; $69d3: $01 $07 $01
    ld bc, $0101                                  ; $69d6: $01 $01 $01
    rlca                                          ; $69d9: $07
    add b                                         ; $69da: $80
    add b                                         ; $69db: $80
    add b                                         ; $69dc: $80
    add b                                         ; $69dd: $80
    and h                                         ; $69de: $a4
    add h                                         ; $69df: $84
    add h                                         ; $69e0: $84
    add h                                         ; $69e1: $84
    ld a, $3f                                     ; $69e2: $3e $3f
    ld b, b                                       ; $69e4: $40
    jr c, jr_07a_6a28                             ; $69e5: $38 $41

    ld b, d                                       ; $69e7: $42
    ld b, e                                       ; $69e8: $43
    dec sp                                        ; $69e9: $3b
    db $f4                                        ; $69ea: $f4
    db $f4                                        ; $69eb: $f4
    db $f4                                        ; $69ec: $f4
    db $f4                                        ; $69ed: $f4
    pop af                                        ; $69ee: $f1
    pop af                                        ; $69ef: $f1
    pop af                                        ; $69f0: $f1
    pop af                                        ; $69f1: $f1
    rlca                                          ; $69f2: $07
    rlca                                          ; $69f3: $07
    ld bc, $0707                                  ; $69f4: $01 $07 $07
    ld bc, $0107                                  ; $69f7: $01 $07 $01
    add b                                         ; $69fa: $80
    add b                                         ; $69fb: $80
    add b                                         ; $69fc: $80
    add b                                         ; $69fd: $80

jr_07a_69fe:
    add h                                         ; $69fe: $84
    add h                                         ; $69ff: $84
    add h                                         ; $6a00: $84
    add h                                         ; $6a01: $84
    add hl, sp                                    ; $6a02: $39
    ld a, [hl-]                                   ; $6a03: $3a
    ld a, $44                                     ; $6a04: $3e $44
    inc a                                         ; $6a06: $3c
    dec a                                         ; $6a07: $3d
    ld b, c                                       ; $6a08: $41
    ld [$f4f4], sp                                ; $6a09: $08 $f4 $f4
    db $f4                                        ; $6a0c: $f4
    db $f4                                        ; $6a0d: $f4
    pop af                                        ; $6a0e: $f1
    pop af                                        ; $6a0f: $f1
    pop af                                        ; $6a10: $f1
    pop af                                        ; $6a11: $f1
    ld bc, $0107                                  ; $6a12: $01 $07 $01
    inc b                                         ; $6a15: $04
    rlca                                          ; $6a16: $07
    ld bc, $0101                                  ; $6a17: $01 $01 $01
    add b                                         ; $6a1a: $80
    add b                                         ; $6a1b: $80
    add b                                         ; $6a1c: $80
    add b                                         ; $6a1d: $80
    add h                                         ; $6a1e: $84
    add h                                         ; $6a1f: $84
    add h                                         ; $6a20: $84
    add h                                         ; $6a21: $84
    ldh a, [$ef]                                  ; $6a22: $f0 $ef
    ldh a, [$4c]                                  ; $6a24: $f0 $4c
    ldh a, [$ef]                                  ; $6a26: $f0 $ef

jr_07a_6a28:
    ldh a, [$4c]                                  ; $6a28: $f0 $4c
    pop af                                        ; $6a2a: $f1
    pop af                                        ; $6a2b: $f1
    pop af                                        ; $6a2c: $f1
    pop af                                        ; $6a2d: $f1
    pop af                                        ; $6a2e: $f1
    pop af                                        ; $6a2f: $f1
    pop af                                        ; $6a30: $f1
    pop af                                        ; $6a31: $f1
    ld bc, $0101                                  ; $6a32: $01 $01 $01
    and h                                         ; $6a35: $a4
    ld b, c                                       ; $6a36: $41
    ld b, c                                       ; $6a37: $41
    ld b, c                                       ; $6a38: $41
    inc h                                         ; $6a39: $24
    inc b                                         ; $6a3a: $04
    inc b                                         ; $6a3b: $04
    inc b                                         ; $6a3c: $04
    inc b                                         ; $6a3d: $04
    inc b                                         ; $6a3e: $04
    inc b                                         ; $6a3f: $04
    inc b                                         ; $6a40: $04
    inc b                                         ; $6a41: $04
    ld b, a                                       ; $6a42: $47
    pop af                                        ; $6a43: $f1
    pop af                                        ; $6a44: $f1
    pop af                                        ; $6a45: $f1
    ld b, a                                       ; $6a46: $47
    pop af                                        ; $6a47: $f1
    pop af                                        ; $6a48: $f1
    pop af                                        ; $6a49: $f1
    pop af                                        ; $6a4a: $f1
    pop af                                        ; $6a4b: $f1
    pop af                                        ; $6a4c: $f1
    pop af                                        ; $6a4d: $f1
    pop af                                        ; $6a4e: $f1
    pop af                                        ; $6a4f: $f1
    pop af                                        ; $6a50: $f1
    pop af                                        ; $6a51: $f1
    and h                                         ; $6a52: $a4
    add h                                         ; $6a53: $84
    add h                                         ; $6a54: $84
    add h                                         ; $6a55: $84
    inc h                                         ; $6a56: $24
    inc b                                         ; $6a57: $04
    inc b                                         ; $6a58: $04
    inc b                                         ; $6a59: $04
    inc b                                         ; $6a5a: $04
    inc b                                         ; $6a5b: $04
    inc b                                         ; $6a5c: $04
    inc b                                         ; $6a5d: $04
    inc b                                         ; $6a5e: $04
    inc b                                         ; $6a5f: $04
    inc b                                         ; $6a60: $04
    inc b                                         ; $6a61: $04
    ld a, $3f                                     ; $6a62: $3e $3f
    ld b, b                                       ; $6a64: $40
    jr c, @+$43                                   ; $6a65: $38 $41

    ld b, d                                       ; $6a67: $42
    ld b, e                                       ; $6a68: $43
    dec sp                                        ; $6a69: $3b
    db $f4                                        ; $6a6a: $f4
    db $f4                                        ; $6a6b: $f4
    db $f4                                        ; $6a6c: $f4
    db $f4                                        ; $6a6d: $f4
    pop af                                        ; $6a6e: $f1
    pop af                                        ; $6a6f: $f1
    pop af                                        ; $6a70: $f1
    pop af                                        ; $6a71: $f1
    ld bc, $0701                                  ; $6a72: $01 $01 $07
    ld bc, $0107                                  ; $6a75: $01 $07 $01
    ld bc, $8001                                  ; $6a78: $01 $01 $80
    add b                                         ; $6a7b: $80
    add b                                         ; $6a7c: $80
    add b                                         ; $6a7d: $80
    add h                                         ; $6a7e: $84
    add h                                         ; $6a7f: $84
    add h                                         ; $6a80: $84
    add h                                         ; $6a81: $84
    add hl, sp                                    ; $6a82: $39
    ld a, [hl-]                                   ; $6a83: $3a
    ld a, $f5                                     ; $6a84: $3e $f5
    inc a                                         ; $6a86: $3c
    dec a                                         ; $6a87: $3d
    ld b, c                                       ; $6a88: $41
    push af                                       ; $6a89: $f5
    db $f4                                        ; $6a8a: $f4
    db $f4                                        ; $6a8b: $f4
    db $f4                                        ; $6a8c: $f4
    di                                            ; $6a8d: $f3
    pop af                                        ; $6a8e: $f1
    pop af                                        ; $6a8f: $f1
    pop af                                        ; $6a90: $f1
    pop af                                        ; $6a91: $f1
    ld bc, $0107                                  ; $6a92: $01 $07 $01
    and b                                         ; $6a95: $a0
    rlca                                          ; $6a96: $07
    ld bc, $a001                                  ; $6a97: $01 $01 $a0
    add b                                         ; $6a9a: $80
    add b                                         ; $6a9b: $80
    add b                                         ; $6a9c: $80
    ldh [$84], a                                  ; $6a9d: $e0 $84
    add h                                         ; $6a9f: $84
    add h                                         ; $6aa0: $84
    add h                                         ; $6aa1: $84
    ld a, [bc]                                    ; $6aa2: $0a
    nop                                           ; $6aa3: $00
    ld a, [bc]                                    ; $6aa4: $0a
    nop                                           ; $6aa5: $00
    add b                                         ; $6aa6: $80
    ld [$d1d1], sp                                ; $6aa7: $08 $d1 $d1
    pop de                                        ; $6aaa: $d1
    pop de                                        ; $6aab: $d1
    pop de                                        ; $6aac: $d1
    pop de                                        ; $6aad: $d1
    pop de                                        ; $6aae: $d1
    pop de                                        ; $6aaf: $d1
    pop de                                        ; $6ab0: $d1
    pop de                                        ; $6ab1: $d1
    pop de                                        ; $6ab2: $d1
    pop de                                        ; $6ab3: $d1
    pop de                                        ; $6ab4: $d1
    pop de                                        ; $6ab5: $d1
    pop de                                        ; $6ab6: $d1
    pop de                                        ; $6ab7: $d1
    add b                                         ; $6ab8: $80
    add b                                         ; $6ab9: $80
    add b                                         ; $6aba: $80
    add b                                         ; $6abb: $80
    add b                                         ; $6abc: $80
    add b                                         ; $6abd: $80
    add b                                         ; $6abe: $80
    add b                                         ; $6abf: $80
    add b                                         ; $6ac0: $80
    add b                                         ; $6ac1: $80
    add b                                         ; $6ac2: $80
    add b                                         ; $6ac3: $80
    add b                                         ; $6ac4: $80
    add b                                         ; $6ac5: $80
    add b                                         ; $6ac6: $80
    add b                                         ; $6ac7: $80
    jp nc, $d4d3                                  ; $6ac8: $d2 $d3 $d4

    push de                                       ; $6acb: $d5
    jp nc, $d7d6                                  ; $6acc: $d2 $d6 $d7

    ret c                                         ; $6acf: $d8

    jp nc, $dad9                                  ; $6ad0: $d2 $d9 $da

    db $db                                        ; $6ad3: $db
    jp nc, $dddc                                  ; $6ad4: $d2 $dc $dd

    sbc $80                                       ; $6ad7: $de $80
    ld bc, $0101                                  ; $6ad9: $01 $01 $01
    add b                                         ; $6adc: $80
    ld bc, $0101                                  ; $6add: $01 $01 $01
    add b                                         ; $6ae0: $80
    ld bc, $0101                                  ; $6ae1: $01 $01 $01
    add b                                         ; $6ae4: $80
    ld bc, $0101                                  ; $6ae5: $01 $01 $01
    rst $18                                       ; $6ae8: $df
    ldh [$e1], a                                  ; $6ae9: $e0 $e1
    ld [c], a                                     ; $6aeb: $e2
    db $e3                                        ; $6aec: $e3
    db $e4                                        ; $6aed: $e4
    push hl                                       ; $6aee: $e5
    and $e7                                       ; $6aef: $e6 $e7
    add sp, -$17                                  ; $6af1: $e8 $e9
    ld [$eceb], a                                 ; $6af3: $ea $eb $ec
    db $ed                                        ; $6af6: $ed
    xor $02                                       ; $6af7: $ee $02
    ld [bc], a                                    ; $6af9: $02
    ld [bc], a                                    ; $6afa: $02
    ld [bc], a                                    ; $6afb: $02
    ld [bc], a                                    ; $6afc: $02
    ld [bc], a                                    ; $6afd: $02
    ld [bc], a                                    ; $6afe: $02
    ld [bc], a                                    ; $6aff: $02
    ld [bc], a                                    ; $6b00: $02
    ld [bc], a                                    ; $6b01: $02
    ld [bc], a                                    ; $6b02: $02
    ld [bc], a                                    ; $6b03: $02
    ld [bc], a                                    ; $6b04: $02
    ld [bc], a                                    ; $6b05: $02
    ld [bc], a                                    ; $6b06: $02
    ld [bc], a                                    ; $6b07: $02
    jp nc, $f0ef                                  ; $6b08: $d2 $ef $f0

    pop af                                        ; $6b0b: $f1
    jp nc, $f3f2                                  ; $6b0c: $d2 $f2 $f3

    db $f4                                        ; $6b0f: $f4
    jp nc, $f6f5                                  ; $6b10: $d2 $f5 $f6

    rst $30                                       ; $6b13: $f7
    jp nc, $f9f8                                  ; $6b14: $d2 $f8 $f9

    ld a, [$0180]                                 ; $6b17: $fa $80 $01
    ld bc, $8001                                  ; $6b1a: $01 $01 $80
    rlca                                          ; $6b1d: $07
    rlca                                          ; $6b1e: $07
    rlca                                          ; $6b1f: $07
    add b                                         ; $6b20: $80
    rlca                                          ; $6b21: $07
    ld b, $06                                     ; $6b22: $06 $06
    add b                                         ; $6b24: $80
    rlca                                          ; $6b25: $07
    ld b, $03                                     ; $6b26: $06 $03
    ei                                            ; $6b28: $fb
    db $fc                                        ; $6b29: $fc
    db $fd                                        ; $6b2a: $fd
    cp $ff                                        ; $6b2b: $fe $ff
    nop                                           ; $6b2d: $00
    ld bc, $0302                                  ; $6b2e: $01 $02 $03
    inc b                                         ; $6b31: $04
    dec b                                         ; $6b32: $05
    ld b, $07                                     ; $6b33: $06 $07
    ld [$0a09], sp                                ; $6b35: $08 $09 $0a
    ld bc, $0101                                  ; $6b38: $01 $01 $01
    ld bc, $0707                                  ; $6b3b: $01 $07 $07
    rlca                                          ; $6b3e: $07
    rlca                                          ; $6b3f: $07
    ld b, $03                                     ; $6b40: $06 $03
    ld b, $06                                     ; $6b42: $06 $06
    ld b, $06                                     ; $6b44: $06 $06
    ld b, $06                                     ; $6b46: $06 $06
    jp nc, Jump_000_0c0b                          ; $6b48: $d2 $0b $0c

    dec c                                         ; $6b4b: $0d
    jp nc, Jump_000_0f0e                          ; $6b4c: $d2 $0e $0f

    db $10                                        ; $6b4f: $10
    db $d2, $11, $12                              ; $6b50: $d2 $11 $12

    inc de                                        ; $6b53: $13
    jp nc, $1514                                  ; $6b54: $d2 $14 $15

    ld d, $80                                     ; $6b57: $16 $80
    rlca                                          ; $6b59: $07
    inc bc                                        ; $6b5a: $03
    ld b, $80                                     ; $6b5b: $06 $80
    rlca                                          ; $6b5d: $07
    ld b, $03                                     ; $6b5e: $06 $03
    add b                                         ; $6b60: $80
    rlca                                          ; $6b61: $07
    inc bc                                        ; $6b62: $03
    ld b, $80                                     ; $6b63: $06 $80
    rlca                                          ; $6b65: $07
    ld b, $06                                     ; $6b66: $06 $06
    rla                                           ; $6b68: $17
    jr @+$1b                                      ; $6b69: $18 $19

    ld a, [de]                                    ; $6b6b: $1a
    dec de                                        ; $6b6c: $1b
    inc e                                         ; $6b6d: $1c
    dec e                                         ; $6b6e: $1d
    ld e, $1f                                     ; $6b6f: $1e $1f
    jr nz, @+$23                                  ; $6b71: $20 $21

    ld [hl+], a                                   ; $6b73: $22
    inc hl                                        ; $6b74: $23
    inc h                                         ; $6b75: $24
    dec h                                         ; $6b76: $25
    ld h, $03                                     ; $6b77: $26 $03
    ld b, $06                                     ; $6b79: $06 $06
    ld b, $06                                     ; $6b7b: $06 $06
    ld b, $06                                     ; $6b7d: $06 $06
    inc bc                                        ; $6b7f: $03
    ld b, $06                                     ; $6b80: $06 $06
    inc bc                                        ; $6b82: $03
    ld b, $06                                     ; $6b83: $06 $06
    ld b, $06                                     ; $6b85: $06 $06
    ld b, $d2                                     ; $6b87: $06 $d2
    ld a, [c]                                     ; $6b89: $f2
    di                                            ; $6b8a: $f3
    db $f4                                        ; $6b8b: $f4
    jp nc, $f6f5                                  ; $6b8c: $d2 $f5 $f6

    rst $30                                       ; $6b8f: $f7
    jp nc, $f9f8                                  ; $6b90: $d2 $f8 $f9

    ld a, [$0bd2]                                 ; $6b93: $fa $d2 $0b
    inc c                                         ; $6b96: $0c
    dec c                                         ; $6b97: $0d
    add b                                         ; $6b98: $80
    rlca                                          ; $6b99: $07
    ld b, $06                                     ; $6b9a: $06 $06
    add b                                         ; $6b9c: $80
    rlca                                          ; $6b9d: $07
    inc bc                                        ; $6b9e: $03
    ld b, $80                                     ; $6b9f: $06 $80
    rlca                                          ; $6ba1: $07
    ld b, $06                                     ; $6ba2: $06 $06
    add b                                         ; $6ba4: $80
    rlca                                          ; $6ba5: $07
    ld b, $06                                     ; $6ba6: $06 $06
    rst $38                                       ; $6ba8: $ff
    nop                                           ; $6ba9: $00
    ld bc, $0302                                  ; $6baa: $01 $02 $03
    inc b                                         ; $6bad: $04
    dec b                                         ; $6bae: $05
    ld b, $07                                     ; $6baf: $06 $07
    ld [$0a09], sp                                ; $6bb1: $08 $09 $0a
    rla                                           ; $6bb4: $17
    jr jr_07a_6bd0                                ; $6bb5: $18 $19

    ld a, [de]                                    ; $6bb7: $1a
    inc bc                                        ; $6bb8: $03
    ld b, $03                                     ; $6bb9: $06 $03
    ld b, $06                                     ; $6bbb: $06 $06
    ld b, $06                                     ; $6bbd: $06 $06
    ld b, $03                                     ; $6bbf: $06 $03
    inc bc                                        ; $6bc1: $03
    ld b, $06                                     ; $6bc2: $06 $06
    ld b, $06                                     ; $6bc4: $06 $06
    inc bc                                        ; $6bc6: $03
    ld b, $27                                     ; $6bc7: $06 $27
    jr z, jr_07a_6bf4                             ; $6bc9: $28 $29

    ld a, [hl+]                                   ; $6bcb: $2a
    dec hl                                        ; $6bcc: $2b
    inc l                                         ; $6bcd: $2c
    dec l                                         ; $6bce: $2d
    ret c                                         ; $6bcf: $d8

jr_07a_6bd0:
    ld l, $2f                                     ; $6bd0: $2e $2f
    jr nc, jr_07a_6c05                            ; $6bd2: $30 $31

    ld [hl-], a                                   ; $6bd4: $32
    inc sp                                        ; $6bd5: $33
    inc [hl]                                      ; $6bd6: $34
    dec [hl]                                      ; $6bd7: $35
    ld [bc], a                                    ; $6bd8: $02
    ld [bc], a                                    ; $6bd9: $02
    ld bc, $0201                                  ; $6bda: $01 $01 $02
    ld [bc], a                                    ; $6bdd: $02
    ld bc, $0201                                  ; $6bde: $01 $01 $02
    ld [bc], a                                    ; $6be1: $02
    ld bc, $0201                                  ; $6be2: $01 $01 $02
    ld [bc], a                                    ; $6be5: $02
    ld bc, $3601                                  ; $6be6: $01 $01 $36
    scf                                           ; $6be9: $37
    jr c, jr_07a_6c25                             ; $6bea: $38 $39

    ld a, [hl-]                                   ; $6bec: $3a
    dec sp                                        ; $6bed: $3b
    inc a                                         ; $6bee: $3c
    dec a                                         ; $6bef: $3d
    ld a, $3f                                     ; $6bf0: $3e $3f
    ld b, b                                       ; $6bf2: $40
    ld b, c                                       ; $6bf3: $41

jr_07a_6bf4:
    ld b, d                                       ; $6bf4: $42
    ld b, e                                       ; $6bf5: $43
    ld b, h                                       ; $6bf6: $44
    ld b, l                                       ; $6bf7: $45
    ld [bc], a                                    ; $6bf8: $02
    ld [bc], a                                    ; $6bf9: $02
    ld [bc], a                                    ; $6bfa: $02
    ld [bc], a                                    ; $6bfb: $02
    ld [bc], a                                    ; $6bfc: $02
    ld [bc], a                                    ; $6bfd: $02
    ld [bc], a                                    ; $6bfe: $02
    ld [bc], a                                    ; $6bff: $02
    ld [bc], a                                    ; $6c00: $02
    ld [bc], a                                    ; $6c01: $02
    ld [bc], a                                    ; $6c02: $02
    ld [bc], a                                    ; $6c03: $02
    ld [bc], a                                    ; $6c04: $02

jr_07a_6c05:
    ld [bc], a                                    ; $6c05: $02
    ld [bc], a                                    ; $6c06: $02
    ld [bc], a                                    ; $6c07: $02
    ld b, [hl]                                    ; $6c08: $46
    ld b, a                                       ; $6c09: $47
    ld c, b                                       ; $6c0a: $48
    ld c, c                                       ; $6c0b: $49
    ld c, d                                       ; $6c0c: $4a
    ld c, e                                       ; $6c0d: $4b
    ret c                                         ; $6c0e: $d8

    ld c, h                                       ; $6c0f: $4c
    ld c, l                                       ; $6c10: $4d
    ld c, [hl]                                    ; $6c11: $4e
    ld c, a                                       ; $6c12: $4f
    ld d, b                                       ; $6c13: $50
    ld d, c                                       ; $6c14: $51
    ld d, d                                       ; $6c15: $52
    ld d, e                                       ; $6c16: $53
    ld d, h                                       ; $6c17: $54
    ld [bc], a                                    ; $6c18: $02
    ld [bc], a                                    ; $6c19: $02
    ld bc, $0201                                  ; $6c1a: $01 $01 $02
    ld [bc], a                                    ; $6c1d: $02
    ld hl, $0201                                  ; $6c1e: $21 $01 $02
    ld [bc], a                                    ; $6c21: $02
    ld bc, $0201                                  ; $6c22: $01 $01 $02

jr_07a_6c25:
    ld [bc], a                                    ; $6c25: $02
    ld bc, $5501                                  ; $6c26: $01 $01 $55
    jp nc, $d1d1                                  ; $6c29: $d2 $d1 $d1

    ld d, [hl]                                    ; $6c2c: $56
    jp nc, $d1d1                                  ; $6c2d: $d2 $d1 $d1

    ld d, a                                       ; $6c30: $57
    jp nc, $d1d1                                  ; $6c31: $d2 $d1 $d1

    ld e, b                                       ; $6c34: $58
    jp nc, $d1d1                                  ; $6c35: $d2 $d1 $d1

    ld bc, $8080                                  ; $6c38: $01 $80 $80
    add b                                         ; $6c3b: $80
    ld bc, $8080                                  ; $6c3c: $01 $80 $80
    add b                                         ; $6c3f: $80
    ld bc, $8080                                  ; $6c40: $01 $80 $80
    add b                                         ; $6c43: $80
    ld bc, $8080                                  ; $6c44: $01 $80 $80
    add b                                         ; $6c47: $80
    ld e, c                                       ; $6c48: $59
    ld e, d                                       ; $6c49: $5a
    ld e, e                                       ; $6c4a: $5b
    pop af                                        ; $6c4b: $f1
    ld e, h                                       ; $6c4c: $5c
    ld a, [c]                                     ; $6c4d: $f2
    di                                            ; $6c4e: $f3
    db $f4                                        ; $6c4f: $f4
    ld e, l                                       ; $6c50: $5d
    push af                                       ; $6c51: $f5
    ld e, [hl]                                    ; $6c52: $5e
    ld e, [hl]                                    ; $6c53: $5e
    ld e, a                                       ; $6c54: $5f
    ld hl, sp+$60                                 ; $6c55: $f8 $60
    ld h, b                                       ; $6c57: $60
    ld bc, $0101                                  ; $6c58: $01 $01 $01
    ld bc, $0707                                  ; $6c5b: $01 $07 $07
    rlca                                          ; $6c5e: $07
    rlca                                          ; $6c5f: $07
    inc bc                                        ; $6c60: $03
    ld b, $02                                     ; $6c61: $06 $02
    ld [hl+], a                                   ; $6c63: $22
    ld b, $03                                     ; $6c64: $06 $03
    ld [bc], a                                    ; $6c66: $02
    ld [hl+], a                                   ; $6c67: $22
    ei                                            ; $6c68: $fb
    db $fc                                        ; $6c69: $fc
    db $fd                                        ; $6c6a: $fd
    cp $ff                                        ; $6c6b: $fe $ff
    nop                                           ; $6c6d: $00
    ld bc, $0302                                  ; $6c6e: $01 $02 $03
    inc b                                         ; $6c71: $04
    dec b                                         ; $6c72: $05
    ld b, $07                                     ; $6c73: $06 $07
    ld [$0a09], sp                                ; $6c75: $08 $09 $0a
    ld bc, $0101                                  ; $6c78: $01 $01 $01
    ld bc, $0707                                  ; $6c7b: $01 $07 $07
    rlca                                          ; $6c7e: $07
    rlca                                          ; $6c7f: $07
    ld b, $03                                     ; $6c80: $06 $03
    ld b, $06                                     ; $6c82: $06 $06
    ld b, $06                                     ; $6c84: $06 $06
    inc bc                                        ; $6c86: $03
    ld b, $59                                     ; $6c87: $06 $59
    ld e, d                                       ; $6c89: $5a
    ld e, e                                       ; $6c8a: $5b
    ld h, c                                       ; $6c8b: $61
    ld e, h                                       ; $6c8c: $5c
    ld a, [c]                                     ; $6c8d: $f2
    di                                            ; $6c8e: $f3
    db $f4                                        ; $6c8f: $f4
    ld e, l                                       ; $6c90: $5d
    push af                                       ; $6c91: $f5
    or $f7                                        ; $6c92: $f6 $f7
    ld e, a                                       ; $6c94: $5f
    ld hl, sp-$07                                 ; $6c95: $f8 $f9
    ld a, [$0101]                                 ; $6c97: $fa $01 $01
    ld bc, $0701                                  ; $6c9a: $01 $01 $07
    rlca                                          ; $6c9d: $07
    rlca                                          ; $6c9e: $07
    rlca                                          ; $6c9f: $07
    inc bc                                        ; $6ca0: $03
    ld b, $03                                     ; $6ca1: $06 $03
    ld b, $06                                     ; $6ca3: $06 $06
    ld b, $06                                     ; $6ca5: $06 $06
    inc bc                                        ; $6ca7: $03
    ld h, d                                       ; $6ca8: $62
    jp nc, $d1d1                                  ; $6ca9: $d2 $d1 $d1

    rst $38                                       ; $6cac: $ff
    jp nc, $d1d1                                  ; $6cad: $d2 $d1 $d1

    inc bc                                        ; $6cb0: $03
    jp nc, $d1d1                                  ; $6cb1: $d2 $d1 $d1

    rlca                                          ; $6cb4: $07
    jp nc, $d1d1                                  ; $6cb5: $d2 $d1 $d1

    ld bc, $8080                                  ; $6cb8: $01 $80 $80
    add b                                         ; $6cbb: $80
    rlca                                          ; $6cbc: $07
    add b                                         ; $6cbd: $80
    add b                                         ; $6cbe: $80
    add b                                         ; $6cbf: $80
    rlca                                          ; $6cc0: $07
    add b                                         ; $6cc1: $80
    add b                                         ; $6cc2: $80
    add b                                         ; $6cc3: $80
    rlca                                          ; $6cc4: $07
    add b                                         ; $6cc5: $80
    add b                                         ; $6cc6: $80
    add b                                         ; $6cc7: $80
    ld h, e                                       ; $6cc8: $63
    ld h, h                                       ; $6cc9: $64
    ld h, l                                       ; $6cca: $65
    ld h, [hl]                                    ; $6ccb: $66
    ld h, a                                       ; $6ccc: $67
    ld l, b                                       ; $6ccd: $68
    ld l, c                                       ; $6cce: $69
    ld l, d                                       ; $6ccf: $6a
    ld l, e                                       ; $6cd0: $6b
    ld l, h                                       ; $6cd1: $6c
    ld l, l                                       ; $6cd2: $6d
    ld l, [hl]                                    ; $6cd3: $6e
    ld l, a                                       ; $6cd4: $6f
    ld [hl], b                                    ; $6cd5: $70
    ld [hl], c                                    ; $6cd6: $71
    ld [hl], d                                    ; $6cd7: $72
    ld bc, $0401                                  ; $6cd8: $01 $01 $04
    inc b                                         ; $6cdb: $04
    ld bc, $0401                                  ; $6cdc: $01 $01 $04
    inc b                                         ; $6cdf: $04
    inc b                                         ; $6ce0: $04
    inc b                                         ; $6ce1: $04
    inc b                                         ; $6ce2: $04
    inc b                                         ; $6ce3: $04
    inc b                                         ; $6ce4: $04
    inc b                                         ; $6ce5: $04
    inc b                                         ; $6ce6: $04
    inc b                                         ; $6ce7: $04
    ld [hl], e                                    ; $6ce8: $73
    ld [hl], h                                    ; $6ce9: $74
    add hl, de                                    ; $6cea: $19
    ld a, [de]                                    ; $6ceb: $1a
    ld [hl], l                                    ; $6cec: $75
    halt                                          ; $6ced: $76
    dec e                                         ; $6cee: $1d
    ld e, $77                                     ; $6cef: $1e $77
    ld a, b                                       ; $6cf1: $78
    ld hl, $7922                                  ; $6cf2: $21 $22 $79
    ld a, d                                       ; $6cf5: $7a
    dec h                                         ; $6cf6: $25
    ld h, $04                                     ; $6cf7: $26 $04
    inc b                                         ; $6cf9: $04
    ld b, $06                                     ; $6cfa: $06 $06
    nop                                           ; $6cfc: $00
    nop                                           ; $6cfd: $00
    ld b, $06                                     ; $6cfe: $06 $06
    nop                                           ; $6d00: $00
    nop                                           ; $6d01: $00
    rlca                                          ; $6d02: $07
    ld b, $04                                     ; $6d03: $06 $04
    inc b                                         ; $6d05: $04
    rlca                                          ; $6d06: $07
    ld b, $7b                                     ; $6d07: $06 $7b
    dec bc                                        ; $6d09: $0b
    inc c                                         ; $6d0a: $0c
    dec c                                         ; $6d0b: $0d
    ld a, h                                       ; $6d0c: $7c
    ld c, $0f                                     ; $6d0d: $0e $0f
    db $10                                        ; $6d0f: $10
    ld a, l                                       ; $6d10: $7d
    ld de, $1312                                  ; $6d11: $11 $12 $13
    ld a, [hl]                                    ; $6d14: $7e
    inc d                                         ; $6d15: $14
    dec d                                         ; $6d16: $15
    ld d, $06                                     ; $6d17: $16 $06
    ld b, $06                                     ; $6d19: $06 $06
    ld b, $06                                     ; $6d1b: $06 $06
    inc bc                                        ; $6d1d: $03
    ld b, $06                                     ; $6d1e: $06 $06
    ld b, $06                                     ; $6d20: $06 $06
    ld b, $06                                     ; $6d22: $06 $06
    ld b, $03                                     ; $6d24: $06 $03
    ld b, $03                                     ; $6d26: $06 $03
    rla                                           ; $6d28: $17
    jp nc, $d1d1                                  ; $6d29: $d2 $d1 $d1

    dec de                                        ; $6d2c: $1b
    jp nc, $d1d1                                  ; $6d2d: $d2 $d1 $d1

    rra                                           ; $6d30: $1f
    jp nc, $d1d1                                  ; $6d31: $d2 $d1 $d1

    inc hl                                        ; $6d34: $23
    jp nc, $d1d1                                  ; $6d35: $d2 $d1 $d1

    rlca                                          ; $6d38: $07
    add b                                         ; $6d39: $80
    add b                                         ; $6d3a: $80
    add b                                         ; $6d3b: $80
    rlca                                          ; $6d3c: $07
    add b                                         ; $6d3d: $80
    add b                                         ; $6d3e: $80
    add b                                         ; $6d3f: $80
    rlca                                          ; $6d40: $07
    add b                                         ; $6d41: $80
    add b                                         ; $6d42: $80
    add b                                         ; $6d43: $80
    rlca                                          ; $6d44: $07
    add b                                         ; $6d45: $80
    add b                                         ; $6d46: $80
    add b                                         ; $6d47: $80
    ld a, a                                       ; $6d48: $7f
    add b                                         ; $6d49: $80
    add c                                         ; $6d4a: $81
    add b                                         ; $6d4b: $80
    ld e, l                                       ; $6d4c: $5d
    push af                                       ; $6d4d: $f5
    or $f7                                        ; $6d4e: $f6 $f7
    ld e, a                                       ; $6d50: $5f
    ld hl, sp-$07                                 ; $6d51: $f8 $f9
    ld a, [$0b7b]                                 ; $6d53: $fa $7b $0b
    inc c                                         ; $6d56: $0c
    dec c                                         ; $6d57: $0d
    inc b                                         ; $6d58: $04
    inc c                                         ; $6d59: $0c
    inc c                                         ; $6d5a: $0c
    inc c                                         ; $6d5b: $0c
    rlca                                          ; $6d5c: $07
    rlca                                          ; $6d5d: $07
    rlca                                          ; $6d5e: $07
    rlca                                          ; $6d5f: $07
    inc bc                                        ; $6d60: $03
    ld b, $06                                     ; $6d61: $06 $06
    inc bc                                        ; $6d63: $03
    ld b, $06                                     ; $6d64: $06 $06
    inc bc                                        ; $6d66: $03
    ld b, $80                                     ; $6d67: $06 $80
    add d                                         ; $6d69: $82
    ld bc, $0302                                  ; $6d6a: $01 $02 $03
    inc b                                         ; $6d6d: $04
    dec b                                         ; $6d6e: $05
    ld b, $07                                     ; $6d6f: $06 $07
    ld [$0a09], sp                                ; $6d71: $08 $09 $0a
    rla                                           ; $6d74: $17
    jr jr_07a_6d90                                ; $6d75: $18 $19

    ld a, [de]                                    ; $6d77: $1a
    inc c                                         ; $6d78: $0c
    inc c                                         ; $6d79: $0c
    rlca                                          ; $6d7a: $07
    ld b, $07                                     ; $6d7b: $06 $07
    rlca                                          ; $6d7d: $07
    rlca                                          ; $6d7e: $07
    inc bc                                        ; $6d7f: $03
    ld b, $06                                     ; $6d80: $06 $06
    ld b, $06                                     ; $6d82: $06 $06
    ld b, $03                                     ; $6d84: $06 $03
    inc bc                                        ; $6d86: $03
    ld b, $5c                                     ; $6d87: $06 $5c
    ld a, [c]                                     ; $6d89: $f2
    di                                            ; $6d8a: $f3
    db $f4                                        ; $6d8b: $f4
    ld e, l                                       ; $6d8c: $5d
    push af                                       ; $6d8d: $f5
    or $f7                                        ; $6d8e: $f6 $f7

jr_07a_6d90:
    ld e, a                                       ; $6d90: $5f
    ld hl, sp-$07                                 ; $6d91: $f8 $f9
    ld a, [$0b7b]                                 ; $6d93: $fa $7b $0b
    inc c                                         ; $6d96: $0c
    dec c                                         ; $6d97: $0d
    inc bc                                        ; $6d98: $03
    ld b, $06                                     ; $6d99: $06 $06
    ld b, $06                                     ; $6d9b: $06 $06
    inc bc                                        ; $6d9d: $03
    ld b, $06                                     ; $6d9e: $06 $06
    inc bc                                        ; $6da0: $03
    ld b, $06                                     ; $6da1: $06 $06
    ld b, $06                                     ; $6da3: $06 $06
    ld b, $06                                     ; $6da5: $06 $06
    ld b, $ff                                     ; $6da7: $06 $ff
    jp nc, $d1d1                                  ; $6da9: $d2 $d1 $d1

    inc bc                                        ; $6dac: $03
    jp nc, $d1d1                                  ; $6dad: $d2 $d1 $d1

    rlca                                          ; $6db0: $07
    jp nc, $d1d1                                  ; $6db1: $d2 $d1 $d1

    rla                                           ; $6db4: $17
    jp nc, $d1d1                                  ; $6db5: $d2 $d1 $d1

    rlca                                          ; $6db8: $07
    add b                                         ; $6db9: $80
    add b                                         ; $6dba: $80
    add b                                         ; $6dbb: $80
    rlca                                          ; $6dbc: $07
    add b                                         ; $6dbd: $80
    add b                                         ; $6dbe: $80
    add b                                         ; $6dbf: $80
    rlca                                          ; $6dc0: $07
    add b                                         ; $6dc1: $80
    add b                                         ; $6dc2: $80
    add b                                         ; $6dc3: $80
    rlca                                          ; $6dc4: $07
    add b                                         ; $6dc5: $80
    add b                                         ; $6dc6: $80
    add b                                         ; $6dc7: $80
    jp nc, Jump_000_0f0e                          ; $6dc8: $d2 $0e $0f

    db $10                                        ; $6dcb: $10
    db $d2, $11, $12                              ; $6dcc: $d2 $11 $12

    inc de                                        ; $6dcf: $13
    jp nc, $1514                                  ; $6dd0: $d2 $14 $15

    ld d, $d2                                     ; $6dd3: $16 $d2
    ld a, [c]                                     ; $6dd5: $f2
    di                                            ; $6dd6: $f3
    db $f4                                        ; $6dd7: $f4
    add b                                         ; $6dd8: $80
    rlca                                          ; $6dd9: $07
    ld b, $03                                     ; $6dda: $06 $03
    add b                                         ; $6ddc: $80
    rlca                                          ; $6ddd: $07
    inc bc                                        ; $6dde: $03
    ld b, $80                                     ; $6ddf: $06 $80
    rlca                                          ; $6de1: $07
    ld b, $03                                     ; $6de2: $06 $03
    add b                                         ; $6de4: $80
    rlca                                          ; $6de5: $07
    ld b, $06                                     ; $6de6: $06 $06
    add e                                         ; $6de8: $83
    add h                                         ; $6de9: $84
    add l                                         ; $6dea: $85
    add [hl]                                      ; $6deb: $86
    add a                                         ; $6dec: $87
    adc b                                         ; $6ded: $88
    adc c                                         ; $6dee: $89
    adc d                                         ; $6def: $8a
    adc e                                         ; $6df0: $8b
    adc h                                         ; $6df1: $8c
    adc l                                         ; $6df2: $8d
    adc [hl]                                      ; $6df3: $8e
    adc a                                         ; $6df4: $8f
    sub b                                         ; $6df5: $90
    sub c                                         ; $6df6: $91
    sub d                                         ; $6df7: $92
    dec bc                                        ; $6df8: $0b
    dec bc                                        ; $6df9: $0b
    dec bc                                        ; $6dfa: $0b
    dec bc                                        ; $6dfb: $0b
    dec bc                                        ; $6dfc: $0b
    dec bc                                        ; $6dfd: $0b
    dec bc                                        ; $6dfe: $0b
    dec bc                                        ; $6dff: $0b
    dec bc                                        ; $6e00: $0b
    dec bc                                        ; $6e01: $0b
    dec bc                                        ; $6e02: $0b
    dec bc                                        ; $6e03: $0b
    dec bc                                        ; $6e04: $0b
    dec bc                                        ; $6e05: $0b
    dec bc                                        ; $6e06: $0b
    dec bc                                        ; $6e07: $0b
    jp nc, $f6f5                                  ; $6e08: $d2 $f5 $f6

    rst $30                                       ; $6e0b: $f7
    jp nc, $f9f8                                  ; $6e0c: $d2 $f8 $f9

    ld a, [$0bd2]                                 ; $6e0f: $fa $d2 $0b
    inc c                                         ; $6e12: $0c
    dec c                                         ; $6e13: $0d
    jp nc, Jump_000_0f0e                          ; $6e14: $d2 $0e $0f

    db $10                                        ; $6e17: $10
    add b                                         ; $6e18: $80
    rlca                                          ; $6e19: $07
    ld b, $03                                     ; $6e1a: $06 $03
    add b                                         ; $6e1c: $80
    rlca                                          ; $6e1d: $07
    inc bc                                        ; $6e1e: $03
    ld b, $80                                     ; $6e1f: $06 $80
    rlca                                          ; $6e21: $07
    ld b, $03                                     ; $6e22: $06 $03
    add b                                         ; $6e24: $80
    rlca                                          ; $6e25: $07
    ld b, $06                                     ; $6e26: $06 $06
    sub e                                         ; $6e28: $93
    sub h                                         ; $6e29: $94
    sub l                                         ; $6e2a: $95
    sub [hl]                                      ; $6e2b: $96
    rlca                                          ; $6e2c: $07
    sub a                                         ; $6e2d: $97
    sbc b                                         ; $6e2e: $98
    ld a, [bc]                                    ; $6e2f: $0a
    rla                                           ; $6e30: $17
    jr jr_07a_6e4c                                ; $6e31: $18 $19

    ld a, [de]                                    ; $6e33: $1a
    dec de                                        ; $6e34: $1b
    inc e                                         ; $6e35: $1c
    dec e                                         ; $6e36: $1d
    ld e, $0b                                     ; $6e37: $1e $0b
    inc c                                         ; $6e39: $0c
    inc c                                         ; $6e3a: $0c
    dec bc                                        ; $6e3b: $0b
    rlca                                          ; $6e3c: $07
    inc c                                         ; $6e3d: $0c
    inc c                                         ; $6e3e: $0c
    rlca                                          ; $6e3f: $07
    ld b, $07                                     ; $6e40: $06 $07
    rlca                                          ; $6e42: $07
    rlca                                          ; $6e43: $07
    inc bc                                        ; $6e44: $03
    ld b, $03                                     ; $6e45: $06 $03
    inc bc                                        ; $6e47: $03
    db $d2, $11, $12                              ; $6e48: $d2 $11 $12

    inc de                                        ; $6e4b: $13

jr_07a_6e4c:
    jp nc, $1514                                  ; $6e4c: $d2 $14 $15

    ld d, $d2                                     ; $6e4f: $16 $d2
    ld a, [c]                                     ; $6e51: $f2
    di                                            ; $6e52: $f3
    db $f4                                        ; $6e53: $f4
    jp nc, $f6f5                                  ; $6e54: $d2 $f5 $f6

    rst $30                                       ; $6e57: $f7
    add b                                         ; $6e58: $80
    rlca                                          ; $6e59: $07
    ld b, $03                                     ; $6e5a: $06 $03
    add b                                         ; $6e5c: $80
    rlca                                          ; $6e5d: $07
    inc bc                                        ; $6e5e: $03
    ld b, $80                                     ; $6e5f: $06 $80
    rlca                                          ; $6e61: $07
    inc bc                                        ; $6e62: $03
    ld b, $80                                     ; $6e63: $06 $80
    rlca                                          ; $6e65: $07
    ld b, $03                                     ; $6e66: $06 $03
    rra                                           ; $6e68: $1f
    jr nz, jr_07a_6e8c                            ; $6e69: $20 $21

    ld [hl+], a                                   ; $6e6b: $22
    add e                                         ; $6e6c: $83
    sbc c                                         ; $6e6d: $99
    sbc d                                         ; $6e6e: $9a
    add [hl]                                      ; $6e6f: $86
    add a                                         ; $6e70: $87
    sbc e                                         ; $6e71: $9b
    sbc h                                         ; $6e72: $9c
    sbc l                                         ; $6e73: $9d
    adc e                                         ; $6e74: $8b
    sbc [hl]                                      ; $6e75: $9e
    sbc a                                         ; $6e76: $9f
    and b                                         ; $6e77: $a0
    ld b, $03                                     ; $6e78: $06 $03
    ld b, $06                                     ; $6e7a: $06 $06
    dec bc                                        ; $6e7c: $0b
    dec bc                                        ; $6e7d: $0b
    dec bc                                        ; $6e7e: $0b
    dec bc                                        ; $6e7f: $0b
    dec bc                                        ; $6e80: $0b
    dec bc                                        ; $6e81: $0b
    dec bc                                        ; $6e82: $0b
    dec bc                                        ; $6e83: $0b
    dec bc                                        ; $6e84: $0b
    dec bc                                        ; $6e85: $0b
    dec bc                                        ; $6e86: $0b
    dec bc                                        ; $6e87: $0b
    pop de                                        ; $6e88: $d1
    and c                                         ; $6e89: $a1
    and d                                         ; $6e8a: $a2
    and d                                         ; $6e8b: $a2

jr_07a_6e8c:
    pop de                                        ; $6e8c: $d1
    jp nc, Jump_07a_5549                          ; $6e8d: $d2 $49 $55

    pop de                                        ; $6e90: $d1
    and e                                         ; $6e91: $a3
    ld c, h                                       ; $6e92: $4c
    ld d, [hl]                                    ; $6e93: $56
    pop de                                        ; $6e94: $d1
    and e                                         ; $6e95: $a3
    ld d, b                                       ; $6e96: $50
    ld d, a                                       ; $6e97: $57
    add b                                         ; $6e98: $80
    adc b                                         ; $6e99: $88
    adc b                                         ; $6e9a: $88
    adc b                                         ; $6e9b: $88
    add b                                         ; $6e9c: $80
    add b                                         ; $6e9d: $80
    ld bc, $8001                                  ; $6e9e: $01 $01 $80
    adc b                                         ; $6ea1: $88
    ld bc, $8001                                  ; $6ea2: $01 $01 $80
    adc b                                         ; $6ea5: $88
    ld bc, $a201                                  ; $6ea6: $01 $01 $a2
    and d                                         ; $6ea9: $a2
    and d                                         ; $6eaa: $a2
    and d                                         ; $6eab: $a2
    db $d3                                        ; $6eac: $d3
    call nc, $a5a4                                ; $6ead: $d4 $a4 $a5
    and [hl]                                      ; $6eb0: $a6
    and a                                         ; $6eb1: $a7
    xor b                                         ; $6eb2: $a8
    xor c                                         ; $6eb3: $a9
    xor d                                         ; $6eb4: $aa
    xor e                                         ; $6eb5: $ab
    xor h                                         ; $6eb6: $ac
    xor l                                         ; $6eb7: $ad
    adc b                                         ; $6eb8: $88
    adc b                                         ; $6eb9: $88
    adc b                                         ; $6eba: $88
    adc b                                         ; $6ebb: $88
    ld bc, $0901                                  ; $6ebc: $01 $01 $09
    add hl, bc                                    ; $6ebf: $09
    add hl, bc                                    ; $6ec0: $09
    add hl, bc                                    ; $6ec1: $09
    add hl, bc                                    ; $6ec2: $09
    add hl, bc                                    ; $6ec3: $09
    add hl, bc                                    ; $6ec4: $09
    add hl, bc                                    ; $6ec5: $09
    add hl, bc                                    ; $6ec6: $09
    add hl, bc                                    ; $6ec7: $09
    xor [hl]                                      ; $6ec8: $ae
    ld hl, sp-$07                                 ; $6ec9: $f8 $f9
    ld a, [$0baf]                                 ; $6ecb: $fa $af $0b
    inc c                                         ; $6ece: $0c
    dec c                                         ; $6ecf: $0d
    or b                                          ; $6ed0: $b0
    ld c, $0f                                     ; $6ed1: $0e $0f
    db $10                                        ; $6ed3: $10
    or c                                          ; $6ed4: $b1
    ld de, $1312                                  ; $6ed5: $11 $12 $13
    adc b                                         ; $6ed8: $88
    rlca                                          ; $6ed9: $07
    ld b, $06                                     ; $6eda: $06 $06
    add hl, hl                                    ; $6edc: $29
    rlca                                          ; $6edd: $07
    inc bc                                        ; $6ede: $03
    ld b, $29                                     ; $6edf: $06 $29
    rlca                                          ; $6ee1: $07
    ld b, $03                                     ; $6ee2: $06 $03
    add hl, hl                                    ; $6ee4: $29
    rlca                                          ; $6ee5: $07
    ld b, $06                                     ; $6ee6: $06 $06
    adc a                                         ; $6ee8: $8f
    or d                                          ; $6ee9: $b2
    or e                                          ; $6eea: $b3
    or h                                          ; $6eeb: $b4
    sub e                                         ; $6eec: $93
    sub h                                         ; $6eed: $94
    sub l                                         ; $6eee: $95
    sub [hl]                                      ; $6eef: $96
    dec de                                        ; $6ef0: $1b
    sub a                                         ; $6ef1: $97
    sbc b                                         ; $6ef2: $98
    ld e, $1f                                     ; $6ef3: $1e $1f
    jr nz, jr_07a_6f18                            ; $6ef5: $20 $21

    ld [hl+], a                                   ; $6ef7: $22
    dec bc                                        ; $6ef8: $0b
    dec bc                                        ; $6ef9: $0b
    dec bc                                        ; $6efa: $0b
    dec bc                                        ; $6efb: $0b
    dec bc                                        ; $6efc: $0b
    inc c                                         ; $6efd: $0c
    inc c                                         ; $6efe: $0c
    dec bc                                        ; $6eff: $0b
    rlca                                          ; $6f00: $07
    inc c                                         ; $6f01: $0c
    inc c                                         ; $6f02: $0c
    rlca                                          ; $6f03: $07
    ld b, $07                                     ; $6f04: $06 $07
    rlca                                          ; $6f06: $07
    rlca                                          ; $6f07: $07
    or l                                          ; $6f08: $b5
    or [hl]                                       ; $6f09: $b6
    or a                                          ; $6f0a: $b7
    cp b                                          ; $6f0b: $b8
    cp c                                          ; $6f0c: $b9
    cp d                                          ; $6f0d: $ba
    cp e                                          ; $6f0e: $bb
    cp h                                          ; $6f0f: $bc
    cp l                                          ; $6f10: $bd
    cp [hl]                                       ; $6f11: $be
    cp a                                          ; $6f12: $bf
    ret nz                                        ; $6f13: $c0

    pop bc                                        ; $6f14: $c1
    jp nz, $9190                                  ; $6f15: $c2 $90 $91

jr_07a_6f18:
    dec bc                                        ; $6f18: $0b
    dec bc                                        ; $6f19: $0b
    dec bc                                        ; $6f1a: $0b
    dec bc                                        ; $6f1b: $0b
    dec bc                                        ; $6f1c: $0b
    dec bc                                        ; $6f1d: $0b
    dec bc                                        ; $6f1e: $0b
    dec bc                                        ; $6f1f: $0b
    dec bc                                        ; $6f20: $0b
    dec bc                                        ; $6f21: $0b
    dec bc                                        ; $6f22: $0b
    dec bc                                        ; $6f23: $0b
    dec bc                                        ; $6f24: $0b
    dec bc                                        ; $6f25: $0b
    dec bc                                        ; $6f26: $0b
    dec bc                                        ; $6f27: $0b
    jp $c5c4                                      ; $6f28: $c3 $c4 $c5


    add $8a                                       ; $6f2b: $c6 $8a
    cp c                                          ; $6f2d: $b9
    rst $00                                       ; $6f2e: $c7
    ret z                                         ; $6f2f: $c8

    adc [hl]                                      ; $6f30: $8e
    cp l                                          ; $6f31: $bd
    cp [hl]                                       ; $6f32: $be
    ret                                           ; $6f33: $c9


    sub d                                         ; $6f34: $92
    pop bc                                        ; $6f35: $c1
    jp nz, Jump_000_0bca                          ; $6f36: $c2 $ca $0b

    dec bc                                        ; $6f39: $0b
    dec bc                                        ; $6f3a: $0b
    dec bc                                        ; $6f3b: $0b
    dec bc                                        ; $6f3c: $0b
    dec bc                                        ; $6f3d: $0b
    dec bc                                        ; $6f3e: $0b
    dec bc                                        ; $6f3f: $0b
    dec bc                                        ; $6f40: $0b
    dec bc                                        ; $6f41: $0b
    dec bc                                        ; $6f42: $0b
    dec bc                                        ; $6f43: $0b
    dec bc                                        ; $6f44: $0b
    dec bc                                        ; $6f45: $0b
    dec bc                                        ; $6f46: $0b
    dec bc                                        ; $6f47: $0b
    set 1, h                                      ; $6f48: $cb $cc
    rrca                                          ; $6f4a: $0f
    db $10                                        ; $6f4b: $10
    call Call_000_12ce                            ; $6f4c: $cd $ce $12
    inc de                                        ; $6f4f: $13
    rst $08                                       ; $6f50: $cf
    ret nc                                        ; $6f51: $d0

    dec d                                         ; $6f52: $15
    ld d, $d1                                     ; $6f53: $16 $d1
    jp nc, $f4f3                                  ; $6f55: $d2 $f3 $f4

    dec bc                                        ; $6f58: $0b
    dec bc                                        ; $6f59: $0b
    ld b, $03                                     ; $6f5a: $06 $03
    dec bc                                        ; $6f5c: $0b
    dec bc                                        ; $6f5d: $0b
    ld b, $06                                     ; $6f5e: $06 $06
    dec bc                                        ; $6f60: $0b
    dec bc                                        ; $6f61: $0b
    rlca                                          ; $6f62: $07
    ld b, $0b                                     ; $6f63: $06 $0b
    dec bc                                        ; $6f65: $0b
    rlca                                          ; $6f66: $07
    ld b, $1b                                     ; $6f67: $06 $1b
    jp nc, $d1d1                                  ; $6f69: $d2 $d1 $d1

    rra                                           ; $6f6c: $1f
    jp nc, $d1d1                                  ; $6f6d: $d2 $d1 $d1

    inc hl                                        ; $6f70: $23
    jp nc, $d1d1                                  ; $6f71: $d2 $d1 $d1

    rst $38                                       ; $6f74: $ff
    jp nc, $d1d1                                  ; $6f75: $d2 $d1 $d1

    rlca                                          ; $6f78: $07
    add b                                         ; $6f79: $80
    add b                                         ; $6f7a: $80
    add b                                         ; $6f7b: $80
    rlca                                          ; $6f7c: $07
    add b                                         ; $6f7d: $80
    add b                                         ; $6f7e: $80
    add b                                         ; $6f7f: $80
    rlca                                          ; $6f80: $07
    add b                                         ; $6f81: $80
    add b                                         ; $6f82: $80
    add b                                         ; $6f83: $80
    rlca                                          ; $6f84: $07
    add b                                         ; $6f85: $80
    add b                                         ; $6f86: $80
    add b                                         ; $6f87: $80
    db $d3                                        ; $6f88: $d3
    call nc, $9594                                ; $6f89: $d4 $94 $95
    ld e, a                                       ; $6f8c: $5f
    ld hl, sp-$69                                 ; $6f8d: $f8 $97
    sbc b                                         ; $6f8f: $98
    ld a, e                                       ; $6f90: $7b
    dec bc                                        ; $6f91: $0b
    inc c                                         ; $6f92: $0c
    dec c                                         ; $6f93: $0d
    ld a, h                                       ; $6f94: $7c
    ld c, $0f                                     ; $6f95: $0e $0f
    db $10                                        ; $6f97: $10
    dec bc                                        ; $6f98: $0b
    dec bc                                        ; $6f99: $0b
    inc c                                         ; $6f9a: $0c
    inc c                                         ; $6f9b: $0c
    rlca                                          ; $6f9c: $07
    rlca                                          ; $6f9d: $07
    inc c                                         ; $6f9e: $0c
    inc c                                         ; $6f9f: $0c
    ld b, $03                                     ; $6fa0: $06 $03
    rlca                                          ; $6fa2: $07
    rlca                                          ; $6fa3: $07
    ld b, $06                                     ; $6fa4: $06 $06
    inc bc                                        ; $6fa6: $03
    ld b, $96                                     ; $6fa7: $06 $96
    db $d3                                        ; $6fa9: $d3
    call nc, Call_000_0794                        ; $6faa: $d4 $94 $07
    ld [$9709], sp                                ; $6fad: $08 $09 $97
    rla                                           ; $6fb0: $17
    jr jr_07a_6fcc                                ; $6fb1: $18 $19

    ld a, [de]                                    ; $6fb3: $1a
    dec de                                        ; $6fb4: $1b
    inc e                                         ; $6fb5: $1c
    dec e                                         ; $6fb6: $1d
    ld e, $0b                                     ; $6fb7: $1e $0b
    dec bc                                        ; $6fb9: $0b
    dec bc                                        ; $6fba: $0b
    inc c                                         ; $6fbb: $0c
    rlca                                          ; $6fbc: $07
    rlca                                          ; $6fbd: $07
    rlca                                          ; $6fbe: $07
    inc c                                         ; $6fbf: $0c
    rlca                                          ; $6fc0: $07
    inc bc                                        ; $6fc1: $03
    ld b, $07                                     ; $6fc2: $06 $07
    ld b, $06                                     ; $6fc4: $06 $06
    ld b, $06                                     ; $6fc6: $06 $06
    sub l                                         ; $6fc8: $95
    sub e                                         ; $6fc9: $93
    or $f7                                        ; $6fca: $f6 $f7

jr_07a_6fcc:
    sbc b                                         ; $6fcc: $98
    ld hl, sp-$07                                 ; $6fcd: $f8 $f9
    ld a, [$0b7b]                                 ; $6fcf: $fa $7b $0b
    inc c                                         ; $6fd2: $0c
    dec c                                         ; $6fd3: $0d
    ld a, h                                       ; $6fd4: $7c
    ld c, $0f                                     ; $6fd5: $0e $0f
    db $10                                        ; $6fd7: $10
    inc c                                         ; $6fd8: $0c
    dec hl                                        ; $6fd9: $2b
    rlca                                          ; $6fda: $07
    inc bc                                        ; $6fdb: $03
    inc c                                         ; $6fdc: $0c
    rlca                                          ; $6fdd: $07
    rlca                                          ; $6fde: $07
    ld b, $07                                     ; $6fdf: $06 $07
    rlca                                          ; $6fe1: $07
    ld b, $03                                     ; $6fe2: $06 $03
    inc bc                                        ; $6fe4: $03
    ld b, $03                                     ; $6fe5: $06 $03
    ld b, $03                                     ; $6fe7: $06 $03
    jp nc, $d1d1                                  ; $6fe9: $d2 $d1 $d1

    rlca                                          ; $6fec: $07
    jp nc, $d1d1                                  ; $6fed: $d2 $d1 $d1

    rla                                           ; $6ff0: $17
    jp nc, $d1d1                                  ; $6ff1: $d2 $d1 $d1

    dec de                                        ; $6ff4: $1b
    jp nc, $d1d1                                  ; $6ff5: $d2 $d1 $d1

    rlca                                          ; $6ff8: $07
    add b                                         ; $6ff9: $80
    add b                                         ; $6ffa: $80
    add b                                         ; $6ffb: $80
    rlca                                          ; $6ffc: $07
    add b                                         ; $6ffd: $80
    add b                                         ; $6ffe: $80
    add b                                         ; $6fff: $80
    rlca                                          ; $7000: $07
    add b                                         ; $7001: $80
    add b                                         ; $7002: $80
    add b                                         ; $7003: $80
    rlca                                          ; $7004: $07
    add b                                         ; $7005: $80
    add b                                         ; $7006: $80
    add b                                         ; $7007: $80
    ld a, l                                       ; $7008: $7d
    ld de, $1312                                  ; $7009: $11 $12 $13
    or l                                          ; $700c: $b5
    push de                                       ; $700d: $d5
    sub $d7                                       ; $700e: $d6 $d7
    cp c                                          ; $7010: $b9
    ret c                                         ; $7011: $d8

    reti                                          ; $7012: $d9


    jp c, $dbbd                                   ; $7013: $da $bd $db

    call c, $06dd                                 ; $7016: $dc $dd $06
    inc bc                                        ; $7019: $03
    inc bc                                        ; $701a: $03
    inc bc                                        ; $701b: $03
    dec bc                                        ; $701c: $0b
    dec bc                                        ; $701d: $0b
    dec bc                                        ; $701e: $0b
    dec bc                                        ; $701f: $0b
    dec bc                                        ; $7020: $0b
    dec bc                                        ; $7021: $0b
    dec bc                                        ; $7022: $0b
    dec bc                                        ; $7023: $0b
    dec bc                                        ; $7024: $0b
    dec bc                                        ; $7025: $0b
    dec bc                                        ; $7026: $0b
    dec bc                                        ; $7027: $0b
    rra                                           ; $7028: $1f
    jr nz, jr_07a_704c                            ; $7029: $20 $21

    ld [hl+], a                                   ; $702b: $22
    jp $c5c4                                      ; $702c: $c3 $c4 $c5


    sbc $8a                                       ; $702f: $de $8a
    cp c                                          ; $7031: $b9
    rst $00                                       ; $7032: $c7
    rst $18                                       ; $7033: $df
    adc [hl]                                      ; $7034: $8e
    cp l                                          ; $7035: $bd
    cp [hl]                                       ; $7036: $be
    ldh [rTMA], a                                 ; $7037: $e0 $06
    ld b, $06                                     ; $7039: $06 $06
    inc bc                                        ; $703b: $03
    dec bc                                        ; $703c: $0b
    dec bc                                        ; $703d: $0b
    dec bc                                        ; $703e: $0b
    dec bc                                        ; $703f: $0b
    dec bc                                        ; $7040: $0b
    dec bc                                        ; $7041: $0b
    dec bc                                        ; $7042: $0b
    dec bc                                        ; $7043: $0b
    dec bc                                        ; $7044: $0b
    dec bc                                        ; $7045: $0b
    dec bc                                        ; $7046: $0b
    dec bc                                        ; $7047: $0b
    ld a, l                                       ; $7048: $7d
    ld de, $1312                                  ; $7049: $11 $12 $13

jr_07a_704c:
    pop hl                                        ; $704c: $e1
    ld [c], a                                     ; $704d: $e2
    dec d                                         ; $704e: $15
    ld d, $e3                                     ; $704f: $16 $e3
    db $e4                                        ; $7051: $e4
    di                                            ; $7052: $f3
    db $f4                                        ; $7053: $f4
    push hl                                       ; $7054: $e5
    and $f6                                       ; $7055: $e6 $f6
    rst $30                                       ; $7057: $f7
    ld b, $06                                     ; $7058: $06 $06
    inc bc                                        ; $705a: $03
    ld b, $0b                                     ; $705b: $06 $0b
    dec bc                                        ; $705d: $0b
    ld b, $06                                     ; $705e: $06 $06
    dec bc                                        ; $7060: $0b
    dec bc                                        ; $7061: $0b
    ld b, $03                                     ; $7062: $06 $03
    dec bc                                        ; $7064: $0b
    dec bc                                        ; $7065: $0b
    rlca                                          ; $7066: $07
    ld b, $1f                                     ; $7067: $06 $1f
    rst $20                                       ; $7069: $e7
    and d                                         ; $706a: $a2
    and d                                         ; $706b: $a2
    inc hl                                        ; $706c: $23
    xor a                                         ; $706d: $af
    call nc, $ffe8                                ; $706e: $d4 $e8 $ff
    or b                                          ; $7071: $b0
    rst $10                                       ; $7072: $d7
    ld d, [hl]                                    ; $7073: $56
    inc bc                                        ; $7074: $03
    or c                                          ; $7075: $b1
    jp c, Jump_000_07e9                           ; $7076: $da $e9 $07

    adc b                                         ; $7079: $88
    adc b                                         ; $707a: $88
    adc b                                         ; $707b: $88
    rlca                                          ; $707c: $07
    add hl, bc                                    ; $707d: $09
    ld bc, $0709                                  ; $707e: $01 $09 $07
    add hl, bc                                    ; $7081: $09
    ld bc, $0701                                  ; $7082: $01 $01 $07
    add hl, bc                                    ; $7085: $09
    ld bc, $c10b                                  ; $7086: $01 $0b $c1
    jp nz, $9190                                  ; $7089: $c2 $90 $91

    db $d3                                        ; $708c: $d3
    call nc, $9594                                ; $708d: $d4 $94 $95
    ld a, h                                       ; $7090: $7c
    ld c, $97                                     ; $7091: $0e $97
    sbc b                                         ; $7093: $98
    ld a, l                                       ; $7094: $7d
    ld de, $1312                                  ; $7095: $11 $12 $13
    dec bc                                        ; $7098: $0b
    dec bc                                        ; $7099: $0b
    dec bc                                        ; $709a: $0b
    dec bc                                        ; $709b: $0b
    dec bc                                        ; $709c: $0b
    dec bc                                        ; $709d: $0b
    inc c                                         ; $709e: $0c
    inc c                                         ; $709f: $0c
    rlca                                          ; $70a0: $07
    rlca                                          ; $70a1: $07
    inc c                                         ; $70a2: $0c
    inc c                                         ; $70a3: $0c
    ld b, $06                                     ; $70a4: $06 $06
    rlca                                          ; $70a6: $07
    rlca                                          ; $70a7: $07
    sub d                                         ; $70a8: $92
    pop bc                                        ; $70a9: $c1
    jp nz, $96ea                                  ; $70aa: $c2 $ea $96

    db $d3                                        ; $70ad: $d3
    call nc, $1b94                                ; $70ae: $d4 $94 $1b
    inc e                                         ; $70b1: $1c
    dec e                                         ; $70b2: $1d
    sub a                                         ; $70b3: $97
    rra                                           ; $70b4: $1f
    jr nz, jr_07a_70d8                            ; $70b5: $20 $21

    ld [hl+], a                                   ; $70b7: $22
    dec bc                                        ; $70b8: $0b
    dec bc                                        ; $70b9: $0b
    dec bc                                        ; $70ba: $0b
    dec bc                                        ; $70bb: $0b
    dec bc                                        ; $70bc: $0b
    dec bc                                        ; $70bd: $0b
    dec bc                                        ; $70be: $0b
    inc c                                         ; $70bf: $0c
    rlca                                          ; $70c0: $07
    rlca                                          ; $70c1: $07
    rlca                                          ; $70c2: $07
    inc c                                         ; $70c3: $0c
    rlca                                          ; $70c4: $07
    ld b, $06                                     ; $70c5: $06 $06
    rlca                                          ; $70c7: $07
    db $eb                                        ; $70c8: $eb
    jp nc, $faf9                                  ; $70c9: $d2 $f9 $fa

    sub l                                         ; $70cc: $95
    sub e                                         ; $70cd: $93
    inc c                                         ; $70ce: $0c
    dec c                                         ; $70cf: $0d
    sbc b                                         ; $70d0: $98
    ld c, $0f                                     ; $70d1: $0e $0f
    db $10                                        ; $70d3: $10
    ld a, l                                       ; $70d4: $7d
    ld de, $1312                                  ; $70d5: $11 $12 $13

jr_07a_70d8:
    dec bc                                        ; $70d8: $0b
    dec bc                                        ; $70d9: $0b
    rlca                                          ; $70da: $07
    ld b, $0c                                     ; $70db: $06 $0c

Call_07a_70dd:
    dec hl                                        ; $70dd: $2b
    rlca                                          ; $70de: $07
    inc bc                                        ; $70df: $03
    inc c                                         ; $70e0: $0c
    rlca                                          ; $70e1: $07
    rlca                                          ; $70e2: $07
    ld b, $07                                     ; $70e3: $06 $07
    rlca                                          ; $70e5: $07
    ld b, $03                                     ; $70e6: $06 $03
    rlca                                          ; $70e8: $07
    db $ec                                        ; $70e9: $ec
    db $dd                                        ; $70ea: $dd
    db $ed                                        ; $70eb: $ed
    rla                                           ; $70ec: $17
    xor $f0                                       ; $70ed: $ee $f0
    rst $28                                       ; $70ef: $ef
    dec de                                        ; $70f0: $1b
    inc e                                         ; $70f1: $1c
    dec e                                         ; $70f2: $1d
    ldh a, [$1f]                                  ; $70f3: $f0 $1f
    jr nz, jr_07a_7118                            ; $70f5: $20 $21

    pop af                                        ; $70f7: $f1
    rlca                                          ; $70f8: $07
    add hl, bc                                    ; $70f9: $09
    ld bc, $070b                                  ; $70fa: $01 $0b $07
    add hl, bc                                    ; $70fd: $09
    ld bc, $070d                                  ; $70fe: $01 $0d $07
    rlca                                          ; $7101: $07
    rlca                                          ; $7102: $07
    dec c                                         ; $7103: $0d
    ld b, $03                                     ; $7104: $06 $03
    rlca                                          ; $7106: $07
    dec c                                         ; $7107: $0d
    and d                                         ; $7108: $a2
    and d                                         ; $7109: $a2
    and d                                         ; $710a: $a2
    and d                                         ; $710b: $a2
    ld c, c                                       ; $710c: $49
    ld a, [c]                                     ; $710d: $f2
    di                                            ; $710e: $f3
    db $f4                                        ; $710f: $f4
    push af                                       ; $7110: $f5
    or $f7                                        ; $7111: $f6 $f7
    ld hl, sp-$07                                 ; $7113: $f8 $f9
    ld a, [$fcfb]                                 ; $7115: $fa $fb $fc

jr_07a_7118:
    adc b                                         ; $7118: $88
    adc b                                         ; $7119: $88
    adc b                                         ; $711a: $88
    adc b                                         ; $711b: $88
    ld bc, $0909                                  ; $711c: $01 $09 $09
    add hl, bc                                    ; $711f: $09
    add hl, bc                                    ; $7120: $09
    add hl, bc                                    ; $7121: $09
    add hl, bc                                    ; $7122: $09
    add hl, bc                                    ; $7123: $09
    dec bc                                        ; $7124: $0b
    dec bc                                        ; $7125: $0b
    dec bc                                        ; $7126: $0b
    dec bc                                        ; $7127: $0b
    and d                                         ; $7128: $a2
    and d                                         ; $7129: $a2
    db $fd                                        ; $712a: $fd
    pop de                                        ; $712b: $d1
    cp $49                                        ; $712c: $fe $49
    jp nc, $ffd1                                  ; $712e: $d2 $d1 $ff

    ld c, h                                       ; $7131: $4c
    jp nc, $00d1                                  ; $7132: $d2 $d1 $00

    ld bc, $d1d2                                  ; $7135: $01 $d2 $d1
    adc b                                         ; $7138: $88
    adc b                                         ; $7139: $88
    adc b                                         ; $713a: $88
    add b                                         ; $713b: $80
    add hl, bc                                    ; $713c: $09
    ld bc, $8080                                  ; $713d: $01 $80 $80
    add hl, bc                                    ; $7140: $09
    ld bc, $8080                                  ; $7141: $01 $80 $80
    dec bc                                        ; $7144: $0b
    dec bc                                        ; $7145: $0b
    add b                                         ; $7146: $80
    add b                                         ; $7147: $80
    ld [bc], a                                    ; $7148: $02

jr_07a_7149:
    inc bc                                        ; $7149: $03
    inc b                                         ; $714a: $04
    dec b                                         ; $714b: $05
    ld b, $07                                     ; $714c: $06 $07
    ld [$0a09], sp                                ; $714e: $08 $09 $0a
    dec bc                                        ; $7151: $0b
    inc c                                         ; $7152: $0c
    dec c                                         ; $7153: $0d
    ld c, $0f                                     ; $7154: $0e $0f
    db $10                                        ; $7156: $10
    ld de, $0b0b                                  ; $7157: $11 $0b $0b
    dec bc                                        ; $715a: $0b
    dec bc                                        ; $715b: $0b
    dec c                                         ; $715c: $0d
    dec c                                         ; $715d: $0d
    dec c                                         ; $715e: $0d
    dec c                                         ; $715f: $0d
    dec c                                         ; $7160: $0d
    dec c                                         ; $7161: $0d
    dec c                                         ; $7162: $0d
    dec c                                         ; $7163: $0d
    dec c                                         ; $7164: $0d
    dec c                                         ; $7165: $0d
    dec c                                         ; $7166: $0d
    dec c                                         ; $7167: $0d
    ld [de], a                                    ; $7168: $12
    inc de                                        ; $7169: $13
    jp nc, $14d1                                  ; $716a: $d2 $d1 $14

    rlca                                          ; $716d: $07
    jp nc, $15d1                                  ; $716e: $d2 $d1 $15

    ld d, $d2                                     ; $7171: $16 $d2
    pop de                                        ; $7173: $d1
    rla                                           ; $7174: $17
    jr jr_07a_7149                                ; $7175: $18 $d2

    pop de                                        ; $7177: $d1
    dec bc                                        ; $7178: $0b
    dec bc                                        ; $7179: $0b
    add b                                         ; $717a: $80
    add b                                         ; $717b: $80
    dec c                                         ; $717c: $0d
    dec c                                         ; $717d: $0d
    add b                                         ; $717e: $80
    add b                                         ; $717f: $80
    dec c                                         ; $7180: $0d
    dec c                                         ; $7181: $0d
    add b                                         ; $7182: $80
    add b                                         ; $7183: $80
    dec c                                         ; $7184: $0d
    dec c                                         ; $7185: $0d
    add b                                         ; $7186: $80
    add b                                         ; $7187: $80
    pop de                                        ; $7188: $d1
    and e                                         ; $7189: $a3
    ld d, h                                       ; $718a: $54
    ld e, b                                       ; $718b: $58
    pop de                                        ; $718c: $d1
    and e                                         ; $718d: $a3
    ld h, c                                       ; $718e: $61
    ld h, d                                       ; $718f: $62
    add hl, de                                    ; $7190: $19
    and e                                         ; $7191: $a3
    or $f7                                        ; $7192: $f6 $f7
    add hl, de                                    ; $7194: $19
    jp nc, $faf9                                  ; $7195: $d2 $f9 $fa

    add b                                         ; $7198: $80
    adc b                                         ; $7199: $88
    ld bc, $8001                                  ; $719a: $01 $01 $80
    adc b                                         ; $719d: $88
    ld bc, $8801                                  ; $719e: $01 $01 $88
    adc b                                         ; $71a1: $88
    rlca                                          ; $71a2: $07
    rlca                                          ; $71a3: $07
    adc b                                         ; $71a4: $88
    add b                                         ; $71a5: $80
    rlca                                          ; $71a6: $07
    ld b, $dc                                     ; $71a7: $06 $dc
    ld a, [de]                                    ; $71a9: $1a
    dec de                                        ; $71aa: $1b
    inc e                                         ; $71ab: $1c
    rst $28                                       ; $71ac: $ef
    ldh a, [$f1]                                  ; $71ad: $f0 $f1
    ld h, c                                       ; $71af: $61
    inc bc                                        ; $71b0: $03
    inc b                                         ; $71b1: $04
    dec b                                         ; $71b2: $05
    ld b, $07                                     ; $71b3: $06 $07
    ld [$0a09], sp                                ; $71b5: $08 $09 $0a
    ld bc, $0909                                  ; $71b8: $01 $09 $09
    add hl, bc                                    ; $71bb: $09
    ld bc, $0101                                  ; $71bc: $01 $01 $01
    ld bc, $0707                                  ; $71bf: $01 $07 $07
    rlca                                          ; $71c2: $07
    rlca                                          ; $71c3: $07
    inc bc                                        ; $71c4: $03
    ld b, $03                                     ; $71c5: $06 $03
    ld b, $ec                                     ; $71c7: $06 $ec
    inc d                                         ; $71c9: $14
    dec d                                         ; $71ca: $15
    ld d, $ee                                     ; $71cb: $16 $ee
    ld a, [c]                                     ; $71cd: $f2
    di                                            ; $71ce: $f3
    db $f4                                        ; $71cf: $f4
    ld e, l                                       ; $71d0: $5d
    push af                                       ; $71d1: $f5
    or $f7                                        ; $71d2: $f6 $f7
    ld e, a                                       ; $71d4: $5f
    ld hl, sp-$07                                 ; $71d5: $f8 $f9
    ld a, [$0729]                                 ; $71d7: $fa $29 $07
    ld b, $03                                     ; $71da: $06 $03
    add hl, hl                                    ; $71dc: $29
    rlca                                          ; $71dd: $07
    inc bc                                        ; $71de: $03
    ld b, $07                                     ; $71df: $06 $07
    rlca                                          ; $71e1: $07
    ld b, $03                                     ; $71e2: $06 $03
    inc bc                                        ; $71e4: $03
    ld b, $03                                     ; $71e5: $06 $03
    inc bc                                        ; $71e7: $03
    inc hl                                        ; $71e8: $23
    inc h                                         ; $71e9: $24
    dec h                                         ; $71ea: $25
    ld h, $ff                                     ; $71eb: $26 $ff
    nop                                           ; $71ed: $00
    ld bc, $0302                                  ; $71ee: $01 $02 $03
    inc b                                         ; $71f1: $04
    dec b                                         ; $71f2: $05
    ld b, $07                                     ; $71f3: $06 $07
    ld [$0a09], sp                                ; $71f5: $08 $09 $0a
    ld b, $06                                     ; $71f8: $06 $06
    ld b, $06                                     ; $71fa: $06 $06
    ld b, $03                                     ; $71fc: $06 $03
    ld b, $06                                     ; $71fe: $06 $06
    ld b, $06                                     ; $7200: $06 $06
    inc bc                                        ; $7202: $03
    ld b, $06                                     ; $7203: $06 $06
    inc bc                                        ; $7205: $03
    ld b, $03                                     ; $7206: $06 $03
    add hl, de                                    ; $7208: $19
    rst $20                                       ; $7209: $e7
    and d                                         ; $720a: $a2
    and d                                         ; $720b: $a2
    pop de                                        ; $720c: $d1
    pop de                                        ; $720d: $d1
    pop de                                        ; $720e: $d1
    pop de                                        ; $720f: $d1
    pop de                                        ; $7210: $d1
    pop de                                        ; $7211: $d1
    pop de                                        ; $7212: $d1
    pop de                                        ; $7213: $d1
    pop de                                        ; $7214: $d1
    pop de                                        ; $7215: $d1
    pop de                                        ; $7216: $d1
    pop de                                        ; $7217: $d1
    adc b                                         ; $7218: $88
    adc b                                         ; $7219: $88
    adc b                                         ; $721a: $88
    adc b                                         ; $721b: $88
    add b                                         ; $721c: $80
    add b                                         ; $721d: $80
    add b                                         ; $721e: $80
    add b                                         ; $721f: $80
    add b                                         ; $7220: $80
    add b                                         ; $7221: $80
    add b                                         ; $7222: $80
    add b                                         ; $7223: $80
    add b                                         ; $7224: $80
    add b                                         ; $7225: $80
    add b                                         ; $7226: $80
    add b                                         ; $7227: $80
    and d                                         ; $7228: $a2
    and d                                         ; $7229: $a2
    and d                                         ; $722a: $a2
    and d                                         ; $722b: $a2
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
    pop de                                        ; $7236: $d1
    pop de                                        ; $7237: $d1
    adc b                                         ; $7238: $88
    adc b                                         ; $7239: $88
    adc b                                         ; $723a: $88
    adc b                                         ; $723b: $88
    add b                                         ; $723c: $80
    add b                                         ; $723d: $80
    add b                                         ; $723e: $80
    add b                                         ; $723f: $80
    add b                                         ; $7240: $80
    add b                                         ; $7241: $80
    add b                                         ; $7242: $80
    add b                                         ; $7243: $80
    add b                                         ; $7244: $80
    add b                                         ; $7245: $80
    add b                                         ; $7246: $80
    add b                                         ; $7247: $80
    ld a, [hl]                                    ; $7248: $7e
    inc d                                         ; $7249: $14
    dec d                                         ; $724a: $15
    ld d, $5c                                     ; $724b: $16 $5c
    ld a, [c]                                     ; $724d: $f2
    di                                            ; $724e: $f3
    db $f4                                        ; $724f: $f4
    ld e, l                                       ; $7250: $5d
    push af                                       ; $7251: $f5
    or $f7                                        ; $7252: $f6 $f7
    ld e, a                                       ; $7254: $5f
    ld hl, sp-$07                                 ; $7255: $f8 $f9
    ld a, [$0306]                                 ; $7257: $fa $06 $03
    ld b, $06                                     ; $725a: $06 $06
    ld b, $06                                     ; $725c: $06 $06
    inc bc                                        ; $725e: $03
    ld b, $03                                     ; $725f: $06 $03
    inc bc                                        ; $7261: $03
    ld b, $03                                     ; $7262: $06 $03
    ld b, $06                                     ; $7264: $06 $06
    inc bc                                        ; $7266: $03
    ld b, $23                                     ; $7267: $06 $23
    inc h                                         ; $7269: $24
    dec h                                         ; $726a: $25
    ld h, $ff                                     ; $726b: $26 $ff
    nop                                           ; $726d: $00
    ld bc, $0302                                  ; $726e: $01 $02 $03
    inc b                                         ; $7271: $04
    dec b                                         ; $7272: $05
    ld b, $07                                     ; $7273: $06 $07
    ld [$0a09], sp                                ; $7275: $08 $09 $0a
    ld b, $03                                     ; $7278: $06 $03
    ld b, $06                                     ; $727a: $06 $06
    ld b, $06                                     ; $727c: $06 $06
    ld b, $06                                     ; $727e: $06 $06
    ld b, $06                                     ; $7280: $06 $06
    inc bc                                        ; $7282: $03
    ld b, $06                                     ; $7283: $06 $06
    inc bc                                        ; $7285: $03
    ld b, $06                                     ; $7286: $06 $06
    ld a, [hl]                                    ; $7288: $7e
    inc d                                         ; $7289: $14
    dec d                                         ; $728a: $15
    ld d, $5c                                     ; $728b: $16 $5c
    ld a, [c]                                     ; $728d: $f2
    di                                            ; $728e: $f3
    db $f4                                        ; $728f: $f4
    ld e, l                                       ; $7290: $5d
    push af                                       ; $7291: $f5
    or $f7                                        ; $7292: $f6 $f7
    ld e, a                                       ; $7294: $5f
    ld hl, sp-$07                                 ; $7295: $f8 $f9
    ld a, [$0306]                                 ; $7297: $fa $06 $03
    ld b, $06                                     ; $729a: $06 $06
    inc bc                                        ; $729c: $03
    ld b, $03                                     ; $729d: $06 $03
    inc bc                                        ; $729f: $03
    ld b, $06                                     ; $72a0: $06 $06
    ld b, $06                                     ; $72a2: $06 $06
    inc bc                                        ; $72a4: $03
    ld b, $06                                     ; $72a5: $06 $06
    inc bc                                        ; $72a7: $03
    inc hl                                        ; $72a8: $23
    inc h                                         ; $72a9: $24
    dec h                                         ; $72aa: $25
    ld h, $ff                                     ; $72ab: $26 $ff
    nop                                           ; $72ad: $00
    ld bc, $0302                                  ; $72ae: $01 $02 $03
    inc b                                         ; $72b1: $04
    dec b                                         ; $72b2: $05
    ld b, $07                                     ; $72b3: $06 $07
    ld [$0a09], sp                                ; $72b5: $08 $09 $0a
    inc bc                                        ; $72b8: $03
    ld b, $07                                     ; $72b9: $06 $07
    rlca                                          ; $72bb: $07
    inc bc                                        ; $72bc: $03
    ld b, $06                                     ; $72bd: $06 $06
    ld b, $06                                     ; $72bf: $06 $06
    inc bc                                        ; $72c1: $03
    inc bc                                        ; $72c2: $03
    inc bc                                        ; $72c3: $03
    ld b, $06                                     ; $72c4: $06 $06
    inc bc                                        ; $72c6: $03
    inc bc                                        ; $72c7: $03
    ld a, [hl]                                    ; $72c8: $7e
    inc d                                         ; $72c9: $14
    dec d                                         ; $72ca: $15
    ld d, $5c                                     ; $72cb: $16 $5c
    ld a, [c]                                     ; $72cd: $f2
    di                                            ; $72ce: $f3
    db $f4                                        ; $72cf: $f4
    ld e, l                                       ; $72d0: $5d
    push af                                       ; $72d1: $f5
    or $f7                                        ; $72d2: $f6 $f7
    ld e, a                                       ; $72d4: $5f
    ld hl, sp-$07                                 ; $72d5: $f8 $f9
    ld a, [$0707]                                 ; $72d7: $fa $07 $07
    rlca                                          ; $72da: $07
    rlca                                          ; $72db: $07
    ld b, $03                                     ; $72dc: $06 $03
    ld b, $06                                     ; $72de: $06 $06
    ld b, $06                                     ; $72e0: $06 $06
    ld b, $03                                     ; $72e2: $06 $03
    ld b, $06                                     ; $72e4: $06 $06
    inc bc                                        ; $72e6: $03
    ld b, $23                                     ; $72e7: $06 $23
    inc h                                         ; $72e9: $24
    jp nc, $ffd1                                  ; $72ea: $d2 $d1 $ff

    nop                                           ; $72ed: $00
    jp nc, Jump_000_03d1                          ; $72ee: $d2 $d1 $03

    inc b                                         ; $72f1: $04
    jp nc, Jump_000_07d1                          ; $72f2: $d2 $d1 $07

    ld [$d1d2], sp                                ; $72f5: $08 $d2 $d1
    rlca                                          ; $72f8: $07
    rlca                                          ; $72f9: $07
    add b                                         ; $72fa: $80
    add b                                         ; $72fb: $80
    inc bc                                        ; $72fc: $03
    rlca                                          ; $72fd: $07
    add b                                         ; $72fe: $80
    add b                                         ; $72ff: $80
    inc bc                                        ; $7300: $03
    rlca                                          ; $7301: $07
    add b                                         ; $7302: $80
    add b                                         ; $7303: $80
    ld b, $07                                     ; $7304: $06 $07
    add b                                         ; $7306: $80
    add b                                         ; $7307: $80
    and d                                         ; $7308: $a2
    and d                                         ; $7309: $a2
    xor [hl]                                      ; $730a: $ae
    pop de                                        ; $730b: $d1
    pop de                                        ; $730c: $d1
    pop de                                        ; $730d: $d1
    pop de                                        ; $730e: $d1
    pop de                                        ; $730f: $d1
    pop de                                        ; $7310: $d1
    pop de                                        ; $7311: $d1
    pop de                                        ; $7312: $d1
    pop de                                        ; $7313: $d1
    pop de                                        ; $7314: $d1
    pop de                                        ; $7315: $d1
    pop de                                        ; $7316: $d1
    pop de                                        ; $7317: $d1
    adc b                                         ; $7318: $88
    adc b                                         ; $7319: $88
    adc b                                         ; $731a: $88
    add b                                         ; $731b: $80
    add b                                         ; $731c: $80
    add b                                         ; $731d: $80
    add b                                         ; $731e: $80
    add b                                         ; $731f: $80
    add b                                         ; $7320: $80
    add b                                         ; $7321: $80
    add b                                         ; $7322: $80
    add b                                         ; $7323: $80
    add b                                         ; $7324: $80
    add b                                         ; $7325: $80
    add b                                         ; $7326: $80
    add b                                         ; $7327: $80
    add hl, bc                                    ; $7328: $09
    nop                                           ; $7329: $00
    ld a, [bc]                                    ; $732a: $0a
    nop                                           ; $732b: $00
    nop                                           ; $732c: $00
    ld [$eded], sp                                ; $732d: $08 $ed $ed
    xor $ef                                       ; $7330: $ee $ef
    db $ed                                        ; $7332: $ed
    db $ed                                        ; $7333: $ed
    xor $f0                                       ; $7334: $ee $f0
    db $ed                                        ; $7336: $ed
    db $ed                                        ; $7337: $ed
    xor $f1                                       ; $7338: $ee $f1
    db $ed                                        ; $733a: $ed
    db $ed                                        ; $733b: $ed
    xor $f2                                       ; $733c: $ee $f2
    add b                                         ; $733e: $80
    add b                                         ; $733f: $80
    add b                                         ; $7340: $80
    inc b                                         ; $7341: $04
    add b                                         ; $7342: $80
    add b                                         ; $7343: $80
    add b                                         ; $7344: $80
    inc b                                         ; $7345: $04
    add b                                         ; $7346: $80
    add b                                         ; $7347: $80
    add b                                         ; $7348: $80
    inc b                                         ; $7349: $04
    add b                                         ; $734a: $80
    add b                                         ; $734b: $80
    add b                                         ; $734c: $80
    inc b                                         ; $734d: $04
    di                                            ; $734e: $f3
    db $f4                                        ; $734f: $f4
    push af                                       ; $7350: $f5
    or $f7                                        ; $7351: $f6 $f7
    ld hl, sp-$07                                 ; $7353: $f8 $f9
    ld a, [$fcfb]                                 ; $7355: $fa $fb $fc
    db $fd                                        ; $7358: $fd
    cp $ff                                        ; $7359: $fe $ff
    nop                                           ; $735b: $00
    ld bc, $0402                                  ; $735c: $01 $02 $04
    inc b                                         ; $735f: $04
    inc b                                         ; $7360: $04
    inc b                                         ; $7361: $04
    ld [bc], a                                    ; $7362: $02
    ld [bc], a                                    ; $7363: $02
    ld [bc], a                                    ; $7364: $02
    inc b                                         ; $7365: $04
    ld [bc], a                                    ; $7366: $02
    ld [bc], a                                    ; $7367: $02
    ld [bc], a                                    ; $7368: $02
    inc b                                         ; $7369: $04
    ld [bc], a                                    ; $736a: $02
    ld [bc], a                                    ; $736b: $02
    ld [bc], a                                    ; $736c: $02
    inc b                                         ; $736d: $04
    inc bc                                        ; $736e: $03
    inc b                                         ; $736f: $04
    dec b                                         ; $7370: $05
    ld b, $03                                     ; $7371: $06 $03
    rlca                                          ; $7373: $07
    ld [$0a09], sp                                ; $7374: $08 $09 $0a
    dec bc                                        ; $7377: $0b
    inc c                                         ; $7378: $0c
    dec c                                         ; $7379: $0d
    ld c, $0f                                     ; $737a: $0e $0f
    db $10                                        ; $737c: $10
    ld de, $0404                                  ; $737d: $11 $04 $04
    inc b                                         ; $7380: $04
    inc b                                         ; $7381: $04
    inc b                                         ; $7382: $04
    inc b                                         ; $7383: $04
    inc b                                         ; $7384: $04
    inc b                                         ; $7385: $04
    inc b                                         ; $7386: $04
    inc b                                         ; $7387: $04
    inc b                                         ; $7388: $04
    inc b                                         ; $7389: $04
    inc b                                         ; $738a: $04
    inc b                                         ; $738b: $04
    inc b                                         ; $738c: $04
    inc b                                         ; $738d: $04
    inc bc                                        ; $738e: $03
    inc bc                                        ; $738f: $03
    ld [de], a                                    ; $7390: $12
    inc de                                        ; $7391: $13
    inc bc                                        ; $7392: $03
    inc bc                                        ; $7393: $03
    inc d                                         ; $7394: $14
    dec d                                         ; $7395: $15
    ld d, $17                                     ; $7396: $16 $17
    jr jr_07a_73b3                                ; $7398: $18 $19

    ld a, [de]                                    ; $739a: $1a
    dec de                                        ; $739b: $1b
    inc e                                         ; $739c: $1c
    dec e                                         ; $739d: $1d
    inc b                                         ; $739e: $04
    inc b                                         ; $739f: $04
    inc b                                         ; $73a0: $04
    inc b                                         ; $73a1: $04
    inc b                                         ; $73a2: $04
    inc b                                         ; $73a3: $04
    inc b                                         ; $73a4: $04
    inc b                                         ; $73a5: $04
    inc b                                         ; $73a6: $04
    inc b                                         ; $73a7: $04
    inc b                                         ; $73a8: $04
    inc b                                         ; $73a9: $04
    inc b                                         ; $73aa: $04
    inc b                                         ; $73ab: $04
    inc b                                         ; $73ac: $04
    inc b                                         ; $73ad: $04
    db $ed                                        ; $73ae: $ed
    db $ed                                        ; $73af: $ed
    xor $1e                                       ; $73b0: $ee $1e
    db $ed                                        ; $73b2: $ed

jr_07a_73b3:
    db $ed                                        ; $73b3: $ed
    xor $1f                                       ; $73b4: $ee $1f
    db $ed                                        ; $73b6: $ed
    db $ed                                        ; $73b7: $ed
    xor $20                                       ; $73b8: $ee $20
    db $ed                                        ; $73ba: $ed
    db $ed                                        ; $73bb: $ed
    xor $21                                       ; $73bc: $ee $21
    add b                                         ; $73be: $80
    add b                                         ; $73bf: $80
    add b                                         ; $73c0: $80
    inc b                                         ; $73c1: $04
    add b                                         ; $73c2: $80
    add b                                         ; $73c3: $80
    add b                                         ; $73c4: $80
    rlca                                          ; $73c5: $07
    add b                                         ; $73c6: $80
    add b                                         ; $73c7: $80
    add b                                         ; $73c8: $80
    rlca                                          ; $73c9: $07
    add b                                         ; $73ca: $80
    add b                                         ; $73cb: $80
    add b                                         ; $73cc: $80
    rlca                                          ; $73cd: $07
    ld [hl+], a                                   ; $73ce: $22
    inc hl                                        ; $73cf: $23
    inc h                                         ; $73d0: $24
    dec h                                         ; $73d1: $25
    ld h, $27                                     ; $73d2: $26 $27
    jr z, jr_07a_73ff                             ; $73d4: $28 $29

    ld a, [hl+]                                   ; $73d6: $2a
    dec hl                                        ; $73d7: $2b
    inc l                                         ; $73d8: $2c
    dec l                                         ; $73d9: $2d
    ld l, $2f                                     ; $73da: $2e $2f
    jr nc, jr_07a_740f                            ; $73dc: $30 $31

    ld [bc], a                                    ; $73de: $02
    ld [bc], a                                    ; $73df: $02
    inc b                                         ; $73e0: $04
    inc b                                         ; $73e1: $04
    ld [bc], a                                    ; $73e2: $02
    ld [bc], a                                    ; $73e3: $02
    rlca                                          ; $73e4: $07
    rlca                                          ; $73e5: $07
    ld b, $06                                     ; $73e6: $06 $06
    ld b, $05                                     ; $73e8: $06 $05
    ld b, $06                                     ; $73ea: $06 $06
    dec b                                         ; $73ec: $05
    ld b, $32                                     ; $73ed: $06 $32
    inc sp                                        ; $73ef: $33
    inc [hl]                                      ; $73f0: $34
    dec [hl]                                      ; $73f1: $35
    ld [hl], $37                                  ; $73f2: $36 $37
    jr c, @+$21                                   ; $73f4: $38 $1f

    add hl, sp                                    ; $73f6: $39
    ld a, [hl-]                                   ; $73f7: $3a
    dec sp                                        ; $73f8: $3b
    jr nz, jr_07a_7437                            ; $73f9: $20 $3c

    dec a                                         ; $73fb: $3d
    ld a, $21                                     ; $73fc: $3e $21
    inc b                                         ; $73fe: $04

jr_07a_73ff:
    inc b                                         ; $73ff: $04
    inc b                                         ; $7400: $04
    inc b                                         ; $7401: $04
    rlca                                          ; $7402: $07
    rlca                                          ; $7403: $07
    rlca                                          ; $7404: $07
    rlca                                          ; $7405: $07
    dec b                                         ; $7406: $05
    dec b                                         ; $7407: $05
    dec b                                         ; $7408: $05
    ld b, $06                                     ; $7409: $06 $06
    ld b, $06                                     ; $740b: $06 $06
    dec b                                         ; $740d: $05
    dec h                                         ; $740e: $25

jr_07a_740f:
    ccf                                           ; $740f: $3f
    ld b, b                                       ; $7410: $40
    ld b, c                                       ; $7411: $41
    ld b, d                                       ; $7412: $42
    ld b, e                                       ; $7413: $43
    jr z, jr_07a_743f                             ; $7414: $28 $29

    ld a, [hl+]                                   ; $7416: $2a
    dec hl                                        ; $7417: $2b
    inc l                                         ; $7418: $2c
    dec l                                         ; $7419: $2d
    ld l, $2f                                     ; $741a: $2e $2f
    jr nc, jr_07a_744f                            ; $741c: $30 $31

    inc b                                         ; $741e: $04
    inc b                                         ; $741f: $04
    inc b                                         ; $7420: $04
    inc b                                         ; $7421: $04
    rlca                                          ; $7422: $07
    rlca                                          ; $7423: $07
    rlca                                          ; $7424: $07
    rlca                                          ; $7425: $07
    ld b, $06                                     ; $7426: $06 $06
    ld b, $06                                     ; $7428: $06 $06
    dec b                                         ; $742a: $05
    dec b                                         ; $742b: $05
    dec b                                         ; $742c: $05
    dec b                                         ; $742d: $05
    db $ed                                        ; $742e: $ed
    db $ed                                        ; $742f: $ed
    xor $44                                       ; $7430: $ee $44
    db $ed                                        ; $7432: $ed
    db $ed                                        ; $7433: $ed
    xor $45                                       ; $7434: $ee $45
    db $ed                                        ; $7436: $ed

jr_07a_7437:
    db $ed                                        ; $7437: $ed
    xor $46                                       ; $7438: $ee $46
    db $ed                                        ; $743a: $ed
    db $ed                                        ; $743b: $ed
    xor $1f                                       ; $743c: $ee $1f
    add b                                         ; $743e: $80

jr_07a_743f:
    add b                                         ; $743f: $80
    add b                                         ; $7440: $80
    rlca                                          ; $7441: $07
    add b                                         ; $7442: $80
    add b                                         ; $7443: $80
    add b                                         ; $7444: $80
    rlca                                          ; $7445: $07
    add b                                         ; $7446: $80
    add b                                         ; $7447: $80
    add b                                         ; $7448: $80
    rlca                                          ; $7449: $07
    add b                                         ; $744a: $80
    add b                                         ; $744b: $80
    add b                                         ; $744c: $80
    rlca                                          ; $744d: $07
    ld b, a                                       ; $744e: $47

jr_07a_744f:
    ld c, b                                       ; $744f: $48
    ld c, c                                       ; $7450: $49
    ld c, d                                       ; $7451: $4a
    ld c, e                                       ; $7452: $4b
    ld c, h                                       ; $7453: $4c
    ld c, l                                       ; $7454: $4d
    ld c, [hl]                                    ; $7455: $4e
    ld c, a                                       ; $7456: $4f
    ld d, b                                       ; $7457: $50
    ld d, c                                       ; $7458: $51
    ld d, d                                       ; $7459: $52
    ld b, d                                       ; $745a: $42
    ld b, e                                       ; $745b: $43
    jr z, @+$55                                   ; $745c: $28 $53

    dec b                                         ; $745e: $05
    dec b                                         ; $745f: $05
    dec b                                         ; $7460: $05
    ld b, $05                                     ; $7461: $06 $05
    dec b                                         ; $7463: $05
    dec b                                         ; $7464: $05
    dec b                                         ; $7465: $05
    dec b                                         ; $7466: $05
    dec b                                         ; $7467: $05
    ld b, $81                                     ; $7468: $06 $81
    dec b                                         ; $746a: $05
    dec b                                         ; $746b: $05
    ld b, $81                                     ; $746c: $06 $81
    ld d, h                                       ; $746e: $54
    ld d, l                                       ; $746f: $55
    ld d, [hl]                                    ; $7470: $56
    ld b, h                                       ; $7471: $44
    ld d, a                                       ; $7472: $57
    ld e, b                                       ; $7473: $58
    ld e, c                                       ; $7474: $59
    ld b, l                                       ; $7475: $45
    ld e, d                                       ; $7476: $5a
    ld e, e                                       ; $7477: $5b
    ld e, h                                       ; $7478: $5c
    ld b, [hl]                                    ; $7479: $46
    ld e, l                                       ; $747a: $5d
    ld e, [hl]                                    ; $747b: $5e
    jr c, jr_07a_749d                             ; $747c: $38 $1f

    ld b, $06                                     ; $747e: $06 $06
    ld b, $06                                     ; $7480: $06 $06
    add c                                         ; $7482: $81
    add c                                         ; $7483: $81
    add c                                         ; $7484: $81
    ld b, $81                                     ; $7485: $06 $81
    add c                                         ; $7487: $81
    ld b, $06                                     ; $7488: $06 $06
    add c                                         ; $748a: $81
    add c                                         ; $748b: $81
    ld b, $06                                     ; $748c: $06 $06
    ld b, a                                       ; $748e: $47
    ld c, b                                       ; $748f: $48
    ld c, c                                       ; $7490: $49
    ld c, d                                       ; $7491: $4a
    ld c, e                                       ; $7492: $4b
    ld c, h                                       ; $7493: $4c
    ld e, a                                       ; $7494: $5f
    ld h, b                                       ; $7495: $60
    ld c, a                                       ; $7496: $4f
    ld d, b                                       ; $7497: $50
    ld h, c                                       ; $7498: $61
    ld h, d                                       ; $7499: $62
    ld b, d                                       ; $749a: $42
    ld b, e                                       ; $749b: $43
    ld h, e                                       ; $749c: $63

jr_07a_749d:
    ld h, h                                       ; $749d: $64
    ld b, $05                                     ; $749e: $06 $05
    ld b, $06                                     ; $74a0: $06 $06
    ld b, $06                                     ; $74a2: $06 $06
    add d                                         ; $74a4: $82
    add d                                         ; $74a5: $82
    dec b                                         ; $74a6: $05
    ld b, $82                                     ; $74a7: $06 $82
    add d                                         ; $74a9: $82
    dec b                                         ; $74aa: $05
    ld b, $82                                     ; $74ab: $06 $82
    add d                                         ; $74ad: $82
    db $ed                                        ; $74ae: $ed
    db $ed                                        ; $74af: $ed
    xor $20                                       ; $74b0: $ee $20
    db $ed                                        ; $74b2: $ed
    db $ed                                        ; $74b3: $ed
    xor $21                                       ; $74b4: $ee $21
    db $ed                                        ; $74b6: $ed
    db $ed                                        ; $74b7: $ed
    xor $44                                       ; $74b8: $ee $44
    db $ed                                        ; $74ba: $ed
    db $ed                                        ; $74bb: $ed
    xor $45                                       ; $74bc: $ee $45
    add b                                         ; $74be: $80
    add b                                         ; $74bf: $80
    add b                                         ; $74c0: $80
    rlca                                          ; $74c1: $07
    add b                                         ; $74c2: $80
    add b                                         ; $74c3: $80
    add b                                         ; $74c4: $80
    rlca                                          ; $74c5: $07
    add b                                         ; $74c6: $80
    add b                                         ; $74c7: $80
    add b                                         ; $74c8: $80
    rlca                                          ; $74c9: $07
    add b                                         ; $74ca: $80
    add b                                         ; $74cb: $80
    add b                                         ; $74cc: $80
    rlca                                          ; $74cd: $07
    ld a, [hl+]                                   ; $74ce: $2a
    dec hl                                        ; $74cf: $2b
    inc l                                         ; $74d0: $2c
    dec l                                         ; $74d1: $2d
    ld h, l                                       ; $74d2: $65
    ld h, [hl]                                    ; $74d3: $66
    ld h, a                                       ; $74d4: $67
    ld l, b                                       ; $74d5: $68
    ld b, a                                       ; $74d6: $47
    ld c, b                                       ; $74d7: $48
    ld l, c                                       ; $74d8: $69
    ld c, d                                       ; $74d9: $4a
    ld c, e                                       ; $74da: $4b
    ld c, h                                       ; $74db: $4c
    ld c, l                                       ; $74dc: $4d
    ld c, [hl]                                    ; $74dd: $4e
    ld b, $06                                     ; $74de: $06 $06
    ld b, $06                                     ; $74e0: $06 $06
    ld b, $06                                     ; $74e2: $06 $06
    ld b, $06                                     ; $74e4: $06 $06
    ld b, $06                                     ; $74e6: $06 $06
    ld b, $06                                     ; $74e8: $06 $06
    dec b                                         ; $74ea: $05
    dec b                                         ; $74eb: $05
    ld b, $06                                     ; $74ec: $06 $06
    ld l, d                                       ; $74ee: $6a
    ld l, e                                       ; $74ef: $6b
    dec sp                                        ; $74f0: $3b
    jr nz, jr_07a_755f                            ; $74f1: $20 $6c

    ld l, l                                       ; $74f3: $6d
    ld l, [hl]                                    ; $74f4: $6e
    ld l, a                                       ; $74f5: $6f
    ld [hl], b                                    ; $74f6: $70
    ld [hl], c                                    ; $74f7: $71
    ld d, [hl]                                    ; $74f8: $56
    ld b, h                                       ; $74f9: $44
    ld [hl], d                                    ; $74fa: $72
    ld [hl], e                                    ; $74fb: $73
    ld [hl], h                                    ; $74fc: $74
    ld b, l                                       ; $74fd: $45
    ld bc, $0601                                  ; $74fe: $01 $01 $06
    dec b                                         ; $7501: $05
    ld bc, $0601                                  ; $7502: $01 $01 $06
    ld b, $06                                     ; $7505: $06 $06
    ld b, $06                                     ; $7507: $06 $06
    ld b, $05                                     ; $7509: $06 $05
    dec b                                         ; $750b: $05
    ld b, $06                                     ; $750c: $06 $06
    ld a, [hl+]                                   ; $750e: $2a
    dec hl                                        ; $750f: $2b
    ld [hl], l                                    ; $7510: $75
    halt                                          ; $7511: $76
    ld [hl], a                                    ; $7512: $77
    ld a, b                                       ; $7513: $78
    ld a, c                                       ; $7514: $79
    ld a, d                                       ; $7515: $7a
    ld b, a                                       ; $7516: $47
    ld a, e                                       ; $7517: $7b
    ld a, h                                       ; $7518: $7c
    ld a, l                                       ; $7519: $7d
    ld c, e                                       ; $751a: $4b
    ld a, [hl]                                    ; $751b: $7e
    db $ed                                        ; $751c: $ed
    db $ed                                        ; $751d: $ed
    ld b, $06                                     ; $751e: $06 $06
    add d                                         ; $7520: $82
    add d                                         ; $7521: $82
    ld b, $06                                     ; $7522: $06 $06
    ld [bc], a                                    ; $7524: $02
    ld [bc], a                                    ; $7525: $02
    ld b, $06                                     ; $7526: $06 $06
    ld [bc], a                                    ; $7528: $02
    ld [bc], a                                    ; $7529: $02
    ld b, $06                                     ; $752a: $06 $06
    ld bc, $7f01                                  ; $752c: $01 $01 $7f
    add b                                         ; $752f: $80
    add c                                         ; $7530: $81
    add d                                         ; $7531: $82
    add e                                         ; $7532: $83
    ld sp, hl                                     ; $7533: $f9
    ld hl, sp-$09                                 ; $7534: $f8 $f7
    add h                                         ; $7536: $84
    db $fd                                        ; $7537: $fd
    db $fc                                        ; $7538: $fc
    ei                                            ; $7539: $fb
    add l                                         ; $753a: $85
    ld bc, $ff00                                  ; $753b: $01 $00 $ff
    inc b                                         ; $753e: $04
    inc c                                         ; $753f: $0c
    inc c                                         ; $7540: $0c
    inc c                                         ; $7541: $0c
    inc c                                         ; $7542: $0c
    ld hl, $2121                                  ; $7543: $21 $21 $21
    inc c                                         ; $7546: $0c
    ld hl, $2121                                  ; $7547: $21 $21 $21
    inc c                                         ; $754a: $0c
    ld hl, $2121                                  ; $754b: $21 $21 $21
    ldh a, [$ee]                                  ; $754e: $f0 $ee
    db $ed                                        ; $7550: $ed
    db $ed                                        ; $7551: $ed
    ldh a, [$ee]                                  ; $7552: $f0 $ee
    db $ed                                        ; $7554: $ed
    db $ed                                        ; $7555: $ed
    pop af                                        ; $7556: $f1
    xor $ed                                       ; $7557: $ee $ed
    db $ed                                        ; $7559: $ed
    ld a, [c]                                     ; $755a: $f2
    xor $ed                                       ; $755b: $ee $ed
    db $ed                                        ; $755d: $ed
    inc b                                         ; $755e: $04

jr_07a_755f:
    add b                                         ; $755f: $80
    add b                                         ; $7560: $80
    add b                                         ; $7561: $80
    inc b                                         ; $7562: $04
    add b                                         ; $7563: $80
    add b                                         ; $7564: $80
    add b                                         ; $7565: $80
    inc h                                         ; $7566: $24
    add b                                         ; $7567: $80
    add b                                         ; $7568: $80
    add b                                         ; $7569: $80
    inc h                                         ; $756a: $24
    add b                                         ; $756b: $80
    add b                                         ; $756c: $80
    add b                                         ; $756d: $80
    db $ed                                        ; $756e: $ed
    db $ed                                        ; $756f: $ed
    db $ed                                        ; $7570: $ed
    db $ed                                        ; $7571: $ed
    db $ed                                        ; $7572: $ed
    db $ed                                        ; $7573: $ed
    db $ed                                        ; $7574: $ed
    db $ed                                        ; $7575: $ed
    db $ed                                        ; $7576: $ed
    db $ed                                        ; $7577: $ed
    db $ed                                        ; $7578: $ed
    db $ed                                        ; $7579: $ed
    db $ed                                        ; $757a: $ed
    db $ed                                        ; $757b: $ed
    db $ed                                        ; $757c: $ed
    db $ed                                        ; $757d: $ed
    add b                                         ; $757e: $80
    add b                                         ; $757f: $80
    add b                                         ; $7580: $80
    add b                                         ; $7581: $80
    add b                                         ; $7582: $80
    add b                                         ; $7583: $80
    add b                                         ; $7584: $80
    add b                                         ; $7585: $80
    add b                                         ; $7586: $80
    add b                                         ; $7587: $80
    add b                                         ; $7588: $80
    add b                                         ; $7589: $80
    add b                                         ; $758a: $80
    add b                                         ; $758b: $80
    add b                                         ; $758c: $80
    add b                                         ; $758d: $80
    add [hl]                                      ; $758e: $86
    inc h                                         ; $758f: $24
    inc hl                                        ; $7590: $23
    ld [hl+], a                                   ; $7591: $22
    ld [hl], $37                                  ; $7592: $36 $37
    daa                                           ; $7594: $27
    ld h, $39                                     ; $7595: $26 $39
    ld a, [hl-]                                   ; $7597: $3a
    dec sp                                        ; $7598: $3b
    jr nz, jr_07a_75d7                            ; $7599: $20 $3c

    dec a                                         ; $759b: $3d
    ld a, $21                                     ; $759c: $3e $21
    inc c                                         ; $759e: $0c
    inc h                                         ; $759f: $24
    ld hl, $0721                                  ; $75a0: $21 $21 $07
    rlca                                          ; $75a3: $07
    ld hl, $0621                                  ; $75a4: $21 $21 $06
    dec b                                         ; $75a7: $05
    dec b                                         ; $75a8: $05
    dec b                                         ; $75a9: $05
    dec b                                         ; $75aa: $05
    ld b, $06                                     ; $75ab: $06 $06
    ld b, $1e                                     ; $75ad: $06 $1e
    xor $ed                                       ; $75af: $ee $ed
    db $ed                                        ; $75b1: $ed
    ld b, d                                       ; $75b2: $42
    xor $ed                                       ; $75b3: $ee $ed
    db $ed                                        ; $75b5: $ed
    ld a, [hl+]                                   ; $75b6: $2a
    xor $ed                                       ; $75b7: $ee $ed
    db $ed                                        ; $75b9: $ed
    ld l, $ee                                     ; $75ba: $2e $ee
    db $ed                                        ; $75bc: $ed
    db $ed                                        ; $75bd: $ed
    inc h                                         ; $75be: $24
    add b                                         ; $75bf: $80
    add b                                         ; $75c0: $80
    add b                                         ; $75c1: $80
    rlca                                          ; $75c2: $07
    add b                                         ; $75c3: $80
    add b                                         ; $75c4: $80
    add b                                         ; $75c5: $80
    rlca                                          ; $75c6: $07
    add b                                         ; $75c7: $80
    add b                                         ; $75c8: $80
    add b                                         ; $75c9: $80
    rlca                                          ; $75ca: $07
    add b                                         ; $75cb: $80
    add b                                         ; $75cc: $80
    add b                                         ; $75cd: $80
    ld d, h                                       ; $75ce: $54
    ld d, l                                       ; $75cf: $55
    ld d, [hl]                                    ; $75d0: $56
    ld b, h                                       ; $75d1: $44
    add a                                         ; $75d2: $87
    adc b                                         ; $75d3: $88
    ld [hl], h                                    ; $75d4: $74
    ld b, l                                       ; $75d5: $45
    adc c                                         ; $75d6: $89

jr_07a_75d7:
    adc d                                         ; $75d7: $8a
    ld e, h                                       ; $75d8: $5c
    ld b, [hl]                                    ; $75d9: $46
    adc e                                         ; $75da: $8b
    adc h                                         ; $75db: $8c
    jr c, jr_07a_75fd                             ; $75dc: $38 $1f

    ld b, $06                                     ; $75de: $06 $06
    ld b, $06                                     ; $75e0: $06 $06
    ld c, $0e                                     ; $75e2: $0e $0e
    ld b, $06                                     ; $75e4: $06 $06
    adc d                                         ; $75e6: $8a
    adc d                                         ; $75e7: $8a
    dec b                                         ; $75e8: $05
    dec b                                         ; $75e9: $05
    adc d                                         ; $75ea: $8a
    adc d                                         ; $75eb: $8a
    dec b                                         ; $75ec: $05
    dec b                                         ; $75ed: $05
    ld b, a                                       ; $75ee: $47
    xor $ed                                       ; $75ef: $ee $ed
    db $ed                                        ; $75f1: $ed
    ld c, e                                       ; $75f2: $4b
    xor $ed                                       ; $75f3: $ee $ed
    db $ed                                        ; $75f5: $ed
    ld c, a                                       ; $75f6: $4f
    xor $ed                                       ; $75f7: $ee $ed
    db $ed                                        ; $75f9: $ed
    ld b, d                                       ; $75fa: $42
    xor $ed                                       ; $75fb: $ee $ed

jr_07a_75fd:
    db $ed                                        ; $75fd: $ed
    rlca                                          ; $75fe: $07
    add b                                         ; $75ff: $80
    add b                                         ; $7600: $80
    add b                                         ; $7601: $80
    rlca                                          ; $7602: $07
    add b                                         ; $7603: $80
    add b                                         ; $7604: $80
    add b                                         ; $7605: $80
    rlca                                          ; $7606: $07
    add b                                         ; $7607: $80
    add b                                         ; $7608: $80
    add b                                         ; $7609: $80
    rlca                                          ; $760a: $07
    add b                                         ; $760b: $80
    add b                                         ; $760c: $80
    add b                                         ; $760d: $80
    adc l                                         ; $760e: $8d
    adc [hl]                                      ; $760f: $8e
    adc a                                         ; $7610: $8f
    sub b                                         ; $7611: $90
    sub c                                         ; $7612: $91
    sub d                                         ; $7613: $92
    sub d                                         ; $7614: $92
    sub d                                         ; $7615: $92
    sub e                                         ; $7616: $93
    ld d, l                                       ; $7617: $55
    ld d, [hl]                                    ; $7618: $56
    ld b, h                                       ; $7619: $44
    sub h                                         ; $761a: $94
    adc b                                         ; $761b: $88
    ld [hl], h                                    ; $761c: $74
    ld b, l                                       ; $761d: $45
    ld c, $0e                                     ; $761e: $0e $0e
    ld c, $0e                                     ; $7620: $0e $0e
    add hl, bc                                    ; $7622: $09
    add hl, bc                                    ; $7623: $09
    add hl, bc                                    ; $7624: $09
    add hl, bc                                    ; $7625: $09
    ld c, $05                                     ; $7626: $0e $05
    dec b                                         ; $7628: $05
    ld b, $0d                                     ; $7629: $06 $0d
    dec c                                         ; $762b: $0d
    ld b, $06                                     ; $762c: $06 $06
    sub l                                         ; $762e: $95
    xor $ed                                       ; $762f: $ee $ed
    db $ed                                        ; $7631: $ed
    sub c                                         ; $7632: $91
    sub [hl]                                      ; $7633: $96
    sub a                                         ; $7634: $97
    sub a                                         ; $7635: $97
    ld b, a                                       ; $7636: $47
    sbc b                                         ; $7637: $98
    sbc c                                         ; $7638: $99
    sbc d                                         ; $7639: $9a
    ld c, e                                       ; $763a: $4b
    sbc e                                         ; $763b: $9b
    inc bc                                        ; $763c: $03
    sbc h                                         ; $763d: $9c
    rrca                                          ; $763e: $0f
    add b                                         ; $763f: $80
    add b                                         ; $7640: $80
    add b                                         ; $7641: $80
    add hl, hl                                    ; $7642: $29
    adc b                                         ; $7643: $88
    adc b                                         ; $7644: $88
    adc b                                         ; $7645: $88
    rlca                                          ; $7646: $07
    inc c                                         ; $7647: $0c
    inc c                                         ; $7648: $0c
    inc c                                         ; $7649: $0c
    rlca                                          ; $764a: $07
    inc c                                         ; $764b: $0c
    inc b                                         ; $764c: $04
    inc c                                         ; $764d: $0c
    db $ed                                        ; $764e: $ed
    db $ed                                        ; $764f: $ed
    db $ed                                        ; $7650: $ed
    db $ed                                        ; $7651: $ed
    sub a                                         ; $7652: $97
    sub a                                         ; $7653: $97
    sub a                                         ; $7654: $97
    sub a                                         ; $7655: $97
    sbc l                                         ; $7656: $9d
    sbc [hl]                                      ; $7657: $9e
    sbc c                                         ; $7658: $99
    sbc d                                         ; $7659: $9a
    inc bc                                        ; $765a: $03
    inc bc                                        ; $765b: $03
    inc bc                                        ; $765c: $03
    inc bc                                        ; $765d: $03
    add b                                         ; $765e: $80
    add b                                         ; $765f: $80
    add b                                         ; $7660: $80
    add b                                         ; $7661: $80
    adc b                                         ; $7662: $88
    adc b                                         ; $7663: $88
    adc b                                         ; $7664: $88
    adc b                                         ; $7665: $88
    inc c                                         ; $7666: $0c
    inc c                                         ; $7667: $0c
    inc c                                         ; $7668: $0c
    inc c                                         ; $7669: $0c
    inc b                                         ; $766a: $04
    inc b                                         ; $766b: $04
    inc b                                         ; $766c: $04
    inc b                                         ; $766d: $04
    db $ed                                        ; $766e: $ed
    db $ed                                        ; $766f: $ed
    db $ed                                        ; $7670: $ed
    db $ed                                        ; $7671: $ed
    sub a                                         ; $7672: $97
    sub a                                         ; $7673: $97
    sub a                                         ; $7674: $97
    sub a                                         ; $7675: $97
    sbc l                                         ; $7676: $9d
    sbc a                                         ; $7677: $9f
    and b                                         ; $7678: $a0
    sbc d                                         ; $7679: $9a
    and c                                         ; $767a: $a1
    and d                                         ; $767b: $a2
    and e                                         ; $767c: $a3
    inc bc                                        ; $767d: $03
    add b                                         ; $767e: $80
    add b                                         ; $767f: $80
    add b                                         ; $7680: $80
    add b                                         ; $7681: $80
    adc b                                         ; $7682: $88
    adc b                                         ; $7683: $88
    adc b                                         ; $7684: $88
    adc b                                         ; $7685: $88
    inc c                                         ; $7686: $0c
    inc c                                         ; $7687: $0c
    inc c                                         ; $7688: $0c
    inc c                                         ; $7689: $0c
    inc c                                         ; $768a: $0c
    inc c                                         ; $768b: $0c
    inc c                                         ; $768c: $0c
    inc b                                         ; $768d: $04
    db $ed                                        ; $768e: $ed
    db $ed                                        ; $768f: $ed
    db $ed                                        ; $7690: $ed
    db $ed                                        ; $7691: $ed
    and h                                         ; $7692: $a4
    db $ed                                        ; $7693: $ed
    db $ed                                        ; $7694: $ed
    db $ed                                        ; $7695: $ed
    xor $ed                                       ; $7696: $ee $ed
    db $ed                                        ; $7698: $ed
    db $ed                                        ; $7699: $ed
    and l                                         ; $769a: $a5
    db $ed                                        ; $769b: $ed
    db $ed                                        ; $769c: $ed
    db $ed                                        ; $769d: $ed
    add b                                         ; $769e: $80
    add b                                         ; $769f: $80
    add b                                         ; $76a0: $80
    add b                                         ; $76a1: $80
    adc b                                         ; $76a2: $88
    add b                                         ; $76a3: $80
    add b                                         ; $76a4: $80
    add b                                         ; $76a5: $80
    add b                                         ; $76a6: $80
    add b                                         ; $76a7: $80
    add b                                         ; $76a8: $80
    add b                                         ; $76a9: $80
    adc b                                         ; $76aa: $88
    add b                                         ; $76ab: $80
    add b                                         ; $76ac: $80
    add b                                         ; $76ad: $80
    db $ed                                        ; $76ae: $ed
    db $ed                                        ; $76af: $ed
    xor $46                                       ; $76b0: $ee $46
    db $ed                                        ; $76b2: $ed
    db $ed                                        ; $76b3: $ed
    xor $1f                                       ; $76b4: $ee $1f
    db $ed                                        ; $76b6: $ed
    db $ed                                        ; $76b7: $ed
    xor $20                                       ; $76b8: $ee $20
    db $ed                                        ; $76ba: $ed
    db $ed                                        ; $76bb: $ed
    xor $21                                       ; $76bc: $ee $21
    add b                                         ; $76be: $80
    add b                                         ; $76bf: $80
    add b                                         ; $76c0: $80
    rlca                                          ; $76c1: $07
    add b                                         ; $76c2: $80
    add b                                         ; $76c3: $80
    add b                                         ; $76c4: $80
    rlca                                          ; $76c5: $07
    add b                                         ; $76c6: $80
    add b                                         ; $76c7: $80
    add b                                         ; $76c8: $80
    rlca                                          ; $76c9: $07
    add b                                         ; $76ca: $80
    add b                                         ; $76cb: $80
    add b                                         ; $76cc: $80
    rlca                                          ; $76cd: $07
    ld c, a                                       ; $76ce: $4f
    ld d, b                                       ; $76cf: $50
    ld d, c                                       ; $76d0: $51
    and [hl]                                      ; $76d1: $a6
    ld b, d                                       ; $76d2: $42
    ld b, e                                       ; $76d3: $43
    jr z, @+$2b                                   ; $76d4: $28 $29

    ld a, [hl+]                                   ; $76d6: $2a
    dec hl                                        ; $76d7: $2b
    adc d                                         ; $76d8: $8a
    adc c                                         ; $76d9: $89
    ld l, $2f                                     ; $76da: $2e $2f
    adc h                                         ; $76dc: $8c
    adc e                                         ; $76dd: $8b
    ld b, $05                                     ; $76de: $06 $05
    dec b                                         ; $76e0: $05
    dec c                                         ; $76e1: $0d
    ld b, $06                                     ; $76e2: $06 $06
    ld b, $05                                     ; $76e4: $06 $05
    dec b                                         ; $76e6: $05
    ld b, $a9                                     ; $76e7: $06 $a9
    xor c                                         ; $76e9: $a9
    ld b, $06                                     ; $76ea: $06 $06
    xor c                                         ; $76ec: $a9
    xor c                                         ; $76ed: $a9
    and a                                         ; $76ee: $a7
    xor b                                         ; $76ef: $a8
    ld e, h                                       ; $76f0: $5c
    ld b, [hl]                                    ; $76f1: $46
    ld h, b                                       ; $76f2: $60
    ld e, a                                       ; $76f3: $5f
    jr c, jr_07a_7715                             ; $76f4: $38 $1f

    ld h, d                                       ; $76f6: $62
    ld h, c                                       ; $76f7: $61
    dec sp                                        ; $76f8: $3b
    jr nz, @+$66                                  ; $76f9: $20 $64

    ld h, e                                       ; $76fb: $63
    ld a, $21                                     ; $76fc: $3e $21
    ld c, $0d                                     ; $76fe: $0e $0d
    dec b                                         ; $7700: $05
    dec b                                         ; $7701: $05
    and c                                         ; $7702: $a1
    and c                                         ; $7703: $a1
    ld b, $06                                     ; $7704: $06 $06
    and c                                         ; $7706: $a1
    and c                                         ; $7707: $a1
    ld b, $06                                     ; $7708: $06 $06
    and c                                         ; $770a: $a1
    and c                                         ; $770b: $a1
    ld b, $06                                     ; $770c: $06 $06
    ld c, a                                       ; $770e: $4f
    xor c                                         ; $770f: $a9
    db $ed                                        ; $7710: $ed
    db $ed                                        ; $7711: $ed
    ld b, d                                       ; $7712: $42
    xor d                                         ; $7713: $aa
    rst $30                                       ; $7714: $f7

jr_07a_7715:
    ld hl, sp+$2a                                 ; $7715: $f8 $2a
    xor e                                         ; $7717: $ab
    ei                                            ; $7718: $fb
    db $fc                                        ; $7719: $fc
    ld l, $ac                                     ; $771a: $2e $ac
    rst $38                                       ; $771c: $ff
    nop                                           ; $771d: $00
    dec b                                         ; $771e: $05
    ld c, $01                                     ; $771f: $0e $01
    ld bc, $0e05                                  ; $7721: $01 $05 $0e
    add e                                         ; $7724: $83
    add e                                         ; $7725: $83
    dec b                                         ; $7726: $05
    ld c, $83                                     ; $7727: $0e $83
    add e                                         ; $7729: $83
    dec b                                         ; $772a: $05
    ld c, $83                                     ; $772b: $0e $83
    add e                                         ; $772d: $83
    db $ed                                        ; $772e: $ed
    db $ed                                        ; $772f: $ed
    xor $ad                                       ; $7730: $ee $ad
    db $ed                                        ; $7732: $ed
    db $ed                                        ; $7733: $ed
    xor $91                                       ; $7734: $ee $91
    db $ed                                        ; $7736: $ed
    db $ed                                        ; $7737: $ed
    xor $46                                       ; $7738: $ee $46
    db $ed                                        ; $773a: $ed
    db $ed                                        ; $773b: $ed
    xor $1f                                       ; $773c: $ee $1f
    add b                                         ; $773e: $80
    add b                                         ; $773f: $80
    add b                                         ; $7740: $80
    rrca                                          ; $7741: $0f
    add b                                         ; $7742: $80
    add b                                         ; $7743: $80
    add b                                         ; $7744: $80
    add hl, bc                                    ; $7745: $09
    add b                                         ; $7746: $80
    add b                                         ; $7747: $80
    add b                                         ; $7748: $80
    rlca                                          ; $7749: $07
    add b                                         ; $774a: $80
    add b                                         ; $774b: $80
    add b                                         ; $774c: $80
    rlca                                          ; $774d: $07
    xor [hl]                                      ; $774e: $ae
    xor a                                         ; $774f: $af
    or b                                          ; $7750: $b0
    or c                                          ; $7751: $b1
    sub d                                         ; $7752: $92
    sub d                                         ; $7753: $92
    sub d                                         ; $7754: $92
    sub c                                         ; $7755: $91
    ld c, a                                       ; $7756: $4f
    ld d, b                                       ; $7757: $50
    ld d, c                                       ; $7758: $51
    and [hl]                                      ; $7759: $a6
    ld b, d                                       ; $775a: $42
    ld b, e                                       ; $775b: $43
    jr z, @+$2b                                   ; $775c: $28 $29

    ld c, $0e                                     ; $775e: $0e $0e
    ld c, $0e                                     ; $7760: $0e $0e
    add hl, bc                                    ; $7762: $09
    add hl, bc                                    ; $7763: $09
    add hl, bc                                    ; $7764: $09
    add hl, hl                                    ; $7765: $29
    ld b, $06                                     ; $7766: $06 $06
    dec b                                         ; $7768: $05
    dec c                                         ; $7769: $0d
    ld b, $06                                     ; $776a: $06 $06
    ld b, $05                                     ; $776c: $06 $05
    halt                                          ; $776e: $76
    ld [hl], l                                    ; $776f: $75
    ld d, [hl]                                    ; $7770: $56
    ld b, h                                       ; $7771: $44
    or d                                          ; $7772: $b2
    or e                                          ; $7773: $b3
    or h                                          ; $7774: $b4
    or l                                          ; $7775: $b5
    or [hl]                                       ; $7776: $b6
    or a                                          ; $7777: $b7
    ld e, h                                       ; $7778: $5c
    ld b, [hl]                                    ; $7779: $46
    cp b                                          ; $777a: $b8
    cp c                                          ; $777b: $b9
    jr c, jr_07a_779d                             ; $777c: $38 $1f

    ld hl, $0621                                  ; $777e: $21 $21 $06
    ld b, $09                                     ; $7781: $06 $09
    add hl, bc                                    ; $7783: $09
    ld c, $0e                                     ; $7784: $0e $0e
    ld c, $0e                                     ; $7786: $0e $0e
    ld b, $06                                     ; $7788: $06 $06
    dec c                                         ; $778a: $0d
    ld c, $06                                     ; $778b: $0e $06
    ld b, $47                                     ; $778d: $06 $47
    cp d                                          ; $778f: $ba
    ld [hl+], a                                   ; $7790: $22
    inc hl                                        ; $7791: $23
    cp e                                          ; $7792: $bb
    cp h                                          ; $7793: $bc
    cp l                                          ; $7794: $bd
    cp [hl]                                       ; $7795: $be
    ld c, a                                       ; $7796: $4f
    cp a                                          ; $7797: $bf
    ld a, h                                       ; $7798: $7c
    ld a, l                                       ; $7799: $7d
    ld b, d                                       ; $779a: $42
    xor d                                         ; $779b: $aa
    db $ed                                        ; $779c: $ed

jr_07a_779d:
    db $ed                                        ; $779d: $ed
    ld b, $0d                                     ; $779e: $06 $0d
    add e                                         ; $77a0: $83
    add e                                         ; $77a1: $83
    ld c, $0e                                     ; $77a2: $0e $0e
    add hl, bc                                    ; $77a4: $09
    add hl, bc                                    ; $77a5: $09
    ld b, $0e                                     ; $77a6: $06 $0e
    ld bc, $0501                                  ; $77a8: $01 $01 $05
    ld c, $01                                     ; $77ab: $0e $01
    ld bc, $2b2a                                  ; $77ad: $01 $2a $2b
    inc l                                         ; $77b0: $2c
    dec l                                         ; $77b1: $2d
    ld l, $2f                                     ; $77b2: $2e $2f
    jr nc, @-$05                                  ; $77b4: $30 $f9

    ld b, a                                       ; $77b6: $47
    ld c, b                                       ; $77b7: $48
    ld c, c                                       ; $77b8: $49
    db $fd                                        ; $77b9: $fd
    ld c, e                                       ; $77ba: $4b
    ld c, h                                       ; $77bb: $4c
    ld c, l                                       ; $77bc: $4d
    ld bc, $0605                                  ; $77bd: $01 $05 $06
    ld b, $06                                     ; $77c0: $06 $06
    dec b                                         ; $77c2: $05
    ld b, $05                                     ; $77c3: $06 $05
    and d                                         ; $77c5: $a2
    dec b                                         ; $77c6: $05
    ld b, $06                                     ; $77c7: $06 $06
    and d                                         ; $77c9: $a2
    ld b, $05                                     ; $77ca: $06 $05
    dec b                                         ; $77cc: $05
    and d                                         ; $77cd: $a2
    ret nz                                        ; $77ce: $c0

    pop bc                                        ; $77cf: $c1
    dec sp                                        ; $77d0: $3b
    jr nz, @-$06                                  ; $77d1: $20 $f8

    rst $30                                       ; $77d3: $f7
    ld a, $21                                     ; $77d4: $3e $21
    db $fc                                        ; $77d6: $fc
    ei                                            ; $77d7: $fb
    ld d, [hl]                                    ; $77d8: $56
    ld b, h                                       ; $77d9: $44
    nop                                           ; $77da: $00
    rst $38                                       ; $77db: $ff
    ld [hl], h                                    ; $77dc: $74
    ld b, l                                       ; $77dd: $45
    ld c, $0e                                     ; $77de: $0e $0e
    ld b, $05                                     ; $77e0: $06 $05
    and d                                         ; $77e2: $a2
    and d                                         ; $77e3: $a2
    dec b                                         ; $77e4: $05
    ld b, $a2                                     ; $77e5: $06 $a2
    and d                                         ; $77e7: $a2
    ld b, $06                                     ; $77e8: $06 $06
    and d                                         ; $77ea: $a2
    and d                                         ; $77eb: $a2
    ld b, $05                                     ; $77ec: $06 $05
    ld a, [hl+]                                   ; $77ee: $2a
    xor e                                         ; $77ef: $ab
    db $ed                                        ; $77f0: $ed
    db $ed                                        ; $77f1: $ed
    ld l, $59                                     ; $77f2: $2e $59
    ld e, b                                       ; $77f4: $58
    ld d, a                                       ; $77f5: $57
    ld b, a                                       ; $77f6: $47
    jp nz, Jump_07a_5a5b                          ; $77f7: $c2 $5b $5a

    ld c, e                                       ; $77fa: $4b
    ld a, [hl]                                    ; $77fb: $7e
    ld e, [hl]                                    ; $77fc: $5e
    ld e, l                                       ; $77fd: $5d
    dec b                                         ; $77fe: $05
    dec c                                         ; $77ff: $0d
    ld bc, $0601                                  ; $7800: $01 $01 $06
    and c                                         ; $7803: $a1
    and e                                         ; $7804: $a3
    and e                                         ; $7805: $a3
    ld b, $0e                                     ; $7806: $06 $0e
    and e                                         ; $7808: $a3
    and e                                         ; $7809: $a3
    dec b                                         ; $780a: $05
    ld b, $23                                     ; $780b: $06 $23
    and e                                         ; $780d: $a3
    ld c, a                                       ; $780e: $4f
    ld d, b                                       ; $780f: $50
    ld d, c                                       ; $7810: $51
    and [hl]                                      ; $7811: $a6
    jp $c5c4                                      ; $7812: $c3 $c4 $c5


    add $2a                                       ; $7815: $c6 $2a
    dec hl                                        ; $7817: $2b
    inc l                                         ; $7818: $2c
    dec l                                         ; $7819: $2d
    ld l, $2f                                     ; $781a: $2e $2f
    jr nc, @+$33                                  ; $781c: $30 $31

    ld b, $06                                     ; $781e: $06 $06
    ld b, $0e                                     ; $7820: $06 $0e
    dec c                                         ; $7822: $0d
    ld c, $0e                                     ; $7823: $0e $0e
    ld c, $05                                     ; $7825: $0e $05
    dec b                                         ; $7827: $05
    ld b, $06                                     ; $7828: $06 $06
    ld b, $05                                     ; $782a: $06 $05
    dec b                                         ; $782c: $05
    ld b, $23                                     ; $782d: $06 $23
    ld [hl+], a                                   ; $782f: $22
    rst $00                                       ; $7830: $c7
    ret z                                         ; $7831: $c8

    daa                                           ; $7832: $27
    ld h, $91                                     ; $7833: $26 $91
    sub d                                         ; $7835: $92
    ret                                           ; $7836: $c9


    jp z, $cb3b                                   ; $7837: $ca $3b $cb

    call z, Call_000_3ecd                         ; $783a: $cc $cd $3e
    ld hl, $2222                                  ; $783d: $21 $22 $22
    ld c, $0e                                     ; $7840: $0e $0e
    ld [hl+], a                                   ; $7842: $22
    ld [hl+], a                                   ; $7843: $22
    add hl, bc                                    ; $7844: $09
    add hl, bc                                    ; $7845: $09
    ld c, $0e                                     ; $7846: $0e $0e
    dec b                                         ; $7848: $05
    dec c                                         ; $7849: $0d
    ld c, $0e                                     ; $784a: $0e $0e
    ld b, $05                                     ; $784c: $06 $05
    adc $cf                                       ; $784e: $ce $cf
    ld l, e                                       ; $7850: $6b
    ld l, d                                       ; $7851: $6a
    sub d                                         ; $7852: $92
    sub c                                         ; $7853: $91
    ld l, l                                       ; $7854: $6d
    ld l, h                                       ; $7855: $6c
    ld a, [hl+]                                   ; $7856: $2a
    dec hl                                        ; $7857: $2b
    ret nc                                        ; $7858: $d0

    pop de                                        ; $7859: $d1
    ld l, $2f                                     ; $785a: $2e $2f
    jp nc, $0ed3                                  ; $785c: $d2 $d3 $0e

    ld c, $23                                     ; $785f: $0e $23
    inc hl                                        ; $7861: $23
    add hl, bc                                    ; $7862: $09
    add hl, hl                                    ; $7863: $29
    ld hl, $0621                                  ; $7864: $21 $21 $06
    dec b                                         ; $7867: $05
    dec c                                         ; $7868: $0d
    dec c                                         ; $7869: $0d
    dec b                                         ; $786a: $05
    ld b, $0d                                     ; $786b: $06 $0d
    dec c                                         ; $786d: $0d
    call nc, Call_07a_5cd5                        ; $786e: $d4 $d5 $5c
    ld b, [hl]                                    ; $7871: $46
    ld sp, hl                                     ; $7872: $f9
    scf                                           ; $7873: $37
    jr c, jr_07a_7895                             ; $7874: $38 $1f

    db $fd                                        ; $7876: $fd
    ld a, [hl-]                                   ; $7877: $3a
    dec sp                                        ; $7878: $3b
    jr nz, jr_07a_787c                            ; $7879: $20 $01

    dec a                                         ; $787b: $3d

jr_07a_787c:
    ld a, $21                                     ; $787c: $3e $21
    dec c                                         ; $787e: $0d
    ld c, $05                                     ; $787f: $0e $05
    ld b, $81                                     ; $7881: $06 $81
    ld b, $06                                     ; $7883: $06 $06
    dec b                                         ; $7885: $05
    add c                                         ; $7886: $81
    ld b, $05                                     ; $7887: $06 $05
    dec b                                         ; $7889: $05
    add c                                         ; $788a: $81
    dec b                                         ; $788b: $05
    dec b                                         ; $788c: $05
    ld b, $4f                                     ; $788d: $06 $4f
    sub $17                                       ; $788f: $d6 $17
    jr jr_07a_78d5                                ; $7891: $18 $42

    rst $10                                       ; $7893: $d7
    dec de                                        ; $7894: $1b

jr_07a_7895:
    inc e                                         ; $7895: $1c
    ld a, [hl+]                                   ; $7896: $2a
    ret c                                         ; $7897: $d8

    ccf                                           ; $7898: $3f
    ld b, b                                       ; $7899: $40
    ld l, $2f                                     ; $789a: $2e $2f
    jr nc, jr_07a_78cf                            ; $789c: $30 $31

    rlca                                          ; $789e: $07
    inc c                                         ; $789f: $0c
    inc b                                         ; $78a0: $04
    inc b                                         ; $78a1: $04
    rlca                                          ; $78a2: $07
    inc c                                         ; $78a3: $0c
    inc b                                         ; $78a4: $04
    inc b                                         ; $78a5: $04
    rlca                                          ; $78a6: $07
    inc c                                         ; $78a7: $0c
    inc b                                         ; $78a8: $04
    inc b                                         ; $78a9: $04
    rlca                                          ; $78aa: $07
    rlca                                          ; $78ab: $07
    rlca                                          ; $78ac: $07
    rlca                                          ; $78ad: $07
    reti                                          ; $78ae: $d9


    ld d, $da                                     ; $78af: $16 $da
    db $db                                        ; $78b1: $db
    dec e                                         ; $78b2: $1d
    ld a, [de]                                    ; $78b3: $1a
    call c, Call_07a_4110                         ; $78b4: $dc $10 $41
    dec h                                         ; $78b7: $25
    inc sp                                        ; $78b8: $33
    inc [hl]                                      ; $78b9: $34
    inc a                                         ; $78ba: $3c
    dec a                                         ; $78bb: $3d
    ld a, $21                                     ; $78bc: $3e $21
    inc c                                         ; $78be: $0c
    inc b                                         ; $78bf: $04
    inc c                                         ; $78c0: $0c
    inc c                                         ; $78c1: $0c
    inc b                                         ; $78c2: $04
    inc b                                         ; $78c3: $04
    inc c                                         ; $78c4: $0c
    inc b                                         ; $78c5: $04
    inc b                                         ; $78c6: $04
    inc b                                         ; $78c7: $04
    inc b                                         ; $78c8: $04
    inc b                                         ; $78c9: $04
    rlca                                          ; $78ca: $07
    rlca                                          ; $78cb: $07
    rlca                                          ; $78cc: $07
    rlca                                          ; $78cd: $07
    db $dd                                        ; $78ce: $dd

jr_07a_78cf:
    sbc $df                                       ; $78cf: $de $df
    db $db                                        ; $78d1: $db
    ld de, $dc1a                                  ; $78d2: $11 $1a $dc

jr_07a_78d5:
    db $10                                        ; $78d5: $10
    dec [hl]                                      ; $78d6: $35
    dec h                                         ; $78d7: $25
    inc sp                                        ; $78d8: $33
    inc [hl]                                      ; $78d9: $34
    ld l, $2f                                     ; $78da: $2e $2f
    jr nc, jr_07a_790f                            ; $78dc: $30 $31

    inc c                                         ; $78de: $0c
    inc c                                         ; $78df: $0c
    inc c                                         ; $78e0: $0c
    inc c                                         ; $78e1: $0c
    inc b                                         ; $78e2: $04
    inc b                                         ; $78e3: $04
    inc c                                         ; $78e4: $0c
    inc b                                         ; $78e5: $04
    inc b                                         ; $78e6: $04
    inc b                                         ; $78e7: $04
    inc b                                         ; $78e8: $04
    inc b                                         ; $78e9: $04
    rlca                                          ; $78ea: $07
    rlca                                          ; $78eb: $07
    rlca                                          ; $78ec: $07
    rlca                                          ; $78ed: $07
    ld d, h                                       ; $78ee: $54
    ld d, l                                       ; $78ef: $55
    ld d, [hl]                                    ; $78f0: $56
    ld b, h                                       ; $78f1: $44
    add a                                         ; $78f2: $87
    adc b                                         ; $78f3: $88
    ld [hl], h                                    ; $78f4: $74
    ld b, l                                       ; $78f5: $45
    ldh [$d5], a                                  ; $78f6: $e0 $d5
    ld e, h                                       ; $78f8: $5c
    ld b, [hl]                                    ; $78f9: $46
    pop hl                                        ; $78fa: $e1
    scf                                           ; $78fb: $37
    jr c, jr_07a_791d                             ; $78fc: $38 $1f

    ld b, $06                                     ; $78fe: $06 $06
    ld b, $06                                     ; $7900: $06 $06
    ld c, $0d                                     ; $7902: $0e $0d
    ld b, $06                                     ; $7904: $06 $06
    ld c, $0d                                     ; $7906: $0e $0d
    ld b, $06                                     ; $7908: $06 $06
    ld c, $06                                     ; $790a: $0e $06
    dec b                                         ; $790c: $05
    ld b, $47                                     ; $790d: $06 $47

jr_07a_790f:
    ld c, b                                       ; $790f: $48
    ld c, c                                       ; $7910: $49
    ld c, d                                       ; $7911: $4a
    ld c, e                                       ; $7912: $4b
    ld [c], a                                     ; $7913: $e2
    sub a                                         ; $7914: $97
    sub a                                         ; $7915: $97
    ld c, a                                       ; $7916: $4f
    xor $ed                                       ; $7917: $ee $ed
    db $ed                                        ; $7919: $ed
    ld b, d                                       ; $791a: $42
    xor $ed                                       ; $791b: $ee $ed

jr_07a_791d:
    db $ed                                        ; $791d: $ed
    ld b, $05                                     ; $791e: $06 $05
    dec b                                         ; $7920: $05
    dec b                                         ; $7921: $05
    ld b, $88                                     ; $7922: $06 $88
    adc b                                         ; $7924: $88
    adc b                                         ; $7925: $88
    ld b, $80                                     ; $7926: $06 $80
    add b                                         ; $7928: $80
    add b                                         ; $7929: $80
    rlca                                          ; $792a: $07
    add b                                         ; $792b: $80
    add b                                         ; $792c: $80
    add b                                         ; $792d: $80
    ld d, h                                       ; $792e: $54
    ld d, l                                       ; $792f: $55
    ld d, [hl]                                    ; $7930: $56
    ld b, h                                       ; $7931: $44
    sub a                                         ; $7932: $97
    sub a                                         ; $7933: $97
    sub a                                         ; $7934: $97
    sub a                                         ; $7935: $97
    db $ed                                        ; $7936: $ed
    db $ed                                        ; $7937: $ed
    db $ed                                        ; $7938: $ed
    db $ed                                        ; $7939: $ed
    db $ed                                        ; $793a: $ed
    db $ed                                        ; $793b: $ed
    db $ed                                        ; $793c: $ed
    db $ed                                        ; $793d: $ed
    dec b                                         ; $793e: $05
    ld b, $06                                     ; $793f: $06 $06
    ld b, $88                                     ; $7941: $06 $88
    adc b                                         ; $7943: $88
    adc b                                         ; $7944: $88
    adc b                                         ; $7945: $88
    add b                                         ; $7946: $80
    add b                                         ; $7947: $80
    add b                                         ; $7948: $80
    add b                                         ; $7949: $80
    add b                                         ; $794a: $80
    add b                                         ; $794b: $80
    add b                                         ; $794c: $80
    add b                                         ; $794d: $80
    ld b, a                                       ; $794e: $47
    ld c, b                                       ; $794f: $48
    ld c, c                                       ; $7950: $49
    ld c, d                                       ; $7951: $4a
    sub a                                         ; $7952: $97
    sub a                                         ; $7953: $97
    sub a                                         ; $7954: $97
    sub a                                         ; $7955: $97
    db $ed                                        ; $7956: $ed

jr_07a_7957:
    db $ed                                        ; $7957: $ed
    db $ed                                        ; $7958: $ed
    db $ed                                        ; $7959: $ed
    db $ed                                        ; $795a: $ed
    db $ed                                        ; $795b: $ed
    db $ed                                        ; $795c: $ed
    db $ed                                        ; $795d: $ed
    ld b, $06                                     ; $795e: $06 $06
    dec b                                         ; $7960: $05
    rlca                                          ; $7961: $07
    adc b                                         ; $7962: $88
    adc b                                         ; $7963: $88
    adc b                                         ; $7964: $88
    adc b                                         ; $7965: $88
    add b                                         ; $7966: $80
    add b                                         ; $7967: $80
    add b                                         ; $7968: $80
    add b                                         ; $7969: $80
    add b                                         ; $796a: $80
    add b                                         ; $796b: $80
    add b                                         ; $796c: $80
    add b                                         ; $796d: $80
    db $e3                                        ; $796e: $e3
    ld a, [hl-]                                   ; $796f: $3a
    dec sp                                        ; $7970: $3b
    jr nz, jr_07a_7957                            ; $7971: $20 $e4

    dec a                                         ; $7973: $3d
    ld a, $21                                     ; $7974: $3e $21
    ld d, d                                       ; $7976: $52
    ld d, l                                       ; $7977: $55
    ld d, [hl]                                    ; $7978: $56
    ld b, h                                       ; $7979: $44
    ld d, e                                       ; $797a: $53
    adc b                                         ; $797b: $88
    ld [hl], h                                    ; $797c: $74
    ld b, l                                       ; $797d: $45
    ld c, $06                                     ; $797e: $0e $06
    ld b, $05                                     ; $7980: $06 $05
    ld c, $06                                     ; $7982: $0e $06
    ld b, $05                                     ; $7984: $06 $05
    and c                                         ; $7986: $a1
    ld b, $06                                     ; $7987: $06 $06
    dec b                                         ; $7989: $05
    and c                                         ; $798a: $a1
    ld c, $06                                     ; $798b: $0e $06
    ld b, $2a                                     ; $798d: $06 $2a
    xor $ed                                       ; $798f: $ee $ed
    db $ed                                        ; $7991: $ed
    ld l, $ee                                     ; $7992: $2e $ee
    db $ed                                        ; $7994: $ed
    db $ed                                        ; $7995: $ed
    ld b, a                                       ; $7996: $47
    xor $ed                                       ; $7997: $ee $ed
    db $ed                                        ; $7999: $ed
    ld c, e                                       ; $799a: $4b
    xor $ed                                       ; $799b: $ee $ed
    db $ed                                        ; $799d: $ed
    rlca                                          ; $799e: $07
    add b                                         ; $799f: $80
    add b                                         ; $79a0: $80
    add b                                         ; $79a1: $80
    rlca                                          ; $79a2: $07
    add b                                         ; $79a3: $80
    add b                                         ; $79a4: $80
    add b                                         ; $79a5: $80
    rlca                                          ; $79a6: $07
    add b                                         ; $79a7: $80
    add b                                         ; $79a8: $80
    add b                                         ; $79a9: $80
    rlca                                          ; $79aa: $07
    add b                                         ; $79ab: $80
    add b                                         ; $79ac: $80
    add b                                         ; $79ad: $80
    push hl                                       ; $79ae: $e5
    push de                                       ; $79af: $d5
    ld e, h                                       ; $79b0: $5c
    ld b, [hl]                                    ; $79b1: $46
    and $e7                                       ; $79b2: $e6 $e7
    add sp, -$17                                  ; $79b4: $e8 $e9
    add hl, sp                                    ; $79b6: $39
    ld a, [hl-]                                   ; $79b7: $3a
    dec sp                                        ; $79b8: $3b
    jr nz, jr_07a_79f7                            ; $79b9: $20 $3c

    dec a                                         ; $79bb: $3d
    ld a, $21                                     ; $79bc: $3e $21
    ld c, $0d                                     ; $79be: $0e $0d
    ld b, $06                                     ; $79c0: $06 $06
    ld c, $0e                                     ; $79c2: $0e $0e
    ld c, $0e                                     ; $79c4: $0e $0e
    ld b, $06                                     ; $79c6: $06 $06
    dec b                                         ; $79c8: $05
    dec b                                         ; $79c9: $05
    dec b                                         ; $79ca: $05
    dec b                                         ; $79cb: $05
    ld b, $06                                     ; $79cc: $06 $06
    ld c, a                                       ; $79ce: $4f
    xor $ed                                       ; $79cf: $ee $ed
    db $ed                                        ; $79d1: $ed
    ld b, d                                       ; $79d2: $42
    xor $ed                                       ; $79d3: $ee $ed
    db $ed                                        ; $79d5: $ed
    ld a, [hl+]                                   ; $79d6: $2a
    xor $ed                                       ; $79d7: $ee $ed
    db $ed                                        ; $79d9: $ed
    ld l, $ee                                     ; $79da: $2e $ee
    db $ed                                        ; $79dc: $ed
    db $ed                                        ; $79dd: $ed
    rlca                                          ; $79de: $07
    add b                                         ; $79df: $80
    add b                                         ; $79e0: $80
    add b                                         ; $79e1: $80
    rlca                                          ; $79e2: $07
    add b                                         ; $79e3: $80
    add b                                         ; $79e4: $80
    add b                                         ; $79e5: $80
    rlca                                          ; $79e6: $07
    add b                                         ; $79e7: $80
    add b                                         ; $79e8: $80
    add b                                         ; $79e9: $80
    rlca                                          ; $79ea: $07
    add b                                         ; $79eb: $80
    add b                                         ; $79ec: $80
    add b                                         ; $79ed: $80
    and l                                         ; $79ee: $a5
    db $ed                                        ; $79ef: $ed
    db $ed                                        ; $79f0: $ed
    db $ed                                        ; $79f1: $ed
    and l                                         ; $79f2: $a5
    db $ed                                        ; $79f3: $ed
    db $ed                                        ; $79f4: $ed
    db $ed                                        ; $79f5: $ed
    and l                                         ; $79f6: $a5

jr_07a_79f7:
    db $ed                                        ; $79f7: $ed
    db $ed                                        ; $79f8: $ed
    db $ed                                        ; $79f9: $ed
    and l                                         ; $79fa: $a5
    ld [$eded], a                                 ; $79fb: $ea $ed $ed
    adc b                                         ; $79fe: $88
    add b                                         ; $79ff: $80
    add b                                         ; $7a00: $80
    add b                                         ; $7a01: $80
    adc b                                         ; $7a02: $88
    add b                                         ; $7a03: $80
    add b                                         ; $7a04: $80
    add b                                         ; $7a05: $80
    adc b                                         ; $7a06: $88
    add b                                         ; $7a07: $80
    add b                                         ; $7a08: $80
    add b                                         ; $7a09: $80
    adc b                                         ; $7a0a: $88
    adc b                                         ; $7a0b: $88
    add b                                         ; $7a0c: $80
    add b                                         ; $7a0d: $80
    xor $ea                                       ; $7a0e: $ee $ea
    db $ed                                        ; $7a10: $ed
    db $ed                                        ; $7a11: $ed
    db $eb                                        ; $7a12: $eb
    ld [$eded], a                                 ; $7a13: $ea $ed $ed
    db $ed                                        ; $7a16: $ed
    db $ed                                        ; $7a17: $ed
    db $ed                                        ; $7a18: $ed
    db $ed                                        ; $7a19: $ed
    db $ed                                        ; $7a1a: $ed
    db $ed                                        ; $7a1b: $ed
    db $ed                                        ; $7a1c: $ed
    db $ed                                        ; $7a1d: $ed
    add b                                         ; $7a1e: $80
    adc b                                         ; $7a1f: $88
    add b                                         ; $7a20: $80
    add b                                         ; $7a21: $80
    adc b                                         ; $7a22: $88
    adc b                                         ; $7a23: $88
    add b                                         ; $7a24: $80
    add b                                         ; $7a25: $80
    add b                                         ; $7a26: $80
    add b                                         ; $7a27: $80
    add b                                         ; $7a28: $80
    add b                                         ; $7a29: $80
    add b                                         ; $7a2a: $80
    add b                                         ; $7a2b: $80
    add b                                         ; $7a2c: $80
    add b                                         ; $7a2d: $80
    db $ed                                        ; $7a2e: $ed
    db $ed                                        ; $7a2f: $ed
    xor $44                                       ; $7a30: $ee $44
    db $ed                                        ; $7a32: $ed
    db $ed                                        ; $7a33: $ed
    xor $45                                       ; $7a34: $ee $45
    db $ed                                        ; $7a36: $ed
    db $ed                                        ; $7a37: $ed
    xor $46                                       ; $7a38: $ee $46
    db $ed                                        ; $7a3a: $ed
    db $ed                                        ; $7a3b: $ed
    sub [hl]                                      ; $7a3c: $96
    sub a                                         ; $7a3d: $97
    add b                                         ; $7a3e: $80
    add b                                         ; $7a3f: $80
    add b                                         ; $7a40: $80
    rlca                                          ; $7a41: $07
    add b                                         ; $7a42: $80
    add b                                         ; $7a43: $80
    add b                                         ; $7a44: $80
    rlca                                          ; $7a45: $07
    add b                                         ; $7a46: $80
    add b                                         ; $7a47: $80
    add b                                         ; $7a48: $80
    rlca                                          ; $7a49: $07
    add b                                         ; $7a4a: $80
    add b                                         ; $7a4b: $80
    adc b                                         ; $7a4c: $88
    adc b                                         ; $7a4d: $88
    ld b, a                                       ; $7a4e: $47
    ld c, b                                       ; $7a4f: $48
    ld c, c                                       ; $7a50: $49
    ld c, d                                       ; $7a51: $4a
    ld c, e                                       ; $7a52: $4b
    ld c, h                                       ; $7a53: $4c
    ld c, l                                       ; $7a54: $4d
    ld c, [hl]                                    ; $7a55: $4e
    ld c, a                                       ; $7a56: $4f
    ld d, b                                       ; $7a57: $50
    ld d, c                                       ; $7a58: $51
    and [hl]                                      ; $7a59: $a6
    sub a                                         ; $7a5a: $97
    sub a                                         ; $7a5b: $97
    sub a                                         ; $7a5c: $97
    sub a                                         ; $7a5d: $97
    ld b, $06                                     ; $7a5e: $06 $06
    dec b                                         ; $7a60: $05
    ld b, $06                                     ; $7a61: $06 $06
    dec b                                         ; $7a63: $05
    dec b                                         ; $7a64: $05
    ld b, $06                                     ; $7a65: $06 $06
    ld b, $05                                     ; $7a67: $06 $05
    dec c                                         ; $7a69: $0d
    adc b                                         ; $7a6a: $88
    adc b                                         ; $7a6b: $88
    adc b                                         ; $7a6c: $88
    adc b                                         ; $7a6d: $88
    db $ec                                        ; $7a6e: $ec
    db $ed                                        ; $7a6f: $ed
    ld d, [hl]                                    ; $7a70: $56
    ld b, h                                       ; $7a71: $44
    xor $ef                                       ; $7a72: $ee $ef
    ld [hl], h                                    ; $7a74: $74
    ld b, l                                       ; $7a75: $45
    ldh a, [$f1]                                  ; $7a76: $f0 $f1
    ld e, h                                       ; $7a78: $5c
    ld b, [hl]                                    ; $7a79: $46
    sub a                                         ; $7a7a: $97
    and h                                         ; $7a7b: $a4
    jr c, jr_07a_7a9d                             ; $7a7c: $38 $1f

    dec c                                         ; $7a7e: $0d
    dec c                                         ; $7a7f: $0d
    ld b, $06                                     ; $7a80: $06 $06
    ld c, $0e                                     ; $7a82: $0e $0e
    ld b, $06                                     ; $7a84: $06 $06
    ld c, $0e                                     ; $7a86: $0e $0e
    ld b, $06                                     ; $7a88: $06 $06
    adc b                                         ; $7a8a: $88
    adc b                                         ; $7a8b: $88
    ld b, $05                                     ; $7a8c: $06 $05
    ld b, a                                       ; $7a8e: $47
    ld c, b                                       ; $7a8f: $48
    ld a, [c]                                     ; $7a90: $f2
    di                                            ; $7a91: $f3
    ld c, e                                       ; $7a92: $4b
    ld c, h                                       ; $7a93: $4c
    db $f4                                        ; $7a94: $f4
    push af                                       ; $7a95: $f5
    ld c, a                                       ; $7a96: $4f
    ld d, b                                       ; $7a97: $50
    or $f7                                        ; $7a98: $f6 $f7
    ld b, d                                       ; $7a9a: $42
    ld b, e                                       ; $7a9b: $43
    ld [c], a                                     ; $7a9c: $e2

jr_07a_7a9d:
    sub a                                         ; $7a9d: $97
    ld b, $05                                     ; $7a9e: $06 $05

jr_07a_7aa0:
    ld c, $0e                                     ; $7aa0: $0e $0e
    ld b, $06                                     ; $7aa2: $06 $06
    ld c, $0e                                     ; $7aa4: $0e $0e
    ld b, $06                                     ; $7aa6: $06 $06
    ld c, $0e                                     ; $7aa8: $0e $0e
    dec b                                         ; $7aaa: $05
    dec b                                         ; $7aab: $05
    adc b                                         ; $7aac: $88
    adc b                                         ; $7aad: $88
    db $ed                                        ; $7aae: $ed
    xor $3b                                       ; $7aaf: $ee $3b
    jr nz, jr_07a_7aa0                            ; $7ab1: $20 $ed

    sub [hl]                                      ; $7ab3: $96
    ld hl, sp-$08                                 ; $7ab4: $f8 $f8
    db $ed                                        ; $7ab6: $ed
    db $ed                                        ; $7ab7: $ed
    ld sp, hl                                     ; $7ab8: $f9
    ld sp, hl                                     ; $7ab9: $f9
    db $ed                                        ; $7aba: $ed
    db $ed                                        ; $7abb: $ed
    db $ed                                        ; $7abc: $ed
    db $ed                                        ; $7abd: $ed
    add b                                         ; $7abe: $80
    add b                                         ; $7abf: $80
    ld b, $05                                     ; $7ac0: $06 $05
    add b                                         ; $7ac2: $80
    adc b                                         ; $7ac3: $88
    adc b                                         ; $7ac4: $88
    adc b                                         ; $7ac5: $88
    add b                                         ; $7ac6: $80
    add b                                         ; $7ac7: $80
    adc b                                         ; $7ac8: $88
    adc b                                         ; $7ac9: $88
    add b                                         ; $7aca: $80
    add b                                         ; $7acb: $80
    add b                                         ; $7acc: $80
    add b                                         ; $7acd: $80
    ld a, [hl+]                                   ; $7ace: $2a
    dec hl                                        ; $7acf: $2b
    xor $ed                                       ; $7ad0: $ee $ed
    ld hl, sp-$08                                 ; $7ad2: $f8 $f8
    db $eb                                        ; $7ad4: $eb
    db $ed                                        ; $7ad5: $ed
    ld sp, hl                                     ; $7ad6: $f9
    ld sp, hl                                     ; $7ad7: $f9
    db $ed                                        ; $7ad8: $ed
    db $ed                                        ; $7ad9: $ed
    db $ed                                        ; $7ada: $ed
    db $ed                                        ; $7adb: $ed
    db $ed                                        ; $7adc: $ed
    db $ed                                        ; $7add: $ed
    ld b, $06                                     ; $7ade: $06 $06
    add b                                         ; $7ae0: $80
    add b                                         ; $7ae1: $80
    adc b                                         ; $7ae2: $88
    adc b                                         ; $7ae3: $88
    adc b                                         ; $7ae4: $88
    add b                                         ; $7ae5: $80
    adc b                                         ; $7ae6: $88
    adc b                                         ; $7ae7: $88
    add b                                         ; $7ae8: $80
    add b                                         ; $7ae9: $80
    add b                                         ; $7aea: $80
    add b                                         ; $7aeb: $80
    add b                                         ; $7aec: $80
    add b                                         ; $7aed: $80
    ld d, h                                       ; $7aee: $54
    ld d, l                                       ; $7aef: $55
    ld d, [hl]                                    ; $7af0: $56
    ld b, h                                       ; $7af1: $44
    add a                                         ; $7af2: $87
    adc b                                         ; $7af3: $88
    ld [hl], h                                    ; $7af4: $74
    ld b, l                                       ; $7af5: $45
    push hl                                       ; $7af6: $e5
    push de                                       ; $7af7: $d5
    ld e, h                                       ; $7af8: $5c
    ld b, [hl]                                    ; $7af9: $46
    sub a                                         ; $7afa: $97
    sub a                                         ; $7afb: $97
    sub a                                         ; $7afc: $97
    sub a                                         ; $7afd: $97
    dec b                                         ; $7afe: $05
    ld b, $06                                     ; $7aff: $06 $06
    ld b, $0e                                     ; $7b01: $06 $0e
    ld c, $05                                     ; $7b03: $0e $05
    dec b                                         ; $7b05: $05
    ld c, $0d                                     ; $7b06: $0e $0d
    ld b, $06                                     ; $7b08: $06 $06
    adc b                                         ; $7b0a: $88
    adc b                                         ; $7b0b: $88
    adc b                                         ; $7b0c: $88
    adc b                                         ; $7b0d: $88
    ld b, a                                       ; $7b0e: $47
    xor $ed                                       ; $7b0f: $ee $ed
    db $ed                                        ; $7b11: $ed
    ld c, e                                       ; $7b12: $4b
    xor $ed                                       ; $7b13: $ee $ed
    db $ed                                        ; $7b15: $ed
    ld c, a                                       ; $7b16: $4f
    xor $ed                                       ; $7b17: $ee $ed
    db $ed                                        ; $7b19: $ed
    sub a                                         ; $7b1a: $97
    db $eb                                        ; $7b1b: $eb
    db $ed                                        ; $7b1c: $ed
    db $ed                                        ; $7b1d: $ed
    rlca                                          ; $7b1e: $07
    add b                                         ; $7b1f: $80
    add b                                         ; $7b20: $80
    add b                                         ; $7b21: $80
    rlca                                          ; $7b22: $07
    add b                                         ; $7b23: $80
    add b                                         ; $7b24: $80
    add b                                         ; $7b25: $80
    rlca                                          ; $7b26: $07
    add b                                         ; $7b27: $80
    add b                                         ; $7b28: $80
    add b                                         ; $7b29: $80
    adc b                                         ; $7b2a: $88
    adc b                                         ; $7b2b: $88
    add b                                         ; $7b2c: $80
    add b                                         ; $7b2d: $80
    rlca                                          ; $7b2e: $07
    nop                                           ; $7b2f: $00
    dec b                                         ; $7b30: $05
    nop                                           ; $7b31: $00
    ld h, b                                       ; $7b32: $60
    inc b                                         ; $7b33: $04
    db $ed                                        ; $7b34: $ed
    db $ed                                        ; $7b35: $ed
    db $ed                                        ; $7b36: $ed
    xor $ed                                       ; $7b37: $ee $ed
    db $ed                                        ; $7b39: $ed
    db $ed                                        ; $7b3a: $ed
    xor $ed                                       ; $7b3b: $ee $ed
    db $ed                                        ; $7b3d: $ed
    db $ed                                        ; $7b3e: $ed
    xor $ed                                       ; $7b3f: $ee $ed
    db $ed                                        ; $7b41: $ed
    db $ed                                        ; $7b42: $ed
    xor $80                                       ; $7b43: $ee $80
    add b                                         ; $7b45: $80
    add b                                         ; $7b46: $80
    add b                                         ; $7b47: $80
    add b                                         ; $7b48: $80
    add b                                         ; $7b49: $80
    add b                                         ; $7b4a: $80
    add b                                         ; $7b4b: $80
    add b                                         ; $7b4c: $80
    add b                                         ; $7b4d: $80
    add b                                         ; $7b4e: $80
    add b                                         ; $7b4f: $80
    add b                                         ; $7b50: $80
    add b                                         ; $7b51: $80
    add b                                         ; $7b52: $80
    add b                                         ; $7b53: $80
    rst $28                                       ; $7b54: $ef
    ldh a, [$f1]                                  ; $7b55: $f0 $f1
    ld a, [c]                                     ; $7b57: $f2
    di                                            ; $7b58: $f3
    db $f4                                        ; $7b59: $f4
    push af                                       ; $7b5a: $f5
    or $f7                                        ; $7b5b: $f6 $f7
    ld hl, sp-$07                                 ; $7b5d: $f8 $f9
    ld a, [$fcfb]                                 ; $7b5f: $fa $fb $fc
    db $fd                                        ; $7b62: $fd
    cp $03                                        ; $7b63: $fe $03
    inc bc                                        ; $7b65: $03
    inc bc                                        ; $7b66: $03
    inc bc                                        ; $7b67: $03
    inc bc                                        ; $7b68: $03
    inc bc                                        ; $7b69: $03
    inc bc                                        ; $7b6a: $03
    inc bc                                        ; $7b6b: $03
    inc bc                                        ; $7b6c: $03
    inc bc                                        ; $7b6d: $03
    inc bc                                        ; $7b6e: $03
    inc bc                                        ; $7b6f: $03
    inc bc                                        ; $7b70: $03
    inc bc                                        ; $7b71: $03
    inc bc                                        ; $7b72: $03
    inc bc                                        ; $7b73: $03
    rst $38                                       ; $7b74: $ff
    nop                                           ; $7b75: $00
    ldh a, [$f1]                                  ; $7b76: $f0 $f1
    ld bc, $f402                                  ; $7b78: $01 $02 $f4
    push af                                       ; $7b7b: $f5
    inc bc                                        ; $7b7c: $03
    inc b                                         ; $7b7d: $04
    ld hl, sp-$07                                 ; $7b7e: $f8 $f9
    dec b                                         ; $7b80: $05
    ld b, $fc                                     ; $7b81: $06 $fc
    db $fd                                        ; $7b83: $fd
    inc b                                         ; $7b84: $04
    inc b                                         ; $7b85: $04
    inc bc                                        ; $7b86: $03
    inc bc                                        ; $7b87: $03
    inc b                                         ; $7b88: $04
    inc b                                         ; $7b89: $04
    inc bc                                        ; $7b8a: $03
    inc bc                                        ; $7b8b: $03
    inc b                                         ; $7b8c: $04
    inc b                                         ; $7b8d: $04
    inc bc                                        ; $7b8e: $03
    inc bc                                        ; $7b8f: $03
    inc b                                         ; $7b90: $04
    inc b                                         ; $7b91: $04
    inc bc                                        ; $7b92: $03
    inc bc                                        ; $7b93: $03
    rlca                                          ; $7b94: $07
    ld [$f0ef], sp                                ; $7b95: $08 $ef $f0
    add hl, bc                                    ; $7b98: $09
    ld a, [bc]                                    ; $7b99: $0a
    di                                            ; $7b9a: $f3
    db $f4                                        ; $7b9b: $f4
    dec bc                                        ; $7b9c: $0b
    inc c                                         ; $7b9d: $0c
    rst $30                                       ; $7b9e: $f7
    ld hl, sp+$0d                                 ; $7b9f: $f8 $0d
    ld c, $fb                                     ; $7ba1: $0e $fb
    db $fc                                        ; $7ba3: $fc
    inc bc                                        ; $7ba4: $03
    inc bc                                        ; $7ba5: $03
    inc bc                                        ; $7ba6: $03
    inc bc                                        ; $7ba7: $03
    inc bc                                        ; $7ba8: $03
    inc bc                                        ; $7ba9: $03
    inc bc                                        ; $7baa: $03
    inc bc                                        ; $7bab: $03
    inc bc                                        ; $7bac: $03
    inc bc                                        ; $7bad: $03
    inc bc                                        ; $7bae: $03
    inc bc                                        ; $7baf: $03
    inc bc                                        ; $7bb0: $03
    inc bc                                        ; $7bb1: $03
    inc bc                                        ; $7bb2: $03
    inc bc                                        ; $7bb3: $03
    db $ed                                        ; $7bb4: $ed
    db $ed                                        ; $7bb5: $ed
    db $ed                                        ; $7bb6: $ed
    xor $ed                                       ; $7bb7: $ee $ed
    rrca                                          ; $7bb9: $0f
    db $10                                        ; $7bba: $10
    ld de, $eeed                                  ; $7bbb: $11 $ed $ee
    ld [$ed12], sp                                ; $7bbe: $08 $12 $ed
    inc de                                        ; $7bc1: $13
    ld a, [bc]                                    ; $7bc2: $0a
    inc d                                         ; $7bc3: $14
    add b                                         ; $7bc4: $80

jr_07a_7bc5:
    add b                                         ; $7bc5: $80
    add b                                         ; $7bc6: $80
    add b                                         ; $7bc7: $80
    add b                                         ; $7bc8: $80
    add b                                         ; $7bc9: $80
    add b                                         ; $7bca: $80
    add b                                         ; $7bcb: $80
    add b                                         ; $7bcc: $80
    add b                                         ; $7bcd: $80
    inc hl                                        ; $7bce: $23
    inc bc                                        ; $7bcf: $03
    add b                                         ; $7bd0: $80
    add b                                         ; $7bd1: $80
    inc hl                                        ; $7bd2: $23
    inc bc                                        ; $7bd3: $03
    dec d                                         ; $7bd4: $15
    ld d, $17                                     ; $7bd5: $16 $17
    jr jr_07a_7bf2                                ; $7bd7: $18 $19

    ld a, [de]                                    ; $7bd9: $1a
    dec de                                        ; $7bda: $1b
    inc e                                         ; $7bdb: $1c
    dec e                                         ; $7bdc: $1d
    ld e, $1f                                     ; $7bdd: $1e $1f
    jr nz, jr_07a_7c02                            ; $7bdf: $20 $21

    ld [hl+], a                                   ; $7be1: $22
    inc hl                                        ; $7be2: $23
    inc h                                         ; $7be3: $24
    inc bc                                        ; $7be4: $03
    inc bc                                        ; $7be5: $03
    inc bc                                        ; $7be6: $03
    inc bc                                        ; $7be7: $03
    rlca                                          ; $7be8: $07
    rlca                                          ; $7be9: $07
    rlca                                          ; $7bea: $07
    rlca                                          ; $7beb: $07
    rlca                                          ; $7bec: $07
    dec b                                         ; $7bed: $05
    dec b                                         ; $7bee: $05
    ld [bc], a                                    ; $7bef: $02
    rlca                                          ; $7bf0: $07
    dec b                                         ; $7bf1: $05

jr_07a_7bf2:
    dec b                                         ; $7bf2: $05
    dec b                                         ; $7bf3: $05
    dec h                                         ; $7bf4: $25
    ld h, $16                                     ; $7bf5: $26 $16
    rla                                           ; $7bf7: $17
    daa                                           ; $7bf8: $27
    jr z, @+$1b                                   ; $7bf9: $28 $19

    ld a, [de]                                    ; $7bfb: $1a
    add hl, hl                                    ; $7bfc: $29
    ld a, [hl+]                                   ; $7bfd: $2a
    dec e                                         ; $7bfe: $1d
    ld e, $2b                                     ; $7bff: $1e $2b
    inc l                                         ; $7c01: $2c

jr_07a_7c02:
    ld hl, $0422                                  ; $7c02: $21 $22 $04
    inc b                                         ; $7c05: $04
    inc bc                                        ; $7c06: $03
    inc bc                                        ; $7c07: $03
    inc b                                         ; $7c08: $04
    inc b                                         ; $7c09: $04
    rlca                                          ; $7c0a: $07
    rlca                                          ; $7c0b: $07
    rlca                                          ; $7c0c: $07
    rlca                                          ; $7c0d: $07
    rlca                                          ; $7c0e: $07
    ld [bc], a                                    ; $7c0f: $02
    ld [bc], a                                    ; $7c10: $02
    ld b, $06                                     ; $7c11: $06 $06
    ld b, $2d                                     ; $7c13: $06 $2d
    ld l, $15                                     ; $7c15: $2e $15
    ld d, $1b                                     ; $7c17: $16 $1b
    inc e                                         ; $7c19: $1c
    cpl                                           ; $7c1a: $2f
    jr nc, jr_07a_7c3c                            ; $7c1b: $30 $1f

    jr nz, jr_07a_7c48                            ; $7c1d: $20 $29

    ld a, [hl+]                                   ; $7c1f: $2a
    inc hl                                        ; $7c20: $23
    inc h                                         ; $7c21: $24
    ld sp, $032c                                  ; $7c22: $31 $2c $03
    inc bc                                        ; $7c25: $03
    inc bc                                        ; $7c26: $03
    inc bc                                        ; $7c27: $03
    rlca                                          ; $7c28: $07
    rlca                                          ; $7c29: $07
    rlca                                          ; $7c2a: $07
    rlca                                          ; $7c2b: $07
    dec b                                         ; $7c2c: $05
    dec b                                         ; $7c2d: $05
    dec b                                         ; $7c2e: $05
    dec b                                         ; $7c2f: $05
    ld [bc], a                                    ; $7c30: $02
    ld [bc], a                                    ; $7c31: $02
    ld [bc], a                                    ; $7c32: $02
    ld [bc], a                                    ; $7c33: $02
    db $ed                                        ; $7c34: $ed
    inc de                                        ; $7c35: $13
    inc c                                         ; $7c36: $0c
    ld [hl-], a                                   ; $7c37: $32
    db $ed                                        ; $7c38: $ed
    inc de                                        ; $7c39: $13
    ld c, $33                                     ; $7c3a: $0e $33

jr_07a_7c3c:
    db $ed                                        ; $7c3c: $ed
    inc de                                        ; $7c3d: $13
    ld l, $34                                     ; $7c3e: $2e $34
    dec [hl]                                      ; $7c40: $35
    inc de                                        ; $7c41: $13
    cpl                                           ; $7c42: $2f
    jr nc, jr_07a_7bc5                            ; $7c43: $30 $80

    add b                                         ; $7c45: $80
    inc hl                                        ; $7c46: $23
    inc bc                                        ; $7c47: $03

jr_07a_7c48:
    add b                                         ; $7c48: $80
    add b                                         ; $7c49: $80
    inc hl                                        ; $7c4a: $23
    inc bc                                        ; $7c4b: $03
    add b                                         ; $7c4c: $80
    add b                                         ; $7c4d: $80
    inc hl                                        ; $7c4e: $23
    inc bc                                        ; $7c4f: $03
    add b                                         ; $7c50: $80
    add b                                         ; $7c51: $80
    rlca                                          ; $7c52: $07
    rlca                                          ; $7c53: $07
    ld [hl], $37                                  ; $7c54: $36 $37
    jr c, jr_07a_7c91                             ; $7c56: $38 $39

    ld a, [hl-]                                   ; $7c58: $3a
    dec sp                                        ; $7c59: $3b
    inc a                                         ; $7c5a: $3c
    dec a                                         ; $7c5b: $3d
    ld a, $3f                                     ; $7c5c: $3e $3f
    ld b, b                                       ; $7c5e: $40
    ld b, c                                       ; $7c5f: $41
    add hl, de                                    ; $7c60: $19
    ld a, [de]                                    ; $7c61: $1a
    dec de                                        ; $7c62: $1b
    inc e                                         ; $7c63: $1c
    rlca                                          ; $7c64: $07
    ld b, $06                                     ; $7c65: $06 $06
    ld [bc], a                                    ; $7c67: $02
    rlca                                          ; $7c68: $07
    dec b                                         ; $7c69: $05
    ld [bc], a                                    ; $7c6a: $02
    ld [bc], a                                    ; $7c6b: $02
    rlca                                          ; $7c6c: $07
    ld [bc], a                                    ; $7c6d: $02
    ld [bc], a                                    ; $7c6e: $02
    ld [bc], a                                    ; $7c6f: $02
    rlca                                          ; $7c70: $07
    ld [bc], a                                    ; $7c71: $02
    dec b                                         ; $7c72: $05
    dec b                                         ; $7c73: $05
    ld b, d                                       ; $7c74: $42
    ld b, e                                       ; $7c75: $43
    ld b, h                                       ; $7c76: $44
    ld b, l                                       ; $7c77: $45
    ld b, [hl]                                    ; $7c78: $46
    ld b, a                                       ; $7c79: $47
    ld c, b                                       ; $7c7a: $48
    ld c, c                                       ; $7c7b: $49
    ld c, d                                       ; $7c7c: $4a
    ld c, e                                       ; $7c7d: $4b
    ld c, h                                       ; $7c7e: $4c
    ld c, l                                       ; $7c7f: $4d
    cpl                                           ; $7c80: $2f
    ld c, [hl]                                    ; $7c81: $4e
    ld c, a                                       ; $7c82: $4f
    ld d, b                                       ; $7c83: $50
    ld [bc], a                                    ; $7c84: $02
    ld [bc], a                                    ; $7c85: $02
    ld [bc], a                                    ; $7c86: $02
    ld [bc], a                                    ; $7c87: $02
    ld [bc], a                                    ; $7c88: $02
    ld [bc], a                                    ; $7c89: $02
    ld bc, $0201                                  ; $7c8a: $01 $01 $02
    ld [bc], a                                    ; $7c8d: $02
    ld bc, $0201                                  ; $7c8e: $01 $01 $02

jr_07a_7c91:
    ld [bc], a                                    ; $7c91: $02
    ld bc, $3801                                  ; $7c92: $01 $01 $38
    ld d, c                                       ; $7c95: $51
    ld d, d                                       ; $7c96: $52
    ld d, e                                       ; $7c97: $53
    ld d, h                                       ; $7c98: $54
    ld d, l                                       ; $7c99: $55
    ld d, [hl]                                    ; $7c9a: $56
    ld d, a                                       ; $7c9b: $57
    ld e, b                                       ; $7c9c: $58
    ld e, c                                       ; $7c9d: $59
    ld e, d                                       ; $7c9e: $5a
    ld e, e                                       ; $7c9f: $5b
    ld e, h                                       ; $7ca0: $5c
    ld e, l                                       ; $7ca1: $5d
    ld e, [hl]                                    ; $7ca2: $5e
    ld e, a                                       ; $7ca3: $5f
    ld [bc], a                                    ; $7ca4: $02
    ld [bc], a                                    ; $7ca5: $02
    add c                                         ; $7ca6: $81
    add c                                         ; $7ca7: $81
    add c                                         ; $7ca8: $81
    add c                                         ; $7ca9: $81
    add c                                         ; $7caa: $81
    add c                                         ; $7cab: $81
    ld bc, $0101                                  ; $7cac: $01 $01 $01
    ld bc, $0101                                  ; $7caf: $01 $01 $01
    ld bc, $3501                                  ; $7cb2: $01 $01 $35
    xor $29                                       ; $7cb5: $ee $29
    ld a, [hl+]                                   ; $7cb7: $2a
    dec [hl]                                      ; $7cb8: $35
    ld h, b                                       ; $7cb9: $60
    db $10                                        ; $7cba: $10
    ld h, c                                       ; $7cbb: $61
    db $ed                                        ; $7cbc: $ed
    db $ed                                        ; $7cbd: $ed
    db $ed                                        ; $7cbe: $ed
    xor $ed                                       ; $7cbf: $ee $ed
    db $ed                                        ; $7cc1: $ed
    db $ed                                        ; $7cc2: $ed
    xor $80                                       ; $7cc3: $ee $80
    add b                                         ; $7cc5: $80
    rlca                                          ; $7cc6: $07
    ld [bc], a                                    ; $7cc7: $02
    add b                                         ; $7cc8: $80
    add b                                         ; $7cc9: $80
    add b                                         ; $7cca: $80
    add b                                         ; $7ccb: $80
    add b                                         ; $7ccc: $80
    add b                                         ; $7ccd: $80
    add b                                         ; $7cce: $80
    add b                                         ; $7ccf: $80
    add b                                         ; $7cd0: $80
    add b                                         ; $7cd1: $80
    add b                                         ; $7cd2: $80
    add b                                         ; $7cd3: $80
    dec e                                         ; $7cd4: $1d
    ld e, $1f                                     ; $7cd5: $1e $1f
    jr nz, jr_07a_7cfa                            ; $7cd7: $20 $21

    ld [hl+], a                                   ; $7cd9: $22
    inc hl                                        ; $7cda: $23
    inc h                                         ; $7cdb: $24
    ld [hl], $37                                  ; $7cdc: $36 $37
    jr c, jr_07a_7d19                             ; $7cde: $38 $39

    ld a, [hl-]                                   ; $7ce0: $3a
    dec sp                                        ; $7ce1: $3b
    inc a                                         ; $7ce2: $3c
    dec a                                         ; $7ce3: $3d
    ld [bc], a                                    ; $7ce4: $02
    ld b, $02                                     ; $7ce5: $06 $02
    dec b                                         ; $7ce7: $05
    ld [bc], a                                    ; $7ce8: $02
    ld [bc], a                                    ; $7ce9: $02
    ld [bc], a                                    ; $7cea: $02
    ld b, $02                                     ; $7ceb: $06 $02
    ld b, $06                                     ; $7ced: $06 $06
    ld [bc], a                                    ; $7cef: $02
    rlca                                          ; $7cf0: $07
    ld b, $06                                     ; $7cf1: $06 $06
    dec b                                         ; $7cf3: $05
    add hl, hl                                    ; $7cf4: $29
    ld a, [hl+]                                   ; $7cf5: $2a
    ld h, d                                       ; $7cf6: $62
    ld h, e                                       ; $7cf7: $63
    dec hl                                        ; $7cf8: $2b
    inc l                                         ; $7cf9: $2c

jr_07a_7cfa:
    ld hl, $4222                                  ; $7cfa: $21 $22 $42
    ld h, h                                       ; $7cfd: $64
    ld [hl], $65                                  ; $7cfe: $36 $65
    ld b, [hl]                                    ; $7d00: $46
    ld h, [hl]                                    ; $7d01: $66
    ld a, [hl-]                                   ; $7d02: $3a
    dec sp                                        ; $7d03: $3b
    dec b                                         ; $7d04: $05
    ld [bc], a                                    ; $7d05: $02
    ld [bc], a                                    ; $7d06: $02
    ld [bc], a                                    ; $7d07: $02
    dec b                                         ; $7d08: $05
    dec b                                         ; $7d09: $05
    ld [bc], a                                    ; $7d0a: $02
    ld [bc], a                                    ; $7d0b: $02
    ld [bc], a                                    ; $7d0c: $02
    dec b                                         ; $7d0d: $05
    dec b                                         ; $7d0e: $05
    ld [bc], a                                    ; $7d0f: $02
    ld [bc], a                                    ; $7d10: $02
    ld [bc], a                                    ; $7d11: $02
    dec b                                         ; $7d12: $05
    ld b, $67                                     ; $7d13: $06 $67
    ld l, b                                       ; $7d15: $68
    ld l, c                                       ; $7d16: $69
    ld l, d                                       ; $7d17: $6a
    ld l, e                                       ; $7d18: $6b

jr_07a_7d19:
    ld l, h                                       ; $7d19: $6c
    ld l, l                                       ; $7d1a: $6d
    ld l, [hl]                                    ; $7d1b: $6e
    ld l, a                                       ; $7d1c: $6f
    ld [hl], b                                    ; $7d1d: $70
    ld [hl], c                                    ; $7d1e: $71
    ld [hl], d                                    ; $7d1f: $72
    inc a                                         ; $7d20: $3c
    dec a                                         ; $7d21: $3d
    ld b, [hl]                                    ; $7d22: $46
    ld h, [hl]                                    ; $7d23: $66
    ld bc, $0101                                  ; $7d24: $01 $01 $01
    ld bc, $0101                                  ; $7d27: $01 $01 $01
    ld bc, $0106                                  ; $7d2a: $01 $06 $01
    ld bc, $0202                                  ; $7d2d: $01 $02 $02
    ld [bc], a                                    ; $7d30: $02
    ld [bc], a                                    ; $7d31: $02
    ld [bc], a                                    ; $7d32: $02
    ld [bc], a                                    ; $7d33: $02
    pop af                                        ; $7d34: $f1
    ld a, [c]                                     ; $7d35: $f2
    rst $38                                       ; $7d36: $ff
    nop                                           ; $7d37: $00
    push af                                       ; $7d38: $f5
    or $01                                        ; $7d39: $f6 $01
    ld [bc], a                                    ; $7d3b: $02
    ld sp, hl                                     ; $7d3c: $f9
    ld a, [$0403]                                 ; $7d3d: $fa $03 $04
    db $fd                                        ; $7d40: $fd
    cp $05                                        ; $7d41: $fe $05
    ld b, $03                                     ; $7d43: $06 $03
    inc bc                                        ; $7d45: $03
    inc b                                         ; $7d46: $04
    inc b                                         ; $7d47: $04
    inc bc                                        ; $7d48: $03
    inc bc                                        ; $7d49: $03
    inc b                                         ; $7d4a: $04
    inc b                                         ; $7d4b: $04
    inc bc                                        ; $7d4c: $03
    inc bc                                        ; $7d4d: $03
    inc b                                         ; $7d4e: $04
    inc b                                         ; $7d4f: $04
    inc bc                                        ; $7d50: $03
    inc bc                                        ; $7d51: $03
    inc b                                         ; $7d52: $04
    inc b                                         ; $7d53: $04
    ldh a, [$f1]                                  ; $7d54: $f0 $f1
    rlca                                          ; $7d56: $07
    ld [$f5f4], sp                                ; $7d57: $08 $f4 $f5
    add hl, bc                                    ; $7d5a: $09
    ld a, [bc]                                    ; $7d5b: $0a
    ld hl, sp-$07                                 ; $7d5c: $f8 $f9
    dec bc                                        ; $7d5e: $0b
    inc c                                         ; $7d5f: $0c
    db $fc                                        ; $7d60: $fc
    db $fd                                        ; $7d61: $fd
    dec c                                         ; $7d62: $0d
    ld c, $03                                     ; $7d63: $0e $03
    inc bc                                        ; $7d65: $03
    inc bc                                        ; $7d66: $03
    inc bc                                        ; $7d67: $03
    inc bc                                        ; $7d68: $03
    inc bc                                        ; $7d69: $03
    inc bc                                        ; $7d6a: $03
    inc bc                                        ; $7d6b: $03
    inc bc                                        ; $7d6c: $03
    inc bc                                        ; $7d6d: $03
    inc bc                                        ; $7d6e: $03
    inc bc                                        ; $7d6f: $03
    inc bc                                        ; $7d70: $03
    inc bc                                        ; $7d71: $03
    inc bc                                        ; $7d72: $03
    inc bc                                        ; $7d73: $03
    xor $ed                                       ; $7d74: $ee $ed
    db $ed                                        ; $7d76: $ed
    db $ed                                        ; $7d77: $ed
    xor $ed                                       ; $7d78: $ee $ed
    db $ed                                        ; $7d7a: $ed
    db $ed                                        ; $7d7b: $ed
    xor $ed                                       ; $7d7c: $ee $ed
    db $ed                                        ; $7d7e: $ed
    db $ed                                        ; $7d7f: $ed
    xor $ed                                       ; $7d80: $ee $ed
    db $ed                                        ; $7d82: $ed
    db $ed                                        ; $7d83: $ed
    add b                                         ; $7d84: $80
    add b                                         ; $7d85: $80
    add b                                         ; $7d86: $80
    add b                                         ; $7d87: $80
    add b                                         ; $7d88: $80
    add b                                         ; $7d89: $80
    add b                                         ; $7d8a: $80
    add b                                         ; $7d8b: $80
    add b                                         ; $7d8c: $80
    add b                                         ; $7d8d: $80
    add b                                         ; $7d8e: $80
    add b                                         ; $7d8f: $80
    add b                                         ; $7d90: $80
    add b                                         ; $7d91: $80
    add b                                         ; $7d92: $80
    add b                                         ; $7d93: $80
    rla                                           ; $7d94: $17
    jr jr_07a_7dbc                                ; $7d95: $18 $25

    ld h, $19                                     ; $7d97: $26 $19
    ld a, [de]                                    ; $7d99: $1a
    daa                                           ; $7d9a: $27
    jr z, @+$1f                                   ; $7d9b: $28 $1d

    ld e, $1f                                     ; $7d9d: $1e $1f
    jr nz, jr_07a_7dc2                            ; $7d9f: $20 $21

    ld [hl+], a                                   ; $7da1: $22
    inc hl                                        ; $7da2: $23
    inc h                                         ; $7da3: $24
    inc bc                                        ; $7da4: $03
    inc bc                                        ; $7da5: $03
    inc b                                         ; $7da6: $04
    inc b                                         ; $7da7: $04
    rlca                                          ; $7da8: $07
    rlca                                          ; $7da9: $07
    inc b                                         ; $7daa: $04
    inc b                                         ; $7dab: $04
    dec b                                         ; $7dac: $05
    dec b                                         ; $7dad: $05
    rlca                                          ; $7dae: $07
    rlca                                          ; $7daf: $07
    dec b                                         ; $7db0: $05
    ld [bc], a                                    ; $7db1: $02
    ld b, $02                                     ; $7db2: $06 $02
    ld d, $17                                     ; $7db4: $16 $17
    dec l                                         ; $7db6: $2d
    ld l, $2f                                     ; $7db7: $2e $2f
    jr nc, jr_07a_7dd4                            ; $7db9: $30 $19

    ld a, [de]                                    ; $7dbb: $1a

jr_07a_7dbc:
    add hl, hl                                    ; $7dbc: $29
    ld a, [hl+]                                   ; $7dbd: $2a
    dec e                                         ; $7dbe: $1d
    ld e, $2b                                     ; $7dbf: $1e $2b
    inc l                                         ; $7dc1: $2c

jr_07a_7dc2:
    ld hl, $0322                                  ; $7dc2: $21 $22 $03
    inc bc                                        ; $7dc5: $03
    inc bc                                        ; $7dc6: $03
    inc bc                                        ; $7dc7: $03
    rlca                                          ; $7dc8: $07
    rlca                                          ; $7dc9: $07
    rlca                                          ; $7dca: $07
    rlca                                          ; $7dcb: $07
    rlca                                          ; $7dcc: $07
    ld [bc], a                                    ; $7dcd: $02
    ld [bc], a                                    ; $7dce: $02
    rlca                                          ; $7dcf: $07
    ld [bc], a                                    ; $7dd0: $02
    ld [bc], a                                    ; $7dd1: $02
    ld [bc], a                                    ; $7dd2: $02
    rlca                                          ; $7dd3: $07

jr_07a_7dd4:
    xor $ed                                       ; $7dd4: $ee $ed
    db $ed                                        ; $7dd6: $ed
    db $ed                                        ; $7dd7: $ed
    ld h, b                                       ; $7dd8: $60
    db $10                                        ; $7dd9: $10
    ld h, c                                       ; $7dda: $61
    db $ed                                        ; $7ddb: $ed
    ld [de], a                                    ; $7ddc: $12
    ld [$edee], sp                                ; $7ddd: $08 $ee $ed
    inc d                                         ; $7de0: $14
    ld a, [bc]                                    ; $7de1: $0a
    inc de                                        ; $7de2: $13
    db $ed                                        ; $7de3: $ed
    add b                                         ; $7de4: $80
    add b                                         ; $7de5: $80
    add b                                         ; $7de6: $80
    add b                                         ; $7de7: $80
    add b                                         ; $7de8: $80
    add b                                         ; $7de9: $80
    add b                                         ; $7dea: $80
    add b                                         ; $7deb: $80
    inc hl                                        ; $7dec: $23
    inc bc                                        ; $7ded: $03
    add b                                         ; $7dee: $80
    add b                                         ; $7def: $80
    inc hl                                        ; $7df0: $23
    inc bc                                        ; $7df1: $03
    add b                                         ; $7df2: $80
    add b                                         ; $7df3: $80
    ld [hl], e                                    ; $7df4: $73
    ld [hl], h                                    ; $7df5: $74
    jr c, jr_07a_7e31                             ; $7df6: $38 $39

    ld [hl], l                                    ; $7df8: $75
    halt                                          ; $7df9: $76
    ld [hl], a                                    ; $7dfa: $77
    dec a                                         ; $7dfb: $3d
    ld a, b                                       ; $7dfc: $78
    ld a, c                                       ; $7dfd: $79
    ld a, d                                       ; $7dfe: $7a
    ld b, c                                       ; $7dff: $41
    ld a, e                                       ; $7e00: $7b
    ld a, h                                       ; $7e01: $7c
    ld a, l                                       ; $7e02: $7d
    inc e                                         ; $7e03: $1c
    ld [bc], a                                    ; $7e04: $02
    ld [bc], a                                    ; $7e05: $02
    ld [bc], a                                    ; $7e06: $02
    dec b                                         ; $7e07: $05
    add c                                         ; $7e08: $81
    add c                                         ; $7e09: $81
    ld [bc], a                                    ; $7e0a: $02
    dec b                                         ; $7e0b: $05
    ld bc, $0201                                  ; $7e0c: $01 $01 $02
    ld [bc], a                                    ; $7e0f: $02
    ld bc, $0201                                  ; $7e10: $01 $01 $02
    ld b, $42                                     ; $7e13: $06 $42
    ld h, h                                       ; $7e15: $64
    ld [hl], $37                                  ; $7e16: $36 $37
    ld b, [hl]                                    ; $7e18: $46
    ld h, [hl]                                    ; $7e19: $66
    ld a, [hl-]                                   ; $7e1a: $3a
    dec sp                                        ; $7e1b: $3b
    ld c, d                                       ; $7e1c: $4a
    ld a, [hl]                                    ; $7e1d: $7e
    ld a, $3f                                     ; $7e1e: $3e $3f
    cpl                                           ; $7e20: $2f
    jr nc, jr_07a_7e3c                            ; $7e21: $30 $19

    ld a, [de]                                    ; $7e23: $1a
    ld b, $06                                     ; $7e24: $06 $06
    ld [bc], a                                    ; $7e26: $02
    rlca                                          ; $7e27: $07
    ld [bc], a                                    ; $7e28: $02
    ld b, $02                                     ; $7e29: $06 $02
    rlca                                          ; $7e2b: $07
    dec b                                         ; $7e2c: $05
    dec b                                         ; $7e2d: $05
    ld [bc], a                                    ; $7e2e: $02
    rlca                                          ; $7e2f: $07
    dec b                                         ; $7e30: $05

jr_07a_7e31:
    dec b                                         ; $7e31: $05
    ld [bc], a                                    ; $7e32: $02
    rlca                                          ; $7e33: $07
    ld [hl-], a                                   ; $7e34: $32
    inc c                                         ; $7e35: $0c
    inc de                                        ; $7e36: $13
    db $ed                                        ; $7e37: $ed
    inc sp                                        ; $7e38: $33
    ld c, $13                                     ; $7e39: $0e $13
    db $ed                                        ; $7e3b: $ed

jr_07a_7e3c:
    inc [hl]                                      ; $7e3c: $34
    ld l, $13                                     ; $7e3d: $2e $13
    db $ed                                        ; $7e3f: $ed
    dec de                                        ; $7e40: $1b
    inc e                                         ; $7e41: $1c
    inc de                                        ; $7e42: $13
    dec [hl]                                      ; $7e43: $35
    inc hl                                        ; $7e44: $23
    inc bc                                        ; $7e45: $03
    add b                                         ; $7e46: $80
    add b                                         ; $7e47: $80
    inc hl                                        ; $7e48: $23
    inc bc                                        ; $7e49: $03
    add b                                         ; $7e4a: $80
    add b                                         ; $7e4b: $80
    inc hl                                        ; $7e4c: $23
    inc bc                                        ; $7e4d: $03
    add b                                         ; $7e4e: $80
    add b                                         ; $7e4f: $80
    rlca                                          ; $7e50: $07
    rlca                                          ; $7e51: $07
    add b                                         ; $7e52: $80
    and b                                         ; $7e53: $a0
    ld a, a                                       ; $7e54: $7f
    add b                                         ; $7e55: $80
    rra                                           ; $7e56: $1f
    jr nz, jr_07a_7e7a                            ; $7e57: $20 $21

    ld [hl+], a                                   ; $7e59: $22
    inc hl                                        ; $7e5a: $23
    inc h                                         ; $7e5b: $24
    ld [hl], $37                                  ; $7e5c: $36 $37
    jr c, jr_07a_7e99                             ; $7e5e: $38 $39

    ld a, [hl-]                                   ; $7e60: $3a
    dec sp                                        ; $7e61: $3b
    inc a                                         ; $7e62: $3c
    dec a                                         ; $7e63: $3d
    ld [bc], a                                    ; $7e64: $02
    ld a, [bc]                                    ; $7e65: $0a
    dec b                                         ; $7e66: $05
    dec b                                         ; $7e67: $05
    ld [bc], a                                    ; $7e68: $02
    dec b                                         ; $7e69: $05
    dec b                                         ; $7e6a: $05
    dec b                                         ; $7e6b: $05
    ld b, $05                                     ; $7e6c: $06 $05
    dec b                                         ; $7e6e: $05
    dec b                                         ; $7e6f: $05
    ld b, $02                                     ; $7e70: $06 $02
    dec b                                         ; $7e72: $05
    dec b                                         ; $7e73: $05
    add hl, hl                                    ; $7e74: $29
    ld a, [hl+]                                   ; $7e75: $2a
    dec e                                         ; $7e76: $1d
    ld e, $2b                                     ; $7e77: $1e $2b
    inc l                                         ; $7e79: $2c

jr_07a_7e7a:
    ld hl, $4222                                  ; $7e7a: $21 $22 $42
    ld h, h                                       ; $7e7d: $64
    ld [hl], $37                                  ; $7e7e: $36 $37
    ld b, [hl]                                    ; $7e80: $46
    ld h, [hl]                                    ; $7e81: $66
    ld a, [hl-]                                   ; $7e82: $3a
    dec sp                                        ; $7e83: $3b
    ld [bc], a                                    ; $7e84: $02

jr_07a_7e85:
    dec b                                         ; $7e85: $05
    ld [bc], a                                    ; $7e86: $02
    ld b, $05                                     ; $7e87: $06 $05
    ld [bc], a                                    ; $7e89: $02
    ld b, $06                                     ; $7e8a: $06 $06
    ld [bc], a                                    ; $7e8c: $02
    dec b                                         ; $7e8d: $05
    ld [bc], a                                    ; $7e8e: $02
    ld [bc], a                                    ; $7e8f: $02
    dec b                                         ; $7e90: $05
    dec b                                         ; $7e91: $05
    ld [bc], a                                    ; $7e92: $02
    rlca                                          ; $7e93: $07
    rra                                           ; $7e94: $1f
    jr nz, jr_07a_7e85                            ; $7e95: $20 $ee

    dec [hl]                                      ; $7e97: $35
    rrca                                          ; $7e98: $0f

jr_07a_7e99:
    db $10                                        ; $7e99: $10
    ld de, $ee35                                  ; $7e9a: $11 $35 $ee
    db $ed                                        ; $7e9d: $ed
    db $ed                                        ; $7e9e: $ed
    db $ed                                        ; $7e9f: $ed
    xor $ed                                       ; $7ea0: $ee $ed
    db $ed                                        ; $7ea2: $ed
    db $ed                                        ; $7ea3: $ed
    ld [bc], a                                    ; $7ea4: $02
    rlca                                          ; $7ea5: $07
    add b                                         ; $7ea6: $80
    and b                                         ; $7ea7: $a0
    add b                                         ; $7ea8: $80
    add b                                         ; $7ea9: $80
    add b                                         ; $7eaa: $80
    and b                                         ; $7eab: $a0
    add b                                         ; $7eac: $80
    add b                                         ; $7ead: $80
    add b                                         ; $7eae: $80
    add b                                         ; $7eaf: $80
    add b                                         ; $7eb0: $80
    add b                                         ; $7eb1: $80
    add b                                         ; $7eb2: $80
    add b                                         ; $7eb3: $80
    db $ed                                        ; $7eb4: $ed
    db $ed                                        ; $7eb5: $ed
    db $ed                                        ; $7eb6: $ed
    xor $ed                                       ; $7eb7: $ee $ed
    db $ed                                        ; $7eb9: $ed
    db $ed                                        ; $7eba: $ed
    ld h, b                                       ; $7ebb: $60
    db $ed                                        ; $7ebc: $ed
    db $ed                                        ; $7ebd: $ed
    db $ed                                        ; $7ebe: $ed
    db $ed                                        ; $7ebf: $ed
    db $ed                                        ; $7ec0: $ed
    db $ed                                        ; $7ec1: $ed
    db $ed                                        ; $7ec2: $ed
    db $ed                                        ; $7ec3: $ed
    add b                                         ; $7ec4: $80
    add b                                         ; $7ec5: $80
    add b                                         ; $7ec6: $80
    add b                                         ; $7ec7: $80
    add b                                         ; $7ec8: $80
    add b                                         ; $7ec9: $80
    add b                                         ; $7eca: $80
    add b                                         ; $7ecb: $80
    add b                                         ; $7ecc: $80
    add b                                         ; $7ecd: $80
    add b                                         ; $7ece: $80
    add b                                         ; $7ecf: $80
    add b                                         ; $7ed0: $80
    add b                                         ; $7ed1: $80
    add b                                         ; $7ed2: $80
    add b                                         ; $7ed3: $80
    ld a, $3f                                     ; $7ed4: $3e $3f
    ld b, b                                       ; $7ed6: $40
    ld b, c                                       ; $7ed7: $41
    db $10                                        ; $7ed8: $10
    db $10                                        ; $7ed9: $10
    db $10                                        ; $7eda: $10
    db $10                                        ; $7edb: $10
    db $ed                                        ; $7edc: $ed
    db $ed                                        ; $7edd: $ed
    db $ed                                        ; $7ede: $ed
    db $ed                                        ; $7edf: $ed
    db $ed                                        ; $7ee0: $ed
    db $ed                                        ; $7ee1: $ed
    db $ed                                        ; $7ee2: $ed
    db $ed                                        ; $7ee3: $ed
    rlca                                          ; $7ee4: $07
    ld [bc], a                                    ; $7ee5: $02
    dec b                                         ; $7ee6: $05
    dec b                                         ; $7ee7: $05
    add b                                         ; $7ee8: $80
    add b                                         ; $7ee9: $80
    add b                                         ; $7eea: $80
    add b                                         ; $7eeb: $80
    add b                                         ; $7eec: $80
    add b                                         ; $7eed: $80
    add b                                         ; $7eee: $80
    add b                                         ; $7eef: $80
    add b                                         ; $7ef0: $80
    add b                                         ; $7ef1: $80
    add b                                         ; $7ef2: $80
    add b                                         ; $7ef3: $80
    ld c, d                                       ; $7ef4: $4a
    ld a, [hl]                                    ; $7ef5: $7e
    ld a, $3f                                     ; $7ef6: $3e $3f
    db $10                                        ; $7ef8: $10
    db $10                                        ; $7ef9: $10
    db $10                                        ; $7efa: $10
    db $10                                        ; $7efb: $10
    db $ed                                        ; $7efc: $ed
    db $ed                                        ; $7efd: $ed
    db $ed                                        ; $7efe: $ed
    db $ed                                        ; $7eff: $ed
    db $ed                                        ; $7f00: $ed
    db $ed                                        ; $7f01: $ed
    db $ed                                        ; $7f02: $ed
    db $ed                                        ; $7f03: $ed
    dec b                                         ; $7f04: $05
    dec b                                         ; $7f05: $05
    ld [bc], a                                    ; $7f06: $02
    ld [bc], a                                    ; $7f07: $02
    add b                                         ; $7f08: $80
    add b                                         ; $7f09: $80
    add b                                         ; $7f0a: $80
    add b                                         ; $7f0b: $80
    add b                                         ; $7f0c: $80
    add b                                         ; $7f0d: $80
    add b                                         ; $7f0e: $80
    add b                                         ; $7f0f: $80
    add b                                         ; $7f10: $80
    add b                                         ; $7f11: $80
    add b                                         ; $7f12: $80
    add b                                         ; $7f13: $80
    ld b, b                                       ; $7f14: $40
    ld b, c                                       ; $7f15: $41
    ld c, d                                       ; $7f16: $4a
    ld a, [hl]                                    ; $7f17: $7e
    db $10                                        ; $7f18: $10
    db $10                                        ; $7f19: $10
    db $10                                        ; $7f1a: $10
    db $10                                        ; $7f1b: $10
    db $ed                                        ; $7f1c: $ed
    db $ed                                        ; $7f1d: $ed
    db $ed                                        ; $7f1e: $ed
    db $ed                                        ; $7f1f: $ed
    db $ed                                        ; $7f20: $ed
    db $ed                                        ; $7f21: $ed
    db $ed                                        ; $7f22: $ed
    db $ed                                        ; $7f23: $ed
    ld [bc], a                                    ; $7f24: $02
    ld b, $06                                     ; $7f25: $06 $06
    ld [bc], a                                    ; $7f27: $02
    add b                                         ; $7f28: $80
    add b                                         ; $7f29: $80
    add b                                         ; $7f2a: $80
    add b                                         ; $7f2b: $80
    add b                                         ; $7f2c: $80
    add b                                         ; $7f2d: $80
    add b                                         ; $7f2e: $80
    add b                                         ; $7f2f: $80
    add b                                         ; $7f30: $80
    add b                                         ; $7f31: $80
    add b                                         ; $7f32: $80
    add b                                         ; $7f33: $80
    ld a, $3f                                     ; $7f34: $3e $3f
    ld b, b                                       ; $7f36: $40
    ld b, c                                       ; $7f37: $41
    db $10                                        ; $7f38: $10
    db $10                                        ; $7f39: $10
    db $10                                        ; $7f3a: $10
    db $10                                        ; $7f3b: $10
    db $ed                                        ; $7f3c: $ed
    db $ed                                        ; $7f3d: $ed
    db $ed                                        ; $7f3e: $ed
    db $ed                                        ; $7f3f: $ed
    db $ed                                        ; $7f40: $ed
    db $ed                                        ; $7f41: $ed
    db $ed                                        ; $7f42: $ed
    db $ed                                        ; $7f43: $ed
    ld [bc], a                                    ; $7f44: $02
    dec b                                         ; $7f45: $05
    dec b                                         ; $7f46: $05
    dec b                                         ; $7f47: $05
    add b                                         ; $7f48: $80
    add b                                         ; $7f49: $80
    add b                                         ; $7f4a: $80
    add b                                         ; $7f4b: $80
    add b                                         ; $7f4c: $80
    add b                                         ; $7f4d: $80
    add b                                         ; $7f4e: $80
    add b                                         ; $7f4f: $80
    add b                                         ; $7f50: $80
    add b                                         ; $7f51: $80
    add b                                         ; $7f52: $80
    add b                                         ; $7f53: $80
    ld c, d                                       ; $7f54: $4a
    ld a, [hl]                                    ; $7f55: $7e
    ld a, $3f                                     ; $7f56: $3e $3f
    db $10                                        ; $7f58: $10
    db $10                                        ; $7f59: $10
    db $10                                        ; $7f5a: $10
    db $10                                        ; $7f5b: $10
    db $ed                                        ; $7f5c: $ed
    db $ed                                        ; $7f5d: $ed
    db $ed                                        ; $7f5e: $ed
    db $ed                                        ; $7f5f: $ed
    db $ed                                        ; $7f60: $ed
    db $ed                                        ; $7f61: $ed
    db $ed                                        ; $7f62: $ed
    db $ed                                        ; $7f63: $ed
    dec b                                         ; $7f64: $05
    ld [bc], a                                    ; $7f65: $02
    ld [bc], a                                    ; $7f66: $02
    rlca                                          ; $7f67: $07
    add b                                         ; $7f68: $80
    add b                                         ; $7f69: $80
    add b                                         ; $7f6a: $80
    add b                                         ; $7f6b: $80
    add b                                         ; $7f6c: $80
    add b                                         ; $7f6d: $80
    add b                                         ; $7f6e: $80
    add b                                         ; $7f6f: $80
    add b                                         ; $7f70: $80
    add b                                         ; $7f71: $80
    add b                                         ; $7f72: $80
    add b                                         ; $7f73: $80
    xor $ed                                       ; $7f74: $ee $ed
    db $ed                                        ; $7f76: $ed
    db $ed                                        ; $7f77: $ed
    ld de, $eded                                  ; $7f78: $11 $ed $ed
    db $ed                                        ; $7f7b: $ed
    db $ed                                        ; $7f7c: $ed
    db $ed                                        ; $7f7d: $ed
    db $ed                                        ; $7f7e: $ed
    db $ed                                        ; $7f7f: $ed
    db $ed                                        ; $7f80: $ed
    db $ed                                        ; $7f81: $ed
    db $ed                                        ; $7f82: $ed
    db $ed                                        ; $7f83: $ed
    add b                                         ; $7f84: $80
    add b                                         ; $7f85: $80
    add b                                         ; $7f86: $80
    add b                                         ; $7f87: $80
    add b                                         ; $7f88: $80
    add b                                         ; $7f89: $80
    add b                                         ; $7f8a: $80
    add b                                         ; $7f8b: $80
    add b                                         ; $7f8c: $80
    add b                                         ; $7f8d: $80
    add b                                         ; $7f8e: $80
    add b                                         ; $7f8f: $80
    add b                                         ; $7f90: $80
    add b                                         ; $7f91: $80
    add b                                         ; $7f92: $80
    add b                                         ; $7f93: $80
    ld l, $00                                     ; $7f94: $2e $00
    nop                                           ; $7f96: $00
    nop                                           ; $7f97: $00
    nop                                           ; $7f98: $00
    ld bc, $0200                                  ; $7f99: $01 $00 $02
    nop                                           ; $7f9c: $00
    inc bc                                        ; $7f9d: $03
    nop                                           ; $7f9e: $00
    nop                                           ; $7f9f: $00
    stop                                          ; $7fa0: $10 $00
    inc b                                         ; $7fa2: $04
    nop                                           ; $7fa3: $00
    dec b                                         ; $7fa4: $05
    nop                                           ; $7fa5: $00
    ld b, $00                                     ; $7fa6: $06 $00
    nop                                           ; $7fa8: $00
    rlca                                          ; $7fa9: $07
    nop                                           ; $7faa: $00
    ld de, $0800                                  ; $7fab: $11 $00 $08
    nop                                           ; $7fae: $00
    add hl, bc                                    ; $7faf: $09
    nop                                           ; $7fb0: $00
    nop                                           ; $7fb1: $00
    ld a, [bc]                                    ; $7fb2: $0a
    nop                                           ; $7fb3: $00
    dec bc                                        ; $7fb4: $0b
    nop                                           ; $7fb5: $00
    ld [de], a                                    ; $7fb6: $12
    nop                                           ; $7fb7: $00
    inc c                                         ; $7fb8: $0c
    nop                                           ; $7fb9: $00
    nop                                           ; $7fba: $00
    dec c                                         ; $7fbb: $0d
    nop                                           ; $7fbc: $00
    ld c, $00                                     ; $7fbd: $0e $00
    rrca                                          ; $7fbf: $0f
    nop                                           ; $7fc0: $00
    inc de                                        ; $7fc1: $13
    nop                                           ; $7fc2: $00
    ld b, h                                       ; $7fc3: $44
    inc d                                         ; $7fc4: $14
    ld [bc], a                                    ; $7fc5: $02
    nop                                           ; $7fc6: $00
    dec d                                         ; $7fc7: $15
    nop                                           ; $7fc8: $00
    ld d, $08                                     ; $7fc9: $16 $08
    nop                                           ; $7fcb: $00
    add hl, bc                                    ; $7fcc: $09
    nop                                           ; $7fcd: $00
    nop                                           ; $7fce: $00
    add hl, bc                                    ; $7fcf: $09
    nop                                           ; $7fd0: $00
    nop                                           ; $7fd1: $00
    rrca                                          ; $7fd2: $0f
    nop                                           ; $7fd3: $00
    ld bc, $0002                                  ; $7fd4: $01 $02 $00
    ld l, b                                       ; $7fd7: $68
    nop                                           ; $7fd8: $00
    ld a, c                                       ; $7fd9: $79
    nop                                           ; $7fda: $00
    ld [$8004], sp                                ; $7fdb: $08 $04 $80
    nop                                           ; $7fde: $00
    ccf                                           ; $7fdf: $3f
    nop                                           ; $7fe0: $00
    inc c                                         ; $7fe1: $0c
    ld bc, $0081                                  ; $7fe2: $01 $81 $00
    ld c, [hl]                                    ; $7fe5: $4e
    nop                                           ; $7fe6: $00
    rst $38                                       ; $7fe7: $ff
    rst $38                                       ; $7fe8: $ff
    rst $38                                       ; $7fe9: $ff
    rst $38                                       ; $7fea: $ff
    rst $38                                       ; $7feb: $ff
    rst $38                                       ; $7fec: $ff

    db $10, $00, $02, $00, $40, $00, $01, $60

    stop                                          ; $7ff5: $10 $00
    ld [bc], a                                    ; $7ff7: $02
    nop                                           ; $7ff8: $00
    ld b, b                                       ; $7ff9: $40
    nop                                           ; $7ffa: $00
    ld bc, $ff60                                  ; $7ffb: $01 $60 $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
