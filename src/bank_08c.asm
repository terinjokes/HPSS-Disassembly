; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $08c", ROMX[$4000], BANK[$8c]

    adc h                                         ; $4000: $8c
    jr jr_08c_4003                                ; $4001: $18 $00

jr_08c_4003:
    inc d                                         ; $4003: $14
    nop                                           ; $4004: $00
    ldh [$34], a                                  ; $4005: $e0 $34
    pop de                                        ; $4007: $d1
    jp nc, $d4d3                                  ; $4008: $d2 $d3 $d4

    push de                                       ; $400b: $d5
    sub $d7                                       ; $400c: $d6 $d7
    ret c                                         ; $400e: $d8

    reti                                          ; $400f: $d9


    jp c, $dcdb                                   ; $4010: $da $db $dc

    db $dd                                        ; $4013: $dd
    sbc $df                                       ; $4014: $de $df
    ldh [$03], a                                  ; $4016: $e0 $03
    add d                                         ; $4018: $82
    add d                                         ; $4019: $82
    add d                                         ; $401a: $82
    add d                                         ; $401b: $82
    add d                                         ; $401c: $82
    add d                                         ; $401d: $82
    add d                                         ; $401e: $82
    add d                                         ; $401f: $82
    add d                                         ; $4020: $82
    add d                                         ; $4021: $82
    add d                                         ; $4022: $82
    add d                                         ; $4023: $82
    add d                                         ; $4024: $82
    add d                                         ; $4025: $82
    add d                                         ; $4026: $82
    pop hl                                        ; $4027: $e1
    pop hl                                        ; $4028: $e1
    reti                                          ; $4029: $d9


    jp c, $e3e2                                   ; $402a: $da $e2 $e3

    db $dd                                        ; $402d: $dd
    sbc $e4                                       ; $402e: $de $e4
    push hl                                       ; $4030: $e5
    and $e7                                       ; $4031: $e6 $e7
    add sp, -$2e                                  ; $4033: $e8 $d2
    db $d3                                        ; $4035: $d3
    call nc, $0202                                ; $4036: $d4 $02 $02
    add d                                         ; $4039: $82
    add d                                         ; $403a: $82
    add d                                         ; $403b: $82
    add d                                         ; $403c: $82
    add d                                         ; $403d: $82
    add d                                         ; $403e: $82
    add d                                         ; $403f: $82
    add d                                         ; $4040: $82
    add d                                         ; $4041: $82
    add d                                         ; $4042: $82
    add d                                         ; $4043: $82
    add d                                         ; $4044: $82
    add d                                         ; $4045: $82
    add d                                         ; $4046: $82
    db $db                                        ; $4047: $db
    call c, $e9e4                                 ; $4048: $dc $e4 $e9
    rst $18                                       ; $404b: $df
    ldh [$e8], a                                  ; $404c: $e0 $e8
    ld [$e1eb], a                                 ; $404e: $ea $eb $e1
    pop hl                                        ; $4051: $e1
    db $ec                                        ; $4052: $ec
    pop hl                                        ; $4053: $e1
    pop hl                                        ; $4054: $e1
    pop hl                                        ; $4055: $e1
    pop hl                                        ; $4056: $e1
    add d                                         ; $4057: $82
    add d                                         ; $4058: $82
    add d                                         ; $4059: $82
    add d                                         ; $405a: $82
    add d                                         ; $405b: $82
    add d                                         ; $405c: $82
    add d                                         ; $405d: $82
    add d                                         ; $405e: $82
    inc bc                                        ; $405f: $03
    ld [bc], a                                    ; $4060: $02
    ld [bc], a                                    ; $4061: $02
    add d                                         ; $4062: $82
    ld [bc], a                                    ; $4063: $02
    ld [bc], a                                    ; $4064: $02
    ld [bc], a                                    ; $4065: $02
    ld [bc], a                                    ; $4066: $02
    sub $d7                                       ; $4067: $d6 $d7
    db $ed                                        ; $4069: $ed
    xor $ef                                       ; $406a: $ee $ef
    db $db                                        ; $406c: $db
    ldh a, [$dd]                                  ; $406d: $f0 $dd
    pop af                                        ; $406f: $f1
    rst $18                                       ; $4070: $df
    ld a, [c]                                     ; $4071: $f2
    and $e1                                       ; $4072: $e6 $e1
    pop de                                        ; $4074: $d1
    jp nc, $82d3                                  ; $4075: $d2 $d3 $82

    add d                                         ; $4078: $82
    add d                                         ; $4079: $82
    add d                                         ; $407a: $82
    add d                                         ; $407b: $82
    add d                                         ; $407c: $82
    add d                                         ; $407d: $82
    add d                                         ; $407e: $82
    add d                                         ; $407f: $82
    add d                                         ; $4080: $82
    add d                                         ; $4081: $82
    add d                                         ; $4082: $82
    ld [bc], a                                    ; $4083: $02
    inc bc                                        ; $4084: $03
    add d                                         ; $4085: $82
    add d                                         ; $4086: $82
    and $e7                                       ; $4087: $e6 $e7
    db $eb                                        ; $4089: $eb
    pop hl                                        ; $408a: $e1
    db $d3                                        ; $408b: $d3
    call nc, $e1e1                                ; $408c: $d4 $e1 $e1
    rst $10                                       ; $408f: $d7
    ret c                                         ; $4090: $d8

    ld [c], a                                     ; $4091: $e2
    pop hl                                        ; $4092: $e1
    db $db                                        ; $4093: $db
    call c, $e1e4                                 ; $4094: $dc $e4 $e1
    add d                                         ; $4097: $82
    add d                                         ; $4098: $82
    inc bc                                        ; $4099: $03
    ld [bc], a                                    ; $409a: $02
    add d                                         ; $409b: $82
    add d                                         ; $409c: $82
    ld [bc], a                                    ; $409d: $02
    ld [bc], a                                    ; $409e: $02
    add d                                         ; $409f: $82
    add d                                         ; $40a0: $82
    add d                                         ; $40a1: $82
    ld [bc], a                                    ; $40a2: $02
    add d                                         ; $40a3: $82
    add d                                         ; $40a4: $82
    add d                                         ; $40a5: $82
    ld [bc], a                                    ; $40a6: $02
    jp hl                                         ; $40a7: $e9


    sub $d7                                       ; $40a8: $d6 $d7
    ret c                                         ; $40aa: $d8

    ld [$dbef], a                                 ; $40ab: $ea $ef $db
    call c, $f1ec                                 ; $40ae: $dc $ec $f1
    rst $18                                       ; $40b1: $df
    ldh [$e1], a                                  ; $40b2: $e0 $e1
    pop hl                                        ; $40b4: $e1
    db $eb                                        ; $40b5: $eb
    pop hl                                        ; $40b6: $e1
    add d                                         ; $40b7: $82
    add d                                         ; $40b8: $82
    add d                                         ; $40b9: $82
    add d                                         ; $40ba: $82
    add d                                         ; $40bb: $82
    add d                                         ; $40bc: $82
    add d                                         ; $40bd: $82
    add d                                         ; $40be: $82
    add d                                         ; $40bf: $82
    add d                                         ; $40c0: $82
    add d                                         ; $40c1: $82
    add d                                         ; $40c2: $82
    ld [bc], a                                    ; $40c3: $02
    ld [bc], a                                    ; $40c4: $02
    inc bc                                        ; $40c5: $03
    ld [bc], a                                    ; $40c6: $02
    ld [c], a                                     ; $40c7: $e2
    pop hl                                        ; $40c8: $e1
    pop hl                                        ; $40c9: $e1
    pop hl                                        ; $40ca: $e1
    db $e4                                        ; $40cb: $e4
    pop hl                                        ; $40cc: $e1
    pop hl                                        ; $40cd: $e1
    pop hl                                        ; $40ce: $e1
    add sp, -$1f                                  ; $40cf: $e8 $e1
    pop hl                                        ; $40d1: $e1
    pop hl                                        ; $40d2: $e1
    pop hl                                        ; $40d3: $e1
    pop hl                                        ; $40d4: $e1
    pop hl                                        ; $40d5: $e1
    pop hl                                        ; $40d6: $e1
    add d                                         ; $40d7: $82
    ld [bc], a                                    ; $40d8: $02
    ld [bc], a                                    ; $40d9: $02
    ld [bc], a                                    ; $40da: $02
    add d                                         ; $40db: $82
    ld [bc], a                                    ; $40dc: $02
    ld [bc], a                                    ; $40dd: $02
    ld [bc], a                                    ; $40de: $02
    add d                                         ; $40df: $82
    ld [bc], a                                    ; $40e0: $02
    ld [bc], a                                    ; $40e1: $02
    ld [bc], a                                    ; $40e2: $02
    ld [bc], a                                    ; $40e3: $02
    ld [bc], a                                    ; $40e4: $02
    ld [bc], a                                    ; $40e5: $02
    ld [bc], a                                    ; $40e6: $02
    pop hl                                        ; $40e7: $e1
    push de                                       ; $40e8: $d5
    sub $d7                                       ; $40e9: $d6 $d7
    pop hl                                        ; $40eb: $e1
    reti                                          ; $40ec: $d9


    jp c, $e3db                                   ; $40ed: $da $db $e3

    db $dd                                        ; $40f0: $dd
    sbc $df                                       ; $40f1: $de $df
    push hl                                       ; $40f3: $e5
    and $e7                                       ; $40f4: $e6 $e7
    db $eb                                        ; $40f6: $eb
    ld [bc], a                                    ; $40f7: $02
    add d                                         ; $40f8: $82
    add d                                         ; $40f9: $82
    add d                                         ; $40fa: $82
    ld [bc], a                                    ; $40fb: $02
    add d                                         ; $40fc: $82
    add d                                         ; $40fd: $82
    add d                                         ; $40fe: $82
    add d                                         ; $40ff: $82
    add d                                         ; $4100: $82
    add d                                         ; $4101: $82
    add d                                         ; $4102: $82
    add d                                         ; $4103: $82
    add d                                         ; $4104: $82
    add d                                         ; $4105: $82
    inc bc                                        ; $4106: $03
    rst $18                                       ; $4107: $df
    ldh [$e8], a                                  ; $4108: $e0 $e8
    pop hl                                        ; $410a: $e1
    db $eb                                        ; $410b: $eb
    pop hl                                        ; $410c: $e1
    pop hl                                        ; $410d: $e1
    pop hl                                        ; $410e: $e1
    di                                            ; $410f: $f3
    pop hl                                        ; $4110: $e1
    pop hl                                        ; $4111: $e1
    pop hl                                        ; $4112: $e1
    db $f4                                        ; $4113: $f4
    push af                                       ; $4114: $f5
    pop hl                                        ; $4115: $e1
    or $82                                        ; $4116: $f6 $82
    add d                                         ; $4118: $82
    add d                                         ; $4119: $82
    ld [bc], a                                    ; $411a: $02
    inc bc                                        ; $411b: $03
    ld [bc], a                                    ; $411c: $02
    ld [bc], a                                    ; $411d: $02
    ld [bc], a                                    ; $411e: $02
    add d                                         ; $411f: $82
    ld [bc], a                                    ; $4120: $02
    ld [bc], a                                    ; $4121: $02
    ld [bc], a                                    ; $4122: $02
    add d                                         ; $4123: $82
    add d                                         ; $4124: $82
    ld [bc], a                                    ; $4125: $02
    ld bc, $e1e1                                  ; $4126: $01 $e1 $e1
    pop hl                                        ; $4129: $e1
    pop hl                                        ; $412a: $e1
    pop hl                                        ; $412b: $e1
    pop hl                                        ; $412c: $e1
    rst $30                                       ; $412d: $f7
    ld hl, sp-$07                                 ; $412e: $f8 $f9
    ld a, [$fcfb]                                 ; $4130: $fa $fb $fc
    rst $30                                       ; $4133: $f7
    ld hl, sp-$1f                                 ; $4134: $f8 $e1
    db $fd                                        ; $4136: $fd
    ld [bc], a                                    ; $4137: $02
    ld [bc], a                                    ; $4138: $02
    ld [bc], a                                    ; $4139: $02
    ld [bc], a                                    ; $413a: $02
    ld [bc], a                                    ; $413b: $02
    ld [bc], a                                    ; $413c: $02
    ld bc, $0101                                  ; $413d: $01 $01 $01
    ld bc, $0201                                  ; $4140: $01 $01 $02
    ld bc, $0201                                  ; $4143: $01 $01 $02
    ld [bc], a                                    ; $4146: $02
    ei                                            ; $4147: $fb
    or $e1                                        ; $4148: $f6 $e1
    pop hl                                        ; $414a: $e1
    ld sp, hl                                     ; $414b: $f9
    pop hl                                        ; $414c: $e1
    pop hl                                        ; $414d: $e1
    jp hl                                         ; $414e: $e9


    cp $e1                                        ; $414f: $fe $e1
    pop hl                                        ; $4151: $e1
    ld [$e1ff], a                                 ; $4152: $ea $ff $e1
    pop hl                                        ; $4155: $e1
    db $ec                                        ; $4156: $ec
    ld bc, $0201                                  ; $4157: $01 $01 $02
    ld [bc], a                                    ; $415a: $02
    ld bc, $0202                                  ; $415b: $01 $02 $02
    add d                                         ; $415e: $82
    ld [bc], a                                    ; $415f: $02
    ld [bc], a                                    ; $4160: $02
    ld [bc], a                                    ; $4161: $02
    add d                                         ; $4162: $82
    ld [bc], a                                    ; $4163: $02
    ld [bc], a                                    ; $4164: $02
    ld [bc], a                                    ; $4165: $02
    add d                                         ; $4166: $82
    jp nc, $d4d3                                  ; $4167: $d2 $d3 $d4

    pop hl                                        ; $416a: $e1
    sub $d7                                       ; $416b: $d6 $d7
    ret c                                         ; $416d: $d8

    ld [c], a                                     ; $416e: $e2
    rst $28                                       ; $416f: $ef
    db $db                                        ; $4170: $db
    call c, $f1e4                                 ; $4171: $dc $e4 $f1
    rst $18                                       ; $4174: $df
    ldh [$e8], a                                  ; $4175: $e0 $e8
    add d                                         ; $4177: $82
    add d                                         ; $4178: $82
    add d                                         ; $4179: $82
    ld [bc], a                                    ; $417a: $02
    add d                                         ; $417b: $82
    add d                                         ; $417c: $82
    add d                                         ; $417d: $82
    add d                                         ; $417e: $82
    add d                                         ; $417f: $82
    add d                                         ; $4180: $82
    add d                                         ; $4181: $82
    add d                                         ; $4182: $82
    add d                                         ; $4183: $82
    add d                                         ; $4184: $82
    add d                                         ; $4185: $82
    add d                                         ; $4186: $82
    db $dd                                        ; $4187: $dd
    nop                                           ; $4188: $00
    pop hl                                        ; $4189: $e1
    pop hl                                        ; $418a: $e1
    and $e7                                       ; $418b: $e6 $e7
    pop hl                                        ; $418d: $e1
    pop hl                                        ; $418e: $e1
    db $d3                                        ; $418f: $d3
    call nc, $e1e1                                ; $4190: $d4 $e1 $e1
    rst $10                                       ; $4193: $d7
    ret c                                         ; $4194: $d8

    ld [c], a                                     ; $4195: $e2
    pop hl                                        ; $4196: $e1
    add d                                         ; $4197: $82
    add d                                         ; $4198: $82
    ld [bc], a                                    ; $4199: $02
    ld [bc], a                                    ; $419a: $02
    add d                                         ; $419b: $82
    add d                                         ; $419c: $82
    ld [bc], a                                    ; $419d: $02
    ld [bc], a                                    ; $419e: $02
    add d                                         ; $419f: $82
    add d                                         ; $41a0: $82
    ld [bc], a                                    ; $41a1: $02
    ld [bc], a                                    ; $41a2: $02
    add d                                         ; $41a3: $82
    add d                                         ; $41a4: $82
    add d                                         ; $41a5: $82
    ld [bc], a                                    ; $41a6: $02
    pop hl                                        ; $41a7: $e1
    or $f7                                        ; $41a8: $f6 $f7
    ld bc, $02f9                                  ; $41aa: $01 $f9 $02
    inc bc                                        ; $41ad: $03
    or $e1                                        ; $41ae: $f6 $e1
    ld hl, sp+$04                                 ; $41b0: $f8 $04
    ld [bc], a                                    ; $41b2: $02
    pop hl                                        ; $41b3: $e1
    pop hl                                        ; $41b4: $e1
    rst $30                                       ; $41b5: $f7
    ld hl, sp+$02                                 ; $41b6: $f8 $02
    ld bc, $0201                                  ; $41b8: $01 $01 $02
    ld bc, $0101                                  ; $41bb: $01 $01 $01
    ld bc, $0102                                  ; $41be: $01 $02 $01
    ld bc, $0201                                  ; $41c1: $01 $01 $02
    ld [bc], a                                    ; $41c4: $02
    ld bc, $0501                                  ; $41c5: $01 $01 $05
    pop hl                                        ; $41c8: $e1
    pop hl                                        ; $41c9: $e1
    pop hl                                        ; $41ca: $e1
    rst $30                                       ; $41cb: $f7
    ld hl, sp-$1f                                 ; $41cc: $f8 $e1
    pop hl                                        ; $41ce: $e1
    inc bc                                        ; $41cf: $03
    ld b, $f7                                     ; $41d0: $06 $f7
    ld hl, sp+$04                                 ; $41d2: $f8 $04
    ld [bc], a                                    ; $41d4: $02
    inc bc                                        ; $41d5: $03
    ld b, $02                                     ; $41d6: $06 $02
    ld [bc], a                                    ; $41d8: $02
    ld [bc], a                                    ; $41d9: $02
    ld [bc], a                                    ; $41da: $02
    ld bc, $0201                                  ; $41db: $01 $01 $02
    ld [bc], a                                    ; $41de: $02
    ld bc, $0101                                  ; $41df: $01 $01 $01
    ld bc, $0101                                  ; $41e2: $01 $01 $01
    ld bc, $e101                                  ; $41e5: $01 $01 $e1
    db $eb                                        ; $41e8: $eb
    pop hl                                        ; $41e9: $e1
    rlca                                          ; $41ea: $07
    pop hl                                        ; $41eb: $e1
    pop hl                                        ; $41ec: $e1
    ld [$f909], sp                                ; $41ed: $08 $09 $f9
    pop hl                                        ; $41f0: $e1
    ld a, [bc]                                    ; $41f1: $0a
    dec bc                                        ; $41f2: $0b
    inc c                                         ; $41f3: $0c
    ld hl, sp+$0d                                 ; $41f4: $f8 $0d
    ld c, $02                                     ; $41f6: $0e $02
    inc bc                                        ; $41f8: $03
    ld [bc], a                                    ; $41f9: $02
    add d                                         ; $41fa: $82
    ld [bc], a                                    ; $41fb: $02
    ld [bc], a                                    ; $41fc: $02
    add d                                         ; $41fd: $82
    add d                                         ; $41fe: $82
    ld bc, $8202                                  ; $41ff: $01 $02 $82
    add d                                         ; $4202: $82
    ld bc, $8201                                  ; $4203: $01 $01 $82
    add d                                         ; $4206: $82
    push af                                       ; $4207: $f5
    rrca                                          ; $4208: $0f
    jp nc, Jump_000_00d3                          ; $4209: $d2 $d3 $00

    jp hl                                         ; $420c: $e9


    sub $d7                                       ; $420d: $d6 $d7
    rst $20                                       ; $420f: $e7
    ld [$dbef], a                                 ; $4210: $ea $ef $db
    call nc, $f1ec                                ; $4213: $d4 $ec $f1
    rst $18                                       ; $4216: $df
    add d                                         ; $4217: $82
    add d                                         ; $4218: $82
    add d                                         ; $4219: $82
    add d                                         ; $421a: $82
    add d                                         ; $421b: $82
    add d                                         ; $421c: $82
    add d                                         ; $421d: $82
    add d                                         ; $421e: $82
    add d                                         ; $421f: $82
    add d                                         ; $4220: $82
    add d                                         ; $4221: $82
    add d                                         ; $4222: $82
    add d                                         ; $4223: $82
    add d                                         ; $4224: $82
    add d                                         ; $4225: $82
    add d                                         ; $4226: $82
    call nc, Call_000_10e1                        ; $4227: $d4 $e1 $10
    ld de, $e2d8                                  ; $422a: $11 $d8 $e2
    db $10                                        ; $422d: $10
    ld [de], a                                    ; $422e: $12
    call c, Call_000_13e4                         ; $422f: $dc $e4 $13
    inc d                                         ; $4232: $14
    ldh [$e8], a                                  ; $4233: $e0 $e8
    dec d                                         ; $4235: $15
    ld d, $82                                     ; $4236: $16 $82
    ld [bc], a                                    ; $4238: $02
    inc bc                                        ; $4239: $03
    inc bc                                        ; $423a: $03
    add d                                         ; $423b: $82
    add d                                         ; $423c: $82
    ld b, e                                       ; $423d: $43
    inc bc                                        ; $423e: $03
    add d                                         ; $423f: $82
    add d                                         ; $4240: $82
    ld h, e                                       ; $4241: $63
    inc bc                                        ; $4242: $03
    add d                                         ; $4243: $82
    add d                                         ; $4244: $82
    ld h, e                                       ; $4245: $63
    inc bc                                        ; $4246: $03
    rla                                           ; $4247: $17
    jr jr_08c_425f                                ; $4248: $18 $15

    pop hl                                        ; $424a: $e1
    add hl, de                                    ; $424b: $19
    ld a, [de]                                    ; $424c: $1a
    inc de                                        ; $424d: $13
    rrca                                          ; $424e: $0f
    dec de                                        ; $424f: $1b
    inc e                                         ; $4250: $1c
    db $10                                        ; $4251: $10
    jp hl                                         ; $4252: $e9


    dec e                                         ; $4253: $1d
    ld e, $10                                     ; $4254: $1e $10
    ld [$0303], a                                 ; $4256: $ea $03 $03
    inc bc                                        ; $4259: $03
    ld [bc], a                                    ; $425a: $02
    inc bc                                        ; $425b: $03
    inc bc                                        ; $425c: $03
    inc bc                                        ; $425d: $03
    add d                                         ; $425e: $82

jr_08c_425f:
    inc bc                                        ; $425f: $03
    inc bc                                        ; $4260: $03
    inc hl                                        ; $4261: $23
    add d                                         ; $4262: $82
    inc bc                                        ; $4263: $03
    inc bc                                        ; $4264: $03
    ld h, e                                       ; $4265: $63
    add d                                         ; $4266: $82
    push hl                                       ; $4267: $e5
    and $e7                                       ; $4268: $e6 $e7
    pop hl                                        ; $426a: $e1
    jp nc, $d4d3                                  ; $426b: $d2 $d3 $d4

    pop hl                                        ; $426e: $e1
    sub $d7                                       ; $426f: $d6 $d7
    ret c                                         ; $4271: $d8

    ld [c], a                                     ; $4272: $e2
    rst $28                                       ; $4273: $ef
    db $db                                        ; $4274: $db
    call c, $82e4                                 ; $4275: $dc $e4 $82
    add d                                         ; $4278: $82
    add d                                         ; $4279: $82
    ld [bc], a                                    ; $427a: $02
    add d                                         ; $427b: $82
    add d                                         ; $427c: $82
    add d                                         ; $427d: $82
    ld [bc], a                                    ; $427e: $02
    add d                                         ; $427f: $82
    add d                                         ; $4280: $82
    add d                                         ; $4281: $82
    add d                                         ; $4282: $82
    add d                                         ; $4283: $82
    add d                                         ; $4284: $82
    add d                                         ; $4285: $82
    add d                                         ; $4286: $82
    ret c                                         ; $4287: $d8

    ld [c], a                                     ; $4288: $e2
    pop hl                                        ; $4289: $e1
    db $eb                                        ; $428a: $eb
    call c, $e1e4                                 ; $428b: $dc $e4 $e1
    pop hl                                        ; $428e: $e1
    ldh [$e8], a                                  ; $428f: $e0 $e8
    pop hl                                        ; $4291: $e1
    pop hl                                        ; $4292: $e1
    pop hl                                        ; $4293: $e1
    pop hl                                        ; $4294: $e1
    pop hl                                        ; $4295: $e1
    pop hl                                        ; $4296: $e1
    add d                                         ; $4297: $82
    add d                                         ; $4298: $82
    ld [bc], a                                    ; $4299: $02
    inc bc                                        ; $429a: $03
    add d                                         ; $429b: $82
    add d                                         ; $429c: $82
    ld [bc], a                                    ; $429d: $02
    ld [bc], a                                    ; $429e: $02
    add d                                         ; $429f: $82
    add d                                         ; $42a0: $82
    ld [bc], a                                    ; $42a1: $02
    ld [bc], a                                    ; $42a2: $02
    ld [bc], a                                    ; $42a3: $02
    ld [bc], a                                    ; $42a4: $02
    ld [bc], a                                    ; $42a5: $02
    ld [bc], a                                    ; $42a6: $02
    pop hl                                        ; $42a7: $e1
    pop hl                                        ; $42a8: $e1
    rra                                           ; $42a9: $1f
    jr nz, @-$1d                                  ; $42aa: $20 $e1

    pop hl                                        ; $42ac: $e1
    ld hl, $2322                                  ; $42ad: $21 $22 $23
    inc h                                         ; $42b0: $24
    pop hl                                        ; $42b1: $e1
    dec h                                         ; $42b2: $25
    pop hl                                        ; $42b3: $e1
    pop hl                                        ; $42b4: $e1
    pop hl                                        ; $42b5: $e1
    di                                            ; $42b6: $f3
    ld [bc], a                                    ; $42b7: $02
    ld [bc], a                                    ; $42b8: $02
    inc bc                                        ; $42b9: $03
    inc bc                                        ; $42ba: $03
    ld [bc], a                                    ; $42bb: $02
    ld [bc], a                                    ; $42bc: $02
    ld h, e                                       ; $42bd: $63
    inc bc                                        ; $42be: $03
    ld bc, $0201                                  ; $42bf: $01 $01 $02
    inc bc                                        ; $42c2: $03
    ld [bc], a                                    ; $42c3: $02
    ld [bc], a                                    ; $42c4: $02
    ld [bc], a                                    ; $42c5: $02
    add d                                         ; $42c6: $82
    ld h, $17                                     ; $42c7: $26 $17
    ld hl, $27ec                                  ; $42c9: $21 $ec $27
    jr nz, jr_08c_42ed                            ; $42cc: $20 $1f

    pop hl                                        ; $42ce: $e1
    ld [hl+], a                                   ; $42cf: $22
    dec de                                        ; $42d0: $1b
    inc e                                         ; $42d1: $1c
    jr z, jr_08c_42fd                             ; $42d2: $28 $29

    dec e                                         ; $42d4: $1d
    ld h, $11                                     ; $42d5: $26 $11
    inc bc                                        ; $42d7: $03
    inc bc                                        ; $42d8: $03
    inc bc                                        ; $42d9: $03
    add d                                         ; $42da: $82
    inc bc                                        ; $42db: $03
    inc bc                                        ; $42dc: $03
    ld h, e                                       ; $42dd: $63
    ld [bc], a                                    ; $42de: $02
    inc bc                                        ; $42df: $03
    inc bc                                        ; $42e0: $03
    inc bc                                        ; $42e1: $03
    inc hl                                        ; $42e2: $23
    inc bc                                        ; $42e3: $03
    inc bc                                        ; $42e4: $03
    inc bc                                        ; $42e5: $03
    inc bc                                        ; $42e6: $03
    pop af                                        ; $42e7: $f1
    rst $18                                       ; $42e8: $df
    ldh [$e8], a                                  ; $42e9: $e0 $e8
    pop hl                                        ; $42eb: $e1
    db $eb                                        ; $42ec: $eb

jr_08c_42ed:
    pop hl                                        ; $42ed: $e1
    pop hl                                        ; $42ee: $e1
    ld a, [hl+]                                   ; $42ef: $2a
    pop hl                                        ; $42f0: $e1
    pop hl                                        ; $42f1: $e1
    inc hl                                        ; $42f2: $23
    rla                                           ; $42f3: $17
    dec hl                                        ; $42f4: $2b
    inc l                                         ; $42f5: $2c
    dec l                                         ; $42f6: $2d
    add d                                         ; $42f7: $82
    add d                                         ; $42f8: $82
    add d                                         ; $42f9: $82
    add d                                         ; $42fa: $82
    ld [bc], a                                    ; $42fb: $02
    inc bc                                        ; $42fc: $03

jr_08c_42fd:
    ld [bc], a                                    ; $42fd: $02
    ld [bc], a                                    ; $42fe: $02
    inc hl                                        ; $42ff: $23
    ld [bc], a                                    ; $4300: $02
    ld [bc], a                                    ; $4301: $02
    ld bc, $0303                                  ; $4302: $01 $03 $03
    inc bc                                        ; $4305: $03
    inc bc                                        ; $4306: $03
    pop hl                                        ; $4307: $e1
    pop hl                                        ; $4308: $e1
    pop hl                                        ; $4309: $e1
    pop hl                                        ; $430a: $e1
    pop hl                                        ; $430b: $e1
    pop hl                                        ; $430c: $e1
    pop hl                                        ; $430d: $e1
    pop hl                                        ; $430e: $e1
    inc hl                                        ; $430f: $23
    inc h                                         ; $4310: $24
    pop hl                                        ; $4311: $e1
    pop hl                                        ; $4312: $e1
    pop hl                                        ; $4313: $e1
    pop hl                                        ; $4314: $e1
    pop hl                                        ; $4315: $e1
    pop hl                                        ; $4316: $e1
    ld [bc], a                                    ; $4317: $02
    ld [bc], a                                    ; $4318: $02
    ld [bc], a                                    ; $4319: $02
    ld [bc], a                                    ; $431a: $02
    ld [bc], a                                    ; $431b: $02
    ld [bc], a                                    ; $431c: $02
    ld [bc], a                                    ; $431d: $02
    ld [bc], a                                    ; $431e: $02
    ld bc, $0201                                  ; $431f: $01 $01 $02
    ld [bc], a                                    ; $4322: $02
    ld [bc], a                                    ; $4323: $02
    ld [bc], a                                    ; $4324: $02
    ld [bc], a                                    ; $4325: $02
    ld [bc], a                                    ; $4326: $02
    pop hl                                        ; $4327: $e1
    pop hl                                        ; $4328: $e1
    push af                                       ; $4329: $f5
    db $f4                                        ; $432a: $f4
    pop hl                                        ; $432b: $e1
    pop hl                                        ; $432c: $e1
    db $e3                                        ; $432d: $e3
    db $dd                                        ; $432e: $dd
    pop hl                                        ; $432f: $e1
    pop hl                                        ; $4330: $e1
    push hl                                       ; $4331: $e5
    and $e1                                       ; $4332: $e6 $e1
    rrca                                          ; $4334: $0f
    jp nc, Jump_000_02d3                          ; $4335: $d2 $d3 $02

    ld [bc], a                                    ; $4338: $02
    and d                                         ; $4339: $a2
    add d                                         ; $433a: $82
    ld [bc], a                                    ; $433b: $02
    ld [bc], a                                    ; $433c: $02
    add d                                         ; $433d: $82
    add d                                         ; $433e: $82
    ld [bc], a                                    ; $433f: $02
    ld [bc], a                                    ; $4340: $02
    add d                                         ; $4341: $82
    add d                                         ; $4342: $82
    ld [bc], a                                    ; $4343: $02
    add d                                         ; $4344: $82
    add d                                         ; $4345: $82
    add d                                         ; $4346: $82
    push af                                       ; $4347: $f5
    dec h                                         ; $4348: $25
    ld l, $27                                     ; $4349: $2e $27
    nop                                           ; $434b: $00
    pop hl                                        ; $434c: $e1
    add hl, hl                                    ; $434d: $29
    inc d                                         ; $434e: $14
    rst $20                                       ; $434f: $e7
    pop hl                                        ; $4350: $e1
    pop hl                                        ; $4351: $e1
    ld a, [hl+]                                   ; $4352: $2a
    call nc, Call_000_23e1                        ; $4353: $d4 $e1 $23
    inc h                                         ; $4356: $24
    add d                                         ; $4357: $82
    inc bc                                        ; $4358: $03
    inc bc                                        ; $4359: $03
    inc bc                                        ; $435a: $03
    add d                                         ; $435b: $82
    ld [bc], a                                    ; $435c: $02
    inc bc                                        ; $435d: $03
    inc bc                                        ; $435e: $03
    add d                                         ; $435f: $82
    ld [bc], a                                    ; $4360: $02
    ld [bc], a                                    ; $4361: $02
    ld b, e                                       ; $4362: $43
    add d                                         ; $4363: $82
    ld [bc], a                                    ; $4364: $02
    ld bc, $2001                                  ; $4365: $01 $01 $20
    ld a, [de]                                    ; $4368: $1a
    ld [hl+], a                                   ; $4369: $22
    ld de, $1c1b                                  ; $436a: $11 $1b $1c
    cpl                                           ; $436d: $2f
    jr nc, jr_08c_4398                            ; $436e: $30 $28

    ld e, $31                                     ; $4370: $1e $31
    inc d                                         ; $4372: $14
    pop hl                                        ; $4373: $e1
    dec l                                         ; $4374: $2d
    inc l                                         ; $4375: $2c
    dec hl                                        ; $4376: $2b
    inc bc                                        ; $4377: $03
    inc bc                                        ; $4378: $03
    inc bc                                        ; $4379: $03
    inc bc                                        ; $437a: $03
    inc bc                                        ; $437b: $03
    inc bc                                        ; $437c: $03
    inc bc                                        ; $437d: $03
    inc bc                                        ; $437e: $03
    ld b, e                                       ; $437f: $43
    inc bc                                        ; $4380: $03
    inc bc                                        ; $4381: $03
    inc bc                                        ; $4382: $03
    ld [bc], a                                    ; $4383: $02
    ld h, e                                       ; $4384: $63
    ld h, e                                       ; $4385: $63
    ld h, e                                       ; $4386: $63
    ld [hl-], a                                   ; $4387: $32
    inc sp                                        ; $4388: $33
    inc [hl]                                      ; $4389: $34
    pop hl                                        ; $438a: $e1
    dec [hl]                                      ; $438b: $35
    ld [hl], $37                                  ; $438c: $36 $37
    jr c, jr_08c_43c9                             ; $438e: $38 $39

    ld a, [hl-]                                   ; $4390: $3a
    dec sp                                        ; $4391: $3b
    inc a                                         ; $4392: $3c
    dec a                                         ; $4393: $3d
    ld a, $3f                                     ; $4394: $3e $3f
    ld b, b                                       ; $4396: $40
    add d                                         ; $4397: $82

jr_08c_4398:
    add d                                         ; $4398: $82
    add d                                         ; $4399: $82
    ld [bc], a                                    ; $439a: $02
    add d                                         ; $439b: $82
    add d                                         ; $439c: $82
    add d                                         ; $439d: $82
    add d                                         ; $439e: $82
    add d                                         ; $439f: $82
    add d                                         ; $43a0: $82
    add d                                         ; $43a1: $82
    add d                                         ; $43a2: $82
    add d                                         ; $43a3: $82
    add d                                         ; $43a4: $82
    add d                                         ; $43a5: $82
    add d                                         ; $43a6: $82
    pop hl                                        ; $43a7: $e1
    jp hl                                         ; $43a8: $e9


    sub $d7                                       ; $43a9: $d6 $d7
    pop hl                                        ; $43ab: $e1
    ld [$dbef], a                                 ; $43ac: $ea $ef $db
    pop hl                                        ; $43af: $e1
    db $ec                                        ; $43b0: $ec
    pop af                                        ; $43b1: $f1
    rst $18                                       ; $43b2: $df
    pop hl                                        ; $43b3: $e1
    pop hl                                        ; $43b4: $e1
    pop hl                                        ; $43b5: $e1
    db $eb                                        ; $43b6: $eb
    ld [bc], a                                    ; $43b7: $02
    add d                                         ; $43b8: $82
    add d                                         ; $43b9: $82
    add d                                         ; $43ba: $82
    ld [bc], a                                    ; $43bb: $02
    add d                                         ; $43bc: $82
    add d                                         ; $43bd: $82
    add d                                         ; $43be: $82
    ld [bc], a                                    ; $43bf: $02
    add d                                         ; $43c0: $82
    add d                                         ; $43c1: $82
    add d                                         ; $43c2: $82
    ld [bc], a                                    ; $43c3: $02
    ld [bc], a                                    ; $43c4: $02
    ld [bc], a                                    ; $43c5: $02
    inc bc                                        ; $43c6: $03
    ret c                                         ; $43c7: $d8

    ld [c], a                                     ; $43c8: $e2

jr_08c_43c9:
    pop hl                                        ; $43c9: $e1
    pop hl                                        ; $43ca: $e1
    call c, $e1e4                                 ; $43cb: $dc $e4 $e1
    pop hl                                        ; $43ce: $e1
    ldh [$e8], a                                  ; $43cf: $e0 $e8
    pop hl                                        ; $43d1: $e1
    pop hl                                        ; $43d2: $e1
    pop hl                                        ; $43d3: $e1
    pop hl                                        ; $43d4: $e1
    ld b, c                                       ; $43d5: $41
    pop hl                                        ; $43d6: $e1
    add d                                         ; $43d7: $82
    add d                                         ; $43d8: $82
    ld [bc], a                                    ; $43d9: $02
    ld [bc], a                                    ; $43da: $02
    add d                                         ; $43db: $82
    add d                                         ; $43dc: $82
    ld [bc], a                                    ; $43dd: $02
    ld [bc], a                                    ; $43de: $02
    add d                                         ; $43df: $82
    add d                                         ; $43e0: $82
    ld [bc], a                                    ; $43e1: $02
    ld [bc], a                                    ; $43e2: $02
    ld [bc], a                                    ; $43e3: $02
    ld [bc], a                                    ; $43e4: $02
    ld bc, $e102                                  ; $43e5: $01 $02 $e1
    ld b, d                                       ; $43e8: $42
    ld b, e                                       ; $43e9: $43
    pop hl                                        ; $43ea: $e1
    pop hl                                        ; $43eb: $e1
    ld b, h                                       ; $43ec: $44
    ld b, l                                       ; $43ed: $45
    pop hl                                        ; $43ee: $e1
    pop hl                                        ; $43ef: $e1
    ld b, c                                       ; $43f0: $41
    pop hl                                        ; $43f1: $e1
    ld b, [hl]                                    ; $43f2: $46
    ld b, a                                       ; $43f3: $47
    ld c, b                                       ; $43f4: $48
    ld c, c                                       ; $43f5: $49
    ld c, d                                       ; $43f6: $4a
    ld [bc], a                                    ; $43f7: $02
    ld bc, $0201                                  ; $43f8: $01 $01 $02
    ld [bc], a                                    ; $43fb: $02
    ld bc, $0201                                  ; $43fc: $01 $01 $02
    ld [bc], a                                    ; $43ff: $02
    ld bc, $0102                                  ; $4400: $01 $02 $01
    ld bc, $0101                                  ; $4403: $01 $01 $01
    ld bc, $e1e1                                  ; $4406: $01 $e1 $e1
    db $e3                                        ; $4409: $e3
    db $dd                                        ; $440a: $dd
    pop hl                                        ; $440b: $e1
    pop hl                                        ; $440c: $e1
    push hl                                       ; $440d: $e5
    and $e1                                       ; $440e: $e6 $e1
    rrca                                          ; $4410: $0f
    jp nc, $e1d3                                  ; $4411: $d2 $d3 $e1

    jp hl                                         ; $4414: $e9


    sub $d7                                       ; $4415: $d6 $d7
    ld [bc], a                                    ; $4417: $02
    ld [bc], a                                    ; $4418: $02
    add d                                         ; $4419: $82
    add d                                         ; $441a: $82
    ld [bc], a                                    ; $441b: $02
    ld [bc], a                                    ; $441c: $02
    add d                                         ; $441d: $82
    add d                                         ; $441e: $82
    ld [bc], a                                    ; $441f: $02
    add d                                         ; $4420: $82
    add d                                         ; $4421: $82
    add d                                         ; $4422: $82
    ld [bc], a                                    ; $4423: $02
    add d                                         ; $4424: $82
    add d                                         ; $4425: $82
    add d                                         ; $4426: $82
    nop                                           ; $4427: $00
    pop hl                                        ; $4428: $e1
    pop hl                                        ; $4429: $e1
    pop hl                                        ; $442a: $e1
    rst $20                                       ; $442b: $e7
    pop hl                                        ; $442c: $e1
    pop hl                                        ; $442d: $e1
    rrca                                          ; $442e: $0f
    call nc, $e1e1                                ; $442f: $d4 $e1 $e1
    jp hl                                         ; $4432: $e9


    ret c                                         ; $4433: $d8

    ld [c], a                                     ; $4434: $e2
    pop hl                                        ; $4435: $e1
    ld [$0282], a                                 ; $4436: $ea $82 $02
    ld [bc], a                                    ; $4439: $02
    ld [bc], a                                    ; $443a: $02
    add d                                         ; $443b: $82
    ld [bc], a                                    ; $443c: $02
    ld [bc], a                                    ; $443d: $02
    add d                                         ; $443e: $82
    add d                                         ; $443f: $82
    ld [bc], a                                    ; $4440: $02
    ld [bc], a                                    ; $4441: $02
    add d                                         ; $4442: $82
    add d                                         ; $4443: $82
    add d                                         ; $4444: $82
    ld [bc], a                                    ; $4445: $02
    add d                                         ; $4446: $82
    pop hl                                        ; $4447: $e1
    rrca                                          ; $4448: $0f
    jp nc, $e1d3                                  ; $4449: $d2 $d3 $e1

    jp hl                                         ; $444c: $e9


    sub $d7                                       ; $444d: $d6 $d7
    pop hl                                        ; $444f: $e1
    ld [$dbef], a                                 ; $4450: $ea $ef $db
    pop hl                                        ; $4453: $e1
    db $ec                                        ; $4454: $ec
    pop af                                        ; $4455: $f1
    rst $18                                       ; $4456: $df
    ld [bc], a                                    ; $4457: $02
    add d                                         ; $4458: $82
    add d                                         ; $4459: $82
    add d                                         ; $445a: $82
    ld [bc], a                                    ; $445b: $02
    add d                                         ; $445c: $82
    add d                                         ; $445d: $82
    add d                                         ; $445e: $82
    ld [bc], a                                    ; $445f: $02
    add d                                         ; $4460: $82
    add d                                         ; $4461: $82
    add d                                         ; $4462: $82
    ld [bc], a                                    ; $4463: $02
    add d                                         ; $4464: $82
    add d                                         ; $4465: $82
    add d                                         ; $4466: $82
    pop hl                                        ; $4467: $e1
    ld [$dbef], a                                 ; $4468: $ea $ef $db
    pop hl                                        ; $446b: $e1
    db $ec                                        ; $446c: $ec
    pop af                                        ; $446d: $f1
    rst $18                                       ; $446e: $df
    inc h                                         ; $446f: $24
    pop hl                                        ; $4470: $e1
    pop hl                                        ; $4471: $e1
    db $eb                                        ; $4472: $eb
    pop hl                                        ; $4473: $e1
    pop hl                                        ; $4474: $e1
    pop hl                                        ; $4475: $e1
    pop hl                                        ; $4476: $e1
    ld [bc], a                                    ; $4477: $02
    add d                                         ; $4478: $82
    add d                                         ; $4479: $82
    add d                                         ; $447a: $82
    ld [bc], a                                    ; $447b: $02
    add d                                         ; $447c: $82
    add d                                         ; $447d: $82
    add d                                         ; $447e: $82
    ld bc, $0202                                  ; $447f: $01 $02 $02
    inc bc                                        ; $4482: $03
    ld [bc], a                                    ; $4483: $02
    ld [bc], a                                    ; $4484: $02
    ld [bc], a                                    ; $4485: $02
    ld [bc], a                                    ; $4486: $02
    call c, $e1e4                                 ; $4487: $dc $e4 $e1
    db $ec                                        ; $448a: $ec
    ldh [$e8], a                                  ; $448b: $e0 $e8
    pop hl                                        ; $448d: $e1
    pop hl                                        ; $448e: $e1
    pop hl                                        ; $448f: $e1
    pop hl                                        ; $4490: $e1
    pop hl                                        ; $4491: $e1
    pop hl                                        ; $4492: $e1
    pop hl                                        ; $4493: $e1
    pop hl                                        ; $4494: $e1
    pop hl                                        ; $4495: $e1
    inc hl                                        ; $4496: $23
    add d                                         ; $4497: $82
    add d                                         ; $4498: $82
    ld [bc], a                                    ; $4499: $02
    add d                                         ; $449a: $82
    add d                                         ; $449b: $82
    add d                                         ; $449c: $82
    ld [bc], a                                    ; $449d: $02
    ld [bc], a                                    ; $449e: $02
    ld [bc], a                                    ; $449f: $02
    ld [bc], a                                    ; $44a0: $02
    ld [bc], a                                    ; $44a1: $02
    ld [bc], a                                    ; $44a2: $02
    ld [bc], a                                    ; $44a3: $02
    ld [bc], a                                    ; $44a4: $02
    ld [bc], a                                    ; $44a5: $02
    ld bc, $dff1                                  ; $44a6: $01 $f1 $df
    ldh [$e8], a                                  ; $44a9: $e0 $e8
    pop hl                                        ; $44ab: $e1
    db $eb                                        ; $44ac: $eb
    pop hl                                        ; $44ad: $e1
    pop hl                                        ; $44ae: $e1
    pop hl                                        ; $44af: $e1
    pop hl                                        ; $44b0: $e1
    pop hl                                        ; $44b1: $e1
    pop hl                                        ; $44b2: $e1
    inc h                                         ; $44b3: $24
    pop hl                                        ; $44b4: $e1
    pop hl                                        ; $44b5: $e1
    pop hl                                        ; $44b6: $e1
    add d                                         ; $44b7: $82
    add d                                         ; $44b8: $82
    add d                                         ; $44b9: $82
    add d                                         ; $44ba: $82
    ld [bc], a                                    ; $44bb: $02
    inc bc                                        ; $44bc: $03
    ld [bc], a                                    ; $44bd: $02
    ld [bc], a                                    ; $44be: $02
    ld [bc], a                                    ; $44bf: $02
    ld [bc], a                                    ; $44c0: $02
    ld [bc], a                                    ; $44c1: $02
    ld [bc], a                                    ; $44c2: $02
    ld bc, $0202                                  ; $44c3: $01 $02 $02
    ld [bc], a                                    ; $44c6: $02
    pop hl                                        ; $44c7: $e1
    pop hl                                        ; $44c8: $e1
    pop hl                                        ; $44c9: $e1
    db $eb                                        ; $44ca: $eb
    ld b, d                                       ; $44cb: $42
    ld b, e                                       ; $44cc: $43
    pop hl                                        ; $44cd: $e1
    pop hl                                        ; $44ce: $e1
    ld b, h                                       ; $44cf: $44
    ld b, l                                       ; $44d0: $45
    ld a, [hl+]                                   ; $44d1: $2a
    jr z, jr_08c_44fe                             ; $44d2: $28 $2a

    jr z, jr_08c_44f8                             ; $44d4: $28 $22

    ld de, $0202                                  ; $44d6: $11 $02 $02
    ld [bc], a                                    ; $44d9: $02
    inc bc                                        ; $44da: $03
    ld bc, $0201                                  ; $44db: $01 $01 $02
    ld [bc], a                                    ; $44de: $02
    ld bc, $0301                                  ; $44df: $01 $01 $03
    inc bc                                        ; $44e2: $03
    inc bc                                        ; $44e3: $03
    inc bc                                        ; $44e4: $03
    inc bc                                        ; $44e5: $03
    inc bc                                        ; $44e6: $03
    dec hl                                        ; $44e7: $2b
    inc l                                         ; $44e8: $2c
    dec l                                         ; $44e9: $2d
    ld c, e                                       ; $44ea: $4b
    jr nz, jr_08c_4507                            ; $44eb: $20 $1a

    ld c, h                                       ; $44ed: $4c
    ld h, $1b                                     ; $44ee: $26 $1b
    inc e                                         ; $44f0: $1c
    ld [hl+], a                                   ; $44f1: $22
    ld de, $121d                                  ; $44f2: $11 $1d $12
    add hl, de                                    ; $44f5: $19
    daa                                           ; $44f6: $27
    inc bc                                        ; $44f7: $03

jr_08c_44f8:
    inc bc                                        ; $44f8: $03
    inc bc                                        ; $44f9: $03
    inc bc                                        ; $44fa: $03
    inc bc                                        ; $44fb: $03
    inc bc                                        ; $44fc: $03
    inc bc                                        ; $44fd: $03

jr_08c_44fe:
    inc bc                                        ; $44fe: $03
    inc bc                                        ; $44ff: $03
    inc bc                                        ; $4500: $03
    inc bc                                        ; $4501: $03
    inc bc                                        ; $4502: $03
    inc bc                                        ; $4503: $03
    inc bc                                        ; $4504: $03
    inc bc                                        ; $4505: $03
    inc bc                                        ; $4506: $03

jr_08c_4507:
    ld c, l                                       ; $4507: $4d
    ld c, [hl]                                    ; $4508: $4e
    ld c, a                                       ; $4509: $4f
    ld c, e                                       ; $450a: $4b
    dec e                                         ; $450b: $1d
    ld e, $2e                                     ; $450c: $1e $2e
    daa                                           ; $450e: $27
    rla                                           ; $450f: $17
    jr jr_08c_4541                                ; $4510: $18 $2f

    jr nc, @+$22                                  ; $4512: $30 $20

    ld a, [de]                                    ; $4514: $1a
    ld c, h                                       ; $4515: $4c
    ld d, $03                                     ; $4516: $16 $03
    inc bc                                        ; $4518: $03
    inc bc                                        ; $4519: $03
    inc bc                                        ; $451a: $03
    inc bc                                        ; $451b: $03
    inc bc                                        ; $451c: $03
    inc bc                                        ; $451d: $03
    inc bc                                        ; $451e: $03
    inc bc                                        ; $451f: $03
    inc bc                                        ; $4520: $03
    inc bc                                        ; $4521: $03
    inc bc                                        ; $4522: $03
    inc bc                                        ; $4523: $03
    inc bc                                        ; $4524: $03
    inc bc                                        ; $4525: $03
    inc bc                                        ; $4526: $03
    ld c, l                                       ; $4527: $4d
    dec l                                         ; $4528: $2d
    inc l                                         ; $4529: $2c
    dec hl                                        ; $452a: $2b
    jr nz, jr_08c_4547                            ; $452b: $20 $1a

    ld c, h                                       ; $452d: $4c
    ld d, $1b                                     ; $452e: $16 $1b
    inc e                                         ; $4530: $1c
    ld [hl+], a                                   ; $4531: $22
    ld de, $1e1d                                  ; $4532: $11 $1d $1e
    dec hl                                        ; $4535: $2b
    inc l                                         ; $4536: $2c
    inc bc                                        ; $4537: $03
    inc hl                                        ; $4538: $23
    inc hl                                        ; $4539: $23
    inc hl                                        ; $453a: $23
    inc bc                                        ; $453b: $03
    inc bc                                        ; $453c: $03
    inc bc                                        ; $453d: $03
    inc bc                                        ; $453e: $03
    inc bc                                        ; $453f: $03
    inc bc                                        ; $4540: $03

jr_08c_4541:
    inc bc                                        ; $4541: $03
    inc bc                                        ; $4542: $03
    inc bc                                        ; $4543: $03
    inc bc                                        ; $4544: $03
    ld b, e                                       ; $4545: $43
    ld b, e                                       ; $4546: $43

jr_08c_4547:
    dec de                                        ; $4547: $1b
    inc e                                         ; $4548: $1c
    ld l, $27                                     ; $4549: $2e $27
    cpl                                           ; $454b: $2f
    jr nc, jr_08c_457f                            ; $454c: $30 $31

    inc d                                         ; $454e: $14
    rla                                           ; $454f: $17
    dec hl                                        ; $4550: $2b
    inc l                                         ; $4551: $2c
    dec l                                         ; $4552: $2d
    dec l                                         ; $4553: $2d
    inc hl                                        ; $4554: $23
    inc h                                         ; $4555: $24
    pop hl                                        ; $4556: $e1
    inc bc                                        ; $4557: $03
    inc bc                                        ; $4558: $03
    inc bc                                        ; $4559: $03
    inc bc                                        ; $455a: $03
    inc bc                                        ; $455b: $03
    inc bc                                        ; $455c: $03
    inc bc                                        ; $455d: $03
    inc bc                                        ; $455e: $03
    inc bc                                        ; $455f: $03
    ld b, e                                       ; $4560: $43
    ld b, e                                       ; $4561: $43
    ld b, e                                       ; $4562: $43
    ld b, e                                       ; $4563: $43
    ld bc, $0201                                  ; $4564: $01 $01 $02
    dec l                                         ; $4567: $2d
    inc l                                         ; $4568: $2c
    dec hl                                        ; $4569: $2b
    dec hl                                        ; $456a: $2b
    pop hl                                        ; $456b: $e1
    ld b, c                                       ; $456c: $41
    pop hl                                        ; $456d: $e1
    pop hl                                        ; $456e: $e1
    ld b, a                                       ; $456f: $47
    ld c, b                                       ; $4570: $48
    ld c, c                                       ; $4571: $49
    ld c, d                                       ; $4572: $4a
    ld d, b                                       ; $4573: $50
    ld d, c                                       ; $4574: $51
    ld d, d                                       ; $4575: $52
    ld d, e                                       ; $4576: $53
    ld h, e                                       ; $4577: $63
    ld h, e                                       ; $4578: $63
    ld h, e                                       ; $4579: $63
    ld b, e                                       ; $457a: $43
    ld [bc], a                                    ; $457b: $02
    ld bc, $0202                                  ; $457c: $01 $02 $02

jr_08c_457f:
    ld bc, $0101                                  ; $457f: $01 $01 $01
    ld bc, $0101                                  ; $4582: $01 $01 $01
    ld bc, $2c01                                  ; $4585: $01 $01 $2c
    dec l                                         ; $4588: $2d
    ld c, l                                       ; $4589: $4d
    ld c, l                                       ; $458a: $4d
    inc hl                                        ; $458b: $23
    inc h                                         ; $458c: $24
    pop hl                                        ; $458d: $e1
    ld b, c                                       ; $458e: $41
    ld d, h                                       ; $458f: $54
    ld b, [hl]                                    ; $4590: $46
    ld b, a                                       ; $4591: $47
    ld c, b                                       ; $4592: $48
    ld d, l                                       ; $4593: $55
    ld d, [hl]                                    ; $4594: $56
    ld d, b                                       ; $4595: $50
    ld b, [hl]                                    ; $4596: $46
    ld b, e                                       ; $4597: $43
    ld b, e                                       ; $4598: $43
    ld b, e                                       ; $4599: $43
    ld b, e                                       ; $459a: $43
    ld bc, $0201                                  ; $459b: $01 $01 $02
    ld bc, $0101                                  ; $459e: $01 $01 $01
    ld bc, $0101                                  ; $45a1: $01 $01 $01
    ld bc, $0101                                  ; $45a4: $01 $01 $01
    ld c, [hl]                                    ; $45a7: $4e
    ld a, [hl+]                                   ; $45a8: $2a
    pop hl                                        ; $45a9: $e1
    pop hl                                        ; $45aa: $e1
    pop hl                                        ; $45ab: $e1
    pop hl                                        ; $45ac: $e1
    pop hl                                        ; $45ad: $e1
    pop hl                                        ; $45ae: $e1
    ld c, c                                       ; $45af: $49
    pop hl                                        ; $45b0: $e1
    ld b, c                                       ; $45b1: $41
    pop hl                                        ; $45b2: $e1
    ld b, a                                       ; $45b3: $47
    ld c, b                                       ; $45b4: $48
    ld c, c                                       ; $45b5: $49
    ld c, d                                       ; $45b6: $4a
    ld b, e                                       ; $45b7: $43
    ld h, e                                       ; $45b8: $63
    ld [bc], a                                    ; $45b9: $02
    ld [bc], a                                    ; $45ba: $02
    ld [bc], a                                    ; $45bb: $02
    ld [bc], a                                    ; $45bc: $02
    ld [bc], a                                    ; $45bd: $02
    ld [bc], a                                    ; $45be: $02
    ld bc, $0102                                  ; $45bf: $01 $02 $01
    ld [bc], a                                    ; $45c2: $02
    ld bc, $0101                                  ; $45c3: $01 $01 $01
    ld bc, $e1e1                                  ; $45c6: $01 $e1 $e1
    pop hl                                        ; $45c9: $e1
    pop hl                                        ; $45ca: $e1
    pop hl                                        ; $45cb: $e1
    pop hl                                        ; $45cc: $e1
    pop hl                                        ; $45cd: $e1
    pop hl                                        ; $45ce: $e1
    ld b, d                                       ; $45cf: $42
    ld b, e                                       ; $45d0: $43
    pop hl                                        ; $45d1: $e1
    pop hl                                        ; $45d2: $e1
    ld b, h                                       ; $45d3: $44
    ld b, l                                       ; $45d4: $45
    pop hl                                        ; $45d5: $e1
    pop hl                                        ; $45d6: $e1
    ld [bc], a                                    ; $45d7: $02
    ld [bc], a                                    ; $45d8: $02
    ld [bc], a                                    ; $45d9: $02
    ld [bc], a                                    ; $45da: $02
    ld [bc], a                                    ; $45db: $02
    ld [bc], a                                    ; $45dc: $02
    ld [bc], a                                    ; $45dd: $02
    ld [bc], a                                    ; $45de: $02
    ld bc, $0201                                  ; $45df: $01 $01 $02
    ld [bc], a                                    ; $45e2: $02
    ld bc, $0201                                  ; $45e3: $01 $01 $02
    ld [bc], a                                    ; $45e6: $02
    call nc, $e1e1                                ; $45e7: $d4 $e1 $e1
    pop hl                                        ; $45ea: $e1
    ret c                                         ; $45eb: $d8

    ld [c], a                                     ; $45ec: $e2
    pop hl                                        ; $45ed: $e1
    pop hl                                        ; $45ee: $e1
    call c, $e1e4                                 ; $45ef: $dc $e4 $e1
    pop hl                                        ; $45f2: $e1
    ldh [$e8], a                                  ; $45f3: $e0 $e8
    pop hl                                        ; $45f5: $e1
    pop hl                                        ; $45f6: $e1
    add d                                         ; $45f7: $82
    ld [bc], a                                    ; $45f8: $02
    ld [bc], a                                    ; $45f9: $02
    ld [bc], a                                    ; $45fa: $02
    add d                                         ; $45fb: $82
    add d                                         ; $45fc: $82
    ld [bc], a                                    ; $45fd: $02
    ld [bc], a                                    ; $45fe: $02
    add d                                         ; $45ff: $82
    add d                                         ; $4600: $82
    ld [bc], a                                    ; $4601: $02
    ld [bc], a                                    ; $4602: $02
    add d                                         ; $4603: $82
    add d                                         ; $4604: $82
    ld [bc], a                                    ; $4605: $02
    ld [bc], a                                    ; $4606: $02
    ld d, a                                       ; $4607: $57
    pop hl                                        ; $4608: $e1
    ld c, c                                       ; $4609: $49
    ld d, [hl]                                    ; $460a: $56
    ld e, b                                       ; $460b: $58
    pop hl                                        ; $460c: $e1
    ld b, a                                       ; $460d: $47
    ld d, e                                       ; $460e: $53
    ld e, c                                       ; $460f: $59
    pop hl                                        ; $4610: $e1
    ld d, h                                       ; $4611: $54
    ld d, c                                       ; $4612: $51
    ld e, d                                       ; $4613: $5a
    pop hl                                        ; $4614: $e1
    ld c, c                                       ; $4615: $49
    ld d, [hl]                                    ; $4616: $56
    rlca                                          ; $4617: $07
    ld [bc], a                                    ; $4618: $02
    ld bc, $0701                                  ; $4619: $01 $01 $07
    ld [bc], a                                    ; $461c: $02
    ld bc, $0701                                  ; $461d: $01 $01 $07
    ld [bc], a                                    ; $4620: $02
    ld bc, $0301                                  ; $4621: $01 $01 $03
    ld [bc], a                                    ; $4624: $02
    ld bc, $5001                                  ; $4625: $01 $01 $50
    ld b, [hl]                                    ; $4628: $46
    pop hl                                        ; $4629: $e1
    pop hl                                        ; $462a: $e1
    ld d, l                                       ; $462b: $55
    ld c, d                                       ; $462c: $4a
    pop hl                                        ; $462d: $e1
    pop hl                                        ; $462e: $e1
    ld d, d                                       ; $462f: $52
    ld c, b                                       ; $4630: $48
    ld c, c                                       ; $4631: $49
    pop hl                                        ; $4632: $e1
    ld d, b                                       ; $4633: $50
    ld b, [hl]                                    ; $4634: $46
    ld b, a                                       ; $4635: $47
    pop hl                                        ; $4636: $e1
    ld bc, $0201                                  ; $4637: $01 $01 $02
    ld [bc], a                                    ; $463a: $02
    ld bc, $0201                                  ; $463b: $01 $01 $02
    ld [bc], a                                    ; $463e: $02
    ld bc, $0101                                  ; $463f: $01 $01 $01
    ld [bc], a                                    ; $4642: $02
    ld bc, $0101                                  ; $4643: $01 $01 $01
    ld [bc], a                                    ; $4646: $02
    pop hl                                        ; $4647: $e1
    pop hl                                        ; $4648: $e1
    pop hl                                        ; $4649: $e1
    pop hl                                        ; $464a: $e1
    pop hl                                        ; $464b: $e1
    pop hl                                        ; $464c: $e1
    pop hl                                        ; $464d: $e1
    pop hl                                        ; $464e: $e1
    pop hl                                        ; $464f: $e1
    pop hl                                        ; $4650: $e1
    pop hl                                        ; $4651: $e1
    pop hl                                        ; $4652: $e1
    pop hl                                        ; $4653: $e1
    pop hl                                        ; $4654: $e1
    pop hl                                        ; $4655: $e1
    ld e, e                                       ; $4656: $5b
    ld [bc], a                                    ; $4657: $02
    ld [bc], a                                    ; $4658: $02
    ld [bc], a                                    ; $4659: $02
    ld [bc], a                                    ; $465a: $02
    ld [bc], a                                    ; $465b: $02
    ld [bc], a                                    ; $465c: $02
    ld [bc], a                                    ; $465d: $02
    ld [bc], a                                    ; $465e: $02
    ld [bc], a                                    ; $465f: $02
    ld [bc], a                                    ; $4660: $02
    ld [bc], a                                    ; $4661: $02
    ld [bc], a                                    ; $4662: $02
    ld [bc], a                                    ; $4663: $02
    ld [bc], a                                    ; $4664: $02
    ld [bc], a                                    ; $4665: $02
    ld b, $e1                                     ; $4666: $06 $e1
    pop hl                                        ; $4668: $e1
    ld a, [hl+]                                   ; $4669: $2a
    jr z, jr_08c_4696                             ; $466a: $28 $2a

    jr z, jr_08c_469c                             ; $466c: $28 $2e

    daa                                           ; $466e: $27
    dec e                                         ; $466f: $1d
    ld e, $26                                     ; $4670: $1e $26
    inc d                                         ; $4672: $14
    rla                                           ; $4673: $17
    jr @+$4e                                      ; $4674: $18 $4c

    ld d, $02                                     ; $4676: $16 $02
    ld [bc], a                                    ; $4678: $02
    inc bc                                        ; $4679: $03
    inc bc                                        ; $467a: $03
    inc bc                                        ; $467b: $03
    inc bc                                        ; $467c: $03
    inc bc                                        ; $467d: $03
    inc bc                                        ; $467e: $03
    inc bc                                        ; $467f: $03
    inc bc                                        ; $4680: $03
    inc bc                                        ; $4681: $03
    inc bc                                        ; $4682: $03
    inc bc                                        ; $4683: $03
    inc bc                                        ; $4684: $03
    inc bc                                        ; $4685: $03
    inc bc                                        ; $4686: $03
    ld e, h                                       ; $4687: $5c
    pop hl                                        ; $4688: $e1
    ld b, a                                       ; $4689: $47
    ld d, e                                       ; $468a: $53
    ld e, h                                       ; $468b: $5c
    pop hl                                        ; $468c: $e1
    ld d, h                                       ; $468d: $54
    ld d, c                                       ; $468e: $51
    ld e, l                                       ; $468f: $5d
    pop hl                                        ; $4690: $e1
    ld c, c                                       ; $4691: $49
    ld c, d                                       ; $4692: $4a
    ld e, [hl]                                    ; $4693: $5e
    pop hl                                        ; $4694: $e1
    pop hl                                        ; $4695: $e1

jr_08c_4696:
    ld c, b                                       ; $4696: $48
    inc bc                                        ; $4697: $03
    ld [bc], a                                    ; $4698: $02
    ld bc, $0301                                  ; $4699: $01 $01 $03

jr_08c_469c:
    ld [bc], a                                    ; $469c: $02
    ld bc, $0701                                  ; $469d: $01 $01 $07
    ld [bc], a                                    ; $46a0: $02
    ld bc, $0701                                  ; $46a1: $01 $01 $07
    ld [bc], a                                    ; $46a4: $02
    ld [bc], a                                    ; $46a5: $02
    ld bc, $5655                                  ; $46a6: $01 $55 $56
    ld d, h                                       ; $46a9: $54
    pop hl                                        ; $46aa: $e1
    ld d, d                                       ; $46ab: $52
    ld d, e                                       ; $46ac: $53
    ld c, c                                       ; $46ad: $49
    ld c, d                                       ; $46ae: $4a
    ld d, b                                       ; $46af: $50
    ld d, c                                       ; $46b0: $51
    ld b, a                                       ; $46b1: $47
    ld c, b                                       ; $46b2: $48
    ld d, l                                       ; $46b3: $55
    ld d, [hl]                                    ; $46b4: $56
    ld d, b                                       ; $46b5: $50
    ld b, [hl]                                    ; $46b6: $46
    ld bc, $0101                                  ; $46b7: $01 $01 $01
    ld [bc], a                                    ; $46ba: $02
    ld bc, $0101                                  ; $46bb: $01 $01 $01
    ld bc, $0101                                  ; $46be: $01 $01 $01
    ld bc, $0101                                  ; $46c1: $01 $01 $01
    ld bc, $0101                                  ; $46c4: $01 $01 $01
    pop hl                                        ; $46c7: $e1
    pop hl                                        ; $46c8: $e1
    ld e, a                                       ; $46c9: $5f
    ld h, b                                       ; $46ca: $60
    pop hl                                        ; $46cb: $e1
    pop hl                                        ; $46cc: $e1
    ld h, c                                       ; $46cd: $61
    ld h, d                                       ; $46ce: $62
    pop hl                                        ; $46cf: $e1
    pop hl                                        ; $46d0: $e1
    ld h, e                                       ; $46d1: $63
    ld h, h                                       ; $46d2: $64
    ld b, a                                       ; $46d3: $47
    ld c, b                                       ; $46d4: $48
    ld h, l                                       ; $46d5: $65
    ld h, [hl]                                    ; $46d6: $66
    ld [bc], a                                    ; $46d7: $02
    ld [bc], a                                    ; $46d8: $02
    ld b, $06                                     ; $46d9: $06 $06
    ld [bc], a                                    ; $46db: $02
    ld [bc], a                                    ; $46dc: $02
    ld b, $06                                     ; $46dd: $06 $06
    ld [bc], a                                    ; $46df: $02
    ld [bc], a                                    ; $46e0: $02
    ld b, $06                                     ; $46e1: $06 $06
    ld bc, $0601                                  ; $46e3: $01 $01 $06
    ld b, $12                                     ; $46e6: $06 $12
    add hl, de                                    ; $46e8: $19
    ld [hl+], a                                   ; $46e9: $22
    jr z, jr_08c_4717                             ; $46ea: $28 $2b

    inc l                                         ; $46ec: $2c
    dec l                                         ; $46ed: $2d
    pop hl                                        ; $46ee: $e1
    pop hl                                        ; $46ef: $e1
    ld b, c                                       ; $46f0: $41
    pop hl                                        ; $46f1: $e1
    pop hl                                        ; $46f2: $e1
    pop hl                                        ; $46f3: $e1
    pop hl                                        ; $46f4: $e1
    di                                            ; $46f5: $f3
    pop hl                                        ; $46f6: $e1
    inc bc                                        ; $46f7: $03
    inc bc                                        ; $46f8: $03
    inc bc                                        ; $46f9: $03
    ld h, e                                       ; $46fa: $63
    ld b, e                                       ; $46fb: $43
    ld b, e                                       ; $46fc: $43
    ld b, e                                       ; $46fd: $43
    ld [bc], a                                    ; $46fe: $02
    ld [bc], a                                    ; $46ff: $02
    ld bc, $0202                                  ; $4700: $01 $02 $02
    ld [bc], a                                    ; $4703: $02
    ld [bc], a                                    ; $4704: $02
    add d                                         ; $4705: $82
    ld [bc], a                                    ; $4706: $02
    ld h, a                                       ; $4707: $67
    pop hl                                        ; $4708: $e1
    pop hl                                        ; $4709: $e1
    ld b, [hl]                                    ; $470a: $46
    ld l, b                                       ; $470b: $68
    pop hl                                        ; $470c: $e1
    pop hl                                        ; $470d: $e1
    pop hl                                        ; $470e: $e1
    ld l, c                                       ; $470f: $69
    pop hl                                        ; $4710: $e1
    pop hl                                        ; $4711: $e1
    pop hl                                        ; $4712: $e1
    ld l, d                                       ; $4713: $6a
    ld l, e                                       ; $4714: $6b
    pop hl                                        ; $4715: $e1
    pop hl                                        ; $4716: $e1

jr_08c_4717:
    rlca                                          ; $4717: $07
    ld [bc], a                                    ; $4718: $02
    ld [bc], a                                    ; $4719: $02
    ld bc, $0207                                  ; $471a: $01 $07 $02
    ld [bc], a                                    ; $471d: $02
    ld [bc], a                                    ; $471e: $02
    rlca                                          ; $471f: $07
    ld [bc], a                                    ; $4720: $02
    ld [bc], a                                    ; $4721: $02
    ld [bc], a                                    ; $4722: $02
    rlca                                          ; $4723: $07
    rlca                                          ; $4724: $07
    ld [bc], a                                    ; $4725: $02
    ld [bc], a                                    ; $4726: $02
    ld d, d                                       ; $4727: $52
    ld c, b                                       ; $4728: $48
    ld d, l                                       ; $4729: $55
    ld d, [hl]                                    ; $472a: $56
    ld d, h                                       ; $472b: $54
    ld d, c                                       ; $472c: $51
    ld b, a                                       ; $472d: $47
    ld d, e                                       ; $472e: $53
    ld c, c                                       ; $472f: $49
    ld c, d                                       ; $4730: $4a
    ld d, h                                       ; $4731: $54
    ld b, [hl]                                    ; $4732: $46
    pop hl                                        ; $4733: $e1
    pop hl                                        ; $4734: $e1
    ld c, c                                       ; $4735: $49
    ld c, d                                       ; $4736: $4a
    ld bc, $0101                                  ; $4737: $01 $01 $01
    ld bc, $0101                                  ; $473a: $01 $01 $01
    ld bc, $0101                                  ; $473d: $01 $01 $01
    ld bc, $0101                                  ; $4740: $01 $01 $01
    ld [bc], a                                    ; $4743: $02
    ld [bc], a                                    ; $4744: $02
    ld bc, $5401                                  ; $4745: $01 $01 $54
    ld b, [hl]                                    ; $4748: $46
    ld l, h                                       ; $4749: $6c
    ld l, l                                       ; $474a: $6d
    ld d, l                                       ; $474b: $55
    ld d, [hl]                                    ; $474c: $56
    ld l, [hl]                                    ; $474d: $6e
    ld l, a                                       ; $474e: $6f
    ld b, a                                       ; $474f: $47
    ld d, e                                       ; $4750: $53
    ld [hl], b                                    ; $4751: $70
    ld [hl], c                                    ; $4752: $71
    ld d, h                                       ; $4753: $54
    ld d, c                                       ; $4754: $51
    ld [hl], d                                    ; $4755: $72
    ld [hl], e                                    ; $4756: $73
    ld bc, $0601                                  ; $4757: $01 $01 $06
    ld b, $01                                     ; $475a: $06 $01
    ld bc, $0606                                  ; $475c: $01 $06 $06
    ld bc, $0601                                  ; $475f: $01 $01 $06
    ld b, $01                                     ; $4762: $06 $01
    ld bc, $0606                                  ; $4764: $01 $06 $06
    pop hl                                        ; $4767: $e1
    push af                                       ; $4768: $f5
    db $f4                                        ; $4769: $f4
    push af                                       ; $476a: $f5
    pop hl                                        ; $476b: $e1
    db $e3                                        ; $476c: $e3
    db $dd                                        ; $476d: $dd
    nop                                           ; $476e: $00
    pop hl                                        ; $476f: $e1
    push hl                                       ; $4770: $e5
    and $e7                                       ; $4771: $e6 $e7
    rrca                                          ; $4773: $0f
    jp nc, $d4d3                                  ; $4774: $d2 $d3 $d4

    ld [bc], a                                    ; $4777: $02
    and d                                         ; $4778: $a2
    add d                                         ; $4779: $82
    add d                                         ; $477a: $82
    ld [bc], a                                    ; $477b: $02
    add d                                         ; $477c: $82
    add d                                         ; $477d: $82
    add d                                         ; $477e: $82
    ld [bc], a                                    ; $477f: $02
    add d                                         ; $4780: $82
    add d                                         ; $4781: $82
    add d                                         ; $4782: $82
    add d                                         ; $4783: $82
    add d                                         ; $4784: $82
    add d                                         ; $4785: $82
    add d                                         ; $4786: $82
    ld [hl], h                                    ; $4787: $74
    ld [hl], l                                    ; $4788: $75
    halt                                          ; $4789: $76
    ld [hl], a                                    ; $478a: $77
    ld a, b                                       ; $478b: $78
    ld a, c                                       ; $478c: $79
    ld a, d                                       ; $478d: $7a
    ld a, e                                       ; $478e: $7b
    ld a, h                                       ; $478f: $7c
    ld a, l                                       ; $4790: $7d
    ld a, [hl]                                    ; $4791: $7e
    ld a, a                                       ; $4792: $7f
    add b                                         ; $4793: $80
    add c                                         ; $4794: $81
    add d                                         ; $4795: $82
    add e                                         ; $4796: $83
    rlca                                          ; $4797: $07
    rlca                                          ; $4798: $07
    rlca                                          ; $4799: $07
    rlca                                          ; $479a: $07
    rlca                                          ; $479b: $07
    rlca                                          ; $479c: $07
    rlca                                          ; $479d: $07
    rlca                                          ; $479e: $07
    rlca                                          ; $479f: $07
    rlca                                          ; $47a0: $07
    rlca                                          ; $47a1: $07
    rlca                                          ; $47a2: $07
    rrca                                          ; $47a3: $0f
    rrca                                          ; $47a4: $0f
    rrca                                          ; $47a5: $0f
    rrca                                          ; $47a6: $0f
    pop hl                                        ; $47a7: $e1
    pop hl                                        ; $47a8: $e1
    pop hl                                        ; $47a9: $e1
    ld c, b                                       ; $47aa: $48
    add h                                         ; $47ab: $84
    add l                                         ; $47ac: $85
    pop hl                                        ; $47ad: $e1
    pop hl                                        ; $47ae: $e1
    add [hl]                                      ; $47af: $86
    add a                                         ; $47b0: $87
    adc b                                         ; $47b1: $88
    adc c                                         ; $47b2: $89
    adc d                                         ; $47b3: $8a
    adc e                                         ; $47b4: $8b
    adc h                                         ; $47b5: $8c
    adc l                                         ; $47b6: $8d
    ld [bc], a                                    ; $47b7: $02
    ld [bc], a                                    ; $47b8: $02
    ld [bc], a                                    ; $47b9: $02
    ld bc, $0f0f                                  ; $47ba: $01 $0f $0f
    ld [bc], a                                    ; $47bd: $02
    ld [bc], a                                    ; $47be: $02
    rrca                                          ; $47bf: $0f
    rrca                                          ; $47c0: $0f
    rrca                                          ; $47c1: $0f
    rrca                                          ; $47c2: $0f
    rrca                                          ; $47c3: $0f
    rrca                                          ; $47c4: $0f
    rrca                                          ; $47c5: $0f
    rrca                                          ; $47c6: $0f
    ld c, c                                       ; $47c7: $49
    ld c, d                                       ; $47c8: $4a
    adc [hl]                                      ; $47c9: $8e
    adc a                                         ; $47ca: $8f
    pop hl                                        ; $47cb: $e1
    pop hl                                        ; $47cc: $e1
    sub b                                         ; $47cd: $90
    sub c                                         ; $47ce: $91
    push af                                       ; $47cf: $f5
    pop hl                                        ; $47d0: $e1
    sub d                                         ; $47d1: $92
    sub e                                         ; $47d2: $93
    sub h                                         ; $47d3: $94
    sub l                                         ; $47d4: $95
    sub [hl]                                      ; $47d5: $96
    sub a                                         ; $47d6: $97
    ld bc, $0e01                                  ; $47d7: $01 $01 $0e
    ld c, $02                                     ; $47da: $0e $02
    ld [bc], a                                    ; $47dc: $02
    ld c, $0e                                     ; $47dd: $0e $0e
    rlca                                          ; $47df: $07
    ld [bc], a                                    ; $47e0: $02
    ld c, $0e                                     ; $47e1: $0e $0e
    rrca                                          ; $47e3: $0f
    rrca                                          ; $47e4: $0f
    ld c, $0e                                     ; $47e5: $0e $0e
    pop hl                                        ; $47e7: $e1
    sbc b                                         ; $47e8: $98
    pop hl                                        ; $47e9: $e1
    pop hl                                        ; $47ea: $e1
    push af                                       ; $47eb: $f5
    sbc c                                         ; $47ec: $99
    pop hl                                        ; $47ed: $e1
    pop hl                                        ; $47ee: $e1
    sbc d                                         ; $47ef: $9a
    sbc e                                         ; $47f0: $9b
    sbc h                                         ; $47f1: $9c
    pop hl                                        ; $47f2: $e1
    sbc l                                         ; $47f3: $9d
    sbc [hl]                                      ; $47f4: $9e
    sbc a                                         ; $47f5: $9f
    and b                                         ; $47f6: $a0
    ld [bc], a                                    ; $47f7: $02
    ld c, $02                                     ; $47f8: $0e $02
    ld [bc], a                                    ; $47fa: $02
    ld h, $0e                                     ; $47fb: $26 $0e
    ld [bc], a                                    ; $47fd: $02
    ld [bc], a                                    ; $47fe: $02
    ld c, $0e                                     ; $47ff: $0e $0e
    ld c, $02                                     ; $4801: $0e $02
    ld c, $0e                                     ; $4803: $0e $0e
    ld c, $0e                                     ; $4805: $0e $0e
    pop hl                                        ; $4807: $e1
    pop hl                                        ; $4808: $e1
    pop hl                                        ; $4809: $e1
    pop hl                                        ; $480a: $e1
    pop hl                                        ; $480b: $e1
    pop hl                                        ; $480c: $e1
    pop hl                                        ; $480d: $e1
    pop hl                                        ; $480e: $e1
    pop hl                                        ; $480f: $e1
    pop hl                                        ; $4810: $e1
    pop hl                                        ; $4811: $e1
    pop hl                                        ; $4812: $e1
    pop hl                                        ; $4813: $e1
    pop hl                                        ; $4814: $e1
    pop hl                                        ; $4815: $e1
    pop hl                                        ; $4816: $e1
    ld [bc], a                                    ; $4817: $02
    ld [bc], a                                    ; $4818: $02
    ld [bc], a                                    ; $4819: $02
    ld [bc], a                                    ; $481a: $02
    ld [bc], a                                    ; $481b: $02
    ld [bc], a                                    ; $481c: $02
    ld [bc], a                                    ; $481d: $02
    ld [bc], a                                    ; $481e: $02
    ld [bc], a                                    ; $481f: $02
    ld [bc], a                                    ; $4820: $02
    ld [bc], a                                    ; $4821: $02
    ld [bc], a                                    ; $4822: $02
    ld [bc], a                                    ; $4823: $02
    ld [bc], a                                    ; $4824: $02
    ld [bc], a                                    ; $4825: $02
    ld [bc], a                                    ; $4826: $02
    and c                                         ; $4827: $a1
    and d                                         ; $4828: $a2
    and e                                         ; $4829: $a3
    and h                                         ; $482a: $a4
    and l                                         ; $482b: $a5
    and [hl]                                      ; $482c: $a6
    and a                                         ; $482d: $a7
    xor b                                         ; $482e: $a8
    xor c                                         ; $482f: $a9
    xor d                                         ; $4830: $aa
    xor e                                         ; $4831: $ab
    xor h                                         ; $4832: $ac
    xor l                                         ; $4833: $ad
    xor [hl]                                      ; $4834: $ae
    xor [hl]                                      ; $4835: $ae
    xor a                                         ; $4836: $af
    ld c, $0e                                     ; $4837: $0e $0e
    ld c, $0e                                     ; $4839: $0e $0e
    ld c, $0e                                     ; $483b: $0e $0e
    ld c, $0e                                     ; $483d: $0e $0e
    ld c, $0e                                     ; $483f: $0e $0e
    ld c, $0e                                     ; $4841: $0e $0e
    ld c, $0e                                     ; $4843: $0e $0e
    ld c, $0e                                     ; $4845: $0e $0e
    or b                                          ; $4847: $b0
    or c                                          ; $4848: $b1
    or d                                          ; $4849: $b2
    or e                                          ; $484a: $b3
    or h                                          ; $484b: $b4
    sub e                                         ; $484c: $93
    or l                                          ; $484d: $b5
    or [hl]                                       ; $484e: $b6
    or a                                          ; $484f: $b7
    cp b                                          ; $4850: $b8
    cp c                                          ; $4851: $b9
    cp d                                          ; $4852: $ba
    cp e                                          ; $4853: $bb
    cp h                                          ; $4854: $bc
    cp l                                          ; $4855: $bd
    cp [hl]                                       ; $4856: $be
    ld c, $0e                                     ; $4857: $0e $0e
    ld c, $0e                                     ; $4859: $0e $0e
    ld c, $0e                                     ; $485b: $0e $0e
    ld c, $0e                                     ; $485d: $0e $0e
    ld c, $0e                                     ; $485f: $0e $0e
    ld c, $0e                                     ; $4861: $0e $0e
    ld c, $0e                                     ; $4863: $0e $0e
    ld c, $0e                                     ; $4865: $0e $0e
    pop hl                                        ; $4867: $e1
    pop hl                                        ; $4868: $e1
    pop hl                                        ; $4869: $e1
    pop hl                                        ; $486a: $e1
    ld d, h                                       ; $486b: $54
    ld b, [hl]                                    ; $486c: $46
    pop hl                                        ; $486d: $e1
    pop hl                                        ; $486e: $e1
    ld c, c                                       ; $486f: $49
    ld c, d                                       ; $4870: $4a
    ld d, h                                       ; $4871: $54
    ld b, [hl]                                    ; $4872: $46
    ld d, d                                       ; $4873: $52
    ld d, e                                       ; $4874: $53
    ld d, l                                       ; $4875: $55
    ld d, [hl]                                    ; $4876: $56
    ld [bc], a                                    ; $4877: $02
    ld [bc], a                                    ; $4878: $02
    ld [bc], a                                    ; $4879: $02
    ld [bc], a                                    ; $487a: $02
    ld bc, $0201                                  ; $487b: $01 $01 $02
    ld [bc], a                                    ; $487e: $02
    ld bc, $0101                                  ; $487f: $01 $01 $01
    ld bc, $0101                                  ; $4882: $01 $01 $01
    ld bc, $e101                                  ; $4885: $01 $01 $e1
    pop hl                                        ; $4888: $e1
    pop hl                                        ; $4889: $e1
    pop hl                                        ; $488a: $e1
    ld c, c                                       ; $488b: $49
    ld c, d                                       ; $488c: $4a
    pop hl                                        ; $488d: $e1
    pop hl                                        ; $488e: $e1
    ld b, a                                       ; $488f: $47
    ld c, b                                       ; $4890: $48
    ld c, c                                       ; $4891: $49
    ld c, d                                       ; $4892: $4a
    ld d, b                                       ; $4893: $50
    ld d, c                                       ; $4894: $51
    ld d, d                                       ; $4895: $52
    ld d, e                                       ; $4896: $53
    ld [bc], a                                    ; $4897: $02
    ld [bc], a                                    ; $4898: $02
    ld [bc], a                                    ; $4899: $02
    ld [bc], a                                    ; $489a: $02
    ld bc, $0201                                  ; $489b: $01 $01 $02
    ld [bc], a                                    ; $489e: $02
    ld bc, $0101                                  ; $489f: $01 $01 $01
    ld bc, $0101                                  ; $48a2: $01 $01 $01
    ld bc, $e101                                  ; $48a5: $01 $01 $e1
    pop hl                                        ; $48a8: $e1
    pop hl                                        ; $48a9: $e1
    pop hl                                        ; $48aa: $e1
    ld b, a                                       ; $48ab: $47
    ld c, b                                       ; $48ac: $48
    ld c, c                                       ; $48ad: $49
    ld c, d                                       ; $48ae: $4a
    ld d, h                                       ; $48af: $54
    ld b, [hl]                                    ; $48b0: $46
    ld d, d                                       ; $48b1: $52
    ld d, e                                       ; $48b2: $53
    ld d, l                                       ; $48b3: $55
    ld d, [hl]                                    ; $48b4: $56
    ld d, b                                       ; $48b5: $50
    ld d, c                                       ; $48b6: $51
    ld [bc], a                                    ; $48b7: $02
    ld [bc], a                                    ; $48b8: $02
    ld [bc], a                                    ; $48b9: $02
    ld [bc], a                                    ; $48ba: $02
    ld bc, $0101                                  ; $48bb: $01 $01 $01
    ld bc, $0101                                  ; $48be: $01 $01 $01
    ld bc, $0101                                  ; $48c1: $01 $01 $01
    ld bc, $0101                                  ; $48c4: $01 $01 $01
    cp a                                          ; $48c7: $bf
    ret nz                                        ; $48c8: $c0

    pop bc                                        ; $48c9: $c1
    jp nz, $c4c3                                  ; $48ca: $c2 $c3 $c4

    push bc                                       ; $48cd: $c5
    add $c7                                       ; $48ce: $c6 $c7
    ret z                                         ; $48d0: $c8

    ret                                           ; $48d1: $c9


    jp z, $cccb                                   ; $48d2: $ca $cb $cc

    call Call_000_0ece                            ; $48d5: $cd $ce $0e
    ld c, $0e                                     ; $48d8: $0e $0e
    ld c, $0e                                     ; $48da: $0e $0e
    ld c, $0e                                     ; $48dc: $0e $0e
    ld c, $0e                                     ; $48de: $0e $0e
    ld c, $0e                                     ; $48e0: $0e $0e
    ld c, $0e                                     ; $48e2: $0e $0e
    ld c, $0e                                     ; $48e4: $0e $0e
    ld c, $50                                     ; $48e6: $0e $50
    ld d, c                                       ; $48e8: $51
    ld d, d                                       ; $48e9: $52
    ld d, e                                       ; $48ea: $53
    ld c, c                                       ; $48eb: $49
    ld c, d                                       ; $48ec: $4a
    ld d, b                                       ; $48ed: $50
    ld d, c                                       ; $48ee: $51
    ld b, a                                       ; $48ef: $47
    ld c, b                                       ; $48f0: $48
    ld c, c                                       ; $48f1: $49
    ld c, d                                       ; $48f2: $4a
    pop hl                                        ; $48f3: $e1
    pop hl                                        ; $48f4: $e1
    pop hl                                        ; $48f5: $e1
    pop hl                                        ; $48f6: $e1
    ld bc, $0101                                  ; $48f7: $01 $01 $01
    ld bc, $0101                                  ; $48fa: $01 $01 $01
    ld bc, $0101                                  ; $48fd: $01 $01 $01
    ld bc, $0101                                  ; $4900: $01 $01 $01
    ld [bc], a                                    ; $4903: $02
    ld [bc], a                                    ; $4904: $02
    ld [bc], a                                    ; $4905: $02
    ld [bc], a                                    ; $4906: $02
    ld d, l                                       ; $4907: $55
    ld d, [hl]                                    ; $4908: $56
    ld d, b                                       ; $4909: $50
    ld d, c                                       ; $490a: $51
    ld d, d                                       ; $490b: $52
    ld c, b                                       ; $490c: $48
    ld c, c                                       ; $490d: $49
    ld c, d                                       ; $490e: $4a
    ld d, h                                       ; $490f: $54
    ld b, [hl]                                    ; $4910: $46
    pop hl                                        ; $4911: $e1
    pop hl                                        ; $4912: $e1
    pop hl                                        ; $4913: $e1
    pop hl                                        ; $4914: $e1
    pop hl                                        ; $4915: $e1
    pop hl                                        ; $4916: $e1
    ld bc, $0101                                  ; $4917: $01 $01 $01
    ld bc, $0101                                  ; $491a: $01 $01 $01
    ld bc, $0101                                  ; $491d: $01 $01 $01
    ld bc, $0202                                  ; $4920: $01 $02 $02
    ld [bc], a                                    ; $4923: $02
    ld [bc], a                                    ; $4924: $02
    ld [bc], a                                    ; $4925: $02
    ld [bc], a                                    ; $4926: $02
    ld d, d                                       ; $4927: $52
    ld d, e                                       ; $4928: $53
    ld d, l                                       ; $4929: $55
    ld d, [hl]                                    ; $492a: $56
    ld d, h                                       ; $492b: $54
    ld b, [hl]                                    ; $492c: $46
    ld b, a                                       ; $492d: $47
    ld c, b                                       ; $492e: $48
    ld c, c                                       ; $492f: $49
    ld c, d                                       ; $4930: $4a
    ld d, h                                       ; $4931: $54
    ld b, [hl]                                    ; $4932: $46
    pop hl                                        ; $4933: $e1
    pop hl                                        ; $4934: $e1
    pop hl                                        ; $4935: $e1
    pop hl                                        ; $4936: $e1
    ld bc, $0101                                  ; $4937: $01 $01 $01
    ld bc, $0101                                  ; $493a: $01 $01 $01
    ld bc, $0101                                  ; $493d: $01 $01 $01
    ld bc, $0101                                  ; $4940: $01 $01 $01
    ld [bc], a                                    ; $4943: $02
    ld [bc], a                                    ; $4944: $02
    ld [bc], a                                    ; $4945: $02
    ld [bc], a                                    ; $4946: $02
    pop hl                                        ; $4947: $e1
    pop hl                                        ; $4948: $e1
    sbc b                                         ; $4949: $98
    pop hl                                        ; $494a: $e1
    pop hl                                        ; $494b: $e1
    pop hl                                        ; $494c: $e1
    sbc c                                         ; $494d: $99
    push af                                       ; $494e: $f5
    pop hl                                        ; $494f: $e1
    sbc h                                         ; $4950: $9c
    sbc e                                         ; $4951: $9b
    sbc d                                         ; $4952: $9a
    and b                                         ; $4953: $a0
    sbc a                                         ; $4954: $9f
    sbc [hl]                                      ; $4955: $9e
    sbc l                                         ; $4956: $9d
    ld [bc], a                                    ; $4957: $02
    ld [bc], a                                    ; $4958: $02
    dec l                                         ; $4959: $2d
    ld [bc], a                                    ; $495a: $02
    ld [bc], a                                    ; $495b: $02
    ld [bc], a                                    ; $495c: $02
    dec l                                         ; $495d: $2d
    ld [bc], a                                    ; $495e: $02
    ld [bc], a                                    ; $495f: $02
    dec l                                         ; $4960: $2d
    dec l                                         ; $4961: $2d
    dec l                                         ; $4962: $2d
    dec l                                         ; $4963: $2d
    dec l                                         ; $4964: $2d
    dec l                                         ; $4965: $2d
    dec l                                         ; $4966: $2d
    ld d, h                                       ; $4967: $54
    ld d, c                                       ; $4968: $51
    ld d, b                                       ; $4969: $50
    ld b, [hl]                                    ; $496a: $46
    pop hl                                        ; $496b: $e1
    ld d, h                                       ; $496c: $54
    ld d, l                                       ; $496d: $55
    ld d, [hl]                                    ; $496e: $56
    pop hl                                        ; $496f: $e1
    pop hl                                        ; $4970: $e1
    ld b, a                                       ; $4971: $47
    ld d, e                                       ; $4972: $53
    ld e, e                                       ; $4973: $5b
    pop hl                                        ; $4974: $e1
    ld d, h                                       ; $4975: $54
    ld d, c                                       ; $4976: $51
    ld bc, $0101                                  ; $4977: $01 $01 $01
    ld bc, $0102                                  ; $497a: $01 $02 $01
    ld bc, $0201                                  ; $497d: $01 $01 $02
    ld [bc], a                                    ; $4980: $02
    ld bc, $2501                                  ; $4981: $01 $01 $25
    ld [bc], a                                    ; $4984: $02
    ld bc, $e101                                  ; $4985: $01 $01 $e1
    rst $08                                       ; $4988: $cf
    ret nc                                        ; $4989: $d0

    pop de                                        ; $498a: $d1
    ld d, h                                       ; $498b: $54
    jp nc, $d4d3                                  ; $498c: $d2 $d3 $d4

    ld c, c                                       ; $498f: $49
    rst $08                                       ; $4990: $cf
    ret nc                                        ; $4991: $d0

    pop de                                        ; $4992: $d1
    ld d, d                                       ; $4993: $52
    jp nc, $d4d3                                  ; $4994: $d2 $d3 $d4

    ld [bc], a                                    ; $4997: $02
    rrca                                          ; $4998: $0f
    rrca                                          ; $4999: $0f
    rrca                                          ; $499a: $0f
    ld bc, $0f0f                                  ; $499b: $01 $0f $0f
    rrca                                          ; $499e: $0f
    ld bc, $0f0f                                  ; $499f: $01 $0f $0f
    rrca                                          ; $49a2: $0f
    ld bc, $0f0f                                  ; $49a3: $01 $0f $0f
    rrca                                          ; $49a6: $0f
    push de                                       ; $49a7: $d5
    sub $d7                                       ; $49a8: $d6 $d7
    ret c                                         ; $49aa: $d8

    push de                                       ; $49ab: $d5
    reti                                          ; $49ac: $d9


    jp c, $d5db                                   ; $49ad: $da $db $d5

    call c, $dedd                                 ; $49b0: $dc $dd $de
    push de                                       ; $49b3: $d5
    rst $18                                       ; $49b4: $df
    ldh [$e1], a                                  ; $49b5: $e0 $e1
    dec bc                                        ; $49b7: $0b
    dec bc                                        ; $49b8: $0b
    dec bc                                        ; $49b9: $0b
    dec bc                                        ; $49ba: $0b
    dec bc                                        ; $49bb: $0b
    dec bc                                        ; $49bc: $0b
    dec bc                                        ; $49bd: $0b
    dec bc                                        ; $49be: $0b
    dec bc                                        ; $49bf: $0b
    dec bc                                        ; $49c0: $0b
    dec bc                                        ; $49c1: $0b
    dec bc                                        ; $49c2: $0b
    dec bc                                        ; $49c3: $0b
    dec bc                                        ; $49c4: $0b
    dec bc                                        ; $49c5: $0b
    dec bc                                        ; $49c6: $0b
    and h                                         ; $49c7: $a4
    and e                                         ; $49c8: $a3
    and d                                         ; $49c9: $a2
    and c                                         ; $49ca: $a1
    xor b                                         ; $49cb: $a8
    and a                                         ; $49cc: $a7
    and [hl]                                      ; $49cd: $a6
    and l                                         ; $49ce: $a5
    xor h                                         ; $49cf: $ac
    xor e                                         ; $49d0: $ab
    xor d                                         ; $49d1: $aa
    xor c                                         ; $49d2: $a9
    xor a                                         ; $49d3: $af
    xor [hl]                                      ; $49d4: $ae
    xor [hl]                                      ; $49d5: $ae
    xor l                                         ; $49d6: $ad
    dec l                                         ; $49d7: $2d
    dec l                                         ; $49d8: $2d
    dec l                                         ; $49d9: $2d
    dec l                                         ; $49da: $2d
    dec l                                         ; $49db: $2d
    dec l                                         ; $49dc: $2d
    dec c                                         ; $49dd: $0d
    dec l                                         ; $49de: $2d
    dec l                                         ; $49df: $2d
    dec l                                         ; $49e0: $2d
    dec l                                         ; $49e1: $2d
    dec l                                         ; $49e2: $2d
    dec l                                         ; $49e3: $2d
    dec c                                         ; $49e4: $0d
    dec c                                         ; $49e5: $0d
    dec l                                         ; $49e6: $2d
    ld h, b                                       ; $49e7: $60
    ld e, a                                       ; $49e8: $5f
    ld c, c                                       ; $49e9: $49
    ld d, [hl]                                    ; $49ea: $56
    ld h, d                                       ; $49eb: $62
    ld h, c                                       ; $49ec: $61
    ld b, a                                       ; $49ed: $47
    ld d, e                                       ; $49ee: $53
    ld h, h                                       ; $49ef: $64
    ld h, e                                       ; $49f0: $63
    ld d, h                                       ; $49f1: $54
    ld d, c                                       ; $49f2: $51
    ld h, [hl]                                    ; $49f3: $66
    ld h, l                                       ; $49f4: $65
    ld c, c                                       ; $49f5: $49
    ld d, [hl]                                    ; $49f6: $56
    dec h                                         ; $49f7: $25
    dec h                                         ; $49f8: $25
    ld bc, $2501                                  ; $49f9: $01 $01 $25
    dec h                                         ; $49fc: $25
    ld bc, $2501                                  ; $49fd: $01 $01 $25
    dec h                                         ; $4a00: $25
    ld bc, $2501                                  ; $4a01: $01 $01 $25
    dec h                                         ; $4a04: $25
    ld bc, $5001                                  ; $4a05: $01 $01 $50
    rst $08                                       ; $4a08: $cf
    ret nc                                        ; $4a09: $d0

    pop de                                        ; $4a0a: $d1
    ld d, l                                       ; $4a0b: $55
    jp nc, $d4d3                                  ; $4a0c: $d2 $d3 $d4

    ld b, a                                       ; $4a0f: $47
    rst $08                                       ; $4a10: $cf
    ret nc                                        ; $4a11: $d0

    pop de                                        ; $4a12: $d1
    ld d, h                                       ; $4a13: $54
    jp nc, $d4d3                                  ; $4a14: $d2 $d3 $d4

    ld bc, $0f0f                                  ; $4a17: $01 $0f $0f
    rrca                                          ; $4a1a: $0f
    ld bc, $0f0f                                  ; $4a1b: $01 $0f $0f
    rrca                                          ; $4a1e: $0f
    ld bc, $0f0f                                  ; $4a1f: $01 $0f $0f
    rrca                                          ; $4a22: $0f
    ld bc, $0f0f                                  ; $4a23: $01 $0f $0f
    rrca                                          ; $4a26: $0f
    push de                                       ; $4a27: $d5
    ld [c], a                                     ; $4a28: $e2
    db $e3                                        ; $4a29: $e3
    db $e4                                        ; $4a2a: $e4
    push de                                       ; $4a2b: $d5
    push hl                                       ; $4a2c: $e5
    and $e7                                       ; $4a2d: $e6 $e7
    push de                                       ; $4a2f: $d5
    sub $d7                                       ; $4a30: $d6 $d7
    ret c                                         ; $4a32: $d8

    push de                                       ; $4a33: $d5
    reti                                          ; $4a34: $d9


    jp c, $0bdb                                   ; $4a35: $da $db $0b

    dec bc                                        ; $4a38: $0b
    dec bc                                        ; $4a39: $0b
    dec bc                                        ; $4a3a: $0b
    dec bc                                        ; $4a3b: $0b
    dec bc                                        ; $4a3c: $0b
    dec bc                                        ; $4a3d: $0b
    dec bc                                        ; $4a3e: $0b
    dec bc                                        ; $4a3f: $0b
    dec bc                                        ; $4a40: $0b
    dec bc                                        ; $4a41: $0b
    dec bc                                        ; $4a42: $0b
    dec bc                                        ; $4a43: $0b
    dec bc                                        ; $4a44: $0b
    dec bc                                        ; $4a45: $0b
    dec bc                                        ; $4a46: $0b
    or e                                          ; $4a47: $b3
    or d                                          ; $4a48: $b2
    or c                                          ; $4a49: $b1
    or b                                          ; $4a4a: $b0
    or [hl]                                       ; $4a4b: $b6
    or l                                          ; $4a4c: $b5
    sub e                                         ; $4a4d: $93
    or h                                          ; $4a4e: $b4
    cp d                                          ; $4a4f: $ba
    add sp, -$17                                  ; $4a50: $e8 $e9
    ld [$aebe], a                                 ; $4a52: $ea $be $ae
    xor [hl]                                      ; $4a55: $ae
    db $eb                                        ; $4a56: $eb
    dec l                                         ; $4a57: $2d
    dec l                                         ; $4a58: $2d
    dec l                                         ; $4a59: $2d
    dec l                                         ; $4a5a: $2d
    dec l                                         ; $4a5b: $2d
    dec l                                         ; $4a5c: $2d
    dec l                                         ; $4a5d: $2d
    dec l                                         ; $4a5e: $2d
    dec l                                         ; $4a5f: $2d
    dec c                                         ; $4a60: $0d
    dec c                                         ; $4a61: $0d
    dec c                                         ; $4a62: $0d
    dec l                                         ; $4a63: $2d
    dec c                                         ; $4a64: $0d
    dec c                                         ; $4a65: $0d
    dec c                                         ; $4a66: $0d
    xor [hl]                                      ; $4a67: $ae
    xor [hl]                                      ; $4a68: $ae
    ld d, d                                       ; $4a69: $52
    ld d, e                                       ; $4a6a: $53
    db $ec                                        ; $4a6b: $ec
    db $ed                                        ; $4a6c: $ed
    ld d, b                                       ; $4a6d: $50
    ld b, [hl]                                    ; $4a6e: $46
    ld [hl], c                                    ; $4a6f: $71
    ld [hl], b                                    ; $4a70: $70
    ld c, c                                       ; $4a71: $49
    ld c, d                                       ; $4a72: $4a
    ld [hl], e                                    ; $4a73: $73
    ld [hl], d                                    ; $4a74: $72
    ld b, a                                       ; $4a75: $47
    pop hl                                        ; $4a76: $e1
    dec c                                         ; $4a77: $0d
    dec c                                         ; $4a78: $0d
    ld bc, $0d01                                  ; $4a79: $01 $01 $0d
    dec c                                         ; $4a7c: $0d
    ld bc, $2501                                  ; $4a7d: $01 $01 $25
    dec h                                         ; $4a80: $25
    ld bc, $2501                                  ; $4a81: $01 $01 $25
    dec h                                         ; $4a84: $25
    ld bc, $4902                                  ; $4a85: $01 $02 $49
    rst $08                                       ; $4a88: $cf
    ret nc                                        ; $4a89: $d0

    pop de                                        ; $4a8a: $d1
    pop hl                                        ; $4a8b: $e1
    jp nc, $d4d3                                  ; $4a8c: $d2 $d3 $d4

    pop hl                                        ; $4a8f: $e1
    rst $08                                       ; $4a90: $cf
    ret nc                                        ; $4a91: $d0

    pop de                                        ; $4a92: $d1
    pop hl                                        ; $4a93: $e1
    jp nc, $d4d3                                  ; $4a94: $d2 $d3 $d4

    ld bc, $0f0f                                  ; $4a97: $01 $0f $0f
    rrca                                          ; $4a9a: $0f
    ld [bc], a                                    ; $4a9b: $02
    rrca                                          ; $4a9c: $0f
    rrca                                          ; $4a9d: $0f
    rrca                                          ; $4a9e: $0f
    ld [bc], a                                    ; $4a9f: $02
    rrca                                          ; $4aa0: $0f
    rrca                                          ; $4aa1: $0f
    rrca                                          ; $4aa2: $0f
    ld [bc], a                                    ; $4aa3: $02
    rrca                                          ; $4aa4: $0f
    rrca                                          ; $4aa5: $0f
    rrca                                          ; $4aa6: $0f
    push de                                       ; $4aa7: $d5
    ld [c], a                                     ; $4aa8: $e2
    db $e3                                        ; $4aa9: $e3
    db $e4                                        ; $4aaa: $e4
    push de                                       ; $4aab: $d5
    push hl                                       ; $4aac: $e5
    and $e7                                       ; $4aad: $e6 $e7
    push de                                       ; $4aaf: $d5
    sub $d7                                       ; $4ab0: $d6 $d7
    ret c                                         ; $4ab2: $d8

    push de                                       ; $4ab3: $d5
    ld [c], a                                     ; $4ab4: $e2
    db $e3                                        ; $4ab5: $e3
    db $e4                                        ; $4ab6: $e4
    dec bc                                        ; $4ab7: $0b
    dec bc                                        ; $4ab8: $0b
    dec bc                                        ; $4ab9: $0b
    dec bc                                        ; $4aba: $0b
    dec bc                                        ; $4abb: $0b
    dec bc                                        ; $4abc: $0b
    dec bc                                        ; $4abd: $0b
    dec bc                                        ; $4abe: $0b
    dec bc                                        ; $4abf: $0b
    dec bc                                        ; $4ac0: $0b
    dec bc                                        ; $4ac1: $0b
    dec bc                                        ; $4ac2: $0b
    dec bc                                        ; $4ac3: $0b
    dec bc                                        ; $4ac4: $0b
    dec bc                                        ; $4ac5: $0b
    dec bc                                        ; $4ac6: $0b
    jp nz, $c0c1                                  ; $4ac7: $c2 $c1 $c0

    cp a                                          ; $4aca: $bf
    add $c5                                       ; $4acb: $c6 $c5
    call nz, $cac3                                ; $4acd: $c4 $c3 $ca
    ret                                           ; $4ad0: $c9


    ret z                                         ; $4ad1: $c8

    rst $00                                       ; $4ad2: $c7
    adc $cd                                       ; $4ad3: $ce $cd
    call z, Call_000_2dcb                         ; $4ad5: $cc $cb $2d
    dec l                                         ; $4ad8: $2d
    dec l                                         ; $4ad9: $2d
    dec l                                         ; $4ada: $2d
    dec l                                         ; $4adb: $2d
    dec l                                         ; $4adc: $2d
    dec l                                         ; $4add: $2d
    dec l                                         ; $4ade: $2d
    dec l                                         ; $4adf: $2d
    dec l                                         ; $4ae0: $2d
    dec l                                         ; $4ae1: $2d
    dec l                                         ; $4ae2: $2d
    dec l                                         ; $4ae3: $2d
    dec l                                         ; $4ae4: $2d
    dec l                                         ; $4ae5: $2d
    dec l                                         ; $4ae6: $2d
    adc a                                         ; $4ae7: $8f
    adc [hl]                                      ; $4ae8: $8e
    pop hl                                        ; $4ae9: $e1
    pop hl                                        ; $4aea: $e1
    sub c                                         ; $4aeb: $91
    sub b                                         ; $4aec: $90
    pop hl                                        ; $4aed: $e1
    pop hl                                        ; $4aee: $e1
    sub e                                         ; $4aef: $93
    sub d                                         ; $4af0: $92
    pop hl                                        ; $4af1: $e1
    push af                                       ; $4af2: $f5
    xor $ef                                       ; $4af3: $ee $ef
    sub l                                         ; $4af5: $95
    sub h                                         ; $4af6: $94
    dec l                                         ; $4af7: $2d
    dec l                                         ; $4af8: $2d
    ld [bc], a                                    ; $4af9: $02
    ld [bc], a                                    ; $4afa: $02
    dec l                                         ; $4afb: $2d
    dec l                                         ; $4afc: $2d
    ld [bc], a                                    ; $4afd: $02
    ld [bc], a                                    ; $4afe: $02
    dec l                                         ; $4aff: $2d
    dec l                                         ; $4b00: $2d
    ld [bc], a                                    ; $4b01: $02
    daa                                           ; $4b02: $27
    dec c                                         ; $4b03: $0d
    dec c                                         ; $4b04: $0d
    cpl                                           ; $4b05: $2f
    cpl                                           ; $4b06: $2f
    pop hl                                        ; $4b07: $e1
    rst $08                                       ; $4b08: $cf
    ret nc                                        ; $4b09: $d0

    pop de                                        ; $4b0a: $d1
    pop hl                                        ; $4b0b: $e1
    jp nc, $d4d3                                  ; $4b0c: $d2 $d3 $d4

    adc c                                         ; $4b0f: $89
    ldh a, [$d0]                                  ; $4b10: $f0 $d0
    pop de                                        ; $4b12: $d1
    adc l                                         ; $4b13: $8d
    pop af                                        ; $4b14: $f1
    db $d3                                        ; $4b15: $d3
    call nc, Call_000_0f02                        ; $4b16: $d4 $02 $0f
    rrca                                          ; $4b19: $0f
    rrca                                          ; $4b1a: $0f
    ld [bc], a                                    ; $4b1b: $02
    rrca                                          ; $4b1c: $0f
    rrca                                          ; $4b1d: $0f
    rrca                                          ; $4b1e: $0f
    cpl                                           ; $4b1f: $2f
    rrca                                          ; $4b20: $0f
    rrca                                          ; $4b21: $0f
    rrca                                          ; $4b22: $0f
    cpl                                           ; $4b23: $2f
    rrca                                          ; $4b24: $0f
    rrca                                          ; $4b25: $0f
    rrca                                          ; $4b26: $0f
    push de                                       ; $4b27: $d5
    push hl                                       ; $4b28: $e5
    and $e7                                       ; $4b29: $e6 $e7
    push de                                       ; $4b2b: $d5
    ld [c], a                                     ; $4b2c: $e2
    db $e3                                        ; $4b2d: $e3
    db $e4                                        ; $4b2e: $e4
    push de                                       ; $4b2f: $d5
    push hl                                       ; $4b30: $e5
    and $e7                                       ; $4b31: $e6 $e7
    push de                                       ; $4b33: $d5
    sub $d7                                       ; $4b34: $d6 $d7
    ret c                                         ; $4b36: $d8

    dec bc                                        ; $4b37: $0b
    dec bc                                        ; $4b38: $0b
    dec bc                                        ; $4b39: $0b
    dec bc                                        ; $4b3a: $0b
    dec bc                                        ; $4b3b: $0b
    dec bc                                        ; $4b3c: $0b
    dec bc                                        ; $4b3d: $0b
    dec bc                                        ; $4b3e: $0b
    dec bc                                        ; $4b3f: $0b
    dec bc                                        ; $4b40: $0b
    dec bc                                        ; $4b41: $0b
    dec bc                                        ; $4b42: $0b
    dec bc                                        ; $4b43: $0b
    dec bc                                        ; $4b44: $0b
    dec bc                                        ; $4b45: $0b
    dec bc                                        ; $4b46: $0b
    db $db                                        ; $4b47: $db
    call c, $e1e4                                 ; $4b48: $dc $e4 $e1
    rst $18                                       ; $4b4b: $df
    ldh [$e8], a                                  ; $4b4c: $e0 $e8
    pop hl                                        ; $4b4e: $e1
    db $eb                                        ; $4b4f: $eb
    pop hl                                        ; $4b50: $e1
    pop hl                                        ; $4b51: $e1
    pop hl                                        ; $4b52: $e1
    pop hl                                        ; $4b53: $e1
    pop hl                                        ; $4b54: $e1
    pop hl                                        ; $4b55: $e1
    pop hl                                        ; $4b56: $e1
    add d                                         ; $4b57: $82
    add d                                         ; $4b58: $82
    add d                                         ; $4b59: $82
    ld [bc], a                                    ; $4b5a: $02
    add d                                         ; $4b5b: $82
    add d                                         ; $4b5c: $82
    add d                                         ; $4b5d: $82
    ld [bc], a                                    ; $4b5e: $02
    inc bc                                        ; $4b5f: $03
    ld [bc], a                                    ; $4b60: $02
    ld [bc], a                                    ; $4b61: $02
    ld [bc], a                                    ; $4b62: $02
    ld [bc], a                                    ; $4b63: $02
    ld [bc], a                                    ; $4b64: $02
    ld [bc], a                                    ; $4b65: $02
    ld [bc], a                                    ; $4b66: $02
    pop hl                                        ; $4b67: $e1
    ld a, [$06fb]                                 ; $4b68: $fa $fb $06
    rst $30                                       ; $4b6b: $f7
    ld a, [c]                                     ; $4b6c: $f2
    inc b                                         ; $4b6d: $04
    ld [bc], a                                    ; $4b6e: $02
    ei                                            ; $4b6f: $fb
    or $f7                                        ; $4b70: $f6 $f7
    ld hl, sp-$1f                                 ; $4b72: $f8 $e1
    pop hl                                        ; $4b74: $e1
    pop hl                                        ; $4b75: $e1
    pop hl                                        ; $4b76: $e1
    ld [bc], a                                    ; $4b77: $02
    ld bc, $0101                                  ; $4b78: $01 $01 $01
    ld bc, $0109                                  ; $4b7b: $01 $09 $01
    ld bc, $0101                                  ; $4b7e: $01 $01 $01
    ld bc, $0201                                  ; $4b81: $01 $01 $02
    ld [bc], a                                    ; $4b84: $02
    ld [bc], a                                    ; $4b85: $02
    ld [bc], a                                    ; $4b86: $02
    inc c                                         ; $4b87: $0c
    ld a, [c]                                     ; $4b88: $f2
    inc b                                         ; $4b89: $04
    ld [bc], a                                    ; $4b8a: $02
    inc bc                                        ; $4b8b: $03
    or $f7                                        ; $4b8c: $f6 $f7
    ld hl, sp-$07                                 ; $4b8e: $f8 $f9
    ld a, [$e1e1]                                 ; $4b90: $fa $e1 $e1
    pop hl                                        ; $4b93: $e1
    pop hl                                        ; $4b94: $e1
    ld b, d                                       ; $4b95: $42
    ld b, e                                       ; $4b96: $43
    ld bc, $0109                                  ; $4b97: $01 $09 $01
    ld bc, $0101                                  ; $4b9a: $01 $01 $01
    ld bc, $0101                                  ; $4b9d: $01 $01 $01
    ld bc, $0202                                  ; $4ba0: $01 $02 $02
    ld [bc], a                                    ; $4ba3: $02
    ld [bc], a                                    ; $4ba4: $02
    ld bc, $fb01                                  ; $4ba5: $01 $01 $fb
    or $f3                                        ; $4ba8: $f6 $f3
    db $f4                                        ; $4baa: $f4
    pop hl                                        ; $4bab: $e1
    pop hl                                        ; $4bac: $e1
    pop hl                                        ; $4bad: $e1
    pop hl                                        ; $4bae: $e1
    pop hl                                        ; $4baf: $e1
    pop hl                                        ; $4bb0: $e1
    pop hl                                        ; $4bb1: $e1
    pop hl                                        ; $4bb2: $e1
    pop hl                                        ; $4bb3: $e1
    pop hl                                        ; $4bb4: $e1
    inc hl                                        ; $4bb5: $23
    inc h                                         ; $4bb6: $24
    ld bc, $8a01                                  ; $4bb7: $01 $01 $8a
    adc d                                         ; $4bba: $8a
    ld [bc], a                                    ; $4bbb: $02
    ld [bc], a                                    ; $4bbc: $02
    ld [bc], a                                    ; $4bbd: $02
    ld [bc], a                                    ; $4bbe: $02
    ld [bc], a                                    ; $4bbf: $02
    ld [bc], a                                    ; $4bc0: $02
    ld [bc], a                                    ; $4bc1: $02
    ld [bc], a                                    ; $4bc2: $02
    ld [bc], a                                    ; $4bc3: $02
    ld [bc], a                                    ; $4bc4: $02
    ld bc, $4b01                                  ; $4bc5: $01 $01 $4b
    ld c, l                                       ; $4bc8: $4d
    ld c, [hl]                                    ; $4bc9: $4e
    ld c, a                                       ; $4bca: $4f
    rla                                           ; $4bcb: $17
    jr @+$24                                      ; $4bcc: $18 $22

    ld de, $1220                                  ; $4bce: $11 $20 $12
    add hl, de                                    ; $4bd1: $19
    daa                                           ; $4bd2: $27
    dec de                                        ; $4bd3: $1b
    inc e                                         ; $4bd4: $1c
    ld sp, $0314                                  ; $4bd5: $31 $14 $03
    inc bc                                        ; $4bd8: $03
    inc bc                                        ; $4bd9: $03
    inc bc                                        ; $4bda: $03
    inc bc                                        ; $4bdb: $03
    inc bc                                        ; $4bdc: $03
    inc bc                                        ; $4bdd: $03
    inc bc                                        ; $4bde: $03
    inc bc                                        ; $4bdf: $03
    inc bc                                        ; $4be0: $03
    inc bc                                        ; $4be1: $03
    inc bc                                        ; $4be2: $03
    inc bc                                        ; $4be3: $03
    inc bc                                        ; $4be4: $03
    inc bc                                        ; $4be5: $03
    inc bc                                        ; $4be6: $03
    ld c, e                                       ; $4be7: $4b
    ld c, l                                       ; $4be8: $4d
    ld c, [hl]                                    ; $4be9: $4e
    ld a, [hl+]                                   ; $4bea: $2a
    rla                                           ; $4beb: $17
    jr @+$28                                      ; $4bec: $18 $26

    ld de, $1a20                                  ; $4bee: $11 $20 $1a
    ld l, $27                                     ; $4bf1: $2e $27
    dec de                                        ; $4bf3: $1b
    inc e                                         ; $4bf4: $1c
    ld sp, $0314                                  ; $4bf5: $31 $14 $03
    inc bc                                        ; $4bf8: $03
    inc bc                                        ; $4bf9: $03
    inc hl                                        ; $4bfa: $23
    inc bc                                        ; $4bfb: $03
    inc bc                                        ; $4bfc: $03
    inc bc                                        ; $4bfd: $03
    inc bc                                        ; $4bfe: $03
    inc bc                                        ; $4bff: $03
    inc bc                                        ; $4c00: $03
    inc bc                                        ; $4c01: $03
    inc bc                                        ; $4c02: $03
    inc bc                                        ; $4c03: $03
    inc bc                                        ; $4c04: $03
    inc bc                                        ; $4c05: $03
    inc bc                                        ; $4c06: $03
    pop hl                                        ; $4c07: $e1
    pop hl                                        ; $4c08: $e1
    ld b, h                                       ; $4c09: $44
    ld b, l                                       ; $4c0a: $45
    jr z, jr_08c_4c37                             ; $4c0b: $28 $2a

    ld c, e                                       ; $4c0d: $4b
    ld c, l                                       ; $4c0e: $4d
    jr nz, jr_08c_4c2b                            ; $4c0f: $20 $1a

    ld [hl+], a                                   ; $4c11: $22
    ld de, $1c1b                                  ; $4c12: $11 $1b $1c
    ld l, $27                                     ; $4c15: $2e $27
    ld [bc], a                                    ; $4c17: $02
    ld [bc], a                                    ; $4c18: $02
    ld bc, $2301                                  ; $4c19: $01 $01 $23
    inc hl                                        ; $4c1c: $23
    inc bc                                        ; $4c1d: $03
    inc bc                                        ; $4c1e: $03
    inc bc                                        ; $4c1f: $03
    inc bc                                        ; $4c20: $03
    inc bc                                        ; $4c21: $03
    inc bc                                        ; $4c22: $03
    inc bc                                        ; $4c23: $03
    inc bc                                        ; $4c24: $03
    inc bc                                        ; $4c25: $03
    inc bc                                        ; $4c26: $03
    pop hl                                        ; $4c27: $e1
    pop hl                                        ; $4c28: $e1
    pop hl                                        ; $4c29: $e1
    pop hl                                        ; $4c2a: $e1

jr_08c_4c2b:
    ld c, [hl]                                    ; $4c2b: $4e
    dec l                                         ; $4c2c: $2d
    inc l                                         ; $4c2d: $2c
    dec hl                                        ; $4c2e: $2b
    rla                                           ; $4c2f: $17
    jr jr_08c_4c54                                ; $4c30: $18 $22

    ld de, $1a26                                  ; $4c32: $11 $26 $1a
    ld l, $27                                     ; $4c35: $2e $27

jr_08c_4c37:
    ld [bc], a                                    ; $4c37: $02
    ld [bc], a                                    ; $4c38: $02
    ld [bc], a                                    ; $4c39: $02
    ld [bc], a                                    ; $4c3a: $02
    inc bc                                        ; $4c3b: $03
    inc hl                                        ; $4c3c: $23
    inc hl                                        ; $4c3d: $23
    inc hl                                        ; $4c3e: $23
    inc bc                                        ; $4c3f: $03
    inc bc                                        ; $4c40: $03
    inc bc                                        ; $4c41: $03
    inc bc                                        ; $4c42: $03
    inc bc                                        ; $4c43: $03
    inc bc                                        ; $4c44: $03
    inc bc                                        ; $4c45: $03
    inc bc                                        ; $4c46: $03
    dec e                                         ; $4c47: $1d
    ld e, $4c                                     ; $4c48: $1e $4c
    ld d, $4e                                     ; $4c4a: $16 $4e
    ld c, a                                       ; $4c4c: $4f
    ld c, e                                       ; $4c4d: $4b
    ld c, l                                       ; $4c4e: $4d
    pop hl                                        ; $4c4f: $e1
    di                                            ; $4c50: $f3
    pop hl                                        ; $4c51: $e1
    pop hl                                        ; $4c52: $e1
    push af                                       ; $4c53: $f5

jr_08c_4c54:
    db $f4                                        ; $4c54: $f4
    push af                                       ; $4c55: $f5
    pop hl                                        ; $4c56: $e1
    inc bc                                        ; $4c57: $03
    inc bc                                        ; $4c58: $03
    inc bc                                        ; $4c59: $03
    inc bc                                        ; $4c5a: $03
    ld b, e                                       ; $4c5b: $43
    ld b, e                                       ; $4c5c: $43
    ld b, e                                       ; $4c5d: $43
    ld b, e                                       ; $4c5e: $43
    ld [bc], a                                    ; $4c5f: $02
    add d                                         ; $4c60: $82
    ld [bc], a                                    ; $4c61: $02
    ld [bc], a                                    ; $4c62: $02
    and d                                         ; $4c63: $a2
    add d                                         ; $4c64: $82
    add d                                         ; $4c65: $82
    ld [bc], a                                    ; $4c66: $02
    dec e                                         ; $4c67: $1d
    ld e, $4c                                     ; $4c68: $1e $4c
    cpl                                           ; $4c6a: $2f
    ld c, e                                       ; $4c6b: $4b
    ld c, l                                       ; $4c6c: $4d
    ld c, [hl]                                    ; $4c6d: $4e
    ld c, a                                       ; $4c6e: $4f
    pop hl                                        ; $4c6f: $e1
    pop hl                                        ; $4c70: $e1
    pop hl                                        ; $4c71: $e1
    pop hl                                        ; $4c72: $e1
    pop hl                                        ; $4c73: $e1
    ld b, c                                       ; $4c74: $41
    pop hl                                        ; $4c75: $e1
    pop hl                                        ; $4c76: $e1
    inc bc                                        ; $4c77: $03
    inc bc                                        ; $4c78: $03
    inc bc                                        ; $4c79: $03
    inc bc                                        ; $4c7a: $03
    ld b, e                                       ; $4c7b: $43
    ld b, e                                       ; $4c7c: $43
    ld b, e                                       ; $4c7d: $43
    ld b, e                                       ; $4c7e: $43
    ld [bc], a                                    ; $4c7f: $02
    ld [bc], a                                    ; $4c80: $02
    ld [bc], a                                    ; $4c81: $02
    ld [bc], a                                    ; $4c82: $02
    ld [bc], a                                    ; $4c83: $02
    ld bc, $0202                                  ; $4c84: $01 $02 $02
    jr nc, @+$20                                  ; $4c87: $30 $1e

    ld sp, $4b14                                  ; $4c89: $31 $14 $4b
    inc l                                         ; $4c8c: $2c
    dec hl                                        ; $4c8d: $2b
    inc l                                         ; $4c8e: $2c
    ld b, c                                       ; $4c8f: $41
    pop hl                                        ; $4c90: $e1
    pop hl                                        ; $4c91: $e1
    pop hl                                        ; $4c92: $e1
    pop hl                                        ; $4c93: $e1
    pop hl                                        ; $4c94: $e1
    ei                                            ; $4c95: $fb
    or $03                                        ; $4c96: $f6 $03
    inc bc                                        ; $4c98: $03
    inc bc                                        ; $4c99: $03
    inc bc                                        ; $4c9a: $03
    ld b, e                                       ; $4c9b: $43
    ld h, e                                       ; $4c9c: $63
    ld b, e                                       ; $4c9d: $43
    ld b, e                                       ; $4c9e: $43
    ld bc, $0202                                  ; $4c9f: $01 $02 $02
    ld [bc], a                                    ; $4ca2: $02
    ld [bc], a                                    ; $4ca3: $02
    ld [bc], a                                    ; $4ca4: $02
    ld bc, $1b01                                  ; $4ca5: $01 $01 $1b
    dec hl                                        ; $4ca8: $2b
    ld c, e                                       ; $4ca9: $4b
    ld c, l                                       ; $4caa: $4d
    dec l                                         ; $4cab: $2d
    pop hl                                        ; $4cac: $e1
    pop hl                                        ; $4cad: $e1
    pop hl                                        ; $4cae: $e1
    pop hl                                        ; $4caf: $e1
    ld b, c                                       ; $4cb0: $41
    pop hl                                        ; $4cb1: $e1
    ld [$e1f7], sp                                ; $4cb2: $08 $f7 $e1
    pop hl                                        ; $4cb5: $e1
    ld a, [bc]                                    ; $4cb6: $0a
    inc bc                                        ; $4cb7: $03
    ld b, e                                       ; $4cb8: $43
    ld b, e                                       ; $4cb9: $43
    ld b, e                                       ; $4cba: $43
    ld b, e                                       ; $4cbb: $43
    ld [bc], a                                    ; $4cbc: $02
    ld [bc], a                                    ; $4cbd: $02
    ld [bc], a                                    ; $4cbe: $02
    ld [bc], a                                    ; $4cbf: $02
    ld bc, $8202                                  ; $4cc0: $01 $02 $82
    ld bc, $0202                                  ; $4cc3: $01 $02 $02
    add d                                         ; $4cc6: $82
    db $e3                                        ; $4cc7: $e3
    db $dd                                        ; $4cc8: $dd
    nop                                           ; $4cc9: $00
    pop hl                                        ; $4cca: $e1
    push hl                                       ; $4ccb: $e5
    and $e7                                       ; $4ccc: $e6 $e7
    pop hl                                        ; $4cce: $e1
    jp nc, $d4d3                                  ; $4ccf: $d2 $d3 $d4

    di                                            ; $4cd2: $f3
    sub $d7                                       ; $4cd3: $d6 $d7
    db $ed                                        ; $4cd5: $ed
    xor $82                                       ; $4cd6: $ee $82
    add d                                         ; $4cd8: $82
    add d                                         ; $4cd9: $82
    ld [bc], a                                    ; $4cda: $02
    add d                                         ; $4cdb: $82
    add d                                         ; $4cdc: $82
    add d                                         ; $4cdd: $82
    ld [bc], a                                    ; $4cde: $02
    add d                                         ; $4cdf: $82
    add d                                         ; $4ce0: $82
    add d                                         ; $4ce1: $82
    add d                                         ; $4ce2: $82
    add d                                         ; $4ce3: $82
    add d                                         ; $4ce4: $82
    add d                                         ; $4ce5: $82
    add d                                         ; $4ce6: $82
    pop hl                                        ; $4ce7: $e1
    pop hl                                        ; $4ce8: $e1
    pop hl                                        ; $4ce9: $e1
    pop hl                                        ; $4cea: $e1
    pop hl                                        ; $4ceb: $e1
    pop hl                                        ; $4cec: $e1
    ld sp, hl                                     ; $4ced: $f9
    ld a, [$f6e1]                                 ; $4cee: $fa $e1 $f6
    inc c                                         ; $4cf1: $0c
    ld a, [c]                                     ; $4cf2: $f2
    push af                                       ; $4cf3: $f5
    pop hl                                        ; $4cf4: $e1
    ei                                            ; $4cf5: $fb
    or $02                                        ; $4cf6: $f6 $02
    ld [bc], a                                    ; $4cf8: $02
    ld [bc], a                                    ; $4cf9: $02
    ld [bc], a                                    ; $4cfa: $02
    ld [bc], a                                    ; $4cfb: $02
    ld [bc], a                                    ; $4cfc: $02
    ld bc, $0201                                  ; $4cfd: $01 $01 $02
    ld bc, $0901                                  ; $4d00: $01 $01 $09
    add d                                         ; $4d03: $82
    ld [bc], a                                    ; $4d04: $02
    ld bc, $f701                                  ; $4d05: $01 $01 $f7
    ld hl, sp+$04                                 ; $4d08: $f8 $04
    ld [bc], a                                    ; $4d0a: $02
    inc bc                                        ; $4d0b: $03
    ld b, $0c                                     ; $4d0c: $06 $0c
    ld a, [c]                                     ; $4d0e: $f2
    inc b                                         ; $4d0f: $04
    ld [bc], a                                    ; $4d10: $02
    inc bc                                        ; $4d11: $03
    or $0c                                        ; $4d12: $f6 $0c
    ld a, [c]                                     ; $4d14: $f2
    ld sp, hl                                     ; $4d15: $f9
    ld a, [$0101]                                 ; $4d16: $fa $01 $01
    ld bc, $0101                                  ; $4d19: $01 $01 $01
    ld bc, $0901                                  ; $4d1c: $01 $01 $09
    ld bc, $0101                                  ; $4d1f: $01 $01 $01
    ld bc, $0901                                  ; $4d22: $01 $01 $09
    ld bc, $fb01                                  ; $4d25: $01 $01 $fb
    or $e1                                        ; $4d28: $f6 $e1
    dec c                                         ; $4d2a: $0d
    inc b                                         ; $4d2b: $04
    ld [bc], a                                    ; $4d2c: $02
    ei                                            ; $4d2d: $fb
    di                                            ; $4d2e: $f3
    rst $30                                       ; $4d2f: $f7
    ld hl, sp-$07                                 ; $4d30: $f8 $f9
    pop hl                                        ; $4d32: $e1
    ei                                            ; $4d33: $fb
    ld b, d                                       ; $4d34: $42
    ld b, e                                       ; $4d35: $43
    pop hl                                        ; $4d36: $e1
    ld bc, $0201                                  ; $4d37: $01 $01 $02
    add d                                         ; $4d3a: $82
    ld bc, $0101                                  ; $4d3b: $01 $01 $01
    adc d                                         ; $4d3e: $8a
    ld bc, $0101                                  ; $4d3f: $01 $01 $01
    ld [bc], a                                    ; $4d42: $02
    ld bc, $0101                                  ; $4d43: $01 $01 $01
    ld [bc], a                                    ; $4d46: $02
    push af                                       ; $4d47: $f5
    or $f7                                        ; $4d48: $f6 $f7
    ld hl, sp-$07                                 ; $4d4a: $f8 $f9
    ld a, [$e1e1]                                 ; $4d4c: $fa $e1 $e1
    ei                                            ; $4d4f: $fb
    db $fc                                        ; $4d50: $fc
    pop hl                                        ; $4d51: $e1
    pop hl                                        ; $4d52: $e1
    pop hl                                        ; $4d53: $e1
    pop hl                                        ; $4d54: $e1
    pop hl                                        ; $4d55: $e1
    pop hl                                        ; $4d56: $e1
    adc d                                         ; $4d57: $8a
    adc d                                         ; $4d58: $8a
    adc d                                         ; $4d59: $8a
    adc d                                         ; $4d5a: $8a
    dec bc                                        ; $4d5b: $0b
    dec bc                                        ; $4d5c: $0b
    ld [bc], a                                    ; $4d5d: $02
    ld [bc], a                                    ; $4d5e: $02
    dec bc                                        ; $4d5f: $0b
    dec bc                                        ; $4d60: $0b
    ld [bc], a                                    ; $4d61: $02
    ld [bc], a                                    ; $4d62: $02
    ld [bc], a                                    ; $4d63: $02
    ld [bc], a                                    ; $4d64: $02
    ld [bc], a                                    ; $4d65: $02
    ld [bc], a                                    ; $4d66: $02
    pop hl                                        ; $4d67: $e1
    pop hl                                        ; $4d68: $e1
    ld b, c                                       ; $4d69: $41
    pop hl                                        ; $4d6a: $e1
    pop hl                                        ; $4d6b: $e1
    ld c, b                                       ; $4d6c: $48
    ld c, c                                       ; $4d6d: $49
    ld c, d                                       ; $4d6e: $4a
    ld b, d                                       ; $4d6f: $42
    ld b, e                                       ; $4d70: $43
    ld b, a                                       ; $4d71: $47
    ld d, e                                       ; $4d72: $53
    ld b, h                                       ; $4d73: $44
    ld b, l                                       ; $4d74: $45
    pop hl                                        ; $4d75: $e1
    ld b, [hl]                                    ; $4d76: $46
    ld [bc], a                                    ; $4d77: $02
    ld [bc], a                                    ; $4d78: $02
    ld bc, $0202                                  ; $4d79: $01 $02 $02
    ld bc, $0101                                  ; $4d7c: $01 $01 $01
    ld bc, $0101                                  ; $4d7f: $01 $01 $01
    ld bc, $0101                                  ; $4d82: $01 $01 $01
    ld [bc], a                                    ; $4d85: $02
    ld bc, $48e1                                  ; $4d86: $01 $e1 $48
    ld c, c                                       ; $4d89: $49
    ld c, d                                       ; $4d8a: $4a
    ld d, h                                       ; $4d8b: $54
    ld b, [hl]                                    ; $4d8c: $46
    ld b, a                                       ; $4d8d: $47
    ld d, e                                       ; $4d8e: $53
    ld d, l                                       ; $4d8f: $55
    ld d, [hl]                                    ; $4d90: $56
    ld d, b                                       ; $4d91: $50
    ld d, c                                       ; $4d92: $51
    ld b, a                                       ; $4d93: $47
    ld d, e                                       ; $4d94: $53
    ld d, l                                       ; $4d95: $55
    ld d, [hl]                                    ; $4d96: $56
    ld [bc], a                                    ; $4d97: $02
    ld bc, $0101                                  ; $4d98: $01 $01 $01
    ld bc, $0101                                  ; $4d9b: $01 $01 $01
    ld bc, $0101                                  ; $4d9e: $01 $01 $01
    ld bc, $0101                                  ; $4da1: $01 $01 $01
    ld bc, $0101                                  ; $4da4: $01 $01 $01
    ld d, b                                       ; $4da7: $50
    ld d, c                                       ; $4da8: $51
    ld d, d                                       ; $4da9: $52
    ld d, e                                       ; $4daa: $53
    ld d, l                                       ; $4dab: $55
    ld d, [hl]                                    ; $4dac: $56
    ld d, b                                       ; $4dad: $50
    ld d, c                                       ; $4dae: $51
    ld d, d                                       ; $4daf: $52
    ld d, e                                       ; $4db0: $53
    ld d, l                                       ; $4db1: $55
    ld d, [hl]                                    ; $4db2: $56
    ld d, b                                       ; $4db3: $50
    ld d, c                                       ; $4db4: $51
    ld d, d                                       ; $4db5: $52
    ld d, e                                       ; $4db6: $53
    ld bc, $0101                                  ; $4db7: $01 $01 $01
    ld bc, $0101                                  ; $4dba: $01 $01 $01
    ld bc, $0101                                  ; $4dbd: $01 $01 $01
    ld bc, $0101                                  ; $4dc0: $01 $01 $01
    ld bc, $0101                                  ; $4dc3: $01 $01 $01
    ld bc, $e1e1                                  ; $4dc6: $01 $e1 $e1
    ld b, c                                       ; $4dc9: $41
    pop hl                                        ; $4dca: $e1
    inc l                                         ; $4dcb: $2c
    ld c, l                                       ; $4dcc: $4d
    ld c, [hl]                                    ; $4dcd: $4e
    ld c, a                                       ; $4dce: $4f
    rla                                           ; $4dcf: $17
    jr @+$24                                      ; $4dd0: $18 $22

    ld de, $1a20                                  ; $4dd2: $11 $20 $1a
    ld [de], a                                    ; $4dd5: $12
    add hl, de                                    ; $4dd6: $19
    ld [bc], a                                    ; $4dd7: $02
    ld [bc], a                                    ; $4dd8: $02
    ld bc, $0302                                  ; $4dd9: $01 $02 $03
    inc bc                                        ; $4ddc: $03
    inc bc                                        ; $4ddd: $03
    inc bc                                        ; $4dde: $03
    inc bc                                        ; $4ddf: $03
    inc bc                                        ; $4de0: $03
    inc bc                                        ; $4de1: $03
    inc bc                                        ; $4de2: $03
    inc bc                                        ; $4de3: $03
    inc bc                                        ; $4de4: $03
    inc bc                                        ; $4de5: $03
    inc bc                                        ; $4de6: $03
    pop hl                                        ; $4de7: $e1
    pop hl                                        ; $4de8: $e1
    ld b, c                                       ; $4de9: $41
    pop hl                                        ; $4dea: $e1
    ld c, e                                       ; $4deb: $4b
    dec l                                         ; $4dec: $2d
    inc l                                         ; $4ded: $2c
    dec hl                                        ; $4dee: $2b
    rla                                           ; $4def: $17
    jr @+$24                                      ; $4df0: $18 $22

    cpl                                           ; $4df2: $2f
    jr nz, jr_08c_4e0f                            ; $4df3: $20 $1a

    ld l, $27                                     ; $4df5: $2e $27
    ld [bc], a                                    ; $4df7: $02
    ld [bc], a                                    ; $4df8: $02
    ld bc, $0302                                  ; $4df9: $01 $02 $03
    inc hl                                        ; $4dfc: $23
    inc hl                                        ; $4dfd: $23
    inc hl                                        ; $4dfe: $23
    inc bc                                        ; $4dff: $03
    inc bc                                        ; $4e00: $03
    inc bc                                        ; $4e01: $03
    inc bc                                        ; $4e02: $03
    inc bc                                        ; $4e03: $03
    inc bc                                        ; $4e04: $03
    inc bc                                        ; $4e05: $03
    inc bc                                        ; $4e06: $03
    inc hl                                        ; $4e07: $23
    inc h                                         ; $4e08: $24
    ld b, a                                       ; $4e09: $47
    ld c, b                                       ; $4e0a: $48
    dec hl                                        ; $4e0b: $2b
    inc l                                         ; $4e0c: $2c
    dec l                                         ; $4e0d: $2d
    ld c, l                                       ; $4e0e: $4d

jr_08c_4e0f:
    jr nc, jr_08c_4e29                            ; $4e0f: $30 $18

    ld [hl+], a                                   ; $4e11: $22
    ld de, $1a20                                  ; $4e12: $11 $20 $1a
    ld l, $27                                     ; $4e15: $2e $27
    ld bc, $0101                                  ; $4e17: $01 $01 $01
    ld bc, $0303                                  ; $4e1a: $01 $03 $03
    inc bc                                        ; $4e1d: $03
    inc bc                                        ; $4e1e: $03
    inc bc                                        ; $4e1f: $03
    inc bc                                        ; $4e20: $03
    inc bc                                        ; $4e21: $03
    inc bc                                        ; $4e22: $03
    inc bc                                        ; $4e23: $03
    inc bc                                        ; $4e24: $03
    inc bc                                        ; $4e25: $03
    inc bc                                        ; $4e26: $03
    ld c, c                                       ; $4e27: $49
    ld c, d                                       ; $4e28: $4a

jr_08c_4e29:
    ld d, h                                       ; $4e29: $54
    ld b, [hl]                                    ; $4e2a: $46
    inc l                                         ; $4e2b: $2c
    inc l                                         ; $4e2c: $2c
    dec l                                         ; $4e2d: $2d
    pop hl                                        ; $4e2e: $e1
    rla                                           ; $4e2f: $17
    jr jr_08c_4e7e                                ; $4e30: $18 $4c

    jr z, jr_08c_4e54                             ; $4e32: $28 $20

    ld a, [de]                                    ; $4e34: $1a
    ld h, $11                                     ; $4e35: $26 $11
    ld bc, $0101                                  ; $4e37: $01 $01 $01
    ld bc, $0323                                  ; $4e3a: $01 $23 $03
    inc bc                                        ; $4e3d: $03
    ld [bc], a                                    ; $4e3e: $02
    inc bc                                        ; $4e3f: $03
    inc bc                                        ; $4e40: $03
    inc bc                                        ; $4e41: $03
    inc hl                                        ; $4e42: $23
    inc bc                                        ; $4e43: $03
    inc bc                                        ; $4e44: $03
    inc bc                                        ; $4e45: $03
    inc bc                                        ; $4e46: $03
    ld c, [hl]                                    ; $4e47: $4e
    dec l                                         ; $4e48: $2d
    inc l                                         ; $4e49: $2c
    dec hl                                        ; $4e4a: $2b
    rlca                                          ; $4e4b: $07
    ld [hl-], a                                   ; $4e4c: $32
    inc sp                                        ; $4e4d: $33
    inc [hl]                                      ; $4e4e: $34
    add hl, bc                                    ; $4e4f: $09
    dec [hl]                                      ; $4e50: $35
    ld [hl], $37                                  ; $4e51: $36 $37
    dec bc                                        ; $4e53: $0b

jr_08c_4e54:
    add hl, sp                                    ; $4e54: $39
    ld a, [hl-]                                   ; $4e55: $3a
    dec sp                                        ; $4e56: $3b
    ld b, e                                       ; $4e57: $43
    ld h, e                                       ; $4e58: $63
    ld h, e                                       ; $4e59: $63
    ld h, e                                       ; $4e5a: $63
    add d                                         ; $4e5b: $82
    add d                                         ; $4e5c: $82
    add d                                         ; $4e5d: $82
    add d                                         ; $4e5e: $82
    add d                                         ; $4e5f: $82
    add d                                         ; $4e60: $82
    add d                                         ; $4e61: $82
    add d                                         ; $4e62: $82
    add d                                         ; $4e63: $82
    add d                                         ; $4e64: $82
    add d                                         ; $4e65: $82
    add d                                         ; $4e66: $82
    dec hl                                        ; $4e67: $2b
    inc l                                         ; $4e68: $2c
    dec l                                         ; $4e69: $2d
    ld c, a                                       ; $4e6a: $4f
    pop hl                                        ; $4e6b: $e1
    pop hl                                        ; $4e6c: $e1
    pop hl                                        ; $4e6d: $e1
    pop hl                                        ; $4e6e: $e1
    jr c, @-$1d                                   ; $4e6f: $38 $e1

    pop hl                                        ; $4e71: $e1
    pop hl                                        ; $4e72: $e1
    inc a                                         ; $4e73: $3c
    pop hl                                        ; $4e74: $e1
    pop hl                                        ; $4e75: $e1
    pop hl                                        ; $4e76: $e1
    ld b, e                                       ; $4e77: $43
    ld b, e                                       ; $4e78: $43
    ld b, e                                       ; $4e79: $43
    ld b, e                                       ; $4e7a: $43
    ld [bc], a                                    ; $4e7b: $02
    ld [bc], a                                    ; $4e7c: $02
    ld [bc], a                                    ; $4e7d: $02

jr_08c_4e7e:
    ld [bc], a                                    ; $4e7e: $02
    add d                                         ; $4e7f: $82
    ld [bc], a                                    ; $4e80: $02
    ld [bc], a                                    ; $4e81: $02
    ld [bc], a                                    ; $4e82: $02
    add d                                         ; $4e83: $82
    ld [bc], a                                    ; $4e84: $02
    ld [bc], a                                    ; $4e85: $02
    ld [bc], a                                    ; $4e86: $02
    ld c, e                                       ; $4e87: $4b
    ld c, l                                       ; $4e88: $4d
    inc l                                         ; $4e89: $2c
    inc d                                         ; $4e8a: $14
    pop hl                                        ; $4e8b: $e1
    ld b, c                                       ; $4e8c: $41
    pop hl                                        ; $4e8d: $e1
    ld a, [hl+]                                   ; $4e8e: $2a
    inc hl                                        ; $4e8f: $23
    inc h                                         ; $4e90: $24
    ld b, a                                       ; $4e91: $47
    ld c, b                                       ; $4e92: $48
    pop hl                                        ; $4e93: $e1
    ld c, d                                       ; $4e94: $4a
    ld d, b                                       ; $4e95: $50
    ld b, [hl]                                    ; $4e96: $46
    ld b, e                                       ; $4e97: $43
    ld b, e                                       ; $4e98: $43
    ld h, e                                       ; $4e99: $63
    inc bc                                        ; $4e9a: $03
    ld [bc], a                                    ; $4e9b: $02
    ld bc, $4302                                  ; $4e9c: $01 $02 $43
    ld bc, $0101                                  ; $4e9f: $01 $01 $01
    ld bc, $0102                                  ; $4ea2: $01 $02 $01
    ld bc, $1b01                                  ; $4ea5: $01 $01 $1b
    inc e                                         ; $4ea8: $1c
    ld l, $27                                     ; $4ea9: $2e $27
    jr z, jr_08c_4ecb                             ; $4eab: $28 $1e

    ld sp, $e114                                  ; $4ead: $31 $14 $e1
    dec l                                         ; $4eb0: $2d
    inc l                                         ; $4eb1: $2c
    dec hl                                        ; $4eb2: $2b
    ld b, a                                       ; $4eb3: $47
    pop hl                                        ; $4eb4: $e1
    ld b, d                                       ; $4eb5: $42
    ld b, e                                       ; $4eb6: $43
    inc bc                                        ; $4eb7: $03
    inc bc                                        ; $4eb8: $03
    inc bc                                        ; $4eb9: $03
    inc bc                                        ; $4eba: $03
    ld b, e                                       ; $4ebb: $43
    inc bc                                        ; $4ebc: $03
    inc bc                                        ; $4ebd: $03
    inc bc                                        ; $4ebe: $03
    ld [bc], a                                    ; $4ebf: $02
    ld h, e                                       ; $4ec0: $63
    ld h, e                                       ; $4ec1: $63
    ld h, e                                       ; $4ec2: $63
    ld bc, $0102                                  ; $4ec3: $01 $02 $01
    ld bc, $3d0e                                  ; $4ec6: $01 $0e $3d
    ld a, $3f                                     ; $4ec9: $3e $3f

jr_08c_4ecb:
    db $f4                                        ; $4ecb: $f4
    push af                                       ; $4ecc: $f5
    or $f7                                        ; $4ecd: $f6 $f7
    pop hl                                        ; $4ecf: $e1
    ld sp, hl                                     ; $4ed0: $f9
    ld a, [$e1e1]                                 ; $4ed1: $fa $e1 $e1
    ei                                            ; $4ed4: $fb
    db $fc                                        ; $4ed5: $fc
    pop hl                                        ; $4ed6: $e1
    add d                                         ; $4ed7: $82
    add d                                         ; $4ed8: $82
    add d                                         ; $4ed9: $82
    add d                                         ; $4eda: $82
    adc d                                         ; $4edb: $8a
    adc d                                         ; $4edc: $8a
    adc d                                         ; $4edd: $8a
    adc d                                         ; $4ede: $8a
    ld [bc], a                                    ; $4edf: $02
    dec bc                                        ; $4ee0: $0b
    dec bc                                        ; $4ee1: $0b
    ld [bc], a                                    ; $4ee2: $02
    ld [bc], a                                    ; $4ee3: $02
    dec bc                                        ; $4ee4: $0b
    dec bc                                        ; $4ee5: $0b
    ld [bc], a                                    ; $4ee6: $02
    ld b, b                                       ; $4ee7: $40
    pop hl                                        ; $4ee8: $e1
    pop hl                                        ; $4ee9: $e1
    pop hl                                        ; $4eea: $e1
    ld hl, sp-$1f                                 ; $4eeb: $f8 $e1
    ld b, c                                       ; $4eed: $41
    pop hl                                        ; $4eee: $e1
    pop hl                                        ; $4eef: $e1
    pop hl                                        ; $4ef0: $e1
    pop hl                                        ; $4ef1: $e1
    pop hl                                        ; $4ef2: $e1
    inc hl                                        ; $4ef3: $23
    inc h                                         ; $4ef4: $24
    pop hl                                        ; $4ef5: $e1
    ld b, [hl]                                    ; $4ef6: $46
    add d                                         ; $4ef7: $82
    ld [bc], a                                    ; $4ef8: $02
    ld [bc], a                                    ; $4ef9: $02
    ld [bc], a                                    ; $4efa: $02
    adc d                                         ; $4efb: $8a
    ld [bc], a                                    ; $4efc: $02
    ld bc, $0202                                  ; $4efd: $01 $02 $02
    ld [bc], a                                    ; $4f00: $02
    ld [bc], a                                    ; $4f01: $02
    ld [bc], a                                    ; $4f02: $02
    ld bc, $0201                                  ; $4f03: $01 $01 $02
    ld bc, $4841                                  ; $4f06: $01 $41 $48
    ld d, l                                       ; $4f09: $55
    ld d, [hl]                                    ; $4f0a: $56
    ld d, h                                       ; $4f0b: $54
    ld b, [hl]                                    ; $4f0c: $46
    ld d, d                                       ; $4f0d: $52
    ld d, e                                       ; $4f0e: $53
    ld c, c                                       ; $4f0f: $49
    ld d, [hl]                                    ; $4f10: $56
    ld d, b                                       ; $4f11: $50
    ld d, c                                       ; $4f12: $51
    ld b, a                                       ; $4f13: $47
    ld d, e                                       ; $4f14: $53
    ld d, l                                       ; $4f15: $55
    ld d, [hl]                                    ; $4f16: $56
    ld bc, $0101                                  ; $4f17: $01 $01 $01
    ld bc, $0101                                  ; $4f1a: $01 $01 $01
    ld bc, $0101                                  ; $4f1d: $01 $01 $01
    ld bc, $0101                                  ; $4f20: $01 $01 $01
    ld bc, $0101                                  ; $4f23: $01 $01 $01
    ld bc, $4654                                  ; $4f26: $01 $54 $46
    ld b, h                                       ; $4f29: $44
    ld b, l                                       ; $4f2a: $45
    ld d, l                                       ; $4f2b: $55
    ld c, d                                       ; $4f2c: $4a
    ld d, h                                       ; $4f2d: $54
    pop hl                                        ; $4f2e: $e1
    ld d, d                                       ; $4f2f: $52
    ld c, b                                       ; $4f30: $48
    ld c, c                                       ; $4f31: $49
    ld c, d                                       ; $4f32: $4a
    ld d, b                                       ; $4f33: $50
    ld b, [hl]                                    ; $4f34: $46
    ld b, a                                       ; $4f35: $47
    pop hl                                        ; $4f36: $e1
    ld bc, $0101                                  ; $4f37: $01 $01 $01
    ld bc, $0101                                  ; $4f3a: $01 $01 $01
    ld bc, $0102                                  ; $4f3d: $01 $02 $01
    ld bc, $0101                                  ; $4f40: $01 $01 $01
    ld bc, $0101                                  ; $4f43: $01 $01 $01
    ld [bc], a                                    ; $4f46: $02
    ld d, l                                       ; $4f47: $55
    ld d, [hl]                                    ; $4f48: $56
    ld d, b                                       ; $4f49: $50
    ld b, [hl]                                    ; $4f4a: $46
    ld d, d                                       ; $4f4b: $52
    ld c, b                                       ; $4f4c: $48
    ld c, c                                       ; $4f4d: $49
    inc hl                                        ; $4f4e: $23
    ld d, h                                       ; $4f4f: $54
    ld b, [hl]                                    ; $4f50: $46
    ld b, a                                       ; $4f51: $47
    pop hl                                        ; $4f52: $e1
    ld d, l                                       ; $4f53: $55
    ld d, [hl]                                    ; $4f54: $56
    ld d, h                                       ; $4f55: $54
    ld b, [hl]                                    ; $4f56: $46
    ld bc, $0101                                  ; $4f57: $01 $01 $01
    ld bc, $0101                                  ; $4f5a: $01 $01 $01
    ld bc, $0101                                  ; $4f5d: $01 $01 $01
    ld bc, $0201                                  ; $4f60: $01 $01 $02
    ld bc, $0101                                  ; $4f63: $01 $01 $01
    ld bc, $4847                                  ; $4f66: $01 $47 $48
    pop hl                                        ; $4f69: $e1
    pop hl                                        ; $4f6a: $e1
    inc h                                         ; $4f6b: $24
    pop hl                                        ; $4f6c: $e1
    pop hl                                        ; $4f6d: $e1
    pop hl                                        ; $4f6e: $e1
    pop hl                                        ; $4f6f: $e1
    pop hl                                        ; $4f70: $e1
    pop hl                                        ; $4f71: $e1
    rlca                                          ; $4f72: $07
    ld b, a                                       ; $4f73: $47
    ld c, b                                       ; $4f74: $48
    ld [$0109], sp                                ; $4f75: $08 $09 $01
    ld bc, $0202                                  ; $4f78: $01 $02 $02
    ld bc, $0202                                  ; $4f7b: $01 $02 $02
    ld [bc], a                                    ; $4f7e: $02
    ld [bc], a                                    ; $4f7f: $02
    ld [bc], a                                    ; $4f80: $02
    ld [bc], a                                    ; $4f81: $02
    add d                                         ; $4f82: $82
    ld bc, $8201                                  ; $4f83: $01 $01 $82
    add d                                         ; $4f86: $82
    ld sp, hl                                     ; $4f87: $f9
    ld a, [$f6fb]                                 ; $4f88: $fa $fb $f6
    pop hl                                        ; $4f8b: $e1
    pop hl                                        ; $4f8c: $e1
    pop hl                                        ; $4f8d: $e1
    ld a, [$3332]                                 ; $4f8e: $fa $32 $33
    inc [hl]                                      ; $4f91: $34
    pop hl                                        ; $4f92: $e1
    dec [hl]                                      ; $4f93: $35
    ld [hl], $37                                  ; $4f94: $36 $37
    jr c, @+$03                                   ; $4f96: $38 $01

    ld bc, $0101                                  ; $4f98: $01 $01 $01
    ld [bc], a                                    ; $4f9b: $02
    ld [bc], a                                    ; $4f9c: $02
    ld [bc], a                                    ; $4f9d: $02
    ld bc, $8282                                  ; $4f9e: $01 $82 $82
    add d                                         ; $4fa1: $82
    ld [bc], a                                    ; $4fa2: $02
    add d                                         ; $4fa3: $82
    add d                                         ; $4fa4: $82
    add d                                         ; $4fa5: $82
    add d                                         ; $4fa6: $82
    rst $30                                       ; $4fa7: $f7
    ld hl, sp-$07                                 ; $4fa8: $f8 $f9
    pop hl                                        ; $4faa: $e1
    ei                                            ; $4fab: $fb
    or $e1                                        ; $4fac: $f6 $e1
    ld b, c                                       ; $4fae: $41
    pop hl                                        ; $4faf: $e1
    pop hl                                        ; $4fb0: $e1
    ei                                            ; $4fb1: $fb
    pop hl                                        ; $4fb2: $e1
    pop hl                                        ; $4fb3: $e1
    pop hl                                        ; $4fb4: $e1
    pop hl                                        ; $4fb5: $e1
    pop hl                                        ; $4fb6: $e1
    ld bc, $0101                                  ; $4fb7: $01 $01 $01
    ld [bc], a                                    ; $4fba: $02
    ld bc, $0201                                  ; $4fbb: $01 $01 $02
    ld bc, $0202                                  ; $4fbe: $01 $02 $02
    ld bc, $0202                                  ; $4fc1: $01 $02 $02
    ld [bc], a                                    ; $4fc4: $02
    ld [bc], a                                    ; $4fc5: $02
    ld [bc], a                                    ; $4fc6: $02
    ld b, a                                       ; $4fc7: $47
    ld c, b                                       ; $4fc8: $48
    ld c, c                                       ; $4fc9: $49
    pop hl                                        ; $4fca: $e1
    ld b, c                                       ; $4fcb: $41
    pop hl                                        ; $4fcc: $e1
    pop hl                                        ; $4fcd: $e1
    pop hl                                        ; $4fce: $e1
    ld a, [hl+]                                   ; $4fcf: $2a
    pop hl                                        ; $4fd0: $e1
    ld b, d                                       ; $4fd1: $42
    ld b, e                                       ; $4fd2: $43
    rla                                           ; $4fd3: $17
    dec h                                         ; $4fd4: $25
    ld b, h                                       ; $4fd5: $44
    ld b, l                                       ; $4fd6: $45
    ld bc, $0101                                  ; $4fd7: $01 $01 $01
    ld [bc], a                                    ; $4fda: $02
    ld bc, $0202                                  ; $4fdb: $01 $02 $02
    ld [bc], a                                    ; $4fde: $02
    inc hl                                        ; $4fdf: $23
    ld [bc], a                                    ; $4fe0: $02
    ld bc, $0301                                  ; $4fe1: $01 $01 $03
    ld h, e                                       ; $4fe4: $63
    ld bc, $e101                                  ; $4fe5: $01 $01 $e1
    pop hl                                        ; $4fe8: $e1
    ld a, [bc]                                    ; $4fe9: $0a
    dec bc                                        ; $4fea: $0b
    ld b, c                                       ; $4feb: $41
    pop hl                                        ; $4fec: $e1
    dec c                                         ; $4fed: $0d
    ld c, $e1                                     ; $4fee: $0e $e1
    pop hl                                        ; $4ff0: $e1
    di                                            ; $4ff1: $f3
    db $f4                                        ; $4ff2: $f4
    pop hl                                        ; $4ff3: $e1
    pop hl                                        ; $4ff4: $e1
    pop hl                                        ; $4ff5: $e1
    pop hl                                        ; $4ff6: $e1
    ld [bc], a                                    ; $4ff7: $02
    ld [bc], a                                    ; $4ff8: $02
    add d                                         ; $4ff9: $82
    add d                                         ; $4ffa: $82
    ld bc, $8202                                  ; $4ffb: $01 $02 $82
    add d                                         ; $4ffe: $82
    ld [bc], a                                    ; $4fff: $02
    ld [bc], a                                    ; $5000: $02
    adc d                                         ; $5001: $8a
    adc d                                         ; $5002: $8a
    ld [bc], a                                    ; $5003: $02
    ld [bc], a                                    ; $5004: $02
    ld [bc], a                                    ; $5005: $02
    ld [bc], a                                    ; $5006: $02
    add hl, sp                                    ; $5007: $39
    ld a, [hl-]                                   ; $5008: $3a
    dec sp                                        ; $5009: $3b
    inc a                                         ; $500a: $3c
    dec a                                         ; $500b: $3d
    ld a, $3f                                     ; $500c: $3e $3f
    ld b, b                                       ; $500e: $40
    push af                                       ; $500f: $f5
    or $f7                                        ; $5010: $f6 $f7
    ld hl, sp-$07                                 ; $5012: $f8 $f9
    ld a, [$e1e1]                                 ; $5014: $fa $e1 $e1
    add d                                         ; $5017: $82
    add d                                         ; $5018: $82
    add d                                         ; $5019: $82
    add d                                         ; $501a: $82
    add d                                         ; $501b: $82
    add d                                         ; $501c: $82
    add d                                         ; $501d: $82
    add d                                         ; $501e: $82
    adc d                                         ; $501f: $8a
    adc d                                         ; $5020: $8a
    adc d                                         ; $5021: $8a
    adc d                                         ; $5022: $8a
    dec bc                                        ; $5023: $0b
    dec bc                                        ; $5024: $0b
    ld [bc], a                                    ; $5025: $02
    ld [bc], a                                    ; $5026: $02
    pop hl                                        ; $5027: $e1
    pop hl                                        ; $5028: $e1
    ld b, d                                       ; $5029: $42
    ld b, e                                       ; $502a: $43
    pop hl                                        ; $502b: $e1
    pop hl                                        ; $502c: $e1
    ld b, h                                       ; $502d: $44
    ld b, l                                       ; $502e: $45
    pop hl                                        ; $502f: $e1
    ld b, c                                       ; $5030: $41
    pop hl                                        ; $5031: $e1
    ld a, [$f6e1]                                 ; $5032: $fa $e1 $f6
    rst $30                                       ; $5035: $f7
    ld a, [c]                                     ; $5036: $f2
    ld [bc], a                                    ; $5037: $02
    ld [bc], a                                    ; $5038: $02
    ld bc, $0201                                  ; $5039: $01 $01 $02
    ld [bc], a                                    ; $503c: $02
    ld bc, $0201                                  ; $503d: $01 $01 $02
    ld bc, $0102                                  ; $5040: $01 $02 $01
    ld [bc], a                                    ; $5043: $02
    ld bc, $0901                                  ; $5044: $01 $01 $09
    jr nz, jr_08c_5063                            ; $5047: $20 $1a

    jr z, jr_08c_5075                             ; $5049: $28 $2a

    dec de                                        ; $504b: $1b
    inc e                                         ; $504c: $1c
    cpl                                           ; $504d: $2f
    jr nc, jr_08c_506d                            ; $504e: $30 $1d

    ld e, $2e                                     ; $5050: $1e $2e
    daa                                           ; $5052: $27
    ld a, [hl+]                                   ; $5053: $2a
    jr z, jr_08c_5087                             ; $5054: $28 $31

    inc d                                         ; $5056: $14
    inc bc                                        ; $5057: $03
    inc bc                                        ; $5058: $03
    inc hl                                        ; $5059: $23
    inc hl                                        ; $505a: $23
    inc bc                                        ; $505b: $03
    inc bc                                        ; $505c: $03
    inc bc                                        ; $505d: $03
    inc bc                                        ; $505e: $03
    inc bc                                        ; $505f: $03
    inc bc                                        ; $5060: $03
    inc bc                                        ; $5061: $03
    inc bc                                        ; $5062: $03

jr_08c_5063:
    ld b, e                                       ; $5063: $43
    ld b, e                                       ; $5064: $43
    inc bc                                        ; $5065: $03
    inc bc                                        ; $5066: $03
    pop hl                                        ; $5067: $e1
    pop hl                                        ; $5068: $e1
    inc hl                                        ; $5069: $23
    inc h                                         ; $506a: $24
    jr z, jr_08c_5097                             ; $506b: $28 $2a

jr_08c_506d:
    pop hl                                        ; $506d: $e1
    pop hl                                        ; $506e: $e1
    jr nz, jr_08c_508b                            ; $506f: $20 $1a

    jr z, jr_08c_509d                             ; $5071: $28 $2a

    dec de                                        ; $5073: $1b
    inc e                                         ; $5074: $1c

jr_08c_5075:
    ld [hl+], a                                   ; $5075: $22
    ld de, $0202                                  ; $5076: $11 $02 $02
    ld bc, $2301                                  ; $5079: $01 $01 $23
    inc hl                                        ; $507c: $23
    ld [bc], a                                    ; $507d: $02
    ld [bc], a                                    ; $507e: $02
    inc bc                                        ; $507f: $03
    inc bc                                        ; $5080: $03
    inc hl                                        ; $5081: $23
    inc hl                                        ; $5082: $23
    inc bc                                        ; $5083: $03
    inc bc                                        ; $5084: $03
    inc bc                                        ; $5085: $03
    inc bc                                        ; $5086: $03

jr_08c_5087:
    ei                                            ; $5087: $fb
    db $fc                                        ; $5088: $fc
    pop hl                                        ; $5089: $e1
    pop hl                                        ; $508a: $e1

jr_08c_508b:
    pop hl                                        ; $508b: $e1
    pop hl                                        ; $508c: $e1
    pop hl                                        ; $508d: $e1
    or $e1                                        ; $508e: $f6 $e1
    ld b, c                                       ; $5090: $41
    ld sp, hl                                     ; $5091: $f9
    ld a, [$2a28]                                 ; $5092: $fa $28 $2a
    pop hl                                        ; $5095: $e1
    pop hl                                        ; $5096: $e1

jr_08c_5097:
    dec bc                                        ; $5097: $0b
    dec bc                                        ; $5098: $0b
    ld [bc], a                                    ; $5099: $02
    ld [bc], a                                    ; $509a: $02
    ld [bc], a                                    ; $509b: $02
    ld [bc], a                                    ; $509c: $02

jr_08c_509d:
    ld [bc], a                                    ; $509d: $02
    ld bc, $0102                                  ; $509e: $01 $02 $01
    ld bc, $2301                                  ; $50a1: $01 $01 $23
    inc hl                                        ; $50a4: $23
    ld [bc], a                                    ; $50a5: $02
    ld [bc], a                                    ; $50a6: $02
    ld sp, hl                                     ; $50a7: $f9
    ld [bc], a                                    ; $50a8: $02
    inc bc                                        ; $50a9: $03
    ld b, $0c                                     ; $50aa: $06 $0c
    ld a, [c]                                     ; $50ac: $f2

jr_08c_50ad:
    inc b                                         ; $50ad: $04
    ld [bc], a                                    ; $50ae: $02
    ei                                            ; $50af: $fb
    or $f7                                        ; $50b0: $f6 $f7
    ld hl, sp-$1f                                 ; $50b2: $f8 $e1
    inc hl                                        ; $50b4: $23
    inc h                                         ; $50b5: $24
    or $01                                        ; $50b6: $f6 $01
    ld bc, $0101                                  ; $50b8: $01 $01 $01
    ld bc, $0109                                  ; $50bb: $01 $09 $01
    ld bc, $0101                                  ; $50be: $01 $01 $01
    ld bc, $0201                                  ; $50c1: $01 $01 $02
    ld bc, $0101                                  ; $50c4: $01 $01 $01
    pop hl                                        ; $50c7: $e1
    pop hl                                        ; $50c8: $e1
    ld a, [hl+]                                   ; $50c9: $2a
    jr z, jr_08c_50ad                             ; $50ca: $28 $e1

    pop hl                                        ; $50cc: $e1
    ld b, c                                       ; $50cd: $41
    pop hl                                        ; $50ce: $e1
    ld d, h                                       ; $50cf: $54
    pop hl                                        ; $50d0: $e1
    rlca                                          ; $50d1: $07
    ld [hl-], a                                   ; $50d2: $32
    pop hl                                        ; $50d3: $e1
    ld [$3509], sp                                ; $50d4: $08 $09 $35
    ld [bc], a                                    ; $50d7: $02

jr_08c_50d8:
    ld [bc], a                                    ; $50d8: $02
    ld b, e                                       ; $50d9: $43
    ld b, e                                       ; $50da: $43
    ld [bc], a                                    ; $50db: $02
    ld [bc], a                                    ; $50dc: $02
    ld bc, $0102                                  ; $50dd: $01 $02 $01
    ld [bc], a                                    ; $50e0: $02
    add d                                         ; $50e1: $82
    add d                                         ; $50e2: $82
    ld [bc], a                                    ; $50e3: $02
    add d                                         ; $50e4: $82
    add d                                         ; $50e5: $82
    add d                                         ; $50e6: $82
    dec e                                         ; $50e7: $1d
    ld [de], a                                    ; $50e8: $12
    add hl, de                                    ; $50e9: $19
    daa                                           ; $50ea: $27
    ld a, [hl+]                                   ; $50eb: $2a
    jr z, jr_08c_511f                             ; $50ec: $28 $31

    inc d                                         ; $50ee: $14
    inc sp                                        ; $50ef: $33
    inc [hl]                                      ; $50f0: $34
    dec l                                         ; $50f1: $2d
    inc l                                         ; $50f2: $2c
    ld [hl], $37                                  ; $50f3: $36 $37
    jr c, jr_08c_50d8                             ; $50f5: $38 $e1

    inc bc                                        ; $50f7: $03
    inc bc                                        ; $50f8: $03
    inc bc                                        ; $50f9: $03
    inc bc                                        ; $50fa: $03
    ld b, e                                       ; $50fb: $43
    ld b, e                                       ; $50fc: $43
    inc bc                                        ; $50fd: $03
    inc bc                                        ; $50fe: $03
    add d                                         ; $50ff: $82
    add d                                         ; $5100: $82
    ld h, e                                       ; $5101: $63
    ld h, e                                       ; $5102: $63
    add d                                         ; $5103: $82
    add d                                         ; $5104: $82
    add d                                         ; $5105: $82
    ld [bc], a                                    ; $5106: $02
    jr nz, jr_08c_5123                            ; $5107: $20 $1a

    dec hl                                        ; $5109: $2b
    dec hl                                        ; $510a: $2b
    dec de                                        ; $510b: $1b
    inc e                                         ; $510c: $1c
    ld l, $27                                     ; $510d: $2e $27
    dec hl                                        ; $510f: $2b
    ld e, $31                                     ; $5110: $1e $31
    ld h, $e1                                     ; $5112: $26 $e1
    dec l                                         ; $5114: $2d
    inc l                                         ; $5115: $2c
    dec hl                                        ; $5116: $2b
    inc bc                                        ; $5117: $03
    inc bc                                        ; $5118: $03
    inc bc                                        ; $5119: $03
    inc bc                                        ; $511a: $03
    inc bc                                        ; $511b: $03
    inc bc                                        ; $511c: $03
    inc bc                                        ; $511d: $03
    inc bc                                        ; $511e: $03

jr_08c_511f:
    ld h, e                                       ; $511f: $63
    inc bc                                        ; $5120: $03
    inc bc                                        ; $5121: $03
    inc bc                                        ; $5122: $03

jr_08c_5123:
    ld [bc], a                                    ; $5123: $02
    ld h, e                                       ; $5124: $63
    ld h, e                                       ; $5125: $63
    ld h, e                                       ; $5126: $63
    inc l                                         ; $5127: $2c
    dec l                                         ; $5128: $2d
    ld c, a                                       ; $5129: $4f
    ld c, e                                       ; $512a: $4b
    jr nz, jr_08c_5147                            ; $512b: $20 $1a

    ld l, $27                                     ; $512d: $2e $27
    dec de                                        ; $512f: $1b
    inc e                                         ; $5130: $1c
    ld sp, $1d14                                  ; $5131: $31 $14 $1d
    ld e, $4c                                     ; $5134: $1e $4c
    ld d, $03                                     ; $5136: $16 $03
    inc bc                                        ; $5138: $03
    inc bc                                        ; $5139: $03
    inc bc                                        ; $513a: $03
    inc bc                                        ; $513b: $03
    inc bc                                        ; $513c: $03
    inc bc                                        ; $513d: $03
    inc bc                                        ; $513e: $03
    inc bc                                        ; $513f: $03
    inc bc                                        ; $5140: $03
    inc bc                                        ; $5141: $03
    inc bc                                        ; $5142: $03
    inc bc                                        ; $5143: $03
    inc bc                                        ; $5144: $03
    inc bc                                        ; $5145: $03
    inc bc                                        ; $5146: $03

jr_08c_5147:
    ld [c], a                                     ; $5147: $e2
    pop hl                                        ; $5148: $e1
    db $fd                                        ; $5149: $fd
    cp $e4                                        ; $514a: $fe $e4
    pop hl                                        ; $514c: $e1
    pop hl                                        ; $514d: $e1
    pop hl                                        ; $514e: $e1
    add sp, -$1f                                  ; $514f: $e8 $e1
    inc hl                                        ; $5151: $23
    inc h                                         ; $5152: $24
    pop hl                                        ; $5153: $e1
    pop hl                                        ; $5154: $e1
    pop hl                                        ; $5155: $e1
    pop hl                                        ; $5156: $e1
    add d                                         ; $5157: $82
    ld [bc], a                                    ; $5158: $02
    rrca                                          ; $5159: $0f
    rrca                                          ; $515a: $0f
    add d                                         ; $515b: $82
    ld [bc], a                                    ; $515c: $02
    ld [bc], a                                    ; $515d: $02
    ld [bc], a                                    ; $515e: $02
    add d                                         ; $515f: $82
    ld [bc], a                                    ; $5160: $02
    ld bc, $0201                                  ; $5161: $01 $01 $02
    ld [bc], a                                    ; $5164: $02
    ld [bc], a                                    ; $5165: $02
    ld [bc], a                                    ; $5166: $02
    rst $38                                       ; $5167: $ff
    nop                                           ; $5168: $00
    ld bc, $0302                                  ; $5169: $01 $02 $03
    inc b                                         ; $516c: $04
    dec b                                         ; $516d: $05
    ld b, $e1                                     ; $516e: $06 $e1
    pop hl                                        ; $5170: $e1
    rlca                                          ; $5171: $07
    ld [$e1e1], sp                                ; $5172: $08 $e1 $e1
    pop hl                                        ; $5175: $e1
    ld b, d                                       ; $5176: $42
    rrca                                          ; $5177: $0f
    rrca                                          ; $5178: $0f
    rrca                                          ; $5179: $0f
    rrca                                          ; $517a: $0f
    rrca                                          ; $517b: $0f
    rrca                                          ; $517c: $0f
    rrca                                          ; $517d: $0f
    rrca                                          ; $517e: $0f
    ld [bc], a                                    ; $517f: $02
    ld [bc], a                                    ; $5180: $02
    rrca                                          ; $5181: $0f
    rrca                                          ; $5182: $0f
    ld [bc], a                                    ; $5183: $02
    ld [bc], a                                    ; $5184: $02
    ld [bc], a                                    ; $5185: $02
    ld bc, $0a09                                  ; $5186: $01 $09 $0a
    dec bc                                        ; $5189: $0b
    inc c                                         ; $518a: $0c
    dec c                                         ; $518b: $0d
    ld c, $0f                                     ; $518c: $0e $0f
    db $10                                        ; $518e: $10
    ld de, $1312                                  ; $518f: $11 $12 $13
    inc d                                         ; $5192: $14
    ld b, e                                       ; $5193: $43
    pop hl                                        ; $5194: $e1
    dec d                                         ; $5195: $15
    ld d, $0f                                     ; $5196: $16 $0f
    rrca                                          ; $5198: $0f
    ld c, $0e                                     ; $5199: $0e $0e
    rrca                                          ; $519b: $0f
    rrca                                          ; $519c: $0f
    ld c, $0e                                     ; $519d: $0e $0e
    rrca                                          ; $519f: $0f
    rrca                                          ; $51a0: $0f
    ld c, $0e                                     ; $51a1: $0e $0e
    ld bc, $0e02                                  ; $51a3: $01 $02 $0e
    ld c, $e1                                     ; $51a6: $0e $e1
    pop hl                                        ; $51a8: $e1
    inc hl                                        ; $51a9: $23
    inc h                                         ; $51aa: $24
    pop hl                                        ; $51ab: $e1
    ld hl, sp-$07                                 ; $51ac: $f8 $f9
    ld a, [$06fb]                                 ; $51ae: $fa $fb $06
    inc c                                         ; $51b1: $0c
    ld a, [c]                                     ; $51b2: $f2
    inc b                                         ; $51b3: $04
    ld [bc], a                                    ; $51b4: $02
    inc bc                                        ; $51b5: $03
    ld b, $02                                     ; $51b6: $06 $02
    ld [bc], a                                    ; $51b8: $02
    ld bc, $0201                                  ; $51b9: $01 $01 $02
    ld bc, $0101                                  ; $51bc: $01 $01 $01
    ld bc, $0101                                  ; $51bf: $01 $01 $01
    add hl, bc                                    ; $51c2: $09
    ld bc, $0101                                  ; $51c3: $01 $01 $01
    ld bc, $f8f7                                  ; $51c6: $01 $f7 $f8
    ld sp, hl                                     ; $51c9: $f9
    pop hl                                        ; $51ca: $e1
    inc bc                                        ; $51cb: $03
    ld b, $f7                                     ; $51cc: $06 $f7
    ld hl, sp+$04                                 ; $51ce: $f8 $04
    ld a, [$07e1]                                 ; $51d0: $fa $e1 $07
    rst $30                                       ; $51d3: $f7
    pop hl                                        ; $51d4: $e1
    ld [$0109], sp                                ; $51d5: $08 $09 $01
    ld bc, $0201                                  ; $51d8: $01 $01 $02
    ld bc, $0101                                  ; $51db: $01 $01 $01
    ld bc, $0101                                  ; $51de: $01 $01 $01
    ld [bc], a                                    ; $51e1: $02
    add d                                         ; $51e2: $82
    ld bc, $8202                                  ; $51e3: $01 $02 $82
    add d                                         ; $51e6: $82
    pop hl                                        ; $51e7: $e1
    pop hl                                        ; $51e8: $e1
    pop hl                                        ; $51e9: $e1
    ld b, h                                       ; $51ea: $44
    pop hl                                        ; $51eb: $e1
    pop hl                                        ; $51ec: $e1

jr_08c_51ed:
    pop hl                                        ; $51ed: $e1
    pop hl                                        ; $51ee: $e1
    ld [hl-], a                                   ; $51ef: $32
    inc sp                                        ; $51f0: $33
    inc [hl]                                      ; $51f1: $34
    pop hl                                        ; $51f2: $e1
    dec [hl]                                      ; $51f3: $35
    ld [hl], $37                                  ; $51f4: $36 $37
    jr c, jr_08c_51fa                             ; $51f6: $38 $02

    ld [bc], a                                    ; $51f8: $02
    ld [bc], a                                    ; $51f9: $02

jr_08c_51fa:
    ld bc, $0202                                  ; $51fa: $01 $02 $02
    ld [bc], a                                    ; $51fd: $02
    ld [bc], a                                    ; $51fe: $02
    add d                                         ; $51ff: $82
    add d                                         ; $5200: $82
    add d                                         ; $5201: $82
    ld [bc], a                                    ; $5202: $02
    add d                                         ; $5203: $82
    add d                                         ; $5204: $82
    add d                                         ; $5205: $82
    add d                                         ; $5206: $82
    ld b, l                                       ; $5207: $45
    pop hl                                        ; $5208: $e1
    rla                                           ; $5209: $17
    jr jr_08c_51ed                                ; $520a: $18 $e1

    pop hl                                        ; $520c: $e1
    add hl, de                                    ; $520d: $19
    ld a, [de]                                    ; $520e: $1a
    pop hl                                        ; $520f: $e1
    pop hl                                        ; $5210: $e1
    pop hl                                        ; $5211: $e1
    pop hl                                        ; $5212: $e1
    pop hl                                        ; $5213: $e1
    pop hl                                        ; $5214: $e1
    pop hl                                        ; $5215: $e1
    pop hl                                        ; $5216: $e1
    ld bc, $0e02                                  ; $5217: $01 $02 $0e
    ld c, $02                                     ; $521a: $0e $02
    ld [bc], a                                    ; $521c: $02
    ld c, $0e                                     ; $521d: $0e $0e
    ld [bc], a                                    ; $521f: $02
    ld [bc], a                                    ; $5220: $02
    ld [bc], a                                    ; $5221: $02
    ld [bc], a                                    ; $5222: $02
    ld [bc], a                                    ; $5223: $02
    ld [bc], a                                    ; $5224: $02
    ld [bc], a                                    ; $5225: $02
    ld [bc], a                                    ; $5226: $02
    inc c                                         ; $5227: $0c
    ld a, [c]                                     ; $5228: $f2
    inc b                                         ; $5229: $04
    ld a, [$0603]                                 ; $522a: $fa $03 $06
    inc c                                         ; $522d: $0c
    ld a, [c]                                     ; $522e: $f2
    inc b                                         ; $522f: $04
    ld a, [$0603]                                 ; $5230: $fa $03 $06
    rst $30                                       ; $5233: $f7
    ld hl, sp-$07                                 ; $5234: $f8 $f9
    ld a, [$0901]                                 ; $5236: $fa $01 $09
    ld bc, $0101                                  ; $5239: $01 $01 $01
    ld bc, $0901                                  ; $523c: $01 $01 $09
    ld bc, $0101                                  ; $523f: $01 $01 $01
    ld bc, $0101                                  ; $5242: $01 $01 $01
    ld bc, $e101                                  ; $5245: $01 $01 $e1
    pop hl                                        ; $5248: $e1
    ld a, [bc]                                    ; $5249: $0a
    dec bc                                        ; $524a: $0b
    ld sp, hl                                     ; $524b: $f9
    pop hl                                        ; $524c: $e1
    dec c                                         ; $524d: $0d
    ld c, $0c                                     ; $524e: $0e $0c
    ld hl, sp-$0d                                 ; $5250: $f8 $f3
    db $f4                                        ; $5252: $f4
    ei                                            ; $5253: $fb
    or $e1                                        ; $5254: $f6 $e1
    pop hl                                        ; $5256: $e1
    ld [bc], a                                    ; $5257: $02
    ld [bc], a                                    ; $5258: $02
    add d                                         ; $5259: $82
    add d                                         ; $525a: $82
    ld bc, $8202                                  ; $525b: $01 $02 $82
    add d                                         ; $525e: $82
    ld bc, $8a01                                  ; $525f: $01 $01 $8a
    adc d                                         ; $5262: $8a
    ld bc, $0201                                  ; $5263: $01 $01 $02
    ld [bc], a                                    ; $5266: $02
    pop hl                                        ; $5267: $e1
    pop hl                                        ; $5268: $e1
    pop hl                                        ; $5269: $e1
    ld a, [$f6fb]                                 ; $526a: $fa $fb $f6
    rst $30                                       ; $526d: $f7
    ld hl, sp-$1f                                 ; $526e: $f8 $e1
    ld a, [$4342]                                 ; $5270: $fa $42 $43
    pop hl                                        ; $5273: $e1
    pop hl                                        ; $5274: $e1
    ld b, h                                       ; $5275: $44
    ld b, l                                       ; $5276: $45
    ld [bc], a                                    ; $5277: $02
    ld [bc], a                                    ; $5278: $02
    ld [bc], a                                    ; $5279: $02
    ld bc, $0101                                  ; $527a: $01 $01 $01
    ld bc, $0201                                  ; $527d: $01 $01 $02
    ld bc, $0101                                  ; $5280: $01 $01 $01
    ld [bc], a                                    ; $5283: $02
    ld [bc], a                                    ; $5284: $02
    ld bc, $4d01                                  ; $5285: $01 $01 $4d
    dec l                                         ; $5288: $2d
    pop hl                                        ; $5289: $e1
    inc hl                                        ; $528a: $23
    ld h, $1a                                     ; $528b: $26 $1a
    dec hl                                        ; $528d: $2b
    dec hl                                        ; $528e: $2b
    dec de                                        ; $528f: $1b
    inc e                                         ; $5290: $1c
    ld l, $27                                     ; $5291: $2e $27
    cpl                                           ; $5293: $2f
    jr nc, jr_08c_52c7                            ; $5294: $30 $31

    inc d                                         ; $5296: $14
    inc bc                                        ; $5297: $03
    inc bc                                        ; $5298: $03
    ld [bc], a                                    ; $5299: $02
    ld bc, $0303                                  ; $529a: $01 $03 $03
    inc bc                                        ; $529d: $03
    inc bc                                        ; $529e: $03
    inc bc                                        ; $529f: $03
    inc bc                                        ; $52a0: $03
    inc bc                                        ; $52a1: $03
    inc bc                                        ; $52a2: $03
    inc bc                                        ; $52a3: $03
    inc bc                                        ; $52a4: $03
    inc bc                                        ; $52a5: $03
    inc bc                                        ; $52a6: $03
    inc h                                         ; $52a7: $24
    pop hl                                        ; $52a8: $e1
    pop hl                                        ; $52a9: $e1
    pop hl                                        ; $52aa: $e1
    inc l                                         ; $52ab: $2c
    dec l                                         ; $52ac: $2d
    ld c, a                                       ; $52ad: $4f
    ld c, e                                       ; $52ae: $4b
    jr nz, jr_08c_52cb                            ; $52af: $20 $1a

    ld [hl+], a                                   ; $52b1: $22
    ld de, $1c1b                                  ; $52b2: $11 $1b $1c
    ld l, $27                                     ; $52b5: $2e $27
    ld bc, $0202                                  ; $52b7: $01 $02 $02
    ld [bc], a                                    ; $52ba: $02
    inc bc                                        ; $52bb: $03
    inc bc                                        ; $52bc: $03
    inc bc                                        ; $52bd: $03
    inc bc                                        ; $52be: $03
    inc bc                                        ; $52bf: $03
    inc bc                                        ; $52c0: $03
    inc bc                                        ; $52c1: $03
    inc bc                                        ; $52c2: $03
    inc bc                                        ; $52c3: $03
    inc bc                                        ; $52c4: $03
    inc bc                                        ; $52c5: $03
    inc bc                                        ; $52c6: $03

jr_08c_52c7:
    ei                                            ; $52c7: $fb
    db $fc                                        ; $52c8: $fc
    pop hl                                        ; $52c9: $e1
    inc hl                                        ; $52ca: $23

jr_08c_52cb:
    ld c, l                                       ; $52cb: $4d
    ld c, [hl]                                    ; $52cc: $4e
    dec l                                         ; $52cd: $2d
    inc l                                         ; $52ce: $2c
    rla                                           ; $52cf: $17
    ld h, $2e                                     ; $52d0: $26 $2e
    cpl                                           ; $52d2: $2f
    jr nz, jr_08c_52ef                            ; $52d3: $20 $1a

    ld sp, $0b14                                  ; $52d5: $31 $14 $0b
    dec bc                                        ; $52d8: $0b
    ld [bc], a                                    ; $52d9: $02
    ld bc, $0303                                  ; $52da: $01 $03 $03
    inc hl                                        ; $52dd: $23
    inc hl                                        ; $52de: $23
    inc bc                                        ; $52df: $03
    inc bc                                        ; $52e0: $03
    inc bc                                        ; $52e1: $03
    inc bc                                        ; $52e2: $03
    inc bc                                        ; $52e3: $03
    inc bc                                        ; $52e4: $03
    inc bc                                        ; $52e5: $03
    inc bc                                        ; $52e6: $03
    inc h                                         ; $52e7: $24
    ld c, l                                       ; $52e8: $4d
    dec l                                         ; $52e9: $2d
    inc l                                         ; $52ea: $2c
    dec hl                                        ; $52eb: $2b
    jr @+$30                                      ; $52ec: $18 $2e

    daa                                           ; $52ee: $27

jr_08c_52ef:
    jr nc, @+$1c                                  ; $52ef: $30 $1a

    ld sp, $1b14                                  ; $52f1: $31 $14 $1b
    inc e                                         ; $52f4: $1c
    ld c, h                                       ; $52f5: $4c
    ld d, $01                                     ; $52f6: $16 $01
    inc bc                                        ; $52f8: $03
    inc hl                                        ; $52f9: $23
    inc hl                                        ; $52fa: $23
    inc hl                                        ; $52fb: $23
    inc bc                                        ; $52fc: $03
    inc bc                                        ; $52fd: $03
    inc bc                                        ; $52fe: $03
    inc bc                                        ; $52ff: $03
    inc bc                                        ; $5300: $03
    inc bc                                        ; $5301: $03
    inc bc                                        ; $5302: $03
    inc bc                                        ; $5303: $03
    inc bc                                        ; $5304: $03
    inc bc                                        ; $5305: $03

Call_08c_5306:
    inc bc                                        ; $5306: $03
    dec de                                        ; $5307: $1b
    inc e                                         ; $5308: $1c
    dec e                                         ; $5309: $1d
    ld e, $1f                                     ; $530a: $1e $1f
    jr nz, jr_08c_532f                            ; $530c: $20 $21

    ld [hl+], a                                   ; $530e: $22
    inc hl                                        ; $530f: $23
    inc h                                         ; $5310: $24
    dec h                                         ; $5311: $25
    ld h, $27                                     ; $5312: $26 $27
    jr z, jr_08c_533f                             ; $5314: $28 $29

    ld a, [hl+]                                   ; $5316: $2a
    ld c, $0e                                     ; $5317: $0e $0e
    ld c, $0e                                     ; $5319: $0e $0e
    ld c, $0e                                     ; $531b: $0e $0e
    ld c, $0e                                     ; $531d: $0e $0e
    ld c, $0e                                     ; $531f: $0e $0e
    ld c, $0e                                     ; $5321: $0e $0e
    ld c, $0e                                     ; $5323: $0e $0e
    ld c, $0e                                     ; $5325: $0e $0e
    dec hl                                        ; $5327: $2b
    inc l                                         ; $5328: $2c
    dec l                                         ; $5329: $2d
    ld l, $2f                                     ; $532a: $2e $2f
    jr nc, jr_08c_535f                            ; $532c: $30 $31

    ld [hl-], a                                   ; $532e: $32

jr_08c_532f:
    inc sp                                        ; $532f: $33
    inc [hl]                                      ; $5330: $34
    dec [hl]                                      ; $5331: $35
    ld [hl], $37                                  ; $5332: $36 $37
    jr c, jr_08c_536f                             ; $5334: $38 $39

    ld a, [hl-]                                   ; $5336: $3a
    rrca                                          ; $5337: $0f
    rrca                                          ; $5338: $0f
    rrca                                          ; $5339: $0f
    rrca                                          ; $533a: $0f
    rrca                                          ; $533b: $0f
    rrca                                          ; $533c: $0f
    rrca                                          ; $533d: $0f
    rrca                                          ; $533e: $0f

jr_08c_533f:
    rrca                                          ; $533f: $0f
    rrca                                          ; $5340: $0f
    rrca                                          ; $5341: $0f
    rrca                                          ; $5342: $0f
    rrca                                          ; $5343: $0f
    rrca                                          ; $5344: $0f
    rrca                                          ; $5345: $0f
    rrca                                          ; $5346: $0f
    dec sp                                        ; $5347: $3b
    dec sp                                        ; $5348: $3b
    dec sp                                        ; $5349: $3b
    inc a                                         ; $534a: $3c
    dec a                                         ; $534b: $3d
    dec a                                         ; $534c: $3d
    dec a                                         ; $534d: $3d
    ld a, $3f                                     ; $534e: $3e $3f
    ccf                                           ; $5350: $3f
    ccf                                           ; $5351: $3f
    ld b, b                                       ; $5352: $40
    ld b, c                                       ; $5353: $41
    ld b, c                                       ; $5354: $41
    ld b, c                                       ; $5355: $41
    ld b, d                                       ; $5356: $42
    dec bc                                        ; $5357: $0b
    dec bc                                        ; $5358: $0b
    dec bc                                        ; $5359: $0b
    rrca                                          ; $535a: $0f
    dec bc                                        ; $535b: $0b
    dec bc                                        ; $535c: $0b
    dec bc                                        ; $535d: $0b
    rrca                                          ; $535e: $0f

jr_08c_535f:
    dec bc                                        ; $535f: $0b
    dec bc                                        ; $5360: $0b
    dec bc                                        ; $5361: $0b
    rrca                                          ; $5362: $0f
    dec bc                                        ; $5363: $0b
    dec bc                                        ; $5364: $0b
    dec bc                                        ; $5365: $0b
    rrca                                          ; $5366: $0f
    ld b, e                                       ; $5367: $43
    dec l                                         ; $5368: $2d
    inc l                                         ; $5369: $2c
    dec hl                                        ; $536a: $2b
    ld b, h                                       ; $536b: $44
    ld sp, $2f30                                  ; $536c: $31 $30 $2f

jr_08c_536f:
    ld b, l                                       ; $536f: $45
    dec [hl]                                      ; $5370: $35
    inc [hl]                                      ; $5371: $34
    inc sp                                        ; $5372: $33
    ld b, [hl]                                    ; $5373: $46
    add hl, sp                                    ; $5374: $39
    jr c, jr_08c_53ae                             ; $5375: $38 $37

    rrca                                          ; $5377: $0f
    cpl                                           ; $5378: $2f
    cpl                                           ; $5379: $2f
    cpl                                           ; $537a: $2f
    rrca                                          ; $537b: $0f
    cpl                                           ; $537c: $2f
    cpl                                           ; $537d: $2f
    cpl                                           ; $537e: $2f
    rrca                                          ; $537f: $0f
    cpl                                           ; $5380: $2f
    cpl                                           ; $5381: $2f
    cpl                                           ; $5382: $2f
    rrca                                          ; $5383: $0f
    cpl                                           ; $5384: $2f
    cpl                                           ; $5385: $2f
    cpl                                           ; $5386: $2f
    ld b, a                                       ; $5387: $47
    ld [hl], c                                    ; $5388: $71
    ld c, b                                       ; $5389: $48
    ld c, c                                       ; $538a: $49
    ld c, d                                       ; $538b: $4a
    ld c, e                                       ; $538c: $4b
    ld c, h                                       ; $538d: $4c
    ld c, l                                       ; $538e: $4d
    pop hl                                        ; $538f: $e1
    pop hl                                        ; $5390: $e1
    pop hl                                        ; $5391: $e1
    pop hl                                        ; $5392: $e1
    pop hl                                        ; $5393: $e1
    pop hl                                        ; $5394: $e1
    ld sp, hl                                     ; $5395: $f9
    ld a, [$060e]                                 ; $5396: $fa $0e $06
    ld c, $0e                                     ; $5399: $0e $0e
    ld c, $0e                                     ; $539b: $0e $0e
    ld c, $0e                                     ; $539d: $0e $0e
    ld [bc], a                                    ; $539f: $02
    ld [bc], a                                    ; $53a0: $02
    ld [bc], a                                    ; $53a1: $02
    ld [bc], a                                    ; $53a2: $02
    ld [bc], a                                    ; $53a3: $02
    ld [bc], a                                    ; $53a4: $02
    ld bc, $e101                                  ; $53a5: $01 $01 $e1
    pop hl                                        ; $53a8: $e1
    pop hl                                        ; $53a9: $e1
    db $10                                        ; $53aa: $10
    pop hl                                        ; $53ab: $e1
    pop hl                                        ; $53ac: $e1
    pop hl                                        ; $53ad: $e1

jr_08c_53ae:
    inc de                                        ; $53ae: $13
    pop hl                                        ; $53af: $e1
    pop hl                                        ; $53b0: $e1
    pop hl                                        ; $53b1: $e1
    dec d                                         ; $53b2: $15
    pop hl                                        ; $53b3: $e1
    pop hl                                        ; $53b4: $e1
    dec h                                         ; $53b5: $25
    ld de, $0202                                  ; $53b6: $11 $02 $02
    ld [bc], a                                    ; $53b9: $02
    ld b, e                                       ; $53ba: $43
    ld [bc], a                                    ; $53bb: $02
    ld [bc], a                                    ; $53bc: $02
    ld [bc], a                                    ; $53bd: $02
    ld h, e                                       ; $53be: $63
    ld [bc], a                                    ; $53bf: $02
    ld [bc], a                                    ; $53c0: $02
    ld [bc], a                                    ; $53c1: $02
    ld h, e                                       ; $53c2: $63
    ld [bc], a                                    ; $53c3: $02
    ld [bc], a                                    ; $53c4: $02
    ld b, e                                       ; $53c5: $43
    inc bc                                        ; $53c6: $03
    daa                                           ; $53c7: $27
    jr nz, jr_08c_53e4                            ; $53c8: $20 $1a

    dec d                                         ; $53ca: $15
    inc d                                         ; $53cb: $14
    ld [de], a                                    ; $53cc: $12
    add hl, de                                    ; $53cd: $19
    inc de                                        ; $53ce: $13
    ld d, $1d                                     ; $53cf: $16 $1d
    ld e, $10                                     ; $53d1: $1e $10
    rla                                           ; $53d3: $17
    jr jr_08c_53f5                                ; $53d4: $18 $1f

    pop hl                                        ; $53d6: $e1
    inc bc                                        ; $53d7: $03
    inc bc                                        ; $53d8: $03
    inc bc                                        ; $53d9: $03
    inc bc                                        ; $53da: $03
    inc bc                                        ; $53db: $03
    inc bc                                        ; $53dc: $03
    inc bc                                        ; $53dd: $03
    inc bc                                        ; $53de: $03
    inc bc                                        ; $53df: $03
    inc bc                                        ; $53e0: $03
    inc bc                                        ; $53e1: $03
    inc hl                                        ; $53e2: $23
    inc bc                                        ; $53e3: $03

jr_08c_53e4:
    inc bc                                        ; $53e4: $03
    inc hl                                        ; $53e5: $23
    ld [bc], a                                    ; $53e6: $02
    pop hl                                        ; $53e7: $e1
    pop hl                                        ; $53e8: $e1
    pop hl                                        ; $53e9: $e1
    pop hl                                        ; $53ea: $e1
    pop hl                                        ; $53eb: $e1
    pop hl                                        ; $53ec: $e1
    pop hl                                        ; $53ed: $e1
    pop hl                                        ; $53ee: $e1
    inc hl                                        ; $53ef: $23
    inc h                                         ; $53f0: $24
    pop hl                                        ; $53f1: $e1
    ld b, c                                       ; $53f2: $41
    pop hl                                        ; $53f3: $e1
    pop hl                                        ; $53f4: $e1

jr_08c_53f5:
    pop hl                                        ; $53f5: $e1
    pop hl                                        ; $53f6: $e1
    ld [bc], a                                    ; $53f7: $02
    ld [bc], a                                    ; $53f8: $02
    ld [bc], a                                    ; $53f9: $02
    ld [bc], a                                    ; $53fa: $02
    ld [bc], a                                    ; $53fb: $02
    ld [bc], a                                    ; $53fc: $02
    ld [bc], a                                    ; $53fd: $02
    ld [bc], a                                    ; $53fe: $02
    ld bc, $0201                                  ; $53ff: $01 $01 $02
    ld bc, $0202                                  ; $5402: $01 $02 $02
    ld [bc], a                                    ; $5405: $02
    ld [bc], a                                    ; $5406: $02
    ei                                            ; $5407: $fb
    or $f7                                        ; $5408: $f6 $f7
    inc hl                                        ; $540a: $23
    ld sp, hl                                     ; $540b: $f9
    ld a, [$e1e1]                                 ; $540c: $fa $e1 $e1
    pop hl                                        ; $540f: $e1
    ld b, c                                       ; $5410: $41
    pop hl                                        ; $5411: $e1
    add hl, hl                                    ; $5412: $29
    pop hl                                        ; $5413: $e1
    ld a, [hl+]                                   ; $5414: $2a
    jr z, jr_08c_5428                             ; $5415: $28 $11

    ld bc, $0101                                  ; $5417: $01 $01 $01
    ld bc, $0101                                  ; $541a: $01 $01 $01
    ld [bc], a                                    ; $541d: $02
    ld [bc], a                                    ; $541e: $02
    ld [bc], a                                    ; $541f: $02
    ld bc, $4302                                  ; $5420: $01 $02 $43
    ld [bc], a                                    ; $5423: $02
    inc bc                                        ; $5424: $03
    inc bc                                        ; $5425: $03
    inc bc                                        ; $5426: $03
    inc h                                         ; $5427: $24

jr_08c_5428:
    add hl, hl                                    ; $5428: $29
    ld l, $2f                                     ; $5429: $2e $2f
    dec h                                         ; $542b: $25
    inc e                                         ; $542c: $1c
    ld sp, $1d14                                  ; $542d: $31 $14 $1d
    ld e, $26                                     ; $5430: $1e $26
    ld d, $17                                     ; $5432: $16 $17
    jr jr_08c_5458                                ; $5434: $18 $22

    add hl, hl                                    ; $5436: $29
    ld bc, $0343                                  ; $5437: $01 $43 $03
    inc bc                                        ; $543a: $03
    ld b, e                                       ; $543b: $43
    inc bc                                        ; $543c: $03
    inc bc                                        ; $543d: $03
    inc bc                                        ; $543e: $03
    inc bc                                        ; $543f: $03
    inc bc                                        ; $5440: $03
    inc bc                                        ; $5441: $03
    inc bc                                        ; $5442: $03
    inc bc                                        ; $5443: $03
    inc bc                                        ; $5444: $03
    inc bc                                        ; $5445: $03
    inc hl                                        ; $5446: $23
    jr nc, jr_08c_5463                            ; $5447: $30 $1a

    ld hl, $1b41                                  ; $5449: $21 $41 $1b
    add hl, hl                                    ; $544c: $29
    pop hl                                        ; $544d: $e1
    pop hl                                        ; $544e: $e1
    dec h                                         ; $544f: $25
    ld b, c                                       ; $5450: $41
    pop hl                                        ; $5451: $e1
    ld c, b                                       ; $5452: $48
    inc hl                                        ; $5453: $23
    inc h                                         ; $5454: $24
    ld d, h                                       ; $5455: $54
    ld b, [hl]                                    ; $5456: $46
    inc bc                                        ; $5457: $03

jr_08c_5458:
    inc bc                                        ; $5458: $03
    ld b, e                                       ; $5459: $43
    ld bc, $2303                                  ; $545a: $01 $03 $23
    ld [bc], a                                    ; $545d: $02
    ld [bc], a                                    ; $545e: $02
    inc hl                                        ; $545f: $23
    ld bc, $0102                                  ; $5460: $01 $02 $01

jr_08c_5463:
    ld bc, $0101                                  ; $5463: $01 $01 $01
    ld bc, $e1e1                                  ; $5466: $01 $e1 $e1
    ld c, c                                       ; $5469: $49
    ld c, d                                       ; $546a: $4a
    pop hl                                        ; $546b: $e1
    ld b, [hl]                                    ; $546c: $46
    ld d, d                                       ; $546d: $52
    ld d, e                                       ; $546e: $53
    ld c, c                                       ; $546f: $49
    ld d, [hl]                                    ; $5470: $56
    ld d, b                                       ; $5471: $50
    ld b, [hl]                                    ; $5472: $46
    ld d, d                                       ; $5473: $52
    ld d, e                                       ; $5474: $53
    ld d, l                                       ; $5475: $55
    ld c, d                                       ; $5476: $4a
    ld [bc], a                                    ; $5477: $02
    ld [bc], a                                    ; $5478: $02
    ld bc, $0201                                  ; $5479: $01 $01 $02
    ld bc, $0101                                  ; $547c: $01 $01 $01
    ld bc, $0101                                  ; $547f: $01 $01 $01
    ld bc, $0101                                  ; $5482: $01 $01 $01
    ld bc, $2b01                                  ; $5485: $01 $01 $2b
    jr jr_08c_549c                                ; $5488: $18 $12

    add hl, de                                    ; $548a: $19
    jr nz, @+$1c                                  ; $548b: $20 $1a

    ld sp, $2614                                  ; $548d: $31 $14 $26
    inc e                                         ; $5490: $1c
    ld c, h                                       ; $5491: $4c
    jr z, @+$2d                                   ; $5492: $28 $2b

    inc l                                         ; $5494: $2c
    dec l                                         ; $5495: $2d
    inc hl                                        ; $5496: $23
    inc hl                                        ; $5497: $23
    inc bc                                        ; $5498: $03
    inc bc                                        ; $5499: $03
    inc bc                                        ; $549a: $03
    inc bc                                        ; $549b: $03

jr_08c_549c:
    inc bc                                        ; $549c: $03
    inc bc                                        ; $549d: $03
    inc bc                                        ; $549e: $03
    inc bc                                        ; $549f: $03
    inc bc                                        ; $54a0: $03
    inc bc                                        ; $54a1: $03
    ld h, e                                       ; $54a2: $63
    ld b, e                                       ; $54a3: $43
    ld b, e                                       ; $54a4: $43
    ld b, e                                       ; $54a5: $43
    ld bc, $1a20                                  ; $54a6: $01 $20 $1a
    dec h                                         ; $54a9: $25
    ld b, [hl]                                    ; $54aa: $46
    dec de                                        ; $54ab: $1b
    add hl, hl                                    ; $54ac: $29
    ld c, c                                       ; $54ad: $49
    ld d, [hl]                                    ; $54ae: $56
    ld a, [hl+]                                   ; $54af: $2a
    pop hl                                        ; $54b0: $e1
    pop hl                                        ; $54b1: $e1
    ld c, b                                       ; $54b2: $48
    inc h                                         ; $54b3: $24
    pop hl                                        ; $54b4: $e1
    pop hl                                        ; $54b5: $e1
    pop hl                                        ; $54b6: $e1
    inc bc                                        ; $54b7: $03
    inc bc                                        ; $54b8: $03
    inc hl                                        ; $54b9: $23
    ld bc, $2303                                  ; $54ba: $01 $03 $23
    ld bc, $6301                                  ; $54bd: $01 $01 $63
    ld [bc], a                                    ; $54c0: $02
    ld [bc], a                                    ; $54c1: $02
    ld bc, $0201                                  ; $54c2: $01 $01 $02
    ld [bc], a                                    ; $54c5: $02
    ld [bc], a                                    ; $54c6: $02
    ld b, a                                       ; $54c7: $47
    ld c, b                                       ; $54c8: $48
    ld d, l                                       ; $54c9: $55
    ld d, [hl]                                    ; $54ca: $56
    ld d, b                                       ; $54cb: $50
    ld d, c                                       ; $54cc: $51
    ld d, d                                       ; $54cd: $52
    ld d, e                                       ; $54ce: $53
    ld d, l                                       ; $54cf: $55
    ld d, [hl]                                    ; $54d0: $56
    ld d, b                                       ; $54d1: $50
    ld d, c                                       ; $54d2: $51
    ld b, a                                       ; $54d3: $47
    ld c, b                                       ; $54d4: $48
    ld d, l                                       ; $54d5: $55
    ld d, [hl]                                    ; $54d6: $56
    ld bc, $0101                                  ; $54d7: $01 $01 $01
    ld bc, $0101                                  ; $54da: $01 $01 $01
    ld bc, $0101                                  ; $54dd: $01 $01 $01
    ld bc, $0101                                  ; $54e0: $01 $01 $01
    ld bc, $0101                                  ; $54e3: $01 $01 $01
    ld bc, $5150                                  ; $54e6: $01 $50 $51
    ld b, a                                       ; $54e9: $47
    pop hl                                        ; $54ea: $e1
    ld d, l                                       ; $54eb: $55
    ld c, d                                       ; $54ec: $4a
    pop hl                                        ; $54ed: $e1
    pop hl                                        ; $54ee: $e1
    ld b, a                                       ; $54ef: $47
    ld c, b                                       ; $54f0: $48
    pop hl                                        ; $54f1: $e1
    pop hl                                        ; $54f2: $e1
    ld d, b                                       ; $54f3: $50
    ld d, c                                       ; $54f4: $51
    ld b, a                                       ; $54f5: $47
    ld c, b                                       ; $54f6: $48
    ld bc, $0101                                  ; $54f7: $01 $01 $01
    ld [bc], a                                    ; $54fa: $02
    ld bc, $0201                                  ; $54fb: $01 $01 $02
    ld [bc], a                                    ; $54fe: $02
    ld bc, $0201                                  ; $54ff: $01 $01 $02
    ld [bc], a                                    ; $5502: $02
    ld bc, $0101                                  ; $5503: $01 $01 $01
    ld bc, $1d1e                                  ; $5506: $01 $1e $1d
    inc e                                         ; $5509: $1c
    dec de                                        ; $550a: $1b
    ld [hl+], a                                   ; $550b: $22
    ld hl, $1f20                                  ; $550c: $21 $20 $1f
    ld h, $4e                                     ; $550f: $26 $4e
    xor [hl]                                      ; $5511: $ae
    ld [$ae2a], a                                 ; $5512: $ea $2a $ae
    ld c, a                                       ; $5515: $4f
    ld d, b                                       ; $5516: $50
    dec l                                         ; $5517: $2d
    dec l                                         ; $5518: $2d
    dec l                                         ; $5519: $2d
    dec l                                         ; $551a: $2d
    dec l                                         ; $551b: $2d
    dec l                                         ; $551c: $2d
    dec l                                         ; $551d: $2d
    dec l                                         ; $551e: $2d
    dec l                                         ; $551f: $2d
    dec c                                         ; $5520: $0d
    dec c                                         ; $5521: $0d
    dec c                                         ; $5522: $0d
    dec l                                         ; $5523: $2d
    dec c                                         ; $5524: $0d
    dec c                                         ; $5525: $0d
    dec c                                         ; $5526: $0d
    xor [hl]                                      ; $5527: $ae
    xor [hl]                                      ; $5528: $ae
    ld a, [bc]                                    ; $5529: $0a
    add hl, bc                                    ; $552a: $09
    ld d, c                                       ; $552b: $51
    rrca                                          ; $552c: $0f
    ld c, $0d                                     ; $552d: $0e $0d
    inc d                                         ; $552f: $14
    inc de                                        ; $5530: $13
    ld [de], a                                    ; $5531: $12
    ld de, $1516                                  ; $5532: $11 $16 $15
    pop hl                                        ; $5535: $e1
    pop hl                                        ; $5536: $e1
    dec c                                         ; $5537: $0d
    dec c                                         ; $5538: $0d
    cpl                                           ; $5539: $2f
    cpl                                           ; $553a: $2f
    dec c                                         ; $553b: $0d
    dec l                                         ; $553c: $2d
    cpl                                           ; $553d: $2f
    cpl                                           ; $553e: $2f
    dec l                                         ; $553f: $2d
    dec l                                         ; $5540: $2d
    cpl                                           ; $5541: $2f
    cpl                                           ; $5542: $2f
    dec l                                         ; $5543: $2d
    dec l                                         ; $5544: $2d
    ld [bc], a                                    ; $5545: $02
    ld [bc], a                                    ; $5546: $02
    ld [bc], a                                    ; $5547: $02
    ld d, d                                       ; $5548: $52
    db $d3                                        ; $5549: $d3
    call nc, Call_08c_5306                        ; $554a: $d4 $06 $53
    ret nc                                        ; $554d: $d0

    pop de                                        ; $554e: $d1
    ld [$d354], sp                                ; $554f: $08 $54 $d3
    call nc, $cfe1                                ; $5552: $d4 $e1 $cf
    ret nc                                        ; $5555: $d0

    pop de                                        ; $5556: $d1
    cpl                                           ; $5557: $2f
    rrca                                          ; $5558: $0f
    rrca                                          ; $5559: $0f
    rrca                                          ; $555a: $0f
    cpl                                           ; $555b: $2f
    rrca                                          ; $555c: $0f
    rrca                                          ; $555d: $0f
    rrca                                          ; $555e: $0f
    cpl                                           ; $555f: $2f
    rrca                                          ; $5560: $0f
    rrca                                          ; $5561: $0f
    rrca                                          ; $5562: $0f
    ld [bc], a                                    ; $5563: $02
    rrca                                          ; $5564: $0f
    rrca                                          ; $5565: $0f
    rrca                                          ; $5566: $0f
    ld c, c                                       ; $5567: $49
    ld c, b                                       ; $5568: $48
    ld [hl], c                                    ; $5569: $71
    ld b, a                                       ; $556a: $47
    ld c, l                                       ; $556b: $4d
    ld c, h                                       ; $556c: $4c
    ld c, e                                       ; $556d: $4b
    ld c, d                                       ; $556e: $4a
    pop hl                                        ; $556f: $e1
    pop hl                                        ; $5570: $e1
    pop hl                                        ; $5571: $e1
    pop hl                                        ; $5572: $e1
    ld b, a                                       ; $5573: $47
    ld c, b                                       ; $5574: $48
    ld c, c                                       ; $5575: $49
    ld c, d                                       ; $5576: $4a
    dec l                                         ; $5577: $2d
    dec l                                         ; $5578: $2d
    dec h                                         ; $5579: $25
    dec l                                         ; $557a: $2d
    dec l                                         ; $557b: $2d
    dec l                                         ; $557c: $2d
    dec l                                         ; $557d: $2d
    dec l                                         ; $557e: $2d
    ld [bc], a                                    ; $557f: $02
    ld [bc], a                                    ; $5580: $02
    ld [bc], a                                    ; $5581: $02
    ld [bc], a                                    ; $5582: $02
    ld bc, $0101                                  ; $5583: $01 $01 $01
    ld bc, $1718                                  ; $5586: $01 $18 $17
    pop hl                                        ; $5589: $e1
    pop hl                                        ; $558a: $e1
    ld a, [de]                                    ; $558b: $1a
    add hl, de                                    ; $558c: $19
    pop hl                                        ; $558d: $e1
    pop hl                                        ; $558e: $e1
    pop hl                                        ; $558f: $e1
    pop hl                                        ; $5590: $e1
    pop hl                                        ; $5591: $e1
    ld b, c                                       ; $5592: $41
    ld b, d                                       ; $5593: $42
    ld b, e                                       ; $5594: $43
    pop hl                                        ; $5595: $e1
    pop hl                                        ; $5596: $e1
    dec l                                         ; $5597: $2d
    dec l                                         ; $5598: $2d
    ld [bc], a                                    ; $5599: $02
    ld [bc], a                                    ; $559a: $02
    dec l                                         ; $559b: $2d
    dec l                                         ; $559c: $2d
    ld [bc], a                                    ; $559d: $02
    ld [bc], a                                    ; $559e: $02
    ld [bc], a                                    ; $559f: $02
    ld [bc], a                                    ; $55a0: $02
    ld [bc], a                                    ; $55a1: $02
    ld bc, $0101                                  ; $55a2: $01 $01 $01
    ld [bc], a                                    ; $55a5: $02
    ld [bc], a                                    ; $55a6: $02
    pop hl                                        ; $55a7: $e1
    jp nc, $d4d3                                  ; $55a8: $d2 $d3 $d4

    pop hl                                        ; $55ab: $e1
    rst $08                                       ; $55ac: $cf
    ret nc                                        ; $55ad: $d0

    pop de                                        ; $55ae: $d1
    pop hl                                        ; $55af: $e1
    jp nc, $d4d3                                  ; $55b0: $d2 $d3 $d4

    pop hl                                        ; $55b3: $e1
    rst $08                                       ; $55b4: $cf
    ret nc                                        ; $55b5: $d0

    pop de                                        ; $55b6: $d1
    ld [bc], a                                    ; $55b7: $02
    rrca                                          ; $55b8: $0f
    rrca                                          ; $55b9: $0f
    rrca                                          ; $55ba: $0f
    ld [bc], a                                    ; $55bb: $02
    rrca                                          ; $55bc: $0f
    rrca                                          ; $55bd: $0f
    rrca                                          ; $55be: $0f
    ld [bc], a                                    ; $55bf: $02
    rrca                                          ; $55c0: $0f
    rrca                                          ; $55c1: $0f
    rrca                                          ; $55c2: $0f
    ld [bc], a                                    ; $55c3: $02
    rrca                                          ; $55c4: $0f
    rrca                                          ; $55c5: $0f
    rrca                                          ; $55c6: $0f
    push de                                       ; $55c7: $d5
    push hl                                       ; $55c8: $e5
    and $e7                                       ; $55c9: $e6 $e7
    push de                                       ; $55cb: $d5
    sub $d7                                       ; $55cc: $d6 $d7
    ret c                                         ; $55ce: $d8

    push de                                       ; $55cf: $d5
    ld [c], a                                     ; $55d0: $e2
    db $e3                                        ; $55d1: $e3
    db $e4                                        ; $55d2: $e4
    push de                                       ; $55d3: $d5
    push hl                                       ; $55d4: $e5
    and $e7                                       ; $55d5: $e6 $e7
    dec bc                                        ; $55d7: $0b
    dec bc                                        ; $55d8: $0b
    dec bc                                        ; $55d9: $0b
    dec bc                                        ; $55da: $0b
    dec bc                                        ; $55db: $0b
    dec bc                                        ; $55dc: $0b
    dec bc                                        ; $55dd: $0b
    dec bc                                        ; $55de: $0b
    dec bc                                        ; $55df: $0b
    dec bc                                        ; $55e0: $0b
    dec bc                                        ; $55e1: $0b
    dec bc                                        ; $55e2: $0b
    dec bc                                        ; $55e3: $0b
    dec bc                                        ; $55e4: $0b
    dec bc                                        ; $55e5: $0b
    dec bc                                        ; $55e6: $0b
    ld d, b                                       ; $55e7: $50
    ld b, [hl]                                    ; $55e8: $46
    ld b, a                                       ; $55e9: $47
    pop hl                                        ; $55ea: $e1
    ld c, c                                       ; $55eb: $49
    ld c, d                                       ; $55ec: $4a
    pop hl                                        ; $55ed: $e1
    pop hl                                        ; $55ee: $e1
    ld b, a                                       ; $55ef: $47
    pop hl                                        ; $55f0: $e1
    pop hl                                        ; $55f1: $e1
    ld hl, sp-$1f                                 ; $55f2: $f8 $e1
    ld a, [$f6fb]                                 ; $55f4: $fa $fb $f6
    ld bc, $0101                                  ; $55f7: $01 $01 $01
    ld [bc], a                                    ; $55fa: $02
    ld bc, $0201                                  ; $55fb: $01 $01 $02
    ld [bc], a                                    ; $55fe: $02
    ld bc, $0202                                  ; $55ff: $01 $02 $02
    ld bc, $0102                                  ; $5602: $01 $02 $01
    ld bc, $4401                                  ; $5605: $01 $01 $44
    ld b, l                                       ; $5608: $45
    ld sp, hl                                     ; $5609: $f9
    pop hl                                        ; $560a: $e1
    pop hl                                        ; $560b: $e1
    or $55                                        ; $560c: $f6 $55
    ld d, [hl]                                    ; $560e: $56
    ld sp, hl                                     ; $560f: $f9
    ld a, [$5857]                                 ; $5610: $fa $57 $58
    pop hl                                        ; $5613: $e1
    pop hl                                        ; $5614: $e1
    ld e, c                                       ; $5615: $59
    ld e, d                                       ; $5616: $5a
    ld bc, $0101                                  ; $5617: $01 $01 $01
    ld [bc], a                                    ; $561a: $02
    ld [bc], a                                    ; $561b: $02
    ld bc, $0909                                  ; $561c: $01 $09 $09
    ld bc, $0901                                  ; $561f: $01 $01 $09
    add hl, bc                                    ; $5622: $09
    ld [bc], a                                    ; $5623: $02
    ld [bc], a                                    ; $5624: $02
    add hl, bc                                    ; $5625: $09
    add hl, bc                                    ; $5626: $09
    push de                                       ; $5627: $d5
    sub $d7                                       ; $5628: $d6 $d7
    ret c                                         ; $562a: $d8

    push de                                       ; $562b: $d5
    ld [c], a                                     ; $562c: $e2
    db $e3                                        ; $562d: $e3
    db $e4                                        ; $562e: $e4
    push de                                       ; $562f: $d5
    push hl                                       ; $5630: $e5
    and $e7                                       ; $5631: $e6 $e7
    push de                                       ; $5633: $d5
    sub $d7                                       ; $5634: $d6 $d7
    ret c                                         ; $5636: $d8

    dec bc                                        ; $5637: $0b
    dec bc                                        ; $5638: $0b
    dec bc                                        ; $5639: $0b
    dec bc                                        ; $563a: $0b
    dec bc                                        ; $563b: $0b
    dec bc                                        ; $563c: $0b
    dec bc                                        ; $563d: $0b
    dec bc                                        ; $563e: $0b
    dec bc                                        ; $563f: $0b
    dec bc                                        ; $5640: $0b
    dec bc                                        ; $5641: $0b
    dec bc                                        ; $5642: $0b
    dec bc                                        ; $5643: $0b
    dec bc                                        ; $5644: $0b
    dec bc                                        ; $5645: $0b
    dec bc                                        ; $5646: $0b
    pop hl                                        ; $5647: $e1
    pop hl                                        ; $5648: $e1
    pop hl                                        ; $5649: $e1
    pop hl                                        ; $564a: $e1
    pop hl                                        ; $564b: $e1
    pop hl                                        ; $564c: $e1
    rlca                                          ; $564d: $07
    ld [hl-], a                                   ; $564e: $32
    pop hl                                        ; $564f: $e1
    ld [$3509], sp                                ; $5650: $08 $09 $35
    pop hl                                        ; $5653: $e1

jr_08c_5654:
    ld a, [bc]                                    ; $5654: $0a
    dec bc                                        ; $5655: $0b
    add hl, sp                                    ; $5656: $39
    ld [bc], a                                    ; $5657: $02
    ld [bc], a                                    ; $5658: $02
    ld [bc], a                                    ; $5659: $02
    ld [bc], a                                    ; $565a: $02
    ld [bc], a                                    ; $565b: $02
    ld [bc], a                                    ; $565c: $02
    add d                                         ; $565d: $82
    add d                                         ; $565e: $82
    ld [bc], a                                    ; $565f: $02
    add d                                         ; $5660: $82
    add d                                         ; $5661: $82
    add d                                         ; $5662: $82
    ld [bc], a                                    ; $5663: $02
    add d                                         ; $5664: $82
    add d                                         ; $5665: $82
    add d                                         ; $5666: $82
    pop hl                                        ; $5667: $e1
    pop hl                                        ; $5668: $e1
    pop hl                                        ; $5669: $e1
    pop hl                                        ; $566a: $e1
    inc sp                                        ; $566b: $33
    inc [hl]                                      ; $566c: $34
    pop hl                                        ; $566d: $e1
    pop hl                                        ; $566e: $e1
    ld [hl], $37                                  ; $566f: $36 $37
    jr c, jr_08c_5654                             ; $5671: $38 $e1

    ld a, [hl-]                                   ; $5673: $3a
    dec sp                                        ; $5674: $3b
    inc a                                         ; $5675: $3c
    pop hl                                        ; $5676: $e1
    ld [bc], a                                    ; $5677: $02
    ld [bc], a                                    ; $5678: $02
    ld [bc], a                                    ; $5679: $02
    ld [bc], a                                    ; $567a: $02
    add d                                         ; $567b: $82
    add d                                         ; $567c: $82
    ld [bc], a                                    ; $567d: $02
    ld [bc], a                                    ; $567e: $02
    add d                                         ; $567f: $82
    add d                                         ; $5680: $82
    add d                                         ; $5681: $82
    ld [bc], a                                    ; $5682: $02
    add d                                         ; $5683: $82
    add d                                         ; $5684: $82
    add d                                         ; $5685: $82
    ld [bc], a                                    ; $5686: $02
    rst $28                                       ; $5687: $ef
    db $db                                        ; $5688: $db
    ldh a, [$dd]                                  ; $5689: $f0 $dd
    pop af                                        ; $568b: $f1
    rst $18                                       ; $568c: $df
    ld a, [c]                                     ; $568d: $f2
    and $e1                                       ; $568e: $e6 $e1
    pop de                                        ; $5690: $d1
    jp nc, $e1d3                                  ; $5691: $d2 $d3 $e1

    push de                                       ; $5694: $d5
    sub $d7                                       ; $5695: $d6 $d7
    add d                                         ; $5697: $82
    add d                                         ; $5698: $82
    add d                                         ; $5699: $82
    add d                                         ; $569a: $82
    add d                                         ; $569b: $82
    add d                                         ; $569c: $82
    add d                                         ; $569d: $82
    add d                                         ; $569e: $82
    ld [bc], a                                    ; $569f: $02
    inc bc                                        ; $56a0: $03
    add d                                         ; $56a1: $82
    add d                                         ; $56a2: $82
    ld [bc], a                                    ; $56a3: $02
    add d                                         ; $56a4: $82
    add d                                         ; $56a5: $82
    add d                                         ; $56a6: $82
    nop                                           ; $56a7: $00
    pop hl                                        ; $56a8: $e1
    pop hl                                        ; $56a9: $e1
    pop hl                                        ; $56aa: $e1
    rst $20                                       ; $56ab: $e7
    pop hl                                        ; $56ac: $e1
    pop hl                                        ; $56ad: $e1
    pop hl                                        ; $56ae: $e1
    call nc, $e1e1                                ; $56af: $d4 $e1 $e1
    pop hl                                        ; $56b2: $e1
    ret c                                         ; $56b3: $d8

    ld [c], a                                     ; $56b4: $e2
    ld b, c                                       ; $56b5: $41
    ld b, [hl]                                    ; $56b6: $46
    add d                                         ; $56b7: $82
    ld [bc], a                                    ; $56b8: $02
    ld [bc], a                                    ; $56b9: $02
    ld [bc], a                                    ; $56ba: $02
    add d                                         ; $56bb: $82
    ld [bc], a                                    ; $56bc: $02
    ld [bc], a                                    ; $56bd: $02
    ld [bc], a                                    ; $56be: $02
    add d                                         ; $56bf: $82
    ld [bc], a                                    ; $56c0: $02
    ld [bc], a                                    ; $56c1: $02
    ld [bc], a                                    ; $56c2: $02
    add d                                         ; $56c3: $82
    add d                                         ; $56c4: $82
    ld bc, $fb01                                  ; $56c5: $01 $01 $fb
    or $f7                                        ; $56c8: $f6 $f7
    ld hl, sp+$23                                 ; $56ca: $f8 $23
    inc h                                         ; $56cc: $24
    pop hl                                        ; $56cd: $e1
    ld b, c                                       ; $56ce: $41
    pop hl                                        ; $56cf: $e1
    ld c, d                                       ; $56d0: $4a
    ld d, h                                       ; $56d1: $54
    ld b, [hl]                                    ; $56d2: $46
    ld b, a                                       ; $56d3: $47
    ld c, b                                       ; $56d4: $48
    ld c, c                                       ; $56d5: $49
    ld d, [hl]                                    ; $56d6: $56
    ld bc, $0101                                  ; $56d7: $01 $01 $01
    ld bc, $0101                                  ; $56da: $01 $01 $01
    ld [bc], a                                    ; $56dd: $02
    ld bc, $0102                                  ; $56de: $01 $02 $01
    ld bc, $0101                                  ; $56e1: $01 $01 $01
    ld bc, $0101                                  ; $56e4: $01 $01 $01
    pop hl                                        ; $56e7: $e1
    ld b, h                                       ; $56e8: $44
    ld b, l                                       ; $56e9: $45
    pop hl                                        ; $56ea: $e1
    pop hl                                        ; $56eb: $e1
    ld c, d                                       ; $56ec: $4a
    ld d, h                                       ; $56ed: $54
    ld b, [hl]                                    ; $56ee: $46
    ld b, a                                       ; $56ef: $47
    ld d, e                                       ; $56f0: $53
    ld d, l                                       ; $56f1: $55
    ld d, [hl]                                    ; $56f2: $56
    ld d, b                                       ; $56f3: $50
    ld d, c                                       ; $56f4: $51
    ld d, d                                       ; $56f5: $52
    ld d, e                                       ; $56f6: $53
    ld [bc], a                                    ; $56f7: $02
    ld bc, $0201                                  ; $56f8: $01 $01 $02
    ld [bc], a                                    ; $56fb: $02
    ld bc, $0101                                  ; $56fc: $01 $01 $01
    ld bc, $0101                                  ; $56ff: $01 $01 $01
    ld bc, $0101                                  ; $5702: $01 $01 $01
    ld bc, $e101                                  ; $5705: $01 $01 $e1
    reti                                          ; $5708: $d9


    jp c, $e3db                                   ; $5709: $da $db $e3

    db $dd                                        ; $570c: $dd
    sbc $df                                       ; $570d: $de $df
    push hl                                       ; $570f: $e5
    and $e7                                       ; $5710: $e6 $e7
    db $eb                                        ; $5712: $eb
    jp nc, $d4d3                                  ; $5713: $d2 $d3 $d4

    pop hl                                        ; $5716: $e1
    ld [bc], a                                    ; $5717: $02
    add d                                         ; $5718: $82
    add d                                         ; $5719: $82
    add d                                         ; $571a: $82
    add d                                         ; $571b: $82
    add d                                         ; $571c: $82
    add d                                         ; $571d: $82
    add d                                         ; $571e: $82
    add d                                         ; $571f: $82
    add d                                         ; $5720: $82
    add d                                         ; $5721: $82
    inc bc                                        ; $5722: $03
    add d                                         ; $5723: $82
    add d                                         ; $5724: $82
    add d                                         ; $5725: $82
    ld [bc], a                                    ; $5726: $02
    call c, $e1e4                                 ; $5727: $dc $e4 $e1
    pop hl                                        ; $572a: $e1
    ldh [$e8], a                                  ; $572b: $e0 $e8
    pop hl                                        ; $572d: $e1
    pop hl                                        ; $572e: $e1
    pop hl                                        ; $572f: $e1
    pop hl                                        ; $5730: $e1
    pop hl                                        ; $5731: $e1
    pop hl                                        ; $5732: $e1
    pop hl                                        ; $5733: $e1
    di                                            ; $5734: $f3
    pop hl                                        ; $5735: $e1
    pop hl                                        ; $5736: $e1
    add d                                         ; $5737: $82
    add d                                         ; $5738: $82
    ld [bc], a                                    ; $5739: $02
    ld [bc], a                                    ; $573a: $02
    add d                                         ; $573b: $82
    add d                                         ; $573c: $82
    ld [bc], a                                    ; $573d: $02
    ld [bc], a                                    ; $573e: $02
    ld [bc], a                                    ; $573f: $02
    ld [bc], a                                    ; $5740: $02
    ld [bc], a                                    ; $5741: $02
    ld [bc], a                                    ; $5742: $02
    ld [bc], a                                    ; $5743: $02
    add d                                         ; $5744: $82
    ld [bc], a                                    ; $5745: $02
    ld [bc], a                                    ; $5746: $02
    pop hl                                        ; $5747: $e1
    ld b, [hl]                                    ; $5748: $46
    ld b, a                                       ; $5749: $47
    ld c, b                                       ; $574a: $48
    pop hl                                        ; $574b: $e1
    pop hl                                        ; $574c: $e1
    ld b, c                                       ; $574d: $41
    pop hl                                        ; $574e: $e1
    pop hl                                        ; $574f: $e1
    pop hl                                        ; $5750: $e1
    pop hl                                        ; $5751: $e1
    ld b, d                                       ; $5752: $42
    pop hl                                        ; $5753: $e1
    pop hl                                        ; $5754: $e1
    pop hl                                        ; $5755: $e1
    ld b, h                                       ; $5756: $44
    ld [bc], a                                    ; $5757: $02
    ld bc, $0101                                  ; $5758: $01 $01 $01
    ld [bc], a                                    ; $575b: $02
    ld [bc], a                                    ; $575c: $02
    ld bc, $0202                                  ; $575d: $01 $02 $02
    ld [bc], a                                    ; $5760: $02
    ld [bc], a                                    ; $5761: $02
    ld bc, $0202                                  ; $5762: $01 $02 $02
    ld [bc], a                                    ; $5765: $02
    ld bc, $5649                                  ; $5766: $01 $49 $56
    ld d, b                                       ; $5769: $50
    ld d, c                                       ; $576a: $51
    ld b, a                                       ; $576b: $47
    ld c, b                                       ; $576c: $48
    ld d, l                                       ; $576d: $55
    ld d, [hl]                                    ; $576e: $56
    ld b, e                                       ; $576f: $43
    ld b, [hl]                                    ; $5770: $46
    ld b, a                                       ; $5771: $47
    ld d, e                                       ; $5772: $53
    ld b, l                                       ; $5773: $45
    ld c, d                                       ; $5774: $4a
    ld d, b                                       ; $5775: $50
    ld d, c                                       ; $5776: $51
    ld bc, $0101                                  ; $5777: $01 $01 $01
    ld bc, $0101                                  ; $577a: $01 $01 $01
    ld bc, $0101                                  ; $577d: $01 $01 $01
    ld bc, $0101                                  ; $5780: $01 $01 $01
    ld bc, $0101                                  ; $5783: $01 $01 $01
    ld bc, $d7d6                                  ; $5786: $01 $d6 $d7
    ret c                                         ; $5789: $d8

    ld [c], a                                     ; $578a: $e2
    rst $28                                       ; $578b: $ef
    db $db                                        ; $578c: $db
    call c, $f1e4                                 ; $578d: $dc $e4 $f1
    rst $18                                       ; $5790: $df
    ldh [$e8], a                                  ; $5791: $e0 $e8
    pop hl                                        ; $5793: $e1
    db $eb                                        ; $5794: $eb
    pop hl                                        ; $5795: $e1
    rrca                                          ; $5796: $0f
    add d                                         ; $5797: $82
    add d                                         ; $5798: $82
    add d                                         ; $5799: $82
    add d                                         ; $579a: $82
    add d                                         ; $579b: $82
    add d                                         ; $579c: $82
    add d                                         ; $579d: $82
    add d                                         ; $579e: $82
    add d                                         ; $579f: $82
    add d                                         ; $57a0: $82
    add d                                         ; $57a1: $82
    add d                                         ; $57a2: $82
    ld [bc], a                                    ; $57a3: $02
    inc bc                                        ; $57a4: $03
    ld [bc], a                                    ; $57a5: $02
    add d                                         ; $57a6: $82
    push af                                       ; $57a7: $f5
    db $f4                                        ; $57a8: $f4
    push af                                       ; $57a9: $f5
    pop hl                                        ; $57aa: $e1
    db $e3                                        ; $57ab: $e3
    db $dd                                        ; $57ac: $dd
    nop                                           ; $57ad: $00
    pop hl                                        ; $57ae: $e1
    push hl                                       ; $57af: $e5
    and $e7                                       ; $57b0: $e6 $e7
    pop hl                                        ; $57b2: $e1
    jp nc, $d4d3                                  ; $57b3: $d2 $d3 $d4

    di                                            ; $57b6: $f3
    and d                                         ; $57b7: $a2
    add d                                         ; $57b8: $82
    add d                                         ; $57b9: $82
    ld [bc], a                                    ; $57ba: $02
    add d                                         ; $57bb: $82
    add d                                         ; $57bc: $82
    add d                                         ; $57bd: $82
    ld [bc], a                                    ; $57be: $02
    add d                                         ; $57bf: $82
    add d                                         ; $57c0: $82
    add d                                         ; $57c1: $82
    ld [bc], a                                    ; $57c2: $02
    add d                                         ; $57c3: $82
    add d                                         ; $57c4: $82
    add d                                         ; $57c5: $82
    add d                                         ; $57c6: $82
    pop hl                                        ; $57c7: $e1
    pop hl                                        ; $57c8: $e1
    pop hl                                        ; $57c9: $e1
    pop hl                                        ; $57ca: $e1
    pop hl                                        ; $57cb: $e1
    inc hl                                        ; $57cc: $23
    inc h                                         ; $57cd: $24
    pop hl                                        ; $57ce: $e1
    pop hl                                        ; $57cf: $e1
    pop hl                                        ; $57d0: $e1
    pop hl                                        ; $57d1: $e1
    ld c, b                                       ; $57d2: $48
    pop hl                                        ; $57d3: $e1
    pop hl                                        ; $57d4: $e1
    pop hl                                        ; $57d5: $e1
    pop hl                                        ; $57d6: $e1
    ld [bc], a                                    ; $57d7: $02
    ld [bc], a                                    ; $57d8: $02
    ld [bc], a                                    ; $57d9: $02
    ld [bc], a                                    ; $57da: $02
    ld [bc], a                                    ; $57db: $02
    ld bc, $0201                                  ; $57dc: $01 $01 $02
    ld [bc], a                                    ; $57df: $02
    ld [bc], a                                    ; $57e0: $02
    ld [bc], a                                    ; $57e1: $02
    ld bc, $0202                                  ; $57e2: $01 $02 $02
    ld [bc], a                                    ; $57e5: $02
    ld [bc], a                                    ; $57e6: $02
    ld b, a                                       ; $57e7: $47
    ld c, b                                       ; $57e8: $48
    ld d, l                                       ; $57e9: $55
    ld d, [hl]                                    ; $57ea: $56
    ld d, h                                       ; $57eb: $54
    ld d, c                                       ; $57ec: $51
    ld d, d                                       ; $57ed: $52
    ld d, e                                       ; $57ee: $53
    ld c, c                                       ; $57ef: $49
    ld d, [hl]                                    ; $57f0: $56
    ld d, b                                       ; $57f1: $50
    ld d, c                                       ; $57f2: $51
    ld b, a                                       ; $57f3: $47
    ld c, b                                       ; $57f4: $48
    ld d, l                                       ; $57f5: $55
    ld d, [hl]                                    ; $57f6: $56
    ld bc, $0101                                  ; $57f7: $01 $01 $01
    ld bc, $0101                                  ; $57fa: $01 $01 $01
    ld bc, $0101                                  ; $57fd: $01 $01 $01
    ld bc, $0101                                  ; $5800: $01 $01 $01
    ld bc, $0101                                  ; $5803: $01 $01 $01
    ld bc, $e1f3                                  ; $5806: $01 $f3 $e1
    pop hl                                        ; $5809: $e1
    jp hl                                         ; $580a: $e9


    xor $f5                                       ; $580b: $ee $f5
    pop hl                                        ; $580d: $e1
    ld [$00dd], a                                 ; $580e: $ea $dd $00
    pop hl                                        ; $5811: $e1
    db $ec                                        ; $5812: $ec
    and $e7                                       ; $5813: $e6 $e7
    pop hl                                        ; $5815: $e1
    pop hl                                        ; $5816: $e1
    add d                                         ; $5817: $82
    ld [bc], a                                    ; $5818: $02
    ld [bc], a                                    ; $5819: $02
    add d                                         ; $581a: $82
    add d                                         ; $581b: $82
    add d                                         ; $581c: $82
    ld [bc], a                                    ; $581d: $02
    add d                                         ; $581e: $82
    add d                                         ; $581f: $82
    add d                                         ; $5820: $82
    ld [bc], a                                    ; $5821: $02
    add d                                         ; $5822: $82
    add d                                         ; $5823: $82
    add d                                         ; $5824: $82
    ld [bc], a                                    ; $5825: $02
    ld [bc], a                                    ; $5826: $02
    push af                                       ; $5827: $f5
    pop hl                                        ; $5828: $e1
    ld b, c                                       ; $5829: $41
    pop hl                                        ; $582a: $e1
    nop                                           ; $582b: $00
    pop hl                                        ; $582c: $e1
    pop hl                                        ; $582d: $e1
    pop hl                                        ; $582e: $e1
    rst $20                                       ; $582f: $e7
    pop hl                                        ; $5830: $e1
    pop hl                                        ; $5831: $e1
    pop hl                                        ; $5832: $e1
    call nc, $e1e1                                ; $5833: $d4 $e1 $e1
    ld b, d                                       ; $5836: $42
    add d                                         ; $5837: $82
    ld [bc], a                                    ; $5838: $02
    ld bc, $8202                                  ; $5839: $01 $02 $82
    ld [bc], a                                    ; $583c: $02
    ld [bc], a                                    ; $583d: $02
    ld [bc], a                                    ; $583e: $02
    add d                                         ; $583f: $82
    ld [bc], a                                    ; $5840: $02
    ld [bc], a                                    ; $5841: $02
    ld [bc], a                                    ; $5842: $02
    add d                                         ; $5843: $82
    ld [bc], a                                    ; $5844: $02
    ld [bc], a                                    ; $5845: $02
    ld bc, $46e1                                  ; $5846: $01 $e1 $46
    ld b, a                                       ; $5849: $47
    ld d, e                                       ; $584a: $53
    ld c, c                                       ; $584b: $49
    ld c, d                                       ; $584c: $4a
    ld d, h                                       ; $584d: $54
    ld b, [hl]                                    ; $584e: $46
    pop hl                                        ; $584f: $e1
    ld c, b                                       ; $5850: $48
    ld c, c                                       ; $5851: $49
    ld c, d                                       ; $5852: $4a
    ld b, e                                       ; $5853: $43
    pop hl                                        ; $5854: $e1
    ld b, a                                       ; $5855: $47
    ld c, b                                       ; $5856: $48
    ld [bc], a                                    ; $5857: $02
    ld bc, $0101                                  ; $5858: $01 $01 $01
    ld bc, $0101                                  ; $585b: $01 $01 $01
    ld bc, $0102                                  ; $585e: $01 $02 $01
    ld bc, $0101                                  ; $5861: $01 $01 $01
    ld [bc], a                                    ; $5864: $02
    ld bc, $e101                                  ; $5865: $01 $01 $e1
    pop hl                                        ; $5868: $e1
    pop hl                                        ; $5869: $e1
    pop hl                                        ; $586a: $e1
    ld b, a                                       ; $586b: $47
    ld c, b                                       ; $586c: $48
    ld c, c                                       ; $586d: $49
    ld c, d                                       ; $586e: $4a
    ld d, b                                       ; $586f: $50
    ld d, c                                       ; $5870: $51
    ld d, d                                       ; $5871: $52
    ld d, e                                       ; $5872: $53
    ld d, l                                       ; $5873: $55
    ld d, [hl]                                    ; $5874: $56
    ld d, b                                       ; $5875: $50
    ld d, c                                       ; $5876: $51
    ld [bc], a                                    ; $5877: $02
    ld [bc], a                                    ; $5878: $02
    ld [bc], a                                    ; $5879: $02
    ld [bc], a                                    ; $587a: $02
    ld bc, $0101                                  ; $587b: $01 $01 $01
    ld bc, $0101                                  ; $587e: $01 $01 $01
    ld bc, $0101                                  ; $5881: $01 $01 $01
    ld bc, $0101                                  ; $5884: $01 $01 $01
    pop hl                                        ; $5887: $e1
    ld c, b                                       ; $5888: $48
    ld c, c                                       ; $5889: $49
    ld c, d                                       ; $588a: $4a
    ld d, h                                       ; $588b: $54
    ld d, c                                       ; $588c: $51
    ld d, d                                       ; $588d: $52
    ld d, e                                       ; $588e: $53
    ld d, l                                       ; $588f: $55
    ld d, [hl]                                    ; $5890: $56
    ld d, b                                       ; $5891: $50
    ld d, c                                       ; $5892: $51
    ld d, d                                       ; $5893: $52
    ld d, e                                       ; $5894: $53
    ld d, l                                       ; $5895: $55
    ld c, d                                       ; $5896: $4a
    ld [bc], a                                    ; $5897: $02
    ld bc, $0101                                  ; $5898: $01 $01 $01
    ld bc, $0101                                  ; $589b: $01 $01 $01
    ld bc, $0101                                  ; $589e: $01 $01 $01
    ld bc, $0101                                  ; $58a1: $01 $01 $01
    ld bc, $0101                                  ; $58a4: $01 $01 $01
    ld d, b                                       ; $58a7: $50
    ld d, c                                       ; $58a8: $51
    ld d, d                                       ; $58a9: $52
    ld d, e                                       ; $58aa: $53
    ld d, l                                       ; $58ab: $55
    ld d, [hl]                                    ; $58ac: $56
    ld d, b                                       ; $58ad: $50
    ld d, c                                       ; $58ae: $51
    ld d, d                                       ; $58af: $52
    ld d, e                                       ; $58b0: $53
    ld d, l                                       ; $58b1: $55
    ld c, d                                       ; $58b2: $4a
    ld d, h                                       ; $58b3: $54
    ld b, [hl]                                    ; $58b4: $46
    ld b, a                                       ; $58b5: $47
    ld c, b                                       ; $58b6: $48
    ld bc, $0101                                  ; $58b7: $01 $01 $01
    ld bc, $0101                                  ; $58ba: $01 $01 $01
    ld bc, $0101                                  ; $58bd: $01 $01 $01
    ld bc, $0101                                  ; $58c0: $01 $01 $01
    ld bc, $0101                                  ; $58c3: $01 $01 $01
    ld bc, $4a55                                  ; $58c6: $01 $55 $4a
    ld d, h                                       ; $58c9: $54
    pop hl                                        ; $58ca: $e1
    ld d, d                                       ; $58cb: $52
    ld c, b                                       ; $58cc: $48
    ld b, c                                       ; $58cd: $41
    pop hl                                        ; $58ce: $e1
    ld d, h                                       ; $58cf: $54
    pop hl                                        ; $58d0: $e1
    pop hl                                        ; $58d1: $e1
    pop hl                                        ; $58d2: $e1
    pop hl                                        ; $58d3: $e1
    pop hl                                        ; $58d4: $e1
    pop hl                                        ; $58d5: $e1
    pop hl                                        ; $58d6: $e1
    ld bc, $0101                                  ; $58d7: $01 $01 $01
    ld [bc], a                                    ; $58da: $02
    ld bc, $0101                                  ; $58db: $01 $01 $01
    ld [bc], a                                    ; $58de: $02
    ld bc, $0202                                  ; $58df: $01 $02 $02
    ld [bc], a                                    ; $58e2: $02
    ld [bc], a                                    ; $58e3: $02
    ld [bc], a                                    ; $58e4: $02
    ld [bc], a                                    ; $58e5: $02
    ld [bc], a                                    ; $58e6: $02
    ld d, d                                       ; $58e7: $52
    ld d, e                                       ; $58e8: $53
    ld d, l                                       ; $58e9: $55
    ld d, [hl]                                    ; $58ea: $56
    ld d, b                                       ; $58eb: $50
    ld d, c                                       ; $58ec: $51
    ld d, d                                       ; $58ed: $52
    ld c, b                                       ; $58ee: $48
    ld d, l                                       ; $58ef: $55
    ld c, d                                       ; $58f0: $4a
    ld d, h                                       ; $58f1: $54
    ld b, [hl]                                    ; $58f2: $46
    ld d, d                                       ; $58f3: $52
    ld d, e                                       ; $58f4: $53
    ld c, c                                       ; $58f5: $49
    ld b, c                                       ; $58f6: $41
    ld bc, $0101                                  ; $58f7: $01 $01 $01
    ld bc, $0101                                  ; $58fa: $01 $01 $01
    ld bc, $0101                                  ; $58fd: $01 $01 $01
    ld bc, $0101                                  ; $5900: $01 $01 $01
    ld bc, $0101                                  ; $5903: $01 $01 $01
    ld bc, $4654                                  ; $5906: $01 $54 $46
    ld b, a                                       ; $5909: $47
    ld c, b                                       ; $590a: $48
    ld c, c                                       ; $590b: $49
    pop hl                                        ; $590c: $e1
    ld b, c                                       ; $590d: $41
    pop hl                                        ; $590e: $e1
    pop hl                                        ; $590f: $e1
    pop hl                                        ; $5910: $e1
    pop hl                                        ; $5911: $e1
    pop hl                                        ; $5912: $e1
    pop hl                                        ; $5913: $e1
    pop hl                                        ; $5914: $e1
    ei                                            ; $5915: $fb
    or $01                                        ; $5916: $f6 $01
    ld bc, $0101                                  ; $5918: $01 $01 $01
    ld bc, $0102                                  ; $591b: $01 $02 $01
    ld [bc], a                                    ; $591e: $02
    ld [bc], a                                    ; $591f: $02
    ld [bc], a                                    ; $5920: $02
    ld [bc], a                                    ; $5921: $02
    ld [bc], a                                    ; $5922: $02
    ld [bc], a                                    ; $5923: $02
    ld [bc], a                                    ; $5924: $02
    ld bc, $4901                                  ; $5925: $01 $01 $49
    pop hl                                        ; $5928: $e1
    pop hl                                        ; $5929: $e1
    pop hl                                        ; $592a: $e1
    pop hl                                        ; $592b: $e1
    pop hl                                        ; $592c: $e1
    ld b, d                                       ; $592d: $42
    ld b, e                                       ; $592e: $43
    pop hl                                        ; $592f: $e1
    pop hl                                        ; $5930: $e1
    ld b, h                                       ; $5931: $44
    ld b, l                                       ; $5932: $45
    rst $30                                       ; $5933: $f7
    ld hl, sp-$07                                 ; $5934: $f8 $f9
    ld a, [$0201]                                 ; $5936: $fa $01 $02
    ld [bc], a                                    ; $5939: $02
    ld [bc], a                                    ; $593a: $02
    ld [bc], a                                    ; $593b: $02
    ld [bc], a                                    ; $593c: $02
    ld bc, $0201                                  ; $593d: $01 $01 $02
    ld [bc], a                                    ; $5940: $02
    ld bc, $0101                                  ; $5941: $01 $01 $01
    ld bc, $0101                                  ; $5944: $01 $01 $01
    pop hl                                        ; $5947: $e1
    pop hl                                        ; $5948: $e1
    pop hl                                        ; $5949: $e1
    pop hl                                        ; $594a: $e1
    pop hl                                        ; $594b: $e1
    pop hl                                        ; $594c: $e1
    pop hl                                        ; $594d: $e1
    pop hl                                        ; $594e: $e1
    pop hl                                        ; $594f: $e1
    pop hl                                        ; $5950: $e1
    pop hl                                        ; $5951: $e1
    ld a, [$f6fb]                                 ; $5952: $fa $fb $f6
    rst $30                                       ; $5955: $f7
    ld hl, sp+$02                                 ; $5956: $f8 $02
    ld [bc], a                                    ; $5958: $02
    ld [bc], a                                    ; $5959: $02
    ld [bc], a                                    ; $595a: $02
    ld [bc], a                                    ; $595b: $02
    ld [bc], a                                    ; $595c: $02
    ld [bc], a                                    ; $595d: $02
    ld [bc], a                                    ; $595e: $02
    ld [bc], a                                    ; $595f: $02
    ld [bc], a                                    ; $5960: $02
    ld [bc], a                                    ; $5961: $02
    ld bc, $0101                                  ; $5962: $01 $01 $01
    ld bc, $5001                                  ; $5965: $01 $01 $50
    ld b, [hl]                                    ; $5968: $46
    ld b, a                                       ; $5969: $47
    or $55                                        ; $596a: $f6 $55
    ld c, d                                       ; $596c: $4a
    ld b, c                                       ; $596d: $41
    pop hl                                        ; $596e: $e1
    ld d, d                                       ; $596f: $52
    ld c, b                                       ; $5970: $48
    pop hl                                        ; $5971: $e1
    pop hl                                        ; $5972: $e1
    ld d, b                                       ; $5973: $50
    ld d, c                                       ; $5974: $51
    ld b, a                                       ; $5975: $47
    pop hl                                        ; $5976: $e1
    ld bc, $0101                                  ; $5977: $01 $01 $01
    ld bc, $0101                                  ; $597a: $01 $01 $01
    ld bc, $0102                                  ; $597d: $01 $02 $01
    ld bc, $0202                                  ; $5980: $01 $02 $02
    ld bc, $0101                                  ; $5983: $01 $01 $01
    ld [bc], a                                    ; $5986: $02
    rst $30                                       ; $5987: $f7
    ld hl, sp+$04                                 ; $5988: $f8 $04
    ld [bc], a                                    ; $598a: $02
    ei                                            ; $598b: $fb
    or $f7                                        ; $598c: $f6 $f7
    ld a, [c]                                     ; $598e: $f2
    pop hl                                        ; $598f: $e1
    pop hl                                        ; $5990: $e1
    ei                                            ; $5991: $fb
    or $e1                                        ; $5992: $f6 $e1
    pop hl                                        ; $5994: $e1
    pop hl                                        ; $5995: $e1
    ld b, c                                       ; $5996: $41
    ld bc, $0101                                  ; $5997: $01 $01 $01
    ld bc, $0101                                  ; $599a: $01 $01 $01
    ld bc, $0209                                  ; $599d: $01 $09 $02
    ld [bc], a                                    ; $59a0: $02
    ld bc, $0201                                  ; $59a1: $01 $01 $02
    ld [bc], a                                    ; $59a4: $02
    ld [bc], a                                    ; $59a5: $02
    ld bc, $0603                                  ; $59a6: $01 $03 $06
    inc c                                         ; $59a9: $0c
    ld a, [c]                                     ; $59aa: $f2
    inc b                                         ; $59ab: $04
    ld [bc], a                                    ; $59ac: $02
    inc bc                                        ; $59ad: $03
    ld b, $f7                                     ; $59ae: $06 $f7
    ld a, [c]                                     ; $59b0: $f2
    inc b                                         ; $59b1: $04
    ld [bc], a                                    ; $59b2: $02
    ei                                            ; $59b3: $fb
    or $0c                                        ; $59b4: $f6 $0c
    ld a, [c]                                     ; $59b6: $f2
    ld bc, $0101                                  ; $59b7: $01 $01 $01
    add hl, bc                                    ; $59ba: $09
    ld bc, $0101                                  ; $59bb: $01 $01 $01
    ld bc, $0901                                  ; $59be: $01 $01 $09
    ld bc, $0101                                  ; $59c1: $01 $01 $01
    ld bc, $0901                                  ; $59c4: $01 $01 $09
    inc b                                         ; $59c7: $04
    ld [bc], a                                    ; $59c8: $02
    inc bc                                        ; $59c9: $03
    ld b, $0c                                     ; $59ca: $06 $0c
    ld a, [c]                                     ; $59cc: $f2
    inc b                                         ; $59cd: $04
    ld [bc], a                                    ; $59ce: $02
    inc bc                                        ; $59cf: $03
    ld b, $0c                                     ; $59d0: $06 $0c
    ld a, [c]                                     ; $59d2: $f2
    ld sp, hl                                     ; $59d3: $f9
    ld [bc], a                                    ; $59d4: $02
    ei                                            ; $59d5: $fb
    ld b, $01                                     ; $59d6: $06 $01
    ld bc, $0101                                  ; $59d8: $01 $01 $01
    ld bc, $0109                                  ; $59db: $01 $09 $01
    ld bc, $0101                                  ; $59de: $01 $01 $01
    ld bc, $0109                                  ; $59e1: $01 $09 $01
    ld bc, $0101                                  ; $59e4: $01 $01 $01
    ld d, l                                       ; $59e7: $55
    ld d, [hl]                                    ; $59e8: $56
    ld d, h                                       ; $59e9: $54
    pop hl                                        ; $59ea: $e1
    ld d, d                                       ; $59eb: $52
    ld d, e                                       ; $59ec: $53
    ld c, c                                       ; $59ed: $49
    ld c, d                                       ; $59ee: $4a
    ld d, b                                       ; $59ef: $50
    ld d, c                                       ; $59f0: $51
    ld d, d                                       ; $59f1: $52
    ld d, e                                       ; $59f2: $53
    ld c, c                                       ; $59f3: $49
    ld d, [hl]                                    ; $59f4: $56
    ld d, b                                       ; $59f5: $50
    ld d, c                                       ; $59f6: $51
    ld bc, $0101                                  ; $59f7: $01 $01 $01
    ld [bc], a                                    ; $59fa: $02
    ld bc, $0101                                  ; $59fb: $01 $01 $01
    ld bc, $0101                                  ; $59fe: $01 $01 $01
    ld bc, $0101                                  ; $5a01: $01 $01 $01
    ld bc, $0101                                  ; $5a04: $01 $01 $01
    pop hl                                        ; $5a07: $e1
    pop hl                                        ; $5a08: $e1
    pop hl                                        ; $5a09: $e1
    pop hl                                        ; $5a0a: $e1
    ld d, h                                       ; $5a0b: $54
    pop hl                                        ; $5a0c: $e1
    inc hl                                        ; $5a0d: $23
    inc h                                         ; $5a0e: $24
    ld c, c                                       ; $5a0f: $49
    ld c, d                                       ; $5a10: $4a
    pop hl                                        ; $5a11: $e1
    pop hl                                        ; $5a12: $e1
    ld d, d                                       ; $5a13: $52
    ld d, e                                       ; $5a14: $53
    ld c, c                                       ; $5a15: $49
    ld b, c                                       ; $5a16: $41
    ld [bc], a                                    ; $5a17: $02
    ld [bc], a                                    ; $5a18: $02
    ld [bc], a                                    ; $5a19: $02
    ld [bc], a                                    ; $5a1a: $02
    ld bc, $0102                                  ; $5a1b: $01 $02 $01
    ld bc, $0101                                  ; $5a1e: $01 $01 $01
    ld [bc], a                                    ; $5a21: $02
    ld [bc], a                                    ; $5a22: $02
    ld bc, $0101                                  ; $5a23: $01 $01 $01
    ld bc, $fae1                                  ; $5a26: $01 $e1 $fa
    ei                                            ; $5a29: $fb
    or $e1                                        ; $5a2a: $f6 $e1
    pop hl                                        ; $5a2c: $e1
    ld sp, hl                                     ; $5a2d: $f9
    ld a, [$42e1]                                 ; $5a2e: $fa $e1 $42
    ld b, e                                       ; $5a31: $43
    ld hl, sp-$1f                                 ; $5a32: $f8 $e1
    ld b, h                                       ; $5a34: $44
    ld b, l                                       ; $5a35: $45
    pop hl                                        ; $5a36: $e1
    ld [bc], a                                    ; $5a37: $02
    ld bc, $0101                                  ; $5a38: $01 $01 $01
    ld [bc], a                                    ; $5a3b: $02
    ld [bc], a                                    ; $5a3c: $02
    ld bc, $0201                                  ; $5a3d: $01 $01 $02
    ld bc, $0101                                  ; $5a40: $01 $01 $01
    ld [bc], a                                    ; $5a43: $02
    ld bc, $0201                                  ; $5a44: $01 $01 $02
    inc c                                         ; $5a47: $0c
    ld hl, sp+$04                                 ; $5a48: $f8 $04
    ld a, [$f6fb]                                 ; $5a4a: $fa $fb $f6
    rst $30                                       ; $5a4d: $f7
    ld hl, sp-$07                                 ; $5a4e: $f8 $f9
    ld a, [$e1fb]                                 ; $5a50: $fa $fb $e1
    pop hl                                        ; $5a53: $e1
    pop hl                                        ; $5a54: $e1
    pop hl                                        ; $5a55: $e1
    pop hl                                        ; $5a56: $e1
    ld bc, $0101                                  ; $5a57: $01 $01 $01
    ld bc, $0101                                  ; $5a5a: $01 $01 $01
    ld bc, $0101                                  ; $5a5d: $01 $01 $01
    ld bc, $0201                                  ; $5a60: $01 $01 $02
    ld [bc], a                                    ; $5a63: $02
    ld [bc], a                                    ; $5a64: $02
    ld [bc], a                                    ; $5a65: $02
    ld [bc], a                                    ; $5a66: $02
    pop hl                                        ; $5a67: $e1
    ld a, [bc]                                    ; $5a68: $0a
    dec bc                                        ; $5a69: $0b
    add hl, sp                                    ; $5a6a: $39
    pop hl                                        ; $5a6b: $e1
    dec c                                         ; $5a6c: $0d
    ld c, $3d                                     ; $5a6d: $0e $3d
    pop hl                                        ; $5a6f: $e1
    di                                            ; $5a70: $f3
    db $f4                                        ; $5a71: $f4
    push af                                       ; $5a72: $f5
    pop hl                                        ; $5a73: $e1
    pop hl                                        ; $5a74: $e1
    pop hl                                        ; $5a75: $e1
    ld sp, hl                                     ; $5a76: $f9
    ld [bc], a                                    ; $5a77: $02
    add d                                         ; $5a78: $82
    add d                                         ; $5a79: $82
    add d                                         ; $5a7a: $82
    ld [bc], a                                    ; $5a7b: $02
    add d                                         ; $5a7c: $82
    add d                                         ; $5a7d: $82
    add d                                         ; $5a7e: $82
    ld [bc], a                                    ; $5a7f: $02
    adc d                                         ; $5a80: $8a
    adc d                                         ; $5a81: $8a
    adc d                                         ; $5a82: $8a
    ld [bc], a                                    ; $5a83: $02
    ld [bc], a                                    ; $5a84: $02
    ld [bc], a                                    ; $5a85: $02
    dec bc                                        ; $5a86: $0b
    ld a, [hl-]                                   ; $5a87: $3a
    dec sp                                        ; $5a88: $3b
    inc a                                         ; $5a89: $3c
    pop hl                                        ; $5a8a: $e1
    ld a, $3f                                     ; $5a8b: $3e $3f
    ld b, b                                       ; $5a8d: $40
    pop hl                                        ; $5a8e: $e1
    or $f7                                        ; $5a8f: $f6 $f7
    ld hl, sp-$1f                                 ; $5a91: $f8 $e1
    ld a, [$e1e1]                                 ; $5a93: $fa $e1 $e1
    pop hl                                        ; $5a96: $e1
    add d                                         ; $5a97: $82
    add d                                         ; $5a98: $82
    add d                                         ; $5a99: $82
    ld [bc], a                                    ; $5a9a: $02
    add d                                         ; $5a9b: $82
    add d                                         ; $5a9c: $82
    add d                                         ; $5a9d: $82
    ld [bc], a                                    ; $5a9e: $02
    adc d                                         ; $5a9f: $8a
    adc d                                         ; $5aa0: $8a
    adc d                                         ; $5aa1: $8a
    ld [bc], a                                    ; $5aa2: $02
    dec bc                                        ; $5aa3: $0b
    ld [bc], a                                    ; $5aa4: $02
    ld [bc], a                                    ; $5aa5: $02
    ld [bc], a                                    ; $5aa6: $02
    pop hl                                        ; $5aa7: $e1
    pop hl                                        ; $5aa8: $e1
    ld b, d                                       ; $5aa9: $42
    ld b, e                                       ; $5aaa: $43
    pop hl                                        ; $5aab: $e1
    pop hl                                        ; $5aac: $e1
    ld b, h                                       ; $5aad: $44
    ld b, l                                       ; $5aae: $45
    pop hl                                        ; $5aaf: $e1
    pop hl                                        ; $5ab0: $e1
    pop hl                                        ; $5ab1: $e1
    pop hl                                        ; $5ab2: $e1
    ld b, c                                       ; $5ab3: $41
    ld hl, sp-$07                                 ; $5ab4: $f8 $f9
    ld a, [$0202]                                 ; $5ab6: $fa $02 $02
    ld bc, $0201                                  ; $5ab9: $01 $01 $02
    ld [bc], a                                    ; $5abc: $02
    ld bc, $0201                                  ; $5abd: $01 $01 $02
    ld [bc], a                                    ; $5ac0: $02
    ld [bc], a                                    ; $5ac1: $02
    ld [bc], a                                    ; $5ac2: $02
    ld bc, $0101                                  ; $5ac3: $01 $01 $01
    ld bc, $4e4d                                  ; $5ac6: $01 $4d $4e
    dec l                                         ; $5ac9: $2d
    inc l                                         ; $5aca: $2c
    pop hl                                        ; $5acb: $e1
    pop hl                                        ; $5acc: $e1
    pop hl                                        ; $5acd: $e1
    pop hl                                        ; $5ace: $e1
    pop hl                                        ; $5acf: $e1
    pop hl                                        ; $5ad0: $e1
    ld b, c                                       ; $5ad1: $41
    pop hl                                        ; $5ad2: $e1
    ei                                            ; $5ad3: $fb
    or $e1                                        ; $5ad4: $f6 $e1
    pop hl                                        ; $5ad6: $e1
    ld b, e                                       ; $5ad7: $43
    ld b, e                                       ; $5ad8: $43
    ld h, e                                       ; $5ad9: $63
    ld h, e                                       ; $5ada: $63
    ld [bc], a                                    ; $5adb: $02
    ld [bc], a                                    ; $5adc: $02
    ld [bc], a                                    ; $5add: $02
    ld [bc], a                                    ; $5ade: $02
    ld [bc], a                                    ; $5adf: $02
    ld [bc], a                                    ; $5ae0: $02
    ld bc, $0102                                  ; $5ae1: $01 $02 $01
    ld bc, $0202                                  ; $5ae4: $01 $02 $02
    pop hl                                        ; $5ae7: $e1
    inc hl                                        ; $5ae8: $23
    inc h                                         ; $5ae9: $24
    ei                                            ; $5aea: $fb
    pop hl                                        ; $5aeb: $e1
    pop hl                                        ; $5aec: $e1
    pop hl                                        ; $5aed: $e1
    pop hl                                        ; $5aee: $e1
    ei                                            ; $5aef: $fb
    or $f7                                        ; $5af0: $f6 $f7
    ld hl, sp-$07                                 ; $5af2: $f8 $f9
    ld a, [$0603]                                 ; $5af4: $fa $03 $06
    ld [bc], a                                    ; $5af7: $02
    ld bc, $0b01                                  ; $5af8: $01 $01 $0b
    ld [bc], a                                    ; $5afb: $02
    ld [bc], a                                    ; $5afc: $02
    ld [bc], a                                    ; $5afd: $02
    ld [bc], a                                    ; $5afe: $02
    ld bc, $0101                                  ; $5aff: $01 $01 $01
    ld bc, $0101                                  ; $5b02: $01 $01 $01
    ld bc, $fc01                                  ; $5b05: $01 $01 $fc
    pop hl                                        ; $5b08: $e1
    pop hl                                        ; $5b09: $e1
    ld b, c                                       ; $5b0a: $41
    pop hl                                        ; $5b0b: $e1
    or $f7                                        ; $5b0c: $f6 $f7
    ld hl, sp-$07                                 ; $5b0e: $f8 $f9
    ld [bc], a                                    ; $5b10: $02
    inc bc                                        ; $5b11: $03
    ld b, $0c                                     ; $5b12: $06 $0c
    ld a, [c]                                     ; $5b14: $f2
    inc b                                         ; $5b15: $04
    ld [bc], a                                    ; $5b16: $02
    dec bc                                        ; $5b17: $0b
    ld [bc], a                                    ; $5b18: $02
    ld [bc], a                                    ; $5b19: $02
    ld bc, $0102                                  ; $5b1a: $01 $02 $01
    ld bc, $0101                                  ; $5b1d: $01 $01 $01
    ld bc, $0101                                  ; $5b20: $01 $01 $01
    ld bc, $0109                                  ; $5b23: $01 $09 $01
    ld bc, $f6fb                                  ; $5b26: $01 $fb $f6
    rst $30                                       ; $5b29: $f7
    ld hl, sp+$04                                 ; $5b2a: $f8 $04
    ld [bc], a                                    ; $5b2c: $02
    inc bc                                        ; $5b2d: $03
    ld b, $0c                                     ; $5b2e: $06 $0c
    ld a, [c]                                     ; $5b30: $f2
    inc b                                         ; $5b31: $04
    ld [bc], a                                    ; $5b32: $02
    inc bc                                        ; $5b33: $03
    ld b, $f7                                     ; $5b34: $06 $f7
    ld hl, sp+$01                                 ; $5b36: $f8 $01
    ld bc, $0101                                  ; $5b38: $01 $01 $01
    ld bc, $0101                                  ; $5b3b: $01 $01 $01
    ld bc, $0901                                  ; $5b3e: $01 $01 $09
    ld bc, $0101                                  ; $5b41: $01 $01 $01
    ld bc, $0101                                  ; $5b44: $01 $01 $01
    ld sp, hl                                     ; $5b47: $f9
    ld a, [$e1fb]                                 ; $5b48: $fa $fb $e1
    inc c                                         ; $5b4b: $0c
    ld hl, sp-$07                                 ; $5b4c: $f8 $f9
    ld a, [$0603]                                 ; $5b4e: $fa $03 $06
    rst $30                                       ; $5b51: $f7
    ld hl, sp-$07                                 ; $5b52: $f8 $f9
    pop hl                                        ; $5b54: $e1
    pop hl                                        ; $5b55: $e1
    pop hl                                        ; $5b56: $e1
    ld bc, $0101                                  ; $5b57: $01 $01 $01
    ld [bc], a                                    ; $5b5a: $02
    ld bc, $0101                                  ; $5b5b: $01 $01 $01
    ld bc, $0101                                  ; $5b5e: $01 $01 $01
    ld bc, $0101                                  ; $5b61: $01 $01 $01
    ld [bc], a                                    ; $5b64: $02
    ld [bc], a                                    ; $5b65: $02
    ld [bc], a                                    ; $5b66: $02
    inc c                                         ; $5b67: $0c
    ld a, [c]                                     ; $5b68: $f2
    inc b                                         ; $5b69: $04
    ld [bc], a                                    ; $5b6a: $02
    inc bc                                        ; $5b6b: $03
    ld b, $0c                                     ; $5b6c: $06 $0c
    ld a, [c]                                     ; $5b6e: $f2
    inc b                                         ; $5b6f: $04
    ld [bc], a                                    ; $5b70: $02
    inc bc                                        ; $5b71: $03
    or $0c                                        ; $5b72: $f6 $0c
    ld hl, sp-$07                                 ; $5b74: $f8 $f9
    ld a, [$0901]                                 ; $5b76: $fa $01 $09
    ld bc, $0101                                  ; $5b79: $01 $01 $01
    ld bc, $0901                                  ; $5b7c: $01 $01 $09
    ld bc, $0101                                  ; $5b7f: $01 $01 $01
    ld bc, $0101                                  ; $5b82: $01 $01 $01
    ld bc, $0301                                  ; $5b85: $01 $01 $03
    ld b, $f7                                     ; $5b88: $06 $f7
    ld hl, sp-$07                                 ; $5b8a: $f8 $f9
    ld a, [$e1fb]                                 ; $5b8c: $fa $fb $e1
    rst $30                                       ; $5b8f: $f7
    pop hl                                        ; $5b90: $e1
    pop hl                                        ; $5b91: $e1
    pop hl                                        ; $5b92: $e1
    inc hl                                        ; $5b93: $23
    inc h                                         ; $5b94: $24
    pop hl                                        ; $5b95: $e1
    ld c, d                                       ; $5b96: $4a
    ld bc, $0101                                  ; $5b97: $01 $01 $01
    ld bc, $0101                                  ; $5b9a: $01 $01 $01
    ld bc, $0102                                  ; $5b9d: $01 $02 $01
    ld [bc], a                                    ; $5ba0: $02
    ld [bc], a                                    ; $5ba1: $02
    ld [bc], a                                    ; $5ba2: $02
    ld bc, $0201                                  ; $5ba3: $01 $01 $02
    ld bc, $faf9                                  ; $5ba6: $01 $f9 $fa
    inc hl                                        ; $5ba9: $23
    inc h                                         ; $5baa: $24
    pop hl                                        ; $5bab: $e1
    pop hl                                        ; $5bac: $e1
    pop hl                                        ; $5bad: $e1
    ld b, [hl]                                    ; $5bae: $46
    pop hl                                        ; $5baf: $e1
    ld c, b                                       ; $5bb0: $48
    ld c, c                                       ; $5bb1: $49
    ld c, d                                       ; $5bb2: $4a
    ld d, h                                       ; $5bb3: $54
    ld b, [hl]                                    ; $5bb4: $46
    ld d, d                                       ; $5bb5: $52
    ld d, e                                       ; $5bb6: $53
    ld bc, $0101                                  ; $5bb7: $01 $01 $01
    ld bc, $0202                                  ; $5bba: $01 $02 $02
    ld [bc], a                                    ; $5bbd: $02
    ld bc, $0102                                  ; $5bbe: $01 $02 $01
    ld bc, $0101                                  ; $5bc1: $01 $01 $01
    ld bc, $0101                                  ; $5bc4: $01 $01 $01
    pop hl                                        ; $5bc7: $e1
    pop hl                                        ; $5bc8: $e1
    ld d, h                                       ; $5bc9: $54
    ld b, [hl]                                    ; $5bca: $46
    ld b, a                                       ; $5bcb: $47
    ld c, b                                       ; $5bcc: $48
    ld c, c                                       ; $5bcd: $49
    ld d, [hl]                                    ; $5bce: $56
    ld d, b                                       ; $5bcf: $50
    ld d, c                                       ; $5bd0: $51
    ld d, d                                       ; $5bd1: $52
    ld d, e                                       ; $5bd2: $53
    ld d, l                                       ; $5bd3: $55
    ld d, [hl]                                    ; $5bd4: $56
    ld d, b                                       ; $5bd5: $50
    ld d, c                                       ; $5bd6: $51
    ld [bc], a                                    ; $5bd7: $02
    ld [bc], a                                    ; $5bd8: $02
    ld bc, $0101                                  ; $5bd9: $01 $01 $01
    ld bc, $0101                                  ; $5bdc: $01 $01 $01
    ld bc, $0101                                  ; $5bdf: $01 $01 $01
    ld bc, $0101                                  ; $5be2: $01 $01 $01
    ld bc, $fb01                                  ; $5be5: $01 $01 $fb
    or $f7                                        ; $5be8: $f6 $f7
    pop hl                                        ; $5bea: $e1
    ld sp, hl                                     ; $5beb: $f9
    pop hl                                        ; $5bec: $e1
    pop hl                                        ; $5bed: $e1
    pop hl                                        ; $5bee: $e1
    pop hl                                        ; $5bef: $e1
    pop hl                                        ; $5bf0: $e1
    ld d, h                                       ; $5bf1: $54
    ld b, [hl]                                    ; $5bf2: $46
    ld b, a                                       ; $5bf3: $47
    ld c, b                                       ; $5bf4: $48
    ld c, c                                       ; $5bf5: $49
    ld c, d                                       ; $5bf6: $4a
    ld bc, $0101                                  ; $5bf7: $01 $01 $01
    ld [bc], a                                    ; $5bfa: $02
    ld bc, $0202                                  ; $5bfb: $01 $02 $02
    ld [bc], a                                    ; $5bfe: $02
    ld [bc], a                                    ; $5bff: $02
    ld [bc], a                                    ; $5c00: $02
    ld bc, $0101                                  ; $5c01: $01 $01 $01
    ld bc, $0101                                  ; $5c04: $01 $01 $01
    pop hl                                        ; $5c07: $e1
    ld b, [hl]                                    ; $5c08: $46
    ld b, a                                       ; $5c09: $47
    ld c, b                                       ; $5c0a: $48
    ld c, c                                       ; $5c0b: $49
    ld c, d                                       ; $5c0c: $4a
    ld d, h                                       ; $5c0d: $54
    ld d, c                                       ; $5c0e: $51
    ld b, a                                       ; $5c0f: $47
    ld d, e                                       ; $5c10: $53
    ld d, l                                       ; $5c11: $55
    ld d, [hl]                                    ; $5c12: $56
    ld d, b                                       ; $5c13: $50
    ld d, c                                       ; $5c14: $51
    ld d, d                                       ; $5c15: $52
    ld d, e                                       ; $5c16: $53
    ld [bc], a                                    ; $5c17: $02
    ld bc, $0101                                  ; $5c18: $01 $01 $01
    ld bc, $0101                                  ; $5c1b: $01 $01 $01
    ld bc, $0101                                  ; $5c1e: $01 $01 $01
    ld bc, $0101                                  ; $5c21: $01 $01 $01
    ld bc, $0101                                  ; $5c24: $01 $01 $01
    ld d, l                                       ; $5c27: $55
    ld d, [hl]                                    ; $5c28: $56
    ld d, b                                       ; $5c29: $50
    ld d, c                                       ; $5c2a: $51
    ld d, d                                       ; $5c2b: $52
    ld d, e                                       ; $5c2c: $53
    ld d, l                                       ; $5c2d: $55
    ld d, [hl]                                    ; $5c2e: $56
    ld d, b                                       ; $5c2f: $50
    ld d, c                                       ; $5c30: $51
    ld d, d                                       ; $5c31: $52
    ld d, e                                       ; $5c32: $53
    ld d, l                                       ; $5c33: $55
    ld d, [hl]                                    ; $5c34: $56
    ld d, b                                       ; $5c35: $50
    ld d, c                                       ; $5c36: $51
    ld bc, $0101                                  ; $5c37: $01 $01 $01
    ld bc, $0101                                  ; $5c3a: $01 $01 $01
    ld bc, $0101                                  ; $5c3d: $01 $01 $01
    ld bc, $0101                                  ; $5c40: $01 $01 $01
    ld bc, $0101                                  ; $5c43: $01 $01 $01
    ld bc, $5352                                  ; $5c46: $01 $52 $53
    ld d, l                                       ; $5c49: $55
    ld d, [hl]                                    ; $5c4a: $56
    ld d, b                                       ; $5c4b: $50
    ld d, c                                       ; $5c4c: $51
    ld d, d                                       ; $5c4d: $52
    ld d, e                                       ; $5c4e: $53
    ld d, l                                       ; $5c4f: $55
    ld d, [hl]                                    ; $5c50: $56
    ld d, h                                       ; $5c51: $54
    ld b, [hl]                                    ; $5c52: $46
    ld d, d                                       ; $5c53: $52
    ld c, b                                       ; $5c54: $48
    ld c, c                                       ; $5c55: $49
    ld c, d                                       ; $5c56: $4a
    ld bc, $0101                                  ; $5c57: $01 $01 $01
    ld bc, $0101                                  ; $5c5a: $01 $01 $01
    ld bc, $0101                                  ; $5c5d: $01 $01 $01
    ld bc, $0101                                  ; $5c60: $01 $01 $01
    ld bc, $0101                                  ; $5c63: $01 $01 $01
    ld bc, $2b2b                                  ; $5c66: $01 $2b $2b
    inc l                                         ; $5c69: $2c
    dec l                                         ; $5c6a: $2d
    ld b, d                                       ; $5c6b: $42
    ld b, e                                       ; $5c6c: $43
    pop hl                                        ; $5c6d: $e1
    pop hl                                        ; $5c6e: $e1
    ld b, h                                       ; $5c6f: $44
    ld b, l                                       ; $5c70: $45
    pop hl                                        ; $5c71: $e1
    pop hl                                        ; $5c72: $e1
    pop hl                                        ; $5c73: $e1
    pop hl                                        ; $5c74: $e1
    pop hl                                        ; $5c75: $e1
    pop hl                                        ; $5c76: $e1
    ld h, e                                       ; $5c77: $63
    ld b, e                                       ; $5c78: $43
    ld b, e                                       ; $5c79: $43
    ld b, e                                       ; $5c7a: $43
    ld bc, $0201                                  ; $5c7b: $01 $01 $02
    ld [bc], a                                    ; $5c7e: $02
    ld bc, $0201                                  ; $5c7f: $01 $01 $02
    ld [bc], a                                    ; $5c82: $02
    ld [bc], a                                    ; $5c83: $02
    ld [bc], a                                    ; $5c84: $02
    ld [bc], a                                    ; $5c85: $02
    ld [bc], a                                    ; $5c86: $02
    ld c, a                                       ; $5c87: $4f
    ld c, e                                       ; $5c88: $4b
    ld c, l                                       ; $5c89: $4d
    ld c, [hl]                                    ; $5c8a: $4e
    pop hl                                        ; $5c8b: $e1
    ld b, c                                       ; $5c8c: $41
    pop hl                                        ; $5c8d: $e1
    rlca                                          ; $5c8e: $07
    pop hl                                        ; $5c8f: $e1
    pop hl                                        ; $5c90: $e1
    ld [$4109], sp                                ; $5c91: $08 $09 $41
    pop hl                                        ; $5c94: $e1
    ld a, [bc]                                    ; $5c95: $0a
    dec bc                                        ; $5c96: $0b
    ld b, e                                       ; $5c97: $43
    ld b, e                                       ; $5c98: $43
    ld b, e                                       ; $5c99: $43
    ld b, e                                       ; $5c9a: $43
    ld [bc], a                                    ; $5c9b: $02
    ld bc, $8202                                  ; $5c9c: $01 $02 $82
    ld [bc], a                                    ; $5c9f: $02
    ld [bc], a                                    ; $5ca0: $02
    add d                                         ; $5ca1: $82
    add d                                         ; $5ca2: $82
    ld bc, $8202                                  ; $5ca3: $01 $02 $82
    add d                                         ; $5ca6: $82
    ld c, a                                       ; $5ca7: $4f
    ld c, e                                       ; $5ca8: $4b
    ld c, l                                       ; $5ca9: $4d
    ld c, e                                       ; $5caa: $4b
    ld [hl-], a                                   ; $5cab: $32
    inc sp                                        ; $5cac: $33
    inc [hl]                                      ; $5cad: $34
    pop hl                                        ; $5cae: $e1
    dec [hl]                                      ; $5caf: $35
    ld [hl], $37                                  ; $5cb0: $36 $37
    jr c, jr_08c_5ced                             ; $5cb2: $38 $39

    ld a, [hl-]                                   ; $5cb4: $3a
    dec sp                                        ; $5cb5: $3b
    inc a                                         ; $5cb6: $3c
    ld b, e                                       ; $5cb7: $43
    ld b, e                                       ; $5cb8: $43
    ld b, e                                       ; $5cb9: $43
    ld b, e                                       ; $5cba: $43
    add d                                         ; $5cbb: $82
    add d                                         ; $5cbc: $82
    add d                                         ; $5cbd: $82
    ld [bc], a                                    ; $5cbe: $02
    add d                                         ; $5cbf: $82
    add d                                         ; $5cc0: $82
    add d                                         ; $5cc1: $82
    add d                                         ; $5cc2: $82
    add d                                         ; $5cc3: $82
    add d                                         ; $5cc4: $82
    add d                                         ; $5cc5: $82
    add d                                         ; $5cc6: $82
    ld c, l                                       ; $5cc7: $4d
    ld c, [hl]                                    ; $5cc8: $4e
    ld c, a                                       ; $5cc9: $4f
    dec l                                         ; $5cca: $2d
    pop hl                                        ; $5ccb: $e1
    inc hl                                        ; $5ccc: $23
    inc h                                         ; $5ccd: $24
    pop hl                                        ; $5cce: $e1
    pop hl                                        ; $5ccf: $e1
    pop hl                                        ; $5cd0: $e1
    pop hl                                        ; $5cd1: $e1
    pop hl                                        ; $5cd2: $e1
    pop hl                                        ; $5cd3: $e1
    pop hl                                        ; $5cd4: $e1
    pop hl                                        ; $5cd5: $e1
    pop hl                                        ; $5cd6: $e1
    ld b, e                                       ; $5cd7: $43
    ld b, e                                       ; $5cd8: $43
    ld b, e                                       ; $5cd9: $43
    ld b, e                                       ; $5cda: $43
    ld [bc], a                                    ; $5cdb: $02
    ld bc, $0201                                  ; $5cdc: $01 $01 $02
    ld [bc], a                                    ; $5cdf: $02
    ld [bc], a                                    ; $5ce0: $02
    ld [bc], a                                    ; $5ce1: $02
    ld [bc], a                                    ; $5ce2: $02
    ld [bc], a                                    ; $5ce3: $02
    ld [bc], a                                    ; $5ce4: $02
    ld [bc], a                                    ; $5ce5: $02
    ld [bc], a                                    ; $5ce6: $02
    pop hl                                        ; $5ce7: $e1
    pop hl                                        ; $5ce8: $e1
    pop hl                                        ; $5ce9: $e1
    pop hl                                        ; $5cea: $e1
    ei                                            ; $5ceb: $fb
    inc hl                                        ; $5cec: $23

jr_08c_5ced:
    inc h                                         ; $5ced: $24
    pop hl                                        ; $5cee: $e1
    ld sp, hl                                     ; $5cef: $f9
    ld a, [$e1fb]                                 ; $5cf0: $fa $fb $e1
    pop hl                                        ; $5cf3: $e1
    pop hl                                        ; $5cf4: $e1
    pop hl                                        ; $5cf5: $e1
    ld b, [hl]                                    ; $5cf6: $46
    ld [bc], a                                    ; $5cf7: $02
    ld [bc], a                                    ; $5cf8: $02
    ld [bc], a                                    ; $5cf9: $02
    ld [bc], a                                    ; $5cfa: $02
    ld bc, $0101                                  ; $5cfb: $01 $01 $01
    ld [bc], a                                    ; $5cfe: $02
    ld bc, $0101                                  ; $5cff: $01 $01 $01
    ld [bc], a                                    ; $5d02: $02
    ld [bc], a                                    ; $5d03: $02
    ld [bc], a                                    ; $5d04: $02
    ld [bc], a                                    ; $5d05: $02
    ld bc, $e1e1                                  ; $5d06: $01 $e1 $e1
    dec c                                         ; $5d09: $0d
    ld c, $e1                                     ; $5d0a: $0e $e1
    pop hl                                        ; $5d0c: $e1
    di                                            ; $5d0d: $f3
    db $f4                                        ; $5d0e: $f4
    pop hl                                        ; $5d0f: $e1
    pop hl                                        ; $5d10: $e1
    pop hl                                        ; $5d11: $e1
    pop hl                                        ; $5d12: $e1
    ld b, a                                       ; $5d13: $47
    pop hl                                        ; $5d14: $e1
    pop hl                                        ; $5d15: $e1
    pop hl                                        ; $5d16: $e1
    ld [bc], a                                    ; $5d17: $02
    ld [bc], a                                    ; $5d18: $02
    add d                                         ; $5d19: $82
    add d                                         ; $5d1a: $82
    ld [bc], a                                    ; $5d1b: $02
    ld [bc], a                                    ; $5d1c: $02
    adc d                                         ; $5d1d: $8a
    adc d                                         ; $5d1e: $8a
    ld [bc], a                                    ; $5d1f: $02
    ld [bc], a                                    ; $5d20: $02
    ld [bc], a                                    ; $5d21: $02
    ld [bc], a                                    ; $5d22: $02
    ld bc, $0202                                  ; $5d23: $01 $02 $02
    ld [bc], a                                    ; $5d26: $02
    dec a                                         ; $5d27: $3d
    ld a, $3f                                     ; $5d28: $3e $3f
    ld b, b                                       ; $5d2a: $40
    push af                                       ; $5d2b: $f5
    or $f7                                        ; $5d2c: $f6 $f7
    ld hl, sp-$07                                 ; $5d2e: $f8 $f9
    ld a, [$e1e1]                                 ; $5d30: $fa $e1 $e1
    ei                                            ; $5d33: $fb
    db $fc                                        ; $5d34: $fc
    pop hl                                        ; $5d35: $e1
    or $82                                        ; $5d36: $f6 $82
    add d                                         ; $5d38: $82
    add d                                         ; $5d39: $82
    add d                                         ; $5d3a: $82
    adc d                                         ; $5d3b: $8a
    adc d                                         ; $5d3c: $8a
    adc d                                         ; $5d3d: $8a
    adc d                                         ; $5d3e: $8a
    dec bc                                        ; $5d3f: $0b
    dec bc                                        ; $5d40: $0b
    ld [bc], a                                    ; $5d41: $02
    ld [bc], a                                    ; $5d42: $02
    dec bc                                        ; $5d43: $0b
    dec bc                                        ; $5d44: $0b
    ld [bc], a                                    ; $5d45: $02
    ld bc, $e1e1                                  ; $5d46: $01 $e1 $e1
    pop hl                                        ; $5d49: $e1
    ld a, [$f6e1]                                 ; $5d4a: $fa $e1 $f6
    rst $30                                       ; $5d4d: $f7
    ld a, [c]                                     ; $5d4e: $f2
    ld sp, hl                                     ; $5d4f: $f9
    ld [bc], a                                    ; $5d50: $02
    inc bc                                        ; $5d51: $03
    ld b, $0c                                     ; $5d52: $06 $0c
    ld a, [c]                                     ; $5d54: $f2
    ld sp, hl                                     ; $5d55: $f9
    ld [bc], a                                    ; $5d56: $02
    ld [bc], a                                    ; $5d57: $02
    ld [bc], a                                    ; $5d58: $02
    ld [bc], a                                    ; $5d59: $02
    ld bc, $0102                                  ; $5d5a: $01 $02 $01
    ld bc, $0109                                  ; $5d5d: $01 $09 $01
    ld bc, $0101                                  ; $5d60: $01 $01 $01
    ld bc, $0109                                  ; $5d63: $01 $09 $01
    ld bc, $4847                                  ; $5d66: $01 $47 $48
    ld c, c                                       ; $5d69: $49
    ld c, d                                       ; $5d6a: $4a
    ld d, b                                       ; $5d6b: $50
    ld d, c                                       ; $5d6c: $51
    ld d, d                                       ; $5d6d: $52
    ld c, b                                       ; $5d6e: $48
    ld d, l                                       ; $5d6f: $55
    ld c, d                                       ; $5d70: $4a
    ld d, h                                       ; $5d71: $54
    inc hl                                        ; $5d72: $23
    ld b, a                                       ; $5d73: $47
    ld c, b                                       ; $5d74: $48
    ld c, c                                       ; $5d75: $49
    ld c, d                                       ; $5d76: $4a
    ld bc, $0101                                  ; $5d77: $01 $01 $01
    ld bc, $0101                                  ; $5d7a: $01 $01 $01
    ld bc, $0101                                  ; $5d7d: $01 $01 $01
    ld bc, $0101                                  ; $5d80: $01 $01 $01
    ld bc, $0101                                  ; $5d83: $01 $01 $01
    ld bc, $e1e1                                  ; $5d86: $01 $e1 $e1
    ld b, c                                       ; $5d89: $41
    pop hl                                        ; $5d8a: $e1
    pop hl                                        ; $5d8b: $e1
    pop hl                                        ; $5d8c: $e1
    pop hl                                        ; $5d8d: $e1
    pop hl                                        ; $5d8e: $e1
    inc h                                         ; $5d8f: $24
    pop hl                                        ; $5d90: $e1
    pop hl                                        ; $5d91: $e1
    pop hl                                        ; $5d92: $e1
    pop hl                                        ; $5d93: $e1
    pop hl                                        ; $5d94: $e1
    rlca                                          ; $5d95: $07
    ld [hl-], a                                   ; $5d96: $32
    ld [bc], a                                    ; $5d97: $02
    ld [bc], a                                    ; $5d98: $02
    ld bc, $0202                                  ; $5d99: $01 $02 $02
    ld [bc], a                                    ; $5d9c: $02
    ld [bc], a                                    ; $5d9d: $02
    ld [bc], a                                    ; $5d9e: $02
    ld bc, $0202                                  ; $5d9f: $01 $02 $02
    ld [bc], a                                    ; $5da2: $02
    ld [bc], a                                    ; $5da3: $02
    ld [bc], a                                    ; $5da4: $02
    add d                                         ; $5da5: $82
    add d                                         ; $5da6: $82
    pop hl                                        ; $5da7: $e1
    pop hl                                        ; $5da8: $e1
    ld sp, hl                                     ; $5da9: $f9
    ld a, [$e1e1]                                 ; $5daa: $fa $e1 $e1
    pop hl                                        ; $5dad: $e1
    ld hl, sp-$1f                                 ; $5dae: $f8 $e1
    pop hl                                        ; $5db0: $e1
    pop hl                                        ; $5db1: $e1
    pop hl                                        ; $5db2: $e1
    inc sp                                        ; $5db3: $33
    inc [hl]                                      ; $5db4: $34
    pop hl                                        ; $5db5: $e1
    pop hl                                        ; $5db6: $e1
    ld [bc], a                                    ; $5db7: $02
    ld [bc], a                                    ; $5db8: $02
    ld bc, $0201                                  ; $5db9: $01 $01 $02
    ld [bc], a                                    ; $5dbc: $02
    ld [bc], a                                    ; $5dbd: $02
    ld bc, $0202                                  ; $5dbe: $01 $02 $02
    ld [bc], a                                    ; $5dc1: $02
    ld [bc], a                                    ; $5dc2: $02
    add d                                         ; $5dc3: $82
    add d                                         ; $5dc4: $82
    ld [bc], a                                    ; $5dc5: $02
    ld [bc], a                                    ; $5dc6: $02
    ei                                            ; $5dc7: $fb
    or $f7                                        ; $5dc8: $f6 $f7
    ld hl, sp-$07                                 ; $5dca: $f8 $f9
    ld a, [$f6fb]                                 ; $5dcc: $fa $fb $f6
    rst $30                                       ; $5dcf: $f7
    pop hl                                        ; $5dd0: $e1
    pop hl                                        ; $5dd1: $e1
    pop hl                                        ; $5dd2: $e1
    pop hl                                        ; $5dd3: $e1
    pop hl                                        ; $5dd4: $e1
    pop hl                                        ; $5dd5: $e1
    pop hl                                        ; $5dd6: $e1
    ld bc, $0101                                  ; $5dd7: $01 $01 $01
    ld bc, $0101                                  ; $5dda: $01 $01 $01
    ld bc, $0101                                  ; $5ddd: $01 $01 $01
    ld [bc], a                                    ; $5de0: $02
    ld [bc], a                                    ; $5de1: $02
    ld [bc], a                                    ; $5de2: $02
    ld [bc], a                                    ; $5de3: $02
    ld [bc], a                                    ; $5de4: $02
    ld [bc], a                                    ; $5de5: $02
    ld [bc], a                                    ; $5de6: $02
    ld d, b                                       ; $5de7: $50
    ld d, c                                       ; $5de8: $51
    ld d, d                                       ; $5de9: $52
    ld c, b                                       ; $5dea: $48
    ld c, c                                       ; $5deb: $49
    ld d, [hl]                                    ; $5dec: $56
    ld d, h                                       ; $5ded: $54
    pop hl                                        ; $5dee: $e1
    ld b, a                                       ; $5def: $47
    ld c, b                                       ; $5df0: $48
    pop hl                                        ; $5df1: $e1
    pop hl                                        ; $5df2: $e1
    pop hl                                        ; $5df3: $e1
    pop hl                                        ; $5df4: $e1
    pop hl                                        ; $5df5: $e1
    ld b, c                                       ; $5df6: $41
    ld bc, $0101                                  ; $5df7: $01 $01 $01
    ld bc, $0101                                  ; $5dfa: $01 $01 $01
    ld bc, $0102                                  ; $5dfd: $01 $02 $01
    ld bc, $0202                                  ; $5e00: $01 $02 $02
    ld [bc], a                                    ; $5e03: $02
    ld [bc], a                                    ; $5e04: $02
    ld [bc], a                                    ; $5e05: $02
    ld bc, $0849                                  ; $5e06: $01 $49 $08
    add hl, bc                                    ; $5e09: $09
    dec [hl]                                      ; $5e0a: $35
    pop hl                                        ; $5e0b: $e1

jr_08c_5e0c:
    ld a, [bc]                                    ; $5e0c: $0a
    dec bc                                        ; $5e0d: $0b
    add hl, sp                                    ; $5e0e: $39
    pop hl                                        ; $5e0f: $e1
    dec c                                         ; $5e10: $0d
    ld c, $3d                                     ; $5e11: $0e $3d
    pop hl                                        ; $5e13: $e1
    di                                            ; $5e14: $f3
    db $f4                                        ; $5e15: $f4
    push af                                       ; $5e16: $f5
    ld bc, $8282                                  ; $5e17: $01 $82 $82
    add d                                         ; $5e1a: $82
    ld [bc], a                                    ; $5e1b: $02
    add d                                         ; $5e1c: $82
    add d                                         ; $5e1d: $82
    add d                                         ; $5e1e: $82
    ld [bc], a                                    ; $5e1f: $02
    add d                                         ; $5e20: $82
    add d                                         ; $5e21: $82
    add d                                         ; $5e22: $82
    ld [bc], a                                    ; $5e23: $02
    adc d                                         ; $5e24: $8a
    adc d                                         ; $5e25: $8a
    adc d                                         ; $5e26: $8a
    ld [hl], $37                                  ; $5e27: $36 $37
    jr c, jr_08c_5e0c                             ; $5e29: $38 $e1

    ld a, [hl-]                                   ; $5e2b: $3a
    dec sp                                        ; $5e2c: $3b
    inc a                                         ; $5e2d: $3c
    pop hl                                        ; $5e2e: $e1
    ld a, $3f                                     ; $5e2f: $3e $3f
    ld b, b                                       ; $5e31: $40
    pop hl                                        ; $5e32: $e1
    or $f7                                        ; $5e33: $f6 $f7
    ld hl, sp-$1f                                 ; $5e35: $f8 $e1
    add d                                         ; $5e37: $82
    add d                                         ; $5e38: $82
    add d                                         ; $5e39: $82
    ld [bc], a                                    ; $5e3a: $02
    add d                                         ; $5e3b: $82
    add d                                         ; $5e3c: $82
    add d                                         ; $5e3d: $82
    ld [bc], a                                    ; $5e3e: $02
    add d                                         ; $5e3f: $82
    add d                                         ; $5e40: $82
    add d                                         ; $5e41: $82
    ld [bc], a                                    ; $5e42: $02
    adc d                                         ; $5e43: $8a
    adc d                                         ; $5e44: $8a
    adc d                                         ; $5e45: $8a
    ld [bc], a                                    ; $5e46: $02
    pop hl                                        ; $5e47: $e1
    pop hl                                        ; $5e48: $e1
    ld b, c                                       ; $5e49: $41
    pop hl                                        ; $5e4a: $e1
    pop hl                                        ; $5e4b: $e1
    pop hl                                        ; $5e4c: $e1
    pop hl                                        ; $5e4d: $e1
    pop hl                                        ; $5e4e: $e1
    pop hl                                        ; $5e4f: $e1
    pop hl                                        ; $5e50: $e1
    pop hl                                        ; $5e51: $e1
    pop hl                                        ; $5e52: $e1
    pop hl                                        ; $5e53: $e1
    pop hl                                        ; $5e54: $e1
    ld b, c                                       ; $5e55: $41
    pop hl                                        ; $5e56: $e1
    ld [bc], a                                    ; $5e57: $02
    ld [bc], a                                    ; $5e58: $02
    ld bc, $0202                                  ; $5e59: $01 $02 $02
    ld [bc], a                                    ; $5e5c: $02
    ld [bc], a                                    ; $5e5d: $02
    ld [bc], a                                    ; $5e5e: $02
    ld [bc], a                                    ; $5e5f: $02
    ld [bc], a                                    ; $5e60: $02
    ld [bc], a                                    ; $5e61: $02
    ld [bc], a                                    ; $5e62: $02
    ld [bc], a                                    ; $5e63: $02
    ld [bc], a                                    ; $5e64: $02
    ld bc, $e102                                  ; $5e65: $01 $02 $e1
    pop hl                                        ; $5e68: $e1
    pop hl                                        ; $5e69: $e1
    pop hl                                        ; $5e6a: $e1
    pop hl                                        ; $5e6b: $e1
    pop hl                                        ; $5e6c: $e1
    pop hl                                        ; $5e6d: $e1
    pop hl                                        ; $5e6e: $e1
    inc hl                                        ; $5e6f: $23
    inc h                                         ; $5e70: $24
    ei                                            ; $5e71: $fb
    or $f7                                        ; $5e72: $f6 $f7
    ld hl, sp+$04                                 ; $5e74: $f8 $04
    ld [bc], a                                    ; $5e76: $02
    ld [bc], a                                    ; $5e77: $02
    ld [bc], a                                    ; $5e78: $02
    ld [bc], a                                    ; $5e79: $02
    ld [bc], a                                    ; $5e7a: $02
    ld [bc], a                                    ; $5e7b: $02
    ld [bc], a                                    ; $5e7c: $02
    ld [bc], a                                    ; $5e7d: $02
    ld [bc], a                                    ; $5e7e: $02
    ld bc, $0101                                  ; $5e7f: $01 $01 $01
    ld bc, $0101                                  ; $5e82: $01 $01 $01
    ld bc, $e101                                  ; $5e85: $01 $01 $e1
    pop hl                                        ; $5e88: $e1
    pop hl                                        ; $5e89: $e1
    pop hl                                        ; $5e8a: $e1
    pop hl                                        ; $5e8b: $e1
    pop hl                                        ; $5e8c: $e1
    pop hl                                        ; $5e8d: $e1
    ld b, c                                       ; $5e8e: $41
    rst $30                                       ; $5e8f: $f7
    ld hl, sp-$07                                 ; $5e90: $f8 $f9
    ld a, [$0603]                                 ; $5e92: $fa $03 $06
    inc c                                         ; $5e95: $0c
    ld a, [c]                                     ; $5e96: $f2
    ld [bc], a                                    ; $5e97: $02
    ld [bc], a                                    ; $5e98: $02
    ld [bc], a                                    ; $5e99: $02
    ld [bc], a                                    ; $5e9a: $02
    ld [bc], a                                    ; $5e9b: $02
    ld [bc], a                                    ; $5e9c: $02
    ld [bc], a                                    ; $5e9d: $02
    ld bc, $0101                                  ; $5e9e: $01 $01 $01
    ld bc, $0101                                  ; $5ea1: $01 $01 $01
    ld bc, $0901                                  ; $5ea4: $01 $01 $09
    pop hl                                        ; $5ea7: $e1
    ld b, [hl]                                    ; $5ea8: $46
    ld b, a                                       ; $5ea9: $47
    ld d, e                                       ; $5eaa: $53
    pop hl                                        ; $5eab: $e1
    pop hl                                        ; $5eac: $e1
    ld d, h                                       ; $5ead: $54
    ld b, [hl]                                    ; $5eae: $46
    ei                                            ; $5eaf: $fb
    pop hl                                        ; $5eb0: $e1
    pop hl                                        ; $5eb1: $e1
    ld b, c                                       ; $5eb2: $41
    inc b                                         ; $5eb3: $04
    ld a, [$f6fb]                                 ; $5eb4: $fa $fb $f6
    ld [bc], a                                    ; $5eb7: $02
    ld bc, $0101                                  ; $5eb8: $01 $01 $01
    ld [bc], a                                    ; $5ebb: $02
    ld [bc], a                                    ; $5ebc: $02
    ld bc, $0101                                  ; $5ebd: $01 $01 $01
    ld [bc], a                                    ; $5ec0: $02
    ld [bc], a                                    ; $5ec1: $02
    ld bc, $0101                                  ; $5ec2: $01 $01 $01
    ld bc, $5501                                  ; $5ec5: $01 $01 $55
    ld d, [hl]                                    ; $5ec8: $56
    ld d, b                                       ; $5ec9: $50
    ld d, c                                       ; $5eca: $51
    ld b, a                                       ; $5ecb: $47
    ld c, b                                       ; $5ecc: $48
    ld c, c                                       ; $5ecd: $49
    ld c, d                                       ; $5ece: $4a
    ld d, h                                       ; $5ecf: $54
    ld b, [hl]                                    ; $5ed0: $46
    ld b, a                                       ; $5ed1: $47
    ld b, d                                       ; $5ed2: $42
    pop hl                                        ; $5ed3: $e1
    pop hl                                        ; $5ed4: $e1
    pop hl                                        ; $5ed5: $e1
    ld b, h                                       ; $5ed6: $44
    ld bc, $0101                                  ; $5ed7: $01 $01 $01
    ld bc, $0101                                  ; $5eda: $01 $01 $01
    ld bc, $0101                                  ; $5edd: $01 $01 $01
    ld bc, $0101                                  ; $5ee0: $01 $01 $01
    ld [bc], a                                    ; $5ee3: $02
    ld [bc], a                                    ; $5ee4: $02
    ld [bc], a                                    ; $5ee5: $02
    ld bc, $0603                                  ; $5ee6: $01 $03 $06
    inc c                                         ; $5ee9: $0c
    ld a, [c]                                     ; $5eea: $f2
    inc b                                         ; $5eeb: $04
    ld [bc], a                                    ; $5eec: $02
    inc bc                                        ; $5eed: $03
    ld b, $0c                                     ; $5eee: $06 $0c
    ld a, [c]                                     ; $5ef0: $f2
    ld sp, hl                                     ; $5ef1: $f9
    ld a, [$f6fb]                                 ; $5ef2: $fa $fb $f6
    rst $30                                       ; $5ef5: $f7
    pop hl                                        ; $5ef6: $e1
    ld bc, $0101                                  ; $5ef7: $01 $01 $01
    add hl, bc                                    ; $5efa: $09
    ld bc, $0101                                  ; $5efb: $01 $01 $01
    ld bc, $0901                                  ; $5efe: $01 $01 $09
    ld bc, $0101                                  ; $5f01: $01 $01 $01
    ld bc, $0201                                  ; $5f04: $01 $01 $02
    inc b                                         ; $5f07: $04
    ld [bc], a                                    ; $5f08: $02
    inc bc                                        ; $5f09: $03
    ld b, $0c                                     ; $5f0a: $06 $0c
    ld a, [c]                                     ; $5f0c: $f2
    inc b                                         ; $5f0d: $04
    ld [bc], a                                    ; $5f0e: $02
    ei                                            ; $5f0f: $fb
    ld b, $0c                                     ; $5f10: $06 $0c
    ld hl, sp-$07                                 ; $5f12: $f8 $f9
    ld a, [$f6fb]                                 ; $5f14: $fa $fb $f6
    ld bc, $0101                                  ; $5f17: $01 $01 $01
    ld bc, $0901                                  ; $5f1a: $01 $01 $09
    ld bc, $0101                                  ; $5f1d: $01 $01 $01
    ld bc, $0101                                  ; $5f20: $01 $01 $01
    ld bc, $0101                                  ; $5f23: $01 $01 $01
    ld bc, $f20c                                  ; $5f26: $01 $0c $f2
    inc b                                         ; $5f29: $04
    ld [bc], a                                    ; $5f2a: $02
    inc bc                                        ; $5f2b: $03
    or $f7                                        ; $5f2c: $f6 $f7
    ld hl, sp-$07                                 ; $5f2e: $f8 $f9
    ld a, [$e1e1]                                 ; $5f30: $fa $e1 $e1
    ld b, c                                       ; $5f33: $41
    pop hl                                        ; $5f34: $e1
    pop hl                                        ; $5f35: $e1
    rlca                                          ; $5f36: $07
    ld bc, $0109                                  ; $5f37: $01 $09 $01
    ld bc, $0101                                  ; $5f3a: $01 $01 $01
    ld bc, $0101                                  ; $5f3d: $01 $01 $01
    ld bc, $0202                                  ; $5f40: $01 $02 $02
    ld bc, $0202                                  ; $5f43: $01 $02 $02
    add d                                         ; $5f46: $82
    ei                                            ; $5f47: $fb
    or $e1                                        ; $5f48: $f6 $e1
    pop hl                                        ; $5f4a: $e1
    ld sp, hl                                     ; $5f4b: $f9
    ld a, [$f6fb]                                 ; $5f4c: $fa $fb $f6
    pop hl                                        ; $5f4f: $e1
    pop hl                                        ; $5f50: $e1
    pop hl                                        ; $5f51: $e1
    pop hl                                        ; $5f52: $e1
    ld [hl-], a                                   ; $5f53: $32
    inc sp                                        ; $5f54: $33
    inc [hl]                                      ; $5f55: $34
    pop hl                                        ; $5f56: $e1
    ld bc, $0201                                  ; $5f57: $01 $01 $02
    ld [bc], a                                    ; $5f5a: $02
    ld bc, $0101                                  ; $5f5b: $01 $01 $01
    ld bc, $0202                                  ; $5f5e: $01 $02 $02
    ld [bc], a                                    ; $5f61: $02
    ld [bc], a                                    ; $5f62: $02
    add d                                         ; $5f63: $82
    add d                                         ; $5f64: $82
    add d                                         ; $5f65: $82
    ld [bc], a                                    ; $5f66: $02
    ld sp, hl                                     ; $5f67: $f9
    ld a, [$2423]                                 ; $5f68: $fa $23 $24
    ld b, d                                       ; $5f6b: $42
    ld b, e                                       ; $5f6c: $43
    pop hl                                        ; $5f6d: $e1
    pop hl                                        ; $5f6e: $e1
    ld b, h                                       ; $5f6f: $44
    ld b, l                                       ; $5f70: $45
    pop hl                                        ; $5f71: $e1
    pop hl                                        ; $5f72: $e1
    pop hl                                        ; $5f73: $e1
    pop hl                                        ; $5f74: $e1
    pop hl                                        ; $5f75: $e1
    pop hl                                        ; $5f76: $e1
    ld bc, $0101                                  ; $5f77: $01 $01 $01
    ld bc, $0101                                  ; $5f7a: $01 $01 $01
    ld [bc], a                                    ; $5f7d: $02
    ld [bc], a                                    ; $5f7e: $02
    ld bc, $0201                                  ; $5f7f: $01 $01 $02
    ld [bc], a                                    ; $5f82: $02
    ld [bc], a                                    ; $5f83: $02
    ld [bc], a                                    ; $5f84: $02
    ld [bc], a                                    ; $5f85: $02
    ld [bc], a                                    ; $5f86: $02
    pop hl                                        ; $5f87: $e1
    pop hl                                        ; $5f88: $e1
    pop hl                                        ; $5f89: $e1
    pop hl                                        ; $5f8a: $e1
    pop hl                                        ; $5f8b: $e1
    ld b, c                                       ; $5f8c: $41
    pop hl                                        ; $5f8d: $e1
    pop hl                                        ; $5f8e: $e1
    pop hl                                        ; $5f8f: $e1
    pop hl                                        ; $5f90: $e1
    pop hl                                        ; $5f91: $e1
    pop hl                                        ; $5f92: $e1
    pop hl                                        ; $5f93: $e1
    pop hl                                        ; $5f94: $e1
    pop hl                                        ; $5f95: $e1
    pop hl                                        ; $5f96: $e1
    ld [bc], a                                    ; $5f97: $02
    ld [bc], a                                    ; $5f98: $02
    ld [bc], a                                    ; $5f99: $02
    ld [bc], a                                    ; $5f9a: $02
    ld [bc], a                                    ; $5f9b: $02
    ld bc, $0202                                  ; $5f9c: $01 $02 $02
    ld [bc], a                                    ; $5f9f: $02
    ld [bc], a                                    ; $5fa0: $02
    ld [bc], a                                    ; $5fa1: $02
    ld [bc], a                                    ; $5fa2: $02
    ld [bc], a                                    ; $5fa3: $02
    ld [bc], a                                    ; $5fa4: $02
    ld [bc], a                                    ; $5fa5: $02
    ld [bc], a                                    ; $5fa6: $02
    pop hl                                        ; $5fa7: $e1
    pop hl                                        ; $5fa8: $e1
    ld [$e109], sp                                ; $5fa9: $08 $09 $e1
    pop hl                                        ; $5fac: $e1
    ld a, [bc]                                    ; $5fad: $0a
    dec bc                                        ; $5fae: $0b
    pop hl                                        ; $5faf: $e1
    pop hl                                        ; $5fb0: $e1
    dec c                                         ; $5fb1: $0d
    ld c, $e1                                     ; $5fb2: $0e $e1
    pop hl                                        ; $5fb4: $e1
    di                                            ; $5fb5: $f3
    db $f4                                        ; $5fb6: $f4
    ld [bc], a                                    ; $5fb7: $02
    ld [bc], a                                    ; $5fb8: $02
    add d                                         ; $5fb9: $82
    add d                                         ; $5fba: $82
    ld [bc], a                                    ; $5fbb: $02
    ld [bc], a                                    ; $5fbc: $02
    add d                                         ; $5fbd: $82
    add d                                         ; $5fbe: $82
    ld [bc], a                                    ; $5fbf: $02
    ld [bc], a                                    ; $5fc0: $02
    add d                                         ; $5fc1: $82
    add d                                         ; $5fc2: $82
    ld [bc], a                                    ; $5fc3: $02
    ld [bc], a                                    ; $5fc4: $02
    adc d                                         ; $5fc5: $8a
    adc d                                         ; $5fc6: $8a
    dec [hl]                                      ; $5fc7: $35
    ld [hl], $37                                  ; $5fc8: $36 $37
    jr c, @+$3b                                   ; $5fca: $38 $39

    ld a, [hl-]                                   ; $5fcc: $3a
    dec sp                                        ; $5fcd: $3b
    inc a                                         ; $5fce: $3c
    dec a                                         ; $5fcf: $3d
    ld a, $3f                                     ; $5fd0: $3e $3f
    ld b, b                                       ; $5fd2: $40
    push af                                       ; $5fd3: $f5
    or $f7                                        ; $5fd4: $f6 $f7
    ld hl, sp-$7e                                 ; $5fd6: $f8 $82
    add d                                         ; $5fd8: $82
    add d                                         ; $5fd9: $82
    add d                                         ; $5fda: $82
    add d                                         ; $5fdb: $82
    add d                                         ; $5fdc: $82
    add d                                         ; $5fdd: $82
    add d                                         ; $5fde: $82
    add d                                         ; $5fdf: $82
    add d                                         ; $5fe0: $82
    add d                                         ; $5fe1: $82
    add d                                         ; $5fe2: $82
    adc d                                         ; $5fe3: $8a
    adc d                                         ; $5fe4: $8a
    adc d                                         ; $5fe5: $8a
    adc d                                         ; $5fe6: $8a
    pop hl                                        ; $5fe7: $e1
    pop hl                                        ; $5fe8: $e1
    pop hl                                        ; $5fe9: $e1
    pop hl                                        ; $5fea: $e1
    pop hl                                        ; $5feb: $e1
    inc hl                                        ; $5fec: $23
    inc h                                         ; $5fed: $24
    ld c, d                                       ; $5fee: $4a
    pop hl                                        ; $5fef: $e1
    ld b, [hl]                                    ; $5ff0: $46
    ld b, a                                       ; $5ff1: $47
    ld c, b                                       ; $5ff2: $48
    ld c, c                                       ; $5ff3: $49
    ld c, d                                       ; $5ff4: $4a
    ld d, b                                       ; $5ff5: $50
    ld d, c                                       ; $5ff6: $51
    ld [bc], a                                    ; $5ff7: $02
    ld [bc], a                                    ; $5ff8: $02
    ld [bc], a                                    ; $5ff9: $02
    ld [bc], a                                    ; $5ffa: $02
    ld [bc], a                                    ; $5ffb: $02
    ld bc, $0101                                  ; $5ffc: $01 $01 $01
    ld [bc], a                                    ; $5fff: $02
    ld bc, $0101                                  ; $6000: $01 $01 $01
    ld bc, $0101                                  ; $6003: $01 $01 $01
    ld bc, $4847                                  ; $6006: $01 $47 $48
    ld c, c                                       ; $6009: $49
    ld c, d                                       ; $600a: $4a
    ld d, h                                       ; $600b: $54
    ld b, [hl]                                    ; $600c: $46
    ld b, a                                       ; $600d: $47
    pop hl                                        ; $600e: $e1
    ld c, c                                       ; $600f: $49
    ld c, d                                       ; $6010: $4a
    pop hl                                        ; $6011: $e1
    pop hl                                        ; $6012: $e1
    ld b, a                                       ; $6013: $47
    pop hl                                        ; $6014: $e1
    pop hl                                        ; $6015: $e1
    pop hl                                        ; $6016: $e1
    ld bc, $0101                                  ; $6017: $01 $01 $01
    ld bc, $0101                                  ; $601a: $01 $01 $01
    ld bc, $0102                                  ; $601d: $01 $02 $01
    ld bc, $0202                                  ; $6020: $01 $02 $02
    ld bc, $0202                                  ; $6023: $01 $02 $02
    ld [bc], a                                    ; $6026: $02
    pop hl                                        ; $6027: $e1
    pop hl                                        ; $6028: $e1
    pop hl                                        ; $6029: $e1
    pop hl                                        ; $602a: $e1
    pop hl                                        ; $602b: $e1
    pop hl                                        ; $602c: $e1
    pop hl                                        ; $602d: $e1
    pop hl                                        ; $602e: $e1
    ld b, d                                       ; $602f: $42
    ld b, e                                       ; $6030: $43
    pop hl                                        ; $6031: $e1
    pop hl                                        ; $6032: $e1
    ld b, h                                       ; $6033: $44
    ld b, l                                       ; $6034: $45
    ei                                            ; $6035: $fb
    or $02                                        ; $6036: $f6 $02
    ld [bc], a                                    ; $6038: $02
    ld [bc], a                                    ; $6039: $02
    ld [bc], a                                    ; $603a: $02
    ld [bc], a                                    ; $603b: $02
    ld [bc], a                                    ; $603c: $02
    ld [bc], a                                    ; $603d: $02
    ld [bc], a                                    ; $603e: $02
    ld bc, $0201                                  ; $603f: $01 $01 $02
    ld [bc], a                                    ; $6042: $02
    ld bc, $0101                                  ; $6043: $01 $01 $01
    ld bc, $faf9                                  ; $6046: $01 $f9 $fa
    pop hl                                        ; $6049: $e1
    pop hl                                        ; $604a: $e1
    ei                                            ; $604b: $fb
    db $fc                                        ; $604c: $fc
    pop hl                                        ; $604d: $e1
    pop hl                                        ; $604e: $e1
    pop hl                                        ; $604f: $e1
    ld a, [$f6fb]                                 ; $6050: $fa $fb $f6
    rst $30                                       ; $6053: $f7
    ld a, [c]                                     ; $6054: $f2
    inc b                                         ; $6055: $04
    ld a, [$0b0b]                                 ; $6056: $fa $0b $0b
    ld [bc], a                                    ; $6059: $02
    ld [bc], a                                    ; $605a: $02
    dec bc                                        ; $605b: $0b
    dec bc                                        ; $605c: $0b
    ld [bc], a                                    ; $605d: $02
    ld [bc], a                                    ; $605e: $02
    ld [bc], a                                    ; $605f: $02
    ld bc, $0101                                  ; $6060: $01 $01 $01
    ld bc, $0109                                  ; $6063: $01 $09 $01
    ld bc, $0d47                                  ; $6066: $01 $47 $0d
    ld c, $3d                                     ; $6069: $0e $3d
    ld d, h                                       ; $606b: $54
    di                                            ; $606c: $f3
    db $f4                                        ; $606d: $f4
    push af                                       ; $606e: $f5
    ld b, e                                       ; $606f: $43
    pop hl                                        ; $6070: $e1
    pop hl                                        ; $6071: $e1
    ld sp, hl                                     ; $6072: $f9
    ld b, l                                       ; $6073: $45
    pop hl                                        ; $6074: $e1
    pop hl                                        ; $6075: $e1
    ei                                            ; $6076: $fb
    ld bc, $8282                                  ; $6077: $01 $82 $82
    add d                                         ; $607a: $82
    ld bc, $8a8a                                  ; $607b: $01 $8a $8a
    adc d                                         ; $607e: $8a
    ld bc, $0202                                  ; $607f: $01 $02 $02
    dec bc                                        ; $6082: $0b
    ld bc, $0202                                  ; $6083: $01 $02 $02
    dec bc                                        ; $6086: $0b
    ld a, $3f                                     ; $6087: $3e $3f
    ld b, b                                       ; $6089: $40
    pop hl                                        ; $608a: $e1
    or $f7                                        ; $608b: $f6 $f7
    ld hl, sp-$1f                                 ; $608d: $f8 $e1
    ld a, [$e1e1]                                 ; $608f: $fa $e1 $e1
    pop hl                                        ; $6092: $e1
    db $fc                                        ; $6093: $fc
    pop hl                                        ; $6094: $e1
    pop hl                                        ; $6095: $e1
    ld b, c                                       ; $6096: $41
    add d                                         ; $6097: $82
    add d                                         ; $6098: $82
    add d                                         ; $6099: $82
    ld [bc], a                                    ; $609a: $02
    adc d                                         ; $609b: $8a
    adc d                                         ; $609c: $8a
    adc d                                         ; $609d: $8a
    ld [bc], a                                    ; $609e: $02
    dec bc                                        ; $609f: $0b
    ld [bc], a                                    ; $60a0: $02
    ld [bc], a                                    ; $60a1: $02
    ld [bc], a                                    ; $60a2: $02
    dec bc                                        ; $60a3: $0b
    ld [bc], a                                    ; $60a4: $02
    ld [bc], a                                    ; $60a5: $02
    ld bc, $e1e1                                  ; $60a6: $01 $e1 $e1
    pop hl                                        ; $60a9: $e1
    pop hl                                        ; $60aa: $e1
    ld b, c                                       ; $60ab: $41
    pop hl                                        ; $60ac: $e1
    pop hl                                        ; $60ad: $e1
    pop hl                                        ; $60ae: $e1
    pop hl                                        ; $60af: $e1
    pop hl                                        ; $60b0: $e1
    ld b, c                                       ; $60b1: $41
    pop hl                                        ; $60b2: $e1
    pop hl                                        ; $60b3: $e1
    pop hl                                        ; $60b4: $e1
    pop hl                                        ; $60b5: $e1
    pop hl                                        ; $60b6: $e1
    ld [bc], a                                    ; $60b7: $02
    ld [bc], a                                    ; $60b8: $02
    ld [bc], a                                    ; $60b9: $02
    ld [bc], a                                    ; $60ba: $02
    ld bc, $0202                                  ; $60bb: $01 $02 $02
    ld [bc], a                                    ; $60be: $02
    ld [bc], a                                    ; $60bf: $02
    ld [bc], a                                    ; $60c0: $02
    ld bc, $0202                                  ; $60c1: $01 $02 $02
    ld [bc], a                                    ; $60c4: $02
    ld [bc], a                                    ; $60c5: $02
    ld [bc], a                                    ; $60c6: $02
    push de                                       ; $60c7: $d5
    sub $d7                                       ; $60c8: $d6 $d7
    ret c                                         ; $60ca: $d8

    push de                                       ; $60cb: $d5
    sub $d7                                       ; $60cc: $d6 $d7
    ret c                                         ; $60ce: $d8

    push de                                       ; $60cf: $d5
    ld [c], a                                     ; $60d0: $e2
    db $e3                                        ; $60d1: $e3
    db $e4                                        ; $60d2: $e4
    push de                                       ; $60d3: $d5
    push hl                                       ; $60d4: $e5
    and $e7                                       ; $60d5: $e6 $e7
    dec bc                                        ; $60d7: $0b
    dec bc                                        ; $60d8: $0b
    dec bc                                        ; $60d9: $0b
    dec bc                                        ; $60da: $0b
    dec bc                                        ; $60db: $0b
    dec bc                                        ; $60dc: $0b
    dec bc                                        ; $60dd: $0b
    dec bc                                        ; $60de: $0b
    dec bc                                        ; $60df: $0b
    dec bc                                        ; $60e0: $0b
    dec bc                                        ; $60e1: $0b
    dec bc                                        ; $60e2: $0b
    dec bc                                        ; $60e3: $0b
    dec bc                                        ; $60e4: $0b
    dec bc                                        ; $60e5: $0b
    dec bc                                        ; $60e6: $0b
    pop hl                                        ; $60e7: $e1
    pop hl                                        ; $60e8: $e1
    pop hl                                        ; $60e9: $e1
    pop hl                                        ; $60ea: $e1
    pop hl                                        ; $60eb: $e1
    pop hl                                        ; $60ec: $e1
    pop hl                                        ; $60ed: $e1
    pop hl                                        ; $60ee: $e1
    pop hl                                        ; $60ef: $e1
    pop hl                                        ; $60f0: $e1
    pop hl                                        ; $60f1: $e1
    pop hl                                        ; $60f2: $e1
    pop hl                                        ; $60f3: $e1
    pop hl                                        ; $60f4: $e1
    pop hl                                        ; $60f5: $e1
    ld b, c                                       ; $60f6: $41
    ld [bc], a                                    ; $60f7: $02
    ld [bc], a                                    ; $60f8: $02
    ld [bc], a                                    ; $60f9: $02
    ld [bc], a                                    ; $60fa: $02
    ld [bc], a                                    ; $60fb: $02
    ld [bc], a                                    ; $60fc: $02
    ld [bc], a                                    ; $60fd: $02
    ld [bc], a                                    ; $60fe: $02
    ld [bc], a                                    ; $60ff: $02
    ld [bc], a                                    ; $6100: $02
    ld [bc], a                                    ; $6101: $02
    ld [bc], a                                    ; $6102: $02
    ld [bc], a                                    ; $6103: $02
    ld [bc], a                                    ; $6104: $02
    ld [bc], a                                    ; $6105: $02
    ld bc, $e1e1                                  ; $6106: $01 $e1 $e1
    pop hl                                        ; $6109: $e1
    pop hl                                        ; $610a: $e1
    pop hl                                        ; $610b: $e1
    pop hl                                        ; $610c: $e1
    pop hl                                        ; $610d: $e1
    pop hl                                        ; $610e: $e1
    pop hl                                        ; $610f: $e1
    pop hl                                        ; $6110: $e1
    ld b, c                                       ; $6111: $41
    pop hl                                        ; $6112: $e1
    pop hl                                        ; $6113: $e1
    pop hl                                        ; $6114: $e1
    pop hl                                        ; $6115: $e1
    pop hl                                        ; $6116: $e1
    ld [bc], a                                    ; $6117: $02
    ld [bc], a                                    ; $6118: $02
    ld [bc], a                                    ; $6119: $02
    ld [bc], a                                    ; $611a: $02
    ld [bc], a                                    ; $611b: $02
    ld [bc], a                                    ; $611c: $02
    ld [bc], a                                    ; $611d: $02
    ld [bc], a                                    ; $611e: $02
    ld [bc], a                                    ; $611f: $02
    ld [bc], a                                    ; $6120: $02
    ld bc, $0202                                  ; $6121: $01 $02 $02
    ld [bc], a                                    ; $6124: $02
    ld [bc], a                                    ; $6125: $02
    ld [bc], a                                    ; $6126: $02
    push de                                       ; $6127: $d5
    sub $d7                                       ; $6128: $d6 $d7
    ret c                                         ; $612a: $d8

    push de                                       ; $612b: $d5
    ld [c], a                                     ; $612c: $e2
    db $e3                                        ; $612d: $e3
    db $e4                                        ; $612e: $e4
    push de                                       ; $612f: $d5
    ld [c], a                                     ; $6130: $e2
    db $e3                                        ; $6131: $e3
    db $e4                                        ; $6132: $e4
    push de                                       ; $6133: $d5
    push hl                                       ; $6134: $e5
    and $e7                                       ; $6135: $e6 $e7
    dec bc                                        ; $6137: $0b
    dec bc                                        ; $6138: $0b
    dec bc                                        ; $6139: $0b
    dec bc                                        ; $613a: $0b
    dec bc                                        ; $613b: $0b
    dec bc                                        ; $613c: $0b
    dec bc                                        ; $613d: $0b
    dec bc                                        ; $613e: $0b
    dec bc                                        ; $613f: $0b
    dec bc                                        ; $6140: $0b
    dec bc                                        ; $6141: $0b
    dec bc                                        ; $6142: $0b
    dec bc                                        ; $6143: $0b
    dec bc                                        ; $6144: $0b
    dec bc                                        ; $6145: $0b
    dec bc                                        ; $6146: $0b
    pop hl                                        ; $6147: $e1
    pop hl                                        ; $6148: $e1
    pop hl                                        ; $6149: $e1
    pop hl                                        ; $614a: $e1
    pop hl                                        ; $614b: $e1
    pop hl                                        ; $614c: $e1
    ld b, d                                       ; $614d: $42
    ld b, e                                       ; $614e: $43
    rst $30                                       ; $614f: $f7
    pop hl                                        ; $6150: $e1
    ld b, h                                       ; $6151: $44
    ld b, l                                       ; $6152: $45
    ei                                            ; $6153: $fb
    or $f7                                        ; $6154: $f6 $f7
    ld hl, sp+$02                                 ; $6156: $f8 $02
    ld [bc], a                                    ; $6158: $02
    ld [bc], a                                    ; $6159: $02
    ld [bc], a                                    ; $615a: $02
    ld [bc], a                                    ; $615b: $02
    ld [bc], a                                    ; $615c: $02
    ld bc, $0101                                  ; $615d: $01 $01 $01
    ld [bc], a                                    ; $6160: $02
    ld bc, $0101                                  ; $6161: $01 $01 $01
    ld bc, $0101                                  ; $6164: $01 $01 $01
    pop hl                                        ; $6167: $e1
    pop hl                                        ; $6168: $e1
    ei                                            ; $6169: $fb
    inc hl                                        ; $616a: $23
    pop hl                                        ; $616b: $e1
    ld hl, sp-$07                                 ; $616c: $f8 $f9
    pop hl                                        ; $616e: $e1
    ei                                            ; $616f: $fb
    or $f7                                        ; $6170: $f6 $f7
    ld hl, sp-$07                                 ; $6172: $f8 $f9
    ld a, [$f603]                                 ; $6174: $fa $03 $f6
    ld [bc], a                                    ; $6177: $02
    ld [bc], a                                    ; $6178: $02
    ld bc, $0201                                  ; $6179: $01 $01 $02
    ld bc, $0201                                  ; $617c: $01 $01 $02
    ld bc, $0101                                  ; $617f: $01 $01 $01
    ld bc, $0101                                  ; $6182: $01 $01 $01
    ld bc, $2401                                  ; $6185: $01 $01 $24
    jp nc, $d4d3                                  ; $6188: $d2 $d3 $d4

    pop hl                                        ; $618b: $e1
    rst $08                                       ; $618c: $cf
    ret nc                                        ; $618d: $d0

    pop de                                        ; $618e: $d1
    pop hl                                        ; $618f: $e1
    jp nc, $d4d3                                  ; $6190: $d2 $d3 $d4

    pop hl                                        ; $6193: $e1
    rst $08                                       ; $6194: $cf
    ret nc                                        ; $6195: $d0

    pop de                                        ; $6196: $d1
    ld bc, $0f0f                                  ; $6197: $01 $0f $0f
    rrca                                          ; $619a: $0f
    ld [bc], a                                    ; $619b: $02
    rrca                                          ; $619c: $0f
    rrca                                          ; $619d: $0f
    rrca                                          ; $619e: $0f
    ld [bc], a                                    ; $619f: $02
    rrca                                          ; $61a0: $0f
    rrca                                          ; $61a1: $0f
    rrca                                          ; $61a2: $0f
    ld [bc], a                                    ; $61a3: $02
    rrca                                          ; $61a4: $0f
    rrca                                          ; $61a5: $0f
    rrca                                          ; $61a6: $0f
    db $d3                                        ; $61a7: $d3
    call nc, $e1e1                                ; $61a8: $d4 $e1 $e1
    rst $10                                       ; $61ab: $d7
    ret c                                         ; $61ac: $d8

    ld [c], a                                     ; $61ad: $e2
    pop hl                                        ; $61ae: $e1
    db $db                                        ; $61af: $db
    call c, $e1e4                                 ; $61b0: $dc $e4 $e1
    rst $18                                       ; $61b3: $df
    ldh [$e8], a                                  ; $61b4: $e0 $e8
    pop hl                                        ; $61b6: $e1
    add d                                         ; $61b7: $82
    add d                                         ; $61b8: $82
    ld [bc], a                                    ; $61b9: $02
    ld [bc], a                                    ; $61ba: $02
    add d                                         ; $61bb: $82
    add d                                         ; $61bc: $82
    add d                                         ; $61bd: $82
    ld [bc], a                                    ; $61be: $02
    add d                                         ; $61bf: $82
    add d                                         ; $61c0: $82
    add d                                         ; $61c1: $82
    ld [bc], a                                    ; $61c2: $02
    add d                                         ; $61c3: $82
    add d                                         ; $61c4: $82
    add d                                         ; $61c5: $82
    ld [bc], a                                    ; $61c6: $02
    ret c                                         ; $61c7: $d8

    ld [c], a                                     ; $61c8: $e2
    pop hl                                        ; $61c9: $e1
    ld b, h                                       ; $61ca: $44
    call c, $e1e4                                 ; $61cb: $dc $e4 $e1
    pop hl                                        ; $61ce: $e1
    ldh [$e8], a                                  ; $61cf: $e0 $e8
    pop hl                                        ; $61d1: $e1
    ld hl, sp-$1f                                 ; $61d2: $f8 $e1
    pop hl                                        ; $61d4: $e1
    ei                                            ; $61d5: $fb
    or $82                                        ; $61d6: $f6 $82
    add d                                         ; $61d8: $82
    ld [bc], a                                    ; $61d9: $02
    ld bc, $8282                                  ; $61da: $01 $82 $82
    ld [bc], a                                    ; $61dd: $02
    ld [bc], a                                    ; $61de: $02
    add d                                         ; $61df: $82
    add d                                         ; $61e0: $82
    ld [bc], a                                    ; $61e1: $02
    ld bc, $0202                                  ; $61e2: $01 $02 $02
    ld bc, $4501                                  ; $61e5: $01 $01 $45
    pop hl                                        ; $61e8: $e1
    pop hl                                        ; $61e9: $e1
    ld b, [hl]                                    ; $61ea: $46
    ei                                            ; $61eb: $fb
    or $e1                                        ; $61ec: $f6 $e1
    ld b, c                                       ; $61ee: $41
    ld sp, hl                                     ; $61ef: $f9
    ld a, [$f6fb]                                 ; $61f0: $fa $fb $f6
    rst $30                                       ; $61f3: $f7
    ld hl, sp-$07                                 ; $61f4: $f8 $f9
    ld a, [$0201]                                 ; $61f6: $fa $01 $02
    ld [bc], a                                    ; $61f9: $02
    ld bc, $0101                                  ; $61fa: $01 $01 $01
    ld [bc], a                                    ; $61fd: $02
    ld bc, $0101                                  ; $61fe: $01 $01 $01
    ld bc, $0101                                  ; $6201: $01 $01 $01
    ld bc, $0101                                  ; $6204: $01 $01 $01
    db $eb                                        ; $6207: $eb
    pop hl                                        ; $6208: $e1
    pop hl                                        ; $6209: $e1
    pop hl                                        ; $620a: $e1
    pop hl                                        ; $620b: $e1
    pop hl                                        ; $620c: $e1
    pop hl                                        ; $620d: $e1
    jp hl                                         ; $620e: $e9


    ld [c], a                                     ; $620f: $e2
    pop hl                                        ; $6210: $e1
    pop hl                                        ; $6211: $e1
    ld [$e1e4], a                                 ; $6212: $ea $e4 $e1
    pop hl                                        ; $6215: $e1
    db $ec                                        ; $6216: $ec
    inc bc                                        ; $6217: $03
    ld [bc], a                                    ; $6218: $02
    ld [bc], a                                    ; $6219: $02
    ld [bc], a                                    ; $621a: $02
    ld [bc], a                                    ; $621b: $02
    ld [bc], a                                    ; $621c: $02
    ld [bc], a                                    ; $621d: $02
    add d                                         ; $621e: $82
    add d                                         ; $621f: $82
    ld [bc], a                                    ; $6220: $02
    ld [bc], a                                    ; $6221: $02
    add d                                         ; $6222: $82
    add d                                         ; $6223: $82
    ld [bc], a                                    ; $6224: $02
    ld [bc], a                                    ; $6225: $02
    add d                                         ; $6226: $82
    pop hl                                        ; $6227: $e1
    ld hl, sp-$07                                 ; $6228: $f8 $f9
    pop hl                                        ; $622a: $e1
    pop hl                                        ; $622b: $e1
    pop hl                                        ; $622c: $e1
    pop hl                                        ; $622d: $e1
    pop hl                                        ; $622e: $e1
    pop hl                                        ; $622f: $e1
    pop hl                                        ; $6230: $e1
    pop hl                                        ; $6231: $e1
    pop hl                                        ; $6232: $e1
    pop hl                                        ; $6233: $e1
    pop hl                                        ; $6234: $e1
    pop hl                                        ; $6235: $e1
    pop hl                                        ; $6236: $e1
    ld [bc], a                                    ; $6237: $02
    ld bc, $0201                                  ; $6238: $01 $01 $02
    ld [bc], a                                    ; $623b: $02
    ld [bc], a                                    ; $623c: $02
    ld [bc], a                                    ; $623d: $02
    ld [bc], a                                    ; $623e: $02
    ld [bc], a                                    ; $623f: $02
    ld [bc], a                                    ; $6240: $02
    ld [bc], a                                    ; $6241: $02
    ld [bc], a                                    ; $6242: $02
    ld [bc], a                                    ; $6243: $02
    ld [bc], a                                    ; $6244: $02
    ld [bc], a                                    ; $6245: $02
    ld [bc], a                                    ; $6246: $02
    pop hl                                        ; $6247: $e1
    pop hl                                        ; $6248: $e1
    pop hl                                        ; $6249: $e1
    pop hl                                        ; $624a: $e1
    pop hl                                        ; $624b: $e1
    di                                            ; $624c: $f3
    pop hl                                        ; $624d: $e1
    inc hl                                        ; $624e: $23
    push af                                       ; $624f: $f5
    db $f4                                        ; $6250: $f4
    push af                                       ; $6251: $f5
    pop hl                                        ; $6252: $e1
    db $e3                                        ; $6253: $e3
    db $dd                                        ; $6254: $dd
    nop                                           ; $6255: $00
    pop hl                                        ; $6256: $e1
    ld [bc], a                                    ; $6257: $02
    ld [bc], a                                    ; $6258: $02
    ld [bc], a                                    ; $6259: $02
    ld [bc], a                                    ; $625a: $02
    ld [bc], a                                    ; $625b: $02
    add d                                         ; $625c: $82
    ld [bc], a                                    ; $625d: $02
    ld bc, $82a2                                  ; $625e: $01 $a2 $82
    add d                                         ; $6261: $82
    ld [bc], a                                    ; $6262: $02
    add d                                         ; $6263: $82
    add d                                         ; $6264: $82
    add d                                         ; $6265: $82
    ld [bc], a                                    ; $6266: $02
    add sp, -$0d                                  ; $6267: $e8 $f3
    pop hl                                        ; $6269: $e1
    pop hl                                        ; $626a: $e1
    push af                                       ; $626b: $f5
    db $f4                                        ; $626c: $f4
    push af                                       ; $626d: $f5
    pop hl                                        ; $626e: $e1
    db $e3                                        ; $626f: $e3
    db $dd                                        ; $6270: $dd
    nop                                           ; $6271: $00
    pop hl                                        ; $6272: $e1
    push hl                                       ; $6273: $e5
    and $e7                                       ; $6274: $e6 $e7
    pop hl                                        ; $6276: $e1
    add d                                         ; $6277: $82
    add d                                         ; $6278: $82

Jump_08c_6279:
    ld [bc], a                                    ; $6279: $02
    ld [bc], a                                    ; $627a: $02
    and d                                         ; $627b: $a2
    add d                                         ; $627c: $82
    add d                                         ; $627d: $82
    ld [bc], a                                    ; $627e: $02
    add d                                         ; $627f: $82
    add d                                         ; $6280: $82
    add d                                         ; $6281: $82
    ld [bc], a                                    ; $6282: $02
    add d                                         ; $6283: $82
    add d                                         ; $6284: $82
    add d                                         ; $6285: $82
    ld [bc], a                                    ; $6286: $02
    pop hl                                        ; $6287: $e1
    db $eb                                        ; $6288: $eb
    pop hl                                        ; $6289: $e1
    pop hl                                        ; $628a: $e1
    pop hl                                        ; $628b: $e1
    pop hl                                        ; $628c: $e1
    pop hl                                        ; $628d: $e1
    pop hl                                        ; $628e: $e1
    pop hl                                        ; $628f: $e1
    pop hl                                        ; $6290: $e1
    pop hl                                        ; $6291: $e1
    pop hl                                        ; $6292: $e1
    pop hl                                        ; $6293: $e1
    pop hl                                        ; $6294: $e1
    pop hl                                        ; $6295: $e1
    pop hl                                        ; $6296: $e1
    ld [bc], a                                    ; $6297: $02
    inc bc                                        ; $6298: $03
    ld [bc], a                                    ; $6299: $02
    ld [bc], a                                    ; $629a: $02
    ld [bc], a                                    ; $629b: $02
    ld [bc], a                                    ; $629c: $02
    ld [bc], a                                    ; $629d: $02
    ld [bc], a                                    ; $629e: $02
    ld [bc], a                                    ; $629f: $02
    ld [bc], a                                    ; $62a0: $02
    ld [bc], a                                    ; $62a1: $02
    ld [bc], a                                    ; $62a2: $02
    ld [bc], a                                    ; $62a3: $02
    ld [bc], a                                    ; $62a4: $02
    ld [bc], a                                    ; $62a5: $02
    ld [bc], a                                    ; $62a6: $02
    ld b, c                                       ; $62a7: $41
    pop hl                                        ; $62a8: $e1
    pop hl                                        ; $62a9: $e1
    pop hl                                        ; $62aa: $e1
    pop hl                                        ; $62ab: $e1
    pop hl                                        ; $62ac: $e1
    pop hl                                        ; $62ad: $e1
    rrca                                          ; $62ae: $0f
    pop hl                                        ; $62af: $e1
    pop hl                                        ; $62b0: $e1
    pop hl                                        ; $62b1: $e1
    jp hl                                         ; $62b2: $e9


    pop hl                                        ; $62b3: $e1
    ld b, c                                       ; $62b4: $41
    pop hl                                        ; $62b5: $e1
    ld [$0201], a                                 ; $62b6: $ea $01 $02
    ld [bc], a                                    ; $62b9: $02
    ld [bc], a                                    ; $62ba: $02
    ld [bc], a                                    ; $62bb: $02
    ld [bc], a                                    ; $62bc: $02
    ld [bc], a                                    ; $62bd: $02
    add d                                         ; $62be: $82
    ld [bc], a                                    ; $62bf: $02
    ld [bc], a                                    ; $62c0: $02
    ld [bc], a                                    ; $62c1: $02
    add d                                         ; $62c2: $82
    ld [bc], a                                    ; $62c3: $02
    ld bc, $8202                                  ; $62c4: $01 $02 $82
    jp nc, $d4d3                                  ; $62c7: $d2 $d3 $d4

    di                                            ; $62ca: $f3
    sub $d7                                       ; $62cb: $d6 $d7
    db $ed                                        ; $62cd: $ed
    xor $ef                                       ; $62ce: $ee $ef
    db $db                                        ; $62d0: $db
    ldh a, [$dd]                                  ; $62d1: $f0 $dd
    pop af                                        ; $62d3: $f1
    rst $18                                       ; $62d4: $df
    ld a, [c]                                     ; $62d5: $f2
    and $82                                       ; $62d6: $e6 $82
    add d                                         ; $62d8: $82
    add d                                         ; $62d9: $82
    add d                                         ; $62da: $82
    add d                                         ; $62db: $82
    add d                                         ; $62dc: $82
    add d                                         ; $62dd: $82
    add d                                         ; $62de: $82
    add d                                         ; $62df: $82
    add d                                         ; $62e0: $82
    add d                                         ; $62e1: $82
    add d                                         ; $62e2: $82
    add d                                         ; $62e3: $82
    add d                                         ; $62e4: $82
    add d                                         ; $62e5: $82
    add d                                         ; $62e6: $82
    pop hl                                        ; $62e7: $e1
    pop hl                                        ; $62e8: $e1
    pop hl                                        ; $62e9: $e1
    pop hl                                        ; $62ea: $e1
    push af                                       ; $62eb: $f5
    pop hl                                        ; $62ec: $e1
    pop hl                                        ; $62ed: $e1
    pop hl                                        ; $62ee: $e1
    nop                                           ; $62ef: $00
    ld b, c                                       ; $62f0: $41
    pop hl                                        ; $62f1: $e1
    pop hl                                        ; $62f2: $e1
    rst $20                                       ; $62f3: $e7
    pop hl                                        ; $62f4: $e1
    pop hl                                        ; $62f5: $e1
    pop hl                                        ; $62f6: $e1
    ld [bc], a                                    ; $62f7: $02
    ld [bc], a                                    ; $62f8: $02
    ld [bc], a                                    ; $62f9: $02
    ld [bc], a                                    ; $62fa: $02
    add d                                         ; $62fb: $82
    ld [bc], a                                    ; $62fc: $02
    ld [bc], a                                    ; $62fd: $02
    ld [bc], a                                    ; $62fe: $02
    add d                                         ; $62ff: $82
    ld bc, $0202                                  ; $6300: $01 $02 $02
    add d                                         ; $6303: $82
    ld [bc], a                                    ; $6304: $02
    ld [bc], a                                    ; $6305: $02
    ld [bc], a                                    ; $6306: $02
    pop hl                                        ; $6307: $e1
    pop hl                                        ; $6308: $e1
    pop hl                                        ; $6309: $e1
    db $ec                                        ; $630a: $ec
    pop hl                                        ; $630b: $e1
    pop hl                                        ; $630c: $e1
    pop hl                                        ; $630d: $e1
    pop hl                                        ; $630e: $e1
    pop hl                                        ; $630f: $e1
    ld b, d                                       ; $6310: $42
    ld b, e                                       ; $6311: $43
    pop hl                                        ; $6312: $e1
    pop hl                                        ; $6313: $e1
    ld b, h                                       ; $6314: $44
    ld b, l                                       ; $6315: $45
    pop hl                                        ; $6316: $e1
    ld [bc], a                                    ; $6317: $02
    ld [bc], a                                    ; $6318: $02
    ld [bc], a                                    ; $6319: $02
    add d                                         ; $631a: $82
    ld [bc], a                                    ; $631b: $02
    ld [bc], a                                    ; $631c: $02
    ld [bc], a                                    ; $631d: $02
    ld [bc], a                                    ; $631e: $02
    ld [bc], a                                    ; $631f: $02
    ld bc, $0201                                  ; $6320: $01 $01 $02
    ld [bc], a                                    ; $6323: $02
    ld bc, $0201                                  ; $6324: $01 $01 $02
    pop af                                        ; $6327: $f1
    rst $18                                       ; $6328: $df
    ldh [$e8], a                                  ; $6329: $e0 $e8
    pop hl                                        ; $632b: $e1
    db $eb                                        ; $632c: $eb
    pop hl                                        ; $632d: $e1
    pop hl                                        ; $632e: $e1
    pop hl                                        ; $632f: $e1
    pop hl                                        ; $6330: $e1
    pop hl                                        ; $6331: $e1
    pop hl                                        ; $6332: $e1
    pop hl                                        ; $6333: $e1
    pop hl                                        ; $6334: $e1
    pop hl                                        ; $6335: $e1
    pop hl                                        ; $6336: $e1
    add d                                         ; $6337: $82
    add d                                         ; $6338: $82
    add d                                         ; $6339: $82
    add d                                         ; $633a: $82
    ld [bc], a                                    ; $633b: $02
    inc bc                                        ; $633c: $03
    ld [bc], a                                    ; $633d: $02
    ld [bc], a                                    ; $633e: $02
    ld [bc], a                                    ; $633f: $02
    ld [bc], a                                    ; $6340: $02
    ld [bc], a                                    ; $6341: $02
    ld [bc], a                                    ; $6342: $02
    ld [bc], a                                    ; $6343: $02
    ld [bc], a                                    ; $6344: $02
    ld [bc], a                                    ; $6345: $02
    ld [bc], a                                    ; $6346: $02
    ld b, a                                       ; $6347: $47
    ld c, b                                       ; $6348: $48
    ld c, c                                       ; $6349: $49
    ld c, d                                       ; $634a: $4a
    pop hl                                        ; $634b: $e1
    ld b, [hl]                                    ; $634c: $46
    ld b, a                                       ; $634d: $47
    ld c, b                                       ; $634e: $48
    pop hl                                        ; $634f: $e1
    pop hl                                        ; $6350: $e1
    ld b, c                                       ; $6351: $41
    ld b, [hl]                                    ; $6352: $46
    ei                                            ; $6353: $fb
    pop hl                                        ; $6354: $e1
    pop hl                                        ; $6355: $e1
    pop hl                                        ; $6356: $e1
    ld bc, $0101                                  ; $6357: $01 $01 $01
    ld bc, $0102                                  ; $635a: $01 $02 $01
    ld bc, $0201                                  ; $635d: $01 $01 $02
    ld [bc], a                                    ; $6360: $02
    ld bc, $0101                                  ; $6361: $01 $01 $01
    ld [bc], a                                    ; $6364: $02
    ld [bc], a                                    ; $6365: $02
    ld [bc], a                                    ; $6366: $02
    ld d, b                                       ; $6367: $50
    ld d, c                                       ; $6368: $51
    ld d, d                                       ; $6369: $52
    ld c, b                                       ; $636a: $48
    ld c, c                                       ; $636b: $49
    ld c, d                                       ; $636c: $4a
    ld d, h                                       ; $636d: $54
    ld b, [hl]                                    ; $636e: $46
    ld b, a                                       ; $636f: $47
    ld c, b                                       ; $6370: $48
    ld c, c                                       ; $6371: $49
    ld c, d                                       ; $6372: $4a
    pop hl                                        ; $6373: $e1
    pop hl                                        ; $6374: $e1
    pop hl                                        ; $6375: $e1
    ld b, c                                       ; $6376: $41
    ld bc, $0101                                  ; $6377: $01 $01 $01
    ld bc, $0101                                  ; $637a: $01 $01 $01
    ld bc, $0101                                  ; $637d: $01 $01 $01
    ld bc, $0101                                  ; $6380: $01 $01 $01
    ld [bc], a                                    ; $6383: $02
    ld [bc], a                                    ; $6384: $02
    ld [bc], a                                    ; $6385: $02
    ld bc, $e149                                  ; $6386: $01 $49 $e1
    pop hl                                        ; $6389: $e1
    pop hl                                        ; $638a: $e1
    ld b, a                                       ; $638b: $47
    ld c, b                                       ; $638c: $48
    ld c, c                                       ; $638d: $49
    pop hl                                        ; $638e: $e1
    ld d, h                                       ; $638f: $54
    ld b, [hl]                                    ; $6390: $46
    ld b, a                                       ; $6391: $47
    ld c, b                                       ; $6392: $48
    pop hl                                        ; $6393: $e1
    ld hl, sp-$07                                 ; $6394: $f8 $f9
    ld a, [$0201]                                 ; $6396: $fa $01 $02
    ld [bc], a                                    ; $6399: $02
    ld [bc], a                                    ; $639a: $02
    ld bc, $0101                                  ; $639b: $01 $01 $01
    ld [bc], a                                    ; $639e: $02
    ld bc, $0101                                  ; $639f: $01 $01 $01
    ld bc, $0102                                  ; $63a2: $01 $02 $01
    ld bc, $4101                                  ; $63a5: $01 $01 $41
    pop hl                                        ; $63a8: $e1
    ld c, c                                       ; $63a9: $49
    ld c, d                                       ; $63aa: $4a
    pop hl                                        ; $63ab: $e1
    pop hl                                        ; $63ac: $e1
    pop hl                                        ; $63ad: $e1
    pop hl                                        ; $63ae: $e1
    pop hl                                        ; $63af: $e1
    ld b, c                                       ; $63b0: $41
    pop hl                                        ; $63b1: $e1
    pop hl                                        ; $63b2: $e1
    ei                                            ; $63b3: $fb
    or $f7                                        ; $63b4: $f6 $f7
    ld hl, sp+$01                                 ; $63b6: $f8 $01
    ld [bc], a                                    ; $63b8: $02
    ld bc, $0201                                  ; $63b9: $01 $01 $02
    ld [bc], a                                    ; $63bc: $02
    ld [bc], a                                    ; $63bd: $02
    ld [bc], a                                    ; $63be: $02
    ld [bc], a                                    ; $63bf: $02
    ld bc, $0202                                  ; $63c0: $01 $02 $02
    ld bc, $0101                                  ; $63c3: $01 $01 $01
    ld bc, $e1e1                                  ; $63c6: $01 $e1 $e1
    pop hl                                        ; $63c9: $e1
    pop hl                                        ; $63ca: $e1
    inc h                                         ; $63cb: $24
    pop hl                                        ; $63cc: $e1
    pop hl                                        ; $63cd: $e1
    ld [$e1e1], sp                                ; $63ce: $08 $e1 $e1
    pop hl                                        ; $63d1: $e1
    ld a, [bc]                                    ; $63d2: $0a
    pop hl                                        ; $63d3: $e1
    pop hl                                        ; $63d4: $e1
    pop hl                                        ; $63d5: $e1
    dec c                                         ; $63d6: $0d
    ld [bc], a                                    ; $63d7: $02
    ld [bc], a                                    ; $63d8: $02
    ld [bc], a                                    ; $63d9: $02
    ld [bc], a                                    ; $63da: $02
    ld bc, $0202                                  ; $63db: $01 $02 $02
    add d                                         ; $63de: $82
    ld [bc], a                                    ; $63df: $02
    ld [bc], a                                    ; $63e0: $02
    ld [bc], a                                    ; $63e1: $02
    add d                                         ; $63e2: $82
    ld [bc], a                                    ; $63e3: $02
    ld [bc], a                                    ; $63e4: $02
    ld [bc], a                                    ; $63e5: $02
    add d                                         ; $63e6: $82
    rlca                                          ; $63e7: $07
    ld [hl-], a                                   ; $63e8: $32
    inc sp                                        ; $63e9: $33
    inc [hl]                                      ; $63ea: $34
    add hl, bc                                    ; $63eb: $09
    dec [hl]                                      ; $63ec: $35
    ld [hl], $37                                  ; $63ed: $36 $37
    dec bc                                        ; $63ef: $0b
    add hl, sp                                    ; $63f0: $39
    ld a, [hl-]                                   ; $63f1: $3a
    dec sp                                        ; $63f2: $3b
    ld c, $3d                                     ; $63f3: $0e $3d
    ld a, $3f                                     ; $63f5: $3e $3f
    add d                                         ; $63f7: $82
    add d                                         ; $63f8: $82
    add d                                         ; $63f9: $82
    add d                                         ; $63fa: $82
    add d                                         ; $63fb: $82
    add d                                         ; $63fc: $82
    add d                                         ; $63fd: $82
    add d                                         ; $63fe: $82
    add d                                         ; $63ff: $82
    add d                                         ; $6400: $82
    add d                                         ; $6401: $82
    add d                                         ; $6402: $82
    add d                                         ; $6403: $82
    add d                                         ; $6404: $82
    add d                                         ; $6405: $82
    add d                                         ; $6406: $82
    pop hl                                        ; $6407: $e1
    pop hl                                        ; $6408: $e1
    rst $30                                       ; $6409: $f7
    ld hl, sp+$38                                 ; $640a: $f8 $38
    pop hl                                        ; $640c: $e1
    pop hl                                        ; $640d: $e1
    pop hl                                        ; $640e: $e1
    inc a                                         ; $640f: $3c
    pop hl                                        ; $6410: $e1
    pop hl                                        ; $6411: $e1
    pop hl                                        ; $6412: $e1
    ld b, b                                       ; $6413: $40
    pop hl                                        ; $6414: $e1
    pop hl                                        ; $6415: $e1
    pop hl                                        ; $6416: $e1
    ld [bc], a                                    ; $6417: $02
    ld [bc], a                                    ; $6418: $02
    ld bc, $8201                                  ; $6419: $01 $01 $82
    ld [bc], a                                    ; $641c: $02
    ld [bc], a                                    ; $641d: $02
    ld [bc], a                                    ; $641e: $02
    add d                                         ; $641f: $82
    ld [bc], a                                    ; $6420: $02
    ld [bc], a                                    ; $6421: $02
    ld [bc], a                                    ; $6422: $02
    add d                                         ; $6423: $82
    ld [bc], a                                    ; $6424: $02
    ld [bc], a                                    ; $6425: $02
    ld [bc], a                                    ; $6426: $02
    ld sp, hl                                     ; $6427: $f9
    ld a, [$06fb]                                 ; $6428: $fa $fb $06
    rst $30                                       ; $642b: $f7
    ld hl, sp-$07                                 ; $642c: $f8 $f9
    ld [bc], a                                    ; $642e: $02
    ld b, c                                       ; $642f: $41
    pop hl                                        ; $6430: $e1
    rst $30                                       ; $6431: $f7
    ld a, [c]                                     ; $6432: $f2
    pop hl                                        ; $6433: $e1
    pop hl                                        ; $6434: $e1
    ei                                            ; $6435: $fb
    ld b, $01                                     ; $6436: $06 $01
    ld bc, $0101                                  ; $6438: $01 $01 $01
    ld bc, $0101                                  ; $643b: $01 $01 $01
    ld bc, $0201                                  ; $643e: $01 $01 $02
    ld bc, $0209                                  ; $6441: $01 $09 $02
    ld [bc], a                                    ; $6444: $02
    ld bc, $e101                                  ; $6445: $01 $01 $e1
    pop hl                                        ; $6448: $e1
    pop hl                                        ; $6449: $e1
    di                                            ; $644a: $f3
    pop hl                                        ; $644b: $e1
    pop hl                                        ; $644c: $e1
    pop hl                                        ; $644d: $e1
    pop hl                                        ; $644e: $e1
    pop hl                                        ; $644f: $e1
    pop hl                                        ; $6450: $e1
    inc hl                                        ; $6451: $23
    inc h                                         ; $6452: $24
    pop hl                                        ; $6453: $e1
    pop hl                                        ; $6454: $e1
    pop hl                                        ; $6455: $e1
    pop hl                                        ; $6456: $e1
    ld [bc], a                                    ; $6457: $02
    ld [bc], a                                    ; $6458: $02
    ld [bc], a                                    ; $6459: $02
    adc d                                         ; $645a: $8a
    ld [bc], a                                    ; $645b: $02
    ld [bc], a                                    ; $645c: $02
    ld [bc], a                                    ; $645d: $02
    ld [bc], a                                    ; $645e: $02
    ld [bc], a                                    ; $645f: $02
    ld [bc], a                                    ; $6460: $02
    ld bc, $0201                                  ; $6461: $01 $01 $02
    ld [bc], a                                    ; $6464: $02
    ld [bc], a                                    ; $6465: $02
    ld [bc], a                                    ; $6466: $02
    db $f4                                        ; $6467: $f4
    push af                                       ; $6468: $f5
    or $f7                                        ; $6469: $f6 $f7
    pop hl                                        ; $646b: $e1
    ld sp, hl                                     ; $646c: $f9
    ld a, [$e1e1]                                 ; $646d: $fa $e1 $e1
    ei                                            ; $6470: $fb
    db $fc                                        ; $6471: $fc
    pop hl                                        ; $6472: $e1
    pop hl                                        ; $6473: $e1
    pop hl                                        ; $6474: $e1
    pop hl                                        ; $6475: $e1
    pop hl                                        ; $6476: $e1
    adc d                                         ; $6477: $8a
    adc d                                         ; $6478: $8a
    adc d                                         ; $6479: $8a
    adc d                                         ; $647a: $8a
    ld [bc], a                                    ; $647b: $02
    dec bc                                        ; $647c: $0b
    dec bc                                        ; $647d: $0b
    ld [bc], a                                    ; $647e: $02
    ld [bc], a                                    ; $647f: $02
    dec bc                                        ; $6480: $0b
    dec bc                                        ; $6481: $0b
    ld [bc], a                                    ; $6482: $02
    ld [bc], a                                    ; $6483: $02
    ld [bc], a                                    ; $6484: $02
    ld [bc], a                                    ; $6485: $02
    ld [bc], a                                    ; $6486: $02
    ld hl, sp-$1f                                 ; $6487: $f8 $e1
    pop hl                                        ; $6489: $e1
    pop hl                                        ; $648a: $e1
    pop hl                                        ; $648b: $e1
    pop hl                                        ; $648c: $e1
    ld b, c                                       ; $648d: $41
    ld a, [$e1e1]                                 ; $648e: $fa $e1 $e1
    rst $30                                       ; $6491: $f7
    ld a, [c]                                     ; $6492: $f2
    ld sp, hl                                     ; $6493: $f9
    ld a, [$0603]                                 ; $6494: $fa $03 $06
    adc d                                         ; $6497: $8a
    ld [bc], a                                    ; $6498: $02
    ld [bc], a                                    ; $6499: $02
    ld [bc], a                                    ; $649a: $02
    ld [bc], a                                    ; $649b: $02
    ld [bc], a                                    ; $649c: $02
    ld bc, $0201                                  ; $649d: $01 $01 $02
    ld [bc], a                                    ; $64a0: $02
    ld bc, $0109                                  ; $64a1: $01 $09 $01
    ld bc, $0101                                  ; $64a4: $01 $01 $01
    pop hl                                        ; $64a7: $e1
    ld hl, sp+$04                                 ; $64a8: $f8 $04
    ld [bc], a                                    ; $64aa: $02
    ei                                            ; $64ab: $fb
    ld b, $0c                                     ; $64ac: $06 $0c
    ld a, [c]                                     ; $64ae: $f2
    inc b                                         ; $64af: $04
    ld [bc], a                                    ; $64b0: $02
    inc bc                                        ; $64b1: $03
    ld b, $0c                                     ; $64b2: $06 $0c
    ld a, [c]                                     ; $64b4: $f2
    ld sp, hl                                     ; $64b5: $f9
    ld a, [$0102]                                 ; $64b6: $fa $02 $01
    ld bc, $0101                                  ; $64b9: $01 $01 $01
    ld bc, $0901                                  ; $64bc: $01 $01 $09
    ld bc, $0101                                  ; $64bf: $01 $01 $01
    ld bc, $0901                                  ; $64c2: $01 $01 $09
    ld bc, $e101                                  ; $64c5: $01 $01 $e1
    ld e, e                                       ; $64c8: $5b
    ld e, h                                       ; $64c9: $5c
    ld b, c                                       ; $64ca: $41
    pop hl                                        ; $64cb: $e1
    ld e, l                                       ; $64cc: $5d
    ld e, [hl]                                    ; $64cd: $5e
    pop hl                                        ; $64ce: $e1
    pop hl                                        ; $64cf: $e1
    ld e, a                                       ; $64d0: $5f
    ld h, b                                       ; $64d1: $60
    pop hl                                        ; $64d2: $e1
    ld b, c                                       ; $64d3: $41
    pop hl                                        ; $64d4: $e1
    ld c, c                                       ; $64d5: $49
    ld c, d                                       ; $64d6: $4a
    ld [bc], a                                    ; $64d7: $02
    ld a, [bc]                                    ; $64d8: $0a
    ld a, [bc]                                    ; $64d9: $0a
    ld bc, $0a02                                  ; $64da: $01 $02 $0a
    ld a, [bc]                                    ; $64dd: $0a
    ld [bc], a                                    ; $64de: $02
    ld [bc], a                                    ; $64df: $02
    ld a, [bc]                                    ; $64e0: $0a
    ld a, [bc]                                    ; $64e1: $0a
    ld [bc], a                                    ; $64e2: $02
    ld bc, $0102                                  ; $64e3: $01 $02 $01
    ld bc, $e1e1                                  ; $64e6: $01 $e1 $e1
    pop hl                                        ; $64e9: $e1
    or $e1                                        ; $64ea: $f6 $e1
    pop hl                                        ; $64ec: $e1
    ld d, h                                       ; $64ed: $54
    ld b, [hl]                                    ; $64ee: $46
    ld b, a                                       ; $64ef: $47
    ld c, b                                       ; $64f0: $48
    pop hl                                        ; $64f1: $e1
    pop hl                                        ; $64f2: $e1
    ld d, h                                       ; $64f3: $54
    pop hl                                        ; $64f4: $e1
    di                                            ; $64f5: $f3
    pop hl                                        ; $64f6: $e1
    ld [bc], a                                    ; $64f7: $02
    ld [bc], a                                    ; $64f8: $02
    ld [bc], a                                    ; $64f9: $02
    ld bc, $0202                                  ; $64fa: $01 $02 $02
    ld bc, $0101                                  ; $64fd: $01 $01 $01
    ld bc, $0202                                  ; $6500: $01 $02 $02
    ld bc, $8202                                  ; $6503: $01 $02 $82
    ld [bc], a                                    ; $6506: $02
    rst $30                                       ; $6507: $f7
    ld hl, sp-$07                                 ; $6508: $f8 $f9
    ld a, [$4342]                                 ; $650a: $fa $42 $43
    pop hl                                        ; $650d: $e1
    ld b, c                                       ; $650e: $41
    ld b, h                                       ; $650f: $44
    ld b, l                                       ; $6510: $45
    pop hl                                        ; $6511: $e1
    pop hl                                        ; $6512: $e1
    pop hl                                        ; $6513: $e1
    pop hl                                        ; $6514: $e1
    pop hl                                        ; $6515: $e1
    pop hl                                        ; $6516: $e1
    ld bc, $0101                                  ; $6517: $01 $01 $01
    ld bc, $0101                                  ; $651a: $01 $01 $01
    ld [bc], a                                    ; $651d: $02
    ld bc, $0101                                  ; $651e: $01 $01 $01
    ld [bc], a                                    ; $6521: $02
    ld [bc], a                                    ; $6522: $02
    ld [bc], a                                    ; $6523: $02
    ld [bc], a                                    ; $6524: $02
    ld [bc], a                                    ; $6525: $02
    ld [bc], a                                    ; $6526: $02
    ei                                            ; $6527: $fb
    or $f7                                        ; $6528: $f6 $f7
    pop hl                                        ; $652a: $e1
    pop hl                                        ; $652b: $e1
    pop hl                                        ; $652c: $e1
    pop hl                                        ; $652d: $e1
    ld [$e1e1], sp                                ; $652e: $08 $e1 $e1
    pop hl                                        ; $6531: $e1
    ld a, [bc]                                    ; $6532: $0a
    pop hl                                        ; $6533: $e1
    pop hl                                        ; $6534: $e1
    pop hl                                        ; $6535: $e1
    dec c                                         ; $6536: $0d
    ld bc, $0101                                  ; $6537: $01 $01 $01
    ld [bc], a                                    ; $653a: $02
    ld [bc], a                                    ; $653b: $02
    ld [bc], a                                    ; $653c: $02
    ld [bc], a                                    ; $653d: $02
    add d                                         ; $653e: $82
    ld [bc], a                                    ; $653f: $02
    ld [bc], a                                    ; $6540: $02
    ld [bc], a                                    ; $6541: $02
    add d                                         ; $6542: $82
    ld [bc], a                                    ; $6543: $02
    ld [bc], a                                    ; $6544: $02
    ld [bc], a                                    ; $6545: $02
    add d                                         ; $6546: $82
    ld d, h                                       ; $6547: $54
    ld b, [hl]                                    ; $6548: $46
    ld d, d                                       ; $6549: $52
    ld d, e                                       ; $654a: $53
    ld c, c                                       ; $654b: $49
    ld c, d                                       ; $654c: $4a
    ld d, h                                       ; $654d: $54
    ld b, [hl]                                    ; $654e: $46
    pop hl                                        ; $654f: $e1
    pop hl                                        ; $6550: $e1
    ld c, c                                       ; $6551: $49
    ld c, d                                       ; $6552: $4a
    ld sp, hl                                     ; $6553: $f9
    pop hl                                        ; $6554: $e1
    ld b, c                                       ; $6555: $41
    pop hl                                        ; $6556: $e1
    ld bc, $0101                                  ; $6557: $01 $01 $01
    ld bc, $0101                                  ; $655a: $01 $01 $01
    ld bc, $0201                                  ; $655d: $01 $01 $02
    ld [bc], a                                    ; $6560: $02
    ld bc, $0101                                  ; $6561: $01 $01 $01
    ld [bc], a                                    ; $6564: $02
    ld bc, $5502                                  ; $6565: $01 $02 $55
    ld d, [hl]                                    ; $6568: $56
    ld d, b                                       ; $6569: $50
    ld d, c                                       ; $656a: $51
    ld d, d                                       ; $656b: $52
    ld d, e                                       ; $656c: $53
    ld d, l                                       ; $656d: $55
    ld d, [hl]                                    ; $656e: $56
    ld d, h                                       ; $656f: $54
    ld b, [hl]                                    ; $6570: $46
    ld d, d                                       ; $6571: $52
    ld d, e                                       ; $6572: $53
    ld c, c                                       ; $6573: $49
    ld c, d                                       ; $6574: $4a
    ld d, h                                       ; $6575: $54
    ld b, [hl]                                    ; $6576: $46
    ld bc, $0101                                  ; $6577: $01 $01 $01
    ld bc, $0101                                  ; $657a: $01 $01 $01
    ld bc, $0101                                  ; $657d: $01 $01 $01
    ld bc, $0101                                  ; $6580: $01 $01 $01
    ld bc, $0101                                  ; $6583: $01 $01 $01
    ld bc, $5352                                  ; $6586: $01 $52 $53
    ld d, l                                       ; $6589: $55
    ld d, [hl]                                    ; $658a: $56
    ld d, b                                       ; $658b: $50
    ld d, c                                       ; $658c: $51
    ld d, d                                       ; $658d: $52
    ld c, b                                       ; $658e: $48
    ld d, l                                       ; $658f: $55
    ld c, d                                       ; $6590: $4a
    ld d, h                                       ; $6591: $54
    ld b, [hl]                                    ; $6592: $46
    ld b, a                                       ; $6593: $47
    ld c, b                                       ; $6594: $48
    ld c, c                                       ; $6595: $49
    pop hl                                        ; $6596: $e1
    ld bc, $0101                                  ; $6597: $01 $01 $01
    ld bc, $0101                                  ; $659a: $01 $01 $01
    ld bc, $0101                                  ; $659d: $01 $01 $01
    ld bc, $0101                                  ; $65a0: $01 $01 $01
    ld bc, $0101                                  ; $65a3: $01 $01 $01
    ld [bc], a                                    ; $65a6: $02
    ld d, h                                       ; $65a7: $54
    ld b, [hl]                                    ; $65a8: $46
    ld b, d                                       ; $65a9: $42
    ld b, e                                       ; $65aa: $43
    ld c, c                                       ; $65ab: $49
    pop hl                                        ; $65ac: $e1
    ld b, h                                       ; $65ad: $44
    ld b, l                                       ; $65ae: $45
    pop hl                                        ; $65af: $e1
    pop hl                                        ; $65b0: $e1
    pop hl                                        ; $65b1: $e1
    pop hl                                        ; $65b2: $e1
    pop hl                                        ; $65b3: $e1
    pop hl                                        ; $65b4: $e1
    pop hl                                        ; $65b5: $e1
    ld b, c                                       ; $65b6: $41
    ld bc, $0101                                  ; $65b7: $01 $01 $01
    ld bc, $0201                                  ; $65ba: $01 $01 $02
    ld bc, $0201                                  ; $65bd: $01 $01 $02
    ld [bc], a                                    ; $65c0: $02
    ld [bc], a                                    ; $65c1: $02
    ld [bc], a                                    ; $65c2: $02
    ld [bc], a                                    ; $65c3: $02
    ld [bc], a                                    ; $65c4: $02
    ld [bc], a                                    ; $65c5: $02
    ld bc, $f8f7                                  ; $65c6: $01 $f7 $f8
    ld sp, hl                                     ; $65c9: $f9
    pop hl                                        ; $65ca: $e1
    inc bc                                        ; $65cb: $03
    ld b, $f7                                     ; $65cc: $06 $f7
    ld hl, sp+$04                                 ; $65ce: $f8 $04
    ld [bc], a                                    ; $65d0: $02
    inc bc                                        ; $65d1: $03
    ld b, $0c                                     ; $65d2: $06 $0c
    ld a, [c]                                     ; $65d4: $f2
    inc b                                         ; $65d5: $04
    ld [bc], a                                    ; $65d6: $02
    ld bc, $0101                                  ; $65d7: $01 $01 $01
    ld [bc], a                                    ; $65da: $02
    ld bc, $0101                                  ; $65db: $01 $01 $01
    ld bc, $0101                                  ; $65de: $01 $01 $01
    ld bc, $0101                                  ; $65e1: $01 $01 $01
    add hl, bc                                    ; $65e4: $09
    ld bc, $e101                                  ; $65e5: $01 $01 $e1
    ld c, b                                       ; $65e8: $48
    ld c, c                                       ; $65e9: $49
    ld c, d                                       ; $65ea: $4a
    ld sp, hl                                     ; $65eb: $f9
    ld a, [$e1e1]                                 ; $65ec: $fa $e1 $e1
    inc c                                         ; $65ef: $0c
    ld hl, sp-$07                                 ; $65f0: $f8 $f9
    ld a, [$0603]                                 ; $65f2: $fa $03 $06
    inc c                                         ; $65f5: $0c
    ld a, [c]                                     ; $65f6: $f2
    ld [bc], a                                    ; $65f7: $02
    ld bc, $0101                                  ; $65f8: $01 $01 $01
    ld bc, $0201                                  ; $65fb: $01 $01 $02
    ld [bc], a                                    ; $65fe: $02
    ld bc, $0101                                  ; $65ff: $01 $01 $01
    ld bc, $0101                                  ; $6602: $01 $01 $01
    ld bc, $5409                                  ; $6605: $01 $09 $54
    ld b, [hl]                                    ; $6608: $46
    pop hl                                        ; $6609: $e1
    pop hl                                        ; $660a: $e1
    pop hl                                        ; $660b: $e1
    pop hl                                        ; $660c: $e1
    ld b, c                                       ; $660d: $41
    pop hl                                        ; $660e: $e1
    ei                                            ; $660f: $fb
    or $f7                                        ; $6610: $f6 $f7
    pop hl                                        ; $6612: $e1
    ld sp, hl                                     ; $6613: $f9
    ld [bc], a                                    ; $6614: $02
    ei                                            ; $6615: $fb
    or $01                                        ; $6616: $f6 $01
    ld bc, $0202                                  ; $6618: $01 $02 $02
    ld [bc], a                                    ; $661b: $02
    ld [bc], a                                    ; $661c: $02
    ld bc, $0102                                  ; $661d: $01 $02 $01
    ld bc, $0201                                  ; $6620: $01 $01 $02
    ld bc, $0101                                  ; $6623: $01 $01 $01
    ld bc, $e1e1                                  ; $6626: $01 $e1 $e1
    pop hl                                        ; $6629: $e1
    pop hl                                        ; $662a: $e1
    pop hl                                        ; $662b: $e1
    pop hl                                        ; $662c: $e1
    pop hl                                        ; $662d: $e1
    rlca                                          ; $662e: $07
    pop hl                                        ; $662f: $e1
    pop hl                                        ; $6630: $e1
    ld [$f709], sp                                ; $6631: $08 $09 $f7
    ld hl, sp+$0a                                 ; $6634: $f8 $0a
    dec bc                                        ; $6636: $0b
    ld [bc], a                                    ; $6637: $02
    ld [bc], a                                    ; $6638: $02
    ld [bc], a                                    ; $6639: $02
    ld [bc], a                                    ; $663a: $02
    ld [bc], a                                    ; $663b: $02
    ld [bc], a                                    ; $663c: $02
    ld [bc], a                                    ; $663d: $02
    add d                                         ; $663e: $82
    ld [bc], a                                    ; $663f: $02
    ld [bc], a                                    ; $6640: $02
    add d                                         ; $6641: $82
    add d                                         ; $6642: $82
    ld bc, $8201                                  ; $6643: $01 $01 $82
    add d                                         ; $6646: $82
    inc bc                                        ; $6647: $03
    ld b, $0c                                     ; $6648: $06 $0c
    ld a, [c]                                     ; $664a: $f2
    inc b                                         ; $664b: $04
    ld [bc], a                                    ; $664c: $02
    inc bc                                        ; $664d: $03
    ld b, $f7                                     ; $664e: $06 $f7
    ld hl, sp-$07                                 ; $6650: $f8 $f9
    ld a, [$f6fb]                                 ; $6652: $fa $fb $f6
    pop hl                                        ; $6655: $e1
    inc hl                                        ; $6656: $23
    ld bc, $0101                                  ; $6657: $01 $01 $01
    add hl, bc                                    ; $665a: $09
    ld bc, $0101                                  ; $665b: $01 $01 $01
    ld bc, $0101                                  ; $665e: $01 $01 $01
    ld bc, $0101                                  ; $6661: $01 $01 $01
    ld bc, $0102                                  ; $6664: $01 $02 $01
    inc b                                         ; $6667: $04
    ld [bc], a                                    ; $6668: $02
    inc bc                                        ; $6669: $03
    ld b, $0c                                     ; $666a: $06 $0c
    ld a, [c]                                     ; $666c: $f2
    inc b                                         ; $666d: $04
    ld [bc], a                                    ; $666e: $02
    ei                                            ; $666f: $fb
    or $f7                                        ; $6670: $f6 $f7
    ld hl, sp+$24                                 ; $6672: $f8 $24
    pop hl                                        ; $6674: $e1
    pop hl                                        ; $6675: $e1
    pop hl                                        ; $6676: $e1
    ld bc, $0101                                  ; $6677: $01 $01 $01
    ld bc, $0901                                  ; $667a: $01 $01 $09
    ld bc, $0101                                  ; $667d: $01 $01 $01
    ld bc, $0101                                  ; $6680: $01 $01 $01
    ld bc, $0202                                  ; $6683: $01 $02 $02
    ld [bc], a                                    ; $6686: $02
    inc c                                         ; $6687: $0c
    ld a, [c]                                     ; $6688: $f2
    inc b                                         ; $6689: $04
    ld [bc], a                                    ; $668a: $02
    inc bc                                        ; $668b: $03
    or $f7                                        ; $668c: $f6 $f7
    ld hl, sp-$07                                 ; $668e: $f8 $f9
    ld a, [$42e1]                                 ; $6690: $fa $e1 $42
    pop hl                                        ; $6693: $e1
    pop hl                                        ; $6694: $e1
    pop hl                                        ; $6695: $e1
    ld b, h                                       ; $6696: $44
    ld bc, $0109                                  ; $6697: $01 $09 $01
    ld bc, $0101                                  ; $669a: $01 $01 $01
    ld bc, $0101                                  ; $669d: $01 $01 $01
    ld bc, $0102                                  ; $66a0: $01 $02 $01
    ld [bc], a                                    ; $66a3: $02
    ld [bc], a                                    ; $66a4: $02
    ld [bc], a                                    ; $66a5: $02
    ld bc, $f6fb                                  ; $66a6: $01 $fb $f6
    dec c                                         ; $66a9: $0d
    ld c, $f9                                     ; $66aa: $0e $f9
    pop hl                                        ; $66ac: $e1
    di                                            ; $66ad: $f3

jr_08c_66ae:
    db $f4                                        ; $66ae: $f4
    ld b, e                                       ; $66af: $43
    pop hl                                        ; $66b0: $e1
    pop hl                                        ; $66b1: $e1
    pop hl                                        ; $66b2: $e1
    ld b, l                                       ; $66b3: $45
    pop hl                                        ; $66b4: $e1
    pop hl                                        ; $66b5: $e1
    pop hl                                        ; $66b6: $e1
    ld bc, $8201                                  ; $66b7: $01 $01 $82
    add d                                         ; $66ba: $82
    ld bc, $8a02                                  ; $66bb: $01 $02 $8a
    adc d                                         ; $66be: $8a
    ld bc, $0202                                  ; $66bf: $01 $02 $02
    ld [bc], a                                    ; $66c2: $02
    ld bc, $0202                                  ; $66c3: $01 $02 $02
    ld [bc], a                                    ; $66c6: $02
    pop hl                                        ; $66c7: $e1
    pop hl                                        ; $66c8: $e1
    pop hl                                        ; $66c9: $e1
    pop hl                                        ; $66ca: $e1
    jr c, jr_08c_66ae                             ; $66cb: $38 $e1

    pop hl                                        ; $66cd: $e1
    pop hl                                        ; $66ce: $e1
    inc a                                         ; $66cf: $3c
    pop hl                                        ; $66d0: $e1
    pop hl                                        ; $66d1: $e1
    ld c, b                                       ; $66d2: $48
    ld b, b                                       ; $66d3: $40
    ld c, d                                       ; $66d4: $4a
    ld d, h                                       ; $66d5: $54
    ld b, [hl]                                    ; $66d6: $46
    ld [bc], a                                    ; $66d7: $02
    ld [bc], a                                    ; $66d8: $02
    ld [bc], a                                    ; $66d9: $02
    ld [bc], a                                    ; $66da: $02
    add d                                         ; $66db: $82
    ld [bc], a                                    ; $66dc: $02
    ld [bc], a                                    ; $66dd: $02
    ld [bc], a                                    ; $66de: $02
    add d                                         ; $66df: $82
    ld [bc], a                                    ; $66e0: $02
    ld [bc], a                                    ; $66e1: $02
    ld bc, $0182                                  ; $66e2: $01 $82 $01
    ld bc, $e101                                  ; $66e5: $01 $01 $e1
    ld b, c                                       ; $66e8: $41
    pop hl                                        ; $66e9: $e1
    pop hl                                        ; $66ea: $e1
    pop hl                                        ; $66eb: $e1
    pop hl                                        ; $66ec: $e1
    ld b, a                                       ; $66ed: $47
    ld c, b                                       ; $66ee: $48
    ld c, c                                       ; $66ef: $49
    ld c, d                                       ; $66f0: $4a
    ld d, b                                       ; $66f1: $50
    ld d, c                                       ; $66f2: $51
    ld d, d                                       ; $66f3: $52
    ld d, e                                       ; $66f4: $53
    ld d, l                                       ; $66f5: $55
    ld d, [hl]                                    ; $66f6: $56
    ld [bc], a                                    ; $66f7: $02
    ld bc, $0202                                  ; $66f8: $01 $02 $02
    ld [bc], a                                    ; $66fb: $02
    ld [bc], a                                    ; $66fc: $02
    ld bc, $0101                                  ; $66fd: $01 $01 $01
    ld bc, $0101                                  ; $6700: $01 $01 $01
    ld bc, $0101                                  ; $6703: $01 $01 $01
    ld bc, $46e1                                  ; $6706: $01 $e1 $46
    ld b, a                                       ; $6709: $47
    pop hl                                        ; $670a: $e1
    ld c, c                                       ; $670b: $49
    ld d, [hl]                                    ; $670c: $56
    ld d, h                                       ; $670d: $54
    ld b, [hl]                                    ; $670e: $46
    ld d, d                                       ; $670f: $52
    ld d, e                                       ; $6710: $53
    ld d, l                                       ; $6711: $55
    ld c, d                                       ; $6712: $4a
    ld d, b                                       ; $6713: $50
    ld d, c                                       ; $6714: $51
    ld d, d                                       ; $6715: $52
    ld d, e                                       ; $6716: $53
    ld [bc], a                                    ; $6717: $02
    ld bc, $0201                                  ; $6718: $01 $01 $02
    ld bc, $0101                                  ; $671b: $01 $01 $01
    ld bc, $0101                                  ; $671e: $01 $01 $01
    ld bc, $0101                                  ; $6721: $01 $01 $01
    ld bc, $0101                                  ; $6724: $01 $01 $01
    pop hl                                        ; $6727: $e1
    pop hl                                        ; $6728: $e1
    pop hl                                        ; $6729: $e1
    ld sp, hl                                     ; $672a: $f9
    pop hl                                        ; $672b: $e1
    pop hl                                        ; $672c: $e1
    pop hl                                        ; $672d: $e1
    ei                                            ; $672e: $fb
    pop hl                                        ; $672f: $e1
    pop hl                                        ; $6730: $e1
    pop hl                                        ; $6731: $e1
    pop hl                                        ; $6732: $e1
    pop hl                                        ; $6733: $e1
    pop hl                                        ; $6734: $e1
    ld b, c                                       ; $6735: $41
    pop hl                                        ; $6736: $e1
    ld [bc], a                                    ; $6737: $02
    ld [bc], a                                    ; $6738: $02
    ld [bc], a                                    ; $6739: $02
    dec bc                                        ; $673a: $0b
    ld [bc], a                                    ; $673b: $02
    ld [bc], a                                    ; $673c: $02
    ld [bc], a                                    ; $673d: $02
    dec bc                                        ; $673e: $0b
    ld [bc], a                                    ; $673f: $02
    ld [bc], a                                    ; $6740: $02
    ld [bc], a                                    ; $6741: $02
    ld [bc], a                                    ; $6742: $02
    ld [bc], a                                    ; $6743: $02
    ld [bc], a                                    ; $6744: $02
    ld bc, $fa02                                  ; $6745: $01 $02 $fa
    pop hl                                        ; $6748: $e1
    pop hl                                        ; $6749: $e1
    pop hl                                        ; $674a: $e1
    db $fc                                        ; $674b: $fc
    pop hl                                        ; $674c: $e1
    pop hl                                        ; $674d: $e1
    pop hl                                        ; $674e: $e1
    pop hl                                        ; $674f: $e1
    pop hl                                        ; $6750: $e1
    inc hl                                        ; $6751: $23
    inc h                                         ; $6752: $24
    ld d, h                                       ; $6753: $54
    ld b, [hl]                                    ; $6754: $46
    ld b, a                                       ; $6755: $47
    ld c, b                                       ; $6756: $48
    dec bc                                        ; $6757: $0b
    ld [bc], a                                    ; $6758: $02
    ld [bc], a                                    ; $6759: $02
    ld [bc], a                                    ; $675a: $02
    dec bc                                        ; $675b: $0b
    ld [bc], a                                    ; $675c: $02
    ld [bc], a                                    ; $675d: $02
    ld [bc], a                                    ; $675e: $02
    ld [bc], a                                    ; $675f: $02
    ld [bc], a                                    ; $6760: $02
    ld bc, $0101                                  ; $6761: $01 $01 $01
    ld bc, $0101                                  ; $6764: $01 $01 $01
    pop hl                                        ; $6767: $e1
    ld b, c                                       ; $6768: $41
    ld d, h                                       ; $6769: $54
    ld b, [hl]                                    ; $676a: $46
    pop hl                                        ; $676b: $e1
    ld c, b                                       ; $676c: $48
    ld c, c                                       ; $676d: $49
    ld d, [hl]                                    ; $676e: $56
    ld d, h                                       ; $676f: $54
    ld b, [hl]                                    ; $6770: $46
    ld d, d                                       ; $6771: $52
    ld d, e                                       ; $6772: $53
    ld c, c                                       ; $6773: $49
    ld d, [hl]                                    ; $6774: $56
    ld d, b                                       ; $6775: $50
    ld d, c                                       ; $6776: $51
    ld [bc], a                                    ; $6777: $02
    ld bc, $0101                                  ; $6778: $01 $01 $01
    ld [bc], a                                    ; $677b: $02
    ld bc, $0101                                  ; $677c: $01 $01 $01
    ld bc, $0101                                  ; $677f: $01 $01 $01
    ld bc, $0101                                  ; $6782: $01 $01 $01
    ld bc, $e101                                  ; $6785: $01 $01 $e1
    pop hl                                        ; $6788: $e1
    pop hl                                        ; $6789: $e1
    pop hl                                        ; $678a: $e1
    ld [hl-], a                                   ; $678b: $32
    inc sp                                        ; $678c: $33
    inc [hl]                                      ; $678d: $34
    pop hl                                        ; $678e: $e1
    dec [hl]                                      ; $678f: $35
    ld [hl], $37                                  ; $6790: $36 $37
    jr c, jr_08c_67cd                             ; $6792: $38 $39

    ld a, [hl-]                                   ; $6794: $3a
    dec sp                                        ; $6795: $3b
    inc a                                         ; $6796: $3c
    ld [bc], a                                    ; $6797: $02
    ld [bc], a                                    ; $6798: $02
    ld [bc], a                                    ; $6799: $02
    ld [bc], a                                    ; $679a: $02
    add d                                         ; $679b: $82
    add d                                         ; $679c: $82
    add d                                         ; $679d: $82
    ld [bc], a                                    ; $679e: $02
    add d                                         ; $679f: $82
    add d                                         ; $67a0: $82
    add d                                         ; $67a1: $82
    add d                                         ; $67a2: $82
    add d                                         ; $67a3: $82
    add d                                         ; $67a4: $82
    add d                                         ; $67a5: $82
    add d                                         ; $67a6: $82
    pop hl                                        ; $67a7: $e1
    pop hl                                        ; $67a8: $e1
    ld b, a                                       ; $67a9: $47
    ld c, b                                       ; $67aa: $48
    ld c, c                                       ; $67ab: $49
    ld c, d                                       ; $67ac: $4a
    ld d, h                                       ; $67ad: $54
    ld d, c                                       ; $67ae: $51
    pop hl                                        ; $67af: $e1
    pop hl                                        ; $67b0: $e1
    ld c, c                                       ; $67b1: $49
    ld c, d                                       ; $67b2: $4a
    pop hl                                        ; $67b3: $e1
    pop hl                                        ; $67b4: $e1
    pop hl                                        ; $67b5: $e1
    ld b, d                                       ; $67b6: $42
    ld [bc], a                                    ; $67b7: $02
    ld [bc], a                                    ; $67b8: $02
    ld bc, $0101                                  ; $67b9: $01 $01 $01
    ld bc, $0101                                  ; $67bc: $01 $01 $01
    ld [bc], a                                    ; $67bf: $02
    ld [bc], a                                    ; $67c0: $02
    ld bc, $0201                                  ; $67c1: $01 $01 $02
    ld [bc], a                                    ; $67c4: $02
    ld [bc], a                                    ; $67c5: $02
    ld bc, $5649                                  ; $67c6: $01 $49 $56
    ld d, b                                       ; $67c9: $50
    ld d, c                                       ; $67ca: $51
    ld d, d                                       ; $67cb: $52
    ld d, e                                       ; $67cc: $53

jr_08c_67cd:
    ld d, l                                       ; $67cd: $55
    ld d, [hl]                                    ; $67ce: $56
    ld d, h                                       ; $67cf: $54
    ld b, [hl]                                    ; $67d0: $46
    ld b, a                                       ; $67d1: $47
    ld d, e                                       ; $67d2: $53
    ld b, e                                       ; $67d3: $43
    ld c, d                                       ; $67d4: $4a
    ld d, h                                       ; $67d5: $54
    ld b, [hl]                                    ; $67d6: $46
    ld bc, $0101                                  ; $67d7: $01 $01 $01
    ld bc, $0101                                  ; $67da: $01 $01 $01
    ld bc, $0101                                  ; $67dd: $01 $01 $01
    ld bc, $0101                                  ; $67e0: $01 $01 $01
    ld bc, $0101                                  ; $67e3: $01 $01 $01
    ld bc, $5352                                  ; $67e6: $01 $52 $53
    ld d, l                                       ; $67e9: $55
    ld c, d                                       ; $67ea: $4a
    ld d, b                                       ; $67eb: $50
    ld d, c                                       ; $67ec: $51
    ld b, a                                       ; $67ed: $47
    ld c, b                                       ; $67ee: $48
    ld d, l                                       ; $67ef: $55
    ld d, [hl]                                    ; $67f0: $56
    ld d, b                                       ; $67f1: $50
    ld d, c                                       ; $67f2: $51
    ld b, a                                       ; $67f3: $47
    ld c, b                                       ; $67f4: $48
    ld c, c                                       ; $67f5: $49
    ld c, d                                       ; $67f6: $4a
    ld bc, $0101                                  ; $67f7: $01 $01 $01
    ld bc, $0101                                  ; $67fa: $01 $01 $01
    ld bc, $0101                                  ; $67fd: $01 $01 $01
    ld bc, $0101                                  ; $6800: $01 $01 $01
    ld bc, $0101                                  ; $6803: $01 $01 $01
    ld bc, $3e3d                                  ; $6806: $01 $3d $3e
    ccf                                           ; $6809: $3f
    ld b, b                                       ; $680a: $40
    push af                                       ; $680b: $f5
    or $f7                                        ; $680c: $f6 $f7
    ld hl, sp-$07                                 ; $680e: $f8 $f9
    ld a, [$e1e1]                                 ; $6810: $fa $e1 $e1
    ei                                            ; $6813: $fb
    db $fc                                        ; $6814: $fc
    ei                                            ; $6815: $fb
    ld b, $82                                     ; $6816: $06 $82
    add d                                         ; $6818: $82
    add d                                         ; $6819: $82
    add d                                         ; $681a: $82
    adc d                                         ; $681b: $8a
    adc d                                         ; $681c: $8a
    adc d                                         ; $681d: $8a
    adc d                                         ; $681e: $8a
    dec bc                                        ; $681f: $0b
    dec bc                                        ; $6820: $0b
    ld [bc], a                                    ; $6821: $02
    ld [bc], a                                    ; $6822: $02
    dec bc                                        ; $6823: $0b
    dec bc                                        ; $6824: $0b
    ld bc, $e101                                  ; $6825: $01 $01 $e1
    pop hl                                        ; $6828: $e1
    pop hl                                        ; $6829: $e1
    ld b, h                                       ; $682a: $44
    pop hl                                        ; $682b: $e1
    ld b, c                                       ; $682c: $41
    pop hl                                        ; $682d: $e1
    pop hl                                        ; $682e: $e1
    ld sp, hl                                     ; $682f: $f9
    ld a, [$f6fb]                                 ; $6830: $fa $fb $f6
    inc c                                         ; $6833: $0c
    ld a, [c]                                     ; $6834: $f2
    inc b                                         ; $6835: $04
    ld [bc], a                                    ; $6836: $02
    ld [bc], a                                    ; $6837: $02
    ld [bc], a                                    ; $6838: $02
    ld [bc], a                                    ; $6839: $02
    ld bc, $0102                                  ; $683a: $01 $02 $01
    ld [bc], a                                    ; $683d: $02
    ld [bc], a                                    ; $683e: $02
    ld bc, $0101                                  ; $683f: $01 $01 $01
    ld bc, $0901                                  ; $6842: $01 $01 $09
    ld bc, $4501                                  ; $6845: $01 $01 $45
    pop hl                                        ; $6848: $e1
    pop hl                                        ; $6849: $e1
    pop hl                                        ; $684a: $e1
    ld sp, hl                                     ; $684b: $f9
    ld a, [$f6fb]                                 ; $684c: $fa $fb $f6
    rst $30                                       ; $684f: $f7
    ld a, [c]                                     ; $6850: $f2
    inc b                                         ; $6851: $04
    ld [bc], a                                    ; $6852: $02
    inc bc                                        ; $6853: $03
    ld b, $0c                                     ; $6854: $06 $0c
    ld a, [c]                                     ; $6856: $f2
    ld bc, $0202                                  ; $6857: $01 $02 $02
    ld [bc], a                                    ; $685a: $02
    ld bc, $0101                                  ; $685b: $01 $01 $01
    ld bc, $0901                                  ; $685e: $01 $01 $09
    ld bc, $0101                                  ; $6861: $01 $01 $01
    ld bc, $0901                                  ; $6864: $01 $01 $09
    ld d, h                                       ; $6867: $54
    ld b, [hl]                                    ; $6868: $46
    ld b, a                                       ; $6869: $47
    ld c, b                                       ; $686a: $48
    rst $30                                       ; $686b: $f7
    ld hl, sp-$07                                 ; $686c: $f8 $f9
    ld a, [$0603]                                 ; $686e: $fa $03 $06
    rst $30                                       ; $6871: $f7
    ld hl, sp-$07                                 ; $6872: $f8 $f9
    ld a, [$e1e1]                                 ; $6874: $fa $e1 $e1
    ld bc, $0101                                  ; $6877: $01 $01 $01
    ld bc, $0101                                  ; $687a: $01 $01 $01
    ld bc, $0101                                  ; $687d: $01 $01 $01
    ld bc, $0101                                  ; $6880: $01 $01 $01
    ld bc, $0201                                  ; $6883: $01 $01 $02
    ld [bc], a                                    ; $6886: $02
    pop hl                                        ; $6887: $e1
    pop hl                                        ; $6888: $e1
    pop hl                                        ; $6889: $e1
    ld a, [$e147]                                 ; $688a: $fa $47 $e1
    pop hl                                        ; $688d: $e1
    pop hl                                        ; $688e: $e1
    ld d, h                                       ; $688f: $54
    ld b, [hl]                                    ; $6890: $46
    pop hl                                        ; $6891: $e1
    pop hl                                        ; $6892: $e1
    ld c, c                                       ; $6893: $49
    ld c, d                                       ; $6894: $4a
    ld d, h                                       ; $6895: $54
    ld b, [hl]                                    ; $6896: $46
    ld [bc], a                                    ; $6897: $02
    ld [bc], a                                    ; $6898: $02
    ld [bc], a                                    ; $6899: $02
    ld bc, $0201                                  ; $689a: $01 $01 $02
    ld [bc], a                                    ; $689d: $02
    ld [bc], a                                    ; $689e: $02
    ld bc, $0201                                  ; $689f: $01 $01 $02
    ld [bc], a                                    ; $68a2: $02
    ld bc, $0101                                  ; $68a3: $01 $01 $01
    ld bc, $0603                                  ; $68a6: $01 $03 $06
    inc c                                         ; $68a9: $0c
    ld a, [c]                                     ; $68aa: $f2
    ld sp, hl                                     ; $68ab: $f9
    ld a, [$0603]                                 ; $68ac: $fa $03 $06
    pop hl                                        ; $68af: $e1
    ld hl, sp-$07                                 ; $68b0: $f8 $f9
    ld a, [$e147]                                 ; $68b2: $fa $47 $e1
    pop hl                                        ; $68b5: $e1
    ld hl, sp+$01                                 ; $68b6: $f8 $01
    ld bc, $0901                                  ; $68b8: $01 $01 $09
    ld bc, $0101                                  ; $68bb: $01 $01 $01
    ld bc, $0102                                  ; $68be: $01 $02 $01
    ld bc, $0101                                  ; $68c1: $01 $01 $01
    ld [bc], a                                    ; $68c4: $02
    ld [bc], a                                    ; $68c5: $02
    ld bc, $fa04                                  ; $68c6: $01 $04 $fa
    ei                                            ; $68c9: $fb
    or $0c                                        ; $68ca: $f6 $0c
    ld hl, sp-$07                                 ; $68cc: $f8 $f9
    pop hl                                        ; $68ce: $e1
    inc bc                                        ; $68cf: $03
    ld b, $f7                                     ; $68d0: $06 $f7
    pop hl                                        ; $68d2: $e1
    ld sp, hl                                     ; $68d3: $f9
    ld a, [$e1fb]                                 ; $68d4: $fa $fb $e1
    ld bc, $0101                                  ; $68d7: $01 $01 $01
    ld bc, $0101                                  ; $68da: $01 $01 $01
    ld bc, $0102                                  ; $68dd: $01 $02 $01
    ld bc, $0201                                  ; $68e0: $01 $01 $02
    ld bc, $0101                                  ; $68e3: $01 $01 $01
    ld [bc], a                                    ; $68e6: $02
    rst $30                                       ; $68e7: $f7
    pop hl                                        ; $68e8: $e1
    rlca                                          ; $68e9: $07
    ld [hl-], a                                   ; $68ea: $32
    pop hl                                        ; $68eb: $e1
    ld [$3509], sp                                ; $68ec: $08 $09 $35
    pop hl                                        ; $68ef: $e1
    ld a, [bc]                                    ; $68f0: $0a
    dec bc                                        ; $68f1: $0b
    add hl, sp                                    ; $68f2: $39
    pop hl                                        ; $68f3: $e1
    dec c                                         ; $68f4: $0d
    ld c, $3d                                     ; $68f5: $0e $3d
    ld bc, $8202                                  ; $68f7: $01 $02 $82
    add d                                         ; $68fa: $82
    ld [bc], a                                    ; $68fb: $02
    add d                                         ; $68fc: $82
    add d                                         ; $68fd: $82
    add d                                         ; $68fe: $82
    ld [bc], a                                    ; $68ff: $02
    add d                                         ; $6900: $82
    add d                                         ; $6901: $82
    add d                                         ; $6902: $82
    ld [bc], a                                    ; $6903: $02
    add d                                         ; $6904: $82
    add d                                         ; $6905: $82
    add d                                         ; $6906: $82
    ld b, a                                       ; $6907: $47
    ld d, e                                       ; $6908: $53
    ld d, l                                       ; $6909: $55
    ld c, d                                       ; $690a: $4a
    ld d, b                                       ; $690b: $50
    ld d, c                                       ; $690c: $51
    ld b, a                                       ; $690d: $47
    ld c, b                                       ; $690e: $48
    ld d, l                                       ; $690f: $55
    ld c, d                                       ; $6910: $4a
    ld d, h                                       ; $6911: $54
    pop hl                                        ; $6912: $e1
    ld b, a                                       ; $6913: $47
    ld c, b                                       ; $6914: $48
    ld c, c                                       ; $6915: $49
    ld c, d                                       ; $6916: $4a
    ld bc, $0101                                  ; $6917: $01 $01 $01
    ld bc, $0101                                  ; $691a: $01 $01 $01
    ld bc, $0101                                  ; $691d: $01 $01 $01
    ld bc, $0201                                  ; $6920: $01 $01 $02
    ld bc, $0101                                  ; $6923: $01 $01 $01
    ld bc, $e154                                  ; $6926: $01 $54 $e1
    ei                                            ; $6929: $fb
    or $e1                                        ; $692a: $f6 $e1
    pop hl                                        ; $692c: $e1
    pop hl                                        ; $692d: $e1
    pop hl                                        ; $692e: $e1
    pop hl                                        ; $692f: $e1
    pop hl                                        ; $6930: $e1
    pop hl                                        ; $6931: $e1
    pop hl                                        ; $6932: $e1
    ld d, h                                       ; $6933: $54
    ld b, [hl]                                    ; $6934: $46
    ld b, a                                       ; $6935: $47
    ld c, b                                       ; $6936: $48
    ld bc, $0102                                  ; $6937: $01 $02 $01
    ld bc, $0202                                  ; $693a: $01 $02 $02
    ld [bc], a                                    ; $693d: $02
    ld [bc], a                                    ; $693e: $02
    ld [bc], a                                    ; $693f: $02
    ld [bc], a                                    ; $6940: $02
    ld [bc], a                                    ; $6941: $02
    ld [bc], a                                    ; $6942: $02
    ld bc, $0101                                  ; $6943: $01 $01 $01
    ld bc, $f8f7                                  ; $6946: $01 $f7 $f8
    inc b                                         ; $6949: $04
    ld [bc], a                                    ; $694a: $02
    ei                                            ; $694b: $fb
    or $f7                                        ; $694c: $f6 $f7
    ld hl, sp-$1f                                 ; $694e: $f8 $e1
    pop hl                                        ; $6950: $e1
    pop hl                                        ; $6951: $e1
    or $e1                                        ; $6952: $f6 $e1
    pop hl                                        ; $6954: $e1
    pop hl                                        ; $6955: $e1
    pop hl                                        ; $6956: $e1
    ld bc, $0101                                  ; $6957: $01 $01 $01
    ld bc, $0101                                  ; $695a: $01 $01 $01
    ld bc, $0201                                  ; $695d: $01 $01 $02
    ld [bc], a                                    ; $6960: $02
    ld [bc], a                                    ; $6961: $02
    ld bc, $0202                                  ; $6962: $01 $02 $02
    ld [bc], a                                    ; $6965: $02
    ld [bc], a                                    ; $6966: $02
    inc bc                                        ; $6967: $03
    ld b, $0c                                     ; $6968: $06 $0c
    ld a, [c]                                     ; $696a: $f2
    ld sp, hl                                     ; $696b: $f9
    ld a, [$0603]                                 ; $696c: $fa $03 $06
    rst $30                                       ; $696f: $f7
    ld hl, sp-$07                                 ; $6970: $f8 $f9
    ld a, [$23e1]                                 ; $6972: $fa $e1 $23
    inc h                                         ; $6975: $24
    ld hl, sp+$01                                 ; $6976: $f8 $01
    ld bc, $0901                                  ; $6978: $01 $01 $09
    ld bc, $0101                                  ; $697b: $01 $01 $01
    ld bc, $0101                                  ; $697e: $01 $01 $01
    ld bc, $0201                                  ; $6981: $01 $01 $02
    ld bc, $0101                                  ; $6984: $01 $01 $01
    ld d, h                                       ; $6987: $54
    ld b, [hl]                                    ; $6988: $46
    ld d, d                                       ; $6989: $52
    ld d, e                                       ; $698a: $53
    ld d, l                                       ; $698b: $55
    ld d, [hl]                                    ; $698c: $56
    ld d, b                                       ; $698d: $50
    ld d, c                                       ; $698e: $51
    ld d, d                                       ; $698f: $52
    ld d, e                                       ; $6990: $53
    ld d, l                                       ; $6991: $55
    ld d, [hl]                                    ; $6992: $56
    ld d, h                                       ; $6993: $54
    ld d, c                                       ; $6994: $51
    ld d, d                                       ; $6995: $52
    ld d, e                                       ; $6996: $53
    ld bc, $0101                                  ; $6997: $01 $01 $01
    ld bc, $0101                                  ; $699a: $01 $01 $01
    ld bc, $0101                                  ; $699d: $01 $01 $01
    ld bc, $0101                                  ; $69a0: $01 $01 $01
    ld bc, $0101                                  ; $69a3: $01 $01 $01
    ld bc, $4a55                                  ; $69a6: $01 $55 $4a
    ld d, h                                       ; $69a9: $54
    ld b, [hl]                                    ; $69aa: $46
    ld d, d                                       ; $69ab: $52
    ld d, e                                       ; $69ac: $53
    ld d, l                                       ; $69ad: $55
    ld c, d                                       ; $69ae: $4a
    ld d, b                                       ; $69af: $50
    ld d, c                                       ; $69b0: $51
    ld d, d                                       ; $69b1: $52
    ld d, e                                       ; $69b2: $53
    ld d, l                                       ; $69b3: $55
    ld d, [hl]                                    ; $69b4: $56
    ld d, b                                       ; $69b5: $50
    ld d, c                                       ; $69b6: $51
    ld bc, $0101                                  ; $69b7: $01 $01 $01
    ld bc, $0101                                  ; $69ba: $01 $01 $01
    ld bc, $0101                                  ; $69bd: $01 $01 $01
    ld bc, $0101                                  ; $69c0: $01 $01 $01
    ld bc, $0101                                  ; $69c3: $01 $01 $01
    ld bc, $4847                                  ; $69c6: $01 $47 $48
    ld c, c                                       ; $69c9: $49
    ld c, d                                       ; $69ca: $4a
    ld d, h                                       ; $69cb: $54
    ld b, [hl]                                    ; $69cc: $46
    ld b, a                                       ; $69cd: $47
    ld c, b                                       ; $69ce: $48
    ld d, l                                       ; $69cf: $55
    ld d, [hl]                                    ; $69d0: $56
    ld d, b                                       ; $69d1: $50
    ld d, c                                       ; $69d2: $51
    ld d, d                                       ; $69d3: $52
    ld d, e                                       ; $69d4: $53
    ld d, l                                       ; $69d5: $55
    ld d, [hl]                                    ; $69d6: $56
    ld bc, $0101                                  ; $69d7: $01 $01 $01
    ld bc, $0101                                  ; $69da: $01 $01 $01
    ld bc, $0101                                  ; $69dd: $01 $01 $01
    ld bc, $0101                                  ; $69e0: $01 $01 $01
    ld bc, $0101                                  ; $69e3: $01 $01 $01
    ld bc, $e1e1                                  ; $69e6: $01 $e1 $e1
    pop hl                                        ; $69e9: $e1
    pop hl                                        ; $69ea: $e1
    ld c, c                                       ; $69eb: $49
    ld c, d                                       ; $69ec: $4a
    ld d, h                                       ; $69ed: $54
    ld b, [hl]                                    ; $69ee: $46
    ld b, a                                       ; $69ef: $47
    ld c, b                                       ; $69f0: $48
    ld c, c                                       ; $69f1: $49
    ld c, d                                       ; $69f2: $4a
    ld d, b                                       ; $69f3: $50
    ld d, c                                       ; $69f4: $51
    ld d, d                                       ; $69f5: $52
    ld d, e                                       ; $69f6: $53
    ld [bc], a                                    ; $69f7: $02
    ld [bc], a                                    ; $69f8: $02
    ld [bc], a                                    ; $69f9: $02
    ld [bc], a                                    ; $69fa: $02
    ld bc, $0101                                  ; $69fb: $01 $01 $01
    ld bc, $0101                                  ; $69fe: $01 $01 $01
    ld bc, $0101                                  ; $6a01: $01 $01 $01
    ld bc, $0101                                  ; $6a04: $01 $01 $01
    ld c, c                                       ; $6a07: $49
    ld c, d                                       ; $6a08: $4a
    ld d, h                                       ; $6a09: $54
    ld d, c                                       ; $6a0a: $51
    pop hl                                        ; $6a0b: $e1
    ld c, b                                       ; $6a0c: $48
    ld c, c                                       ; $6a0d: $49
    ld c, d                                       ; $6a0e: $4a
    ld sp, hl                                     ; $6a0f: $f9
    ld a, [$23e1]                                 ; $6a10: $fa $e1 $23
    pop hl                                        ; $6a13: $e1
    pop hl                                        ; $6a14: $e1
    ld b, c                                       ; $6a15: $41
    pop hl                                        ; $6a16: $e1
    ld bc, $0101                                  ; $6a17: $01 $01 $01
    ld bc, $0102                                  ; $6a1a: $01 $02 $01
    ld bc, $0101                                  ; $6a1d: $01 $01 $01
    ld bc, $0102                                  ; $6a20: $01 $02 $01
    ld [bc], a                                    ; $6a23: $02
    ld [bc], a                                    ; $6a24: $02
    ld bc, $5202                                  ; $6a25: $01 $02 $52
    ld d, e                                       ; $6a28: $53
    ld d, l                                       ; $6a29: $55
    ld d, [hl]                                    ; $6a2a: $56
    ld d, h                                       ; $6a2b: $54
    ld b, [hl]                                    ; $6a2c: $46
    ld b, a                                       ; $6a2d: $47
    ld c, b                                       ; $6a2e: $48
    inc h                                         ; $6a2f: $24
    ld c, d                                       ; $6a30: $4a
    ld d, h                                       ; $6a31: $54
    ld b, [hl]                                    ; $6a32: $46
    pop hl                                        ; $6a33: $e1
    pop hl                                        ; $6a34: $e1
    pop hl                                        ; $6a35: $e1
    ld b, d                                       ; $6a36: $42
    ld bc, $0101                                  ; $6a37: $01 $01 $01
    ld bc, $0101                                  ; $6a3a: $01 $01 $01
    ld bc, $0101                                  ; $6a3d: $01 $01 $01
    ld bc, $0101                                  ; $6a40: $01 $01 $01
    ld [bc], a                                    ; $6a43: $02
    ld [bc], a                                    ; $6a44: $02
    ld [bc], a                                    ; $6a45: $02
    ld bc, $5150                                  ; $6a46: $01 $50 $51
    ld d, d                                       ; $6a49: $52
    ld d, e                                       ; $6a4a: $53
    ld c, c                                       ; $6a4b: $49
    ld c, d                                       ; $6a4c: $4a
    ld d, h                                       ; $6a4d: $54
    ld b, [hl]                                    ; $6a4e: $46
    ld b, a                                       ; $6a4f: $47
    ld c, b                                       ; $6a50: $48
    ld c, c                                       ; $6a51: $49
    ld c, d                                       ; $6a52: $4a
    ld b, e                                       ; $6a53: $43
    pop hl                                        ; $6a54: $e1
    pop hl                                        ; $6a55: $e1
    pop hl                                        ; $6a56: $e1
    ld bc, $0101                                  ; $6a57: $01 $01 $01
    ld bc, $0101                                  ; $6a5a: $01 $01 $01
    ld bc, $0101                                  ; $6a5d: $01 $01 $01
    ld bc, $0101                                  ; $6a60: $01 $01 $01
    ld bc, $0202                                  ; $6a63: $01 $02 $02
    ld [bc], a                                    ; $6a66: $02
    ld d, l                                       ; $6a67: $55
    ld d, [hl]                                    ; $6a68: $56
    ld d, b                                       ; $6a69: $50
    ld d, c                                       ; $6a6a: $51
    ld b, a                                       ; $6a6b: $47
    ld c, b                                       ; $6a6c: $48
    ld c, c                                       ; $6a6d: $49
    ld c, d                                       ; $6a6e: $4a
    pop hl                                        ; $6a6f: $e1

jr_08c_6a70:
    pop hl                                        ; $6a70: $e1
    ld b, d                                       ; $6a71: $42
    ld b, e                                       ; $6a72: $43
    pop hl                                        ; $6a73: $e1
    pop hl                                        ; $6a74: $e1
    ld b, h                                       ; $6a75: $44
    ld b, l                                       ; $6a76: $45
    ld bc, $0101                                  ; $6a77: $01 $01 $01
    ld bc, $0101                                  ; $6a7a: $01 $01 $01
    ld bc, $0201                                  ; $6a7d: $01 $01 $02
    ld [bc], a                                    ; $6a80: $02
    ld bc, $0201                                  ; $6a81: $01 $01 $02
    ld [bc], a                                    ; $6a84: $02
    ld bc, $3301                                  ; $6a85: $01 $01 $33
    inc [hl]                                      ; $6a88: $34
    pop hl                                        ; $6a89: $e1
    pop hl                                        ; $6a8a: $e1
    ld [hl], $37                                  ; $6a8b: $36 $37
    jr c, jr_08c_6a70                             ; $6a8d: $38 $e1

    ld a, [hl-]                                   ; $6a8f: $3a
    dec sp                                        ; $6a90: $3b
    inc a                                         ; $6a91: $3c
    pop hl                                        ; $6a92: $e1
    ld a, $3f                                     ; $6a93: $3e $3f
    ld b, b                                       ; $6a95: $40
    pop hl                                        ; $6a96: $e1
    add d                                         ; $6a97: $82
    add d                                         ; $6a98: $82
    ld [bc], a                                    ; $6a99: $02
    ld [bc], a                                    ; $6a9a: $02
    add d                                         ; $6a9b: $82
    add d                                         ; $6a9c: $82
    add d                                         ; $6a9d: $82
    ld [bc], a                                    ; $6a9e: $02
    add d                                         ; $6a9f: $82
    add d                                         ; $6aa0: $82
    add d                                         ; $6aa1: $82
    ld [bc], a                                    ; $6aa2: $02
    add d                                         ; $6aa3: $82
    add d                                         ; $6aa4: $82
    add d                                         ; $6aa5: $82
    ld [bc], a                                    ; $6aa6: $02
    pop hl                                        ; $6aa7: $e1
    pop hl                                        ; $6aa8: $e1
    pop hl                                        ; $6aa9: $e1
    ld b, h                                       ; $6aaa: $44
    pop hl                                        ; $6aab: $e1
    pop hl                                        ; $6aac: $e1
    pop hl                                        ; $6aad: $e1
    pop hl                                        ; $6aae: $e1
    pop hl                                        ; $6aaf: $e1
    pop hl                                        ; $6ab0: $e1
    pop hl                                        ; $6ab1: $e1
    ld b, c                                       ; $6ab2: $41
    pop hl                                        ; $6ab3: $e1
    pop hl                                        ; $6ab4: $e1
    pop hl                                        ; $6ab5: $e1
    pop hl                                        ; $6ab6: $e1
    ld [bc], a                                    ; $6ab7: $02
    ld [bc], a                                    ; $6ab8: $02
    ld [bc], a                                    ; $6ab9: $02
    ld bc, $0202                                  ; $6aba: $01 $02 $02
    ld [bc], a                                    ; $6abd: $02
    ld [bc], a                                    ; $6abe: $02
    ld [bc], a                                    ; $6abf: $02
    ld [bc], a                                    ; $6ac0: $02
    ld [bc], a                                    ; $6ac1: $02
    ld bc, $0202                                  ; $6ac2: $01 $02 $02
    ld [bc], a                                    ; $6ac5: $02
    ld [bc], a                                    ; $6ac6: $02
    ld b, l                                       ; $6ac7: $45
    pop hl                                        ; $6ac8: $e1
    ld b, c                                       ; $6ac9: $41
    pop hl                                        ; $6aca: $e1
    pop hl                                        ; $6acb: $e1
    pop hl                                        ; $6acc: $e1
    pop hl                                        ; $6acd: $e1
    pop hl                                        ; $6ace: $e1
    pop hl                                        ; $6acf: $e1
    pop hl                                        ; $6ad0: $e1
    pop hl                                        ; $6ad1: $e1
    pop hl                                        ; $6ad2: $e1
    pop hl                                        ; $6ad3: $e1
    pop hl                                        ; $6ad4: $e1
    pop hl                                        ; $6ad5: $e1
    pop hl                                        ; $6ad6: $e1
    ld bc, $0102                                  ; $6ad7: $01 $02 $01
    ld [bc], a                                    ; $6ada: $02
    ld [bc], a                                    ; $6adb: $02
    ld [bc], a                                    ; $6adc: $02
    ld [bc], a                                    ; $6add: $02
    ld [bc], a                                    ; $6ade: $02
    ld [bc], a                                    ; $6adf: $02
    ld [bc], a                                    ; $6ae0: $02
    ld [bc], a                                    ; $6ae1: $02
    ld [bc], a                                    ; $6ae2: $02
    ld [bc], a                                    ; $6ae3: $02
    ld [bc], a                                    ; $6ae4: $02
    ld [bc], a                                    ; $6ae5: $02
    ld [bc], a                                    ; $6ae6: $02
    pop hl                                        ; $6ae7: $e1
    pop hl                                        ; $6ae8: $e1
    inc c                                         ; $6ae9: $0c
    ld a, [c]                                     ; $6aea: $f2
    pop hl                                        ; $6aeb: $e1
    rlca                                          ; $6aec: $07
    ld [hl-], a                                   ; $6aed: $32
    inc sp                                        ; $6aee: $33
    ld [$3509], sp                                ; $6aef: $08 $09 $35
    ld [hl], $0a                                  ; $6af2: $36 $0a
    dec bc                                        ; $6af4: $0b
    add hl, sp                                    ; $6af5: $39
    ld a, [hl-]                                   ; $6af6: $3a
    ld [bc], a                                    ; $6af7: $02
    ld [bc], a                                    ; $6af8: $02
    ld bc, $0209                                  ; $6af9: $01 $09 $02
    add d                                         ; $6afc: $82
    add d                                         ; $6afd: $82
    add d                                         ; $6afe: $82
    add d                                         ; $6aff: $82
    add d                                         ; $6b00: $82
    add d                                         ; $6b01: $82
    add d                                         ; $6b02: $82
    add d                                         ; $6b03: $82
    add d                                         ; $6b04: $82
    add d                                         ; $6b05: $82
    add d                                         ; $6b06: $82
    inc b                                         ; $6b07: $04
    ld [bc], a                                    ; $6b08: $02
    inc bc                                        ; $6b09: $03
    or $0c                                        ; $6b0a: $f6 $0c
    ld a, [c]                                     ; $6b0c: $f2
    inc b                                         ; $6b0d: $04
    ld [bc], a                                    ; $6b0e: $02
    inc bc                                        ; $6b0f: $03
    ld b, $0c                                     ; $6b10: $06 $0c
    ld a, [c]                                     ; $6b12: $f2
    ld sp, hl                                     ; $6b13: $f9
    ld a, [$06fb]                                 ; $6b14: $fa $fb $06
    ld bc, $0101                                  ; $6b17: $01 $01 $01
    ld bc, $0901                                  ; $6b1a: $01 $01 $09
    ld bc, $0101                                  ; $6b1d: $01 $01 $01
    ld bc, $0901                                  ; $6b20: $01 $01 $09
    ld bc, $0101                                  ; $6b23: $01 $01 $01
    ld bc, $f20c                                  ; $6b26: $01 $0c $f2
    inc b                                         ; $6b29: $04
    ld a, [$0603]                                 ; $6b2a: $fa $03 $06
    inc c                                         ; $6b2d: $0c
    ld a, [c]                                     ; $6b2e: $f2
    inc b                                         ; $6b2f: $04
    ld [bc], a                                    ; $6b30: $02
    inc bc                                        ; $6b31: $03
    or $0c                                        ; $6b32: $f6 $0c
    ld a, [c]                                     ; $6b34: $f2
    ld sp, hl                                     ; $6b35: $f9
    pop hl                                        ; $6b36: $e1
    ld bc, $0109                                  ; $6b37: $01 $09 $01
    ld bc, $0101                                  ; $6b3a: $01 $01 $01
    ld bc, $0109                                  ; $6b3d: $01 $09 $01
    ld bc, $0101                                  ; $6b40: $01 $01 $01
    ld bc, $0109                                  ; $6b43: $01 $09 $01
    ld [bc], a                                    ; $6b46: $02
    ei                                            ; $6b47: $fb
    jp nc, $d4d3                                  ; $6b48: $d2 $d3 $d4

    ld sp, hl                                     ; $6b4b: $f9
    rst $08                                       ; $6b4c: $cf
    ret nc                                        ; $6b4d: $d0

    pop de                                        ; $6b4e: $d1
    pop hl                                        ; $6b4f: $e1
    jp nc, $d4d3                                  ; $6b50: $d2 $d3 $d4

    pop hl                                        ; $6b53: $e1
    rst $08                                       ; $6b54: $cf
    ret nc                                        ; $6b55: $d0

    pop de                                        ; $6b56: $d1
    ld bc, $0f0f                                  ; $6b57: $01 $0f $0f
    rrca                                          ; $6b5a: $0f
    ld bc, $0f0f                                  ; $6b5b: $01 $0f $0f
    rrca                                          ; $6b5e: $0f
    ld [bc], a                                    ; $6b5f: $02
    rrca                                          ; $6b60: $0f
    rrca                                          ; $6b61: $0f
    rrca                                          ; $6b62: $0f
    ld [bc], a                                    ; $6b63: $02
    rrca                                          ; $6b64: $0f
    rrca                                          ; $6b65: $0f
    rrca                                          ; $6b66: $0f
    pop hl                                        ; $6b67: $e1
    pop hl                                        ; $6b68: $e1
    ld sp, hl                                     ; $6b69: $f9
    ld a, [$23e1]                                 ; $6b6a: $fa $e1 $23
    inc h                                         ; $6b6d: $24
    ld hl, sp+$54                                 ; $6b6e: $f8 $54
    ld b, [hl]                                    ; $6b70: $46
    ld b, a                                       ; $6b71: $47
    pop hl                                        ; $6b72: $e1
    ld d, l                                       ; $6b73: $55
    ld d, [hl]                                    ; $6b74: $56
    ld d, h                                       ; $6b75: $54
    ld b, [hl]                                    ; $6b76: $46
    ld [bc], a                                    ; $6b77: $02
    ld [bc], a                                    ; $6b78: $02
    ld bc, $0201                                  ; $6b79: $01 $01 $02
    ld bc, $0101                                  ; $6b7c: $01 $01 $01
    ld bc, $0101                                  ; $6b7f: $01 $01 $01
    ld [bc], a                                    ; $6b82: $02
    ld bc, $0101                                  ; $6b83: $01 $01 $01
    ld bc, $6103                                  ; $6b86: $01 $03 $61
    ld h, d                                       ; $6b89: $62
    ld hl, sp-$07                                 ; $6b8a: $f8 $f9
    ld h, e                                       ; $6b8c: $63
    ld h, h                                       ; $6b8d: $64
    ld b, $f7                                     ; $6b8e: $06 $f7
    ld h, l                                       ; $6b90: $65
    ld h, [hl]                                    ; $6b91: $66
    ld a, [$e1e1]                                 ; $6b92: $fa $e1 $e1
    rst $30                                       ; $6b95: $f7
    ld hl, sp+$01                                 ; $6b96: $f8 $01
    add hl, bc                                    ; $6b98: $09
    add hl, bc                                    ; $6b99: $09
    ld bc, $0901                                  ; $6b9a: $01 $01 $09
    add hl, bc                                    ; $6b9d: $09
    ld bc, $0901                                  ; $6b9e: $01 $01 $09
    add hl, bc                                    ; $6ba1: $09
    ld bc, $0202                                  ; $6ba2: $01 $02 $02
    ld bc, $e101                                  ; $6ba5: $01 $01 $e1
    jp nc, $d4d3                                  ; $6ba8: $d2 $d3 $d4

    rst $30                                       ; $6bab: $f7
    rst $08                                       ; $6bac: $cf
    ret nc                                        ; $6bad: $d0

    pop de                                        ; $6bae: $d1
    ei                                            ; $6baf: $fb
    jp nc, $d4d3                                  ; $6bb0: $d2 $d3 $d4

    pop hl                                        ; $6bb3: $e1
    rst $08                                       ; $6bb4: $cf
    ret nc                                        ; $6bb5: $d0

    pop de                                        ; $6bb6: $d1
    ld [bc], a                                    ; $6bb7: $02
    rrca                                          ; $6bb8: $0f
    rrca                                          ; $6bb9: $0f
    rrca                                          ; $6bba: $0f
    ld bc, $0f0f                                  ; $6bbb: $01 $0f $0f
    rrca                                          ; $6bbe: $0f
    ld bc, $0f0f                                  ; $6bbf: $01 $0f $0f
    rrca                                          ; $6bc2: $0f
    ld [bc], a                                    ; $6bc3: $02
    rrca                                          ; $6bc4: $0f
    rrca                                          ; $6bc5: $0f
    rrca                                          ; $6bc6: $0f
    ld d, d                                       ; $6bc7: $52
    ld c, b                                       ; $6bc8: $48
    ld c, c                                       ; $6bc9: $49
    ld c, d                                       ; $6bca: $4a
    ld d, h                                       ; $6bcb: $54
    ld b, [hl]                                    ; $6bcc: $46
    pop hl                                        ; $6bcd: $e1
    pop hl                                        ; $6bce: $e1
    pop hl                                        ; $6bcf: $e1
    pop hl                                        ; $6bd0: $e1
    pop hl                                        ; $6bd1: $e1
    ld b, c                                       ; $6bd2: $41
    pop hl                                        ; $6bd3: $e1
    ld b, $0c                                     ; $6bd4: $06 $0c
    ld a, [c]                                     ; $6bd6: $f2
    ld bc, $0101                                  ; $6bd7: $01 $01 $01
    ld bc, $0101                                  ; $6bda: $01 $01 $01
    ld [bc], a                                    ; $6bdd: $02
    ld [bc], a                                    ; $6bde: $02
    ld [bc], a                                    ; $6bdf: $02
    ld [bc], a                                    ; $6be0: $02
    ld [bc], a                                    ; $6be1: $02
    ld bc, $0102                                  ; $6be2: $01 $02 $01
    ld bc, $5409                                  ; $6be5: $01 $09 $54
    pop hl                                        ; $6be8: $e1
    pop hl                                        ; $6be9: $e1
    pop hl                                        ; $6bea: $e1
    pop hl                                        ; $6beb: $e1
    pop hl                                        ; $6bec: $e1
    ld b, c                                       ; $6bed: $41
    pop hl                                        ; $6bee: $e1
    pop hl                                        ; $6bef: $e1
    pop hl                                        ; $6bf0: $e1
    pop hl                                        ; $6bf1: $e1
    pop hl                                        ; $6bf2: $e1

jr_08c_6bf3:
    inc b                                         ; $6bf3: $04
    ld [bc], a                                    ; $6bf4: $02
    inc bc                                        ; $6bf5: $03
    ld b, $01                                     ; $6bf6: $06 $01
    ld [bc], a                                    ; $6bf8: $02
    ld [bc], a                                    ; $6bf9: $02
    ld [bc], a                                    ; $6bfa: $02
    ld [bc], a                                    ; $6bfb: $02
    ld [bc], a                                    ; $6bfc: $02
    ld bc, $0202                                  ; $6bfd: $01 $02 $02
    ld [bc], a                                    ; $6c00: $02
    ld [bc], a                                    ; $6c01: $02
    ld [bc], a                                    ; $6c02: $02
    ld bc, $0101                                  ; $6c03: $01 $01 $01
    ld bc, $0204                                  ; $6c06: $01 $04 $02
    inc bc                                        ; $6c09: $03
    ld b, $34                                     ; $6c0a: $06 $34
    pop hl                                        ; $6c0c: $e1
    pop hl                                        ; $6c0d: $e1
    pop hl                                        ; $6c0e: $e1
    scf                                           ; $6c0f: $37
    jr c, jr_08c_6bf3                             ; $6c10: $38 $e1

    inc hl                                        ; $6c12: $23
    dec sp                                        ; $6c13: $3b
    inc a                                         ; $6c14: $3c
    pop hl                                        ; $6c15: $e1
    pop hl                                        ; $6c16: $e1
    ld bc, $0101                                  ; $6c17: $01 $01 $01
    ld bc, $0282                                  ; $6c1a: $01 $82 $02
    ld [bc], a                                    ; $6c1d: $02
    ld [bc], a                                    ; $6c1e: $02
    add d                                         ; $6c1f: $82
    add d                                         ; $6c20: $82
    ld [bc], a                                    ; $6c21: $02
    ld bc, $8282                                  ; $6c22: $01 $82 $82
    ld [bc], a                                    ; $6c25: $02
    ld [bc], a                                    ; $6c26: $02
    inc c                                         ; $6c27: $0c
    ld a, [c]                                     ; $6c28: $f2
    pop hl                                        ; $6c29: $e1
    pop hl                                        ; $6c2a: $e1
    inc bc                                        ; $6c2b: $03
    ld b, $0c                                     ; $6c2c: $06 $0c
    pop hl                                        ; $6c2e: $e1
    inc h                                         ; $6c2f: $24
    pop hl                                        ; $6c30: $e1
    inc bc                                        ; $6c31: $03
    ld b, $e1                                     ; $6c32: $06 $e1
    pop hl                                        ; $6c34: $e1
    pop hl                                        ; $6c35: $e1
    pop hl                                        ; $6c36: $e1
    ld bc, $0209                                  ; $6c37: $01 $09 $02
    ld [bc], a                                    ; $6c3a: $02
    ld bc, $0101                                  ; $6c3b: $01 $01 $01
    ld [bc], a                                    ; $6c3e: $02
    ld bc, $0102                                  ; $6c3f: $01 $02 $01
    ld bc, $0202                                  ; $6c42: $01 $02 $02
    ld [bc], a                                    ; $6c45: $02
    ld [bc], a                                    ; $6c46: $02
    push de                                       ; $6c47: $d5
    sub $d7                                       ; $6c48: $d6 $d7
    ret c                                         ; $6c4a: $d8

    push de                                       ; $6c4b: $d5
    ld [c], a                                     ; $6c4c: $e2
    db $e3                                        ; $6c4d: $e3
    db $e4                                        ; $6c4e: $e4
    push de                                       ; $6c4f: $d5
    ld [c], a                                     ; $6c50: $e2
    db $e3                                        ; $6c51: $e3
    db $e4                                        ; $6c52: $e4
    push de                                       ; $6c53: $d5
    ld [c], a                                     ; $6c54: $e2
    db $e3                                        ; $6c55: $e3
    db $e4                                        ; $6c56: $e4
    dec bc                                        ; $6c57: $0b
    dec bc                                        ; $6c58: $0b
    dec bc                                        ; $6c59: $0b
    dec bc                                        ; $6c5a: $0b
    dec bc                                        ; $6c5b: $0b
    dec bc                                        ; $6c5c: $0b
    dec bc                                        ; $6c5d: $0b
    dec bc                                        ; $6c5e: $0b
    dec bc                                        ; $6c5f: $0b
    dec bc                                        ; $6c60: $0b
    dec bc                                        ; $6c61: $0b
    dec bc                                        ; $6c62: $0b
    dec bc                                        ; $6c63: $0b
    dec bc                                        ; $6c64: $0b
    dec bc                                        ; $6c65: $0b
    dec bc                                        ; $6c66: $0b
    pop hl                                        ; $6c67: $e1
    pop de                                        ; $6c68: $d1
    jp nc, $e1d3                                  ; $6c69: $d2 $d3 $e1

    push de                                       ; $6c6c: $d5
    sub $d7                                       ; $6c6d: $d6 $d7
    pop hl                                        ; $6c6f: $e1
    reti                                          ; $6c70: $d9


    jp c, $e3db                                   ; $6c71: $da $db $e3

    db $dd                                        ; $6c74: $dd
    sbc $df                                       ; $6c75: $de $df
    ld [bc], a                                    ; $6c77: $02
    inc bc                                        ; $6c78: $03
    add d                                         ; $6c79: $82
    add d                                         ; $6c7a: $82
    ld [bc], a                                    ; $6c7b: $02
    add d                                         ; $6c7c: $82
    add d                                         ; $6c7d: $82
    add d                                         ; $6c7e: $82
    ld [bc], a                                    ; $6c7f: $02
    add d                                         ; $6c80: $82
    add d                                         ; $6c81: $82
    add d                                         ; $6c82: $82
    add d                                         ; $6c83: $82
    add d                                         ; $6c84: $82
    add d                                         ; $6c85: $82
    add d                                         ; $6c86: $82
    call nc, $e1e1                                ; $6c87: $d4 $e1 $e1
    pop hl                                        ; $6c8a: $e1
    ret c                                         ; $6c8b: $d8

    ld [c], a                                     ; $6c8c: $e2
    pop hl                                        ; $6c8d: $e1
    pop hl                                        ; $6c8e: $e1
    call c, $41e4                                 ; $6c8f: $dc $e4 $41
    pop hl                                        ; $6c92: $e1
    ldh [$e8], a                                  ; $6c93: $e0 $e8
    pop hl                                        ; $6c95: $e1
    ld c, b                                       ; $6c96: $48
    add d                                         ; $6c97: $82
    ld [bc], a                                    ; $6c98: $02
    ld [bc], a                                    ; $6c99: $02
    ld [bc], a                                    ; $6c9a: $02
    add d                                         ; $6c9b: $82
    add d                                         ; $6c9c: $82
    ld [bc], a                                    ; $6c9d: $02
    ld [bc], a                                    ; $6c9e: $02
    add d                                         ; $6c9f: $82
    add d                                         ; $6ca0: $82
    ld bc, $8202                                  ; $6ca1: $01 $02 $82
    add d                                         ; $6ca4: $82
    ld [bc], a                                    ; $6ca5: $02
    ld bc, $e1e1                                  ; $6ca6: $01 $e1 $e1
    pop hl                                        ; $6ca9: $e1
    ld b, c                                       ; $6caa: $41
    pop hl                                        ; $6cab: $e1
    pop hl                                        ; $6cac: $e1
    ld c, c                                       ; $6cad: $49
    ld c, d                                       ; $6cae: $4a
    ld d, h                                       ; $6caf: $54
    ld b, [hl]                                    ; $6cb0: $46
    ld b, a                                       ; $6cb1: $47
    ld d, e                                       ; $6cb2: $53
    ld c, c                                       ; $6cb3: $49
    ld d, [hl]                                    ; $6cb4: $56
    ld d, b                                       ; $6cb5: $50
    ld d, c                                       ; $6cb6: $51
    ld [bc], a                                    ; $6cb7: $02
    ld [bc], a                                    ; $6cb8: $02
    ld [bc], a                                    ; $6cb9: $02
    ld bc, $0202                                  ; $6cba: $01 $02 $02
    ld bc, $0101                                  ; $6cbd: $01 $01 $01
    ld bc, $0101                                  ; $6cc0: $01 $01 $01
    ld bc, $0101                                  ; $6cc3: $01 $01 $01
    ld bc, $e1e1                                  ; $6cc6: $01 $e1 $e1
    ld c, c                                       ; $6cc9: $49
    ld c, d                                       ; $6cca: $4a
    ld d, h                                       ; $6ccb: $54
    ld b, [hl]                                    ; $6ccc: $46
    ld b, a                                       ; $6ccd: $47
    ld d, e                                       ; $6cce: $53
    ld d, l                                       ; $6ccf: $55
    ld d, [hl]                                    ; $6cd0: $56
    ld d, b                                       ; $6cd1: $50
    ld d, c                                       ; $6cd2: $51
    ld d, d                                       ; $6cd3: $52
    ld d, e                                       ; $6cd4: $53
    ld d, l                                       ; $6cd5: $55
    ld c, d                                       ; $6cd6: $4a
    ld [bc], a                                    ; $6cd7: $02
    ld [bc], a                                    ; $6cd8: $02
    ld bc, $0101                                  ; $6cd9: $01 $01 $01
    ld bc, $0101                                  ; $6cdc: $01 $01 $01
    ld bc, $0101                                  ; $6cdf: $01 $01 $01
    ld bc, $0101                                  ; $6ce2: $01 $01 $01
    ld bc, $e501                                  ; $6ce5: $01 $01 $e5
    and $e7                                       ; $6ce8: $e6 $e7
    db $eb                                        ; $6cea: $eb
    jp nc, $d4d3                                  ; $6ceb: $d2 $d3 $d4

    pop hl                                        ; $6cee: $e1
    sub $d7                                       ; $6cef: $d6 $d7
    ret c                                         ; $6cf1: $d8

    ld [c], a                                     ; $6cf2: $e2
    rst $28                                       ; $6cf3: $ef
    db $db                                        ; $6cf4: $db
    call c, $82e4                                 ; $6cf5: $dc $e4 $82
    add d                                         ; $6cf8: $82
    add d                                         ; $6cf9: $82
    inc bc                                        ; $6cfa: $03
    add d                                         ; $6cfb: $82
    add d                                         ; $6cfc: $82
    add d                                         ; $6cfd: $82
    ld [bc], a                                    ; $6cfe: $02
    add d                                         ; $6cff: $82
    add d                                         ; $6d00: $82
    add d                                         ; $6d01: $82
    add d                                         ; $6d02: $82
    add d                                         ; $6d03: $82
    add d                                         ; $6d04: $82
    add d                                         ; $6d05: $82
    add d                                         ; $6d06: $82
    pop hl                                        ; $6d07: $e1
    pop hl                                        ; $6d08: $e1
    ld d, h                                       ; $6d09: $54
    ld b, [hl]                                    ; $6d0a: $46
    pop hl                                        ; $6d0b: $e1
    ld c, b                                       ; $6d0c: $48
    ld c, c                                       ; $6d0d: $49
    ld d, [hl]                                    ; $6d0e: $56
    ld d, h                                       ; $6d0f: $54
    ld b, [hl]                                    ; $6d10: $46
    ld b, a                                       ; $6d11: $47
    ld d, e                                       ; $6d12: $53
    pop hl                                        ; $6d13: $e1
    ld c, d                                       ; $6d14: $4a
    ld d, h                                       ; $6d15: $54
    ld d, c                                       ; $6d16: $51
    ld [bc], a                                    ; $6d17: $02
    ld [bc], a                                    ; $6d18: $02
    ld bc, $0201                                  ; $6d19: $01 $01 $02
    ld bc, $0101                                  ; $6d1c: $01 $01 $01
    ld bc, $0101                                  ; $6d1f: $01 $01 $01
    ld bc, $0102                                  ; $6d22: $01 $02 $01
    ld bc, $5201                                  ; $6d25: $01 $01 $52
    ld d, e                                       ; $6d28: $53
    ld d, l                                       ; $6d29: $55
    ld d, [hl]                                    ; $6d2a: $56
    ld d, b                                       ; $6d2b: $50
    ld d, c                                       ; $6d2c: $51
    ld d, d                                       ; $6d2d: $52
    ld d, e                                       ; $6d2e: $53
    ld d, l                                       ; $6d2f: $55
    ld d, [hl]                                    ; $6d30: $56
    ld d, b                                       ; $6d31: $50
    ld b, [hl]                                    ; $6d32: $46
    ld d, d                                       ; $6d33: $52
    ld c, b                                       ; $6d34: $48
    ld c, c                                       ; $6d35: $49
    ld c, d                                       ; $6d36: $4a
    ld bc, $0101                                  ; $6d37: $01 $01 $01
    ld bc, $0101                                  ; $6d3a: $01 $01 $01
    ld bc, $0101                                  ; $6d3d: $01 $01 $01
    ld bc, $0101                                  ; $6d40: $01 $01 $01
    ld bc, $0101                                  ; $6d43: $01 $01 $01
    ld bc, $5150                                  ; $6d46: $01 $50 $51
    ld b, a                                       ; $6d49: $47
    ld c, b                                       ; $6d4a: $48
    ld c, c                                       ; $6d4b: $49
    ld c, d                                       ; $6d4c: $4a
    ld d, h                                       ; $6d4d: $54
    ld b, [hl]                                    ; $6d4e: $46
    ld b, a                                       ; $6d4f: $47
    ld c, b                                       ; $6d50: $48
    ld c, c                                       ; $6d51: $49
    pop hl                                        ; $6d52: $e1
    ld d, h                                       ; $6d53: $54
    pop hl                                        ; $6d54: $e1
    pop hl                                        ; $6d55: $e1
    pop hl                                        ; $6d56: $e1
    ld bc, $0101                                  ; $6d57: $01 $01 $01
    ld bc, $0101                                  ; $6d5a: $01 $01 $01
    ld bc, $0101                                  ; $6d5d: $01 $01 $01
    ld bc, $0201                                  ; $6d60: $01 $01 $02
    ld bc, $0202                                  ; $6d63: $01 $02 $02
    ld [bc], a                                    ; $6d66: $02
    pop af                                        ; $6d67: $f1
    rst $18                                       ; $6d68: $df
    ldh [$e8], a                                  ; $6d69: $e0 $e8
    pop hl                                        ; $6d6b: $e1
    db $eb                                        ; $6d6c: $eb
    pop hl                                        ; $6d6d: $e1
    pop hl                                        ; $6d6e: $e1
    ld h, a                                       ; $6d6f: $67
    ld l, b                                       ; $6d70: $68
    ld h, a                                       ; $6d71: $67
    ld l, b                                       ; $6d72: $68
    ld l, c                                       ; $6d73: $69
    ld l, d                                       ; $6d74: $6a
    ld l, c                                       ; $6d75: $69
    ld l, d                                       ; $6d76: $6a
    add d                                         ; $6d77: $82
    add d                                         ; $6d78: $82
    add d                                         ; $6d79: $82
    add d                                         ; $6d7a: $82
    ld [bc], a                                    ; $6d7b: $02
    inc bc                                        ; $6d7c: $03
    ld [bc], a                                    ; $6d7d: $02
    ld [bc], a                                    ; $6d7e: $02
    adc h                                         ; $6d7f: $8c
    adc h                                         ; $6d80: $8c
    adc h                                         ; $6d81: $8c
    adc h                                         ; $6d82: $8c
    adc h                                         ; $6d83: $8c
    adc h                                         ; $6d84: $8c
    adc h                                         ; $6d85: $8c
    adc h                                         ; $6d86: $8c
    ld b, c                                       ; $6d87: $41
    pop hl                                        ; $6d88: $e1
    ld c, c                                       ; $6d89: $49
    ld c, d                                       ; $6d8a: $4a
    pop hl                                        ; $6d8b: $e1
    pop hl                                        ; $6d8c: $e1
    pop hl                                        ; $6d8d: $e1
    ld c, b                                       ; $6d8e: $48
    ld h, a                                       ; $6d8f: $67
    ld l, b                                       ; $6d90: $68
    ld h, a                                       ; $6d91: $67
    ld l, b                                       ; $6d92: $68
    ld l, c                                       ; $6d93: $69
    ld l, d                                       ; $6d94: $6a
    ld l, c                                       ; $6d95: $69
    ld l, d                                       ; $6d96: $6a
    ld bc, $0102                                  ; $6d97: $01 $02 $01
    ld bc, $0202                                  ; $6d9a: $01 $02 $02
    ld [bc], a                                    ; $6d9d: $02
    ld bc, $8c8c                                  ; $6d9e: $01 $8c $8c
    adc h                                         ; $6da1: $8c
    adc h                                         ; $6da2: $8c
    adc h                                         ; $6da3: $8c
    adc h                                         ; $6da4: $8c
    adc h                                         ; $6da5: $8c
    adc h                                         ; $6da6: $8c
    ld d, h                                       ; $6da7: $54
    ld b, [hl]                                    ; $6da8: $46
    ld b, a                                       ; $6da9: $47
    ld c, b                                       ; $6daa: $48
    ld c, c                                       ; $6dab: $49
    pop hl                                        ; $6dac: $e1
    pop hl                                        ; $6dad: $e1
    pop hl                                        ; $6dae: $e1
    ld h, a                                       ; $6daf: $67
    ld l, b                                       ; $6db0: $68
    ld h, a                                       ; $6db1: $67
    ld l, b                                       ; $6db2: $68
    ld l, c                                       ; $6db3: $69
    ld l, d                                       ; $6db4: $6a
    ld l, c                                       ; $6db5: $69
    ld l, d                                       ; $6db6: $6a
    ld bc, $0101                                  ; $6db7: $01 $01 $01
    ld bc, $0201                                  ; $6dba: $01 $01 $02
    ld [bc], a                                    ; $6dbd: $02
    ld [bc], a                                    ; $6dbe: $02
    adc h                                         ; $6dbf: $8c
    adc h                                         ; $6dc0: $8c
    adc h                                         ; $6dc1: $8c
    adc h                                         ; $6dc2: $8c
    adc h                                         ; $6dc3: $8c
    adc h                                         ; $6dc4: $8c
    adc h                                         ; $6dc5: $8c
    adc h                                         ; $6dc6: $8c
    pop hl                                        ; $6dc7: $e1
    ld b, c                                       ; $6dc8: $41
    pop hl                                        ; $6dc9: $e1
    ld a, [$e1e1]                                 ; $6dca: $fa $e1 $e1
    pop hl                                        ; $6dcd: $e1
    pop hl                                        ; $6dce: $e1
    ld h, a                                       ; $6dcf: $67
    ld l, b                                       ; $6dd0: $68
    ld h, a                                       ; $6dd1: $67
    ld l, b                                       ; $6dd2: $68
    ld l, c                                       ; $6dd3: $69
    ld l, d                                       ; $6dd4: $6a
    ld l, c                                       ; $6dd5: $69
    ld l, d                                       ; $6dd6: $6a
    ld [bc], a                                    ; $6dd7: $02
    ld bc, $0102                                  ; $6dd8: $01 $02 $01
    ld [bc], a                                    ; $6ddb: $02
    ld [bc], a                                    ; $6ddc: $02
    ld [bc], a                                    ; $6ddd: $02
    ld [bc], a                                    ; $6dde: $02
    adc h                                         ; $6ddf: $8c
    adc h                                         ; $6de0: $8c
    adc h                                         ; $6de1: $8c
    adc h                                         ; $6de2: $8c
    adc h                                         ; $6de3: $8c
    adc h                                         ; $6de4: $8c
    adc h                                         ; $6de5: $8c
    adc h                                         ; $6de6: $8c
    ld l, e                                       ; $6de7: $6b
    ld l, h                                       ; $6de8: $6c
    ld l, e                                       ; $6de9: $6b
    ld l, l                                       ; $6dea: $6d
    ld l, [hl]                                    ; $6deb: $6e
    ld l, a                                       ; $6dec: $6f
    ld l, [hl]                                    ; $6ded: $6e
    ld [hl], b                                    ; $6dee: $70
    ld [hl], c                                    ; $6def: $71
    ld [hl], d                                    ; $6df0: $72
    ld [hl], c                                    ; $6df1: $71
    ld [hl], e                                    ; $6df2: $73
    ld [hl], h                                    ; $6df3: $74
    ld [hl], l                                    ; $6df4: $75
    ld [hl], h                                    ; $6df5: $74
    ld [hl], h                                    ; $6df6: $74
    adc h                                         ; $6df7: $8c
    adc h                                         ; $6df8: $8c
    adc h                                         ; $6df9: $8c
    adc h                                         ; $6dfa: $8c
    adc h                                         ; $6dfb: $8c
    adc h                                         ; $6dfc: $8c
    adc h                                         ; $6dfd: $8c
    adc h                                         ; $6dfe: $8c
    adc h                                         ; $6dff: $8c
    adc h                                         ; $6e00: $8c
    adc h                                         ; $6e01: $8c
    adc h                                         ; $6e02: $8c
    adc h                                         ; $6e03: $8c
    adc h                                         ; $6e04: $8c
    adc h                                         ; $6e05: $8c
    adc h                                         ; $6e06: $8c
    ld d, h                                       ; $6e07: $54
    ld b, [hl]                                    ; $6e08: $46
    ld b, a                                       ; $6e09: $47
    ld c, b                                       ; $6e0a: $48
    ld d, l                                       ; $6e0b: $55
    ld d, [hl]                                    ; $6e0c: $56
    ld d, h                                       ; $6e0d: $54
    ld b, [hl]                                    ; $6e0e: $46
    ld d, d                                       ; $6e0f: $52
    ld c, b                                       ; $6e10: $48
    ld c, c                                       ; $6e11: $49
    pop hl                                        ; $6e12: $e1
    ld d, h                                       ; $6e13: $54
    ld b, [hl]                                    ; $6e14: $46
    pop hl                                        ; $6e15: $e1
    ld b, c                                       ; $6e16: $41
    ld bc, $0101                                  ; $6e17: $01 $01 $01
    ld bc, $0101                                  ; $6e1a: $01 $01 $01
    ld bc, $0101                                  ; $6e1d: $01 $01 $01
    ld bc, $0201                                  ; $6e20: $01 $01 $02
    ld bc, $0201                                  ; $6e23: $01 $01 $02
    ld bc, $f549                                  ; $6e26: $01 $49 $f5
    db $f4                                        ; $6e29: $f4
    push af                                       ; $6e2a: $f5
    pop hl                                        ; $6e2b: $e1
    db $e3                                        ; $6e2c: $e3
    db $dd                                        ; $6e2d: $dd
    nop                                           ; $6e2e: $00
    pop hl                                        ; $6e2f: $e1
    push hl                                       ; $6e30: $e5
    and $e7                                       ; $6e31: $e6 $e7
    rrca                                          ; $6e33: $0f
    jp nc, $d4d3                                  ; $6e34: $d2 $d3 $d4

    ld bc, $82a2                                  ; $6e37: $01 $a2 $82
    add d                                         ; $6e3a: $82
    ld [bc], a                                    ; $6e3b: $02
    add d                                         ; $6e3c: $82
    add d                                         ; $6e3d: $82
    add d                                         ; $6e3e: $82
    ld [bc], a                                    ; $6e3f: $02
    add d                                         ; $6e40: $82
    add d                                         ; $6e41: $82
    add d                                         ; $6e42: $82
    add d                                         ; $6e43: $82
    add d                                         ; $6e44: $82
    add d                                         ; $6e45: $82
    add d                                         ; $6e46: $82
    pop hl                                        ; $6e47: $e1
    pop hl                                        ; $6e48: $e1
    pop hl                                        ; $6e49: $e1
    pop hl                                        ; $6e4a: $e1
    pop hl                                        ; $6e4b: $e1
    pop hl                                        ; $6e4c: $e1
    ld b, c                                       ; $6e4d: $41
    pop hl                                        ; $6e4e: $e1
    ld b, c                                       ; $6e4f: $41
    pop hl                                        ; $6e50: $e1
    pop hl                                        ; $6e51: $e1
    pop hl                                        ; $6e52: $e1
    pop hl                                        ; $6e53: $e1
    pop hl                                        ; $6e54: $e1
    pop hl                                        ; $6e55: $e1
    ld b, d                                       ; $6e56: $42
    ld [bc], a                                    ; $6e57: $02
    ld [bc], a                                    ; $6e58: $02
    ld [bc], a                                    ; $6e59: $02
    ld [bc], a                                    ; $6e5a: $02
    ld [bc], a                                    ; $6e5b: $02
    ld [bc], a                                    ; $6e5c: $02
    ld bc, $0102                                  ; $6e5d: $01 $02 $01
    ld [bc], a                                    ; $6e60: $02
    ld [bc], a                                    ; $6e61: $02
    ld [bc], a                                    ; $6e62: $02
    ld [bc], a                                    ; $6e63: $02
    ld [bc], a                                    ; $6e64: $02
    ld [bc], a                                    ; $6e65: $02
    ld bc, $2423                                  ; $6e66: $01 $23 $24
    pop hl                                        ; $6e69: $e1
    di                                            ; $6e6a: $f3
    pop hl                                        ; $6e6b: $e1
    pop hl                                        ; $6e6c: $e1
    pop hl                                        ; $6e6d: $e1
    pop hl                                        ; $6e6e: $e1
    pop hl                                        ; $6e6f: $e1
    pop hl                                        ; $6e70: $e1
    pop hl                                        ; $6e71: $e1
    pop hl                                        ; $6e72: $e1
    ld b, e                                       ; $6e73: $43
    pop hl                                        ; $6e74: $e1
    pop hl                                        ; $6e75: $e1
    ld b, c                                       ; $6e76: $41
    ld bc, $0201                                  ; $6e77: $01 $01 $02
    adc d                                         ; $6e7a: $8a
    ld [bc], a                                    ; $6e7b: $02
    ld [bc], a                                    ; $6e7c: $02
    ld [bc], a                                    ; $6e7d: $02
    ld [bc], a                                    ; $6e7e: $02
    ld [bc], a                                    ; $6e7f: $02
    ld [bc], a                                    ; $6e80: $02
    ld [bc], a                                    ; $6e81: $02
    ld [bc], a                                    ; $6e82: $02
    ld bc, $0202                                  ; $6e83: $01 $02 $02
    ld bc, $e149                                  ; $6e86: $01 $49 $e1
    pop hl                                        ; $6e89: $e1
    pop hl                                        ; $6e8a: $e1
    pop hl                                        ; $6e8b: $e1
    pop hl                                        ; $6e8c: $e1
    ld b, c                                       ; $6e8d: $41
    pop hl                                        ; $6e8e: $e1
    pop hl                                        ; $6e8f: $e1
    ld a, [$e1e1]                                 ; $6e90: $fa $e1 $e1
    rst $30                                       ; $6e93: $f7
    ld hl, sp-$07                                 ; $6e94: $f8 $f9
    ld a, [$0201]                                 ; $6e96: $fa $01 $02
    ld [bc], a                                    ; $6e99: $02
    ld [bc], a                                    ; $6e9a: $02
    ld [bc], a                                    ; $6e9b: $02
    ld [bc], a                                    ; $6e9c: $02
    ld bc, $0202                                  ; $6e9d: $01 $02 $02
    ld bc, $0202                                  ; $6ea0: $01 $02 $02
    ld bc, $0101                                  ; $6ea3: $01 $01 $01
    ld bc, $e1e2                                  ; $6ea6: $01 $e2 $e1
    pop hl                                        ; $6ea9: $e1
    ld b, h                                       ; $6eaa: $44
    db $e4                                        ; $6eab: $e4
    pop hl                                        ; $6eac: $e1
    pop hl                                        ; $6ead: $e1
    pop hl                                        ; $6eae: $e1
    add sp, $48                                   ; $6eaf: $e8 $48
    ld c, c                                       ; $6eb1: $49
    ld c, d                                       ; $6eb2: $4a
    pop hl                                        ; $6eb3: $e1
    pop hl                                        ; $6eb4: $e1
    pop hl                                        ; $6eb5: $e1
    ld c, b                                       ; $6eb6: $48
    add d                                         ; $6eb7: $82
    ld [bc], a                                    ; $6eb8: $02
    ld [bc], a                                    ; $6eb9: $02
    ld bc, $0282                                  ; $6eba: $01 $82 $02
    ld [bc], a                                    ; $6ebd: $02
    ld [bc], a                                    ; $6ebe: $02
    add d                                         ; $6ebf: $82
    ld bc, $0101                                  ; $6ec0: $01 $01 $01
    ld [bc], a                                    ; $6ec3: $02
    ld [bc], a                                    ; $6ec4: $02
    ld [bc], a                                    ; $6ec5: $02
    ld bc, $4a45                                  ; $6ec6: $01 $45 $4a
    ld d, h                                       ; $6ec9: $54
    ld b, [hl]                                    ; $6eca: $46
    ld b, a                                       ; $6ecb: $47
    ld c, b                                       ; $6ecc: $48
    ld c, c                                       ; $6ecd: $49
    ld c, d                                       ; $6ece: $4a
    ld d, h                                       ; $6ecf: $54
    ld b, [hl]                                    ; $6ed0: $46
    ld b, a                                       ; $6ed1: $47
    ld c, b                                       ; $6ed2: $48
    ld c, c                                       ; $6ed3: $49
    ld c, d                                       ; $6ed4: $4a
    pop hl                                        ; $6ed5: $e1
    ld b, [hl]                                    ; $6ed6: $46
    ld bc, $0101                                  ; $6ed7: $01 $01 $01
    ld bc, $0101                                  ; $6eda: $01 $01 $01
    ld bc, $0101                                  ; $6edd: $01 $01 $01
    ld bc, $0101                                  ; $6ee0: $01 $01 $01
    ld bc, $0201                                  ; $6ee3: $01 $01 $02
    ld bc, $f6fb                                  ; $6ee6: $01 $fb $f6
    rst $30                                       ; $6ee9: $f7
    ld hl, sp-$1f                                 ; $6eea: $f8 $e1
    ld b, c                                       ; $6eec: $41
    pop hl                                        ; $6eed: $e1
    pop hl                                        ; $6eee: $e1
    ld h, a                                       ; $6eef: $67
    ld l, b                                       ; $6ef0: $68
    ld h, a                                       ; $6ef1: $67
    ld l, b                                       ; $6ef2: $68
    ld l, c                                       ; $6ef3: $69
    ld l, d                                       ; $6ef4: $6a
    ld l, c                                       ; $6ef5: $69
    ld l, d                                       ; $6ef6: $6a
    ld bc, $0101                                  ; $6ef7: $01 $01 $01
    ld bc, $0102                                  ; $6efa: $01 $02 $01
    ld [bc], a                                    ; $6efd: $02
    ld [bc], a                                    ; $6efe: $02
    adc h                                         ; $6eff: $8c
    adc h                                         ; $6f00: $8c
    adc h                                         ; $6f01: $8c
    adc h                                         ; $6f02: $8c
    adc h                                         ; $6f03: $8c
    adc h                                         ; $6f04: $8c
    adc h                                         ; $6f05: $8c
    adc h                                         ; $6f06: $8c
    ld sp, hl                                     ; $6f07: $f9
    ld a, [$f6fb]                                 ; $6f08: $fa $fb $f6
    rst $30                                       ; $6f0b: $f7
    ld hl, sp-$07                                 ; $6f0c: $f8 $f9
    ld a, [$6867]                                 ; $6f0e: $fa $67 $68
    ld h, a                                       ; $6f11: $67
    ld l, b                                       ; $6f12: $68
    ld l, c                                       ; $6f13: $69
    ld l, d                                       ; $6f14: $6a
    ld l, c                                       ; $6f15: $69
    ld l, d                                       ; $6f16: $6a
    ld bc, $0101                                  ; $6f17: $01 $01 $01
    ld bc, $0101                                  ; $6f1a: $01 $01 $01
    ld bc, $8c01                                  ; $6f1d: $01 $01 $8c
    adc h                                         ; $6f20: $8c
    adc h                                         ; $6f21: $8c
    adc h                                         ; $6f22: $8c
    adc h                                         ; $6f23: $8c
    adc h                                         ; $6f24: $8c
    adc h                                         ; $6f25: $8c
    adc h                                         ; $6f26: $8c
    rst $30                                       ; $6f27: $f7
    ld hl, sp-$07                                 ; $6f28: $f8 $f9
    ld a, [$f6fb]                                 ; $6f2a: $fa $fb $f6
    pop hl                                        ; $6f2d: $e1
    pop hl                                        ; $6f2e: $e1
    ld h, a                                       ; $6f2f: $67
    ld l, b                                       ; $6f30: $68
    ld h, a                                       ; $6f31: $67
    ld l, b                                       ; $6f32: $68
    ld l, c                                       ; $6f33: $69
    ld l, d                                       ; $6f34: $6a
    ld l, c                                       ; $6f35: $69
    ld l, d                                       ; $6f36: $6a
    ld bc, $0101                                  ; $6f37: $01 $01 $01
    ld bc, $0101                                  ; $6f3a: $01 $01 $01
    ld [bc], a                                    ; $6f3d: $02
    ld [bc], a                                    ; $6f3e: $02
    adc h                                         ; $6f3f: $8c
    adc h                                         ; $6f40: $8c
    adc h                                         ; $6f41: $8c
    adc h                                         ; $6f42: $8c
    adc h                                         ; $6f43: $8c
    adc h                                         ; $6f44: $8c
    adc h                                         ; $6f45: $8c
    adc h                                         ; $6f46: $8c
    ld b, c                                       ; $6f47: $41
    pop hl                                        ; $6f48: $e1
    pop hl                                        ; $6f49: $e1
    pop hl                                        ; $6f4a: $e1
    pop hl                                        ; $6f4b: $e1
    pop hl                                        ; $6f4c: $e1
    pop hl                                        ; $6f4d: $e1
    pop hl                                        ; $6f4e: $e1
    ld h, a                                       ; $6f4f: $67
    ld l, b                                       ; $6f50: $68
    ld h, a                                       ; $6f51: $67
    ld l, b                                       ; $6f52: $68
    ld l, c                                       ; $6f53: $69
    ld l, d                                       ; $6f54: $6a
    ld l, c                                       ; $6f55: $69
    ld l, d                                       ; $6f56: $6a
    ld bc, $0202                                  ; $6f57: $01 $02 $02
    ld [bc], a                                    ; $6f5a: $02
    ld [bc], a                                    ; $6f5b: $02
    ld [bc], a                                    ; $6f5c: $02
    ld [bc], a                                    ; $6f5d: $02
    ld [bc], a                                    ; $6f5e: $02
    adc h                                         ; $6f5f: $8c
    adc h                                         ; $6f60: $8c
    adc h                                         ; $6f61: $8c
    adc h                                         ; $6f62: $8c
    adc h                                         ; $6f63: $8c
    adc h                                         ; $6f64: $8c
    adc h                                         ; $6f65: $8c
    adc h                                         ; $6f66: $8c
    db $f4                                        ; $6f67: $f4
    push af                                       ; $6f68: $f5
    or $f7                                        ; $6f69: $f6 $f7
    pop hl                                        ; $6f6b: $e1
    ld sp, hl                                     ; $6f6c: $f9
    ld a, [$e1e1]                                 ; $6f6d: $fa $e1 $e1
    ei                                            ; $6f70: $fb
    db $fc                                        ; $6f71: $fc
    ld b, c                                       ; $6f72: $41
    pop hl                                        ; $6f73: $e1
    pop hl                                        ; $6f74: $e1
    pop hl                                        ; $6f75: $e1
    ld b, [hl]                                    ; $6f76: $46
    adc d                                         ; $6f77: $8a
    adc d                                         ; $6f78: $8a
    adc d                                         ; $6f79: $8a
    adc d                                         ; $6f7a: $8a
    ld [bc], a                                    ; $6f7b: $02
    dec bc                                        ; $6f7c: $0b
    dec bc                                        ; $6f7d: $0b
    ld [bc], a                                    ; $6f7e: $02
    ld [bc], a                                    ; $6f7f: $02
    dec bc                                        ; $6f80: $0b
    dec bc                                        ; $6f81: $0b
    ld bc, $0202                                  ; $6f82: $01 $02 $02
    ld [bc], a                                    ; $6f85: $02
    ld bc, $e1f8                                  ; $6f86: $01 $f8 $e1
    pop hl                                        ; $6f89: $e1
    ld c, d                                       ; $6f8a: $4a
    pop hl                                        ; $6f8b: $e1
    pop hl                                        ; $6f8c: $e1
    pop hl                                        ; $6f8d: $e1
    ld c, b                                       ; $6f8e: $48
    pop hl                                        ; $6f8f: $e1
    ld c, d                                       ; $6f90: $4a
    ld d, h                                       ; $6f91: $54
    ld d, c                                       ; $6f92: $51
    ld b, a                                       ; $6f93: $47
    ld c, b                                       ; $6f94: $48
    ld d, l                                       ; $6f95: $55
    ld d, [hl]                                    ; $6f96: $56
    adc d                                         ; $6f97: $8a
    ld [bc], a                                    ; $6f98: $02
    ld [bc], a                                    ; $6f99: $02
    ld bc, $0202                                  ; $6f9a: $01 $02 $02
    ld [bc], a                                    ; $6f9d: $02
    ld bc, $0102                                  ; $6f9e: $01 $02 $01
    ld bc, $0101                                  ; $6fa1: $01 $01 $01
    ld bc, $0101                                  ; $6fa4: $01 $01 $01
    ld d, h                                       ; $6fa7: $54
    ld d, c                                       ; $6fa8: $51
    ld d, d                                       ; $6fa9: $52
    ld d, e                                       ; $6faa: $53
    ld d, l                                       ; $6fab: $55
    ld d, [hl]                                    ; $6fac: $56
    ld d, b                                       ; $6fad: $50
    ld d, c                                       ; $6fae: $51
    ld d, d                                       ; $6faf: $52
    ld d, e                                       ; $6fb0: $53
    ld d, l                                       ; $6fb1: $55
    ld d, [hl]                                    ; $6fb2: $56
    ld d, b                                       ; $6fb3: $50
    ld d, c                                       ; $6fb4: $51
    ld d, d                                       ; $6fb5: $52
    ld d, e                                       ; $6fb6: $53
    ld bc, $0101                                  ; $6fb7: $01 $01 $01
    ld bc, $0101                                  ; $6fba: $01 $01 $01
    ld bc, $0101                                  ; $6fbd: $01 $01 $01
    ld bc, $0101                                  ; $6fc0: $01 $01 $01
    ld bc, $0101                                  ; $6fc3: $01 $01 $01
    ld bc, $4a55                                  ; $6fc6: $01 $55 $4a
    ld d, h                                       ; $6fc9: $54
    ld b, [hl]                                    ; $6fca: $46
    ld d, d                                       ; $6fcb: $52
    ld d, e                                       ; $6fcc: $53
    ld c, c                                       ; $6fcd: $49
    ld c, d                                       ; $6fce: $4a
    ld d, b                                       ; $6fcf: $50
    ld d, c                                       ; $6fd0: $51
    ld d, d                                       ; $6fd1: $52
    ld c, b                                       ; $6fd2: $48
    ld d, l                                       ; $6fd3: $55
    ld d, [hl]                                    ; $6fd4: $56
    ld d, b                                       ; $6fd5: $50
    ld d, c                                       ; $6fd6: $51
    ld bc, $0101                                  ; $6fd7: $01 $01 $01
    ld bc, $0101                                  ; $6fda: $01 $01 $01
    ld bc, $0101                                  ; $6fdd: $01 $01 $01
    ld bc, $0101                                  ; $6fe0: $01 $01 $01
    ld bc, $0101                                  ; $6fe3: $01 $01 $01
    ld bc, $4847                                  ; $6fe6: $01 $47 $48
    ld c, c                                       ; $6fe9: $49
    ld c, d                                       ; $6fea: $4a
    ld d, b                                       ; $6feb: $50
    ld d, c                                       ; $6fec: $51
    ld d, d                                       ; $6fed: $52
    ld d, e                                       ; $6fee: $53
    ld c, c                                       ; $6fef: $49
    ld d, [hl]                                    ; $6ff0: $56
    ld d, b                                       ; $6ff1: $50
    ld d, c                                       ; $6ff2: $51
    ld b, a                                       ; $6ff3: $47
    ld c, b                                       ; $6ff4: $48
    ld c, c                                       ; $6ff5: $49
    ld c, d                                       ; $6ff6: $4a
    ld bc, $0101                                  ; $6ff7: $01 $01 $01
    ld bc, $0101                                  ; $6ffa: $01 $01 $01
    ld bc, $0101                                  ; $6ffd: $01 $01 $01
    ld bc, $0101                                  ; $7000: $01 $01 $01
    ld bc, $0101                                  ; $7003: $01 $01 $01
    ld bc, $5150                                  ; $7006: $01 $50 $51
    ld d, d                                       ; $7009: $52
    ld d, e                                       ; $700a: $53
    ld d, l                                       ; $700b: $55
    ld d, [hl]                                    ; $700c: $56
    ld d, b                                       ; $700d: $50
    ld d, c                                       ; $700e: $51
    ld d, d                                       ; $700f: $52
    ld d, e                                       ; $7010: $53
    ld d, l                                       ; $7011: $55
    ld d, [hl]                                    ; $7012: $56
    ld d, h                                       ; $7013: $54
    ld d, c                                       ; $7014: $51
    ld d, d                                       ; $7015: $52
    ld d, e                                       ; $7016: $53
    ld bc, $0101                                  ; $7017: $01 $01 $01
    ld bc, $0101                                  ; $701a: $01 $01 $01
    ld bc, $0101                                  ; $701d: $01 $01 $01
    ld bc, $0101                                  ; $7020: $01 $01 $01
    ld bc, $0101                                  ; $7023: $01 $01 $01
    ld bc, $5352                                  ; $7026: $01 $52 $53
    ld d, l                                       ; $7029: $55
    ld d, [hl]                                    ; $702a: $56
    ld d, b                                       ; $702b: $50
    ld d, c                                       ; $702c: $51
    ld d, d                                       ; $702d: $52
    ld d, e                                       ; $702e: $53
    ld d, l                                       ; $702f: $55
    ld d, [hl]                                    ; $7030: $56
    ld d, b                                       ; $7031: $50
    ld d, c                                       ; $7032: $51
    ld d, d                                       ; $7033: $52
    ld c, b                                       ; $7034: $48
    ld c, c                                       ; $7035: $49
    ld c, d                                       ; $7036: $4a
    ld bc, $0101                                  ; $7037: $01 $01 $01
    ld bc, $0101                                  ; $703a: $01 $01 $01
    ld bc, $0101                                  ; $703d: $01 $01 $01
    ld bc, $0101                                  ; $7040: $01 $01 $01
    ld bc, $0101                                  ; $7043: $01 $01 $01
    ld bc, $e1e1                                  ; $7046: $01 $e1 $e1
    ld b, a                                       ; $7049: $47
    ld c, b                                       ; $704a: $48
    pop hl                                        ; $704b: $e1
    ld b, c                                       ; $704c: $41
    pop hl                                        ; $704d: $e1
    pop hl                                        ; $704e: $e1
    ld h, a                                       ; $704f: $67
    ld l, b                                       ; $7050: $68
    ld h, a                                       ; $7051: $67
    ld l, b                                       ; $7052: $68
    ld l, c                                       ; $7053: $69
    ld l, d                                       ; $7054: $6a
    ld l, c                                       ; $7055: $69
    ld l, d                                       ; $7056: $6a
    ld [bc], a                                    ; $7057: $02
    ld [bc], a                                    ; $7058: $02
    ld bc, $0201                                  ; $7059: $01 $01 $02
    ld bc, $0202                                  ; $705c: $01 $02 $02
    adc h                                         ; $705f: $8c
    adc h                                         ; $7060: $8c
    adc h                                         ; $7061: $8c
    adc h                                         ; $7062: $8c
    adc h                                         ; $7063: $8c
    adc h                                         ; $7064: $8c
    adc h                                         ; $7065: $8c
    adc h                                         ; $7066: $8c
    ld c, c                                       ; $7067: $49
    ld c, d                                       ; $7068: $4a
    ld d, b                                       ; $7069: $50
    ld d, c                                       ; $706a: $51
    pop hl                                        ; $706b: $e1
    ld c, b                                       ; $706c: $48
    ld c, c                                       ; $706d: $49
    ld c, d                                       ; $706e: $4a
    ld h, a                                       ; $706f: $67
    ld l, b                                       ; $7070: $68
    ld h, a                                       ; $7071: $67
    ld l, b                                       ; $7072: $68
    ld l, c                                       ; $7073: $69
    ld l, d                                       ; $7074: $6a
    ld l, c                                       ; $7075: $69
    ld l, d                                       ; $7076: $6a
    ld bc, $0101                                  ; $7077: $01 $01 $01
    ld bc, $0102                                  ; $707a: $01 $02 $01
    ld bc, $8c01                                  ; $707d: $01 $01 $8c
    adc h                                         ; $7080: $8c
    adc h                                         ; $7081: $8c
    adc h                                         ; $7082: $8c
    adc h                                         ; $7083: $8c
    adc h                                         ; $7084: $8c
    adc h                                         ; $7085: $8c
    adc h                                         ; $7086: $8c
    ld b, a                                       ; $7087: $47
    ld c, b                                       ; $7088: $48
    ld c, c                                       ; $7089: $49
    ld c, d                                       ; $708a: $4a
    ld d, h                                       ; $708b: $54
    ld b, [hl]                                    ; $708c: $46
    ld b, a                                       ; $708d: $47
    pop hl                                        ; $708e: $e1
    ld h, a                                       ; $708f: $67
    ld l, b                                       ; $7090: $68
    ld h, a                                       ; $7091: $67
    ld l, b                                       ; $7092: $68
    ld l, c                                       ; $7093: $69
    ld l, d                                       ; $7094: $6a
    ld l, c                                       ; $7095: $69
    ld l, d                                       ; $7096: $6a
    ld bc, $0101                                  ; $7097: $01 $01 $01
    ld bc, $0101                                  ; $709a: $01 $01 $01
    ld bc, $8c02                                  ; $709d: $01 $02 $8c
    adc h                                         ; $70a0: $8c
    adc h                                         ; $70a1: $8c
    adc h                                         ; $70a2: $8c
    adc h                                         ; $70a3: $8c
    adc h                                         ; $70a4: $8c
    adc h                                         ; $70a5: $8c
    adc h                                         ; $70a6: $8c
    ld d, h                                       ; $70a7: $54
    ld b, [hl]                                    ; $70a8: $46
    pop hl                                        ; $70a9: $e1
    pop hl                                        ; $70aa: $e1
    ld b, c                                       ; $70ab: $41
    pop hl                                        ; $70ac: $e1
    pop hl                                        ; $70ad: $e1
    pop hl                                        ; $70ae: $e1
    ld h, a                                       ; $70af: $67
    ld l, b                                       ; $70b0: $68
    ld h, a                                       ; $70b1: $67
    ld l, b                                       ; $70b2: $68
    ld l, c                                       ; $70b3: $69
    ld l, d                                       ; $70b4: $6a
    ld l, c                                       ; $70b5: $69
    ld l, d                                       ; $70b6: $6a
    ld bc, $0201                                  ; $70b7: $01 $01 $02
    ld [bc], a                                    ; $70ba: $02
    ld bc, $0202                                  ; $70bb: $01 $02 $02
    ld [bc], a                                    ; $70be: $02
    adc h                                         ; $70bf: $8c
    adc h                                         ; $70c0: $8c
    adc h                                         ; $70c1: $8c
    adc h                                         ; $70c2: $8c
    adc h                                         ; $70c3: $8c
    adc h                                         ; $70c4: $8c
    adc h                                         ; $70c5: $8c
    adc h                                         ; $70c6: $8c
    ld b, a                                       ; $70c7: $47
    pop hl                                        ; $70c8: $e1
    pop hl                                        ; $70c9: $e1
    pop hl                                        ; $70ca: $e1
    pop hl                                        ; $70cb: $e1
    pop hl                                        ; $70cc: $e1
    pop hl                                        ; $70cd: $e1
    pop hl                                        ; $70ce: $e1
    ld c, c                                       ; $70cf: $49
    ld c, d                                       ; $70d0: $4a
    pop hl                                        ; $70d1: $e1
    pop hl                                        ; $70d2: $e1
    ld b, a                                       ; $70d3: $47
    ld c, b                                       ; $70d4: $48
    ld c, c                                       ; $70d5: $49
    pop hl                                        ; $70d6: $e1
    ld bc, $0202                                  ; $70d7: $01 $02 $02
    ld [bc], a                                    ; $70da: $02
    ld [bc], a                                    ; $70db: $02
    ld [bc], a                                    ; $70dc: $02
    ld [bc], a                                    ; $70dd: $02
    ld [bc], a                                    ; $70de: $02
    ld bc, $0201                                  ; $70df: $01 $01 $02
    ld [bc], a                                    ; $70e2: $02
    ld bc, $0101                                  ; $70e3: $01 $01 $01
    ld [bc], a                                    ; $70e6: $02
    pop hl                                        ; $70e7: $e1
    pop hl                                        ; $70e8: $e1
    pop hl                                        ; $70e9: $e1
    inc hl                                        ; $70ea: $23
    pop hl                                        ; $70eb: $e1
    pop hl                                        ; $70ec: $e1
    pop hl                                        ; $70ed: $e1
    pop hl                                        ; $70ee: $e1
    ld b, d                                       ; $70ef: $42
    ld b, e                                       ; $70f0: $43
    pop hl                                        ; $70f1: $e1
    pop hl                                        ; $70f2: $e1
    ld b, h                                       ; $70f3: $44
    ld b, l                                       ; $70f4: $45
    pop hl                                        ; $70f5: $e1
    pop hl                                        ; $70f6: $e1
    ld [bc], a                                    ; $70f7: $02
    ld [bc], a                                    ; $70f8: $02
    ld [bc], a                                    ; $70f9: $02
    ld bc, $0202                                  ; $70fa: $01 $02 $02
    ld [bc], a                                    ; $70fd: $02
    ld [bc], a                                    ; $70fe: $02
    ld bc, $0201                                  ; $70ff: $01 $01 $02
    ld [bc], a                                    ; $7102: $02
    ld bc, $0201                                  ; $7103: $01 $01 $02
    ld [bc], a                                    ; $7106: $02
    inc h                                         ; $7107: $24
    ld hl, sp-$07                                 ; $7108: $f8 $f9
    ld a, [$e1e1]                                 ; $710a: $fa $e1 $e1
    rst $30                                       ; $710d: $f7
    ld hl, sp+$41                                 ; $710e: $f8 $41
    pop hl                                        ; $7110: $e1
    pop hl                                        ; $7111: $e1
    pop hl                                        ; $7112: $e1
    pop hl                                        ; $7113: $e1
    pop hl                                        ; $7114: $e1
    pop hl                                        ; $7115: $e1
    pop hl                                        ; $7116: $e1
    ld bc, $0101                                  ; $7117: $01 $01 $01
    ld bc, $0202                                  ; $711a: $01 $02 $02
    ld bc, $0101                                  ; $711d: $01 $01 $01
    ld [bc], a                                    ; $7120: $02
    ld [bc], a                                    ; $7121: $02
    ld [bc], a                                    ; $7122: $02
    ld [bc], a                                    ; $7123: $02
    ld [bc], a                                    ; $7124: $02
    ld [bc], a                                    ; $7125: $02
    ld [bc], a                                    ; $7126: $02
    pop hl                                        ; $7127: $e1
    di                                            ; $7128: $f3
    db $f4                                        ; $7129: $f4
    push af                                       ; $712a: $f5
    pop hl                                        ; $712b: $e1
    pop hl                                        ; $712c: $e1
    pop hl                                        ; $712d: $e1
    ld sp, hl                                     ; $712e: $f9
    pop hl                                        ; $712f: $e1
    pop hl                                        ; $7130: $e1
    pop hl                                        ; $7131: $e1
    ei                                            ; $7132: $fb
    pop hl                                        ; $7133: $e1
    pop hl                                        ; $7134: $e1
    pop hl                                        ; $7135: $e1
    pop hl                                        ; $7136: $e1
    ld [bc], a                                    ; $7137: $02
    adc d                                         ; $7138: $8a
    adc d                                         ; $7139: $8a
    adc d                                         ; $713a: $8a
    ld [bc], a                                    ; $713b: $02
    ld [bc], a                                    ; $713c: $02
    ld [bc], a                                    ; $713d: $02
    dec bc                                        ; $713e: $0b
    ld [bc], a                                    ; $713f: $02
    ld [bc], a                                    ; $7140: $02
    ld [bc], a                                    ; $7141: $02
    dec bc                                        ; $7142: $0b
    ld [bc], a                                    ; $7143: $02
    ld [bc], a                                    ; $7144: $02
    ld [bc], a                                    ; $7145: $02
    ld [bc], a                                    ; $7146: $02
    ld d, b                                       ; $7147: $50
    ld d, c                                       ; $7148: $51
    ld b, a                                       ; $7149: $47
    ld c, b                                       ; $714a: $48
    ld d, l                                       ; $714b: $55
    ld d, [hl]                                    ; $714c: $56
    ld d, b                                       ; $714d: $50
    ld d, c                                       ; $714e: $51
    ld d, d                                       ; $714f: $52
    ld c, b                                       ; $7150: $48
    ld c, c                                       ; $7151: $49
    ld c, d                                       ; $7152: $4a
    ld d, h                                       ; $7153: $54
    ld b, [hl]                                    ; $7154: $46
    ld b, a                                       ; $7155: $47
    ld c, b                                       ; $7156: $48
    ld bc, $0101                                  ; $7157: $01 $01 $01
    ld bc, $0101                                  ; $715a: $01 $01 $01
    ld bc, $0101                                  ; $715d: $01 $01 $01
    ld bc, $0101                                  ; $7160: $01 $01 $01
    ld bc, $0101                                  ; $7163: $01 $01 $01
    ld bc, $4a49                                  ; $7166: $01 $49 $4a
    pop hl                                        ; $7169: $e1
    pop hl                                        ; $716a: $e1
    ld b, a                                       ; $716b: $47
    ld c, b                                       ; $716c: $48
    ld c, c                                       ; $716d: $49
    ld c, d                                       ; $716e: $4a
    ld d, h                                       ; $716f: $54
    pop hl                                        ; $7170: $e1
    pop hl                                        ; $7171: $e1
    pop hl                                        ; $7172: $e1
    ld c, c                                       ; $7173: $49
    ld c, d                                       ; $7174: $4a
    inc hl                                        ; $7175: $23
    inc h                                         ; $7176: $24
    ld bc, $0201                                  ; $7177: $01 $01 $02
    ld [bc], a                                    ; $717a: $02
    ld bc, $0101                                  ; $717b: $01 $01 $01
    ld bc, $0201                                  ; $717e: $01 $01 $02
    ld [bc], a                                    ; $7181: $02
    ld [bc], a                                    ; $7182: $02
    ld bc, $0101                                  ; $7183: $01 $01 $01
    ld bc, $e1e1                                  ; $7186: $01 $e1 $e1
    pop hl                                        ; $7189: $e1
    pop hl                                        ; $718a: $e1
    ld d, h                                       ; $718b: $54
    ld b, [hl]                                    ; $718c: $46
    pop hl                                        ; $718d: $e1
    pop hl                                        ; $718e: $e1
    pop hl                                        ; $718f: $e1
    pop hl                                        ; $7190: $e1
    pop hl                                        ; $7191: $e1
    pop hl                                        ; $7192: $e1
    ld b, a                                       ; $7193: $47
    ld c, b                                       ; $7194: $48
    ld c, c                                       ; $7195: $49
    ld c, d                                       ; $7196: $4a
    ld [bc], a                                    ; $7197: $02
    ld [bc], a                                    ; $7198: $02
    ld [bc], a                                    ; $7199: $02
    ld [bc], a                                    ; $719a: $02
    ld bc, $0201                                  ; $719b: $01 $01 $02
    ld [bc], a                                    ; $719e: $02
    ld [bc], a                                    ; $719f: $02
    ld [bc], a                                    ; $71a0: $02
    ld [bc], a                                    ; $71a1: $02
    ld [bc], a                                    ; $71a2: $02
    ld bc, $0101                                  ; $71a3: $01 $01 $01
    ld bc, $e141                                  ; $71a6: $01 $41 $e1
    pop hl                                        ; $71a9: $e1
    pop hl                                        ; $71aa: $e1
    pop hl                                        ; $71ab: $e1
    pop hl                                        ; $71ac: $e1
    ld d, h                                       ; $71ad: $54
    ld b, [hl]                                    ; $71ae: $46
    ld b, a                                       ; $71af: $47
    ld c, b                                       ; $71b0: $48
    ld d, l                                       ; $71b1: $55
    ld c, d                                       ; $71b2: $4a
    ld d, b                                       ; $71b3: $50
    ld d, c                                       ; $71b4: $51
    ld d, d                                       ; $71b5: $52
    ld d, e                                       ; $71b6: $53
    ld bc, $0202                                  ; $71b7: $01 $02 $02
    ld [bc], a                                    ; $71ba: $02
    ld [bc], a                                    ; $71bb: $02
    ld [bc], a                                    ; $71bc: $02
    ld bc, $0101                                  ; $71bd: $01 $01 $01
    ld bc, $0101                                  ; $71c0: $01 $01 $01
    ld bc, $0101                                  ; $71c3: $01 $01 $01
    ld bc, $4ae1                                  ; $71c6: $01 $e1 $4a
    ld d, h                                       ; $71c9: $54
    ld b, [hl]                                    ; $71ca: $46
    ld b, a                                       ; $71cb: $47
    ld c, b                                       ; $71cc: $48
    ld c, c                                       ; $71cd: $49
    ld c, d                                       ; $71ce: $4a
    ld h, a                                       ; $71cf: $67
    ld l, b                                       ; $71d0: $68
    ld h, a                                       ; $71d1: $67
    ld l, b                                       ; $71d2: $68
    ld l, c                                       ; $71d3: $69
    ld l, d                                       ; $71d4: $6a
    ld l, c                                       ; $71d5: $69
    ld l, d                                       ; $71d6: $6a
    ld [bc], a                                    ; $71d7: $02
    ld bc, $0101                                  ; $71d8: $01 $01 $01
    ld bc, $0101                                  ; $71db: $01 $01 $01
    ld bc, $8c8c                                  ; $71de: $01 $8c $8c
    adc h                                         ; $71e1: $8c
    adc h                                         ; $71e2: $8c
    adc h                                         ; $71e3: $8c
    adc h                                         ; $71e4: $8c
    adc h                                         ; $71e5: $8c
    adc h                                         ; $71e6: $8c
    ld b, a                                       ; $71e7: $47
    ld c, b                                       ; $71e8: $48
    ld c, c                                       ; $71e9: $49
    ld c, d                                       ; $71ea: $4a
    ld d, h                                       ; $71eb: $54
    ld b, [hl]                                    ; $71ec: $46
    ld d, d                                       ; $71ed: $52
    ld d, e                                       ; $71ee: $53
    ld h, a                                       ; $71ef: $67
    ld l, b                                       ; $71f0: $68
    ld h, a                                       ; $71f1: $67
    ld l, b                                       ; $71f2: $68
    ld l, c                                       ; $71f3: $69
    ld l, d                                       ; $71f4: $6a
    ld l, c                                       ; $71f5: $69
    ld l, d                                       ; $71f6: $6a
    ld bc, $0101                                  ; $71f7: $01 $01 $01
    ld bc, $0101                                  ; $71fa: $01 $01 $01
    ld bc, $8c01                                  ; $71fd: $01 $01 $8c
    adc h                                         ; $7200: $8c
    adc h                                         ; $7201: $8c
    adc h                                         ; $7202: $8c
    adc h                                         ; $7203: $8c
    adc h                                         ; $7204: $8c
    adc h                                         ; $7205: $8c
    adc h                                         ; $7206: $8c
    ld d, h                                       ; $7207: $54
    ld b, [hl]                                    ; $7208: $46
    ld d, d                                       ; $7209: $52
    ld d, e                                       ; $720a: $53
    ld d, l                                       ; $720b: $55
    ld d, [hl]                                    ; $720c: $56
    ld d, b                                       ; $720d: $50
    ld d, c                                       ; $720e: $51
    ld h, a                                       ; $720f: $67
    ld l, b                                       ; $7210: $68
    ld h, a                                       ; $7211: $67
    ld l, b                                       ; $7212: $68
    ld l, c                                       ; $7213: $69
    ld l, d                                       ; $7214: $6a
    ld l, c                                       ; $7215: $69
    ld l, d                                       ; $7216: $6a
    ld bc, $0101                                  ; $7217: $01 $01 $01
    ld bc, $0101                                  ; $721a: $01 $01 $01
    ld bc, $8c01                                  ; $721d: $01 $01 $8c
    adc h                                         ; $7220: $8c
    adc h                                         ; $7221: $8c
    adc h                                         ; $7222: $8c
    adc h                                         ; $7223: $8c
    adc h                                         ; $7224: $8c
    adc h                                         ; $7225: $8c
    adc h                                         ; $7226: $8c
    ld d, l                                       ; $7227: $55
    ld d, [hl]                                    ; $7228: $56
    ld d, b                                       ; $7229: $50
    ld b, [hl]                                    ; $722a: $46
    ld d, d                                       ; $722b: $52
    ld c, b                                       ; $722c: $48
    ld c, c                                       ; $722d: $49
    pop hl                                        ; $722e: $e1
    ld h, a                                       ; $722f: $67
    ld l, b                                       ; $7230: $68
    ld h, a                                       ; $7231: $67
    ld l, b                                       ; $7232: $68
    ld l, c                                       ; $7233: $69
    ld l, d                                       ; $7234: $6a
    ld l, c                                       ; $7235: $69
    ld l, d                                       ; $7236: $6a
    ld bc, $0101                                  ; $7237: $01 $01 $01
    ld bc, $0101                                  ; $723a: $01 $01 $01
    ld bc, $8c02                                  ; $723d: $01 $02 $8c
    adc h                                         ; $7240: $8c
    adc h                                         ; $7241: $8c
    adc h                                         ; $7242: $8c
    adc h                                         ; $7243: $8c
    adc h                                         ; $7244: $8c
    adc h                                         ; $7245: $8c
    adc h                                         ; $7246: $8c
    or $f7                                        ; $7247: $f6 $f7
    ld hl, sp-$1f                                 ; $7249: $f8 $e1
    ld a, [$e1e1]                                 ; $724b: $fa $e1 $e1
    pop hl                                        ; $724e: $e1
    db $fc                                        ; $724f: $fc
    pop hl                                        ; $7250: $e1
    pop hl                                        ; $7251: $e1
    pop hl                                        ; $7252: $e1
    pop hl                                        ; $7253: $e1
    pop hl                                        ; $7254: $e1
    ld b, d                                       ; $7255: $42
    ld b, e                                       ; $7256: $43
    adc d                                         ; $7257: $8a
    adc d                                         ; $7258: $8a
    adc d                                         ; $7259: $8a
    ld [bc], a                                    ; $725a: $02
    dec bc                                        ; $725b: $0b
    ld [bc], a                                    ; $725c: $02
    ld [bc], a                                    ; $725d: $02
    ld [bc], a                                    ; $725e: $02
    dec bc                                        ; $725f: $0b
    ld [bc], a                                    ; $7260: $02
    ld [bc], a                                    ; $7261: $02
    ld [bc], a                                    ; $7262: $02
    ld [bc], a                                    ; $7263: $02
    ld [bc], a                                    ; $7264: $02
    ld bc, $e101                                  ; $7265: $01 $01 $e1
    pop hl                                        ; $7268: $e1
    pop hl                                        ; $7269: $e1
    pop hl                                        ; $726a: $e1
    pop hl                                        ; $726b: $e1
    pop hl                                        ; $726c: $e1
    pop hl                                        ; $726d: $e1
    pop hl                                        ; $726e: $e1
    pop hl                                        ; $726f: $e1
    inc hl                                        ; $7270: $23
    inc h                                         ; $7271: $24
    pop hl                                        ; $7272: $e1
    ld b, a                                       ; $7273: $47
    ld c, b                                       ; $7274: $48
    pop hl                                        ; $7275: $e1
    pop hl                                        ; $7276: $e1
    ld [bc], a                                    ; $7277: $02
    ld [bc], a                                    ; $7278: $02
    ld [bc], a                                    ; $7279: $02
    ld [bc], a                                    ; $727a: $02
    ld [bc], a                                    ; $727b: $02
    ld [bc], a                                    ; $727c: $02
    ld [bc], a                                    ; $727d: $02
    ld [bc], a                                    ; $727e: $02
    ld [bc], a                                    ; $727f: $02
    ld bc, $0201                                  ; $7280: $01 $01 $02
    ld bc, $0201                                  ; $7283: $01 $01 $02
    ld [bc], a                                    ; $7286: $02
    dec c                                         ; $7287: $0d
    ld c, $3d                                     ; $7288: $0e $3d
    ld a, $f3                                     ; $728a: $3e $f3
    db $f4                                        ; $728c: $f4
    push af                                       ; $728d: $f5
    or $e1                                        ; $728e: $f6 $e1
    pop hl                                        ; $7290: $e1
    ld sp, hl                                     ; $7291: $f9
    ld a, [$e1e1]                                 ; $7292: $fa $e1 $e1
    ei                                            ; $7295: $fb
    db $fc                                        ; $7296: $fc
    add d                                         ; $7297: $82
    add d                                         ; $7298: $82
    add d                                         ; $7299: $82
    add d                                         ; $729a: $82
    adc d                                         ; $729b: $8a
    adc d                                         ; $729c: $8a
    adc d                                         ; $729d: $8a
    adc d                                         ; $729e: $8a
    ld [bc], a                                    ; $729f: $02
    ld [bc], a                                    ; $72a0: $02
    dec bc                                        ; $72a1: $0b
    dec bc                                        ; $72a2: $0b
    ld [bc], a                                    ; $72a3: $02
    ld [bc], a                                    ; $72a4: $02
    dec bc                                        ; $72a5: $0b
    dec bc                                        ; $72a6: $0b
    pop hl                                        ; $72a7: $e1
    pop hl                                        ; $72a8: $e1
    ld b, h                                       ; $72a9: $44
    ld b, l                                       ; $72aa: $45
    ld b, a                                       ; $72ab: $47
    pop hl                                        ; $72ac: $e1
    pop hl                                        ; $72ad: $e1
    ld c, d                                       ; $72ae: $4a
    ld d, h                                       ; $72af: $54
    ld b, [hl]                                    ; $72b0: $46
    ld b, a                                       ; $72b1: $47
    ld c, b                                       ; $72b2: $48
    ld c, c                                       ; $72b3: $49
    pop hl                                        ; $72b4: $e1
    ld d, h                                       ; $72b5: $54
    ld b, [hl]                                    ; $72b6: $46
    ld [bc], a                                    ; $72b7: $02
    ld [bc], a                                    ; $72b8: $02
    ld bc, $0101                                  ; $72b9: $01 $01 $01
    ld [bc], a                                    ; $72bc: $02
    ld [bc], a                                    ; $72bd: $02
    ld bc, $0101                                  ; $72be: $01 $01 $01
    ld bc, $0101                                  ; $72c1: $01 $01 $01
    ld [bc], a                                    ; $72c4: $02
    ld bc, $e101                                  ; $72c5: $01 $01 $e1
    pop hl                                        ; $72c8: $e1
    ld c, c                                       ; $72c9: $49
    ld c, d                                       ; $72ca: $4a
    ld d, h                                       ; $72cb: $54
    ld d, c                                       ; $72cc: $51
    ld d, d                                       ; $72cd: $52
    ld d, e                                       ; $72ce: $53
    ld d, l                                       ; $72cf: $55
    ld d, [hl]                                    ; $72d0: $56
    ld d, b                                       ; $72d1: $50
    ld d, c                                       ; $72d2: $51
    ld b, a                                       ; $72d3: $47
    ld c, b                                       ; $72d4: $48
    ld d, l                                       ; $72d5: $55
    ld d, [hl]                                    ; $72d6: $56
    ld [bc], a                                    ; $72d7: $02
    ld [bc], a                                    ; $72d8: $02
    ld bc, $0101                                  ; $72d9: $01 $01 $01
    ld bc, $0101                                  ; $72dc: $01 $01 $01
    ld bc, $0101                                  ; $72df: $01 $01 $01
    ld bc, $0101                                  ; $72e2: $01 $01 $01
    ld bc, $5001                                  ; $72e5: $01 $01 $50
    ld b, [hl]                                    ; $72e8: $46
    ld b, a                                       ; $72e9: $47
    pop hl                                        ; $72ea: $e1
    ld d, l                                       ; $72eb: $55
    ld c, d                                       ; $72ec: $4a
    pop hl                                        ; $72ed: $e1
    pop hl                                        ; $72ee: $e1
    ld d, d                                       ; $72ef: $52
    ld d, e                                       ; $72f0: $53
    ld c, c                                       ; $72f1: $49
    ld c, d                                       ; $72f2: $4a
    ld d, b                                       ; $72f3: $50
    ld d, c                                       ; $72f4: $51
    ld d, d                                       ; $72f5: $52
    ld d, e                                       ; $72f6: $53
    ld bc, $0101                                  ; $72f7: $01 $01 $01
    ld [bc], a                                    ; $72fa: $02
    ld bc, $0201                                  ; $72fb: $01 $01 $02
    ld [bc], a                                    ; $72fe: $02
    ld bc, $0101                                  ; $72ff: $01 $01 $01
    ld bc, $0101                                  ; $7302: $01 $01 $01
    ld bc, $e101                                  ; $7305: $01 $01 $e1
    pop hl                                        ; $7308: $e1
    pop hl                                        ; $7309: $e1
    pop hl                                        ; $730a: $e1
    pop hl                                        ; $730b: $e1
    pop hl                                        ; $730c: $e1
    pop hl                                        ; $730d: $e1
    pop hl                                        ; $730e: $e1
    ld d, h                                       ; $730f: $54
    ld b, [hl]                                    ; $7310: $46
    pop hl                                        ; $7311: $e1
    inc hl                                        ; $7312: $23
    ld d, l                                       ; $7313: $55
    ld d, [hl]                                    ; $7314: $56
    ld d, b                                       ; $7315: $50
    ld b, [hl]                                    ; $7316: $46
    ld [bc], a                                    ; $7317: $02
    ld [bc], a                                    ; $7318: $02
    ld [bc], a                                    ; $7319: $02
    ld [bc], a                                    ; $731a: $02
    ld [bc], a                                    ; $731b: $02
    ld [bc], a                                    ; $731c: $02
    ld [bc], a                                    ; $731d: $02
    ld [bc], a                                    ; $731e: $02
    ld bc, $0201                                  ; $731f: $01 $01 $02
    ld bc, $0101                                  ; $7322: $01 $01 $01
    ld bc, $e101                                  ; $7325: $01 $01 $e1
    pop hl                                        ; $7328: $e1
    ld b, c                                       ; $7329: $41
    pop hl                                        ; $732a: $e1
    pop hl                                        ; $732b: $e1
    pop hl                                        ; $732c: $e1
    pop hl                                        ; $732d: $e1
    pop hl                                        ; $732e: $e1
    ld h, a                                       ; $732f: $67
    ld l, b                                       ; $7330: $68
    ld h, a                                       ; $7331: $67
    ld l, b                                       ; $7332: $68
    ld l, c                                       ; $7333: $69
    ld l, d                                       ; $7334: $6a
    ld l, c                                       ; $7335: $69
    ld l, d                                       ; $7336: $6a
    ld [bc], a                                    ; $7337: $02
    ld [bc], a                                    ; $7338: $02
    ld bc, $0202                                  ; $7339: $01 $02 $02
    ld [bc], a                                    ; $733c: $02
    ld [bc], a                                    ; $733d: $02
    ld [bc], a                                    ; $733e: $02
    adc h                                         ; $733f: $8c
    adc h                                         ; $7340: $8c
    adc h                                         ; $7341: $8c
    adc h                                         ; $7342: $8c
    adc h                                         ; $7343: $8c
    adc h                                         ; $7344: $8c
    adc h                                         ; $7345: $8c
    adc h                                         ; $7346: $8c
    ld d, h                                       ; $7347: $54
    ld b, [hl]                                    ; $7348: $46
    ld b, a                                       ; $7349: $47
    ld c, b                                       ; $734a: $48
    pop hl                                        ; $734b: $e1
    pop hl                                        ; $734c: $e1
    pop hl                                        ; $734d: $e1
    inc hl                                        ; $734e: $23
    ld h, a                                       ; $734f: $67
    ld l, b                                       ; $7350: $68
    ld h, a                                       ; $7351: $67
    ld l, b                                       ; $7352: $68
    ld l, c                                       ; $7353: $69
    ld l, d                                       ; $7354: $6a
    ld l, c                                       ; $7355: $69
    ld l, d                                       ; $7356: $6a
    ld bc, $0101                                  ; $7357: $01 $01 $01
    ld bc, $0202                                  ; $735a: $01 $02 $02
    ld [bc], a                                    ; $735d: $02
    ld bc, $8c8c                                  ; $735e: $01 $8c $8c
    adc h                                         ; $7361: $8c
    adc h                                         ; $7362: $8c
    adc h                                         ; $7363: $8c
    adc h                                         ; $7364: $8c
    adc h                                         ; $7365: $8c
    adc h                                         ; $7366: $8c
    ld c, c                                       ; $7367: $49
    ld c, d                                       ; $7368: $4a
    ld d, h                                       ; $7369: $54
    ld d, c                                       ; $736a: $51
    inc h                                         ; $736b: $24
    pop hl                                        ; $736c: $e1
    pop hl                                        ; $736d: $e1
    pop hl                                        ; $736e: $e1
    ld h, a                                       ; $736f: $67
    ld l, b                                       ; $7370: $68
    ld h, a                                       ; $7371: $67
    ld l, b                                       ; $7372: $68
    ld l, c                                       ; $7373: $69
    ld l, d                                       ; $7374: $6a
    ld l, c                                       ; $7375: $69
    ld l, d                                       ; $7376: $6a
    ld bc, $0101                                  ; $7377: $01 $01 $01
    ld bc, $0201                                  ; $737a: $01 $01 $02
    ld [bc], a                                    ; $737d: $02
    ld [bc], a                                    ; $737e: $02
    adc h                                         ; $737f: $8c
    adc h                                         ; $7380: $8c
    adc h                                         ; $7381: $8c
    adc h                                         ; $7382: $8c
    adc h                                         ; $7383: $8c
    adc h                                         ; $7384: $8c
    adc h                                         ; $7385: $8c
    adc h                                         ; $7386: $8c
    ld d, d                                       ; $7387: $52
    ld d, e                                       ; $7388: $53
    ld d, l                                       ; $7389: $55
    ld d, [hl]                                    ; $738a: $56
    ld d, h                                       ; $738b: $54
    ld b, [hl]                                    ; $738c: $46
    ld b, a                                       ; $738d: $47
    ld c, b                                       ; $738e: $48
    ld h, a                                       ; $738f: $67
    ld l, b                                       ; $7390: $68
    ld h, a                                       ; $7391: $67
    ld l, b                                       ; $7392: $68
    ld l, c                                       ; $7393: $69
    ld l, d                                       ; $7394: $6a
    ld l, c                                       ; $7395: $69
    ld l, d                                       ; $7396: $6a
    ld bc, $0101                                  ; $7397: $01 $01 $01
    ld bc, $0101                                  ; $739a: $01 $01 $01
    ld bc, $8c01                                  ; $739d: $01 $01 $8c
    adc h                                         ; $73a0: $8c
    adc h                                         ; $73a1: $8c
    adc h                                         ; $73a2: $8c
    adc h                                         ; $73a3: $8c
    adc h                                         ; $73a4: $8c
    adc h                                         ; $73a5: $8c
    adc h                                         ; $73a6: $8c
    ld l, e                                       ; $73a7: $6b
    ld l, l                                       ; $73a8: $6d
    ld l, e                                       ; $73a9: $6b
    ld l, h                                       ; $73aa: $6c
    ld l, [hl]                                    ; $73ab: $6e
    ld [hl], b                                    ; $73ac: $70
    ld l, [hl]                                    ; $73ad: $6e
    ld l, a                                       ; $73ae: $6f
    ld [hl], c                                    ; $73af: $71
    ld [hl], e                                    ; $73b0: $73
    ld [hl], c                                    ; $73b1: $71
    ld [hl], d                                    ; $73b2: $72
    ld [hl], h                                    ; $73b3: $74
    ld [hl], h                                    ; $73b4: $74
    ld [hl], h                                    ; $73b5: $74
    ld [hl], l                                    ; $73b6: $75
    adc h                                         ; $73b7: $8c
    adc h                                         ; $73b8: $8c
    adc h                                         ; $73b9: $8c
    adc h                                         ; $73ba: $8c
    adc h                                         ; $73bb: $8c
    adc h                                         ; $73bc: $8c
    adc h                                         ; $73bd: $8c
    adc h                                         ; $73be: $8c
    adc h                                         ; $73bf: $8c
    adc h                                         ; $73c0: $8c
    adc h                                         ; $73c1: $8c
    adc h                                         ; $73c2: $8c
    adc h                                         ; $73c3: $8c
    adc h                                         ; $73c4: $8c
    adc h                                         ; $73c5: $8c
    adc h                                         ; $73c6: $8c
    ccf                                           ; $73c7: $3f
    ld b, b                                       ; $73c8: $40
    pop hl                                        ; $73c9: $e1
    pop hl                                        ; $73ca: $e1
    rst $30                                       ; $73cb: $f7
    ld hl, sp-$1f                                 ; $73cc: $f8 $e1
    pop hl                                        ; $73ce: $e1
    pop hl                                        ; $73cf: $e1
    pop hl                                        ; $73d0: $e1
    pop hl                                        ; $73d1: $e1
    pop hl                                        ; $73d2: $e1
    pop hl                                        ; $73d3: $e1
    pop hl                                        ; $73d4: $e1
    pop hl                                        ; $73d5: $e1
    pop hl                                        ; $73d6: $e1
    add d                                         ; $73d7: $82
    add d                                         ; $73d8: $82
    ld [bc], a                                    ; $73d9: $02
    ld [bc], a                                    ; $73da: $02
    adc d                                         ; $73db: $8a
    adc d                                         ; $73dc: $8a
    ld [bc], a                                    ; $73dd: $02
    ld [bc], a                                    ; $73de: $02
    ld [bc], a                                    ; $73df: $02
    ld [bc], a                                    ; $73e0: $02
    ld [bc], a                                    ; $73e1: $02
    ld [bc], a                                    ; $73e2: $02
    ld [bc], a                                    ; $73e3: $02
    ld [bc], a                                    ; $73e4: $02
    ld [bc], a                                    ; $73e5: $02
    ld [bc], a                                    ; $73e6: $02
    pop hl                                        ; $73e7: $e1
    pop hl                                        ; $73e8: $e1
    pop hl                                        ; $73e9: $e1
    pop hl                                        ; $73ea: $e1
    pop hl                                        ; $73eb: $e1
    pop hl                                        ; $73ec: $e1
    pop hl                                        ; $73ed: $e1
    pop hl                                        ; $73ee: $e1
    inc h                                         ; $73ef: $24
    pop hl                                        ; $73f0: $e1
    pop hl                                        ; $73f1: $e1
    pop hl                                        ; $73f2: $e1
    ld b, a                                       ; $73f3: $47
    ld c, b                                       ; $73f4: $48
    ld c, c                                       ; $73f5: $49
    pop hl                                        ; $73f6: $e1
    ld [bc], a                                    ; $73f7: $02
    ld [bc], a                                    ; $73f8: $02
    ld [bc], a                                    ; $73f9: $02
    ld [bc], a                                    ; $73fa: $02
    ld [bc], a                                    ; $73fb: $02
    ld [bc], a                                    ; $73fc: $02
    ld [bc], a                                    ; $73fd: $02
    ld [bc], a                                    ; $73fe: $02
    ld bc, $0202                                  ; $73ff: $01 $02 $02
    ld [bc], a                                    ; $7402: $02
    ld bc, $0101                                  ; $7403: $01 $01 $01
    ld [bc], a                                    ; $7406: $02
    pop hl                                        ; $7407: $e1
    pop hl                                        ; $7408: $e1
    pop hl                                        ; $7409: $e1
    pop hl                                        ; $740a: $e1
    pop hl                                        ; $740b: $e1
    pop hl                                        ; $740c: $e1
    pop hl                                        ; $740d: $e1
    pop hl                                        ; $740e: $e1
    ld b, c                                       ; $740f: $41
    pop hl                                        ; $7410: $e1
    pop hl                                        ; $7411: $e1
    ld b, d                                       ; $7412: $42
    pop hl                                        ; $7413: $e1
    pop hl                                        ; $7414: $e1
    pop hl                                        ; $7415: $e1
    ld b, h                                       ; $7416: $44
    ld [bc], a                                    ; $7417: $02
    ld [bc], a                                    ; $7418: $02
    ld [bc], a                                    ; $7419: $02
    ld [bc], a                                    ; $741a: $02
    ld [bc], a                                    ; $741b: $02
    ld [bc], a                                    ; $741c: $02
    ld [bc], a                                    ; $741d: $02
    ld [bc], a                                    ; $741e: $02
    ld bc, $0202                                  ; $741f: $01 $02 $02
    ld bc, $0202                                  ; $7422: $01 $02 $02
    ld [bc], a                                    ; $7425: $02
    ld bc, $d2e1                                  ; $7426: $01 $e1 $d2
    db $d3                                        ; $7429: $d3
    call nc, $cfe1                                ; $742a: $d4 $e1 $cf
    ret nc                                        ; $742d: $d0

    pop de                                        ; $742e: $d1
    ld b, e                                       ; $742f: $43
    jp nc, $d4d3                                  ; $7430: $d2 $d3 $d4

    ld b, l                                       ; $7433: $45
    rst $08                                       ; $7434: $cf
    ret nc                                        ; $7435: $d0

    pop de                                        ; $7436: $d1
    ld [bc], a                                    ; $7437: $02
    rrca                                          ; $7438: $0f
    rrca                                          ; $7439: $0f
    rrca                                          ; $743a: $0f
    ld [bc], a                                    ; $743b: $02
    rrca                                          ; $743c: $0f
    rrca                                          ; $743d: $0f
    rrca                                          ; $743e: $0f
    ld bc, $0f0f                                  ; $743f: $01 $0f $0f
    rrca                                          ; $7442: $0f
    ld bc, $0f0f                                  ; $7443: $01 $0f $0f
    rrca                                          ; $7446: $0f
    ld d, b                                       ; $7447: $50
    ld d, c                                       ; $7448: $51
    ld d, d                                       ; $7449: $52
    ld d, e                                       ; $744a: $53
    ld c, c                                       ; $744b: $49
    ld c, d                                       ; $744c: $4a
    ld d, h                                       ; $744d: $54
    ld b, [hl]                                    ; $744e: $46
    ld h, a                                       ; $744f: $67
    ld l, b                                       ; $7450: $68
    ld h, a                                       ; $7451: $67
    ld l, b                                       ; $7452: $68
    ld l, c                                       ; $7453: $69
    ld l, d                                       ; $7454: $6a
    ld l, c                                       ; $7455: $69
    ld l, d                                       ; $7456: $6a
    ld bc, $0101                                  ; $7457: $01 $01 $01
    ld bc, $0101                                  ; $745a: $01 $01 $01
    ld bc, $8c01                                  ; $745d: $01 $01 $8c
    adc h                                         ; $7460: $8c
    adc h                                         ; $7461: $8c
    adc h                                         ; $7462: $8c
    adc h                                         ; $7463: $8c
    adc h                                         ; $7464: $8c
    adc h                                         ; $7465: $8c
    adc h                                         ; $7466: $8c
    ld d, l                                       ; $7467: $55
    ld c, d                                       ; $7468: $4a
    ld d, h                                       ; $7469: $54
    ld b, [hl]                                    ; $746a: $46
    ld b, a                                       ; $746b: $47
    ld c, b                                       ; $746c: $48
    pop hl                                        ; $746d: $e1
    pop hl                                        ; $746e: $e1
    ld h, a                                       ; $746f: $67
    ld l, b                                       ; $7470: $68
    ld h, a                                       ; $7471: $67
    ld l, b                                       ; $7472: $68
    ld l, c                                       ; $7473: $69
    ld l, d                                       ; $7474: $6a
    ld l, c                                       ; $7475: $69
    ld l, d                                       ; $7476: $6a
    ld bc, $0101                                  ; $7477: $01 $01 $01
    ld bc, $0101                                  ; $747a: $01 $01 $01
    ld [bc], a                                    ; $747d: $02
    ld [bc], a                                    ; $747e: $02
    adc h                                         ; $747f: $8c
    adc h                                         ; $7480: $8c
    adc h                                         ; $7481: $8c
    adc h                                         ; $7482: $8c
    adc h                                         ; $7483: $8c
    adc h                                         ; $7484: $8c
    adc h                                         ; $7485: $8c
    adc h                                         ; $7486: $8c
    pop hl                                        ; $7487: $e1
    jp nc, $d4d3                                  ; $7488: $d2 $d3 $d4

    pop hl                                        ; $748b: $e1
    rst $08                                       ; $748c: $cf
    ret nc                                        ; $748d: $d0

    pop de                                        ; $748e: $d1
    ld h, a                                       ; $748f: $67
    jp nc, $d4d3                                  ; $7490: $d2 $d3 $d4

    ld l, c                                       ; $7493: $69
    halt                                          ; $7494: $76
    ld [hl], a                                    ; $7495: $77
    ld a, b                                       ; $7496: $78
    ld [bc], a                                    ; $7497: $02
    rrca                                          ; $7498: $0f
    rrca                                          ; $7499: $0f
    rrca                                          ; $749a: $0f
    ld [bc], a                                    ; $749b: $02
    rrca                                          ; $749c: $0f
    rrca                                          ; $749d: $0f
    rrca                                          ; $749e: $0f
    adc h                                         ; $749f: $8c
    adc a                                         ; $74a0: $8f
    rrca                                          ; $74a1: $0f
    rrca                                          ; $74a2: $0f
    adc h                                         ; $74a3: $8c
    adc a                                         ; $74a4: $8f
    rrca                                          ; $74a5: $0f
    rrca                                          ; $74a6: $0f
    push de                                       ; $74a7: $d5
    ld [c], a                                     ; $74a8: $e2
    db $e3                                        ; $74a9: $e3
    db $e4                                        ; $74aa: $e4
    push de                                       ; $74ab: $d5
    push hl                                       ; $74ac: $e5
    and $e7                                       ; $74ad: $e6 $e7
    push de                                       ; $74af: $d5
    ld [c], a                                     ; $74b0: $e2
    db $e3                                        ; $74b1: $e3
    db $e4                                        ; $74b2: $e4
    push de                                       ; $74b3: $d5
    push hl                                       ; $74b4: $e5
    and $e7                                       ; $74b5: $e6 $e7
    dec bc                                        ; $74b7: $0b
    dec bc                                        ; $74b8: $0b
    dec bc                                        ; $74b9: $0b
    dec bc                                        ; $74ba: $0b
    dec bc                                        ; $74bb: $0b
    dec bc                                        ; $74bc: $0b
    dec bc                                        ; $74bd: $0b
    dec bc                                        ; $74be: $0b
    dec bc                                        ; $74bf: $0b
    dec bc                                        ; $74c0: $0b
    dec bc                                        ; $74c1: $0b
    dec bc                                        ; $74c2: $0b
    dec bc                                        ; $74c3: $0b
    dec bc                                        ; $74c4: $0b
    dec bc                                        ; $74c5: $0b
    dec bc                                        ; $74c6: $0b
    ld l, e                                       ; $74c7: $6b
    ld a, c                                       ; $74c8: $79
    ld a, d                                       ; $74c9: $7a
    ld a, e                                       ; $74ca: $7b
    ld l, [hl]                                    ; $74cb: $6e
    rst $08                                       ; $74cc: $cf
    ret nc                                        ; $74cd: $d0

    pop de                                        ; $74ce: $d1
    ld [hl], c                                    ; $74cf: $71
    rst $08                                       ; $74d0: $cf
    ret nc                                        ; $74d1: $d0

    pop de                                        ; $74d2: $d1
    ld [hl], h                                    ; $74d3: $74
    ld a, h                                       ; $74d4: $7c
    ld a, l                                       ; $74d5: $7d
    ld a, [hl]                                    ; $74d6: $7e
    adc h                                         ; $74d7: $8c
    adc a                                         ; $74d8: $8f
    rrca                                          ; $74d9: $0f
    rrca                                          ; $74da: $0f
    adc h                                         ; $74db: $8c
    adc a                                         ; $74dc: $8f
    rrca                                          ; $74dd: $0f
    rrca                                          ; $74de: $0f
    adc h                                         ; $74df: $8c
    adc a                                         ; $74e0: $8f
    rrca                                          ; $74e1: $0f
    rrca                                          ; $74e2: $0f
    adc h                                         ; $74e3: $8c
    adc a                                         ; $74e4: $8f
    rrca                                          ; $74e5: $0f
    rrca                                          ; $74e6: $0f
    add hl, bc                                    ; $74e7: $09
    nop                                           ; $74e8: $00
    ld [$8000], sp                                ; $74e9: $08 $00 $80
    rlca                                          ; $74ec: $07
    pop de                                        ; $74ed: $d1
    pop de                                        ; $74ee: $d1
    pop de                                        ; $74ef: $d1
    jp nc, $d1d1                                  ; $74f0: $d2 $d1 $d1

    pop de                                        ; $74f3: $d1
    jp nc, $d1d1                                  ; $74f4: $d2 $d1 $d1

    pop de                                        ; $74f7: $d1
    jp nc, $d1d1                                  ; $74f8: $d2 $d1 $d1

    pop de                                        ; $74fb: $d1
    jp nc, $8080                                  ; $74fc: $d2 $80 $80

    add b                                         ; $74ff: $80
    add b                                         ; $7500: $80
    add b                                         ; $7501: $80
    add b                                         ; $7502: $80
    add b                                         ; $7503: $80
    add b                                         ; $7504: $80
    add b                                         ; $7505: $80
    add b                                         ; $7506: $80
    add b                                         ; $7507: $80
    add b                                         ; $7508: $80
    add b                                         ; $7509: $80
    add b                                         ; $750a: $80
    add b                                         ; $750b: $80
    add b                                         ; $750c: $80
    db $d3                                        ; $750d: $d3
    call nc, $d6d5                                ; $750e: $d4 $d5 $d6
    rst $10                                       ; $7511: $d7
    ret c                                         ; $7512: $d8

    reti                                          ; $7513: $d9


    jp c, $dcdb                                   ; $7514: $da $db $dc

    db $dd                                        ; $7517: $dd
    sbc $df                                       ; $7518: $de $df
    ldh [$e1], a                                  ; $751a: $e0 $e1
    ld [c], a                                     ; $751c: $e2
    inc bc                                        ; $751d: $03
    inc bc                                        ; $751e: $03
    inc bc                                        ; $751f: $03
    inc bc                                        ; $7520: $03
    inc bc                                        ; $7521: $03
    inc bc                                        ; $7522: $03
    inc bc                                        ; $7523: $03
    inc bc                                        ; $7524: $03
    ld [bc], a                                    ; $7525: $02
    inc bc                                        ; $7526: $03
    inc bc                                        ; $7527: $03
    inc bc                                        ; $7528: $03
    ld [bc], a                                    ; $7529: $02
    inc bc                                        ; $752a: $03
    inc bc                                        ; $752b: $03
    inc bc                                        ; $752c: $03
    db $d3                                        ; $752d: $d3
    call nc, $d6d5                                ; $752e: $d4 $d5 $d6
    db $e3                                        ; $7531: $e3
    ret c                                         ; $7532: $d8

    reti                                          ; $7533: $d9


    jp c, $dcdb                                   ; $7534: $da $db $dc

    db $dd                                        ; $7537: $dd
    sbc $df                                       ; $7538: $de $df
    ldh [$e1], a                                  ; $753a: $e0 $e1
    ld [c], a                                     ; $753c: $e2
    inc bc                                        ; $753d: $03
    inc bc                                        ; $753e: $03
    inc bc                                        ; $753f: $03
    inc bc                                        ; $7540: $03
    inc bc                                        ; $7541: $03
    inc bc                                        ; $7542: $03
    inc bc                                        ; $7543: $03
    inc bc                                        ; $7544: $03
    ld [bc], a                                    ; $7545: $02
    inc bc                                        ; $7546: $03
    inc bc                                        ; $7547: $03
    inc bc                                        ; $7548: $03
    ld [bc], a                                    ; $7549: $02
    inc bc                                        ; $754a: $03
    inc bc                                        ; $754b: $03
    inc bc                                        ; $754c: $03
    rst $18                                       ; $754d: $df
    db $e4                                        ; $754e: $e4
    push hl                                       ; $754f: $e5
    and $df                                       ; $7550: $e6 $df
    rst $20                                       ; $7552: $e7
    add sp, -$17                                  ; $7553: $e8 $e9
    db $db                                        ; $7555: $db
    ld [$eceb], a                                 ; $7556: $ea $eb $ec
    db $ed                                        ; $7559: $ed
    xor $ef                                       ; $755a: $ee $ef
    ldh a, [rSC]                                  ; $755c: $f0 $02
    inc bc                                        ; $755e: $03
    inc bc                                        ; $755f: $03
    inc bc                                        ; $7560: $03
    ld [bc], a                                    ; $7561: $02
    inc bc                                        ; $7562: $03
    inc bc                                        ; $7563: $03
    inc bc                                        ; $7564: $03
    ld [bc], a                                    ; $7565: $02
    inc bc                                        ; $7566: $03
    inc bc                                        ; $7567: $03
    inc bc                                        ; $7568: $03
    ld [bc], a                                    ; $7569: $02
    ld [bc], a                                    ; $756a: $02
    ld [bc], a                                    ; $756b: $02
    ld [bc], a                                    ; $756c: $02
    rst $18                                       ; $756d: $df
    pop af                                        ; $756e: $f1
    push hl                                       ; $756f: $e5
    and $df                                       ; $7570: $e6 $df
    rst $20                                       ; $7572: $e7
    add sp, -$17                                  ; $7573: $e8 $e9
    db $db                                        ; $7575: $db
    ld [$eceb], a                                 ; $7576: $ea $eb $ec
    db $ed                                        ; $7579: $ed
    xor $ef                                       ; $757a: $ee $ef
    ldh a, [rSC]                                  ; $757c: $f0 $02
    inc bc                                        ; $757e: $03
    inc bc                                        ; $757f: $03
    inc bc                                        ; $7580: $03
    ld [bc], a                                    ; $7581: $02
    inc bc                                        ; $7582: $03
    inc bc                                        ; $7583: $03
    inc bc                                        ; $7584: $03
    ld [bc], a                                    ; $7585: $02
    inc bc                                        ; $7586: $03
    inc bc                                        ; $7587: $03
    inc bc                                        ; $7588: $03
    ld [bc], a                                    ; $7589: $02
    ld [bc], a                                    ; $758a: $02
    ld [bc], a                                    ; $758b: $02
    ld [bc], a                                    ; $758c: $02
    pop de                                        ; $758d: $d1
    pop de                                        ; $758e: $d1
    pop de                                        ; $758f: $d1
    jp nc, $d1d1                                  ; $7590: $d2 $d1 $d1

    pop de                                        ; $7593: $d1
    jp nc, $d1d1                                  ; $7594: $d2 $d1 $d1

    pop de                                        ; $7597: $d1
    jp nc, $f2d1                                  ; $7598: $d2 $d1 $f2

    di                                            ; $759b: $f3
    db $f4                                        ; $759c: $f4
    add b                                         ; $759d: $80
    add b                                         ; $759e: $80
    add b                                         ; $759f: $80
    add b                                         ; $75a0: $80
    add b                                         ; $75a1: $80
    add b                                         ; $75a2: $80
    add b                                         ; $75a3: $80
    add b                                         ; $75a4: $80
    add b                                         ; $75a5: $80
    add b                                         ; $75a6: $80
    add b                                         ; $75a7: $80
    add b                                         ; $75a8: $80
    add b                                         ; $75a9: $80
    add b                                         ; $75aa: $80
    add b                                         ; $75ab: $80
    add b                                         ; $75ac: $80
    db $ed                                        ; $75ad: $ed
    push af                                       ; $75ae: $f5
    or $f7                                        ; $75af: $f6 $f7
    db $ed                                        ; $75b1: $ed
    ld hl, sp-$07                                 ; $75b2: $f8 $f9
    ld a, [$fcfb]                                 ; $75b4: $fa $fb $fc
    db $fd                                        ; $75b7: $fd
    cp $ff                                        ; $75b8: $fe $ff
    nop                                           ; $75ba: $00
    ld bc, $0202                                  ; $75bb: $01 $02 $02
    ld [bc], a                                    ; $75be: $02
    ld [bc], a                                    ; $75bf: $02
    ld [bc], a                                    ; $75c0: $02
    ld [bc], a                                    ; $75c1: $02
    ld [bc], a                                    ; $75c2: $02
    ld [bc], a                                    ; $75c3: $02
    ld [bc], a                                    ; $75c4: $02
    ld [bc], a                                    ; $75c5: $02
    ld b, $06                                     ; $75c6: $06 $06
    dec b                                         ; $75c8: $05
    rlca                                          ; $75c9: $07
    ld b, $05                                     ; $75ca: $06 $05
    ld b, $ed                                     ; $75cc: $06 $ed
    push af                                       ; $75ce: $f5
    or $f7                                        ; $75cf: $f6 $f7
    db $ed                                        ; $75d1: $ed
    ld hl, sp-$07                                 ; $75d2: $f8 $f9
    ld a, [$03fb]                                 ; $75d4: $fa $fb $03
    inc b                                         ; $75d7: $04
    dec b                                         ; $75d8: $05
    ld b, $07                                     ; $75d9: $06 $07
    rst $38                                       ; $75db: $ff
    nop                                           ; $75dc: $00
    ld [bc], a                                    ; $75dd: $02
    ld [bc], a                                    ; $75de: $02
    ld [bc], a                                    ; $75df: $02
    ld [bc], a                                    ; $75e0: $02
    ld [bc], a                                    ; $75e1: $02
    ld [bc], a                                    ; $75e2: $02
    ld [bc], a                                    ; $75e3: $02
    ld [bc], a                                    ; $75e4: $02
    ld [bc], a                                    ; $75e5: $02
    ld b, $06                                     ; $75e6: $06 $06
    ld b, $04                                     ; $75e8: $06 $04
    dec b                                         ; $75ea: $05
    ld b, $05                                     ; $75eb: $06 $05
    db $ed                                        ; $75ed: $ed
    push af                                       ; $75ee: $f5
    or $f7                                        ; $75ef: $f6 $f7
    db $ed                                        ; $75f1: $ed
    ld hl, sp-$07                                 ; $75f2: $f8 $f9
    ld a, [$08fb]                                 ; $75f4: $fa $fb $08
    add hl, bc                                    ; $75f7: $09
    ld a, [bc]                                    ; $75f8: $0a
    ld bc, $0602                                  ; $75f9: $01 $02 $06
    rlca                                          ; $75fc: $07
    ld [bc], a                                    ; $75fd: $02
    ld [bc], a                                    ; $75fe: $02
    ld [bc], a                                    ; $75ff: $02
    ld [bc], a                                    ; $7600: $02
    ld [bc], a                                    ; $7601: $02
    ld [bc], a                                    ; $7602: $02
    ld [bc], a                                    ; $7603: $02
    ld [bc], a                                    ; $7604: $02
    ld [bc], a                                    ; $7605: $02
    ld b, $06                                     ; $7606: $06 $06
    ld b, $04                                     ; $7608: $06 $04
    ld b, $05                                     ; $760a: $06 $05
    dec b                                         ; $760c: $05
    pop de                                        ; $760d: $d1
    jp nc, Jump_000_0c0b                          ; $760e: $d2 $0b $0c

    pop de                                        ; $7611: $d1
    dec c                                         ; $7612: $0d
    ld c, $0f                                     ; $7613: $0e $0f
    pop de                                        ; $7615: $d1
    dec c                                         ; $7616: $0d
    db $10                                        ; $7617: $10
    ld de, $0dd1                                  ; $7618: $11 $d1 $0d
    ld [de], a                                    ; $761b: $12
    inc de                                        ; $761c: $13
    add b                                         ; $761d: $80
    add b                                         ; $761e: $80
    inc bc                                        ; $761f: $03
    inc bc                                        ; $7620: $03
    add b                                         ; $7621: $80
    add b                                         ; $7622: $80
    inc bc                                        ; $7623: $03
    inc bc                                        ; $7624: $03
    add b                                         ; $7625: $80
    add b                                         ; $7626: $80
    inc bc                                        ; $7627: $03
    inc bc                                        ; $7628: $03
    add b                                         ; $7629: $80
    add b                                         ; $762a: $80
    inc bc                                        ; $762b: $03
    inc bc                                        ; $762c: $03
    inc d                                         ; $762d: $14
    dec d                                         ; $762e: $15
    ld d, $17                                     ; $762f: $16 $17
    jr jr_08c_764c                                ; $7631: $18 $19

    ld a, [de]                                    ; $7633: $1a
    dec de                                        ; $7634: $1b
    inc e                                         ; $7635: $1c
    dec e                                         ; $7636: $1d
    ld e, $1f                                     ; $7637: $1e $1f
    jr nz, jr_08c_765c                            ; $7639: $20 $21

    ld [hl+], a                                   ; $763b: $22
    inc hl                                        ; $763c: $23
    rlca                                          ; $763d: $07
    dec b                                         ; $763e: $05
    ld b, $04                                     ; $763f: $06 $04
    rlca                                          ; $7641: $07
    ld b, $04                                     ; $7642: $06 $04
    ld b, $07                                     ; $7644: $06 $07
    dec b                                         ; $7646: $05
    ld b, $05                                     ; $7647: $06 $05
    rlca                                          ; $7649: $07
    ld b, $04                                     ; $764a: $06 $04

jr_08c_764c:
    ld b, $24                                     ; $764c: $06 $24
    dec h                                         ; $764e: $25
    inc d                                         ; $764f: $14
    dec d                                         ; $7650: $15
    ld h, $27                                     ; $7651: $26 $27
    jr jr_08c_766e                                ; $7653: $18 $19

    jr z, @+$2b                                   ; $7655: $28 $29

    inc e                                         ; $7657: $1c
    dec e                                         ; $7658: $1d
    ld a, [hl+]                                   ; $7659: $2a
    dec hl                                        ; $765a: $2b
    ld a, [c]                                     ; $765b: $f2

jr_08c_765c:
    di                                            ; $765c: $f3
    inc b                                         ; $765d: $04
    inc b                                         ; $765e: $04
    inc b                                         ; $765f: $04
    ld b, $05                                     ; $7660: $06 $05
    inc b                                         ; $7662: $04
    ld b, $04                                     ; $7663: $06 $04
    inc b                                         ; $7665: $04
    ld b, $05                                     ; $7666: $06 $05
    ld b, $06                                     ; $7668: $06 $06
    ld b, $80                                     ; $766a: $06 $80
    add b                                         ; $766c: $80
    inc l                                         ; $766d: $2c

jr_08c_766e:
    dec l                                         ; $766e: $2d
    inc h                                         ; $766f: $24
    dec h                                         ; $7670: $25
    ld l, $2f                                     ; $7671: $2e $2f
    ld h, $27                                     ; $7673: $26 $27
    jr nc, jr_08c_76a8                            ; $7675: $30 $31

    jr z, jr_08c_76a2                             ; $7677: $28 $29

    di                                            ; $7679: $f3
    di                                            ; $767a: $f3
    di                                            ; $767b: $f3
    di                                            ; $767c: $f3
    nop                                           ; $767d: $00
    nop                                           ; $767e: $00
    ld b, $05                                     ; $767f: $06 $05
    nop                                           ; $7681: $00
    nop                                           ; $7682: $00
    inc b                                         ; $7683: $04
    ld b, $05                                     ; $7684: $06 $05
    dec b                                         ; $7686: $05
    ld b, $04                                     ; $7687: $06 $04
    add b                                         ; $7689: $80
    add b                                         ; $768a: $80
    add b                                         ; $768b: $80
    add b                                         ; $768c: $80
    rst $18                                       ; $768d: $df
    db $e4                                        ; $768e: $e4
    push hl                                       ; $768f: $e5
    and $df                                       ; $7690: $e6 $df
    ld [hl-], a                                   ; $7692: $32
    add sp, -$17                                  ; $7693: $e8 $e9
    db $db                                        ; $7695: $db
    inc sp                                        ; $7696: $33
    db $eb                                        ; $7697: $eb
    db $ec                                        ; $7698: $ec
    db $ed                                        ; $7699: $ed
    inc [hl]                                      ; $769a: $34
    dec [hl]                                      ; $769b: $35
    ld [hl], $02                                  ; $769c: $36 $02
    inc bc                                        ; $769e: $03
    inc bc                                        ; $769f: $03
    inc bc                                        ; $76a0: $03
    ld [bc], a                                    ; $76a1: $02

jr_08c_76a2:
    inc bc                                        ; $76a2: $03
    inc bc                                        ; $76a3: $03
    inc bc                                        ; $76a4: $03
    ld [bc], a                                    ; $76a5: $02
    inc bc                                        ; $76a6: $03
    inc bc                                        ; $76a7: $03

jr_08c_76a8:
    inc bc                                        ; $76a8: $03
    ld [bc], a                                    ; $76a9: $02
    inc bc                                        ; $76aa: $03
    inc bc                                        ; $76ab: $03
    inc bc                                        ; $76ac: $03
    db $ed                                        ; $76ad: $ed
    scf                                           ; $76ae: $37
    jr c, jr_08c_76ea                             ; $76af: $38 $39

    db $ed                                        ; $76b1: $ed
    ld a, [hl-]                                   ; $76b2: $3a
    dec sp                                        ; $76b3: $3b
    inc a                                         ; $76b4: $3c
    ei                                            ; $76b5: $fb
    dec a                                         ; $76b6: $3d
    ld a, $3f                                     ; $76b7: $3e $3f
    rst $38                                       ; $76b9: $ff
    nop                                           ; $76ba: $00
    ld bc, $0202                                  ; $76bb: $01 $02 $02
    inc bc                                        ; $76be: $03
    inc bc                                        ; $76bf: $03
    inc bc                                        ; $76c0: $03
    ld [bc], a                                    ; $76c1: $02
    inc bc                                        ; $76c2: $03
    ld b, $06                                     ; $76c3: $06 $06
    ld [bc], a                                    ; $76c5: $02
    ld b, $06                                     ; $76c6: $06 $06
    dec b                                         ; $76c8: $05
    ld b, $04                                     ; $76c9: $06 $04
    dec b                                         ; $76cb: $05
    inc b                                         ; $76cc: $04
    db $ed                                        ; $76cd: $ed
    scf                                           ; $76ce: $37
    jr c, jr_08c_770a                             ; $76cf: $38 $39

    db $ed                                        ; $76d1: $ed
    ld a, [hl-]                                   ; $76d2: $3a
    ld b, b                                       ; $76d3: $40
    ld b, c                                       ; $76d4: $41
    ei                                            ; $76d5: $fb
    ld b, d                                       ; $76d6: $42
    ld b, e                                       ; $76d7: $43
    ld b, h                                       ; $76d8: $44
    ld b, $07                                     ; $76d9: $06 $07
    rst $38                                       ; $76db: $ff
    nop                                           ; $76dc: $00
    ld [bc], a                                    ; $76dd: $02
    inc bc                                        ; $76de: $03
    inc bc                                        ; $76df: $03
    inc bc                                        ; $76e0: $03
    ld [bc], a                                    ; $76e1: $02
    inc bc                                        ; $76e2: $03
    ld b, $06                                     ; $76e3: $06 $06
    ld [bc], a                                    ; $76e5: $02
    ld b, $05                                     ; $76e6: $06 $05
    ld b, $04                                     ; $76e8: $06 $04

jr_08c_76ea:
    ld b, $06                                     ; $76ea: $06 $06
    inc b                                         ; $76ec: $04
    db $ed                                        ; $76ed: $ed
    scf                                           ; $76ee: $37
    jr c, jr_08c_772a                             ; $76ef: $38 $39

    db $ed                                        ; $76f1: $ed
    ld a, [hl-]                                   ; $76f2: $3a
    ld b, l                                       ; $76f3: $45
    ld b, [hl]                                    ; $76f4: $46
    ei                                            ; $76f5: $fb
    ld b, a                                       ; $76f6: $47
    ld c, b                                       ; $76f7: $48
    ld c, c                                       ; $76f8: $49
    ld bc, $0602                                  ; $76f9: $01 $02 $06
    rlca                                          ; $76fc: $07
    ld [bc], a                                    ; $76fd: $02
    inc bc                                        ; $76fe: $03
    inc bc                                        ; $76ff: $03
    inc bc                                        ; $7700: $03
    ld [bc], a                                    ; $7701: $02
    inc bc                                        ; $7702: $03
    ld b, $06                                     ; $7703: $06 $06
    ld [bc], a                                    ; $7705: $02
    ld b, $06                                     ; $7706: $06 $06
    ld b, $06                                     ; $7708: $06 $06

jr_08c_770a:
    dec b                                         ; $770a: $05
    dec b                                         ; $770b: $05
    ld b, $ed                                     ; $770c: $06 $ed
    push af                                       ; $770e: $f5
    or $f7                                        ; $770f: $f6 $f7
    db $ed                                        ; $7711: $ed
    ld hl, sp-$07                                 ; $7712: $f8 $f9
    ld a, [$fcfb]                                 ; $7714: $fa $fb $fc
    db $fd                                        ; $7717: $fd
    cp $ff                                        ; $7718: $fe $ff
    nop                                           ; $771a: $00
    ld bc, $0202                                  ; $771b: $01 $02 $02
    ld [bc], a                                    ; $771e: $02
    ld [bc], a                                    ; $771f: $02
    ld [bc], a                                    ; $7720: $02
    ld [bc], a                                    ; $7721: $02
    ld [bc], a                                    ; $7722: $02
    ld [bc], a                                    ; $7723: $02
    ld [bc], a                                    ; $7724: $02
    ld [bc], a                                    ; $7725: $02
    ld b, $06                                     ; $7726: $06 $06
    ld b, $04                                     ; $7728: $06 $04

jr_08c_772a:
    ld b, $05                                     ; $772a: $06 $05
    ld b, $14                                     ; $772c: $06 $14
    dec d                                         ; $772e: $15
    ld d, $17                                     ; $772f: $16 $17
    jr jr_08c_774c                                ; $7731: $18 $19

    ld a, [de]                                    ; $7733: $1a
    dec de                                        ; $7734: $1b
    inc e                                         ; $7735: $1c
    dec e                                         ; $7736: $1d
    ld e, $1f                                     ; $7737: $1e $1f
    di                                            ; $7739: $f3
    di                                            ; $773a: $f3
    di                                            ; $773b: $f3
    di                                            ; $773c: $f3
    inc b                                         ; $773d: $04
    ld b, $06                                     ; $773e: $06 $06
    inc b                                         ; $7740: $04
    dec b                                         ; $7741: $05
    inc b                                         ; $7742: $04
    ld b, $06                                     ; $7743: $06 $06
    ld b, $06                                     ; $7745: $06 $06
    dec b                                         ; $7747: $05
    ld b, $80                                     ; $7748: $06 $80
    add b                                         ; $774a: $80
    add b                                         ; $774b: $80

jr_08c_774c:
    add b                                         ; $774c: $80
    inc h                                         ; $774d: $24
    dec h                                         ; $774e: $25
    inc l                                         ; $774f: $2c
    dec l                                         ; $7750: $2d
    ld h, $27                                     ; $7751: $26 $27
    ld l, $2f                                     ; $7753: $2e $2f
    jr z, @+$2b                                   ; $7755: $28 $29

    ld c, d                                       ; $7757: $4a
    ld c, e                                       ; $7758: $4b
    di                                            ; $7759: $f3
    di                                            ; $775a: $f3
    di                                            ; $775b: $f3
    di                                            ; $775c: $f3
    ld b, $05                                     ; $775d: $06 $05
    nop                                           ; $775f: $00
    nop                                           ; $7760: $00
    ld b, $04                                     ; $7761: $06 $04
    nop                                           ; $7763: $00
    nop                                           ; $7764: $00
    dec b                                         ; $7765: $05
    ld b, $04                                     ; $7766: $06 $04
    ld b, $80                                     ; $7768: $06 $80
    add b                                         ; $776a: $80
    add b                                         ; $776b: $80
    add b                                         ; $776c: $80
    ld d, $17                                     ; $776d: $16 $17
    inc h                                         ; $776f: $24
    dec h                                         ; $7770: $25
    ld a, [de]                                    ; $7771: $1a
    dec de                                        ; $7772: $1b
    ld h, $27                                     ; $7773: $26 $27
    ld e, $1f                                     ; $7775: $1e $1f
    jr z, jr_08c_77a2                             ; $7777: $28 $29

    di                                            ; $7779: $f3
    ld c, h                                       ; $777a: $4c
    ld a, [hl+]                                   ; $777b: $2a
    dec hl                                        ; $777c: $2b
    ld b, $04                                     ; $777d: $06 $04
    ld b, $06                                     ; $777f: $06 $06
    ld b, $06                                     ; $7781: $06 $06
    inc b                                         ; $7783: $04
    dec b                                         ; $7784: $05
    ld b, $04                                     ; $7785: $06 $04
    ld b, $06                                     ; $7787: $06 $06
    add b                                         ; $7789: $80
    add b                                         ; $778a: $80
    ld b, $04                                     ; $778b: $06 $04
    inc d                                         ; $778d: $14
    dec d                                         ; $778e: $15
    ld d, $17                                     ; $778f: $16 $17
    jr @+$1b                                      ; $7791: $18 $19

    ld a, [de]                                    ; $7793: $1a
    dec de                                        ; $7794: $1b
    inc e                                         ; $7795: $1c
    dec e                                         ; $7796: $1d
    ld e, $4d                                     ; $7797: $1e $4d
    jr nz, @+$23                                  ; $7799: $20 $21

    ld c, [hl]                                    ; $779b: $4e
    ld c, a                                       ; $779c: $4f
    dec b                                         ; $779d: $05
    inc b                                         ; $779e: $04
    ld b, $06                                     ; $779f: $06 $06
    dec b                                         ; $77a1: $05

jr_08c_77a2:
    dec b                                         ; $77a2: $05
    ld b, $04                                     ; $77a3: $06 $04
    inc b                                         ; $77a5: $04
    ld b, $05                                     ; $77a6: $06 $05
    ld b, $06                                     ; $77a8: $06 $06
    inc b                                         ; $77aa: $04
    ld b, $03                                     ; $77ab: $06 $03
    db $d3                                        ; $77ad: $d3
    jp nc, $d1d1                                  ; $77ae: $d2 $d1 $d1

    db $e3                                        ; $77b1: $e3
    jp nc, $d1d1                                  ; $77b2: $d2 $d1 $d1

    db $db                                        ; $77b5: $db
    jp nc, $d1d1                                  ; $77b6: $d2 $d1 $d1

    rst $18                                       ; $77b9: $df
    jp nc, $d1d1                                  ; $77ba: $d2 $d1 $d1

    inc bc                                        ; $77bd: $03
    add b                                         ; $77be: $80
    add b                                         ; $77bf: $80
    add b                                         ; $77c0: $80
    inc bc                                        ; $77c1: $03
    add b                                         ; $77c2: $80
    add b                                         ; $77c3: $80
    add b                                         ; $77c4: $80
    ld [bc], a                                    ; $77c5: $02
    add b                                         ; $77c6: $80
    add b                                         ; $77c7: $80
    add b                                         ; $77c8: $80
    ld [bc], a                                    ; $77c9: $02
    add b                                         ; $77ca: $80
    add b                                         ; $77cb: $80
    add b                                         ; $77cc: $80
    rst $18                                       ; $77cd: $df
    jp nc, $d1d1                                  ; $77ce: $d2 $d1 $d1

    rst $18                                       ; $77d1: $df
    jp nc, $d1d1                                  ; $77d2: $d2 $d1 $d1

    db $db                                        ; $77d5: $db
    jp nc, $d1d1                                  ; $77d6: $d2 $d1 $d1

    db $ed                                        ; $77d9: $ed
    jp nc, $d1d1                                  ; $77da: $d2 $d1 $d1

    ld [bc], a                                    ; $77dd: $02
    add b                                         ; $77de: $80
    add b                                         ; $77df: $80
    add b                                         ; $77e0: $80
    ld [bc], a                                    ; $77e1: $02
    add b                                         ; $77e2: $80
    add b                                         ; $77e3: $80
    add b                                         ; $77e4: $80
    ld [bc], a                                    ; $77e5: $02
    add b                                         ; $77e6: $80
    add b                                         ; $77e7: $80
    add b                                         ; $77e8: $80
    ld [bc], a                                    ; $77e9: $02
    add b                                         ; $77ea: $80
    add b                                         ; $77eb: $80
    add b                                         ; $77ec: $80
    db $ed                                        ; $77ed: $ed
    jp nc, $d1d1                                  ; $77ee: $d2 $d1 $d1

    db $ed                                        ; $77f1: $ed
    jp nc, $d1d1                                  ; $77f2: $d2 $d1 $d1

    ei                                            ; $77f5: $fb
    jp nc, $d1d1                                  ; $77f6: $d2 $d1 $d1

    ld b, $d2                                     ; $77f9: $06 $d2
    pop de                                        ; $77fb: $d1
    pop de                                        ; $77fc: $d1
    ld [bc], a                                    ; $77fd: $02
    add b                                         ; $77fe: $80
    add b                                         ; $77ff: $80
    add b                                         ; $7800: $80
    ld [bc], a                                    ; $7801: $02
    add b                                         ; $7802: $80
    add b                                         ; $7803: $80
    add b                                         ; $7804: $80
    ld [bc], a                                    ; $7805: $02
    add b                                         ; $7806: $80
    add b                                         ; $7807: $80
    add b                                         ; $7808: $80
    rlca                                          ; $7809: $07
    add b                                         ; $780a: $80
    add b                                         ; $780b: $80
    add b                                         ; $780c: $80
    inc h                                         ; $780d: $24
    jp nc, $d1d1                                  ; $780e: $d2 $d1 $d1

    ld h, $d2                                     ; $7811: $26 $d2
    pop de                                        ; $7813: $d1
    pop de                                        ; $7814: $d1
    ld d, b                                       ; $7815: $50
    jp nc, $d1d1                                  ; $7816: $d2 $d1 $d1

    ld d, c                                       ; $7819: $51
    jp nc, $d1d1                                  ; $781a: $d2 $d1 $d1

    dec b                                         ; $781d: $05
    add b                                         ; $781e: $80
    add b                                         ; $781f: $80
    add b                                         ; $7820: $80
    rlca                                          ; $7821: $07
    add b                                         ; $7822: $80
    add b                                         ; $7823: $80
    add b                                         ; $7824: $80
    rlca                                          ; $7825: $07
    add b                                         ; $7826: $80
    add b                                         ; $7827: $80
    add b                                         ; $7828: $80
    inc bc                                        ; $7829: $03
    add b                                         ; $782a: $80
    add b                                         ; $782b: $80
    add b                                         ; $782c: $80
    pop de                                        ; $782d: $d1
    dec c                                         ; $782e: $0d
    ld d, d                                       ; $782f: $52
    ld d, e                                       ; $7830: $53
    ld d, h                                       ; $7831: $54
    dec c                                         ; $7832: $0d
    ld b, $07                                     ; $7833: $06 $07
    ld d, h                                       ; $7835: $54
    jp nc, $2524                                  ; $7836: $d2 $24 $25

    ld d, h                                       ; $7839: $54
    ld d, l                                       ; $783a: $55
    di                                            ; $783b: $f3
    ld c, h                                       ; $783c: $4c
    add b                                         ; $783d: $80
    add b                                         ; $783e: $80
    inc bc                                        ; $783f: $03
    inc bc                                        ; $7840: $03
    add b                                         ; $7841: $80
    add b                                         ; $7842: $80
    rlca                                          ; $7843: $07
    rlca                                          ; $7844: $07
    add b                                         ; $7845: $80
    add b                                         ; $7846: $80
    rlca                                          ; $7847: $07
    inc b                                         ; $7848: $04
    add b                                         ; $7849: $80
    add b                                         ; $784a: $80
    add b                                         ; $784b: $80
    add b                                         ; $784c: $80
    ld b, e                                       ; $784d: $43
    ld b, h                                       ; $784e: $44
    ld d, [hl]                                    ; $784f: $56
    ld d, a                                       ; $7850: $57
    rst $38                                       ; $7851: $ff
    nop                                           ; $7852: $00
    ld bc, $5802                                  ; $7853: $01 $02 $58
    ld e, c                                       ; $7856: $59
    ld d, $17                                     ; $7857: $16 $17
    ld e, d                                       ; $7859: $5a
    ld e, e                                       ; $785a: $5b
    ld a, [de]                                    ; $785b: $1a
    dec de                                        ; $785c: $1b
    rlca                                          ; $785d: $07
    ld b, $06                                     ; $785e: $06 $06
    ld b, $07                                     ; $7860: $06 $07
    inc b                                         ; $7862: $04
    ld b, $04                                     ; $7863: $06 $04
    ld b, $06                                     ; $7865: $06 $06
    dec b                                         ; $7867: $05
    ld b, $06                                     ; $7868: $06 $06
    ld b, $06                                     ; $786a: $06 $06
    inc b                                         ; $786c: $04
    ld c, b                                       ; $786d: $48
    ld c, c                                       ; $786e: $49
    jp nc, Jump_000_06d1                          ; $786f: $d2 $d1 $06

    rlca                                          ; $7872: $07
    ld d, l                                       ; $7873: $55
    di                                            ; $7874: $f3
    inc h                                         ; $7875: $24
    dec h                                         ; $7876: $25
    ld e, h                                       ; $7877: $5c
    ld e, l                                       ; $7878: $5d
    ld h, $27                                     ; $7879: $26 $27
    ld e, [hl]                                    ; $787b: $5e
    ld e, a                                       ; $787c: $5f
    dec b                                         ; $787d: $05
    ld b, $80                                     ; $787e: $06 $80
    add b                                         ; $7880: $80
    ld b, $04                                     ; $7881: $06 $04
    add b                                         ; $7883: $80
    add b                                         ; $7884: $80
    inc b                                         ; $7885: $04
    ld b, $01                                     ; $7886: $06 $01
    ld bc, $0706                                  ; $7888: $01 $06 $07
    ld bc, $d101                                  ; $788b: $01 $01 $d1
    pop de                                        ; $788e: $d1
    pop de                                        ; $788f: $d1
    pop de                                        ; $7890: $d1
    di                                            ; $7891: $f3
    di                                            ; $7892: $f3
    di                                            ; $7893: $f3
    di                                            ; $7894: $f3
    ld h, b                                       ; $7895: $60
    ld h, c                                       ; $7896: $61
    ld h, d                                       ; $7897: $62
    ld h, e                                       ; $7898: $63
    ld h, h                                       ; $7899: $64
    ld h, l                                       ; $789a: $65
    ld e, a                                       ; $789b: $5f
    ld h, [hl]                                    ; $789c: $66
    add b                                         ; $789d: $80
    add b                                         ; $789e: $80
    add b                                         ; $789f: $80
    add b                                         ; $78a0: $80
    add b                                         ; $78a1: $80
    add b                                         ; $78a2: $80
    add b                                         ; $78a3: $80
    add b                                         ; $78a4: $80
    ld bc, $0101                                  ; $78a5: $01 $01 $01
    ld bc, $0101                                  ; $78a8: $01 $01 $01
    ld bc, $5101                                  ; $78ab: $01 $01 $51
    ld c, a                                       ; $78ae: $4f
    ld h, a                                       ; $78af: $67
    rra                                           ; $78b0: $1f
    ld l, b                                       ; $78b1: $68
    ld l, c                                       ; $78b2: $69
    ld l, d                                       ; $78b3: $6a
    inc hl                                        ; $78b4: $23
    ld l, e                                       ; $78b5: $6b
    ld l, h                                       ; $78b6: $6c
    ld l, l                                       ; $78b7: $6d
    ld d, a                                       ; $78b8: $57
    ld l, [hl]                                    ; $78b9: $6e
    ld l, a                                       ; $78ba: $6f
    ld [hl], b                                    ; $78bb: $70
    ld [bc], a                                    ; $78bc: $02
    inc hl                                        ; $78bd: $23
    inc hl                                        ; $78be: $23
    ld b, $06                                     ; $78bf: $06 $06
    inc hl                                        ; $78c1: $23
    inc hl                                        ; $78c2: $23
    ld b, $05                                     ; $78c3: $06 $05
    inc hl                                        ; $78c5: $23
    inc hl                                        ; $78c6: $23
    ld b, $06                                     ; $78c7: $06 $06
    inc hl                                        ; $78c9: $23
    inc hl                                        ; $78ca: $23
    ld b, $04                                     ; $78cb: $06 $04
    jr z, jr_08c_78f8                             ; $78cd: $28 $29

    ld e, [hl]                                    ; $78cf: $5e
    ld [hl], c                                    ; $78d0: $71
    ld a, [hl+]                                   ; $78d1: $2a
    dec hl                                        ; $78d2: $2b
    ld e, [hl]                                    ; $78d3: $5e
    ld [hl], d                                    ; $78d4: $72
    ld c, b                                       ; $78d5: $48
    ld c, c                                       ; $78d6: $49
    ld [hl], e                                    ; $78d7: $73
    ld [hl], h                                    ; $78d8: $74
    ld b, $07                                     ; $78d9: $06 $07
    ld [hl], l                                    ; $78db: $75
    halt                                          ; $78dc: $76
    dec b                                         ; $78dd: $05
    rlca                                          ; $78de: $07
    ld bc, $0601                                  ; $78df: $01 $01 $06
    rlca                                          ; $78e2: $07
    ld bc, $0401                                  ; $78e3: $01 $01 $04
    rlca                                          ; $78e6: $07
    ld bc, $0601                                  ; $78e7: $01 $01 $06
    rlca                                          ; $78ea: $07
    rlca                                          ; $78eb: $07
    rlca                                          ; $78ec: $07
    ld [hl], a                                    ; $78ed: $77
    ld a, b                                       ; $78ee: $78
    ld [hl], c                                    ; $78ef: $71
    ld a, c                                       ; $78f0: $79
    ld a, d                                       ; $78f1: $7a
    ld a, e                                       ; $78f2: $7b
    ld [hl], d                                    ; $78f3: $72
    ld a, h                                       ; $78f4: $7c
    ld a, l                                       ; $78f5: $7d
    ld a, [hl]                                    ; $78f6: $7e
    ld [hl], h                                    ; $78f7: $74

jr_08c_78f8:
    ld a, l                                       ; $78f8: $7d
    ld a, a                                       ; $78f9: $7f
    add b                                         ; $78fa: $80
    add c                                         ; $78fb: $81
    add d                                         ; $78fc: $82
    ld bc, $0101                                  ; $78fd: $01 $01 $01
    ld bc, $0101                                  ; $7900: $01 $01 $01
    ld bc, $0101                                  ; $7903: $01 $01 $01
    ld bc, $0101                                  ; $7906: $01 $01 $01
    rlca                                          ; $7909: $07
    rrca                                          ; $790a: $0f
    rrca                                          ; $790b: $0f
    rrca                                          ; $790c: $0f
    ld l, e                                       ; $790d: $6b
    ld l, h                                       ; $790e: $6c
    add e                                         ; $790f: $83
    rla                                           ; $7910: $17
    ld l, [hl]                                    ; $7911: $6e
    ld l, a                                       ; $7912: $6f
    add h                                         ; $7913: $84
    dec de                                        ; $7914: $1b
    ld l, e                                       ; $7915: $6b
    ld l, h                                       ; $7916: $6c
    ld h, a                                       ; $7917: $67
    rra                                           ; $7918: $1f
    ld l, [hl]                                    ; $7919: $6e
    ld l, a                                       ; $791a: $6f
    ld l, d                                       ; $791b: $6a
    inc hl                                        ; $791c: $23
    inc hl                                        ; $791d: $23
    inc hl                                        ; $791e: $23
    ld c, $06                                     ; $791f: $0e $06
    inc hl                                        ; $7921: $23
    inc hl                                        ; $7922: $23
    ld c, $04                                     ; $7923: $0e $04
    inc hl                                        ; $7925: $23
    inc hl                                        ; $7926: $23
    ld b, $06                                     ; $7927: $06 $06
    inc hl                                        ; $7929: $23
    inc hl                                        ; $792a: $23
    ld b, $06                                     ; $792b: $06 $06
    inc h                                         ; $792d: $24
    dec h                                         ; $792e: $25
    inc d                                         ; $792f: $14
    dec d                                         ; $7930: $15
    ld h, $27                                     ; $7931: $26 $27
    jr @+$1b                                      ; $7933: $18 $19

    jr z, jr_08c_7960                             ; $7935: $28 $29

    inc e                                         ; $7937: $1c
    dec e                                         ; $7938: $1d
    ld a, [hl+]                                   ; $7939: $2a
    dec hl                                        ; $793a: $2b
    jr nz, jr_08c_795e                            ; $793b: $20 $21

    ld b, $04                                     ; $793d: $06 $04
    ld b, $06                                     ; $793f: $06 $06
    ld b, $05                                     ; $7941: $06 $05
    dec b                                         ; $7943: $05
    ld b, $05                                     ; $7944: $06 $05
    dec b                                         ; $7946: $05
    ld b, $04                                     ; $7947: $06 $04
    ld b, $04                                     ; $7949: $06 $04
    ld b, $06                                     ; $794b: $06 $06
    ld d, $17                                     ; $794d: $16 $17
    inc h                                         ; $794f: $24
    dec h                                         ; $7950: $25
    ld a, [de]                                    ; $7951: $1a
    dec de                                        ; $7952: $1b
    ld h, $27                                     ; $7953: $26 $27
    inc l                                         ; $7955: $2c
    dec l                                         ; $7956: $2d
    jr z, jr_08c_7982                             ; $7957: $28 $29

    ld l, $2f                                     ; $7959: $2e $2f
    ld a, [hl+]                                   ; $795b: $2a
    dec hl                                        ; $795c: $2b
    dec b                                         ; $795d: $05

jr_08c_795e:
    ld b, $06                                     ; $795e: $06 $06

jr_08c_7960:
    dec b                                         ; $7960: $05
    inc b                                         ; $7961: $04
    ld b, $06                                     ; $7962: $06 $06
    inc b                                         ; $7964: $04
    nop                                           ; $7965: $00
    nop                                           ; $7966: $00
    inc b                                         ; $7967: $04
    ld b, $00                                     ; $7968: $06 $00
    nop                                           ; $796a: $00
    ld b, $05                                     ; $796b: $06 $05
    pop de                                        ; $796d: $d1
    pop de                                        ; $796e: $d1
    pop de                                        ; $796f: $d1
    jp nc, $d1d1                                  ; $7970: $d2 $d1 $d1

    pop de                                        ; $7973: $d1
    ld d, l                                       ; $7974: $55
    pop de                                        ; $7975: $d1
    pop de                                        ; $7976: $d1
    pop de                                        ; $7977: $d1
    pop de                                        ; $7978: $d1
    pop de                                        ; $7979: $d1
    pop de                                        ; $797a: $d1
    pop de                                        ; $797b: $d1
    pop de                                        ; $797c: $d1
    add b                                         ; $797d: $80
    add b                                         ; $797e: $80
    add b                                         ; $797f: $80
    add b                                         ; $7980: $80
    add b                                         ; $7981: $80

jr_08c_7982:
    add b                                         ; $7982: $80
    add b                                         ; $7983: $80
    add b                                         ; $7984: $80
    add b                                         ; $7985: $80
    add b                                         ; $7986: $80
    add b                                         ; $7987: $80
    add b                                         ; $7988: $80
    add b                                         ; $7989: $80
    add b                                         ; $798a: $80
    add b                                         ; $798b: $80
    add b                                         ; $798c: $80
    add l                                         ; $798d: $85
    add [hl]                                      ; $798e: $86
    ld l, l                                       ; $798f: $6d
    ld d, a                                       ; $7990: $57
    di                                            ; $7991: $f3
    di                                            ; $7992: $f3
    di                                            ; $7993: $f3
    di                                            ; $7994: $f3
    pop de                                        ; $7995: $d1
    pop de                                        ; $7996: $d1
    pop de                                        ; $7997: $d1
    pop de                                        ; $7998: $d1
    pop de                                        ; $7999: $d1
    pop de                                        ; $799a: $d1
    pop de                                        ; $799b: $d1
    pop de                                        ; $799c: $d1
    dec hl                                        ; $799d: $2b
    dec hl                                        ; $799e: $2b
    ld b, $06                                     ; $799f: $06 $06
    add b                                         ; $79a1: $80
    add b                                         ; $79a2: $80
    add b                                         ; $79a3: $80
    add b                                         ; $79a4: $80
    add b                                         ; $79a5: $80
    add b                                         ; $79a6: $80
    add b                                         ; $79a7: $80
    add b                                         ; $79a8: $80
    add b                                         ; $79a9: $80
    add b                                         ; $79aa: $80
    add b                                         ; $79ab: $80
    add b                                         ; $79ac: $80
    ld c, b                                       ; $79ad: $48
    ld c, c                                       ; $79ae: $49
    ld b, e                                       ; $79af: $43
    add a                                         ; $79b0: $87
    di                                            ; $79b1: $f3
    di                                            ; $79b2: $f3
    di                                            ; $79b3: $f3
    di                                            ; $79b4: $f3
    pop de                                        ; $79b5: $d1
    pop de                                        ; $79b6: $d1
    pop de                                        ; $79b7: $d1
    pop de                                        ; $79b8: $d1
    pop de                                        ; $79b9: $d1
    pop de                                        ; $79ba: $d1
    pop de                                        ; $79bb: $d1
    pop de                                        ; $79bc: $d1
    inc b                                         ; $79bd: $04
    ld b, $05                                     ; $79be: $06 $05
    dec c                                         ; $79c0: $0d
    add b                                         ; $79c1: $80
    add b                                         ; $79c2: $80
    add b                                         ; $79c3: $80
    add b                                         ; $79c4: $80
    add b                                         ; $79c5: $80
    add b                                         ; $79c6: $80
    add b                                         ; $79c7: $80
    add b                                         ; $79c8: $80
    add b                                         ; $79c9: $80
    add b                                         ; $79ca: $80
    add b                                         ; $79cb: $80
    add b                                         ; $79cc: $80
    adc b                                         ; $79cd: $88
    ld d, a                                       ; $79ce: $57
    ld c, b                                       ; $79cf: $48
    ld c, c                                       ; $79d0: $49
    di                                            ; $79d1: $f3
    di                                            ; $79d2: $f3
    di                                            ; $79d3: $f3
    di                                            ; $79d4: $f3
    pop de                                        ; $79d5: $d1
    pop de                                        ; $79d6: $d1
    pop de                                        ; $79d7: $d1
    pop de                                        ; $79d8: $d1
    pop de                                        ; $79d9: $d1
    pop de                                        ; $79da: $d1
    pop de                                        ; $79db: $d1
    pop de                                        ; $79dc: $d1
    ld c, $06                                     ; $79dd: $0e $06
    ld b, $04                                     ; $79df: $06 $04
    add b                                         ; $79e1: $80
    add b                                         ; $79e2: $80
    add b                                         ; $79e3: $80
    add b                                         ; $79e4: $80
    add b                                         ; $79e5: $80
    add b                                         ; $79e6: $80
    add b                                         ; $79e7: $80
    add b                                         ; $79e8: $80
    add b                                         ; $79e9: $80
    add b                                         ; $79ea: $80
    add b                                         ; $79eb: $80
    add b                                         ; $79ec: $80
    pop de                                        ; $79ed: $d1
    pop de                                        ; $79ee: $d1
    pop de                                        ; $79ef: $d1
    pop de                                        ; $79f0: $d1
    di                                            ; $79f1: $f3
    di                                            ; $79f2: $f3
    di                                            ; $79f3: $f3
    di                                            ; $79f4: $f3
    adc c                                         ; $79f5: $89
    adc d                                         ; $79f6: $8a
    ld h, e                                       ; $79f7: $63
    adc e                                         ; $79f8: $8b
    adc h                                         ; $79f9: $8c
    adc l                                         ; $79fa: $8d
    ld h, h                                       ; $79fb: $64
    adc [hl]                                      ; $79fc: $8e
    add b                                         ; $79fd: $80
    add b                                         ; $79fe: $80
    add b                                         ; $79ff: $80
    add b                                         ; $7a00: $80
    add b                                         ; $7a01: $80
    add b                                         ; $7a02: $80
    add b                                         ; $7a03: $80
    add b                                         ; $7a04: $80
    add hl, bc                                    ; $7a05: $09
    add hl, bc                                    ; $7a06: $09
    ld bc, $0909                                  ; $7a07: $01 $09 $09
    add hl, bc                                    ; $7a0a: $09
    ld bc, $d109                                  ; $7a0b: $01 $09 $d1
    pop de                                        ; $7a0e: $d1
    pop de                                        ; $7a0f: $d1
    pop de                                        ; $7a10: $d1
    di                                            ; $7a11: $f3
    di                                            ; $7a12: $f3
    di                                            ; $7a13: $f3
    di                                            ; $7a14: $f3
    ld h, d                                       ; $7a15: $62
    ld h, e                                       ; $7a16: $63
    adc e                                         ; $7a17: $8b
    ld h, d                                       ; $7a18: $62
    ld e, a                                       ; $7a19: $5f
    ld h, h                                       ; $7a1a: $64
    adc [hl]                                      ; $7a1b: $8e
    ld e, a                                       ; $7a1c: $5f
    add b                                         ; $7a1d: $80
    add b                                         ; $7a1e: $80
    add b                                         ; $7a1f: $80
    add b                                         ; $7a20: $80
    add b                                         ; $7a21: $80
    add b                                         ; $7a22: $80
    add b                                         ; $7a23: $80
    add b                                         ; $7a24: $80
    ld bc, $0901                                  ; $7a25: $01 $01 $09
    ld bc, $0101                                  ; $7a28: $01 $01 $01
    add hl, bc                                    ; $7a2b: $09
    ld bc, $d2d1                                  ; $7a2c: $01 $d1 $d2
    ld c, b                                       ; $7a2f: $48
    ld c, c                                       ; $7a30: $49
    di                                            ; $7a31: $f3
    db $f4                                        ; $7a32: $f4
    ld b, $07                                     ; $7a33: $06 $07
    adc a                                         ; $7a35: $8f
    sub b                                         ; $7a36: $90
    inc h                                         ; $7a37: $24
    dec h                                         ; $7a38: $25
    sub c                                         ; $7a39: $91
    sub d                                         ; $7a3a: $92
    ld h, $27                                     ; $7a3b: $26 $27
    add b                                         ; $7a3d: $80
    add b                                         ; $7a3e: $80
    inc b                                         ; $7a3f: $04
    dec b                                         ; $7a40: $05
    add b                                         ; $7a41: $80
    add b                                         ; $7a42: $80
    ld b, $04                                     ; $7a43: $06 $04
    add hl, bc                                    ; $7a45: $09
    add hl, bc                                    ; $7a46: $09
    ld b, $06                                     ; $7a47: $06 $06
    add hl, bc                                    ; $7a49: $09
    add hl, bc                                    ; $7a4a: $09
    rlca                                          ; $7a4b: $07
    dec b                                         ; $7a4c: $05
    ld b, e                                       ; $7a4d: $43
    ld b, h                                       ; $7a4e: $44
    sub e                                         ; $7a4f: $93
    ld l, c                                       ; $7a50: $69
    rst $38                                       ; $7a51: $ff
    nop                                           ; $7a52: $00
    sub h                                         ; $7a53: $94
    ld l, h                                       ; $7a54: $6c
    inc d                                         ; $7a55: $14
    dec d                                         ; $7a56: $15
    sub l                                         ; $7a57: $95
    ld l, a                                       ; $7a58: $6f
    jr jr_08c_7a74                                ; $7a59: $18 $19

    sub [hl]                                      ; $7a5b: $96
    ld l, h                                       ; $7a5c: $6c
    ld b, $06                                     ; $7a5d: $06 $06
    ld c, $03                                     ; $7a5f: $0e $03
    inc b                                         ; $7a61: $04
    ld b, $0e                                     ; $7a62: $06 $0e
    inc bc                                        ; $7a64: $03
    inc b                                         ; $7a65: $04
    ld b, $0e                                     ; $7a66: $06 $0e
    inc bc                                        ; $7a68: $03
    ld b, $04                                     ; $7a69: $06 $04
    ld c, $03                                     ; $7a6b: $0e $03
    sub a                                         ; $7a6d: $97
    sbc b                                         ; $7a6e: $98
    ld [hl], a                                    ; $7a6f: $77
    sbc c                                         ; $7a70: $99
    sbc d                                         ; $7a71: $9a
    ld [hl], d                                    ; $7a72: $72
    ld a, d                                       ; $7a73: $7a

jr_08c_7a74:
    sbc e                                         ; $7a74: $9b
    sbc h                                         ; $7a75: $9c
    ld [hl], h                                    ; $7a76: $74
    ld a, l                                       ; $7a77: $7d
    sbc l                                         ; $7a78: $9d
    sbc [hl]                                      ; $7a79: $9e
    halt                                          ; $7a7a: $76
    ld a, a                                       ; $7a7b: $7f
    sbc a                                         ; $7a7c: $9f
    add hl, bc                                    ; $7a7d: $09
    add hl, bc                                    ; $7a7e: $09
    ld bc, $0909                                  ; $7a7f: $01 $09 $09
    ld bc, $0901                                  ; $7a82: $01 $01 $09
    add hl, bc                                    ; $7a85: $09
    ld bc, $0901                                  ; $7a86: $01 $01 $09
    rrca                                          ; $7a89: $0f
    rlca                                          ; $7a8a: $07
    rlca                                          ; $7a8b: $07
    rrca                                          ; $7a8c: $0f
    ld [hl], c                                    ; $7a8d: $71
    ld [hl], a                                    ; $7a8e: $77
    adc [hl]                                      ; $7a8f: $8e
    ld [hl], c                                    ; $7a90: $71
    ld [hl], d                                    ; $7a91: $72
    ld a, d                                       ; $7a92: $7a
    and b                                         ; $7a93: $a0
    ld [hl], d                                    ; $7a94: $72
    and c                                         ; $7a95: $a1
    ld a, l                                       ; $7a96: $7d
    ld a, [hl]                                    ; $7a97: $7e
    ld [hl], h                                    ; $7a98: $74
    add c                                         ; $7a99: $81
    add d                                         ; $7a9a: $82
    sbc [hl]                                      ; $7a9b: $9e
    halt                                          ; $7a9c: $76
    ld bc, $0901                                  ; $7a9d: $01 $01 $09
    ld bc, $0101                                  ; $7aa0: $01 $01 $01
    add hl, bc                                    ; $7aa3: $09
    ld bc, $0109                                  ; $7aa4: $01 $09 $01
    ld bc, $0f01                                  ; $7aa7: $01 $01 $0f
    rrca                                          ; $7aaa: $0f
    rrca                                          ; $7aab: $0f
    rlca                                          ; $7aac: $07
    and d                                         ; $7aad: $a2
    and e                                         ; $7aae: $a3
    jr z, jr_08c_7ada                             ; $7aaf: $28 $29

    ld a, d                                       ; $7ab1: $7a
    and h                                         ; $7ab2: $a4
    ld a, [hl+]                                   ; $7ab3: $2a
    dec hl                                        ; $7ab4: $2b
    and l                                         ; $7ab5: $a5
    and [hl]                                      ; $7ab6: $a6
    ld c, b                                       ; $7ab7: $48
    ld c, c                                       ; $7ab8: $49
    ld a, a                                       ; $7ab9: $7f
    and a                                         ; $7aba: $a7
    ld b, $07                                     ; $7abb: $06 $07
    add hl, bc                                    ; $7abd: $09
    add hl, bc                                    ; $7abe: $09
    rlca                                          ; $7abf: $07
    dec b                                         ; $7ac0: $05
    ld bc, $0709                                  ; $7ac1: $01 $09 $07
    ld b, $09                                     ; $7ac4: $06 $09
    add hl, bc                                    ; $7ac6: $09
    rlca                                          ; $7ac7: $07
    inc b                                         ; $7ac8: $04
    rlca                                          ; $7ac9: $07
    rrca                                          ; $7aca: $0f
    rlca                                          ; $7acb: $07
    ld b, $1c                                     ; $7acc: $06 $1c
    dec e                                         ; $7ace: $1d
    xor b                                         ; $7acf: $a8
    ld l, a                                       ; $7ad0: $6f
    jr nz, jr_08c_7af4                            ; $7ad1: $20 $21

    ld c, [hl]                                    ; $7ad3: $4e
    ld l, h                                       ; $7ad4: $6c
    ld b, e                                       ; $7ad5: $43
    ld b, h                                       ; $7ad6: $44
    sub e                                         ; $7ad7: $93
    ld l, a                                       ; $7ad8: $6f
    rst $38                                       ; $7ad9: $ff

jr_08c_7ada:
    nop                                           ; $7ada: $00
    sub h                                         ; $7adb: $94
    add [hl]                                      ; $7adc: $86
    dec b                                         ; $7add: $05
    ld b, $0e                                     ; $7ade: $06 $0e
    inc bc                                        ; $7ae0: $03
    dec b                                         ; $7ae1: $05
    ld b, $06                                     ; $7ae2: $06 $06
    inc bc                                        ; $7ae4: $03
    ld b, $06                                     ; $7ae5: $06 $06
    ld c, $03                                     ; $7ae7: $0e $03
    dec b                                         ; $7ae9: $05
    ld b, $0e                                     ; $7aea: $06 $0e
    dec bc                                        ; $7aec: $0b
    inc d                                         ; $7aed: $14
    dec d                                         ; $7aee: $15
    ld d, $17                                     ; $7aef: $16 $17
    jr @+$1b                                      ; $7af1: $18 $19

    ld a, [de]                                    ; $7af3: $1a

jr_08c_7af4:
    dec de                                        ; $7af4: $1b
    inc e                                         ; $7af5: $1c
    dec e                                         ; $7af6: $1d
    ld e, $1f                                     ; $7af7: $1e $1f
    jr nz, @+$23                                  ; $7af9: $20 $21

    ld [hl+], a                                   ; $7afb: $22
    inc hl                                        ; $7afc: $23
    ld b, $06                                     ; $7afd: $06 $06
    ld b, $04                                     ; $7aff: $06 $04
    ld b, $04                                     ; $7b01: $06 $04
    ld b, $04                                     ; $7b03: $06 $04
    ld b, $05                                     ; $7b05: $06 $05
    inc b                                         ; $7b07: $04
    ld b, $05                                     ; $7b08: $06 $05
    dec b                                         ; $7b0a: $05
    ld b, $04                                     ; $7b0b: $06 $04
    inc h                                         ; $7b0d: $24
    dec h                                         ; $7b0e: $25
    inc d                                         ; $7b0f: $14
    dec d                                         ; $7b10: $15
    ld h, $27                                     ; $7b11: $26 $27
    jr @+$1b                                      ; $7b13: $18 $19

    jr z, @+$2b                                   ; $7b15: $28 $29

    inc l                                         ; $7b17: $2c
    dec l                                         ; $7b18: $2d
    ld a, [hl+]                                   ; $7b19: $2a
    dec hl                                        ; $7b1a: $2b
    ld l, $2f                                     ; $7b1b: $2e $2f
    ld b, $04                                     ; $7b1d: $06 $04
    dec b                                         ; $7b1f: $05
    dec b                                         ; $7b20: $05
    ld b, $06                                     ; $7b21: $06 $06
    ld b, $06                                     ; $7b23: $06 $06
    inc b                                         ; $7b25: $04
    ld b, $00                                     ; $7b26: $06 $00
    nop                                           ; $7b28: $00
    ld b, $06                                     ; $7b29: $06 $06
    nop                                           ; $7b2b: $00
    nop                                           ; $7b2c: $00
    ld d, $17                                     ; $7b2d: $16 $17
    inc h                                         ; $7b2f: $24
    dec h                                         ; $7b30: $25
    ld a, [de]                                    ; $7b31: $1a
    dec de                                        ; $7b32: $1b
    ld h, $27                                     ; $7b33: $26 $27
    ld e, $1f                                     ; $7b35: $1e $1f
    jr z, jr_08c_7b62                             ; $7b37: $28 $29

    ld [hl+], a                                   ; $7b39: $22
    inc hl                                        ; $7b3a: $23
    ld a, [hl+]                                   ; $7b3b: $2a
    dec hl                                        ; $7b3c: $2b
    ld b, $04                                     ; $7b3d: $06 $04
    ld b, $05                                     ; $7b3f: $06 $05
    inc b                                         ; $7b41: $04
    ld b, $05                                     ; $7b42: $06 $05
    ld b, $06                                     ; $7b44: $06 $06
    inc b                                         ; $7b46: $04
    ld b, $06                                     ; $7b47: $06 $06
    ld b, $06                                     ; $7b49: $06 $06
    dec b                                         ; $7b4b: $05
    dec b                                         ; $7b4c: $05
    inc d                                         ; $7b4d: $14
    dec d                                         ; $7b4e: $15
    sub l                                         ; $7b4f: $95
    xor c                                         ; $7b50: $a9
    jr @+$1b                                      ; $7b51: $18 $19

    xor d                                         ; $7b53: $aa
    xor e                                         ; $7b54: $ab
    inc e                                         ; $7b55: $1c
    dec e                                         ; $7b56: $1d
    ld e, $1f                                     ; $7b57: $1e $1f
    jr nz, jr_08c_7b7c                            ; $7b59: $20 $21

    ld [hl+], a                                   ; $7b5b: $22
    inc hl                                        ; $7b5c: $23
    ld b, $04                                     ; $7b5d: $06 $04
    ld c, $0b                                     ; $7b5f: $0e $0b
    dec b                                         ; $7b61: $05

jr_08c_7b62:
    dec b                                         ; $7b62: $05
    ld c, $0e                                     ; $7b63: $0e $0e
    dec b                                         ; $7b65: $05
    dec b                                         ; $7b66: $05
    dec b                                         ; $7b67: $05
    ld b, $06                                     ; $7b68: $06 $06
    inc b                                         ; $7b6a: $04
    ld b, $04                                     ; $7b6b: $06 $04
    ld b, e                                       ; $7b6d: $43
    ld b, h                                       ; $7b6e: $44
    ld d, [hl]                                    ; $7b6f: $56
    ld d, a                                       ; $7b70: $57
    di                                            ; $7b71: $f3
    di                                            ; $7b72: $f3
    di                                            ; $7b73: $f3
    di                                            ; $7b74: $f3
    pop de                                        ; $7b75: $d1
    pop de                                        ; $7b76: $d1
    pop de                                        ; $7b77: $d1
    pop de                                        ; $7b78: $d1
    pop de                                        ; $7b79: $d1
    pop de                                        ; $7b7a: $d1
    pop de                                        ; $7b7b: $d1

jr_08c_7b7c:
    pop de                                        ; $7b7c: $d1
    ld b, $04                                     ; $7b7d: $06 $04
    ld b, $05                                     ; $7b7f: $06 $05
    add b                                         ; $7b81: $80
    add b                                         ; $7b82: $80
    add b                                         ; $7b83: $80
    add b                                         ; $7b84: $80
    add b                                         ; $7b85: $80
    add b                                         ; $7b86: $80
    add b                                         ; $7b87: $80
    add b                                         ; $7b88: $80
    add b                                         ; $7b89: $80
    add b                                         ; $7b8a: $80
    add b                                         ; $7b8b: $80
    add b                                         ; $7b8c: $80
    ld c, b                                       ; $7b8d: $48
    ld c, c                                       ; $7b8e: $49
    xor h                                         ; $7b8f: $ac
    xor l                                         ; $7b90: $ad
    di                                            ; $7b91: $f3
    di                                            ; $7b92: $f3
    di                                            ; $7b93: $f3
    di                                            ; $7b94: $f3
    pop de                                        ; $7b95: $d1
    pop de                                        ; $7b96: $d1
    pop de                                        ; $7b97: $d1
    pop de                                        ; $7b98: $d1
    pop de                                        ; $7b99: $d1
    pop de                                        ; $7b9a: $d1
    pop de                                        ; $7b9b: $d1
    pop de                                        ; $7b9c: $d1
    dec b                                         ; $7b9d: $05
    ld b, $0c                                     ; $7b9e: $06 $0c
    ld c, $80                                     ; $7ba0: $0e $80
    add b                                         ; $7ba2: $80
    add b                                         ; $7ba3: $80
    add b                                         ; $7ba4: $80
    add b                                         ; $7ba5: $80
    add b                                         ; $7ba6: $80
    add b                                         ; $7ba7: $80
    add b                                         ; $7ba8: $80
    add b                                         ; $7ba9: $80
    add b                                         ; $7baa: $80
    add b                                         ; $7bab: $80
    add b                                         ; $7bac: $80
    ld d, [hl]                                    ; $7bad: $56
    ld d, a                                       ; $7bae: $57
    ld c, b                                       ; $7baf: $48
    ld c, c                                       ; $7bb0: $49
    di                                            ; $7bb1: $f3
    di                                            ; $7bb2: $f3
    di                                            ; $7bb3: $f3
    di                                            ; $7bb4: $f3
    pop de                                        ; $7bb5: $d1
    pop de                                        ; $7bb6: $d1
    pop de                                        ; $7bb7: $d1
    pop de                                        ; $7bb8: $d1
    pop de                                        ; $7bb9: $d1
    pop de                                        ; $7bba: $d1
    pop de                                        ; $7bbb: $d1
    pop de                                        ; $7bbc: $d1
    ld b, $04                                     ; $7bbd: $06 $04
    ld b, $04                                     ; $7bbf: $06 $04
    add b                                         ; $7bc1: $80
    add b                                         ; $7bc2: $80
    add b                                         ; $7bc3: $80
    add b                                         ; $7bc4: $80
    add b                                         ; $7bc5: $80
    add b                                         ; $7bc6: $80
    add b                                         ; $7bc7: $80
    add b                                         ; $7bc8: $80
    add b                                         ; $7bc9: $80
    add b                                         ; $7bca: $80
    add b                                         ; $7bcb: $80
    add b                                         ; $7bcc: $80
    ld b, e                                       ; $7bcd: $43
    ld b, h                                       ; $7bce: $44
    ld d, [hl]                                    ; $7bcf: $56
    ld d, a                                       ; $7bd0: $57
    di                                            ; $7bd1: $f3
    di                                            ; $7bd2: $f3
    di                                            ; $7bd3: $f3
    di                                            ; $7bd4: $f3
    pop de                                        ; $7bd5: $d1
    pop de                                        ; $7bd6: $d1
    pop de                                        ; $7bd7: $d1
    pop de                                        ; $7bd8: $d1
    pop de                                        ; $7bd9: $d1
    pop de                                        ; $7bda: $d1
    pop de                                        ; $7bdb: $d1
    pop de                                        ; $7bdc: $d1
    ld b, $04                                     ; $7bdd: $06 $04
    inc b                                         ; $7bdf: $04
    ld b, $80                                     ; $7be0: $06 $80
    add b                                         ; $7be2: $80
    add b                                         ; $7be3: $80
    add b                                         ; $7be4: $80
    add b                                         ; $7be5: $80
    add b                                         ; $7be6: $80
    add b                                         ; $7be7: $80
    add b                                         ; $7be8: $80
    add b                                         ; $7be9: $80
    add b                                         ; $7bea: $80
    add b                                         ; $7beb: $80
    add b                                         ; $7bec: $80
    ld l, b                                       ; $7bed: $68
    jp nc, $d1d1                                  ; $7bee: $d2 $d1 $d1

    ld l, e                                       ; $7bf1: $6b
    jp nc, $d1d1                                  ; $7bf2: $d2 $d1 $d1

    ld l, [hl]                                    ; $7bf5: $6e
    jp nc, $d1d1                                  ; $7bf6: $d2 $d1 $d1

    ld l, e                                       ; $7bf9: $6b
    jp nc, $d1d1                                  ; $7bfa: $d2 $d1 $d1

    inc bc                                        ; $7bfd: $03
    add b                                         ; $7bfe: $80
    add b                                         ; $7bff: $80
    add b                                         ; $7c00: $80
    inc bc                                        ; $7c01: $03
    add b                                         ; $7c02: $80
    add b                                         ; $7c03: $80
    add b                                         ; $7c04: $80
    inc bc                                        ; $7c05: $03
    add b                                         ; $7c06: $80
    add b                                         ; $7c07: $80
    add b                                         ; $7c08: $80

jr_08c_7c09:
    inc bc                                        ; $7c09: $03
    add b                                         ; $7c0a: $80
    add b                                         ; $7c0b: $80
    add b                                         ; $7c0c: $80
    ld l, [hl]                                    ; $7c0d: $6e
    jp nc, $d1d1                                  ; $7c0e: $d2 $d1 $d1

    ld l, e                                       ; $7c11: $6b
    jp nc, $d1d1                                  ; $7c12: $d2 $d1 $d1

    ld l, [hl]                                    ; $7c15: $6e
    jp nc, $d1d1                                  ; $7c16: $d2 $d1 $d1

    add l                                         ; $7c19: $85
    jp nc, $d1d1                                  ; $7c1a: $d2 $d1 $d1

    inc bc                                        ; $7c1d: $03
    add b                                         ; $7c1e: $80
    add b                                         ; $7c1f: $80
    add b                                         ; $7c20: $80
    inc bc                                        ; $7c21: $03
    add b                                         ; $7c22: $80
    add b                                         ; $7c23: $80
    add b                                         ; $7c24: $80
    inc bc                                        ; $7c25: $03
    add b                                         ; $7c26: $80
    add b                                         ; $7c27: $80
    add b                                         ; $7c28: $80
    dec bc                                        ; $7c29: $0b
    add b                                         ; $7c2a: $80
    add b                                         ; $7c2b: $80
    add b                                         ; $7c2c: $80
    xor [hl]                                      ; $7c2d: $ae
    jp nc, $d1d1                                  ; $7c2e: $d2 $d1 $d1

    xor a                                         ; $7c31: $af
    jp nc, $d1d1                                  ; $7c32: $d2 $d1 $d1

    jr z, jr_08c_7c09                             ; $7c35: $28 $d2

    pop de                                        ; $7c37: $d1
    pop de                                        ; $7c38: $d1
    ld a, [hl+]                                   ; $7c39: $2a
    jp nc, $d1d1                                  ; $7c3a: $d2 $d1 $d1

    dec bc                                        ; $7c3d: $0b
    add b                                         ; $7c3e: $80
    add b                                         ; $7c3f: $80
    add b                                         ; $7c40: $80
    ld c, $80                                     ; $7c41: $0e $80
    add b                                         ; $7c43: $80
    add b                                         ; $7c44: $80
    ld b, $80                                     ; $7c45: $06 $80
    add b                                         ; $7c47: $80
    add b                                         ; $7c48: $80
    ld b, $80                                     ; $7c49: $06 $80
    add b                                         ; $7c4b: $80
    add b                                         ; $7c4c: $80
    ld c, b                                       ; $7c4d: $48
    jp nc, $d1d1                                  ; $7c4e: $d2 $d1 $d1

    di                                            ; $7c51: $f3
    db $f4                                        ; $7c52: $f4
    pop de                                        ; $7c53: $d1
    pop de                                        ; $7c54: $d1
    pop de                                        ; $7c55: $d1
    pop de                                        ; $7c56: $d1
    pop de                                        ; $7c57: $d1
    pop de                                        ; $7c58: $d1
    pop de                                        ; $7c59: $d1
    pop de                                        ; $7c5a: $d1
    pop de                                        ; $7c5b: $d1
    pop de                                        ; $7c5c: $d1
    ld b, $80                                     ; $7c5d: $06 $80
    add b                                         ; $7c5f: $80
    add b                                         ; $7c60: $80
    add b                                         ; $7c61: $80
    add b                                         ; $7c62: $80
    add b                                         ; $7c63: $80
    add b                                         ; $7c64: $80
    add b                                         ; $7c65: $80
    add b                                         ; $7c66: $80
    add b                                         ; $7c67: $80
    add b                                         ; $7c68: $80
    add b                                         ; $7c69: $80
    add b                                         ; $7c6a: $80
    add b                                         ; $7c6b: $80
    add b                                         ; $7c6c: $80
    jr nz, jr_08c_7c71                            ; $7c6d: $20 $02

    ld b, b                                       ; $7c6f: $40
    nop                                           ; $7c70: $00

jr_08c_7c71:
    ld bc, $13b0                                  ; $7c71: $01 $b0 $13
    nop                                           ; $7c74: $00
    inc d                                         ; $7c75: $14
    nop                                           ; $7c76: $00
    dec d                                         ; $7c77: $15
    nop                                           ; $7c78: $00
    ld b, b                                       ; $7c79: $40
    ld [hl+], a                                   ; $7c7a: $22
    ld hl, $01a0                                  ; $7c7b: $21 $a0 $01
    nop                                           ; $7c7e: $00
    ld [bc], a                                    ; $7c7f: $02
    nop                                           ; $7c80: $00
    rlca                                          ; $7c81: $07
    nop                                           ; $7c82: $00
    nop                                           ; $7c83: $00
    ld [$0900], sp                                ; $7c84: $08 $00 $09
    nop                                           ; $7c87: $00
    ld a, [bc]                                    ; $7c88: $0a
    nop                                           ; $7c89: $00
    ld d, $00                                     ; $7c8a: $16 $00
    ld bc, $0017                                  ; $7c8c: $01 $17 $00
    jr jr_08c_7c91                                ; $7c8f: $18 $00

jr_08c_7c91:
    add hl, de                                    ; $7c91: $19
    nop                                           ; $7c92: $00
    inc hl                                        ; $7c93: $23
    inc d                                         ; $7c94: $14

jr_08c_7c95:
    nop                                           ; $7c95: $00
    ld b, h                                       ; $7c96: $44
    inc h                                         ; $7c97: $24
    inc d                                         ; $7c98: $14
    nop                                           ; $7c99: $00
    dec hl                                        ; $7c9a: $2b
    nop                                           ; $7c9b: $00
    inc l                                         ; $7c9c: $2c
    ld d, a                                       ; $7c9d: $57
    ld d, b                                       ; $7c9e: $50
    inc bc                                        ; $7c9f: $03
    nop                                           ; $7ca0: $00
    nop                                           ; $7ca1: $00
    inc b                                         ; $7ca2: $04
    nop                                           ; $7ca3: $00
    dec bc                                        ; $7ca4: $0b
    nop                                           ; $7ca5: $00
    inc c                                         ; $7ca6: $0c
    nop                                           ; $7ca7: $00
    dec c                                         ; $7ca8: $0d
    nop                                           ; $7ca9: $00
    nop                                           ; $7caa: $00
    ld c, $00                                     ; $7cab: $0e $00
    ld a, [de]                                    ; $7cad: $1a
    nop                                           ; $7cae: $00
    dec de                                        ; $7caf: $1b
    nop                                           ; $7cb0: $00
    inc e                                         ; $7cb1: $1c
    nop                                           ; $7cb2: $00
    ld bc, $001d                                  ; $7cb3: $01 $1d $00
    dec h                                         ; $7cb6: $25
    nop                                           ; $7cb7: $00
    ld h, $00                                     ; $7cb8: $26 $00
    daa                                           ; $7cba: $27
    inc d                                         ; $7cbb: $14
    nop                                           ; $7cbc: $00
    db $10                                        ; $7cbd: $10
    dec l                                         ; $7cbe: $2d
    nop                                           ; $7cbf: $00
    ld l, $83                                     ; $7cc0: $2e $83
    ld d, b                                       ; $7cc2: $50
    dec b                                         ; $7cc3: $05
    nop                                           ; $7cc4: $00
    ld b, $00                                     ; $7cc5: $06 $00
    nop                                           ; $7cc7: $00
    rrca                                          ; $7cc8: $0f
    nop                                           ; $7cc9: $00
    stop                                          ; $7cca: $10 $00
    ld de, $1200                                  ; $7ccc: $11 $00 $12
    nop                                           ; $7ccf: $00
    nop                                           ; $7cd0: $00
    ld e, $00                                     ; $7cd1: $1e $00
    rra                                           ; $7cd3: $1f
    nop                                           ; $7cd4: $00
    jr nz, jr_08c_7cd7                            ; $7cd5: $20 $00

jr_08c_7cd7:
    ld hl, $0400                                  ; $7cd7: $21 $00 $04
    jr z, jr_08c_7cdc                             ; $7cda: $28 $00

jr_08c_7cdc:
    add hl, hl                                    ; $7cdc: $29
    nop                                           ; $7cdd: $00
    ld a, [hl+]                                   ; $7cde: $2a
    inc d                                         ; $7cdf: $14
    nop                                           ; $7ce0: $00
    cpl                                           ; $7ce1: $2f
    nop                                           ; $7ce2: $00
    ld b, b                                       ; $7ce3: $40
    jr nc, jr_08c_7c95                            ; $7ce4: $30 $af

    ld b, b                                       ; $7ce6: $40
    ld sp, $3200                                  ; $7ce7: $31 $00 $32
    nop                                           ; $7cea: $00
    inc sp                                        ; $7ceb: $33
    nop                                           ; $7cec: $00
    nop                                           ; $7ced: $00
    dec a                                         ; $7cee: $3d
    nop                                           ; $7cef: $00
    ld a, $00                                     ; $7cf0: $3e $00
    ccf                                           ; $7cf2: $3f
    nop                                           ; $7cf3: $00
    ld b, b                                       ; $7cf4: $40
    nop                                           ; $7cf5: $00
    nop                                           ; $7cf6: $00
    ld c, l                                       ; $7cf7: $4d
    nop                                           ; $7cf8: $00
    ld c, [hl]                                    ; $7cf9: $4e
    nop                                           ; $7cfa: $00
    ld c, a                                       ; $7cfb: $4f
    nop                                           ; $7cfc: $00
    ld d, b                                       ; $7cfd: $50
    nop                                           ; $7cfe: $00
    nop                                           ; $7cff: $00
    ld e, l                                       ; $7d00: $5d
    nop                                           ; $7d01: $00
    ld e, [hl]                                    ; $7d02: $5e
    nop                                           ; $7d03: $00
    ld e, a                                       ; $7d04: $5f
    nop                                           ; $7d05: $00
    ld h, b                                       ; $7d06: $60
    nop                                           ; $7d07: $00
    db $10                                        ; $7d08: $10
    ld l, l                                       ; $7d09: $6d
    nop                                           ; $7d0a: $00
    ld l, [hl]                                    ; $7d0b: $6e
    db $db                                        ; $7d0c: $db
    ld b, b                                       ; $7d0d: $40
    inc [hl]                                      ; $7d0e: $34
    nop                                           ; $7d0f: $00
    dec [hl]                                      ; $7d10: $35
    nop                                           ; $7d11: $00
    nop                                           ; $7d12: $00
    ld [hl], $00                                  ; $7d13: $36 $00
    ld b, c                                       ; $7d15: $41
    nop                                           ; $7d16: $00
    ld b, d                                       ; $7d17: $42
    nop                                           ; $7d18: $00
    ld b, e                                       ; $7d19: $43
    nop                                           ; $7d1a: $00
    nop                                           ; $7d1b: $00
    ld b, h                                       ; $7d1c: $44
    nop                                           ; $7d1d: $00
    ld d, c                                       ; $7d1e: $51
    nop                                           ; $7d1f: $00
    ld d, d                                       ; $7d20: $52
    nop                                           ; $7d21: $00
    ld d, e                                       ; $7d22: $53
    nop                                           ; $7d23: $00
    nop                                           ; $7d24: $00
    ld d, h                                       ; $7d25: $54
    nop                                           ; $7d26: $00
    ld h, c                                       ; $7d27: $61
    nop                                           ; $7d28: $00
    ld h, d                                       ; $7d29: $62
    nop                                           ; $7d2a: $00
    ld h, e                                       ; $7d2b: $63
    nop                                           ; $7d2c: $00
    inc b                                         ; $7d2d: $04
    ld h, h                                       ; $7d2e: $64
    nop                                           ; $7d2f: $00
    ld l, a                                       ; $7d30: $6f
    nop                                           ; $7d31: $00
    ld [hl], b                                    ; $7d32: $70
    rlca                                          ; $7d33: $07
    ld b, c                                       ; $7d34: $41
    scf                                           ; $7d35: $37
    nop                                           ; $7d36: $00
    nop                                           ; $7d37: $00
    jr c, jr_08c_7d3a                             ; $7d38: $38 $00

jr_08c_7d3a:
    add hl, sp                                    ; $7d3a: $39
    nop                                           ; $7d3b: $00
    ld b, l                                       ; $7d3c: $45
    nop                                           ; $7d3d: $00
    ld b, [hl]                                    ; $7d3e: $46
    nop                                           ; $7d3f: $00
    nop                                           ; $7d40: $00
    ld b, a                                       ; $7d41: $47
    nop                                           ; $7d42: $00
    ld c, b                                       ; $7d43: $48
    nop                                           ; $7d44: $00
    ld d, l                                       ; $7d45: $55
    nop                                           ; $7d46: $00
    ld d, [hl]                                    ; $7d47: $56
    nop                                           ; $7d48: $00
    nop                                           ; $7d49: $00
    ld d, a                                       ; $7d4a: $57
    nop                                           ; $7d4b: $00
    ld e, b                                       ; $7d4c: $58
    nop                                           ; $7d4d: $00
    ld h, l                                       ; $7d4e: $65
    nop                                           ; $7d4f: $00
    ld h, [hl]                                    ; $7d50: $66
    nop                                           ; $7d51: $00
    ld bc, $0067                                  ; $7d52: $01 $67 $00
    ld l, b                                       ; $7d55: $68
    nop                                           ; $7d56: $00
    ld [hl], c                                    ; $7d57: $71
    nop                                           ; $7d58: $00
    ld [hl], d                                    ; $7d59: $72
    inc sp                                        ; $7d5a: $33
    ld b, c                                       ; $7d5b: $41
    nop                                           ; $7d5c: $00
    ld a, [hl-]                                   ; $7d5d: $3a
    nop                                           ; $7d5e: $00
    dec sp                                        ; $7d5f: $3b
    nop                                           ; $7d60: $00
    inc a                                         ; $7d61: $3c
    nop                                           ; $7d62: $00
    ld c, c                                       ; $7d63: $49
    nop                                           ; $7d64: $00
    nop                                           ; $7d65: $00
    ld c, d                                       ; $7d66: $4a
    nop                                           ; $7d67: $00
    ld c, e                                       ; $7d68: $4b
    nop                                           ; $7d69: $00
    ld c, h                                       ; $7d6a: $4c
    nop                                           ; $7d6b: $00
    ld e, c                                       ; $7d6c: $59
    nop                                           ; $7d6d: $00
    nop                                           ; $7d6e: $00
    ld e, d                                       ; $7d6f: $5a
    nop                                           ; $7d70: $00
    ld e, e                                       ; $7d71: $5b
    nop                                           ; $7d72: $00
    ld e, h                                       ; $7d73: $5c
    nop                                           ; $7d74: $00
    ld l, c                                       ; $7d75: $69
    nop                                           ; $7d76: $00
    nop                                           ; $7d77: $00
    ld l, d                                       ; $7d78: $6a
    nop                                           ; $7d79: $00
    ld l, e                                       ; $7d7a: $6b
    nop                                           ; $7d7b: $00
    ld l, h                                       ; $7d7c: $6c
    nop                                           ; $7d7d: $00
    ld [hl], e                                    ; $7d7e: $73
    nop                                           ; $7d7f: $00
    ld b, b                                       ; $7d80: $40
    ld [hl], h                                    ; $7d81: $74
    ld e, a                                       ; $7d82: $5f
    ld b, c                                       ; $7d83: $41
    ld a, c                                       ; $7d84: $79
    nop                                           ; $7d85: $00
    ld a, d                                       ; $7d86: $7a
    nop                                           ; $7d87: $00
    ld a, e                                       ; $7d88: $7b
    nop                                           ; $7d89: $00
    nop                                           ; $7d8a: $00
    add [hl]                                      ; $7d8b: $86
    nop                                           ; $7d8c: $00
    add a                                         ; $7d8d: $87
    nop                                           ; $7d8e: $00
    adc b                                         ; $7d8f: $88
    nop                                           ; $7d90: $00
    adc c                                         ; $7d91: $89
    nop                                           ; $7d92: $00
    ld b, c                                       ; $7d93: $41
    sub [hl]                                      ; $7d94: $96
    ld a, c                                       ; $7d95: $79
    ld d, c                                       ; $7d96: $51
    sbc h                                         ; $7d97: $9c
    nop                                           ; $7d98: $00
    and d                                         ; $7d99: $a2
    nop                                           ; $7d9a: $00
    and e                                         ; $7d9b: $a3
    adc e                                         ; $7d9c: $8b
    ld b, c                                       ; $7d9d: $41
    nop                                           ; $7d9e: $00
    ld a, h                                       ; $7d9f: $7c
    nop                                           ; $7da0: $00
    ld a, l                                       ; $7da1: $7d
    nop                                           ; $7da2: $00
    ld a, [hl]                                    ; $7da3: $7e
    nop                                           ; $7da4: $00
    adc d                                         ; $7da5: $8a
    nop                                           ; $7da6: $00
    ld bc, $008b                                  ; $7da7: $01 $8b $00
    adc h                                         ; $7daa: $8c
    nop                                           ; $7dab: $00
    adc l                                         ; $7dac: $8d
    nop                                           ; $7dad: $00
    sub a                                         ; $7dae: $97
    and l                                         ; $7daf: $a5
    ld d, c                                       ; $7db0: $51
    inc b                                         ; $7db1: $04
    sbc l                                         ; $7db2: $9d
    nop                                           ; $7db3: $00
    and h                                         ; $7db4: $a4
    nop                                           ; $7db5: $00
    and l                                         ; $7db6: $a5
    or a                                          ; $7db7: $b7
    ld b, c                                       ; $7db8: $41
    ld a, a                                       ; $7db9: $7f
    nop                                           ; $7dba: $00
    nop                                           ; $7dbb: $00
    add b                                         ; $7dbc: $80
    nop                                           ; $7dbd: $00
    add c                                         ; $7dbe: $81
    nop                                           ; $7dbf: $00
    adc [hl]                                      ; $7dc0: $8e
    nop                                           ; $7dc1: $00
    adc a                                         ; $7dc2: $8f
    nop                                           ; $7dc3: $00
    ld bc, $0090                                  ; $7dc4: $01 $90 $00
    sub c                                         ; $7dc7: $91
    nop                                           ; $7dc8: $00
    sbc b                                         ; $7dc9: $98
    nop                                           ; $7dca: $00
    sbc c                                         ; $7dcb: $99
    db $d3                                        ; $7dcc: $d3
    ld b, c                                       ; $7dcd: $41
    nop                                           ; $7dce: $00
    sbc [hl]                                      ; $7dcf: $9e
    nop                                           ; $7dd0: $00
    and [hl]                                      ; $7dd1: $a6
    nop                                           ; $7dd2: $00
    and a                                         ; $7dd3: $a7
    nop                                           ; $7dd4: $00
    ld [hl], l                                    ; $7dd5: $75
    nop                                           ; $7dd6: $00
    nop                                           ; $7dd7: $00
    halt                                          ; $7dd8: $76
    nop                                           ; $7dd9: $00
    ld [hl], a                                    ; $7dda: $77
    nop                                           ; $7ddb: $00
    ld a, b                                       ; $7ddc: $78
    nop                                           ; $7ddd: $00
    add d                                         ; $7dde: $82
    nop                                           ; $7ddf: $00
    nop                                           ; $7de0: $00
    add e                                         ; $7de1: $83
    nop                                           ; $7de2: $00
    add h                                         ; $7de3: $84
    nop                                           ; $7de4: $00
    add l                                         ; $7de5: $85
    nop                                           ; $7de6: $00
    sub d                                         ; $7de7: $92
    nop                                           ; $7de8: $00
    nop                                           ; $7de9: $00
    sub e                                         ; $7dea: $93
    nop                                           ; $7deb: $00
    sub h                                         ; $7dec: $94
    nop                                           ; $7ded: $00
    sub l                                         ; $7dee: $95
    nop                                           ; $7def: $00
    sbc d                                         ; $7df0: $9a
    nop                                           ; $7df1: $00
    ld b, b                                       ; $7df2: $40
    sbc e                                         ; $7df3: $9b
    rst $38                                       ; $7df4: $ff
    ld hl, $009f                                  ; $7df5: $21 $9f $00
    and b                                         ; $7df8: $a0
    nop                                           ; $7df9: $00
    and c                                         ; $7dfa: $a1
    nop                                           ; $7dfb: $00
    nop                                           ; $7dfc: $00
    xor b                                         ; $7dfd: $a8
    nop                                           ; $7dfe: $00
    xor c                                         ; $7dff: $a9
    nop                                           ; $7e00: $00
    xor d                                         ; $7e01: $aa
    nop                                           ; $7e02: $00
    xor e                                         ; $7e03: $ab
    nop                                           ; $7e04: $00
    nop                                           ; $7e05: $00
    xor h                                         ; $7e06: $ac
    nop                                           ; $7e07: $00
    xor l                                         ; $7e08: $ad
    nop                                           ; $7e09: $00
    cp d                                          ; $7e0a: $ba
    nop                                           ; $7e0b: $00
    cp e                                          ; $7e0c: $bb
    nop                                           ; $7e0d: $00
    nop                                           ; $7e0e: $00
    cp h                                          ; $7e0f: $bc
    nop                                           ; $7e10: $00
    cp l                                          ; $7e11: $bd
    nop                                           ; $7e12: $00
    jp z, $cb00                                   ; $7e13: $ca $00 $cb

    nop                                           ; $7e16: $00
    ld bc, $00cc                                  ; $7e17: $01 $cc $00
    call $d400                                    ; $7e1a: $cd $00 $d4
    nop                                           ; $7e1d: $00
    push de                                       ; $7e1e: $d5
    dec hl                                        ; $7e1f: $2b
    ld [hl+], a                                   ; $7e20: $22
    nop                                           ; $7e21: $00
    sub $00                                       ; $7e22: $d6 $00
    rst $10                                       ; $7e24: $d7
    nop                                           ; $7e25: $00
    ret c                                         ; $7e26: $d8

    nop                                           ; $7e27: $00
    db $e4                                        ; $7e28: $e4
    nop                                           ; $7e29: $00
    nop                                           ; $7e2a: $00
    push hl                                       ; $7e2b: $e5
    nop                                           ; $7e2c: $00
    xor [hl]                                      ; $7e2d: $ae
    nop                                           ; $7e2e: $00
    xor a                                         ; $7e2f: $af
    nop                                           ; $7e30: $00
    or b                                          ; $7e31: $b0
    nop                                           ; $7e32: $00
    nop                                           ; $7e33: $00
    or c                                          ; $7e34: $b1
    nop                                           ; $7e35: $00
    cp [hl]                                       ; $7e36: $be
    nop                                           ; $7e37: $00
    cp a                                          ; $7e38: $bf
    nop                                           ; $7e39: $00
    ret nz                                        ; $7e3a: $c0

    nop                                           ; $7e3b: $00
    nop                                           ; $7e3c: $00
    pop bc                                        ; $7e3d: $c1
    nop                                           ; $7e3e: $00
    adc $00                                       ; $7e3f: $ce $00
    rst $08                                       ; $7e41: $cf
    nop                                           ; $7e42: $00
    ret nc                                        ; $7e43: $d0

    nop                                           ; $7e44: $00
    ld h, b                                       ; $7e45: $60
    pop de                                        ; $7e46: $d1
    ld [bc], a                                    ; $7e47: $02
    nop                                           ; $7e48: $00
    ld d, [hl]                                    ; $7e49: $56
    ld a, [hl+]                                   ; $7e4a: $2a
    reti                                          ; $7e4b: $d9


    nop                                           ; $7e4c: $00
    jp c, $db00                                   ; $7e4d: $da $00 $db

    nop                                           ; $7e50: $00
    nop                                           ; $7e51: $00
    and $00                                       ; $7e52: $e6 $00
    rst $20                                       ; $7e54: $e7
    nop                                           ; $7e55: $00
    or d                                          ; $7e56: $b2
    nop                                           ; $7e57: $00
    or e                                          ; $7e58: $b3
    nop                                           ; $7e59: $00
    nop                                           ; $7e5a: $00
    or h                                          ; $7e5b: $b4
    nop                                           ; $7e5c: $00
    or l                                          ; $7e5d: $b5
    nop                                           ; $7e5e: $00
    jp nz, $c300                                  ; $7e5f: $c2 $00 $c3

    ld [bc], a                                    ; $7e62: $02
    nop                                           ; $7e63: $00
    call nz, $c500                                ; $7e64: $c4 $00 $c5
    nop                                           ; $7e67: $00
    jp nc, Jump_08c_6279                          ; $7e68: $d2 $79 $62

    call c, RST_00                                ; $7e6b: $dc $00 $00
    db $dd                                        ; $7e6e: $dd
    nop                                           ; $7e6f: $00
    sbc $00                                       ; $7e70: $de $00
    rst $18                                       ; $7e72: $df
    nop                                           ; $7e73: $00
    add sp, $00                                   ; $7e74: $e8 $00
    nop                                           ; $7e76: $00
    jp hl                                         ; $7e77: $e9


    nop                                           ; $7e78: $00
    or [hl]                                       ; $7e79: $b6
    nop                                           ; $7e7a: $00
    or a                                          ; $7e7b: $b7
    nop                                           ; $7e7c: $00
    cp b                                          ; $7e7d: $b8
    nop                                           ; $7e7e: $00
    nop                                           ; $7e7f: $00
    cp c                                          ; $7e80: $b9
    nop                                           ; $7e81: $00
    add $00                                       ; $7e82: $c6 $00
    rst $00                                       ; $7e84: $c7
    nop                                           ; $7e85: $00
    ret z                                         ; $7e86: $c8

    ld [$c900], sp                                ; $7e87: $08 $00 $c9
    nop                                           ; $7e8a: $00
    db $d3                                        ; $7e8b: $d3
    and l                                         ; $7e8c: $a5
    ld h, d                                       ; $7e8d: $62
    ldh [rP1], a                                  ; $7e8e: $e0 $00
    pop hl                                        ; $7e90: $e1
    nop                                           ; $7e91: $00
    nop                                           ; $7e92: $00
    ld [c], a                                     ; $7e93: $e2
    nop                                           ; $7e94: $00
    db $e3                                        ; $7e95: $e3
    nop                                           ; $7e96: $00
    ld [$eb00], a                                 ; $7e97: $ea $00 $eb
    nop                                           ; $7e9a: $00
    nop                                           ; $7e9b: $00
    db $ec                                        ; $7e9c: $ec
    nop                                           ; $7e9d: $00
    db $ed                                        ; $7e9e: $ed
    nop                                           ; $7e9f: $00
    xor $00                                       ; $7ea0: $ee $00
    rst $28                                       ; $7ea2: $ef
    nop                                           ; $7ea3: $00
    nop                                           ; $7ea4: $00
    pop af                                        ; $7ea5: $f1
    nop                                           ; $7ea6: $00
    ld a, [c]                                     ; $7ea7: $f2
    nop                                           ; $7ea8: $00
    di                                            ; $7ea9: $f3
    nop                                           ; $7eaa: $00
    db $f4                                        ; $7eab: $f4
    jr nz, jr_08c_7eae                            ; $7eac: $20 $00

jr_08c_7eae:
    db $fd                                        ; $7eae: $fd
    xor c                                         ; $7eaf: $a9
    ld [hl], d                                    ; $7eb0: $72
    ld bc, $0201                                  ; $7eb1: $01 $01 $02
    ld bc, $0503                                  ; $7eb4: $01 $03 $05
    ld bc, $0107                                  ; $7eb7: $01 $07 $01
    ld [$ec01], sp                                ; $7eba: $08 $01 $ec
    ld a, [bc]                                    ; $7ebd: $0a
    ldh a, [$f1]                                  ; $7ebe: $f0 $f1
    ld [bc], a                                    ; $7ec0: $02
    nop                                           ; $7ec1: $00
    push af                                       ; $7ec2: $f5
    nop                                           ; $7ec3: $00
    or $00                                        ; $7ec4: $f6 $00
    rst $30                                       ; $7ec6: $f7
    nop                                           ; $7ec7: $00
    ld hl, sp+$00                                 ; $7ec8: $f8 $00
    ld b, c                                       ; $7eca: $41
    cp $fd                                        ; $7ecb: $fe $fd
    sub d                                         ; $7ecd: $92
    inc b                                         ; $7ece: $04
    ld bc, $0109                                  ; $7ecf: $01 $09 $01
    ld a, [bc]                                    ; $7ed2: $0a
    inc l                                         ; $7ed3: $2c
    db $10                                        ; $7ed4: $10
    add b                                         ; $7ed5: $80
    inc e                                         ; $7ed6: $1c
    dec bc                                        ; $7ed7: $0b
    ld sp, hl                                     ; $7ed8: $f9
    nop                                           ; $7ed9: $00
    ld a, [$fb00]                                 ; $7eda: $fa $00 $fb
    nop                                           ; $7edd: $00
    db $fc                                        ; $7ede: $fc
    jr nz, jr_08c_7ee1                            ; $7edf: $20 $00

jr_08c_7ee1:
    rst $38                                       ; $7ee1: $ff
    add hl, hl                                    ; $7ee2: $29
    sub e                                         ; $7ee3: $93
    dec b                                         ; $7ee4: $05
    ld bc, $010b                                  ; $7ee5: $01 $0b $01
    inc c                                         ; $7ee8: $0c
    ret nz                                        ; $7ee9: $c0

    inc l                                         ; $7eea: $2c
    jr nc, @+$0a                                  ; $7eeb: $30 $08

    ret c                                         ; $7eed: $d8

    ld b, $01                                     ; $7eee: $06 $01
    dec c                                         ; $7ef0: $0d
    ld bc, $010e                                  ; $7ef1: $01 $0e $01
    jp nc, Jump_000_1100                          ; $7ef4: $d2 $00 $11

    nop                                           ; $7ef7: $00
    nop                                           ; $7ef8: $00
    ld bc, $9002                                  ; $7ef9: $01 $02 $90
    ld [bc], a                                    ; $7efc: $02
    nop                                           ; $7efd: $00
    inc bc                                        ; $7efe: $03
    ld [bc], a                                    ; $7eff: $02
    ld [hl], b                                    ; $7f00: $70
    ld b, b                                       ; $7f01: $40
    inc d                                         ; $7f02: $14
    inc l                                         ; $7f03: $2c
    nop                                           ; $7f04: $00
    inc b                                         ; $7f05: $04
    nop                                           ; $7f06: $00
    dec b                                         ; $7f07: $05
    nop                                           ; $7f08: $00
    ld b, $00                                     ; $7f09: $06 $00
    nop                                           ; $7f0b: $00
    rlca                                          ; $7f0c: $07
    nop                                           ; $7f0d: $00
    inc c                                         ; $7f0e: $0c
    nop                                           ; $7f0f: $00
    dec c                                         ; $7f10: $0d
    nop                                           ; $7f11: $00
    ld c, $00                                     ; $7f12: $0e $00
    ld bc, $000f                                  ; $7f14: $01 $0f $00
    dec d                                         ; $7f17: $15
    nop                                           ; $7f18: $00
    ld d, $00                                     ; $7f19: $16 $00
    rla                                           ; $7f1b: $17
    ld b, h                                       ; $7f1c: $44
    nop                                           ; $7f1d: $00
    nop                                           ; $7f1e: $00
    ld [$0900], sp                                ; $7f1f: $08 $00 $09
    nop                                           ; $7f22: $00
    ld a, [bc]                                    ; $7f23: $0a
    nop                                           ; $7f24: $00
    dec bc                                        ; $7f25: $0b
    nop                                           ; $7f26: $00
    nop                                           ; $7f27: $00
    stop                                          ; $7f28: $10 $00
    ld de, $1200                                  ; $7f2a: $11 $00 $12
    nop                                           ; $7f2d: $00
    inc de                                        ; $7f2e: $13
    nop                                           ; $7f2f: $00
    inc b                                         ; $7f30: $04
    jr jr_08c_7f33                                ; $7f31: $18 $00

jr_08c_7f33:
    add hl, de                                    ; $7f33: $19
    nop                                           ; $7f34: $00
    ld a, [de]                                    ; $7f35: $1a
    ld e, h                                       ; $7f36: $5c
    nop                                           ; $7f37: $00
    dec de                                        ; $7f38: $1b
    nop                                           ; $7f39: $00
    nop                                           ; $7f3a: $00
    inc e                                         ; $7f3b: $1c
    nop                                           ; $7f3c: $00
    dec e                                         ; $7f3d: $1d
    nop                                           ; $7f3e: $00
    ld e, $00                                     ; $7f3f: $1e $00
    dec hl                                        ; $7f41: $2b
    nop                                           ; $7f42: $00
    nop                                           ; $7f43: $00
    inc l                                         ; $7f44: $2c
    nop                                           ; $7f45: $00
    dec l                                         ; $7f46: $2d
    nop                                           ; $7f47: $00
    ld l, $00                                     ; $7f48: $2e $00
    dec sp                                        ; $7f4a: $3b
    nop                                           ; $7f4b: $00
    db $10                                        ; $7f4c: $10
    inc a                                         ; $7f4d: $3c
    nop                                           ; $7f4e: $00
    dec a                                         ; $7f4f: $3d
    ld [hl], h                                    ; $7f50: $74
    nop                                           ; $7f51: $00
    rra                                           ; $7f52: $1f
    nop                                           ; $7f53: $00
    jr nz, jr_08c_7f56                            ; $7f54: $20 $00

jr_08c_7f56:
    nop                                           ; $7f56: $00
    ld hl, $2200                                  ; $7f57: $21 $00 $22
    nop                                           ; $7f5a: $00
    cpl                                           ; $7f5b: $2f
    nop                                           ; $7f5c: $00
    jr nc, jr_08c_7f5f                            ; $7f5d: $30 $00

jr_08c_7f5f:
    inc b                                         ; $7f5f: $04
    ld sp, $3200                                  ; $7f60: $31 $00 $32
    nop                                           ; $7f63: $00
    ld a, $88                                     ; $7f64: $3e $88
    jr nz, jr_08c_7f8b                            ; $7f66: $20 $23

    nop                                           ; $7f68: $00
    nop                                           ; $7f69: $00
    inc h                                         ; $7f6a: $24
    nop                                           ; $7f6b: $00
    dec h                                         ; $7f6c: $25
    nop                                           ; $7f6d: $00
    ld h, $00                                     ; $7f6e: $26 $00
    inc sp                                        ; $7f70: $33
    nop                                           ; $7f71: $00
    ld bc, $0034                                  ; $7f72: $01 $34 $00
    dec [hl]                                      ; $7f75: $35
    nop                                           ; $7f76: $00
    ld [hl], $00                                  ; $7f77: $36 $00
    ccf                                           ; $7f79: $3f
    and b                                         ; $7f7a: $a0
    jr nz, jr_08c_7f7d                            ; $7f7b: $20 $00

jr_08c_7f7d:
    daa                                           ; $7f7d: $27
    nop                                           ; $7f7e: $00
    jr z, jr_08c_7f81                             ; $7f7f: $28 $00

jr_08c_7f81:
    add hl, hl                                    ; $7f81: $29
    nop                                           ; $7f82: $00
    ld a, [hl+]                                   ; $7f83: $2a
    nop                                           ; $7f84: $00
    nop                                           ; $7f85: $00
    scf                                           ; $7f86: $37
    nop                                           ; $7f87: $00
    jr c, jr_08c_7f8a                             ; $7f88: $38 $00

jr_08c_7f8a:
    add hl, sp                                    ; $7f8a: $39

jr_08c_7f8b:
    nop                                           ; $7f8b: $00
    ld a, [hl-]                                   ; $7f8c: $3a
    nop                                           ; $7f8d: $00
    ld b, b                                       ; $7f8e: $40
    ld b, b                                       ; $7f8f: $40
    cp b                                          ; $7f90: $b8
    jr nz, jr_08c_7fd4                            ; $7f91: $20 $41

    nop                                           ; $7f93: $00
    ld b, d                                       ; $7f94: $42
    nop                                           ; $7f95: $00
    ld b, e                                       ; $7f96: $43
    nop                                           ; $7f97: $00
    nop                                           ; $7f98: $00
    ld b, h                                       ; $7f99: $44
    nop                                           ; $7f9a: $00
    ld c, l                                       ; $7f9b: $4d
    nop                                           ; $7f9c: $00
    ld c, [hl]                                    ; $7f9d: $4e
    nop                                           ; $7f9e: $00
    ld c, a                                       ; $7f9f: $4f
    nop                                           ; $7fa0: $00
    nop                                           ; $7fa1: $00
    ld d, b                                       ; $7fa2: $50
    nop                                           ; $7fa3: $00
    ld e, c                                       ; $7fa4: $59
    nop                                           ; $7fa5: $00
    ld e, d                                       ; $7fa6: $5a
    nop                                           ; $7fa7: $00
    ld e, e                                       ; $7fa8: $5b
    nop                                           ; $7fa9: $00
    nop                                           ; $7faa: $00
    ld e, h                                       ; $7fab: $5c
    nop                                           ; $7fac: $00
    ld b, l                                       ; $7fad: $45
    nop                                           ; $7fae: $00
    ld b, [hl]                                    ; $7faf: $46
    nop                                           ; $7fb0: $00
    ld b, a                                       ; $7fb1: $47
    nop                                           ; $7fb2: $00
    nop                                           ; $7fb3: $00
    ld c, b                                       ; $7fb4: $48
    nop                                           ; $7fb5: $00
    ld d, c                                       ; $7fb6: $51
    nop                                           ; $7fb7: $00
    ld d, d                                       ; $7fb8: $52
    nop                                           ; $7fb9: $00
    ld d, e                                       ; $7fba: $53
    nop                                           ; $7fbb: $00
    nop                                           ; $7fbc: $00
    ld d, h                                       ; $7fbd: $54
    nop                                           ; $7fbe: $00
    ld e, l                                       ; $7fbf: $5d
    nop                                           ; $7fc0: $00
    ld e, [hl]                                    ; $7fc1: $5e
    nop                                           ; $7fc2: $00
    ld e, a                                       ; $7fc3: $5f
    nop                                           ; $7fc4: $00
    nop                                           ; $7fc5: $00
    ld h, b                                       ; $7fc6: $60
    nop                                           ; $7fc7: $00
    ld c, c                                       ; $7fc8: $49
    nop                                           ; $7fc9: $00
    ld c, d                                       ; $7fca: $4a
    nop                                           ; $7fcb: $00
    ld c, e                                       ; $7fcc: $4b
    nop                                           ; $7fcd: $00
    nop                                           ; $7fce: $00
    ld c, h                                       ; $7fcf: $4c
    nop                                           ; $7fd0: $00
    ld d, l                                       ; $7fd1: $55
    nop                                           ; $7fd2: $00
    ld d, [hl]                                    ; $7fd3: $56

jr_08c_7fd4:
    nop                                           ; $7fd4: $00
    ld d, a                                       ; $7fd5: $57
    nop                                           ; $7fd6: $00
    nop                                           ; $7fd7: $00
    ld e, b                                       ; $7fd8: $58
    nop                                           ; $7fd9: $00
    ld h, c                                       ; $7fda: $61
    nop                                           ; $7fdb: $00
    ld h, d                                       ; $7fdc: $62
    nop                                           ; $7fdd: $00
    ld h, e                                       ; $7fde: $63
    nop                                           ; $7fdf: $00
    ld b, b                                       ; $7fe0: $40
    ld h, h                                       ; $7fe1: $64
    ld b, $71                                     ; $7fe2: $06 $71
    ld h, l                                       ; $7fe4: $65
    nop                                           ; $7fe5: $00
    ld h, [hl]                                    ; $7fe6: $66
    nop                                           ; $7fe7: $00
    ld h, a                                       ; $7fe8: $67
    nop                                           ; $7fe9: $00
    nop                                           ; $7fea: $00
    ld l, b                                       ; $7feb: $68
    nop                                           ; $7fec: $00
    ld h, h                                       ; $7fed: $64
    inc l                                         ; $7fee: $2c
    ld a, a                                       ; $7fef: $7f
    ld [bc], a                                    ; $7ff0: $02
    rst $38                                       ; $7ff1: $ff
    nop                                           ; $7ff2: $00
    nop                                           ; $7ff3: $00
    nop                                           ; $7ff4: $00
    ld h, h                                       ; $7ff5: $64
    inc l                                         ; $7ff6: $2c
    or [hl]                                       ; $7ff7: $b6
    ld [bc], a                                    ; $7ff8: $02
    adc d                                         ; $7ff9: $8a
    ld l, b                                       ; $7ffa: $68
    nop                                           ; $7ffb: $00
    nop                                           ; $7ffc: $00
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
